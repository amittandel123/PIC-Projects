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
# 16 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 16 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	dw 0x3FFC & 0x3FF7 & 0x3FFF & 0x3FDF & 0x3FBF & 0x3CFF & 0x3BFF & 0x37FF ;#
;BANK0:	_main->_LockOperation
;BANK0:	_LockOperation->_Configuration
;BANK0:	_Configuration->_BuzzerBeep
;BANK0:	_BuzzerBeep->_DelayMs
;COMMON:	_Configuration->_EEPROMReadKey
;COMMON:	_EEPROMReadKey->_ReadEEPROM
	FNCALL	_main,_PowerInit
	FNCALL	_main,_DelayMs
	FNCALL	_main,_BuzzerBeep
	FNCALL	_main,_ConfigureMasterKey
	FNCALL	_main,_WriteEEPROM
	FNCALL	_main,_ClearAllKeys
	FNCALL	_main,_ClearKey
	FNCALL	_main,_LockOperation
	FNCALL	_main,_GoToSleep
	FNCALL	_ConfigureMasterKey,_EEPROMReadKey
	FNCALL	_ConfigureMasterKey,_CRCCheck
	FNCALL	_ConfigureMasterKey,_BuzzerBeep
	FNCALL	_ConfigureMasterKey,_ReadiButton
	FNCALL	_ConfigureMasterKey,_EEPROMWriteKey
	FNCALL	_ConfigureMasterKey,_Wait_With_LED_Blink
	FNCALL	_ConfigureMasterKey,_GoToSleep
	FNCALL	_LockOperation,_ReadiButton
	FNCALL	_LockOperation,_AvailabeKey
	FNCALL	_LockOperation,_BuzzerBeep
	FNCALL	_LockOperation,_ToggleBuzzLED
	FNCALL	_LockOperation,_CheckForiButtonDisconnect
	FNCALL	_LockOperation,_DoorOpen
	FNCALL	_LockOperation,_Configuration
	FNCALL	_LockOperation,_DelayMs
	FNCALL	_LockOperation,_DoorClose
	FNCALL	_LockOperation,_InvalidKeyIndication
	FNCALL	_Configuration,_BuzzerBeep
	FNCALL	_Configuration,_Wait_With_LED_Blink
	FNCALL	_Configuration,_ReadiButton
	FNCALL	_Configuration,_AvailabeKey
	FNCALL	_Configuration,_EEPROMReadKey
	FNCALL	_Configuration,_strcmp
	FNCALL	_Configuration,_ClearKey
	FNCALL	_Configuration,_CRCCheck
	FNCALL	_Configuration,_EEPROMWriteKey
	FNCALL	_Configuration,_ClearAllKeys
	FNCALL	_Configuration,_DelayMs
	FNCALL	_Configuration,_ToggleLED
	FNCALL	_DoorOpen,_DelayMs
	FNCALL	_GoToSleep,_DelayMs
	FNCALL	_DoorClose,_DelayMs
	FNCALL	_InvalidKeyIndication,_DelayMs
	FNCALL	_InvalidKeyIndication,_ReadiButton
	FNCALL	_InvalidKeyIndication,_AvailabeKey
	FNCALL	_BuzzerBeep,_DelayMs
	FNCALL	_Wait_With_LED_Blink,_ToggleLED
	FNCALL	_Wait_With_LED_Blink,_CheckForiButtonDisconnect
	FNCALL	_ClearAllKeys,_EEPROMWriteKeyByte
	FNCALL	_EEPROMWriteKey,_WriteEEPROM
	FNCALL	_EEPROMWriteKey,_DelayMs
	FNCALL	_AvailabeKey,_EEPROMReadKey
	FNCALL	_AvailabeKey,_strcmp
	FNCALL	_ReadiButton,_InitiButton
	FNCALL	_ReadiButton,_WriteByteToiButton
	FNCALL	_ReadiButton,_ReadByteToiButton
	FNCALL	_ReadiButton,_CRCCheck
	FNCALL	_ClearKey,_EEPROMWriteKeyByte
	FNCALL	_EEPROMWriteKeyByte,_WriteEEPROM
	FNCALL	_EEPROMWriteKeyByte,_DelayMs
	FNCALL	_WriteByteToiButton,_delay_10us
	FNCALL	_EEPROMReadKey,_ReadEEPROM
	FNCALL	_CheckForiButtonDisconnect,_InitiButton
	FNCALL	_ReadByteToiButton,_delay_10us
	FNCALL	_InitiButton,_delay_10us
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_CRCValue
psect	strings,class=CODE,delta=2,reloc=256
global __pstrings
__pstrings:
	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	movwf	(btemp)&07Fh
	btfss	(btemp)&07Fh,7
	goto	stringcode
	bcf	status,7
	btfsc	btemp&7Fh,0
	bsf	status,7
	movf	indf,w
	return
stringcode:
	movwf	pclath
	movf	fsr,w
stringdir:
	movwf pc
__stringbase:
psect	stringtext1,class=CODE,delta=2
global __pstringtext1
__pstringtext1:
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.h"
	line	5
_CRCValue:
	retlw	0
	retlw	05Eh
	retlw	0BCh
	retlw	0E2h
	retlw	061h
	retlw	03Fh
	retlw	0DDh
	retlw	083h
	retlw	0C2h
	retlw	09Ch
	retlw	07Eh
	retlw	020h
	retlw	0A3h
	retlw	0FDh
	retlw	01Fh
	retlw	041h
	retlw	09Dh
	retlw	0C3h
	retlw	021h
	retlw	07Fh
	retlw	0FCh
	retlw	0A2h
	retlw	040h
	retlw	01Eh
	retlw	05Fh
	retlw	01h
	retlw	0E3h
	retlw	0BDh
	retlw	03Eh
	retlw	060h
	retlw	082h
	retlw	0DCh
	retlw	023h
	retlw	07Dh
	retlw	09Fh
	retlw	0C1h
	retlw	042h
	retlw	01Ch
	retlw	0FEh
	retlw	0A0h
	retlw	0E1h
	retlw	0BFh
	retlw	05Dh
	retlw	03h
	retlw	080h
	retlw	0DEh
	retlw	03Ch
	retlw	062h
	retlw	0BEh
	retlw	0E0h
	retlw	02h
	retlw	05Ch
	retlw	0DFh
	retlw	081h
	retlw	063h
	retlw	03Dh
	retlw	07Ch
	retlw	022h
	retlw	0C0h
	retlw	09Eh
	retlw	01Dh
	retlw	043h
	retlw	0A1h
	retlw	0FFh
	retlw	046h
	retlw	018h
	retlw	0FAh
	retlw	0A4h
	retlw	027h
	retlw	079h
	retlw	09Bh
	retlw	0C5h
	retlw	084h
	retlw	0DAh
	retlw	038h
	retlw	066h
	retlw	0E5h
	retlw	0BBh
	retlw	059h
	retlw	07h
	retlw	0DBh
	retlw	085h
	retlw	067h
	retlw	039h
	retlw	0BAh
	retlw	0E4h
	retlw	06h
	retlw	058h
	retlw	019h
	retlw	047h
	retlw	0A5h
	retlw	0FBh
	retlw	078h
	retlw	026h
	retlw	0C4h
	retlw	09Ah
	retlw	065h
	retlw	03Bh
	retlw	0D9h
	retlw	087h
	retlw	04h
	retlw	05Ah
	retlw	0B8h
	retlw	0E6h
	retlw	0A7h
	retlw	0F9h
	retlw	01Bh
	retlw	045h
	retlw	0C6h
	retlw	098h
	retlw	07Ah
	retlw	024h
	retlw	0F8h
	retlw	0A6h
	retlw	044h
	retlw	01Ah
	retlw	099h
	retlw	0C7h
	retlw	025h
	retlw	07Bh
	retlw	03Ah
	retlw	064h
	retlw	086h
	retlw	0D8h
	retlw	05Bh
	retlw	05h
	retlw	0E7h
	retlw	0B9h
	retlw	08Ch
	retlw	0D2h
	retlw	030h
	retlw	06Eh
	retlw	0EDh
	retlw	0B3h
	retlw	051h
	retlw	0Fh
	retlw	04Eh
	retlw	010h
	retlw	0F2h
	retlw	0ACh
	retlw	02Fh
	retlw	071h
	retlw	093h
	retlw	0CDh
	retlw	011h
	retlw	04Fh
	retlw	0ADh
	retlw	0F3h
	retlw	070h
	retlw	02Eh
	retlw	0CCh
	retlw	092h
	retlw	0D3h
	retlw	08Dh
	retlw	06Fh
	retlw	031h
	retlw	0B2h
	retlw	0ECh
	retlw	0Eh
	retlw	050h
	retlw	0AFh
	retlw	0F1h
	retlw	013h
	retlw	04Dh
	retlw	0CEh
	retlw	090h
	retlw	072h
	retlw	02Ch
	retlw	06Dh
	retlw	033h
	retlw	0D1h
	retlw	08Fh
	retlw	0Ch
	retlw	052h
	retlw	0B0h
	retlw	0EEh
	retlw	032h
	retlw	06Ch
	retlw	08Eh
	retlw	0D0h
	retlw	053h
	retlw	0Dh
	retlw	0EFh
	retlw	0B1h
	retlw	0F0h
	retlw	0AEh
	retlw	04Ch
	retlw	012h
	retlw	091h
	retlw	0CFh
	retlw	02Dh
	retlw	073h
	retlw	0CAh
	retlw	094h
	retlw	076h
	retlw	028h
	retlw	0ABh
	retlw	0F5h
	retlw	017h
	retlw	049h
	retlw	08h
	retlw	056h
	retlw	0B4h
	retlw	0EAh
	retlw	069h
	retlw	037h
	retlw	0D5h
	retlw	08Bh
	retlw	057h
	retlw	09h
	retlw	0EBh
	retlw	0B5h
	retlw	036h
	retlw	068h
	retlw	08Ah
	retlw	0D4h
	retlw	095h
	retlw	0CBh
	retlw	029h
	retlw	077h
	retlw	0F4h
	retlw	0AAh
	retlw	048h
	retlw	016h
	retlw	0E9h
	retlw	0B7h
	retlw	055h
	retlw	0Bh
	retlw	088h
	retlw	0D6h
	retlw	034h
	retlw	06Ah
	retlw	02Bh
	retlw	075h
	retlw	097h
	retlw	0C9h
	retlw	04Ah
	retlw	014h
	retlw	0F6h
	retlw	0A8h
	retlw	074h
	retlw	02Ah
	retlw	0C8h
	retlw	096h
	retlw	015h
	retlw	04Bh
	retlw	0A9h
	retlw	0F7h
	retlw	0B6h
	retlw	0E8h
	retlw	0Ah
	retlw	054h
	retlw	0D7h
	retlw	089h
	retlw	06Bh
	retlw	035h
	global	_CRCValue
	global	_DataEEAddr
	global	_DataEEData
	global	_SlaveConfigured
	global	_DoorState
	global	_InvalidKeyCount
	global	_LowBatt
	global	_MatchKey
	global	_TimeCounter
	global	_ToggleSkipFlag
	global	_t
	global	_EEPROMKey
	global	_iButtonKey
	global	_AutoMode
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_AutoMode:
       ds      1

	global	_ADCON0
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
	file	"CMC_iButton.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_DoorState:
       ds      1

_InvalidKeyCount:
       ds      1

_LowBatt:
       ds      1

_MatchKey:
       ds      1

_TimeCounter:
       ds      1

_ToggleSkipFlag:
       ds      1

_t:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DataEEAddr:
       ds      2

_DataEEData:
       ds      2

_SlaveConfigured:
       ds      1

_EEPROMKey:
       ds      9

_iButtonKey:
       ds      9

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
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+07h)
	fcall	clear_ram
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+017h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initationation code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1
global __pcstackBANK1
__pcstackBANK1:
	ds	1
	global	?_isr
?_isr: ;@ 0x1
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_GoToSleep
?_GoToSleep: ;@ 0x0
	global	??_GoToSleep
??_GoToSleep: ;@ 0x0
	global	?_ToggleBuzzLED
?_ToggleBuzzLED: ;@ 0x0
	global	??_DoorOpen
??_DoorOpen: ;@ 0x0
	global	??_CheckForiButtonDisconnect
??_CheckForiButtonDisconnect: ;@ 0x0
	global	??_CRCCheck
??_CRCCheck: ;@ 0x0
	global	??_WriteByteToiButton
??_WriteByteToiButton: ;@ 0x0
	global	??_strcmp
??_strcmp: ;@ 0x0
	global	??_EEPROMWriteKey
??_EEPROMWriteKey: ;@ 0x0
	global	??_Wait_With_LED_Blink
??_Wait_With_LED_Blink: ;@ 0x0
	global	??_EEPROMWriteKeyByte
??_EEPROMWriteKeyByte: ;@ 0x0
	global	??_ToggleBuzzLED
??_ToggleBuzzLED: ;@ 0x0
	global	?_DoorClose
?_DoorClose: ;@ 0x0
	global	??_DoorClose
??_DoorClose: ;@ 0x0
	global	?_ToggleLED
?_ToggleLED: ;@ 0x0
	global	?_WriteEEPROM
?_WriteEEPROM: ;@ 0x0
	global	??_InitiButton
??_InitiButton: ;@ 0x0
	global	??_DelayMs
??_DelayMs: ;@ 0x0
	global	??_delay_10us
??_delay_10us: ;@ 0x0
	global	?_delay_10us
?_delay_10us: ;@ 0x0
	global	??_WriteEEPROM
??_WriteEEPROM: ;@ 0x0
	global	??_ReadEEPROM
??_ReadEEPROM: ;@ 0x0
	global	??_ToggleLED
??_ToggleLED: ;@ 0x0
	global	??_ReadByteToiButton
??_ReadByteToiButton: ;@ 0x0
	global	??_PowerInit
??_PowerInit: ;@ 0x0
	global	?_PowerInit
?_PowerInit: ;@ 0x0
	global	InitiButton@PresencePulse
InitiButton@PresencePulse:	; 1 bytes @ 0x0
	ds	1
	global	?_WriteByteToiButton
?_WriteByteToiButton: ;@ 0x1
	global	??_ReadiButton
??_ReadiButton: ;@ 0x1
	global	?_CRCCheck
?_CRCCheck: ;@ 0x1
	global	?_CheckForiButtonDisconnect
?_CheckForiButtonDisconnect: ;@ 0x1
	global	?_InitiButton
?_InitiButton: ;@ 0x1
	global	?_ReadByteToiButton
?_ReadByteToiButton: ;@ 0x1
	global	strcmp@x
strcmp@x:	; 1 bytes @ 0x1
	global	DoorOpen@BattStatus
DoorOpen@BattStatus:	; 1 bytes @ 0x1
	global	Wait_With_LED_Blink@k
Wait_With_LED_Blink@k:	; 2 bytes @ 0x1
	ds	1
	global	??_ClearKey
??_ClearKey: ;@ 0x2
	global	?_EEPROMWriteKeyByte
?_EEPROMWriteKeyByte: ;@ 0x2
	global	??_EEPROMReadKey
??_EEPROMReadKey: ;@ 0x2
	global	?_DoorOpen
?_DoorOpen: ;@ 0x2
	global	?_EEPROMWriteKey
?_EEPROMWriteKey: ;@ 0x2
	global	??_ClearAllKeys
??_ClearAllKeys: ;@ 0x2
	global	?_ReadiButton
?_ReadiButton: ;@ 0x2
	global	strcmp@i
strcmp@i:	; 1 bytes @ 0x2
	ds	1
	global	?_ClearKey
?_ClearKey: ;@ 0x3
	global	?_ClearAllKeys
?_ClearAllKeys: ;@ 0x3
	global	?_Wait_With_LED_Blink
?_Wait_With_LED_Blink: ;@ 0x3
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_ReadEEPROM
?_ReadEEPROM: ;@ 0x0
	global	?_strcmp
?_strcmp: ;@ 0x0
	global	strcmp@y
strcmp@y:	; 1 bytes @ 0x0
	global	WriteByteToiButton@d
WriteByteToiButton@d:	; 1 bytes @ 0x0
	global	ReadByteToiButton@temp
ReadByteToiButton@temp:	; 1 bytes @ 0x0
	global	CRCCheck@KeyAllByteZero
CRCCheck@KeyAllByteZero:	; 1 bytes @ 0x0
	global	EEPROMReadKey@ReadAddress
EEPROMReadKey@ReadAddress:	; 1 bytes @ 0x0
	global	DelayMs@i
DelayMs@i:	; 2 bytes @ 0x0
	ds	1
	global	WriteByteToiButton@n
WriteByteToiButton@n:	; 1 bytes @ 0x1
	global	EEPROMReadKey@KeyLength
EEPROMReadKey@KeyLength:	; 1 bytes @ 0x1
	global	ReadByteToiButton@n
ReadByteToiButton@n:	; 1 bytes @ 0x1
	global	CRCCheck@CRC
CRCCheck@CRC:	; 1 bytes @ 0x1
	ds	1
	global	?_EEPROMReadKey
?_EEPROMReadKey: ;@ 0x2
	global	??_AvailabeKey
??_AvailabeKey: ;@ 0x2
	global	ReadByteToiButton@i_byte
ReadByteToiButton@i_byte:	; 1 bytes @ 0x2
	global	CRCCheck@LenForCrc
CRCCheck@LenForCrc:	; 1 bytes @ 0x2
	global	DelayMs@j
DelayMs@j:	; 2 bytes @ 0x2
	ds	1
	global	CRCCheck@KeyPointer
CRCCheck@KeyPointer:	; 1 bytes @ 0x3
	global	AvailabeKey@key
AvailabeKey@key:	; 1 bytes @ 0x3
	ds	1
	global	?_DelayMs
?_DelayMs: ;@ 0x4
	global	ReadiButton@iButtonPresent
ReadiButton@iButtonPresent:	; 1 bytes @ 0x4
	global	AvailabeKey@i
AvailabeKey@i:	; 1 bytes @ 0x4
	global	DelayMs@TimeCnt
DelayMs@TimeCnt:	; 2 bytes @ 0x4
	ds	1
	global	??_ConfigureMasterKey
??_ConfigureMasterKey: ;@ 0x5
	global	?_AvailabeKey
?_AvailabeKey: ;@ 0x5
	global	ReadiButton@n
ReadiButton@n:	; 1 bytes @ 0x5
	ds	1
	global	??_InvalidKeyIndication
??_InvalidKeyIndication: ;@ 0x6
	global	??_BuzzerBeep
??_BuzzerBeep: ;@ 0x6
	global	EEPROMWriteKey@WriteAddress
EEPROMWriteKey@WriteAddress:	; 1 bytes @ 0x6
	global	EEPROMWriteKeyByte@WriteAddress
EEPROMWriteKeyByte@WriteAddress:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main: ;@ 0x7
	global	?_InvalidKeyIndication
?_InvalidKeyIndication: ;@ 0x7
	global	EEPROMWriteKey@KeyLength
EEPROMWriteKey@KeyLength:	; 1 bytes @ 0x7
	global	ClearAllKeys@Master_Also
ClearAllKeys@Master_Also:	; 1 bytes @ 0x7
	global	ClearKey@KeyNum
ClearKey@KeyNum:	; 1 bytes @ 0x7
	ds	1
	global	ClearAllKeys@i
ClearAllKeys@i:	; 1 bytes @ 0x8
	global	ClearKey@i
ClearKey@i:	; 1 bytes @ 0x8
	ds	3
	global	BuzzerBeep@BeepNum
BuzzerBeep@BeepNum:	; 1 bytes @ 0xB
	ds	1
	global	BuzzerBeep@BeepTime
BuzzerBeep@BeepTime:	; 2 bytes @ 0xC
	ds	2
	global	BuzzerBeep@BeepCnt
BuzzerBeep@BeepCnt:	; 1 bytes @ 0xE
	ds	1
	global	?_BuzzerBeep
?_BuzzerBeep: ;@ 0xF
	global	BuzzerBeep@LONG_BEEP
BuzzerBeep@LONG_BEEP:	; 1 bytes @ 0xF
	ds	1
	global	??_Configuration
??_Configuration: ;@ 0x10
	global	ConfigureMasterKey@PowerOnBeep
ConfigureMasterKey@PowerOnBeep:	; 1 bytes @ 0x10
	ds	1
	global	?_ConfigureMasterKey
?_ConfigureMasterKey: ;@ 0x11
	global	Configuration@key
Configuration@key:	; 1 bytes @ 0x11
	ds	1
	global	Configuration@KeyConfigured
Configuration@KeyConfigured:	; 1 bytes @ 0x12
	ds	1
	global	Configuration@i
Configuration@i:	; 1 bytes @ 0x13
	ds	1
	global	??_LockOperation
??_LockOperation: ;@ 0x14
	global	?_Configuration
?_Configuration: ;@ 0x14
	ds	1
	global	LockOperation@i
LockOperation@i:	; 2 bytes @ 0x15
	ds	2
	global	LockOperation@ShouldCheckConfig
LockOperation@ShouldCheckConfig:	; 1 bytes @ 0x17
	ds	1
	global	?_LockOperation
?_LockOperation: ;@ 0x18
	global	main@PowerOnBeep
main@PowerOnBeep:	; 1 bytes @ 0x18
	ds	1
	global	??_isr
??_isr: ;@ 0x19
	global	?_main
?_main: ;@ 0x19
	ds	4
;Data sizes: Strings 0, constant 256, data 0, bss 30, persistent 1 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      4      11
; BANK0           80     29      53
; BANK1           32      1       1


;Pointer list with targets:

;strcmp@y	PTR unsigned char  size(1); Largest target is 9
;		 -> EEPROMKey(BANK0[9]), 
;strcmp@x	PTR unsigned char  size(1); Largest target is 9
;		 -> iButtonKey(BANK0[9]), 
;CRCCheck@KeyPointer	PTR unsigned char  size(1); Largest target is 9
;		 -> EEPROMKey(BANK0[9]), iButtonKey(BANK0[9]), 


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0 8763   0.00
;                                   24 BANK0    1
;          _PowerInit
;            _DelayMs
;         _BuzzerBeep
; _ConfigureMasterKey
;        _WriteEEPROM
;       _ClearAllKeys
;           _ClearKey
;      _LockOperation
;          _GoToSleep
;  _ConfigureMasterKey                                1    0 1662   0.00
;                                   16 BANK0    1
;      _EEPROMReadKey
;           _CRCCheck
;         _BuzzerBeep
;        _ReadiButton
;     _EEPROMWriteKey
;_Wait_With_LED_Blink
;          _GoToSleep
;  _LockOperation                                     4    0 6024   0.00
;                                   20 BANK0    4
;        _ReadiButton
;        _AvailabeKey
;         _BuzzerBeep
;      _ToggleBuzzLED
;_CheckForiButtonDisc
;           _DoorOpen
;      _Configuration
;            _DelayMs
;          _DoorClose
;_InvalidKeyIndicatio
;  _PowerInit                                         0    0    0   0.00
;    _Configuration                                   6    0 3093   0.00
;                                   16 BANK0    4
;         _BuzzerBeep
;_Wait_With_LED_Blink
;        _ReadiButton
;        _AvailabeKey
;      _EEPROMReadKey
;             _strcmp
;           _ClearKey
;           _CRCCheck
;     _EEPROMWriteKey
;       _ClearAllKeys
;            _DelayMs
;          _ToggleLED
;    _DoorOpen                                        2    0  147   0.00
;                                    0 COMMO    2
;            _DelayMs
;    _GoToSleep                                       0    0  108   0.00
;            _DelayMs
;    _ToggleBuzzLED                                   0    0    0   0.00
;    _DoorClose                                       0    0  108   0.00
;            _DelayMs
;    _InvalidKeyIndication                            1    0 1158   0.00
;                                    6 BANK0    1
;            _DelayMs
;        _ReadiButton
;        _AvailabeKey
;      _BuzzerBeep                                    9    1  222   0.00
;                                    6 BANK0   10
;            _DelayMs
;      _Wait_With_LED_Blink                           2    0   84   0.00
;                                    1 COMMO    2
;          _ToggleLED
;_CheckForiButtonDisc
;      _ClearAllKeys                                  3    0  345   0.00
;                                    2 COMMO    1
;                                    7 BANK0    2
; _EEPROMWriteKeyByte
;      _EEPROMWriteKey                                4    0  240   0.00
;                                    0 COMMO    2
;                                    6 BANK0    2
;        _WriteEEPROM
;            _DelayMs
;      _AvailabeKey                                   3    0  411   0.00
;                                    2 BANK0    3
;      _EEPROMReadKey
;             _strcmp
;      _ReadiButton                                   3    0  639   0.00
;                                    1 COMMO    1
;                                    4 BANK0    2
;        _InitiButton
; _WriteByteToiButton
;  _ReadByteToiButton
;           _CRCCheck
;      _ClearKey                                      3    0  264   0.00
;                                    2 COMMO    1
;                                    7 BANK0    2
; _EEPROMWriteKeyByte
;        _strcmp                                      3    1  126   0.00
;                                    0 COMMO    3
;                                    0 BANK0    1
;        _EEPROMWriteKeyByte                          3    0  162   0.00
;                                    0 COMMO    2
;                                    6 BANK0    1
;        _WriteEEPROM
;            _DelayMs
;        _WriteByteToiButton                          3    0  105   0.00
;                                    0 COMMO    1
;                                    0 BANK0    2
;         _delay_10us
;        _CRCCheck                                    5    0  213   0.00
;                                    0 COMMO    1
;                                    0 BANK0    4
;        _EEPROMReadKey                               4    0  132   0.00
;                                    2 COMMO    2
;                                    0 BANK0    2
;         _ReadEEPROM
;        _CheckForiButtonDisconnect                   0    0   30   0.00
;        _InitiButton
;        _ToggleLED                                   0    0    0   0.00
;        _ReadByteToiButton                           5    0  159   0.00
;                                    0 COMMO    1
;                                    0 BANK0    3
;         _delay_10us
;          _ReadEEPROM                                2    0    0   0.00
;                                    0 COMMO    2
;          _DelayMs                                   4    2  108   0.00
;                                    0 BANK0    6
;          _InitiButton                               1    0   30   0.00
;                                    0 COMMO    1
;         _delay_10us
;          _WriteEEPROM                               0    0    0   0.00
;            _delay_10us                              0    0    0   0.00
; Estimated maximum call depth 6
;_isr                                                 5    0    3   0.00
;                                   25 BANK0    4
;                                    0 BANK1    1
; Estimated maximum call depth 0
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      4       B       1       78.6%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;ABS                  0      0      41       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50     1D      35       5       66.3%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            20      0       0       6        0.0%
;BANK1               20      1       1       7        3.1%
;DATA                 0      0      41       8        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 558 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  PowerOnBeep     1   24[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_PowerInit
;		_DelayMs
;		_BuzzerBeep
;		_ConfigureMasterKey
;		_WriteEEPROM
;		_ClearAllKeys
;		_ClearKey
;		_LockOperation
;		_GoToSleep
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	558
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 557: void main(void)
;main.c: 558: {
	
_main:	
	opt stack 6
; Regs used in _main: [allreg]
	line	560
	
l30001455:	
;main.c: 559: unsigned char PowerOnBeep;
;main.c: 560: PowerInit();
	fcall	_PowerInit
	
l30001456:	
	line	561
;main.c: 561: PowerOnBeep=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@PowerOnBeep)
	
l30001457:	
	line	562
;main.c: 562: DelayMs(100);
	movlw	low(064h)
	movwf	(?_DelayMs)
	movlw	high(064h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001458:	
	line	564
;main.c: 564: BuzzerBeep(2,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_BuzzerBeep)
	movlw	(02h)
	fcall	_BuzzerBeep
	
l30001459:	
	line	568
;main.c: 567: {
;main.c: 568: ConfigureMasterKey(PowerOnBeep);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@PowerOnBeep),w
	fcall	_ConfigureMasterKey
	
l30001460:	
	line	569
;main.c: 569: PowerOnBeep=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@PowerOnBeep)
	bsf	status,0
	rlf	(main@PowerOnBeep),f
	
l30001461:	
	line	573
;main.c: 572: {
;main.c: 573: if(!RA5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u1881
	goto	u1880
u1881:
	goto	l30001467
u1880:
	
l30001462:	
	line	575
;main.c: 574: {
;main.c: 575: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	bsf	status,0
	rlf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	
l30001463:	
	line	576
	movlw	low(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_DataEEAddr)
	movlw	high(0FFh)
	movwf	((_DataEEAddr))+1
	
l30001464:	
	movlw	low(0)
	movwf	(_DataEEData)
	movlw	high(0)
	movwf	((_DataEEData))+1
	fcall	_WriteEEPROM
	
l30001465:	
	line	577
;main.c: 577: ClearAllKeys(1);
	movlw	(01h)
	fcall	_ClearAllKeys
	
l30001466:	
	line	578
;main.c: 578: ClearKey(0);
	movlw	(0)
	fcall	_ClearKey
	goto	l30001459
	
l30001467:	
	line	581
;main.c: 580: }
;main.c: 581: LockOperation();
	fcall	_LockOperation
	
l30001468:	
	line	582
;main.c: 582: GoToSleep();
	fcall	_GoToSleep
	goto	l30001461
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	585
	signat	_main,88
	global	_ConfigureMasterKey
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

; *************** function _ConfigureMasterKey *****************
; Defined at:
;		line 420 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  PowerOnBeep     1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  PowerOnBeep     1   16[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_EEPROMReadKey
;		_CRCCheck
;		_BuzzerBeep
;		_ReadiButton
;		_EEPROMWriteKey
;		_Wait_With_LED_Blink
;		_GoToSleep
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text246
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	420
	global	__size_of_ConfigureMasterKey
	__size_of_ConfigureMasterKey	equ	__end_of_ConfigureMasterKey-_ConfigureMasterKey
;main.c: 419: void ConfigureMasterKey(unsigned char PowerOnBeep)
;main.c: 420: {
	
_ConfigureMasterKey:	
	opt stack 5
; Regs used in _ConfigureMasterKey: [allreg]
;ConfigureMasterKey@PowerOnBeep stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ConfigureMasterKey@PowerOnBeep)
	
l30001469:	
	line	421
;main.c: 421: EEPROMReadKey(0);
	movlw	(0)
	fcall	_EEPROMReadKey
	line	422
;main.c: 422: if(CRCCheck(EEPROMKey) == 0)
	movlw	((_EEPROMKey))&0ffh
	fcall	_CRCCheck
	iorlw	0
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l147
u1890:
	
l30001470:	
	line	424
;main.c: 423: {
;main.c: 424: if(!PowerOnBeep)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ConfigureMasterKey@PowerOnBeep),f
	skipz
	goto	u1901
	goto	u1900
u1901:
	goto	l30001472
u1900:
	
l30001471:	
	line	425
;main.c: 425: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	bsf	status,0
	rlf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	
l30001472:	
	line	429
;main.c: 428: {
;main.c: 429: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u1911
	goto	u1910
u1911:
	goto	l153
u1910:
	
l30001473:	
	line	431
;main.c: 430: {
;main.c: 431: EEPROMWriteKey(0);
	movlw	(0)
	fcall	_EEPROMWriteKey
	
l30001474:	
	line	432
;main.c: 432: BuzzerBeep(3,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_BuzzerBeep)
	movlw	(03h)
	fcall	_BuzzerBeep
	
l30001475:	
	line	434
;main.c: 434: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	goto	l147
	
l153:	
	line	437
;main.c: 436: }
;main.c: 437: if(RA5 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l154
u1920:
	
l30001477:	
	line	438
;main.c: 438: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	bsf	status,0
	rlf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	
l154:	
	line	440
;main.c: 440: GoToSleep();
	fcall	_GoToSleep
	goto	l30001472
	
l147:	
	return
	opt stack 0
GLOBAL	__end_of_ConfigureMasterKey
	__end_of_ConfigureMasterKey:
; =============== function _ConfigureMasterKey ends ============

psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:
	line	443
	signat	_ConfigureMasterKey,4216
	global	_LockOperation

; *************** function _LockOperation *****************
; Defined at:
;		line 446 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               2   21[BANK0 ] unsigned int 
;  ShouldCheckC    1   23[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       4       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_ReadiButton
;		_AvailabeKey
;		_BuzzerBeep
;		_ToggleBuzzLED
;		_CheckForiButtonDisconnect
;		_DoorOpen
;		_Configuration
;		_DelayMs
;		_DoorClose
;		_InvalidKeyIndication
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text247
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	446
	global	__size_of_LockOperation
	__size_of_LockOperation	equ	__end_of_LockOperation-_LockOperation
;main.c: 445: void LockOperation(void)
;main.c: 446: {
	
_LockOperation:	
	opt stack 5
; Regs used in _LockOperation: [allreg]
	line	450
	
l30001415:	
;main.c: 447: unsigned int i;
;main.c: 448: unsigned char ShouldCheckConfig;
;main.c: 450: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u1721
	goto	u1720
u1721:
	goto	l155
u1720:
	
l30001416:	
	line	452
;main.c: 451: {
;main.c: 452: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001417:	
	line	453
;main.c: 453: if(MatchKey)
	movf	(_MatchKey),w
	skipz
	goto	u1730
	goto	l30001447
u1730:
	
l30001418:	
	line	455
;main.c: 454: {
;main.c: 455: RC0=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	
l30001419:	
	line	456
;main.c: 456: BuzzerBeep(1,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_BuzzerBeep)
	movlw	(01h)
	fcall	_BuzzerBeep
	
l30001420:	
	line	458
;main.c: 458: TimeCounter=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_TimeCounter)
	
l30001421:	
	line	459
;main.c: 459: ShouldCheckConfig=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LockOperation@ShouldCheckConfig)
	
l30001422:	
	line	460
;main.c: 460: SlaveConfigured=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_SlaveConfigured)
	
l30001423:	
	line	461
;main.c: 461: ToggleSkipFlag=0x01;
	clrf	(_ToggleSkipFlag)
	bsf	status,0
	rlf	(_ToggleSkipFlag),f
	goto	l30001443
	
l30001424:	
	line	464
;main.c: 463: {
;main.c: 464: if(LowBatt)
	movf	(_LowBatt),w
	skipz
	goto	u1740
	goto	l30001426
u1740:
	
l30001425:	
	line	465
;main.c: 465: ToggleBuzzLED();
	fcall	_ToggleBuzzLED
	
l30001426:	
	line	467
;main.c: 467: if(ShouldCheckConfig == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LockOperation@ShouldCheckConfig),f
	skipz
	goto	u1751
	goto	u1750
u1751:
	goto	l30001430
u1750:
	
l30001427:	
	line	469
;main.c: 468: {
;main.c: 469: if((MatchKey == 2) && (!CheckForiButtonDisconnect()))
	movf	(_MatchKey),w
	xorlw	02h
	skipz
	goto	u1761
	goto	u1760
u1761:
	goto	l30001430
u1760:
	
l30001428:	
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u1771
	goto	u1770
u1771:
	goto	l30001430
u1770:
	
l30001429:	
	line	471
;main.c: 470: {
;main.c: 471: ShouldCheckConfig=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LockOperation@ShouldCheckConfig)
	bsf	status,0
	rlf	(LockOperation@ShouldCheckConfig),f
	
l30001430:	
	line	475
;main.c: 472: }
;main.c: 473: }
;main.c: 475: if(RC2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(58/8),(58)&7
	goto	u1781
	goto	u1780
u1781:
	goto	l164
u1780:
	
l30001431:	
	line	477
;main.c: 476: {
;main.c: 477: DoorOpen();
	fcall	_DoorOpen
	goto	l30001434
	
l164:	
	line	481
;main.c: 479: else
;main.c: 480: {
;main.c: 481: RC0=0x00;
	bcf	(56/8),(56)&7
	
l30001432:	
	line	482
;main.c: 482: if(MatchKey!=2)
	movf	(_MatchKey),w
	xorlw	02h
	skipnz
	goto	u1791
	goto	u1790
u1791:
	goto	l30001434
u1790:
	goto	l160
	
l30001434:	
	line	488
;main.c: 485: }
;main.c: 486: }
;main.c: 488: if(ReadiButton() && ShouldCheckConfig)
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u1801
	goto	u1800
u1801:
	goto	l30001440
u1800:
	
l30001435:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LockOperation@ShouldCheckConfig),w
	skipz
	goto	u1810
	goto	l30001440
u1810:
	
l30001436:	
	line	490
;main.c: 489: {
;main.c: 490: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001437:	
	line	491
;main.c: 491: if(MatchKey == 2)
	movf	(_MatchKey),w
	xorlw	02h
	skipz
	goto	u1821
	goto	u1820
u1821:
	goto	l30001440
u1820:
	
l30001438:	
	line	493
;main.c: 492: {
;main.c: 493: Configuration();
	fcall	_Configuration
	
l30001439:	
	line	494
;main.c: 494: SlaveConfigured=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_SlaveConfigured)
	bsf	status,0
	rlf	(_SlaveConfigured),f
	goto	l160
	
l30001440:	
	line	498
;main.c: 496: }
;main.c: 497: }
;main.c: 498: DelayMs(30);
	movlw	low(01Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(01Eh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001441:	
	line	499
;main.c: 499: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	500
;main.c: 500: DelayMs(170);
	movlw	low(0AAh)
	movwf	(?_DelayMs)
	movlw	high(0AAh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001442:	
	line	501
;main.c: 501: TimeCounter++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LockOperation+0+0)
	movf	(??_LockOperation+0+0),w
	addwf	(_TimeCounter),f
	
l30001443:	
	line	462
	movlw	(05h)
	subwf	(_TimeCounter),w
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l30001424
u1830:
	
l160:	
	line	503
;main.c: 502: }
;main.c: 503: RC1=0x00;
	bcf	(57/8),(57)&7
	line	504
;main.c: 504: RC0=0x00;
	bcf	(56/8),(56)&7
	
l30001444:	
	line	505
;main.c: 505: DoorClose();
	fcall	_DoorClose
	
l30001445:	
	line	507
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u1841
	goto	u1840
u1841:
	goto	l30001445
u1840:
	
l30001446:	
	line	508
;main.c: 508: InvalidKeyCount=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_InvalidKeyCount)
	goto	l155
	
l30001447:	
	line	512
;main.c: 510: else
;main.c: 511: {
;main.c: 512: if((++InvalidKeyCount)>2)
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LockOperation+0+0)
	movf	(??_LockOperation+0+0),w
	addwf	(_InvalidKeyCount),f
	movlw	(03h)
	subwf	((_InvalidKeyCount))&07fh,w
	skipc
	goto	u1851
	goto	u1850
u1851:
	goto	l30001450
u1850:
	
l30001448:	
	line	514
;main.c: 513: {
;main.c: 514: InvalidKeyCount = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_InvalidKeyCount)
	
l30001449:	
	line	515
;main.c: 515: InvalidKeyIndication();
	fcall	_InvalidKeyIndication
	goto	l30001454
	
l30001450:	
	line	519
;main.c: 517: else
;main.c: 518: {
;main.c: 519: for(i=0;i<4;i++)
	movlw	low(0)
	movwf	(LockOperation@i)
	movlw	high(0)
	movwf	((LockOperation@i))+1
	
l30001452:	
	line	521
;main.c: 520: {
;main.c: 521: ToggleBuzzLED();
	fcall	_ToggleBuzzLED
	
l30001453:	
	line	522
;main.c: 522: DelayMs(125);
	movlw	low(07Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(07Dh)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	519
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(LockOperation@i),f
	skipnc
	incf	(LockOperation@i+1),f
	movlw	high(01h)
	addwf	(LockOperation@i+1),f
	movlw	high(04h)
	subwf	(LockOperation@i+1),w
	movlw	low(04h)
	skipnz
	subwf	(LockOperation@i),w
	skipc
	goto	u1861
	goto	u1860
u1861:
	goto	l30001452
u1860:
	
l30001454:	
	line	525
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u1871
	goto	u1870
u1871:
	goto	l30001454
u1870:
	
l155:	
	return
	opt stack 0
GLOBAL	__end_of_LockOperation
	__end_of_LockOperation:
; =============== function _LockOperation ends ============

psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:
	line	528
	signat	_LockOperation,88
	global	_PowerInit

; *************** function _PowerInit *****************
; Defined at:
;		line 19 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
psect	text248
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	19
	global	__size_of_PowerInit
	__size_of_PowerInit	equ	__end_of_PowerInit-_PowerInit
;main.c: 14: unsigned char InvalidKeyCount = 0;
;main.c: 16: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3FFC & 0x3FF7 & 0x3FFF & 0x3FDF & 0x3FBF & 0x3CFF & 0x3BFF & 0x37FF");
;main.c: 18: void PowerInit(void)
;main.c: 19: {
	
_PowerInit:	
	opt stack 5
; Regs used in _PowerInit: [wreg+status,2+status,0]
	line	20
	
l30001343:	
;main.c: 20: IRCF0=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1148/8)^080h,(1148)&7
	line	21
;main.c: 21: SCS=0x01;
	bsf	(1144/8)^080h,(1144)&7
	line	22
;main.c: 22: IRCF1=0x01;
	bsf	(1149/8)^080h,(1149)&7
	line	23
;main.c: 23: IRCF2=0x01;
	bsf	(1150/8)^080h,(1150)&7
	
l30001344:	
	line	25
;main.c: 25: OSCTUNE=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(144)^080h
	line	27
;main.c: 27: CM1CON0=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(281)^0100h	;volatile
	line	28
;main.c: 28: ANSEL=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(286)^0100h
	line	29
;main.c: 29: ANSELH=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(287)^0100h
	
l30001345:	
	line	31
;main.c: 31: TRISC1=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	
l30001346:	
	line	32
;main.c: 32: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l30001347:	
	line	34
;main.c: 34: TRISA5=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1069/8)^080h,(1069)&7
	
l30001348:	
	line	35
;main.c: 35: WPUA=0x24;
	movlw	(024h)
	movwf	(149)^080h
	
l30001349:	
	line	37
;main.c: 37: TRISC5=0x00;
	bcf	(1085/8)^080h,(1085)&7
	
l30001350:	
	line	38
;main.c: 38: RC5=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	
l30001351:	
	line	39
;main.c: 39: TRISA4=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1068/8)^080h,(1068)&7
	
l30001352:	
	line	40
;main.c: 40: RABPU=0x00;
	bcf	(1039/8)^080h,(1039)&7
	
l30001353:	
	line	41
;main.c: 41: TRISC0=0x00;
	bcf	(1080/8)^080h,(1080)&7
	
l30001354:	
	line	42
;main.c: 42: TRISC2=0x01;
	bsf	(1082/8)^080h,(1082)&7
	
l30001355:	
	line	43
;main.c: 43: TRISA2=0x01;
	bsf	(1066/8)^080h,(1066)&7
	
l30001356:	
	line	44
;main.c: 44: RC0=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	
l30001357:	
	line	46
;main.c: 46: TRISC6=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1086/8)^080h,(1086)&7
	
l30001358:	
	line	47
;main.c: 47: TRISC7=0x00;
	bcf	(1087/8)^080h,(1087)&7
	
l30001359:	
	line	49
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l30001360:	
	bcf	(63/8),(63)&7
	
l30001361:	
	line	51
;main.c: 51: EECON1=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volatile
	line	53
;main.c: 53: INTCON=0x88;
	movlw	(088h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(11)	;volatile
	line	54
;main.c: 54: IOCA=0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(150)^080h
	
l30001362:	
	line	55
;main.c: 55: AutoMode=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_AutoMode)
	bsf	status,0
	rlf	(_AutoMode),f
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_PowerInit
	__end_of_PowerInit:
; =============== function _PowerInit ends ============

psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:
	line	56
	signat	_PowerInit,88
	global	_Configuration

; *************** function _Configuration *****************
; Defined at:
;		line 313 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  k               2    0        unsigned int 
;  i               1   19[BANK0 ] unsigned char 
;  KeyConfigure    1   18[BANK0 ] unsigned char 
;  key             1   17[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       4       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_BuzzerBeep
;		_Wait_With_LED_Blink
;		_ReadiButton
;		_AvailabeKey
;		_EEPROMReadKey
;		_strcmp
;		_ClearKey
;		_CRCCheck
;		_EEPROMWriteKey
;		_ClearAllKeys
;		_DelayMs
;		_ToggleLED
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text249
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	313
	global	__size_of_Configuration
	__size_of_Configuration	equ	__end_of_Configuration-_Configuration
;main.c: 312: void Configuration(void)
;main.c: 313: {
	
_Configuration:	
	opt stack 4
; Regs used in _Configuration: [allreg]
	line	314
	
l30001376:	
;main.c: 314: unsigned char i, key, KeyConfigured = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Configuration@KeyConfigured)
	
l30001377:	
	line	317
;main.c: 315: unsigned int k;
;main.c: 317: BuzzerBeep(1,1);
	clrf	(?_BuzzerBeep)
	bsf	status,0
	rlf	(?_BuzzerBeep),f
	movlw	(01h)
	fcall	_BuzzerBeep
	
l30001378:	
	line	319
;main.c: 319: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	line	321
;main.c: 321: TimeCounter = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_TimeCounter)
	goto	l30001412
	
l30001379:	
	line	324
;main.c: 323: {
;main.c: 324: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u1621
	goto	u1620
u1621:
	goto	l30001410
u1620:
	
l30001380:	
	line	326
;main.c: 325: {
;main.c: 326: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001381:	
	line	327
;main.c: 327: if(MatchKey != 2)
	movf	(_MatchKey),w
	xorlw	02h
	skipnz
	goto	u1631
	goto	u1630
u1631:
	goto	l30001406
u1630:
	
l30001382:	
	line	329
;main.c: 328: {
;main.c: 329: KeyConfigured=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Configuration@KeyConfigured)
	bsf	status,0
	rlf	(Configuration@KeyConfigured),f
	line	330
;main.c: 330: for(i=1;i<23;i++)
	clrf	(Configuration@i)
	bsf	status,0
	rlf	(Configuration@i),f
	
l30001385:	
	line	332
;main.c: 331: {
;main.c: 332: EEPROMReadKey(i);
	movf	(Configuration@i),w
	fcall	_EEPROMReadKey
	line	333
;main.c: 333: key = strcmp(iButtonKey,EEPROMKey);
	movlw	((_EEPROMKey))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcmp)
	movlw	((_iButtonKey))&0ffh
	fcall	_strcmp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(Configuration@key)
	
l30001386:	
	line	334
;main.c: 334: if(key)
	movf	(Configuration@key),w
	skipz
	goto	u1640
	goto	l30001391
u1640:
	
l30001387:	
	line	336
;main.c: 335: {
;main.c: 336: ClearKey(i);
	movf	(Configuration@i),w
	fcall	_ClearKey
	
l30001388:	
	line	337
;main.c: 337: BuzzerBeep(2,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_BuzzerBeep)
	movlw	(02h)
	fcall	_BuzzerBeep
	
l30001389:	
	line	338
;main.c: 338: TimeCounter=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_TimeCounter)
	
l30001390:	
	line	340
;main.c: 340: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	goto	l30001393
	
l30001391:	
	line	330
	movlw	(01h)
	movwf	(??_Configuration+0+0)
	movf	(??_Configuration+0+0),w
	addwf	(Configuration@i),f
	
l30001392:	
	movlw	(017h)
	subwf	(Configuration@i),w
	skipc
	goto	u1651
	goto	u1650
u1651:
	goto	l30001385
u1650:
	
l30001393:	
	line	344
;main.c: 342: }
;main.c: 343: }
;main.c: 344: if(i==23)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Configuration@i),w
	xorlw	017h
	skipz
	goto	u1661
	goto	u1660
u1661:
	goto	l30001410
u1660:
	
l30001394:	
	line	346
;main.c: 345: {
;main.c: 346: for(i=1;i<23;i++)
	clrf	(Configuration@i)
	bsf	status,0
	rlf	(Configuration@i),f
	
l30001397:	
	line	348
;main.c: 347: {
;main.c: 348: EEPROMReadKey(i);
	movf	(Configuration@i),w
	fcall	_EEPROMReadKey
	line	349
;main.c: 349: if(CRCCheck(EEPROMKey) == 0)
	movlw	((_EEPROMKey))&0ffh
	fcall	_CRCCheck
	iorlw	0
	skipz
	goto	u1671
	goto	u1670
u1671:
	goto	l30001402
u1670:
	
l30001398:	
	line	351
;main.c: 350: {
;main.c: 351: EEPROMWriteKey(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Configuration@i),w
	fcall	_EEPROMWriteKey
	
l30001399:	
	line	352
;main.c: 352: BuzzerBeep(1,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_BuzzerBeep)
	movlw	(01h)
	fcall	_BuzzerBeep
	
l30001400:	
	line	353
;main.c: 353: TimeCounter=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_TimeCounter)
	
l30001401:	
	line	355
;main.c: 355: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	goto	l30001404
	
l30001402:	
	line	346
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Configuration+0+0)
	movf	(??_Configuration+0+0),w
	addwf	(Configuration@i),f
	
l30001403:	
	movlw	(017h)
	subwf	(Configuration@i),w
	skipc
	goto	u1681
	goto	u1680
u1681:
	goto	l30001397
u1680:
	
l30001404:	
	line	360
;main.c: 357: }
;main.c: 358: }
;main.c: 360: if(i==23)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Configuration@i),w
	xorlw	017h
	skipz
	goto	u1691
	goto	u1690
u1691:
	goto	l137
u1690:
	
l30001405:	
	line	361
;main.c: 361: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	bsf	status,0
	rlf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	goto	l30001410
	
l30001406:	
	line	367
;main.c: 365: else
;main.c: 366: {
;main.c: 367: if(KeyConfigured==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Configuration@KeyConfigured),f
	skipz
	goto	u1701
	goto	u1700
u1701:
	goto	l30001409
u1700:
	
l30001407:	
	line	369
;main.c: 368: {
;main.c: 369: ClearAllKeys(0);
	movlw	(0)
	fcall	_ClearAllKeys
	
l30001408:	
	line	370
;main.c: 370: BuzzerBeep(3,1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_BuzzerBeep)
	bsf	status,0
	rlf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	goto	l30001413
	
l30001409:	
	line	373
;main.c: 372: else
;main.c: 373: BuzzerBeep(1,0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_BuzzerBeep)
	movlw	(01h)
	fcall	_BuzzerBeep
	goto	l30001413
	
l137:	
	
l30001410:	
	line	377
;main.c: 375: }
;main.c: 376: }
;main.c: 377: DelayMs(170+30*3);
	movlw	low(0104h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(0104h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	line	378
;main.c: 378: ToggleLED();
	fcall	_ToggleLED
	
l30001411:	
	line	379
;main.c: 379: TimeCounter++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Configuration+0+0)
	movf	(??_Configuration+0+0),w
	addwf	(_TimeCounter),f
	
l30001412:	
	line	322
	movlw	(024h)
	subwf	(_TimeCounter),w
	skipc
	goto	u1711
	goto	u1710
u1711:
	goto	l30001379
u1710:
	
l30001413:	
	line	381
;main.c: 380: }
;main.c: 381: TimeCounter = 5;
	movlw	(05h)
	movwf	(_TimeCounter)
	
l30001414:	
	line	382
;main.c: 382: TimeCounter++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Configuration+0+0)
	movf	(??_Configuration+0+0),w
	addwf	(_TimeCounter),f
	
l121:	
	return
	opt stack 0
GLOBAL	__end_of_Configuration
	__end_of_Configuration:
; =============== function _Configuration ends ============

psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:
	line	383
	signat	_Configuration,88
	global	_DoorOpen

; *************** function _DoorOpen *****************
; Defined at:
;		line 115 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  BattStatus      1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       0       0
;      Temp:     1
;      Total:    2
; This function calls:
;		_DelayMs
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text250
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	115
	global	__size_of_DoorOpen
	__size_of_DoorOpen	equ	__end_of_DoorOpen-_DoorOpen
;main.c: 114: void DoorOpen(void)
;main.c: 115: {
	
_DoorOpen:	
	opt stack 4
; Regs used in _DoorOpen: [wreg+status,2+status,0+pclath+cstack]
	line	117
	
l30001633:	
;main.c: 116: unsigned char BattStatus;
;main.c: 117: BattStatus=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(DoorOpen@BattStatus)
	
l30001634:	
	line	118
;main.c: 118: if(RA5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l30001636
u2220:
	
l30001635:	
	line	119
;main.c: 119: BattStatus++;
	movlw	(01h)
	movwf	(??_DoorOpen+0+0)
	movf	(??_DoorOpen+0+0),w
	addwf	(DoorOpen@BattStatus),f
	
l30001636:	
	line	120
;main.c: 120: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001637:	
	line	121
;main.c: 121: if(RA5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(45/8),(45)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l30001639
u2230:
	
l30001638:	
	line	122
;main.c: 122: BattStatus++;
	movlw	(01h)
	movwf	(??_DoorOpen+0+0)
	movf	(??_DoorOpen+0+0),w
	addwf	(DoorOpen@BattStatus),f
	
l30001639:	
	line	123
;main.c: 123: if(DoorState != 1)
	movf	(_DoorState),w
	xorlw	01h
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l30001643
u2240:
	
l28:	
	line	125
	bsf	(62/8),(62)&7
	bsf	(63/8),(63)&7
	
l30001640:	
	line	127
;main.c: 127: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001641:	
	line	128
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(62/8),(62)&7
	
l30001642:	
	bcf	(63/8),(63)&7
	
l30:	
	line	130
;main.c: 130: DelayMs(195);
	movlw	low(0C3h)
	movwf	(?_DelayMs)
	movlw	high(0C3h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001643:	
	line	132
;main.c: 131: }
;main.c: 132: if(!RA5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l30001645
u2250:
	
l30001644:	
	line	133
;main.c: 133: BattStatus++;
	movlw	(01h)
	movwf	(??_DoorOpen+0+0)
	movf	(??_DoorOpen+0+0),w
	addwf	(DoorOpen@BattStatus),f
	
l30001645:	
	line	134
;main.c: 134: DelayMs(10);
	movlw	low(0Ah)
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001646:	
	line	135
;main.c: 135: if(!RA5)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(45/8),(45)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l30001648
u2260:
	
l30001647:	
	line	136
;main.c: 136: BattStatus++;
	movlw	(01h)
	movwf	(??_DoorOpen+0+0)
	movf	(??_DoorOpen+0+0),w
	addwf	(DoorOpen@BattStatus),f
	
l30001648:	
	line	137
;main.c: 137: DelayMs(195);
	movlw	low(0C3h)
	movwf	(?_DelayMs)
	movlw	high(0C3h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001649:	
	line	138
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l30001650:	
	bcf	(63/8),(63)&7
	
l30001651:	
	line	140
;main.c: 140: DoorState=1;
	clrf	(_DoorState)
	bsf	status,0
	rlf	(_DoorState),f
	
l30001652:	
	line	142
;main.c: 142: if(BattStatus == 4)
	movf	(DoorOpen@BattStatus),w
	xorlw	04h
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l30001654
u2270:
	
l30001653:	
	line	143
;main.c: 143: LowBatt=0x01;
	clrf	(_LowBatt)
	bsf	status,0
	rlf	(_LowBatt),f
	goto	l22
	
l30001654:	
	line	145
;main.c: 144: else
;main.c: 145: LowBatt=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_LowBatt)
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_DoorOpen
	__end_of_DoorOpen:
; =============== function _DoorOpen ends ============

psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:
	line	146
	signat	_DoorOpen,88
	global	_GoToSleep

; *************** function _GoToSleep *****************
; Defined at:
;		line 68 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_DelayMs
; This function is called by:
;		_ConfigureMasterKey
;		_main
; This function uses a non-reentrant model
; 
psect	text251
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	68
	global	__size_of_GoToSleep
	__size_of_GoToSleep	equ	__end_of_GoToSleep-_GoToSleep
;main.c: 67: void GoToSleep(void)
;main.c: 68: {
	
_GoToSleep:	
	opt stack 4
; Regs used in _GoToSleep: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l30001631:	
# 70 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
 BSF 0x3, 0x5 ;#
	line	71
# 71 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
 BCF 0x3, 0x6 ;#
	line	72
# 72 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
 BSF 0x5, 0x2 ;#
	line	74
# 74 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
 MOVLW 0x24 ;#
	line	75
# 75 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
 MOVWF 0x16 ;#
	line	76
# 76 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
 SLEEP ;#
	line	78
# 78 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
# 77 ;#
psect	text251
	
l30001632:	
	line	81
;main.c: 81: DelayMs(80);
	movlw	low(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(050h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_GoToSleep
	__end_of_GoToSleep:
; =============== function _GoToSleep ends ============

psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:
	line	82
	signat	_GoToSleep,88
	global	_ToggleBuzzLED

; *************** function _ToggleBuzzLED *****************
; Defined at:
;		line 101 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text252
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	101
	global	__size_of_ToggleBuzzLED
	__size_of_ToggleBuzzLED	equ	__end_of_ToggleBuzzLED-_ToggleBuzzLED
;main.c: 100: void ToggleBuzzLED(void)
;main.c: 101: {
	
_ToggleBuzzLED:	
	opt stack 4
; Regs used in _ToggleBuzzLED: []
	line	102
	
l30001341:	
;main.c: 102: if(RC0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u1581
	goto	u1580
u1581:
	goto	l20
u1580:
	
l30001342:	
	line	104
;main.c: 103: {
;main.c: 104: RC1=0x00;
	bcf	(57/8),(57)&7
	line	105
;main.c: 105: RC0=0x00;
	bcf	(56/8),(56)&7
	goto	l19
	
l20:	
	line	109
;main.c: 107: else
;main.c: 108: {
;main.c: 109: RC1=0x01;
	bsf	(57/8),(57)&7
	line	110
;main.c: 110: RC0=0x01;
	bsf	(56/8),(56)&7
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleBuzzLED
	__end_of_ToggleBuzzLED:
; =============== function _ToggleBuzzLED ends ============

psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:
	line	112
	signat	_ToggleBuzzLED,88
	global	_DoorClose

; *************** function _DoorClose *****************
; Defined at:
;		line 149 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_DelayMs
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text253
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	149
	global	__size_of_DoorClose
	__size_of_DoorClose	equ	__end_of_DoorClose-_DoorClose
;main.c: 148: void DoorClose(void)
;main.c: 149: {
	
_DoorClose:	
	opt stack 4
; Regs used in _DoorClose: [wreg+status,2+status,0+pclath+cstack]
	line	153
	
l30001655:	
;main.c: 153: if(DoorState != 0)
	movf	(_DoorState),w
	skipz
	goto	u2280
	goto	l30001659
u2280:
	
l43:	
	line	155
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	bsf	(63/8),(63)&7
	
l30001656:	
	line	156
;main.c: 156: DelayMs(400);
	movlw	low(0190h)
	movwf	(?_DelayMs)
	movlw	high(0190h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001657:	
	line	157
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(62/8),(62)&7
	
l30001658:	
	bcf	(63/8),(63)&7
	
l30001659:	
	line	159
;main.c: 158: }
;main.c: 159: DoorState=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_DoorState)
	
l39:	
	return
	opt stack 0
GLOBAL	__end_of_DoorClose
	__end_of_DoorClose:
; =============== function _DoorClose ends ============

psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:
	line	160
	signat	_DoorClose,88
	global	_InvalidKeyIndication

; *************** function _InvalidKeyIndication *****************
; Defined at:
;		line 386 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       1       0
;      Temp:     1
;      Total:    1
; This function calls:
;		_DelayMs
;		_ReadiButton
;		_AvailabeKey
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text254
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	386
	global	__size_of_InvalidKeyIndication
	__size_of_InvalidKeyIndication	equ	__end_of_InvalidKeyIndication-_InvalidKeyIndication
;main.c: 385: void InvalidKeyIndication(void)
;main.c: 386: {
	
_InvalidKeyIndication:	
	opt stack 4
; Regs used in _InvalidKeyIndication: [allreg]
	line	387
	
l30001496:	
;main.c: 387: RC1=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	388
;main.c: 388: RC0=0x01;
	bsf	(56/8),(56)&7
	
l30001497:	
	line	389
;main.c: 389: TimeCounter=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_TimeCounter)
	goto	l30001505
	
l30001498:	
	line	392
;main.c: 391: {
;main.c: 392: DelayMs(420);
	movlw	low(01A4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(01A4h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001499:	
	line	393
;main.c: 393: TimeCounter++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_InvalidKeyIndication+0+0)
	movf	(??_InvalidKeyIndication+0+0),w
	addwf	(_TimeCounter),f
	
l30001500:	
	line	395
;main.c: 395: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u1971
	goto	u1970
u1971:
	goto	l30001505
u1970:
	
l30001501:	
	line	397
;main.c: 396: {
;main.c: 397: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001502:	
	line	398
;main.c: 398: if(MatchKey != 0)
	movf	(_MatchKey),w
	skipz
	goto	u1980
	goto	l30001505
u1980:
	
l30001503:	
	line	400
;main.c: 399: {
;main.c: 400: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	401
;main.c: 401: RC0=0x00;
	bcf	(56/8),(56)&7
	
l30001504:	
	line	402
;main.c: 402: DelayMs(500);
	movlw	low(01F4h)
	movwf	(?_DelayMs)
	movlw	high(01F4h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l143
	
l30001505:	
	line	390
	movlw	(0F0h)
	subwf	(_TimeCounter),w
	skipc
	goto	u1991
	goto	u1990
u1991:
	goto	l30001498
u1990:
	
l143:	
	line	407
;main.c: 404: }
;main.c: 405: }
;main.c: 406: }
;main.c: 407: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	408
;main.c: 408: RC0=0x00;
	bcf	(56/8),(56)&7
	
l140:	
	return
	opt stack 0
GLOBAL	__end_of_InvalidKeyIndication
	__end_of_InvalidKeyIndication:
; =============== function _InvalidKeyIndication ends ============

psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:
	line	409
	signat	_InvalidKeyIndication,88
	global	_BuzzerBeep

; *************** function _BuzzerBeep *****************
; Defined at:
;		line 163 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  BeepNum         1    wreg     unsigned char 
;  LONG_BEEP       1   15[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;  BeepNum         1   11[BANK0 ] unsigned char 
;  BeepTime        2   12[BANK0 ] unsigned int 
;  BeepCnt         1   14[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0      10       0
;      Temp:     5
;      Total:   10
; This function calls:
;		_DelayMs
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
;		_LockOperation
;		_main
; This function uses a non-reentrant model
; 
psect	text255
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	163
	global	__size_of_BuzzerBeep
	__size_of_BuzzerBeep	equ	__end_of_BuzzerBeep-_BuzzerBeep
;main.c: 162: void BuzzerBeep(unsigned char BeepNum, unsigned char LONG_BEEP)
;main.c: 163: {
	
_BuzzerBeep:	
	opt stack 3
; Regs used in _BuzzerBeep: [wreg+status,2+status,0+pclath+cstack]
;BuzzerBeep@BeepNum stored from wreg
	line	165
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(BuzzerBeep@BeepNum)
	
l30001366:	
;main.c: 165: unsigned int BeepTime = 0;
	movlw	low(0)
	movwf	(BuzzerBeep@BeepTime)
	movlw	high(0)
	movwf	((BuzzerBeep@BeepTime))+1
	
l30001367:	
	line	166
;main.c: 166: if(LONG_BEEP)
	movf	(BuzzerBeep@LONG_BEEP),w
	skipz
	goto	u1590
	goto	l30001369
u1590:
	
l30001368:	
	line	167
;main.c: 167: BeepTime = (4*0x64);
	movlw	low(0190h)
	movwf	(BuzzerBeep@BeepTime)
	movlw	high(0190h)
	movwf	((BuzzerBeep@BeepTime))+1
	goto	l30001370
	
l30001369:	
	line	169
;main.c: 168: else
;main.c: 169: BeepTime = 0x64;
	movlw	low(064h)
	movwf	(BuzzerBeep@BeepTime)
	movlw	high(064h)
	movwf	((BuzzerBeep@BeepTime))+1
	
l30001370:	
	line	171
;main.c: 171: RC1=0x00;
	bcf	(57/8),(57)&7
	
l30001371:	
	line	172
;main.c: 172: for(BeepCnt=0; BeepCnt<((BeepNum * 2) - 1); BeepCnt++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(BuzzerBeep@BeepCnt)
	goto	l30001375
	
l30001372:	
	line	174
;main.c: 173: {
;main.c: 174: RC1 = !RC1;
	movlw	1<<((57)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((57)/8),f
	
l30001373:	
	line	175
;main.c: 175: DelayMs(BeepTime);
	movf	(BuzzerBeep@BeepTime+1),w
	clrf	(?_DelayMs+1)
	addwf	(?_DelayMs+1)
	movf	(BuzzerBeep@BeepTime),w
	clrf	(?_DelayMs)
	addwf	(?_DelayMs)

	fcall	_DelayMs
	
l30001374:	
	line	172
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_BuzzerBeep+0+0)
	movf	(??_BuzzerBeep+0+0),w
	addwf	(BuzzerBeep@BeepCnt),f
	
l30001375:	
	movf	(BuzzerBeep@BeepNum),w
	movwf	(??_BuzzerBeep+0+0)
	clrf	(??_BuzzerBeep+0+0+1)
	movlw	01h
	movwf	(??_BuzzerBeep+2+0)
u1605:
	clrc
	rlf	(??_BuzzerBeep+0+0),f
	rlf	(??_BuzzerBeep+0+1),f
	decfsz	(??_BuzzerBeep+2+0),f
	goto	u1605
	movf	0+(??_BuzzerBeep+0+0),w
	addlw	low(-1)
	movwf	(??_BuzzerBeep+3+0)
	movf	1+(??_BuzzerBeep+0+0),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(??_BuzzerBeep+3+0)
	movf	1+(??_BuzzerBeep+3+0),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u1615
	movf	0+(??_BuzzerBeep+3+0),w
	subwf	(BuzzerBeep@BeepCnt),w
u1615:

	skipc
	goto	u1611
	goto	u1610
u1611:
	goto	l30001372
u1610:
	
l51:	
	line	177
;main.c: 176: }
;main.c: 177: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l47:	
	return
	opt stack 0
GLOBAL	__end_of_BuzzerBeep
	__end_of_BuzzerBeep:
; =============== function _BuzzerBeep ends ============

psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:
	line	178
	signat	_BuzzerBeep,8312
	global	_Wait_With_LED_Blink

; *************** function _Wait_With_LED_Blink *****************
; Defined at:
;		line 303 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  k               2    1[COMMON] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_ToggleLED
;		_CheckForiButtonDisconnect
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
; This function uses a non-reentrant model
; 
psect	text256
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	303
	global	__size_of_Wait_With_LED_Blink
	__size_of_Wait_With_LED_Blink	equ	__end_of_Wait_With_LED_Blink-_Wait_With_LED_Blink
;main.c: 302: void Wait_With_LED_Blink(void)
;main.c: 303: {
	
_Wait_With_LED_Blink:	
	opt stack 3
; Regs used in _Wait_With_LED_Blink: [wreg+status,2+status,0+pclath+cstack]
	
l30001569:	
	goto	l115
	
l30001570:	
	line	307
;main.c: 306: {
;main.c: 307: for(k=0;k<13500;k++);
	movlw	low(0)
	movwf	(Wait_With_LED_Blink@k)
	movlw	high(0)
	movwf	((Wait_With_LED_Blink@k))+1
	
l30001572:	
	movlw	low(01h)
	addwf	(Wait_With_LED_Blink@k),f
	skipnc
	incf	(Wait_With_LED_Blink@k+1),f
	movlw	high(01h)
	addwf	(Wait_With_LED_Blink@k+1),f
	movlw	high(034BCh)
	subwf	(Wait_With_LED_Blink@k+1),w
	movlw	low(034BCh)
	skipnz
	subwf	(Wait_With_LED_Blink@k),w
	skipc
	goto	u2081
	goto	u2080
u2081:
	goto	l30001572
u2080:
	
l30001573:	
	line	308
;main.c: 308: ToggleLED();
	fcall	_ToggleLED
	
l115:	
	line	305
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u2091
	goto	u2090
u2091:
	goto	l30001570
u2090:
	
l114:	
	return
	opt stack 0
GLOBAL	__end_of_Wait_With_LED_Blink
	__end_of_Wait_With_LED_Blink:
; =============== function _Wait_With_LED_Blink ends ============

psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:
	line	310
	signat	_Wait_With_LED_Blink,88
	global	_ClearAllKeys

; *************** function _ClearAllKeys *****************
; Defined at:
;		line 276 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  Master_Also     1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  Master_Also     1    7[BANK0 ] unsigned char 
;  i               1    8[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
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
;		_EEPROMWriteKeyByte
; This function is called by:
;		_Configuration
;		_main
; This function uses a non-reentrant model
; 
psect	text257
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	276
	global	__size_of_ClearAllKeys
	__size_of_ClearAllKeys	equ	__end_of_ClearAllKeys-_ClearAllKeys
;main.c: 275: void ClearAllKeys(unsigned char Master_Also)
;main.c: 276: {
	
_ClearAllKeys:	
	opt stack 3
; Regs used in _ClearAllKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ClearAllKeys@Master_Also stored from wreg
	line	279
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ClearAllKeys@Master_Also)
	
l30001605:	
;main.c: 277: unsigned char i;
;main.c: 279: for(i=0;i<8;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(ClearAllKeys@i)
	
l30001608:	
	line	281
;main.c: 280: {
;main.c: 281: iButtonKey[i]=0x55;
	movlw	(055h)
	movwf	(??_ClearAllKeys+0+0)
	movf	(ClearAllKeys@i),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	movf	(??_ClearAllKeys+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001609:	
	line	279
	movlw	(01h)
	movwf	(??_ClearAllKeys+0+0)
	movf	(??_ClearAllKeys+0+0),w
	addwf	(ClearAllKeys@i),f
	
l30001610:	
	movlw	(08h)
	subwf	(ClearAllKeys@i),w
	skipc
	goto	u2161
	goto	u2160
u2161:
	goto	l30001608
u2160:
	
l30001611:	
	line	283
;main.c: 282: }
;main.c: 283: i=0x01;
	clrf	(ClearAllKeys@i)
	bsf	status,0
	rlf	(ClearAllKeys@i),f
	
l30001612:	
	line	284
;main.c: 284: if(Master_Also)
	movf	(ClearAllKeys@Master_Also),w
	skipz
	goto	u2170
	goto	l30001614
u2170:
	
l30001613:	
	line	285
;main.c: 285: i=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(ClearAllKeys@i)
	
l30001614:	
	line	286
;main.c: 286: for(;i<23;i++)
	movlw	(017h)
	subwf	(ClearAllKeys@i),w
	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l30001616
u2180:
	goto	l102
	
l30001616:	
	line	288
;main.c: 287: {
;main.c: 288: EEPROMWriteKeyByte(i);
	movf	(ClearAllKeys@i),w
	fcall	_EEPROMWriteKeyByte
	
l30001617:	
	line	286
	movlw	(01h)
	movwf	(??_ClearAllKeys+0+0)
	movf	(??_ClearAllKeys+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(ClearAllKeys@i),f
	goto	l30001614
	
l102:	
	return
	opt stack 0
GLOBAL	__end_of_ClearAllKeys
	__end_of_ClearAllKeys:
; =============== function _ClearAllKeys ends ============

psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:
	line	290
	signat	_ClearAllKeys,4216
	global	_EEPROMWriteKey

; *************** function _EEPROMWriteKey *****************
; Defined at:
;		line 229 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  WriteAddress    1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  WriteAddress    1    6[BANK0 ] unsigned char 
;  KeyLength       1    7[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       2       0
;      Temp:     2
;      Total:    4
; This function calls:
;		_WriteEEPROM
;		_DelayMs
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
; This function uses a non-reentrant model
; 
psect	text258
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	229
	global	__size_of_EEPROMWriteKey
	__size_of_EEPROMWriteKey	equ	__end_of_EEPROMWriteKey-_EEPROMWriteKey
;main.c: 228: void EEPROMWriteKey(unsigned char WriteAddress)
;main.c: 229: {
	
_EEPROMWriteKey:	
	opt stack 3
; Regs used in _EEPROMWriteKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;EEPROMWriteKey@WriteAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(EEPROMWriteKey@WriteAddress)
	
l79:	
	
l30001660:	
	line	231
	movlw	(07Eh)
	movwf	(??_EEPROMWriteKey+0+0)
	movf	(??_EEPROMWriteKey+0+0),w
	andwf	(11),f	;volatile
	
l78:	
	line	232
;main.c: 232: WriteAddress = WriteAddress * 8;
	movf	(EEPROMWriteKey@WriteAddress),w
	movwf	(??_EEPROMWriteKey+0+0)
	movlw	(03h)-1
u2295:
	clrc
	rlf	(??_EEPROMWriteKey+0+0),f
	addlw	-1
	skipz
	goto	u2295
	clrc
	rlf	(??_EEPROMWriteKey+0+0),w
	movwf	(EEPROMWriteKey@WriteAddress)
	line	233
;main.c: 233: for(KeyLength=0;KeyLength<8;KeyLength++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(EEPROMWriteKey@KeyLength)
	
l30001663:	
	line	235
;main.c: 234: {
;main.c: 235: DataEEAddr = WriteAddress++;
	movf	(EEPROMWriteKey@WriteAddress),w
	movwf	(??_EEPROMWriteKey+0+0)
	clrf	(??_EEPROMWriteKey+0+0+1)
	movf	0+(??_EEPROMWriteKey+0+0),w
	movwf	(_DataEEAddr)
	movf	1+(??_EEPROMWriteKey+0+0),w
	movwf	(_DataEEAddr+1)
	
l30001664:	
	movlw	(01h)
	movwf	(??_EEPROMWriteKey+0+0)
	movf	(??_EEPROMWriteKey+0+0),w
	addwf	(EEPROMWriteKey@WriteAddress),f
	
l30001665:	
	line	236
;main.c: 236: DataEEData = iButtonKey[KeyLength];
	movf	(EEPROMWriteKey@KeyLength),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_EEPROMWriteKey+0+0)
	clrf	(??_EEPROMWriteKey+0+0+1)
	movf	0+(??_EEPROMWriteKey+0+0),w
	movwf	(_DataEEData)
	movf	1+(??_EEPROMWriteKey+0+0),w
	movwf	(_DataEEData+1)
	
l30001666:	
	line	237
;main.c: 237: WriteEEPROM();
	fcall	_WriteEEPROM
	
l30001667:	
	line	238
;main.c: 238: DelayMs(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001668:	
	line	233
	movlw	(01h)
	movwf	(??_EEPROMWriteKey+0+0)
	movf	(??_EEPROMWriteKey+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(EEPROMWriteKey@KeyLength),f
	
l30001669:	
	movlw	(08h)
	subwf	(EEPROMWriteKey@KeyLength),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l30001663
u2300:
	
l85:	
	line	240
	bsf	(11)+(7/8),(7)&7	;volatile
	
l76:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMWriteKey
	__end_of_EEPROMWriteKey:
; =============== function _EEPROMWriteKey ends ============

psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:
	line	241
	signat	_EEPROMWriteKey,4216
	global	_AvailabeKey

; *************** function _AvailabeKey *****************
; Defined at:
;		line 258 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               1    4[BANK0 ] unsigned char 
;  key             1    3[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       3       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_EEPROMReadKey
;		_strcmp
; This function is called by:
;		_Configuration
;		_InvalidKeyIndication
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text259
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	258
	global	__size_of_AvailabeKey
	__size_of_AvailabeKey	equ	__end_of_AvailabeKey-_AvailabeKey
;main.c: 257: unsigned char AvailabeKey(void)
;main.c: 258: {
	
_AvailabeKey:	
	opt stack 3
; Regs used in _AvailabeKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	260
	
l30001478:	
;main.c: 259: unsigned char i, key;
;main.c: 260: for(i=0;i<23;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(AvailabeKey@i)
	
l30001481:	
	line	262
;main.c: 261: {
;main.c: 262: EEPROMReadKey(i);
	movf	(AvailabeKey@i),w
	fcall	_EEPROMReadKey
	line	263
;main.c: 263: key = strcmp(iButtonKey,EEPROMKey);
	movlw	((_EEPROMKey))&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_strcmp)
	movlw	((_iButtonKey))&0ffh
	fcall	_strcmp
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(AvailabeKey@key)
	
l30001482:	
	line	264
;main.c: 264: if(key)
	movf	(AvailabeKey@key),w
	skipz
	goto	u1930
	goto	l30001484
u1930:
	goto	l30001486
	
l30001484:	
	line	260
	movlw	(01h)
	movwf	(??_AvailabeKey+0+0)
	movf	(??_AvailabeKey+0+0),w
	addwf	(AvailabeKey@i),f
	
l30001485:	
	movlw	(017h)
	subwf	(AvailabeKey@i),w
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l30001481
u1940:
	
l30001486:	
	line	267
;main.c: 266: }
;main.c: 267: if(i == 0)
	movf	(AvailabeKey@i),f
	skipz
	goto	u1951
	goto	u1950
u1951:
	goto	l30001490
u1950:
	
l30001487:	
	line	268
;main.c: 268: return(2);
	movlw	(02h)
	goto	l93
	
l30001490:	
	line	269
;main.c: 269: else if(i < 23)
	movlw	(017h)
	subwf	(AvailabeKey@i),w
	skipnc
	goto	u1961
	goto	u1960
u1961:
	goto	l30001494
u1960:
	
l30001491:	
	line	270
;main.c: 270: return(1);
	movlw	(01h)
	goto	l93
	
l30001494:	
	line	272
;main.c: 271: else
;main.c: 272: return(0);
	movlw	(0)
	
l93:	
	return
	opt stack 0
GLOBAL	__end_of_AvailabeKey
	__end_of_AvailabeKey:
; =============== function _AvailabeKey ends ============

psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:
	line	273
	signat	_AvailabeKey,89
	global	_ReadiButton

; *************** function _ReadiButton *****************
; Defined at:
;		line 43 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  n               1    5[BANK0 ] unsigned char 
;  iButtonPrese    1    4[BANK0 ] unsigned char 
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
;		_Configuration
;		_InvalidKeyIndication
;		_ConfigureMasterKey
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text260
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	43
	global	__size_of_ReadiButton
	__size_of_ReadiButton	equ	__end_of_ReadiButton-_ReadiButton
;OneWire.c: 42: unsigned char ReadiButton(void)
;OneWire.c: 43: {
	
_ReadiButton:	
	opt stack 3
; Regs used in _ReadiButton: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30001532:	
	
l30001533:	
	line	45
;OneWire.c: 45: iButtonPresent = InitiButton();
	fcall	_InitiButton
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ReadiButton@iButtonPresent)
	
l30001534:	
	line	46
;OneWire.c: 46: if(iButtonPresent)
	movf	(ReadiButton@iButtonPresent),w
	skipz
	goto	u2040
	goto	l30001548
u2040:
	
l30001535:	
	line	48
;OneWire.c: 47: {
;OneWire.c: 48: WriteByteToiButton(0x33);
	movlw	(033h)
	fcall	_WriteByteToiButton
	
l30001536:	
	line	49
;OneWire.c: 49: for (n=0; n<8; n++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ReadiButton@n)
	
l30001539:	
	line	50
;OneWire.c: 50: iButtonKey[n]=ReadByteToiButton();
	fcall	_ReadByteToiButton
	movwf	(??_ReadiButton+0+0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ReadiButton@n),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	movf	(??_ReadiButton+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001540:	
	line	49
	movlw	(01h)
	movwf	(??_ReadiButton+0+0)
	movf	(??_ReadiButton+0+0),w
	addwf	(ReadiButton@n),f
	
l30001541:	
	movlw	(08h)
	subwf	(ReadiButton@n),w
	skipc
	goto	u2051
	goto	u2050
u2051:
	goto	l30001539
u2050:
	
l30001542:	
	line	52
;OneWire.c: 52: if(CRCCheck(iButtonKey))
	movlw	((_iButtonKey))&0ffh
	fcall	_CRCCheck
	xorlw	0
	skipnz
	goto	u2061
	goto	u2060
u2061:
	goto	l30001546
u2060:
	
l30001543:	
	line	53
;OneWire.c: 53: return(1);
	movlw	(01h)
	goto	l204
	
l30001546:	
	line	55
;OneWire.c: 54: else
;OneWire.c: 55: return(0);
	movlw	(0)
	goto	l204
	
l30001548:	
	line	57
;OneWire.c: 56: }
;OneWire.c: 57: return(iButtonPresent);
	movf	(ReadiButton@iButtonPresent),w
	
l204:	
	return
	opt stack 0
GLOBAL	__end_of_ReadiButton
	__end_of_ReadiButton:
; =============== function _ReadiButton ends ============

psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:
	line	58
	signat	_ReadiButton,89
	global	_ClearKey

; *************** function _ClearKey *****************
; Defined at:
;		line 293 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  KeyNum          1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  KeyNum          1    7[BANK0 ] unsigned char 
;  i               1    8[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
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
;		_EEPROMWriteKeyByte
; This function is called by:
;		_Configuration
;		_main
; This function uses a non-reentrant model
; 
psect	text261
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	293
	global	__size_of_ClearKey
	__size_of_ClearKey	equ	__end_of_ClearKey-_ClearKey
;main.c: 292: void ClearKey(unsigned char KeyNum)
;main.c: 293: {
	
_ClearKey:	
	opt stack 3
; Regs used in _ClearKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ClearKey@KeyNum stored from wreg
	line	295
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ClearKey@KeyNum)
	
l30001619:	
;main.c: 294: unsigned char i;
;main.c: 295: for(i=0;i<8;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(ClearKey@i)
	
l30001622:	
	line	297
;main.c: 296: {
;main.c: 297: iButtonKey[i]=0x55;
	movlw	(055h)
	movwf	(??_ClearKey+0+0)
	movf	(ClearKey@i),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	movf	(??_ClearKey+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001623:	
	line	295
	movlw	(01h)
	movwf	(??_ClearKey+0+0)
	movf	(??_ClearKey+0+0),w
	addwf	(ClearKey@i),f
	
l30001624:	
	movlw	(08h)
	subwf	(ClearKey@i),w
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l30001622
u2190:
	
l30001625:	
	line	299
;main.c: 298: }
;main.c: 299: EEPROMWriteKeyByte(KeyNum);
	movf	(ClearKey@KeyNum),w
	fcall	_EEPROMWriteKeyByte
	
l110:	
	return
	opt stack 0
GLOBAL	__end_of_ClearKey
	__end_of_ClearKey:
; =============== function _ClearKey ends ============

psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
	line	300
	signat	_ClearKey,4216
	global	_strcmp

; *************** function _strcmp *****************
; Defined at:
;		line 244 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  x               1    wreg     PTR unsigned char 
;		 -> iButtonKey(9), 
;  y               1    0[BANK0 ] PTR unsigned char 
;		 -> EEPROMKey(9), 
; Auto vars:     Size  Location     Type
;  x               1    1[COMMON] PTR unsigned char 
;		 -> iButtonKey(9), 
;  i               1    2[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         3       1       0
;      Temp:     1
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_AvailabeKey
;		_Configuration
; This function uses a non-reentrant model
; 
psect	text262
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	244
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
;main.c: 243: unsigned char strcmp(unsigned char* x, unsigned char* y)
;main.c: 244: {
	
_strcmp:	
	opt stack 2
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@x stored from wreg
	line	246
	movwf	(strcmp@x)
	
l30001586:	
;main.c: 245: unsigned char i;
;main.c: 246: for(i=0;i<8;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(strcmp@i)
	
l30001589:	
	line	248
;main.c: 247: {
;main.c: 248: if(*x++ != *y++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(strcmp@y),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@y),f
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0+0)
	movf	(strcmp@x),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@x),f
	movf	indf,w
	xorwf	(??_strcmp+0+0),w
	skipnz
	goto	u2121
	goto	u2120
u2121:
	goto	l30001591
u2120:
	goto	l30001593
	
l30001591:	
	line	246
	movlw	(01h)
	movwf	(??_strcmp+0+0)
	movf	(??_strcmp+0+0),w
	addwf	(strcmp@i),f
	
l30001592:	
	movlw	(08h)
	subwf	(strcmp@i),w
	skipc
	goto	u2131
	goto	u2130
u2131:
	goto	l30001589
u2130:
	
l30001593:	
	line	251
;main.c: 250: }
;main.c: 251: if(i==8)
	movf	(strcmp@i),w
	xorlw	08h
	skipz
	goto	u2141
	goto	u2140
u2141:
	goto	l30001597
u2140:
	
l30001594:	
	line	252
;main.c: 252: return(1);
	movlw	(01h)
	goto	l86
	
l30001597:	
	line	254
;main.c: 253: else
;main.c: 254: return(0);
	movlw	(0)
	
l86:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
; =============== function _strcmp ends ============

psect	text263,local,class=CODE,delta=2
global __ptext263
__ptext263:
	line	255
	signat	_strcmp,8313
	global	_EEPROMWriteKeyByte

; *************** function _EEPROMWriteKeyByte *****************
; Defined at:
;		line 218 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  WriteAddress    1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  WriteAddress    1    6[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       1       0
;      Temp:     2
;      Total:    3
; This function calls:
;		_WriteEEPROM
;		_DelayMs
; This function is called by:
;		_ClearAllKeys
;		_ClearKey
; This function uses a non-reentrant model
; 
psect	text263
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	218
	global	__size_of_EEPROMWriteKeyByte
	__size_of_EEPROMWriteKeyByte	equ	__end_of_EEPROMWriteKeyByte-_EEPROMWriteKeyByte
;main.c: 217: void EEPROMWriteKeyByte(unsigned char WriteAddress)
;main.c: 218: {
	
_EEPROMWriteKeyByte:	
	opt stack 2
; Regs used in _EEPROMWriteKeyByte: [wreg+status,2+status,0+pclath+cstack]
;EEPROMWriteKeyByte@WriteAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(EEPROMWriteKeyByte@WriteAddress)
	
l72:	
	
l30001599:	
	line	219
	movlw	(07Eh)
	movwf	(??_EEPROMWriteKeyByte+0+0)
	movf	(??_EEPROMWriteKeyByte+0+0),w
	andwf	(11),f	;volatile
	
l71:	
	line	220
;main.c: 220: WriteAddress = WriteAddress * 8;
	movf	(EEPROMWriteKeyByte@WriteAddress),w
	movwf	(??_EEPROMWriteKeyByte+0+0)
	movlw	(03h)-1
u2155:
	clrc
	rlf	(??_EEPROMWriteKeyByte+0+0),f
	addlw	-1
	skipz
	goto	u2155
	clrc
	rlf	(??_EEPROMWriteKeyByte+0+0),w
	movwf	(EEPROMWriteKeyByte@WriteAddress)
	
l30001600:	
	line	221
;main.c: 221: DataEEAddr = WriteAddress++;
	movf	(EEPROMWriteKeyByte@WriteAddress),w
	movwf	(??_EEPROMWriteKeyByte+0+0)
	clrf	(??_EEPROMWriteKeyByte+0+0+1)
	movf	0+(??_EEPROMWriteKeyByte+0+0),w
	movwf	(_DataEEAddr)
	movf	1+(??_EEPROMWriteKeyByte+0+0),w
	movwf	(_DataEEAddr+1)
	
l30001601:	
	movlw	(01h)
	movwf	(??_EEPROMWriteKeyByte+0+0)
	movf	(??_EEPROMWriteKeyByte+0+0),w
	addwf	(EEPROMWriteKeyByte@WriteAddress),f
	line	222
;main.c: 222: DataEEData = iButtonKey[0];
	movf	(_iButtonKey),w
	movwf	(??_EEPROMWriteKeyByte+0+0)
	clrf	(??_EEPROMWriteKeyByte+0+0+1)
	movf	0+(??_EEPROMWriteKeyByte+0+0),w
	movwf	(_DataEEData)
	movf	1+(??_EEPROMWriteKeyByte+0+0),w
	movwf	(_DataEEData+1)
	
l30001602:	
	line	223
;main.c: 223: WriteEEPROM();
	fcall	_WriteEEPROM
	
l30001603:	
	line	224
;main.c: 224: DelayMs(10);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	movlw	high(0Ah)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001604:	
	line	225
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(11)+(7/8),(7)&7	;volatile
	
l69:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMWriteKeyByte
	__end_of_EEPROMWriteKeyByte:
; =============== function _EEPROMWriteKeyByte ends ============

psect	text264,local,class=CODE,delta=2
global __ptext264
__ptext264:
	line	226
	signat	_EEPROMWriteKeyByte,4216
	global	_WriteByteToiButton

; *************** function _WriteByteToiButton *****************
; Defined at:
;		line 119 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
; Parameters:    Size  Location     Type
;  d               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  d               1    0[BANK0 ] unsigned char 
;  n               1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         1       2       0
;      Temp:     1
;      Total:    3
; This function calls:
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text264
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	119
	global	__size_of_WriteByteToiButton
	__size_of_WriteByteToiButton	equ	__end_of_WriteByteToiButton-_WriteByteToiButton
;OneWire.c: 118: void WriteByteToiButton(unsigned char d)
;OneWire.c: 119: {
	
_WriteByteToiButton:	
	opt stack 2
; Regs used in _WriteByteToiButton: [wreg+status,2+status,0+pclath+cstack]
;WriteByteToiButton@d stored from wreg
	line	121
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(WriteByteToiButton@d)
	
l30001574:	
;OneWire.c: 120: unsigned char n;
;OneWire.c: 121: for(n=0; n<8; n++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(WriteByteToiButton@n)
	
l216:	
	line	123
;OneWire.c: 122: {
;OneWire.c: 123: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	124
;OneWire.c: 124: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	
l30001577:	
	line	125
;OneWire.c: 125: t=6;;
	movlw	(06h)
	movwf	(_t)
	
l30001578:	
	line	126
;OneWire.c: 126: if (d&0x01)
	btfss	(WriteByteToiButton@d),(0)&7
	goto	u2101
	goto	u2100
u2101:
	goto	l30001581
u2100:
	
l30001579:	
	line	128
# 128 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
nop ;#
psect	text264
	line	129
;OneWire.c: 129: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30001580:	
	line	130
;OneWire.c: 130: delay_10us();
	fcall	_delay_10us
	goto	l30001583
	
l30001581:	
	line	134
;OneWire.c: 132: else
;OneWire.c: 133: {
;OneWire.c: 134: delay_10us();
	fcall	_delay_10us
	
l30001582:	
	line	135
;OneWire.c: 135: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30001583:	
	line	137
;OneWire.c: 136: }
;OneWire.c: 137: d=d>>1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(WriteByteToiButton@d),w
	movwf	(??_WriteByteToiButton+0+0)
	clrc
	rrf	(??_WriteByteToiButton+0+0),w
	movwf	(WriteByteToiButton@d)
	
l30001584:	
	line	121
	movlw	(01h)
	movwf	(??_WriteByteToiButton+0+0)
	movf	(??_WriteByteToiButton+0+0),w
	addwf	(WriteByteToiButton@n),f
	
l30001585:	
	movlw	(08h)
	subwf	(WriteByteToiButton@n),w
	skipc
	goto	u2111
	goto	u2110
u2111:
	goto	l216
u2110:
	
l215:	
	return
	opt stack 0
GLOBAL	__end_of_WriteByteToiButton
	__end_of_WriteByteToiButton:
; =============== function _WriteByteToiButton ends ============

psect	text265,local,class=CODE,delta=2
global __ptext265
__ptext265:
	line	139
	signat	_WriteByteToiButton,4216
	global	_CRCCheck

; *************** function _CRCCheck *****************
; Defined at:
;		line 19 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
; Parameters:    Size  Location     Type
;  KeyPointer      1    wreg     PTR unsigned char 
;		 -> EEPROMKey(9), iButtonKey(9), 
; Auto vars:     Size  Location     Type
;  KeyPointer      1    3[BANK0 ] PTR unsigned char 
;		 -> EEPROMKey(9), iButtonKey(9), 
;  LenForCrc       1    2[BANK0 ] unsigned char 
;  CRC             1    1[BANK0 ] unsigned char 
;  KeyAllByteZe    1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         1       4       0
;      Temp:     1
;      Total:    5
; This function calls:
;		Nothing
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text265
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	19
	global	__size_of_CRCCheck
	__size_of_CRCCheck	equ	__end_of_CRCCheck-_CRCCheck
;OneWire.c: 18: unsigned char CRCCheck(unsigned char* KeyPointer)
;OneWire.c: 19: {
	
_CRCCheck:	
	opt stack 2
; Regs used in _CRCCheck: [wreg-fsr0h+status,2+status,0+pclath]
;CRCCheck@KeyPointer stored from wreg
	line	21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(CRCCheck@KeyPointer)
	
l30001684:	
;OneWire.c: 20: unsigned char LenForCrc,CRC,KeyAllByteZero;
;OneWire.c: 21: CRC=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(CRCCheck@CRC)
	line	22
;OneWire.c: 22: KeyAllByteZero=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(CRCCheck@KeyAllByteZero)
	line	23
;OneWire.c: 23: for(LenForCrc=0;LenForCrc<7;LenForCrc++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(CRCCheck@LenForCrc)
	
l30001687:	
	line	25
;OneWire.c: 24: {
;OneWire.c: 25: KeyAllByteZero |= *KeyPointer;
	movf	(CRCCheck@KeyPointer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_CRCCheck+0+0)
	movf	(??_CRCCheck+0+0),w
	iorwf	(CRCCheck@KeyAllByteZero),f
	
l30001688:	
	line	26
;OneWire.c: 26: CRC = CRCValue[CRC^(*KeyPointer++)];
	movf	(CRCCheck@KeyPointer),w
	movwf	fsr0
	movf	indf,w
	xorwf	(CRCCheck@CRC),w
	addlw	low ((_CRCValue))
	movwf	fsr0
	movlw	high ((_CRCValue))
	skipnc
	addlw	1
	FNCALL _CRCCheck,stringtab
	fcall	stringtab
	movwf	(CRCCheck@CRC)
	
l30001689:	
	movlw	(01h)
	movwf	(??_CRCCheck+0+0)
	movf	(??_CRCCheck+0+0),w
	addwf	(CRCCheck@KeyPointer),f
	
l30001690:	
	line	23
	movlw	(01h)
	movwf	(??_CRCCheck+0+0)
	movf	(??_CRCCheck+0+0),w
	addwf	(CRCCheck@LenForCrc),f
	
l30001691:	
	movlw	(07h)
	subwf	(CRCCheck@LenForCrc),w
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l30001687
u2340:
	
l30001692:	
	line	28
;OneWire.c: 27: }
;OneWire.c: 28: if(*KeyPointer == CRC && KeyAllByteZero != 0)
	movf	(CRCCheck@KeyPointer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(CRCCheck@CRC),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l30001697
u2350:
	
l30001693:	
	movf	(CRCCheck@KeyAllByteZero),w
	skipz
	goto	u2360
	goto	l30001697
u2360:
	
l30001694:	
	line	29
;OneWire.c: 29: return(1);
	movlw	(01h)
	goto	l198
	
l30001697:	
	line	31
;OneWire.c: 30: else
;OneWire.c: 31: return(0);
	movlw	(0)
	
l198:	
	return
	opt stack 0
GLOBAL	__end_of_CRCCheck
	__end_of_CRCCheck:
; =============== function _CRCCheck ends ============

psect	text266,local,class=CODE,delta=2
global __ptext266
__ptext266:
	line	32
	signat	_CRCCheck,4217
	global	_EEPROMReadKey

; *************** function _EEPROMReadKey *****************
; Defined at:
;		line 204 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  ReadAddress     1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  ReadAddress     1    0[BANK0 ] unsigned char 
;  KeyLength       1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       2       0
;      Temp:     2
;      Total:    4
; This function calls:
;		_ReadEEPROM
; This function is called by:
;		_AvailabeKey
;		_Configuration
;		_ConfigureMasterKey
; This function uses a non-reentrant model
; 
psect	text266
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	204
	global	__size_of_EEPROMReadKey
	__size_of_EEPROMReadKey	equ	__end_of_EEPROMReadKey-_EEPROMReadKey
;main.c: 203: void EEPROMReadKey(unsigned char ReadAddress)
;main.c: 204: {
	
_EEPROMReadKey:	
	opt stack 2
; Regs used in _EEPROMReadKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;EEPROMReadKey@ReadAddress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(EEPROMReadKey@ReadAddress)
	
l62:	
	
l30001510:	
	line	206
	movlw	(07Eh)
	movwf	(??_EEPROMReadKey+0+0)
	movf	(??_EEPROMReadKey+0+0),w
	andwf	(11),f	;volatile
	
l61:	
	line	207
;main.c: 207: ReadAddress = ReadAddress * 8;
	movf	(EEPROMReadKey@ReadAddress),w
	movwf	(??_EEPROMReadKey+0+0)
	movlw	(03h)-1
u2005:
	clrc
	rlf	(??_EEPROMReadKey+0+0),f
	addlw	-1
	skipz
	goto	u2005
	clrc
	rlf	(??_EEPROMReadKey+0+0),w
	movwf	(EEPROMReadKey@ReadAddress)
	line	208
;main.c: 208: for(KeyLength=0;KeyLength<8;KeyLength++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(EEPROMReadKey@KeyLength)
	
l30001513:	
	line	210
;main.c: 209: {
;main.c: 210: DataEEAddr = ReadAddress++;
	movf	(EEPROMReadKey@ReadAddress),w
	movwf	(??_EEPROMReadKey+0+0)
	clrf	(??_EEPROMReadKey+0+0+1)
	movf	0+(??_EEPROMReadKey+0+0),w
	movwf	(_DataEEAddr)
	movf	1+(??_EEPROMReadKey+0+0),w
	movwf	(_DataEEAddr+1)
	
l30001514:	
	movlw	(01h)
	movwf	(??_EEPROMReadKey+0+0)
	movf	(??_EEPROMReadKey+0+0),w
	addwf	(EEPROMReadKey@ReadAddress),f
	
l30001515:	
	line	211
;main.c: 211: ReadEEPROM();
	fcall	_ReadEEPROM
	
l30001516:	
	line	212
;main.c: 212: EEPROMKey[KeyLength] = DataEEData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DataEEData),w
	movwf	(??_EEPROMReadKey+0+0)
	movf	(EEPROMReadKey@KeyLength),w
	addlw	(_EEPROMKey)&0ffh
	movwf	fsr0
	movf	(??_EEPROMReadKey+0+0),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001517:	
	line	208
	movlw	(01h)
	movwf	(??_EEPROMReadKey+0+0)
	movf	(??_EEPROMReadKey+0+0),w
	addwf	(EEPROMReadKey@KeyLength),f
	
l30001518:	
	movlw	(08h)
	subwf	(EEPROMReadKey@KeyLength),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l30001513
u2010:
	
l68:	
	line	214
	bsf	(11)+(7/8),(7)&7	;volatile
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMReadKey
	__end_of_EEPROMReadKey:
; =============== function _EEPROMReadKey ends ============

psect	text267,local,class=CODE,delta=2
global __ptext267
__ptext267:
	line	215
	signat	_EEPROMReadKey,4216
	global	_CheckForiButtonDisconnect

; *************** function _CheckForiButtonDisconnect *****************
; Defined at:
;		line 68 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_InitiButton
; This function is called by:
;		_Wait_With_LED_Blink
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text267
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	68
	global	__size_of_CheckForiButtonDisconnect
	__size_of_CheckForiButtonDisconnect	equ	__end_of_CheckForiButtonDisconnect-_CheckForiButtonDisconnect
;OneWire.c: 67: unsigned char CheckForiButtonDisconnect(void)
;OneWire.c: 68: {
	
_CheckForiButtonDisconnect:	
	opt stack 2
; Regs used in _CheckForiButtonDisconnect: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l30001567:	
;OneWire.c: 69: return(InitiButton());
	fcall	_InitiButton
	
l211:	
	return
	opt stack 0
GLOBAL	__end_of_CheckForiButtonDisconnect
	__end_of_CheckForiButtonDisconnect:
; =============== function _CheckForiButtonDisconnect ends ============

psect	text268,local,class=CODE,delta=2
global __ptext268
__ptext268:
	line	70
	signat	_CheckForiButtonDisconnect,89
	global	_ToggleLED

; *************** function _ToggleLED *****************
; Defined at:
;		line 85 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
;		_Wait_With_LED_Blink
;		_Configuration
; This function uses a non-reentrant model
; 
psect	text268
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	85
	global	__size_of_ToggleLED
	__size_of_ToggleLED	equ	__end_of_ToggleLED-_ToggleLED
;main.c: 84: void ToggleLED(void)
;main.c: 85: {
	
_ToggleLED:	
	opt stack 2
; Regs used in _ToggleLED: [wreg+status,2+status,0]
	line	86
	
l30001678:	
;main.c: 86: if(RC0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l30001680
u2320:
	
l30001679:	
	line	87
;main.c: 87: RC0=0x00;
	bcf	(56/8),(56)&7
	goto	l14
	
l30001680:	
	line	90
;main.c: 88: else
;main.c: 89: {
;main.c: 90: if(ToggleSkipFlag == 0)
	movf	(_ToggleSkipFlag),f
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l30001683
u2330:
	
l30001681:	
	line	92
;main.c: 91: {
;main.c: 92: ToggleSkipFlag=0x01;
	clrf	(_ToggleSkipFlag)
	bsf	status,0
	rlf	(_ToggleSkipFlag),f
	
l30001682:	
	line	93
;main.c: 93: RC0=0x01;
	bsf	(56/8),(56)&7
	goto	l14
	
l30001683:	
	line	96
;main.c: 95: else
;main.c: 96: ToggleSkipFlag=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_ToggleSkipFlag)
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleLED
	__end_of_ToggleLED:
; =============== function _ToggleLED ends ============

psect	text269,local,class=CODE,delta=2
global __ptext269
__ptext269:
	line	98
	signat	_ToggleLED,88
	global	_ReadByteToiButton

; *************** function _ReadByteToiButton *****************
; Defined at:
;		line 148 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i_byte          1    2[BANK0 ] unsigned char 
;  n               1    1[BANK0 ] unsigned char 
;  temp            1    0[BANK0 ] unsigned char 
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
;      Locals:         1       3       0
;      Temp:     1
;      Total:    4
; This function calls:
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text269
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	148
	global	__size_of_ReadByteToiButton
	__size_of_ReadByteToiButton	equ	__end_of_ReadByteToiButton-_ReadByteToiButton
;OneWire.c: 147: unsigned char ReadByteToiButton(void)
;OneWire.c: 148: {
	
_ReadByteToiButton:	
	opt stack 2
; Regs used in _ReadByteToiButton: [wreg+status,2+status,0+pclath+cstack]
	line	150
	
l30001519:	
;OneWire.c: 149: unsigned char n, i_byte, temp, mask;
;OneWire.c: 150: for (n=0; n<8; n++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ReadByteToiButton@n)
	
l222:	
	line	152
;OneWire.c: 151: {
;OneWire.c: 152: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	153
;OneWire.c: 153: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	line	155
# 155 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
     NOP ;#
	line	156
# 156 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	158
# 158 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
# 157 ;#
psect	text269
	line	160
;OneWire.c: 160: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
# 160 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
     NOP ;#
	line	161
# 161 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	163
# 163 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
# 162 ;#
psect	text269
	
l30001522:	
	line	165
;OneWire.c: 165: temp=PORTA;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(5),w	;volatile
	movwf	(ReadByteToiButton@temp)
	
l30001523:	
	line	166
;OneWire.c: 166: if (temp & 4)
	btfss	(ReadByteToiButton@temp),(2)&7
	goto	u2021
	goto	u2020
u2021:
	goto	l30001525
u2020:
	
l30001524:	
	line	168
;OneWire.c: 167: {
;OneWire.c: 168: i_byte=(i_byte>>1) | 0x80;
	movf	(ReadByteToiButton@i_byte),w
	movwf	(??_ReadByteToiButton+0+0)
	clrc
	rrf	(??_ReadByteToiButton+0+0),w
	iorlw	080h
	movwf	(ReadByteToiButton@i_byte)
	goto	l30001526
	
l30001525:	
	line	172
;OneWire.c: 170: else
;OneWire.c: 171: {
;OneWire.c: 172: i_byte=i_byte >> 1;
	movf	(ReadByteToiButton@i_byte),w
	movwf	(??_ReadByteToiButton+0+0)
	clrc
	rrf	(??_ReadByteToiButton+0+0),w
	movwf	(ReadByteToiButton@i_byte)
	
l30001526:	
	line	174
;OneWire.c: 173: }
;OneWire.c: 174: t=6;;
	movlw	(06h)
	movwf	(_t)
	
l30001527:	
	line	175
;OneWire.c: 175: delay_10us();
	fcall	_delay_10us
	
l30001528:	
	line	150
	movlw	(01h)
	movwf	(??_ReadByteToiButton+0+0)
	movf	(??_ReadByteToiButton+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(ReadByteToiButton@n),f
	
l30001529:	
	movlw	(08h)
	subwf	(ReadByteToiButton@n),w
	skipc
	goto	u2031
	goto	u2030
u2031:
	goto	l222
u2030:
	
l30001530:	
	line	177
;OneWire.c: 176: }
;OneWire.c: 177: return(i_byte);
	movf	(ReadByteToiButton@i_byte),w
	
l221:	
	return
	opt stack 0
GLOBAL	__end_of_ReadByteToiButton
	__end_of_ReadByteToiButton:
; =============== function _ReadByteToiButton ends ============

psect	text270,local,class=CODE,delta=2
global __ptext270
__ptext270:
	line	178
	signat	_ReadByteToiButton,89
	global	_ReadEEPROM

; *************** function _ReadEEPROM *****************
; Defined at:
;		line 181 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
;      Locals:         2       0       0
;      Temp:     2
;      Total:    2
; This function calls:
;		Nothing
; This function is called by:
;		_EEPROMReadKey
; This function uses a non-reentrant model
; 
psect	text270
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	181
	global	__size_of_ReadEEPROM
	__size_of_ReadEEPROM	equ	__end_of_ReadEEPROM-_ReadEEPROM
;main.c: 180: void ReadEEPROM(void)
;main.c: 181: {
	
_ReadEEPROM:	
	opt stack 1
; Regs used in _ReadEEPROM: [wreg+status,2+status,0]
	line	182
	
l30001506:	
;main.c: 182: EEADR=DataEEAddr;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DataEEAddr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	
l30001507:	
	line	183
;main.c: 183: EECON1=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volatile
	
l30001508:	
	line	184
;main.c: 184: RD=0x01;
	bsf	(3168/8)^0180h,(3168)&7
	
l30001509:	
	line	185
;main.c: 185: DataEEData=EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(??_ReadEEPROM+0+0)
	clrf	(??_ReadEEPROM+0+0+1)
	movf	0+(??_ReadEEPROM+0+0),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_DataEEData)
	movf	1+(??_ReadEEPROM+0+0),w
	movwf	(_DataEEData+1)
	
l54:	
	return
	opt stack 0
GLOBAL	__end_of_ReadEEPROM
	__end_of_ReadEEPROM:
; =============== function _ReadEEPROM ends ============

psect	text271,local,class=CODE,delta=2
global __ptext271
__ptext271:
	line	186
	signat	_ReadEEPROM,88
	global	_DelayMs

; *************** function _DelayMs *****************
; Defined at:
;		line 59 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;  TimeCnt         2    4[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  j               2    2[BANK0 ] unsigned int 
;  i               2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       6       0
;      Temp:     0
;      Total:    6
; This function calls:
;		Nothing
; This function is called by:
;		_GoToSleep
;		_DoorOpen
;		_DoorClose
;		_BuzzerBeep
;		_EEPROMWriteKeyByte
;		_EEPROMWriteKey
;		_Configuration
;		_InvalidKeyIndication
;		_LockOperation
;		_main
; This function uses a non-reentrant model
; 
psect	text271
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	59
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
;main.c: 58: void DelayMs(unsigned int TimeCnt)
;main.c: 59: {
	
_DelayMs:	
	opt stack 1
; Regs used in _DelayMs: [wreg]
	line	61
	
l30001626:	
;main.c: 60: unsigned int i,j;
;main.c: 61: for(i=0;i<TimeCnt;i++)
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(DelayMs@i)
	movlw	high(0)
	movwf	((DelayMs@i))+1
	goto	l9
	
l30001627:	
	line	63
;main.c: 62: {
;main.c: 63: for(j=0;j<50;j++);
	movlw	low(0)
	movwf	(DelayMs@j)
	movlw	high(0)
	movwf	((DelayMs@j))+1
	
l30001629:	
	movlw	low(01h)
	addwf	(DelayMs@j),f
	skipnc
	incf	(DelayMs@j+1),f
	movlw	high(01h)
	addwf	(DelayMs@j+1),f
	movlw	high(032h)
	subwf	(DelayMs@j+1),w
	movlw	low(032h)
	skipnz
	subwf	(DelayMs@j),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l30001629
u2200:
	
l30001630:	
	line	61
	movlw	low(01h)
	addwf	(DelayMs@i),f
	skipnc
	incf	(DelayMs@i+1),f
	movlw	high(01h)
	addwf	(DelayMs@i+1),f
	
l9:	
	movf	(DelayMs@TimeCnt+1),w
	subwf	(DelayMs@i+1),w
	skipz
	goto	u2215
	movf	(DelayMs@TimeCnt),w
	subwf	(DelayMs@i),w
u2215:
	skipc
	goto	u2211
	goto	u2210
u2211:
	goto	l30001627
u2210:
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
; =============== function _DelayMs ends ============

psect	text272,local,class=CODE,delta=2
global __ptext272
__ptext272:
	line	65
	signat	_DelayMs,4216
	global	_InitiButton

; *************** function _InitiButton *****************
; Defined at:
;		line 80 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
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
;		_CheckForiButtonDisconnect
; This function uses a non-reentrant model
; 
psect	text272
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	80
	global	__size_of_InitiButton
	__size_of_InitiButton	equ	__end_of_InitiButton-_InitiButton
;OneWire.c: 79: unsigned char InitiButton(void)
;OneWire.c: 80: {
	
_InitiButton:	
	opt stack 1
; Regs used in _InitiButton: [wreg+status,2+status,0+pclath+cstack]
	line	83
	
l30001551:	
;OneWire.c: 81: unsigned char PresencePulse;
;OneWire.c: 83: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	84
;OneWire.c: 84: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	line	85
;OneWire.c: 85: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	86
;OneWire.c: 86: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(42/8),(42)&7
	
l30001552:	
	line	88
;OneWire.c: 88: t=42;;
	movlw	(02Ah)
	movwf	(_t)
	
l30001553:	
	line	89
;OneWire.c: 89: delay_10us();
	fcall	_delay_10us
	
l30001554:	
	line	91
;OneWire.c: 91: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	
l30001555:	
	line	92
;OneWire.c: 92: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	
l30001556:	
	line	94
;OneWire.c: 94: t=6;;
	movlw	(06h)
	movwf	(_t)
	line	95
;OneWire.c: 95: delay_10us();
	fcall	_delay_10us
	
l30001557:	
	line	97
;OneWire.c: 97: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30001558:	
	line	98
;OneWire.c: 98: if (RA2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u2071
	goto	u2070
u2071:
	goto	l30001560
u2070:
	
l30001559:	
	line	99
;OneWire.c: 99: PresencePulse=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(InitiButton@PresencePulse)
	goto	l30001561
	
l30001560:	
	line	101
;OneWire.c: 100: else
;OneWire.c: 101: PresencePulse=0x01;
	clrf	(InitiButton@PresencePulse)
	bsf	status,0
	rlf	(InitiButton@PresencePulse),f
	
l30001561:	
	line	103
;OneWire.c: 103: t=50;;
	movlw	(032h)
	movwf	(_t)
	
l30001562:	
	line	104
;OneWire.c: 104: delay_10us();
	fcall	_delay_10us
	
l30001563:	
	line	106
;OneWire.c: 106: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1066/8)^080h,(1066)&7
	
l30001564:	
	line	107
;OneWire.c: 107: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(42/8),(42)&7
	
l30001565:	
	line	108
;OneWire.c: 108: return (PresencePulse);
	movf	(InitiButton@PresencePulse),w
	
l212:	
	return
	opt stack 0
GLOBAL	__end_of_InitiButton
	__end_of_InitiButton:
; =============== function _InitiButton ends ============

psect	text273,local,class=CODE,delta=2
global __ptext273
__ptext273:
	line	109
	signat	_InitiButton,89
	global	_WriteEEPROM

; *************** function _WriteEEPROM *****************
; Defined at:
;		line 189 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
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
;		_EEPROMWriteKeyByte
;		_EEPROMWriteKey
;		_main
; This function uses a non-reentrant model
; 
psect	text273
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	189
	global	__size_of_WriteEEPROM
	__size_of_WriteEEPROM	equ	__end_of_WriteEEPROM-_WriteEEPROM
;main.c: 188: void WriteEEPROM(void)
;main.c: 189: {
	
_WriteEEPROM:	
	opt stack 1
; Regs used in _WriteEEPROM: [wreg+status,2+status,0]
	line	190
	
l30001670:	
;main.c: 190: EEADR=DataEEAddr;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DataEEAddr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	191
;main.c: 191: EEDAT=DataEEData;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DataEEData),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(268)^0100h	;volatile
	
l30001671:	
	line	192
;main.c: 192: EECON1=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(396)^0180h	;volatile
	
l30001672:	
	line	193
;main.c: 193: WREN=0x01;
	bsf	(3170/8)^0180h,(3170)&7
	
l30001673:	
	line	194
;main.c: 194: GIE=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(95/8),(95)&7
	
l56:	
	line	195
	btfsc	(95/8),(95)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l56
u2310:
	
l30001674:	
	line	196
;main.c: 196: EECON2=0x55;
	movlw	(055h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volatile
	line	197
;main.c: 197: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l30001675:	
	line	198
;main.c: 198: WR=0x01;
	bsf	(3169/8)^0180h,(3169)&7
	
l30001676:	
	line	199
;main.c: 199: GIE=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30001677:	
	line	200
;main.c: 200: WREN=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_WriteEEPROM
	__end_of_WriteEEPROM:
; =============== function _WriteEEPROM ends ============

psect	text274,local,class=CODE,delta=2
global __ptext274
__ptext274:
	line	201
	signat	_WriteEEPROM,88
	global	_delay_10us

; *************** function _delay_10us *****************
; Defined at:
;		line 186 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
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
psect	text274
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
	line	186
	global	__size_of_delay_10us
	__size_of_delay_10us	equ	__end_of_delay_10us-_delay_10us
;OneWire.c: 185: void delay_10us(void)
;OneWire.c: 186: {
	
_delay_10us:	
	opt stack 0
; Regs used in _delay_10us: []
	line	188
	
l30001550:	
# 188 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 BCF _STATUS,5 ;#
	line	189
# 189 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
DELAY_10US_XZ: ;#
	line	190
# 190 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	191
# 191 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	192
# 192 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	193
# 193 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	194
# 194 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	195
# 195 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	196
# 196 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	197
# 197 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	198
# 198 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 NOP ;#
	line	199
# 199 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 DECFSZ _t,F ;#
	line	200
# 200 "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\OneWire.c"
 GOTO DELAY_10US_XZ ;#
psect	text274
	
l227:	
	return
	opt stack 0
GLOBAL	__end_of_delay_10us
	__end_of_delay_10us:
; =============== function _delay_10us ends ============

psect	text275,local,class=CODE,delta=2
global __ptext275
__ptext275:
	line	202
	signat	_delay_10us,88
	global	_isr

; *************** function _isr *****************
; Defined at:
;		line 412 in file "D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               1    0        unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 0/0
;		On exit  : 0/0
;		Unchanged: 0/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       4       1
;      Temp:     4
;      Total:    5
; This function calls:
;		Nothing
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text275
	file	"D:\Amit\E-Projects\PIC Projects\CMC\iBUTTON\main.c"
	line	412
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
;main.c: 411: static void interrupt isr(void)
;main.c: 412: {
	
_isr:	
	opt stack 1
; Regs used in _isr: [wreg+status,2+status,0]
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
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	movf	btemp+0,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text275
	line	414
	
i1l30001699:	
	movf	(5),w	;volatile
	
i1l30001700:	
	line	415
;main.c: 415: RABIF=0x00;
	bcf	(88/8),(88)&7
	
i1l30001701:	
	line	416
;main.c: 416: IOCA=0x00;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(150)^080h
	
i1l146:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_isr+3),w
	movwf	btemp+0
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	movf	(??_isr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
; =============== function _isr ends ============

psect	text276,local,class=CODE,delta=2
global __ptext276
__ptext276:
	line	417
	signat	_isr,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
