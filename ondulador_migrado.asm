
; CC8E Version 1.4, Copyright (c) B Knudsen Data
; C compiler for the PIC18 microcontrollers
; ************   1. May 2015  14:06  *************

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
LATC        EQU   0xF8B
LATB        EQU   0xF8A
PORTD       EQU   0xF83
PORTC       EQU   0xF82
PORTB       EQU   0xF81
TMR0IF      EQU   2
GIE         EQU   7
TMR2ON      EQU   2
GO          EQU   1
ADFM        EQU   7
TMR2IF      EQU   1
TMR2IE      EQU   1
bUdw        EQU   0
ancho_pwm   EQU   0x96
Vmax        EQU   0x98
SENO        EQU   0x9A
T           EQU   0x9B
i           EQU   0x9C
estado      EQU   0x9D
svrSTATUS   EQU   0x60
svrBSR      EQU   0x61
svrWREG     EQU   0x62
sv_PRODL    EQU   0x63
sv_PRODH    EQU   0x64
sv_TBLPTR   EQU   0x65
sv_TABLAT   EQU   0x68
PDel0       EQU   0x91
PDel0_2     EQU   0x91
PDel1       EQU   0x92
PDel0_3     EQU   0xF7F
PDel1_2     EQU   0xF7F
PDel2       EQU   0xF7F
PDel0_4     EQU   0x7B
PDel1_3     EQU   0x7C
PDel2_2     EQU   0x7D
PDel0_5     EQU   0xF7F
PDel1_4     EQU   0xF7F
PDel2_3     EQU   0xF7F
codigo      EQU   0x7C
comando     EQU   0x90
dato        EQU   0x7C
i_2         EQU   0x7D
dato_2      EQU   0x7C
i_3         EQU   0x7D
i_4         EQU   0x7B
linea       EQU   0x7C
columna     EQU   0x7D
linea_2     EQU   0xF7F
i_5         EQU   0xF7F
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
i_6         EQU   0xF7F
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
linea_4     EQU   0x7C
columna_3   EQU   0x7D
dato_4      EQU   0x7E
num_2       EQU   0x80
u_milers_2  EQU   0x82
cent_2      EQU   0x84
d_milers    EQU   0x86
dec_2       EQU   0x88
unid_2      EQU   0x89
resto1_2    EQU   0x8A
i_7         EQU   0x8B
xx_2        EQU   0x8C
dat_2       EQU   0x8E
C18cnt      EQU   0x90
C19tmp      EQU   0x91
C20rem      EQU   0x93
C21cnt      EQU   0x90
C22tmp      EQU   0x91
C23cnt      EQU   0x90
C24tmp      EQU   0x91
C25rem      EQU   0x93
C26cnt      EQU   0x90
C27tmp      EQU   0x91
C28cnt      EQU   0x90
C29tmp      EQU   0x91
C30rem      EQU   0x93
C31cnt      EQU   0x90
C32tmp      EQU   0x91
C33cnt      EQU   0x90
C34tmp      EQU   0x91
C35rem      EQU   0x92
C36cnt      EQU   0x90
C37tmp      EQU   0x91
i_8         EQU   0x7B
canal       EQU   0x7C
bits        EQU   0x7D
resultado   EQU   0x7E
x           EQU   0x6C
vac         EQU   0x6D
ac          EQU   0x73
rf          EQU   0x74
dif         EQU   0x75
vbat        EQU   0x76
o           EQU   0x77
vuelta      EQU   3
p           EQU   0x78
h           EQU   0x79
bat         EQU   0x7B
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
			; #pragma config[5] = 0b.1000.1000//Mirar CCP2 MUX bit 0 
			; 				//-->1 = CCP2 input/output is multiplexed with RC1
			;				//   -->0 = CCP2 input/output is multiplexed with RB3 
			; #pragma config[6] = 0b.1000.0001
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
			;#define LECTURAS_VARIAS 4
			;#define ENVIO_LCD    5
			;
			;#define LOGO_SC		 0
			;#define BATT_FULL	 1
			;#define BATT_75		 2
			;#define BATT_50		 3
			;#define BATT_25		 4
			;#define BATT_10		 5
			;#define BATT_LW		 6 
			;#define BATT_CLEAR	 7
			;
			;
			;#pragma rambank 0
			;bit bUdw; // a 1 puja en la taula (incrementa) , a 0 decrementa
			;uns16 ancho_pwm;
			;uns16 Vmax;
			;uns8 SENO;
			;char T,i,estado; // Index de la taula
			;
			;
			;static const char sen [26] = 			
			;{0,8,16,23,31,39,47,54,61,68,75,81,87,93,98,103,108,112,115,119,121,123,125,126,127,128};
			;// PWM maximo 799 para ser 100% 
			;
			;//=======================================================================
			;#include "int18XXX.h"	 // Cap√ßalera de interrupcions.
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
	BTFSS 0x95,bUdw,1
	BRA   m004
	MOVLW 24
	CPFSGT T,1
	BRA   m003
	BCF   0x95,bUdw,1
			;				      else        T++;
	BRA   m004
m003	MOVLB 0
	INCF  T,1,1
			;					} 
			;		if(!bUdw)   T--;                       
m004	MOVLB 0
	BTFSS 0x95,bUdw,1
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
			;			T2CON = 0b.0.0001.1.01;  	CCPR1L = 0;		CCP1CON.5 = 0;	CCP1CON.4 = 0;	 
	MOVLW 13
	MOVWF T2CON,0
	CLRF  CCPR1L,0
	BCF   CCP1CON,5,0
	BCF   CCP1CON,4,0
			;			// Posrescaler a 2
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
			;			LATD.0= !LATD.0;	bUdw=1;  T=1; if(estado==ENVIO_LCD) estado = LECTURA_VAC;  // el deixo sortir
	BTG   LATD,0,0
	MOVLB 0
	BSF   0x95,bUdw,1
	MOVLW 1
	MOVWF T,1
	MOVLW 5
	CPFSEQ estado,1
	BRA   m007
	CLRF  estado,1
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
m009	CLRWDT
			;		        decfsz    PDel0, 1  ; 1 + (1) es el tiempo 0  ?
	DECFSZ PDel0,1,1
			;		        goto      PLoop0    ; 2 no, loop
	GOTO  m009
			;		PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m010
			;		PDelL2  clrwdt              ; 1 ciclo delay
m010	CLRWDT
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
m011	MOVLW 177
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1,1
			;	PLoop2  clrwdt              ; 1 clear watchdog
m012	CLRWDT
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m013
			;	PDelL2  
			;	        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
m013	DECFSZ PDel1,1,1
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m012
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel0_2,1,1
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m011
			;	PDelL3  goto PDelL4         ; 2 ciclos delay
	GOTO  m014
			;	PDelL4  goto PDelL5         ; 2 ciclos delay
m014	GOTO  m015
			;	PDelL5  clrwdt              ; 1 ciclo delay
m015	CLRWDT
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
m016	MOVLW 55
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_2,0
			;	PLoop1  movlw     .201      ; 1 set numero de repeticion  (A)
m017	MOVLW 201
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m018	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m018
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_2,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m017
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_3,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m016
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m019
			;	PDelL2  clrwdt              ; 1 ciclo delay
m019	CLRWDT
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
	MOVWF PDel0_4,1
			;	PLoop0  movlw     .59       ; 1 set numero de repeticion  (B)
m020	MOVLW 59
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_3,1
			;	PLoop1  movlw     .235      ; 1 set numero de repeticion  (A)
m021	MOVLW 235
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2_2,1
			;	PLoop2  clrwdt              ; 1 clear watchdog
m022	CLRWDT
			;	        clrwdt              ; 1 ciclo delay
	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2_2,1,1
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m022
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_3,1,1
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m021
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_4,1,1
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m020
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
m023	MOVLW 188
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_4,0
			;	PLoop1  movlw     .196      ; 1 set numero de repeticion  (A)
m024	MOVLW 196
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2_3,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m025	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2_3,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m025
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_4,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m024
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_5,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m023
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m026
			;	PDelL2  clrwdt              ; 1 ciclo delay
m026	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm

  ; FILE LCD_4bit.h
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
	MOVLB 0
	MOVWF dato,1
			;    char i;
			;
			;	
			;	PORTB.0 = dato.4;
	BTFSS dato,4,1
	BCF   PORTB,0,0
	BTFSC dato,4,1
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.5;
	BTFSS dato,5,1
	BCF   PORTB,1,0
	BTFSC dato,5,1
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.6;
	BTFSS dato,6,1
	BCF   PORTB,2,0
	BTFSC dato,6,1
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = dato.7;
	BTFSS dato,7,1
	BCF   PORTB,3,0
	BTFSC dato,7,1
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
	MOVLB 0
	MOVWF i_2,1
m027	MOVLW 7
	MOVLB 0
	CPFSLT i_2,1
	BRA   m028
	RCALL retardo_20u
	MOVLB 0
	INCF  i_2,1,1
	BRA   m027
			;	dato = swap (dato);
m028	MOVLB 0
	SWAPF dato,1,1
			;	PORTB.0 = dato.4;nop();
	BTFSS dato,4,1
	BCF   PORTB,0,0
	BTFSC dato,4,1
	BSF   PORTB,0,0
	NOP  
			;	PORTB.1 = dato.5;nop();
	BTFSS dato,5,1
	BCF   PORTB,1,0
	BTFSC dato,5,1
	BSF   PORTB,1,0
	NOP  
			;	PORTB.2 = dato.6;nop();
	BTFSS dato,6,1
	BCF   PORTB,2,0
	BTFSC dato,6,1
	BSF   PORTB,2,0
	NOP  
			;	PORTB.3 = dato.7;nop();
	BTFSS dato,7,1
	BCF   PORTB,3,0
	BTFSC dato,7,1
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
	MOVLB 0
	MOVWF i_2,1
m029	MOVLW 7
	MOVLB 0
	CPFSLT i_2,1
	BRA   m030
	RCALL retardo_20u
	MOVLB 0
	INCF  i_2,1,1
	BRA   m029
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m030	MOVLW 12
	BRA   enviar_comando
			;	return;
			;}   
			;
			;void enviar_cifra (char dato) 
			;{
enviar_cifra
	MOVLB 0
	MOVWF dato_2,1
			;    char i;
			;	dato = dato + 0x30; 							// Convierto el n˙mero en su equivalente ASCII literal. 
	MOVLW 48
	ADDWF dato_2,1,1
			;	PORTB.0 = dato.4;
	BTFSS dato_2,4,1
	BCF   PORTB,0,0
	BTFSC dato_2,4,1
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.5;
	BTFSS dato_2,5,1
	BCF   PORTB,1,0
	BTFSC dato_2,5,1
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.6;
	BTFSS dato_2,6,1
	BCF   PORTB,2,0
	BTFSC dato_2,6,1
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = dato.7;
	BTFSS dato_2,7,1
	BCF   PORTB,3,0
	BTFSC dato_2,7,1
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
	MOVLB 0
	MOVWF i_3,1
m031	MOVLW 7
	MOVLB 0
	CPFSLT i_3,1
	BRA   m032
	RCALL retardo_20u
	MOVLB 0
	INCF  i_3,1,1
	BRA   m031
			;	dato = swap (dato);
m032	MOVLB 0
	SWAPF dato_2,1,1
			;	PORTB.0 = dato.4;
	BTFSS dato_2,4,1
	BCF   PORTB,0,0
	BTFSC dato_2,4,1
	BSF   PORTB,0,0
			;	nop();
	NOP  
			;	PORTB.1 = dato.5;
	BTFSS dato_2,5,1
	BCF   PORTB,1,0
	BTFSC dato_2,5,1
	BSF   PORTB,1,0
			;	nop();
	NOP  
			;	PORTB.2 = dato.6;
	BTFSS dato_2,6,1
	BCF   PORTB,2,0
	BTFSC dato_2,6,1
	BSF   PORTB,2,0
			;	nop();
	NOP  
			;	PORTB.3 = dato.7;
	BTFSS dato_2,7,1
	BCF   PORTB,3,0
	BTFSC dato_2,7,1
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
	MOVLB 0
	MOVWF i_3,1
m033	MOVLW 7
	MOVLB 0
	CPFSLT i_3,1
	BRA   m034
	RCALL retardo_20u
	MOVLB 0
	INCF  i_3,1,1
	BRA   m033
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
m034	MOVLW 12
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
	MOVWF i_4,1
m035	MOVLW 21
	MOVLB 0
	CPFSLT i_4,1
	BRA   m036
	RCALL retardo_1m
	MOVLB 0
	INCF  i_4,1,1
	BRA   m035
			;	envia_codigo_inicial (0b.00.11.0000);
m036	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 6; i++) retardo_1m ();
	MOVLW 1
	MOVLB 0
	MOVWF i_4,1
m037	MOVLW 6
	MOVLB 0
	CPFSLT i_4,1
	BRA   m038
	RCALL retardo_1m
	MOVLB 0
	INCF  i_4,1,1
	BRA   m037
			;    envia_codigo_inicial (0b.00.11.0000);	
m038	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i< 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_4,1
m039	MOVLW 11
	MOVLB 0
	CPFSLT i_4,1
	BRA   m040
	RCALL retardo_20u
	MOVLB 0
	INCF  i_4,1,1
	BRA   m039
			;    envia_codigo_inicial (0b.00.11.0000);
m040	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_4,1
m041	MOVLW 11
	MOVLB 0
	CPFSLT i_4,1
	BRA   m042
	RCALL retardo_20u
	MOVLB 0
	INCF  i_4,1,1
	BRA   m041
			;	envia_codigo_inicial (0b.00.10.0000);			// A 4 bits.
m042	MOVLW 32
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
	BRA   m043
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m044
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m045
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m046
	BRA   m047
			;		{
			;			case 1:
			;				enviar_comando (127 + columna); 	// Inicio primera linea.
m043	MOVLW 127
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;
	BRA   m047
			;						
			;			case 2:
			;				enviar_comando (191 + columna); 	// Inicio segunda lÌnea.
m044	MOVLW 191
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m047
			;
			;			case 3:
			;				enviar_comando (147 + columna);		// Inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m045	MOVLW 147
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m047
			;			
			;			case 4:
			;				enviar_comando (211 + columna); 	// Inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m046	MOVLW 211
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;
	BRA   m047
			;			enviar_comando (0b.0000.1100);			// Pantalla encendida, sin cursor.
	MOVLW 12
	BRA   enviar_comando
			;		}
			;	
			;	
			;}
m047	RETURN
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
	BRA   m048
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m049
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m050
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m051
	BRA   m052
			;		{
			;			case 1:
			;				enviar_comando (128); 				// Inicio primera linea.
m048	MOVLW 128
	RCALL enviar_comando
			;			break;
	BRA   m052
			;						
			;			case 2:
			;				enviar_comando (192); 				// Inicio segunda lÌnea.
m049	MOVLW 192
	RCALL enviar_comando
			;			break;			
	BRA   m052
			;
			;			case 3:
			;				enviar_comando (148); 				// Inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m050	MOVLW 148
	RCALL enviar_comando
			;			break;				
	BRA   m052
			;			
			;			case 4:
			;				enviar_comando (212); 				// Inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m051	MOVLW 212
	RCALL enviar_comando
			;			break;
			;		}
			;	for (i = 1; i < 21; i++) enviar_literal (' '); 	// Envio 20 car·cteres en blanco y posiciono en la siguiente lÌnea.
m052	MOVLW 1
	MOVWF i_5,0
m053	MOVLW 21
	CPFSLT i_5,0
	BRA   m054
	MOVLW 32
	RCALL enviar_literal
	INCF  i_5,1,0
	BRA   m053
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m054	MOVLW 12
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
	BRA   m055
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m056
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m057
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m058
	BRA   m059
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m055	MOVLW 127
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m059
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m056	MOVLW 191
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;			
	BRA   m059
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m057	MOVLW 147
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;				
	BRA   m059
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m058	MOVLW 211
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m059
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;		if (!xi)
m059	BTFSC 0xF7F,xi,0
	BRA   m060
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
	BRA   m066
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m096
			;		    else goto sa;
			;		}
			;		else
			;		{
			;			xy = 1;
m060	MOVLW 1
	MOVWF xy,0
			;			if (dato > 9999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
	MOVLW 16
	SUBWF dato_3,W,0
	MOVLW 39
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m061
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m096
			;		}
			;			// Separo per 4 xifres
			;			num = dato; // per 4 xifres
m061	MOVFF dato_3,num
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
m062	RLCF  C4tmp,1,0
	RLCF  C4tmp+1,1,0
	RLCF  C5rem,1,0
	RLCF  C5rem+1,1,0
	MOVLW 232
	SUBWF C5rem,W,0
	MOVLW 3
	SUBWFB C5rem+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m063
	MOVLW 232
	SUBWF C5rem,1,0
	MOVLW 3
	SUBWFB C5rem+1,1,0
	BSF   0xFD8,Carry,0
m063	RLCF  u_milers,1,0
	RLCF  u_milers+1,1,0
	DECFSZ C3cnt,1,0
	BRA   m062
			;			dato = num % 1000;
	MOVF  num,W,0
	MOVWF C7tmp,0
	MOVF  num+1,W,0
	MOVWF C7tmp+1,0
	CLRF  dato_3,0
	CLRF  dato_3+1,0
	MOVLW 16
	MOVWF C6cnt,0
m064	RLCF  C7tmp,1,0
	RLCF  C7tmp+1,1,0
	RLCF  dato_3,1,0
	RLCF  dato_3+1,1,0
	MOVLW 232
	SUBWF dato_3,W,0
	MOVLW 3
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m065
	MOVLW 232
	SUBWF dato_3,1,0
	MOVLW 3
	SUBWFB dato_3+1,1,0
m065	DECFSZ C6cnt,1,0
	BRA   m064
			;			// Separo per 3 xifres
			;sa:			cent   = dato   / 100;   	
m066	MOVF  dato_3,W,0
	MOVWF C9tmp,0
	MOVF  dato_3+1,W,0
	MOVWF C9tmp+1,0
	CLRF  C10rem,0
	MOVLW 16
	MOVWF C8cnt,0
m067	RLCF  C9tmp,1,0
	RLCF  C9tmp+1,1,0
	RLCF  C10rem,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m068
	MOVLW 100
	SUBWF C10rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m069
m068	MOVLW 100
	SUBWF C10rem,1,0
	BSF   0xFD8,Carry,0
m069	RLCF  cent,1,0
	RLCF  cent+1,1,0
	DECFSZ C8cnt,1,0
	BRA   m067
			;			resto1 = dato   % 100;
	MOVF  dato_3,W,0
	MOVWF C12tmp,0
	MOVF  dato_3+1,W,0
	MOVWF C12tmp+1,0
	CLRF  resto1,0
	MOVLW 16
	MOVWF C11cnt,0
m070	RLCF  C12tmp,1,0
	RLCF  C12tmp+1,1,0
	RLCF  resto1,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m071
	MOVLW 100
	SUBWF resto1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m072
m071	MOVLW 100
	SUBWF resto1,1,0
m072	DECFSZ C11cnt,1,0
	BRA   m070
			;			dec    = resto1 /  10;  
	MOVF  resto1,W,0
	MOVWF C14tmp,0
	CLRF  C15rem,0
	MOVLW 8
	MOVWF C13cnt,0
m073	RLCF  C14tmp,1,0
	RLCF  C15rem,1,0
	MOVLW 10
	SUBWF C15rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m074
	MOVLW 10
	SUBWF C15rem,1,0
	BSF   0xFD8,Carry,0
m074	RLCF  dec,1,0
	DECFSZ C13cnt,1,0
	BRA   m073
			;			unid   = resto1 %  10; 		
	MOVF  resto1,W,0
	MOVWF C17tmp,0
	CLRF  unid,0
	MOVLW 8
	MOVWF C16cnt,0
m075	RLCF  C17tmp,1,0
	RLCF  unid,1,0
	MOVLW 10
	SUBWF unid,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m076
	MOVLW 10
	SUBWF unid,1,0
m076	DECFSZ C16cnt,1,0
	BRA   m075
			;		// Envio
			;		for (xx = xy; xx < 7; xx++)
	MOVFF xy,xx
m077	MOVLW 7
	CPFSLT xx,0
	BRA   m096
			;		{
			;			clrwdt () ;
	CLRWDT
			;			if (xx == 1) 
	DECFSZ xx,W,0
	BRA   m079
			;			{
			;				if ((u_milers==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m078
	BTFSC 0xF7F,bd,0
	BRA   m078
	MOVLW 32
	MOVWF dat,0
			;				else dat = u_milers;
	BRA   m079
m078	MOVFF u_milers,dat
			;			}
			;			if (xx == 2) 
m079	MOVLW 2
	CPFSEQ xx,0
	BRA   m081
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m080
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m080
	BTFSC 0xF7F,bd,0
	BRA   m080
	MOVLW 32
	MOVWF dat,0
			;				else dat = cent;
	BRA   m081
m080	MOVFF cent,dat
			;			}
			;			if (xx == 3) 
m081	MOVLW 3
	CPFSEQ xx,0
	BRA   m084
			;			{
			;				if(ndp) { if (dp==0) dat = '.';
	BTFSS 0xF7F,ndp,0
	BRA   m083
	BTFSC 0xF7F,dp,0
	BRA   m082
	MOVLW 46
	MOVWF dat,0
			;				          else xx++;  
	BRA   m084
m082	INCF  xx,1,0
			;				        }
			;				else xx++;		
	BRA   m084
m083	INCF  xx,1,0
			;			}
			;			if (xx == 4)
m084	MOVLW 4
	CPFSEQ xx,0
	BRA   m086
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(dec==0)&&(!bd)) dat = ' ';
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m085
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m085
	MOVF  dec,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m085
	BTFSC 0xF7F,bd,0
	BRA   m085
	MOVLW 32
	MOVWF dat,0
			;				else dat = dec ;
	BRA   m086
m085	MOVFF dec,dat
			;			}
			;			if (xx == 5)
m086	MOVLW 5
	CPFSEQ xx,0
	BRA   m089
			;			{
			;				if(!ndp) { if (dp==0) dat = '.';	
	BTFSC 0xF7F,ndp,0
	BRA   m088
	BTFSC 0xF7F,dp,0
	BRA   m087
	MOVLW 46
	MOVWF dat,0
			;				           else xx++;
	BRA   m089
m087	INCF  xx,1,0
			;						 }
			;				else xx++;		 
	BRA   m089
m088	INCF  xx,1,0
			;			}
			;			if (xx == 6) dat = unid;
m089	MOVLW 6
	CPFSEQ xx,0
	BRA   m090
	MOVFF unid,dat
			;						
			;			if ((dat!='.')&&(dat!=' ')) dat = dat + 0x30;
m090	MOVF  dat,W,0
	XORLW 46
	BTFSC 0xFD8,Zero_,0
	BRA   m091
	MOVF  dat,W,0
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m091
	MOVLW 48
	ADDWF dat,1,0
			;
			;			PORTB.0 = dat.4;nop();
m091	BTFSS dat,4,0
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
	MOVWF i_6,0
m092	MOVLW 7
	CPFSLT i_6,0
	BRA   m093
	RCALL retardo_20u
	INCF  i_6,1,0
	BRA   m092
			;			dat = swap (dat);
m093	SWAPF dat,1,0
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
	MOVWF i_6,0
m094	MOVLW 7
	CPFSLT i_6,0
	BRA   m095
	RCALL retardo_20u
	INCF  i_6,1,0
	BRA   m094
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m095	MOVLW 12
	RCALL enviar_comando
			;		}
	INCF  xx,1,0
	BRA   m077
			;so:	//DESCON_LCD ();
			;	return;
m096	RETURN
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
	BRA   m097
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m098
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m099
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m100
	BRA   m101
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m097	MOVLW 127
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m101
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m098	MOVLW 191
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m101
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m099	MOVLW 147
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m101
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m100	MOVLW 211
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m101
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;	
			;			
			;			num = dato; 
m101	MOVFF dato_4,num_2
	MOVFF dato_4+1,num_2+1
			;			d_milers =num/10000;
	MOVLB 0
	MOVF  num_2,W,1
	MOVWF C19tmp,1
	MOVF  num_2+1,W,1
	MOVWF C19tmp+1,1
	CLRF  C20rem,1
	CLRF  C20rem+1,1
	MOVLW 16
	MOVWF C18cnt,1
m102	MOVLB 0
	RLCF  C19tmp,1,1
	RLCF  C19tmp+1,1,1
	RLCF  C20rem,1,1
	RLCF  C20rem+1,1,1
	MOVLW 16
	SUBWF C20rem,W,1
	MOVLW 39
	SUBWFB C20rem+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m103
	MOVLW 16
	MOVLB 0
	SUBWF C20rem,1,1
	MOVLW 39
	SUBWFB C20rem+1,1,1
	BSF   0xFD8,Carry,0
m103	MOVLB 0
	RLCF  d_milers,1,1
	RLCF  d_milers+1,1,1
	DECFSZ C18cnt,1,1
	BRA   m102
			;			num= num%10000;
	MOVF  num_2,W,1
	MOVWF C22tmp,1
	MOVF  num_2+1,W,1
	MOVWF C22tmp+1,1
	CLRF  num_2,1
	CLRF  num_2+1,1
	MOVLW 16
	MOVWF C21cnt,1
m104	MOVLB 0
	RLCF  C22tmp,1,1
	RLCF  C22tmp+1,1,1
	RLCF  num_2,1,1
	RLCF  num_2+1,1,1
	MOVLW 16
	SUBWF num_2,W,1
	MOVLW 39
	SUBWFB num_2+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m105
	MOVLW 16
	MOVLB 0
	SUBWF num_2,1,1
	MOVLW 39
	SUBWFB num_2+1,1,1
m105	MOVLB 0
	DECFSZ C21cnt,1,1
	BRA   m104
			;			u_milers = num / 1000;
	MOVF  num_2,W,1
	MOVWF C24tmp,1
	MOVF  num_2+1,W,1
	MOVWF C24tmp+1,1
	CLRF  C25rem,1
	CLRF  C25rem+1,1
	MOVLW 16
	MOVWF C23cnt,1
m106	MOVLB 0
	RLCF  C24tmp,1,1
	RLCF  C24tmp+1,1,1
	RLCF  C25rem,1,1
	RLCF  C25rem+1,1,1
	MOVLW 232
	SUBWF C25rem,W,1
	MOVLW 3
	SUBWFB C25rem+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m107
	MOVLW 232
	MOVLB 0
	SUBWF C25rem,1,1
	MOVLW 3
	SUBWFB C25rem+1,1,1
	BSF   0xFD8,Carry,0
m107	MOVLB 0
	RLCF  u_milers_2,1,1
	RLCF  u_milers_2+1,1,1
	DECFSZ C23cnt,1,1
	BRA   m106
			;			dato = num % 1000;
	MOVF  num_2,W,1
	MOVWF C27tmp,1
	MOVF  num_2+1,W,1
	MOVWF C27tmp+1,1
	CLRF  dato_4,1
	CLRF  dato_4+1,1
	MOVLW 16
	MOVWF C26cnt,1
m108	MOVLB 0
	RLCF  C27tmp,1,1
	RLCF  C27tmp+1,1,1
	RLCF  dato_4,1,1
	RLCF  dato_4+1,1,1
	MOVLW 232
	SUBWF dato_4,W,1
	MOVLW 3
	SUBWFB dato_4+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m109
	MOVLW 232
	MOVLB 0
	SUBWF dato_4,1,1
	MOVLW 3
	SUBWFB dato_4+1,1,1
m109	MOVLB 0
	DECFSZ C26cnt,1,1
	BRA   m108
			;
			;			cent   = dato   / 100;   	
	MOVF  dato_4,W,1
	MOVWF C29tmp,1
	MOVF  dato_4+1,W,1
	MOVWF C29tmp+1,1
	CLRF  C30rem,1
	MOVLW 16
	MOVWF C28cnt,1
m110	MOVLB 0
	RLCF  C29tmp,1,1
	RLCF  C29tmp+1,1,1
	RLCF  C30rem,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m111
	MOVLW 100
	SUBWF C30rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m112
m111	MOVLW 100
	MOVLB 0
	SUBWF C30rem,1,1
	BSF   0xFD8,Carry,0
m112	MOVLB 0
	RLCF  cent_2,1,1
	RLCF  cent_2+1,1,1
	DECFSZ C28cnt,1,1
	BRA   m110
			;			resto1 = dato   % 100;
	MOVF  dato_4,W,1
	MOVWF C32tmp,1
	MOVF  dato_4+1,W,1
	MOVWF C32tmp+1,1
	CLRF  resto1_2,1
	MOVLW 16
	MOVWF C31cnt,1
m113	MOVLB 0
	RLCF  C32tmp,1,1
	RLCF  C32tmp+1,1,1
	RLCF  resto1_2,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m114
	MOVLW 100
	SUBWF resto1_2,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m115
m114	MOVLW 100
	MOVLB 0
	SUBWF resto1_2,1,1
m115	MOVLB 0
	DECFSZ C31cnt,1,1
	BRA   m113
			;			dec    = resto1 /  10;  
	MOVF  resto1_2,W,1
	MOVWF C34tmp,1
	CLRF  C35rem,1
	MOVLW 8
	MOVWF C33cnt,1
m116	MOVLB 0
	RLCF  C34tmp,1,1
	RLCF  C35rem,1,1
	MOVLW 10
	SUBWF C35rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m117
	MOVLW 10
	MOVLB 0
	SUBWF C35rem,1,1
	BSF   0xFD8,Carry,0
m117	MOVLB 0
	RLCF  dec_2,1,1
	DECFSZ C33cnt,1,1
	BRA   m116
			;			unid   = resto1 %  10; 		
	MOVF  resto1_2,W,1
	MOVWF C37tmp,1
	CLRF  unid_2,1
	MOVLW 8
	MOVWF C36cnt,1
m118	MOVLB 0
	RLCF  C37tmp,1,1
	RLCF  unid_2,1,1
	MOVLW 10
	SUBWF unid_2,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m119
	MOVLW 10
	MOVLB 0
	SUBWF unid_2,1,1
m119	MOVLB 0
	DECFSZ C36cnt,1,1
	BRA   m118
			;		// Envio
			;		for (xx=0 ; xx < 5; xx++)
	CLRF  xx_2,1
m120	MOVLW 5
	MOVLB 0
	CPFSLT xx_2,1
	BRA   m136
			;		{
			;			switch(xx){
	MOVF  xx_2,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m121
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m123
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m125
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m127
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m129
	BRA   m130
			;				case 0:
			;					if (d_milers==0) dat = ' '; 
m121	MOVLB 0
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m122
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = d_milers;
	BRA   m130
m122	MOVFF d_milers,dat_2
			;					break;
	BRA   m130
			;				case 1:
			;					if ((u_milers==0)&&(d_milers==0)) dat = ' ';
m123	MOVLB 0
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m124
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m124
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = u_milers;
	BRA   m130
m124	MOVFF u_milers_2,dat_2
			;					break;
	BRA   m130
			;				case 2:
			;					if ((d_milers==0)&&(u_milers==0)&&(cent==0)) dat = ' '; 
m125	MOVLB 0
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m126
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m126
	MOVF  cent_2,W,1
	IORWF cent_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m126
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = cent;
	BRA   m130
m126	MOVFF cent_2,dat_2
			;					break;
	BRA   m130
			;				case 3:
			;					if ((u_milers==0)&&(cent==0)&&(dec==0)&&(d_milers==0)) dat = ' ';
m127	MOVLB 0
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m128
	MOVF  cent_2,W,1
	IORWF cent_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m128
	MOVF  dec_2,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m128
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m128
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = dec ;
	BRA   m130
m128	MOVFF dec_2,dat_2
			;					break;
	BRA   m130
			;				case 4:
			;					dat = unid;
m129	MOVFF unid_2,dat_2
			;					break;
			;			}		
			;			if (dat!=' ') dat = dat + 0x30;
m130	MOVLB 0
	MOVF  dat_2,W,1
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m131
	MOVLW 48
	ADDWF dat_2,1,1
			;			PORTB.0 = dat.4;nop();
m131	MOVLB 0
	BTFSS dat_2,4,1
	BCF   PORTB,0,0
	BTFSC dat_2,4,1
	BSF   PORTB,0,0
	NOP  
			;			PORTB.1 = dat.5;nop();
	BTFSS dat_2,5,1
	BCF   PORTB,1,0
	BTFSC dat_2,5,1
	BSF   PORTB,1,0
	NOP  
			;			PORTB.2 = dat.6;nop();
	BTFSS dat_2,6,1
	BCF   PORTB,2,0
	BTFSC dat_2,6,1
	BSF   PORTB,2,0
	NOP  
			;			PORTB.3 = dat.7;nop();
	BTFSS dat_2,7,1
	BCF   PORTB,3,0
	BTFSC dat_2,7,1
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
	MOVLB 0
	MOVWF i_7,1
m132	MOVLW 7
	MOVLB 0
	CPFSLT i_7,1
	BRA   m133
	CALL  retardo_20u
	MOVLB 0
	INCF  i_7,1,1
	BRA   m132
			;			dat = swap (dat);
m133	MOVLB 0
	SWAPF dat_2,1,1
			;			PORTB.0 = dat.4;nop();
	BTFSS dat_2,4,1
	BCF   PORTB,0,0
	BTFSC dat_2,4,1
	BSF   PORTB,0,0
	NOP  
			;			PORTB.1 = dat.5;nop();
	BTFSS dat_2,5,1
	BCF   PORTB,1,0
	BTFSC dat_2,5,1
	BSF   PORTB,1,0
	NOP  
			;			PORTB.2 = dat.6;nop();
	BTFSS dat_2,6,1
	BCF   PORTB,2,0
	BTFSC dat_2,6,1
	BSF   PORTB,2,0
	NOP  
			;			PORTB.3 = dat.7;
	BTFSS dat_2,7,1
	BCF   PORTB,3,0
	BTFSC dat_2,7,1
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
	MOVLB 0
	MOVWF i_7,1
m134	MOVLW 7
	MOVLB 0
	CPFSLT i_7,1
	BRA   m135
	CALL  retardo_20u
	MOVLB 0
	INCF  i_7,1,1
	BRA   m134
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m135	MOVLW 12
	CALL  enviar_comando
			;		}
	MOVLB 0
	INCF  xx_2,1,1
	BRA   m120
			;
			;	return;
m136	RETURN
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
	CLRF  i_8,1
m137	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m138
	MOVLW 26
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m137
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_2[i]); retardo_20u (); retardo_20u ();}
m138	MOVLB 0
	CLRF  i_8,1
m139	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m140
	MOVLW 34
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m139
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_3[i]); retardo_20u (); retardo_20u ();}
m140	MOVLB 0
	CLRF  i_8,1
m141	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m142
	MOVLW 42
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m141
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_4[i]); retardo_20u (); retardo_20u ();}
m142	MOVLB 0
	CLRF  i_8,1
m143	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m144
	MOVLW 50
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m143
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_5[i]); retardo_20u (); retardo_20u ();}
m144	MOVLB 0
	CLRF  i_8,1
m145	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m146
	MOVLW 58
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m145
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_6[i]); retardo_20u (); retardo_20u ();}
m146	MOVLB 0
	CLRF  i_8,1
m147	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m148
	MOVLW 66
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m147
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_7[i]); retardo_20u (); retardo_20u ();}
m148	MOVLB 0
	CLRF  i_8,1
m149	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m150
	MOVLW 74
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m149
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_8[i]); retardo_20u (); retardo_20u ();}	
m150	MOVLB 0
	CLRF  i_8,1
m151	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m152
	MOVLW 82
	ADDWF i_8,W,1
	RCALL _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m151
			;	enviar_comando (0b.0000.0010);
m152	MOVLW 2
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
	BRA   m153
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m154
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m155
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m156
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m157
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m158
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m159
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m160
	XORLW 15
	BTFSC 0xFD8,Zero_,0
	BRA   m161
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m162
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m163
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m164
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m165
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m166
	BRA   m167
			;	{
			;		//del 0 al 4, est√°n en el PORTA
			;		case 0: 	ADCON0 = 0b.00.0000.01;		break;
m153	MOVLW 1
	MOVWF ADCON0,0
	BRA   m168
			;		case 1:		ADCON0 = 0b.00.0001.01;		break;
m154	MOVLW 5
	MOVWF ADCON0,0
	BRA   m168
			;		case 2:		ADCON0 = 0b.00.0010.01;		break;
m155	MOVLW 9
	MOVWF ADCON0,0
	BRA   m168
			;		case 3:		ADCON0 = 0b.00.0011.01;		break;
m156	MOVLW 13
	MOVWF ADCON0,0
	BRA   m168
			;		case 4:		ADCON0 = 0b.00.0100.01;		break;
m157	MOVLW 17
	MOVWF ADCON0,0
	BRA   m168
			;		case 5:		ADCON0 = 0b.00.0101.01;		break;
m158	MOVLW 21
	MOVWF ADCON0,0
	BRA   m168
			;		case 6:		ADCON0 = 0b.00.0110.01;		break;
m159	MOVLW 25
	MOVWF ADCON0,0
	BRA   m168
			;		case 7:		ADCON0 = 0b.00.0111.01;		break;
m160	MOVLW 29
	MOVWF ADCON0,0
	BRA   m168
			;		case 8:		ADCON0 = 0b.00.1000.01;		break;
m161	MOVLW 33
	MOVWF ADCON0,0
	BRA   m168
			;		case 9:		ADCON0 = 0b.00.1001.01;		break;
m162	MOVLW 37
	MOVWF ADCON0,0
	BRA   m168
			;		case 10:	ADCON0 = 0b.00.1010.01;		break;
m163	MOVLW 41
	MOVWF ADCON0,0
	BRA   m168
			;		case 11:	ADCON0 = 0b.00.1011.01;		break;
m164	MOVLW 45
	MOVWF ADCON0,0
	BRA   m168
			;		case 12:	ADCON0 = 0b.00.1100.01;		break;
m165	MOVLW 49
	MOVWF ADCON0,0
	BRA   m168
			;		case 13:	ADCON0 = 0b.00.1101.01;		break;
m166	MOVLW 53
	MOVWF ADCON0,0
	BRA   m168
			;		default:	ADCON0 = 0b.00.0000.01;
m167	MOVLW 1
	MOVWF ADCON0,0
			;	}
			;	if (bits == 8){ADFM=0;GO = 1;  while(GO);resultado = ADRESH;}
m168	MOVLW 8
	MOVLB 0
	CPFSEQ bits,1
	BRA   m170
	BCF   0xFC0,ADFM,0
	BSF   0xFC2,GO,0
m169	BTFSC 0xFC2,GO,0
	BRA   m169
	MOVFF ADRESH,resultado
	MOVLB 0
	CLRF  resultado+1,1
			;	else 		  {ADFM=1;GO = 1;  while(GO);resultado.low8 = ADRESL;resultado.high8 = ADRESH;}
	BRA   m172
m170	BSF   0xFC0,ADFM,0
	BSF   0xFC2,GO,0
m171	BTFSC 0xFC2,GO,0
	BRA   m171
	MOVFF ADRESL,resultado
	MOVFF ADRESH,resultado+1
			;   	
			;   	return resultado;
m172	MOVLB 0
	MOVF  resultado,W,1
	RETURN

  ; FILE ondulador_migrado.c
			;
			;//==============================================================================================
			;#include "Temporiz_64Mhz.h"
			;void configuraPic (void);
			;void configura1_PWM (void); 				// Configura todos los pr√°metros excepto M.
			;uns8 lectura_VAC (void);
			;	
			;#include "LCD_4bit.h"
			;#include "medir_18F4XK20.h"
			;
			;static const char mensaje1[19] ="ONDULADOR 50HZ  by ";
			;static const char mensaje2[7] ="ESTADO:";
			;static const char mensaje3[5] ="VMAX:";
			;static const char mensaje4[13] ="LECTURAS_VAC:";
			;static const char ref [6] = {100,100,100,100,100,100};
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
			;	LATD.0 =0;            Vmax = 2; //2 el pwm maximo en 
	BCF   LATD,0,0
	MOVLW 2
	MOVLB 0
	MOVWF Vmax,1
	CLRF  Vmax+1,1
			;
			;	
			;	INTCON = 0b.0100.0000;				// Interrupciones globales (bit 7) e interrupci√≥n por Timer0 (bit 5) activadas.
	MOVLW 64
	MOVWF INTCON,0
			;
			;	// COMEN√áO AL PAS PER 0, AMB 2 CICLES DE PWM A Ton=0 --> SON 100uS
			;	T=0; ancho_pwm =0; bUdw=1;	// Comen√ßo carregant 0
	CLRF  T,1
	CLRF  ancho_pwm,1
	CLRF  ancho_pwm+1,1
	BSF   0x95,bUdw,1
			;	for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	MOVLW 1
	MOVWF i,1
m173	MOVLW 7
	MOVLB 0
	CPFSLT i,1
	BRA   m174
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	INCF  i,1,1
	BRA   m173
			;	CCPR1L    = ancho_pwm.high8;	CCP1CON.5 = ancho_pwm.7;	CCP1CON.4 = ancho_pwm.6; // PWM carregat a 0
m174	MOVFF ancho_pwm+1,CCPR1L
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
			; //**************************************************************************************//
			; //*******************  V A R I A B L E S   L O C A L E L E S ***************************//
			; //**************************************************************************************//
			;	estado=0; //empieza por estado 0
	CLRF  estado,1
			;	uns8 x;
			;	char vac[6];
			;	char ac,rf,dif,vbat,o=0; //variables para guardar temporalmente las arrays
	CLRF  o,1
			;	bit a,b,c,vuelta=0;
	BCF   0x7A,vuelta,1
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
			;
			;	inicializar_lcd(); 
	CALL  inicializar_lcd
			;	borrar_lcd();
	CALL  borrar_lcd
			;	retardo_100m();
	CALL  retardo_100m
			;	RAM_LCD();
	RCALL RAM_LCD
			;	retardo_100m();
	CALL  retardo_100m
			;	borrar_lcd();
	CALL  borrar_lcd
			;	escribir_posicion (1, 1);
	MOVLW 1
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			;	char p,h;
			;	for(p=0;p<19;p++ )enviar_literal(mensaje1[p]);
	MOVLB 0
	CLRF  p,1
m175	MOVLW 19
	MOVLB 0
	CPFSLT p,1
	BRA   m176
	MOVLW 90
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m175
			;	enviar_literal(LOGO_SC);
m176	MOVLW 0
	CALL  enviar_literal
			;	escribir_posicion (2, 1);
	MOVLW 2
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	for(p=0;p<7;p++ )enviar_literal(mensaje2[p]);
	MOVLB 0
	CLRF  p,1
m177	MOVLW 7
	MOVLB 0
	CPFSLT p,1
	BRA   m178
	MOVLW 109
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m177
			; 	escribir_posicion (3, 1);
m178	MOVLW 3
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	for(p=0;p<5;p++ )enviar_literal(mensaje3[p]);
	MOVLB 0
	CLRF  p,1
m179	MOVLW 5
	MOVLB 0
	CPFSLT p,1
	BRA   m180
	MOVLW 116
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m179
			; 	escribir_posicion (4, 1);
m180	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	for(p=0;p<13;p++ )enviar_literal(mensaje4[p]);
	MOVLB 0
	CLRF  p,1
m181	MOVLW 13
	MOVLB 0
	CPFSLT p,1
	BRA   m182
	MOVLW 121
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m181
			;	
			;	ADCON2=0b.10.001.110;
m182	MOVLW 142
	MOVWF ADCON2,0
			;
			; //**************************************************************************************//
			; //**************************  B U C L E   I N F I N I T O  *****************************//
			; //**************************************************************************************//
			;	while (1)       					
			;	{
			;		PORTC.1^=1;
m183	BTG   PORTC,1,0
			;	
			;		switch(estado){
	MOVLB 0
	MOVF  estado,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m184
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m191
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m197
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m199
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m200
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m209
	BRA   m183
			;			case LECTURA_VAC:
			;				x=0;
m184	MOVLB 0
	CLRF  x,1
			;				while(LATD.0==1){
m185	BTFSS LATD,0,0
	BRA   m190
			;					PORTC.4=1;
	BSF   PORTC,4,0
			;					if (((T == 6)&&((x==0)||(x==5))) || ((T == 12 )&&((x==1)||(x==4))) || ((T == 20)&&((x==2)||(x==3)))) {
	MOVLW 6
	MOVLB 0
	CPFSEQ T,1
	BRA   m186
	MOVF  x,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m188
	MOVF  x,W,1
	XORLW 5
	BTFSC 0xFD8,Zero_,0
	BRA   m188
m186	MOVLW 12
	MOVLB 0
	CPFSEQ T,1
	BRA   m187
	DCFSNZ x,W,1
	BRA   m188
	MOVF  x,W,1
	XORLW 4
	BTFSC 0xFD8,Zero_,0
	BRA   m188
m187	MOVLW 20
	MOVLB 0
	CPFSEQ T,1
	BRA   m189
	MOVF  x,W,1
	XORLW 2
	BTFSC 0xFD8,Zero_,0
	BRA   m188
	MOVLW 3
	CPFSEQ x,1
	BRA   m189
			;						PORTC.3=1;
m188	BSF   PORTC,3,0
			;						ac=medir(0,8);
	MOVLB 0
	CLRF  canal,1
	MOVLW 8
	RCALL medir
	MOVFF resultado,ac
			;						PORTC.3=0;	
	BCF   PORTC,3,0
			;						vac[x]=ac;
	CLRF  FSR0+1,0
	MOVLW 109
	MOVLB 0
	ADDWF x,W,1
	MOVWF FSR0,0
	MOVFF ac,INDF0
			;						x++;
	INCF  x,1,1
			;						h=x;
	MOVFF x,h
			;						if ((T==20&&x==3)) {retardo_20u();retardo_20u();retardo_20u();retardo_20u();
	MOVLW 20
	CPFSEQ T,1
	BRA   m189
	MOVLW 3
	CPFSEQ x,1
	BRA   m189
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
			;							retardo_20u();retardo_20u();retardo_20u();retardo_20u();retardo_20u();}
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
	CALL  retardo_20u
			;					}		
			;					PORTC.4=0;		
m189	BCF   PORTC,4,0
			;				}
	BRA   m185
			;				estado = CALCULOS_VAC;
m190	MOVLW 1
	MOVLB 0
	MOVWF estado,1
			;				if(x<=4) estado = LECTURA_VAC;
	MOVLW 5
	CPFSLT x,1
	BRA   m183
	CLRF  estado,1
			;			break;
	BRA   m183
			;			case CALCULOS_VAC:
			;				for(p=0;p<=5;p++){
m191	MOVLB 0
	CLRF  p,1
m192	MOVLW 6
	MOVLB 0
	CPFSLT p,1
	BRA   m196
			;					ac= vac[p];
	CLRF  FSR0+1,0
	MOVLW 109
	ADDWF p,W,1
	MOVWF FSR0,0
	MOVFF INDF0,ac
			;					rf =ref[p];
	MOVLW 134
	ADDWF p,W,1
	RCALL _const1
	MOVLB 0
	MOVWF rf,1
			;					if((p==0||p==5)){
	MOVF  p,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m193
	MOVLW 5
	CPFSEQ p,1
	BRA   m194
			;						dif=ac-rf;
m193	MOVLB 0
	MOVF  rf,W,1
	SUBWF ac,W,1
	MOVWF dif,1
			;
			;						
			;					}
			;					else if((p==1|| p==4)){
	BRA   m195
m194	MOVLB 0
	DCFSNZ p,W,1
	BRA   m195
	MOVLW 4
	CPFSEQ p,1
	BRA   m195
			;
			;					}
			;					else {
			;
			;					}
			;				}
m195	MOVLB 0
	INCF  p,1,1
	BRA   m192
			;				
			;				estado = LECTURAS_VARIAS;
m196	MOVLW 4
	MOVLB 0
	MOVWF estado,1
			;			break;
	BRA   m183
			;			case LECTURA_IAC:
			;				
			;				while (estado== LECTURA_IAC){
m197	MOVLW 2
	MOVLB 0
	CPFSEQ estado,1
	BRA   m183
			;					if ((T == 6) || (T == 15 ) || (T == 20)) {	
	MOVF  T,W,1
	XORLW 6
	BTFSC 0xFD8,Zero_,0
	BRA   m198
	MOVF  T,W,1
	XORLW 15
	BTFSC 0xFD8,Zero_,0
	BRA   m198
	MOVLW 20
	CPFSEQ T,1
	BRA   m197
			;					nop();
m198	NOP  
			;					}
			;				}
	BRA   m197
			;			break;
			;			case CALCULOS_IAC:
			;				nop();
m199	NOP  
			;			break;
	BRA   m183
			;			case LECTURAS_VARIAS:
			;				char bat = medir(1,8);
m200	MOVLW 1
	MOVLB 0
	MOVWF canal,1
	MOVLW 8
	RCALL medir
	MOVFF resultado,bat
			;				if (bat>216)				vbat=BATT_FULL;
	MOVLW 216
	MOVLB 0
	CPFSGT bat,1
	BRA   m201
	MOVLW 1
	MOVWF vbat,1
			;				else if((bat>173&&bat<215))	vbat=BATT_75;
	BRA   m208
m201	MOVLW 173
	MOVLB 0
	CPFSGT bat,1
	BRA   m202
	MOVLW 215
	CPFSLT bat,1
	BRA   m202
	MOVLW 2
	MOVWF vbat,1
			;				else if((bat>133&&bat<172)) vbat=BATT_50;
	BRA   m208
m202	MOVLW 133
	MOVLB 0
	CPFSGT bat,1
	BRA   m203
	MOVLW 172
	CPFSLT bat,1
	BRA   m203
	MOVLW 3
	MOVWF vbat,1
			;				else if((bat>87 &&bat<130)) vbat=BATT_25;
	BRA   m208
m203	MOVLW 87
	MOVLB 0
	CPFSGT bat,1
	BRA   m204
	MOVLW 130
	CPFSLT bat,1
	BRA   m204
	MOVLW 4
	MOVWF vbat,1
			;				else if((bat>43 && bat<85)) vbat=BATT_10;
	BRA   m208
m204	MOVLW 43
	MOVLB 0
	CPFSGT bat,1
	BRA   m205
	MOVLW 85
	CPFSLT bat,1
	BRA   m205
	MOVLW 5
	MOVWF vbat,1
			;				else if(bat<=42){
	BRA   m208
m205	MOVLW 43
	MOVLB 0
	CPFSLT bat,1
	BRA   m208
			;					o++;
	INCF  o,1,1
			;					if(o<=5)vbat=BATT_LW;
	MOVLW 6
	CPFSLT o,1
	BRA   m206
	MOVLW 6
	MOVWF vbat,1
			;					if(o>6)vbat=BATT_CLEAR;
m206	MOVLW 6
	MOVLB 0
	CPFSGT o,1
	BRA   m207
	MOVLW 7
	MOVWF vbat,1
			;					if(o==10)o=0;
m207	MOVLW 10
	MOVLB 0
	CPFSEQ o,1
	BRA   m208
	CLRF  o,1
			;				} 			
			;				estado= ENVIO_LCD;
m208	MOVLW 5
	MOVLB 0
	MOVWF estado,1
			;			break;
	BRA   m183
			;			case ENVIO_LCD:
			;
			;				if(vuelta){
m209	MOVLB 0
	BTFSS 0x7A,vuelta,1
	BRA   m210
			;					escribir_posicion(2,9);
	MOVLW 2
	MOVWF linea,1
	MOVLW 9
	CALL  escribir_posicion
			;					enviar_cifra(estado);
	MOVLB 0
	MOVF  estado,W,1
	CALL  enviar_cifra
			;					escribir_posicion(3,9);
	MOVLW 3
	MOVLB 0
	MOVWF linea,1
	MOVLW 9
	CALL  escribir_posicion
			;					enviar_cifra(Vmax);
	MOVLB 0
	MOVF  Vmax,W,1
	CALL  enviar_cifra
			;					Enviar_uns16(3,16,bat);	
	MOVLW 3
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 16
	MOVWF columna_3,1
	MOVFF bat,dato_4
	CLRF  dato_4+1,1
	CALL  Enviar_uns16
			;					
			;				}
			;				else{
	BRA   m211
			;					escribir_posicion(4,14);
m210	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 14
	CALL  escribir_posicion
			;					enviar_cifra(x);
	MOVLB 0
	MOVF  x,W,1
	CALL  enviar_cifra
			;					escribir_posicion(4,20);
	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 20
	CALL  escribir_posicion
			;					enviar_literal(vbat);
	MOVLB 0
	MOVF  vbat,W,1
	CALL  enviar_literal
			;					Enviar_uns16(2,16,vac[0]);
	MOVLW 2
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 16
	MOVWF columna_3,1
	MOVFF vac,dato_4
	CLRF  dato_4+1,1
	CALL  Enviar_uns16
			;				//Enviar_uns16(2,10,vac[1]);
			;				//Enviar_uns16(3,1,vac[2]);
			;				//Enviar_uns16(3,10,vac[3]);
			;				//Enviar_uns16(4,1,vac[4]);
			;				//Enviar_uns16(4,10,vac[5]);
			;				}
			;				vuelta^=1;
m211	MOVLB 0
	BTG   0x7A,vuelta,1
			;				estado = LECTURA_VAC;
	CLRF  estado,1
			;				
			;			break;
	BRA   m183
			;		}
			;	}	
			;}
			;
			;//=============================================================================================================
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
			;	//ANSEL  = 0b.0000.0001;					// Solo el canal AN0 ser√° entrada anal√≥gica, el resto ser√°n entradas/salidas digitales.(PIC 816F87)
			;	//ANSELH = 0b.0000.0000;					// Solo el canal AN0 ser√° entrada anal√≥gica, el resto ser√°n entradas/salidas digitales.(PIC 816F87)
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
			;	PWM1CON =0b.0000.0000; //tiempo muerto entre P1A y P1B
	CLRF  PWM1CON,0
	RETURN
_const1
	MOVLB 0
	MOVWF ci,1
	MOVF  ci,W,1
	ADDLW 242
	MOVWF TBLPTR,0
	MOVLW 16
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
	DW    0x4E4F
	DW    0x5544
	DW    0x414C
	DW    0x4F44
	DW    0x2052
	DW    0x3035
	DW    0x5A48
	DW    0x2020
	DW    0x7962
	DW    0x4520
	DW    0x5453
	DW    0x4441
	DW    0x3A4F
	DW    0x4D56
	DW    0x5841
	DW    0x4C3A
	DW    0x4345
	DW    0x5554
	DW    0x4152
	DW    0x5F53
	DW    0x4156
	DW    0x3A43
	DW    0x6464
	DW    0x6464
	DW    0x6464

	END


; *** KEY INFO ***

; 0x000008  121 word(s)  1 % : highPriorityTimer_0
; 0x0010DA   82 word(s)  1 % : _const1
; 0x0000FA   10 word(s)  0 % : retardo_20u
; 0x00010E   19 word(s)  0 % : retardo_1m
; 0x000134   20 word(s)  0 % : retardo_50m
; 0x00015C   18 word(s)  0 % : retardo_100m
; 0x000180   20 word(s)  0 % : retardo_500m
; 0x0010AE   22 word(s)  0 % : configuraPic
; 0x0001A8   28 word(s)  0 % : envia_codigo_inicial
; 0x0001E0   59 word(s)  0 % : enviar_comando
; 0x000256   79 word(s)  0 % : enviar_literal
; 0x0002F4   80 word(s)  0 % : enviar_cifra
; 0x000394   59 word(s)  0 % : inicializar_lcd
; 0x00040A   39 word(s)  0 % : escribir_posicion
; 0x000458   37 word(s)  0 % : borrar_linea
; 0x0004A2    2 word(s)  0 % : borrar_lcd
; 0x0004A6  367 word(s)  4 % : Enviar_lcd
; 0x000784  429 word(s)  5 % : Enviar_uns16
; 0x000ADE  152 word(s)  1 % : RAM_LCD
; 0x000C0E  113 word(s)  1 % : medir
; 0x000CF0  479 word(s)  5 % : main

; RAM usage: 62 bytes (53 local), 706 bytes free
; Maximum call level: 3 (+2 for interrupt)
; Total of 2237 code words (27 %)
