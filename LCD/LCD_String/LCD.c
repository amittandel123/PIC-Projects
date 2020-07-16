//Program to Display data on LCD using PIC16F690

#include<pic.h> //or we can use #include<htc.h>

#define RS RB4
#define RW RB5
#define EN RB6

void Initialize_LCD();
void Send_Command(unsigned char comd);
void Display_Data(unsigned char mdata[], unsigned int count);
void Clear_LCD();
void Delay(unsigned char val);

void Initialize_LCD()
{
    ANSEL=0x00;		// To set Digital o/p on ports 
    ANSELH=0x00;	// To set Digital o/p on ports
	TRISA=0x00;		// To set PORT A as o/p port
	TRISB=0x00;		// To set PORT B as o/p port
	TRISC=0x00;		// To set PORT C as o/p port
	RS=0;
	RW=0;
	EN=0;

	Send_Command(0x38);			// select 2 lines of LCD & 5X8 matrix
	Delay(1);
	Send_Command(0x0C);			// Display ON & Cursor OFF
	Delay(1);
	Clear_LCD();
	Delay(1);
}

void Send_Command(unsigned char comd)
{
	RS=0;	// To send instruction
	RW=0;	// To write on port
	PORTC=comd;
	EN=1;
	Delay(1);
	EN=0;
}

void Display_Data(unsigned char mdata[], unsigned int count)
{
	unsigned int x;
	RS=1;		// To send data on port
	RW=0;		
	for(x=0;x<count;x++)
	{
		PORTC=mdata[x];
		Delay(5);
		EN=1;
		Delay(1);
		EN=0;
	}
}

void Clear_LCD()
{
	Send_Command(0x01);		// Clear Display
	Delay(1);
	Send_Command(0x02);		// Cursor at home position
	Delay(1);
}

void Delay(unsigned char val)
{
	unsigned int u,v;
	for(u=0;u<val;u++)
		for(v=0;v<1000;v++);
}

void main()
{
	Initialize_LCD();
	Send_Command(0x82);					// start frm 1st line & 3rd matrix of LCD
	Display_Data("Amit Tandel",11);
	Delay(1);
	Send_Command(0xC1);					// start frm 2nd line & 2nd matrix of LCD
	Display_Data("Godrej Locks",12);
	Delay(10);
	Clear_LCD();

	Send_Command(0x82);
	Display_Data("Wishes You",10);
	Delay(1);
	Send_Command(0xC0);					// start frm 2nd line & 1st matrix of LCD
	Display_Data(" Happy New Year ",16);
	Delay(10);
}