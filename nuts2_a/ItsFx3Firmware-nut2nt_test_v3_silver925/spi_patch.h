
#ifndef SPI_PATCH_H_
#define SPI_PATCH_H_

#include <stdint.h>
#include <cyu3types.h>

CyU3PReturnStatus_t
CyU3PSpiTransmitReceiveWords (
                      uint8_t *data,
                      uint32_t byteCount);

#endif /* SPI_PATCH_H_ */
