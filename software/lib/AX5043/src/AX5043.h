#ifndef AX5043_LIB
#define AX5043_LIB

#include "mbed.h"

enum powermode {
  POWERDOWN = 0x00,
  DEEPSLEEP = 0x01,
  STANDBY   = 0x05,
  FIFOON    = 0X07,
  SYNTHRX   = 0X08,
  FULLRX    = 0X09,
  WORRX     = 0X0B,
  SYNTHTX   = 0X0C,
  FULLTX    = 0X0E,
};

class AX5043
{
public:
  AX5043(PinName mosi, PinName miso, PinName sclk, PinName cs, PinName irq) :
    _spi(mosi, miso, sclk, cs), _irq(irq) {};

  void set_tx_frequency(uint32_t frequency_khz);

  void send_packet(uint8_t* packet, size_t length);

private:
  SPI _spi;
  InterruptIn _irq;
  uint8_t _inbuf[256];
  uint8_t _outbuf[256];

  void _transfer_complete();
};

#endif
