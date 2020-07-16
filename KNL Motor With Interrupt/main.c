/*
Program to Interface KNL's CU with PIC16F677 to drive motor when it hears correct Knocks

*/

#include<htc.h>

#define MOTORFWD RC6	// Pin 8
#define MOTORREV RC7	// Pin 9

#define LOOP_DELAY 80
#define Buzzer RC1		// Pin 15

#define STALL_MOTOR	 do{MOTORFWD = 1; MOTORREV = 1;}while(0)
#define REV_MOTOR	 do{MOTORFWD = 1; MOTORREV = 0;}while(0)
#define FWD_MOTOR    do{MOTORFWD = 0; MOTORREV = 1;}while(0)
#define HALT_MOTOR	 do{MOTORFWD = 0; MOTORREV = 0;}while(0)

void Delay(unsigned int );
void BuzzerBeep(unsigned char );
void GoToSleep(void);
void DelayMs(unsigned int);

void Delay(unsigned int val)
{
	unsigned int u,v;
	for(u=0;u<val;u++)
		for(v=0;v<1000;v++);
}

void DelayMs(unsigned int TimeCnt)
{
	unsigned int i,j;
	for(i=0;i<TimeCnt;i++)
	{
		for(j=0;j<50;j++);
	}
}

void BuzzerBeep(unsigned char val)
{
	unsigned char j;
	for(j=0;j<val;j++)
	{
		Buzzer=1;
		Delay(5);	
		Buzzer=0;
	}
}

void GoToSleep(void) 
{
	#asm 
		BSF 0x3, 0x5
		BCF 0x3, 0x6   
		BSF 0x5, 0x2
	
		MOVLW 0x24
		MOVWF 0x16
		SLEEP
	#endasm
	//	LOOP_COUNT; // do not remove this line; used for flash mapping
		DelayMs(LOOP_DELAY);
}

void main()
{
	ANSEL=0x00;		// To set Digital o/p on ports 
    ANSELH=0x00;	// To set Digital o/p on ports
	TRISC1=0;		// To set PORTC Pin1 as o/p for Buzzer
	TRISC6=0;		// To set PORTC Pin6 as o/p for driving motors
	TRISC7=0;		// To set PORTC Pin7 as o/p for driving motors
	TRISB4=1;		// To set PORTB (Pin 13) as I/P for reading signal from KNL CU
	TRISB5=1;		// To set PortB (Pin 12) as I/P for reading signal from KNL CU
	Buzzer=0;		// Buzzer OFF
	RBIE = 1; 		// Interrupts on PORTB change are enabled
	IOCB4 = 1; 		// Interrupt on PORTB pin4 change is enabled
	GIE = 1; 		// Global interrupt is enabled
	GoToSleep();

	BuzzerBeep(2);
	FWD_MOTOR;
	Delay(20);
	HALT_MOTOR;
	Delay(5);
	REV_MOTOR;
	Delay(20);
	STALL_MOTOR;
	Delay(5);
//	GoToSleep();
}