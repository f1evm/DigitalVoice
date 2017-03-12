#inlcude <wiringPi.h>
#include <stdio.h>
#include <stdint.h>

#include "ax5043_registers.h"
#include "ax5043_register_io.h"

#define SPI_CH               0 
#define SPI_SPEED_HZ         500000

typedef struct
{
    uint8_t fifo_head;
} AX5043_t ;

void AX5043_init(AX5043_t* self);

void AX5043_set_freq(AX5043_t* self, uint32_t frequency_hz);

void AX5043_transmit(AX5043_t* self, uint8_t* buffer, size_t len);