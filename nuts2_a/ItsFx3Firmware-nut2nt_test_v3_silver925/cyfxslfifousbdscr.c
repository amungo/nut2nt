/*
 ## Cypress USB 3.0 Platform header file (cyfxslfifousbdscr.c)
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

/* This file contains the USB enumeration descriptors for the slave FIFO application example.
 * The descriptor arrays must be 32 byte aligned and multiple of 32 bytes if the D-cache is
 * turned on. If the linker used is not capable of supporting the aligned feature for this,
 * either the descriptors must be placed in a different section and the section should be 
 * 32 byte aligned and 32 byte multiple; or dynamically allocated buffer allocated using
 * CyU3PDmaBufferAlloc must be used, and the descriptor must be loaded into it. The example
 * assumes that the aligned attribute for 32 bytes is supported by the linker. Do not add
 * any other variables to this file other than USB descriptors. This is not the only
 * pre-requisite to enabling the D-cache. Refer to the documentation for
 * CyU3PDeviceCacheControl for more information.
 */

#include "cyfxslfifosync.h"

/* Standard device descriptor for USB 3.0 */
const uint8_t CyFxUSB30DeviceDscr[] =
{
    0x12,                           /* Descriptor size */
    CY_U3P_USB_DEVICE_DESCR,        /* Device descriptor type */
    0x00,0x03,                      /* USB 3.0 */
    0x00,                           /* Device class */
    0x00,                           /* Device sub-class */
    0x00,                           /* Device protocol */
    0x09,                           /* Maxpacket size for EP0 : 2^9 */
    0xB4,0x04,                      /* Vendor ID */
    0xF1,0x00,                      /* Product ID */
    0x00,0x00,                      /* Device release number */
    0x01,                           /* Manufacture string index */
    0x02,                           /* Product string index */
    0x00,                           /* Serial number string index */
    0x01                            /* Number of configurations */
};

/* Standard device descriptor for USB 2.0 */
const uint8_t CyFxUSB20DeviceDscr[] =
{
    0x12,                           /* Descriptor size */
    CY_U3P_USB_DEVICE_DESCR,        /* Device descriptor type */
    0x10,0x02,                      /* USB 2.0 */
    0x00,                           /* Device class */
    0x00,                           /* Device sub-class */
    0x00,                           /* Device protocol */
    0x40,                           /* Maxpacket size for EP0 : 64 bytes */
    0xB4,0x04,                      /* Vendor ID */
    0xF1,0x00,                      /* Product ID */
    0x00,0x00,                      /* Device release number */
    0x01,                           /* Manufacture string index */
    0x02,                           /* Product string index */
    0x00,                           /* Serial number string index */
    0x01                            /* Number of configurations */
};

/* Binary device object store descriptor */
const uint8_t CyFxUSBBOSDscr[] =
{
    0x05,                           /* Descriptor size */
    CY_U3P_BOS_DESCR,               /* Device descriptor type */
    0x16,0x00,                      /* Length of this descriptor and all sub descriptors */
    0x02,                           /* Number of device capability descriptors */

    /* USB 2.0 extension */
    0x07,                           /* Descriptor size */
    CY_U3P_DEVICE_CAPB_DESCR,       /* Device capability type descriptor */
    CY_U3P_USB2_EXTN_CAPB_TYPE,     /* USB 2.0 extension capability type */
    0x00,0x00,0x00,0x00,            /* Supported device level features  */

    /* SuperSpeed device capability */
    0x0A,                           /* Descriptor size */
    CY_U3P_DEVICE_CAPB_DESCR,       /* Device capability type descriptor */
    CY_U3P_SS_USB_CAPB_TYPE,        /* SuperSpeed device capability type */
    0x00,                           /* Supported device level features  */
    0x0E,0x00,                      /* Speeds supported by the device : SS, HS and FS */
    0x03,                           /* Functionality support */
    0x00,                           /* U1 Device Exit latency */
    0x00,0x00                       /* U2 Device Exit latency */
};

/* Standard device qualifier descriptor */
const uint8_t CyFxUSBDeviceQualDscr[] =
{
    0x0A,                           /* Descriptor size */
    CY_U3P_USB_DEVQUAL_DESCR,       /* Device qualifier descriptor type */
    0x00,0x02,                      /* USB 2.0 */
    0x00,                           /* Device class */
    0x00,                           /* Device sub-class */
    0x00,                           /* Device protocol */
    0x40,                           /* Maxpacket size for EP0 : 64 bytes */
    0x01,                           /* Number of configurations */
    0x00                            /* Reserved */
};

/* Standard super speed configuration descriptor */
const uint8_t CyFxUSBSSConfigDscr[] =
{
    /* Configuration descriptor */
    0x09,                           /* Descriptor size */
    CY_U3P_USB_CONFIG_DESCR,        /* Configuration descriptor type */
    0x1F,0x00,                      /* Length of this descriptor and all sub descriptors */
//    0x2C,0x00,                      /* Length of this descriptor and all sub descriptors */
    0x01,                           /* Number of interfaces */
    0x01,                           /* Configuration number */
    0x00,                           /* COnfiguration string index */
    0x00,                           /* Config characteristics - D6: Self power; D5: Remote wakeup */
    0x32,                           /* Max power consumption of device (in 8mA unit) : 400mA */

    /* Interface descriptor */
    0x09,                           /* Descriptor size */
    CY_U3P_USB_INTRFC_DESCR,        /* Interface Descriptor type */
    0x00,                           /* Interface number */
    0x00,                           /* Alternate setting number */
    0x01, //0x02,                           /* Number of end points */
    0xFF,                           /* Interface class */
    0x00,                           /* Interface sub class */
    0x00,                           /* Interface protocol code */
    0x00,                           /* Interface descriptor string index */
#if 1
    /* Endpoint descriptor for consumer EP */
    0x07,                           /* Descriptor size */
    CY_U3P_USB_ENDPNT_DESCR,        /* Endpoint descriptor type */
    CY_FX_EP_CONSUMER,              /* Endpoint address and description */
    CY_U3P_USB_EP_BULK,             /* Bulk endpoint type */
    0x00,0x04,                      /* Max packet size = 1024 bytes */
    0x00,                           /* Servicing interval for data transfers : 0 for bulk */

    /* Super speed endpoint companion descriptor for consumer EP */
    0x06,                           /* Descriptor size */
    CY_U3P_SS_EP_COMPN_DESCR,       /* SS endpoint companion descriptor type */
    (CY_FX_EP_BURST_LENGTH - 1),    /* Max no. of packets in a burst(0-15) - 0: burst 1 packet at a time */
    0x00,                           /* Max streams for bulk EP = 0 (No streams) */
    0x00,0x00,                      /* Service interval for the EP : 0 for bulk */
#else
    /* Endpoint descriptor for produser EP */
    0x07,                           /* Descriptor size */
    CY_U3P_USB_ENDPNT_DESCR,        /* Endpoint descriptor type */
    CY_FX_EP_PRODUCER,              /* Endpoint address and description */
    CY_U3P_USB_EP_BULK,             /* Bulk endpoint type */
    0x00,0x04,                      /* Max packet size = 1024 bytes */
    0x00,                           /* Servicing interval for data transfers : 0 for Bulk */

    /* Super speed endpoint companion descriptor for producer EP */
    0x06,                           /* Descriptor size */
    CY_U3P_SS_EP_COMPN_DESCR,       /* SS endpoint companion descriptor type */
    (CY_FX_EP_BURST_LENGTH - 1),    /* Max no. of packets in a burst(0-15) - 0: burst 1 packet at a time */
    0x00,                           /* Max streams for bulk EP = 0 (No streams) */
    0x00,0x00                       /* Service interval for the EP : 0 for bulk */
#endif
};

/* Standard high speed configuration descriptor */
const uint8_t CyFxUSBHSConfigDscr[] =
{
    /* Configuration descriptor */
    0x09,                           /* Descriptor size */
    CY_U3P_USB_CONFIG_DESCR,        /* Configuration descriptor type */
    0x19,0x00,                      /* Length of this descriptor and all sub descriptors */
    0x01,                           /* Number of interfaces */
    0x01,                           /* Configuration number */
    0x00,                           /* COnfiguration string index */
    0x80,                           /* Config characteristics - bus powered */
    0x32,                           /* Max power consumption of device (in 2mA unit) : 100mA */

    /* Interface descriptor */
    0x09,                           /* Descriptor size */
    CY_U3P_USB_INTRFC_DESCR,        /* Interface Descriptor type */
    0x00,                           /* Interface number */
    0x00,                           /* Alternate setting number */
    0x01,                           /* Number of endpoints */
    0xFF,                           /* Interface class */
    0x00,                           /* Interface sub class */
    0x00,                           /* Interface protocol code */
    0x00,                           /* Interface descriptor string index */
#if 1
    /* Endpoint descriptor for consumer EP */
	0x07,                           /* Descriptor size */
	CY_U3P_USB_ENDPNT_DESCR,        /* Endpoint descriptor type */
	CY_FX_EP_CONSUMER,              /* Endpoint address and description */
	CY_U3P_USB_EP_BULK,             /* Bulk endpoint type */
	0x00,0x02,                      /* Max packet size = 512 bytes */
	0x00,                            /* Servicing interval for data transfers : 0 for bulk */
#else
    /* Endpoint descriptor for producer EP */
	0x07,                           /* Descriptor size */
	CY_U3P_USB_ENDPNT_DESCR,        /* Endpoint descriptor type */
	CY_FX_EP_PRODUCER,              /* Endpoint address and description */
	CY_U3P_USB_EP_BULK,             /* Bulk endpoint type */
	0x00,0x02,                      /* Max packet size = 512 bytes */
	0x00                           /* Servicing interval for data transfers : 0 for bulk */
#endif
};

/* Standard full speed configuration descriptor */
const uint8_t CyFxUSBFSConfigDscr[] =
{
    /* Configuration descriptor */
    0x09,                           /* Descriptor size */
    CY_U3P_USB_CONFIG_DESCR,        /* Configuration descriptor type */
    0x19,0x00,                      /* Length of this descriptor and all sub descriptors */
    0x01,                           /* Number of interfaces */
    0x01,                           /* Configuration number */
    0x00,                           /* COnfiguration string index */
    0x80,                           /* Config characteristics - bus powered */
    0x32,                           /* Max power consumption of device (in 2mA unit) : 100mA */

    /* Interface descriptor */
    0x09,                           /* Descriptor size */
    CY_U3P_USB_INTRFC_DESCR,        /* Interface descriptor type */
    0x00,                           /* Interface number */
    0x00,                           /* Alternate setting number */
    0x01,                           /* Number of endpoints */
    0xFF,                           /* Interface class */
    0x00,                           /* Interface sub class */
    0x00,                           /* Interface protocol code */
    0x00,                           /* Interface descriptor string index */
#if 1
    /* Endpoint descriptor for consumer EP */
    0x07,                           /* Descriptor size */
    CY_U3P_USB_ENDPNT_DESCR,        /* Endpoint descriptor type */
    CY_FX_EP_CONSUMER,              /* Endpoint address and description */
    CY_U3P_USB_EP_BULK,             /* Bulk endpoint type */
    0x40,0x00,                      /* Max packet size = 64 bytes */
    0x00,                            /* Servicing interval for data transfers : 0 for bulk */
#else
    /* Endpoint descriptor for producer EP */
	0x07,                           /* Descriptor size */
	CY_U3P_USB_ENDPNT_DESCR,        /* Endpoint descriptor type */
	CY_FX_EP_PRODUCER,              /* Endpoint address and description */
	CY_U3P_USB_EP_BULK,             /* Bulk endpoint type */
	0x40,0x00,                      /* Max packet size = 64 bytes */
	0x00                           /* Servicing interval for data transfers : 0 for bulk */
#endif
};

/* Standard language ID string descriptor */
const uint8_t CyFxUSBStringLangIDDscr[] =
{
    0x04,                           /* Descriptor size */
    CY_U3P_USB_STRING_DESCR,        /* Device descriptor type */
    0x09,0x04                       /* Language ID supported */
};

/* Standard manufacturer string descriptor */
const uint8_t CyFxUSBManufactureDscr[] =
{
    0x10,                           /* Descriptor size */
    CY_U3P_USB_STRING_DESCR,        /* Device descriptor type */
    'C',0x00,
    'y',0x00,
    'p',0x00,
    'r',0x00,
    'e',0x00,
    's',0x00,
    's',0x00
};

/* Standard product string descriptor */
const uint8_t CyFxUSBProductDscr[] =
{
    0x08,                           /* Descriptor size */
    CY_U3P_USB_STRING_DESCR,        /* Device descriptor type */
    'F',0x00,
    'X',0x00,
    '3',0x00
};

/* [ ] */
