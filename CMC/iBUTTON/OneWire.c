//************************************************************
// FILENAME: OneWire.c
// Written & Modified by Sachin Bamane
// Godrej & Boce Mfg. Co.
// PORTABLE: NO
//************************************************************

#include<htc.h>
#include"OneWire.h"

/********************************************************************
Function 			 : void
Input Parameters	 : void
Return Value		 : void
Used Global variables: none
Description			 : 
********************************************************************/
unsigned char CRCCheck(unsigned char* KeyPointer)
{
	unsigned char LenForCrc,CRC,KeyAllByteZero;
	CLEAR(CRC);
	CLEAR(KeyAllByteZero);
	for(LenForCrc=0;LenForCrc<LENFORCRC;LenForCrc++)
	{
		KeyAllByteZero |= *KeyPointer;
		CRC = CRCValue[CRC^(*KeyPointer++)];
	}
	if(*KeyPointer == CRC && KeyAllByteZero != 0)
		return(1); 
	else
		return(0);
}

/********************************************************************
Function 			 : void read_sensor(void)
Input Parameters	 : void
Return Value		 : void
Used Global variables: none
Description			 : This module detects and reads ibutton.
********************************************************************/

unsigned char ReadiButton(void)
{	  
	unsigned char n, iButtonPresent = 0;
	iButtonPresent = InitiButton();	
	if(iButtonPresent)
	{
		WriteByteToiButton(0x33);		// Read Scratchpad command 
		for (n=0; n<8; n++) 	
			iButtonKey[n]=ReadByteToiButton();	// read temaparature in array 
			
		if(CRCCheck(iButtonKey))
			return(1);
		else
			return(0);
	}
	return(iButtonPresent);
}

/********************************************************************
Function 			 : void WaitForiButtonDisconnect(void)
Input Parameters	 : void
Return Value		 : void
Used Global variables: none
Description			 : This module Checks for ibutton disconnection with reader.
********************************************************************/
unsigned char CheckForiButtonDisconnect(void)
{
	return(InitiButton());	
}

/********************************************************************
Function 			 : unsigned char InitiButton(void)
Input Parameters	 : unsigned char
Return Value		 : void
Used Global variables: none
Description			 : Initialsation Routine, checks if ibutton present.
********************************************************************/
unsigned char InitiButton(void)
{
	unsigned char PresencePulse;
	
  	CLEAR(TRISA2);
	SET(RA2);
	CLEAR(TRISA2);
	CLEAR(RA2);
   	
	SET_VALUE(t, 42);	
   	delay_10us();						// 	Delay of 480 uS
	
  	CLEAR(TRISA2);							// release line
	SET(RA2);

   	SET_VALUE(t, 6);	
   	delay_10us(); 						// 	Delay of 60 uS

	SET(TRISA2);
    if (RA2 == 1)
	   	CLEAR(PresencePulse);				
	else		
		SET(PresencePulse);				
		
	SET_VALUE(t, 50);
    delay_10us();
	
	CLEAR(TRISA2);
	SET(RA2);
	return (PresencePulse);
}

/********************************************************************
Function 			 : void WriteByteToiButton(unsigned char d)
Input Parameters	 : unsigned char
Return Value		 : void
Used Global variables: none
Description			 : This routine WRITE 1 byte to ibutton.
********************************************************************/
void WriteByteToiButton(unsigned char d)								
{
	unsigned char n;
	for(n=0; n<8; n++)
	{
		CLEAR(TRISA2);				
		CLEAR(RA2);	
		SET_VALUE(t, 6);	 
		if (d&0x01)
		{							
			asm ("nop");
			SET(TRISA2);	
			delay_10us();
		}
		else
		{
			delay_10us();
			SET(TRISA2);
		}
		d=d>>1;
	}
}	
/********************************************************************
Function 			 : unsigned char ReadByteToiButton(void)
Input Parameters	 : void
Return Value		 : unsigned char
Used Global variables: none
Description			 : This routine READ 1 byte from ibutton.
********************************************************************/
unsigned char ReadByteToiButton(void)
{
   unsigned char n, i_byte, temp, mask;
   for (n=0; n<8; n++)
   {
    	CLEAR(TRISA2);
		CLEAR(RA2);
	#asm
	    NOP
		NOP
	#endasm
		SET(TRISA2);
	#asm
	    NOP
	    NOP
	#endasm
	  	temp=PORTA;
	    if (temp & SENSOR_PIN)
	    {
	    	i_byte=(i_byte>>1) | 0x80;	// least sig bit first
	    }
	    else
	    {
	    	i_byte=i_byte >> 1;
	    }
	    SET_VALUE(t, 6);	 
	    delay_10us();
	}
   	return(i_byte);
}

/********************************************************************
Function 			 : void delay_10us(void)	
Input Parameters	 : void
Return Value		 : void
Used Global variables: none
Description			 : This routine READ 1 byte from ibutton.
********************************************************************/
void delay_10us(void)	
{
#asm
	BCF _STATUS,5
DELAY_10US_XZ:
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	NOP
	DECFSZ _t,F
	GOTO DELAY_10US_XZ
#endasm
}
/********************************************************************/