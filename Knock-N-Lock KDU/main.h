#define LED      			RC0
#define BUZZER     			RC1
#define KEY  				RC2
#define RESET      			RA5   //RC5
#define IGNITION      		RA4

#define SHORTTIME			100   //200
#define LONGTIME			4*SHORTTIME

#define BUZER_BEEP_TIME_SHRT         	0x64
#define BUZER_BEEP_TIME_LONG         	(4*BUZER_BEEP_TIME_SHRT)

#define LOWBATDURA         54   //7800/LOWBATTBLK
#define CONFIGDURA         36   //7800/CONFIGBLK



#define SingleLongBeep()				BuzzerBeep(1,1)
#define TrippleLongBeep()				BuzzerBeep(3,1)
#define SingleBeep()					BuzzerBeep(1,0)
#define DoubleBeep()					BuzzerBeep(2,0)
#define TrippleBeep()					BuzzerBeep(3,0)


unsigned char ToggleSkipFlag;

// Local function definations
#define BOUNCEPERIOD 1

#define SIE() do{INTCON &= 0x7E;}while(0)
#define RIE() do{INTCON |= 0x80;}while(0)
#define LOOP_DELAY 		80
#define POWER_ON_DELAY 	100

#define SET(x) 			x=0x01
#define CLEAR(x)		x=0x00
#define SET_VALUE(x, y)	x=y
#define IN 				0
#define OUT				1
