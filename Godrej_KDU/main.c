#include<htc.h>
#include"main.h"

void DelayMs(unsigned int TimeCnt)
{
	unsigned int i, j; 
	for(i=0;i<TimeCnt;i++)
	{
		for(j=0;j<50;j++);
	} 
}

void ToggleBuzzLED(void)
{
	LED = !LED;
	BUZZER = !BUZZER;
}

/*
void BuzzerBeep(unsigned char BeepNum, unsigned char LONG_BEEP) //LONG_BEEP :: 1=> LONG BEEP; 0=> SHORT BEEP
{	
	unsigned int BeepTime;

	BeepTime = BUZER_BEEP_TIME_SHRT;

	if(LONG_BEEP)
		BeepTime = BUZER_BEEP_TIME_LONG;

	CLEAR(BUZZER);
	BeepNum = ((BeepNum * 2) - 1);
	
	for(LONG_BEEP=0; LONG_BEEP < BeepNum; LONG_BEEP++)// variable reuse
	{
		BUZZER = !BUZZER;
		DelayMs(BeepTime);	
	}
	CLEAR(BUZZER);
}
*/
/*
void  GoToSleep(void) 
{
	RIE();
#asm 
	BSF 0x3, 0x5
	BCF 0x3, 0x6   
	BSF 0x5, 0x2

	MOVLW 0x24 
	MOVWF 0x16
	SLEEP
#endasm
	SET(TRISA2);
    while(RA2 == 0);
 
	DelayMs(LOOP_DELAY); 	// delay wake up from sleep

	CLEAR(TRISA2);
	SET(RA2);
	SIE();
}
*/

void main()
{
	ANSEL=0;
	ANSELH=0;
	TRISC=0;	// PORT C is o/p
	TRISA=1;	// PORT A is i/p
	LED=0;
	BUZZER=0;
	while(1)
	{
		if(sw1==closed)
		{
			if(sw1==open)
			{
				LED=0;
				BUZZER=0;
			}
			while(sw2==closed)
			{
				ToggleBuzzLED();
				DelayMs(10);
				if(sw1==open)
				{
					break;
				}
			}
		}	
	}

}