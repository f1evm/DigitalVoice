#include "ax5043.h"
#include <stdio.h>
#include <string.h>

char message[] = "KE0CFK says hello";

int main()
{
    AX5043_t ax5043;
    AX5043_init(&ax5043);
    
    for(uint8_t i = 0; i < 10; i++)
    {
		ax5043_register_write(AX_REG_SCRATCH, i);
		printf("\t Scratch set to %d : %d\n", i, ax5043_register_read(AX_REG_SCRATCH));
	}

    //AX5043_set_frequency(&ax5043, 443000000);
    AX5043_transmit(&ax5043, message, strlen(message));
}
