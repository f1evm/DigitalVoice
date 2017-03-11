#include "ax5043.h"

char message[] = "KE0CFK says hello";

int main()
{
    AX5043_t ax5043;
    AX5043_init(&ax5043);
    AX5043_set_frequency(&ax5043, 443000000);
    AX5043_transmit(&ax5043, message, strlen(message));
}