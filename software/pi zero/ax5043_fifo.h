#include "ax5043.h"
#include "ax5043_registers.h"

uint8_t fifo_write_data(AX5043_t* self, uint8_t* data, size_t len)
{
    // Print out all FIFO registers
    printf("Writing data %s to fifo\n", data);
    printf("\tQuerying FIFO status:\n");
    printf("\t\tFIFOSTAT    : %.02x\n",  ax5043_register_read(AX_REG_FIFOSTAT));
    printf("\t\tFIFODATA    : %.02x\n",  ax5043_register_read(AX_REG_FIFODATA));
    printf("\t\tFIFOCOUNT1  : %.02x\n",  ax5043_register_read(AX_REG_FIFOCOUNT1));
    printf("\t\tFIFOCOUNT0  : %.02x\n",  ax5043_register_read(AX_REG_FIFOCOUNT0));
    printf("\t\tFIFOFREE1   : %.02x\n",  ax5043_register_read(AX_REG_FIFOFREE1));
    printf("\t\tFIFOFREE0   : %.02x\n",  ax5043_register_read(AX_REG_FIFOFREE0));
    printf("\t\tFIFOTHRESH1 : %.02x\n",  ax5043_register_read(AX_REG_FIFOTHRESH1));
    printf("\t\tFIFOTHRESH0 : %.02x\n",  ax5043_register_read(AX_REG_FIFOTHRESH0));

    // For now, only support writing TXdata
    // Write header into fifo
    ax5043_register_write(AX_REG_FIFODATA, AX5043_FIFOCMD_DATA | (7 << 5));
    ax5043_register_write(AX_REG_FIFODATA, (uint8_t) len + 1);
    ax5043_register_write(AX_REG_FIFODATA, 0x08);

    // Write data
    for(int i = 0; i < len; i++)
    {
        ax5043_register_write(AX_REG_FIFODATA, data[i]);
    }

    // Commit
    ax5043_register_write(AX_REG_FIFOSTAT, 4); // FIFO commit
    
        // Print out all FIFO registers
    printf("Done writing\n", data);
    printf("\tQuerying FIFO status:\n");
    printf("\t\tFIFOSTAT    : %.02x\n",  ax5043_register_read(AX_REG_FIFOSTAT));
    printf("\t\tFIFODATA    : %.02x\n",  ax5043_register_read(AX_REG_FIFODATA));
    printf("\t\tFIFOCOUNT1  : %.02x\n",  ax5043_register_read(AX_REG_FIFOCOUNT1));
    printf("\t\tFIFOCOUNT0  : %.02x\n",  ax5043_register_read(AX_REG_FIFOCOUNT0));
    printf("\t\tFIFOFREE1   : %.02x\n",  ax5043_register_read(AX_REG_FIFOFREE1));
    printf("\t\tFIFOFREE0   : %.02x\n",  ax5043_register_read(AX_REG_FIFOFREE0));
    printf("\t\tFIFOTHRESH1 : %.02x\n",  ax5043_register_read(AX_REG_FIFOTHRESH1));
    printf("\t\tFIFOTHRESH0 : %.02x\n",  ax5043_register_read(AX_REG_FIFOTHRESH0));
}

uint8_t fifo_read(AX5043_t* self);
