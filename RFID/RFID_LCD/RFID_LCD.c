// Program to interface RFID module using EUSART in PIC18F4550

// Configuration bits
/* _CPUDIV_OSC1_PLL2_1L,  // Divide clock by 2
   _FOSC_HS_1H,           // Select High Speed (HS) oscillator
   _WDT_OFF_2H,           // Watchdog Timer off
   MCLRE_ON_3H            // Master Clear on
*/

#include<htc.h>

#define FREQ 12000000
#define baud 9600
#define spbrg_value (((FREQ/64)/baud)-1)
#define rs RA0
#define rw RA1
#define en RA2
#define lcdport RB

unsigned char rx_data();
void lcd_ini();
void lcdcmd(unsigned char);
void lcddata(unsigned char);
void Delay_ms(unsigned char val);
void interrupt();
unsigned char data[]="Unique ID No.";
unsigned char card_id[12];
unsigned int i=0,pos;

void main()
{
	ANSEL=0;
	ANSELH=0;
	TRISB=0;			// Set Port B as output port
//	RB=0;
	TRISA=0;
//	RA=0;
	SPBRG=spbrg_value;		// Fill SPBRG register to set the baud rate
	SPEN=1;					// To activate serial port (Tx and Rx pins)                                    
	CREN=1;					// To enable continuous reception
	RCIE=1;					// To enable the Reception (Rx) Interrupt
	GIE=1;
	PEIE=1;
	lcd_ini();				// LCD initialization
	while(data[i]!='\0')
	{
		lcddata(data[i]);	// To send characters one by one from 'data' array
		i++;
	}

	while(1)
	{
		i=0;
		while(i<12);
		lcdcmd(0xC0);
		i=0;
		while(i<12)
		{
			lcddata(card_id[i]);	// Print the 12 byte received data
			i++;
		}
	}
}


void interrupt()
{
	unsigned char i;
	card_id[i]=RCREG;		// Store the received data byte by byte
	i++;
}

void lcd_ini()
{
	lcdcmd(0x38);		// Configure the LCD in 8-bit mode, 2 line and 5x7 font
	lcdcmd(0x0C);		// Display On and Cursor Off
	lcdcmd(0x01);		// Clear display screen
	lcdcmd(0x06);		// Increment cursor
	lcdcmd(0x80);		// Set cursor position to 1st line, 1st column
}

void lcdcmd(unsigned char cmdout)
{
	lcdport=cmdout;		//Send command to lcdport=PORTB
	rs=0;						
	rw=0;
	en=1;
	Delay_ms(10);
	en=0;
}

void lcddata(unsigned char dataout)
{
	lcdport=dataout;	//Send data to lcdport=PORTB
	rs=1;
	rw=0;
	en=1;
	Delay_ms(10);
	en=0;
}

void Delay_ms(unsigned char val)
{
	unsigned int u,v;
	for(u=0;u<val;u++)
		for(v=0;v<1000;v++);
}