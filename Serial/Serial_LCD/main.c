#include<htc.h>

#include"LCD.h"			  // To include all declarations of functions
#include"Serial.h"		  // To include all declarations of functions

unsigned char u, Recd_bit;
void main()
{
    ANSEL=0x00;		// To set Digital o/p on ports 
    ANSELH=0x00;	// To set Digital o/p on ports
	TRISA=0x00;		// To set PORT A as o/p port
	TRISB=0x00;		// To set PORT B as o/p port
	TRISC=0x00;		// To set PORT C as o/p port
	Initialize_LCD();	
	Send_Command_LCD(0x80);				 // Select 1st row & 1st matrix of LCD
	Delay(5);
	Display_Data_LCD("LCD is Ready",12); // Send msg on 1st row
	Delay(5);
	Send_Command_LCD(0xC0);				 // Select 2nd row & 1st matrix of LCD
	Delay(5);
	Serial_Init();		   				 // Initialize Serial communication
	for(u=0;u<33;u++)
	{
		Recd_bit=Serial_Receive();			// Receive data from PC(hyperterminal)
		Serial_Transmit(Recd_bit);			// Transmit data on Hyperterminal
		Clear_LCD();
		Send_Command_LCD(0x80);				// Select 1st row & 1st matrix of LCD
		Delay(5);
		Display_Char_LCD(Recd_bit);	
		if(u>15)
		{
			Send_Command_LCD(0xC0);				// Select 2nd row & 1st matrix of LCD
			Delay(10);
			Display_Char_LCD(Recd_bit);
		}
	}
}