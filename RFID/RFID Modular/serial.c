
// Program to Receive the data from PC & transmit the same to LCD

#include<htc.h>
#include"LCD.h"
#include"Serial.h"

void Serial_Init()
{
	ANSEL=0;				// To disable analog I/O
	ANSELH=0;
	OSCCON=0x77;			// To select Internal Oscillator with 8MHz freq
	SYNC=0;					// For Asynchronous mode
	BRGH=1;
	BRG16=1;
	SPBRG=16;				// For 115200 Baud rate
	SPEN=1;					// Enables the EUSART & automatically configures the TX/CK I/O pin as an O/P
	TXEN=1;					// To enable transmission; TXIF interrupt bit will be set.
}

unsigned char Serial_Receive()
{	
	CREN=1;					// Enable continuous reception
	unsigned char temp=0;
	while(RCIF==0);			// Wait to receive previous bit if any
	temp=RCREG;				// Read RCREG register
	RCIF=0;
	CREN=0;					// Disable continuous reception
    return(temp);
}

void Serial_Transmit(unsigned char data1) // To transmit data to Hyperterminal
{
	TXREG=data1;				// Send data to TXREG register
	while(TXIF==0);				// Wait to transmit the bit	
	Send_Command_LCD(0xC0);		// Select 2nd row & 1st matrix of LCD
	Delay(10);
	Display_Char_LCD(data1);
}
