#include "ax5043.h"
#include "ax5043_register_io.h"
#include "ax5043_fifo.h"
#include "register_settings.h" 

// For debugging
#include <unistd.h>

// Set up AX5043
void AX5043_init(AX5043_t* self)
{
    // Set up the SPI bus
    printf("Turning on SPI bus: ");
    int error = wiringPiSPISetup(SPI_CH, SPI_SPEED_HZ);
    if(error == -1) printf("FAIL\n");
    else            printf("PASS\n");

    // Configure the radio
    set_init_registers();
    ax5043_register_write(AX_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);

    // Prime the FIFO
    self->fifo_head = 0;
}

/*
void AX5043_set_freq(AX5043_t* self)
{
    ax5043_register_write(AX_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);
    wait_for_stable_PLL(self);
    while(read_register(RINGSTART) == 1);
    
}
 */

void AX5043_transmit(AX5043_t* self, uint8_t* buffer, size_t len)
{
    printf("Trying to transmit: \n");
    // Turn the radio on
    ax5043_register_write(AX_REG_PWRMODE, AX5043_PWRSTATE_XTAL_ON);
    set_tx_registers();

    // Write the transmit command
    fifo_write_data(self, buffer, len);
    ax5043_register_write(AX_REG_PWRMODE, AX5043_PWRSTATE_FULL_TX);
    printf("Data written\n");

    // Wait for transmission to complete
    sleep(1);
    ax5043_register_write(AX_REG_PWRMODE, AX5043_PWRSTATE_FIFO_ON);
    printf("Done transmitting. Returning.\n");

}

/*
static void autorange(AX5043_t* self)
{
    set_powermode(self, POWER_STANDBY);
    wait_for_stable_PLL(self);
    while(read_register(RINGSTART) == 1);
    set_powermode(self, POWER_DOWN);
}
 */
