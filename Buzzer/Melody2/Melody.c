//**************************************
// Name: Music Generation with PIC Microcontroller
// Description:Generate one-octave music notes on a PIC 16F877 microcontroller development board to play a song from its notes.
// By: SouthOfHeaven
//
//This code is copyrighted and has// limited warranties.Please see http://www.Planet-Source-Code.com/vb/scripts/ShowCode.asp?txtCodeId=7420&lngWId=3//for details.//**************************************

#include <pic.h>
#include "delay.h"
#include "sound.h"
#define	FALSE	0
#define TRUE	1
bank1 unsigned charNotes[19] = {
NoteC,NoteE,NoteF,NoteG,
NoteC,NoteE,NoteF,NoteG,
NoteC,NoteE,NoteF,NoteG,
NoteE,NoteC, NoteE,NoteD,
NoteD, 0
};
// Length of notes in eighths.
bank1 int Durations[19] = {
	CNote(1),ENote(1),FNote(1),GNote(1),
	CNote(1),ENote(1),FNote(1),GNote(1),
	CNote(1),ENote(1),FNote(1),GNote(1),
	ENote(2),CNote(2),
	ENote(2),DNote(2),
	DNote(2),
	0};
bit SOUNDON;
void rtcc_isr(void);
		
void interrupt isr(void)
{
	if(T0IF) 	
rtcc_isr();
}
		
void rtcc_isr(void)
{
	
	if (T0IF)
	{	
T0IF = 0; //Clear the timer interrupt.
		// Timer0 (RTCC) overflow
		if(SOUNDON)
		{
				
			if(Notes[NoteNumber]==0)
			{	// Initialize the Note array
				NoteNumber = 0;
				CurrentNoteTime = Durations[NoteNumber];
			}
					
			if (!DoingStop && (Notes[NoteNumber] != 0))
			{
			//If not a rest or note stop,
			// toggle the output port bit. 
			//~~~~~ FILL IN ~~~~~~~~~~~~ 
				SOUNDOUT ^= 1;
			}
					
			if (CurrentNoteTime == 0)
			{
				if (DoingStop)
				{//Go to the next note.
					DoingStop = FALSE;
					NoteNumber ++;
					CurrentNoteTime = Durations[NoteNumber];
				}
				else
				{		//Pause for emphasis between
					DoingStop = TRUE;// notes.
					CurrentNoteTime = STOP_LENGTH;
				}
			}
			CurrentNoteTime --;
			
			if (Durations[NoteNumber] == 0)
			{ //Start the song over again.
				NoteNumber = 0; // Let the timer lap for a large
				CurrentNoteTime = Durations[NoteNumber];
				// pause between consecutive plays.
			}
			else
			{
				if (DoingStop)
			 //Initialize the timer for a pause.
			//~~~~~ FILL IN ~~~~~~~~~~~~
			{
			TMR0 = STOP_LENGTH;
			}
				else
			 	 //Initialize the timer for a note.
				 //~~~~~ FILL IN ~~~~~~~~~~~~
				 {
				 TMR0 = Notes[NoteNumber];
				 }
			}
		}
	} 
			
}
		
void initialize (void)
{
	
	OPTION = 0xC2;//Set the timer prescaler.
	
	TMR0= Notes[0]; //Initialize the timer period.
	T0IE = 1; //Enable the timer interrupt.
	GIE = 1; //Enable global interrupts.
	
	INTCON = 0xE0;
	TRISC &= 0xFB;		//PORTC bit2 is SoundOutput
	SOUNDOUT = 0;
}
		
bit bit_test(unsigned char vByte, unsigned char vBit)
{
	vByte >>= vBit;
	return(vByte & 1);
}
main()
{
		
	char	i;
	
	initialize();
	SOUNDON = TRUE;
	while(1)
	{		
		for(i=0;i<120;i++) {
			DelayMs(250);// 30 sec delay
			SOUNDON ^=1;
		}
	}
			
}
		
void
DelayMs(unsigned char cnt)
{
#if	XTAL_FREQ <= 2MHZ
	do {
		DelayUs(996);
	} while(--cnt);
#endif
			
#ifXTAL_FREQ > 2MHZ	
	unsigned char	i;
	do {
		i = 4;
		do {
			DelayUs(250);
		} while(--i);
	} while(--cnt);
#endif
}