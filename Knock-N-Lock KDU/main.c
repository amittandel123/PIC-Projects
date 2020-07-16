#include<htc.h>
#include"main.h"
#define LOOP_COUNT 4
//********************************************************************
// FILENAME: main.c
// Written & Modified by Sachin Bamane
// Date of Modification : 16/10/2009
// Modification details : Added Battery low Count Feature Set for 50
// Godrej & Boce Mfg. Co.
// PORTABLE: NO
//********************************************************************

unsigned char flag = 0;

__CONFIG(INTIO & WDTDIS & PWRTDIS & MCLRDIS & CP & BORDIS & IESODIS & FCMDIS);

void PowerInit(void)
{
	CLEAR(IRCF0); 
	SET(SCS); 
	SET(IRCF1);
	SET(IRCF2);

	CLEAR(OSCTUNE);

	CLEAR(CM1CON0);
	CLEAR(ANSEL);
	CLEAR(ANSELH);

	CLEAR(TRISC1);				//Buzzer as o/p
	CLEAR(BUZZER);

	SET(TRISC2);				//Switch input
//	SET(TRISA5);
//	SET_VALUE(WPUA, 0x24);

//	CLEAR(TRISC5);
	SET(TRISA4);				//Ignition input
//	CLEAR(RABPU);
	CLEAR(TRISC0);
//	CLEAR(TRISC2);
	SET(TRISA2);
	CLEAR(LED);

	CLEAR(TRISC6);
	CLEAR(TRISC7);


	CLEAR(EECON1);

//	SET_VALUE(INTCON, 0x88);
//	SET_VALUE(IOCA, 0x24);

}

void DelayMs(unsigned int TimeCnt)
{
	unsigned int i,j;
	for(i=0;i<TimeCnt;i++)
	{
		for(j=0;j<50;j++);
	}
}

void  GoToSleep(void) 
{
#asm 
	BSF 0x3, 0x5
	BCF 0x3, 0x6   
	BSF 0x5, 0x2

	MOVLW 0x24
	MOVWF 0x16
	SLEEP
#endasm
	LOOP_COUNT; // do not remove this line; used for flash mapping
	DelayMs(LOOP_DELAY);
}


void ToggleBuzzErrorLED(void)
{
	BUZZER = ~BUZZER;
	LED = ~LED;

}


static void interrupt isr(void)
{ 
	unsigned char i;
	SET_VALUE(i, PORTA);
	CLEAR(RABIF);	
	CLEAR(IOCA);		//Disable port change detection.
}

void main(void) 
{ 
	unsigned char PowerOnBeep;
	PowerInit();											
	DelayMs(POWER_ON_DELAY);
	
	SET(LED);
	DelayMs(1000);
	CLEAR(BUZZER);
	CLEAR(LED);
									

	while(1)
	{
		while(KEY==0)			//if key is in KDU then stay locked
		{						//if key is removed then check for ignition
			DelayMs(300);
		}
		while(IGNITION==1);		//Check whether ignition is OFF
								//if Ignition is ON then again check for key
		while(KEY==1)			//if key is not in KDU then stay locked
		{						
			DelayMs(500);
			ToggleBuzzErrorLED();			
		}
		
		CLEAR(BUZZER);
		CLEAR(LED);
	
//			GoToSleep();
	}
	
}