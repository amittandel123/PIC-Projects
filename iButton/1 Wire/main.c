#include<htc.h>
#include"OneWire.h"
#define LED1 RC2

union USR USER;
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
	
	TRISC2 = 0;
//	TRISC &= 0x04; // includes part of InitKeyPad
	
	TRISA5 |= 0x24;		//	SET(TRISA5); //	SET(TRISA2);
//	CLEAR(iBLED_RED_PIN);  // TRISA4

	SET_VALUE(WPUA, 0x24);
	SET_VALUE(WPUB, 0xA0);

	CLEAR(RABPU);

//	PORTC &= 0x3C; // CLEAR(iBLED); // CLEAR(BUZZER); HALT_MOTOR;	// clear RC6 and RC7
	
//	CLEAR(iBLED_RED);		// RA4
	CLEAR(EECON1);
/*

//-<KEY PAD Initialization>-----------------------------

	CLEAR(KEY_RW_0_DIR); 	//TRISB4

	SET(KEY_CL_0_DIR);		//TRISB5
	SET(KEY_CL_1_DIR);		//TRISB7
	SET(KEY_CL_2_DIR);		//TRISA4

//-<\KEY PAD Initialization>----------------------------

*/
	SET_VALUE(INTCON, 0x88);
	SET_VALUE(IOCA, 0x24); 

//	DataEEAddr = LOW_BAT_COUNT_LOCN;
//	ReadEEPROM();

//	if(DataEEData > MAX_LOW_BAT_COUNT)
	{	
//		DataEEData = ZERO;
//		WriteEEPROM();	
	}
}

void main()
{
	PowerInit();
//	LED1=1;
	while(1)
	{
		if(ReadiButton())
		{
			LED1 = 0;
		}
		else
		{
			LED1 = 1;
		}
	}
}