#include "ax5043.h"
#include "ax5043_registers.h"

uint8_t register_read(AX5043_t* self, uint16_t addr)
{
    unsigned char data[3] = {0x70, 0x00, 0x00}; // First bit is 0 for read access
    data[0] |= (addr >> 8);
    data[1] |= (addr & 0x00FF);
    data[2] = 0xFF;                      // Doesn't matter for read case
    wiringPiSPIDataRW(SPI_CH, &data, 3); // Send contents of data over SPI, overwrite data
                                         // device's response
    memcpy(self->status, data, 2);       // First two bytes returned are status
    return data[2];                      // Next byte returned is register value
}

uint8_t register_write(AX5043_t* self, uint16_t addr, uint8_t val)
{
    unsigned char data[3] = {0xF0, 0x00, 0x00}; // First bit is 1 for write access
    data[0] |= (addr >> 8);
    data[1] |= (addr & 0x00FF);
    data[2] = val;
    wiringPiSPIDataRW(SPI_CH, &data, 3); // Send contents of data over SPI, overwrite data
                                         // device's response
    memcpy(self->status, data, 2);       // First two bytes returned are status
    return data[2];                      // Next byte returned is register value
}

void send_command()