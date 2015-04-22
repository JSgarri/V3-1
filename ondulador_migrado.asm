
; CC8E Version 1.4, Copyright (c) B Knudsen Data
; C compiler for the PIC18 microcontrollers
; ************  21. Apr 2015  15:08  *************

	processor  PIC18F44K20
	radix  DEC

	__config 0x300001, 0x8
	__config 0x300002, 0x1
	__config 0x300003, 0x16
	__config 0x300005, 0x88
	__config 0x300006, 0x85

TBLPTR      EQU   0xFF6
TABLAT      EQU   0xFF5
PRODH       EQU   0xFF4
PRODL       EQU   0xFF3
INTCON      EQU   0xFF2
INTCON2     EQU   0xFF1
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
ADCON0      EQU   0xFC2
ADCON1      EQU   0xFC1
CCPR1L      EQU   0xFBE
CCP1CON     EQU   0xFBD
PWM1CON     EQU   0xFB7
OSCTUNE     EQU   0xF9B
TRISD       EQU   0xF95
TRISC       EQU   0xF94
TRISB       EQU   0xF93
TRISA       EQU   0xF92
LATD        EQU   0xF8C
LATC        EQU   0xF8B
PORTD       EQU   0xF83
PORTC       EQU   0xF82
PORTB       EQU   0xF81
TMR0IF      EQU   2
GIE         EQU   7
TMR2ON      EQU   2
GO          EQU   1
TMR2IF      EQU   1
TMR2IE      EQU   1
bUdw        EQU   0
ancho_pwm   EQU   0x72
Vmax        EQU   0x74
SENO        EQU   0x76
T           EQU   0x77
i           EQU   0x78
svrSTATUS   EQU   0x60
svrBSR      EQU   0x61
svrWREG     EQU   0x62
sv_PRODL    EQU   0x63
sv_PRODH    EQU   0x64
sv_TBLPTR   EQU   0x65
sv_TABLAT   EQU   0x68
PDel0       EQU   0xF7F
PDel0_2     EQU   0x6F
PDel0_3     EQU   0x6F
PDel1       EQU   0x70
PDel0_4     EQU   0xF7F
PDel1_2     EQU   0xF7F
PDel0_5     EQU   0xF7F
PDel1_3     EQU   0xF7F
PDel2       EQU   0xF7F
codigo      EQU   0x6E
comando     EQU   0x6E
dato        EQU   0xF7F
i_3         EQU   0xF7F
dato_2      EQU   0xF7F
i_4         EQU   0xF7F
i_5         EQU   0x6D
linea       EQU   0xF7F
columna     EQU   0xF7F
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
C3cnt       EQU   0xF7F
C4tmp       EQU   0xF7F
C5rem       EQU   0xF7F
C6cnt       EQU   0xF7F
C7tmp       EQU   0xF7F
C8cnt       EQU   0xF7F
C9tmp       EQU   0xF7F
C10rem      EQU   0xF7F
C11cnt      EQU   0xF7F
C12tmp      EQU   0xF7F
C13cnt      EQU   0xF7F
C14tmp      EQU   0xF7F
C15rem      EQU   0xF7F
C16cnt      EQU   0xF7F
C17tmp      EQU   0xF7F
linea_4     EQU   0xF7F
columna_3   EQU   0xF7F
dato_4      EQU   0xF7F
num_2       EQU   0xF7F
u_milers_2  EQU   0xF7F
cent_2      EQU   0xF7F
d_milers    EQU   0xF7F
dec_2       EQU   0xF7F
unid_2      EQU   0xF7F
resto1_2    EQU   0xF7F
i_8         EQU   0xF7F
xx_2        EQU   0xF7F
dat_2       EQU   0xF7F
C18cnt      EQU   0xF7F
C19tmp      EQU   0xF7F
C20rem      EQU   0xF7F
C21cnt      EQU   0xF7F
C22tmp      EQU   0xF7F
C23cnt      EQU   0xF7F
C24tmp      EQU   0xF7F
C25rem      EQU   0xF7F
C26cnt      EQU   0xF7F
C27tmp      EQU   0xF7F
C28cnt      EQU   0xF7F
C29tmp      EQU   0xF7F
C30rem      EQU   0xF7F
C31cnt      EQU   0xF7F
C32tmp      EQU   0xF7F
C33cnt      EQU   0xF7F
C34tmp      EQU   0xF7F
C35rem      EQU   0xF7F
C36cnt      EQU   0xF7F
C37tmp      EQU   0xF7F
valor_AD    EQU   0xF7F
ci          EQU   0x69

	GOTO main

  ; FILE ondulador_migrado.c
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
			; #pragma config[5] = 0b.1000.1000//Mirar CCP2 MUX bit 0 -->1 = CCP2 input/output is multiplexed with RC1
			;													//   -->0 = CCP2 input/output is multiplexed with RB3 
			; #pragma config[6] = 0b.1000.0101
			; // resto configs son para la proteccion del programa 
			;
			; #pragma sharedAllocation//evita error en las interrupciones
			;
			; //**************************************************************************************//
			; //********************************  V A R I A B L E S  *********************************//
			; //**************************************************************************************//
			;
			;#define LECTURA_VAC  0
			;#define CALCULOS_VAC 1
			;#define LECTURA_IAC  2
			;#define CALCULOS_IAC 3
			;#define ENVIO_LCD    4
			;
			;
			;#pragma rambank 0
			;bit bUdw; // a 1 puja en la taula (incrementa) , a 0 decrementa
			;uns16 ancho_pwm;
			;uns16 Vmax;
			;uns8 SENO;
			;
			;
			;char T,i; // Index de la taula
			;
			;
			;static const char sen [26] = 			
			;{0,8,16,23,31,39,47,54,61,68,75,81,87,93,98,103,108,112,115,119,121,123,125,126,127,128};
			;
			;
			;//=======================================================================
			;#include "int18XXX.h"	 // Cap莽alera de interrupcions.
			;
			;#pragma origin 0x08	//#pragma origin 0x18	(PIC 16F88x)// Indica el origen del vector de interrupciones.
	ORG 0x0008
			;
			;interrupt highPriorityTimer_0 (void)		// Interrupci贸n por desbordamiento de Timer 0.			
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
			;
			;	     				// Guarda W, STATUS y PCLATH.
			;	LATC.0=!LATC.0;
	BTG   LATC,0,0
			;	if(TMR2IF) 	//{ LATD.0= !LATD.0; TMR2IF=0; }
	BTFSS 0xF9E,TMR2IF,0
	BRA   m008
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
			;		CCPR1L    = ancho_pwm.high8;	CCP1CON.5 = ancho_pwm.7;	CCP1CON.4 = ancho_pwm.6;
m002	MOVFF ancho_pwm+1,CCPR1L
	MOVLB 0
	BTFSS ancho_pwm,7,1
	BCF   CCP1CON,5,0
	BTFSC ancho_pwm,7,1
	BSF   CCP1CON,5,0
	BTFSS ancho_pwm,6,1
	BCF   CCP1CON,4,0
	BTFSC ancho_pwm,6,1
	BSF   CCP1CON,4,0
			;				  
			;		if(bUdw) 	{ if(T>=25)  bUdw=0;      
	BTFSS 0x71,bUdw,1
	BRA   m004
	MOVLW 24
	CPFSGT T,1
	BRA   m003
	BCF   0x71,bUdw,1
			;				      else        T++;
	BRA   m004
m003	MOVLB 0
	INCF  T,1,1
			;					} 
			;		if(!bUdw)   T--;                       
m004	MOVLB 0
	BTFSS 0x71,bUdw,1
	DECF  T,1,1
			;		if(T==0) 
	MOVLB 0
	MOVF  T,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m007
			;		{  	while(!TMR2IF); TMR2IF =0; // ESPERO QUE ACABI  T=1
m005	BTFSS 0xF9E,TMR2IF,0
	BRA   m005
	BCF   0xF9E,TMR2IF,0
			;			T2CON = 0b.0.0001.1.01;  	CCPR1L = 0;		CCP1CON.5 = 0;	CCP1CON.4 = 0;	 // Posrescaler a 2
	MOVLW 13
	MOVWF T2CON,0
	CLRF  CCPR1L,0
	BCF   CCP1CON,5,0
	BCF   CCP1CON,4,0
			;			//while(!TMR2IF); // espero que acabi el T=0
			;			//	TMR2IF =0; // Postscaler a 2
			;			while(!TMR2IF); // espeor que acabi la 1era meitat del T=0, postsclaer =2
m006	BTFSS 0xF9E,TMR2IF,0
	BRA   m006
			;			TMR2IF =0; 	T2CON = 0b.0.0000.1.01;  	CCPR1L = 0;		CCP1CON.5 = 0;	CCP1CON.4 = 0;
	BCF   0xF9E,TMR2IF,0
	MOVLW 5
	MOVWF T2CON,0
	CLRF  CCPR1L,0
	BCF   CCP1CON,5,0
	BCF   CCP1CON,4,0
			;			LATD.0= !LATD.0;	bUdw=1;  T=1; // el deixo sortir
	BTG   LATD,0,0
	MOVLB 0
	BSF   0x71,bUdw,1
	MOVLW 1
	MOVWF T,1
			;		}			  
			;							
			;		SENO = sen[T];			
m007	MOVLB 0
	MOVF  T,W,1
	CALL  _const1
	MOVLB 0
	MOVWF SENO,1
			;		ancho_pwm = (uns16)SENO*Vmax;
	MOVF  SENO,W,1
	MULWF Vmax,1
	MOVFF PRODL,ancho_pwm
	MOVFF PRODH,ancho_pwm+1
	MOVF  SENO,W,1
	MULWF Vmax+1,1
	MOVF  PRODL,W,0
	ADDWF ancho_pwm+1,1,1
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
m008	MOVFF sv_PRODL,PRODL
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

  ; FILE Temporiz_20Mhz.h
			;void retardo_10u(void){
retardo_10u
			;	char PDel0;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .11       ; 1 set numero de repeticion 
	MOVLW 11
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0,0
			;	PLoop0  clrwdt              ; 1 clear watchdog
m009	CLRWDT
			;	        decfsz    PDel0, 1  ; 1 + (1) es el tiempo 0  ?
	DECFSZ PDel0,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m009
			;	        clrwdt              ; 1 ciclo delay
	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm
			;}
			;
			;void retardo_20u(void){
retardo_20u
			;	char PDel0;
			;	#asm
			;	;------------------------------------------------------------
			;	DEMORA  movlw     .23       ; 1 set numero de repeticion 
	MOVLW 23
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_2,1
			;	PLoop0  clrwdt              ; 1 clear watchdog
m010	CLRWDT
			;	        decfsz    PDel0, 1  ; 1 + (1) es el tiempo 0  ?
	DECFSZ PDel0_2,1,1
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m010
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m011
			;	PDelL2  clrwdt              ; 1 ciclo delay
m011	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm
			;}
			;
			;void retardo_1m(void){
retardo_1m
			;	char PDel0,PDel1;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .6        ; 1 set numero de repeticion  (B)
	MOVLW 6
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_3,1
			;	PLoop1  movlw     .207      ; 1 set numero de repeticion  (A)
m012	MOVLW 207
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1,1
			;	PLoop2  clrwdt              ; 1 clear watchdog
m013	CLRWDT
			;	        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel1,1,1
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m013
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel0_3,1,1
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m012
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m014
			;	PDelL2  clrwdt              ; 1 ciclo delay
m014	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm
			;}
			;
			;void retardo_100m(void){
retardo_100m
			;	char PDel0,PDel1;
			;	#asm
			;	;-------------------------------------------------------------
			;	DEMORA  movlw     .239      ; 1 set numero de repeticion  (B)
	MOVLW 239
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_4,0
			;	PLoop1  movlw     .232      ; 1 set numero de repeticion  (A)
m015	MOVLW 232
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m016	CLRWDT
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m017
			;	PDelL2  goto PDelL3         ; 2 ciclos delay
m017	GOTO  m018
			;	PDelL3  clrwdt              ; 1 ciclo delay
m018	CLRWDT
			;	        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel1_2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m016
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel0_4,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m015
			;	PDelL4  goto PDelL5         ; 2 ciclos delay
	GOTO  m019
			;	PDelL5  goto PDelL6         ; 2 ciclos delay
m019	GOTO  m020
			;	PDelL6  goto PDelL7         ; 2 ciclos delay
m020	GOTO  m021
			;	PDelL7  clrwdt              ; 1 ciclo delay
m021	CLRWDT
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
			;	DEMORA  movlw     .22       ; 1 set numero de repeticion  (C)
	MOVLW 22
			;	        movwf     PDel0     ; 1 |
	MOVWF PDel0_5,0
			;	PLoop0  movlw     .134      ; 1 set numero de repeticion  (B)
m022	MOVLW 134
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_3,0
			;	PLoop1  movlw     .211      ; 1 set numero de repeticion  (A)
m023	MOVLW 211
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m024	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m024
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_3,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m023
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_5,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m022
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m025
			;	PDelL2  clrwdt              ; 1 ciclo delay
m025	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm

  ; FILE C:\PIC\CC8E\math24F.h
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
			;    aarg.high8 = W;
			;
			;    // save sign
			;    char sign = arg2f24.mid8 ^ W;  // before first overflow test
			;
			;    W = arg1f24.high8;
			;   #if __CoreSet__ / 100 == 17
			;    if (W != 0)
			;        W = arg2f24.high8;
			;    if (W == 0)
			;        goto RES0;
			;   #else
			;    if (!Zero_)
			;        W = arg2f24.high8;
			;    if (Zero_)
			;        goto RES0;
			;   #endif
			;
			;    arg1f24.high8 += W /* arg2f24.high8 */;
			;    W = FpBIAS-1;
			;    if (Carry)  {
			;        arg1f24.high8 -= W;
			;        if (Carry)
			;            goto OVERFLOW;
			;    }
			;    else  {
			;        arg1f24.high8 -= W;
			;        if (!Carry)
			;            goto UNDERFLOW;
			;    }
			;    aarg.low8 = arg1f24.low8;
			;
			;    aarg.15 = 1;
			;    arg2f24.15 = 1;
			;
			;   #if defined hw_mult8x8  &&  !defined FP_OPTIM_SIZE
			;
			;    char tmpL;
			;    arg1f24.low16 = 0;
			;
			;    hw_mult8x8( arg2f24.low8, aarg.low8);   // p1
			;    tmpL = hiRES;
			;
			;    hw_mult8x8( arg2f24.mid8, aarg.low8);  // p2
			;    tmpL += loRES;
			;    genAdd( arg1f24.low8, hiRES);
			;    genAdd( arg1f24.mid8, 0);
			;
			;    hw_mult8x8( arg2f24.low8, aarg.mid8);  // p2
			;    tmpL += loRES;
			;    genAdd( arg1f24.low8, hiRES);
			;    genAdd( arg1f24.mid8, 0);
			;
			;    hw_mult8x8( arg2f24.mid8, aarg.mid8);  // p3
			;    arg1f24.low8 += loRES;
			;    genAdd( arg1f24.mid8, hiRES);
			;
			;   #undef hw_mult8x8
			;   #undef loRES
			;   #undef hiRES
			;
			;    if (!arg1f24.15)  {
			;        tmpL = rl( tmpL);
			;        arg1f24.low16 = rl( arg1f24.low16);
			;        if (arg1f24.high8 == 0)
			;            goto UNDERFLOW;
			;        arg1f24.high8 -= 1;
			;        W = rl( tmpL);  // restore bit behind LSB in Carry
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
			;        arg1f24.low8 += 1;
			;        if (!arg1f24.low8)  {
			;            arg1f24.mid8 += 1;
			;            if (!arg1f24.mid8)  {
			;               #if __CoreSet__ >= 1700 && __CoreSet__ <= 1800
			;                Carry = 1; // previous INCF changes Carry
			;               #else
			;                // Carry = 1; //OK
			;               #endif
			;                arg1f24.low16 = rr( arg1f24.low16);
			;                arg1f24.high8 += 1;
			;                if (Zero_)
			;                    goto OVERFLOW;
			;            }
			;        }
			;    }
			;   #endif
			;    goto SET_SIGN;
			;
			;  UNDERFLOW:
			;    FpUnderFlow = 1;
			;  RES0:
			;    arg1f24.high8 = 0;
			;    goto MANTISSA;
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
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
			;    if (!Carry)  {
			;        expo = -expo;
			;        temp = arg1f24.high8;
			;        arg1f24.high8 = arg2f24.high8;
			;        arg2f24.high8 = temp;
			;        temp = arg1f24.mid8;
			;        arg1f24.mid8 = arg2f24.mid8;
			;        arg2f24.mid8 = temp;
			;        temp = arg1f24.low8;
			;        arg1f24.low8 = arg2f24.low8;
			;        arg2f24.low8 = temp;
			;    }
			;    if (expo > sizeof(arg1f24)*8-7)
			;        goto _RETURN_MF;
			;    if (!arg2f24.high8)
			;        goto _RETURN_MF;   // result is arg1f24
			;
			;    xtra = 0;
			;
			;    W = arg1f24.mid8;
			;    temp = W;
			;    char sign = arg2f24.mid8 ^ W;
			;    arg1f24.15 = 1;
			;    arg2f24.15 = 1;
			;
			;    while (1)  {
			;        W = 8;
			;        expo -= W;
			;        if (!Carry)
			;            break;
			;        xtra = arg2f24.low8;
			;        arg2f24.low8 = arg2f24.mid8;
			;        arg2f24.mid8 = 0;
			;    }
			;    expo += W;
			;    if (expo)  {
			;        do  {
			;            Carry = 0;
			;            arg2f24.low16 = rr( arg2f24.low16);
			;            xtra = rr( xtra);
			;        } while (--expo > 0);
			;    }
			;
			;
			;    if (sign & 0x80)  {
			;        // SUBTRACT
			;        arg1f24.low8 -= arg2f24.low8;
			;        genSub( arg1f24.mid8, arg2f24.mid8);
			;        if (!Carry)  {  // arg2f24 > arg1f24
			;            arg1f24.low16 = -arg1f24.low16;
			;            // xtra == 0 because arg1f24.exp == arg2f24.exp
			;            temp ^= 0x80;  // invert sign
			;        }
			;        xtra = -xtra;
			;        if (xtra)
			;            arg1f24.low16 --;
			;        // adjust result left
			;       #define counter expo
			;        counter = 3;
			;        while (!arg1f24.mid8)  {
			;            arg1f24.mid8 = arg1f24.low8;
			;            arg1f24.low8 = xtra;
			;            xtra = 0;
			;            arg1f24.high8 -= 8;
			;            if (!Carry)
			;                goto RES0;
			;            if (--counter == 0)  // max 2 iterations
			;                goto RES0;
			;        }
			;       #undef counter
			;        while (!arg1f24.15)  {
			;            Carry = 0;
			;            xtra = rl( xtra);
			;            arg1f24.low16 = rl( arg1f24.low16);
			;            arg1f24.high8 --;
			;            if (!arg1f24.high8)
			;                goto RES0;   // UNDERFLOW?
			;        }
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding  &&  (xtra & 0x80))  {
			;            xtra = 0; // disable recursion
			;            goto INCREMENT;
			;        }
			;       #endif
			;    }
			;    else  {
			;        // ADD arg1f24 and arg2f24
			;        arg1f24.low8 += arg2f24.low8;
			;        genAdd( arg1f24.mid8, arg2f24.mid8);
			;        if (Carry)  {
			;          ADJUST_RIGHT:
			;            arg1f24.low16 = rr( arg1f24.low16);
			;            xtra = rr( xtra);
			;            arg1f24.high8 += 1;  // exp
			;            if (!arg1f24.high8)
			;                goto OVERFLOW;
			;        }
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding  &&  (xtra & 0x80))  {
			;          INCREMENT:
			;            arg1f24.low8 += 1;
			;            if (!arg1f24.low8)  {
			;                arg1f24.mid8 += 1;
			;                if (!arg1f24.mid8)  {
			;                    Carry = 1; // prepare for shift
			;                    arg1f24.0 = 0;  // disable recursion
			;                    goto ADJUST_RIGHT;
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
			;    goto MANTISSA;
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
			;    arg1f24.high8 = 0xFF;
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
			;
			;  SET_SIGN:
			;    if (!(temp & 0x80))
			;        arg1f24.15 = 0;
			;
			;  _RETURN_MF:
			;    return arg1f24;
			;}
			;
			;
			;// SUBTRACTION
			;
			;float24 operator- _fsub24( sharedM float24 arg1f24, sharedM float24 arg2f24)
			;{
_fsub24
			;    arg2f24.mid8 ^= 0x80;
			;    arg1f24 += arg2f24;
			;    return arg1f24;
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
			;    char xtra = 0;
			;    char sign = 0;
			;    if (arg1f24 < 0)  {
			;        arg1f24 = -arg1f24;
			;        sign |= 0x80;
			;    }
			;    if (arg1f24.high8)  {
			;        expo += 8;
			;        xtra = arg1f24.low8;
			;        arg1f24.low8 = arg1f24.mid8;
			;        arg1f24.mid8 = arg1f24.high8;
			;    }
			;    else if (!arg1f24.mid8)  {
			;        expo -= 8;
			;        W = arg1f24.low8;
			;        if (!W)
			;            goto _RETURN_MF;
			;        arg1f24.mid8 = W;
			;        arg1f24.low8 = 0;
			;    }
			;
			;    // arg1f24.mid8 != 0
			;    goto TEST_ARG1_B15;
			;    do  {
			;        xtra = rl( xtra);
			;        arg1f24.low16 = rl( arg1f24.low16);
			;        expo --;
			;      TEST_ARG1_B15:
			;    } while (!arg1f24.15);
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding && (xtra & 0x80))  {
			;        arg1f24.low8 += 1;
			;        if (!arg1f24.low8)  {
			;            arg1f24.mid8 += 1;
			;            if (!arg1f24.mid8)  {
			;                Carry = 1;
			;                arg1f24.low16 = rr( arg1f24.low16);
			;                expo ++;
			;            }
			;        }
			;    }
			;   #endif
			;
			;    arg1f24.high8 = expo;
			;    if (!(sign & 0x80))
			;        arg1f24.15 = 0;
			;
			;  _RETURN_MF:
			;    float24 rval @ arg1f24;
			;    rval.low24 = arg1f24.low24;
			;    return rval;
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
			;    char expo = arg1f24.high8 - (FpBIAS-1);
			;    if (!Carry)
			;        goto RES0;
			;    arg1f24.15 = 1;
			;
			;    arg1f24.high8 = 0;
			;   #ifndef DISABLE_ROUNDING
			;    char xtra = 0;
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
			;    if (!Carry)  {  // (c)
			;   #endif
			;        expo += 8;
			;        if (!Carry)
			;            goto OVERFLOW;
			;        arg1f24.high8 = arg1f24.mid8;
			;        arg1f24.mid8 = arg1f24.low8;
			;        arg1f24.low8 = 0;
			;    }
			;    else  {  // (a) (b)
			;        // expo = 0 .. 16
			;        W = expo - 8;
			;        if (Carry)  {  // (a)
			;            expo = W;
			;           #ifndef DISABLE_ROUNDING
			;            xtra = arg1f24.low8;
			;           #endif
			;            arg1f24.low8 = arg1f24.mid8;
			;            arg1f24.mid8 = 0;
			;        }
			;    }
			;    if (expo)  {
			;        do  {
			;            Carry = 0;
			;            arg1f24.high8 = rr( arg1f24.high8);
			;            arg1f24.low16 = rr( arg1f24.low16);
			;           #ifndef DISABLE_ROUNDING
			;            xtra = rr( xtra);
			;           #endif
			;        } while (--expo);
			;    }
			;    if (arg1f24.23)  {
			;       OVERFLOW:
			;        FpOverflow = 1;
			;        W = 0xFF;
			;        goto ASSIGNW;
			;       RES0:
			;        W = 0;
			;       ASSIGNW:
			;        arg1f24.low8 = W;
			;        arg1f24.mid8 = W;
			;        arg1f24.high8 = W;
			;        arg1f24.23 = 0;
			;    }
			;    else  {
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding && (xtra & 0x80))  {
			;            arg1f24.low8 += 1;
			;            if (!arg1f24.low8)
			;                arg1f24.mid8 += 1;
			;        }
			;       #endif
			;        if (sign & 0x80)
			;            arg1f24.low24 = -arg1f24.low24;
			;    }
			;    int24 rval @ arg1f24;
			;    rval = arg1f24.low24;
			;    return rval;
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

  ; FILE C:\PIC\CC8E\math24LB.h
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
			;        goto _DOMERR;
			;    if (!arg1f24.high8)          // return if argument zero
			;        goto _RETURN_MF;
			;
			;    char cexp = arg1f24.high8;    // save exponent
			;    char savedFLAGS = FpFlags;
			;    FpFlags |= 0x40;           // enable rounding
			;
			;    arg1f24.high8 = FpBIAS;   // compute z
			;    float24 d = arg1f24;
			;
			;    if (arg1f24.mid8 & 0x40)  {
			;        // POL24  SQRT24H,4,0
			;        arg1f24 *= -5.6351436252E-3;  // SQRT24H4
			;        arg1f24 += 5.5047377031E-2; // SQRT24H3
			;        arg1f24 *= d;
			;        arg1f24 += -2.3944355047E-1;  // SQRT24H2
			;        arg1f24 *= d;
			;        arg1f24 += 8.3106978456E-1; // SQRT24H1
			;        arg1f24 *= d;
			;        arg1f24 += 3.5963132863E-1;  // SQRT24H0
			;    }
			;    else  {
			;        // POL24  SQRT24L,4,0
			;        arg1f24 *= -1.8702682470E-2;  // SQRT24L4
			;        arg1f24 += 1.3009144111E-1; // SQRT24L3
			;        arg1f24 *= d;
			;        arg1f24 += -4.0192034196E-1;  // SQRT24L2
			;        arg1f24 *= d;
			;        arg1f24 += 9.8831235597E-1;  // SQRT24L1
			;        arg1f24 *= d;
			;        arg1f24 += 3.0221977303E-1;  // SQRT24L0
			;    }
			;
			;    if (!(cexp & 0x1))      // is cexp even or odd?
			;        arg1f24 *= 1.41421356237;  // sqrt(2)
			;
			;    // divide exponent by two
			;    cexp += 127;
			;    arg1f24.high8 = rr( cexp);
			;
			;    if (!(savedFLAGS & 0x40))
			;        FpFlags &= ~0x40;
			;
			;    goto _RETURN_MF;
			;
			;  _DOMERR:
			;    FpDomainError = 1;   //  domain error
			;
			;  _RETURN_MF:
			;    return arg1f24;

  ; FILE LCD_4bit.h
			;
			;bit ENGlobal,RSGlobal,data0Global,data1Global,data2Global,data3Global;
			;
			;void lcdBegin(bit EN,bit RS,bit data0,bit data1,bit data2,bit data3){
lcdBegin
			;
			;
			;}
	RETURN
			;
			;
			;void envia_codigo_inicial (char codigo)
			;{
envia_codigo_inicial
	MOVLB 0
	MOVWF codigo,1
			;	PORTB.4=0;nop();
	BCF   PORTB,4,0
	NOP  
			;	PORTB.0 = codigo.4;
	BTFSS codigo,4,1
	BCF   PORTB,0,0
	BTFSC codigo,4,1
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = codigo.5;
	BTFSS codigo,5,1
	BCF   PORTB,1,0
	BTFSC codigo,5,1
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = codigo.6;
	BTFSS codigo,6,1
	BCF   PORTB,2,0
	BTFSC codigo,6,1
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = codigo.7;
	BTFSS codigo,7,1
	BCF   PORTB,3,0
	BTFSC codigo,7,1
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.5 = 1; 
	BSF   PORTB,5,0
			;	retardo_20u();
	RCALL retardo_20u
			;	PORTB.5 = 0; 
	BCF   PORTB,5,0
			;	
			;	
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
			;	PORTB.0 =  comando.4;nop();
	BTFSS comando,4,1
	BCF   PORTB,0,0
	BTFSC comando,4,1
	BSF   PORTB,0,0
	NOP  
			;	PORTB.1 =  comando.5;nop();
	BTFSS comando,5,1
	BCF   PORTB,1,0
	BTFSC comando,5,1
	BSF   PORTB,1,0
	NOP  
			;	PORTB.2 =  comando.6;nop();
	BTFSS comando,6,1
	BCF   PORTB,2,0
	BTFSC comando,6,1
	BSF   PORTB,2,0
	NOP  
			;	PORTB.3 =  comando.7;
	BTFSS comando,7,1
	BCF   PORTB,3,0
	BTFSC comando,7,1
	BSF   PORTB,3,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.4 = 0;  									// Modo comando.
	BCF   PORTB,4,0
			;	retardo_20u (); //
	RCALL retardo_20u
			;	PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	retardo_1m ();
	RCALL retardo_1m
			;	comando = swap (comando);
	MOVLB 0
	SWAPF comando,1,1
			;	PORTB.0 =  comando.4;nop();
	BTFSS comando,4,1
	BCF   PORTB,0,0
	BTFSC comando,4,1
	BSF   PORTB,0,0
	NOP  
			;	PORTB.1 =  comando.5;nop();
	BTFSS comando,5,1
	BCF   PORTB,1,0
	BTFSC comando,5,1
	BSF   PORTB,1,0
	NOP  
			;	PORTB.2 =  comando.6;nop();
	BTFSS comando,6,1
	BCF   PORTB,2,0
	BTFSC comando,6,1
	BSF   PORTB,2,0
	NOP  
			;	PORTB.3 =  comando.7;nop();
	BTFSS comando,7,1
	BCF   PORTB,3,0
	BTFSC comando,7,1
	BSF   PORTB,3,0
	NOP  
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.4 = 0;  									// Modo comando.
	BCF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
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
	MOVWF dato,0
			;    char i;
			;
			;	
			;	PORTB.0 = dato.4;
	BTFSS dato,4,0
	BCF   PORTB,0,0
	BTFSC dato,4,0
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.5;
	BTFSS dato,5,0
	BCF   PORTB,1,0
	BTFSC dato,5,0
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.6;
	BTFSS dato,6,0
	BCF   PORTB,2,0
	BTFSC dato,6,0
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = dato.7;
	BTFSS dato,7,0
	BCF   PORTB,3,0
	BTFSC dato,7,0
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;	for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_3,0
m026	MOVLW 7
	CPFSLT i_3,0
	BRA   m027
	RCALL retardo_20u
	INCF  i_3,1,0
	BRA   m026
			;	dato = swap (dato);
m027	SWAPF dato,1,0
			;	PORTB.0 = dato.4;nop();
	BTFSS dato,4,0
	BCF   PORTB,0,0
	BTFSC dato,4,0
	BSF   PORTB,0,0
	NOP  
			;	PORTB.1 = dato.5;nop();
	BTFSS dato,5,0
	BCF   PORTB,1,0
	BTFSC dato,5,0
	BSF   PORTB,1,0
	NOP  
			;	PORTB.2 = dato.6;nop();
	BTFSS dato,6,0
	BCF   PORTB,2,0
	BTFSC dato,6,0
	BSF   PORTB,2,0
	NOP  
			;	PORTB.3 = dato.7;nop();
	BTFSS dato,7,0
	BCF   PORTB,3,0
	BTFSC dato,7,0
	BSF   PORTB,3,0
	NOP  
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;	for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_3,0
m028	MOVLW 7
	CPFSLT i_3,0
	BRA   m029
	RCALL retardo_20u
	INCF  i_3,1,0
	BRA   m028
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m029	MOVLW 12
	BRA   enviar_comando
			;	return;
			;}   
			;
			;void enviar_cifra (char dato) 
			;{
enviar_cifra
	MOVWF dato_2,0
			;    char i;
			;	dato = dato + 0x30; 							// Convierto el n鷐ero en su equivalente ASCII literal. 
	MOVLW 48
	ADDWF dato_2,1,0
			;	PORTB.0 = dato.4;
	BTFSS dato_2,4,0
	BCF   PORTB,0,0
	BTFSC dato_2,4,0
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.5;
	BTFSS dato_2,5,0
	BCF   PORTB,1,0
	BTFSC dato_2,5,0
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.6;
	BTFSS dato_2,6,0
	BCF   PORTB,2,0
	BTFSC dato_2,6,0
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = dato.7;
	BTFSS dato_2,7,0
	BCF   PORTB,3,0
	BTFSC dato_2,7,0
	BSF   PORTB,3,0
			;	nop();
	NOP  
			;	PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;	for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_4,0
m030	MOVLW 7
	CPFSLT i_4,0
	BRA   m031
	RCALL retardo_20u
	INCF  i_4,1,0
	BRA   m030
			;	dato = swap (dato);
m031	SWAPF dato_2,1,0
			;	PORTB.0 = dato.4;
	BTFSS dato_2,4,0
	BCF   PORTB,0,0
	BTFSC dato_2,4,0
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.5;
	BTFSS dato_2,5,0
	BCF   PORTB,1,0
	BTFSC dato_2,5,0
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.6;
	BTFSS dato_2,6,0
	BCF   PORTB,2,0
	BTFSC dato_2,6,0
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = dato.7;
	BTFSS dato_2,7,0
	BCF   PORTB,3,0
	BTFSC dato_2,7,0
	BSF   PORTB,3,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;	retardo_1m ();
	RCALL retardo_1m
			;	PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;	retardo_20u ();
	RCALL retardo_20u
			;	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;	for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_4,0
m032	MOVLW 7
	CPFSLT i_4,0
	BRA   m033
	RCALL retardo_20u
	INCF  i_4,1,0
	BRA   m032
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
m033	MOVLW 12
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
m034	MOVLW 21
	MOVLB 0
	CPFSLT i_5,1
	BRA   m035
	RCALL retardo_1m
	MOVLB 0
	INCF  i_5,1,1
	BRA   m034
			;	envia_codigo_inicial (0b.00.11.0000);
m035	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 6; i++) retardo_1m ();
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m036	MOVLW 6
	MOVLB 0
	CPFSLT i_5,1
	BRA   m037
	RCALL retardo_1m
	MOVLB 0
	INCF  i_5,1,1
	BRA   m036
			;    envia_codigo_inicial (0b.00.11.0000);	
m037	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i< 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m038	MOVLW 11
	MOVLB 0
	CPFSLT i_5,1
	BRA   m039
	RCALL retardo_20u
	MOVLB 0
	INCF  i_5,1,1
	BRA   m038
			;    envia_codigo_inicial (0b.00.11.0000);
m039	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_5,1
m040	MOVLW 11
	MOVLB 0
	CPFSLT i_5,1
	BRA   m041
	RCALL retardo_20u
	MOVLB 0
	INCF  i_5,1,1
	BRA   m040
			;	envia_codigo_inicial (0b.00.10.0000);			// A 4 bits.
m041	MOVLW 32
	RCALL envia_codigo_inicial
			;	enviar_comando (0b.0010.1000);					// A 4 bits, doble l韓ea, caracteres 5x7.
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
	MOVWF columna,0
			;	
			;	switch (linea) 									// (se resta una unidad a la coordenada l韓ea para que la posici髇 columna inicial sea 1 y no 0).
	MOVF  linea,W,0
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m042
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m043
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m044
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m045
	BRA   m046
			;		{
			;			case 1:
			;				enviar_comando (127 + columna); 	// Inicio primera linea.
m042	MOVLW 127
	ADDWF columna,W,0
	RCALL enviar_comando
			;			break;
	BRA   m046
			;						
			;			case 2:
			;				enviar_comando (191 + columna); 	// Inicio segunda l韓ea.
m043	MOVLW 191
	ADDWF columna,W,0
	RCALL enviar_comando
			;			break;			
	BRA   m046
			;
			;			case 3:
			;				enviar_comando (147 + columna);		// Inicio tercera l韓ea (cursor en posici髇 20 de la primera l韓ea).
m044	MOVLW 147
	ADDWF columna,W,0
	RCALL enviar_comando
			;			break;				
	BRA   m046
			;			
			;			case 4:
			;				enviar_comando (211 + columna); 	// Inicio cuarta l韓ea (cursor en posici髇 20 de la segunda l韓ea).
m045	MOVLW 211
	ADDWF columna,W,0
	RCALL enviar_comando
			;			break;
	BRA   m046
			;			enviar_comando (0b.0000.1100);			// Pantalla encendida, sin cursor.
	MOVLW 12
	BRA   enviar_comando
			;		}
			;	
			;	
			;}
m046	RETURN
			;
			;void borrar_linea (char linea)
			;{
borrar_linea
	MOVWF linea_2,0
			;	char i;
			;		
			;	switch (linea) 									// (se resta una unidad a la coordenada l韓ea para que la posici髇 columna inicial sea 1 y no 0).
	MOVF  linea_2,W,0
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m047
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m048
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m049
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m050
	BRA   m051
			;		{
			;			case 1:
			;				enviar_comando (128); 				// Inicio primera linea.
m047	MOVLW 128
	RCALL enviar_comando
			;			break;
	BRA   m051
			;						
			;			case 2:
			;				enviar_comando (192); 				// Inicio segunda l韓ea.
m048	MOVLW 192
	RCALL enviar_comando
			;			break;			
	BRA   m051
			;
			;			case 3:
			;				enviar_comando (148); 				// Inicio tercera l韓ea (cursor en posici髇 20 de la primera l韓ea).
m049	MOVLW 148
	RCALL enviar_comando
			;			break;				
	BRA   m051
			;			
			;			case 4:
			;				enviar_comando (212); 				// Inicio cuarta l韓ea (cursor en posici髇 20 de la segunda l韓ea).
m050	MOVLW 212
	RCALL enviar_comando
			;			break;
			;		}
			;	for (i = 1; i < 21; i++) enviar_literal (' '); 	// Envio 20 car醕teres en blanco y posiciono en la siguiente l韓ea.
m051	MOVLW 1
	MOVWF i_6,0
m052	MOVLW 21
	CPFSLT i_6,0
	BRA   m053
	MOVLW 32
	RCALL enviar_literal
	INCF  i_6,1,0
	BRA   m052
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m053	MOVLW 12
	BRA   enviar_comando
			;}
			;
			;void borrar_lcd (void)
			;{
borrar_lcd
			;	enviar_comando (0b.0000.0001);  				// Borrado del display y cursor en la posici髇 inicial.	
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
			;	switch (linea) 									// (se resta una unidad a la coordenada l韓ea para que la posici髇 columna inicial sea 1 y no 0).
	MOVF  linea_3,W,0
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m054
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m055
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m056
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m057
	BRA   m058
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m054	MOVLW 127
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m058
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda l韓ea.
m055	MOVLW 191
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;			
	BRA   m058
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera l韓ea (cursor en posici髇 20 de la primera l韓ea).
m056	MOVLW 147
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;				
	BRA   m058
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta l韓ea (cursor en posici髇 20 de la segunda l韓ea).
m057	MOVLW 211
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m058
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;		if (!xi)
m058	BTFSC 0xF7F,xi,0
	BRA   m059
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
	BRA   m065
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m095
			;		    else goto sa;
			;		}
			;		else
			;		{
			;			xy = 1;
m059	MOVLW 1
	MOVWF xy,0
			;			if (dato > 9999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
	MOVLW 16
	SUBWF dato_3,W,0
	MOVLW 39
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m060
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m095
			;		}
			;			// Separo per 4 xifres
			;			num = dato; // per 4 xifres
m060	MOVFF dato_3,num
	MOVFF dato_3+1,num+1
			;			u_milers = num / 1000;
	MOVF  num,W,0
	MOVWF C4tmp,0
	MOVF  num+1,W,0
	MOVWF C4tmp+1,0
	CLRF  C5rem,0
	CLRF  C5rem+1,0
	MOVLW 16
	MOVWF C3cnt,0
m061	RLCF  C4tmp,1,0
	RLCF  C4tmp+1,1,0
	RLCF  C5rem,1,0
	RLCF  C5rem+1,1,0
	MOVLW 232
	SUBWF C5rem,W,0
	MOVLW 3
	SUBWFB C5rem+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m062
	MOVLW 232
	SUBWF C5rem,1,0
	MOVLW 3
	SUBWFB C5rem+1,1,0
	BSF   0xFD8,Carry,0
m062	RLCF  u_milers,1,0
	RLCF  u_milers+1,1,0
	DECFSZ C3cnt,1,0
	BRA   m061
			;			dato = num % 1000;
	MOVF  num,W,0
	MOVWF C7tmp,0
	MOVF  num+1,W,0
	MOVWF C7tmp+1,0
	CLRF  dato_3,0
	CLRF  dato_3+1,0
	MOVLW 16
	MOVWF C6cnt,0
m063	RLCF  C7tmp,1,0
	RLCF  C7tmp+1,1,0
	RLCF  dato_3,1,0
	RLCF  dato_3+1,1,0
	MOVLW 232
	SUBWF dato_3,W,0
	MOVLW 3
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m064
	MOVLW 232
	SUBWF dato_3,1,0
	MOVLW 3
	SUBWFB dato_3+1,1,0
m064	DECFSZ C6cnt,1,0
	BRA   m063
			;			// Separo per 3 xifres
			;sa:			cent   = dato   / 100;   	
m065	MOVF  dato_3,W,0
	MOVWF C9tmp,0
	MOVF  dato_3+1,W,0
	MOVWF C9tmp+1,0
	CLRF  C10rem,0
	MOVLW 16
	MOVWF C8cnt,0
m066	RLCF  C9tmp,1,0
	RLCF  C9tmp+1,1,0
	RLCF  C10rem,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m067
	MOVLW 100
	SUBWF C10rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m068
m067	MOVLW 100
	SUBWF C10rem,1,0
	BSF   0xFD8,Carry,0
m068	RLCF  cent,1,0
	RLCF  cent+1,1,0
	DECFSZ C8cnt,1,0
	BRA   m066
			;			resto1 = dato   % 100;
	MOVF  dato_3,W,0
	MOVWF C12tmp,0
	MOVF  dato_3+1,W,0
	MOVWF C12tmp+1,0
	CLRF  resto1,0
	MOVLW 16
	MOVWF C11cnt,0
m069	RLCF  C12tmp,1,0
	RLCF  C12tmp+1,1,0
	RLCF  resto1,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m070
	MOVLW 100
	SUBWF resto1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m071
m070	MOVLW 100
	SUBWF resto1,1,0
m071	DECFSZ C11cnt,1,0
	BRA   m069
			;			dec    = resto1 /  10;  
	MOVF  resto1,W,0
	MOVWF C14tmp,0
	CLRF  C15rem,0
	MOVLW 8
	MOVWF C13cnt,0
m072	RLCF  C14tmp,1,0
	RLCF  C15rem,1,0
	MOVLW 10
	SUBWF C15rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m073
	MOVLW 10
	SUBWF C15rem,1,0
	BSF   0xFD8,Carry,0
m073	RLCF  dec,1,0
	DECFSZ C13cnt,1,0
	BRA   m072
			;			unid   = resto1 %  10; 		
	MOVF  resto1,W,0
	MOVWF C17tmp,0
	CLRF  unid,0
	MOVLW 8
	MOVWF C16cnt,0
m074	RLCF  C17tmp,1,0
	RLCF  unid,1,0
	MOVLW 10
	SUBWF unid,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m075
	MOVLW 10
	SUBWF unid,1,0
m075	DECFSZ C16cnt,1,0
	BRA   m074
			;		// Envio
			;		for (xx = xy; xx < 7; xx++)
	MOVFF xy,xx
m076	MOVLW 7
	CPFSLT xx,0
	BRA   m095
			;		{
			;			clrwdt () ;
	CLRWDT
			;			if (xx == 1) 
	DECFSZ xx,W,0
	BRA   m078
			;			{
			;				if ((u_milers==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m077
	BTFSC 0xF7F,bd,0
	BRA   m077
	MOVLW 32
	MOVWF dat,0
			;				else dat = u_milers;
	BRA   m078
m077	MOVFF u_milers,dat
			;			}
			;			if (xx == 2) 
m078	MOVLW 2
	CPFSEQ xx,0
	BRA   m080
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m079
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m079
	BTFSC 0xF7F,bd,0
	BRA   m079
	MOVLW 32
	MOVWF dat,0
			;				else dat = cent;
	BRA   m080
m079	MOVFF cent,dat
			;			}
			;			if (xx == 3) 
m080	MOVLW 3
	CPFSEQ xx,0
	BRA   m083
			;			{
			;				if(ndp) { if (dp==0) dat = '.';
	BTFSS 0xF7F,ndp,0
	BRA   m082
	BTFSC 0xF7F,dp,0
	BRA   m081
	MOVLW 46
	MOVWF dat,0
			;				          else xx++;  
	BRA   m083
m081	INCF  xx,1,0
			;				        }
			;				else xx++;		
	BRA   m083
m082	INCF  xx,1,0
			;			}
			;			if (xx == 4)
m083	MOVLW 4
	CPFSEQ xx,0
	BRA   m085
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(dec==0)&&(!bd)) dat = ' ';
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m084
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m084
	MOVF  dec,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m084
	BTFSC 0xF7F,bd,0
	BRA   m084
	MOVLW 32
	MOVWF dat,0
			;				else dat = dec ;
	BRA   m085
m084	MOVFF dec,dat
			;			}
			;			if (xx == 5)
m085	MOVLW 5
	CPFSEQ xx,0
	BRA   m088
			;			{
			;				if(!ndp) { if (dp==0) dat = '.';	
	BTFSC 0xF7F,ndp,0
	BRA   m087
	BTFSC 0xF7F,dp,0
	BRA   m086
	MOVLW 46
	MOVWF dat,0
			;				           else xx++;
	BRA   m088
m086	INCF  xx,1,0
			;						 }
			;				else xx++;		 
	BRA   m088
m087	INCF  xx,1,0
			;			}
			;			if (xx == 6) dat = unid;
m088	MOVLW 6
	CPFSEQ xx,0
	BRA   m089
	MOVFF unid,dat
			;						
			;			if ((dat!='.')&&(dat!=' ')) dat = dat + 0x30;
m089	MOVF  dat,W,0
	XORLW 46
	BTFSC 0xFD8,Zero_,0
	BRA   m090
	MOVF  dat,W,0
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m090
	MOVLW 48
	ADDWF dat,1,0
			;
			;			PORTB.0 = dat.4;nop();
m090	BTFSS dat,4,0
	BCF   PORTB,0,0
	BTFSC dat,4,0
	BSF   PORTB,0,0
	NOP  
			;			PORTB.1 = dat.5;nop();
	BTFSS dat,5,0
	BCF   PORTB,1,0
	BTFSC dat,5,0
	BSF   PORTB,1,0
	NOP  
			;			PORTB.2 = dat.6;nop();
	BTFSS dat,6,0
	BCF   PORTB,2,0
	BTFSC dat,6,0
	BSF   PORTB,2,0
	NOP  
			;			PORTB.3 = dat.7;nop();
	BTFSS dat,7,0
	BCF   PORTB,3,0
	BTFSC dat,7,0
	BSF   PORTB,3,0
	NOP  
			;			PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;			for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_7,0
m091	MOVLW 7
	CPFSLT i_7,0
	BRA   m092
	RCALL retardo_20u
	INCF  i_7,1,0
	BRA   m091
			;			dat = swap (dat);
m092	SWAPF dat,1,0
			;			PORTB.0 = dat.4;nop();
	BTFSS dat,4,0
	BCF   PORTB,0,0
	BTFSC dat,4,0
	BSF   PORTB,0,0
	NOP  
			;			PORTB.1 = dat.5;nop();
	BTFSS dat,5,0
	BCF   PORTB,1,0
	BTFSC dat,5,0
	BSF   PORTB,1,0
	NOP  
			;			PORTB.2 = dat.6;nop();
	BTFSS dat,6,0
	BCF   PORTB,2,0
	BTFSC dat,6,0
	BSF   PORTB,2,0
	NOP  
			;			PORTB.3 = dat.7;
	BTFSS dat,7,0
	BCF   PORTB,3,0
	BTFSC dat,7,0
	BSF   PORTB,3,0
			;			retardo_1m ();
	RCALL retardo_1m
			;			PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;			retardo_1m ();
	RCALL retardo_1m
			;			PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;			retardo_20u ();
	RCALL retardo_20u
			;			PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;			for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_7,0
m093	MOVLW 7
	CPFSLT i_7,0
	BRA   m094
	RCALL retardo_20u
	INCF  i_7,1,0
	BRA   m093
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m094	MOVLW 12
	RCALL enviar_comando
			;		}
	INCF  xx,1,0
	BRA   m076
			;so:	//DESCON_LCD ();
			;	return;
m095	RETURN
			;}
			;
			;void Enviar_uns16(char linea,char columna,uns16 dato){
Enviar_uns16
			;	//utilizaremos esta funcion en caso de necesitar un numero entero hasta 65536(16bits)
			;	uns16 num, u_milers, cent, d_milers;
			;	char dec, unid, resto1;
			;	char i, xx, yy, dat,xy;
			;
			;	switch (linea) 									// (se resta una unidad a la coordenada l韓ea para que la posici髇 columna inicial sea 1 y no 0).
	MOVF  linea_4,W,0
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m096
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m097
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m098
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m099
	BRA   m100
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m096	MOVLW 127
	ADDWF columna_3,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m100
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda l韓ea.
m097	MOVLW 191
	ADDWF columna_3,W,0
	RCALL enviar_comando
			;			break;			
	BRA   m100
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera l韓ea (cursor en posici髇 20 de la primera l韓ea).
m098	MOVLW 147
	ADDWF columna_3,W,0
	RCALL enviar_comando
			;			break;				
	BRA   m100
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta l韓ea (cursor en posici髇 20 de la segunda l韓ea).
m099	MOVLW 211
	ADDWF columna_3,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m100
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;	
			;			
			;			num = dato; 
m100	MOVFF dato_4,num_2
	MOVFF dato_4+1,num_2+1
			;			d_milers =num/10000;
	MOVF  num_2,W,0
	MOVWF C19tmp,0
	MOVF  num_2+1,W,0
	MOVWF C19tmp+1,0
	CLRF  C20rem,0
	CLRF  C20rem+1,0
	MOVLW 16
	MOVWF C18cnt,0
m101	RLCF  C19tmp,1,0
	RLCF  C19tmp+1,1,0
	RLCF  C20rem,1,0
	RLCF  C20rem+1,1,0
	MOVLW 16
	SUBWF C20rem,W,0
	MOVLW 39
	SUBWFB C20rem+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m102
	MOVLW 16
	SUBWF C20rem,1,0
	MOVLW 39
	SUBWFB C20rem+1,1,0
	BSF   0xFD8,Carry,0
m102	RLCF  d_milers,1,0
	RLCF  d_milers+1,1,0
	DECFSZ C18cnt,1,0
	BRA   m101
			;			num= num%10000;
	MOVF  num_2,W,0
	MOVWF C22tmp,0
	MOVF  num_2+1,W,0
	MOVWF C22tmp+1,0
	CLRF  num_2,0
	CLRF  num_2+1,0
	MOVLW 16
	MOVWF C21cnt,0
m103	RLCF  C22tmp,1,0
	RLCF  C22tmp+1,1,0
	RLCF  num_2,1,0
	RLCF  num_2+1,1,0
	MOVLW 16
	SUBWF num_2,W,0
	MOVLW 39
	SUBWFB num_2+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m104
	MOVLW 16
	SUBWF num_2,1,0
	MOVLW 39
	SUBWFB num_2+1,1,0
m104	DECFSZ C21cnt,1,0
	BRA   m103
			;			u_milers = num / 1000;
	MOVF  num_2,W,0
	MOVWF C24tmp,0
	MOVF  num_2+1,W,0
	MOVWF C24tmp+1,0
	CLRF  C25rem,0
	CLRF  C25rem+1,0
	MOVLW 16
	MOVWF C23cnt,0
m105	RLCF  C24tmp,1,0
	RLCF  C24tmp+1,1,0
	RLCF  C25rem,1,0
	RLCF  C25rem+1,1,0
	MOVLW 232
	SUBWF C25rem,W,0
	MOVLW 3
	SUBWFB C25rem+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m106
	MOVLW 232
	SUBWF C25rem,1,0
	MOVLW 3
	SUBWFB C25rem+1,1,0
	BSF   0xFD8,Carry,0
m106	RLCF  u_milers_2,1,0
	RLCF  u_milers_2+1,1,0
	DECFSZ C23cnt,1,0
	BRA   m105
			;			dato = num % 1000;
	MOVF  num_2,W,0
	MOVWF C27tmp,0
	MOVF  num_2+1,W,0
	MOVWF C27tmp+1,0
	CLRF  dato_4,0
	CLRF  dato_4+1,0
	MOVLW 16
	MOVWF C26cnt,0
m107	RLCF  C27tmp,1,0
	RLCF  C27tmp+1,1,0
	RLCF  dato_4,1,0
	RLCF  dato_4+1,1,0
	MOVLW 232
	SUBWF dato_4,W,0
	MOVLW 3
	SUBWFB dato_4+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m108
	MOVLW 232
	SUBWF dato_4,1,0
	MOVLW 3
	SUBWFB dato_4+1,1,0
m108	DECFSZ C26cnt,1,0
	BRA   m107
			;
			;			cent   = dato   / 100;   	
	MOVF  dato_4,W,0
	MOVWF C29tmp,0
	MOVF  dato_4+1,W,0
	MOVWF C29tmp+1,0
	CLRF  C30rem,0
	MOVLW 16
	MOVWF C28cnt,0
m109	RLCF  C29tmp,1,0
	RLCF  C29tmp+1,1,0
	RLCF  C30rem,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m110
	MOVLW 100
	SUBWF C30rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m111
m110	MOVLW 100
	SUBWF C30rem,1,0
	BSF   0xFD8,Carry,0
m111	RLCF  cent_2,1,0
	RLCF  cent_2+1,1,0
	DECFSZ C28cnt,1,0
	BRA   m109
			;			resto1 = dato   % 100;
	MOVF  dato_4,W,0
	MOVWF C32tmp,0
	MOVF  dato_4+1,W,0
	MOVWF C32tmp+1,0
	CLRF  resto1_2,0
	MOVLW 16
	MOVWF C31cnt,0
m112	RLCF  C32tmp,1,0
	RLCF  C32tmp+1,1,0
	RLCF  resto1_2,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m113
	MOVLW 100
	SUBWF resto1_2,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m114
m113	MOVLW 100
	SUBWF resto1_2,1,0
m114	DECFSZ C31cnt,1,0
	BRA   m112
			;			dec    = resto1 /  10;  
	MOVF  resto1_2,W,0
	MOVWF C34tmp,0
	CLRF  C35rem,0
	MOVLW 8
	MOVWF C33cnt,0
m115	RLCF  C34tmp,1,0
	RLCF  C35rem,1,0
	MOVLW 10
	SUBWF C35rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m116
	MOVLW 10
	SUBWF C35rem,1,0
	BSF   0xFD8,Carry,0
m116	RLCF  dec_2,1,0
	DECFSZ C33cnt,1,0
	BRA   m115
			;			unid   = resto1 %  10; 		
	MOVF  resto1_2,W,0
	MOVWF C37tmp,0
	CLRF  unid_2,0
	MOVLW 8
	MOVWF C36cnt,0
m117	RLCF  C37tmp,1,0
	RLCF  unid_2,1,0
	MOVLW 10
	SUBWF unid_2,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m118
	MOVLW 10
	SUBWF unid_2,1,0
m118	DECFSZ C36cnt,1,0
	BRA   m117
			;		// Envio
			;		for (xx=0 ; xx < 5; xx++)
	CLRF  xx_2,0
m119	MOVLW 5
	CPFSLT xx_2,0
	BRA   m135
			;		{
			;			switch(xx){
	MOVF  xx_2,W,0
	BTFSC 0xFD8,Zero_,0
	BRA   m120
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m122
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m124
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m126
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m128
	BRA   m129
			;				case 0:
			;					if (d_milers==0) dat = ' '; 
m120	MOVF  d_milers,W,0
	IORWF d_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m121
	MOVLW 32
	MOVWF dat_2,0
			;					else dat = d_milers;
	BRA   m129
m121	MOVFF d_milers,dat_2
			;					break;
	BRA   m129
			;				case 1:
			;					if ((u_milers==0)&&(d_milers==0)) dat = ' ';
m122	MOVF  u_milers_2,W,0
	IORWF u_milers_2+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m123
	MOVF  d_milers,W,0
	IORWF d_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m123
	MOVLW 32
	MOVWF dat_2,0
			;					else dat = u_milers;
	BRA   m129
m123	MOVFF u_milers_2,dat_2
			;					break;
	BRA   m129
			;				case 2:
			;					if ((d_milers==0)&&(u_milers==0)&&(cent==0)) dat = ' '; 
m124	MOVF  d_milers,W,0
	IORWF d_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m125
	MOVF  u_milers_2,W,0
	IORWF u_milers_2+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m125
	MOVF  cent_2,W,0
	IORWF cent_2+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m125
	MOVLW 32
	MOVWF dat_2,0
			;					else dat = cent;
	BRA   m129
m125	MOVFF cent_2,dat_2
			;					break;
	BRA   m129
			;				case 3:
			;					if ((u_milers==0)&&(cent==0)&&(dec==0)&&(d_milers==0)) dat = ' ';
m126	MOVF  u_milers_2,W,0
	IORWF u_milers_2+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m127
	MOVF  cent_2,W,0
	IORWF cent_2+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m127
	MOVF  dec_2,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m127
	MOVF  d_milers,W,0
	IORWF d_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m127
	MOVLW 32
	MOVWF dat_2,0
			;					else dat = dec ;
	BRA   m129
m127	MOVFF dec_2,dat_2
			;					break;
	BRA   m129
			;				case 4:
			;					dat = unid;
m128	MOVFF unid_2,dat_2
			;					break;
			;			}		
			;			if (dat!=' ') dat = dat + 0x30;
m129	MOVF  dat_2,W,0
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m130
	MOVLW 48
	ADDWF dat_2,1,0
			;			PORTB.0 = dat.4;nop();
m130	BTFSS dat_2,4,0
	BCF   PORTB,0,0
	BTFSC dat_2,4,0
	BSF   PORTB,0,0
	NOP  
			;			PORTB.1 = dat.5;nop();
	BTFSS dat_2,5,0
	BCF   PORTB,1,0
	BTFSC dat_2,5,0
	BSF   PORTB,1,0
	NOP  
			;			PORTB.2 = dat.6;nop();
	BTFSS dat_2,6,0
	BCF   PORTB,2,0
	BTFSC dat_2,6,0
	BSF   PORTB,2,0
	NOP  
			;			PORTB.3 = dat.7;nop();
	BTFSS dat_2,7,0
	BCF   PORTB,3,0
	BTFSC dat_2,7,0
	BSF   PORTB,3,0
	NOP  
			;			PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;			for (i = 1; i <= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_8,0
m131	MOVLW 7
	CPFSLT i_8,0
	BRA   m132
	CALL  retardo_20u
	INCF  i_8,1,0
	BRA   m131
			;			dat = swap (dat);
m132	SWAPF dat_2,1,0
			;			PORTB.0 = dat.4;nop();
	BTFSS dat_2,4,0
	BCF   PORTB,0,0
	BTFSC dat_2,4,0
	BSF   PORTB,0,0
	NOP  
			;			PORTB.1 = dat.5;nop();
	BTFSS dat_2,5,0
	BCF   PORTB,1,0
	BTFSC dat_2,5,0
	BSF   PORTB,1,0
	NOP  
			;			PORTB.2 = dat.6;nop();
	BTFSS dat_2,6,0
	BCF   PORTB,2,0
	BTFSC dat_2,6,0
	BSF   PORTB,2,0
	NOP  
			;			PORTB.3 = dat.7;
	BTFSS dat_2,7,0
	BCF   PORTB,3,0
	BTFSC dat_2,7,0
	BSF   PORTB,3,0
			;			retardo_1m ();
	CALL  retardo_1m
			;			PORTB.4 = 1;  									// Modo dato.
	BSF   PORTB,4,0
			;			retardo_1m ();
	CALL  retardo_1m
			;			PORTB.5 = 1;  									// Breve pulso.
	BSF   PORTB,5,0
			;			retardo_20u ();
	CALL  retardo_20u
			;			PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	BCF   PORTB,5,0
			;			for (i = 1; i<= 6; i++) retardo_20u ();
	MOVLW 1
	MOVWF i_8,0
m133	MOVLW 7
	CPFSLT i_8,0
	BRA   m134
	CALL  retardo_20u
	INCF  i_8,1,0
	BRA   m133
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m134	MOVLW 12
	CALL  enviar_comando
			;		}
	INCF  xx_2,1,0
	BRA   m119
			;
			;	return;
m135	RETURN

  ; FILE ondulador_migrado.c
			;
			;//==============================================================================================
			;#include "Temporiz_20Mhz.h"
			;void configuraPic (void);
			;void configura1_PWM (void); 				// Configura todos los pr谩metros excepto M.
			;uns8 lectura_AD (void);
			;
			;#include "math24F.h"
			;#include "math24LB.h"	
			;
			;#include "LCD_4bit.h"
			;//==============================================================================================
			;//==============================================================================================
			;
			;void main (void)
			;{
main
			;
			;	GIE = 0;								// Desactivamos inicialmente todas las interrupciones.
	BCF   0xFF2,GIE,0
			;	configuraPic (); 						// Configuramos todos los puertos y PWM
	RCALL configuraPic
			;	inicializar_lcd();    
	RCALL inicializar_lcd
			;	T0CON   = 0b.01000.001; //(PIC 18F4550)	// Equivale junto con INTCON2 al OPTION_REG del 16F88x).								
	MOVLW 65
	MOVWF T0CON,0
			;	INTCON2 = 0b.0000.0100; //(PIC 18F4550)	// Equivale junto con T0CON al OPTION_REG del 16F88x).	
	MOVLW 4
	MOVWF INTCON2,0
			;	TMR0IF = 0;   //T0IF = 0; (PIC 16F88x)	// Ponemos el flanco de interrupciones a cero (aun no se ha efectuado ninguna).
	BCF   0xFF2,TMR0IF,0
			;   // w1   =   0;								// Reseteamos la variable 铆ndice de la tabla.
			;	LATD.0 =0;            Vmax = 4;
	BCF   LATD,0,0
	MOVLW 4
	MOVLB 0
	MOVWF Vmax,1
	CLRF  Vmax+1,1
			;
			;	
			;	INTCON = 0b.0100.0000;				// Interrupciones globales (bit 7) e interrupci贸n por Timer0 (bit 5) activadas.
	MOVLW 64
	MOVWF INTCON,0
			;
			;	// COMEN脟O AL PAS PER 0, AMB 2 CICLES DE PWM A Ton=0 --> SON 100uS
			;	T=0; ancho_pwm =0; bUdw=1;	// Comen莽o carregant 0
	CLRF  T,1
	CLRF  ancho_pwm,1
	CLRF  ancho_pwm+1,1
	BSF   0x71,bUdw,1
			;	for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	MOVLW 1
	MOVWF i,1
m136	MOVLW 7
	MOVLB 0
	CPFSLT i,1
	BRA   m137
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	INCF  i,1,1
	BRA   m136
			;	CCPR1L    = ancho_pwm.high8;	CCP1CON.5 = ancho_pwm.7;	CCP1CON.4 = ancho_pwm.6; // PWM carregat a 0
m137	MOVFF ancho_pwm+1,CCPR1L
	MOVLB 0
	BTFSS ancho_pwm,7,1
	BCF   CCP1CON,5,0
	BTFSC ancho_pwm,7,1
	BSF   CCP1CON,5,0
	BTFSS ancho_pwm,6,1
	BCF   CCP1CON,4,0
	BTFSC ancho_pwm,6,1
	BSF   CCP1CON,4,0
			;	TMR2IF=0;	TMR2IE=1;	GIE=1; TMR2ON  = 1;
	BCF   0xF9E,TMR2IF,0
	BSF   0xF9D,TMR2IE,0
	BSF   0xFF2,GIE,0
	BSF   0xFCA,TMR2ON,0
			;	T++; SENO = sen[T];		ancho_pwm = (uns16)SENO*Vmax; // PREPARO SEGUENT VALOR
	INCF  T,1,1
	MOVF  T,W,1
	RCALL _const1
	MOVLB 0
	MOVWF SENO,1
	MOVF  SENO,W,1
	MULWF Vmax,1
	MOVFF PRODL,ancho_pwm
	MOVFF PRODH,ancho_pwm+1
	MOVF  SENO,W,1
	MULWF Vmax+1,1
	MOVF  PRODL,W,0
	ADDWF ancho_pwm+1,1,1
			;	char estado;
			;
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
			;	while (1)       					    // Bucle infinito durante el cual las interrupciones ir谩n saltando.
			;	{
			;		PORTC.1^=1;
m138	BTG   PORTC,1,0
			;	/*
			;		switch(estado){
			;			case LECTURA_VAC:
			;				while(T!=0);//espero a que sea paso por cero
			;				while (estado== LECTURA_VAC){
			;					if ((T == 6) || (T == 15 ) || (T == 20)) {	
			;					
			;					nop();
			;					}				
			;				}
			;				break;
			;			case CALCULOS_VAC:
			;				nop();
			;
			;				break;
			;			case LECTURA_IAC:
			;				while(T!=0);//espero a que sea paso por cero
			;				while (estado== LECTURA_IAC){
			;					if ((T == 6) || (T == 15 ) || (T == 20)) {	
			;					nop();
			;			
			;					}
			;				}
			;				break;
			;			case CALCULOS_IAC:
			;				nop();
			;				break;
			;			case ENVIO_LCD:
			;				nop();
			;				break;
			;
			;		}
			;													
			;	*/
			;	}	
	BRA   m138
			;}
			;
			;//=============================================================================================================
			;uns8 lectura_AD (void)						// Lee el canal anal贸gico AN0 con resoluci贸n de 8 bits:
			;{
lectura_AD
			;	uns8 valor_AD;
			;	TRISA.0 = 1;
	BSF   TRISA,0,0
			;	//ADCON0 = 0b.00.0000.01; 				// ADCON0 = 0b.01.0000.01; // Canal AN0. (PIC 16F887)
			;	ADCON0 = 0b.10.000.0.0.1;				// (PIC 16F877)
	MOVLW 129
	MOVWF ADCON0,0
			;	//ADCON1 = 0b.1000.0000; 				// Justificado a la derecha.	(PIC 16F887)
			;	ADCON1 = 0b.1.1.00.0000;				// (PIC 16F877)
	MOVLW 192
	MOVWF ADCON1,0
			;	retardo_20u ();							// Retardo de 20 us (para 20 MHz) necesario para adquirir la se帽al.
	CALL  retardo_20u
			;	GO = 1;									// Activamos la conversi贸n A -> D
	BSF   0xFC2,GO,0
			;	while (GO);								// Bloqueo mientras realiza la conversi贸n. Al terminar, el resultado est谩 en ADRESH y ADRESL
m139	BTFSC 0xFC2,GO,0
	BRA   m139
			;	//valor_AD.low8  = ADRESL;    			// Cargo en "valor_AD" el valor digital (10 bits: de 0 a 1023) de la conversi贸n.                                                               
			;	//valor_AD.high8 = ADRESH;				// Cargo en "valor_AD" el valor digital (10 bits: de 0 a 1023) de la conversi贸n. 
			;	valor_AD = ADRESH;						// Despreciamos los dos bits m谩s bajos para poder trabajar con un char.
	MOVFF ADRESH,valor_AD
			;	//PORTD = valor_AD.low8; 				// ****** PRUEBA PARA VER SI HACE LA CONVERSI脫N A/D.******************
			;	//PORTC.1 = !PORTC.1; 					// Conmutamos PORTC.1 para generar un pulso que nos indique el tiempo de conversi贸n A/D.
			;	
			;return valor_AD;
	MOVF  valor_AD,W,0
	RETURN
			;}
			;			
			;void configuraPic (void)					
			;{
configuraPic
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
			;	//ANSEL  = 0b.0000.0001;					// Solo el canal AN0 ser谩 entrada anal贸gica, el resto ser谩n entradas/salidas digitales.(PIC 816F87)
			;	//ANSELH = 0b.0000.0000;					// Solo el canal AN0 ser谩 entrada anal贸gica, el resto ser谩n entradas/salidas digitales.(PIC 816F87)
			;	
			;	TRISA  = 0b.0000.0001;					// PORTA.0 es entrada, el resto son salidas.
	MOVLW 1
	MOVWF TRISA,0
			;	TRISB  = 0b.0000.0000;					// PORTB todo salidas.
	CLRF  TRISB,0
			;	TRISC  = 0b.0000.0000;					// PORTC todo salidas adem谩s de la salida del PWM.
	CLRF  TRISC,0
			;	TRISD  = 0b.0000.0000;					// PORTD todo salidas.				
	CLRF  TRISD,0
			;	PORTB  = 0x00;							// Inicializa las salidas de PORTB a 0.
	CLRF  PORTB,0
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
			;	PWM1CON =0b.0000.0000; //tiempo muerto entre P1A y P1B
	CLRF  PWM1CON,0
			; 		// a mirar con el osciloscopio xq no me fio del proteus
			;		//0b.0000.0011;-->180nS
			;		//0b.0000.0100;-->240nS
			;		//0b.0111.1111;-->7.9uS !! se solapan los tiempos e invierte la salida con lo que quedan las 2 conduciendo!!
			;}
	RETURN
			;
			;void configura2_PWM (void) //void configura2_PWM (unsigned long ancho_pwm)	// Configura el "delta" del PWM.
			;{
configura2_PWM
			;	for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	MOVLW 1
	MOVLB 0
	MOVWF i,1
m140	MOVLW 7
	MOVLB 0
	CPFSLT i,1
	BRA   m141
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	INCF  i,1,1
	BRA   m140
			;	CCPR1L    = ancho_pwm.high8;
m141	MOVFF ancho_pwm+1,CCPR1L
			;	CCP1CON.5 = ancho_pwm.7;
	MOVLB 0
	BTFSS ancho_pwm,7,1
	BCF   CCP1CON,5,0
	BTFSC ancho_pwm,7,1
	BSF   CCP1CON,5,0
			;	CCP1CON.4 = ancho_pwm.6;
	BTFSS ancho_pwm,6,1
	BCF   CCP1CON,4,0
	BTFSC ancho_pwm,6,1
	BSF   CCP1CON,4,0
	RETURN
_const1
	MOVLB 0
	MOVWF ci,1
	MOVF  ci,W,1
	ADDLW 84
	MOVWF TBLPTR,0
	MOVLW 11
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

	END


; *** KEY INFO ***

; 0x000008  117 word(s)  1 % : highPriorityTimer_0
; 0x000B3C   25 word(s)  0 % : _const1
; 0x0000F2    8 word(s)  0 % : retardo_10u
; 0x000102   10 word(s)  0 % : retardo_20u
; 0x000116   15 word(s)  0 % : retardo_1m
; 0x000134   24 word(s)  0 % : retardo_100m
; 0x000164   20 word(s)  0 % : retardo_500m
; 0x000AE2   22 word(s)  0 % : configuraPic
; 0x000AC6   14 word(s)  0 % : lectura_AD
; 0x00018C    1 word(s)  0 % : lcdBegin
; 0x00018E   28 word(s)  0 % : envia_codigo_inicial
; 0x0001C6   59 word(s)  0 % : enviar_comando
; 0x00023C   71 word(s)  0 % : enviar_literal
; 0x0002CA   72 word(s)  0 % : enviar_cifra
; 0x00035A   59 word(s)  0 % : inicializar_lcd
; 0x0003D0   34 word(s)  0 % : escribir_posicion
; 0x000414   37 word(s)  0 % : borrar_linea
; 0x00045E    2 word(s)  0 % : borrar_lcd
; 0x000462  367 word(s)  4 % : Enviar_lcd
; 0x000740  384 word(s)  4 % : Enviar_uns16
; 0x000A40   67 word(s)  0 % : main
; 0x000B0E   23 word(s)  0 % : configura2_PWM

; RAM usage: 26 bytes (17 local), 742 bytes free
; Maximum call level: 3 (+2 for interrupt)
; Total of 1461 code words (17 %)
