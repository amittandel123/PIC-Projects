#include<htc.h>
void Transmit();
void Delay(unsigned int);
void main()
{
//	ANSEL=0;		// To disable analog I/O
	OSCCON=0x77;	// To select Internal Oscillator with 8MHz freq
	SPBRG=12;		// For 9600 Baud rate(SPBRG=[freq/(Baud*64)]-1)
	SYNC=0;			// For Asynchronous mode
	SPEN=1;			// Enables the EUSART & automatically configures the TX/CK I/O pin as an O/P
	TXEN=1;			// To enable transmission; TXIF interrupt bit will be set.
	Transmit();
}

void Transmit()
{
	TXREG='T';
	while(TXIF==0);
	Delay(10);
}

void Delay(unsigned int val)
{
	unsigned int i,u;
	for(i=0;i<val;i++)
		for(u=0;u<1000;u++);	
}