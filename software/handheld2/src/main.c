/*
**
**                           Main.c
**
**
**********************************************************************/
/*
   Last committed:     $Revision: 00 $
   Last changed by:    $Author: $
   Last changed date:  $Date:  $
   ID:                 $Id:  $

**********************************************************************/
#include "stm32f4xx_conf.h"

int main(void)
{
    // Init GPIO LED

    // Init UART
    uart_init(uart1);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_USARTx, ENABLE);

    USART_InitTypeDef uart_config;
    uart_config.USART_BaudRate = 9600;
    uart_config.USART_WordLength = USART_WordLength_8b;
    uart_config.USART_StopBits = USART_StopBits_1;
    uart_config.USART_Parity = USART_Parity_No;
    uart_config.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    uart_config.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;



    // Ask the user how their day went
    while(1)
    {

    }
}
