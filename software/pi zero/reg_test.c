#inlcude <wiringPi.h>
#include <stdio.h>
#include <stdint.h>

#define AX_REG_SILICONREVISION   0x000 /* Silicon Revision */        
#define AX_REG_SCRATCH           0x001 /* Scratch */         

uint8_t ax5043_register_read(uint16_t addr)
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

uint8_t ax5043_register_write(uint16_t addr, uint8_t val)
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

int main()
{
    printf("Starting test\n");
    
    printf("Turning on SPI bus: ");
    int error = wiringPiSPISetup(SPI_CH, SPI_SPEED_HZ);
    if(error == -1) printf("FAIL\n");
    else            printf("PASS\n");
    
    printf("Reading REVISION register: ");
    uint8_t revision = ax5043_register_read(AX_REG_SILICONREVISION)
    printf("%d\n", revision);
    
    print("Setting and reading back SCRATCH register");
    uint8_t scratch = 0;
    for(int i = 0; i < 255; i++)
    {
        ax5043_register_write(AX_REG_SCRATCH, i);
        scratch = ax5043_register_read(AX_REG_SCRATCH);
        printf("\t%d : %d\n", i, scratch);
    }
    
    printf("Test complete \n");
}