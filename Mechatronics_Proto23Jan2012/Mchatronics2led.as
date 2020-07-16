opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 5239"

opt pagewidth 120

	opt pm

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
# 15 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	psect config,class=CONFIG,delta=2 ;#
# 15 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	dw 0x3FFC & 0x3FF7 & 0x3FFF & 0x3FDF & 0x3FBF & 0x3CFF & 0x3BFF & 0x37FF ;#
;COMMON:	_main->_BuzzerBeep
;BANK0:	_BuzzerBeep->_DelayMs
;BANK0:	_main->_LockOperation
;COMMON:	_LockOperation->_BuzzerBeep
;BANK0:	_BuzzerBeep->_DelayMs
;BANK0:	_LockOperation->_Configuration
;COMMON:	_Configuration->_BuzzerBeep
;BANK0:	_BuzzerBeep->_DelayMs
;BANK0:	_Configuration->_BuzzerBeep
;BANK0:	_BuzzerBeep->_DelayMs
	FNCALL	_main,_PowerInit
	FNCALL	_main,_DelayMs
	FNCALL	_main,_BuzzerBeep
	FNCALL	_main,_ConfigureMasterKey
	FNCALL	_main,_WriteEEPROM
	FNCALL	_main,_ClearAllKeys
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
	FNCALL	_LockOperation,_DoorOpen
	FNCALL	_LockOperation,_ToggleBuzzLED
	FNCALL	_LockOperation,_CheckForiButtonDisconnect
	FNCALL	_LockOperation,_Configuration
	FNCALL	_LockOperation,_DelayMs
	FNCALL	_LockOperation,_DoorClose
	FNCALL	_LockOperation,_InvalidKeyIndication
	FNCALL	_LockOperation,_ToggleBuzzErrorLED
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
	FNCALL	_InvalidKeyIndication,_DelayMs
	FNCALL	_InvalidKeyIndication,_ReadiButton
	FNCALL	_InvalidKeyIndication,_AvailabeKey
	FNCALL	_GoToSleep,_DelayMs
	FNCALL	_DoorClose,_CHK_LOW_BAT_OPEN
	FNCALL	_DoorClose,_DelayMs
	FNCALL	_ClearAllKeys,_EEPROMWriteKeyByte
	FNCALL	_CHK_LOW_BAT_OPEN,_ReadEEPROM
	FNCALL	_CHK_LOW_BAT_OPEN,_WriteEEPROM
	FNCALL	_CHK_LOW_BAT_OPEN,_DelayMs
	FNCALL	_ClearKey,_EEPROMWriteKeyByte
	FNCALL	_AvailabeKey,_EEPROMReadKey
	FNCALL	_AvailabeKey,_strcmp
	FNCALL	_Wait_With_LED_Blink,_ToggleLED
	FNCALL	_Wait_With_LED_Blink,_CheckForiButtonDisconnect
	FNCALL	_ReadiButton,_InitiButton
	FNCALL	_ReadiButton,_WriteByteToiButton
	FNCALL	_ReadiButton,_ReadByteToiButton
	FNCALL	_ReadiButton,_CRCCheck
	FNCALL	_EEPROMWriteKey,_WriteEEPROM
	FNCALL	_EEPROMWriteKey,_DelayMs
	FNCALL	_BuzzerBeep,_DelayMs
	FNCALL	_EEPROMReadKey,_ReadEEPROM
	FNCALL	_WriteByteToiButton,_delay_10us
	FNCALL	_EEPROMWriteKeyByte,_WriteEEPROM
	FNCALL	_EEPROMWriteKeyByte,_DelayMs
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
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.h"
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
	global	_ToggleSkipFlag
	global	_t
	global	_DataEEData
	global	_InvalidKeyCount
	global	_LowBatt
	global	_MatchKey
	global	_TimeCounter
	global	_EEPROMKey
	global	_iButtonKey
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
	file	"Mchatronics2led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_DataEEData:
       ds      2

_InvalidKeyCount:
       ds      1

_LowBatt:
       ds      1

_MatchKey:
       ds      1

_TimeCounter:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DataEEAddr:
       ds      2

_ToggleSkipFlag:
       ds      1

_t:
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
	movlw	low((__pbssCOMMON)+06h)
	fcall	clear_ram
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+016h)
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
	global	??_DoorClose
??_DoorClose: ;@ 0x0
	global	?_DoorClose
?_DoorClose: ;@ 0x0
	global	??_EEPROMWriteKeyByte
??_EEPROMWriteKeyByte: ;@ 0x0
	global	?_CHK_LOW_BAT_OPEN
?_CHK_LOW_BAT_OPEN: ;@ 0x0
	global	??_ClearAllKeys
??_ClearAllKeys: ;@ 0x0
	global	?_ToggleBuzzErrorLED
?_ToggleBuzzErrorLED: ;@ 0x0
	global	??_DoorOpen
??_DoorOpen: ;@ 0x0
	global	??_ToggleBuzzErrorLED
??_ToggleBuzzErrorLED: ;@ 0x0
	global	??_GoToSleep
??_GoToSleep: ;@ 0x0
	global	?_GoToSleep
?_GoToSleep: ;@ 0x0
	global	??_ReadiButton
??_ReadiButton: ;@ 0x0
	global	??_EEPROMReadKey
??_EEPROMReadKey: ;@ 0x0
	global	??_EEPROMWriteKey
??_EEPROMWriteKey: ;@ 0x0
	global	??_BuzzerBeep
??_BuzzerBeep: ;@ 0x0
	global	??_strcmp
??_strcmp: ;@ 0x0
	global	??_WriteByteToiButton
??_WriteByteToiButton: ;@ 0x0
	global	??_CHK_LOW_BAT_OPEN
??_CHK_LOW_BAT_OPEN: ;@ 0x0
	global	??_ClearKey
??_ClearKey: ;@ 0x0
	global	??_Wait_With_LED_Blink
??_Wait_With_LED_Blink: ;@ 0x0
	global	??_CRCCheck
??_CRCCheck: ;@ 0x0
	global	?_ReadEEPROM
?_ReadEEPROM: ;@ 0x0
	global	??_ReadEEPROM
??_ReadEEPROM: ;@ 0x0
	global	??_DelayMs
??_DelayMs: ;@ 0x0
	global	??_PowerInit
??_PowerInit: ;@ 0x0
	global	?_PowerInit
?_PowerInit: ;@ 0x0
	global	?_delay_10us
?_delay_10us: ;@ 0x0
	global	??_delay_10us
??_delay_10us: ;@ 0x0
	global	??_WriteEEPROM
??_WriteEEPROM: ;@ 0x0
	global	??_InitiButton
??_InitiButton: ;@ 0x0
	global	?_WriteEEPROM
?_WriteEEPROM: ;@ 0x0
	global	??_ReadByteToiButton
??_ReadByteToiButton: ;@ 0x0
	global	??_ToggleBuzzLED
??_ToggleBuzzLED: ;@ 0x0
	global	?_ToggleLED
?_ToggleLED: ;@ 0x0
	global	?_ToggleBuzzLED
?_ToggleBuzzLED: ;@ 0x0
	global	??_CheckForiButtonDisconnect
??_CheckForiButtonDisconnect: ;@ 0x0
	global	??_ToggleLED
??_ToggleLED: ;@ 0x0
	global	?_CRCCheck
?_CRCCheck: ;@ 0x0
	global	?_ReadByteToiButton
?_ReadByteToiButton: ;@ 0x0
	global	WriteByteToiButton@d
WriteByteToiButton@d:	; 1 bytes @ 0x0
	global	InitiButton@PresencePulse
InitiButton@PresencePulse:	; 1 bytes @ 0x0
	global	EEPROMWriteKey@WriteAddress
EEPROMWriteKey@WriteAddress:	; 1 bytes @ 0x0
	global	EEPROMWriteKeyByte@WriteAddress
EEPROMWriteKeyByte@WriteAddress:	; 1 bytes @ 0x0
	global	DoorOpen@BattStatus
DoorOpen@BattStatus:	; 1 bytes @ 0x0
	global	EEPROMReadKey@ReadAddress
EEPROMReadKey@ReadAddress:	; 1 bytes @ 0x0
	ds	1
	global	?_DoorOpen
?_DoorOpen: ;@ 0x1
	global	??_InvalidKeyIndication
??_InvalidKeyIndication: ;@ 0x1
	global	?_EEPROMWriteKeyByte
?_EEPROMWriteKeyByte: ;@ 0x1
	global	?_ClearAllKeys
?_ClearAllKeys: ;@ 0x1
	global	?_ClearKey
?_ClearKey: ;@ 0x1
	global	?_Wait_With_LED_Blink
?_Wait_With_LED_Blink: ;@ 0x1
	global	??_AvailabeKey
??_AvailabeKey: ;@ 0x1
	global	?_InitiButton
?_InitiButton: ;@ 0x1
	global	?_CheckForiButtonDisconnect
?_CheckForiButtonDisconnect: ;@ 0x1
	global	?_strcmp
?_strcmp: ;@ 0x1
	global	strcmp@y
strcmp@y:	; 1 bytes @ 0x1
	global	WriteByteToiButton@n
WriteByteToiButton@n:	; 1 bytes @ 0x1
	global	EEPROMWriteKey@KeyLength
EEPROMWriteKey@KeyLength:	; 1 bytes @ 0x1
	global	EEPROMReadKey@KeyLength
EEPROMReadKey@KeyLength:	; 1 bytes @ 0x1
	ds	1
	global	?_EEPROMReadKey
?_EEPROMReadKey: ;@ 0x2
	global	?_WriteByteToiButton
?_WriteByteToiButton: ;@ 0x2
	global	?_EEPROMWriteKey
?_EEPROMWriteKey: ;@ 0x2
	global	?_InvalidKeyIndication
?_InvalidKeyIndication: ;@ 0x2
	global	?_AvailabeKey
?_AvailabeKey: ;@ 0x2
	global	?_ReadiButton
?_ReadiButton: ;@ 0x2
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_Configuration
??_Configuration: ;@ 0x0
	global	??_main
??_main: ;@ 0x0
	global	??_ConfigureMasterKey
??_ConfigureMasterKey: ;@ 0x0
	global	??_LockOperation
??_LockOperation: ;@ 0x0
	global	ReadByteToiButton@temp
ReadByteToiButton@temp:	; 1 bytes @ 0x0
	global	CRCCheck@KeyAllByteZero
CRCCheck@KeyAllByteZero:	; 1 bytes @ 0x0
	global	strcmp@x
strcmp@x:	; 1 bytes @ 0x0
	global	Wait_With_LED_Blink@k
Wait_With_LED_Blink@k:	; 2 bytes @ 0x0
	global	DelayMs@i
DelayMs@i:	; 2 bytes @ 0x0
	ds	1
	global	ReadByteToiButton@i_byte
ReadByteToiButton@i_byte:	; 1 bytes @ 0x1
	global	strcmp@i
strcmp@i:	; 1 bytes @ 0x1
	global	CRCCheck@CRC
CRCCheck@CRC:	; 1 bytes @ 0x1
	ds	1
	global	ReadByteToiButton@n
ReadByteToiButton@n:	; 1 bytes @ 0x2
	global	AvailabeKey@key
AvailabeKey@key:	; 1 bytes @ 0x2
	global	CRCCheck@LenForCrc
CRCCheck@LenForCrc:	; 1 bytes @ 0x2
	global	DelayMs@j
DelayMs@j:	; 2 bytes @ 0x2
	ds	1
	global	AvailabeKey@i
AvailabeKey@i:	; 1 bytes @ 0x3
	global	CRCCheck@KeyPointer
CRCCheck@KeyPointer:	; 1 bytes @ 0x3
	ds	1
	global	?_DelayMs
?_DelayMs: ;@ 0x4
	global	ReadiButton@iButtonPresent
ReadiButton@iButtonPresent:	; 1 bytes @ 0x4
	global	DelayMs@TimeCnt
DelayMs@TimeCnt:	; 2 bytes @ 0x4
	ds	1
	global	ReadiButton@n
ReadiButton@n:	; 1 bytes @ 0x5
	ds	1
	global	ClearAllKeys@Master_Also
ClearAllKeys@Master_Also:	; 1 bytes @ 0x6
	global	ClearKey@KeyNum
ClearKey@KeyNum:	; 1 bytes @ 0x6
	global	BuzzerBeep@BeepNum
BuzzerBeep@BeepNum:	; 1 bytes @ 0x6
	ds	1
	global	ClearAllKeys@i
ClearAllKeys@i:	; 1 bytes @ 0x7
	global	ClearKey@i
ClearKey@i:	; 1 bytes @ 0x7
	global	BuzzerBeep@BeepTime
BuzzerBeep@BeepTime:	; 2 bytes @ 0x7
	ds	2
	global	BuzzerBeep@BeepCnt
BuzzerBeep@BeepCnt:	; 1 bytes @ 0x9
	ds	1
	global	?_BuzzerBeep
?_BuzzerBeep: ;@ 0xA
	global	BuzzerBeep@LONG_BEEP
BuzzerBeep@LONG_BEEP:	; 1 bytes @ 0xA
	ds	1
	global	Configuration@key
Configuration@key:	; 1 bytes @ 0xB
	global	ConfigureMasterKey@PowerOnBeep
ConfigureMasterKey@PowerOnBeep:	; 1 bytes @ 0xB
	ds	1
	global	?_ConfigureMasterKey
?_ConfigureMasterKey: ;@ 0xC
	global	Configuration@KeyConfigured
Configuration@KeyConfigured:	; 1 bytes @ 0xC
	ds	1
	global	Configuration@i
Configuration@i:	; 1 bytes @ 0xD
	ds	1
	global	?_Configuration
?_Configuration: ;@ 0xE
	global	LockOperation@i
LockOperation@i:	; 2 bytes @ 0xE
	ds	2
	global	LockOperation@ShouldCheckConfig
LockOperation@ShouldCheckConfig:	; 1 bytes @ 0x10
	ds	1
	global	?_LockOperation
?_LockOperation: ;@ 0x11
	global	main@PowerOnBeep
main@PowerOnBeep:	; 1 bytes @ 0x11
	ds	1
	global	??_isr
??_isr: ;@ 0x12
	global	?_main
?_main: ;@ 0x12
	ds	3
	global	?_isr
?_isr: ;@ 0x15
;Data sizes: Strings 0, constant 256, data 0, bss 28, persistent 0 stack 0
;Auto spaces:   Size  Autos    Used
; COMMON          14      6      12
; BANK0           80     21      43
; BANK1           32      0       0


;Pointer list with targets:

;strcmp@y	PTR unsigned char  size(1); Largest target is 9
;		 -> EEPROMKey(BANK0[9]), 
;strcmp@x	PTR unsigned char  size(1); Largest target is 9
;		 -> iButtonKey(BANK0[9]), 
;CRCCheck@KeyPointer	PTR unsigned char  size(1); Largest target is 9
;		 -> EEPROMKey(BANK0[9]), iButtonKey(BANK0[9]), 


;Main: autosize = 0, tempsize = 0, incstack = 0, save=0


;Call graph:                      Base Space Used Autos Args Refs Density
;_main                                                1    0 9222   0.00
;                                   17 BANK0    1
;          _PowerInit
;            _DelayMs
;         _BuzzerBeep
; _ConfigureMasterKey
;        _WriteEEPROM
;       _ClearAllKeys
;      _LockOperation
;          _GoToSleep
;  _ConfigureMasterKey                                1    0 1800   0.00
;                                   11 BANK0    1
;      _EEPROMReadKey
;           _CRCCheck
;         _BuzzerBeep
;        _ReadiButton
;     _EEPROMWriteKey
;_Wait_With_LED_Blink
;          _GoToSleep
;  _LockOperation                                     3    0 6617   0.00
;                                   14 BANK0    3
;        _ReadiButton
;        _AvailabeKey
;         _BuzzerBeep
;           _DoorOpen
;      _ToggleBuzzLED
;_CheckForiButtonDisc
;      _Configuration
;            _DelayMs
;          _DoorClose
;_InvalidKeyIndicatio
; _ToggleBuzzErrorLED
;  _PowerInit                                         0    0    0   0.00
;    _Configuration                                   3    0 3290   0.00
;                                   11 BANK0    3
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
;    _ToggleBuzzLED                                   0    0    0   0.00
;    _DoorOpen                                        1    0  147   0.00
;                                    0 COMMO    1
;            _DelayMs
;    _InvalidKeyIndication                            0    0 1268   0.00
;            _DelayMs
;        _ReadiButton
;        _AvailabeKey
;    _ToggleBuzzErrorLED                              0    0    0   0.00
;    _GoToSleep                                       0    0  108   0.00
;            _DelayMs
;    _DoorClose                                       0    0  216   0.00
;   _CHK_LOW_BAT_OPEN
;            _DelayMs
;      _ClearAllKeys                                  2    0  321   0.00
;                                    6 BANK0    2
; _EEPROMWriteKeyByte
;      _CHK_LOW_BAT_OPEN                              0    0  108   0.00
;         _ReadEEPROM
;        _WriteEEPROM
;            _DelayMs
;      _ClearKey                                      2    0  240   0.00
;                                    6 BANK0    2
; _EEPROMWriteKeyByte
;      _AvailabeKey                                   2    0  387   0.00
;                                    2 BANK0    2
;      _EEPROMReadKey
;             _strcmp
;      _Wait_With_LED_Blink                           2    0  126   0.00
;                                    0 BANK0    2
;          _ToggleLED
;_CheckForiButtonDisc
;      _ReadiButton                                   2    0  773   0.00
;                                    4 BANK0    2
;        _InitiButton
; _WriteByteToiButton
;  _ReadByteToiButton
;           _CRCCheck
;      _EEPROMWriteKey                                2    0  216   0.00
;                                    0 COMMO    2
;        _WriteEEPROM
;            _DelayMs
;      _BuzzerBeep                                   10    1  222   0.00
;                                    0 COMMO    6
;                                    6 BANK0    5
;            _DelayMs
;        _strcmp                                      3    1  126   0.00
;                                    0 COMMO    2
;                                    0 BANK0    2
;        _EEPROMReadKey                               2    0  108   0.00
;                                    0 COMMO    2
;         _ReadEEPROM
;        _CRCCheck                                    4    0  213   0.00
;                                    0 BANK0    4
;        _WriteByteToiButton                          2    0  120   0.00
;                                    0 COMMO    2
;         _delay_10us
;        _EEPROMWriteKeyByte                          1    0  138   0.00
;                                    0 COMMO    1
;        _WriteEEPROM
;            _DelayMs
;        _CheckForiButtonDisconnect                   0    0   46   0.00
;        _InitiButton
;        _ToggleLED                                   0    0    0   0.00
;        _ReadByteToiButton                           3    0  200   0.00
;                                    0 BANK0    3
;         _delay_10us
;          _DelayMs                                   4    2  108   0.00
;                                    0 BANK0    6
;          _ReadEEPROM                                0    0    0   0.00
;          _InitiButton                               1    0   46   0.00
;                                    0 COMMO    1
;         _delay_10us
;          _WriteEEPROM                               0    0    0   0.00
;            _delay_10us                              0    0    0   0.00
; Estimated maximum call depth 6
;_isr                                                 3    0    0   0.00
;                                   18 BANK0    3
; Estimated maximum call depth 0
; Address spaces:

;Name               Size   Autos  Total    Cost      Usage
;BITCOMMON            E      0       0       0        0.0%
;CODE                 0      0       0       0        0.0%
;NULL                 0      0       0       0        0.0%
;COMMON               E      6       C       1       85.7%
;SFR0                 0      0       0       1        0.0%
;BITSFR0              0      0       0       1        0.0%
;SFR1                 0      0       0       2        0.0%
;BITSFR1              0      0       0       2        0.0%
;STACK                0      0       0       2        0.0%
;ABS                  0      0      37       3        0.0%
;BITBANK0            50      0       0       4        0.0%
;BITSFR3              0      0       0       4        0.0%
;SFR3                 0      0       0       4        0.0%
;BANK0               50     15      2B       5       53.8%
;BITSFR2              0      0       0       5        0.0%
;SFR2                 0      0       0       5        0.0%
;BITBANK1            20      0       0       6        0.0%
;BANK1               20      0       0       7        0.0%
;DATA                 0      0      37       8        0.0%
;EEDATA             100      0       0    1000        0.0%

	global	_main
psect	maintext,local,class=CODE,delta=2
global __pmaintext
__pmaintext:

; *************** function _main *****************
; Defined at:
;		line 557 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  PowerOnBeep     1   17[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 60/0
;		Unchanged: FFE00/0
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
;		_LockOperation
;		_GoToSleep
; This function is called by:
;		Startup code after reset
; This function uses a non-reentrant model
; 
psect	maintext
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	557
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
;main.c: 556: void main(void)
;main.c: 557: {
	
_main:	
	opt stack 6
; Regs used in _main: [allreg]
	line	559
	
l30001871:	
;main.c: 558: unsigned char PowerOnBeep;
;main.c: 559: PowerInit();
	fcall	_PowerInit
	
l30001872:	
	line	560
;main.c: 560: PowerOnBeep=0x00;
	bcf	status, 5	;RP0=0, select bank0
	clrf	(main@PowerOnBeep)
	
l30001873:	
	line	561
;main.c: 561: DelayMs(100);
	movlw	064h
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001874:	
	line	563
;main.c: 563: BuzzerBeep(2,0);
	clrf	(?_BuzzerBeep)
	movlw	(02h)
	fcall	_BuzzerBeep
	
l30001875:	
	line	567
;main.c: 566: {
;main.c: 567: ConfigureMasterKey(PowerOnBeep);
	movf	(main@PowerOnBeep),w
	fcall	_ConfigureMasterKey
	
l30001876:	
	line	568
;main.c: 568: PowerOnBeep=0x01;
	clrf	(main@PowerOnBeep)
	incf	(main@PowerOnBeep),f
	
l30001877:	
	line	572
;main.c: 571: {
;main.c: 572: if(!RA5)
	btfsc	(45/8),(45)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l30001883
u2560:
	
l30001878:	
	line	574
;main.c: 573: {
;main.c: 574: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	incf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	
l30001879:	
	line	575
	movlw	0FFh
	movwf	(_DataEEAddr)
	clrf	(_DataEEAddr+1)
	
l30001880:	
	clrf	(_DataEEData)
	clrf	(_DataEEData+1)
	
l30001881:	
	fcall	_WriteEEPROM
	
l30001882:	
	line	576
;main.c: 576: ClearAllKeys(1);
	movlw	(01h)
	fcall	_ClearAllKeys
	goto	l30001875
	
l30001883:	
	line	580
;main.c: 579: }
;main.c: 580: LockOperation();
	fcall	_LockOperation
	
l30001884:	
	line	581
;main.c: 581: GoToSleep();
	fcall	_GoToSleep
	goto	l30001877
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
; =============== function _main ends ============

psect	maintext
	line	584
	signat	_main,88
	global	_ConfigureMasterKey
psect	text860,local,class=CODE,delta=2
global __ptext860
__ptext860:

; *************** function _ConfigureMasterKey *****************
; Defined at:
;		line 432 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  PowerOnBeep     1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  PowerOnBeep     1   11[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFE00/0
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
psect	text860
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	432
	global	__size_of_ConfigureMasterKey
	__size_of_ConfigureMasterKey	equ	__end_of_ConfigureMasterKey-_ConfigureMasterKey
;main.c: 431: void ConfigureMasterKey(unsigned char PowerOnBeep)
;main.c: 432: {
	
_ConfigureMasterKey:	
	opt stack 5
; Regs used in _ConfigureMasterKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ConfigureMasterKey@PowerOnBeep stored from wreg
	movwf	(ConfigureMasterKey@PowerOnBeep)
	
l30001895:	
	line	433
;main.c: 433: EEPROMReadKey(0);
	movlw	(0)
	fcall	_EEPROMReadKey
	line	434
;main.c: 434: if(CRCCheck(EEPROMKey) == 0)
	movlw	((_EEPROMKey))&0ffh
	fcall	_CRCCheck
	iorlw	0
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l149
u2600:
	
l30001896:	
	line	436
;main.c: 435: {
;main.c: 436: if(!PowerOnBeep)
	movf	(ConfigureMasterKey@PowerOnBeep),f
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l30001898
u2610:
	
l30001897:	
	line	437
;main.c: 437: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	incf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	
l30001898:	
	line	441
;main.c: 440: {
;main.c: 441: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u2621
	goto	u2620
u2621:
	goto	l155
u2620:
	
l30001899:	
	line	443
;main.c: 442: {
;main.c: 443: EEPROMWriteKey(0);
	movlw	(0)
	fcall	_EEPROMWriteKey
	
l30001900:	
	line	444
;main.c: 444: BuzzerBeep(3,0);
	clrf	(?_BuzzerBeep)
	movlw	(03h)
	fcall	_BuzzerBeep
	
l30001901:	
	line	446
;main.c: 446: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	goto	l149
	
l155:	
	line	449
;main.c: 448: }
;main.c: 449: if(RA5 == 0)
	btfsc	(45/8),(45)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l156
u2630:
	
l30001903:	
	line	450
;main.c: 450: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	incf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	
l156:	
	line	452
;main.c: 452: GoToSleep();
	fcall	_GoToSleep
	goto	l30001898
	
l149:	
	return
	opt stack 0
GLOBAL	__end_of_ConfigureMasterKey
	__end_of_ConfigureMasterKey:
; =============== function _ConfigureMasterKey ends ============

psect	text861,local,class=CODE,delta=2
global __ptext861
__ptext861:
	line	455
	signat	_ConfigureMasterKey,4216
	global	_LockOperation

; *************** function _LockOperation *****************
; Defined at:
;		line 458 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               2   14[BANK0 ] unsigned int 
;  ShouldCheckC    1   16[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, btemp+0, btemp+1, btemp+2, btemp+3, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFE00/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       3       0
;      Temp:     0
;      Total:    3
; This function calls:
;		_ReadiButton
;		_AvailabeKey
;		_BuzzerBeep
;		_DoorOpen
;		_ToggleBuzzLED
;		_CheckForiButtonDisconnect
;		_Configuration
;		_DelayMs
;		_DoorClose
;		_InvalidKeyIndication
;		_ToggleBuzzErrorLED
; This function is called by:
;		_main
; This function uses a non-reentrant model
; 
psect	text861
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	458
	global	__size_of_LockOperation
	__size_of_LockOperation	equ	__end_of_LockOperation-_LockOperation
;main.c: 457: void LockOperation(void)
;main.c: 458: {
	
_LockOperation:	
	opt stack 5
; Regs used in _LockOperation: [allreg]
	line	462
	
l30001833:	
;main.c: 459: unsigned int i;
;main.c: 460: unsigned char ShouldCheckConfig;
;main.c: 462: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l157
u2420:
	
l30001834:	
	line	464
;main.c: 463: {
;main.c: 464: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001835:	
	line	465
;main.c: 465: if(MatchKey)
	movf	(_MatchKey),w
	skipz
	goto	u2430
	goto	l30001860
u2430:
	
l30001836:	
	line	467
;main.c: 466: {
;main.c: 467: RC0=0x01;
	bsf	(56/8),(56)&7
	
l30001837:	
	line	468
;main.c: 468: BuzzerBeep(1,0);
	clrf	(?_BuzzerBeep)
	movlw	(01h)
	fcall	_BuzzerBeep
	line	469
;main.c: 469: DoorOpen();
	fcall	_DoorOpen
	
l30001838:	
	line	470
;main.c: 470: TimeCounter=0x00;
	clrf	(_TimeCounter)
	
l30001839:	
	line	471
;main.c: 472: SlaveConfigured=0x00;
	clrf	(LockOperation@ShouldCheckConfig)
	
l30001840:	
	line	473
;main.c: 473: ToggleSkipFlag=0x01;
	clrf	(_ToggleSkipFlag)
	incf	(_ToggleSkipFlag),f
	goto	l30001855
	
l30001841:	
	line	476
;main.c: 475: {
;main.c: 476: if(LowBatt)
	movf	(_LowBatt),w
	skipz
	goto	u2440
	goto	l30001843
u2440:
	
l30001842:	
	line	477
;main.c: 477: ToggleBuzzLED();
	fcall	_ToggleBuzzLED
	
l30001843:	
	line	479
;main.c: 479: if(ShouldCheckConfig == 0)
	movf	(LockOperation@ShouldCheckConfig),f
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l30001847
u2450:
	
l30001844:	
	line	481
;main.c: 480: {
;main.c: 481: if((MatchKey == 2) && (!CheckForiButtonDisconnect()))
	movf	(_MatchKey),w
	xorlw	02h
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l30001847
u2460:
	
l30001845:	
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l30001847
u2470:
	
l30001846:	
	line	483
;main.c: 482: {
;main.c: 483: ShouldCheckConfig=0x01;
	clrf	(LockOperation@ShouldCheckConfig)
	incf	(LockOperation@ShouldCheckConfig),f
	
l30001847:	
	line	487
;main.c: 484: }
;main.c: 485: }
;main.c: 487: if(ReadiButton() && ShouldCheckConfig)
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u2481
	goto	u2480
u2481:
	goto	l30001852
u2480:
	
l30001848:	
	movf	(LockOperation@ShouldCheckConfig),w
	skipz
	goto	u2490
	goto	l30001852
u2490:
	
l30001849:	
	line	489
;main.c: 488: {
;main.c: 489: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001850:	
	line	490
;main.c: 490: if(MatchKey == 2)
	movf	(_MatchKey),w
	xorlw	02h
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l30001852
u2500:
	
l30001851:	
	line	492
;main.c: 493: SlaveConfigured=0x01;
	fcall	_Configuration
	goto	l162
	
l30001852:	
	line	497
;main.c: 495: }
;main.c: 496: }
;main.c: 497: DelayMs(30);
	movlw	01Eh
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001853:	
	line	498
;main.c: 498: RC1=0x00;
	bcf	(57/8),(57)&7
	line	499
;main.c: 499: DelayMs(170);
	movlw	0AAh
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001854:	
	line	500
;main.c: 500: TimeCounter++;
	incf	(_TimeCounter),f
	
l30001855:	
	line	474
	movlw	(036h)
	subwf	(_TimeCounter),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l30001841
u2510:
	
l162:	
	line	502
;main.c: 501: }
;main.c: 502: RC1=0x00;
	bcf	(57/8),(57)&7
	line	503
;main.c: 503: RC0=0x00;
	bcf	(56/8),(56)&7
	
l30001856:	
	line	504
;main.c: 504: DoorClose();
	fcall	_DoorClose
	
l30001857:	
	line	505
;main.c: 505: RC2=0x00;
	bcf	(58/8),(58)&7
	
l30001858:	
	line	506
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l30001858
u2520:
	
l30001859:	
	line	507
;main.c: 507: InvalidKeyCount=0x00;
	clrf	(_InvalidKeyCount)
	goto	l157
	
l30001860:	
	line	511
;main.c: 509: else
;main.c: 510: {
;main.c: 511: if((++InvalidKeyCount)>2)
	movlw	(03h)
	incf	(_InvalidKeyCount),f
	subwf	((_InvalidKeyCount))&07fh,w
	skipc
	goto	u2531
	goto	u2530
u2531:
	goto	l30001863
u2530:
	
l30001861:	
	line	513
;main.c: 512: {
;main.c: 513: InvalidKeyCount = 0;
	clrf	(_InvalidKeyCount)
	
l30001862:	
	line	514
;main.c: 514: InvalidKeyIndication();
	fcall	_InvalidKeyIndication
	goto	l30001870
	
l30001863:	
	line	518
;main.c: 516: else
;main.c: 517: {
;main.c: 518: for(i=0;i<4;i++)
	clrf	(LockOperation@i)
	clrf	(LockOperation@i+1)
	
l30001866:	
	line	520
;main.c: 519: {
;main.c: 520: ToggleBuzzErrorLED();
	fcall	_ToggleBuzzErrorLED
	
l30001867:	
	line	521
;main.c: 521: DelayMs(125);
	movlw	07Dh
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001868:	
	line	518
	incf	(LockOperation@i),f
	skipnz
	incf	(LockOperation@i+1),f
	
l30001869:	
	movlw	high(04h)
	subwf	(LockOperation@i+1),w
	movlw	low(04h)
	skipnz
	subwf	(LockOperation@i),w
	skipc
	goto	u2541
	goto	u2540
u2541:
	goto	l30001866
u2540:
	
l30001870:	
	line	524
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u2551
	goto	u2550
u2551:
	goto	l30001870
u2550:
	
l157:	
	return
	opt stack 0
GLOBAL	__end_of_LockOperation
	__end_of_LockOperation:
; =============== function _LockOperation ends ============

psect	text862,local,class=CODE,delta=2
global __ptext862
__ptext862:
	line	527
	signat	_LockOperation,88
	global	_PowerInit

; *************** function _PowerInit *****************
; Defined at:
;		line 18 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2
; Tracked objects:
;		On entry : 17F/0
;		On exit  : 17F/20
;		Unchanged: FFE80/0
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
psect	text862
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	18
	global	__size_of_PowerInit
	__size_of_PowerInit	equ	__end_of_PowerInit-_PowerInit
;main.c: 13: unsigned char InvalidKeyCount = 0;
;main.c: 15: asm("\tpsect config,class=CONFIG,delta=2"); asm("\tdw ""0x3FFC & 0x3FF7 & 0x3FFF & 0x3FDF & 0x3FBF & 0x3CFF & 0x3BFF & 0x37FF");
;main.c: 17: void PowerInit(void)
;main.c: 18: {
	
_PowerInit:	
	opt stack 5
; Regs used in _PowerInit: [wreg+status,2]
	line	19
	
l30001387:	
;main.c: 19: IRCF0=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1148/8)^080h,(1148)&7
	line	20
;main.c: 20: SCS=0x01;
	bsf	(1144/8)^080h,(1144)&7
	line	21
;main.c: 21: IRCF1=0x01;
	bsf	(1149/8)^080h,(1149)&7
	line	22
;main.c: 22: IRCF2=0x01;
	bsf	(1150/8)^080h,(1150)&7
	
l30001388:	
	line	24
;main.c: 24: OSCTUNE=0x00;
	clrf	(144)^080h
	line	26
;main.c: 26: CM1CON0=0x00;
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	clrf	(281)^0100h	;volatile
	line	27
;main.c: 27: ANSEL=0x00;
	clrf	(286)^0100h
	line	28
;main.c: 28: ANSELH=0x00;
	clrf	(287)^0100h
	
l30001389:	
	line	30
;main.c: 30: TRISC1=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	
l30001390:	
	line	31
;main.c: 31: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(57/8),(57)&7
	
l30001391:	
	line	33
;main.c: 33: TRISA5=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1069/8)^080h,(1069)&7
	
l30001392:	
	line	34
;main.c: 34: WPUA=0x24;
	movlw	(024h)
	movwf	(149)^080h
	
l30001393:	
	line	36
;main.c: 36: TRISC5=0x00;
	bcf	(1085/8)^080h,(1085)&7
	
l30001394:	
	line	37
;main.c: 37: RC5=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(61/8),(61)&7
	
l30001395:	
	line	38
;main.c: 38: TRISA4=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1068/8)^080h,(1068)&7
	
l30001396:	
	line	39
;main.c: 39: RABPU=0x00;
	bcf	(1039/8)^080h,(1039)&7
	
l30001397:	
	line	40
;main.c: 40: TRISC0=0x00;
	bcf	(1080/8)^080h,(1080)&7
	
l30001398:	
	line	41
;main.c: 41: TRISC2=0x00;
	bcf	(1082/8)^080h,(1082)&7
	
l30001399:	
	line	42
;main.c: 42: TRISA2=0x01;
	bsf	(1066/8)^080h,(1066)&7
	
l30001400:	
	line	43
;main.c: 43: RC0=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(56/8),(56)&7
	
l30001401:	
	line	45
;main.c: 45: TRISC6=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1086/8)^080h,(1086)&7
	
l30001402:	
	line	46
;main.c: 46: TRISC7=0x00;
	bcf	(1087/8)^080h,(1087)&7
	
l30001403:	
	line	48
	bcf	status, 5	;RP0=0, select bank0
	bcf	(62/8),(62)&7
	
l30001404:	
	bcf	(63/8),(63)&7
	
l30001405:	
	line	50
;main.c: 50: EECON1=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(396)^0180h	;volatile
	line	52
;main.c: 52: INTCON=0x88;
	movlw	(088h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(11)	;volatile
	line	53
;main.c: 54: AutoMode=0x01;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	movwf	(150)^080h
	
l1:	
	return
	opt stack 0
GLOBAL	__end_of_PowerInit
	__end_of_PowerInit:
; =============== function _PowerInit ends ============

psect	text863,local,class=CODE,delta=2
global __ptext863
__ptext863:
	line	55
	signat	_PowerInit,88
	global	_Configuration

; *************** function _Configuration *****************
; Defined at:
;		line 325 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               1   13[BANK0 ] unsigned char 
;  KeyConfigure    1   12[BANK0 ] unsigned char 
;  key             1   11[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 160/0
;		On exit  : 60/0
;		Unchanged: FFE00/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       3       0
;      Temp:     0
;      Total:    3
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
psect	text863
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	325
	global	__size_of_Configuration
	__size_of_Configuration	equ	__end_of_Configuration-_Configuration
;main.c: 324: void Configuration(void)
;main.c: 325: {
	
_Configuration:	
	opt stack 4
; Regs used in _Configuration: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	326
	
l30001793:	
;main.c: 326: unsigned char i, key, KeyConfigured = 0;
	clrf	(Configuration@KeyConfigured)
	
l30001794:	
	line	329
;main.c: 327: unsigned int k;
;main.c: 329: BuzzerBeep(1,1);
	clrf	(?_BuzzerBeep)
	incf	(?_BuzzerBeep),f
	movlw	(01h)
	fcall	_BuzzerBeep
	
l30001795:	
	line	331
;main.c: 331: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	line	333
;main.c: 333: TimeCounter = 0;
	clrf	(_TimeCounter)
	goto	l30001830
	
l30001796:	
	line	336
;main.c: 335: {
;main.c: 336: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u2321
	goto	u2320
u2321:
	goto	l30001827
u2320:
	
l30001797:	
	line	338
;main.c: 337: {
;main.c: 338: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001798:	
	line	339
;main.c: 339: if(MatchKey != 2)
	movf	(_MatchKey),w
	xorlw	02h
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l30001823
u2330:
	
l30001799:	
	line	341
;main.c: 340: {
;main.c: 341: KeyConfigured=0x01;
	clrf	(Configuration@KeyConfigured)
	incf	(Configuration@KeyConfigured),f
	line	342
;main.c: 342: for(i=1;i<23;i++)
	clrf	(Configuration@i)
	incf	(Configuration@i),f
	
l30001802:	
	line	344
;main.c: 343: {
;main.c: 344: EEPROMReadKey(i);
	movf	(Configuration@i),w
	fcall	_EEPROMReadKey
	line	345
;main.c: 345: key = strcmp(iButtonKey,EEPROMKey);
	movlw	((_EEPROMKey))&0ffh
	movwf	(?_strcmp)
	movlw	((_iButtonKey))&0ffh
	fcall	_strcmp
	movwf	(Configuration@key)
	
l30001803:	
	line	346
;main.c: 346: if(key)
	movf	(Configuration@key),w
	skipz
	goto	u2340
	goto	l30001808
u2340:
	
l30001804:	
	line	348
;main.c: 347: {
;main.c: 348: ClearKey(i);
	movf	(Configuration@i),w
	fcall	_ClearKey
	
l30001805:	
	line	349
;main.c: 349: BuzzerBeep(2,0);
	clrf	(?_BuzzerBeep)
	movlw	(02h)
	fcall	_BuzzerBeep
	
l30001806:	
	line	350
;main.c: 350: TimeCounter=0x00;
	clrf	(_TimeCounter)
	
l30001807:	
	line	352
;main.c: 352: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	goto	l30001810
	
l30001808:	
	line	342
	incf	(Configuration@i),f
	
l30001809:	
	movlw	(017h)
	subwf	(Configuration@i),w
	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l30001802
u2350:
	
l30001810:	
	line	356
;main.c: 354: }
;main.c: 355: }
;main.c: 356: if(i==23)
	movf	(Configuration@i),w
	xorlw	017h
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l30001827
u2360:
	
l30001811:	
	line	358
;main.c: 357: {
;main.c: 358: for(i=1;i<23;i++)
	clrf	(Configuration@i)
	incf	(Configuration@i),f
	
l30001814:	
	line	360
;main.c: 359: {
;main.c: 360: EEPROMReadKey(i);
	movf	(Configuration@i),w
	fcall	_EEPROMReadKey
	line	361
;main.c: 361: if(CRCCheck(EEPROMKey) == 0)
	movlw	((_EEPROMKey))&0ffh
	fcall	_CRCCheck
	iorlw	0
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l30001819
u2370:
	
l30001815:	
	line	363
;main.c: 362: {
;main.c: 363: EEPROMWriteKey(i);
	movf	(Configuration@i),w
	fcall	_EEPROMWriteKey
	
l30001816:	
	line	364
;main.c: 364: BuzzerBeep(1,0);
	clrf	(?_BuzzerBeep)
	movlw	(01h)
	fcall	_BuzzerBeep
	
l30001817:	
	line	365
;main.c: 365: TimeCounter=0x00;
	clrf	(_TimeCounter)
	
l30001818:	
	line	367
;main.c: 367: Wait_With_LED_Blink();
	fcall	_Wait_With_LED_Blink
	goto	l30001821
	
l30001819:	
	line	358
	incf	(Configuration@i),f
	
l30001820:	
	movlw	(017h)
	subwf	(Configuration@i),w
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l30001814
u2380:
	
l30001821:	
	line	372
;main.c: 369: }
;main.c: 370: }
;main.c: 372: if(i==23)
	movf	(Configuration@i),w
	xorlw	017h
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l139
u2390:
	
l30001822:	
	line	373
;main.c: 373: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	incf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	goto	l30001827
	
l30001823:	
	line	379
;main.c: 377: else
;main.c: 378: {
;main.c: 379: if(KeyConfigured==0)
	movf	(Configuration@KeyConfigured),f
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l30001826
u2400:
	
l30001824:	
	line	381
;main.c: 380: {
;main.c: 381: ClearAllKeys(0);
	movlw	(0)
	fcall	_ClearAllKeys
	
l30001825:	
	line	382
;main.c: 382: BuzzerBeep(3,1);
	clrf	(?_BuzzerBeep)
	incf	(?_BuzzerBeep),f
	movlw	(03h)
	fcall	_BuzzerBeep
	goto	l30001831
	
l30001826:	
	line	385
;main.c: 384: else
;main.c: 385: BuzzerBeep(1,0);
	clrf	(?_BuzzerBeep)
	movlw	(01h)
	fcall	_BuzzerBeep
	goto	l30001831
	
l139:	
	
l30001827:	
	line	389
;main.c: 387: }
;main.c: 388: }
;main.c: 389: DelayMs(170+30*3);
	movlw	low(0104h)
	movwf	(?_DelayMs)
	movlw	high(0104h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001828:	
	line	390
;main.c: 390: ToggleLED();
	fcall	_ToggleLED
	
l30001829:	
	line	391
;main.c: 391: TimeCounter++;
	incf	(_TimeCounter),f
	
l30001830:	
	line	334
	movlw	(024h)
	subwf	(_TimeCounter),w
	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l30001796
u2410:
	
l30001831:	
	line	393
;main.c: 392: }
;main.c: 393: TimeCounter = 54;
	movlw	(036h)
	movwf	(_TimeCounter)
	
l30001832:	
	line	394
;main.c: 394: TimeCounter++;
	incf	(_TimeCounter),f
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_Configuration
	__end_of_Configuration:
; =============== function _Configuration ends ============

psect	text864,local,class=CODE,delta=2
global __ptext864
__ptext864:
	line	395
	signat	_Configuration,88
	global	_ToggleBuzzLED

; *************** function _ToggleBuzzLED *****************
; Defined at:
;		line 100 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text864
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	100
	global	__size_of_ToggleBuzzLED
	__size_of_ToggleBuzzLED	equ	__end_of_ToggleBuzzLED-_ToggleBuzzLED
;main.c: 99: void ToggleBuzzLED(void)
;main.c: 100: {
	
_ToggleBuzzLED:	
	opt stack 4
; Regs used in _ToggleBuzzLED: []
	line	101
	
l30001383:	
;main.c: 101: if(RC0)
	btfss	(56/8),(56)&7
	goto	u1511
	goto	u1510
u1511:
	goto	l20
u1510:
	
l30001384:	
	line	103
;main.c: 102: {
;main.c: 103: RC1=0x00;
	bcf	(57/8),(57)&7
	line	104
;main.c: 104: RC0=0x00;
	bcf	(56/8),(56)&7
	goto	l19
	
l20:	
	line	108
;main.c: 106: else
;main.c: 107: {
;main.c: 108: RC1=0x01;
	bsf	(57/8),(57)&7
	line	109
;main.c: 109: RC0=0x01;
	bsf	(56/8),(56)&7
	
l19:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleBuzzLED
	__end_of_ToggleBuzzLED:
; =============== function _ToggleBuzzLED ends ============

psect	text865,local,class=CODE,delta=2
global __ptext865
__ptext865:
	line	111
	signat	_ToggleBuzzLED,88
	global	_DoorOpen

; *************** function _DoorOpen *****************
; Defined at:
;		line 128 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  BattStatus      1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         1       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_DelayMs
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text865
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	128
	global	__size_of_DoorOpen
	__size_of_DoorOpen	equ	__end_of_DoorOpen-_DoorOpen
;main.c: 127: void DoorOpen(void)
;main.c: 128: {
	
_DoorOpen:	
	opt stack 4
; Regs used in _DoorOpen: [wreg+status,2+status,0+pclath+cstack]
	line	130
	
l30001521:	
;main.c: 129: unsigned char BattStatus;
;main.c: 130: BattStatus=0x00;
	clrf	(DoorOpen@BattStatus)
	
l30001522:	
	line	131
;main.c: 131: if(RA5)
	btfss	(45/8),(45)&7
	goto	u1841
	goto	u1840
u1841:
	goto	l30001524
u1840:
	
l30001523:	
	line	132
;main.c: 132: BattStatus++;
	incf	(DoorOpen@BattStatus),f
	
l30001524:	
	line	133
;main.c: 133: DelayMs(10);
	movlw	0Ah
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001525:	
	line	134
;main.c: 134: if(RA5)
	btfss	(45/8),(45)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l30001527
u1850:
	
l30001526:	
	line	135
;main.c: 135: BattStatus++;
	incf	(DoorOpen@BattStatus),f
	
l30001527:	
	line	138
	bsf	(62/8),(62)&7
	
l30001528:	
	bsf	(63/8),(63)&7
	
l30001529:	
	line	140
;main.c: 140: DelayMs(10);
	movlw	0Ah
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001530:	
	line	141
	bsf	(62/8),(62)&7
	
l30001531:	
	bcf	(63/8),(63)&7
	
l30001532:	
	line	143
;main.c: 143: DelayMs(195);
	movlw	0C3h
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001533:	
	line	145
;main.c: 144: }
;main.c: 145: if(!RA5)
	btfsc	(45/8),(45)&7
	goto	u1861
	goto	u1860
u1861:
	goto	l30001535
u1860:
	
l30001534:	
	line	146
;main.c: 146: BattStatus++;
	incf	(DoorOpen@BattStatus),f
	
l30001535:	
	line	147
;main.c: 147: DelayMs(10);
	movlw	0Ah
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001536:	
	line	148
;main.c: 148: if(!RA5)
	btfsc	(45/8),(45)&7
	goto	u1871
	goto	u1870
u1871:
	goto	l30001538
u1870:
	
l30001537:	
	line	149
;main.c: 149: BattStatus++;
	incf	(DoorOpen@BattStatus),f
	
l30001538:	
	line	150
;main.c: 150: DelayMs(195);
	movlw	0C3h
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001539:	
	line	151
	bcf	(62/8),(62)&7
	
l30001540:	
	bcf	(63/8),(63)&7
	
l30001541:	
	line	155
;main.c: 155: if(BattStatus == 4)
	movf	(DoorOpen@BattStatus),w
	xorlw	04h
	skipz
	goto	u1881
	goto	u1880
u1881:
	goto	l30001543
u1880:
	
l30001542:	
	line	156
;main.c: 156: LowBatt=0x01;
	clrf	(_LowBatt)
	incf	(_LowBatt),f
	goto	l25
	
l30001543:	
	line	158
;main.c: 157: else
;main.c: 158: LowBatt=0x00;
	clrf	(_LowBatt)
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_DoorOpen
	__end_of_DoorOpen:
; =============== function _DoorOpen ends ============

psect	text866,local,class=CODE,delta=2
global __ptext866
__ptext866:
	line	159
	signat	_DoorOpen,88
	global	_InvalidKeyIndication

; *************** function _InvalidKeyIndication *****************
; Defined at:
;		line 398 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 160/0
;		On exit  : 60/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_DelayMs
;		_ReadiButton
;		_AvailabeKey
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text866
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	398
	global	__size_of_InvalidKeyIndication
	__size_of_InvalidKeyIndication	equ	__end_of_InvalidKeyIndication-_InvalidKeyIndication
;main.c: 397: void InvalidKeyIndication(void)
;main.c: 398: {
	
_InvalidKeyIndication:	
	opt stack 4
; Regs used in _InvalidKeyIndication: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	399
	
l30001885:	
;main.c: 399: RC1=0x01;
	bsf	(57/8),(57)&7
	line	400
;main.c: 400: RC0=0x01;
	bsf	(56/8),(56)&7
	
l30001886:	
	line	401
;main.c: 401: TimeCounter=0x00;
	clrf	(_TimeCounter)
	goto	l30001894
	
l30001887:	
	line	404
;main.c: 403: {
;main.c: 404: DelayMs(420);
	movlw	low(01A4h)
	movwf	(?_DelayMs)
	movlw	high(01A4h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001888:	
	line	405
;main.c: 405: TimeCounter++;
	incf	(_TimeCounter),f
	
l30001889:	
	line	407
;main.c: 407: if(ReadiButton())
	fcall	_ReadiButton
	xorlw	0
	skipnz
	goto	u2571
	goto	u2570
u2571:
	goto	l30001894
u2570:
	
l30001890:	
	line	409
;main.c: 408: {
;main.c: 409: MatchKey = AvailabeKey();
	fcall	_AvailabeKey
	movwf	(_MatchKey)
	
l30001891:	
	line	410
;main.c: 410: if(MatchKey != 0)
	movf	(_MatchKey),w
	skipz
	goto	u2580
	goto	l30001894
u2580:
	
l30001892:	
	line	412
;main.c: 411: {
;main.c: 412: RC1=0x00;
	bcf	(57/8),(57)&7
	line	413
;main.c: 413: RC0=0x00;
	bcf	(56/8),(56)&7
	
l30001893:	
	line	414
;main.c: 414: DelayMs(500);
	movlw	low(01F4h)
	movwf	(?_DelayMs)
	movlw	high(01F4h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	goto	l145
	
l30001894:	
	line	402
	movlw	(0F0h)
	subwf	(_TimeCounter),w
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l30001887
u2590:
	
l145:	
	line	419
;main.c: 416: }
;main.c: 417: }
;main.c: 418: }
;main.c: 419: RC1=0x00;
	bcf	(57/8),(57)&7
	line	420
;main.c: 420: RC0=0x00;
	bcf	(56/8),(56)&7
	
l142:	
	return
	opt stack 0
GLOBAL	__end_of_InvalidKeyIndication
	__end_of_InvalidKeyIndication:
; =============== function _InvalidKeyIndication ends ============

psect	text867,local,class=CODE,delta=2
global __ptext867
__ptext867:
	line	421
	signat	_InvalidKeyIndication,88
	global	_ToggleBuzzErrorLED

; *************** function _ToggleBuzzErrorLED *****************
; Defined at:
;		line 114 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text867
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	114
	global	__size_of_ToggleBuzzErrorLED
	__size_of_ToggleBuzzErrorLED	equ	__end_of_ToggleBuzzErrorLED-_ToggleBuzzErrorLED
;main.c: 113: void ToggleBuzzErrorLED(void)
;main.c: 114: {
	
_ToggleBuzzErrorLED:	
	opt stack 4
; Regs used in _ToggleBuzzErrorLED: []
	line	115
	
l30001385:	
;main.c: 115: if(RC2)
	btfss	(58/8),(58)&7
	goto	u1521
	goto	u1520
u1521:
	goto	l23
u1520:
	
l30001386:	
	line	117
;main.c: 116: {
;main.c: 117: RC1=0x00;
	bcf	(57/8),(57)&7
	line	118
;main.c: 118: RC2=0x00;
	bcf	(58/8),(58)&7
	goto	l22
	
l23:	
	line	122
;main.c: 120: else
;main.c: 121: {
;main.c: 122: RC1=0x01;
	bsf	(57/8),(57)&7
	line	123
;main.c: 123: RC2=0x01;
	bsf	(58/8),(58)&7
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleBuzzErrorLED
	__end_of_ToggleBuzzErrorLED:
; =============== function _ToggleBuzzErrorLED ends ============

psect	text868,local,class=CODE,delta=2
global __ptext868
__ptext868:
	line	125
	signat	_ToggleBuzzErrorLED,88
	global	_GoToSleep

; *************** function _GoToSleep *****************
; Defined at:
;		line 67 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text868
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	67
	global	__size_of_GoToSleep
	__size_of_GoToSleep	equ	__end_of_GoToSleep-_GoToSleep
;main.c: 66: void GoToSleep(void)
;main.c: 67: {
	
_GoToSleep:	
	opt stack 4
; Regs used in _GoToSleep: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l30001519:	
# 69 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
 BSF 0x3, 0x5 ;#
	line	70
# 70 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
 BCF 0x3, 0x6 ;#
	line	71
# 71 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
 BSF 0x5, 0x2 ;#
	line	73
# 73 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
 MOVLW 0x24 ;#
	line	74
# 74 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
 MOVWF 0x16 ;#
	line	75
# 75 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
 SLEEP ;#
	line	77
# 77 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
# 76 ;#
psect	text868
	
l30001520:	
	line	80
;main.c: 80: DelayMs(80);
	movlw	050h
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l13:	
	return
	opt stack 0
GLOBAL	__end_of_GoToSleep
	__end_of_GoToSleep:
; =============== function _GoToSleep ends ============

psect	text869,local,class=CODE,delta=2
global __ptext869
__ptext869:
	line	81
	signat	_GoToSleep,88
	global	_DoorClose

; *************** function _DoorClose *****************
; Defined at:
;		line 162 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_CHK_LOW_BAT_OPEN
;		_DelayMs
; This function is called by:
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text869
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	162
	global	__size_of_DoorClose
	__size_of_DoorClose	equ	__end_of_DoorClose-_DoorClose
;main.c: 161: void DoorClose(void)
;main.c: 162: {
	
_DoorClose:	
	opt stack 4
; Regs used in _DoorClose: [wreg+status,2+status,0+pclath+cstack]
	line	163
	
l30001544:	
;main.c: 163: CHK_LOW_BAT_OPEN();
	fcall	_CHK_LOW_BAT_OPEN
	
l30001545:	
	line	164
;main.c: 164: if(LowBatt)return;;
	movf	(_LowBatt),w
	skipz
	goto	u1890
	goto	l45
u1890:
	goto	l41
	
l45:	
	line	166
	bcf	(62/8),(62)&7
	bsf	(63/8),(63)&7
	
l30001547:	
	line	168
;main.c: 168: DelayMs(400);
	movlw	low(0190h)
	movwf	(?_DelayMs)
	movlw	high(0190h)
	movwf	((?_DelayMs))+1
	fcall	_DelayMs
	
l30001548:	
	line	169
	bcf	(62/8),(62)&7
	
l30001549:	
	bcf	(63/8),(63)&7
	
l41:	
	return
	opt stack 0
GLOBAL	__end_of_DoorClose
	__end_of_DoorClose:
; =============== function _DoorClose ends ============

psect	text870,local,class=CODE,delta=2
global __ptext870
__ptext870:
	line	172
	signat	_DoorClose,88
	global	_ClearAllKeys

; *************** function _ClearAllKeys *****************
; Defined at:
;		line 288 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  Master_Also     1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  Master_Also     1    6[BANK0 ] unsigned char 
;  i               1    7[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 0/60
;		On exit  : 60/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       2       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_EEPROMWriteKeyByte
; This function is called by:
;		_Configuration
;		_main
; This function uses a non-reentrant model
; 
psect	text870
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	288
	global	__size_of_ClearAllKeys
	__size_of_ClearAllKeys	equ	__end_of_ClearAllKeys-_ClearAllKeys
;main.c: 287: void ClearAllKeys(unsigned char Master_Also)
;main.c: 288: {
	
_ClearAllKeys:	
	opt stack 3
; Regs used in _ClearAllKeys: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ClearAllKeys@Master_Also stored from wreg
	line	291
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ClearAllKeys@Master_Also)
	
l30001567:	
;main.c: 289: unsigned char i;
;main.c: 291: for(i=0;i<8;i++)
	clrf	(ClearAllKeys@i)
	
l30001570:	
	line	293
;main.c: 292: {
;main.c: 293: iButtonKey[i]=0x55;
	movf	(ClearAllKeys@i),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	movlw	(055h)
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001571:	
	line	291
	incf	(ClearAllKeys@i),f
	
l30001572:	
	movlw	(08h)
	subwf	(ClearAllKeys@i),w
	skipc
	goto	u1921
	goto	u1920
u1921:
	goto	l30001570
u1920:
	
l106:	
	line	295
;main.c: 294: }
;main.c: 295: i=0x01;
	clrf	(ClearAllKeys@i)
	incf	(ClearAllKeys@i),f
	
l30001573:	
	line	296
;main.c: 296: if(Master_Also)
	movf	(ClearAllKeys@Master_Also),w
	skipz
	goto	u1930
	goto	l30001575
u1930:
	
l30001574:	
	line	297
;main.c: 297: i=0x00;
	clrf	(ClearAllKeys@i)
	
l30001575:	
	line	298
;main.c: 298: for(;i<23;i++)
	movlw	(017h)
	subwf	(ClearAllKeys@i),w
	skipc
	goto	u1941
	goto	u1940
u1941:
	goto	l30001577
u1940:
	goto	l104
	
l30001577:	
	line	300
;main.c: 299: {
;main.c: 300: EEPROMWriteKeyByte(i);
	movf	(ClearAllKeys@i),w
	fcall	_EEPROMWriteKeyByte
	
l30001578:	
	line	298
	incf	(ClearAllKeys@i),f
	goto	l30001575
	
l104:	
	return
	opt stack 0
GLOBAL	__end_of_ClearAllKeys
	__end_of_ClearAllKeys:
; =============== function _ClearAllKeys ends ============

psect	text871,local,class=CODE,delta=2
global __ptext871
__ptext871:
	line	302
	signat	_ClearAllKeys,4216
	global	_CHK_LOW_BAT_OPEN

; *************** function _CHK_LOW_BAT_OPEN *****************
; Defined at:
;		line 530 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		_ReadEEPROM
;		_WriteEEPROM
;		_DelayMs
; This function is called by:
;		_DoorClose
; This function uses a non-reentrant model
; 
psect	text871
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	530
	global	__size_of_CHK_LOW_BAT_OPEN
	__size_of_CHK_LOW_BAT_OPEN	equ	__end_of_CHK_LOW_BAT_OPEN-_CHK_LOW_BAT_OPEN
;main.c: 529: void CHK_LOW_BAT_OPEN(void)
;main.c: 530: {
	
_CHK_LOW_BAT_OPEN:	
	opt stack 3
; Regs used in _CHK_LOW_BAT_OPEN: [wreg+status,2+status,0+pclath+cstack]
	line	531
	
l30001609:	
;main.c: 531: DataEEAddr = 0xFF;
	movlw	0FFh
	movwf	(_DataEEAddr)
	clrf	(_DataEEAddr+1)
	
l30001610:	
	line	532
;main.c: 532: ReadEEPROM();
	fcall	_ReadEEPROM
	
l30001611:	
	line	534
;main.c: 534: if(LowBatt)
	movf	(_LowBatt),w
	skipz
	goto	u2000
	goto	l30001617
u2000:
	
l30001612:	
	line	536
;main.c: 535: {
;main.c: 536: if(DataEEData >= 0x03)
	movlw	high(03h)
	subwf	(_DataEEData+1),w
	movlw	low(03h)
	skipnz
	subwf	(_DataEEData),w
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l30001614
u2010:
	
l30001613:	
	line	537
;main.c: 537: LowBatt = 0x01;
	clrf	(_LowBatt)
	incf	(_LowBatt),f
	goto	l30001619
	
l30001614:	
	line	540
;main.c: 538: else
;main.c: 539: {
;main.c: 540: LowBatt = 0x00;
	clrf	(_LowBatt)
	
l30001615:	
	line	541
;main.c: 541: DataEEAddr = 0xFF;
	movlw	0FFh
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_DataEEAddr)
	clrf	(_DataEEAddr+1)
	
l30001616:	
	line	542
;main.c: 542: DataEEData++;
	incf	(_DataEEData),f
	skipnz
	incf	(_DataEEData+1),f
	goto	l30001619
	
l30001617:	
	line	547
;main.c: 545: else
;main.c: 546: {
;main.c: 547: if(DataEEData > 0x00)
	movf	(_DataEEData+1),w
	iorwf	(_DataEEData),w
	skipnz
	goto	u2021
	goto	u2020
u2021:
	goto	l30001619
u2020:
	
l30001618:	
	line	549
;main.c: 548: {
;main.c: 549: DataEEData--;
	movlw	low(01h)
	subwf	(_DataEEData),f
	movlw	high(01h)
	skipc
	decf	(_DataEEData+1),f
	subwf	(_DataEEData+1),f
	
l30001619:	
	line	552
;main.c: 550: }
;main.c: 551: }
;main.c: 552: WriteEEPROM();
	fcall	_WriteEEPROM
	
l30001620:	
	line	553
;main.c: 553: DelayMs(10);
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l180:	
	return
	opt stack 0
GLOBAL	__end_of_CHK_LOW_BAT_OPEN
	__end_of_CHK_LOW_BAT_OPEN:
; =============== function _CHK_LOW_BAT_OPEN ends ============

psect	text872,local,class=CODE,delta=2
global __ptext872
__ptext872:
	line	554
	signat	_CHK_LOW_BAT_OPEN,88
	global	_ClearKey

; *************** function _ClearKey *****************
; Defined at:
;		line 305 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  KeyNum          1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  KeyNum          1    6[BANK0 ] unsigned char 
;  i               1    7[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 160/0
;		On exit  : 160/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       2       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_EEPROMWriteKeyByte
; This function is called by:
;		_Configuration
; This function uses a non-reentrant model
; 
psect	text872
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	305
	global	__size_of_ClearKey
	__size_of_ClearKey	equ	__end_of_ClearKey-_ClearKey
;main.c: 304: void ClearKey(unsigned char KeyNum)
;main.c: 305: {
	
_ClearKey:	
	opt stack 3
; Regs used in _ClearKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;ClearKey@KeyNum stored from wreg
	line	307
	movwf	(ClearKey@KeyNum)
	
l30001580:	
;main.c: 306: unsigned char i;
;main.c: 307: for(i=0;i<8;i++)
	clrf	(ClearKey@i)
	
l30001583:	
	line	309
;main.c: 308: {
;main.c: 309: iButtonKey[i]=0x55;
	movf	(ClearKey@i),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	movlw	(055h)
	movwf	indf
	
l30001584:	
	line	307
	incf	(ClearKey@i),f
	
l30001585:	
	movlw	(08h)
	subwf	(ClearKey@i),w
	skipc
	goto	u1951
	goto	u1950
u1951:
	goto	l30001583
u1950:
	
l30001586:	
	line	311
;main.c: 310: }
;main.c: 311: EEPROMWriteKeyByte(KeyNum);
	movf	(ClearKey@KeyNum),w
	fcall	_EEPROMWriteKeyByte
	
l112:	
	return
	opt stack 0
GLOBAL	__end_of_ClearKey
	__end_of_ClearKey:
; =============== function _ClearKey ends ============

psect	text873,local,class=CODE,delta=2
global __ptext873
__ptext873:
	line	312
	signat	_ClearKey,4216
	global	_AvailabeKey

; *************** function _AvailabeKey *****************
; Defined at:
;		line 270 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  i               1    3[BANK0 ] unsigned char 
;  key             1    2[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 160/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       2       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_EEPROMReadKey
;		_strcmp
; This function is called by:
;		_Configuration
;		_InvalidKeyIndication
;		_LockOperation
; This function uses a non-reentrant model
; 
psect	text873
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	270
	global	__size_of_AvailabeKey
	__size_of_AvailabeKey	equ	__end_of_AvailabeKey-_AvailabeKey
;main.c: 269: unsigned char AvailabeKey(void)
;main.c: 270: {
	
_AvailabeKey:	
	opt stack 3
; Regs used in _AvailabeKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	272
	
l30001702:	
;main.c: 271: unsigned char i, key;
;main.c: 272: for(i=0;i<23;i++)
	clrf	(AvailabeKey@i)
	
l30001705:	
	line	274
;main.c: 273: {
;main.c: 274: EEPROMReadKey(i);
	movf	(AvailabeKey@i),w
	fcall	_EEPROMReadKey
	line	275
;main.c: 275: key = strcmp(iButtonKey,EEPROMKey);
	movlw	((_EEPROMKey))&0ffh
	movwf	(?_strcmp)
	movlw	((_iButtonKey))&0ffh
	fcall	_strcmp
	movwf	(AvailabeKey@key)
	
l30001706:	
	line	276
;main.c: 276: if(key)
	movf	(AvailabeKey@key),w
	skipz
	goto	u2160
	goto	l30001708
u2160:
	goto	l30001710
	
l30001708:	
	line	272
	incf	(AvailabeKey@i),f
	
l30001709:	
	movlw	(017h)
	subwf	(AvailabeKey@i),w
	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l30001705
u2170:
	
l30001710:	
	line	279
;main.c: 278: }
;main.c: 279: if(i == 0)
	movf	(AvailabeKey@i),f
	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l30001714
u2180:
	
l30001711:	
	line	280
;main.c: 280: return(2);
	movlw	(02h)
	goto	l95
	
l30001714:	
	line	281
;main.c: 281: else if(i < 23)
	movlw	(017h)
	subwf	(AvailabeKey@i),w
	skipnc
	goto	u2191
	goto	u2190
u2191:
	goto	l30001718
u2190:
	
l30001715:	
	line	282
;main.c: 282: return(1);
	movlw	(01h)
	goto	l95
	
l30001718:	
	line	284
;main.c: 283: else
;main.c: 284: return(0);
	movlw	(0)
	
l95:	
	return
	opt stack 0
GLOBAL	__end_of_AvailabeKey
	__end_of_AvailabeKey:
; =============== function _AvailabeKey ends ============

psect	text874,local,class=CODE,delta=2
global __ptext874
__ptext874:
	line	285
	signat	_AvailabeKey,89
	global	_Wait_With_LED_Blink

; *************** function _Wait_With_LED_Blink *****************
; Defined at:
;		line 315 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  k               2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       2       0
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
psect	text874
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	315
	global	__size_of_Wait_With_LED_Blink
	__size_of_Wait_With_LED_Blink	equ	__end_of_Wait_With_LED_Blink-_Wait_With_LED_Blink
;main.c: 314: void Wait_With_LED_Blink(void)
;main.c: 315: {
	
_Wait_With_LED_Blink:	
	opt stack 3
; Regs used in _Wait_With_LED_Blink: [wreg+status,2+status,0+pclath+cstack]
	
l30001922:	
	goto	l30001929
	
l30001923:	
	line	319
;main.c: 318: {
;main.c: 319: for(k=0;k<13500;k++);
	clrf	(Wait_With_LED_Blink@k)
	clrf	(Wait_With_LED_Blink@k+1)
	
l30001926:	
	incf	(Wait_With_LED_Blink@k),f
	skipnz
	incf	(Wait_With_LED_Blink@k+1),f
	
l30001927:	
	movlw	high(034BCh)
	subwf	(Wait_With_LED_Blink@k+1),w
	movlw	low(034BCh)
	skipnz
	subwf	(Wait_With_LED_Blink@k),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l30001926
u2650:
	
l30001928:	
	line	320
;main.c: 320: ToggleLED();
	fcall	_ToggleLED
	
l30001929:	
	line	317
	fcall	_CheckForiButtonDisconnect
	iorlw	0
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l30001923
u2660:
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_Wait_With_LED_Blink
	__end_of_Wait_With_LED_Blink:
; =============== function _Wait_With_LED_Blink ends ============

psect	text875,local,class=CODE,delta=2
global __ptext875
__ptext875:
	line	322
	signat	_Wait_With_LED_Blink,88
	global	_ReadiButton

; *************** function _ReadiButton *****************
; Defined at:
;		line 43 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
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
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       2       0
;      Temp:     0
;      Total:    2
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
psect	text875
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
	line	43
	global	__size_of_ReadiButton
	__size_of_ReadiButton	equ	__end_of_ReadiButton-_ReadiButton
;OneWire.c: 42: unsigned char ReadiButton(void)
;OneWire.c: 43: {
	
_ReadiButton:	
	opt stack 3
; Regs used in _ReadiButton: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	
l30001775:	
	
l30001776:	
	line	45
;OneWire.c: 45: iButtonPresent = InitiButton();
	fcall	_InitiButton
	movwf	(ReadiButton@iButtonPresent)
	
l30001777:	
	line	46
;OneWire.c: 46: if(iButtonPresent)
	movf	(ReadiButton@iButtonPresent),w
	skipz
	goto	u2290
	goto	l30001791
u2290:
	
l30001778:	
	line	48
;OneWire.c: 47: {
;OneWire.c: 48: WriteByteToiButton(0x33);
	movlw	(033h)
	fcall	_WriteByteToiButton
	
l30001779:	
	line	49
;OneWire.c: 49: for (n=0; n<8; n++)
	bcf	status, 5	;RP0=0, select bank0
	clrf	(ReadiButton@n)
	
l30001782:	
	line	50
;OneWire.c: 50: iButtonKey[n]=ReadByteToiButton();
	movf	(ReadiButton@n),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	fcall	_ReadByteToiButton
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001783:	
	line	49
	incf	(ReadiButton@n),f
	
l30001784:	
	movlw	(08h)
	subwf	(ReadiButton@n),w
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l30001782
u2300:
	
l30001785:	
	line	52
;OneWire.c: 52: if(CRCCheck(iButtonKey))
	movlw	((_iButtonKey))&0ffh
	fcall	_CRCCheck
	xorlw	0
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l30001789
u2310:
	
l30001786:	
	line	53
;OneWire.c: 53: return(1);
	movlw	(01h)
	goto	l203
	
l30001789:	
	line	55
;OneWire.c: 54: else
;OneWire.c: 55: return(0);
	movlw	(0)
	goto	l203
	
l30001791:	
	line	57
;OneWire.c: 56: }
;OneWire.c: 57: return(iButtonPresent);
	movf	(ReadiButton@iButtonPresent),w
	
l203:	
	return
	opt stack 0
GLOBAL	__end_of_ReadiButton
	__end_of_ReadiButton:
; =============== function _ReadiButton ends ============

psect	text876,local,class=CODE,delta=2
global __ptext876
__ptext876:
	line	58
	signat	_ReadiButton,89
	global	_EEPROMWriteKey

; *************** function _EEPROMWriteKey *****************
; Defined at:
;		line 241 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  WriteAddress    1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  WriteAddress    1    0[COMMON] unsigned char 
;  KeyLength       1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 160/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_WriteEEPROM
;		_DelayMs
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
; This function uses a non-reentrant model
; 
psect	text876
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	241
	global	__size_of_EEPROMWriteKey
	__size_of_EEPROMWriteKey	equ	__end_of_EEPROMWriteKey-_EEPROMWriteKey
;main.c: 240: void EEPROMWriteKey(unsigned char WriteAddress)
;main.c: 241: {
	
_EEPROMWriteKey:	
	opt stack 3
; Regs used in _EEPROMWriteKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;EEPROMWriteKey@WriteAddress stored from wreg
	movwf	(EEPROMWriteKey@WriteAddress)
	
l81:	
	
l30001587:	
	line	243
	movlw	(07Eh)
	andwf	(11),f	;volatile
	
l30001588:	
	line	244
;main.c: 244: WriteAddress = WriteAddress * 8;
	rlf	(EEPROMWriteKey@WriteAddress),f
	rlf	(EEPROMWriteKey@WriteAddress),f
	rlf	(EEPROMWriteKey@WriteAddress),w
	andlw	0f8h
	movwf	(EEPROMWriteKey@WriteAddress)
	
l30001589:	
	line	245
;main.c: 245: for(KeyLength=0;KeyLength<8;KeyLength++)
	clrf	(EEPROMWriteKey@KeyLength)
	
l30001592:	
	line	247
;main.c: 246: {
;main.c: 247: DataEEAddr = WriteAddress++;
	movf	(EEPROMWriteKey@WriteAddress),w
	movwf	(_DataEEAddr)
	clrf	(_DataEEAddr+1)
	
l30001593:	
	incf	(EEPROMWriteKey@WriteAddress),f
	
l30001594:	
	line	248
;main.c: 248: DataEEData = iButtonKey[KeyLength];
	movf	(EEPROMWriteKey@KeyLength),w
	addlw	(_iButtonKey)&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(_DataEEData)
	clrf	(_DataEEData+1)
	
l30001595:	
	line	249
;main.c: 249: WriteEEPROM();
	fcall	_WriteEEPROM
	
l30001596:	
	line	250
;main.c: 250: DelayMs(10);
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001597:	
	line	245
	incf	(EEPROMWriteKey@KeyLength),f
	
l30001598:	
	movlw	(08h)
	subwf	(EEPROMWriteKey@KeyLength),w
	skipc
	goto	u1961
	goto	u1960
u1961:
	goto	l30001592
u1960:
	
l87:	
	line	252
	bsf	(11)+(7/8),(7)&7	;volatile
	
l78:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMWriteKey
	__end_of_EEPROMWriteKey:
; =============== function _EEPROMWriteKey ends ============

psect	text877,local,class=CODE,delta=2
global __ptext877
__ptext877:
	line	253
	signat	_EEPROMWriteKey,4216
	global	_BuzzerBeep

; *************** function _BuzzerBeep *****************
; Defined at:
;		line 175 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  BeepNum         1    wreg     unsigned char 
;  LONG_BEEP       1   10[BANK0 ] unsigned char 
; Auto vars:     Size  Location     Type
;  BeepNum         1    6[BANK0 ] unsigned char 
;  BeepTime        2    7[BANK0 ] unsigned int 
;  BeepCnt         1    9[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFE00/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         6       5       0
;      Temp:     6
;      Total:   11
; This function calls:
;		_DelayMs
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
;		_LockOperation
;		_main
; This function uses a non-reentrant model
; 
psect	text877
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	175
	global	__size_of_BuzzerBeep
	__size_of_BuzzerBeep	equ	__end_of_BuzzerBeep-_BuzzerBeep
;main.c: 174: void BuzzerBeep(unsigned char BeepNum, unsigned char LONG_BEEP)
;main.c: 175: {
	
_BuzzerBeep:	
	opt stack 3
; Regs used in _BuzzerBeep: [wreg+status,2+status,0+pclath+cstack]
;BuzzerBeep@BeepNum stored from wreg
	line	177
	movwf	(BuzzerBeep@BeepNum)
	
l30001550:	
;main.c: 177: unsigned int BeepTime = 0;
	clrf	(BuzzerBeep@BeepTime)
	clrf	(BuzzerBeep@BeepTime+1)
	
l30001551:	
	line	178
;main.c: 178: if(LONG_BEEP)
	movf	(BuzzerBeep@LONG_BEEP),w
	skipz
	goto	u1900
	goto	l30001553
u1900:
	
l30001552:	
	line	179
;main.c: 179: BeepTime = (4*0x64);
	movlw	low(0190h)
	movwf	(BuzzerBeep@BeepTime)
	movlw	high(0190h)
	movwf	((BuzzerBeep@BeepTime))+1
	goto	l30001554
	
l30001553:	
	line	181
;main.c: 180: else
;main.c: 181: BeepTime = 0x64;
	movlw	064h
	movwf	(BuzzerBeep@BeepTime)
	clrf	(BuzzerBeep@BeepTime+1)
	
l30001554:	
	line	183
;main.c: 183: RC1=0x00;
	bcf	(57/8),(57)&7
	
l30001555:	
	line	184
;main.c: 184: for(BeepCnt=0; BeepCnt<((BeepNum * 2) - 1); BeepCnt++)
	clrf	(BuzzerBeep@BeepCnt)
	goto	l30001559
	
l30001556:	
	line	186
;main.c: 185: {
;main.c: 186: RC1 = !RC1;
	movlw	1<<((57)&7)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	((57)/8),f
	
l30001557:	
	line	187
;main.c: 187: DelayMs(BeepTime);
	movf	(BuzzerBeep@BeepTime+1),w
	movwf	(?_DelayMs+1)
	movf	(BuzzerBeep@BeepTime),w
	movwf	(?_DelayMs)
	fcall	_DelayMs
	
l30001558:	
	line	184
	incf	(BuzzerBeep@BeepCnt),f
	
l30001559:	
	movf	(BuzzerBeep@BeepNum),w
	movwf	(??_BuzzerBeep+0+0)
	clrf	(??_BuzzerBeep+0+0+1)
	clrc
	rlf	0+(??_BuzzerBeep+0+0),w
	movwf	(??_BuzzerBeep+2+0)
	rlf	1+(??_BuzzerBeep+0+0),w
	movwf	1+(??_BuzzerBeep+2+0)
	movf	0+(??_BuzzerBeep+2+0),w
	addlw	low(-1)
	movwf	(??_BuzzerBeep+4+0)
	movf	1+(??_BuzzerBeep+2+0),w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(??_BuzzerBeep+4+0)
	movf	1+(??_BuzzerBeep+4+0),w
	xorlw	80h
	sublw	080h
	skipz
	goto	u1915
	movf	0+(??_BuzzerBeep+4+0),w
	subwf	(BuzzerBeep@BeepCnt),w
u1915:

	skipc
	goto	u1911
	goto	u1910
u1911:
	goto	l30001556
u1910:
	
l53:	
	line	189
;main.c: 188: }
;main.c: 189: RC1=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_BuzzerBeep
	__end_of_BuzzerBeep:
; =============== function _BuzzerBeep ends ============

psect	text878,local,class=CODE,delta=2
global __ptext878
__ptext878:
	line	190
	signat	_BuzzerBeep,8312
	global	_strcmp

; *************** function _strcmp *****************
; Defined at:
;		line 256 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  x               1    wreg     PTR unsigned char 
;		 -> iButtonKey(9), 
;  y               1    1[COMMON] PTR unsigned char 
;		 -> EEPROMKey(9), 
; Auto vars:     Size  Location     Type
;  x               1    0[BANK0 ] PTR unsigned char 
;		 -> iButtonKey(9), 
;  i               1    1[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0
; Tracked objects:
;		On entry : 160/0
;		On exit  : 160/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       2       0
;      Temp:     1
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_AvailabeKey
;		_Configuration
; This function uses a non-reentrant model
; 
psect	text878
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	256
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
;main.c: 255: unsigned char strcmp(unsigned char* x, unsigned char* y)
;main.c: 256: {
	
_strcmp:	
	opt stack 2
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@x stored from wreg
	line	258
	movwf	(strcmp@x)
	
l30001689:	
;main.c: 257: unsigned char i;
;main.c: 258: for(i=0;i<8;i++)
	clrf	(strcmp@i)
	
l30001692:	
	line	260
;main.c: 259: {
;main.c: 260: if(*x++ != *y++)
	movf	(strcmp@y),w
	incf	(strcmp@y),f
	movwf	fsr
	movf	indf,w
	movwf	(??_strcmp+0+0)
	movf	(strcmp@x),w
	movwf	fsr0
	incf	(strcmp@x),f
	movf	indf,w
	xorwf	(??_strcmp+0+0),w
	skipnz
	goto	u2131
	goto	u2130
u2131:
	goto	l30001694
u2130:
	goto	l30001696
	
l30001694:	
	line	258
	incf	(strcmp@i),f
	
l30001695:	
	movlw	(08h)
	subwf	(strcmp@i),w
	skipc
	goto	u2141
	goto	u2140
u2141:
	goto	l30001692
u2140:
	
l30001696:	
	line	263
;main.c: 262: }
;main.c: 263: if(i==8)
	movf	(strcmp@i),w
	xorlw	08h
	skipz
	goto	u2151
	goto	u2150
u2151:
	goto	l30001700
u2150:
	
l30001697:	
	line	264
;main.c: 264: return(1);
	movlw	(01h)
	goto	l88
	
l30001700:	
	line	266
;main.c: 265: else
;main.c: 266: return(0);
	movlw	(0)
	
l88:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
; =============== function _strcmp ends ============

psect	text879,local,class=CODE,delta=2
global __ptext879
__ptext879:
	line	267
	signat	_strcmp,8313
	global	_EEPROMReadKey

; *************** function _EEPROMReadKey *****************
; Defined at:
;		line 216 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  ReadAddress     1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  ReadAddress     1    0[COMMON] unsigned char 
;  KeyLength       1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 160/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_ReadEEPROM
; This function is called by:
;		_AvailabeKey
;		_Configuration
;		_ConfigureMasterKey
; This function uses a non-reentrant model
; 
psect	text879
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	216
	global	__size_of_EEPROMReadKey
	__size_of_EEPROMReadKey	equ	__end_of_EEPROMReadKey-_EEPROMReadKey
;main.c: 215: void EEPROMReadKey(unsigned char ReadAddress)
;main.c: 216: {
	
_EEPROMReadKey:	
	opt stack 2
; Regs used in _EEPROMReadKey: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;EEPROMReadKey@ReadAddress stored from wreg
	movwf	(EEPROMReadKey@ReadAddress)
	
l64:	
	
l30001743:	
	line	218
	movlw	(07Eh)
	andwf	(11),f	;volatile
	
l30001744:	
	line	219
;main.c: 219: ReadAddress = ReadAddress * 8;
	rlf	(EEPROMReadKey@ReadAddress),f
	rlf	(EEPROMReadKey@ReadAddress),f
	rlf	(EEPROMReadKey@ReadAddress),w
	andlw	0f8h
	movwf	(EEPROMReadKey@ReadAddress)
	
l30001745:	
	line	220
;main.c: 220: for(KeyLength=0;KeyLength<8;KeyLength++)
	clrf	(EEPROMReadKey@KeyLength)
	
l30001748:	
	line	222
;main.c: 221: {
;main.c: 222: DataEEAddr = ReadAddress++;
	movf	(EEPROMReadKey@ReadAddress),w
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_DataEEAddr)
	clrf	(_DataEEAddr+1)
	
l30001749:	
	incf	(EEPROMReadKey@ReadAddress),f
	
l30001750:	
	line	223
;main.c: 223: ReadEEPROM();
	fcall	_ReadEEPROM
	
l30001751:	
	line	224
;main.c: 224: EEPROMKey[KeyLength] = DataEEData;
	movf	(EEPROMReadKey@KeyLength),w
	addlw	(_EEPROMKey)&0ffh
	movwf	fsr0
	movf	(_DataEEData),w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l30001752:	
	line	220
	incf	(EEPROMReadKey@KeyLength),f
	
l30001753:	
	movlw	(08h)
	subwf	(EEPROMReadKey@KeyLength),w
	skipc
	goto	u2241
	goto	u2240
u2241:
	goto	l30001748
u2240:
	
l70:	
	line	226
	bcf	status, 6	;RP1=0, select bank0
	bsf	(11)+(7/8),(7)&7	;volatile
	
l61:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMReadKey
	__end_of_EEPROMReadKey:
; =============== function _EEPROMReadKey ends ============

psect	text880,local,class=CODE,delta=2
global __ptext880
__ptext880:
	line	227
	signat	_EEPROMReadKey,4216
	global	_CRCCheck

; *************** function _CRCCheck *****************
; Defined at:
;		line 19 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
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
;		On entry : 160/0
;		On exit  : 160/0
;		Unchanged: FFE9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       4       0
;      Temp:     0
;      Total:    4
; This function calls:
;		Nothing
; This function is called by:
;		_Configuration
;		_ConfigureMasterKey
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text880
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
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
	movwf	(CRCCheck@KeyPointer)
	
l30001720:	
;OneWire.c: 20: unsigned char LenForCrc,CRC,KeyAllByteZero;
;OneWire.c: 21: CRC=0x00;
	clrf	(CRCCheck@CRC)
	line	22
;OneWire.c: 22: KeyAllByteZero=0x00;
	clrf	(CRCCheck@KeyAllByteZero)
	line	23
;OneWire.c: 23: for(LenForCrc=0;LenForCrc<7;LenForCrc++)
	clrf	(CRCCheck@LenForCrc)
	
l30001723:	
	line	25
;OneWire.c: 24: {
;OneWire.c: 25: KeyAllByteZero |= *KeyPointer;
	movf	(CRCCheck@KeyPointer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	iorwf	(CRCCheck@KeyAllByteZero),f
	
l30001724:	
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
	
l30001725:	
	incf	(CRCCheck@KeyPointer),f
	
l30001726:	
	line	23
	incf	(CRCCheck@LenForCrc),f
	
l30001727:	
	movlw	(07h)
	subwf	(CRCCheck@LenForCrc),w
	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l30001723
u2200:
	
l30001728:	
	line	28
;OneWire.c: 27: }
;OneWire.c: 28: if(*KeyPointer == CRC && KeyAllByteZero != 0)
	movf	(CRCCheck@KeyPointer),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(CRCCheck@CRC),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l30001733
u2210:
	
l30001729:	
	movf	(CRCCheck@KeyAllByteZero),w
	skipz
	goto	u2220
	goto	l30001733
u2220:
	
l30001730:	
	line	29
;OneWire.c: 29: return(1);
	movlw	(01h)
	goto	l197
	
l30001733:	
	line	31
;OneWire.c: 30: else
;OneWire.c: 31: return(0);
	movlw	(0)
	
l197:	
	return
	opt stack 0
GLOBAL	__end_of_CRCCheck
	__end_of_CRCCheck:
; =============== function _CRCCheck ends ============

psect	text881,local,class=CODE,delta=2
global __ptext881
__ptext881:
	line	32
	signat	_CRCCheck,4217
	global	_WriteByteToiButton

; *************** function _WriteByteToiButton *****************
; Defined at:
;		line 119 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
; Parameters:    Size  Location     Type
;  d               1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  d               1    0[COMMON] unsigned char 
;  n               1    1[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/20
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         2       0       0
;      Temp:     0
;      Total:    2
; This function calls:
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text881
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
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
	movwf	(WriteByteToiButton@d)
	
l30001763:	
;OneWire.c: 120: unsigned char n;
;OneWire.c: 121: for(n=0; n<8; n++)
	clrf	(WriteByteToiButton@n)
	
l215:	
	line	123
;OneWire.c: 122: {
;OneWire.c: 123: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	124
;OneWire.c: 124: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	
l30001766:	
	line	125
;OneWire.c: 125: t=6;;
	movlw	(06h)
	movwf	(_t)
	
l30001767:	
	line	126
;OneWire.c: 126: if (d&0x01)
	btfss	(WriteByteToiButton@d),(0)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l30001770
u2270:
	
l30001768:	
	line	128
# 128 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
nop ;#
psect	text881
	line	129
;OneWire.c: 129: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30001769:	
	line	130
;OneWire.c: 130: delay_10us();
	fcall	_delay_10us
	goto	l30001772
	
l30001770:	
	line	134
;OneWire.c: 132: else
;OneWire.c: 133: {
;OneWire.c: 134: delay_10us();
	fcall	_delay_10us
	
l30001771:	
	line	135
;OneWire.c: 135: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30001772:	
	line	137
;OneWire.c: 136: }
;OneWire.c: 137: d=d>>1;
	clrc
	rrf	(WriteByteToiButton@d),f
	
l30001773:	
	line	121
	incf	(WriteByteToiButton@n),f
	
l30001774:	
	movlw	(08h)
	subwf	(WriteByteToiButton@n),w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l215
u2280:
	
l214:	
	return
	opt stack 0
GLOBAL	__end_of_WriteByteToiButton
	__end_of_WriteByteToiButton:
; =============== function _WriteByteToiButton ends ============

psect	text882,local,class=CODE,delta=2
global __ptext882
__ptext882:
	line	139
	signat	_WriteByteToiButton,4216
	global	_EEPROMWriteKeyByte

; *************** function _EEPROMWriteKeyByte *****************
; Defined at:
;		line 230 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  WriteAddress    1    wreg     unsigned char 
; Auto vars:     Size  Location     Type
;  WriteAddress    1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         1       0       0
;      Temp:     0
;      Total:    1
; This function calls:
;		_WriteEEPROM
;		_DelayMs
; This function is called by:
;		_ClearAllKeys
;		_ClearKey
; This function uses a non-reentrant model
; 
psect	text882
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	230
	global	__size_of_EEPROMWriteKeyByte
	__size_of_EEPROMWriteKeyByte	equ	__end_of_EEPROMWriteKeyByte-_EEPROMWriteKeyByte
;main.c: 229: void EEPROMWriteKeyByte(unsigned char WriteAddress)
;main.c: 230: {
	
_EEPROMWriteKeyByte:	
	opt stack 2
; Regs used in _EEPROMWriteKeyByte: [wreg+status,2+status,0+pclath+cstack]
;EEPROMWriteKeyByte@WriteAddress stored from wreg
	movwf	(EEPROMWriteKeyByte@WriteAddress)
	
l74:	
	
l30001560:	
	line	231
	movlw	(07Eh)
	andwf	(11),f	;volatile
	
l30001561:	
	line	232
;main.c: 232: WriteAddress = WriteAddress * 8;
	rlf	(EEPROMWriteKeyByte@WriteAddress),f
	rlf	(EEPROMWriteKeyByte@WriteAddress),f
	rlf	(EEPROMWriteKeyByte@WriteAddress),w
	andlw	0f8h
	movwf	(EEPROMWriteKeyByte@WriteAddress)
	
l30001562:	
	line	233
;main.c: 233: DataEEAddr = WriteAddress++;
	movf	(EEPROMWriteKeyByte@WriteAddress),w
	movwf	(_DataEEAddr)
	clrf	(_DataEEAddr+1)
	incf	(EEPROMWriteKeyByte@WriteAddress),f
	
l30001563:	
	line	234
;main.c: 234: DataEEData = iButtonKey[0];
	movf	(_iButtonKey),w
	movwf	(_DataEEData)
	clrf	(_DataEEData+1)
	
l30001564:	
	line	235
;main.c: 235: WriteEEPROM();
	fcall	_WriteEEPROM
	
l30001565:	
	line	236
;main.c: 236: DelayMs(10);
	movlw	0Ah
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_DelayMs)
	clrf	(?_DelayMs+1)
	fcall	_DelayMs
	
l30001566:	
	line	237
	bsf	(11)+(7/8),(7)&7	;volatile
	
l71:	
	return
	opt stack 0
GLOBAL	__end_of_EEPROMWriteKeyByte
	__end_of_EEPROMWriteKeyByte:
; =============== function _EEPROMWriteKeyByte ends ============

psect	text883,local,class=CODE,delta=2
global __ptext883
__ptext883:
	line	238
	signat	_EEPROMWriteKeyByte,4216
	global	_CheckForiButtonDisconnect

; *************** function _CheckForiButtonDisconnect *****************
; Defined at:
;		line 68 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text883
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
	line	68
	global	__size_of_CheckForiButtonDisconnect
	__size_of_CheckForiButtonDisconnect	equ	__end_of_CheckForiButtonDisconnect-_CheckForiButtonDisconnect
;OneWire.c: 67: unsigned char CheckForiButtonDisconnect(void)
;OneWire.c: 68: {
	
_CheckForiButtonDisconnect:	
	opt stack 2
; Regs used in _CheckForiButtonDisconnect: [wreg+status,2+status,0+pclath+cstack]
	line	69
	
l30001920:	
;OneWire.c: 69: return(InitiButton());
	fcall	_InitiButton
	
l210:	
	return
	opt stack 0
GLOBAL	__end_of_CheckForiButtonDisconnect
	__end_of_CheckForiButtonDisconnect:
; =============== function _CheckForiButtonDisconnect ends ============

psect	text884,local,class=CODE,delta=2
global __ptext884
__ptext884:
	line	70
	signat	_CheckForiButtonDisconnect,89
	global	_ToggleLED

; *************** function _ToggleLED *****************
; Defined at:
;		line 84 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		status,2, status,0
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text884
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	84
	global	__size_of_ToggleLED
	__size_of_ToggleLED	equ	__end_of_ToggleLED-_ToggleLED
;main.c: 83: void ToggleLED(void)
;main.c: 84: {
	
_ToggleLED:	
	opt stack 2
; Regs used in _ToggleLED: [status]
	line	85
	
l30001758:	
;main.c: 85: if(RC0)
	btfss	(56/8),(56)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l30001760
u2250:
	
l30001759:	
	line	86
;main.c: 86: RC0=0x00;
	bcf	(56/8),(56)&7
	goto	l14
	
l30001760:	
	line	89
;main.c: 87: else
;main.c: 88: {
;main.c: 89: if(ToggleSkipFlag == 0)
	movf	(_ToggleSkipFlag),f
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l30001762
u2260:
	
l30001761:	
	line	91
;main.c: 90: {
;main.c: 91: ToggleSkipFlag=0x01;
	clrf	(_ToggleSkipFlag)
	incf	(_ToggleSkipFlag),f
	line	92
;main.c: 92: RC0=0x01;
	bsf	(56/8),(56)&7
	goto	l14
	
l30001762:	
	line	95
;main.c: 94: else
;main.c: 95: ToggleSkipFlag=0x00;
	clrf	(_ToggleSkipFlag)
	
l14:	
	return
	opt stack 0
GLOBAL	__end_of_ToggleLED
	__end_of_ToggleLED:
; =============== function _ToggleLED ends ============

psect	text885,local,class=CODE,delta=2
global __ptext885
__ptext885:
	line	97
	signat	_ToggleLED,88
	global	_ReadByteToiButton

; *************** function _ReadByteToiButton *****************
; Defined at:
;		line 148 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  n               1    2[BANK0 ] unsigned char 
;  i_byte          1    1[BANK0 ] unsigned char 
;  temp            1    0[BANK0 ] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       3       0
;      Temp:     0
;      Total:    3
; This function calls:
;		_delay_10us
; This function is called by:
;		_ReadiButton
; This function uses a non-reentrant model
; 
psect	text885
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
	line	148
	global	__size_of_ReadByteToiButton
	__size_of_ReadByteToiButton	equ	__end_of_ReadByteToiButton-_ReadByteToiButton
;OneWire.c: 147: unsigned char ReadByteToiButton(void)
;OneWire.c: 148: {
	
_ReadByteToiButton:	
	opt stack 2
; Regs used in _ReadByteToiButton: [wreg+status,2+status,0+pclath+cstack]
	line	150
	
l30001930:	
;OneWire.c: 149: unsigned char n, i_byte, temp, mask;
;OneWire.c: 150: for (n=0; n<8; n++)
	clrf	(ReadByteToiButton@n)
	
l221:	
	line	152
;OneWire.c: 151: {
;OneWire.c: 152: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	153
;OneWire.c: 153: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	line	155
# 155 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
     NOP ;#
	line	156
# 156 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	158
# 158 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
# 157 ;#
psect	text885
	line	160
;OneWire.c: 160: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7
# 160 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
     NOP ;#
	line	161
# 161 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	163
# 163 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
# 162 ;#
psect	text885
	
l30001933:	
	line	165
;OneWire.c: 165: temp=PORTA;
	bcf	status, 5	;RP0=0, select bank0
	movf	(5),w	;volatile
	movwf	(ReadByteToiButton@temp)
	
l30001934:	
	line	166
;OneWire.c: 166: if (temp & 4)
	btfss	(ReadByteToiButton@temp),(2)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l224
u2670:
	
l30001935:	
	line	168
;OneWire.c: 167: {
;OneWire.c: 168: i_byte=(i_byte>>1) | 0x80;
	setc
	rrf	(ReadByteToiButton@i_byte),f
	goto	l30001936
	
l224:	
	line	172
;OneWire.c: 170: else
;OneWire.c: 171: {
;OneWire.c: 172: i_byte=i_byte >> 1;
	clrc
	rrf	(ReadByteToiButton@i_byte),f
	
l30001936:	
	line	174
;OneWire.c: 173: }
;OneWire.c: 174: t=6;;
	movlw	(06h)
	movwf	(_t)
	
l30001937:	
	line	175
;OneWire.c: 175: delay_10us();
	fcall	_delay_10us
	
l30001938:	
	line	150
	incf	(ReadByteToiButton@n),f
	
l30001939:	
	movlw	(08h)
	subwf	(ReadByteToiButton@n),w
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l221
u2680:
	
l30001940:	
	line	177
;OneWire.c: 176: }
;OneWire.c: 177: return(i_byte);
	movf	(ReadByteToiButton@i_byte),w
	
l220:	
	return
	opt stack 0
GLOBAL	__end_of_ReadByteToiButton
	__end_of_ReadByteToiButton:
; =============== function _ReadByteToiButton ends ============

psect	text886,local,class=CODE,delta=2
global __ptext886
__ptext886:
	line	178
	signat	_ReadByteToiButton,89
	global	_DelayMs

; *************** function _DelayMs *****************
; Defined at:
;		line 58 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;  TimeCnt         2    4[BANK0 ] unsigned int 
; Auto vars:     Size  Location     Type
;  j               2    2[BANK0 ] unsigned int 
;  i               2    0[BANK0 ] unsigned int 
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2, status,0
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
;		_CHK_LOW_BAT_OPEN
;		_main
; This function uses a non-reentrant model
; 
psect	text886
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	58
	global	__size_of_DelayMs
	__size_of_DelayMs	equ	__end_of_DelayMs-_DelayMs
;main.c: 57: void DelayMs(unsigned int TimeCnt)
;main.c: 58: {
	
_DelayMs:	
	opt stack 1
; Regs used in _DelayMs: [wreg+status,2+status,0]
	line	60
	
l30001511:	
;main.c: 59: unsigned int i,j;
;main.c: 60: for(i=0;i<TimeCnt;i++)
	clrf	(DelayMs@i)
	clrf	(DelayMs@i+1)
	goto	l30001518
	
l30001512:	
	line	62
;main.c: 61: {
;main.c: 62: for(j=0;j<50;j++);
	clrf	(DelayMs@j)
	clrf	(DelayMs@j+1)
	
l30001515:	
	incf	(DelayMs@j),f
	skipnz
	incf	(DelayMs@j+1),f
	
l30001516:	
	movlw	high(032h)
	subwf	(DelayMs@j+1),w
	movlw	low(032h)
	skipnz
	subwf	(DelayMs@j),w
	skipc
	goto	u1821
	goto	u1820
u1821:
	goto	l30001515
u1820:
	
l30001517:	
	line	60
	incf	(DelayMs@i),f
	skipnz
	incf	(DelayMs@i+1),f
	
l30001518:	
	movf	(DelayMs@TimeCnt+1),w
	subwf	(DelayMs@i+1),w
	skipz
	goto	u1835
	movf	(DelayMs@TimeCnt),w
	subwf	(DelayMs@i),w
u1835:
	skipc
	goto	u1831
	goto	u1830
u1831:
	goto	l30001512
u1830:
	
l5:	
	return
	opt stack 0
GLOBAL	__end_of_DelayMs
	__end_of_DelayMs:
; =============== function _DelayMs ends ============

psect	text887,local,class=CODE,delta=2
global __ptext887
__ptext887:
	line	64
	signat	_DelayMs,4216
	global	_ReadEEPROM

; *************** function _ReadEEPROM *****************
; Defined at:
;		line 193 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/40
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_EEPROMReadKey
;		_CHK_LOW_BAT_OPEN
; This function uses a non-reentrant model
; 
psect	text887
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	193
	global	__size_of_ReadEEPROM
	__size_of_ReadEEPROM	equ	__end_of_ReadEEPROM-_ReadEEPROM
;main.c: 192: void ReadEEPROM(void)
;main.c: 193: {
	
_ReadEEPROM:	
	opt stack 1
; Regs used in _ReadEEPROM: [wreg+status,2]
	line	194
	
l30001754:	
;main.c: 194: EEADR=DataEEAddr;
	movf	(_DataEEAddr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	
l30001755:	
	line	195
;main.c: 195: EECON1=0x00;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(396)^0180h	;volatile
	
l30001756:	
	line	196
;main.c: 196: RD=0x01;
	bsf	(3168/8)^0180h,(3168)&7
	
l30001757:	
	line	197
;main.c: 197: DataEEData=EEDAT;
	bcf	status, 5	;RP0=0, select bank2
	movf	(268)^0100h,w	;volatile
	movwf	(_DataEEData)
	clrf	(_DataEEData+1)
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_ReadEEPROM
	__end_of_ReadEEPROM:
; =============== function _ReadEEPROM ends ============

psect	text888,local,class=CODE,delta=2
global __ptext888
__ptext888:
	line	198
	signat	_ReadEEPROM,88
	global	_InitiButton

; *************** function _InitiButton *****************
; Defined at:
;		line 80 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;  PresencePuls    1    0[COMMON] unsigned char 
; Return value:  Size  Location     Type
;                  1    wreg      unsigned char 
; Registers used:
;		wreg, status,2, status,0, pclath, cstack
; Tracked objects:
;		On entry : 60/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
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
psect	text888
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
	line	80
	global	__size_of_InitiButton
	__size_of_InitiButton	equ	__end_of_InitiButton-_InitiButton
;OneWire.c: 79: unsigned char InitiButton(void)
;OneWire.c: 80: {
	
_InitiButton:	
	opt stack 1
; Regs used in _InitiButton: [wreg+status,2+status,0+pclath+cstack]
	line	83
	
l30001905:	
;OneWire.c: 81: unsigned char PresencePulse;
;OneWire.c: 83: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	84
;OneWire.c: 84: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	line	85
;OneWire.c: 85: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	line	86
;OneWire.c: 86: RA2=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	(42/8),(42)&7
	
l30001906:	
	line	88
;OneWire.c: 88: t=42;;
	movlw	(02Ah)
	movwf	(_t)
	
l30001907:	
	line	89
;OneWire.c: 89: delay_10us();
	fcall	_delay_10us
	
l30001908:	
	line	91
;OneWire.c: 91: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	
l30001909:	
	line	92
;OneWire.c: 92: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	
l30001910:	
	line	94
;OneWire.c: 94: t=6;;
	movlw	(06h)
	movwf	(_t)
	line	95
;OneWire.c: 95: delay_10us();
	fcall	_delay_10us
	
l30001911:	
	line	97
;OneWire.c: 97: TRISA2=0x01;
	bsf	status, 5	;RP0=1, select bank1
	bsf	(1066/8)^080h,(1066)&7
	
l30001912:	
	line	98
;OneWire.c: 98: if (RA2 == 1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(42/8),(42)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l212
u2640:
	
l30001913:	
	line	99
;OneWire.c: 99: PresencePulse=0x00;
	clrf	(InitiButton@PresencePulse)
	goto	l30001914
	
l212:	
	line	101
;OneWire.c: 100: else
;OneWire.c: 101: PresencePulse=0x01;
	clrf	(InitiButton@PresencePulse)
	incf	(InitiButton@PresencePulse),f
	
l30001914:	
	line	103
;OneWire.c: 103: t=50;;
	movlw	(032h)
	movwf	(_t)
	
l30001915:	
	line	104
;OneWire.c: 104: delay_10us();
	fcall	_delay_10us
	
l30001916:	
	line	106
;OneWire.c: 106: TRISA2=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	(1066/8)^080h,(1066)&7
	
l30001917:	
	line	107
;OneWire.c: 107: RA2=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bsf	(42/8),(42)&7
	
l30001918:	
	line	108
;OneWire.c: 108: return (PresencePulse);
	movf	(InitiButton@PresencePulse),w
	
l211:	
	return
	opt stack 0
GLOBAL	__end_of_InitiButton
	__end_of_InitiButton:
; =============== function _InitiButton ends ============

psect	text889,local,class=CODE,delta=2
global __ptext889
__ptext889:
	line	109
	signat	_InitiButton,89
	global	_WriteEEPROM

; *************** function _WriteEEPROM *****************
; Defined at:
;		line 201 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2
; Tracked objects:
;		On entry : 20/0
;		On exit  : 60/60
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       0       0
;      Temp:     0
;      Total:    0
; This function calls:
;		Nothing
; This function is called by:
;		_EEPROMWriteKeyByte
;		_EEPROMWriteKey
;		_CHK_LOW_BAT_OPEN
;		_main
; This function uses a non-reentrant model
; 
psect	text889
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	201
	global	__size_of_WriteEEPROM
	__size_of_WriteEEPROM	equ	__end_of_WriteEEPROM-_WriteEEPROM
;main.c: 200: void WriteEEPROM(void)
;main.c: 201: {
	
_WriteEEPROM:	
	opt stack 1
; Regs used in _WriteEEPROM: [wreg+status,2]
	line	202
	
l30001735:	
;main.c: 202: EEADR=DataEEAddr;
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DataEEAddr),w
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	line	203
;main.c: 203: EEDAT=DataEEData;
	movf	(_DataEEData),w
	movwf	(268)^0100h	;volatile
	
l30001736:	
	line	204
;main.c: 204: EECON1=0x00;
	bsf	status, 5	;RP0=1, select bank3
	clrf	(396)^0180h	;volatile
	
l30001737:	
	line	205
;main.c: 205: WREN=0x01;
	bsf	(3170/8)^0180h,(3170)&7
	
l30001738:	
	line	206
;main.c: 206: GIE=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(95/8),(95)&7
	
l58:	
	line	207
	btfsc	(95/8),(95)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l58
u2230:
	
l30001739:	
	line	208
;main.c: 208: EECON2=0x55;
	movlw	(055h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(397)^0180h	;volatile
	line	209
;main.c: 209: EECON2=0xAA;
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l30001740:	
	line	210
;main.c: 210: WR=0x01;
	bsf	(3169/8)^0180h,(3169)&7
	
l30001741:	
	line	211
;main.c: 211: GIE=0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(95/8),(95)&7
	
l30001742:	
	line	212
;main.c: 212: WREN=0x00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bcf	(3170/8)^0180h,(3170)&7
	
l57:	
	return
	opt stack 0
GLOBAL	__end_of_WriteEEPROM
	__end_of_WriteEEPROM:
; =============== function _WriteEEPROM ends ============

psect	text890,local,class=CODE,delta=2
global __ptext890
__ptext890:
	line	213
	signat	_WriteEEPROM,88
	global	_delay_10us

; *************** function _delay_10us *****************
; Defined at:
;		line 186 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		None
; Tracked objects:
;		On entry : 40/20
;		On exit  : 40/20
;		Unchanged: FFFFFFBF/0
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
psect	text890
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
	line	186
	global	__size_of_delay_10us
	__size_of_delay_10us	equ	__end_of_delay_10us-_delay_10us
;OneWire.c: 185: void delay_10us(void)
;OneWire.c: 186: {
	
_delay_10us:	
	opt stack 0
; Regs used in _delay_10us: []
	line	188
	
l30001904:	
# 188 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 BCF _STATUS,5 ;#
	line	189
# 189 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
DELAY_10US_XZ: ;#
	line	190
# 190 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	191
# 191 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	192
# 192 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	193
# 193 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	194
# 194 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	195
# 195 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	196
# 196 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	197
# 197 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	198
# 198 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 NOP ;#
	line	199
# 199 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 DECFSZ _t,F ;#
	line	200
# 200 "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\OneWire.c"
 GOTO DELAY_10US_XZ ;#
psect	text890
	
l226:	
	return
	opt stack 0
GLOBAL	__end_of_delay_10us
	__end_of_delay_10us:
; =============== function _delay_10us ends ============

psect	text891,local,class=CODE,delta=2
global __ptext891
__ptext891:
	line	202
	signat	_delay_10us,88
	global	_isr

; *************** function _isr *****************
; Defined at:
;		line 424 in file "D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
; Parameters:    Size  Location     Type
;		None
; Auto vars:     Size  Location     Type
;		None
; Return value:  Size  Location     Type
;		None               void
; Registers used:
;		wreg, status,2
; Tracked objects:
;		On entry : 0/0
;		On exit  : 60/0
;		Unchanged: FFF9F/0
; Data sizes:     COMMON   BANK0   BANK1
;      Locals:         0       3       0
;      Temp:     3
;      Total:    3
; This function calls:
;		Nothing
; This function is called by:
;		Interrupt level 1
; This function uses a non-reentrant model
; 
psect	text891
	file	"D:\Amit\E-Projects\PIC Projects\Mechatronics_Proto23Jan2012\main.c"
	line	424
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
;main.c: 423: static void interrupt isr(void)
;main.c: 424: {
	
_isr:	
	opt stack 1
; Regs used in _isr: [wreg+status,2]
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
	movf	pclath,w
	movwf	(??_isr+1)
	movf	btemp+0,w
	movwf	(??_isr+2)
	ljmp	_isr
psect	text891
	line	426
	
i1l30001406:	
;main.c: 425: unsigned char i;
;main.c: 426: i=PORTA;
	movf	(5),w	;volatile
	
i1l30001407:	
	line	427
;main.c: 427: RABIF=0x00;
	bcf	(88/8),(88)&7
	
i1l30001408:	
	line	428
;main.c: 428: IOCA=0x00;
	bsf	status, 5	;RP0=1, select bank1
	clrf	(150)^080h
	
i1l148:	
	bcf	status, 5	;RP0=0, select bank0
	movf	(??_isr+2),w
	movwf	btemp+0
	movf	(??_isr+1),w
	movwf	pclath
	movf	(??_isr+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
; =============== function _isr ends ============

psect	text892,local,class=CODE,delta=2
global __ptext892
__ptext892:
	line	429
	signat	_isr,88
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	end
