#include<htc.h>

void Initialize_LCD();
void Send_Command(unsigned char comd);
void Clear_LCD();
void Delay(unsigned int val);
void Display();
void Sys_Init();


void Sys_Init()
{
    SCS = 1;      // INTERNAL OSCILLATOR SELECTION
    IRCF0 = 0;
    IRCF1 = 1;
    IRCF2 = 1;
}


void Initialize_LCD()
{
	TRISA=0;
	TRISC=0;
	Clear_LCD();
	Delay(40);
	Send_Command(0x38);
	Delay(40);
	Send_Command(0x38);
	Delay(40);
	Send_Command(0x0C);
	Delay(40);
	Send_Command(0x03);
	Delay(40);
	Clear_LCD();
	Delay(40);	
}

void Send_Command(unsigned char comd)
{
	TRISA=0;
	TRISC=0;
	RB4=0;
	RB5=0;
	RB6=1;
	PORTC=comd;
	Delay(40);
	RB6=0;
}

void Clear_LCD()
{
	Send_Command(0x01);		// Clear Display
	Delay(40);
	Send_Command(0x02);		// Cursor at home position
	Delay(40);
}

void Delay(unsigned int val)
{
	unsigned int u,v;
	for(u=0;u<val;u++)
		for(v=0;v<1000;v++);
}
/*
void Display()
{
	TRISA=0;
	TRISC=0;
	RB4=1;
	RB5=0;
	RB6=1;
	PORTC='A';
	Delay(40);
	RB6=0;	
}
*/
void main()
{
	TRISA=0;
	TRISC=0;
	Initialize_LCD();
	Send_Command(0x80);
	Delay(40);
	PORTC='A';
	Delay(40);
	while(1);
}