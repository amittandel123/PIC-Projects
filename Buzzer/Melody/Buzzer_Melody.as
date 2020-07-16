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
;COMMON:	_main->_PlayNote
;COMMON:	_PlayNote->___lwdiv
;BANK0:	_PlayNote->___lwdiv
;BANK0:	_main->_PlayNote
;COMMON:	_PlayNote->___lwdiv
;BANK0:	_PlayNote->___lwdiv
	FNCALL	_main,_InitTimer
	FNCALL	_main,_PlayNote
	FNCALL	_PlayNote,___lwdiv
	FNROOT	_main
	FNCALL	intlevel1,_interr
	global	intlevel1
	FNROOT	intlevel1
	global	main@Melody
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
	file	"D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
	line	61
main@Melody:
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	064h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	065h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	066h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	066h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	036h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	061h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	063h
	retlw	036h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	066h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	061h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	063h
	retlw	036h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	034h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	066h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	066h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	070h
	retlw	02Ch
	retlw	038h
	retlw	061h
	retlw	023h
	retlw	035h
	retlw	02Ch
	retlw	038h
	retlw	067h
	retlw	035h
	retlw	02Ch
	retlw	031h
	retlw	064h
	retlw	035h
	retlw	0
	global	main@Melody
	global	_TMR0Count
	global	_beep
	global	_preloadTMR1H
	global	_preloadTMR1L
	global	_beat_speed
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_beat_speed:
       ds      1

	global	_ADCON0
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
	file	"Buzzer_Melody.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_TMR0Count:
       ds      2

_beep:
       ds      1

_preloadTMR1H:
       ds      1

_preloadTMR1L:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_InitTimer
?_InitTimer: ;@ 0x0
	global	??_InitTimer
??_InitTimer: ;@ 0x0
	global	??___lwdiv
??___lwdiv: ;@ 0x0
	ds	1
	global	??_PlayNote
??_PlayNote: ;@ 0x1
	ds	2
	global	??_main
??_main: ;@ 0x3
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x1
	ds	2
	global	?___lwdiv
?___lwdiv: ;@ 0x3
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x3
	ds	2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x5
	ds	2
	global	?_PlayNote
?_PlayNote: ;@ 0x7
	global	PlayNote@note
PlayNote@note:	; 2 bytes @ 0x7
	ds	2
	global	PlayNote@octave
PlayNote@octave:	; 1 bytes @ 0x9
	ds	1
	global	PlayNote@duration
PlayNote@duration:	; 2 bytes @ 0xA
	ds	2
	global	main@defaultoctave
main@defaultoctave:	; 2 bytes @ 0xC
	ds	2
	global	main@defaultduration
main@defaultduration:	; 2 bytes @ 0xE
	ds	2
	global	main@octave
main@octave:	; 2 bytes @ 0x10
	ds	2
	global	main@note
main@note:	; 2 bytes @ 0x12
	ds	2
	global	main@duration
main@duration:	; 2 bytes @ 0x14
	ds	2
	global	main@pointer
main@pointer:	; 2 bytes @ 0x16
	ds	2
	global	??_interr
??_interr: ;@ 0x18
	global	?_main
?_main: ;@ 0x18
	ds	4
	global	?_interr
?_interr: ;@ 0x1C
;Data sizes: Strings 0, constant 186, data 0, bss 5, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      5      11
; BANK0           80     28      28
; BANK1           80      0       0
; BANK2           80      0       0


;Pointer list with targets:

;?___lwdiv	unsigned int  size(1); Largest target is 0


;Main: autosize = 0, tempsize = 2, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                               14    0 1215   0.00
;                                    3 COMMO    2
;                                   12 BANK0   12
;          _InitTimer
;           _PlayNote
;  _PlayNote                                          2    5  468   0.00
;                                    1 COMMO    2
;                                    7 BANK0    5
;            ___lwdiv
;  _InitTimer                                         0    0    0   0.00
;    ___lwdiv                                         4    4  192   0.00
;                                    0 COMMO    1
;                                    0 BANK0    7
; Estimated maximum call depth 2
;_interr                                              4    0    0   0.00
;                                   24 BANK0    4
; Estimated maximum call depth 0
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      5       B       1       78.6%
;BITSFR0              0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;ABS                  0      0      27       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50     1C      1C       5       35.0%
;SFR2                 0      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK2            50      0       0       8        0.0%
;BANK2               50      0       0       9        0.0%
;DATA                 0      0      27      10        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 26 in file "D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  pointer         2   22[BANK0 ] unsigned int 
;  duration        2   20[BANK0 ] unsigned int 
;  note            2   18[BANK0 ] unsigned int 
;  octave          2   16[BANK0 ] unsigned int 
;  defaultoctav    2   12[BANK0 ] unsigned int 
;  defaultdurat    2   14[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         2      12       0       0
;      Temp:     2
;      Total:   14
; This function calls:
;		_InitTimer
;		_PlayNote
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
	line	26
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
	opt stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	27
	
l30000699:	
;Buzzer_Melody.c: 27: unsigned int pointer = 0;
	movlw	low(0)
	movwf	(main@pointer)
	movlw	high(0)
	movwf	((main@pointer))+1
	line	29
;Buzzer_Melody.c: 29: unsigned int duration = 0;
	movlw	low(0)
	movwf	(main@duration)
	movlw	high(0)
	movwf	((main@duration))+1
	line	30
;Buzzer_Melody.c: 30: unsigned int note = 0;
	movlw	low(0)
	movwf	(main@note)
	movlw	high(0)
	movwf	((main@note))+1
	line	31
;Buzzer_Melody.c: 31: unsigned int defaultoctave = 0;
	movlw	low(0)
	movwf	(main@defaultoctave)
	movlw	high(0)
	movwf	((main@defaultoctave))+1
	line	32
;Buzzer_Melody.c: 32: unsigned int defaultduration = 0;
	movlw	low(0)
	movwf	(main@defaultduration)
	movlw	high(0)
	movwf	((main@defaultduration))+1
	line	62
;Buzzer_Melody.c: 61: const unsigned char static Melody[] = {"16d5,16d#5,16d5,16d#5,16d5,16d#5,16d5,16d5,16d#5,16e5,16f5,16f#5,16g5,8g5,4p,8g5,4p,8a#5,8p,8c6,8p,8g5,4p,8g5,4p,8f5,8p,8p,8g5,4p,4p,8a#5,8p,8c6,8p,8g5,4p,4p,8f5,8p,8f#5,8p,8a#5,8g5,1d5"};
;Buzzer_Melody.c: 62: defaultoctave = 6;
	movlw	low(06h)
	movwf	(main@defaultoctave)
	movlw	high(06h)
	movwf	((main@defaultoctave))+1
	line	63
;Buzzer_Melody.c: 63: defaultduration = 4;
	movlw	low(04h)
	movwf	(main@defaultduration)
	movlw	high(04h)
	movwf	((main@defaultduration))+1
	line	64
;Buzzer_Melody.c: 64: beat_speed = 150;
	movlw	(096h)
	movwf	(_beat_speed)
	
l30000700:	
	line	67
;Buzzer_Melody.c: 67: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	
l30000701:	
	line	69
;Buzzer_Melody.c: 69: beep = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_beep)
	
l30000702:	
	line	71
;Buzzer_Melody.c: 71: InitTimer();
	fcall	_InitTimer
	
l30000703:	
	line	72
;Buzzer_Melody.c: 72: PEIE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(94/8),(94)&7
	
l30000704:	
	line	73
;Buzzer_Melody.c: 73: GIE = 1;
	bsf	(95/8),(95)&7
	
l30000705:	
	line	76
;Buzzer_Melody.c: 76: octave = defaultoctave;
	movf	(main@defaultoctave+1),w
	clrf	(main@octave+1)
	addwf	(main@octave+1)
	movf	(main@defaultoctave),w
	clrf	(main@octave)
	addwf	(main@octave)

	
l30000706:	
	line	78
;Buzzer_Melody.c: 78: if ((Melody[pointer] == '3') && (Melody[pointer+1] == '2'))
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	033h
	skipz
	goto	u881
	goto	u880
u881:
	goto	l30000709
u880:
	
l30000707:	
	movf	(main@pointer),w
	addlw	01h
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	032h
	skipz
	goto	u891
	goto	u890
u891:
	goto	l30000709
u890:
	
l30000708:	
	line	80
;Buzzer_Melody.c: 79: {
;Buzzer_Melody.c: 80: duration = 32;
	movlw	low(020h)
	movwf	(main@duration)
	movlw	high(020h)
	movwf	((main@duration))+1
	line	81
;Buzzer_Melody.c: 81: pointer += 2;
	movlw	low(02h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(02h)
	addwf	(main@pointer+1),f
	goto	l30000721
	
l30000709:	
	line	83
;Buzzer_Melody.c: 83: else if ((Melody[pointer] == '1') && (Melody[pointer+1] == '6'))
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	031h
	skipz
	goto	u901
	goto	u900
u901:
	goto	l30000712
u900:
	
l30000710:	
	movf	(main@pointer),w
	addlw	01h
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	036h
	skipz
	goto	u911
	goto	u910
u911:
	goto	l30000712
u910:
	
l30000711:	
	line	85
;Buzzer_Melody.c: 84: {
;Buzzer_Melody.c: 85: duration = 16;
	movlw	low(010h)
	movwf	(main@duration)
	movlw	high(010h)
	movwf	((main@duration))+1
	line	86
;Buzzer_Melody.c: 86: pointer += 2;
	movlw	low(02h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(02h)
	addwf	(main@pointer+1),f
	goto	l30000721
	
l30000712:	
	line	88
;Buzzer_Melody.c: 88: else if (Melody[pointer] == '8')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	038h
	skipz
	goto	u921
	goto	u920
u921:
	goto	l30000714
u920:
	
l30000713:	
	line	90
;Buzzer_Melody.c: 89: {
;Buzzer_Melody.c: 90: duration = 8;
	movlw	low(08h)
	movwf	(main@duration)
	movlw	high(08h)
	movwf	((main@duration))+1
	line	91
;Buzzer_Melody.c: 91: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000721
	
l30000714:	
	line	93
;Buzzer_Melody.c: 93: else if (Melody[pointer] == '4')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	034h
	skipz
	goto	u931
	goto	u930
u931:
	goto	l30000716
u930:
	
l30000715:	
	line	95
;Buzzer_Melody.c: 94: {
;Buzzer_Melody.c: 95: duration = 4;
	movlw	low(04h)
	movwf	(main@duration)
	movlw	high(04h)
	movwf	((main@duration))+1
	line	96
;Buzzer_Melody.c: 96: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000721
	
l30000716:	
	line	98
;Buzzer_Melody.c: 98: else if (Melody[pointer] == '2')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	032h
	skipz
	goto	u941
	goto	u940
u941:
	goto	l30000718
u940:
	
l30000717:	
	line	100
;Buzzer_Melody.c: 99: {
;Buzzer_Melody.c: 100: duration = 2;
	movlw	low(02h)
	movwf	(main@duration)
	movlw	high(02h)
	movwf	((main@duration))+1
	line	101
;Buzzer_Melody.c: 101: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000721
	
l30000718:	
	line	103
;Buzzer_Melody.c: 103: else if (Melody[pointer] == '1')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	031h
	skipz
	goto	u951
	goto	u950
u951:
	goto	l30000720
u950:
	
l30000719:	
	line	105
;Buzzer_Melody.c: 104: {
;Buzzer_Melody.c: 105: duration = 1;
	movlw	low(01h)
	movwf	(main@duration)
	movlw	high(01h)
	movwf	((main@duration))+1
	line	106
;Buzzer_Melody.c: 106: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000721
	
l30000720:	
	line	108
;Buzzer_Melody.c: 108: else duration = defaultduration;
	movf	(main@defaultduration+1),w
	clrf	(main@duration+1)
	addwf	(main@duration+1)
	movf	(main@defaultduration),w
	clrf	(main@duration)
	addwf	(main@duration)

	
l30000721:	
	line	110
;Buzzer_Melody.c: 110: if (Melody[pointer + 1] == '#')
	movf	(main@pointer),w
	addlw	01h
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	023h
	skipz
	goto	u961
	goto	u960
u961:
	goto	l30000740
u960:
	goto	l30000729
	
l30000723:	
	line	115
	movlw	low(029E6h)
	movwf	(main@note)
	movlw	high(029E6h)
	movwf	((main@note))+1
	goto	l30000730
	
l30000724:	
	line	117
	movlw	low(0233Bh)
	movwf	(main@note)
	movlw	high(0233Bh)
	movwf	((main@note))+1
	goto	l30000730
	
l30000725:	
	line	119
	movlw	low(01F63h)
	movwf	(main@note)
	movlw	high(01F63h)
	movwf	((main@note))+1
	goto	l30000730
	
l30000726:	
	line	121
	movlw	low(01A65h)
	movwf	(main@note)
	movlw	high(01A65h)
	movwf	((main@note))+1
	goto	l30000730
	
l30000727:	
	line	123
	movlw	low(01788h)
	movwf	(main@note)
	movlw	high(01788h)
	movwf	((main@note))+1
	goto	l30000730
	
l30000729:	
	line	113
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
		xorlw	97^0
	skipnz
	goto	l30000723
	xorlw	99^97
	skipnz
	goto	l30000724
	xorlw	100^99
	skipnz
	goto	l30000725
	xorlw	102^100
	skipnz
	goto	l30000726
	xorlw	103^102
	skipnz
	goto	l30000727
	goto	l30000730

	
l30000730:	
	line	126
;Buzzer_Melody.c: 126: pointer +=2;
	movlw	low(02h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(02h)
	addwf	(main@pointer+1),f
	goto	l30000742
	
l30000731:	
	line	133
	movlw	low(02C64h)
	movwf	(main@note)
	movlw	high(02C64h)
	movwf	((main@note))+1
	goto	l30000741
	
l30000732:	
	line	135
	movlw	low(0278Bh)
	movwf	(main@note)
	movlw	high(0278Bh)
	movwf	((main@note))+1
	goto	l30000741
	
l30000733:	
	line	137
	movlw	low(02553h)
	movwf	(main@note)
	movlw	high(02553h)
	movwf	((main@note))+1
	goto	l30000741
	
l30000734:	
	line	139
	movlw	low(02141h)
	movwf	(main@note)
	movlw	high(02141h)
	movwf	((main@note))+1
	goto	l30000741
	
l30000735:	
	line	141
	movlw	low(01DA0h)
	movwf	(main@note)
	movlw	high(01DA0h)
	movwf	((main@note))+1
	goto	l30000741
	
l30000736:	
	line	143
	movlw	low(01BF6h)
	movwf	(main@note)
	movlw	high(01BF6h)
	movwf	((main@note))+1
	goto	l30000741
	
l30000737:	
	line	145
	movlw	low(018EAh)
	movwf	(main@note)
	movlw	high(018EAh)
	movwf	((main@note))+1
	goto	l30000741
	
l30000738:	
	line	147
	movlw	low(0)
	movwf	(main@note)
	movlw	high(0)
	movwf	((main@note))+1
	goto	l30000741
	
l30000740:	
	line	131
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
		xorlw	97^0
	skipnz
	goto	l30000731
	xorlw	98^97
	skipnz
	goto	l30000732
	xorlw	99^98
	skipnz
	goto	l30000733
	xorlw	100^99
	skipnz
	goto	l30000734
	xorlw	101^100
	skipnz
	goto	l30000735
	xorlw	102^101
	skipnz
	goto	l30000736
	xorlw	103^102
	skipnz
	goto	l30000737
	xorlw	112^103
	skipnz
	goto	l30000738
	goto	l30000741

	
l30000741:	
	line	150
;Buzzer_Melody.c: 150: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	
l30000742:	
	line	153
;Buzzer_Melody.c: 151: }
;Buzzer_Melody.c: 153: if (Melody[pointer] == '.')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u971
	goto	u970
u971:
	goto	l30000745
u970:
	
l30000743:	
	line	156
;Buzzer_Melody.c: 154: {
;Buzzer_Melody.c: 156: duration = duration + 128;
	movf	(main@duration),w
	addlw	low(080h)
	movwf	(main@duration)
	movf	(main@duration+1),w
	skipnc
	addlw	1
	addlw	high(080h)
	movwf	1+(main@duration)
	
l30000744:	
	line	157
;Buzzer_Melody.c: 157: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	
l30000745:	
	line	160
;Buzzer_Melody.c: 158: }
;Buzzer_Melody.c: 160: if (Melody[pointer] == '4')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	034h
	skipz
	goto	u981
	goto	u980
u981:
	goto	l30000747
u980:
	
l30000746:	
	line	162
;Buzzer_Melody.c: 161: {
;Buzzer_Melody.c: 162: octave = 4;
	movlw	low(04h)
	movwf	(main@octave)
	movlw	high(04h)
	movwf	((main@octave))+1
	line	163
;Buzzer_Melody.c: 163: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000753
	
l30000747:	
	line	165
;Buzzer_Melody.c: 165: else if (Melody[pointer] == '5')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	035h
	skipz
	goto	u991
	goto	u990
u991:
	goto	l30000749
u990:
	
l30000748:	
	line	167
;Buzzer_Melody.c: 166: {
;Buzzer_Melody.c: 167: octave = 5;
	movlw	low(05h)
	movwf	(main@octave)
	movlw	high(05h)
	movwf	((main@octave))+1
	line	168
;Buzzer_Melody.c: 168: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000753
	
l30000749:	
	line	170
;Buzzer_Melody.c: 170: else if (Melody[pointer] == '6')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	036h
	skipz
	goto	u1001
	goto	u1000
u1001:
	goto	l30000751
u1000:
	
l30000750:	
	line	172
;Buzzer_Melody.c: 171: {
;Buzzer_Melody.c: 172: octave = 6;
	movlw	low(06h)
	movwf	(main@octave)
	movlw	high(06h)
	movwf	((main@octave))+1
	line	173
;Buzzer_Melody.c: 173: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000753
	
l30000751:	
	line	175
;Buzzer_Melody.c: 175: else if (Melody[pointer] == '7')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	037h
	skipz
	goto	u1011
	goto	u1010
u1011:
	goto	l40
u1010:
	
l30000752:	
	line	177
;Buzzer_Melody.c: 176: {
;Buzzer_Melody.c: 177: octave = 7;
	movlw	low(07h)
	movwf	(main@octave)
	movlw	high(07h)
	movwf	((main@octave))+1
	line	178
;Buzzer_Melody.c: 178: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	goto	l30000753
	
l40:	
	
l30000753:	
	line	181
;Buzzer_Melody.c: 179: }
;Buzzer_Melody.c: 181: if (Melody[pointer] == '.')
	movf	(main@pointer),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	02Eh
	skipz
	goto	u1021
	goto	u1020
u1021:
	goto	l30000756
u1020:
	
l30000754:	
	line	184
;Buzzer_Melody.c: 182: {
;Buzzer_Melody.c: 184: duration = duration + 128;
	movf	(main@duration),w
	addlw	low(080h)
	movwf	(main@duration)
	movf	(main@duration+1),w
	skipnc
	addlw	1
	addlw	high(080h)
	movwf	1+(main@duration)
	
l30000755:	
	line	185
;Buzzer_Melody.c: 185: pointer++;
	movlw	low(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movlw	high(01h)
	addwf	(main@pointer+1),f
	
l30000756:	
	line	188
;Buzzer_Melody.c: 186: }
;Buzzer_Melody.c: 188: PlayNote(note, octave, duration);
	movf	(main@note+1),w
	clrf	(?_PlayNote+1)
	addwf	(?_PlayNote+1)
	movf	(main@note),w
	clrf	(?_PlayNote)
	addwf	(?_PlayNote)

	movf	(main@octave),w
	movwf	(??_main+0+0)
	movf	(??_main+0+0),w
	movwf	0+(?_PlayNote)+02h
	movf	(main@duration+1),w
	clrf	1+(?_PlayNote)+03h
	addwf	1+(?_PlayNote)+03h
	movf	(main@duration),w
	clrf	0+(?_PlayNote)+03h
	addwf	0+(?_PlayNote)+03h

	fcall	_PlayNote
	
l30000757:	
	line	190
;Buzzer_Melody.c: 189: }
;Buzzer_Melody.c: 190: while (Melody[pointer++] == ',');
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@pointer+1),w
	movwf	(??_main+0+0+1)
	movf	(main@pointer),w
	movwf	(??_main+0+0)
	movlw	(01h)
	addwf	(main@pointer),f
	skipnc
	incf	(main@pointer+1),f
	movf	0+(??_main+0+0),w
	addlw	(main@Melody-__stringbase)
	FNCALL _main,stringtab
	fcall	stringdir
	xorlw	02Ch
	skipnz
	goto	u1031
	goto	u1030
u1031:
	goto	l30000705
u1030:
	
l30000758:	
	line	193
	movf	((_TMR0Count+1)),w
	iorwf	((_TMR0Count)),w
	skipz
	goto	u1041
	goto	u1040
u1041:
	goto	l30000758
u1040:
	
l30000759:	
	line	194
;Buzzer_Melody.c: 194: beep = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_beep)
	
l48:	
	goto	l48
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	198
	signat	_main,88
	global	_PlayNote
psect	text41,local,class=CODE,delta=2
global __ptext41
__ptext41:

; *************** function _PlayNote *****************
; Defined at:
;		line 201 in file "D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
; Parameters:    Size  Location     Type
;  note            2    7[BANK0 ] unsigned short 
;  octave          1    9[BANK0 ] unsigned char 
;  duration        2   10[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         2       5       0       0
;      Temp:     2
;      Total:    7
; This function calls:
;		___lwdiv
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text41
	file	"D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
	line	201
	global	__size_of_PlayNote
	__size_of_PlayNote	equ	__end_of_PlayNote-_PlayNote
;Buzzer_Melody.c: 200: void PlayNote(unsigned short note, unsigned char octave, unsigned int duration)
;Buzzer_Melody.c: 201: {
	
_PlayNote:	
	opt stack 5
; Regs used in _PlayNote: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30000682:	
	goto	l30000687
	
l30000683:	
	line	209
;Buzzer_Melody.c: 209: note = note >> 1;
	movf	(PlayNote@note+1),w
	movwf	(??_PlayNote+0+0+1)
	movf	(PlayNote@note),w
	movwf	(??_PlayNote+0+0)
	movlw	01h
u805:
	clrc
	rrf	(??_PlayNote+0+1),f
	rrf	(??_PlayNote+0+0),f
	addlw	-1
	skipz
	goto	u805
	movf	0+(??_PlayNote+0+0),w
	movwf	(PlayNote@note)
	movf	1+(??_PlayNote+0+0),w
	movwf	(PlayNote@note+1)
	goto	l30000688
	
l30000684:	
	line	212
;Buzzer_Melody.c: 212: note = note >> 2;
	movf	(PlayNote@note+1),w
	movwf	(??_PlayNote+0+0+1)
	movf	(PlayNote@note),w
	movwf	(??_PlayNote+0+0)
	movlw	02h
u815:
	clrc
	rrf	(??_PlayNote+0+1),f
	rrf	(??_PlayNote+0+0),f
	addlw	-1
	skipz
	goto	u815
	movf	0+(??_PlayNote+0+0),w
	movwf	(PlayNote@note)
	movf	1+(??_PlayNote+0+0),w
	movwf	(PlayNote@note+1)
	goto	l30000688
	
l30000685:	
	line	215
;Buzzer_Melody.c: 215: note = note >> 4;
	movf	(PlayNote@note+1),w
	movwf	(??_PlayNote+0+0+1)
	movf	(PlayNote@note),w
	movwf	(??_PlayNote+0+0)
	movlw	04h
u825:
	clrc
	rrf	(??_PlayNote+0+1),f
	rrf	(??_PlayNote+0+0),f
	addlw	-1
	skipz
	goto	u825
	movf	0+(??_PlayNote+0+0),w
	movwf	(PlayNote@note)
	movf	1+(??_PlayNote+0+0),w
	movwf	(PlayNote@note+1)
	goto	l30000688
	
l30000687:	
	line	204
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PlayNote@octave),w
		xorlw	4^0
	skipnz
	goto	l30000688
	xorlw	5^4
	skipnz
	goto	l30000683
	xorlw	6^5
	skipnz
	goto	l30000684
	xorlw	7^6
	skipnz
	goto	l30000685
	goto	l30000688

	
l30000688:	
	line	220
	movf	((_TMR0Count+1)),w
	iorwf	((_TMR0Count)),w
	skipz
	goto	u831
	goto	u830
u831:
	goto	l30000688
u830:
	
l30000689:	
	line	221
;Buzzer_Melody.c: 221: beep = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_beep)
	
l30000690:	
	line	224
;Buzzer_Melody.c: 224: if (note)
	movf	(PlayNote@note+1),w
	iorwf	(PlayNote@note),w
	skipnz
	goto	u841
	goto	u840
u841:
	goto	l30000694
u840:
	
l30000691:	
	line	226
;Buzzer_Melody.c: 225: {
;Buzzer_Melody.c: 226: note = ~note;
	comf	(PlayNote@note),f
	comf	(PlayNote@note+1),f
	
l30000692:	
	line	227
;Buzzer_Melody.c: 227: preloadTMR1L = (note & 0xFF);
	movf	(PlayNote@note),w
	movwf	(_preloadTMR1L)
	
l30000693:	
	line	228
;Buzzer_Melody.c: 228: preloadTMR1H = ((note & 0xFF00) >> 8);
	movf	(PlayNote@note+1),w
	movwf	(_preloadTMR1H)
	
l30000694:	
	line	232
;Buzzer_Melody.c: 229: }
;Buzzer_Melody.c: 232: TMR0Count = 255/(duration & 0x7F);
	movlw	low(0FFh)
	movwf	(?___lwdiv)
	movlw	high(0FFh)
	movwf	((?___lwdiv))+1
	movlw	low(07Fh)
	andwf	(PlayNote@duration),w
	movwf	0+(?___lwdiv)+02h
	movlw	high(07Fh)
	andwf	(PlayNote@duration+1),w
	movwf	1+0+(?___lwdiv)+02h
	fcall	___lwdiv
	bcf	status, 7	;select IRP bank0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___lwdiv)),w
	clrf	(_TMR0Count+1)
	addwf	(_TMR0Count+1)
	movf	(0+(?___lwdiv)),w
	clrf	(_TMR0Count)
	addwf	(_TMR0Count)

	
l30000695:	
	line	235
;Buzzer_Melody.c: 235: if (duration & 0x80) TMR0Count = (TMR0Count + (TMR0Count >> 1));
	btfss	(PlayNote@duration),(7)&7
	goto	u851
	goto	u850
u851:
	goto	l30000697
u850:
	
l30000696:	
	movf	(_TMR0Count+1),w
	movwf	(??_PlayNote+0+0+1)
	movf	(_TMR0Count),w
	movwf	(??_PlayNote+0+0)
	movlw	01h
u865:
	clrc
	rrf	(??_PlayNote+0+1),f
	rrf	(??_PlayNote+0+0),f
	addlw	-1
	skipz
	goto	u865
	movf	(_TMR0Count),w
	addwf	0+(??_PlayNote+0+0),w
	movwf	(_TMR0Count)
	movf	(_TMR0Count+1),w
	skipnc
	incf	(_TMR0Count+1),w
	addwf	1+(??_PlayNote+0+0),w
	movwf	1+(_TMR0Count)
	
l30000697:	
	line	237
;Buzzer_Melody.c: 237: if (note) beep = 1;
	movf	(PlayNote@note+1),w
	iorwf	(PlayNote@note),w
	skipnz
	goto	u871
	goto	u870
u871:
	goto	l51
u870:
	
l30000698:	
	clrf	(_beep)
	bsf	status,0
	rlf	(_beep),f
	
l51:	
	return
	opt stack 0
GLOBAL	__end_of_PlayNote
	__end_of_PlayNote:
; =============== function _PlayNote ends ============

psect	text42,local,class=CODE,delta=2
global __ptext42
__ptext42:
	line	238
	signat	_PlayNote,12408
	global	_InitTimer

; *************** function _InitTimer *****************
; Defined at:
;		line 241 in file "D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
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
psect	text42
	file	"D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
	line	241
	global	__size_of_InitTimer
	__size_of_InitTimer	equ	__end_of_InitTimer-_InitTimer
;Buzzer_Melody.c: 240: void InitTimer(void)
;Buzzer_Melody.c: 241: {
	
_InitTimer:	
	opt stack 5
; Regs used in _InitTimer: [wreg+status,2+status,0]
	line	243
	
l30000654:	
;Buzzer_Melody.c: 243: OPTION = 0b11010111;
	movlw	(0D7h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h
	
l30000655:	
	line	246
;Buzzer_Melody.c: 246: T0IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(90/8),(90)&7
	
l30000656:	
	line	247
;Buzzer_Melody.c: 247: T0IE = 1;
	bsf	(93/8),(93)&7
	
l30000657:	
	line	250
;Buzzer_Melody.c: 250: T1CON = 0b00000001;
	clrf	(16)
	bsf	status,0
	rlf	(16),f
	
l30000658:	
	line	251
;Buzzer_Melody.c: 251: TMR1IF = 0;
	bcf	(96/8),(96)&7
	
l30000659:	
	line	252
;Buzzer_Melody.c: 252: TMR1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_InitTimer
	__end_of_InitTimer:
; =============== function _InitTimer ends ============

psect	text43,local,class=CODE,delta=2
global __ptext43
__ptext43:
	line	253
	signat	_InitTimer,88
	global	___lwdiv

; *************** function ___lwdiv *****************
; Defined at:
;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
; Parameters:    Size  Location     Type
;  dividend        2    3[BANK0 ] unsigned int 
;  divisor         2    5[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  quotient        2    1[BANK0 ] unsigned int 
;  counter         1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  2    3[BANK0 ] unsigned int 
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         1       7       0       0
;      Temp:     1
;      Total:    8
; This function calls:
;		Nothing
; This function is called by:
;		_PlayNote
; This function uses a non-reentrant model
; 
psect	text43
	file	"C:\Program Files\HI-TECH Software\PICC\9.70\sources\lwdiv.c"
	line	5
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
	opt stack 4
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	9
	
l30000670:	
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@quotient)
	movlw	high(0)
	movwf	((___lwdiv@quotient))+1
	line	10
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u731
	goto	u730
u731:
	goto	l30000680
u730:
	
l30000671:	
	line	11
	clrf	(___lwdiv@counter)
	bsf	status,0
	rlf	(___lwdiv@counter),f
	goto	l30000674
	
l30000672:	
	line	13
	movlw	01h
u745:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u745
	
l30000673:	
	line	14
	movlw	(01h)
	movwf	(??___lwdiv+0+0)
	movf	(??___lwdiv+0+0),w
	addwf	(___lwdiv@counter),f
	
l30000674:	
	line	12
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u751
	goto	u750
u751:
	goto	l30000672
u750:
	
l30000675:	
	line	17
	movlw	01h
u765:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u765
	line	18
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u775
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u775:
	skipc
	goto	u771
	goto	u770
u771:
	goto	l30000678
u770:
	
l30000676:	
	line	19
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	
l30000677:	
	line	20
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	
l30000678:	
	line	22
	movlw	01h
u785:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u785
	
l30000679:	
	line	23
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u791
	goto	u790
u791:
	goto	l30000675
u790:
	
l30000680:	
	line	25
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	
l81:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
; =============== function ___lwdiv ends ============

psect	text44,local,class=CODE,delta=2
global __ptext44
__ptext44:
	line	26
	signat	___lwdiv,8314
	global	_interr

; *************** function _interr *****************
; Defined at:
;		line 256 in file "D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       4       0       0
;      Temp:     4
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text44
	file	"D:\Amit\E-Projects\PIC Projects\Buzzer\Melody\Buzzer_Melody.c"
	line	256
	global	__size_of_interr
	__size_of_interr	equ	__end_of_interr-_interr
;Buzzer_Melody.c: 255: void interrupt interr(void)
;Buzzer_Melody.c: 256: {
	
_interr:	
	opt stack 5
; Regs used in _interr: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+1
	movwf	saved_w
	movf	status,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_interr+0)
	movf	fsr0,w
	movwf	(??_interr+1)
	movf	pclath,w
	movwf	(??_interr+2)
	movf	btemp+0,w
	movwf	(??_interr+3)
	ljmp	_interr
psect	text44
	line	257
	
i1l30000660:	
;Buzzer_Melody.c: 257: if (T0IF)
	btfss	(90/8),(90)&7
	goto	u69_21
	goto	u69_20
u69_21:
	goto	i1l30000664
u69_20:
	
i1l30000661:	
	line	259
;Buzzer_Melody.c: 258: {
;Buzzer_Melody.c: 259: TMR0 = beat_speed;
	movf	(_beat_speed),w
	movwf	(1)	;volatile
	line	260
;Buzzer_Melody.c: 260: if (TMR0Count) TMR0Count--;
	movf	(_TMR0Count+1),w
	iorwf	(_TMR0Count),w
	skipnz
	goto	u70_21
	goto	u70_20
u70_21:
	goto	i1l30000663
u70_20:
	
i1l30000662:	
	movlw	low(01h)
	subwf	(_TMR0Count),f
	movlw	high(01h)
	skipc
	decf	(_TMR0Count+1),f
	subwf	(_TMR0Count+1),f
	
i1l30000663:	
	line	261
;Buzzer_Melody.c: 261: T0IF = 0;
	bcf	(90/8),(90)&7
	
i1l30000664:	
	line	263
;Buzzer_Melody.c: 262: }
;Buzzer_Melody.c: 263: if (TMR1IF)
	btfss	(96/8),(96)&7
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l65
u71_20:
	
i1l30000665:	
	line	265
;Buzzer_Melody.c: 264: {
;Buzzer_Melody.c: 265: if (beep) RC2 = !RC2;
	movf	(_beep),w
	skipz
	goto	u72_20
	goto	i1l69
u72_20:
	
i1l30000666:	
	movlw	1<<((58)&7)
	xorwf	((58)/8),f
	goto	i1l30000667
	
i1l69:	
	line	266
;Buzzer_Melody.c: 266: else RC2 = 0;
	bcf	(58/8),(58)&7
	
i1l30000667:	
	line	267
;Buzzer_Melody.c: 267: TMR1H = preloadTMR1H;
	movf	(_preloadTMR1H),w
	movwf	(15)	;volatile
	line	268
;Buzzer_Melody.c: 268: TMR1L = preloadTMR1L;
	movf	(_preloadTMR1L),w
	movwf	(14)	;volatile
	
i1l30000668:	
	line	269
;Buzzer_Melody.c: 269: TMR1IF = 0;
	bcf	(96/8),(96)&7
	
i1l65:	
	movf	(??_interr+3),w
	movwf	btemp+0
	movf	(??_interr+2),w
	movwf	pclath
	movf	(??_interr+1),w
	movwf	fsr0
	movf	(??_interr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_interr
	__end_of_interr:
; =============== function _interr ends ============

psect	text45,local,class=CODE,delta=2
global __ptext45
__ptext45:
	line	271
	signat	_interr,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
