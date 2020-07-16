#include<htc.h>

#define closed 		1
#define open 		0
#define sw1 		RA2			// Pin 17 for MCS switch
#define sw2 		RA4			// Pin 2 for Ignition switch
#define LED		 	RC2
#define BUZZER     	RC1
#define RESET      	RA5

#define SingleLongBeep()		BuzzerBeep(1,1)
#define TrippleLongBeep()		BuzzerBeep(3,1)
#define SingleBeep()			BuzzerBeep(1,0)
#define DoubleBeep()			BuzzerBeep(2,0)
#define TrippleBeep()			BuzzerBeep(3,0)

void ToggleBuzzLED(void);
void DelayMs(unsigned int TimeCnt);
void BuzzerBeep(unsigned char BeepNum, unsigned char LONG_BEEP); //LONG_BEEP :: 1=> LONG BEEP; 0=> SHORT BEEP
