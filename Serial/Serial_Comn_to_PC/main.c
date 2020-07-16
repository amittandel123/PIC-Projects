#include<htc.h>

void tx_data(unsigned char);
unsigned char rx_data(void);

unsigned char serial_data;
unsigned int i=0;

#define FREQ 4000000    	// Frequency = 4MHz
#define baud 9600
#define spbrg_value (((FREQ/64)/baud)-1)     

void main()
{
    SCS=1;
	IRCF0=0;
	IRCF1=1;
	IRCF2=1;
	ANSEL=0x00;				// To set Digital o/p on ports 
    ANSELH=0x00;			// To set Digital o/p on ports
	TXSTA=0xA6;
	SPBRGH=0x00;
	SPBRG=spbrg_value;      // Fill the SPBRG register to set the Baud Rate
    SPEN=1;         		// To activate/enable Serial port (TX and RX pins)
    TXEN=1;          		// To enable transmission
	SYNC=0;
    CREN=1;          		// To enable continuous reception
    while(1)
    {
        serial_data=rx_data();    // Receive data from PC
        tx_data(serial_data);     // Transmit the same data back to PC
		
    }
}

void tx_data(unsigned char data1)
{
    TXREG=data1;             // Store data in Transmit register
    while(TXIF==0);     	 // Wait until TXIF gets low
}

unsigned char rx_data(void)
{
    while(RCIF==0);     	// Wait until RCIF gets low
    return RCREG;           // Retrieve data from reception register
}