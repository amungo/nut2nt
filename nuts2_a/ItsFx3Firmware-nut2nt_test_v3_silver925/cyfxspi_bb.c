/*
 ## Cypress USB 3.0 Platform source file (cyfxspi_bb.c)
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
#include "cyu3system.h"
#include "cyu3os.h"
#include "cyu3dma.h"
#include "cyu3error.h"
#include "cyfxslfifosync.h"
#include "cyu3usb.h"
#include "cyu3uart.h"
#include <cyu3gpio.h>
#include "cyfxspi_bb.h"

CyU3PReturnStatus_t CyU3PSpiReadAd9269(uint16_t addr, uint8_t *value_p /* 8 bit read data */) {

	CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;
	uint8_t tmp_addr = 0;

	tmp_addr = (uint8_t) ((addr >> 8) & 0x1F);

	tmp_addr |= 0x80;
	apiRetStatus = CyU3PGpioSetValue(SPI_SS0, CyFalse);

	CyU3PSpiSendData(tmp_addr);

	tmp_addr = (uint8_t) ((addr) & 0xFF);
	CyU3PSpiSendData(tmp_addr);

	CyU3PSpiGetData(value_p);

	apiRetStatus = CyU3PGpioSetValue(SPI_SS0, CyTrue);

	return apiRetStatus;
}

CyU3PReturnStatus_t CyU3PSpiWriteAd9269(uint16_t addr, uint8_t value_p /* 8 bit write data */) {

	CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;
	uint8_t tmp_addr = 0;

	tmp_addr = (uint8_t) ((addr >> 8) & 0x1F);

	tmp_addr &= 0x7F;
	apiRetStatus = CyU3PGpioSetValue(SPI_SS0, CyFalse);

	CyU3PSpiSendData(tmp_addr);

	tmp_addr = (uint8_t) ((addr) & 0xFF);
	CyU3PSpiSendData(tmp_addr);

	CyU3PSpiSendData(value_p);

	apiRetStatus = CyU3PGpioSetValue(SPI_SS0, CyTrue);

	return apiRetStatus;
}

CyU3PReturnStatus_t CyU3PSpiGetData(uint8_t *value_p /* 8 bit read data */) {

	CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;
	uint8_t tmp_cnt = 0, tmp_value = 0;
	CyBool_t gpioValue = CyFalse;

	apiRetStatus = CyU3PGpioSetValue(SPI_CLK, CyTrue);

	for (tmp_cnt = 0; tmp_cnt < 8; tmp_cnt++) {

		tmp_value <<= 1;
		apiRetStatus = CyU3PGpioSetValue(SPI_CLK, CyFalse);

		apiRetStatus = CyU3PGpioGetValue(SPI_MISO, &gpioValue);

		if (gpioValue)
			tmp_value |= 0x01;
		else
			tmp_value &= 0xFE;

		apiRetStatus = CyU3PGpioSetValue(SPI_CLK, CyTrue);

	}
	*value_p = tmp_value;
	return apiRetStatus;
}

CyU3PReturnStatus_t CyU3PSpiSendData(uint8_t value /* 8 bit write data */) {

	CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;
	uint8_t tmp_cnt = 0;

	apiRetStatus = CyU3PGpioSetValue(SPI_CLK, CyTrue);

	for (tmp_cnt = 0; tmp_cnt < 8; tmp_cnt++) {

		if ((value) & (0x80))
			apiRetStatus = CyU3PGpioSetValue(SPI_MOSI, CyTrue);
		else
			apiRetStatus = CyU3PGpioSetValue(SPI_MOSI, CyFalse);

		apiRetStatus = CyU3PGpioSetValue(SPI_CLK, CyFalse);
		apiRetStatus = CyU3PGpioSetValue(SPI_CLK, CyTrue);
		value <<= 1;
	}

	return apiRetStatus;
}


void CyFxGpioInit(void) {
	CyU3PGpioClock_t gpioClock;
	CyU3PGpioSimpleConfig_t gpioConfig;
	CyU3PReturnStatus_t apiRetStatus = CY_U3P_SUCCESS;

	/* Init the GPIO module */
	gpioClock.fastClkDiv = 2;
	gpioClock.slowClkDiv = 0;
	gpioClock.simpleDiv = CY_U3P_GPIO_SIMPLE_DIV_BY_2;
	gpioClock.clkSrc = CY_U3P_SYS_CLK;
	gpioClock.halfDiv = 0;

	apiRetStatus = CyU3PGpioInit(&gpioClock, NULL);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4, "CyU3PGpioInit failed, error code = %d\n",
				apiRetStatus);

	}
	/* Override GPIOs as these pins is associated with GPIF Control signal.
	 * The IO cannot be selected as GPIO by CyU3PDeviceConfigureIOMatrix call
	 * as it is part of the GPIF IOs. Override API call must be made with
	 * caution as this will change the functionality of the pin. If the IO
	 * line is used as part of GPIF and is connected to some external device,
	 * then the line will no longer behave as a GPIF IO.. Here CTL4 line is
	 * not used and so it is safe to override.  */
	/* Configure SPI CLK as OUTPUT */
#if 0
	apiRetStatus = CyU3PDeviceGpioOverride(SPI_CLK, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"SPI_CLK CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}

	apiRetStatus = CyU3PDeviceGpioOverride(SPI_SS0, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"SPI_SS0 CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(SPI_MOSI, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"SPI_MOSI CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(SPI_MISO, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"SPI_MISO CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
#endif

	apiRetStatus = CyU3PDeviceGpioOverride(ANTFEED_EN, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"SPI_SS0 CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PDeviceGpioOverride(TCXO_EN, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"TCXO_EN CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PDeviceGpioOverride(NT1065_CS, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"NT1065_CS CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PDeviceGpioOverride(RCV_EN, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"RCV_EN CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PDeviceGpioOverride(TEST_LED, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"TEST_LED CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PDeviceGpioOverride(TEST_LED2, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"TEST_LED2 CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PDeviceGpioOverride(FPGA_INIT_B, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FPGA_INIT_B CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(FPGA_DONE, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FPGA_DONE CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(FPGA_PROG_B, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FPGA_PROG_B CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	//FPGA_CS
	apiRetStatus = CyU3PDeviceGpioOverride(FPGA_CS, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FPGA_CS CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(FPGA_HOLDN, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FPGA_HOLDN CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	//NT1065_AOK
	apiRetStatus = CyU3PDeviceGpioOverride(NT1065_AOK, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"NT1065_AOK CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(FCTRL_LATCH, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FCTRL_LATCH CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}
	apiRetStatus = CyU3PDeviceGpioOverride(FCTRL_CS, CyTrue);
	if (apiRetStatus != 0) {
		/* Error Handling */
		CyU3PDebugPrint(4,
				"FCTRL_CS CyU3PDeviceGpioOverride failed, error code = %d\n",
				apiRetStatus);

	}

	/* Configure  output line : CLK, MOSI, SS */
	gpioConfig.outValue = CyFalse;
	gpioConfig.driveLowEn = CyFalse;
	gpioConfig.driveHighEn = CyFalse;
	gpioConfig.inputEn = CyTrue;
	gpioConfig.intrMode = CY_U3P_GPIO_NO_INTR;
#if 0
	apiRetStatus = CyU3PGpioSetSimpleConfig(SPI_CLK, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(SPI_MOSI, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(SPI_SS0, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
#endif
	apiRetStatus = CyU3PGpioSetSimpleConfig(FPGA_INIT_B, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_INIT_B CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FPGA_DONE, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_DONE CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(NT1065_AOK, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"NT1065_AOK CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}

	gpioConfig.outValue = CyTrue;
	gpioConfig.driveLowEn = CyTrue;
	gpioConfig.driveHighEn = CyTrue;
	gpioConfig.inputEn = CyFalse;
	gpioConfig.intrMode = CY_U3P_GPIO_NO_INTR;

	apiRetStatus = CyU3PGpioSetSimpleConfig(TEST_LED, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"TEST_LED CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(TEST_LED2, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"TEST_LED2 CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FPGA_PROG_B, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_PROG_B CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FPGA_CS, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_CS CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FPGA_HOLDN, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_HOLDN CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FPGA_STRMEN, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_STRMEN CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	//RCV_EN
	apiRetStatus = CyU3PGpioSetSimpleConfig(RCV_EN, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"RCV_EN CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	//NT1065_CS
	apiRetStatus = CyU3PGpioSetSimpleConfig(NT1065_CS, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"NT1065_CS CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	//TCXO_EN
	apiRetStatus = CyU3PGpioSetSimpleConfig(TCXO_EN, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"TCXO_EN CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(ANTFEED_EN, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"ANTFEED_EN CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FCTRL_LATCH, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FCTRL_LATCH CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetSimpleConfig(FCTRL_CS, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FCTRL_CS CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}


#if 0
	/* Configure  input line : MISO */
	gpioConfig.outValue = CyTrue;
	gpioConfig.driveLowEn = CyFalse;
	gpioConfig.driveHighEn = CyFalse;
	gpioConfig.inputEn = CyTrue;
	gpioConfig.intrMode = CY_U3P_GPIO_NO_INTR;
	apiRetStatus = CyU3PGpioSetSimpleConfig(SPI_MISO, &gpioConfig);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"CyU3PGpioSetSimpleConfig failed, error code = %d\n",
				apiRetStatus);
	}
#endif

	apiRetStatus = CyU3PGpioSetValue(TEST_LED, CyFalse);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"TEST_LED CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(TEST_LED2, CyFalse);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"TEST_LED2 CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	CyU3PThreadSleep (1);
	apiRetStatus = CyU3PGpioSetValue(RCV_EN, CyFalse);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"RCV_EN CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(TCXO_EN, CyTrue);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"TCXO_EN CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(RCV_EN, CyTrue);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"RCV_EN CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(FPGA_HOLDN, CyTrue);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FPGA_HOLDN CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(ANTFEED_EN, CyTrue);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"ANTFEED_EN CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(FCTRL_CS, CyTrue);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FCTRL_CS CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
	apiRetStatus = CyU3PGpioSetValue(FCTRL_LATCH, CyTrue);
	if (apiRetStatus != CY_U3P_SUCCESS) {
		/* Error handling */
		CyU3PDebugPrint(4,
				"FCTRL_LATCH CyU3PGpioSetValue failed, error code = %d\n",
				apiRetStatus);
	}
}


/* [ ] */

