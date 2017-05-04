#include <wiringPi.h>
#include <stdio.h>
#include <signal.h>
#include <unistd.h>

#include <RH_RF24.h>

#define SPI_BUS 0
#define IRQ_PIN 25 // By WiringPi pin numbering. Physical pin is 37

//Function Definitions
void sig_handler(int sig);
void printbuffer(uint8_t buff[], int len);

// Pin Mapping
// Spi is assumed to be hardware SPI 0
// Pin numbers are using the WiringPi pin map
#define SLAVE_SELECT SS
#define N_IRQ_PIN    25
#define SHUTDOWN_PIN 24

RH_RF24 rf24(SLAVE_SELECT, N_IRQ_PIN, SHUTDOWN_PIN);

//Flag for Ctrl-C
volatile sig_atomic_t flag = 0;

//Main Function
int main (int argc, const char* argv[] )
{
  signal(SIGINT, sig_handler);

  wiringPiSetup();
  
  if(!rf24.init())
      Serial.println("init failed");

  printf( "\nRasPiRH Tester Startup\n\n" );

  uint8_t buf[RH_RF24_MAX_MESSAGE_LEN];

  //Begin the main body of code
  while (true)
  {
    uint8_t len = sizeof(buf);
    uint8_t from, to, id, flags;


    if (flag)
    {
      printf("\n---CTRL-C Caught - Exiting---\n");
      break;
    }
    //sleep(1);
    delay(25);
  }
  printf( "\nRasPiRH Tester Ending\n" );
  return 0;
}

void sig_handler(int sig)
{
  flag=1;
}

void printbuffer(uint8_t buff[], int len)
{
  for (int i = 0; i< len; i++)
  {
    printf(" %2X", buff[i]);
  }
}
