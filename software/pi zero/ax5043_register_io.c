#include "ax5043.h"
#include "ax5043_register_io.h"

uint8_t ax5043_register_read(uint16_t addr)
{
    unsigned char data[3] = {0x70, 0x00, 0x00}; // First bit is 0 for read access
    data[0] |= (addr >> 8);
    data[1] |= (addr & 0x00FF);
    data[2] = 0xFF;                      // Doesn't matter for read case
    wiringPiSPIDataRW(SPI_CH, data, 3); // Send contents of data over SPI, overwrite data
    return data[2];                      // Next byte returned is register value
}

uint8_t ax5043_register_write(uint16_t addr, uint8_t val)
{
    unsigned char data[3] = {0xF0, 0x00, 0x00}; // First bit is 1 for write access
    data[0] |= (addr >> 8);
    data[1] |= (addr & 0x00FF);
    data[2] = val;
    wiringPiSPIDataRW(SPI_CH, data, 3); // Send contents of data over SPI, overwrite data
    return data[2];                      // Next byte returned is register value
}
