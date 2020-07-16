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
;COMMON:	_main->_ReadiButton
;COMMON:	_ReadiButton->_CRCCheck
;BANK0:	_main->_ReadiButton
;COMMON:	_ReadiButton->_CRCCheck
	FNCALL	_main,_PowerInit
	FNCALL	_main,_ReadiButton
	FNCALL	_ReadiButton,_InitiButton
	FNCALL	_ReadiButton,_WriteByteToiButton
	FNCALL	_ReadiButton,_ReadByteToiButton
	FNCALL	_ReadiButton,_CRCCheck
	FNCALL	_ReadByteToiButton,_delay_10us
	FNCALL	_WriteByteToiButton,_delay_10us
	FNCALL	_InitiButton,_delay_10us
	FNROOT	_main
	global	_t
	global	_USER
	global	_ADCON0
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
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
	file	"iButton.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_t:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_USER:
       ds      13

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+0Dh)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	??_PowerInit
??_PowerInit: ;@ 0x0
	global	?_PowerInit
?_PowerInit: ;@ 0x0
	global	??_WriteByteToiButton
??_WriteByteToiButton: ;@ 0x0
	global	??_ReadByteToiButton
??_ReadByteToiButton: ;@ 0x0
	global	??_CRCCheck
??_CRCCheck: ;@ 0x0
	global	?_delay_10us
?_delay_10us: ;@ 0x0
	global	??_delay_10us
??_delay_10us: ;@ 0x0
	global	??_InitiButton
??_InitiButton: ;@ 0x0
	global	InitiButton@PresencePulse
InitiButton@PresencePulse:	; 1 bytes @ 0x0
	ds	1
	global	?_InitiButton
?_InitiButton: ;@ 0x1
	global	CRCCheck@crc_lsb_bit
CRCCheck@crc_lsb_bit:	; 1 bytes @ 0x1
	global	WriteByteToiButton@d
WriteByteToiButton@d:	; 1 bytes @ 0x1
	global	ReadByteToiButton@temp
ReadByteToiButton@temp:	; 1 bytes @ 0x1
	ds	1
	global	??_main
??_main: ;@ 0x2
	global	CRCCheck@data_lsb_bit
CRCCheck@data_lsb_bit:	; 1 bytes @ 0x2
	global	WriteByteToiButton@n
WriteByteToiButton@n:	; 1 bytes @ 0x2
	global	ReadByteToiButton@n
ReadByteToiButton@n:	; 1 bytes @ 0x2
	ds	1
	global	?_WriteByteToiButton
?_WriteByteToiButton: ;@ 0x3
	global	CRCCheck@KeyAllByteZero
CRCCheck@KeyAllByteZero:	; 1 bytes @ 0x3
	global	ReadByteToiButton@i_byte
ReadByteToiButton@i_byte:	; 1 bytes @ 0x3
	ds	1
	global	?_ReadByteToiButton
?_ReadByteToiButton: ;@ 0x4
	global	CRCCheck@USER_PTR
CRCCheck@USER_PTR:	; 1 bytes @ 0x4
	ds	1
	global	CRCCheck@TmpByte
CRCCheck@TmpByte:	; 1 bytes @ 0x5
	ds	1
	global	CRCCheck@CRC
CRCCheck@CRC:	; 1 bytes @ 0x6
	ds	1
	global	CRCCheck@j
CRCCheck@j:	; 1 bytes @ 0x7
	ds	1
	global	CRCCheck@i
CRCCheck@i:	; 1 bytes @ 0x8
	ds	1
	global	??_ReadiButton
??_ReadiButton: ;@ 0x9
	global	?_CRCCheck
?_CRCCheck: ;@ 0x9
	ds	1
	global	?_main
?_main: ;@ 0xA
	global	?_ReadiButton
?_ReadiButton: ;@ 0xA
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	ReadiButton@iButtonPresent
ReadiButton@iButtonPresent:	; 1 bytes @ 0x0
	ds	1
	global	ReadiButton@n
ReadiButton@n:	; 1 bytes @ 0x1
	ds	1
;Data sizes: Strings 0, constant 0, data 0, bss 14, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14     10      11
; BANK0           80      2      15
; BANK1           32      0       0


;Pointer list with targets:

;CRCCheck@USER_PTR	PTR struct USR size(1); Largest target is 13
;		 -> USER(BANK0[13]), 


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0  822   0.00
;          _PowerInit
;        _ReadiButton
;  _ReadiButton                                       3    0  822   0.00
;                                    9 COMMO    1
;                                    0 BANK0    2
;        _InitiButton
; _WriteByteToiButton
;  _ReadByteToiButton
;           _CRCCheck
;  _PowerInit                                         0    0    0   0.00
;    _ReadByteToiButton                               5    0  159   0.00
;                                    0 COMMO    4
;         _delay_10us
;    _CRCCheck                                        9    0  396   0.00
;                                    0 COMMO    9
;    _WriteByteToiButton                              3    0  105   0.00
;                                    0 COMMO    3
;         _delay_10us
;    _InitiButton                                     1    0   30   0.00
;                                    0 COMMO    1
;         _delay_10us
;      _delay_10us                                    0    0    0   0.00
; Estimated maximum call depth 3
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      A       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;ABS                  0      0      1A       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50      2       F       5       18.8%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            20      0       0       6        0.0%
;BANK1               20      0       0       7        0.0%
;DATA                 0      0      1A       8        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 61 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_PowerInit
;		_ReadiButton
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\main.c"
	line	61
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 60: void main()
;main.c: 61: {
	
_main:	
	opt stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	62
	
l30000811:	
;main.c: 62: PowerInit();
	fcall	_PowerInit
	
l30000812:	
	line	66
;main.c: 65: {
;main.c: 66: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u341
	goto	u340
u341:
	goto	l46
u340:
	
l30000813:	
	line	68
;main.c: 67: {
;main.c: 68: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
	goto	l30000812
	
l46:	
	line	72
;main.c: 70: else
;main.c: 71: {
;main.c: 72: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	l30000812
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	75
	signat	_main,88
	global	_ReadiButton
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

; *************** function _ReadiButton *****************
; Defined at:
;		line 55 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  n               1    1[BANK0 ] char 
;  iButtonPrese    1    0[BANK0 ] char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         1       2       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_InitiButton
;		_WriteByteToiButton
;		_ReadByteToiButton
;		_CRCCheck
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text61
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
	line	55
	global	__size_of_ReadiButton
	__size_of_ReadiButton	equ	__end_of_ReadiButton-_ReadiButton
;OneWire.c: 54: unsigned char ReadiButton(void)
;OneWire.c: 55: {
	
_ReadiButton:	
	opt stack 7
; Regs used in _ReadiButton: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000792:	
	
l30000793:	
	line	57
;OneWire.c: 57: iButtonPresent = InitiButton();
	fcall	_InitiButton
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ReadiButton@iButtonPresent)
	
l30000794:	
	line	59
;OneWire.c: 59: USER.DATA.KEY.CRC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_USER)
	
l30000795:	
	line	61
;OneWire.c: 61: if(iButtonPresent)
	movf	(ReadiButton@iButtonPresent),w
	skipz
	goto	u310
	goto	l30000809
u310:
	
l30000796:	
	line	63
;OneWire.c: 62: {
;OneWire.c: 63: WriteByteToiButton(0x33);
	movlw	(033h)
	fcall	_WriteByteToiButton
	
l30000797:	
	line	64
;OneWire.c: 64: for (n=7; n>=0; n--)
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ReadiButton@n)
	
l30000800:	
	line	65
;OneWire.c: 65: USER.DATA.KEY.BYTE[n]=ReadByteToiButton();
	fcall	_ReadByteToiButton
	movwf	(??_ReadiButton+0+0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ReadiButton@n),w
	addlw	(_USER)&0ffh
	movwf	fsr0
	movf	(??_ReadiButton+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30000801:	
	line	64
	movlw	(-1)
	movwf	(??_ReadiButton+0+0)
	movf	(??_ReadiButton+0+0),w
	addwf	(ReadiButton@n),f
	
l30000802:	
	btfss	(ReadiButton@n),7
	goto	u321
	goto	u320
u321:
	goto	l30000800
u320:
	
l30000803:	
	line	67
;OneWire.c: 67: if(CRCCheck(&USER))
	movlw	((_USER))&0ffh
	fcall	_CRCCheck
	xorlw	0
	skipnz
	goto	u331
	goto	u330
u331:
	goto	l30000807
u330:
	
l30000804:	
	line	68
;OneWire.c: 68: return(1);
	movlw	(01h)
	goto	l14
	
l30000807:	
	line	70
;OneWire.c: 69: else
;OneWire.c: 70: return(0);
	movlw	(0)
	goto	l14
	
l30000809:	
	line	72
;OneWire.c: 71: }
;OneWire.c: 72: return(iButtonPresent);
	movf	(ReadiButton@iButtonPresent),w
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_ReadiButton
	__end_of_ReadiButton:
; =============== function _ReadiButton ends ============

psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	line	73
	signat	_ReadiButton,89
	global	_PowerInit

; *************** function _PowerInit *****************
; Defined at:
;		line 7 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text62
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\main.c"
	line	7
	global	__size_of_PowerInit
	__size_of_PowerInit	equ	__end_of_PowerInit-_PowerInit
;main.c: 6: void PowerInit(void)
;main.c: 7: {
	
_PowerInit:	
	opt stack 7
; Regs used in _PowerInit: [wreg+status,2+status,0]
	line	8
	
l30000693:	
;main.c: 8: IRCF0=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1148/8)^080h,(1148)&7
	line	9
;main.c: 9: SCS=0x01;
	bsf	(1144/8)^080h,(1144)&7
	line	10
;main.c: 10: IRCF1=0x01;
	bsf	(1149/8)^080h,(1149)&7
	line	11
;main.c: 11: IRCF2=0x01;
	bsf	(1150/8)^080h,(1150)&7
	
l30000694:	
	line	13
;main.c: 13: OSCTUNE=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(144)^080h
	line	15
;main.c: 15: CM1CON0=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(281)^0100h	;volatile
	line	16
;main.c: 16: ANSEL=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(286)^0100h
	line	17
;main.c: 17: ANSELH=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(287)^0100h
	
l30000695:	
	line	19
;main.c: 19: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	
l30000696:	
	line	22
;main.c: 22: TRISA5 |= 0x24;
	
l30000697:	
	line	25
;main.c: 25: WPUA=0x24;
	movlw	(024h)
	movwf	(149)^080h
	
l30000698:	
	line	26
;main.c: 26: WPUB=0xA0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(277)^0100h
	
l30000699:	
	line	28
;main.c: 28: RABPU=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	33
;main.c: 33: EECON1=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volatile
	
l30000700:	
	line	47
;main.c: 47: INTCON=0x88;
	movlw	(088h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(11)	;volatile
	
l30000701:	
	line	48
;main.c: 48: IOCA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(150)^080h
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_PowerInit
	__end_of_PowerInit:
; =============== function _PowerInit ends ============

psect	text63,local,class=CODE,delta=2
global __ptext63
__ptext63:
	line	58
	signat	_PowerInit,88
	global	_ReadByteToiButton

; *************** function _ReadByteToiButton *****************
; Defined at:
;		line 163 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i_byte          1    3[COMMON] unsigned char 
;  n               1    2[COMMON] unsigned char 
;  temp            1    1[COMMON] unsigned char 
;  mask            1    0        unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         4       0       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text63
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
	line	163
	global	__size_of_ReadByteToiButton
	__size_of_ReadByteToiButton	equ	__end_of_ReadByteToiButton-_ReadByteToiButton
;OneWire.c: 162: unsigned char ReadByteToiButton(void)
;OneWire.c: 163: {
	
_ReadByteToiButton:	
	opt stack 6
; Regs used in _ReadByteToiButton: [wreg+status,2+status,0+pclath+cstack]
	line	165
	
l30000826:	
;OneWire.c: 164: unsigned char n, i_byte, temp, mask;
;OneWire.c: 165: for (n=0; n<8; n++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(ReadByteToiButton@n)
	
l32:	
	line	167
;OneWire.c: 166: {
;OneWire.c: 167: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	168
;OneWire.c: 168: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	170
# 170 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
     NOP ;#
	line	171
# 171 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	173
# 173 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
# 172 ;#
psect	text63
	line	175
;OneWire.c: 175: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
# 175 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
     NOP ;#
	line	176
# 176 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	178
# 178 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
# 177 ;#
psect	text63
	
l30000829:	
	line	180
;OneWire.c: 180: temp=PORTA;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	movwf	(ReadByteToiButton@temp)
	
l30000830:	
	line	181
;OneWire.c: 181: if (temp & 4)
	btfss	(ReadByteToiButton@temp),(2)&7
	goto	u371
	goto	u370
u371:
	goto	l30000832
u370:
	
l30000831:	
	line	183
;OneWire.c: 182: {
;OneWire.c: 183: i_byte=(i_byte>>1) | 0x80;
	movf	(ReadByteToiButton@i_byte),w
	movwf	(??_ReadByteToiButton+0+0)
	clrc
	rrf	(??_ReadByteToiButton+0+0),w
	iorlw	080h
	movwf	(ReadByteToiButton@i_byte)
	goto	l30000833
	
l30000832:	
	line	187
;OneWire.c: 185: else
;OneWire.c: 186: {
;OneWire.c: 187: i_byte=i_byte >> 1;
	movf	(ReadByteToiButton@i_byte),w
	movwf	(??_ReadByteToiButton+0+0)
	clrc
	rrf	(??_ReadByteToiButton+0+0),w
	movwf	(ReadByteToiButton@i_byte)
	
l30000833:	
	line	189
;OneWire.c: 188: }
;OneWire.c: 189: t=6;
	movlw	(06h)
	movwf	(_t)
	
l30000834:	
	line	190
;OneWire.c: 190: delay_10us();
	fcall	_delay_10us
	
l30000835:	
	line	165
	movlw	(01h)
	movwf	(??_ReadByteToiButton+0+0)
	movf	(??_ReadByteToiButton+0+0),w
	addwf	(ReadByteToiButton@n),f
	
l30000836:	
	movlw	(08h)
	subwf	(ReadByteToiButton@n),w
	skipc
	goto	u381
	goto	u380
u381:
	goto	l32
u380:
	
l30000837:	
	line	192
;OneWire.c: 191: }
;OneWire.c: 192: return(i_byte);
	movf	(ReadByteToiButton@i_byte),w
	
l31:	
	return
	opt stack 0
GLOBAL	__end_of_ReadByteToiButton
	__end_of_ReadByteToiButton:
; =============== function _ReadByteToiButton ends ============

psect	text64,local,class=CODE,delta=2
global __ptext64
__ptext64:
	line	193
	signat	_ReadByteToiButton,89
	global	_CRCCheck

; *************** function _CRCCheck *****************
; Defined at:
;		line 19 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
; Parameters:    Size  Location     Type
;  USER_PTR        1    wreg     PTR struct USR
;		 -> USER(13), 
; Auto vars:     Size  Location     Type
;  USER_PTR        1    4[COMMON] PTR struct USR
;		 -> USER(13), 
;  j               1    7[COMMON] unsigned char 
;  i               1    8[COMMON] unsigned char 
;  CRC             1    6[COMMON] unsigned char 
;  TmpByte         1    5[COMMON] unsigned char 
;  KeyAllByteZe    1    3[COMMON] unsigned char 
;  data_lsb_bit    1    2[COMMON] unsigned char 
;  crc_lsb_bit     1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         9       0       0
;      Temp:     1
;      Total:    9
; This function calls:
;		Nothing
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text64
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
	line	19
	global	__size_of_CRCCheck
	__size_of_CRCCheck	equ	__end_of_CRCCheck-_CRCCheck
;OneWire.c: 18: unsigned char CRCCheck(union USR * USER_PTR)
;OneWire.c: 19: {
	
_CRCCheck:	
	opt stack 6
; Regs used in _CRCCheck: [wreg-fsr0h+status,2+status,0]
;CRCCheck@USER_PTR stored from wreg
	line	23
	movwf	(CRCCheck@USER_PTR)
	
l30000855:	
;OneWire.c: 20: unsigned char i, j, CRC, KeyAllByteZero;
;OneWire.c: 21: unsigned char crc_lsb_bit, data_lsb_bit,TmpByte;
;OneWire.c: 23: CRC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(CRCCheck@CRC)
	line	24
;OneWire.c: 24: KeyAllByteZero=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(CRCCheck@KeyAllByteZero)
	line	26
;OneWire.c: 26: for(i=8;i>1;i--)
	movlw	(08h)
	movwf	(CRCCheck@i)
	
l30000858:	
	line	28
;OneWire.c: 27: {
;OneWire.c: 28: TmpByte = USER_PTR->BYTE[i];
	movf	(CRCCheck@i),w
	addwf	(CRCCheck@USER_PTR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(CRCCheck@TmpByte)
	
l30000859:	
	line	29
;OneWire.c: 29: KeyAllByteZero |= TmpByte;
	movf	(CRCCheck@TmpByte),w
	movwf	(??_CRCCheck+0+0)
	movf	(??_CRCCheck+0+0),w
	iorwf	(CRCCheck@KeyAllByteZero),f
	
l30000860:	
	line	30
;OneWire.c: 30: for(j=0;j<8;j++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(CRCCheck@j)
	
l30000863:	
	line	32
;OneWire.c: 31: {
;OneWire.c: 32: data_lsb_bit = (TmpByte>>j) & 0x01;
	movf	(CRCCheck@TmpByte),w
	movwf	(??_CRCCheck+0+0)
	incf	(CRCCheck@j),w
	goto	u404
u405:
	clrc
	rrf	(??_CRCCheck+0+0),f
u404:
	addlw	-1
	skipz
	goto	u405
	movf	0+(??_CRCCheck+0+0),w
	andlw	01h
	movwf	(CRCCheck@data_lsb_bit)
	
l30000864:	
	line	33
;OneWire.c: 33: crc_lsb_bit=(CRC & 0x01);
	movf	(CRCCheck@CRC),w
	andlw	01h
	movwf	(CRCCheck@crc_lsb_bit)
	
l30000865:	
	line	35
;OneWire.c: 35: CRC >>= 1;
	clrc
	rrf	(CRCCheck@CRC),f

	
l30000866:	
	line	36
;OneWire.c: 36: if(data_lsb_bit !=crc_lsb_bit)
	movf	(CRCCheck@data_lsb_bit),w
	xorwf	(CRCCheck@crc_lsb_bit),w
	skipnz
	goto	u411
	goto	u410
u411:
	goto	l11
u410:
	
l30000867:	
	line	37
;OneWire.c: 37: CRC ^= 0x8C;
	movlw	(08Ch)
	movwf	(??_CRCCheck+0+0)
	movf	(??_CRCCheck+0+0),w
	xorwf	(CRCCheck@CRC),f
	
l11:	
	line	30
	movlw	(01h)
	movwf	(??_CRCCheck+0+0)
	movf	(??_CRCCheck+0+0),w
	addwf	(CRCCheck@j),f
	
l30000868:	
	movlw	(08h)
	subwf	(CRCCheck@j),w
	skipc
	goto	u421
	goto	u420
u421:
	goto	l30000863
u420:
	
l30000869:	
	line	26
	movlw	low(01h)
	subwf	(CRCCheck@i),f
	
l30000870:	
	movlw	(02h)
	subwf	(CRCCheck@i),w
	skipnc
	goto	u431
	goto	u430
u431:
	goto	l30000858
u430:
	
l30000871:	
	line	40
;OneWire.c: 38: }
;OneWire.c: 39: }
;OneWire.c: 40: if(USER_PTR->DATA.KEY.CRC == CRC && KeyAllByteZero != 0)
	movf	(CRCCheck@USER_PTR),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(CRCCheck@CRC),w
	skipz
	goto	u441
	goto	u440
u441:
	goto	l30000876
u440:
	
l30000872:	
	movf	(CRCCheck@KeyAllByteZero),w
	skipz
	goto	u450
	goto	l30000876
u450:
	
l30000873:	
	line	41
;OneWire.c: 41: return(1);
	movlw	(01h)
	goto	l4
	
l30000876:	
	line	43
;OneWire.c: 42: else
;OneWire.c: 43: return(0);
	movlw	(0)
	
l4:	
	return
	opt stack 0
GLOBAL	__end_of_CRCCheck
	__end_of_CRCCheck:
; =============== function _CRCCheck ends ============

psect	text65,local,class=CODE,delta=2
global __ptext65
__ptext65:
	line	44
	signat	_CRCCheck,4217
	global	_WriteByteToiButton

; *************** function _WriteByteToiButton *****************
; Defined at:
;		line 134 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
; Parameters:    Size  Location     Type
;  d               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  d               1    1[COMMON] unsigned char 
;  n               1    2[COMMON] unsigned char 
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
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text65
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
	line	134
	global	__size_of_WriteByteToiButton
	__size_of_WriteByteToiButton	equ	__end_of_WriteByteToiButton-_WriteByteToiButton
;OneWire.c: 133: void WriteByteToiButton(unsigned char d)
;OneWire.c: 134: {
	
_WriteByteToiButton:	
	opt stack 6
; Regs used in _WriteByteToiButton: [wreg+status,2+status,0+pclath+cstack]
;WriteByteToiButton@d stored from wreg
	line	136
	movwf	(WriteByteToiButton@d)
	
l30000814:	
;OneWire.c: 135: unsigned char n;
;OneWire.c: 136: for(n=0; n<8; n++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(WriteByteToiButton@n)
	
l26:	
	line	138
;OneWire.c: 137: {
;OneWire.c: 138: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	139
;OneWire.c: 139: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	
l30000817:	
	line	140
;OneWire.c: 140: t=6;
	movlw	(06h)
	movwf	(_t)
	
l30000818:	
	line	141
;OneWire.c: 141: if (d&0x01)
	btfss	(WriteByteToiButton@d),(0)&7
	goto	u351
	goto	u350
u351:
	goto	l30000821
u350:
	
l30000819:	
	line	143
# 143 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
nop ;#
psect	text65
	line	144
;OneWire.c: 144: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30000820:	
	line	145
;OneWire.c: 145: delay_10us();
	fcall	_delay_10us
	goto	l30000823
	
l30000821:	
	line	149
;OneWire.c: 147: else
;OneWire.c: 148: {
;OneWire.c: 149: delay_10us();
	fcall	_delay_10us
	
l30000822:	
	line	150
;OneWire.c: 150: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30000823:	
	line	152
;OneWire.c: 151: }
;OneWire.c: 152: d=d>>1;
	movf	(WriteByteToiButton@d),w
	movwf	(??_WriteByteToiButton+0+0)
	clrc
	rrf	(??_WriteByteToiButton+0+0),w
	movwf	(WriteByteToiButton@d)
	
l30000824:	
	line	136
	movlw	(01h)
	movwf	(??_WriteByteToiButton+0+0)
	movf	(??_WriteByteToiButton+0+0),w
	addwf	(WriteByteToiButton@n),f
	
l30000825:	
	movlw	(08h)
	subwf	(WriteByteToiButton@n),w
	skipc
	goto	u361
	goto	u360
u361:
	goto	l26
u360:
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_WriteByteToiButton
	__end_of_WriteByteToiButton:
; =============== function _WriteByteToiButton ends ============

psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
	line	154
	signat	_WriteByteToiButton,4216
	global	_InitiButton

; *************** function _InitiButton *****************
; Defined at:
;		line 95 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  PresencePuls    1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         1       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text66
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
	line	95
	global	__size_of_InitiButton
	__size_of_InitiButton	equ	__end_of_InitiButton-_InitiButton
;OneWire.c: 94: unsigned char InitiButton(void)
;OneWire.c: 95: {
	
_InitiButton:	
	opt stack 6
; Regs used in _InitiButton: [wreg+status,2+status,0+pclath+cstack]
	line	98
	
l30000839:	
;OneWire.c: 96: unsigned char PresencePulse;
;OneWire.c: 98: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	99
;OneWire.c: 99: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	100
;OneWire.c: 100: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	101
;OneWire.c: 101: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	
l30000840:	
	line	103
;OneWire.c: 103: t=42;
	movlw	(02Ah)
	movwf	(_t)
	
l30000841:	
	line	104
;OneWire.c: 104: delay_10us();
	fcall	_delay_10us
	
l30000842:	
	line	106
;OneWire.c: 106: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	
l30000843:	
	line	107
;OneWire.c: 107: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	
l30000844:	
	line	109
;OneWire.c: 109: t=6;
	movlw	(06h)
	movwf	(_t)
	line	110
;OneWire.c: 110: delay_10us();
	fcall	_delay_10us
	
l30000845:	
	line	112
;OneWire.c: 112: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30000846:	
	line	113
;OneWire.c: 113: if (RA2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u391
	goto	u390
u391:
	goto	l30000848
u390:
	
l30000847:	
	line	114
;OneWire.c: 114: PresencePulse=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(InitiButton@PresencePulse)
	goto	l30000849
	
l30000848:	
	line	116
;OneWire.c: 115: else
;OneWire.c: 116: PresencePulse=0x01;
	clrf	(InitiButton@PresencePulse)
	bsf	status,0
	rlf	(InitiButton@PresencePulse),f
	
l30000849:	
	line	118
;OneWire.c: 118: t=50;
	movlw	(032h)
	movwf	(_t)
	
l30000850:	
	line	119
;OneWire.c: 119: delay_10us();
	fcall	_delay_10us
	
l30000851:	
	line	121
;OneWire.c: 121: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	
l30000852:	
	line	122
;OneWire.c: 122: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	
l30000853:	
	line	123
;OneWire.c: 123: return (PresencePulse);
	movf	(InitiButton@PresencePulse),w
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_InitiButton
	__end_of_InitiButton:
; =============== function _InitiButton ends ============

psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:
	line	124
	signat	_InitiButton,89
	global	_delay_10us

; *************** function _delay_10us *****************
; Defined at:
;		line 201 in file "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_InitiButton
;		_WriteByteToiButton
;		_ReadByteToiButton
; This function uses a non-reentrant model
; 
psect	text67
	file	"D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
	line	201
	global	__size_of_delay_10us
	__size_of_delay_10us	equ	__end_of_delay_10us-_delay_10us
;OneWire.c: 200: void delay_10us(void)
;OneWire.c: 201: {
	
_delay_10us:	
	opt stack 5
; Regs used in _delay_10us: []
	line	203
	
l30000878:	
# 203 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 BCF _STATUS,5 ;#
	line	204
# 204 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
DELAY_10US_XZ: ;#
	line	205
# 205 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	206
# 206 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	207
# 207 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	208
# 208 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	209
# 209 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	210
# 210 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	211
# 211 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	212
# 212 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	213
# 213 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 NOP ;#
	line	214
# 214 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 DECFSZ _t,F ;#
	line	215
# 215 "D:\Amit\E-Projects\PIC Projects\iButton\1 Wire\OneWire.c"
 GOTO DELAY_10US_XZ ;#
psect	text67
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_delay_10us
	__end_of_delay_10us:
; =============== function _delay_10us ends ============

psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:
	line	217
	signat	_delay_10us,88
	end
