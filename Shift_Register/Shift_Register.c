// Program to drive LEDs through Shift register

#include<htc.h>

#define CLK RC4		// Pin 6
#define DATA RC5	// Pin 5

void Init();
void Pulse();
void Delay(unsigned int i);
void Test();
unsigned int j;

void main()
{
	ANSEL=0x00;		// To set Digital o/p on ports 
    ANSELH=0x00;	// To set Digital o/p on ports
	TRISC=0x00;		// To set PORT A as o/p port
	Init();
	while(1)
	{
		Test();
		for(j=0;j<4;j++)	// One by one ON
		{
			DATA=1;
			Pulse();
			Delay(2);
		}
//		while(1);
	}

}

void Init()
{
	for(j=0;j<8;j++)	// 1 by 1 OFF
	{
		DATA=0;
		Pulse();
		Delay(2);
	}
}

void Pulse()	// To send High to Low pulse on Clock of Shift Register
{
	CLK=1;
	Delay(10);
	CLK=0;
}

void Delay(unsigned int i)
{
	unsigned int u,v;
	for(u=0;u<i;u++)
		for(v=0;v<100;v++);
}

//********************** For testing PIC 
void Test()
{
	RC3=1;		//Pin 7
	Delay(100);
	RC3=0;
}
//***********************/


/*******************************************************

		Delay(2000);
		for(j=0;j<8;j++)	// 1 by 1 OFF
		{
			DATA=0;
			Pulse();
			Delay(2000);
		}
		Delay(2000);
		for(j=0;j<8;j++)	// Row wise ON
		{
			DATA=1;
			Pulse();
			if(j==2) Delay(2000);
			if(j==5) Delay(2000);
			if(j==8) Delay(2000);
		}
		Delay(2000);
		for(j=0;j<8;j++)	// Row wise OFF
		{
			DATA=0;
			Pulse();
			if(j==2) Delay(2000);
			if(j==5) Delay(2000);
			if(j==8) Delay(2000);
		}
		Delay(2000);		

*******************************************************/