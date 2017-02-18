#include "mbed.h"
#include <AX5043.h>

DigitalOut myled(PD_13);

int main() {
    while(1) {
        myled = 1;
        wait(1);
        myled = 0;
        wait(1);
    }
}
