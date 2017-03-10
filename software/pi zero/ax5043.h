#inlcude <wiringPi.h>

struct AX5043_t
{
    
};

void AX5043_init(AX5043_t* self);

void AX5043_set_freq(AX5043_t* self, uint32_t frequency_hz);

void AX5043_transmit(AX5043_t* self, uint8_t* buffer, size_t len);