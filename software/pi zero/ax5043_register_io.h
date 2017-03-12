#ifndef AX5043_REGISTER_IO_H
#define AX5043_REGISTER_IO_H

#include <wiringPi.h>

uint8_t ax5043_register_read(uint16_t addr);

uint8_t ax5043_register_write(uint16_t addr, uint8_t val);

#endif //PI_ZERO_AX5043_REGISTER_IO_H
