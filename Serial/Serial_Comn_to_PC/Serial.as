opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 5239"

opt pagewidth 120

	opt pm

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
;COMMON:	_main->_tx_data
	FNCALL	_main,_rx_data
	FNCALL	_main,_tx_data
	FNROOT	_main
	global	_serial_data
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_serial_data:
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
	file	"Serial.as"
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
	global	??_tx_data
??_tx_data: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	??_rx_data
??_rx_data: ;@ 0x0
	global	?_rx_data
?_rx_data: ;@ 0x0
	global	tx_data@data1
tx_data@data1:	; 1 bytes @ 0x0
	ds	1
	global	?_main
?_main: ;@ 0x1
	global	?_tx_data
?_tx_data: ;@ 0x1
;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      1       2
; BANK0           80      0       0
; BANK1           80      0       0
; BANK2           80      0       0


;Pointer list with targets:



;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                0    0   10   0.00
;            _rx_data
;            _tx_data
;  _tx_data                                           1    0   10   0.00
;                                    0 COMMO    1
;  _rx_data                                           0    0    0   0.00
; Estimated maximum call depth 1
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      1       2       1       14.3%
;BITSFR0              0      0       0       1        0.0%
;SFR0                 0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;ABS                  0      0       2       2        0.0%
;STACK                0      0       0       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITSFR2              0      0       0       5        0.0%
;BITBANK1            50      0       0       6        0.0%
;BANK1               50      0       0       7        0.0%
;BITBANK2            50      0       0       8        0.0%
;BANK2               50      0       0       9        0.0%
;DATA                 0      0       2      10        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 14 in file "D:\Amit\PIC Projects\Serial\Serial_Comn_to_PC\main.c"
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
;		On exit  : 60/0
;		Unchanged: FFE80/0
; Data sizes:     COMMON   BANK0   BANK1   BANK2
;      Locals:         0       0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_rx_data
;		_tx_data
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\PIC Projects\Serial\Serial_Comn_to_PC\main.c"
	line	14
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
	line	15
	
l30000447:	
;main.c: 15: SCS=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1144/8)^080h,(1144)&7
	line	16
;main.c: 16: IRCF0=0;
	bcf	(1148/8)^080h,(1148)&7
	line	17
;main.c: 17: IRCF1=1;
	bsf	(1149/8)^080h,(1149)&7
	line	18
;main.c: 18: IRCF2=1;
	bsf	(1150/8)^080h,(1150)&7
	
l30000448:	
	line	19
;main.c: 19: ANSEL=0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(286)^0100h
	line	20
;main.c: 20: ANSELH=0x00;
	clrf	(287)^0100h
	
l30000449:	
	line	21
;main.c: 21: TXSTA=0xA6;
	movlw	(0A6h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	
l30000450:	
	line	22
;main.c: 22: SPBRGH=0x00;
	clrf	(154)^080h
	line	23
;main.c: 23: SPBRG=(((4000000/64)/9600)-1);
	movlw	(05h)
	movwf	(153)^080h
	
l30000451:	
	line	24
;main.c: 24: SPEN=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(199/8),(199)&7
	
l30000452:	
	line	25
;main.c: 25: TXEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1221/8)^080h,(1221)&7
	
l30000453:	
	line	26
;main.c: 26: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	
l30000454:	
	line	27
;main.c: 27: CREN=1;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(196/8),(196)&7
	
l30000455:	
	line	30
;main.c: 29: {
;main.c: 30: serial_data=rx_data();
	fcall	_rx_data
	movwf	(_serial_data)
	
l30000456:	
	line	31
;main.c: 31: tx_data(serial_data);
	movf	(_serial_data),w
	fcall	_tx_data
	goto	l30000455
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	34
	signat	_main,88
	global	_tx_data
psect	text17,local,class=CODE,delta=2
global __ptext17
__ptext17:

; *************** function _tx_data *****************
; Defined at:
;		line 37 in file "D:\Amit\PIC Projects\Serial\Serial_Comn_to_PC\main.c"
; Parameters:    Size  Location     Type
;  data1           1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  data1           1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text17
	file	"D:\Amit\PIC Projects\Serial\Serial_Comn_to_PC\main.c"
	line	37
	global	__size_of_tx_data
	__size_of_tx_data	equ	__end_of_tx_data-_tx_data
;main.c: 36: void tx_data(unsigned char data1)
;main.c: 37: {
	
_tx_data:	
	opt stack 7
; Regs used in _tx_data: [wreg]
;tx_data@data1 stored from wreg
	movwf	(tx_data@data1)
	
l30000457:	
	line	38
;main.c: 38: TXREG=data1;
	movf	(tx_data@data1),w
	movwf	(25)	;volatile
	
l6:	
	line	39
	btfss	(100/8),(100)&7
	goto	u11
	goto	u10
u11:
	goto	l6
u10:
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_tx_data
	__end_of_tx_data:
; =============== function _tx_data ends ============

psect	text18,local,class=CODE,delta=2
global __ptext18
__ptext18:
	line	40
	signat	_tx_data,4216
	global	_rx_data

; *************** function _rx_data *****************
; Defined at:
;		line 43 in file "D:\Amit\PIC Projects\Serial\Serial_Comn_to_PC\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text18
	file	"D:\Amit\PIC Projects\Serial\Serial_Comn_to_PC\main.c"
	line	43
	global	__size_of_rx_data
	__size_of_rx_data	equ	__end_of_rx_data-_rx_data
;main.c: 42: unsigned char rx_data(void)
;main.c: 43: {
	
_rx_data:	
	opt stack 7
; Regs used in _rx_data: [wreg]
	
l30000458:	
	
l10:	
	line	44
	btfss	(101/8),(101)&7
	goto	u21
	goto	u20
u21:
	goto	l10
u20:
	
l30000459:	
	line	45
;main.c: 45: return RCREG;
	movf	(26),w	;volatile
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_rx_data
	__end_of_rx_data:
; =============== function _rx_data ends ============

psect	text19,local,class=CODE,delta=2
global __ptext19
__ptext19:
	line	46
	signat	_rx_data,89
	end
