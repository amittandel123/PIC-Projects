
#ifndef	_HTC_H_
#warning Header file pic16f685.h included directly. Use #include <htc.h> instead.
#endif


 /* header file for the MICROCHIP PIC microcontrollers
	PIC16F631
	PIC16F677
	PIC16F685
	PIC16F687
	PIC16F689
	PIC16F690
 */

#ifndef	__PIC16F685_H
#define	__PIC16F685_H

// Special function register definitions

static volatile       unsigned char	TMR0		@ 0x001;
static volatile       unsigned char	PCL		@ 0x002;
static volatile       unsigned char	STATUS		@ 0x003;
static                unsigned char	FSR		@ 0x004;
static volatile       unsigned char	PORTA		@ 0x005;
static volatile       unsigned char	PORTB		@ 0x006;
static volatile       unsigned char	PORTC		@ 0x007;
static volatile       unsigned char	PCLATH		@ 0x00A;
static volatile       unsigned char	INTCON		@ 0x00B;
static volatile       unsigned char	PIR1		@ 0x00C;
static volatile       unsigned char	PIR2		@ 0x00D;
static volatile       unsigned char	TMR1L		@ 0x00E;
static volatile       unsigned char	TMR1H		@ 0x00F;
static                unsigned char	T1CON		@ 0x010;
#if defined(_16F685) || defined(_16F690)
static volatile       unsigned char	TMR2		@ 0x011;
static                unsigned char	T2CON		@ 0x012;
#endif
#if defined(_16F677) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile       unsigned char	SSPBUF		@ 0x013;
static volatile       unsigned char	SSPCON		@ 0x014;
#endif
#if defined(_16F685) || defined(_16F690)
static volatile       unsigned char	CCPR1L		@ 0x015;
static volatile       unsigned char	CCPR1H		@ 0x016;
static volatile       unsigned char	CCP1CON		@ 0x017;
#endif
#if defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile       unsigned char	RCSTA		@ 0x018;
static volatile       unsigned char	TXREG		@ 0x019;
static volatile       unsigned char	RCREG		@ 0x01A;
#endif
#if defined(_16F685) || defined(_16F690)
static volatile       unsigned char	PWM1CON		@ 0x01C;
static volatile       unsigned char	ECCPAS		@ 0x01D;
#endif
#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile       unsigned char	ADRESH		@ 0x01E;
static volatile       unsigned char	ADCON0		@ 0x01F;
#endif
static          bank1 unsigned char	OPTION		@ 0x081;
static volatile bank1 unsigned char	TRISA		@ 0x085;
static volatile bank1 unsigned char	TRISB		@ 0x086;
static volatile bank1 unsigned char	TRISC		@ 0x087;
static          bank1 unsigned char	PIE1		@ 0x08C;
static          bank1 unsigned char	PIE2		@ 0x08D;
static volatile bank1 unsigned char	PCON		@ 0x08E;
static volatile bank1 unsigned char	OSCCON		@ 0x08F;
static          bank1 unsigned char	OSCTUNE		@ 0x090;
#if defined(_16F685) || defined(_16F690)
static          bank1 unsigned char	PR2		@ 0x092;
#endif
#if defined(_16F677) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static          bank1 unsigned char	SSPADD		@ 0x093;
// Alternate definition
static          bank1 unsigned char	SSPMSK		@ 0x093;
static volatile bank1 unsigned char	SSPSTAT		@ 0x094;
#endif
static          bank1 unsigned char	WPUA		@ 0x095;
static          bank1 unsigned char	IOCA		@ 0x096;
static volatile bank1 unsigned char	WDTCON		@ 0x097;
#if defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile bank1 unsigned char	TXSTA		@ 0x098;
static          bank1 unsigned char	SPBRG		@ 0x099;
static          bank1 unsigned char	SPBRGH		@ 0x09A;
static volatile bank1 unsigned char	BAUDCTL		@ 0x09B;
#endif
#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile bank1 unsigned char	ADRESL		@ 0x09E;
static          bank1 unsigned char	ADCON1		@ 0x09F;
#endif
static volatile bank2 unsigned char	EEDAT		@ 0x10C;
/* Alternate definition */
static volatile bank2 unsigned char	EEDATA		@ 0x10C;
/* Alternate definition */
static volatile bank2 unsigned char	EEDATL		@ 0x10C;
static          bank2 unsigned char	EEADR		@ 0x10D;
/* Alternate definition */
static          bank2 unsigned char	EEADRL		@ 0x10D;
#if defined(_16F685) || defined(_16F689) || defined(_16F690)
static volatile bank2 unsigned char	EEDATH		@ 0x10E;
static          bank2 unsigned char	EEADRH		@ 0x10F;
#endif
static          bank2 unsigned char	WPUB		@ 0x115;
static          bank2 unsigned char	IOCB		@ 0x116;
static          bank2 unsigned char	VRCON		@ 0x118;
static volatile bank2 unsigned char	CM1CON0		@ 0x119;
static volatile bank2 unsigned char	CM2CON0		@ 0x11A;
static volatile bank2 unsigned char	CM2CON1		@ 0x11B;
static          bank2 unsigned char	ANSEL		@ 0x11E;
#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static          bank2 unsigned char	ANSELH		@ 0x11F;
#endif
static volatile bank3 unsigned char	EECON1		@ 0x18C;
static volatile bank3 unsigned char	EECON2		@ 0x18D;
#if defined(_16F685) || defined(_16F690)
static          bank3 unsigned char	PSTRCON		@ 0x19D;
#endif
static volatile bank3 unsigned char	SRCON		@ 0x19E;


/* Definitions for STATUS register */
static volatile       bit	CARRY		@ ((unsigned)&STATUS*8)+0;
static volatile       bit	DC		@ ((unsigned)&STATUS*8)+1;
static volatile       bit	ZERO		@ ((unsigned)&STATUS*8)+2;
static volatile       bit	PD		@ ((unsigned)&STATUS*8)+3;
static volatile       bit	TO		@ ((unsigned)&STATUS*8)+4;
static                bit	RP0		@ ((unsigned)&STATUS*8)+5;
static                bit	RP1		@ ((unsigned)&STATUS*8)+6;
static                bit	IRP		@ ((unsigned)&STATUS*8)+7;

/* Definitions for PORTA register */
static volatile       bit	RA0		@ ((unsigned)&PORTA*8)+0;
static volatile       bit	RA1		@ ((unsigned)&PORTA*8)+1;
static volatile       bit	RA2		@ ((unsigned)&PORTA*8)+2;
static volatile       bit	RA3		@ ((unsigned)&PORTA*8)+3;
static volatile       bit	RA4		@ ((unsigned)&PORTA*8)+4;
static volatile       bit	RA5		@ ((unsigned)&PORTA*8)+5;

/* Definitions for PORTB register */
static volatile       bit	RB4		@ ((unsigned)&PORTB*8)+4;
static volatile       bit	RB5		@ ((unsigned)&PORTB*8)+5;
static volatile       bit	RB6		@ ((unsigned)&PORTB*8)+6;
static volatile       bit	RB7		@ ((unsigned)&PORTB*8)+7;

/* Definitions for PORTC register */
static volatile       bit	RC0		@ ((unsigned)&PORTC*8)+0;
static volatile       bit	RC1		@ ((unsigned)&PORTC*8)+1;
static volatile       bit	RC2		@ ((unsigned)&PORTC*8)+2;
static volatile       bit	RC3		@ ((unsigned)&PORTC*8)+3;
static volatile       bit	RC4		@ ((unsigned)&PORTC*8)+4;
static volatile       bit	RC5		@ ((unsigned)&PORTC*8)+5;
static volatile       bit	RC6		@ ((unsigned)&PORTC*8)+6;
static volatile       bit	RC7		@ ((unsigned)&PORTC*8)+7;

/* Definitions for INTCON register */
static volatile       bit	RABIF		@ ((unsigned)&INTCON*8)+0;
// Alternate definition for backward compatibility
static volatile       bit	RBIF		@ ((unsigned)&INTCON*8)+0;
static volatile       bit	INTF		@ ((unsigned)&INTCON*8)+1;
static volatile       bit	T0IF		@ ((unsigned)&INTCON*8)+2;
static                bit	RABIE		@ ((unsigned)&INTCON*8)+3;
// Alternate definition for backward compatibility
static                bit	RBIE		@ ((unsigned)&INTCON*8)+3;
static                bit	INTE		@ ((unsigned)&INTCON*8)+4;
static                bit	T0IE		@ ((unsigned)&INTCON*8)+5;
static                bit	PEIE		@ ((unsigned)&INTCON*8)+6;
static                bit	GIE		@ ((unsigned)&INTCON*8)+7;

/* Definitions for PIR1 register */
static volatile       bit	TMR1IF		@ ((unsigned)&PIR1*8)+0;
#if defined(_16F685) || defined(_16F690)
static volatile       bit	TMR2IF		@ ((unsigned)&PIR1*8)+1;
static volatile       bit	CCP1IF		@ ((unsigned)&PIR1*8)+2;
#endif
#if defined(_16F677) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile       bit	SSPIF		@ ((unsigned)&PIR1*8)+3;
#endif
#if defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile       bit	TXIF		@ ((unsigned)&PIR1*8)+4;
static volatile       bit	RCIF		@ ((unsigned)&PIR1*8)+5;
#endif
#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static volatile       bit	ADIF		@ ((unsigned)&PIR1*8)+6;
#endif

/* Definitions for PIR2 register */
static volatile       bit	EEIF		@ ((unsigned)&PIR2*8)+4;
static volatile       bit	C1IF		@ ((unsigned)&PIR2*8)+5;
static volatile       bit	C2IF		@ ((unsigned)&PIR2*8)+6;
static volatile       bit	OSFIF		@ ((unsigned)&PIR2*8)+7;

/* Definitions for T1CON register */
static                bit	TMR1ON		@ ((unsigned)&T1CON*8)+0;
static                bit	TMR1CS		@ ((unsigned)&T1CON*8)+1;
static                bit	T1SYNC		@ ((unsigned)&T1CON*8)+2;
static                bit	T1OSCEN		@ ((unsigned)&T1CON*8)+3;
static                bit	T1CKPS0		@ ((unsigned)&T1CON*8)+4;
static                bit	T1CKPS1		@ ((unsigned)&T1CON*8)+5;
static                bit	TMR1GE		@ ((unsigned)&T1CON*8)+6;
static                bit	T1GINV		@ ((unsigned)&T1CON*8)+7;

#if defined(_16F685) || defined(_16F690)
/* Definitions for T2CON register */
static                bit	T2CKPS0		@ ((unsigned)&T2CON*8)+0;
static                bit	T2CKPS1		@ ((unsigned)&T2CON*8)+1;
static                bit	TMR2ON		@ ((unsigned)&T2CON*8)+2;
static                bit	TOUTPS0		@ ((unsigned)&T2CON*8)+3;
static                bit	TOUTPS1		@ ((unsigned)&T2CON*8)+4;
static                bit	TOUTPS2		@ ((unsigned)&T2CON*8)+5;
static                bit	TOUTPS3		@ ((unsigned)&T2CON*8)+6;
#endif

#if defined(_16F677) || defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for SSPCON register */
static                bit	SSPM0		@ ((unsigned)&SSPCON*8)+0;
static                bit	SSPM1		@ ((unsigned)&SSPCON*8)+1;
static                bit	SSPM2		@ ((unsigned)&SSPCON*8)+2;
static                bit	SSPM3		@ ((unsigned)&SSPCON*8)+3;
static                bit	CKP		@ ((unsigned)&SSPCON*8)+4;
static                bit	SSPEN		@ ((unsigned)&SSPCON*8)+5;
static volatile       bit	SSPOV		@ ((unsigned)&SSPCON*8)+6;
static volatile       bit	WCOL		@ ((unsigned)&SSPCON*8)+7;
#endif

#if defined(_16F685) || defined(_16F690)
/* Definitions for CCP1CON register */
static                bit	CCP1M0		@ ((unsigned)&CCP1CON*8)+0;
static                bit	CCP1M1		@ ((unsigned)&CCP1CON*8)+1;
static                bit	CCP1M2		@ ((unsigned)&CCP1CON*8)+2;
static                bit	CCP1M3		@ ((unsigned)&CCP1CON*8)+3;
static                bit	DC1B0		@ ((unsigned)&CCP1CON*8)+4;
static                bit	DC1B1		@ ((unsigned)&CCP1CON*8)+5;
static                bit	P1M0		@ ((unsigned)&CCP1CON*8)+6;
static                bit	P1M1		@ ((unsigned)&CCP1CON*8)+7;
#endif

#if defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for RCSTA register */
static volatile       bit	RX9D		@ ((unsigned)&RCSTA*8)+0;
static volatile       bit	OERR		@ ((unsigned)&RCSTA*8)+1;
static volatile       bit	FERR		@ ((unsigned)&RCSTA*8)+2;
static                bit	ADDEN		@ ((unsigned)&RCSTA*8)+3;
static                bit	CREN		@ ((unsigned)&RCSTA*8)+4;
static                bit	SREN		@ ((unsigned)&RCSTA*8)+5;
static                bit	RX9		@ ((unsigned)&RCSTA*8)+6;
static                bit	SPEN		@ ((unsigned)&RCSTA*8)+7;
#endif

#if defined(_16F685) || defined(_16F690)
/* Definitions for PWM1CON register */
static volatile       bit	PDC0		@ ((unsigned)&PWM1CON*8)+0;
static volatile       bit	PDC1		@ ((unsigned)&PWM1CON*8)+1;
static volatile       bit	PDC2		@ ((unsigned)&PWM1CON*8)+2;
static volatile       bit	PDC3		@ ((unsigned)&PWM1CON*8)+3;
static volatile       bit	PDC4		@ ((unsigned)&PWM1CON*8)+4;
static volatile       bit	PDC5		@ ((unsigned)&PWM1CON*8)+5;
static volatile       bit	PDC6		@ ((unsigned)&PWM1CON*8)+6;
static volatile       bit	PRSEN		@ ((unsigned)&PWM1CON*8)+7;

/* Definitions for ECCPAS register */
static                bit	PSSBD0		@ ((unsigned)&ECCPAS*8)+0;
static                bit	PSSBD1		@ ((unsigned)&ECCPAS*8)+1;
static                bit	PSSAC0		@ ((unsigned)&ECCPAS*8)+2;
static                bit	PSSAC1		@ ((unsigned)&ECCPAS*8)+3;
static                bit	ECCPAS0		@ ((unsigned)&ECCPAS*8)+4;
static                bit	ECCPAS1		@ ((unsigned)&ECCPAS*8)+5;
static                bit	ECCPAS2		@ ((unsigned)&ECCPAS*8)+6;
static volatile       bit	ECCPASE		@ ((unsigned)&ECCPAS*8)+7;
#endif

#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for ADCON0 register */
static                bit	ADON		@ ((unsigned)&ADCON0*8)+0;
static volatile       bit	GODONE		@ ((unsigned)&ADCON0*8)+1;
static                bit	CHS0		@ ((unsigned)&ADCON0*8)+2;
static                bit	CHS1		@ ((unsigned)&ADCON0*8)+3;
static                bit	CHS2		@ ((unsigned)&ADCON0*8)+4;
static                bit	CHS3		@ ((unsigned)&ADCON0*8)+5;
static                bit	VCFG		@ ((unsigned)&ADCON0*8)+6;
static                bit	ADFM		@ ((unsigned)&ADCON0*8)+7;
#endif

/* Definitions for OPTION register */
static          bank1 bit	PS0		@ ((unsigned)&OPTION*8)+0;
static          bank1 bit	PS1		@ ((unsigned)&OPTION*8)+1;
static          bank1 bit	PS2		@ ((unsigned)&OPTION*8)+2;
static          bank1 bit	PSA		@ ((unsigned)&OPTION*8)+3;
static          bank1 bit	T0SE		@ ((unsigned)&OPTION*8)+4;
static          bank1 bit	T0CS		@ ((unsigned)&OPTION*8)+5;
static          bank1 bit	INTEDG		@ ((unsigned)&OPTION*8)+6;
static          bank1 bit	RABPU		@ ((unsigned)&OPTION*8)+7;
// Alternate definition for backward compatibility
static          bank1 bit	RBPU		@ ((unsigned)&OPTION*8)+7;

/* Definitions for TRISA register */
static          bank1 bit	TRISA0		@ ((unsigned)&TRISA*8)+0;
static          bank1 bit	TRISA1		@ ((unsigned)&TRISA*8)+1;
static          bank1 bit	TRISA2		@ ((unsigned)&TRISA*8)+2;
static          bank1 bit	TRISA3		@ ((unsigned)&TRISA*8)+3;
static          bank1 bit	TRISA4		@ ((unsigned)&TRISA*8)+4;
static          bank1 bit	TRISA5		@ ((unsigned)&TRISA*8)+5;

/* Definitions for TRISB register */
static volatile bank1 bit	TRISB4		@ ((unsigned)&TRISB*8)+4;
static volatile bank1 bit	TRISB5		@ ((unsigned)&TRISB*8)+5;
static volatile bank1 bit	TRISB6		@ ((unsigned)&TRISB*8)+6;
static volatile bank1 bit	TRISB7		@ ((unsigned)&TRISB*8)+7;

/* Definitions for TRISC register */
static volatile bank1 bit	TRISC0		@ ((unsigned)&TRISC*8)+0;
static volatile bank1 bit	TRISC1		@ ((unsigned)&TRISC*8)+1;
static volatile bank1 bit	TRISC2		@ ((unsigned)&TRISC*8)+2;
static volatile bank1 bit	TRISC3		@ ((unsigned)&TRISC*8)+3;
static volatile bank1 bit	TRISC4		@ ((unsigned)&TRISC*8)+4;
static volatile bank1 bit	TRISC5		@ ((unsigned)&TRISC*8)+5;
static volatile bank1 bit	TRISC6		@ ((unsigned)&TRISC*8)+6;
static volatile bank1 bit	TRISC7		@ ((unsigned)&TRISC*8)+7;

/* Definitions for PIE1 register */
static          bank1 bit	TMR1IE		@ ((unsigned)&PIE1*8)+0;
#if defined(_16F685) || defined(_16F690)
static          bank1 bit	TMR2IE		@ ((unsigned)&PIE1*8)+1;
static          bank1 bit	CCP1IE		@ ((unsigned)&PIE1*8)+2;
#endif
#if defined(_16F677) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static          bank1 bit	SSPIE		@ ((unsigned)&PIE1*8)+3;
#endif
#if defined(_16F687) || defined(_16F689) || defined(_16F690)
static          bank1 bit	TXIE		@ ((unsigned)&PIE1*8)+4;
static          bank1 bit	RCIE		@ ((unsigned)&PIE1*8)+5;
#endif
#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
static          bank1 bit	ADIE		@ ((unsigned)&PIE1*8)+6;
#endif

/* Definitions for PIE2 register */
static          bank1 bit	EEIE		@ ((unsigned)&PIE2*8)+4;
static          bank1 bit	C1IE		@ ((unsigned)&PIE2*8)+5;
static          bank1 bit	C2IE		@ ((unsigned)&PIE2*8)+6;
static          bank1 bit	OSFIE		@ ((unsigned)&PIE2*8)+7;

/* Definitions for PCON register */
static volatile bank1 bit	BOR		@ ((unsigned)&PCON*8)+0;
static volatile bank1 bit	POR		@ ((unsigned)&PCON*8)+1;
static          bank1 bit	SBOREN		@ ((unsigned)&PCON*8)+4;
static          bank1 bit	ULPWUE		@ ((unsigned)&PCON*8)+5;

/* Definitions for OSCCON register */
static          bank1 bit	SCS		@ ((unsigned)&OSCCON*8)+0;
static volatile bank1 bit	LTS		@ ((unsigned)&OSCCON*8)+1;
static volatile bank1 bit	HTS		@ ((unsigned)&OSCCON*8)+2;
static volatile bank1 bit	OSTS		@ ((unsigned)&OSCCON*8)+3;
static          bank1 bit	IRCF0		@ ((unsigned)&OSCCON*8)+4;
static          bank1 bit	IRCF1		@ ((unsigned)&OSCCON*8)+5;
static          bank1 bit	IRCF2		@ ((unsigned)&OSCCON*8)+6;

/* Definitions for OSCTUNE register */
static          bank1 bit	TUN0		@ ((unsigned)&OSCTUNE*8)+0;
static          bank1 bit	TUN1		@ ((unsigned)&OSCTUNE*8)+1;
static          bank1 bit	TUN2		@ ((unsigned)&OSCTUNE*8)+2;
static          bank1 bit	TUN3		@ ((unsigned)&OSCTUNE*8)+3;
static          bank1 bit	TUN4		@ ((unsigned)&OSCTUNE*8)+4;

#if defined(_16F677) || defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for SSPSTAT register */
static volatile bank1 bit	BF		@ ((unsigned)&SSPSTAT*8)+0;
static volatile bank1 bit	UA		@ ((unsigned)&SSPSTAT*8)+1;
static volatile bank1 bit	RW		@ ((unsigned)&SSPSTAT*8)+2;
static volatile bank1 bit	START		@ ((unsigned)&SSPSTAT*8)+3;
static volatile bank1 bit	STOP		@ ((unsigned)&SSPSTAT*8)+4;
static volatile bank1 bit	DA		@ ((unsigned)&SSPSTAT*8)+5;
static          bank1 bit	CKE		@ ((unsigned)&SSPSTAT*8)+6;
static          bank1 bit	SMP		@ ((unsigned)&SSPSTAT*8)+7;
#endif

/* Definitions for WPUA register */
static          bank1 bit	WPUA0		@ ((unsigned)&WPUA*8)+0;
static          bank1 bit	WPUA1		@ ((unsigned)&WPUA*8)+1;
static          bank1 bit	WPUA2		@ ((unsigned)&WPUA*8)+2;
static          bank1 bit	WPUA4		@ ((unsigned)&WPUA*8)+4;
static          bank1 bit	WPUA5		@ ((unsigned)&WPUA*8)+5;

/* Definitions for IOCA register */
static          bank1 bit	IOCA0		@ ((unsigned)&IOCA*8)+0;
static          bank1 bit	IOCA1		@ ((unsigned)&IOCA*8)+1;
static          bank1 bit	IOCA2		@ ((unsigned)&IOCA*8)+2;
static          bank1 bit	IOCA3		@ ((unsigned)&IOCA*8)+3;
static          bank1 bit	IOCA4		@ ((unsigned)&IOCA*8)+4;
static          bank1 bit	IOCA5		@ ((unsigned)&IOCA*8)+5;

/* Definitions for WDTCON register */
static          bank1 bit	SWDTEN		@ ((unsigned)&WDTCON*8)+0;
static          bank1 bit	WDTPS0		@ ((unsigned)&WDTCON*8)+1;
static          bank1 bit	WDTPS1		@ ((unsigned)&WDTCON*8)+2;
static          bank1 bit	WDTPS2		@ ((unsigned)&WDTCON*8)+3;
static          bank1 bit	WDTPS3		@ ((unsigned)&WDTCON*8)+4;

#if defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for TXSTA register */
static volatile bank1 bit	TX9D		@ ((unsigned)&TXSTA*8)+0;
static volatile bank1 bit	TRMT		@ ((unsigned)&TXSTA*8)+1;
static          bank1 bit	BRGH		@ ((unsigned)&TXSTA*8)+2;
static          bank1 bit	SENDB		@ ((unsigned)&TXSTA*8)+3;
static          bank1 bit	SYNC		@ ((unsigned)&TXSTA*8)+4;
static          bank1 bit	TXEN		@ ((unsigned)&TXSTA*8)+5;
static          bank1 bit	TX9		@ ((unsigned)&TXSTA*8)+6;
static          bank1 bit	CSRC		@ ((unsigned)&TXSTA*8)+7;

/* Definitions for SPBRG register */
static          bank1 bit	BRG0		@ ((unsigned)&SPBRG*8)+0;
static          bank1 bit	BRG1		@ ((unsigned)&SPBRG*8)+1;
static          bank1 bit	BRG2		@ ((unsigned)&SPBRG*8)+2;
static          bank1 bit	BRG3		@ ((unsigned)&SPBRG*8)+3;
static          bank1 bit	BRG4		@ ((unsigned)&SPBRG*8)+4;
static          bank1 bit	BRG5		@ ((unsigned)&SPBRG*8)+5;
static          bank1 bit	BRG6		@ ((unsigned)&SPBRG*8)+6;
static          bank1 bit	BRG7		@ ((unsigned)&SPBRG*8)+7;

/* Definitions for SPBRGH register */
static          bank1 bit	BRG8		@ ((unsigned)&SPBRGH*8)+0;
static          bank1 bit	BRG9		@ ((unsigned)&SPBRGH*8)+1;
static          bank1 bit	BRG10		@ ((unsigned)&SPBRGH*8)+2;
static          bank1 bit	BRG11		@ ((unsigned)&SPBRGH*8)+3;
static          bank1 bit	BRG12		@ ((unsigned)&SPBRGH*8)+4;
static          bank1 bit	BRG13		@ ((unsigned)&SPBRGH*8)+5;
static          bank1 bit	BRG14		@ ((unsigned)&SPBRGH*8)+6;
static          bank1 bit	BRG15		@ ((unsigned)&SPBRGH*8)+7;

/* Definitions for BAUDCTL register */
static volatile bank1 bit	ABDEN		@ ((unsigned)&BAUDCTL*8)+0;
static volatile bank1 bit	WUE		@ ((unsigned)&BAUDCTL*8)+1;
static          bank1 bit	BRG16		@ ((unsigned)&BAUDCTL*8)+3;
static volatile bank1 bit	SCKP		@ ((unsigned)&BAUDCTL*8)+4;
static volatile bank1 bit	RCIDL		@ ((unsigned)&BAUDCTL*8)+6;
static volatile bank1 bit	ABDOVF		@ ((unsigned)&BAUDCTL*8)+7;
#endif

#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for ADCON1 register */
static          bank1 bit	ADCS0		@ ((unsigned)&ADCON1*8)+4;
static          bank1 bit	ADCS1		@ ((unsigned)&ADCON1*8)+5;
static          bank1 bit	ADCS2		@ ((unsigned)&ADCON1*8)+6;
#endif

/* Definitions for WPUB register */
static          bank2 bit	WPUB4		@ ((unsigned)&WPUB*8)+4;
static          bank2 bit	WPUB5		@ ((unsigned)&WPUB*8)+5;
static          bank2 bit	WPUB6		@ ((unsigned)&WPUB*8)+6;
static          bank2 bit	WPUB7		@ ((unsigned)&WPUB*8)+7;

/* Definitions for IOCB register */
static          bank2 bit	IOCB4		@ ((unsigned)&IOCB*8)+4;
static          bank2 bit	IOCB5		@ ((unsigned)&IOCB*8)+5;
static          bank2 bit	IOCB6		@ ((unsigned)&IOCB*8)+6;
static          bank2 bit	IOCB7		@ ((unsigned)&IOCB*8)+7;

/* Definitions for VRCON register */
static          bank2 bit	VR0		@ ((unsigned)&VRCON*8)+0;
static          bank2 bit	VR1		@ ((unsigned)&VRCON*8)+1;
static          bank2 bit	VR2		@ ((unsigned)&VRCON*8)+2;
static          bank2 bit	VR3		@ ((unsigned)&VRCON*8)+3;
static          bank2 bit	VP6EN		@ ((unsigned)&VRCON*8)+4;
static          bank2 bit	VRR		@ ((unsigned)&VRCON*8)+5;
static          bank2 bit	C2VREN		@ ((unsigned)&VRCON*8)+6;
static          bank2 bit	C1VREN		@ ((unsigned)&VRCON*8)+7;

/* Definitions for CM1CON0 register */
static          bank2 bit	C1CH0		@ ((unsigned)&CM1CON0*8)+0;
static          bank2 bit	C1CH1		@ ((unsigned)&CM1CON0*8)+1;
static          bank2 bit	C1R		@ ((unsigned)&CM1CON0*8)+2;
static          bank2 bit	C1POL		@ ((unsigned)&CM1CON0*8)+4;
static          bank2 bit	C1OE		@ ((unsigned)&CM1CON0*8)+5;
static volatile bank2 bit	C1OUT		@ ((unsigned)&CM1CON0*8)+6;
static          bank2 bit	C1ON		@ ((unsigned)&CM1CON0*8)+7;

/* Definitions for CM2CON0 register */
static          bank2 bit	C2CH0		@ ((unsigned)&CM2CON0*8)+0;
static          bank2 bit	C2CH1		@ ((unsigned)&CM2CON0*8)+1;
static          bank2 bit	C2R		@ ((unsigned)&CM2CON0*8)+2;
static          bank2 bit	C2POL		@ ((unsigned)&CM2CON0*8)+4;
static          bank2 bit	C2OE		@ ((unsigned)&CM2CON0*8)+5;
static volatile bank2 bit	C2OUT		@ ((unsigned)&CM2CON0*8)+6;
static          bank2 bit	C2ON		@ ((unsigned)&CM2CON0*8)+7;

/* Definitions for CM2CON1 register */
static          bank2 bit	C2SYNC		@ ((unsigned)&CM2CON1*8)+0;
static          bank2 bit	T1GSS		@ ((unsigned)&CM2CON1*8)+1;
static volatile bank2 bit	MC2OUT		@ ((unsigned)&CM2CON1*8)+6;
static volatile bank2 bit	MC1OUT		@ ((unsigned)&CM2CON1*8)+7;

/* Definitions for ANSEL register */
static          bank2 bit	ANS0		@ ((unsigned)&ANSEL*8)+0;
static          bank2 bit	ANS1		@ ((unsigned)&ANSEL*8)+1;
static          bank2 bit	ANS2		@ ((unsigned)&ANSEL*8)+2;
static          bank2 bit	ANS3		@ ((unsigned)&ANSEL*8)+3;
static          bank2 bit	ANS4		@ ((unsigned)&ANSEL*8)+4;
static          bank2 bit	ANS5		@ ((unsigned)&ANSEL*8)+5;
static          bank2 bit	ANS6		@ ((unsigned)&ANSEL*8)+6;
static          bank2 bit	ANS7		@ ((unsigned)&ANSEL*8)+7;

#if defined(_16F677) || defined(_16F685) || defined(_16F687) || defined(_16F689) || defined(_16F690)
/* Definitions for ANSELH register */
static          bank2 bit	ANS8		@ ((unsigned)&ANSELH*8)+0;
static          bank2 bit	ANS9		@ ((unsigned)&ANSELH*8)+1;
static          bank2 bit	ANS10		@ ((unsigned)&ANSELH*8)+2;
static          bank2 bit	ANS11		@ ((unsigned)&ANSELH*8)+3;
#endif

/* Definitions for EECON1 register */
static volatile bank3 bit	RD		@ ((unsigned)&EECON1*8)+0;
static volatile bank3 bit	WR		@ ((unsigned)&EECON1*8)+1;
static          bank3 bit	WREN		@ ((unsigned)&EECON1*8)+2;
static volatile bank3 bit	WRERR		@ ((unsigned)&EECON1*8)+3;
#if defined(_16F685) || defined(_16F690)
static          bank3 bit	EEPGD		@ ((unsigned)&EECON1*8)+7;

/* Definitions for PSTRCON register */
static          bank3 bit	STRA		@ ((unsigned)&PSTRCON*8)+0;
static          bank3 bit	STRB		@ ((unsigned)&PSTRCON*8)+1;
static          bank3 bit	STRC		@ ((unsigned)&PSTRCON*8)+2;
static          bank3 bit	STRD		@ ((unsigned)&PSTRCON*8)+3;
static          bank3 bit	STRSYNC		@ ((unsigned)&PSTRCON*8)+4;
#endif

/* Definitions for SRCON register */
static volatile bank3 bit	PULSR		@ ((unsigned)&SRCON*8)+2;
static volatile bank3 bit	PULSS		@ ((unsigned)&SRCON*8)+3;
static          bank3 bit	C2REN		@ ((unsigned)&SRCON*8)+4;
static          bank3 bit	C1SEN		@ ((unsigned)&SRCON*8)+5;
static          bank3 bit	SR0		@ ((unsigned)&SRCON*8)+6;
static          bank3 bit	SR1		@ ((unsigned)&SRCON*8)+7;

// Configuration Mask Definitions
#define CONFIG_ADDR	0x2007
// Oscillator 
#define EXTCLK		0x3FFF	// External RC Clockout
#define EXTIO		0x3FFE	// External RC No Clock
#define INTCLK		0x3FFD	// Internal RC Clockout
#define INTIO		0x3FFC	// Internal RC No Clock
#define EC		0x3FFB	// EC
#define HS		0x3FFA	// HS
#define XT		0x3FF9	// XT
#define LP		0x3FF8	// LP
// Watchdog Timer 
#define WDTEN		0x3FFF	// On
#define WDTDIS		0x3FF7	// Off
// Power Up Timer 
#define PWRTDIS		0x3FFF	// Off
#define PWRTEN		0x3FEF	// On
// Master Clear Enable 
#define MCLREN		0x3FFF	// MCLR function is enabled
#define MCLRDIS		0x3FDF	// MCLR functions as IO
// Code Protect 
#define UNPROTECT	0x3FFF	// Code is not protected
#define CP		0x3FBF	// Code is protected
// Data EE Read Protect 
#define UNPROTECT	0x3FFF	// Do not read protect EEPROM data
#define CPD		0x3F7F	// Read protect EEPROM data
// Brown Out Detect 
#define BORDIS		0x3CFF	// BOD and SBOREN disabled
#define SWBOREN		0x3DFF	// SBOREN controls BOR function (Software control)
#define BORXSLP		0x3EFF	// BOD enabled in run, disabled in sleep, SBOREN disabled
#define BOREN		0x3FFF	// BOD Enabled, SBOREN Disabled
// Internal External Switch Over Mode 
#define IESOEN		0x3FFF	// Enabled
#define IESODIS		0x3BFF	// Disabled
// Monitor Clock Fail-safe 
#define FCMEN		0x3FFF	// Enabled
#define FCMDIS		0x37FF	// Disabled

#endif
