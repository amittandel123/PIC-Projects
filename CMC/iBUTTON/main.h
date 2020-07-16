#define iBLED      			RC0
#define BUZZER     			RC1
#define TESTLED    			RC2
#define RESET      			RA5   //RC5
#define MOTORFWD   			RC6
#define MOTORREV   			RC7
#define MODEKEY      		RA4
#define CHECKMODE         	RC5   

#define iKEYLENGTH			8
#define MASTER				0
#define INVALID				0
#define NOKEY				0
#define VALID				1
#define CLOSE				0
#define OPEN				1
#define ON					1
#define OFF					0
#define TOTALNOKEYS         23
#define SHORTTIME			100   //200
#define LONGTIME			4*SHORTTIME

#define BUZER_BEEP_TIME_SHRT         	0x64
#define BUZER_BEEP_TIME_LONG         	(4*BUZER_BEEP_TIME_SHRT)

#define LOWBATLED         170
#define LOWBATBUZZ         30
#define LOWBATTBLK         LOWBATLED+LOWBATBUZZ //200
#define CONFIGBLK         LOWBATTBLK*3
#define LOWBATDURA         5   //7800/LOWBATTBLK
#define CONFIGDURA         36   //7800/CONFIGBLK

#define EXTRATIME         240
#define KEYDEBOUNCE         10
#define INTERKEYDEL         500
#define OPENTIME         195
#define CLOSETIME         400
#define EEPROMWRDEL          10
#define INVALIDINDIDEL      125   //Invalid short beep, changed from 50 to 100
                                 // to 125 by  Amod 
#define SingleLongBeep()				BuzzerBeep(1,1)
#define TrippleLongBeep()				BuzzerBeep(3,1)
#define SingleBeep()					BuzzerBeep(1,0)
#define DoubleBeep()					BuzzerBeep(2,0)
#define TrippleBeep()					BuzzerBeep(3,0)

unsigned int DataEEAddr, DataEEData;
unsigned char EEPROMKey[9];
unsigned char DoorState;
unsigned char LowBatt;
unsigned char AutoMode;
unsigned char TimeCounter;
unsigned char SlaveConfigured;
unsigned char MatchKey;
unsigned char ToggleSkipFlag;

// Local function definations
void ReadEEPROM(void);
void WriteEEPROM(void);

extern unsigned char iButtonKey[9];
extern unsigned char ReadiButton(void);
extern unsigned char CheckForiButtonDisconnect(void);
extern unsigned char CRCCheck(unsigned char*);

#define BOUNCEPERIOD 1

#define SIE() do{INTCON &= 0x7E;}while(0)
#define RIE() do{INTCON |= 0x80;}while(0)
#define LOOP_DELAY 		80
#define POWER_ON_DELAY 	100

#define STALL_MOTOR		do{MOTORFWD = 1; MOTORREV = 1;}while(0)
#define REV_MOTOR		do{MOTORFWD = 0; MOTORREV = 1;}while(0)
#define FWD_MOTOR		do{MOTORFWD = 1; MOTORREV = 0;}while(0)
#define HALT_MOTOR		do{MOTORFWD = 0; MOTORREV = 0;}while(0)
#define WITH_MASTER 1
#define WITHOUT_MASTER 0 
#define COUNT_PER_HOUR (15*60) // 15 * 4 = 60 minutes
#define DELAY_HOUR 1

#define SET(x) 			x=0x01
#define CLEAR(x)		x=0x00
#define SET_VALUE(x, y)	x=y
#define LOW_BAT_OPEN(x)	if(x)return; 

#define MAX_LOW_BAT_COUNT 0x03 		// 50
#define LOW_BAT_COUNT_LOCN 0xFF 	// 255

#define CLEAR_LOW_BAT_COUNT_LOCN() 		do	{DataEEAddr = LOW_BAT_COUNT_LOCN; DataEEData = 0x00; WriteEEPROM();}while(0)
void CHK_LOW_BAT_OPEN(void);