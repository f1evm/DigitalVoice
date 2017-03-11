#include "ax5043.h"

// WiringPi Internal Parameters
#define WIRINGPI_INIT_ERROR -1


// ------------------------------------
// Low level register access to AX5043
// ------------------------------------

// List of important registers
#define FIFOSTAT
#define PKSTSTOREFLAGS
#define TRKFREQ
#define PWRMODE
#define AX5043_MODULATION
#define AX5043_IFFREQ
#define AX5043_RXPARAMSETS
#define AX5043_TIMEGAIN0

// list of important register values
#define COMMIT
#define STFOFFS

// ------------------------------------
// The AX5043 has an internal fifo buffer,
// shared between RX and TX
// ------------------------------------
#define FIFO_SIZE 256

// "Each chunk starts with a single byte header. The header
//  encodes the length of a chunk, and indicates the data it
//  contains. The top 3 bits encode the length (or optionally refer
//  to an additional length byte after the header byte), and the
//  bottom 5 bits indicate what payload data the chunk contains.   "
#define CHUNK_HEADER_FORMAT_MASK    0xE0
#define CHUNK_HEADER_SIZE_MASK      0x1F
#define FIFO_CHUNK_EMPTY     0x00
#define FIFO_CHUNK_ONE       0x20
#define FIFO_CHUNK_TWO       0x40
#define FIFO_CHUNK_THREE     0x60
#define FIFO_CHUNK_VARIABLE  0xE0

// Commands are sent and received through the FIFO buffer

// One byte payload commands
#define COMMAND_NOP 0x00
#define COMMAND_RSSI 0x31
#define COMMAND_TXCTRL 0x3C

// Two byte payload commands
#define COMMAND_FREQ_OFFSET 0x52

// Three byte commands
#define COMMAND_REPEATDATA 0x62
#define COMMAND_TIMER 0x70
#define COMMAND_RF_FREQ_OFFSET 0x73
#define COMMAND_DATARATE 0x74

// Variable length commands
#define COMMAND_DATA 0x71
#define COMMAND_TXPWR 0x7D


static void fifo_write(uint8_t* data, size_t len);
static size_t fifo_read(uint8_t* output, size_t max_bytes_to_read);
static void ISR_data_ready(void);
static void autorange(AX5043_t* self);

// Set up AX5043
int AX5043_init(AX5043_t* self)
{
    // Set up the SPI bus
    int error = wiringPiSPISetup(SPI_CH, SPI_SPEED_HZ);
    if(error == WIRINGPI_INIT_ERROR)
    {
        printf("Could not init");
    }
    
    for(int i = 0; i < len(CONFIG_REGSTERS); i++)
    {
        
    }
}

void AX5043_set_freq(AX5043_t* self)
{
    set_powermode(self, POWER_STANDBY);
    wait_for_stable_PLL(self);
    while(read_register(RINGSTART) == 1);
    
}

void AX5043_transmit(AX5043_t* self, uint8_t* buffer, size_t len)
{
    // Write data to the internal FIFO queue
    
    fifo_write(buffer, len);
}


void ISR_data_ready(void)
{
    uint8_t byte = fifo_read_byte();
    switch(byte & CHUNK_HEADER_FORMAT_MASK)
    {
        case FIFO_CHUNK_ONE     :
            break;
        case FIFO_CHUNK_TWO     :
            break;
        case FIFO_CHUNK_THREE   :
            break;
        case FIFO_CHUNK_VARIABLE:
            break;
    }
}

static void autorange(AX5043_t* self)
{
    set_powermode(self, POWER_STANDBY);
    wait_for_stable_PLL(self);
    while(read_register(RINGSTART) == 1);
    set_powermode(self, POWER_DOWN);
}