#byte MCU_INDF = 0x000
#byte MCU_TMR0 = 0x001
#byte MCU_PCL = 0x002
#byte MCU_STATUS = 0x003
#bit    MCU_C = MCU_STATUS.0
#bit    MCU_DC = MCU_STATUS.1
#bit    MCU_Z = MCU_STATUS.2
#bit    MCU_PD = MCU_STATUS.3
#bit    MCU_TO = MCU_STATUS.4
#bit    MCU_RP0 = MCU_STATUS.5
#bit    MCU_RP1 = MCU_STATUS.6
#bit    MCU_IRP = MCU_STATUS.7
#byte MCU_FSR = 0x004
#bit    MCU_C1IP = MCU_FSR.3
#bit    MCU_C1IP = MCU_FSR.5
#byte MCU_PORTA = 0x005
#bit    MCU_BTOEE = MCU_PORTA.0
#bit    MCU_SEG2PHTS = MCU_PORTA.1
#bit    MCU_RXB0D77 = MCU_PORTA.2
#bit    MCU_RXB0D76 = MCU_PORTA.3
#bit    MCU_TXB0D65 = MCU_PORTA.4
#bit    MCU_B3D04 = MCU_PORTA.5
#byte MCU_PORTB = 0x006
#bit    MCU_SLRD = MCU_PORTB.4
#bit    MCU_SLRE = MCU_PORTB.5
#bit    MCU_RXB0D74 = MCU_PORTB.6
#bit    MCU_RXB0D75 = MCU_PORTB.7
#byte MCU_PORTC = 0x007
#bit    MCU_RXB0D02 = MCU_PORTC.0
#bit    MCU_RXB0D01 = MCU_PORTC.1
#bit    MCU_RXB0D00 = MCU_PORTC.2
#bit    MCU_RXB0D37 = MCU_PORTC.3
#bit    MCU_RXB0D70 = MCU_PORTC.4
#bit    MCU_RXB0D71 = MCU_PORTC.5
#bit    MCU_RXB0D72 = MCU_PORTC.6
#bit    MCU_RXB0D73 = MCU_PORTC.7
#byte MCU_PCLATH = 0x00A
#byte MCU_INTCON = 0x00B
#bit    MCU_RABIF = MCU_INTCON.0
#bit    MCU_INTF = MCU_INTCON.1
#bit    MCU_T0IF = MCU_INTCON.2
#bit    MCU_RABIE = MCU_INTCON.3
#bit    MCU_INTE = MCU_INTCON.4
#bit    MCU_T0IE = MCU_INTCON.5
#bit    MCU_PEIE = MCU_INTCON.6
#bit    MCU_GIE = MCU_INTCON.7
#byte MCU_PIR1 = 0x00C
#bit    MCU_TMR1IF = MCU_PIR1.0
#bit    MCU_C1IP = MCU_PIR1.1
#bit    MCU_C1IP = MCU_PIR1.2
#bit    MCU_SSPIF = MCU_PIR1.3
#bit    MCU_ADIF = MCU_PIR1.6
#byte MCU_PIR2 = 0x00D
#bit    MCU_EEIF = MCU_PIR2.4
#bit    MCU_C1IF = MCU_PIR2.5
#bit    MCU_C2IF = MCU_PIR2.6
#bit    MCU_OSFIF = MCU_PIR2.7
int16 MCU_TMR1;
#locate MCU_TMR1 = 0x00E
#byte MCU_TMR1H = 0x00F
#byte MCU_T1CON = 0x010
#bit    MCU_TMR1ON = MCU_T1CON.0
#bit    MCU_TMR1CS = MCU_T1CON.1
#bit    MCU_T1SYNC = MCU_T1CON.2
#bit    MCU_T1OSCEN = MCU_T1CON.3
#bit    MCU_T1CKPS0 = MCU_T1CON.4
#bit    MCU_T1CKPS1 = MCU_T1CON.5
#bit    MCU_TMR1GE = MCU_T1CON.6
#bit    MCU_T1GINV = MCU_T1CON.7
#byte MCU_SSPBUF = 0x013
#byte MCU_SSPCON = 0x014
#bit    MCU_SSPM0 = MCU_SSPCON.0
#bit    MCU_SSPM1 = MCU_SSPCON.1
#bit    MCU_SSPM2 = MCU_SSPCON.2
#bit    MCU_SSPM3 = MCU_SSPCON.3
#bit    MCU_CKP = MCU_SSPCON.4
#bit    MCU_SSPEN = MCU_SSPCON.5
#bit    MCU_SSPOV = MCU_SSPCON.6
#bit    MCU_WCOL = MCU_SSPCON.7
#byte MCU_ADRESH = 0x01E
#byte MCU_ADCON0 = 0x01F
#bit    MCU_ADON = MCU_ADCON0.0
#bit    MCU_GO/DONE = MCU_ADCON0.1
#bit    MCU_CHS0 = MCU_ADCON0.2
#bit    MCU_CHS1 = MCU_ADCON0.3
#bit    MCU_CHS2 = MCU_ADCON0.4
#bit    MCU_CHS3 = MCU_ADCON0.5
#bit    MCU_VCFG = MCU_ADCON0.6
#bit    MCU_ADFM = MCU_ADCON0.7
#byte MCU_INDF = 0x080
#byte MCU_OPTION_REG = 0x081
#bit    MCU_PS0 = MCU_OPTION_REG.0
#bit    MCU_PS1 = MCU_OPTION_REG.1
#bit    MCU_PS2 = MCU_OPTION_REG.2
#bit    MCU_PSA = MCU_OPTION_REG.3
#bit    MCU_T0SE = MCU_OPTION_REG.4
#bit    MCU_T0CS = MCU_OPTION_REG.5
#bit    MCU_INTEDG = MCU_OPTION_REG.6
#bit    MCU_RABPU = MCU_OPTION_REG.7
#byte MCU_PCL = 0x082
#byte MCU_STATUS = 0x083
#bit    MCU_C = MCU_STATUS.0
#bit    MCU_DC = MCU_STATUS.1
#bit    MCU_Z = MCU_STATUS.2
#bit    MCU_PD = MCU_STATUS.3
#bit    MCU_TO = MCU_STATUS.4
#bit    MCU_RP0 = MCU_STATUS.5
#bit    MCU_RP1 = MCU_STATUS.6
#bit    MCU_IRP = MCU_STATUS.7
#byte MCU_FSR = 0x084
#bit    MCU_C1IP = MCU_FSR.3
#bit    MCU_C1IP = MCU_FSR.5
#byte MCU_TRISA = 0x085
#bit    MCU_TXB0D66 = MCU_TRISA.0
#bit    MCU_B3D03 = MCU_TRISA.1
#bit    MCU_TXB0D70 = MCU_TRISA.2
#bit    MCU_TXB0D71 = MCU_TRISA.3
#bit    MCU_TXB0D72 = MCU_TRISA.4
#bit    MCU_TXB0D62 = MCU_TRISA.5
#byte MCU_TRISB = 0x086
#bit    MCU_TXB0D77 = MCU_TRISB.4
#bit    MCU_B3D00 = MCU_TRISB.5
#bit    MCU_B3D01 = MCU_TRISB.6
#bit    MCU_B3D02 = MCU_TRISB.7
#byte MCU_TRISC = 0x087
#bit    MCU_B3D05 = MCU_TRISC.0
#bit    MCU_B3D06 = MCU_TRISC.1
#bit    MCU_TXB0D27 = MCU_TRISC.2
#bit    MCU_TXB0D26 = MCU_TRISC.3
#bit    MCU_TXB0D25 = MCU_TRISC.4
#bit    MCU_TXB0D24 = MCU_TRISC.5
#bit    MCU_TXB0D21 = MCU_TRISC.6
#bit    MCU_TXB0D20 = MCU_TRISC.7
#byte MCU_PCLATH = 0x08A
#byte MCU_INTCON = 0x08B
#bit    MCU_RABIF = MCU_INTCON.0
#bit    MCU_INTF = MCU_INTCON.1
#bit    MCU_T0IF = MCU_INTCON.2
#bit    MCU_RABIE = MCU_INTCON.3
#bit    MCU_INTE = MCU_INTCON.4
#bit    MCU_T0IE = MCU_INTCON.5
#bit    MCU_PEIE = MCU_INTCON.6
#bit    MCU_GIE = MCU_INTCON.7
#byte MCU_PIE1 = 0x08C
#bit    MCU_TMR1IE = MCU_PIE1.0
#bit    MCU_TMR2IE = MCU_PIE1.1
#bit    MCU_CCP1IE = MCU_PIE1.2
#bit    MCU_SSPIE = MCU_PIE1.3
#bit    MCU_ADIE = MCU_PIE1.6
#byte MCU_PIE2 = 0x08D
#bit    MCU_EEIE = MCU_PIE2.4
#bit    MCU_C1IE = MCU_PIE2.5
#bit    MCU_C2IE = MCU_PIE2.6
#bit    MCU_OSFIE = MCU_PIE2.7
#byte MCU_PCON = 0x08E
#bit    MCU_BOR = MCU_PCON.0
#bit    MCU_POR = MCU_PCON.1
#bit    MCU_SBOREN = MCU_PCON.4
#bit    MCU_ULPWUE = MCU_PCON.5
#byte MCU_OSCCON = 0x08F
#bit    MCU_SCS = MCU_OSCCON.0
#bit    MCU_LTS = MCU_OSCCON.1
#bit    MCU_HTS = MCU_OSCCON.2
#bit    MCU_OSTS = MCU_OSCCON.3
#bit    MCU_IRCF0 = MCU_OSCCON.4
#bit    MCU_IRCF1 = MCU_OSCCON.5
#bit    MCU_IRCF2 = MCU_OSCCON.6
#byte MCU_OSCTUNE = 0x090
#bit    MCU_TUN0 = MCU_OSCTUNE.0
#bit    MCU_TUN1 = MCU_OSCTUNE.1
#bit    MCU_TUN2 = MCU_OSCTUNE.2
#bit    MCU_TUN3 = MCU_OSCTUNE.3
#bit    MCU_TUN4 = MCU_OSCTUNE.4
#byte MCU_SSPADD = 0x093
#byte MCU_SSPSTAT = 0x094
#bit    MCU_BF = MCU_SSPSTAT.0
#bit    MCU_UA = MCU_SSPSTAT.1
#bit    MCU_R/W = MCU_SSPSTAT.2
#bit    MCU_S = MCU_SSPSTAT.3
#bit    MCU_P = MCU_SSPSTAT.4
#bit    MCU_D/A = MCU_SSPSTAT.5
#bit    MCU_CKE = MCU_SSPSTAT.6
#bit    MCU_SMP = MCU_SSPSTAT.7
#byte MCU_WPUA = 0x095
#bit    MCU_WPUA0 = MCU_WPUA.0
#bit    MCU_WPUA1 = MCU_WPUA.1
#bit    MCU_WPUA2 = MCU_WPUA.2
#bit    MCU_WPUA4 = MCU_WPUA.4
#bit    MCU_WPUA5 = MCU_WPUA.5
#byte MCU_IOCA = 0x096
#bit    MCU_IOCA0 = MCU_IOCA.0
#bit    MCU_IOCA1 = MCU_IOCA.1
#bit    MCU_IOCA2 = MCU_IOCA.2
#bit    MCU_IOCA3 = MCU_IOCA.3
#bit    MCU_IOCA4 = MCU_IOCA.4
#bit    MCU_IOCA5 = MCU_IOCA.5
#byte MCU_WDTCON = 0x097
#bit    MCU_SWDTEN = MCU_WDTCON.0
#bit    MCU_WDTPS0 = MCU_WDTCON.1
#bit    MCU_WDTPS1 = MCU_WDTCON.2
#bit    MCU_WDTPS2 = MCU_WDTCON.3
#bit    MCU_WDTPS3 = MCU_WDTCON.4
#byte MCU_ADRESL = 0x09E
#byte MCU_ADCON1 = 0x09F
#bit    MCU_ADCS0 = MCU_ADCON1.4
#bit    MCU_ADCS1 = MCU_ADCON1.5
#bit    MCU_ADCS2 = MCU_ADCON1.6
#byte MCU_INDF = 0x100
#byte MCU_TMR0 = 0x101
#byte MCU_PCL = 0x102
#byte MCU_STATUS = 0x103
#bit    MCU_C = MCU_STATUS.0
#bit    MCU_DC = MCU_STATUS.1
#bit    MCU_Z = MCU_STATUS.2
#bit    MCU_PD = MCU_STATUS.3
#bit    MCU_TO = MCU_STATUS.4
#bit    MCU_RP0 = MCU_STATUS.5
#bit    MCU_RP1 = MCU_STATUS.6
#bit    MCU_IRP = MCU_STATUS.7
#byte MCU_FSR = 0x104
#bit    MCU_C1IP = MCU_FSR.3
#bit    MCU_C1IP = MCU_FSR.5
#byte MCU_PORTA = 0x105
#bit    MCU_BTOEE = MCU_PORTA.0
#bit    MCU_SEG2PHTS = MCU_PORTA.1
#bit    MCU_RXB0D77 = MCU_PORTA.2
#bit    MCU_RXB0D76 = MCU_PORTA.3
#bit    MCU_TXB0D65 = MCU_PORTA.4
#bit    MCU_B3D04 = MCU_PORTA.5
#byte MCU_PORTB = 0x106
#bit    MCU_SLRD = MCU_PORTB.4
#bit    MCU_SLRE = MCU_PORTB.5
#bit    MCU_RXB0D74 = MCU_PORTB.6
#bit    MCU_RXB0D75 = MCU_PORTB.7
#byte MCU_PORTC = 0x107
#bit    MCU_RXB0D02 = MCU_PORTC.0
#bit    MCU_RXB0D01 = MCU_PORTC.1
#bit    MCU_RXB0D00 = MCU_PORTC.2
#bit    MCU_RXB0D37 = MCU_PORTC.3
#bit    MCU_RXB0D70 = MCU_PORTC.4
#bit    MCU_RXB0D71 = MCU_PORTC.5
#bit    MCU_RXB0D72 = MCU_PORTC.6
#bit    MCU_RXB0D73 = MCU_PORTC.7
#byte MCU_PCLATH = 0x10A
#byte MCU_INTCON = 0x10B
#bit    MCU_RABIF = MCU_INTCON.0
#bit    MCU_INTF = MCU_INTCON.1
#bit    MCU_T0IF = MCU_INTCON.2
#bit    MCU_RABIE = MCU_INTCON.3
#bit    MCU_INTE = MCU_INTCON.4
#bit    MCU_T0IE = MCU_INTCON.5
#bit    MCU_PEIE = MCU_INTCON.6
#bit    MCU_GIE = MCU_INTCON.7
#byte MCU_EEDAT = 0x10C
#bit    MCU_EEDAT0 = MCU_EEDAT.0
#bit    MCU_EEDAT1 = MCU_EEDAT.1
#bit    MCU_EEDAT2 = MCU_EEDAT.2
#bit    MCU_EEDAT3 = MCU_EEDAT.3
#bit    MCU_EEDAT4 = MCU_EEDAT.4
#bit    MCU_EEDAT5 = MCU_EEDAT.5
#bit    MCU_EEDAT6 = MCU_EEDAT.6
#bit    MCU_EEDAT7 = MCU_EEDAT.7
#byte MCU_EEADR = 0x10D
#bit    MCU_EEADR0 = MCU_EEADR.0
#bit    MCU_EEADR1 = MCU_EEADR.1
#bit    MCU_EEADR2 = MCU_EEADR.2
#bit    MCU_EEADR3 = MCU_EEADR.3
#bit    MCU_EEADR4 = MCU_EEADR.4
#bit    MCU_EEADR5 = MCU_EEADR.5
#bit    MCU_EEADR6 = MCU_EEADR.6
#bit    MCU_EEADR7 = MCU_EEADR.7
#byte MCU_WPUB = 0x115
#bit    MCU_WPUB4 = MCU_WPUB.4
#bit    MCU_WPUB5 = MCU_WPUB.5
#bit    MCU_WPUB6 = MCU_WPUB.6
#bit    MCU_WPUB7 = MCU_WPUB.7
#byte MCU_IOCB = 0x116
#bit    MCU_IOCB4 = MCU_IOCB.4
#bit    MCU_IOCB5 = MCU_IOCB.5
#bit    MCU_IOCB6 = MCU_IOCB.6
#bit    MCU_IOCB7 = MCU_IOCB.7
#byte MCU_VRCON = 0x118
#bit    MCU_VR0 = MCU_VRCON.0
#bit    MCU_VR1 = MCU_VRCON.1
#bit    MCU_VR2 = MCU_VRCON.2
#bit    MCU_VR3 = MCU_VRCON.3
#bit    MCU_VP6EN = MCU_VRCON.4
#bit    MCU_VRR = MCU_VRCON.5
#bit    MCU_C2VREN = MCU_VRCON.6
#bit    MCU_C1VREN = MCU_VRCON.7
#byte MCU_CM1CON0 = 0x119
#bit    MCU_C1CH0 = MCU_CM1CON0.0
#bit    MCU_C1CH1 = MCU_CM1CON0.1
#bit    MCU_C1R = MCU_CM1CON0.2
#bit    MCU_C1POL = MCU_CM1CON0.4
#bit    MCU_C1OE = MCU_CM1CON0.5
#bit    MCU_C1OUT = MCU_CM1CON0.6
#bit    MCU_C1ON = MCU_CM1CON0.7
#byte MCU_CM2CON0 = 0x11A
#bit    MCU_C2CH0 = MCU_CM2CON0.0
#bit    MCU_C2CH1 = MCU_CM2CON0.1
#bit    MCU_C2R = MCU_CM2CON0.2
#bit    MCU_C2POL = MCU_CM2CON0.4
#bit    MCU_C2OE = MCU_CM2CON0.5
#bit    MCU_C2OUT = MCU_CM2CON0.6
#bit    MCU_C2ON = MCU_CM2CON0.7
#byte MCU_CM2CON1 = 0x11B
#bit    MCU_C2SYNC = MCU_CM2CON1.0
#bit    MCU_T1GSS = MCU_CM2CON1.1
#bit    MCU_MC2OUT = MCU_CM2CON1.6
#bit    MCU_MC1OUT = MCU_CM2CON1.7
#byte MCU_ANSEL = 0x11E
#bit    MCU_ANS0 = MCU_ANSEL.0
#bit    MCU_ANS1 = MCU_ANSEL.1
#bit    MCU_ANS2 = MCU_ANSEL.2
#bit    MCU_ANS3 = MCU_ANSEL.3
#bit    MCU_ANS4 = MCU_ANSEL.4
#bit    MCU_ANS5 = MCU_ANSEL.5
#bit    MCU_ANS6 = MCU_ANSEL.6
#bit    MCU_ANS7 = MCU_ANSEL.7
#byte MCU_ANSELH = 0x11F
#bit    MCU_ANS8 = MCU_ANSELH.0
#bit    MCU_ANS9 = MCU_ANSELH.1
#bit    MCU_ANS10 = MCU_ANSELH.2
#bit    MCU_ANS11 = MCU_ANSELH.3
#byte MCU_INDF = 0x180
#byte MCU_OPTION_REG = 0x181
#bit    MCU_PS0 = MCU_OPTION_REG.0
#bit    MCU_PS1 = MCU_OPTION_REG.1
#bit    MCU_PS2 = MCU_OPTION_REG.2
#bit    MCU_PSA = MCU_OPTION_REG.3
#bit    MCU_T0SE = MCU_OPTION_REG.4
#bit    MCU_T0CS = MCU_OPTION_REG.5
#bit    MCU_INTEDG = MCU_OPTION_REG.6
#bit    MCU_RABPU = MCU_OPTION_REG.7
#byte MCU_PCL = 0x182
#byte MCU_STATUS = 0x183
#bit    MCU_C = MCU_STATUS.0
#bit    MCU_DC = MCU_STATUS.1
#bit    MCU_Z = MCU_STATUS.2
#bit    MCU_PD = MCU_STATUS.3
#bit    MCU_TO = MCU_STATUS.4
#bit    MCU_RP0 = MCU_STATUS.5
#bit    MCU_RP1 = MCU_STATUS.6
#bit    MCU_IRP = MCU_STATUS.7
#byte MCU_FSR = 0x184
#bit    MCU_C1IP = MCU_FSR.5
#byte MCU_TRISA = 0x185
#bit    MCU_TXB0D66 = MCU_TRISA.0
#bit    MCU_B3D03 = MCU_TRISA.1
#bit    MCU_TXB0D70 = MCU_TRISA.2
#bit    MCU_TXB0D71 = MCU_TRISA.3
#bit    MCU_TXB0D72 = MCU_TRISA.4
#bit    MCU_TXB0D62 = MCU_TRISA.5
#byte MCU_TRISB = 0x186
#bit    MCU_TXB0D77 = MCU_TRISB.4
#bit    MCU_B3D00 = MCU_TRISB.5
#bit    MCU_B3D01 = MCU_TRISB.6
#bit    MCU_B3D02 = MCU_TRISB.7
#byte MCU_TRISC = 0x187
#bit    MCU_B3D05 = MCU_TRISC.0
#bit    MCU_B3D06 = MCU_TRISC.1
#bit    MCU_TXB0D27 = MCU_TRISC.2
#bit    MCU_TXB0D26 = MCU_TRISC.3
#bit    MCU_TXB0D25 = MCU_TRISC.4
#bit    MCU_TXB0D24 = MCU_TRISC.5
#bit    MCU_TXB0D21 = MCU_TRISC.6
#bit    MCU_TXB0D20 = MCU_TRISC.7
#byte MCU_PCLATH = 0x18A
#byte MCU_INTCON = 0x18B
#bit    MCU_RABIF = MCU_INTCON.0
#bit    MCU_INTF = MCU_INTCON.1
#bit    MCU_T0IF = MCU_INTCON.2
#bit    MCU_RABIE = MCU_INTCON.3
#bit    MCU_INTE = MCU_INTCON.4
#bit    MCU_T0IE = MCU_INTCON.5
#bit    MCU_PEIE = MCU_INTCON.6
#bit    MCU_GIE = MCU_INTCON.7
#byte MCU_EECON1 = 0x18C
#bit    MCU_RD = MCU_EECON1.0
#bit    MCU_WR = MCU_EECON1.1
#bit    MCU_WREN = MCU_EECON1.2
#bit    MCU_WRERR = MCU_EECON1.3
#bit    MCU_C1IP = MCU_EECON1.7
#byte MCU_EECON2 = 0x18D
#byte MCU_STRCON = 0x19E
#bit    MCU_PULSR = MCU_STRCON.2
#bit    MCU_PULSS = MCU_STRCON.3
#bit    MCU_C2REN = MCU_STRCON.4
#bit    MCU_C1SEN = MCU_STRCON.5
#bit    MCU_SR0 = MCU_STRCON.6
#bit    MCU_SR1 = MCU_STRCON.7