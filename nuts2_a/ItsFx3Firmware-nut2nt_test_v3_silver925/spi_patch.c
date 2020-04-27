#include <cyu3spi.h>
#include <cyu3error.h>
#include <spi_regs.h>

#include "spi_patch.h"

#define CY_U3P_SPI_DEFAULT_CLK          (1000000)               /* Default SPI clock in Hz */
#define CY_U3P_SPI_TIMEOUT              (0xFFFFF)               /* Default timeout for SPI data transfers. */

extern CyBool_t         glIsSpiConfigured;// = CyFalse;            /* Whether SPI module is configured. */
extern CyBool_t         glIsSpiActive;// = CyFalse;                /* Whether SPI block is powered up. */
extern CyU3PSpiIntrCb_t glSpiIntrCb;// = NULL;                     /* Callback for SPI event notification */
extern CyU3PMutex glSpiLock;			/* Mutex lock for SPI access APIs. */

extern uint32_t         glSpiReadTimeout;// = CY_U3P_SPI_TIMEOUT;  /* Timeout for SPI read transfers. */
extern uint32_t         glSpiWriteTimeout;// = CY_U3P_SPI_TIMEOUT; /* Timeout for SPI write transfers. */

/*
 * Resets the FIFO.
 * Leaves SPI block disabled at the end.
 */
static CyU3PReturnStatus_t
CyU3PSpiResetFifoP (
                   CyBool_t isTx,
                   CyBool_t isRx
                   )
{
    uint32_t intrMask;
    uint32_t ctrlMask = 0;
    uint32_t temp;

    /* No lock is acquired or error checked as this is
    * an internal function. Locks need to be acquired
    * prior to this call. */

    /* Temporarily disable interrupts. */
    intrMask = SPI->lpp_spi_intr_mask;
    SPI->lpp_spi_intr_mask = 0;

    if (isTx)
    {
        ctrlMask = CY_U3P_LPP_SPI_TX_CLEAR;
    }
    if (isRx)
    {
        ctrlMask |= CY_U3P_LPP_SPI_RX_CLEAR;
    }

    /* Disable the SPI block and reset. */
    temp = ~(CY_U3P_LPP_SPI_RX_ENABLE | CY_U3P_LPP_SPI_TX_ENABLE |
        CY_U3P_LPP_SPI_DMA_MODE | CY_U3P_LPP_SPI_ENABLE);
    SPI->lpp_spi_config &= temp;
    while ((SPI->lpp_spi_config & CY_U3P_LPP_SPI_ENABLE) != 0);

    /* Clear the FIFOs and wait until they have been cleared. */
    SPI->lpp_spi_config |= ctrlMask;
    if (isTx)
    {
        while ((SPI->lpp_spi_status & CY_U3P_LPP_SPI_TX_DONE) == 0);
    }
    if (isRx)
    {
        while ((SPI->lpp_spi_status & CY_U3P_LPP_SPI_RX_DATA) != 0);
    }
    SPI->lpp_spi_config &= ~ctrlMask;

    /* Clear all interrupts and re-enable them. */
    SPI->lpp_spi_intr |= CY_U3P_LPP_SPI_TX_DONE;
    SPI->lpp_spi_intr_mask = intrMask;

    return CY_U3P_SUCCESS;
}

/*
 * Receive data word by word over the SPI interface.
 */
CyU3PReturnStatus_t
CyU3PSpiTransmitReceiveWords (
                      uint8_t *data,
                      uint32_t byteCount)
{
    uint8_t  wordLen;
    uint32_t intrMask;
    uint32_t i, temp, timeout;
    CyU3PReturnStatus_t status = CY_U3P_SUCCESS;
#if 0
    if (!glIsSpiConfigured)
    {
        return CY_U3P_ERROR_NOT_CONFIGURED;
    }
    if (byteCount == 0)
    {
        return CY_U3P_SUCCESS;
    }
    if (data == NULL)
    {
        return CY_U3P_ERROR_NULL_POINTER;
    }

    status = CyU3PSpiGetLock ();
    if (status != CY_U3P_SUCCESS)
    {
        return status;
    }
#endif
    /* Get the wordLen from the config register and convert it to byte length. */
    temp = SPI->lpp_spi_config;
    wordLen = ((temp & CY_U3P_LPP_SPI_WL_MASK) >> CY_U3P_LPP_SPI_WL_POS);
    if ((wordLen & 0x07) != 0)
    {
        wordLen = (wordLen >> 3) + 1;
    }
    else
    {
        wordLen = (wordLen >> 3);
    }
    if ((byteCount % wordLen) != 0)
    {
        status = CY_U3P_ERROR_BAD_ARGUMENT;
    }
#if 0
    /* Check if the DMA mode is running. */
    if ((temp & (CY_U3P_LPP_SPI_DMA_MODE | CY_U3P_LPP_SPI_ENABLE))
        == (CY_U3P_LPP_SPI_DMA_MODE | CY_U3P_LPP_SPI_ENABLE))
    {
        status = CY_U3P_ERROR_ALREADY_STARTED;
    }

    if (status != CY_U3P_SUCCESS)
    {
        CyU3PSpiReleaseLock();
        return status;
    }
#endif

    CyU3PSpiResetFifoP (CyTrue, CyTrue);

    /* Disable interrupts. */
    intrMask = SPI->lpp_spi_intr_mask;
    SPI->lpp_spi_intr_mask = 0;

    /* Enable TX and RX. */
    SPI->lpp_spi_config |= (CY_U3P_LPP_SPI_TX_ENABLE | CY_U3P_LPP_SPI_RX_ENABLE);

    /* Re-enable SPI block. */
    SPI->lpp_spi_config |= CY_U3P_LPP_SPI_ENABLE;
    timeout = CY_U3P_SPI_TIMEOUT;

    for (i = 0; i < byteCount; i += wordLen)
    {
        /* Wait for the tx_space bit in status register */
        while (!(SPI->lpp_spi_status & CY_U3P_LPP_SPI_TX_SPACE))
        {
            if (timeout-- == 0)
            {
                status = CY_U3P_ERROR_TIMEOUT;
                break;
            }
        }

        if (status != CY_U3P_SUCCESS)
        {
            break;
        }

        /* Copy data to be written into local variable.
        * The padding required is to nearest byte.
        * Do fallthrough switch instead of a loop. */
        temp = 0;
        switch (wordLen)
        {
        case 4:
            temp = (data[i + 3] << 24);
        case 3:
            temp |= (data[i + 2] << 16);
        case 2:
            temp |= (data[i + 1] << 8);
        case 1:
            temp |= data[i];
        default:
            break;
        }

        /* Transmit zero. */
        SPI->lpp_spi_egress_data = temp;

        /* wait for the TX_DONE and RX_DATA. */
        temp = CY_U3P_LPP_SPI_RX_DATA | CY_U3P_LPP_SPI_TX_DONE;
        while ((SPI->lpp_spi_intr & temp) != temp)
        {
            if (timeout-- == 0)
            {
                status = CY_U3P_ERROR_TIMEOUT;
                break;
            }
        }

        if (status != CY_U3P_SUCCESS)
        {
            break;
        }

        /* Clear interrupt bits. */
        SPI->lpp_spi_intr = temp;

        /* Copy the data from the fifo. The padding
        * required is to nearest byte. Do fallthrough
        * switch instead of a loop. */
        temp = SPI->lpp_spi_ingress_data;
        switch (wordLen)
        {
        case 4:
            data[i + 3] = (uint8_t)((temp >> 24) & 0xFF);
        case 3:
            data[i + 2] = (uint8_t)((temp >> 16) & 0xFF);
        case 2:
            data[i + 1] = (uint8_t)((temp >> 8) & 0xFF);
        case 1:
            data[i] = (uint8_t)(temp & 0xFF);
        default:
            break;
        }
    }

    /* Disable the TX and RX. */
    SPI->lpp_spi_config &= ~(CY_U3P_LPP_SPI_TX_ENABLE | CY_U3P_LPP_SPI_RX_ENABLE);

    /* Clear all interrupts and restore interrupt mask. */
    SPI->lpp_spi_intr |= CY_U3P_LPP_SPI_TX_DONE;
    SPI->lpp_spi_intr_mask = intrMask;

    /* Wait until the SPI block is no longer busy and disable. */
    while ((SPI->lpp_spi_status & CY_U3P_LPP_SPI_BUSY) != 0);
    SPI->lpp_spi_config &= ~CY_U3P_LPP_SPI_ENABLE;
#if 0
    CyU3PSpiReleaseLock();
#endif
    return status;
}




