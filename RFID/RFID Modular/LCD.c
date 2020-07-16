// PIC16F690 Program to Display data on LCD

#include<htc.h> 	//or we can use #include<htc.h>
#include"LCD.h"

#define RS RB4
#define RW RB5
#define EN RB6

void Initialize_LCD()
{
	RS=0;
	RW=0;
	EN=0;

	Send_Command_LCD(0x38);			// select 2 lines of LCD & 5X8 matrix
	Delay(1);
	Send_Command_LCD(0x0C);			// Display ON & Cursor OFF
	Delay(1);
	Clear_LCD();
	Delay(1);
}

void Send_Command_LCD(unsigned char comd)
{
	RS=0;	// To send instruction
	RW=0;	// To write on port
	PORTC=comd;
	EN=1;
	Delay(1);
	EN=0;
}

void Display_Data_LCD(unsigned char *mdata)
{
	unsigned int x;
	for(x=0;mdata[x]!=0;x++)
	{
		Display_Char_LCD(mdata[x]);
	}
}

void Display_Char_LCD(unsigned char a)
{
	RS=1;
	RW=0;
	EN=1;
	PORTC=a;
	Delay(10);
	EN=0;
}

void Clear_LCD()
{
	Send_Command_LCD(0x01);		// Clear Display
	Delay(1);
	Send_Command_LCD(0x02);		// Cursor at home position
	Delay(1);
}

void Delay(unsigned char val)
{
	unsigned int u,v;
	for(u=0;u<val;u++)
		for(v=0;v<1000;v++);
}