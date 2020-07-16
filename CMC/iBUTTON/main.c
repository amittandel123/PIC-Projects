#include<htc.h>
#include"main.h"

#define LOOP_COUNT 1267				//random	
//********************************************************************
// FILENAME: main.c
// Written & Modified by Sachin Bamane
// Date of Modification : 16/10/2009
// Modification details : Added Battery low Count Feature Set for 50
// Godrej & Boce Mfg. Co.
// PORTABLE: NO
//********************************************************************

unsigned char InvalidKeyCount = 0; 

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

	CLEAR(TRISC1);
	CLEAR(BUZZER);

	SET(TRISA5);
	SET_VALUE(WPUA, 0x24);

	CLEAR(TRISC5);
	CLEAR(CHECKMODE);
	SET(TRISA4);
	CLEAR(RABPU);
	CLEAR(TRISC0);
	SET(TRISC2);
	SET(TRISA2);
	CLEAR(iBLED);

	CLEAR(TRISC6);
	CLEAR(TRISC7);

	HALT_MOTOR;

	CLEAR(EECON1);

	SET_VALUE(INTCON, 0x88);
	SET_VALUE(IOCA, 0x24);
	SET(AutoMode);
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

void ToggleLED(void)
{
	if(iBLED)
		CLEAR(iBLED);
	else
	{
		if(ToggleSkipFlag == 0)		
		{
			SET(ToggleSkipFlag);
			SET(iBLED);
		}
		else
			CLEAR(ToggleSkipFlag);
	}
}

void ToggleBuzzLED(void)
{
	if(iBLED)
	{
		CLEAR(BUZZER);
		CLEAR(iBLED);
	}
	else
	{
		SET(BUZZER);
		SET(iBLED);
	}
}

void DoorOpen(void)
{
	unsigned char BattStatus;
	CLEAR(BattStatus);
	if(RESET)					//Check supply when motor is off
		BattStatus++;
	DelayMs(KEYDEBOUNCE);		//Key Debounce delay
	if(RESET)
		BattStatus++;
	if(DoorState != OPEN)
	{
		STALL_MOTOR;

		DelayMs(10);
		FWD_MOTOR;

		DelayMs(OPENTIME);
	}
	if(!RESET)					//Check supply when motor is on
		BattStatus++;
	DelayMs(KEYDEBOUNCE);
	if(!RESET)
		BattStatus++;
	DelayMs(OPENTIME);
	HALT_MOTOR;

	SET_VALUE(DoorState, OPEN);
	
	if(BattStatus == 4)
		SET(LowBatt);
	else
		CLEAR(LowBatt);
}

void DoorClose(void)
{
//	CHK_LOW_BAT_OPEN();
//	LOW_BAT_OPEN(LowBatt); // New Feature
	
	if(DoorState != CLOSE)
	{
		REV_MOTOR;
		DelayMs(CLOSETIME); 
		HALT_MOTOR;
	}
	SET_VALUE(DoorState, CLOSE);
}

void BuzzerBeep(unsigned char BeepNum, unsigned char LONG_BEEP) //LONG_BEEP :: 1=> LONG BEEP; 0=> SHORT BEEP
{	
	unsigned char BeepCnt = 0;
	unsigned int BeepTime = 0;
	if(LONG_BEEP)
		BeepTime = BUZER_BEEP_TIME_LONG;
	else
		BeepTime = BUZER_BEEP_TIME_SHRT;

	CLEAR(BUZZER);
	for(BeepCnt=0; BeepCnt<((BeepNum * 2) - 1); BeepCnt++)
	{
		BUZZER = !BUZZER;
		DelayMs(BeepTime);	
	}
	CLEAR(BUZZER);
}

void ReadEEPROM(void)
{
	SET_VALUE(EEADR, DataEEAddr);
	CLEAR(EECON1);
	SET(RD);
	SET_VALUE(DataEEData, EEDAT);
}

void WriteEEPROM(void)
{
	SET_VALUE(EEADR, DataEEAddr);
	SET_VALUE(EEDAT, DataEEData);	
	CLEAR(EECON1);
	SET(WREN);
	CLEAR(GIE);
	while(GIE);
	SET_VALUE(EECON2, 0x55);
	SET_VALUE(EECON2, 0xAA);
	SET(WR);
	SET(GIE);			
	CLEAR(WREN);
}

void EEPROMReadKey(unsigned char ReadAddress)
{
	unsigned char KeyLength;
	SIE();
	ReadAddress = ReadAddress * iKEYLENGTH;				
	for(KeyLength=0;KeyLength<iKEYLENGTH;KeyLength++)	
	{	
		DataEEAddr = ReadAddress++;
		ReadEEPROM();
		EEPROMKey[KeyLength] = DataEEData;
	}
	RIE();
}

void EEPROMWriteKeyByte(unsigned char WriteAddress)
{
	SIE();
	WriteAddress = WriteAddress * iKEYLENGTH;			
	DataEEAddr = WriteAddress++;
	DataEEData = iButtonKey[0];
	WriteEEPROM();
	DelayMs(EEPROMWRDEL);							
	RIE();
}

void EEPROMWriteKey(unsigned char WriteAddress)
{
	unsigned char KeyLength;
	SIE();
	WriteAddress = WriteAddress * iKEYLENGTH;
	for(KeyLength=0;KeyLength<iKEYLENGTH;KeyLength++)
	{	
		DataEEAddr = WriteAddress++;
		DataEEData = iButtonKey[KeyLength];
		WriteEEPROM();
		DelayMs(EEPROMWRDEL);			
	}
	RIE();
}

unsigned char strcmp(unsigned char* x, unsigned char* y)
{
	unsigned char i;
	for(i=0;i<iKEYLENGTH;i++)
	{
		if(*x++ != *y++)
			break;
	}
	if(i==iKEYLENGTH)
		return(1);
	else
		return(0);
}

unsigned char AvailabeKey(void)
{
	unsigned char i, key;
	for(i=0;i<TOTALNOKEYS;i++)
	{
		EEPROMReadKey(i);
		key = strcmp(iButtonKey,EEPROMKey);	
		if(key)
			break;
	}
	if(i == 0)
		return(2);
	else if(i < TOTALNOKEYS)
		return(1);
	else 
		return(0);
}

void ClearAllKeys(unsigned char Master_Also)
{
	unsigned char i;

	for(i=0;i<iKEYLENGTH;i++)
	{
		SET_VALUE(iButtonKey[i], 0x55);
	}
	SET(i);
	if(Master_Also) 
		CLEAR(i);
	for(;i<TOTALNOKEYS;i++)
	{
		EEPROMWriteKeyByte(i);
	}
}

void ClearKey(unsigned char KeyNum)
{
	unsigned char i;
	for(i=0;i<iKEYLENGTH;i++)
	{
		SET_VALUE(iButtonKey[i], 0x55);
	}
	EEPROMWriteKeyByte(KeyNum);
} 

void Wait_With_LED_Blink(void)
{
	unsigned int k;
	while(CheckForiButtonDisconnect())
	{
		for(k=0;k<13500;k++);
		ToggleLED();
	}
}

void Configuration(void)
{
	unsigned char i, key, KeyConfigured = 0;
	unsigned int k;

	SingleLongBeep();    
//	while(CheckForiButtonDisconnect()){};
	Wait_With_LED_Blink();

	TimeCounter = 0;
	while(TimeCounter < CONFIGDURA)				
	{
		if(ReadiButton())
		{
			MatchKey = AvailabeKey(); 
			if(MatchKey != 2)
			{	
				SET(KeyConfigured);
				for(i=1;i<TOTALNOKEYS;i++)		
				{							
					EEPROMReadKey(i);
					key = strcmp(iButtonKey,EEPROMKey);
					if(key)			
					{
						ClearKey(i);
						DoubleBeep();    
						CLEAR(TimeCounter);
//						while(CheckForiButtonDisconnect());
						Wait_With_LED_Blink();
						break;
					}
				}
				if(i==TOTALNOKEYS)	
				{					
					for(i=1;i<TOTALNOKEYS;i++)
					{
						EEPROMReadKey(i);	
						if(CRCCheck(EEPROMKey) == INVALID)
						{			
							EEPROMWriteKey(i);
							SingleBeep();    
							CLEAR(TimeCounter);
//							while(CheckForiButtonDisconnect());
							Wait_With_LED_Blink();
							break;
						}
					}
									
					if(i==TOTALNOKEYS)
						TrippleLongBeep();    
											
				}								
			} 
			else
			{
				if(KeyConfigured==0)
				{
					ClearAllKeys(WITHOUT_MASTER);
					TrippleLongBeep(); 
				}
				else
					SingleBeep();
				break;
			}
		}
		DelayMs(CONFIGBLK);
		ToggleLED();
		TimeCounter++;
	}
	TimeCounter = LOWBATDURA;	
	TimeCounter++;
}

void InvalidKeyIndication(void)
{
	SET(BUZZER);
	SET(iBLED);
	CLEAR(TimeCounter);
	while(TimeCounter < EXTRATIME )		
	{
		DelayMs(420);
		TimeCounter++;
	
		if(ReadiButton())				
		{								
			MatchKey = AvailabeKey();
			if(MatchKey != 0)
			{
				CLEAR(BUZZER);
				CLEAR(iBLED);
				DelayMs(INTERKEYDEL);
				break;
			}
		}
	}
	CLEAR(BUZZER);
	CLEAR(iBLED);
} 

static void interrupt isr(void)
{ 
	unsigned char i;
	SET_VALUE(i, PORTA);
	CLEAR(RABIF);	
	CLEAR(IOCA);		//Disable port change detection.
}

void ConfigureMasterKey(unsigned char PowerOnBeep)
{
	EEPROMReadKey(MASTER);	
	if(CRCCheck(EEPROMKey) == INVALID)					
	{
		if(!PowerOnBeep)
			TrippleLongBeep();   
			
		while(1)				
		{
			if(ReadiButton())
			{
				EEPROMWriteKey(MASTER);	
				TrippleBeep();
//				while(CheckForiButtonDisconnect());
				Wait_With_LED_Blink();
				return;
			}
			if(RESET == 0)
				TrippleLongBeep();

			GoToSleep();
		} 
	}
}

void LockOperation(void)
{
	unsigned int i;
	unsigned char ShouldCheckConfig;

	if(ReadiButton())	
	{
		MatchKey = AvailabeKey();
		if(MatchKey)	
		{
			SET(iBLED);
			SingleBeep();    
//			DoorOpen();
			CLEAR(TimeCounter);
			CLEAR(ShouldCheckConfig);
			CLEAR(SlaveConfigured);
			SET(ToggleSkipFlag);
			while(TimeCounter < LOWBATDURA )	
			{
				if(LowBatt)						
					ToggleBuzzLED();
				
				if(ShouldCheckConfig == 0)
				{						
					if((MatchKey == 2) && (!CheckForiButtonDisconnect()))	
					{
						SET(ShouldCheckConfig);
					}
				}
				
				if(RC2==1)
				{
					DoorOpen();
				}
				else
				{
					CLEAR(iBLED);
					if(MatchKey!=2)	
					{
						break;
					}
				}

				if(ReadiButton() &&  ShouldCheckConfig)
				{
					MatchKey = AvailabeKey();	
					if(MatchKey == 2)
					{
						Configuration();
						SET(SlaveConfigured);
						break;	
					}
				}
				DelayMs(LOWBATBUZZ);	
				CLEAR(BUZZER);	
				DelayMs(LOWBATLED);			
				TimeCounter++;
			}
			CLEAR(BUZZER);
			CLEAR(iBLED);
			DoorClose();
//			CLEAR(TESTLED);
			while(CheckForiButtonDisconnect());
			CLEAR(InvalidKeyCount);
		}
		else
		{
			if((++InvalidKeyCount)>2)		
			{
				InvalidKeyCount = 0;
				InvalidKeyIndication();
			}
			else									
			{
				for(i=0;i<4;i++)
				{
					ToggleBuzzLED();
					DelayMs(INVALIDINDIDEL);
				}
			}
			while(CheckForiButtonDisconnect());
		}
	}
}

void CHK_LOW_BAT_OPEN(void)
{
	DataEEAddr = LOW_BAT_COUNT_LOCN;
	ReadEEPROM();

	if(LowBatt)
	{
		if(DataEEData >= MAX_LOW_BAT_COUNT)
			LowBatt = 0x01;
		else
		{
			LowBatt = 0x00;
			DataEEAddr = LOW_BAT_COUNT_LOCN;
			DataEEData++;
		}
	}
	else// power supply is proper
	{
		if(DataEEData > 0x00)
		{
			DataEEData--;
		}
	}
	WriteEEPROM();
	DelayMs(EEPROMWRDEL);			
}

void main(void) 
{ 
	unsigned char PowerOnBeep;
	PowerInit();											
	CLEAR(PowerOnBeep);
	DelayMs(POWER_ON_DELAY);											

	DoubleBeep();	    

	while(1)
	{
		ConfigureMasterKey(PowerOnBeep);
		SET(PowerOnBeep);
	
		while(1)
		{
			if(!RESET)		
			{	
				TrippleLongBeep();   
				CLEAR_LOW_BAT_COUNT_LOCN();
				ClearAllKeys(WITH_MASTER);
				ClearKey(MASTER);
				break;
			}
			LockOperation();		
			GoToSleep();
		}
	}
}
