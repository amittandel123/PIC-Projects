opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 5239"

opt pagewidth 120

	opt lm

	processor	16F690
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
;COMMON:	_main->_Send_Command_LCD
;COMMON:	_Send_Command_LCD->_Delay
;BANK0:	_main->_Display_Data_LCD
;COMMON:	_Display_Data_LCD->_Display_Char_LCD
;COMMON:	_Display_Char_LCD->_Delay
;COMMON:	_main->_Display_Char_LCD
;COMMON:	_Display_Char_LCD->_Delay
	FNCALL	_main,_Initialize_LCD
	FNCALL	_main,_Send_Command_LCD
	FNCALL	_main,_Delay
	FNCALL	_main,_Display_Data_LCD
	FNCALL	_main,_Serial_Init
	FNCALL	_main,_Serial_Receive
	FNCALL	_main,_Serial_Transmit
	FNCALL	_main,_Clear_LCD
	FNCALL	_main,_Display_Char_LCD
	FNCALL	_Display_Data_LCD,_Display_Char_LCD
	FNCALL	_Initialize_LCD,_Send_Command_LCD
	FNCALL	_Initialize_LCD,_Delay
	FNCALL	_Initialize_LCD,_Clear_LCD
	FNCALL	_Serial_Transmit,_Send_Command_LCD
	FNCALL	_Serial_Transmit,_Delay
	FNCALL	_Serial_Transmit,_Display_Char_LCD
	FNCALL	_Display_Char_LCD,_Delay
	FNCALL	_Clear_LCD,_Send_Command_LCD
	FNCALL	_Clear_LCD,_Delay
	FNCALL	_Send_Command_LCD,_Delay
	FNROOT	_main
	global	_Recd_bit
	global	_u
	global	_ADCON0
psect	text70,local,class=CODE,delta=2
global __ptext70
__ptext70:
_ADCON0  equ     31
	global	_ADRESH
_ADRESH  equ     30
	global	_CCP1CON
_CCP1CON  equ     23
	global	_CCPR1H
_CCPR1H  equ     22
	global	_CCPR1L
_CCPR1L  equ     21
	global	_ECCPAS
_ECCPAS  equ     29
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
	global	_PWM1CON
_PWM1CON  equ     28
	global	_RCREG
_RCREG  equ     26
	global	_RCSTA
_RCSTA  equ     24
	global	_SSPBUF
_SSPBUF  equ     19
	global	_SSPCON
_SSPCON  equ     20
	global	_STATUS
_STATUS  equ     3
	global	_T1CON
_T1CON  equ     16
	global	_T2CON
_T2CON  equ     18
	global	_TMR0
_TMR0  equ     1
	global	_TMR1H
_TMR1H  equ     15
	global	_TMR1L
_TMR1L  equ     14
	global	_TMR2
_TMR2  equ     17
	global	_TXREG
_TXREG  equ     25
	global	_ADDEN
_ADDEN  equ     195
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
	global	_CCP1IF
_CCP1IF  equ     98
	global	_CCP1M0
_CCP1M0  equ     184
	global	_CCP1M1
_CCP1M1  equ     185
	global	_CCP1M2
_CCP1M2  equ     186
	global	_CCP1M3
_CCP1M3  equ     187
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
	global	_CREN
_CREN  equ     196
	global	_DC
_DC  equ     25
	global	_DC1B0
_DC1B0  equ     188
	global	_DC1B1
_DC1B1  equ     189
	global	_ECCPAS0
_ECCPAS0  equ     236
	global	_ECCPAS1
_ECCPAS1  equ     237
	global	_ECCPAS2
_ECCPAS2  equ     238
	global	_ECCPASE
_ECCPASE  equ     239
	global	_EEIF
_EEIF  equ     108
	global	_FERR
_FERR  equ     194
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
	global	_OERR
_OERR  equ     193
	global	_OSFIF
_OSFIF  equ     111
	global	_P1M0
_P1M0  equ     190
	global	_P1M1
_P1M1  equ     191
	global	_PD
_PD  equ     27
	global	_PDC0
_PDC0  equ     224
	global	_PDC1
_PDC1  equ     225
	global	_PDC2
_PDC2  equ     226
	global	_PDC3
_PDC3  equ     227
	global	_PDC4
_PDC4  equ     228
	global	_PDC5
_PDC5  equ     229
	global	_PDC6
_PDC6  equ     230
	global	_PEIE
_PEIE  equ     94
	global	_PRSEN
_PRSEN  equ     231
	global	_PSSAC0
_PSSAC0  equ     234
	global	_PSSAC1
_PSSAC1  equ     235
	global	_PSSBD0
_PSSBD0  equ     232
	global	_PSSBD1
_PSSBD1  equ     233
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
	global	_RCIF
_RCIF  equ     101
	global	_RP0
_RP0  equ     29
	global	_RP1
_RP1  equ     30
	global	_RX9
_RX9  equ     198
	global	_RX9D
_RX9D  equ     192
	global	_SPEN
_SPEN  equ     199
	global	_SREN
_SREN  equ     197
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
	global	_T2CKPS0
_T2CKPS0  equ     144
	global	_T2CKPS1
_T2CKPS1  equ     145
	global	_TMR1CS
_TMR1CS  equ     129
	global	_TMR1GE
_TMR1GE  equ     134
	global	_TMR1IF
_TMR1IF  equ     96
	global	_TMR1ON
_TMR1ON  equ     128
	global	_TMR2IF
_TMR2IF  equ     97
	global	_TMR2ON
_TMR2ON  equ     146
	global	_TO
_TO  equ     28
	global	_TOUTPS0
_TOUTPS0  equ     147
	global	_TOUTPS1
_TOUTPS1  equ     148
	global	_TOUTPS2
_TOUTPS2  equ     149
	global	_TOUTPS3
_TOUTPS3  equ     150
	global	_TXIF
_TXIF  equ     100
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
	global	_BAUDCTL
_BAUDCTL  equ     155
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
	global	_PR2
_PR2  equ     146
	global	_SPBRG
_SPBRG  equ     153
	global	_SPBRGH
_SPBRGH  equ     154
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
	global	_TXSTA
_TXSTA  equ     152
	global	_WDTCON
_WDTCON  equ     151
	global	_WPUA
_WPUA  equ     149
	global	_ABDEN
_ABDEN  equ     1240
	global	_ABDOVF
_ABDOVF  equ     1247
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
	global	_BRG0
_BRG0  equ     1224
	global	_BRG1
_BRG1  equ     1225
	global	_BRG10
_BRG10  equ     1234
	global	_BRG11
_BRG11  equ     1235
	global	_BRG12
_BRG12  equ     1236
	global	_BRG13
_BRG13  equ     1237
	global	_BRG14
_BRG14  equ     1238
	global	_BRG15
_BRG15  equ     1239
	global	_BRG16
_BRG16  equ     1243
	global	_BRG2
_BRG2  equ     1226
	global	_BRG3
_BRG3  equ     1227
	global	_BRG4
_BRG4  equ     1228
	global	_BRG5
_BRG5  equ     1229
	global	_BRG6
_BRG6  equ     1230
	global	_BRG7
_BRG7  equ     1231
	global	_BRG8
_BRG8  equ     1232
	global	_BRG9
_BRG9  equ     1233
	global	_BRGH
_BRGH  equ     1218
	global	_C1IE
_C1IE  equ     1133
	global	_C2IE
_C2IE  equ     1134
	global	_CCP1IE
_CCP1IE  equ     1122
	global	_CKE
_CKE  equ     1190
	global	_CSRC
_CSRC  equ     1223
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
	global	_RCIDL
_RCIDL  equ     1246
	global	_RCIE
_RCIE  equ     1125
	global	_RW
_RW  equ     1186
	global	_SBOREN
_SBOREN  equ     1140
	global	_SCKP
_SCKP  equ     1244
	global	_SCS
_SCS  equ     1144
	global	_SENDB
_SENDB  equ     1219
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
	global	_SYNC
_SYNC  equ     1220
	global	_T0CS
_T0CS  equ     1037
	global	_T0SE
_T0SE  equ     1036
	global	_TMR1IE
_TMR1IE  equ     1120
	global	_TMR2IE
_TMR2IE  equ     1121
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
	global	_TRMT
_TRMT  equ     1217
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
	global	_TX9
_TX9  equ     1222
	global	_TX9D
_TX9D  equ     1216
	global	_TXEN
_TXEN  equ     1221
	global	_TXIE
_TXIE  equ     1124
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
	global	_WUE
_WUE  equ     1241
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
	global	_EEADRH
_EEADRH  equ     271
	global	_EEADRL
_EEADRL  equ     269
	global	_EEDAT
_EEDAT  equ     268
	global	_EEDATA
_EEDATA  equ     268
	global	_EEDATH
_EEDATH  equ     270
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
	global	_PSTRCON
_PSTRCON  equ     413
	global	_SRCON
_SRCON  equ     414
	global	_C1SEN
_C1SEN  equ     3317
	global	_C2REN
_C2REN  equ     3316
	global	_EEPGD
_EEPGD  equ     3175
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
	global	_STRA
_STRA  equ     3304
	global	_STRB
_STRB  equ     3305
	global	_STRC
_STRC  equ     3306
	global	_STRD
_STRD  equ     3307
	global	_STRSYNC
_STRSYNC  equ     3308
	global	_WR
_WR  equ     3169
	global	_WREN
_WREN  equ     3170
	global	_WRERR
_WRERR  equ     3171
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase,stringjmp
stringtab:
;	String table - string pointers are 1 byte each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movf	fsr,w
stringdir:
movwf btemp&07Fh
movlw high(stringdir)
movwf pclath
movf btemp&07Fh,w
stringjmp:
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	82	;'R'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	100	;'d'
	retlw	121	;'y'
	retlw	0
psect	strings
	file	"RFID.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_Recd_bit:
       ds      1

_u:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Serial_Init
?_Serial_Init: ;@ 0x0
	global	??_Serial_Init
??_Serial_Init: ;@ 0x0
	global	??_Delay
??_Delay: ;@ 0x0
	global	??_Serial_Receive
??_Serial_Receive: ;@ 0x0
	global	Serial_Receive@temp
Serial_Receive@temp:	; 1 bytes @ 0x0
	ds	1
	global	?_Serial_Receive
?_Serial_Receive: ;@ 0x1
	ds	1
	global	??_Initialize_LCD
??_Initialize_LCD: ;@ 0x2
	global	??_Send_Command_LCD
??_Send_Command_LCD: ;@ 0x2
	global	??_Serial_Transmit
??_Serial_Transmit: ;@ 0x2
	global	??_Display_Char_LCD
??_Display_Char_LCD: ;@ 0x2
	global	??_Clear_LCD
??_Clear_LCD: ;@ 0x2
	global	??_Display_Data_LCD
??_Display_Data_LCD: ;@ 0x2
	global	Delay@val
Delay@val:	; 1 bytes @ 0x2
	ds	1
	global	Delay@u
Delay@u:	; 2 bytes @ 0x3
	ds	2
	global	Delay@v
Delay@v:	; 2 bytes @ 0x5
	ds	2
	global	?_Delay
?_Delay: ;@ 0x7
	global	Display_Char_LCD@a
Display_Char_LCD@a:	; 1 bytes @ 0x7
	global	Send_Command_LCD@comd
Send_Command_LCD@comd:	; 1 bytes @ 0x7
	ds	1
	global	?_Send_Command_LCD
?_Send_Command_LCD: ;@ 0x8
	global	?_Clear_LCD
?_Clear_LCD: ;@ 0x8
	global	?_Initialize_LCD
?_Initialize_LCD: ;@ 0x8
	global	?_Display_Data_LCD
?_Display_Data_LCD: ;@ 0x8
	global	??_main
??_main: ;@ 0x8
	global	?_Serial_Transmit
?_Serial_Transmit: ;@ 0x8
	global	?_Display_Char_LCD
?_Display_Char_LCD: ;@ 0x8
	ds	1
	global	?_main
?_main: ;@ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	Serial_Transmit@data1
Serial_Transmit@data1:	; 1 bytes @ 0x0
	global	Display_Data_LCD@mdata
Display_Data_LCD@mdata:	; 1 bytes @ 0x0
	ds	1
	global	Display_Data_LCD@x
Display_Data_LCD@x:	; 2 bytes @ 0x1
	ds	2
;Data sizes: Strings 13, constant 0, data 0, bss 2, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      9      11
; BANK0           80      3       3
; BANK1           80      0       0
; BANK2           80      0       0


;Pointer list with targets:

;Display_Data_LCD@mdata	PTR unsigned char  size(1); Largest target is 13
;		 -> STR_1(CODE[13]), 


;Main: autosize = 0, tempsize = 1, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0 1756   0.00
;                                    8 COMMO    1
;     _Initialize_LCD
;   _Send_Command_LCD
;              _Delay
;   _Display_Data_LCD
;        _Serial_Init
;     _Serial_Receive
;    _Serial_Transmit
;          _Clear_LCD
;   _Display_Char_LCD
;  _Serial_Init                                       0    0    0   0.00
;  _Display_Data_LCD                                  3    0  234   0.00
;                                    0 BANK0    3
;   _Display_Char_LCD
;  _Serial_Receive                                    1    0   10   0.00
;                                    0 COMMO    1
;  _Initialize_LCD                                    0    0  480   0.00
;   _Send_Command_LCD
;              _Delay
;          _Clear_LCD
;  _Serial_Transmit                                   1    0  420   0.00
;                                    0 BANK0    1
;   _Send_Command_LCD
;              _Delay
;   _Display_Char_LCD
;    _Display_Char_LCD                                1    0  132   0.00
;                                    7 COMMO    1
;              _Delay
;    _Clear_LCD                                       0    0  240   0.00
;   _Send_Command_LCD
;              _Delay
;      _Send_Command_LCD                              1    0  132   0.00
;                                    7 COMMO    1
;              _Delay
;        _Delay                                       7    0  108   0.00
;                                    0 COMMO    7
; Estimated maximum call depth 4
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      9       B       1       78.6%
;BITSFR0              0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;ABS                  0      0       E       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50      3       3       5        3.8%
;SFR2                 0      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK2            50      0       0       8        0.0%
;BANK2               50      0       0       9        0.0%
;DATA                 0      0       E      10        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 8 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\main.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         1       0       0       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_Initialize_LCD
;		_Send_Command_LCD
;		_Delay
;		_Display_Data_LCD
;		_Serial_Init
;		_Serial_Receive
;		_Serial_Transmit
;		_Clear_LCD
;		_Display_Char_LCD
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\main.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 7: void main()
;main.c: 8: {
	
_main:	
	opt stack 7
; Regs used in _main: [allreg]
	line	9
	
l30001287:	
;main.c: 9: ANSEL=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h
	line	10
;main.c: 10: ANSELH=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(287)^0100h
	line	11
;main.c: 11: TRISA=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	12
;main.c: 12: TRISB=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(134)^080h	;volatile
	line	13
;main.c: 13: TRISC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(135)^080h	;volatile
	
l30001288:	
	line	14
;main.c: 14: Initialize_LCD();
	fcall	_Initialize_LCD
	
l30001289:	
	line	15
;main.c: 15: Send_Command_LCD(0x80);
	movlw	(080h)
	fcall	_Send_Command_LCD
	
l30001290:	
	line	16
;main.c: 16: Delay(5);
	movlw	(05h)
	fcall	_Delay
	
l30001291:	
	line	17
;main.c: 17: Display_Data_LCD("LCD is Ready");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Display_Data_LCD
	
l30001292:	
	line	18
;main.c: 18: Delay(5);
	movlw	(05h)
	fcall	_Delay
	
l30001293:	
	line	19
;main.c: 19: Send_Command_LCD(0xC0);
	movlw	(0C0h)
	fcall	_Send_Command_LCD
	
l30001294:	
	line	20
;main.c: 20: Delay(5);
	movlw	(05h)
	fcall	_Delay
	
l30001295:	
	line	21
;main.c: 21: Serial_Init();
	fcall	_Serial_Init
	line	22
;main.c: 22: for(u=0;u<33;u++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_u)
	
l30001298:	
	line	24
;main.c: 23: {
;main.c: 24: Recd_bit=Serial_Receive();
	fcall	_Serial_Receive
	movwf	(_Recd_bit)
	line	25
;main.c: 25: Serial_Transmit(Recd_bit);
	movf	(_Recd_bit),w
	fcall	_Serial_Transmit
	line	26
;main.c: 26: Clear_LCD();
	fcall	_Clear_LCD
	line	27
;main.c: 27: Send_Command_LCD(0x80);
	movlw	(080h)
	fcall	_Send_Command_LCD
	line	28
;main.c: 28: Delay(5);
	movlw	(05h)
	fcall	_Delay
	line	29
;main.c: 29: Display_Char_LCD(Recd_bit);
	movf	(_Recd_bit),w
	fcall	_Display_Char_LCD
	
l30001299:	
	line	30
;main.c: 30: if(u>15)
	movlw	(010h)
	subwf	(_u),w
	skipc
	goto	u151
	goto	u150
u151:
	goto	l30001301
u150:
	
l30001300:	
	line	32
;main.c: 31: {
;main.c: 32: Send_Command_LCD(0xC0);
	movlw	(0C0h)
	fcall	_Send_Command_LCD
	line	33
;main.c: 33: Delay(10);
	movlw	(0Ah)
	fcall	_Delay
	line	34
;main.c: 34: Display_Char_LCD(Recd_bit);
	movf	(_Recd_bit),w
	fcall	_Display_Char_LCD
	
l30001301:	
	line	22
	movlw	(01h)
	movwf	(??_main+0+0)
	movf	(??_main+0+0),w
	addwf	(_u),f
	
l30001302:	
	movlw	(021h)
	subwf	(_u),w
	skipc
	goto	u161
	goto	u160
u161:
	goto	l30001298
u160:
	
l17:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	37
	signat	_main,88
	global	_Serial_Init
psect	text71,local,class=CODE,delta=2
global __ptext71
__ptext71:

; *************** function _Serial_Init *****************
; Defined at:
;		line 9 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\serial.c"
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
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text71
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\serial.c"
	line	9
	global	__size_of_Serial_Init
	__size_of_Serial_Init	equ	__end_of_Serial_Init-_Serial_Init
;serial.c: 8: void Serial_Init()
;serial.c: 9: {
	
_Serial_Init:	
	opt stack 6
; Regs used in _Serial_Init: [wreg+status,2+status,0]
	line	10
	
l30001216:	
;serial.c: 10: ANSEL=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(286)^0100h
	line	11
;serial.c: 11: ANSELH=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(287)^0100h
	
l30001217:	
	line	12
;serial.c: 12: OSCCON=0x77;
	movlw	(077h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(143)^080h	;volatile
	
l30001218:	
	line	13
;serial.c: 13: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	
l30001219:	
	line	14
;serial.c: 14: BRGH=1;
	bsf	(1218/8)^080h,(1218)&7
	
l30001220:	
	line	15
;serial.c: 15: BRG16=1;
	bsf	(1243/8)^080h,(1243)&7
	
l30001221:	
	line	16
;serial.c: 16: SPBRG=16;
	movlw	(010h)
	movwf	(153)^080h
	
l30001222:	
	line	17
;serial.c: 17: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7
	
l30001223:	
	line	18
;serial.c: 18: TXEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Init
	__end_of_Serial_Init:
; =============== function _Serial_Init ends ============

psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
	line	19
	signat	_Serial_Init,88
	global	_Display_Data_LCD

; *************** function _Display_Data_LCD *****************
; Defined at:
;		line 35 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
; Parameters:    Size  Location     Type
;  mdata           1    wreg     PTR unsigned char 
;		 -> STR_1(13), 
; Auto vars:     Size  Location     Type
;  mdata           1    0[BANK0 ] PTR unsigned char 
;		 -> STR_1(13), 
;  x               2    1[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       3       0       0
;      Temp:     0
;      Total:    3
; This function calls:
;		_Display_Char_LCD
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text72
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
	line	35
	global	__size_of_Display_Data_LCD
	__size_of_Display_Data_LCD	equ	__end_of_Display_Data_LCD-_Display_Data_LCD
;LCD.c: 34: void Display_Data_LCD(unsigned char *mdata)
;LCD.c: 35: {
	
_Display_Data_LCD:	
	opt stack 6
; Regs used in _Display_Data_LCD: [wreg+status,2+status,0+pclath+cstack]
;Display_Data_LCD@mdata stored from wreg
	line	37
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Display_Data_LCD@mdata)
	
l30001307:	
;LCD.c: 36: unsigned int x;
;LCD.c: 37: for(x=0;mdata[x]!=0;x++)
	movlw	low(0)
	movwf	(Display_Data_LCD@x)
	movlw	high(0)
	movwf	((Display_Data_LCD@x))+1
	goto	l30001310
	
l30001308:	
	line	39
;LCD.c: 38: {
;LCD.c: 39: Display_Char_LCD(mdata[x]);
	movf	(Display_Data_LCD@mdata),w
	addwf	(Display_Data_LCD@x),w
	FNCALL _Display_Data_LCD,stringtab
	fcall	stringdir
	fcall	_Display_Char_LCD
	
l30001309:	
	line	37
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(Display_Data_LCD@x),f
	skipnc
	incf	(Display_Data_LCD@x+1),f
	movlw	high(01h)
	addwf	(Display_Data_LCD@x+1),f
	
l30001310:	
	movf	(Display_Data_LCD@mdata),w
	addwf	(Display_Data_LCD@x),w
	FNCALL _Display_Data_LCD,stringtab
	fcall	stringdir
	iorlw	0
	skipz
	goto	u171
	goto	u170
u171:
	goto	l30001308
u170:
	
l3:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Data_LCD
	__end_of_Display_Data_LCD:
; =============== function _Display_Data_LCD ends ============

psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:
	line	41
	signat	_Display_Data_LCD,4216
	global	_Serial_Receive

; *************** function _Serial_Receive *****************
; Defined at:
;		line 22 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\serial.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  temp            1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		Nothing
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text73
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\serial.c"
	line	22
	global	__size_of_Serial_Receive
	__size_of_Serial_Receive	equ	__end_of_Serial_Receive-_Serial_Receive
;serial.c: 21: unsigned char Serial_Receive()
;serial.c: 22: {
	
_Serial_Receive:	
	opt stack 6
; Regs used in _Serial_Receive: [wreg+status,2+status,0]
	line	23
	
l30001224:	
;serial.c: 23: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(196/8),(196)&7
	
l30001225:	
	
l24:	
	line	25
	btfss	(101/8),(101)&7
	goto	u61
	goto	u60
u61:
	goto	l24
u60:
	
l30001226:	
	line	26
;serial.c: 26: temp=RCREG;
	movf	(26),w	;volatile
	movwf	(Serial_Receive@temp)
	
l30001227:	
	line	27
;serial.c: 27: RCIF=0;
	bcf	(101/8),(101)&7
	
l30001228:	
	line	28
;serial.c: 28: CREN=0;
	bcf	(196/8),(196)&7
	line	29
;serial.c: 29: return(temp);
	movf	(Serial_Receive@temp),w
	
l23:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Receive
	__end_of_Serial_Receive:
; =============== function _Serial_Receive ends ============

psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:
	line	30
	signat	_Serial_Receive,89
	global	_Initialize_LCD

; *************** function _Initialize_LCD *****************
; Defined at:
;		line 11 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_Send_Command_LCD
;		_Delay
;		_Clear_LCD
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text74
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
	line	11
	global	__size_of_Initialize_LCD
	__size_of_Initialize_LCD	equ	__end_of_Initialize_LCD-_Initialize_LCD
;LCD.c: 10: void Initialize_LCD()
;LCD.c: 11: {
	
_Initialize_LCD:	
	opt stack 6
; Regs used in _Initialize_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l30001316:	
;LCD.c: 12: RB4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	13
;LCD.c: 13: RB5=0;
	bcf	(53/8),(53)&7
	line	14
;LCD.c: 14: RB6=0;
	bcf	(54/8),(54)&7
	
l30001317:	
	line	16
;LCD.c: 16: Send_Command_LCD(0x38);
	movlw	(038h)
	fcall	_Send_Command_LCD
	line	17
;LCD.c: 17: Delay(1);
	movlw	(01h)
	fcall	_Delay
	line	18
;LCD.c: 18: Send_Command_LCD(0x0C);
	movlw	(0Ch)
	fcall	_Send_Command_LCD
	line	19
;LCD.c: 19: Delay(1);
	movlw	(01h)
	fcall	_Delay
	line	20
;LCD.c: 20: Clear_LCD();
	fcall	_Clear_LCD
	line	21
;LCD.c: 21: Delay(1);
	movlw	(01h)
	fcall	_Delay
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_Initialize_LCD
	__end_of_Initialize_LCD:
; =============== function _Initialize_LCD ends ============

psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	line	22
	signat	_Initialize_LCD,88
	global	_Serial_Transmit

; *************** function _Serial_Transmit *****************
; Defined at:
;		line 33 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\serial.c"
; Parameters:    Size  Location     Type
;  data1           1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data1           1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       1       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_Send_Command_LCD
;		_Delay
;		_Display_Char_LCD
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text75
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\serial.c"
	line	33
	global	__size_of_Serial_Transmit
	__size_of_Serial_Transmit	equ	__end_of_Serial_Transmit-_Serial_Transmit
;serial.c: 32: void Serial_Transmit(unsigned char data1)
;serial.c: 33: {
	
_Serial_Transmit:	
	opt stack 6
; Regs used in _Serial_Transmit: [wreg+status,2+status,0+pclath+cstack]
;Serial_Transmit@data1 stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Serial_Transmit@data1)
	
l30001285:	
	line	34
;serial.c: 34: TXREG=data1;
	movf	(Serial_Transmit@data1),w
	movwf	(25)	;volatile
	
l28:	
	line	35
	btfss	(100/8),(100)&7
	goto	u141
	goto	u140
u141:
	goto	l28
u140:
	
l30001286:	
	line	36
;serial.c: 36: Send_Command_LCD(0xC0);
	movlw	(0C0h)
	fcall	_Send_Command_LCD
	line	37
;serial.c: 37: Delay(10);
	movlw	(0Ah)
	fcall	_Delay
	line	38
;serial.c: 38: Display_Char_LCD(data1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Serial_Transmit@data1),w
	fcall	_Display_Char_LCD
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_Serial_Transmit
	__end_of_Serial_Transmit:
; =============== function _Serial_Transmit ends ============

psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:
	line	39
	signat	_Serial_Transmit,4216
	global	_Display_Char_LCD

; *************** function _Display_Char_LCD *****************
; Defined at:
;		line 44 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
; Parameters:    Size  Location     Type
;  a               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  a               1    7[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_Delay
; This function is called by:
;		_Display_Data_LCD
;		_main
;		_Serial_Transmit
; This function uses a non-reentrant model
; 
psect	text76
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
	line	44
	global	__size_of_Display_Char_LCD
	__size_of_Display_Char_LCD	equ	__end_of_Display_Char_LCD-_Display_Char_LCD
;LCD.c: 43: void Display_Char_LCD(unsigned char a)
;LCD.c: 44: {
	
_Display_Char_LCD:	
	opt stack 5
; Regs used in _Display_Char_LCD: [wreg+status,2+status,0+pclath+cstack]
;Display_Char_LCD@a stored from wreg
	movwf	(Display_Char_LCD@a)
	
l30001303:	
	line	45
;LCD.c: 45: RB4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	line	46
;LCD.c: 46: RB5=0;
	bcf	(53/8),(53)&7
	line	47
;LCD.c: 47: RB6=1;
	bsf	(54/8),(54)&7
	
l30001304:	
	line	48
;LCD.c: 48: PORTC=a;
	movf	(Display_Char_LCD@a),w
	movwf	(7)	;volatile
	
l30001305:	
	line	49
;LCD.c: 49: Delay(10);
	movlw	(0Ah)
	fcall	_Delay
	
l30001306:	
	line	50
;LCD.c: 50: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	
l8:	
	return
	opt stack 0
GLOBAL	__end_of_Display_Char_LCD
	__end_of_Display_Char_LCD:
; =============== function _Display_Char_LCD ends ============

psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:
	line	51
	signat	_Display_Char_LCD,4216
	global	_Clear_LCD

; *************** function _Clear_LCD *****************
; Defined at:
;		line 54 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_Send_Command_LCD
;		_Delay
; This function is called by:
;		_Initialize_LCD
;		_main
; This function uses a non-reentrant model
; 
psect	text77
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
	line	54
	global	__size_of_Clear_LCD
	__size_of_Clear_LCD	equ	__end_of_Clear_LCD-_Clear_LCD
;LCD.c: 53: void Clear_LCD()
;LCD.c: 54: {
	
_Clear_LCD:	
	opt stack 5
; Regs used in _Clear_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l30001318:	
;LCD.c: 55: Send_Command_LCD(0x01);
	movlw	(01h)
	fcall	_Send_Command_LCD
	line	56
;LCD.c: 56: Delay(1);
	movlw	(01h)
	fcall	_Delay
	line	57
;LCD.c: 57: Send_Command_LCD(0x02);
	movlw	(02h)
	fcall	_Send_Command_LCD
	line	58
;LCD.c: 58: Delay(1);
	movlw	(01h)
	fcall	_Delay
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_Clear_LCD
	__end_of_Clear_LCD:
; =============== function _Clear_LCD ends ============

psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	line	59
	signat	_Clear_LCD,88
	global	_Send_Command_LCD

; *************** function _Send_Command_LCD *****************
; Defined at:
;		line 25 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
; Parameters:    Size  Location     Type
;  comd            1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  comd            1    7[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         1       0       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_Delay
; This function is called by:
;		_Initialize_LCD
;		_Clear_LCD
;		_main
;		_Serial_Transmit
; This function uses a non-reentrant model
; 
psect	text78
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
	line	25
	global	__size_of_Send_Command_LCD
	__size_of_Send_Command_LCD	equ	__end_of_Send_Command_LCD-_Send_Command_LCD
;LCD.c: 24: void Send_Command_LCD(unsigned char comd)
;LCD.c: 25: {
	
_Send_Command_LCD:	
	opt stack 4
; Regs used in _Send_Command_LCD: [wreg+status,2+status,0+pclath+cstack]
;Send_Command_LCD@comd stored from wreg
	movwf	(Send_Command_LCD@comd)
	
l30001311:	
	line	26
;LCD.c: 26: RB4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	27
;LCD.c: 27: RB5=0;
	bcf	(53/8),(53)&7
	
l30001312:	
	line	28
;LCD.c: 28: PORTC=comd;
	movf	(Send_Command_LCD@comd),w
	movwf	(7)	;volatile
	
l30001313:	
	line	29
;LCD.c: 29: RB6=1;
	bsf	(54/8),(54)&7
	
l30001314:	
	line	30
;LCD.c: 30: Delay(1);
	movlw	(01h)
	fcall	_Delay
	
l30001315:	
	line	31
;LCD.c: 31: RB6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	
l2:	
	return
	opt stack 0
GLOBAL	__end_of_Send_Command_LCD
	__end_of_Send_Command_LCD:
; =============== function _Send_Command_LCD ends ============

psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:
	line	32
	signat	_Send_Command_LCD,4216
	global	_Delay

; *************** function _Delay *****************
; Defined at:
;		line 62 in file "D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
; Parameters:    Size  Location     Type
;  val             1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  val             1    2[COMMON] unsigned char 
;  v               2    5[COMMON] unsigned int 
;  u               2    3[COMMON] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         7       0       0       0
;      Temp:     2
;      Total:    7
; This function calls:
;		Nothing
; This function is called by:
;		_Initialize_LCD
;		_Send_Command_LCD
;		_Display_Char_LCD
;		_Clear_LCD
;		_main
;		_Serial_Transmit
; This function uses a non-reentrant model
; 
psect	text79
	file	"D:\Amit\E-Projects\PIC Projects\RFID\RFID Modular\LCD.c"
	line	62
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
;LCD.c: 61: void Delay(unsigned char val)
;LCD.c: 62: {
	
_Delay:	
	opt stack 3
; Regs used in _Delay: [wreg]
;Delay@val stored from wreg
	line	64
	movwf	(Delay@val)
	
l30001319:	
;LCD.c: 63: unsigned int u,v;
;LCD.c: 64: for(u=0;u<val;u++)
	movlw	low(0)
	movwf	(Delay@u)
	movlw	high(0)
	movwf	((Delay@u))+1
	goto	l14
	
l11:	
	line	65
;LCD.c: 65: for(v=0;v<1000;v++);
	movlw	low(0)
	movwf	(Delay@v)
	movlw	high(0)
	movwf	((Delay@v))+1
	
l30001322:	
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
	goto	u181
	goto	u180
u181:
	goto	l30001322
u180:
	
l30001323:	
	line	64
	movlw	low(01h)
	addwf	(Delay@u),f
	skipnc
	incf	(Delay@u+1),f
	movlw	high(01h)
	addwf	(Delay@u+1),f
	
l14:	
	movf	(Delay@val),w
	movwf	(??_Delay+0+0)
	clrf	(??_Delay+0+0+1)
	movf	1+(??_Delay+0+0),w
	subwf	(Delay@u+1),w
	skipz
	goto	u195
	movf	0+(??_Delay+0+0),w
	subwf	(Delay@u),w
u195:
	skipc
	goto	u191
	goto	u190
u191:
	goto	l11
u190:
	
l10:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
; =============== function _Delay ends ============

psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:
	line	66
	signat	_Delay,4216
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
