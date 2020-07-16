opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F677
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
;COMMON:	_main->_BuzzerBeep
;COMMON:	_BuzzerBeep->_Delay
	FNCALL	_main,_BuzzerBeep
	FNCALL	_main,_Delay
	FNCALL	_BuzzerBeep,_Delay
	FNROOT	_main
	global	_ADCON0
psect	text8,local,class=CODE,delta=2
global __ptext8
__ptext8:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_FSR
_FSR  equ     4
	global	_INDF
_INDF  equ     0
	global	_INTCON
_INTCON  equ     11
	global	_PCL
_PCL  equ     2
	global	_PCLATH
_PCLATH  equ     10
	global	_PIR1
_PIR1  equ     12
	global	_PIR2
_PIR2  equ     13
	global	_PORTA
_PORTA  equ     5
	global	_PORTB
_PORTB  equ     6
	global	_PORTC
_PORTC  equ     7
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_ADFM
_ADFM  equ     255
	global	_ADIF
_ADIF  equ     102
	global	_ADON
_ADON  equ     248
	global	_C1IF
_C1IF  equ     109
	global	_C2IF
_C2IF  equ     110
	global	_CARRY
_CARRY  equ     24
	global	_CHS0
_CHS0  equ     250
	global	_CHS1
_CHS1  equ     251
	global	_CHS2
_CHS2  equ     252
	global	_CHS3
_CHS3  equ     253
	global	_CKP
_CKP  equ     164
	global	_DC
_DC  equ     25
	global	_EEIF
_EEIF  equ     108
	global	_GIE
_GIE  equ     95
	global	_GODONE
_GODONE  equ     249
	global	_INTE
_INTE  equ     92
	global	_INTF
_INTF  equ     89
	global	_IRP
_IRP  equ     31
	global	_OSFIF
_OSFIF  equ     111
	global	_PD
_PD  equ     27
	global	_PEIE
_PEIE  equ     94
	global	_RA0
_RA0  equ     40
	global	_RA1
_RA1  equ     41
	global	_RA2
_RA2  equ     42
	global	_RA3
_RA3  equ     43
	global	_RA4
_RA4  equ     44
	global	_RA5
_RA5  equ     45
	global	_RABIE
_RABIE  equ     91
	global	_RABIF
_RABIF  equ     88
	global	_RB4
_RB4  equ     52
	global	_RB5
_RB5  equ     53
	global	_RB6
_RB6  equ     54
	global	_RB7
_RB7  equ     55
	global	_RBIE
_RBIE  equ     91
	global	_RBIF
_RBIF  equ     88
	global	_RC0
_RC0  equ     56
	global	_RC1
_RC1  equ     57
	global	_RC2
_RC2  equ     58
	global	_RC3
_RC3  equ     59
	global	_RC4
_RC4  equ     60
	global	_RC5
_RC5  equ     61
	global	_RC6
_RC6  equ     62
	global	_RC7
_RC7  equ     63
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_SSPEN
_SSPEN  equ     165
	global	_SSPIF
_SSPIF  equ     99
	global	_SSPM0
_SSPM0  equ     160
	global	_SSPM1
_SSPM1  equ     161
	global	_SSPM2
_SSPM2  equ     162
	global	_SSPM3
_SSPM3  equ     163
	global	_SSPOV
_SSPOV  equ     166
	global	_T0IE
_T0IE  equ     93
	global	_T0IF
_T0IF  equ     90
	global	_T1CKPS0
_T1CKPS0  equ     132
	global	_T1CKPS1
_T1CKPS1  equ     133
	global	_T1GINV
_T1GINV  equ     135
	global	_T1OSCEN
_T1OSCEN  equ     131
	global	_T1SYNC
_T1SYNC  equ     130
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1GE
_TMR1GE  equ     134
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TO
_TO  equ     28
	global	_VCFG
_VCFG  equ     254
	global	_WCOL
_WCOL  equ     167
	global	_ZERO
_ZERO  equ     26
	global	_ADCON1
_ADCON1  equ     159
	global	_ADRESL
_ADRESL  equ     158
	global	_IOCA
_IOCA  equ     150
	global	_OPTION
_OPTION  equ     129
	global	_OSCCON
_OSCCON  equ     143
	global	_OSCTUNE
_OSCTUNE  equ     144
	global	_PCON
_PCON  equ     142
	global	_PIE1
_PIE1  equ     140
	global	_PIE2
_PIE2  equ     141
	global	_SSPADD
_SSPADD  equ     147
	global	_SSPMSK
_SSPMSK  equ     147
	global	_SSPSTAT
_SSPSTAT  equ     148
	global	_TRISA
_TRISA  equ     133
	global	_TRISB
_TRISB  equ     134
	global	_TRISC
_TRISC  equ     135
	global	_WDTCON
_WDTCON  equ     151
	global	_WPUA
_WPUA  equ     149
	global	_ADCS0
_ADCS0  equ     1276
	global	_ADCS1
_ADCS1  equ     1277
	global	_ADCS2
_ADCS2  equ     1278
	global	_ADIE
_ADIE  equ     1126
	global	_BF
_BF  equ     1184
	global	_BOR
_BOR  equ     1136
	global	_C1IE
_C1IE  equ     1133
	global	_C2IE
_C2IE  equ     1134
	global	_CKE
_CKE  equ     1190
	global	_DA
_DA  equ     1189
	global	_EEIE
_EEIE  equ     1132
	global	_HTS
_HTS  equ     1146
	global	_INTEDG
_INTEDG  equ     1038
	global	_IOCA0
_IOCA0  equ     1200
	global	_IOCA1
_IOCA1  equ     1201
	global	_IOCA2
_IOCA2  equ     1202
	global	_IOCA3
_IOCA3  equ     1203
	global	_IOCA4
_IOCA4  equ     1204
	global	_IOCA5
_IOCA5  equ     1205
	global	_IRCF0
_IRCF0  equ     1148
	global	_IRCF1
_IRCF1  equ     1149
	global	_IRCF2
_IRCF2  equ     1150
	global	_LTS
_LTS  equ     1145
	global	_OSFIE
_OSFIE  equ     1135
	global	_OSTS
_OSTS  equ     1147
	global	_POR
_POR  equ     1137
	global	_PS0
_PS0  equ     1032
	global	_PS1
_PS1  equ     1033
	global	_PS2
_PS2  equ     1034
	global	_PSA
_PSA  equ     1035
	global	_RABPU
_RABPU  equ     1039
	global	_RBPU
_RBPU  equ     1039
	global	_RW
_RW  equ     1186
	global	_SBOREN
_SBOREN  equ     1140
	global	_SCS
_SCS  equ     1144
	global	_SMP
_SMP  equ     1191
	global	_SSPIE
_SSPIE  equ     1123
	global	_START
_START  equ     1187
	global	_STOP
_STOP  equ     1188
	global	_SWDTEN
_SWDTEN  equ     1208
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TRISA0
_TRISA0  equ     1064
	global	_TRISA1
_TRISA1  equ     1065
	global	_TRISA2
_TRISA2  equ     1066
	global	_TRISA3
_TRISA3  equ     1067
	global	_TRISA4
_TRISA4  equ     1068
	global	_TRISA5
_TRISA5  equ     1069
	global	_TRISB4
_TRISB4  equ     1076
	global	_TRISB5
_TRISB5  equ     1077
	global	_TRISB6
_TRISB6  equ     1078
	global	_TRISB7
_TRISB7  equ     1079
	global	_TRISC0
_TRISC0  equ     1080
	global	_TRISC1
_TRISC1  equ     1081
	global	_TRISC2
_TRISC2  equ     1082
	global	_TRISC3
_TRISC3  equ     1083
	global	_TRISC4
_TRISC4  equ     1084
	global	_TRISC5
_TRISC5  equ     1085
	global	_TRISC6
_TRISC6  equ     1086
	global	_TRISC7
_TRISC7  equ     1087
	global	_TUN0
_TUN0  equ     1152
	global	_TUN1
_TUN1  equ     1153
	global	_TUN2
_TUN2  equ     1154
	global	_TUN3
_TUN3  equ     1155
	global	_TUN4
_TUN4  equ     1156
	global	_UA
_UA  equ     1185
	global	_ULPWUE
_ULPWUE  equ     1141
	global	_WDTPS0
_WDTPS0  equ     1209
	global	_WDTPS1
_WDTPS1  equ     1210
	global	_WDTPS2
_WDTPS2  equ     1211
	global	_WDTPS3
_WDTPS3  equ     1212
	global	_WPUA0
_WPUA0  equ     1192
	global	_WPUA1
_WPUA1  equ     1193
	global	_WPUA2
_WPUA2  equ     1194
	global	_WPUA4
_WPUA4  equ     1196
	global	_WPUA5
_WPUA5  equ     1197
	global	_ANSEL
_ANSEL  equ     286
	global	_ANSELH
_ANSELH  equ     287
	global	_CM1CON0
_CM1CON0  equ     281
	global	_CM2CON0
_CM2CON0  equ     282
	global	_CM2CON1
_CM2CON1  equ     283
	global	_EEADR
_EEADR  equ     269
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDAT
_EEDAT  equ     268
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATL
_EEDATL  equ     268
	global	_IOCB
_IOCB  equ     278
	global	_VRCON
_VRCON  equ     280
	global	_WPUB
_WPUB  equ     277
	global	_ANS0
_ANS0  equ     2288
	global	_ANS1
_ANS1  equ     2289
	global	_ANS10
_ANS10  equ     2298
	global	_ANS11
_ANS11  equ     2299
	global	_ANS2
_ANS2  equ     2290
	global	_ANS3
_ANS3  equ     2291
	global	_ANS4
_ANS4  equ     2292
	global	_ANS5
_ANS5  equ     2293
	global	_ANS6
_ANS6  equ     2294
	global	_ANS7
_ANS7  equ     2295
	global	_ANS8
_ANS8  equ     2296
	global	_ANS9
_ANS9  equ     2297
	global	_C1CH0
_C1CH0  equ     2248
	global	_C1CH1
_C1CH1  equ     2249
	global	_C1OE
_C1OE  equ     2253
	global	_C1ON
_C1ON  equ     2255
	global	_C1OUT
_C1OUT  equ     2254
	global	_C1POL
_C1POL  equ     2252
	global	_C1R
_C1R  equ     2250
	global	_C1VREN
_C1VREN  equ     2247
	global	_C2CH0
_C2CH0  equ     2256
	global	_C2CH1
_C2CH1  equ     2257
	global	_C2OE
_C2OE  equ     2261
	global	_C2ON
_C2ON  equ     2263
	global	_C2OUT
_C2OUT  equ     2262
	global	_C2POL
_C2POL  equ     2260
	global	_C2R
_C2R  equ     2258
	global	_C2SYNC
_C2SYNC  equ     2264
	global	_C2VREN
_C2VREN  equ     2246
	global	_IOCB4
_IOCB4  equ     2228
	global	_IOCB5
_IOCB5  equ     2229
	global	_IOCB6
_IOCB6  equ     2230
	global	_IOCB7
_IOCB7  equ     2231
	global	_MC1OUT
_MC1OUT  equ     2271
	global	_MC2OUT
_MC2OUT  equ     2270
	global	_T1GSS
_T1GSS  equ     2265
	global	_VP6EN
_VP6EN  equ     2244
	global	_VR0
_VR0  equ     2240
	global	_VR1
_VR1  equ     2241
	global	_VR2
_VR2  equ     2242
	global	_VR3
_VR3  equ     2243
	global	_VRR
_VRR  equ     2245
	global	_WPUB4
_WPUB4  equ     2220
	global	_WPUB5
_WPUB5  equ     2221
	global	_WPUB6
_WPUB6  equ     2222
	global	_WPUB7
_WPUB7  equ     2223
	global	_EECON1
_EECON1  equ     396
	global	_EECON2
_EECON2  equ     397
	global	_SRCON
_SRCON  equ     414
	global	_C1SEN
_C1SEN  equ     3317
	global	_C2REN
_C2REN  equ     3316
	global	_PULSR
_PULSR  equ     3314
	global	_PULSS
_PULSS  equ     3315
	global	_RD
_RD  equ     3168
	global	_SR0
_SR0  equ     3318
	global	_SR1
_SR1  equ     3319
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
	file	"KNL_Motor.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_Delay
??_Delay: ;@ 0x0
	global	Delay@u
Delay@u:	; 2 bytes @ 0x0
	ds	1
	global	??_main
??_main: ;@ 0x1
	ds	1
	global	Delay@v
Delay@v:	; 2 bytes @ 0x2
	ds	2
	global	?_Delay
?_Delay: ;@ 0x4
	global	Delay@val
Delay@val:	; 2 bytes @ 0x4
	ds	2
	global	??_BuzzerBeep
??_BuzzerBeep: ;@ 0x6
	ds	1
	global	BuzzerBeep@val
BuzzerBeep@val:	; 1 bytes @ 0x7
	ds	1
	global	BuzzerBeep@j
BuzzerBeep@j:	; 1 bytes @ 0x8
	ds	1
	global	?_main
?_main: ;@ 0x9
	global	?_BuzzerBeep
?_BuzzerBeep: ;@ 0x9
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9       9
; BANK0           80      0       0
; BANK1           32      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  100   0.00
;         _BuzzerBeep
;              _Delay
;  _BuzzerBeep                                        3    0   60   0.00
;                                    6 COMMO    3
;              _Delay
;    _Delay                                           4    2   40   0.00
;                                    0 COMMO    6
; Estimated maximum call depth 2
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      9       9       1       64.3%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;ABS                  0      0       1       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            20      0       0       6        0.0%
;BANK1               20      0       0       7        0.0%
;DATA                 0      0       1       8        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 22 in file "D:\Amit\E-Projects\PIC Projects\KNL_Motor\KNL_Motor.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_BuzzerBeep
;		_Delay
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\E-Projects\PIC Projects\KNL_Motor\KNL_Motor.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;pic16f685.h: 21: volatile unsigned char INDF @ 0x000;
;pic16f685.h: 22: volatile unsigned char TMR0 @ 0x001;
;pic16f685.h: 23: volatile unsigned char PCL @ 0x002;
;pic16f685.h: 24: volatile unsigned char STATUS @ 0x003;
;pic16f685.h: 25: unsigned char FSR @ 0x004;
;pic16f685.h: 26: volatile unsigned char PORTA @ 0x005;
;pic16f685.h: 27: volatile unsigned char PORTB @ 0x006;
;pic16f685.h: 28: volatile unsigned char PORTC @ 0x007;
;pic16f685.h: 29: volatile unsigned char PCLATH @ 0x00A;
;pic16f685.h: 30: volatile unsigned char INTCON @ 0x00B;
	
_main:	
	opt stack 8
; Regs used in _main: [allreg]
	line	23
	
l30000349:	
;KNL_Motor.c: 23: ANSEL=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h
	line	24
;KNL_Motor.c: 24: ANSELH=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(287)^0100h
	
l30000350:	
	line	25
;KNL_Motor.c: 25: TRISC6=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	
l30000351:	
	line	26
;KNL_Motor.c: 26: TRISC7=0;
	bcf	(1087/8)^080h,(1087)&7
	
l30000352:	
	line	27
;KNL_Motor.c: 27: TRISB4=1;
	bsf	(1076/8)^080h,(1076)&7
	
l30000353:	
	line	28
;KNL_Motor.c: 28: TRISB5=1;
	bsf	(1077/8)^080h,(1077)&7
	
l30000354:	
	line	29
;KNL_Motor.c: 29: TRISB6=0;
	bcf	(1078/8)^080h,(1078)&7
	
l30000355:	
	line	30
;KNL_Motor.c: 30: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	
l5:	
	line	34
	btfss	(52/8),(52)&7
	goto	u11
	goto	u10
u11:
	goto	l8
u10:
	
l30000356:	
	btfsc	(53/8),(53)&7
	goto	u21
	goto	u20
u21:
	goto	l5
u20:
	
l8:	
	line	35
	btfsc	(52/8),(52)&7
	goto	u31
	goto	u30
u31:
	goto	l11
u30:
	
l30000357:	
	btfsc	(53/8),(53)&7
	goto	u41
	goto	u40
u41:
	goto	l8
u40:
	
l11:	
	line	36
	btfsc	(52/8),(52)&7
	goto	u51
	goto	u50
u51:
	goto	l13
u50:
	
l30000358:	
	btfss	(53/8),(53)&7
	goto	u61
	goto	u60
u61:
	goto	l11
u60:
	
l13:	
	line	37
;KNL_Motor.c: 37: if(RB4==1&&RB5==0)
	btfss	(52/8),(52)&7
	goto	u71
	goto	u70
u71:
	goto	l5
u70:
	
l30000359:	
	btfsc	(53/8),(53)&7
	goto	u81
	goto	u80
u81:
	goto	l5
u80:
	
l30000360:	
	line	39
;KNL_Motor.c: 38: {
;KNL_Motor.c: 39: BuzzerBeep(2);
	movlw	(02h)
	fcall	_BuzzerBeep
	
l30000361:	
	line	40
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l30000362:	
	bsf	(63/8),(63)&7
	
l16:	
	line	41
;KNL_Motor.c: 41: Delay(20);
	movlw	low(014h)
	movwf	(?_Delay)
	movlw	high(014h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l30000363:	
	line	42
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l30000364:	
	bcf	(63/8),(63)&7
	
l19:	
	line	43
;KNL_Motor.c: 43: Delay(5);
	movlw	low(05h)
	movwf	(?_Delay)
	movlw	high(05h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l30000365:	
	line	47
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	
l30000366:	
	bcf	(63/8),(63)&7
	
l22:	
	line	48
;KNL_Motor.c: 48: Delay(20);
	movlw	low(014h)
	movwf	(?_Delay)
	movlw	high(014h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l30000367:	
	line	49
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	
l30000368:	
	bsf	(63/8),(63)&7
	
l25:	
	line	50
;KNL_Motor.c: 50: Delay(5);
	movlw	low(05h)
	movwf	(?_Delay)
	movlw	high(05h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l27:	
	line	51
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u91
	goto	u90
u91:
	goto	l1
u90:
	
l30000369:	
	btfss	(53/8),(53)&7
	goto	u101
	goto	u100
u101:
	goto	l27
u100:
	
l1:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	55
	signat	_main,88
	global	_BuzzerBeep
psect	text9,local,class=CODE,delta=2
global __ptext9
__ptext9:

; *************** function _BuzzerBeep *****************
; Defined at:
;		line 74 in file "D:\Amit\E-Projects\PIC Projects\KNL_Motor\KNL_Motor.c"
; Parameters:    Size  Location     Type
;  val             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  val             1    7[COMMON] unsigned char 
;  j               1    8[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         3       0       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_Delay
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text9
	file	"D:\Amit\E-Projects\PIC Projects\KNL_Motor\KNL_Motor.c"
	line	74
	global	__size_of_BuzzerBeep
	__size_of_BuzzerBeep	equ	__end_of_BuzzerBeep-_BuzzerBeep
;KNL_Motor.c: 73: void BuzzerBeep(unsigned char val)
;KNL_Motor.c: 74: {
	
_BuzzerBeep:	
	opt stack 7
; Regs used in _BuzzerBeep: [wreg+status,2+status,0+pclath+cstack]
;BuzzerBeep@val stored from wreg
	line	76
	movwf	(BuzzerBeep@val)
	
l30000375:	
;KNL_Motor.c: 75: unsigned char j;
;KNL_Motor.c: 76: for(j=0;j<val;j++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(BuzzerBeep@j)
	goto	l30000379
	
l47:	
	line	78
;KNL_Motor.c: 77: {
;KNL_Motor.c: 78: RB6=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	
l30000376:	
	line	79
;KNL_Motor.c: 79: Delay(5);
	movlw	low(05h)
	movwf	(?_Delay)
	movlw	high(05h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l30000377:	
	line	80
;KNL_Motor.c: 80: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	81
;KNL_Motor.c: 81: Delay(5);
	movlw	low(05h)
	movwf	(?_Delay)
	movlw	high(05h)
	movwf	((?_Delay))+1
	fcall	_Delay
	
l30000378:	
	line	76
	movlw	(01h)
	movwf	(??_BuzzerBeep+0+0)
	movf	(??_BuzzerBeep+0+0),w
	addwf	(BuzzerBeep@j),f
	
l30000379:	
	movf	(BuzzerBeep@val),w
	subwf	(BuzzerBeep@j),w
	skipc
	goto	u131
	goto	u130
u131:
	goto	l47
u130:
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_BuzzerBeep
	__end_of_BuzzerBeep:
; =============== function _BuzzerBeep ends ============

psect	text10,local,class=CODE,delta=2
global __ptext10
__ptext10:
	line	83
	signat	_BuzzerBeep,4216
	global	_Delay

; *************** function _Delay *****************
; Defined at:
;		line 58 in file "D:\Amit\E-Projects\PIC Projects\KNL_Motor\KNL_Motor.c"
; Parameters:    Size  Location     Type
;  val             2    4[COMMON] unsigned int 
; Auto vars:     Size  Location     Type
;  v               2    2[COMMON] unsigned int 
;  u               2    0[COMMON] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         6       0       0
;      Temp:     0
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_main
;		_BuzzerBeep
; This function uses a non-reentrant model
; 
psect	text10
	file	"D:\Amit\E-Projects\PIC Projects\KNL_Motor\KNL_Motor.c"
	line	58
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
;KNL_Motor.c: 57: void Delay(unsigned int val)
;KNL_Motor.c: 58: {
	
_Delay:	
	opt stack 6
; Regs used in _Delay: [wreg]
	line	60
	
l30000370:	
;KNL_Motor.c: 59: unsigned int u,v;
;KNL_Motor.c: 60: for(u=0;u<val;u++)
	movlw	low(0)
	movwf	(Delay@u)
	movlw	high(0)
	movwf	((Delay@u))+1
	goto	l34
	
l30000371:	
	line	61
;KNL_Motor.c: 61: for(v=0;v<1000;v++);
	movlw	low(0)
	movwf	(Delay@v)
	movlw	high(0)
	movwf	((Delay@v))+1
	
l30000373:	
	movlw	low(01h)
	addwf	(Delay@v),f
	skipnc
	incf	(Delay@v+1),f
	movlw	high(01h)
	addwf	(Delay@v+1),f
	movlw	high(03E8h)
	subwf	(Delay@v+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(Delay@v),w
	skipc
	goto	u111
	goto	u110
u111:
	goto	l30000373
u110:
	
l30000374:	
	line	60
	movlw	low(01h)
	addwf	(Delay@u),f
	skipnc
	incf	(Delay@u+1),f
	movlw	high(01h)
	addwf	(Delay@u+1),f
	
l34:	
	movf	(Delay@val+1),w
	subwf	(Delay@u+1),w
	skipz
	goto	u125
	movf	(Delay@val),w
	subwf	(Delay@u),w
u125:
	skipc
	goto	u121
	goto	u120
u121:
	goto	l30000371
u120:
	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
; =============== function _Delay ends ============

psect	text11,local,class=CODE,delta=2
global __ptext11
__ptext11:
	line	62
	signat	_Delay,4216
	end
