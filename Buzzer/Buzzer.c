    //
    // CreatingSound3.C
    //
    #include <p18f1320.h>
    #include <delays.h>
    #include <adc.h>
    #pragma config OSC=INTIO2, WDT=OFF, LVP=OFF, DEBUG=ON
    #define PAUSE Delay1KTCYx(50);
    rom const unsigned int songs[6][80] = {
										    {0, 5, 7, 8, 10, 8, 0, 0, 5, 7, 8, 0, 8, 5, 12, 10, 12, 17, 19, 20, 22, 20, 12, 12, 17, 19, 20, 12, 20, 17, 24, 22, 12, 12, 17, 19, 20, 17, 24, 20, 29, 17, 17, 20, 19, 17, 24, 20, 17, 12, 12, 17, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
										    {500, 1000, 1500, 250, 250, 1000, 500, 500, 1500, 250, 250, 250, 250, 250, 250, 1500, 500, 1000, 1500, 250, 250, 1000, 500, 500, 1500, 250, 250, 250, 250, 250, 250, 1500, 250, 250, 500, 250, 250, 250, 250, 250, 1000, 250, 250, 250, 250, 250, 1500, 250, 250, 500, 500, 1500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
										    {7, 9, 10, 9, 10, 12, 14, 15, 14, 12, 10, 14, 15, 14, 19, 17, 19, 12, 14, 15, 14, 30, 10, 12, 14, 12, 10, 14, 9, 10, 9, 9, 10, 12, 10, 9, 7, 9, 7, 6, 10, 9, 10, 9, 7, 6, 14, 7, 12, 10, 9, 14, 15, 17, 15, 14, 12, 9, 7, 6, 7, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
										    {500, 500, 500, 250, 500, 500, 500, 500, 500, 250, 500, 500, 500, 500, 500, 250, 500, 500, 500, 500, 1500, 500, 500, 500, 500, 250, 500, 1500, 500, 250, 500, 500, 500, 500, 500, 250, 500, 500, 500, 500, 1000, 500, 500, 250, 500, 1000, 500, 500, 250, 500, 1500, 500, 250, 500, 500, 250, 500, 1500, 250, 500, 1500, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
										    {5, 5, 5, 3, 5, 7, 9, 9, 10, 7, 9, 10, 14, 2, 14, 9, 10, 12, 14, 14, 158, 12, 12, 14, 7, 3, 5, 5, 12, 12, 12, 12, 10, 9, 10, 10, 10, 10, 9, 7, 7, 9, 9, 2, 17, 17, 17, 17, 15, 14, 15, 15, 15, 15, 14, 12, 9, 10, 9, 7, 5, 9, 10, 12, 14, 7, 5, 5, 14, 15, 14, 12, 10, 9, 7, 5, 7, 9, 9, 20},
										    {500, 500, 500, 1500, 250, 500, 500, 500, 500, 1500, 250, 500, 500, 500, 500, 1500, 250, 500, 500, 500, 500, 1500, 250, 500, 500, 1000, 250, 1500, 500, 500, 500, 1500, 250, 500, 500, 500, 500, 1500, 250, 500, 500, 500, 250, 1500, 500, 500, 500, 1500, 250, 500, 500, 500, 500, 1500, 250, 500, 500, 250, 250, 250, 250, 1500, 250, 500, 500, 1500, 250, 1500, 500, 250, 250, 250, 250, 1500, 250, 500, 500, 1500, 250, 1500}
   										  };
    void playNote(unsigned int note, unsigned int timer) // Note & Timer driver; determines which note will be played and for how long
    {
	    unsigned int times, freq, notes[] = {58725, 59107, 59468, 59809, 60131, 60434, 60720, 60990, 61245, 61486, 61714, 61928, 62131, 62322, 62502, 62672, 62833, 62985, 63128, 63263, 63391, 63511, 63625, 63732, 63833, 63929, 64019, 64104, 64104, 64184, 64260, 65536};
	    freq = notes[note]; 				// Determine frequency based on array value
	    INTCONbits.TMR0IF = 0; 				// Clear OVF Flag
	    LATA = 0x01; 						// Initialize LATA
	    TMR0L = freq & 0xFF;
	    TMR0H = (freq >> 8) & 0xFF;
	    T0CON|=0x80;
	    for(times=timer;times>0;times--) 	// Duration of playing
	    {
		    TMR0H = (freq >> 8) & 0xFF;		//Load TMR0H byte first
		    TMR0L = freq & 0xFF; 			// Load TMR0L byte next
		    while(!INTCONbits.TMR0IF); 		// Wait for timer
		    INTCONbits.TMR0IF = 0; 			// Clear OVF Flag
		    LATA = ~LATA; 					// Invert output
	    }
	    PAUSE;
    }
    void playSong(unsigned int song)
    {
	    int time, note, counter;
	    while(1)
	    {
		    if(song==0) // Song 1
		    {
			    for(counter=0;counter<53;counter++)
			    {
				    note = songs[0][counter]; // Song 1 notes
				    time = songs[1][counter]; // Song 1 time values
				    playNote(note, time); // Play through notes and times
			    }
		    	break; // When song 1 finishes, break
		    }
		    else if(song==1) // Song 2
		    {
			    for(counter=0;counter<63;counter++)
			    {
				    note = songs[2][counter]; // Song 2 notes
				    time = songs[3][counter]; // Song 2 time values
				    playNote(note, time); // Play through notes and times
			    }
		    	break; // When song 2 finishes, break
		    }
		    else if(song==2) // Song 3
		    {
			    for(counter=0;counter<80;counter++)
			    {
				    note = songs[4][counter]; // Song 3 notes
				    time = songs[5][counter]; // Song 3 time values
				    playNote(note, time); // Play through notes and times
			    }
		   		break; // When song 3 finishes, break
		    }
		    else
		    {
		    	LATB = 0x08; // Otherwise, LED 4
		    }
	    }
    }
    void main()
    {
	    ADCON1 = 0x0E; // ADC Settings as digital inputs from RA1-RA3
	    OSCCONbits.IRCF0=1;
	    OSCCONbits.IRCF1=1;
	    OSCCONbits.IRCF2=1;
	    T0CONbits.TMR0ON = 0; // Don't turn timer on yet
	    T0CONbits.T08BIT = 0; // Timer0 is configured as 16-bit timer
	    T0CONbits.T0CS = 0; // Use internal clock
	    T0CONbits.PSA = 1; // Prescaler is not assigned
	    T0CONbits.T0PS2 = 0;
	    T0CONbits.T0PS1 = 0;
	    T0CONbits.T0PS0 = 0;
	    while(!OSCCONbits.IOFS);
	    TRISA = 0xFE;
	    TRISB = 0xF0;
	    while(1)
	    {
		    switch(PORTA & 0x0E)
		    {
			    case 0x0C:
			    LATB = 0x01;
			    playSong(0);
			    break;
			    case 0x0A:
			    LATB = 0x02;
			    playSong(1);
			    break;
			    case 0x06:
			    LATB = 0x04;
			    playSong(2);
			    break;
			    default:
			    LATB = 0x08;
		    }
	    }
    }
