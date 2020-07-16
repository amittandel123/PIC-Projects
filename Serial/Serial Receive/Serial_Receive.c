
// Program to Receive the data from PC & transmit the same.(To be checked on hyperterminal)

#include<htc.h>
unsigned char Receive();
void Transmit(unsigned char);
void Delay(unsigned int);
unsigned char Recd_bit;
void main()
{
	ANSEL=0;				// To disable analog I/O
	ANSELH=0;
	OSCCON=0x77;			// To select Internal Oscillator with 8MHz freq
	SPBRG=12;				// For 9600 Baud rate(SPBRG=[freq/(Baud*64)]-1)
	SYNC=0;					// For Asynchronous mode
	SPEN=1;					// Enables the EUSART & automatically configures the TX/CK I/O pin as an O/P
	TXEN=1;					// To enable transmission; TXIF interrupt bit will be set.

	Recd_bit=Receive();		// Receive data from PC(hyperterminal)
	Transmit(Recd_bit);		// Send back the received data to PC(hyperterminal)
}

unsigned char Receive()
{	
	CREN=1;					// Enable continuous reception
	unsigned char temp=0;
	while(RCIF==0);			// Wait to receive previous bit if any
	temp=RCREG;				// Read RCREG register
	RCIF=0;
	CREN=0;					// Disable continuous reception
    return(temp);
}

void Transmit(unsigned char data1)
{
	TXREG=data1;			// Send data to TXREG register
	while(TXIF==0);			// Wait to transmit the bit	
}

void Delay(unsigned int val)
{
	unsigned int i,u;
	for(i=0;i<val;i++)
		for(u=0;u<1000;u++);	
}




/***********************************************************************************************

#include<htc.h>
void Transmit();
void Delay(unsigned int);
void main()
{
//	ANSEL=0;		// To disable analog I/O

	SCS=1;
	IRCF0=0;
	IRCF1=1;
	IRCF2=1;

	TRISB5=1;				// To make Pin RB5 i/p to receive data on it
	TRISB7=0;
	INTCON = 0x00;

	OSCCON=0x77;	// To select Internal Oscillator with 8MHz freq
	SPBRG=12;		// For 9600 Baud rate(SPBRG=[freq/(Baud*64)]-1)
	SYNC=0;			// For Asynchronous mode
	SPEN=1;			// Enables the EUSART & automatically configures the TX/CK I/O pin as an O/P
	TXEN=1;			// To enable transmission; TXIF interrupt bit will be set.
	Transmit();
}

void Transmit()
{
	unsigned char i; 
	unsigned char Mydata[]={"Parag is BAD boy "};
	for(i=0;i<17;i++)
	{
		TXREG=Mydata[i];
		while(TXIF==0);
		Delay(10);
	}
}

void Delay(unsigned int val)
{
	unsigned int i,u;
	for(i=0;i<val;i++)
		for(u=0;u<1000;u++);	
}


*************************************************************************************************/