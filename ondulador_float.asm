
; CC8E Version 1.4, Copyright (c) B Knudsen Data
; C compiler for the PIC18 microcontrollers
; ************  21. May 2015  17:38  *************

	processor  PIC18F44K20
	radix  DEC

	__config 0x300001, 0x8
	__config 0x300002, 0x1
	__config 0x300003, 0x16
	__config 0x300005, 0x88
	__config 0x300006, 0x81

TBLPTR      EQU   0xFF6
TABLAT      EQU   0xFF5
PRODH       EQU   0xFF4
PRODL       EQU   0xFF3
INTCON      EQU   0xFF2
INTCON2     EQU   0xFF1
INDF0       EQU   0xFEF
FSR0        EQU   0xFE9
BSR         EQU   0xFE0
STATUS      EQU   0xFD8
Carry       EQU   0
Zero_       EQU   2
T0CON       EQU   0xFD5
OSCCON      EQU   0xFD3
RCON        EQU   0xFD0
PR2         EQU   0xFCB
T2CON       EQU   0xFCA
ADRESH      EQU   0xFC4
ADRESL      EQU   0xFC3
ADCON0      EQU   0xFC2
ADCON1      EQU   0xFC1
ADCON2      EQU   0xFC0
CCPR1L      EQU   0xFBE
CCP1CON     EQU   0xFBD
PWM1CON     EQU   0xFB7
OSCTUNE     EQU   0xF9B
TRISD       EQU   0xF95
TRISC       EQU   0xF94
TRISB       EQU   0xF93
TRISA       EQU   0xF92
LATD        EQU   0xF8C
LATB        EQU   0xF8A
PORTD       EQU   0xF83
PORTC       EQU   0xF82
PORTB       EQU   0xF81
ANSEL       EQU   0xF7E
TMR0IF      EQU   2
GIE         EQU   7
TMR2ON      EQU   2
GO          EQU   1
ADFM        EQU   7
TMR2IF      EQU   1
TMR2IE      EQU   1
bUdw        EQU   0
ancho_pwm   EQU   0xCC
r           EQU   0xCE
Vmax        EQU   0xD0
SENO        EQU   0xD3
T           EQU   0xD5
i           EQU   0xD6
estado      EQU   0xD7
svrSTATUS   EQU   0x60
svrBSR      EQU   0x61
svrWREG     EQU   0x62
sv_PRODL    EQU   0x63
sv_PRODH    EQU   0x64
sv_TBLPTR   EQU   0x65
sv_TABLAT   EQU   0x68
C3cnt       EQU   0x69
C4tmp       EQU   0x6A
C5rem       EQU   0x6C
FpFlags     EQU   0xD8
FpOverflow  EQU   1
FpUnderFlow EQU   2
FpDomainError EQU   5
FpRounding  EQU   6
arg1f24     EQU   0xB0
arg2f24     EQU   0xB3
aarg        EQU   0xBB
sign        EQU   0xBD
tmpL        EQU   0xBE
xtra        EQU   0xBB
temp        EQU   0xBC
expo        EQU   0xBD
sign_3      EQU   0xBE
expo_2      EQU   0xB6
xtra_2      EQU   0xB7
sign_4      EQU   0xB8
rval        EQU   0xB0
sign_6      EQU   0xB6
expo_4      EQU   0xB7
xtra_4      EQU   0xB8
rval_3      EQU   0xB0
arg1        EQU   0xC4
arg2        EQU   0xC6
rm          EQU   0xC7
counter_2   EQU   0xC8
tmp         EQU   0xC9
arg1_2      EQU   0xC4
arg2_2      EQU   0xC6
rm_2        EQU   0xC8
counter_3   EQU   0xCA
arg1_5      EQU   0xC4
arg2_5      EQU   0xC6
rm_5        EQU   0xC7
counter_6   EQU   0xC8
tmp_2       EQU   0xC9
arg1_6      EQU   0xC4
arg2_6      EQU   0xC6
rm_6        EQU   0xC8
counter_7   EQU   0xCA
cexp        EQU   0xB6
savedFLAGS  EQU   0xB7
d_5         EQU   0xB8
PDel0       EQU   0xC5
PDel0_2     EQU   0xC5
PDel1       EQU   0xC6
PDel0_3     EQU   0xF7F
PDel1_2     EQU   0xF7F
PDel2       EQU   0xF7F
PDel0_4     EQU   0xF7F
PDel1_3     EQU   0xF7F
PDel2_2     EQU   0xF7F
PDel0_5     EQU   0xF7F
PDel1_4     EQU   0xF7F
PDel2_3     EQU   0xF7F
codigo      EQU   0xA8
comando     EQU   0xC4
dato        EQU   0xA8
i_3         EQU   0xA9
dato_2      EQU   0xF7F
i_4         EQU   0xF7F
i_5         EQU   0xA7
linea       EQU   0xA7
columna     EQU   0xA8
linea_2     EQU   0xF7F
i_6         EQU   0xF7F
linea_3     EQU   0xF7F
columna_2   EQU   0xF7F
dato_3      EQU   0xF7F
bd          EQU   0
dp          EQU   0
xi          EQU   0
ndp         EQU   0
num         EQU   0xF7F
u_milers    EQU   0xF7F
cent        EQU   0xF7F
dec         EQU   0xF7F
unid        EQU   0xF7F
resto1      EQU   0xF7F
i_7         EQU   0xF7F
xx          EQU   0xF7F
dat         EQU   0xF7F
xy          EQU   0xF7F
linea_4     EQU   0xB0
columna_3   EQU   0xB1
dato_4      EQU   0xB2
num_2       EQU   0xB4
u_milers_2  EQU   0xB6
cent_2      EQU   0xB8
d_milers    EQU   0xBA
dec_2       EQU   0xBC
unid_2      EQU   0xBD
resto1_2    EQU   0xBE
i_8         EQU   0xBF
xx_2        EQU   0xC0
dat_2       EQU   0xC2
linea_5     EQU   0xB0
columna_4   EQU   0xB1
dato_5      EQU   0xB2
cent_3      EQU   0xB4
dec_3       EQU   0xB5
unid_3      EQU   0xB6
resto1_3    EQU   0xB7
i_9         EQU   0xB8
xx_3        EQU   0xB9
dat_3       EQU   0xBB
i_10        EQU   0xA7
canal       EQU   0xAC
bits        EQU   0xAD
resultado   EQU   0xAE
p           EQU   0x6D
h           EQU   0x6E
x           EQU   0x6F
vac         EQU   0x70
ac          EQU   0x80
ic          EQU   0x91
vbat        EQU   0x92
o           EQU   0x93
vuelta      EQU   0x94
lectura     EQU   0
raiz        EQU   0x95
Mac0        EQU   0x9B
Mac1        EQU   0x9D
q           EQU   0x9F
a           EQU   0xA1
ProbaVmax   EQU   0xA3
d_6         EQU   0xAC
banda       EQU   0xA7
bat         EQU   0xAA
w           EQU   0xAC
v           EQU   0xAE
ci          EQU   0x69

	GOTO main

  ; FILE ondulador_float.c
			;/*
			; * Autor: J_Sanchez
			; * 
			; * Fecha: 31-03-2015
			; * Descripcion:Primera prueba con el 18F44K20 para el proyecto del ondulador v2.0
			; *  Configuracion: 
			; *		Modelo: 18F44K20
			; *		Oscilador: Crystal 64Mhz
			; *		Puente en H con PWM mejorado
			; */
			;
			; //**************************************************************************************//
			; //******************* C O N F I G  U R A C I O N    I N I C I A L  *********************//
			; //**************************************************************************************//
			; 
			; #pragma chip PIC18F44K20
			; #pragma config[1] = 0b.0000.1000//pagina 301 datasheet
			; #pragma config[2] = 0b.0000.0001
			; #pragma config[3] = 0b.0001.0110
			; #pragma config[5] = 0b.1000.1000//Mirar CCP2 MUX bit 0 
			; 				//-->1 = CCP2 input/output is multiplexed with RC1
			;				//   -->0 = CCP2 input/output is multiplexed with RB3 
			; #pragma config[6] = 0b.1000.0001
			; // resto configs son para la proteccion del programa 
			;
			; #pragma sharedAllocation//evita error en las interrupciones
			;
			; //**************************************************************************************//
			; //************************************  M A C R O S ************************************//
			; //**************************************************************************************//
			;
			;#define PORDEBAJO 0
			;#define PORENCIMA 1
			;//estados
			;#define LECTURA_VAC  0
			;#define CALCULOS_VAC 1
			;#define CALCULOS_IAC 2
			;#define LECTURAS_VARIAS 3
			;#define ENVIO_LCD    4
			;//lectura adc
			;#define LEO_VAC		 0
			;#define LEO_BAT		 1
			;#define LEO_IAC		 2
			;//envio caracter especial
			;#define LOGO_SC		 0
			;#define BATT_FULL	 1
			;#define BATT_75		 2
			;#define BATT_50		 3
			;#define BATT_25		 4
			;#define BATT_10		 5
			;#define BATT_LW		 6 
			;#define BATT_CLEAR	 7
			;//valores PID
			;#define REF_AC			  37
			;#define BANDA_PROPORCIONAL 10 //50%
			;
			; //**************************************************************************************//
			; //********************************  V A R I A B L E S  *********************************//
			; //**************************************************************************************//
			;#pragma rambank 0
			;bit bUdw; // a 1 puja en la taula (incrementa) , a 0 decrementa
			;uns16 ancho_pwm,r;
			;float Vmax;
			;uns16 SENO;
			;char T,i,estado; // Index de la taula
			;
			;
			;static const char sen [26] = 			
			;{0,8,16,23,31,39,47,54,61,68,75,81,87,93,98,103,108,112,115,119,121,123,125,126,127,128};
			;
			;// PWM maximo 799 para ser 100% 
			;// equivale a 6.24 pero no llegaremos para no quemar los mosfets
			;
			; //**************************************************************************************//
			; //************************** I N T E R R U P C I O N E S *******************************//
			; //**************************************************************************************//
			;
			;#include "int18XXX.h"	 // Cap√ßalera de interrupcions.
			;
			;
			;#pragma origin 0x08	//#pragma origin 0x18	(PIC 16F88x)
	ORG 0x0008
			;
			;interrupt highPriorityTimer_0 (void)		// Interrupci√≥n por desbordamiento de Timer 0.			
			;{
highPriorityTimer_0
			;	int_save_registers 
	MOVFF STATUS,svrSTATUS
	MOVFF BSR,svrBSR
	MOVLB 0
	MOVWF svrWREG,1
			;
			;	// save remaining registers on demand (error/warning)
			;	//uns16 sv_FSR0 = FSR0;
			;	//uns16 sv_FSR1 = FSR1;
			;	//uns16 sv_FSR2 = FSR2;
			;	//uns8 sv_PCLATH = PCLATH;
			;	//uns8 sv_PCLATU = PCLATU;
			;	uns8 sv_PRODL = PRODL;
	MOVFF PRODL,sv_PRODL
			;	uns8 sv_PRODH = PRODH;
	MOVFF PRODH,sv_PRODH
			;	uns24 sv_TBLPTR = TBLPTR;
	MOVFF TBLPTR,sv_TBLPTR
	MOVFF TBLPTR+1,sv_TBLPTR+1
	MOVFF TBLPTR+2,sv_TBLPTR+2
			;	uns8 sv_TABLAT = TABLAT;
	MOVFF TABLAT,sv_TABLAT
			;
			;	if(TMR2IF) 
	BTFSS 0xF9E,TMR2IF,0
	BRA   m013
			;	{ 
			;		T2CON = 0b.0.0011.1.01; TMR2IF =0; //TMR2ON =1; // PostScaler per 4
	MOVLW 29
	MOVWF T2CON,0
	BCF   0xF9E,TMR2IF,0
			;		for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	MOVLW 1
	MOVWF i,1
m001	MOVLW 7
	MOVLB 0
	CPFSLT i,1
	BRA   m002
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	INCF  i,1,1
	BRA   m001
			;		CCPR1L = ancho_pwm.high8;
m002	MOVFF ancho_pwm+1,CCPR1L
			;		CCP1CON.5 = ancho_pwm.7;
	MOVLB 0
	BTFSS ancho_pwm,7,1
	BCF   CCP1CON,5,0
	BTFSC ancho_pwm,7,1
	BSF   CCP1CON,5,0
			;		CCP1CON.4 = ancho_pwm.6;
	BTFSS ancho_pwm,6,1
	BCF   CCP1CON,4,0
	BTFSC ancho_pwm,6,1
	BSF   CCP1CON,4,0
			;				  
			;		if(bUdw){ 
	BTFSS 0xCB,bUdw,1
	BRA   m004
			;			if(T>=25)  bUdw=0;      
	MOVLW 24
	CPFSGT T,1
	BRA   m003
	BCF   0xCB,bUdw,1
			;			else T++;
	BRA   m004
m003	MOVLB 0
	INCF  T,1,1
			;		} 
			;		if(!bUdw) T--;                       
m004	MOVLB 0
	BTFSS 0xCB,bUdw,1
	DECF  T,1,1
			;		if(T==0) {
	MOVLB 0
	MOVF  T,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m007
			;		  	while(!TMR2IF);TMR2IF =0; // ESPERO QUE ACABI  T=1
m005	BTFSS 0xF9E,TMR2IF,0
	BRA   m005
	BCF   0xF9E,TMR2IF,0
			;			T2CON = 0b.0.0001.1.01;
	MOVLW 13
	MOVWF T2CON,0
			;			CCPR1L = 0;
	CLRF  CCPR1L,0
			;			CCP1CON.5 = 0;
	BCF   CCP1CON,5,0
			;			CCP1CON.4 = 0;	 
	BCF   CCP1CON,4,0
			;			while(!TMR2IF); // espeor que acabi la 1era meitat del T=0, postsclaer =2
m006	BTFSS 0xF9E,TMR2IF,0
	BRA   m006
			;			TMR2IF =0;
	BCF   0xF9E,TMR2IF,0
			;			T2CON = 0b.0.0000.1.01;
	MOVLW 5
	MOVWF T2CON,0
			;			CCPR1L = 0;
	CLRF  CCPR1L,0
			;			CCP1CON.5 = 0;
	BCF   CCP1CON,5,0
			;			CCP1CON.4 = 0;
	BCF   CCP1CON,4,0
			;			LATD.0= !LATD.0;
	BTG   LATD,0,0
			;			bUdw=1;  
	MOVLB 0
	BSF   0xCB,bUdw,1
			;			T=1;
	MOVLW 1
	MOVWF T,1
			;			if(estado==ENVIO_LCD) estado = LECTURA_VAC;  // el deixo sortir
	MOVLW 4
	CPFSEQ estado,1
	BRA   m007
	CLRF  estado,1
			;		}			  
			;		if(r>=60)r=60;		
m007	MOVLB 0
	MOVF  r+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m008
	MOVLW 59
	CPFSGT r,1
	BRA   m009
m008	MOVLW 60
	MOVLB 0
	MOVWF r,1
	CLRF  r+1,1
			;		//if(r<25)r=25;
			;		SENO = sen[T];
m009	MOVLB 0
	MOVF  T,W,1
	CALL  _const1
	MOVLB 0
	MOVWF SENO,1
	CLRF  SENO+1,1
			;		ancho_pwm = (uns16)SENO*r;
	MOVF  SENO,W,1
	MULWF r,1
	MOVFF PRODL,ancho_pwm
	MOVFF PRODH,ancho_pwm+1
	MOVF  SENO+1,W,1
	MULWF r,1
	MOVF  PRODL,W,0
	ADDWF ancho_pwm+1,1,1
	MOVF  SENO,W,1
	MULWF r+1,1
	MOVF  PRODL,W,0
	ADDWF ancho_pwm+1,1,1
			;		ancho_pwm=ancho_pwm/10;
	MOVF  ancho_pwm,W,1
	MOVWF C4tmp,1
	MOVF  ancho_pwm+1,W,1
	MOVWF C4tmp+1,1
	CLRF  C5rem,1
	MOVLW 16
	MOVWF C3cnt,1
m010	MOVLB 0
	RLCF  C4tmp,1,1
	RLCF  C4tmp+1,1,1
	RLCF  C5rem,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m011
	MOVLW 10
	SUBWF C5rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m012
m011	MOVLW 10
	MOVLB 0
	SUBWF C5rem,1,1
	BSF   0xFD8,Carry,0
m012	MOVLB 0
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	DECFSZ C3cnt,1,1
	BRA   m010
			;		//Vmax=3.0;
			;				  			  
			;	} 
			;			
			;	// restore registers that are saved
			;	//FSR0 = sv_FSR0;
			;	//FSR1 = sv_FSR1;
			;	//FSR2 = sv_FSR2;
			;	//PCLATH = sv_PCLATH;
			;	//PCLATU = sv_PCLATU;
			;	PRODL = sv_PRODL;
m013	MOVFF sv_PRODL,PRODL
			;	PRODH = sv_PRODH;
	MOVFF sv_PRODH,PRODH
			;	TBLPTR = sv_TBLPTR;
	MOVFF sv_TBLPTR,TBLPTR
	MOVFF sv_TBLPTR+1,TBLPTR+1
	MOVFF sv_TBLPTR+2,TBLPTR+2
			;	TABLAT = sv_TABLAT;
	MOVFF sv_TABLAT,TABLAT
			;
			;    int_restore_registers 					// Devuelve W, STATUS y PCLATH.
	MOVLB 0
	MOVF  svrWREG,W,1
	MOVFF svrBSR,BSR
	MOVFF svrSTATUS,STATUS
			;}
	RETFIE

  ; FILE MATH24F.H
			;// *************************************************
			;// 24 bit basic floating point math operations
			;// Copyright (c) B Knudsen Data, Norway, 2000 - 2005
			;// *************************************************
			;
			;#pragma library 1
			;/* PROTOTYPES for page definition in application header file:
			;float24 operator* _fmul24( float24 arg1f24, float24 arg2f24);
			;float24 operator/ _fdiv24( float24 arg1f24, float24 arg2f24);
			;float24 operator+ _fadd24( float24 arg1f24, float24 arg2f24);
			;float24 operator- _fsub24( float24 arg1f24, float24 arg2f24);
			;float24 operator= _int24ToFloat24( int24 arg1f24);
			;float24 operator= _int32ToFloat24( int32 arg32);
			;int24 operator= _float24ToInt24( float24 arg1f24);
			;bit operator< _f24_LT_f24( float24 arg1f24, float24 arg2f24);
			;bit operator>= _f24_GE_f24( float24 arg1f24, float24 arg2f24);
			;bit operator> _f24_GT_f24( float24 arg1f24, float24 arg2f24);
			;bit operator<= _f24_LE_f24( float24 arg1f24, float24 arg2f24);
			;*/
			;
			;// DEFINABLE SYMBOLS (in the application code):
			;//#define FP_OPTIM_SPEED  // optimize for SPEED: default
			;//#define FP_OPTIM_SIZE   // optimize for SIZE
			;//#define DISABLE_ROUNDING   // disable rounding and save code space
			;
			;#define float24ToIEEE754(a) { a.mid8=rl(a.mid8); a.high8=rr(a.high8);\
			;                              a.mid8=rr(a.mid8); }
			;#define IEEE754ToFloat24(a) { a.mid8=rl(a.mid8); a.high8=rl(a.high8);\
			;                              a.mid8=rr(a.mid8); }
			;
			;
			;/*  24 bit floating point format:
			;
			;  address  ID
			;    X      a.low8  : LSB, bit 0-7 of mantissa
			;    X+1    a.mid8  : bit 8-14 of mantissa, bit 15 is the sign bit
			;    X+2    a.high8 : MSB, bit 0-7 of exponent, with bias 0x7F
			;
			;    bit 15 of mantissa is a hidden bit, always equal to 1
			;    zero (0.0) :  a.high8 = 0 (mantissa & sign ignored)
			;
			;   MSB    LSB
			;    7F 00 00  : 1.0   =  1.0  * 2**(0x7F-0x7F) = 1.0 * 1
			;    7F 80 00  : -1.0  = -1.0  * 2**(0x7F-0x7F) = -1.0 * 1
			;    80 00 00  : 2.0   =  1.0  * 2**(0x80-0x7F) = 1.0 * 2
			;    80 40 00  : 3.0   =  1.5  * 2**(0x80-0x7F) = 1.5 * 2
			;    7E 60 00  : 0.875 =  1.75 * 2**(0x7E-0x7F) = 1.75 * 0.5
			;    7F 60 00  : 1.75  =  1.75 * 2**(0x7E-0x7F) = 1.75 * 1
			;    7F 7F FF  : 1.999969482
			;    00 7C 5A  : 0.0 (mantissa & sign ignored)
			;    01 00 00  : 1.17549435e-38 =  1.0 * 2**(0x01-0x7F)
			;    FE 7F FF  : 3.40277175e+38 =  1.999969482 * 2**(0xFE-0x7F)
			;    FF 00 00  : +INF : positive infinity
			;    FF 80 00  : -INF : negative infinity
			;*/                 
			;
			;#define  FpBIAS  0x7F
			;
			;#ifndef FpFlags_defined
			; #define FpFlags_defined
			;
			; char FpFlags;
			; //bit IOV         @ FpFlags.0; // integer overflow flag: NOT USED
			; bit FpOverflow    @ FpFlags.1; // floating point overflow flag
			; bit FpUnderFlow   @ FpFlags.2; // floating point underflow flag
			; bit FpDiv0        @ FpFlags.3; // floating point divide by zero flag
			; //bit FpNAN       @ FpFlags.4; // not-a-number exception flag: NOT USED
			; bit FpDomainError @ FpFlags.5; // domain error exception flag
			; bit FpRounding    @ FpFlags.6; // floating point rounding flag, 0=truncation
			;                                // 1 = unbiased rounding to nearest LSB
			; //bit FpSaturate  @ FpFlags.7; // floating point saturate flag: NOT USED
			;
			; #pragma floatOverflow FpOverflow
			; #pragma floatUnderflow FpUnderFlow
			;
			; #define InitFpFlags()  FpFlags = 0x40 /* enable rounding as default */
			;#endif
			;
			;#ifdef DISABLE_ROUNDING
			; #pragma floatRounding 0
			;#endif
			;
			;
			;#if __CoreSet__ < 1600
			; #define genAdd(r,a) W=a; btsc(Carry); W=incsz(a); r+=W
			; #define genSub(r,a) W=a; btss(Carry); W=incsz(a); r-=W
			; #define genAddW(r,a) W=a; btsc(Carry); W=incsz(a); W=r+W
			; #define genSubW(r,a) W=a; btss(Carry); W=incsz(a); W=r-W
			;#else
			; #define genAdd(r,a) W=a; r=addWFC(r)
			; #define genSub(r,a) W=a; r=subWFB(r)
			; #define genAddW(r,a) W=a; W=addWFC(r)
			; #define genSubW(r,a) W=a; W=subWFB(r)
			;#endif
			;
			;#if __CoreSet__ == 1700 || __CoreSet__ == 1800
			; #define hw_mult8x8(a,b)  W = a; multiply(b)
			; #define loRES PRODL
			; #define hiRES PRODH
			;#endif
			;
			;#if __CoreSet__ == 2000
			; #define hw_mult8x8(a,b)  W = a; multiply(b)
			; #define loRES W
			; #define hiRES MULH
			;#endif
			;
			;
			;float24 operator* _fmul24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_fmul24
			;    uns16 aarg;
			;    W = arg1f24.mid8;
	MOVLB 0
	MOVF  arg1f24+1,W,1
			;    aarg.high8 = W;
	MOVWF aarg+1,1
			;
			;    // save sign
			;    char sign = arg2f24.mid8 ^ W;  // before first overflow test
	XORWF arg2f24+1,W,1
	MOVWF sign,1
			;
			;    W = arg1f24.high8;
	MOVF  arg1f24+2,W,1
			;   #if __CoreSet__ / 100 == 17
			;    if (W != 0)
			;        W = arg2f24.high8;
			;    if (W == 0)
			;        goto RES0;
			;   #else
			;    if (!Zero_)
	BTFSS 0xFD8,Zero_,0
			;        W = arg2f24.high8;
	MOVF  arg2f24+2,W,1
			;    if (Zero_)
	BTFSC 0xFD8,Zero_,0
			;        goto RES0;
	BRA   m018
			;   #endif
			;
			;    arg1f24.high8 += W /* arg2f24.high8 */;
	MOVLB 0
	ADDWF arg1f24+2,1,1
			;    W = FpBIAS-1;
	MOVLW 126
			;    if (Carry)  {
	BTFSS 0xFD8,Carry,0
	BRA   m014
			;        arg1f24.high8 -= W;
	SUBWF arg1f24+2,1,1
			;        if (Carry)
	BTFSS 0xFD8,Carry,0
	BRA   m015
			;            goto OVERFLOW;
	BRA   m019
			;    }
			;    else  {
			;        arg1f24.high8 -= W;
m014	MOVLB 0
	SUBWF arg1f24+2,1,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            goto UNDERFLOW;
	BRA   m017
			;    }
			;    aarg.low8 = arg1f24.low8;
m015	MOVFF arg1f24,aarg
			;
			;    aarg.15 = 1;
	MOVLB 0
	BSF   aarg+1,7,1
			;    arg2f24.15 = 1;
	BSF   arg2f24+1,7,1
			;
			;   #if defined hw_mult8x8  &&  !defined FP_OPTIM_SIZE
			;
			;    char tmpL;
			;    arg1f24.low16 = 0;
	CLRF  arg1f24,1
	CLRF  arg1f24+1,1
			;
			;    hw_mult8x8( arg2f24.low8, aarg.low8);   // p1
	MOVF  arg2f24,W,1
	MULWF aarg,1
			;    tmpL = hiRES;
	MOVFF PRODH,tmpL
			;
			;    hw_mult8x8( arg2f24.mid8, aarg.low8);  // p2
	MOVF  arg2f24+1,W,1
	MULWF aarg,1
			;    tmpL += loRES;
	MOVF  PRODL,W,0
	ADDWF tmpL,1,1
			;    genAdd( arg1f24.low8, hiRES);
	MOVF  PRODH,W,0
	ADDWFC arg1f24,1,1
			;    genAdd( arg1f24.mid8, 0);
	MOVLW 0
	ADDWFC arg1f24+1,1,1
			;
			;    hw_mult8x8( arg2f24.low8, aarg.mid8);  // p2
	MOVF  arg2f24,W,1
	MULWF aarg+1,1
			;    tmpL += loRES;
	MOVF  PRODL,W,0
	ADDWF tmpL,1,1
			;    genAdd( arg1f24.low8, hiRES);
	MOVF  PRODH,W,0
	ADDWFC arg1f24,1,1
			;    genAdd( arg1f24.mid8, 0);
	MOVLW 0
	ADDWFC arg1f24+1,1,1
			;
			;    hw_mult8x8( arg2f24.mid8, aarg.mid8);  // p3
	MOVF  arg2f24+1,W,1
	MULWF aarg+1,1
			;    arg1f24.low8 += loRES;
	MOVF  PRODL,W,0
	ADDWF arg1f24,1,1
			;    genAdd( arg1f24.mid8, hiRES);
	MOVF  PRODH,W,0
	ADDWFC arg1f24+1,1,1
			;
			;   #undef hw_mult8x8
			;   #undef loRES
			;   #undef hiRES
			;
			;    if (!arg1f24.15)  {
	BTFSC arg1f24+1,7,1
	BRA   m016
			;        tmpL = rl( tmpL);
	RLCF  tmpL,1,1
			;        arg1f24.low16 = rl( arg1f24.low16);
	RLCF  arg1f24,1,1
	RLCF  arg1f24+1,1,1
			;        if (arg1f24.high8 == 0)
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;            goto UNDERFLOW;
	BRA   m017
			;        arg1f24.high8 -= 1;
	MOVLB 0
	DECF  arg1f24+2,1,1
			;        W = rl( tmpL);  // restore bit behind LSB in Carry
	RLCF  tmpL,W,1
			;    }
			;
			;   #else
			;
			;    arg1f24.low16 = 0;
			;
			;    char counter = sizeof(aarg)*8;
			;
			;    do  {
			;        aarg = rr( aarg);
			;        if (Carry)  {
			;            arg1f24.low8 += arg2f24.low8;
			;            genAdd( arg1f24.mid8, arg2f24.mid8);
			;        }
			;        arg1f24.low16 = rr( arg1f24.low16);
			;        counter = decsz(counter);
			;    } while (1);
			;
			;    if (!arg1f24.15)  {
			;        // catch Carry bit that was shifted out previously
			;        arg1f24.low16 = rl( arg1f24.low16);
			;        if (arg1f24.high8 == 0)
			;            goto UNDERFLOW;
			;        arg1f24.high8 -= 1;
			;        W = rl( aarg.high8);
			;        // restore bit behind LSB in Carry
			;    }
			;
			;   #endif
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding  &&  Carry)  {
m016	MOVLB 0
	BTFSS 0xD8,FpRounding,1
	BRA   m021
	BTFSS 0xFD8,Carry,0
	BRA   m021
			;        arg1f24.low8 += 1;
	INCFSZ arg1f24,1,1
			;        if (!arg1f24.low8)  {
	BRA   m021
			;            arg1f24.mid8 += 1;
	INCFSZ arg1f24+1,1,1
			;            if (!arg1f24.mid8)  {
	BRA   m021
			;               #if __CoreSet__ >= 1700 && __CoreSet__ <= 1800
			;                Carry = 1; // previous INCF changes Carry
	BSF   0xFD8,Carry,0
			;               #else
			;                // Carry = 1; //OK
			;               #endif
			;                arg1f24.low16 = rr( arg1f24.low16);
	RRCF  arg1f24+1,1,1
	RRCF  arg1f24,1,1
			;                arg1f24.high8 += 1;
	INCFSZ arg1f24+2,1,1
			;                if (Zero_)
	BRA   m021
			;                    goto OVERFLOW;
	BRA   m019
			;            }
			;        }
			;    }
			;   #endif
			;    goto SET_SIGN;
			;
			;  UNDERFLOW:
			;    FpUnderFlow = 1;
m017	MOVLB 0
	BSF   0xD8,FpUnderFlow,1
			;  RES0:
			;    arg1f24.high8 = 0;
m018	MOVLB 0
	CLRF  arg1f24+2,1
			;    goto MANTISSA;
	BRA   m020
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
m019	MOVLB 0
	BSF   0xD8,FpOverflow,1
			;    arg1f24.high8 = 0xFF;
	SETF  arg1f24+2,1
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
m020	MOVLB 0
	CLRF  arg1f24,1
	MOVLW 128
	MOVWF arg1f24+1,1
			;
			;  SET_SIGN:
			;    if (!(sign & 0x80))
m021	MOVLB 0
	BTFSS sign,7,1
			;        arg1f24.15 = 0;
	BCF   arg1f24+1,7,1
			;    return arg1f24;
	MOVLB 0
	MOVF  arg1f24,W,1
	RETURN
			;}
			;
			;
			;
			;float24 operator/ _fdiv24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_fdiv24
			;    uns16 aarg;
			;    W = arg1f24.mid8;
			;    aarg.high8 = W;
			;
			;    // save sign
			;    char sign = arg2f24.mid8 ^ W;  // before first overflow test
			;
			;   #if __CoreSet__ / 100 == 17
			;    if (!arg2f24.high8)
			;        goto Div0;
			;   #else
			;    W = arg2f24.high8;
			;    if (Zero_)
			;        goto Div0;
			;   #endif
			;    if (!arg1f24.high8)
			;        goto RES0;
			;
			;    arg1f24.high8 -= arg2f24.high8;
			;    W = FpBIAS;
			;    if (!Carry)  {
			;        arg1f24.high8 += W;
			;        if (!Carry)
			;            goto UNDERFLOW;
			;    }
			;    else  {
			;        arg1f24.high8 += W;
			;        if (Carry)
			;            goto OVERFLOW;
			;    }
			;
			;    aarg.low8 = arg1f24.low8;
			;    aarg.15 = 1;
			;    arg2f24.15 = 1;
			;
			;    // division: shift & add
			;    char counter = 16;
			;    arg1f24.low16 = 0;  // speedup
			;
			;#if defined FP_OPTIM_SPEED || !defined FP_OPTIM_SIZE  // SPEED
			;
			;    goto START_ML;
			;
			;  TEST_ZERO_L:
			;    W = aarg.low8 - arg2f24.low8;
			;    if (!Carry)
			;        goto SHIFT_IN_CARRY;
			;    aarg.low8 = W;
			;    aarg.high8 = 0;
			;    goto SET_AND_SHIFT_IN_CARRY;
			;
			;// MAIN LOOP
			;    do  {
			;      LOOP_ML:
			;        if (!Carry)  {
			;           START_ML:
			;            W = aarg.high8 - arg2f24.mid8;
			;            if (Zero_)
			;                goto TEST_ZERO_L;
			;            if (!Carry)
			;                goto SHIFT_IN_CARRY;
			;        }
			;        aarg.low8 -= arg2f24.low8;
			;        genSub( aarg.high8, arg2f24.mid8);
			;      SET_AND_SHIFT_IN_CARRY:
			;        Carry = 1;
			;      SHIFT_IN_CARRY:
			;        arg1f24.low16 = rl( arg1f24.low16);
			;        // Carry = 0;  // ok, speedup
			;        aarg = rl( aarg);
			;        counter = decsz(counter);
			;    } while (1);
			;
			;
			;
			;#else  // SIZE
			;
			;    goto START_ML;
			;
			;// MAIN LOOP
			;    do  {
			;      LOOP_ML:
			;        if (Carry)
			;            goto SUBTRACT;
			;      START_ML:
			;        W = aarg.low8 - arg2f24.low8;
			;        genSubW( aarg.high8, arg2f24.mid8);
			;        if (!Carry)
			;            goto SKIP_SUB;
			;       SUBTRACT:
			;        aarg.low8 -= arg2f24.low8;
			;        genSub( aarg.high8, arg2f24.mid8);
			;        Carry = 1;
			;       SKIP_SUB:
			;        arg1f24.low16 = rl( arg1f24.low16);
			;        // Carry = 0;  // ok
			;        aarg = rl( aarg);
			;        counter = decsz(counter);
			;    } while (1);
			;
			;#endif
			;
			;    if (!arg1f24.15)  {
			;        if (!arg1f24.high8)
			;            goto UNDERFLOW;
			;       #if __CoreSet__ >= 1700 && __CoreSet__ <= 1800
			;        sign = rr( sign);   // Save Carry
			;       #endif
			;        arg1f24.high8 --;
			;        counter ++;
			;       #if __CoreSet__ >= 1700 && __CoreSet__ <= 1800
			;        sign = rl( sign);   // Restore Carry, changed by INCF/DECF
			;       #endif
			;        goto LOOP_ML;
			;    }
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding)  {
			;        if (Carry)
			;            goto ADD_1;
			;        aarg.low8 -= arg2f24.low8;
			;        genSub( aarg.high8, arg2f24.mid8);
			;        if (Carry)  {
			;          ADD_1:
			;            arg1f24.low8 += 1;
			;            if (!arg1f24.low8)  {
			;                arg1f24.mid8 ++;
			;                if (!arg1f24.mid8)  {
			;                    arg1f24.low16 = rr( arg1f24.low16);
			;                    arg1f24.high8 ++;
			;                    if (!arg1f24.high8)
			;                        goto OVERFLOW;
			;                }
			;            }
			;        }
			;    }
			;   #endif
			;    goto SET_SIGN;
			;
			;  Div0:
			;    FpDiv0 = 1;
			;    goto SATURATE;
			;
			;  UNDERFLOW:
			;    FpUnderFlow = 1;
			;  RES0:
			;    arg1f24.high8 = 0;
			;    goto MANTISSA;
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
			;  SATURATE:
			;    arg1f24.high8 = 0xFF;
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
			;
			;  SET_SIGN:
			;    if (!(sign & 0x80))
			;        arg1f24.15 = 0;
			;    return arg1f24;
			;}
			;
			;
			;float24 operator+ _fadd24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_fadd24
			;    char xtra, temp;
			;    char expo = arg1f24.high8 - arg2f24.high8;
	MOVLB 0
	MOVF  arg2f24+2,W,1
	SUBWF arg1f24+2,W,1
	MOVWF expo,1
			;    if (!Carry)  {
	BTFSC 0xFD8,Carry,0
	BRA   m022
			;        expo = -expo;
	NEGF  expo,1
			;        temp = arg1f24.high8;
	MOVFF arg1f24+2,temp
			;        arg1f24.high8 = arg2f24.high8;
	MOVFF arg2f24+2,arg1f24+2
			;        arg2f24.high8 = temp;
	MOVFF temp,arg2f24+2
			;        temp = arg1f24.mid8;
	MOVFF arg1f24+1,temp
			;        arg1f24.mid8 = arg2f24.mid8;
	MOVFF arg2f24+1,arg1f24+1
			;        arg2f24.mid8 = temp;
	MOVFF temp,arg2f24+1
			;        temp = arg1f24.low8;
	MOVFF arg1f24,temp
			;        arg1f24.low8 = arg2f24.low8;
	MOVFF arg2f24,arg1f24
			;        arg2f24.low8 = temp;
	MOVFF temp,arg2f24
			;    }
			;    if (expo > sizeof(arg1f24)*8-7)
m022	MOVLW 17
	MOVLB 0
	CPFSGT expo,1
	BRA   m023
			;        goto _RETURN_MF;
	BRA   m041
			;    if (!arg2f24.high8)
m023	MOVLB 0
	MOVF  arg2f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;        goto _RETURN_MF;   // result is arg1f24
	BRA   m041
			;
			;    xtra = 0;
	MOVLB 0
	CLRF  xtra,1
			;
			;    W = arg1f24.mid8;
	MOVF  arg1f24+1,W,1
			;    temp = W;
	MOVWF temp,1
			;    char sign = arg2f24.mid8 ^ W;
	XORWF arg2f24+1,W,1
	MOVWF sign_3,1
			;    arg1f24.15 = 1;
	BSF   arg1f24+1,7,1
			;    arg2f24.15 = 1;
	BSF   arg2f24+1,7,1
			;
			;    while (1)  {
			;        W = 8;
m024	MOVLW 8
			;        expo -= W;
	MOVLB 0
	SUBWF expo,1,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            break;
	BRA   m025
			;        xtra = arg2f24.low8;
	MOVFF arg2f24,xtra
			;        arg2f24.low8 = arg2f24.mid8;
	MOVFF arg2f24+1,arg2f24
			;        arg2f24.mid8 = 0;
	MOVLB 0
	CLRF  arg2f24+1,1
			;    }
	BRA   m024
			;    expo += W;
m025	MOVLB 0
	ADDWF expo,1,1
			;    if (expo)  {
	BTFSC 0xFD8,Zero_,0
	BRA   m027
			;        do  {
			;            Carry = 0;
m026	BCF   0xFD8,Carry,0
			;            arg2f24.low16 = rr( arg2f24.low16);
	MOVLB 0
	RRCF  arg2f24+1,1,1
	RRCF  arg2f24,1,1
			;            xtra = rr( xtra);
	RRCF  xtra,1,1
			;        } while (--expo > 0);
	DECFSZ expo,1,1
	BRA   m026
			;    }
			;
			;
			;    if (sign & 0x80)  {
m027	MOVLB 0
	BTFSS sign_3,7,1
	BRA   m033
			;        // SUBTRACT
			;        arg1f24.low8 -= arg2f24.low8;
	MOVF  arg2f24,W,1
	SUBWF arg1f24,1,1
			;        genSub( arg1f24.mid8, arg2f24.mid8);
	MOVF  arg2f24+1,W,1
	SUBWFB arg1f24+1,1,1
			;        if (!Carry)  {  // arg2f24 > arg1f24
	BTFSC 0xFD8,Carry,0
	BRA   m028
			;            arg1f24.low16 = -arg1f24.low16;
	BSF   0xFD8,Carry,0
	MOVLW 0
	SUBFWB arg1f24,1,1
	MOVLW 0
	SUBFWB arg1f24+1,1,1
			;            // xtra == 0 because arg1f24.exp == arg2f24.exp
			;            temp ^= 0x80;  // invert sign
	MOVLW 128
	XORWF temp,1,1
			;        }
			;        xtra = -xtra;
m028	MOVLB 0
	NEGF  xtra,1
			;        if (xtra)
	BTFSC 0xFD8,Zero_,0
	BRA   m029
			;            arg1f24.low16 --;
	DECF  arg1f24,1,1
	MOVLW 0
	SUBWFB arg1f24+1,1,1
			;        // adjust result left
			;       #define counter expo
			;        counter = 3;
m029	MOVLW 3
	MOVLB 0
	MOVWF expo,1
			;        while (!arg1f24.mid8)  {
m030	MOVLB 0
	MOVF  arg1f24+1,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m031
			;            arg1f24.mid8 = arg1f24.low8;
	MOVFF arg1f24,arg1f24+1
			;            arg1f24.low8 = xtra;
	MOVFF xtra,arg1f24
			;            xtra = 0;
	CLRF  xtra,1
			;            arg1f24.high8 -= 8;
	MOVLW 8
	SUBWF arg1f24+2,1,1
			;            if (!Carry)
	BTFSS 0xFD8,Carry,0
			;                goto RES0;
	BRA   m037
			;            if (--counter == 0)  // max 2 iterations
	MOVLB 0
	DECFSZ expo,1,1
	BRA   m030
			;                goto RES0;
	BRA   m037
			;        }
			;       #undef counter
			;        while (!arg1f24.15)  {
m031	MOVLB 0
	BTFSC arg1f24+1,7,1
	BRA   m032
			;            Carry = 0;
	BCF   0xFD8,Carry,0
			;            xtra = rl( xtra);
	RLCF  xtra,1,1
			;            arg1f24.low16 = rl( arg1f24.low16);
	RLCF  arg1f24,1,1
	RLCF  arg1f24+1,1,1
			;            arg1f24.high8 --;
	DECFSZ arg1f24+2,1,1
			;            if (!arg1f24.high8)
	BRA   m031
			;                goto RES0;   // UNDERFLOW?
	BRA   m037
			;        }
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding  &&  (xtra & 0x80))  {
m032	MOVLB 0
	BTFSS 0xD8,FpRounding,1
	BRA   m040
	BTFSS xtra,7,1
	BRA   m040
			;            xtra = 0; // disable recursion
	CLRF  xtra,1
			;            goto INCREMENT;
	BRA   m036
			;        }
			;       #endif
			;    }
			;    else  {
			;        // ADD arg1f24 and arg2f24
			;        arg1f24.low8 += arg2f24.low8;
m033	MOVLB 0
	MOVF  arg2f24,W,1
	ADDWF arg1f24,1,1
			;        genAdd( arg1f24.mid8, arg2f24.mid8);
	MOVF  arg2f24+1,W,1
	ADDWFC arg1f24+1,1,1
			;        if (Carry)  {
	BTFSS 0xFD8,Carry,0
	BRA   m035
			;          ADJUST_RIGHT:
			;            arg1f24.low16 = rr( arg1f24.low16);
m034	MOVLB 0
	RRCF  arg1f24+1,1,1
	RRCF  arg1f24,1,1
			;            xtra = rr( xtra);
	RRCF  xtra,1,1
			;            arg1f24.high8 += 1;  // exp
	INFSNZ arg1f24+2,1,1
			;            if (!arg1f24.high8)
			;                goto OVERFLOW;
	BRA   m038
			;        }
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding  &&  (xtra & 0x80))  {
m035	MOVLB 0
	BTFSS 0xD8,FpRounding,1
	BRA   m040
	BTFSS xtra,7,1
	BRA   m040
			;          INCREMENT:
			;            arg1f24.low8 += 1;
m036	MOVLB 0
	INCFSZ arg1f24,1,1
			;            if (!arg1f24.low8)  {
	BRA   m040
			;                arg1f24.mid8 += 1;
	INCFSZ arg1f24+1,1,1
			;                if (!arg1f24.mid8)  {
	BRA   m040
			;                    Carry = 1; // prepare for shift
	BSF   0xFD8,Carry,0
			;                    arg1f24.0 = 0;  // disable recursion
	BCF   arg1f24,0,1
			;                    goto ADJUST_RIGHT;
	BRA   m034
			;                }
			;            }
			;        }
			;       #endif
			;    }
			;    goto SET_SIGN;
			;
			;//  UNDERFLOW:
			;//    FpUnderFlow = 1;
			;  RES0:
			;    arg1f24.high8 = 0;
m037	MOVLB 0
	CLRF  arg1f24+2,1
			;    goto MANTISSA;
	BRA   m039
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
m038	MOVLB 0
	BSF   0xD8,FpOverflow,1
			;    arg1f24.high8 = 0xFF;
	SETF  arg1f24+2,1
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
m039	MOVLB 0
	CLRF  arg1f24,1
	MOVLW 128
	MOVWF arg1f24+1,1
			;
			;  SET_SIGN:
			;    if (!(temp & 0x80))
m040	MOVLB 0
	BTFSS temp,7,1
			;        arg1f24.15 = 0;
	BCF   arg1f24+1,7,1
			;
			;  _RETURN_MF:
			;    return arg1f24;
m041	MOVLB 0
	MOVF  arg1f24,W,1
	RETURN
			;}
			;
			;
			;// SUBTRACTION
			;
			;float24 operator- _fsub24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_fsub24
			;    arg2f24.mid8 ^= 0x80;
	MOVLW 128
	MOVLB 0
	XORWF arg2f24+1,1,1
			;    arg1f24 += arg2f24;
	RCALL _fadd24
			;    return arg1f24;
	MOVLB 0
	MOVF  arg1f24,W,1
	RETURN
			;}
			;
			;
			;float24 operator=( int8 arg) @
			;float24 operator=( uns8 arg) @
			;float24 operator=( int16 arg) @
			;float24 operator=( uns16 arg) @
			;float24 operator= _int24ToFloat24( sharedM int24 arg1f24)
			;{
_int24ToFloat24
			;    sharedM float24 arg2f24;   // unused, but required
			;    char expo = FpBIAS + 16 - 1;
	MOVLW 142
	MOVLB 0
	MOVWF expo_2,1
			;    char xtra = 0;
	CLRF  xtra_2,1
			;    char sign = 0;
	CLRF  sign_4,1
			;    if (arg1f24 < 0)  {
	BTFSS arg1f24+2,7,1
	BRA   m042
			;        arg1f24 = -arg1f24;
	BSF   0xFD8,Carry,0
	MOVLW 0
	SUBFWB arg1f24,1,1
	MOVLW 0
	SUBFWB arg1f24+1,1,1
	MOVLW 0
	SUBFWB arg1f24+2,1,1
			;        sign |= 0x80;
	BSF   sign_4,7,1
			;    }
			;    if (arg1f24.high8)  {
m042	MOVLB 0
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m043
			;        expo += 8;
	MOVLW 8
	ADDWF expo_2,1,1
			;        xtra = arg1f24.low8;
	MOVFF arg1f24,xtra_2
			;        arg1f24.low8 = arg1f24.mid8;
	MOVFF arg1f24+1,arg1f24
			;        arg1f24.mid8 = arg1f24.high8;
	MOVFF arg1f24+2,arg1f24+1
			;    }
			;    else if (!arg1f24.mid8)  {
	BRA   m045
m043	MOVLB 0
	MOVF  arg1f24+1,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m045
			;        expo -= 8;
	MOVLW 8
	SUBWF expo_2,1,1
			;        W = arg1f24.low8;
	MOVF  arg1f24,W,1
			;        if (!W)
	BTFSC 0xFD8,Zero_,0
			;            goto _RETURN_MF;
	BRA   m047
			;        arg1f24.mid8 = W;
	MOVLB 0
	MOVWF arg1f24+1,1
			;        arg1f24.low8 = 0;
	CLRF  arg1f24,1
			;    }
			;
			;    // arg1f24.mid8 != 0
			;    goto TEST_ARG1_B15;
	BRA   m045
			;    do  {
			;        xtra = rl( xtra);
m044	MOVLB 0
	RLCF  xtra_2,1,1
			;        arg1f24.low16 = rl( arg1f24.low16);
	RLCF  arg1f24,1,1
	RLCF  arg1f24+1,1,1
			;        expo --;
	DECF  expo_2,1,1
			;      TEST_ARG1_B15:
			;    } while (!arg1f24.15);
m045	MOVLB 0
	BTFSS arg1f24+1,7,1
	BRA   m044
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding && (xtra & 0x80))  {
	BTFSS 0xD8,FpRounding,1
	BRA   m046
	BTFSS xtra_2,7,1
	BRA   m046
			;        arg1f24.low8 += 1;
	INCFSZ arg1f24,1,1
			;        if (!arg1f24.low8)  {
	BRA   m046
			;            arg1f24.mid8 += 1;
	INCFSZ arg1f24+1,1,1
			;            if (!arg1f24.mid8)  {
	BRA   m046
			;                Carry = 1;
	BSF   0xFD8,Carry,0
			;                arg1f24.low16 = rr( arg1f24.low16);
	RRCF  arg1f24+1,1,1
	RRCF  arg1f24,1,1
			;                expo ++;
	INCF  expo_2,1,1
			;            }
			;        }
			;    }
			;   #endif
			;
			;    arg1f24.high8 = expo;
m046	MOVFF expo_2,arg1f24+2
			;    if (!(sign & 0x80))
	MOVLB 0
	BTFSS sign_4,7,1
			;        arg1f24.15 = 0;
	BCF   arg1f24+1,7,1
			;
			;  _RETURN_MF:
			;    float24 rval @ arg1f24;
			;    rval.low24 = arg1f24.low24;
			;    return rval;
m047	MOVLB 0
	MOVF  rval,W,1
	RETURN
			;}
			;
			;
			;float24 operator=( uns24 arg) @
			;float24 operator= _int32ToFloat24( int32 arg32)
			;{
_int32ToFloat24
			;    char expo = FpBIAS + 16 - 1;
			;    char xtra @ arg32.high8;
			;    char sign = 0;
			;    if (arg32 < 0)  {
			;        arg32 = -arg32;
			;        sign |= 0x80;
			;    }
			;    if (arg32.high8)  {
			;        expo += 8;
			;        arg32.low8 = arg32.midL8;
			;        arg32.midL8 = arg32.midH8;
			;        arg32.midH8 = arg32.high8;
			;        arg32.high8 = 0;
			;    }
			;    if (arg32.midH8)  {
			;        expo += 8;
			;        xtra = arg32.low8;
			;        arg32.low8 = arg32.midL8;
			;        arg32.midL8 = arg32.midH8;
			;    }
			;    else if (!arg32.midL8)  {
			;        expo -= 8;
			;        W = arg32.low8;
			;        if (!W)
			;            goto _RETURN_MF;
			;        arg32.midL8 = W;
			;        arg32.low8 = 0;
			;    }
			;
			;    // arg32.midL8 != 0
			;    goto TEST_ARG_B15;
			;    do  {
			;        xtra = rl( xtra);
			;        arg32.low16 = rl( arg32.low16);
			;        expo --;
			;      TEST_ARG_B15:
			;    } while (!arg32.15);
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding && (xtra & 0x80))  {
			;        arg32.low8 += 1;
			;        if (!arg32.low8)  {
			;            arg32.midL8 += 1;
			;            if (!arg32.midL8)  {
			;                Carry = 1;
			;                arg32.low16 = rr( arg32.low16);
			;                expo ++;
			;            }
			;        }
			;    }
			;   #endif
			;
			;    arg32.midH8 = expo;
			;    if (!(sign & 0x80))
			;        arg32.15 = 0;
			;
			;  _RETURN_MF:
			;    float24 rval @ arg32;
			;    rval.low24 = arg32.low24;
			;    return rval;
			;}
			;
			;
			;uns8 operator=( sharedM float24 arg1f24) @
			;int8 operator=( sharedM float24 arg1f24) @
			;uns16 operator=( sharedM float24 arg1f24) @
			;int16 operator=( sharedM float24 arg1f24) @
			;int24 operator= _float24ToInt24( sharedM float24 arg1f24)
			;{
_float24ToInt24
			;    sharedM float24 arg2f24;   // unused, but required
			;    char sign = arg1f24.mid8;
	MOVFF arg1f24+1,sign_6
			;    char expo = arg1f24.high8 - (FpBIAS-1);
	MOVLW 126
	MOVLB 0
	SUBWF arg1f24+2,W,1
	MOVWF expo_4,1
			;    if (!Carry)
	BTFSS 0xFD8,Carry,0
			;        goto RES0;
	BRA   m053
			;    arg1f24.15 = 1;
	MOVLB 0
	BSF   arg1f24+1,7,1
			;
			;    arg1f24.high8 = 0;
	CLRF  arg1f24+2,1
			;   #ifndef DISABLE_ROUNDING
			;    char xtra = 0;
	CLRF  xtra_4,1
			;   #endif
			;
			;    // (a): expo = 0..8 : shift 1 byte to the right
			;    // (b): expo = 9..16: shift 0 byte
			;    // (c): expo = 17..24: shift 1 byte to the left
			;   #if __CoreSet__ / 100 == 12
			;    expo -= 17;
			;    expo = 0xFF - expo;  // COMF (Carry unchanged)
			;    if (Carry)  {  // (c)
			;   #else
			;    expo = 16 - expo;
	MOVF  expo_4,W,1
	SUBLW 16
	MOVWF expo_4,1
			;    if (!Carry)  {  // (c)
	BTFSC 0xFD8,Carry,0
	BRA   m048
			;   #endif
			;        expo += 8;
	MOVLW 8
	ADDWF expo_4,1,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            goto OVERFLOW;
	BRA   m052
			;        arg1f24.high8 = arg1f24.mid8;
	MOVFF arg1f24+1,arg1f24+2
			;        arg1f24.mid8 = arg1f24.low8;
	MOVFF arg1f24,arg1f24+1
			;        arg1f24.low8 = 0;
	MOVLB 0
	CLRF  arg1f24,1
			;    }
			;    else  {  // (a) (b)
	BRA   m049
			;        // expo = 0 .. 16
			;        W = expo - 8;
m048	MOVLW 8
	MOVLB 0
	SUBWF expo_4,W,1
			;        if (Carry)  {  // (a)
	BTFSS 0xFD8,Carry,0
	BRA   m049
			;            expo = W;
	MOVWF expo_4,1
			;           #ifndef DISABLE_ROUNDING
			;            xtra = arg1f24.low8;
	MOVFF arg1f24,xtra_4
			;           #endif
			;            arg1f24.low8 = arg1f24.mid8;
	MOVFF arg1f24+1,arg1f24
			;            arg1f24.mid8 = 0;
	CLRF  arg1f24+1,1
			;        }
			;    }
			;    if (expo)  {
m049	MOVLB 0
	MOVF  expo_4,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m051
			;        do  {
			;            Carry = 0;
m050	BCF   0xFD8,Carry,0
			;            arg1f24.high8 = rr( arg1f24.high8);
	MOVLB 0
	RRCF  arg1f24+2,1,1
			;            arg1f24.low16 = rr( arg1f24.low16);
	RRCF  arg1f24+1,1,1
	RRCF  arg1f24,1,1
			;           #ifndef DISABLE_ROUNDING
			;            xtra = rr( xtra);
	RRCF  xtra_4,1,1
			;           #endif
			;        } while (--expo);
	DECFSZ expo_4,1,1
	BRA   m050
			;    }
			;    if (arg1f24.23)  {
m051	MOVLB 0
	BTFSS arg1f24+2,7,1
	BRA   m055
			;       OVERFLOW:
			;        FpOverflow = 1;
m052	MOVLB 0
	BSF   0xD8,FpOverflow,1
			;        W = 0xFF;
	MOVLW 255
			;        goto ASSIGNW;
	BRA   m054
			;       RES0:
			;        W = 0;
m053	MOVLW 0
			;       ASSIGNW:
			;        arg1f24.low8 = W;
m054	MOVLB 0
	MOVWF arg1f24,1
			;        arg1f24.mid8 = W;
	MOVWF arg1f24+1,1
			;        arg1f24.high8 = W;
	MOVWF arg1f24+2,1
			;        arg1f24.23 = 0;
	BCF   arg1f24+2,7,1
			;    }
			;    else  {
	BRA   m057
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding && (xtra & 0x80))  {
m055	MOVLB 0
	BTFSS 0xD8,FpRounding,1
	BRA   m056
	BTFSS xtra_4,7,1
	BRA   m056
			;            arg1f24.low8 += 1;
	INFSNZ arg1f24,1,1
			;            if (!arg1f24.low8)
			;                arg1f24.mid8 += 1;
	INCF  arg1f24+1,1,1
			;        }
			;       #endif
			;        if (sign & 0x80)
m056	MOVLB 0
	BTFSS sign_6,7,1
	BRA   m057
			;            arg1f24.low24 = -arg1f24.low24;
	BSF   0xFD8,Carry,0
	MOVLW 0
	SUBFWB arg1f24,1,1
	MOVLW 0
	SUBFWB arg1f24+1,1,1
	MOVLW 0
	SUBFWB arg1f24+2,1,1
			;    }
			;    int24 rval @ arg1f24;
			;    rval = arg1f24.low24;
			;    return rval;
m057	MOVLB 0
	MOVF  rval_3,W,1
	RETURN
			;}
			;
			;
			;bit operator< _f24_LT_f24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_f24_LT_f24
			;    Carry = 0;
			;    if (!(arg1f24.high8 | arg2f24.high8))
			;        return Carry;
			;    if (!arg1f24.15)  {
			;        if (arg2f24.15)
			;            return Carry;
			;        W = arg1f24.low8 - arg2f24.low8;
			;        genSubW( arg1f24.mid8, arg2f24.mid8);
			;        genSubW( arg1f24.high8, arg2f24.high8);
			;        goto _RETURN_MF;
			;    }
			;    if (!arg2f24.15)
			;        goto _RETURN_MF;
			;    W = arg2f24.low8 - arg1f24.low8;
			;    genSubW( arg2f24.mid8, arg1f24.mid8);
			;    genSubW( arg2f24.high8, arg1f24.high8);
			;  _RETURN_MF:
			;    if (Carry)
			;        return 0;
			;    return 1;
			;}
			;
			;
			;bit operator>= _f24_GE_f24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_f24_GE_f24
			;    Carry = 1;
			;    if (!(arg1f24.high8 | arg2f24.high8))
			;        return Carry;
			;    if (!arg1f24.15)  {
			;        if (arg2f24.15)
			;            return Carry;
			;        W = arg1f24.low8 - arg2f24.low8;
			;        genSubW( arg1f24.mid8, arg2f24.mid8);
			;        genSubW( arg1f24.high8, arg2f24.high8);
			;        return Carry;
			;    }
			;    Carry = 0;
			;    if (!arg2f24.15)
			;        return Carry;
			;    W = arg2f24.low8 - arg1f24.low8;
			;    genSubW( arg2f24.mid8, arg1f24.mid8);
			;    genSubW( arg2f24.high8, arg1f24.high8);
			;    return Carry;
			;}
			;
			;
			;
			;bit operator> _f24_GT_f24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_f24_GT_f24
			;    Carry = 0;
			;    if (!(arg1f24.high8 | arg2f24.high8))
			;        return Carry;
			;    if (!arg1f24.15)  {
			;        if (arg2f24.15)
			;            goto _RETURN_MF;
			;        W = arg2f24.low8 - arg1f24.low8;
			;        genSubW( arg2f24.mid8, arg1f24.mid8);
			;        genSubW( arg2f24.high8, arg1f24.high8);
			;        goto _RETURN_MF;
			;    }
			;    if (!arg2f24.15)
			;        return Carry;
			;    W = arg1f24.low8 - arg2f24.low8;
			;    genSubW( arg1f24.mid8, arg2f24.mid8);
			;    genSubW( arg1f24.high8, arg2f24.high8);
			;  _RETURN_MF:
			;    if (Carry)
			;        return 0;
			;    return 1;
			;}
			;
			;
			;
			;bit operator<= _f24_LE_f24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_f24_LE_f24
			;    Carry = 1;
			;    if (!(arg1f24.high8 | arg2f24.high8))
			;        return Carry;
			;    if (!arg1f24.15)  {
			;        Carry = 0;
			;        if (arg2f24.15)
			;            return Carry;
			;        W = arg2f24.low8 - arg1f24.low8;
			;        genSubW( arg2f24.mid8, arg1f24.mid8);
			;        genSubW( arg2f24.high8, arg1f24.high8);
			;        return Carry;
			;    }
			;    if (!arg2f24.15)
			;        return Carry;
			;    W = arg1f24.low8 - arg2f24.low8;
			;    genSubW( arg1f24.mid8, arg2f24.mid8);
			;    genSubW( arg1f24.high8, arg2f24.high8);
			;    return Carry;

  ; FILE C:\PIC\CC8E\MATH16.H
			;// SIZE
			;
			;#pragma library 1
			;/*
			;uns16 operator* _mult8x8( uns8 arg1, uns8 arg2);
			;uns16 operator* _multU16x8( uns16 arg1, uns8 arg2);
			;uns16 operator* _mult16x16( uns16 arg1, uns16 arg2);
			;uns16 operator/ _divU16_8( uns16 arg1, uns8 arg2);
			;uns16 operator/ _divU16_16( uns16 arg1, uns16 arg2);
			;int16 operator/ _divS16_8( int16 arg1, int8 arg2);
			;int16 operator/ _divS16_16( int16 arg1, int16 arg2);
			;uns8 operator% _remU16_8( uns16 arg1, uns8 arg2);
			;uns16 operator% _remU16_16( uns16 arg1, uns16 arg2);
			;int8 operator% _remS16_8( int16 arg1, int8 arg2);
			;int16 operator% _remS16_16( int16 arg1, int16 arg2);
			;*/
			;
			;#if __CoreSet__ < 1600
			; #define genAdd(r,a) W=a; btsc(Carry); W=incsz(a); r+=W
			; #define genSub(r,a) W=a; btss(Carry); W=incsz(a); r-=W
			; #define genAddW(r,a) W=a; btsc(Carry); W=incsz(a); W=r+W
			; #define genSubW(r,a) W=a; btss(Carry); W=incsz(a); W=r-W
			;#else
			; #define genAdd(r,a) W=a; r=addWFC(r)
			; #define genSub(r,a) W=a; r=subWFB(r)
			; #define genAddW(r,a) W=a; W=addWFC(r)
			; #define genSubW(r,a) W=a; W=subWFB(r)
			;#endif
			;
			;#if __CoreSet__ == 1700 || __CoreSet__ == 1800
			; #define hw_mult8x8(a,b)  W = a; multiply(b)
			; #define loRES PRODL
			; #define hiRES PRODH
			;#endif
			;
			;#if __CoreSet__ == 2000
			; #define hw_mult8x8(a,b)  W = a; multiply(b)
			; #define loRES W
			; #define hiRES MULH
			;#endif
			;
			;
			;
			;#ifdef hw_mult8x8
			;
			;inline int16 operator*( int8 arg1, int8 arg2);
			;inline uns16 operator*( uns8 arg1, uns8 arg2);
			;inline int16 operator*( int8 arg1, int16 arg2);
			;inline uns16 operator*( uns8 arg1, uns16 arg2);
			;inline int16 operator*( int16 arg1, int8 arg2);
			;inline uns16 operator*( uns16 arg1, uns8 arg2);
			;inline int16 operator*( int16 arg1, int16 arg2);
			;inline uns16 operator*( uns16 arg1, uns16 arg2);
			;
			;#undef hw_mult8x8
			;#undef loRES
			;#undef hiRES
			;
			;#else
			;
			;int8 operator*( int8 arg1, int8 arg2)  @
			;
			;uns16 operator* _mult8x8( uns8 arg1, uns8 arg2)
			;{
			;    uns16 rval;
			;    char counter = sizeof(arg2)*8;
			;    rval.high8 = 0;
			;    W = arg1;
			;    do  {
			;        arg2 = rr( arg2);
			;        if (Carry)
			;            rval.high8 += W;
			;        rval = rr( rval);
			;        counter = decsz(counter);
			;    } while (1);
			;    return rval;
			;}
			;
			;
			;uns16 operator*( uns8 arg1, uns16 arg2) exchangeArgs @
			;
			;uns16 operator* _multU16x8( uns16 arg1, uns8 arg2)
			;{
			;    uns16 rval;
			;    uns8 rvalH = 0;
			;    char counter = sizeof(arg1)*8;
			;    W = arg2;
			;    do  {
			;        arg1 = rr( arg1);
			;        if (Carry)
			;            rvalH += W;
			;        rvalH = rr(rvalH);
			;        rval = rr(rval);
			;        counter = decsz(counter);
			;    } while (1);
			;    return rval;
			;}
			;
			;
			;int16 operator*( int16 arg1, int16 arg2) @
			;
			;uns16 operator* _mult16x16( uns16 arg1, uns16 arg2)
			;{
			;    uns16 rval;
			;    char counter = sizeof(arg1)*8;
			;    do  {
			;        Carry = 0;
			;        rval = rl( rval);
			;        arg1 = rl( arg1);
			;        if (Carry)
			;            rval += arg2;
			;        counter = decsz(counter);
			;    } while (1);
			;    return rval;
			;}
			;
			;#endif
			;
			;
			;uns16 operator/ _divU16_8( uns16 arg1, uns8 arg2)
			;{
_divU16_8
	MOVLB 0
	MOVWF arg2,1
			;    uns8 rm = 0;
	CLRF  rm,1
			;    char counter = sizeof(arg1)*8+1;
	MOVLW 17
	MOVWF counter_2,1
			;    goto ENTRY_ML;
	BRA   m059
			;    do  {
			;        rm = rl( rm);
m058	MOVLB 0
	RLCF  rm,1,1
			;        uns8 tmp = rl( tmp);
	RLCF  tmp,1,1
			;        W = rm - arg2;
	MOVF  arg2,W,1
	SUBWF rm,W,1
			;        if (tmp&1)
	BTFSC tmp,0,1
			;            Carry = 1;
	BSF   0xFD8,Carry,0
			;        if (Carry)
	BTFSS 0xFD8,Carry,0
	BRA   m059
			;            rm = W;
	MOVLB 0
	MOVWF rm,1
			;       ENTRY_ML:
			;        arg1 = rl( arg1);
m059	MOVLB 0
	RLCF  arg1,1,1
	RLCF  arg1+1,1,1
			;        counter = decsz(counter);
	DECFSZ counter_2,1,1
			;    } while (1);
	BRA   m058
			;    return arg1;
	MOVF  arg1,W,1
	RETURN
			;}
			;
			;
			;uns16 operator/ _divU16_16( uns16 arg1, uns16 arg2)
			;{
_divU16_16
			;    uns16 rm = 0;
	MOVLB 0
	CLRF  rm_2,1
	CLRF  rm_2+1,1
			;    char counter = sizeof(arg1)*8+1;
	MOVLW 17
	MOVWF counter_3,1
			;    goto ENTRY_ML;
	BRA   m061
			;    do  {
			;        rm = rl( rm);
m060	MOVLB 0
	RLCF  rm_2,1,1
	RLCF  rm_2+1,1,1
			;        W = rm.low8 - arg2.low8;
	MOVF  arg2_2,W,1
	SUBWF rm_2,W,1
			;        genSubW( rm.high8, arg2.high8);
	MOVF  arg2_2+1,W,1
	SUBWFB rm_2+1,W,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            goto ENTRY_ML;
	BRA   m061
			;        rm.high8 = W;
	MOVLB 0
	MOVWF rm_2+1,1
			;        rm.low8 -= arg2.low8;
	MOVF  arg2_2,W,1
	SUBWF rm_2,1,1
			;        Carry = 1;
	BSF   0xFD8,Carry,0
			;       ENTRY_ML:
			;        arg1 = rl( arg1);
m061	MOVLB 0
	RLCF  arg1_2,1,1
	RLCF  arg1_2+1,1,1
			;        counter = decsz(counter);
	DECFSZ counter_3,1,1
			;    } while (1);
	BRA   m060
			;    return arg1;
	MOVF  arg1_2,W,1
	RETURN
			;}
			;
			;
			;int8  operator/ (int8 arg1, int8 arg2) @
			;
			;int16 operator/ _divS16_8( int16 arg1, int8 arg2)
			;{
_divS16_8
			;    uns8 rm = 0;
			;    char counter = 16+1;
			;    char sign = arg1.high8 ^ arg2.high8;
			;    if (arg1 < 0)  {
			;       INVERT_ML:
			;        arg1 = -arg1;
			;        if (!counter)
			;            return arg1;
			;    }
			;    if (arg2 < 0)
			;        arg2 = -arg2;
			;    goto ENTRY_ML;
			;    do  {
			;        rm = rl( rm);
			;        W = rm - arg2;
			;        if (Carry)
			;            rm = W;
			;       ENTRY_ML:
			;        arg1 = rl( arg1);
			;        counter = decsz(counter);
			;    } while (1);
			;    if (sign & 0x80)
			;        goto INVERT_ML;
			;    return arg1;
			;}
			;
			;
			;int16 operator/ _divS16_16( int16 arg1, int16 arg2)
			;{
_divS16_16
			;    uns16 rm = 0;
			;    char counter = sizeof(arg1)*8+1;
			;    char sign = arg1.high8 ^ arg2.high8;
			;    if (arg1 < 0)  {
			;       INVERT_ML:
			;        arg1 = -arg1;
			;        if (!counter)
			;            return arg1;
			;    }
			;    if (arg2 < 0)
			;        arg2 = -arg2;
			;    goto ENTRY_ML;
			;    do  {
			;        rm = rl( rm);
			;        W = rm.low8 - arg2.low8;
			;        genSubW( rm.high8, arg2.high8);
			;        if (!Carry)
			;            goto ENTRY_ML;
			;        rm.high8 = W;
			;        rm.low8 -= arg2.low8;
			;        Carry = 1;
			;       ENTRY_ML:
			;        arg1 = rl( arg1);
			;        counter = decsz(counter);
			;    } while (1);
			;    if (sign & 0x80)
			;        goto INVERT_ML;
			;    return arg1;
			;}
			;
			;
			;uns8 operator% _remU16_8( uns16 arg1, uns8 arg2)
			;{
_remU16_8
	MOVLB 0
	MOVWF arg2_5,1
			;    uns8 rm = 0;
	CLRF  rm_5,1
			;    char counter = sizeof(arg1)*8;
	MOVLW 16
	MOVWF counter_6,1
			;    do  {
			;        arg1 = rl( arg1);
m062	MOVLB 0
	RLCF  arg1_5,1,1
	RLCF  arg1_5+1,1,1
			;        rm = rl( rm);
	RLCF  rm_5,1,1
			;        uns8 tmp = rl( tmp);
	RLCF  tmp_2,1,1
			;        W = rm - arg2;
	MOVF  arg2_5,W,1
	SUBWF rm_5,W,1
			;        if (tmp&1)
	BTFSC tmp_2,0,1
			;            Carry = 1;
	BSF   0xFD8,Carry,0
			;        if (Carry)
	BTFSS 0xFD8,Carry,0
	BRA   m063
			;            rm = W;
	MOVLB 0
	MOVWF rm_5,1
			;        counter = decsz(counter);
m063	MOVLB 0
	DECFSZ counter_6,1,1
			;    } while (1);
	BRA   m062
			;    return rm;
	MOVF  rm_5,W,1
	RETURN
			;}
			;
			;
			;uns16 operator% _remU16_16( uns16 arg1, uns16 arg2)
			;{
_remU16_16
			;    uns16 rm = 0;
	MOVLB 0
	CLRF  rm_6,1
	CLRF  rm_6+1,1
			;    char counter = sizeof(arg1)*8;
	MOVLW 16
	MOVWF counter_7,1
			;    do  {
			;        arg1 = rl( arg1);
m064	MOVLB 0
	RLCF  arg1_6,1,1
	RLCF  arg1_6+1,1,1
			;        rm = rl( rm);
	RLCF  rm_6,1,1
	RLCF  rm_6+1,1,1
			;        W = rm.low8 - arg2.low8;
	MOVF  arg2_6,W,1
	SUBWF rm_6,W,1
			;        genSubW( rm.high8, arg2.high8);
	MOVF  arg2_6+1,W,1
	SUBWFB rm_6+1,W,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            goto NOSUB;
	BRA   m065
			;        rm.high8 = W;
	MOVLB 0
	MOVWF rm_6+1,1
			;        rm.low8 -= arg2.low8;
	MOVF  arg2_6,W,1
	SUBWF rm_6,1,1
			;      NOSUB:
			;        counter = decsz(counter);
m065	MOVLB 0
	DECFSZ counter_7,1,1
			;    } while (1);
	BRA   m064
			;    return rm;
	MOVF  rm_6,W,1
	RETURN
			;}
			;
			;
			;int8 operator% (int8 arg1, int8 arg2) @
			;
			;int8 operator% _remS16_8( int16 arg1, int8 arg2)
			;{
_remS16_8
			;    int8 rm = 0;
			;    char counter = 16;
			;    char sign = arg1.high8;
			;    if (arg1 < 0)
			;        arg1 = -arg1;
			;    if (arg2 < 0)
			;        arg2 = -arg2;
			;    do  {
			;        arg1 = rl( arg1);
			;        rm = rl( rm);
			;        W = rm - arg2;
			;        if (Carry)
			;            rm = W;
			;        counter = decsz(counter);
			;    } while (1);
			;    if (sign & 0x80)
			;        rm = -rm;
			;    return rm;
			;}
			;
			;
			;int16 operator% _remS16_16( int16 arg1, int16 arg2)
			;{
_remS16_16
			;    int16 rm = 0;
			;    char counter = sizeof(arg1)*8;
			;    char sign = arg1.high8;
			;    if (arg1 < 0)
			;        arg1 = -arg1;
			;    if (arg2 < 0)
			;        arg2 = -arg2;
			;    do  {
			;        arg1 = rl( arg1);
			;        rm = rl( rm);
			;        W = rm.low8 - arg2.low8;
			;        genSubW( rm.high8, arg2.high8);
			;        if (!Carry)
			;            goto NOSUB;
			;        rm.high8 = W;
			;        rm.low8 -= arg2.low8;
			;      NOSUB:
			;        counter = decsz(counter);
			;    } while (1);
			;    if (sign & 0x80)
			;        rm = -rm;
			;    return rm;

  ; FILE C:\PIC\CC8E\MATH24LB.H
			;// *************************************************
			;// 24 bit floating point math functions
			;// Copyright (c) B Knudsen Data, Norway, 2000 - 2006
			;// *************************************************
			;
			;#pragma library 1
			;/* PROTOTYPES for page definition in application header file:
			;float24 log( float24 arg1f24);
			;float24 log10( float24 arg1f24);
			;float24 exp10( float24 arg1f24);
			;float24 exp( float24 arg1f24);
			;float24 cos( float24 arg1f24);
			;float24 sin( float24 arg1f24);
			;float24 sqrt( float24 arg1f24);
			;*/
			;
			;#ifndef FpFlags_defined
			; #error The basic 24 bit floating point math library must be included first
			;#endif
			;
			;#if __CoreSet__ / 100 == 12
			; #error Math functions (exp,log,..) are not adapted to 12 bit core devices
			;#endif
			;
			;#if __CoreSet__ < 1600
			; #define genAdd(r,a) W=a; btsc(Carry); W=incsz(a); r+=W
			; #define genSub(r,a) W=a; btss(Carry); W=incsz(a); r-=W
			; #define genAddW(r,a) W=a; btsc(Carry); W=incsz(a); W=r+W
			; #define genSubW(r,a) W=a; btss(Carry); W=incsz(a); W=r-W
			;#else
			; #define genAdd(r,a) W=a; r=addWFC(r)
			; #define genSub(r,a) W=a; r=subWFB(r)
			; #define genAddW(r,a) W=a; W=addWFC(r)
			; #define genSubW(r,a) W=a; W=subWFB(r)
			;#endif
			;
			;
			;float24 log( sharedM float24 arg1f24)
			;{
log
			;    sharedM float24 arg2f24;
			;
			;    if (arg1f24.mid8 & 0x80)  //  test for negative argument
			;        goto _DOMERR32;
			;    if (!arg1f24.high8)   //  test for zero argument
			;        goto _DOMERR32;
			;
			;    char savedFlags = FpFlags;   //  save rounding flag
			;    FpFlags |= 0x40;  //  enable rounding
			;
			;    char xexp = arg1f24.high8 - (FpBIAS-1);
			;    arg1f24.high8 = FpBIAS-1;
			;
			;    arg2f24 = 1.0;
			;
			;    //  .70710678118655 = 7E3504F3
			;    W = arg1f24.low8 - 0x05;
			;    W = 0x35;
			;    if (!Carry)
			;        W = 0x35+1;
			;    W = arg1f24.mid8 - W;
			;
			;    if (Carry)
			;        arg1f24 -= arg2f24;
			;    else  {
			;        arg1f24.high8 += 1;  /* arg1f24 *= 2; */
			;        arg1f24 -= arg2f24;
			;        xexp -= 1;
			;    }
			;
			;    float24 d = arg1f24;  //  save z
			;
			;    // POLL132  LOG32Q,2,0  ; Q(z)
			;    arg1f24 += 0.33339502905E+1; /* LOG32Q1 */
			;    arg1f24 *= d;
			;    arg1f24 += 0.24993759223E1;  /* LOG32Q0 */
			;    float24 c = arg1f24;
			;
			;     //   minimax rational approximation  z-.5*z*z+z*(z*z*P(z)/Q(z))
			;    // POL32  LOG32P,1,0  ; P(z)
			;    arg1f24 = d;
			;    arg1f24 *= 0.48646956294; /* LOG32P1 */
			;    arg1f24 += 0.83311400452; /* LOG32P0 */
			;
			;    c = arg1f24 / c;   //  P(z)/Q(z)
			;
			;    W = d.high8;  arg1f24.high8 = W;  arg2f24.high8 = W;
			;    W = d.mid8;   arg1f24.mid8 = W;   arg2f24.mid8 = W;
			;    W = d.low8;   arg1f24.low8 = W;   arg2f24.low8 = W;
			;
			;    arg1f24 *= arg2f24;       // z * z;
			;
			;    float24 e = arg1f24;
			;    arg1f24 *= c;          //  z*z*P(z)/Q(z)
			;    arg1f24 *= d;          //  z*(z*z*P(z)/Q(z))
			;
			;    arg2f24 = e;
			;    if (arg2f24.high8)
			;        arg2f24.high8 --;  // arg2f24 *= 0.5;
			;    arg1f24 -= arg2f24;       //  -.5*z*z + z*(z*z*P(z)/Q(z))
			;    arg1f24 += d;          //  z -.5*z*z + z*(z*z*P(z)/Q(z))
			;
			;    if (!xexp)
			;        goto _RETURN_MF;
			;
			;    e = arg1f24;  //  save
			;
			;    // integer to floating point conversion
			;    arg1f24 = (int8) xexp;
			;
			;    d = arg1f24;  //  save k
			;
			;    arg1f24 *= -0.000212194440055;
			;
			;    arg1f24 += e;   //  log(1+z) + k*log(2)
			;
			;    e = arg1f24;  //  save
			;
			;    arg1f24 = d * 0.693359375;
			;
			;    arg1f24 += e;      //  log(1+z) + k*log(2)
			;
			;    if (!(savedFlags & 0x40))
			;        FpFlags &= ~0x40;   //  restore rounding flag
			;    goto _RETURN_MF;
			;
			;  _DOMERR32:
			;    FpDomainError = 1;   //  domain error
			;
			;  _RETURN_MF:
			;    return arg1f24;
			;}
			;
			;
			;
			;float24 log10( sharedM float24 arg1f24)
			;{
log10
			;    sharedM float24 arg2f24;      // allocation 'trick'
			;
			;    char flags = FpFlags;
			;    FpFlags |= 0x40;
			;
			;    arg1f24 = log( arg1f24);
			;
			;    arg1f24 *= 0.43429448190325;  //  log10(e);
			;
			;    if (!(flags & 0x40))
			;        FpFlags &= ~0x40;
			;
			;    return arg1f24;
			;}
			;
			;
			;
			;char floorMaskTable24( char i)
			;{
floorMaskTable24
			;    if (i & 4)  {
			;        if (i & 2)  {
			;            if (i & 1)
			;                return 128;
			;            return 192;
			;        }
			;        if (i & 1)
			;            return 224;
			;        return 240;
			;    }
			;    if (i & 2)  {
			;        if (i & 1)
			;            return 248;
			;        return 252;
			;    }
			;    if (i & 1)
			;        return 254;
			;    return 255;
			;}
			;
			;float24 floor24( sharedM float24 arg1f24)
			;{
floor24
			;    if (!arg1f24.high8)
			;        goto _RETURN_MF;
			;
			;    uns16 ma = arg1f24.low16;  //  save mantissa
			;
			;    W = arg1f24.high8 - 127;
			;    char tmp = W;      // OPM
			;    if (tmp & 0x80)
			;        goto FLOOR24ZERO;
			;
			;    //  save number of zero bits
			;    W = 15 - W;
			;
			;    char tmpa = W;
			;    tmp = W;
			;
			;    if (tmp & 0x8)  // LSB+3		; divide by eight
			;        goto FLOOR24MASKH;
			;
			;
			;    W = floorMaskTable24( tmpa);    //  get mask
			;    arg1f24.low8 &= W;
			;    if (!(arg1f24.mid8 & 0x80))  //  if negative, round down
			;        goto _RETURN_MF;
			;
			;    char arg1B7 = W;
			;    if (!(arg1f24.low8 - ma.low8))
			;        goto _RETURN_MF;
			;
			;    tmp = ~arg1B7;
			;    arg1f24.low8 += tmp + 1;
			;    if (Zero_)
			;        arg1f24.mid8 += 1;
			;
			;    //  has rounding caused carryout?
			;    if (!Zero_)
			;        goto _RETURN_MF;
			;    arg1f24.mid8 = rr( arg1f24.mid8);
			;    arg1f24.low8 = rr( arg1f24.low8);
			;
			;    //  check for overflow
			;    arg1f24.high8 = incsz( arg1f24.high8);
			;    goto _RETURN_MF;
			;    goto OVERFLOW;
			;
			;
			;  FLOOR24MASKH:
			;    W = floorMaskTable24( tmpa);  //  get mask
			;    arg1f24.mid8 &= W;
			;    arg1f24.low8 = 0;
			;
			;    //  if negative, round down
			;    if (!(arg1f24.mid8 & 0x80))
			;        goto _RETURN_MF;
			;
			;    arg1B7 = W;
			;    if (( arg1f24.low8 - ma.low8) != 0)
			;        goto FLOOR24RNDH;
			;    if (!(arg1f24.mid8 - ma.mid8))
			;        goto _RETURN_MF;
			;
			;  FLOOR24RNDH:
			;    tmp = ~arg1B7;
			;    arg1f24.mid8 += tmp + 1;
			;
			;    //  has rounding caused carryout?
			;    if (!Carry)
			;        goto _RETURN_MF;
			;    arg1f24.mid8 = rr( arg1f24.mid8);
			;    arg1f24.low8 = rr( arg1f24.low8);
			;
			;    //  check for overflow
			;    arg1f24.high8 = incsz( arg1f24.high8);
			;    goto _RETURN_MF;
			;    goto OVERFLOW;
			;
			;
			;  FLOOR24ZERO:
			;    if (!(arg1f24.mid8 & 0x80))
			;        goto RES0;
			;    return -1.0;
			;
			;  RES0:
			;    W = 0;
			;    goto ASSIGNW;
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
			;    W = 0xFF;
			;  ASSIGNW:
			;    arg1f24.low8 = W;
			;    arg1f24.mid8 = W;
			;    arg1f24.high8 = W;
			;
			;  _RETURN_MF:
			;    return arg1f24;
			;}
			;
			;
			;
			;float24 exp10( sharedM float24 arg1f24)
			;{
exp10
			;    sharedM float24 arg2f24;      // allocation 'trick'
			;    float24 c, d;
			;    char xexp;
			;
			;    if (( arg1f24.high8 - 100) & 0x80)
			;        goto EXP1;   //  return e**x = 1
			;
			;    W = 132 - arg1f24.high8;
			;    if (!Carry)
			;        goto _DOMERR;
			;    if (!Zero_)
			;        goto ARGOK;
			;
			;    if (!(arg1f24.mid8 & 0x80))  {
			;        //  positive domain check
			;        W = 26 - arg1f24.mid8;
			;        if (!Carry)
			;            goto _DOMERR;
			;        if (!Zero_)
			;            goto ARGOK;
			;
			;        W = 33 - arg1f24.low8;
			;        if (!Carry)
			;            goto _DOMERR;
			;    }
			;    else  {
			;
			;        W = 151 - arg1f24.mid8;
			;        if (!Carry)
			;            goto _DOMERR;
			;        if (!Zero_)
			;            goto ARGOK;
			;
			;        W = 184 - arg1f24.low8;
			;        if (!Carry)
			;            goto _DOMERR;
			;    }
			;
			;  ARGOK:
			;
			;    char savedFlags = FpFlags;
			;    FpFlags |= 0x40;  //  enable rounding
			;
			;    c = arg1f24;  //  save x
			;    arg1f24 *= 3.32192809489;  //  1/log10(2) = 3.32192809489
			;    arg1f24 += 0.5;  //  k = [ x / log10(2) + .5 ]
			;    arg1f24 = floor24( arg1f24);
			;
			;    float24 e = arg1f24; //  save float k
			;    FpFlags &= ~0x40;
			;    //floating point to integer conversion
			;    xexp = arg1f24; //  k = [ x / ln(2) + .5 ]
			;    FpFlags |= 0x40;
			;    arg1f24 = e * -0.30078125; //  c1
			;    d = arg1f24 + c;
			;    arg1f24 = e * -2.487456637421670e-04;  // c2
			;    arg1f24 += d;
			;    d = arg1f24;  //  save f
			;
			;    if (!(d.mid8 & 0x80))  {
			;        // POL32  EXP1032H,5,4   ; minimax approximation on [0,log10(2)/2]
			;        arg1f24 *= 6.388992868121E-1;/* EXP1032H5 */
			;        arg1f24 += 1.154596329197E0; /* EXP1032H4 */
			;        arg1f24 *= d;
			;        arg1f24 += 2.035920309947E0; /* EXP1032H3 */
			;        arg1f24 *= d;
			;        arg1f24 += 2.650909138708E0; /* EXP1032H2 */
			;        arg1f24 *= d;
			;        arg1f24 += 2.302585504840E0; /* EXP1032H1 */
			;    }
			;    else  {
			;        // POL32 EXP1032L,5,4  ; minimax approximation on [-log10(2)/2,0]
			;        arg1f24 *= 4.544952589676E-1;/* EXP1032L5 */
			;        arg1f24 += 1.157459289066E0; /* EXP1032L4 */
			;        arg1f24 *= d;
			;        arg1f24 += 2.033640565225E0; /* EXP1032L3 */
			;        arg1f24 *= d;
			;        arg1f24 += 2.650914554552E0; /* EXP1032L2 */
			;        arg1f24 *= d;
			;        arg1f24 += 2.302584716116E0; /* EXP1032L1 */
			;    }
			;    arg1f24 *= d;
			;    if (!(savedFlags & 0x40))
			;        FpFlags &= ~0x40;
			;    arg1f24 += 1.0; /* EXP1032H0/EXP1032L0 */
			;
			;    arg1f24.high8 += xexp;
			;    goto _RETURN_MF;
			;
			;  EXP1:
			;    arg1f24 = 1.0;   //  return 10**x = 1.0
			;    goto _RETURN_MF;
			;
			;  _DOMERR:
			;    FpDomainError = 1;   //  domain error
			;
			;  _RETURN_MF:
			;    return arg1f24;
			;}
			;
			;
			;
			;float24 exp( sharedM float24 arg1f24)
			;//     Maximum argument : 88.7228391117 = log(2**128)
			;//     Minimum argument : -87.3365447506 = log(2**-126)
			;{
exp
			;    sharedM float24 arg2f24;
			;    float24 c, d;
			;    char xexp;
			;
			;    if (( arg1f24.high8 - 94) & 0x80)
			;        goto EXP1;   //  return e**x = 1
			;
			;    W = 133 - arg1f24.high8;
			;    if (!Carry)
			;        goto _DOMERR;
			;    if (!Zero_)
			;        goto ARGOK;
			;
			;    if (!(arg1f24.mid8 & 0x80))  {
			;
			;        W = 49 - arg1f24.mid8;
			;        if (!Carry)
			;            goto _DOMERR;
			;        if (!Zero_)
			;            goto ARGOK;
			;
			;        W = 114 - arg1f24.midL8;
			;        if (!Carry)
			;            goto _DOMERR;
			;    }
			;    else {
			;
			;        W = 174 - arg1f24.mid8;
			;        if (!Carry)
			;            goto _DOMERR;
			;        if (!Zero_)
			;            goto ARGOK;
			;
			;        W = 172 - arg1f24.midL8;
			;        if (!Carry)
			;            goto _DOMERR;
			;    }
			;
			;  ARGOK:
			;
			;    char savedFlags = FpFlags;
			;    FpFlags |= 0x40;  //  enable rounding
			;
			;    c = arg1f24;  //  save x
			;    arg1f24 *= 1.44269504089;
			;    arg1f24 += 0.5; //  k = [ x / ln(2) + .5 ]
			;    arg1f24 = floor24( arg1f24);
			;
			;    float24 e = arg1f24;
			;    xexp = arg1f24;   //  k = [ x / ln(2) + .5 ]
			;    arg1f24 = e * -0.69140625; // c1
			;    d = arg1f24 + c;
			;    arg1f24 = e * -1.740930559945286e-03;  // c2
			;    arg1f24 += d;
			;    d = arg1f24;  //  save f
			;
			;    if (!(d.mid8 & 0x80))  {
			;        // POL32   EXP32H,5,0
			;        arg1f24 *= 0.989943653774E-2; /* EXP32H5 */
			;        arg1f24 += 0.410473706887E-1; /* EXP32H4 */
			;        arg1f24 *= d;
			;        arg1f24 += 0.166777360103;    /* EXP32H3 */
			;        arg1f24 *= d;
			;        arg1f24 += 0.499991163105;    /* EXP32H2 */
			;        arg1f24 *= d;
			;        arg1f24 += 1.00000025499;     /* EXP32H1 */
			;    }
			;    else  {
			;        // POL32   EXP32L,5,0
			;        arg1f24 *= 0.699995870637E-2; /* EXP32L5 */
			;        arg1f24 += 0.411548782678E-1; /* EXP32L4 */
			;        arg1f24 *= d;
			;        arg1f24 += 0.166574299807;    /* EXP32L3 */
			;        arg1f24 *= d;
			;        arg1f24 += 0.499992371926;    /* EXP32L2 */
			;        arg1f24 *= d;
			;        arg1f24 += 0.999999766814;    /* EXP32L1 */
			;    }
			;    arg1f24 *= d;
			;    arg1f24 += 1.0;   /* EXP32H0 or EXP32L0 */
			;    arg1f24.high8 += xexp;
			;
			;    if (!(savedFlags & 0x40))
			;        FpFlags &= ~0x40;   //  restore rounding flag
			;    goto _RETURN_MF;
			;
			;  EXP1:
			;    arg1f24 = 1.0;   //  return 10**x = 1.0
			;    goto _RETURN_MF;
			;
			;  _DOMERR:
			;    FpDomainError = 1;   //  domain error
			;
			;  _RETURN_MF:
			;    return arg1f24;
			;}
			;
			;
			;
			;
			;
			;
			;float24 cosin24( sharedM float24 arg1f24, sharedM float24 arg2f24, char cosinus)
			;{
cosin24
			;    float24 c, d;
			;    char j;
			;
			;    char savedFlags = FpFlags;  //  save rounding flag
			;    FpFlags |= 0x40;  //  enable rounding
			;
			;    char csign = 0;    //  initialize sign
			;
			;    if (!cosinus  &&  (arg1f24.mid8 & 0x80))
			;        csign |= 0x80;
			;
			;    arg1f24.mid8 &= ~0x80;  //  use |x|
			;
			;    //  loss threshold check
			;    // arg1f24 <= +512.0
			;    // arg1f24 >= -512.0
			;    if (arg1f24.high8 >= 0x88)
			;        FpDomainError = 1;   //  domain error
			;
			;    c = arg1f24;  //  save |x|
			;
			;    // fixed point multiplication by 4/pi
			;    arg1f24 *= 1.27323954474;   // 4/pi
			;
			;    FpFlags &= ~0x40;
			;
			;    //  y = [ |x| * (4/pi) ]
			;    arg1f24.low16 = arg1f24;  // floating point to integer conversion
			;
			;    FpFlags |= 0x40;
			;
			;    if (arg1f24.low8 & 0x1)
			;        arg1f24.low16 += 1;  // make arg1f24 even
			;
			;    //  j = y mod 8
			;    j = arg1f24.low8 & 7;  // 0,2,4,6
			;    if (j >= 4)  {
			;        csign ^= 128;
			;        j -= 4;
			;    }
			;
			;    arg1f24 = arg1f24.low16;  // integer to floating point conversion
			;
			;    //  save y in DARG
			;    W = arg1f24.high8;
			;    d.high8 = W;
			;   #if __CoreSet__ / 100 == 17
			;    if (W == 0)  // NB17
			;        goto ZEQX;
			;   #else
			;    if (Zero_)
			;        goto ZEQX;
			;   #endif
			;    d.low16 = arg1f24.low16;
			;
			;    arg1f24 *= -7.851562500000000e-01;
			;    c = arg1f24 + c;    //  z1 = |x| - y * (p1)
			;    arg1f24 = d * -2.419133974475018e-04;
			;    arg1f24 += c;
			;
			;    //  save z in c
			;    W = arg1f24.high8;  c.high8 = W;  arg2f24.high8 = W;
			;    W = arg1f24.mid8;   c.mid8 = W;   arg2f24.mid8 = W;
			;    W = arg1f24.low8;   c.low8 = W;   arg2f24.low8 = W;
			;
			;    goto POLYNOM;
			;
			;   ZEQX:
			;    W = c.high8;  arg1f24.high8 = W;  arg2f24.high8 = W;
			;    W = c.mid8;   arg1f24.mid8 = W;   arg2f24.mid8 = W;
			;    W = c.low8;   arg1f24.low8 = W;   arg2f24.low8 = W;
			;
			;   POLYNOM:
			;
			;    arg1f24 *= arg2f24;   // z * z
			;    d = arg1f24;   //  save z * z
			;
			;    if ((( rr( j) ^ j) & 0x1) ^ cosinus)  {
			;        // POL24  COS24,3,0
			;
			;        arg1f24 *= -1.35859090e-03;  // 117,178,18,191
			;        arg1f24 += 4.16550264e-02;   // 122,42,158,118
			;        arg1f24 *= d;
			;        arg1f24 += -4.99998569e-01;  // 125,255,255,208
			;        arg1f24 *= d;
			;        arg1f24 += 1.0;
			;    }
			;    else  {
			;        /// POL24  SIN24,2,0
			;        arg1f24 *= 8.12155753e-03;   // 120,5,16,72
			;        arg1f24 += -1.66601613e-01;  // 124,170,153,157
			;        arg1f24 *= d;
			;        arg1f24 += 9.99994993e-01;   // 126,127,255,172
			;        arg1f24 *= c;
			;    }
			;
			;    W = 128;  // LSB+1
			;    if (cosinus  &&  (j & 0x2))   // NB17
			;        csign ^= W;
			;    if (csign & 0x80)
			;        arg1f24.mid8 ^= W;
			;
			;    if (savedFlags & 0x40)
			;        FpFlags |= 0x40;  //  restore rounding flag
			;    return arg1f24;
			;}
			;
			;
			;float24 cos( sharedM float24 arg1f24)
			;{
cos
			;    sharedM float24 arg2f24;      // allocation 'trick'
			;    arg1f24 = cosin24( arg1f24, arg2f24, 1);
			;    return arg1f24;
			;}
			;
			;
			;float24 sin( sharedM float24 arg1f24)
			;{
sin
			;    sharedM float24 arg2f24;      // allocation 'trick'
			;    arg1f24 = cosin24( arg1f24, arg2f24, 0);
			;    return arg1f24;
			;}
			;
			;
			;
			;#if !defined __CC8EFREE__
			;
			;float24 sqrt( float24 arg)
			;// Copyright (c) Jim van Zee, Seattle, WA., 2004
			;{
			;    uns8 arg_exp @ arg.high8;    // arg exponent (offset by FpBIAS)
			;    uns24 root = 0;              // result (treated as an integer)
			;    float24 sqrtf @ root;        // result (treated as a float)
			;    uns24 remain;
			;    uns8 nr_bits;
			;
			;    if (arg.mid8 & 0x80) {  // test for negative argument
			;        FpDomainError=1;
			;        goto END;           // negative #s return '0'
			;    }
			;    if (!arg_exp)
			;        goto END;           // 0->0 (all bytes are 0)
			;
			;    arg.15 = 1;             // restore hidden bit
			;    remain = 0;             // clear remainder
			;    nr_bits = 16;           // initialize bit count
			;
			;    // Here's a 'tricky bit': 'even' exponents work out OK, but 'odd'
			;    // exponents need one less shift initially in order to align the
			;    // bits in a 'powers-of-four' pattern (two-bits-at-a-time).
			;
			;    btss(arg_exp.0);          // skip if exponent is odd
			;    do {
			;        remain.23=1;          // set 2x shift flag
			;        root = rl(root);        // exponent= 'spill byte'
			;        root.0=1;               // add '1' to form '2N+1'
			;        root.1=0;               // clear next root bit
			;        do {
			;            arg.low16 = rl(arg.low16); // shift mantissa into 'remain'
			;            remain = rl(remain);       // two-bits-at-a-time (add 0's)
			;        } while(Carry);         // Carry=1 the first time
			;        arg.0=0;                // clear the carry-in bit
			;
			;        // now compare root and remainder; if remain >= root, subtract
			;        // to get the new remainder & set bit=1; otherwise leave bit=0.
			;
			;        //        if (remain >= root) // 3-byte compare
			;        //        {   remain -= root; // update remainder
			;        //            root.1 = 1;   } // set this bit = 1
			;
			;        W = remain.low8 - root.low8;  // compare remain w/root
			;        genSubW( remain.mid8, root.mid8);
			;        genSubW( remain.high8, root.high8);
			;
			;        // If remain >= root, the next bit is '1', otherwise '0'
			;        if (Carry) {          // remain -= root;
			;            remain.high8 = W;   // save 'spill byte'
			;            remain.low8 -= root.low8;   // do subtraction
			;            genSub( remain.mid8, root.mid8);
			;            root.1 = 1; // note: lsb is bit1, not bit0!
			;        }
			;
			;    } while (--nr_bits); // 16 bit mantissa
			;
			;    // Finally unshift root (only need to do 16 bits, since msb->0!)
			;    root.low16 = rr(root.low16);       // '2N+1' -> 'N'
			;    root.15 = 0;            // clear hidden bit
			;
			;    // and set exponent = arg_exp/2 (we used this as the spill byte)
			;    arg_exp += FpBIAS;      // double the bias
			;    root.high8=rr(arg_exp); // root exp = arg_exp/2+FpBIAS
			;  END:
			;    return sqrtf;           // neg & zero args return 0
			;}
			;
			;#else
			;
			;float24 sqrt( sharedM float24 arg1f24)
			;{
sqrt
			;    sharedM float24 arg2f24;      // allocation 'trick'
			;
			;    if (arg1f24.mid8 & 0x80)     // test for negative argument
	MOVLB 0
	BTFSC arg1f24+1,7,1
			;        goto _DOMERR;
	BRA   m069
			;    if (!arg1f24.high8)          // return if argument zero
	MOVLB 0
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;        goto _RETURN_MF;
	BRA   m070
			;
			;    char cexp = arg1f24.high8;    // save exponent
	MOVFF arg1f24+2,cexp
			;    char savedFLAGS = FpFlags;
	MOVFF FpFlags,savedFLAGS
			;    FpFlags |= 0x40;           // enable rounding
	MOVLB 0
	BSF   FpFlags,6,1
			;
			;    arg1f24.high8 = FpBIAS;   // compute z
	MOVLW 127
	MOVWF arg1f24+2,1
			;    float24 d = arg1f24;
	MOVFF arg1f24,d_5
	MOVFF arg1f24+1,d_5+1
	MOVFF arg1f24+2,d_5+2
			;
			;    if (arg1f24.mid8 & 0x40)  {
	BTFSS arg1f24+1,6,1
	BRA   m066
			;        // POL24  SQRT24H,4,0
			;        arg1f24 *= -5.6351436252E-3;  // SQRT24H4
	MOVLW 167
	MOVWF arg2f24,1
	MOVLW 184
	MOVWF arg2f24+1,1
	MOVLW 119
	MOVWF arg2f24+2,1
	RCALL _fmul24
			;        arg1f24 += 5.5047377031E-2; // SQRT24H3
	MOVLW 121
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 97
	MOVWF arg2f24+1,1
	MOVLW 122
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;        arg1f24 *= d;
	MOVFF d_5,arg2f24
	MOVFF d_5+1,arg2f24+1
	MOVFF d_5+2,arg2f24+2
	RCALL _fmul24
			;        arg1f24 += -2.3944355047E-1;  // SQRT24H2
	MOVLW 49
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 245
	MOVWF arg2f24+1,1
	MOVLW 124
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;        arg1f24 *= d;
	MOVFF d_5,arg2f24
	MOVFF d_5+1,arg2f24+1
	MOVFF d_5+2,arg2f24+2
	RCALL _fmul24
			;        arg1f24 += 8.3106978456E-1; // SQRT24H1
	MOVLW 193
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 84
	MOVWF arg2f24+1,1
	MOVLW 126
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;        arg1f24 *= d;
	MOVFF d_5,arg2f24
	MOVFF d_5+1,arg2f24+1
	MOVFF d_5+2,arg2f24+2
	RCALL _fmul24
			;        arg1f24 += 3.5963132863E-1;  // SQRT24H0
	MOVLW 34
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 56
	MOVWF arg2f24+1,1
	MOVLW 125
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;    }
			;    else  {
	BRA   m067
			;        // POL24  SQRT24L,4,0
			;        arg1f24 *= -1.8702682470E-2;  // SQRT24L4
m066	MOVLW 54
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 153
	MOVWF arg2f24+1,1
	MOVLW 121
	MOVWF arg2f24+2,1
	RCALL _fmul24
			;        arg1f24 += 1.3009144111E-1; // SQRT24L3
	MOVLW 55
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 5
	MOVWF arg2f24+1,1
	MOVLW 124
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;        arg1f24 *= d;
	MOVFF d_5,arg2f24
	MOVFF d_5+1,arg2f24+1
	MOVFF d_5+2,arg2f24+2
	RCALL _fmul24
			;        arg1f24 += -4.0192034196E-1;  // SQRT24L2
	MOVLW 201
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 205
	MOVWF arg2f24+1,1
	MOVLW 125
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;        arg1f24 *= d;
	MOVFF d_5,arg2f24
	MOVFF d_5+1,arg2f24+1
	MOVFF d_5+2,arg2f24+2
	RCALL _fmul24
			;        arg1f24 += 9.8831235597E-1;  // SQRT24L1
	MOVLW 2
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 125
	MOVWF arg2f24+1,1
	MOVLW 126
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;        arg1f24 *= d;
	MOVFF d_5,arg2f24
	MOVFF d_5+1,arg2f24+1
	MOVFF d_5+2,arg2f24+2
	RCALL _fmul24
			;        arg1f24 += 3.0221977303E-1;  // SQRT24L0
	MOVLW 189
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 26
	MOVWF arg2f24+1,1
	MOVLW 125
	MOVWF arg2f24+2,1
	RCALL _fadd24
			;    }
			;
			;    if (!(cexp & 0x1))      // is cexp even or odd?
m067	MOVLB 0
	BTFSC cexp,0,1
	BRA   m068
			;        arg1f24 *= 1.41421356237;  // sqrt(2)
	MOVLW 5
	MOVWF arg2f24,1
	MOVLW 53
	MOVWF arg2f24+1,1
	MOVLW 127
	MOVWF arg2f24+2,1
	RCALL _fmul24
			;
			;    // divide exponent by two
			;    cexp += 127;
m068	MOVLW 127
	MOVLB 0
	ADDWF cexp,1,1
			;    arg1f24.high8 = rr( cexp);
	RRCF  cexp,W,1
	MOVWF arg1f24+2,1
			;
			;    if (!(savedFLAGS & 0x40))
	BTFSC savedFLAGS,6,1
	BRA   m070
			;        FpFlags &= ~0x40;
	BCF   FpFlags,6,1
			;
			;    goto _RETURN_MF;
	BRA   m070
			;
			;  _DOMERR:
			;    FpDomainError = 1;   //  domain error
m069	MOVLB 0
	BSF   0xD8,FpDomainError,1
			;
			;  _RETURN_MF:
			;    return arg1f24;
m070	MOVLB 0
	MOVF  arg1f24,W,1
	RETURN

  ; FILE Temporiz_64Mhz.h
			;void retardo_20u(void){
retardo_20u
			;	
			;		char PDel0;
			;		#asm
			;		;-------------------------------------------------------------
			;		DEMORA  movlw     .78       ; 1 set numero de repeticion 
	MOVLW 78
			;		        movwf     PDel0     ; 1 |
	MOVWF PDel0,1
			;		PLoop0  clrwdt              ; 1 clear watchdog
m071	CLRWDT
			;		        decfsz    PDel0, 1  ; 1 + (1) es el tiempo 0  ?
	DECFSZ PDel0,1,1
			;		        goto      PLoop0    ; 2 no, loop
	GOTO  m071
			;		PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m072
			;		PDelL2  clrwdt              ; 1 ciclo delay
m072	CLRWDT
			;		        return              ; 2+2 Fin.
	RETURN
			;		;-------------------------------------------------------------
			;		#endasm
			;	
			;}
			;void retardo_1m(void){
retardo_1m
			;	char PDel0,PDel1;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .15       ; 1 set numero de repeticion  (B)
	MOVLW 15
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_2,1
			;	PLoop1  movlw     .177      ; 1 set numero de repeticion  (A)
m073	MOVLW 177
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1,1
			;	PLoop2  clrwdt              ; 1 clear watchdog
m074	CLRWDT
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m075
			;	PDelL2  
			;	        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
m075	DECFSZ PDel1,1,1
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m074
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel0_2,1,1
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m073
			;	PDelL3  goto PDelL4         ; 2 ciclos delay
	GOTO  m076
			;	PDelL4  goto PDelL5         ; 2 ciclos delay
m076	GOTO  m077
			;	PDelL5  clrwdt              ; 1 ciclo delay
m077	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm
			;}
			;void retardo_50m(void){
retardo_50m
			;	char PDel0,PDel1,PDel2;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .18       ; 1 set numero de repeticion  (C)
	MOVLW 18
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_3,0
			;	PLoop0  movlw     .55       ; 1 set numero de repeticion  (B)
m078	MOVLW 55
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_2,0
			;	PLoop1  movlw     .201      ; 1 set numero de repeticion  (A)
m079	MOVLW 201
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m080	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m080
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_2,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m079
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_3,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m078
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m081
			;	PDelL2  clrwdt              ; 1 ciclo delay
m081	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm
			;}
			;void retardo_100m(void){
retardo_100m
			;	char PDel0,PDel1,PDel2;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .23       ; 1 set numero de repeticion  (C)
	MOVLW 23
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_4,0
			;	PLoop0  movlw     .59       ; 1 set numero de repeticion  (B)
m082	MOVLW 59
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_3,0
			;	PLoop1  movlw     .235      ; 1 set numero de repeticion  (A)
m083	MOVLW 235
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2_2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m084	CLRWDT
			;	        clrwdt              ; 1 ciclo delay
	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2_2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m084
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_3,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m083
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_4,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m082
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm
			;}
			;void retardo_500m(void){
retardo_500m
			;	char PDel0,PDel1,PDel2;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .54       ; 1 set numero de repeticion  (C)
	MOVLW 54
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_5,0
			;	PLoop0  movlw     .188      ; 1 set numero de repeticion  (B)
m085	MOVLW 188
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_4,0
			;	PLoop1  movlw     .196      ; 1 set numero de repeticion  (A)
m086	MOVLW 196
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2_3,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m087	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2_3,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m087
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_4,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m086
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_5,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m085
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m088
			;	PDelL2  clrwdt              ; 1 ciclo delay
m088	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm

  ; FILE LCD_4bit.h
			;
			;/*
			;	ESTA LIBRERIA NO SIRVE PARA LA PLACA DE PROTOTIPOS 
			;	°°°°°ES SOLO PARA LA PLACA DEL ONDULADOR!!!!!
			;*/
			;
			;void envia_codigo_inicial (char codigo)
			;{
envia_codigo_inicial
	MOVLB 0
	MOVWF codigo,1
			;	PORTB.5=0;nop();
	BCF   PORTB,5,0
	NOP  
			;	PORTB.3 = codigo.4;
	BTFSS codigo,4,1
	BCF   PORTB,3,0
	BTFSC codigo,4,1
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.2 = codigo.5;
	BTFSS codigo,5,1
	BCF   PORTB,2,0
	BTFSC codigo,5,1
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.1 = codigo.6;
	BTFSS codigo,6,1
	BCF   PORTB,1,0
	BTFSC codigo,6,1
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.0 = codigo.7;
	BTFSS codigo,7,1
	BCF   PORTB,0,0
	BTFSC codigo,7,1
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.4 = 1; 
	BSF   PORTB,4,0
			;	retardo_20u();
	RCALL retardo_20u
			;	PORTB.4 = 0; 
	BCF   PORTB,4,0
			;
			;	return;
	RETURN
			;}
			; 
			;void enviar_comando (char comando) 
			;{
enviar_comando
	MOVLB 0
	MOVWF comando,1
			;	
			;	PORTB.3 =  comando.4;nop();
	BTFSS comando,4,1
	BCF   PORTB,3,0
	BTFSC comando,4,1
	BSF   PORTB,3,0
	NOP  
			;	PORTB.2 =  comando.5;nop();
	BTFSS comando,5,1
	BCF   PORTB,2,0
	BTFSC comando,5,1
	BSF   PORTB,2,0
	NOP  
			;	PORTB.1 =  comando.6;nop();
	BTFSS comando,6,1
	BCF   PORTB,1,0
	BTFSC comando,6,1
	BSF   PORTB,1,0
	NOP  
			;	PORTB.0 =  comando.7;
	BTFSS comando,7,1
	BCF   PORTB,0,0
	BTFSC comando,7,1
	BSF   PORTB,0,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.5 = 0;  									// Modo comando.
	BCF   PORTB,5,0
			;	retardo_20u (); //
	RCALL retardo_20u
			;	PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	retardo_1m ();
	RCALL retardo_1m
			;	comando = swap (comando);
	MOVLB 0
	SWAPF comando,1,1
			;	PORTB.3 =  comando.4;nop();
	BTFSS comando,4,1
	BCF   PORTB,3,0
	BTFSC comando,4,1
	BSF   PORTB,3,0
	NOP  
			;	PORTB.2 =  comando.5;nop();
	BTFSS comando,5,1
	BCF   PORTB,2,0
	BTFSC comando,5,1
	BSF   PORTB,2,0
	NOP  
			;	PORTB.1 =  comando.6;nop();
	BTFSS comando,6,1
	BCF   PORTB,1,0
	BTFSC comando,6,1
	BSF   PORTB,1,0
	NOP  
			;	PORTB.0 =  comando.7;nop();
	BTFSS comando,7,1
	BCF   PORTB,0,0
	BTFSC comando,7,1
	BSF   PORTB,0,0
	NOP  
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.5 = 0;  									// Modo comando.
	BCF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	retardo_1m ();
	BRA   retardo_1m
			;	//leds_OFF (10);
			;	
			;	
			;	return;
			;}    
			;
			;void enviar_literal (char dato) 
			;{
enviar_literal
	MOVLB 0
	MOVWF dato,1
			;    char i;
			;
			;	
			;	PORTB.3 = dato.4;
	BTFSS dato,4,1
	BCF   PORTB,3,0
	BTFSC dato,4,1
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.5;
	BTFSS dato,5,1
	BCF   PORTB,2,0
	BTFSC dato,5,1
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.6;
	BTFSS dato,6,1
	BCF   PORTB,1,0
	BTFSC dato,6,1
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.0 = dato.7;
	BTFSS dato,7,1
	BCF   PORTB,0,0
	BTFSC dato,7,1
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;	for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_3,1
m089	MOVLW 7
	MOVLB 0
	CPFSLT i_3,1
	BRA   m090
	RCALL retardo_20u
	MOVLB 0
	INCF  i_3,1,1
	BRA   m089
			;	dato = swap (dato);
m090	MOVLB 0
	SWAPF dato,1,1
			;	PORTB.3 = dato.4;nop();
	BTFSS dato,4,1
	BCF   PORTB,3,0
	BTFSC dato,4,1
	BSF   PORTB,3,0
	NOP  
			;	PORTB.2 = dato.5;nop();
	BTFSS dato,5,1
	BCF   PORTB,2,0
	BTFSC dato,5,1
	BSF   PORTB,2,0
	NOP  
			;	PORTB.1 = dato.6;nop();
	BTFSS dato,6,1
	BCF   PORTB,1,0
	BTFSC dato,6,1
	BSF   PORTB,1,0
	NOP  
			;	PORTB.0 = dato.7;nop();
	BTFSS dato,7,1
	BCF   PORTB,0,0
	BTFSC dato,7,1
	BSF   PORTB,0,0
	NOP  
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;	for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_3,1
m091	MOVLW 7
	MOVLB 0
	CPFSLT i_3,1
	BRA   m092
	RCALL retardo_20u
	MOVLB 0
	INCF  i_3,1,1
	BRA   m091
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m092	MOVLW 12
	BRA   enviar_comando
			;	return;
			;}   
			;
			;void enviar_cifra (char dato) 
			;{
enviar_cifra
	MOVWF dato_2,0
			;    char i;
			;	dato = dato + 0x30; 							// Convierto el n˙mero en su equivalente ASCII literal. 
	MOVLW 48
	ADDWF dato_2,1,0
			;	PORTB.3 = dato.4;
	BTFSS dato_2,4,0
	BCF   PORTB,3,0
	BTFSC dato_2,4,0
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.5;
	BTFSS dato_2,5,0
	BCF   PORTB,2,0
	BTFSC dato_2,5,0
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.6;
	BTFSS dato_2,6,0
	BCF   PORTB,1,0
	BTFSC dato_2,6,0
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.0 = dato.7;
	BTFSS dato_2,7,0
	BCF   PORTB,0,0
	BTFSC dato_2,7,0
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;	for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_4,0
m093	MOVLW 7
	CPFSLT i_4,0
	BRA   m094
	RCALL retardo_20u
	INCF  i_4,1,0
	BRA   m093
			;	dato = swap (dato);
m094	SWAPF dato_2,1,0
			;	PORTB.3 = dato.4;
	BTFSS dato_2,4,0
	BCF   PORTB,3,0
	BTFSC dato_2,4,0
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.5;
	BTFSS dato_2,5,0
	BCF   PORTB,2,0
	BTFSC dato_2,5,0
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.6;
	BTFSS dato_2,6,0
	BCF   PORTB,1,0
	BTFSC dato_2,6,0
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.0 = dato.7;
	BTFSS dato_2,7,0
	BCF   PORTB,0,0
	BTFSC dato_2,7,0
	BSF   PORTB,0,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;	for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_4,0
m095	MOVLW 7
	CPFSLT i_4,0
	BRA   m096
	RCALL retardo_20u
	INCF  i_4,1,0
	BRA   m095
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
m096	MOVLW 12
	BRA   enviar_comando
			;	return;
			;} 
			;
			;void inicializar_lcd (void) 
			;{
inicializar_lcd
			;	char i;
			;	clrwdt () ;	
	CLRWDT
			;	for (i = 1; i < 21; i++) retardo_1m ();    
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m097	MOVLW 21
	MOVLB 0
	CPFSLT i_5,1
	BRA   m098
	RCALL retardo_1m
	MOVLB 0
	INCF  i_5,1,1
	BRA   m097
			;	envia_codigo_inicial (0b.00.11.0000);
m098	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 6; i++) retardo_1m ();
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m099	MOVLW 6
	MOVLB 0
	CPFSLT i_5,1
	BRA   m100
	RCALL retardo_1m
	MOVLB 0
	INCF  i_5,1,1
	BRA   m099
			;    envia_codigo_inicial (0b.00.11.0000);	
m100	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i< 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m101	MOVLW 11
	MOVLB 0
	CPFSLT i_5,1
	BRA   m102
	RCALL retardo_20u
	MOVLB 0
	INCF  i_5,1,1
	BRA   m101
			;    envia_codigo_inicial (0b.00.11.0000);
m102	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m103	MOVLW 11
	MOVLB 0
	CPFSLT i_5,1
	BRA   m104
	RCALL retardo_20u
	MOVLB 0
	INCF  i_5,1,1
	BRA   m103
			;	envia_codigo_inicial (0b.00.10.0000);			// A 4 bits.
m104	MOVLW 32
	RCALL envia_codigo_inicial
			;	enviar_comando (0b.0010.1000);					// A 4 bits, doble lÌnea, caracteres 5x7.
	MOVLW 40
	RCALL enviar_comando
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
	MOVLW 12
	RCALL enviar_comando
			;	enviar_comando (0b.0000.0010);  				// Cursor en home, inicio de primera linea.
	MOVLW 2
	BRA   enviar_comando
			;	return;
			;}
			;
			;void escribir_posicion (char linea, char columna)
			;{
escribir_posicion
	MOVLB 0
	MOVWF columna,1
			;	
			;	switch (linea) 									// (se resta una unidad a la coordenada lÌnea para que la posiciÛn columna inicial sea 1 y no 0).
	MOVF  linea,W,1
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m105
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m106
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m107
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m108
	BRA   m109
			;		{
			;			case 1:
			;				enviar_comando (127 + columna); 	// Inicio primera linea.
m105	MOVLW 127
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;
	BRA   m109
			;						
			;			case 2:
			;				enviar_comando (191 + columna); 	// Inicio segunda lÌnea.
m106	MOVLW 191
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m109
			;
			;			case 3:
			;				enviar_comando (147 + columna);		// Inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m107	MOVLW 147
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m109
			;			
			;			case 4:
			;				enviar_comando (211 + columna); 	// Inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m108	MOVLW 211
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;
	BRA   m109
			;			enviar_comando (0b.0000.1100);			// Pantalla encendida, sin cursor.
	MOVLW 12
	BRA   enviar_comando
			;		}
			;	
			;	
			;}
m109	RETURN
			;
			;void borrar_linea (char linea)
			;{
borrar_linea
	MOVWF linea_2,0
			;	char i;
			;		
			;	switch (linea) 									// (se resta una unidad a la coordenada lÌnea para que la posiciÛn columna inicial sea 1 y no 0).
	MOVF  linea_2,W,0
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m110
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m111
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m112
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m113
	BRA   m114
			;		{
			;			case 1:
			;				enviar_comando (128); 				// Inicio primera linea.
m110	MOVLW 128
	RCALL enviar_comando
			;			break;
	BRA   m114
			;						
			;			case 2:
			;				enviar_comando (192); 				// Inicio segunda lÌnea.
m111	MOVLW 192
	RCALL enviar_comando
			;			break;			
	BRA   m114
			;
			;			case 3:
			;				enviar_comando (148); 				// Inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m112	MOVLW 148
	RCALL enviar_comando
			;			break;				
	BRA   m114
			;			
			;			case 4:
			;				enviar_comando (212); 				// Inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m113	MOVLW 212
	RCALL enviar_comando
			;			break;
			;		}
			;	for (i = 1; i < 21; i++) enviar_literal (' '); 	// Envio 20 car·cteres en blanco y posiciono en la siguiente lÌnea.
m114	MOVLW 1
	MOVWF i_6,0
m115	MOVLW 21
	CPFSLT i_6,0
	BRA   m116
	MOVLW 32
	RCALL enviar_literal
	INCF  i_6,1,0
	BRA   m115
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m116	MOVLW 12
	BRA   enviar_comando
			;}
			;
			;void borrar_lcd (void)
			;{
borrar_lcd
			;	enviar_comando (0b.0000.0001);  				// Borrado del display y cursor en la posiciÛn inicial.	
	MOVLW 1
	BRA   enviar_comando
			;}
			;
			;void Enviar_lcd (char linea, char columna, uns16 dato, bit bd, bit dp, bit xi,bit ndp)
			;            //fila , col , uns16 , bd -> si 0 posa espai si "0" a l'esquerra ,, dp -> si "0"--> posa punt decimal
			;{
Enviar_lcd
			;// Aquesta funcio, posiciona Fila i Columna d'un LCD 4x20 i envia una xifra uns16 descomposant-la i posant 
			;//  decimal o no, segons sigui dp, si "0"--> posa punt decimal , si dp "1" -> no posa dp
			;//  si bd = "0" -> posa espai, si bd = "1"  --> No  posa espai i posa el 0.
			;// si xi = 0 -> 3 xifres,, si xi = 1  -> 4 xifres
			;// Atencio, amb dp S'UTILIZA un ESPAI MES
			;// amb 4 xifres, tambe es representen 3, pero es gasta un espai de mes.
			;// ESPI utilitzat...3 per 3 xifres,, 4 per 3xifres + dp   O 4xifres s/dp ,, 5 per 4 xifres + dp
			;// ndp ..si "0"...1decimal... si "1"   2 decimals
			;	uns16 num, u_milers, cent;
			;	char dec, unid, resto1;
			;	char i, xx, yy, dat,xy;
			;	
			;	//CON_LCD ();
			;	//posiciono
			;	switch (linea) 									// (se resta una unidad a la coordenada lÌnea para que la posiciÛn columna inicial sea 1 y no 0).
	MOVF  linea_3,W,0
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m117
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m118
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m119
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m120
	BRA   m121
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m117	MOVLW 127
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m121
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m118	MOVLW 191
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;			
	BRA   m121
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m119	MOVLW 147
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;				
	BRA   m121
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m120	MOVLW 211
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m121
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;		if (!xi)
m121	BTFSC 0xF7F,xi,0
	BRA   m122
			;		{
			;			xy = 2;
	MOVLW 2
	MOVWF xy,0
			;			u_milers = 0;
	CLRF  u_milers,0
	CLRF  u_milers+1,0
			;			if (dato > 999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
	MOVLW 232
	SUBWF dato_3,W,0
	MOVLW 3
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m124
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m144
			;		    else goto sa;
			;		}
			;		else
			;		{
			;			xy = 1;
m122	MOVLW 1
	MOVWF xy,0
			;			if (dato > 9999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
	MOVLW 16
	SUBWF dato_3,W,0
	MOVLW 39
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m123
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m144
			;		}
			;			// Separo per 4 xifres
			;			num = dato; // per 4 xifres
m123	MOVFF dato_3,num
	MOVFF dato_3+1,num+1
			;			u_milers = num / 1000;
	MOVFF num,arg1_2
	MOVFF num+1,arg1_2+1
	MOVLW 232
	MOVLB 0
	MOVWF arg2_2,1
	MOVLW 3
	MOVWF arg2_2+1,1
	RCALL _divU16_16
	MOVFF arg1_2,u_milers
	MOVFF arg1_2+1,u_milers+1
			;			dato = num % 1000;
	MOVFF num,arg1_6
	MOVFF num+1,arg1_6+1
	MOVLW 232
	MOVLB 0
	MOVWF arg2_6,1
	MOVLW 3
	MOVWF arg2_6+1,1
	RCALL _remU16_16
	MOVFF rm_6,dato_3
	MOVFF rm_6+1,dato_3+1
			;			// Separo per 3 xifres
			;sa:			cent   = dato   / 100;   	
m124	MOVFF dato_3,arg1
	MOVFF dato_3+1,arg1+1
	MOVLW 100
	RCALL _divU16_8
	MOVFF arg1,cent
	MOVFF arg1+1,cent+1
			;			resto1 = dato   % 100;
	MOVFF dato_3,arg1_5
	MOVFF dato_3+1,arg1_5+1
	MOVLW 100
	RCALL _remU16_8
	MOVWF resto1,0
			;			dec    = resto1 /  10;  
	MOVFF resto1,arg1
	MOVLB 0
	CLRF  arg1+1,1
	MOVLW 10
	RCALL _divU16_8
	MOVFF arg1,dec
			;			unid   = resto1 %  10; 		
	MOVFF resto1,arg1_5
	MOVLB 0
	CLRF  arg1_5+1,1
	MOVLW 10
	RCALL _remU16_8
	MOVWF unid,0
			;		// Envio
			;		for (xx = xy; xx < 7; xx++)
	MOVFF xy,xx
m125	MOVLW 7
	CPFSLT xx,0
	BRA   m144
			;		{
			;			clrwdt () ;
	CLRWDT
			;			if (xx == 1) 
	DECFSZ xx,W,0
	BRA   m127
			;			{
			;				if ((u_milers==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m126
	BTFSC 0xF7F,bd,0
	BRA   m126
	MOVLW 32
	MOVWF dat,0
			;				else dat = u_milers;
	BRA   m127
m126	MOVFF u_milers,dat
			;			}
			;			if (xx == 2) 
m127	MOVLW 2
	CPFSEQ xx,0
	BRA   m129
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m128
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m128
	BTFSC 0xF7F,bd,0
	BRA   m128
	MOVLW 32
	MOVWF dat,0
			;				else dat = cent;
	BRA   m129
m128	MOVFF cent,dat
			;			}
			;			if (xx == 3) 
m129	MOVLW 3
	CPFSEQ xx,0
	BRA   m132
			;			{
			;				if(ndp) { if (dp==0) dat = '.';
	BTFSS 0xF7F,ndp,0
	BRA   m131
	BTFSC 0xF7F,dp,0
	BRA   m130
	MOVLW 46
	MOVWF dat,0
			;				          else xx++;  
	BRA   m132
m130	INCF  xx,1,0
			;				        }
			;				else xx++;		
	BRA   m132
m131	INCF  xx,1,0
			;			}
			;			if (xx == 4)
m132	MOVLW 4
	CPFSEQ xx,0
	BRA   m134
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(dec==0)&&(!bd)) dat = ' ';
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m133
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m133
	MOVF  dec,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m133
	BTFSC 0xF7F,bd,0
	BRA   m133
	MOVLW 32
	MOVWF dat,0
			;				else dat = dec ;
	BRA   m134
m133	MOVFF dec,dat
			;			}
			;			if (xx == 5)
m134	MOVLW 5
	CPFSEQ xx,0
	BRA   m137
			;			{
			;				if(!ndp) { if (dp==0) dat = '.';	
	BTFSC 0xF7F,ndp,0
	BRA   m136
	BTFSC 0xF7F,dp,0
	BRA   m135
	MOVLW 46
	MOVWF dat,0
			;				           else xx++;
	BRA   m137
m135	INCF  xx,1,0
			;						 }
			;				else xx++;		 
	BRA   m137
m136	INCF  xx,1,0
			;			}
			;			if (xx == 6) dat = unid;
m137	MOVLW 6
	CPFSEQ xx,0
	BRA   m138
	MOVFF unid,dat
			;						
			;			if ((dat!='.')&&(dat!=' ')) dat = dat + 0x30;
m138	MOVF  dat,W,0
	XORLW 46
	BTFSC 0xFD8,Zero_,0
	BRA   m139
	MOVF  dat,W,0
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m139
	MOVLW 48
	ADDWF dat,1,0
			;
			;			PORTB.3 = dat.4;nop();
m139	BTFSS dat,4,0
	BCF   PORTB,3,0
	BTFSC dat,4,0
	BSF   PORTB,3,0
	NOP  
			;			PORTB.2 = dat.5;nop();
	BTFSS dat,5,0
	BCF   PORTB,2,0
	BTFSC dat,5,0
	BSF   PORTB,2,0
	NOP  
			;			PORTB.1 = dat.6;nop();
	BTFSS dat,6,0
	BCF   PORTB,1,0
	BTFSC dat,6,0
	BSF   PORTB,1,0
	NOP  
			;			PORTB.0 = dat.7;nop();
	BTFSS dat,7,0
	BCF   PORTB,0,0
	BTFSC dat,7,0
	BSF   PORTB,0,0
	NOP  
			;			PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.4 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;			for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_7,0
m140	MOVLW 7
	CPFSLT i_7,0
	BRA   m141
	RCALL retardo_20u
	INCF  i_7,1,0
	BRA   m140
			;			dat = swap (dat);
m141	SWAPF dat,1,0
			;			PORTB.3 = dat.4;nop();
	BTFSS dat,4,0
	BCF   PORTB,3,0
	BTFSC dat,4,0
	BSF   PORTB,3,0
	NOP  
			;			PORTB.2 = dat.5;nop();
	BTFSS dat,5,0
	BCF   PORTB,2,0
	BTFSC dat,5,0
	BSF   PORTB,2,0
	NOP  
			;			PORTB.1 = dat.6;nop();
	BTFSS dat,6,0
	BCF   PORTB,1,0
	BTFSC dat,6,0
	BSF   PORTB,1,0
	NOP  
			;			PORTB.0 = dat.7;
	BTFSS dat,7,0
	BCF   PORTB,0,0
	BTFSC dat,7,0
	BSF   PORTB,0,0
			;			retardo_1m ();
	RCALL retardo_1m
			;			PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;			retardo_1m ();
	RCALL retardo_1m
			;			PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;			for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_7,0
m142	MOVLW 7
	CPFSLT i_7,0
	BRA   m143
	RCALL retardo_20u
	INCF  i_7,1,0
	BRA   m142
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m143	MOVLW 12
	RCALL enviar_comando
			;		}
	INCF  xx,1,0
	BRA   m125
			;so:	//DESCON_LCD ();
			;	return;
m144	RETURN
			;}
			;
			;void Enviar_uns16(char linea,char columna,uns16 dato){
Enviar_uns16
			;	//utilizaremos esta funcion en caso de necesitar un numero entero hasta 65536(16bits)
			;	uns16 num, u_milers, cent, d_milers;
			;	char dec, unid, resto1;
			;	char i, xx, yy, dat,xy;
			;
			;	switch (linea) 									// (se resta una unidad a la coordenada lÌnea para que la posiciÛn columna inicial sea 1 y no 0).
	MOVLB 0
	MOVF  linea_4,W,1
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m145
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m146
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m147
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m148
	BRA   m149
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m145	MOVLW 127
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m149
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m146	MOVLW 191
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m149
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m147	MOVLW 147
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m149
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m148	MOVLW 211
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m149
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;	
			;			
			;			num = dato; 
m149	MOVFF dato_4,num_2
	MOVFF dato_4+1,num_2+1
			;			d_milers =num/10000;
	MOVFF num_2,arg1_2
	MOVFF num_2+1,arg1_2+1
	MOVLW 16
	MOVLB 0
	MOVWF arg2_2,1
	MOVLW 39
	MOVWF arg2_2+1,1
	CALL  _divU16_16
	MOVFF arg1_2,d_milers
	MOVFF arg1_2+1,d_milers+1
			;			num= num%10000;
	MOVFF num_2,arg1_6
	MOVFF num_2+1,arg1_6+1
	MOVLW 16
	MOVLB 0
	MOVWF arg2_6,1
	MOVLW 39
	MOVWF arg2_6+1,1
	RCALL _remU16_16
	MOVFF rm_6,num_2
	MOVFF rm_6+1,num_2+1
			;			u_milers = num / 1000;
	MOVFF num_2,arg1_2
	MOVFF num_2+1,arg1_2+1
	MOVLW 232
	MOVLB 0
	MOVWF arg2_2,1
	MOVLW 3
	MOVWF arg2_2+1,1
	CALL  _divU16_16
	MOVFF arg1_2,u_milers_2
	MOVFF arg1_2+1,u_milers_2+1
			;			dato = num % 1000;
	MOVFF num_2,arg1_6
	MOVFF num_2+1,arg1_6+1
	MOVLW 232
	MOVLB 0
	MOVWF arg2_6,1
	MOVLW 3
	MOVWF arg2_6+1,1
	CALL  _remU16_16
	MOVFF rm_6,dato_4
	MOVFF rm_6+1,dato_4+1
			;
			;			cent   = dato   / 100;   	
	MOVFF dato_4,arg1
	MOVFF dato_4+1,arg1+1
	MOVLW 100
	CALL  _divU16_8
	MOVFF arg1,cent_2
	MOVFF arg1+1,cent_2+1
			;			resto1 = dato   % 100;
	MOVFF dato_4,arg1_5
	MOVFF dato_4+1,arg1_5+1
	MOVLW 100
	CALL  _remU16_8
	MOVLB 0
	MOVWF resto1_2,1
			;			dec    = resto1 /  10;  
	MOVFF resto1_2,arg1
	CLRF  arg1+1,1
	MOVLW 10
	CALL  _divU16_8
	MOVFF arg1,dec_2
			;			unid   = resto1 %  10; 		
	MOVFF resto1_2,arg1_5
	MOVLB 0
	CLRF  arg1_5+1,1
	MOVLW 10
	CALL  _remU16_8
	MOVLB 0
	MOVWF unid_2,1
			;		// Envio
			;		for (xx=0 ; xx < 5; xx++)
	CLRF  xx_2,1
m150	MOVLW 5
	MOVLB 0
	CPFSLT xx_2,1
	BRA   m166
			;		{
			;			switch(xx){
	MOVF  xx_2,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m151
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m153
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m155
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m157
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m159
	BRA   m160
			;				case 0:
			;					if (d_milers==0) dat = ' '; 
m151	MOVLB 0
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m152
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = d_milers;
	BRA   m160
m152	MOVFF d_milers,dat_2
			;					break;
	BRA   m160
			;				case 1:
			;					if ((u_milers==0)&&(d_milers==0)) dat = ' ';
m153	MOVLB 0
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m154
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m154
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = u_milers;
	BRA   m160
m154	MOVFF u_milers_2,dat_2
			;					break;
	BRA   m160
			;				case 2:
			;					if ((d_milers==0)&&(u_milers==0)&&(cent==0)) dat = ' '; 
m155	MOVLB 0
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m156
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m156
	MOVF  cent_2,W,1
	IORWF cent_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m156
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = cent;
	BRA   m160
m156	MOVFF cent_2,dat_2
			;					break;
	BRA   m160
			;				case 3:
			;					if ((u_milers==0)&&(cent==0)&&(dec==0)&&(d_milers==0)) dat = ' ';
m157	MOVLB 0
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m158
	MOVF  cent_2,W,1
	IORWF cent_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m158
	MOVF  dec_2,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m158
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m158
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = dec ;
	BRA   m160
m158	MOVFF dec_2,dat_2
			;					break;
	BRA   m160
			;				case 4:
			;					dat = unid;
m159	MOVFF unid_2,dat_2
			;					break;
			;			}		
			;			if (dat!=' ') dat = dat + 0x30;
m160	MOVLB 0
	MOVF  dat_2,W,1
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m161
	MOVLW 48
	ADDWF dat_2,1,1
			;			PORTB.3 = dat.4;nop();
m161	MOVLB 0
	BTFSS dat_2,4,1
	BCF   PORTB,3,0
	BTFSC dat_2,4,1
	BSF   PORTB,3,0
	NOP  
			;			PORTB.2 = dat.5;nop();
	BTFSS dat_2,5,1
	BCF   PORTB,2,0
	BTFSC dat_2,5,1
	BSF   PORTB,2,0
	NOP  
			;			PORTB.1 = dat.6;nop();
	BTFSS dat_2,6,1
	BCF   PORTB,1,0
	BTFSC dat_2,6,1
	BSF   PORTB,1,0
	NOP  
			;			PORTB.0 = dat.7;nop();
	BTFSS dat_2,7,1
	BCF   PORTB,0,0
	BTFSC dat_2,7,1
	BSF   PORTB,0,0
	NOP  
			;			PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.4 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;			for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_8,1
m162	MOVLW 7
	MOVLB 0
	CPFSLT i_8,1
	BRA   m163
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m162
			;			dat = swap (dat);
m163	MOVLB 0
	SWAPF dat_2,1,1
			;			PORTB.3 = dat.4;nop();
	BTFSS dat_2,4,1
	BCF   PORTB,3,0
	BTFSC dat_2,4,1
	BSF   PORTB,3,0
	NOP  
			;			PORTB.2 = dat.5;nop();
	BTFSS dat_2,5,1
	BCF   PORTB,2,0
	BTFSC dat_2,5,1
	BSF   PORTB,2,0
	NOP  
			;			PORTB.1 = dat.6;nop();
	BTFSS dat_2,6,1
	BCF   PORTB,1,0
	BTFSC dat_2,6,1
	BSF   PORTB,1,0
	NOP  
			;			PORTB.0 = dat.7;
	BTFSS dat_2,7,1
	BCF   PORTB,0,0
	BTFSC dat_2,7,1
	BSF   PORTB,0,0
			;			retardo_1m ();
	CALL  retardo_1m
			;			PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;			retardo_1m ();
	CALL  retardo_1m
			;			PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;			for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_8,1
m164	MOVLW 7
	MOVLB 0
	CPFSLT i_8,1
	BRA   m165
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m164
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m165	MOVLW 12
	RCALL enviar_comando
			;		}
	MOVLB 0
	INCF  xx_2,1,1
	BRA   m150
			;
			;	return;
m166	RETURN
			;
			;}
			;
			;
			;
			;void Enviar_char(char linea,char columna,char dato){
Enviar_char
	MOVLB 0
	MOVWF dato_5,1
			;	//utilizaremos esta funcion en caso de necesitar un numero entero hasta 65536(16bits)
			;	char num, cent;
			;	char dec, unid, resto1;
			;	char i, xx, yy, dat,xy;
			;
			;	switch (linea) 									// (se resta una unidad a la coordenada lÌnea para que la posiciÛn columna inicial sea 1 y no 0).
	MOVF  linea_5,W,1
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m167
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m168
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m169
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m170
	BRA   m171
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m167	MOVLW 127
	MOVLB 0
	ADDWF columna_4,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m171
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m168	MOVLW 191
	MOVLB 0
	ADDWF columna_4,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m171
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m169	MOVLW 147
	MOVLB 0
	ADDWF columna_4,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m171
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m170	MOVLW 211
	MOVLB 0
	ADDWF columna_4,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m171
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;
			;			cent   = dato   / 100;   	
m171	MOVFF dato_5,arg1
	MOVLB 0
	CLRF  arg1+1,1
	MOVLW 100
	CALL  _divU16_8
	MOVFF arg1,cent_3
			;			resto1 = dato   % 100;
	MOVFF dato_5,arg1_5
	MOVLB 0
	CLRF  arg1_5+1,1
	MOVLW 100
	CALL  _remU16_8
	MOVLB 0
	MOVWF resto1_3,1
			;			dec    = resto1 /  10;  
	MOVFF resto1_3,arg1
	CLRF  arg1+1,1
	MOVLW 10
	CALL  _divU16_8
	MOVFF arg1,dec_3
			;			unid   = resto1 %  10; 		
	MOVFF resto1_3,arg1_5
	MOVLB 0
	CLRF  arg1_5+1,1
	MOVLW 10
	CALL  _remU16_8
	MOVLB 0
	MOVWF unid_3,1
			;		// Envio
			;		for (xx=0 ; xx < 3; xx++)
	CLRF  xx_3,1
m172	MOVLW 3
	MOVLB 0
	CPFSLT xx_3,1
	BRA   m184
			;		{
			;			switch(xx){
	MOVF  xx_3,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m173
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m175
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m177
	BRA   m178
			;				case 0:
			;					if (cent==0) dat = ' '; 
m173	MOVLB 0
	MOVF  cent_3,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m174
	MOVLW 32
	MOVWF dat_3,1
			;					else dat = cent;
	BRA   m178
m174	MOVFF cent_3,dat_3
			;					break;
	BRA   m178
			;				case 1:
			;					if ((cent==0)&&(dec==0)) dat = ' ';
m175	MOVLB 0
	MOVF  cent_3,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m176
	MOVF  dec_3,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m176
	MOVLW 32
	MOVWF dat_3,1
			;					else dat = dec ;
	BRA   m178
m176	MOVFF dec_3,dat_3
			;					break;
	BRA   m178
			;				case 2 :
			;					dat = unid;
m177	MOVFF unid_3,dat_3
			;					break;
			;			}		
			;			if (dat!=' ') dat = dat + 0x30;
m178	MOVLB 0
	MOVF  dat_3,W,1
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m179
	MOVLW 48
	ADDWF dat_3,1,1
			;			PORTB.3 = dat.4;nop();
m179	MOVLB 0
	BTFSS dat_3,4,1
	BCF   PORTB,3,0
	BTFSC dat_3,4,1
	BSF   PORTB,3,0
	NOP  
			;			PORTB.2 = dat.5;nop();
	BTFSS dat_3,5,1
	BCF   PORTB,2,0
	BTFSC dat_3,5,1
	BSF   PORTB,2,0
	NOP  
			;			PORTB.1 = dat.6;nop();
	BTFSS dat_3,6,1
	BCF   PORTB,1,0
	BTFSC dat_3,6,1
	BSF   PORTB,1,0
	NOP  
			;			PORTB.0 = dat.7;nop();
	BTFSS dat_3,7,1
	BCF   PORTB,0,0
	BTFSC dat_3,7,1
	BSF   PORTB,0,0
	NOP  
			;			PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.4 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;			for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_9,1
m180	MOVLW 7
	MOVLB 0
	CPFSLT i_9,1
	BRA   m181
	CALL  retardo_20u
	MOVLB 0
	INCF  i_9,1,1
	BRA   m180
			;			dat = swap (dat);
m181	MOVLB 0
	SWAPF dat_3,1,1
			;			PORTB.3 = dat.4;nop();
	BTFSS dat_3,4,1
	BCF   PORTB,3,0
	BTFSC dat_3,4,1
	BSF   PORTB,3,0
	NOP  
			;			PORTB.2 = dat.5;nop();
	BTFSS dat_3,5,1
	BCF   PORTB,2,0
	BTFSC dat_3,5,1
	BSF   PORTB,2,0
	NOP  
			;			PORTB.1 = dat.6;nop();
	BTFSS dat_3,6,1
	BCF   PORTB,1,0
	BTFSC dat_3,6,1
	BSF   PORTB,1,0
	NOP  
			;			PORTB.0 = dat.7;
	BTFSS dat_3,7,1
	BCF   PORTB,0,0
	BTFSC dat_3,7,1
	BSF   PORTB,0,0
			;			retardo_1m ();
	CALL  retardo_1m
			;			PORTB.5 = 1;  									// Modo dato.
	BSF   PORTB,5,0
			;			retardo_1m ();
	CALL  retardo_1m
			;			PORTB.4 = 1;  									// Breve pulso.
	BSF   PORTB,4,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.4 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,4,0
			;			for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_9,1
m182	MOVLW 7
	MOVLB 0
	CPFSLT i_9,1
	BRA   m183
	CALL  retardo_20u
	MOVLB 0
	INCF  i_9,1,1
	BRA   m182
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m183	MOVLW 12
	CALL  enviar_comando
			;		}
	MOVLB 0
	INCF  xx_3,1,1
	BRA   m172
			;
			;	return;
m184	RETURN
			;
			;}
			;
			;//***********************************************************************************************
			;//***********************************************************************************************
			;// Definicio caracter especial : PROCES  -> posar x, on volguem el pixel ,pes 16 8 4 2 1  Rtat Hexa
			;//                         -  contar pesos ( veure exple, per Ah)             ° °x°x° ° ° 0x0C
			;//                             -  de dalt a baix, es el codi a posar          °x° ° °x° ° 0x12
			;//                                                en el vector.               °x°x°x°x° ° 0x1E
			;//                   - Al inici cridar funcio per ecriure CGRAM               °x° ° °x° ° 0x12
			;//                    - Hi caben 8 carac especials de 64 a 120                ° ° °x° ° ° 0x00
			;//                       de 8 e 8,  64 , 72, 80, 88, 96,104.112,120           ° ° °x°x°x° 0x04
			;//                   - Despres d'escriure la CGRAM, cal fer un                ° ° °x° °x° 0x07
			;//                     comando, per no apuntar a la CGRAM                     ° ° °x° °x° 0x05
			;// Per escriure simbol .... fer :   enviar_literal(3);enviar_literal(4);
			;//************IMPORTANTE****************************************
			;//******Poner despues de inicializar_lcd();*********************
			;void RAM_LCD (void)
			;{
RAM_LCD
			;	static const char Carac_1[] = {0x0C,0x10,0x08,0x04,0x1B,0x04,0x04,0x03};//caracter micro 	//escribir_literal(0);
			;	static const char Carac_2[] = {0xEE,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};	//escribir_literal(1); BAT_FULL
			;	static const char Carac_3[] = {0xEE,0xFF,0xF1,0xFF,0xFF,0xFF,0xFF,0xFF};	// ""...               BAT_75
			;	static const char Carac_4[] = {0xEE,0xFF,0xF1,0xF1,0xFF,0xFF,0xFF,0xFF};					    // BAT_50
			;	static const char Carac_5[] = {0xEE,0xFF,0xF1,0xF1,0xF1,0xFF,0xFF,0xFF};					    // BAT_25
			;	static const char Carac_6[] = {0xEE,0xFF,0xF1,0xF1,0xF1,0xF1,0xFF,0xFF};					    // BAT_10
			;	static const char Carac_7[] = {0xEE,0xFF,0xF1,0xF1,0xF1,0xF1,0xF1,0xFF};					    // BAT_LW
			;	static const char Carac_8[] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
			;	// 1era posicio CGRAM es la 64 , 72, 80, 88, 96,104.112,120
			;	char i;
			;	
			;	enviar_comando (64);// primera posicio del Carac_1, els altres seran consecutius
	MOVLW 64
	CALL  enviar_comando
			;	retardo_20u ();
	CALL  retardo_20u
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_1[i]); retardo_20u (); retardo_20u ();}
	MOVLB 0
	CLRF  i_10,1
m185	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m186
	MOVLW 26
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m185
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_2[i]); retardo_20u (); retardo_20u ();}
m186	MOVLB 0
	CLRF  i_10,1
m187	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m188
	MOVLW 34
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m187
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_3[i]); retardo_20u (); retardo_20u ();}
m188	MOVLB 0
	CLRF  i_10,1
m189	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m190
	MOVLW 42
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m189
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_4[i]); retardo_20u (); retardo_20u ();}
m190	MOVLB 0
	CLRF  i_10,1
m191	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m192
	MOVLW 50
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m191
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_5[i]); retardo_20u (); retardo_20u ();}
m192	MOVLB 0
	CLRF  i_10,1
m193	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m194
	MOVLW 58
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m193
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_6[i]); retardo_20u (); retardo_20u ();}
m194	MOVLB 0
	CLRF  i_10,1
m195	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m196
	MOVLW 66
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m195
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_7[i]); retardo_20u (); retardo_20u ();}
m196	MOVLB 0
	CLRF  i_10,1
m197	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m198
	MOVLW 74
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m197
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_8[i]); retardo_20u (); retardo_20u ();}	
m198	MOVLB 0
	CLRF  i_10,1
m199	MOVLW 8
	MOVLB 0
	CPFSLT i_10,1
	BRA   m200
	MOVLW 82
	ADDWF i_10,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_10,1,1
	BRA   m199
			;	enviar_comando (0b.0000.0010);
m200	MOVLW 2
	GOTO  enviar_comando
			;	
			;	return;

  ; FILE medir_18F4XK20.h
			;/*funci√≥n void medir (char, char)
			;recibe como par√°metros:
			;Primer par√°metro: el canal A/D a convertir  (0...4,8...13) . Si est√° fuera del rango, toma 0 por defecto
			;Segundo par√°metro: solo admite 8 o 10 (bits del resultado). si el par√°metro no es 8 o 10,
			;interpreta autom√°ticamente a 10.
			;Siempre. se configura autom√°ticamente la entrada anal√≥gica solicitada. Fosc/32
			;Requiere la funci√≥n retardo_20u()  (en retardos.h)
			;resultado: en ADRESH:ADRESL
			;*/
			;uns16 medir (char canal, char bits)
			;{
medir
	MOVLB 0
	MOVWF bits,1
			;	uns16 resultado;
			;	switch (canal)
	MOVF  canal,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m201
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m202
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m203
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m204
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m205
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m206
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m207
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m208
	XORLW 15
	BTFSC 0xFD8,Zero_,0
	BRA   m209
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m210
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m211
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m212
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m213
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m214
	BRA   m215
			;	{
			;		//del 0 al 4, est√°n en el PORTA
			;		case 0: 	ADCON0 = 0b.00.0000.01;		break;
m201	MOVLW 1
	MOVWF ADCON0,0
	BRA   m216
			;		case 1:		ADCON0 = 0b.00.0001.01;		break;
m202	MOVLW 5
	MOVWF ADCON0,0
	BRA   m216
			;		case 2:		ADCON0 = 0b.00.0010.01;		break;
m203	MOVLW 9
	MOVWF ADCON0,0
	BRA   m216
			;		case 3:		ADCON0 = 0b.00.0011.01;		break;
m204	MOVLW 13
	MOVWF ADCON0,0
	BRA   m216
			;		case 4:		ADCON0 = 0b.00.0100.01;		break;
m205	MOVLW 17
	MOVWF ADCON0,0
	BRA   m216
			;		case 5:		ADCON0 = 0b.00.0101.01;		break;
m206	MOVLW 21
	MOVWF ADCON0,0
	BRA   m216
			;		case 6:		ADCON0 = 0b.00.0110.01;		break;
m207	MOVLW 25
	MOVWF ADCON0,0
	BRA   m216
			;		case 7:		ADCON0 = 0b.00.0111.01;		break;
m208	MOVLW 29
	MOVWF ADCON0,0
	BRA   m216
			;		case 8:		ADCON0 = 0b.00.1000.01;		break;
m209	MOVLW 33
	MOVWF ADCON0,0
	BRA   m216
			;		case 9:		ADCON0 = 0b.00.1001.01;		break;
m210	MOVLW 37
	MOVWF ADCON0,0
	BRA   m216
			;		case 10:	ADCON0 = 0b.00.1010.01;		break;
m211	MOVLW 41
	MOVWF ADCON0,0
	BRA   m216
			;		case 11:	ADCON0 = 0b.00.1011.01;		break;
m212	MOVLW 45
	MOVWF ADCON0,0
	BRA   m216
			;		case 12:	ADCON0 = 0b.00.1100.01;		break;
m213	MOVLW 49
	MOVWF ADCON0,0
	BRA   m216
			;		case 13:	ADCON0 = 0b.00.1101.01;		break;
m214	MOVLW 53
	MOVWF ADCON0,0
	BRA   m216
			;		default:	ADCON0 = 0b.00.0000.01;
m215	MOVLW 1
	MOVWF ADCON0,0
			;	}
			;	if (bits == 8){ADFM=0;GO = 1;  while(GO);resultado = ADRESH;}
m216	MOVLW 8
	MOVLB 0
	CPFSEQ bits,1
	BRA   m218
	BCF   0xFC0,ADFM,0
	BSF   0xFC2,GO,0
m217	BTFSC 0xFC2,GO,0
	BRA   m217
	MOVFF ADRESH,resultado
	MOVLB 0
	CLRF  resultado+1,1
			;	else 		  {ADFM=1;GO = 1;  while(GO);resultado.low8 = ADRESL;resultado.high8 = ADRESH;}
	BRA   m220
m218	BSF   0xFC0,ADFM,0
	BSF   0xFC2,GO,0
m219	BTFSC 0xFC2,GO,0
	BRA   m219
	MOVFF ADRESL,resultado
	MOVFF ADRESH,resultado+1
			;   	
			;   	return resultado;
m220	MOVLB 0
	MOVF  resultado,W,1
	RETURN

  ; FILE ondulador_float.c
			;
			;
			; //**************************************************************************************//
			; //*******************  I N C L U D E S    Y    F U N C I O N E S ***********************//
			; //**************************************************************************************//
			;#include "MATH24F.H"
			;#include "MATH16.H"
			;#include "MATH24LB.H"
			;#include "Temporiz_64Mhz.h"
			;#include "LCD_4bit.h"
			;#include "medir_18F4XK20.h"
			;
			;
			;void configuraPic (void);
			;
			; //**************************************************************************************//
			; //******************** M E N S A J E S   Y   A R R A Y S *******************************//
			; //**************************************************************************************//
			;
			;static const char mensaje1[19] ="ONDULADOR 50HZ  by ";
			;static const char mensaje2[3] ="VAC";
			;static const char mensaje3[5] ="VMAX:";
			;static const char mensaje4[4] ="RAIZ";
			;
			; //**************************************************************************************//
			; //************************  P R O G R A M A   P R I N C I P A L ************************//
			; //**************************************************************************************//
			;
			;void main (void)
			;{
main
			;
			;	
			;	configuraPic (); 				// Configuramos todos los puertos y PWM
	RCALL configuraPic
			;
			;
			;	char p,h=0;
	MOVLB 0
	CLRF  h,1
			;
			;	OSCTUNE=0b.01.000000; //PLL enable 
	MOVLW 64
	MOVWF OSCTUNE,0
			;	
			;	RCON = 0b.01111111; //C18 pag 80 i 167  Causes del RESET i IPEN (priority Enabled o no)
	MOVLW 127
	MOVWF RCON,0
			;	OSCCON    = 0b.0.111.0.0.00;
	MOVLW 112
	MOVWF OSCCON,0
			;
			;	inicializar_lcd(); 
	CALL  inicializar_lcd
			;	borrar_lcd();
	CALL  borrar_lcd
			;//	retardo_100m();
			;	RAM_LCD();
	RCALL RAM_LCD
			;
			;	borrar_lcd();
	CALL  borrar_lcd
			;	escribir_posicion (1, 1);
	MOVLW 1
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			;	
			;	//for(p=0;p<19;p++ )enviar_literal(mensaje1[p]);
			;	//enviar_literal(LOGO_SC);
			;
			;	T0CON   = 0b.01000.001; //(PIC 18F4550)	// Equivale junto con INTCON2 al OPTION_REG del 16F88x).								
	MOVLW 65
	MOVWF T0CON,0
			;	INTCON2 = 0b.0000.0100; //(PIC 18F4550)	// Equivale junto con T0CON al OPTION_REG del 16F88x).	
	MOVLW 4
	MOVWF INTCON2,0
			;	TMR0IF = 0;   //T0IF = 0; (PIC 16F88x)	// Ponemos el flanco de interrupciones a cero (aun no se ha efectuado ninguna).
	BCF   0xFF2,TMR0IF,0
			;   // w1   =   0;								// Reseteamos la variable √≠ndice de la tabla.
			;	LATD.0 =0;           
	BCF   LATD,0,0
			;
			;	Vmax = 3.0; //2 el pwm maximo en 
	MOVLB 0
	CLRF  Vmax,1
	MOVLW 64
	MOVWF Vmax+1,1
	MOVLW 128
	MOVWF Vmax+2,1
			;
			;	INTCON = 0b.0100.0000;				// Interrupciones globales (bit 7) e interrupci√≥n por Timer0 (bit 5) activadas.
	MOVLW 64
	MOVWF INTCON,0
			;
			;	// COMEN√áO AL PAS PER 0, AMB 2 CICLES DE PWM A Ton=0 --> SON 100uS
			;	T=0;
	CLRF  T,1
			;	ancho_pwm =0; 
	CLRF  ancho_pwm,1
	CLRF  ancho_pwm+1,1
			;	bUdw=1;	// Comen√ßo carregant 0
	BSF   0xCB,bUdw,1
			;	for (p = 1; p <= 6; p ++)  ancho_pwm = rl (ancho_pwm);
	MOVLW 1
	MOVWF p,1
m221	MOVLW 7
	MOVLB 0
	CPFSLT p,1
	BRA   m222
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	INCF  p,1,1
	BRA   m221
			;	CCPR1L = ancho_pwm.high8;
m222	MOVFF ancho_pwm+1,CCPR1L
			;	CCP1CON.5 = ancho_pwm.7;
	MOVLB 0
	BTFSS ancho_pwm,7,1
	BCF   CCP1CON,5,0
	BTFSC ancho_pwm,7,1
	BSF   CCP1CON,5,0
			;	CCP1CON.4 = ancho_pwm.6; // PWM carregat a 0
	BTFSS ancho_pwm,6,1
	BCF   CCP1CON,4,0
	BTFSC ancho_pwm,6,1
	BSF   CCP1CON,4,0
			;	TMR2IF=0;	
	BCF   0xF9E,TMR2IF,0
			;	TMR2IE=1; 
	BSF   0xF9D,TMR2IE,0
			;	TMR2ON  = 1;
	BSF   0xFCA,TMR2ON,0
			;	T++; SENO = sen[T];		
	INCF  T,1,1
	MOVF  T,W,1
	RCALL _const1
	MOVLB 0
	MOVWF SENO,1
	CLRF  SENO+1,1
			;	ancho_pwm = (uns16)SENO*Vmax; // PREPARO SEGUENT VALOR
	MOVFF SENO,arg1f24
	MOVFF SENO+1,arg1f24+1
	CLRF  arg1f24+2,1
	CALL  _int24ToFloat24
	MOVFF Vmax,arg2f24
	MOVFF Vmax+1,arg2f24+1
	MOVFF Vmax+2,arg2f24+2
	CALL  _fmul24
	CALL  _float24ToInt24
	MOVFF rval_3,ancho_pwm
	MOVFF rval_3+1,ancho_pwm+1
			; //**************************************************************************************//
			; //*******************  V A R I A B L E S   L O C A L E L E S ***************************//
			; //**************************************************************************************//
			;	estado=LECTURA_VAC; //empieza por LECTURA_VAC
	MOVLB 0
	CLRF  estado,1
			;	uns8 x;
			;	uns8 vac[16],ac;    //variables para guardar temporalmente las arrays
			;	uns8 iac[16],ic;
			;	char vbat,o=0,vuelta=0; 
	CLRF  o,1
	CLRF  vuelta,1
			;	bit lectura=0;
	BCF   0xA6,lectura,1
			;	float raiz,errorAcu;
			;	uns16 Mac0,Mac1;
			;	uns16 q,a;//debug
			;	float ProbaVmax;
			;	
			;	escribir_posicion (2, 1);
	MOVLW 2
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	//for(p=0; p<3; p++)enviar_literal(mensaje2[p]);
			; 	escribir_posicion (4, 1);
	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	//for(p=0; p<5; p++)enviar_literal(mensaje3[p]);
			; 	escribir_posicion (4, 10);
	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 10
	CALL  escribir_posicion
			;	//for(p=0; p<4; p++)enviar_literal(mensaje4[p]);
			; 	GIE=1;
	BSF   0xFF2,GIE,0
			;	ADCON1=0b.0000.0000;
	CLRF  ADCON1,0
			;	ADCON2=0b.10.001.110;
	MOVLW 142
	MOVWF ADCON2,0
			;
			; //**************************************************************************************//
			; //**************************  B U C L E   I N F I N I T O  *****************************//
			; //**************************************************************************************//
			;	while (1)       					
			;	{
			;		switch(estado){
m223	MOVLB 0
	MOVF  estado,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m224
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m239
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m245
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m246
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m255
	BRA   m223
			;			case LECTURA_VAC:
			;				x=0;
m224	MOVLB 0
	CLRF  x,1
			;				if(!lectura){
	BTFSC 0xA6,lectura,1
	BRA   m231
			;					while(LATD.0==1){   
m225	BTFSS LATD,0,0
	BRA   m231
			;						r= Vmax;
	MOVFF Vmax,arg1f24
	MOVFF Vmax+1,arg1f24+1
	MOVFF Vmax+2,arg1f24+2
	CALL  _float24ToInt24
	MOVFF rval_3,r
	MOVFF rval_3+1,r+1
			;						if (((T == 5)&&((x==0)||(x==7))) || ((T == 10 )&&((x==1)||(x==6))) || ((T == 15)&&((x==2)||(x==5)))||((T ==20)&&((x==3)||(x==4)))) {
	MOVLW 5
	MOVLB 0
	CPFSEQ T,1
	BRA   m226
	MOVF  x,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m229
	MOVF  x,W,1
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m229
m226	MOVLW 10
	MOVLB 0
	CPFSEQ T,1
	BRA   m227
	DCFSNZ x,W,1
	BRA   m229
	MOVF  x,W,1
	XORLW 6
	BTFSC 0xFD8,Zero_,0
	BRA   m229
m227	MOVLW 15
	MOVLB 0
	CPFSEQ T,1
	BRA   m228
	MOVF  x,W,1
	XORLW 2
	BTFSC 0xFD8,Zero_,0
	BRA   m229
	MOVF  x,W,1
	XORLW 5
	BTFSC 0xFD8,Zero_,0
	BRA   m229
m228	MOVLW 20
	MOVLB 0
	CPFSEQ T,1
	BRA   m230
	MOVF  x,W,1
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m229
	MOVLW 4
	CPFSEQ x,1
	BRA   m230
			;						PORTC.3=1;
m229	BSF   PORTC,3,0
			;						ac=medir(LEO_VAC,8);
	MOVLB 0
	CLRF  canal,1
	MOVLW 8
	RCALL medir
	MOVFF resultado,ac
			;						ic=medir(LEO_IAC,8);
	MOVLW 2
	MOVLB 0
	MOVWF canal,1
	MOVLW 8
	RCALL medir
	MOVFF resultado,ic
			;						PORTC.3=0;
	BCF   PORTC,3,0
			;						vac[x]=127-ac;
	CLRF  FSR0+1,0
	MOVLW 112
	MOVLB 0
	ADDWF x,W,1
	MOVWF FSR0,0
	MOVF  ac,W,1
	SUBLW 127
	MOVWF INDF0,0
			;						iac[x]=ic;
	CLRF  FSR0+1,0
	MOVLW 129
	ADDWF x,W,1
	MOVWF FSR0,0
	MOVFF ic,INDF0
			;						x++;	
	INCF  x,1,1
			;						if ((T==20&&x==4)) {
	MOVLW 20
	CPFSEQ T,1
	BRA   m230
	MOVLW 4
	CPFSEQ x,1
	BRA   m230
			;							retardo_20u();retardo_20u();retardo_20u();retardo_20u();
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
			;							retardo_20u();retardo_20u();retardo_20u();retardo_20u();}
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
			;						}	
			;						lectura=1;	
m230	MOVLB 0
	BSF   0xA6,lectura,1
			;					}
	BRA   m225
			;				}
			;				if(lectura){
m231	MOVLB 0
	BTFSS 0xA6,lectura,1
	BRA   m238
			;					r= Vmax; // ponemos aqui para hacerlo efectivo al paso por cero,se intent√≥ en la interrupcion pero daba problemas el compilador
	MOVFF Vmax,arg1f24
	MOVFF Vmax+1,arg1f24+1
	MOVFF Vmax+2,arg1f24+2
	CALL  _float24ToInt24
	MOVFF rval_3,r
	MOVFF rval_3+1,r+1
			;					while(LATD.0==0){
m232	BTFSC LATD,0,0
	BRA   m238
			;						if  (((T == 5)&&((x==8)||(x==15))) || ((T == 10 )&&((x==9)||(x==14))) || ((T == 15)&&((x==10)||(x==13)))||((T ==20)&&((x==11)||(x==12)))) {
	MOVLW 5
	MOVLB 0
	CPFSEQ T,1
	BRA   m233
	MOVF  x,W,1
	XORLW 8
	BTFSC 0xFD8,Zero_,0
	BRA   m236
	MOVF  x,W,1
	XORLW 15
	BTFSC 0xFD8,Zero_,0
	BRA   m236
m233	MOVLW 10
	MOVLB 0
	CPFSEQ T,1
	BRA   m234
	MOVF  x,W,1
	XORLW 9
	BTFSC 0xFD8,Zero_,0
	BRA   m236
	MOVF  x,W,1
	XORLW 14
	BTFSC 0xFD8,Zero_,0
	BRA   m236
m234	MOVLW 15
	MOVLB 0
	CPFSEQ T,1
	BRA   m235
	MOVF  x,W,1
	XORLW 10
	BTFSC 0xFD8,Zero_,0
	BRA   m236
	MOVF  x,W,1
	XORLW 13
	BTFSC 0xFD8,Zero_,0
	BRA   m236
m235	MOVLW 20
	MOVLB 0
	CPFSEQ T,1
	BRA   m237
	MOVF  x,W,1
	XORLW 11
	BTFSC 0xFD8,Zero_,0
	BRA   m236
	MOVLW 12
	CPFSEQ x,1
	BRA   m237
			;						PORTC.3=1;
m236	BSF   PORTC,3,0
			;						ac=medir(LEO_VAC,8);
	MOVLB 0
	CLRF  canal,1
	MOVLW 8
	RCALL medir
	MOVFF resultado,ac
			;						ic=medir(LEO_IAC,8);
	MOVLW 2
	MOVLB 0
	MOVWF canal,1
	MOVLW 8
	RCALL medir
	MOVFF resultado,ic
			;						PORTC=0;
	CLRF  PORTC,0
			;						vac[x]=ac-127;
	CLRF  FSR0+1,0
	MOVLW 112
	MOVLB 0
	ADDWF x,W,1
	MOVWF FSR0,0
	MOVLW 127
	SUBWF ac,W,1
	MOVWF INDF0,0
			;						iac[x]=ic;
	CLRF  FSR0+1,0
	MOVLW 129
	ADDWF x,W,1
	MOVWF FSR0,0
	MOVFF ic,INDF0
			;						x++;	
	INCF  x,1,1
			;						if ((T==20&&x==12)) {
	MOVLW 20
	CPFSEQ T,1
	BRA   m237
	MOVLW 12
	CPFSEQ x,1
	BRA   m237
			;							retardo_20u();retardo_20u();retardo_20u();retardo_20u();
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
			;							retardo_20u();retardo_20u();retardo_20u();retardo_20u();}
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
			;						}			
			;						lectura=0;
m237	MOVLB 0
	BCF   0xA6,lectura,1
			;					}
	BRA   m232
			;				}
			;				estado = CALCULOS_VAC;
m238	MOVLW 1
	MOVLB 0
	MOVWF estado,1
			;				if(x<=15) estado = LECTURA_VAC;
	MOVLW 16
	CPFSLT x,1
	BRA   m223
	CLRF  estado,1
			;			break;
	BRA   m223
			;
			;			case CALCULOS_VAC:
			;
			;				Mac0=0;
m239	MOVLB 0
	CLRF  Mac0,1
	CLRF  Mac0+1,1
			;				for(p=0;p<16;p++){
	CLRF  p,1
m240	MOVLW 16
	MOVLB 0
	CPFSLT p,1
	BRA   m241
			;					ac=vac[p];
	CLRF  FSR0+1,0
	MOVLW 112
	ADDWF p,W,1
	MOVWF FSR0,0
	MOVFF INDF0,ac
			;					uns16 d =(uns16)ac*ac;
	MOVF  ac,W,1
	MULWF ac,1
	MOVFF PRODL,d_6
	MOVFF PRODH,d_6+1
			;					Mac0+=d;
	MOVF  d_6,W,1
	ADDWF Mac0,1,1
	MOVF  d_6+1,W,1
	ADDWFC Mac0+1,1,1
			;				}
	INCF  p,1,1
	BRA   m240
			;				Mac1=Mac0;
m241	MOVFF Mac0,Mac1
	MOVFF Mac0+1,Mac1+1
			;				Mac0/=p;
	MOVFF Mac0,arg1
	MOVFF Mac0+1,arg1+1
	MOVLB 0
	MOVF  p,W,1
	CALL  _divU16_8
	MOVFF arg1,Mac0
	MOVFF arg1+1,Mac0+1
			;				raiz= sqrt (Mac0);
	MOVFF Mac0,arg1f24
	MOVFF Mac0+1,arg1f24+1
	MOVLB 0
	CLRF  arg1f24+2,1
	CALL  _int24ToFloat24
	CALL  sqrt
	MOVFF arg1f24,raiz
	MOVFF arg1f24+1,raiz+1
	MOVFF arg1f24+2,raiz+2
			;				q = (uns16)raiz*10;
	MOVFF raiz,arg1f24
	MOVFF raiz+1,arg1f24+1
	MOVFF raiz+2,arg1f24+2
	CALL  _float24ToInt24
	MOVLW 10
	MOVLB 0
	MULWF rval_3,1
	MOVFF PRODL,q
	MOVFF PRODH,q+1
	MOVLW 10
	MULWF rval_3+1,1
	MOVF  PRODL,W,0
	ADDWF q+1,1,1
			;				float banda=51.6; //a 230 aqui tengo 53
	MOVLW 102
	MOVWF banda,1
	MOVLW 78
	MOVWF banda+1,1
	MOVLW 132
	MOVWF banda+2,1
			;				if(raiz<=REF_AC)raiz=REF_AC-raiz;
	BTFSC raiz+1,7,1
	BRA   m242
	MOVLW 1
	SUBWF raiz,W,1
	MOVLW 20
	SUBWFB raiz+1,W,1
	MOVLW 132
	SUBWFB raiz+2,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m243
m242	MOVLB 0
	CLRF  arg1f24,1
	MOVLW 20
	MOVWF arg1f24+1,1
	MOVLW 132
	MOVWF arg1f24+2,1
	MOVFF raiz,arg2f24
	MOVFF raiz+1,arg2f24+1
	MOVFF raiz+2,arg2f24+2
	CALL  _fsub24
	MOVFF arg1f24,raiz
	MOVFF arg1f24+1,raiz+1
	MOVFF arg1f24+2,raiz+2
			;				else if(raiz>REF_AC)raiz=raiz-REF_AC;
	BRA   m244
m243	MOVLB 0
	BTFSC raiz+1,7,1
	BRA   m244
	MOVLW 1
	SUBWF raiz,W,1
	MOVLW 20
	SUBWFB raiz+1,W,1
	MOVLW 132
	SUBWFB raiz+2,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m244
	MOVFF raiz,arg1f24
	MOVFF raiz+1,arg1f24+1
	MOVFF raiz+2,arg1f24+2
	CLRF  arg2f24,1
	MOVLW 20
	MOVWF arg2f24+1,1
	MOVLW 132
	MOVWF arg2f24+2,1
	CALL  _fsub24
	MOVFF arg1f24,raiz
	MOVFF arg1f24+1,raiz+1
	MOVFF arg1f24+2,raiz+2
			;
			;				
			;				a=(uns16)raiz; 		//la resta est√° mas o menos bien
m244	MOVFF raiz,arg1f24
	MOVFF raiz+1,arg1f24+1
	MOVFF raiz+2,arg1f24+2
	CALL  _float24ToInt24
	MOVFF rval_3,a
	MOVFF rval_3+1,a+1
			;				//if(raiz<=37.0){					
			;					//ProbaVmax=(raiz/banda)*10.0;
			;					ProbaVmax=raiz*0.3*100.0;
	MOVFF raiz,arg1f24
	MOVFF raiz+1,arg1f24+1
	MOVFF raiz+2,arg1f24+2
	MOVLW 154
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 25
	MOVWF arg2f24+1,1
	MOVLW 125
	MOVWF arg2f24+2,1
	CALL  _fmul24
	MOVLB 0
	CLRF  arg2f24,1
	MOVLW 72
	MOVWF arg2f24+1,1
	MOVLW 133
	MOVWF arg2f24+2,1
	CALL  _fmul24
	MOVFF arg1f24,ProbaVmax
	MOVFF arg1f24+1,ProbaVmax+1
	MOVFF arg1f24+2,ProbaVmax+2
			;					ProbaVmax*=0.6;
	MOVFF ProbaVmax,arg1f24
	MOVFF ProbaVmax+1,arg1f24+1
	MOVFF ProbaVmax+2,arg1f24+2
	MOVLW 154
	MOVLB 0
	MOVWF arg2f24,1
	MOVLW 25
	MOVWF arg2f24+1,1
	MOVLW 126
	MOVWF arg2f24+2,1
	CALL  _fmul24
	MOVFF arg1f24,ProbaVmax
	MOVFF arg1f24+1,ProbaVmax+1
	MOVFF arg1f24+2,ProbaVmax+2
			;
			;					Vmax=ProbaVmax;
	MOVFF ProbaVmax,Vmax
	MOVFF ProbaVmax+1,Vmax+1
	MOVFF ProbaVmax+2,Vmax+2
			;				//}
			;				
			;				estado = ENVIO_LCD;// cambiar a CALCULOS_IAC para la version final!!!!
	MOVLW 4
	MOVLB 0
	MOVWF estado,1
			;			
			;				break;
	BRA   m223
			;
			;			case CALCULOS_IAC:
			;			
			;				estado = LECTURAS_VARIAS;
m245	MOVLW 3
	MOVLB 0
	MOVWF estado,1
			;			break;
	BRA   m223
			;																///11,5v-->700
			;			case LECTURAS_VARIAS:								///11,8v-->728
			;				uns16 bat = medir(LEO_BAT,10);				 	///12,0v-->730
m246	MOVLW 1
	MOVLB 0
	MOVWF canal,1
	MOVLW 10
	RCALL medir
	MOVFF resultado,bat
	MOVFF resultado+1,bat+1
			;				if (bat>785)				vbat=BATT_FULL;  	///12,3v-->763
	MOVLW 18
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 3
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m247
	MOVLW 1
	MOVWF vbat,1
			;				else if((bat>762&&bat<775))	vbat=BATT_75;		///12,5v-->774
	BRA   m254
m247	MOVLW 251
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m248
	MOVLW 7
	SUBWF bat,W,1
	MOVLW 3
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m248
	MOVLW 2
	MOVWF vbat,1
			;				else if((bat>742&&bat<760)) vbat=BATT_50;		///12,8v-->794
	BRA   m254
m248	MOVLW 231
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m249
	MOVLW 248
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m249
	MOVLW 3
	MOVWF vbat,1
			;				else if((bat>722&&bat<740)) vbat=BATT_25;		///13,0v-->804
	BRA   m254
m249	MOVLW 211
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m250
	MOVLW 228
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m250
	MOVLW 4
	MOVWF vbat,1
			;				else if((bat>710&&bat<720)) vbat=BATT_10;		///13,5v-->837
	BRA   m254
m250	MOVLW 199
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m251
	MOVLW 208
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m251
	MOVLW 5
	MOVWF vbat,1
			;				else if(bat<=708){								///14,0v-->872
	BRA   m254
m251	MOVLW 197
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m254
			;					o++;										///14,5v-->895
	INCF  o,1,1
			;					if(o<=5)vbat=BATT_LW;						///15,0v-->946
	MOVLW 6
	CPFSLT o,1
	BRA   m252
	MOVLW 6
	MOVWF vbat,1
			;					if(o>6)vbat=BATT_CLEAR;
m252	MOVLW 6
	MOVLB 0
	CPFSGT o,1
	BRA   m253
	MOVLW 7
	MOVWF vbat,1
			;					if(o==10)o=0;
m253	MOVLW 10
	MOVLB 0
	CPFSEQ o,1
	BRA   m254
	CLRF  o,1
			;				} 			
			;				estado= ENVIO_LCD;
m254	MOVLW 4
	MOVLB 0
	MOVWF estado,1
			;			break;
	BRA   m223
			;
			;			case ENVIO_LCD:
			;				//puesto as√≠ para tener m√°s velocidad en el bucle principal!!
			;				switch (vuelta){
m255	MOVLB 0
	MOVF  vuelta,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m256
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m257
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m273
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m258
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m259
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m260
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m261
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m262
	XORLW 15
	BTFSC 0xFD8,Zero_,0
	BRA   m263
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m264
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m265
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m266
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m267
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m268
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m269
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m270
	XORLW 31
	BTFSC 0xFD8,Zero_,0
	BRA   m271
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m272
	BRA   m273
			;					case 0:
			;						uns16 w =(uns16)banda;
m256	MOVFF banda,arg1f24
	MOVFF banda+1,arg1f24+1
	MOVFF banda+2,arg1f24+2
	CALL  _float24ToInt24
	MOVFF rval_3,w
	MOVFF rval_3+1,w+1
			;						Enviar_uns16(2,1,w);
	MOVLW 2
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 1
	MOVWF columna_3,1
	MOVFF w,dato_4
	MOVFF w+1,dato_4+1
	CALL  Enviar_uns16
			;					break;
	BRA   m273
			;					case 1:
			;						Enviar_uns16(2,7,a);
m257	MOVLW 2
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 7
	MOVWF columna_3,1
	MOVFF a,dato_4
	MOVFF a+1,dato_4+1
	CALL  Enviar_uns16
			;					break;
	BRA   m273
			;					case 2:
			;
			;					break;
			;					case 3:
			;						Enviar_char(2,13,vac[3]);
m258	MOVLW 2
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 13
	MOVWF columna_4,1
	MOVF  vac+3,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 4:
			;						Enviar_char(2,17,vac[4]);
m259	MOVLW 2
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 17
	MOVWF columna_4,1
	MOVF  vac+4,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 5:
			;						Enviar_char(3,1,vac[5]);
m260	MOVLW 3
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 1
	MOVWF columna_4,1
	MOVF  vac+5,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 6:
			;						Enviar_char(3,5,vac[6]);
m261	MOVLW 3
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 5
	MOVWF columna_4,1
	MOVF  vac+6,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 7:
			;						Enviar_char(3,9,vac[7]);
m262	MOVLW 3
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 9
	MOVWF columna_4,1
	MOVF  vac+7,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 8:
			;						Enviar_char(3,13,vac[8]);
m263	MOVLW 3
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 13
	MOVWF columna_4,1
	MOVF  vac+8,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 9:
			;						Enviar_char(3,17,vac[9]);
m264	MOVLW 3
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 17
	MOVWF columna_4,1
	MOVF  vac+9,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 10:
			;						Enviar_char(4,1,vac[10]);
m265	MOVLW 4
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 1
	MOVWF columna_4,1
	MOVF  vac+10,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 11:
			;						Enviar_char(4,5,vac[11]);
m266	MOVLW 4
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 5
	MOVWF columna_4,1
	MOVF  vac+11,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 12:
			;						Enviar_char(4,9,vac[12]);
m267	MOVLW 4
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 9
	MOVWF columna_4,1
	MOVF  vac+12,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 13:
			;						Enviar_char(4,13,vac[13]);
m268	MOVLW 4
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 13
	MOVWF columna_4,1
	MOVF  vac+13,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 14:
			;						Enviar_char(4,17,vac[14]);
m269	MOVLW 4
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 17
	MOVWF columna_4,1
	MOVF  vac+14,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 15:
			;						uns16  v= (uns16)ProbaVmax;
m270	MOVFF ProbaVmax,arg1f24
	MOVFF ProbaVmax+1,arg1f24+1
	MOVFF ProbaVmax+2,arg1f24+2
	CALL  _float24ToInt24
	MOVFF rval_3,v
	MOVFF rval_3+1,v+1
			;						Enviar_uns16(1,1,v);
	MOVLW 1
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 1
	MOVWF columna_3,1
	MOVFF v,dato_4
	MOVFF v+1,dato_4+1
	CALL  Enviar_uns16
			;						Enviar_char(1,12,r);
	MOVLW 1
	MOVLB 0
	MOVWF linea_5,1
	MOVLW 12
	MOVWF columna_4,1
	MOVF  r,W,1
	CALL  Enviar_char
			;					break;
	BRA   m273
			;					case 16:
			;						 
			;						Enviar_uns16(1,16, q);
m271	MOVLW 1
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 16
	MOVWF columna_3,1
	MOVFF q,dato_4
	MOVFF q+1,dato_4+1
	CALL  Enviar_uns16
			;					break;
	BRA   m273
			;					case 17:
			;						Enviar_uns16(1,7,Mac1);
m272	MOVLW 1
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 7
	MOVWF columna_3,1
	MOVFF Mac1,dato_4
	MOVFF Mac1+1,dato_4+1
	CALL  Enviar_uns16
			;					break;
			;				}
			;				vuelta++;
m273	MOVLB 0
	INCF  vuelta,1,1
			;				if(vuelta==18)vuelta=0;
	MOVLW 18
	CPFSEQ vuelta,1
	BRA   m274
	CLRF  vuelta,1
			;				estado = LECTURA_VAC;
m274	MOVLB 0
	CLRF  estado,1
			;			break;
	BRA   m223
			;
			;		}
			;	}	
			;}
			;
			;
			; //**************************************************************************************//
			; //************************ F U N C I O N E S    V A R I A S ****************************//
			; //**************************************************************************************//
			;			
			;void configuraPic (void)					
			;{
configuraPic
			;	GIE = 0;						// Desactivamos inicialmente todas las interrupciones.
	BCF   0xFF2,GIE,0
			;
			;	OSCTUNE=0b.01.000000; //PLL enable 
	MOVLW 64
	MOVWF OSCTUNE,0
			;	
			;	RCON = 0b.01111111; //C18 pag 80 i 167  Causes del RESET i IPEN (priority Enabled o no)
	MOVLW 127
	MOVWF RCON,0
			;	OSCCON    = 0b.0.111.0.0.00;//C18 pag 53  //=============== ULL b3 abans 0 
	MOVLW 112
	MOVWF OSCCON,0
			;	
			;	ANSEL  = 0b.0000.0111;					// Solo el canal AN0 ser√° entrada anal√≥gica, el resto ser√°n entradas/salidas digitales.(PIC 816F87)
	MOVLW 7
	MOVWF ANSEL,0
			;	//ANSELH = 0b.0000.0000;				// Solo el canal AN0 ser√° entrada anal√≥gica, el resto ser√°n entradas/salidas digitales.(PIC 816F87)
			;	
			;	TRISA  = 0b.0000.1111;					// PORTA.0 es entrada, el resto son salidas.
	MOVLW 15
	MOVWF TRISA,0
			;	TRISB  = 0b.0000.0000;					// PORTB todo salidas.
	CLRF  TRISB,0
			;	TRISC  = 0b.0000.0000;					// PORTC todo salidas adem√°s de la salida del PWM.
	CLRF  TRISC,0
			;	TRISD  = 0b.0000.0000;					// PORTD todo salidas.				
	CLRF  TRISD,0
			;	LATB  = 0x00;							// Inicializa las salidas de PORTB a 0.
	CLRF  LATB,0
			;	PORTC  = 0x00;							// Inicializa las salidas de PORTC a 0.
	CLRF  PORTC,0
			;	PORTD  = 0x00;							// Inicializa las salidas de PORTD a 0.
	CLRF  PORTD,0
			;
			;	//configuro ccp y pwm
			;
			;
			;	T2CON   = 0b.0.0001.0.01;				// Prescaler P1 = 4, TMR2ON = 1 cuenta;	
	MOVLW 9
	MOVWF T2CON,0
			;	PR2     = 199;
	MOVLW 199
	MOVWF PR2,0
			;	CCP1CON = 0b.1000.1100;					// CCP1: modo PWM half bridge con bits de CCPR1L a 00 inicialmente.
	MOVLW 140
	MOVWF CCP1CON,0
			;
			;	PWM1CON =0b.0000.0100; //tiempo muerto entre P1A y P1B
	MOVLW 4
	MOVWF PWM1CON,0
	RETURN
_const1
	MOVLB 0
	MOVWF ci,1
	MOVF  ci,W,1
	ADDLW 220
	MOVWF TBLPTR,0
	MOVLW 26
	CLRF  TBLPTR+1,0
	ADDWFC TBLPTR+1,1,0
	CLRF  TBLPTR+2,0
	TBLRD *
	MOVF  TABLAT,W,0
	RETURN
	DW    0x800
	DW    0x1710
	DW    0x271F
	DW    0x362F
	DW    0x443D
	DW    0x514B
	DW    0x5D57
	DW    0x6762
	DW    0x706C
	DW    0x7773
	DW    0x7B79
	DW    0x7E7D
	DW    0x807F
	DW    0x100C
	DW    0x408
	DW    0x41B
	DW    0x304
	DW    0xFFEE
	DW    0xFFFF
	DW    0xFFFF
	DW    0xFFFF
	DW    0xFFEE
	DW    0xFFF1
	DW    0xFFFF
	DW    0xFFFF
	DW    0xFFEE
	DW    0xF1F1
	DW    0xFFFF
	DW    0xFFFF
	DW    0xFFEE
	DW    0xF1F1
	DW    0xFFF1
	DW    0xFFFF
	DW    0xFFEE
	DW    0xF1F1
	DW    0xF1F1
	DW    0xFFFF
	DW    0xFFEE
	DW    0xF1F1
	DW    0xF1F1
	DW    0xFFF1
	DW    0x0
	DW    0x0
	DW    0x0
	DW    0x0

	END


; *** KEY INFO ***

; 0x000008  162 word(s)  1 % : highPriorityTimer_0
; 0x001AC4   57 word(s)  0 % : _const1
; 0x00014C  100 word(s)  1 % : _fmul24
; 0x000214  167 word(s)  2 % : _fadd24
; 0x000362    7 word(s)  0 % : _fsub24
; 0x000370   69 word(s)  0 % : _int24ToFloat24
; 0x0003FA   85 word(s)  1 % : _float24ToInt24
; 0x0004A4   24 word(s)  0 % : _divU16_8
; 0x0004D4   27 word(s)  0 % : _divU16_16
; 0x00050A   23 word(s)  0 % : _remU16_8
; 0x000538   25 word(s)  0 % : _remU16_16
; 0x00056A  169 word(s)  2 % : sqrt
; 0x0006BC   10 word(s)  0 % : retardo_20u
; 0x0006D0   19 word(s)  0 % : retardo_1m
; 0x0006F6   20 word(s)  0 % : retardo_50m
; 0x00071E   18 word(s)  0 % : retardo_100m
; 0x000742   20 word(s)  0 % : retardo_500m
; 0x00076A   28 word(s)  0 % : envia_codigo_inicial
; 0x0007A2   59 word(s)  0 % : enviar_comando
; 0x000818   79 word(s)  0 % : enviar_literal
; 0x0008B6   72 word(s)  0 % : enviar_cifra
; 0x000946   59 word(s)  0 % : inicializar_lcd
; 0x0009BC   39 word(s)  0 % : escribir_posicion
; 0x000A0A   37 word(s)  0 % : borrar_linea
; 0x000A54    2 word(s)  0 % : borrar_lcd
; 0x000A58  301 word(s)  3 % : Enviar_lcd
; 0x000CB2  320 word(s)  3 % : Enviar_uns16
; 0x000F32  209 word(s)  2 % : Enviar_char
; 0x0010D4  160 word(s)  1 % : RAM_LCD
; 0x001214  113 word(s)  1 % : medir
; 0x001A90   26 word(s)  0 % : configuraPic
; 0x0012F6  973 word(s) 11 % : main

; RAM usage: 121 bytes (107 local), 647 bytes free
; Maximum call level: 3 (+2 for interrupt)
; Total of 3481 code words (42 %)
