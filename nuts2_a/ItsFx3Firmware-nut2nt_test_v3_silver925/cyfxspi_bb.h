/*
 ## Cypress USB 3.0 Platform header file (cyfx3spi.h)
 ## ===========================
 ##
 ##  Copyright Cypress Semiconductor Corporation, 2010-2011,
 ##  All Rights Reserved
 ##  UNPUBLISHED, LICENSED SOFTWARE.
 ##
 ##  CONFIDENTIAL AND PROPRIETARY INFORMATION
 ##  WHICH IS THE PROPERTY OF CYPRESS.
 ##
 ##  Use of this file is governed
 ##  by the license agreement included in the file
 ##
 ##     LICENSE_CYPRESS.txt
 ##
 ## ===========================
*/

/* This file contains the constants used by the bit-banged SPI interface used for AD9269  */

#ifndef _INCLUDED_CYFXSPI_BB_H_
#define _INCLUDED_CYFXSPI_BB_H_

#include "cyu3types.h"
#include "cyu3usbconst.h"
#include "cyu3externcstart.h"

#define SPI_CLK			(53)		/* SPI CLOCK signal, GPIO53, CTL[0] */
#define SPI_MOSI		(56)		/* SPI data OUT line,   GPIO56, CTL[1] */
#define SPI_MISO		(55)		/* SPI data IN line, GPIO55, CTL[7] */
#define SPI_SS0			(54)		/* SPI Slave select for AD9269, GPIO54, CTL[3] */
#define SPI_SS1			(0)		    /* SPI Slave select for other device */

#define FPGA_HOLDN		(41)
#define FPGA_CS 		(44)
#define FPGA_INIT_B 	(43)	//52
#define FPGA_PROG_B 	(42) 	//51
#define FPGA_DONE 		(40) 	//50

#define TEST_LED 		(45)
#define TEST_LED2 		(48)
//
#define FPGA_STRMEN 	(24)

// NT
#define TCXO_EN 		(36)
#define RCV_EN			(23)
#define ANTFEED_EN 		(38)
#define NT1065_CS 		(39)
#define NT1065_AOK 		(33)


#define FCTRL_CS 		(35)
#define FCTRL_LATCH 	(34)


/*
 Summary
   Read data from SPI Slave Device.

   Description
   bit-banged SPI , read 8 bit data in MSB first format
   SPI_MISO, SPI_MOSI, SPI_CLK handled in this functions.
   SPI_SSx : SPI slave select line should be handled by caller of this function

   Return Value
   * CY_U3P_SUCCESS              - If the operation is successful
   * CY_U3P_ERROR_NOT_STARTED    - If the GPIO block has not been initialized
   * CY_U3P_ERROR_BAD_ARGUMENT   - If the GPIO id is invalid
   * CY_U3P_ERROR_NULL_POINTER   - If value_p is NULL
   * CY_U3P_ERROR_NOT_CONFIGURED - If the GPIO pin has not been previously enabled in the IO matrix
                                   configuration

   See Also
   * CyU3PSpiSendData

*/
extern CyU3PReturnStatus_t
CyU3PSpiGetData (
                uint8_t *value_p               /* 8 bit read data */
        );


/*
 Summary
   Write data to SPI Slave Device.

   Description
   bit-banged SPI , write 8 bit data in MSB first format
   SPI_MISO, SPI_MOSI, SPI_CLK handled in this functions.
   SPI_SSx : SPI slave select line should be handled by caller of this function

   Return Value
   * CY_U3P_SUCCESS              - If the operation is successful
   * CY_U3P_ERROR_NOT_STARTED    - If the GPIO block has not been initialized
   * CY_U3P_ERROR_BAD_ARGUMENT   - If the GPIO id is invalid
   * CY_U3P_ERROR_NULL_POINTER   - If value_p is NULL
   * CY_U3P_ERROR_NOT_CONFIGURED - If the GPIO pin has not been previously enabled in the IO matrix
                                   configuration

   See Also
   * CyU3PSpiGetData

*/
extern CyU3PReturnStatus_t
CyU3PSpiSendData (
                uint8_t value               /* 8 bit write data */
        );


extern void CyFxGpioInit(void);
extern CyU3PReturnStatus_t CyU3PSpiReadAd9269(uint16_t addr, uint8_t *value_p /* 8 bit read data */) ;
extern CyU3PReturnStatus_t CyU3PSpiWriteAd9269(uint16_t addr, uint8_t value_p /* 8 bit write data */);
#include <cyu3externcend.h>

#endif /* _INCLUDED_CYFXSPI_BB_H_ */

/*[]*/
