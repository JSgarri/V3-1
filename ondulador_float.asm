
; CC8E Version 1.4, Copyright (c) B Knudsen Data
; C compiler for the PIC18 microcontrollers
; ************  15. May 2015  20:58  *************

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
POSTINC0    EQU   0xFEE
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
LATC        EQU   0xF8B
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
ancho_pwm   EQU   0xB9
r           EQU   0xBB
Vmax        EQU   0xBD
SENO        EQU   0xC0
T           EQU   0xC2
i           EQU   0xC3
estado      EQU   0xC4
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
PDel0       EQU   0xB4
PDel0_2     EQU   0xB4
PDel1       EQU   0xB5
PDel0_3     EQU   0xF7F
PDel1_2     EQU   0xF7F
PDel2       EQU   0xF7F
PDel0_4     EQU   0xF7F
PDel1_3     EQU   0xF7F
PDel2_2     EQU   0xF7F
PDel0_5     EQU   0xF7F
PDel1_4     EQU   0xF7F
PDel2_3     EQU   0xF7F
codigo      EQU   0x99
comando     EQU   0xB3
dato        EQU   0x99
i_2         EQU   0x9A
dato_2      EQU   0xF7F
i_3         EQU   0xF7F
i_4         EQU   0x98
linea       EQU   0x98
columna     EQU   0x99
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
C6cnt       EQU   0xF7F
C7tmp       EQU   0xF7F
C8rem       EQU   0xF7F
C9cnt       EQU   0xF7F
C10tmp      EQU   0xF7F
C11cnt      EQU   0xF7F
C12tmp      EQU   0xF7F
C13rem      EQU   0xF7F
C14cnt      EQU   0xF7F
C15tmp      EQU   0xF7F
C16cnt      EQU   0xF7F
C17tmp      EQU   0xF7F
C18rem      EQU   0xF7F
C19cnt      EQU   0xF7F
C20tmp      EQU   0xF7F
linea_4     EQU   0x9F
columna_3   EQU   0xA0
dato_4      EQU   0xA1
num_2       EQU   0xA3
u_milers_2  EQU   0xA5
cent_2      EQU   0xA7
d_milers    EQU   0xA9
dec_2       EQU   0xAB
unid_2      EQU   0xAC
resto1_2    EQU   0xAD
i_7         EQU   0xAE
xx_2        EQU   0xAF
dat_2       EQU   0xB1
C21cnt      EQU   0xB3
C22tmp      EQU   0xB4
C23rem      EQU   0xB6
C24cnt      EQU   0xB3
C25tmp      EQU   0xB4
C26cnt      EQU   0xB3
C27tmp      EQU   0xB4
C28rem      EQU   0xB6
C29cnt      EQU   0xB3
C30tmp      EQU   0xB4
C31cnt      EQU   0xB3
C32tmp      EQU   0xB4
C33rem      EQU   0xB6
C34cnt      EQU   0xB3
C35tmp      EQU   0xB4
C36cnt      EQU   0xB3
C37tmp      EQU   0xB4
C38rem      EQU   0xB5
C39cnt      EQU   0xB3
C40tmp      EQU   0xB4
i_8         EQU   0x98
canal       EQU   0x9D
bits        EQU   0x9E
resultado   EQU   0x9F
FpOverflow  EQU   1
FpUnderFlow EQU   2
FpDiv0      EQU   3
FpRounding  EQU   6
arg1f24     EQU   0x9F
arg2f24     EQU   0xA2
aarg        EQU   0xA5
sign        EQU   0xA7
tmpL        EQU   0xA8
aarg_2      EQU   0xA5
sign_2      EQU   0xA7
counter     EQU   0xA8
xtra        EQU   0xA5
temp        EQU   0xA6
expo        EQU   0xA7
sign_3      EQU   0xA8
expo_2      EQU   0xA5
xtra_2      EQU   0xA6
sign_4      EQU   0xA7
rval        EQU   0x9F
sign_6      EQU   0xA5
expo_4      EQU   0xA6
xtra_4      EQU   0xA7
rval_3      EQU   0x9F
p           EQU   0x6D
h           EQU   0x6E
x           EQU   0x6F
vac         EQU   0x70
ac          EQU   0x7C
ic          EQU   0x8A
rf          EQU   0x8C
dif         EQU   0x8E
difMediaAC  EQU   0x90
difMediaIC  EQU   0x92
vbat        EQU   0x94
o           EQU   0x95
BP          EQU   0x96
vuelta      EQU   3
flancoVAC   EQU   4
flancoIAC   EQU   5
C41cnt      EQU   0x9D
C42tmp      EQU   0x9E
C43rem      EQU   0xA0
variacion   EQU   0x98
C44cnt      EQU   0x9D
C45tmp      EQU   0x9E
C46rem      EQU   0xA0
bat         EQU   0x9B
g           EQU   0x9D
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
			; //********************************  V A R I A B L E S  *********************************//
			; //**************************************************************************************//
			;#define PORDEBAJO 0
			;#define PORENCIMA 1
			;
			;#define LECTURA_VAC  0
			;#define CALCULOS_VAC 1
			;#define LECTURA_IAC  2
			;#define CALCULOS_IAC 3
			;#define LECTURAS_VARIAS 4
			;#define ENVIO_LCD    5
			;
			;#define LEO_VAC		 0
			;#define LEO_BAT		 1
			;#define LEO_IAC		 2
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
			;uns16 ancho_pwm,r;
			;float Vmax;
			;uns16 SENO;
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
	BRA   m011
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
	BTFSS 0xB8,bUdw,1
	BRA   m004
			;			if(T>=25)  bUdw=0;      
	MOVLW 24
	CPFSGT T,1
	BRA   m003
	BCF   0xB8,bUdw,1
			;			else T++;
	BRA   m004
m003	MOVLB 0
	INCF  T,1,1
			;		} 
			;		if(!bUdw) T--;                       
m004	MOVLB 0
	BTFSS 0xB8,bUdw,1
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
			;			// Posrescaler a 2
			;			//while(!TMR2IF); // espero que acabi el T=0
			;			//	TMR2IF =0; // Postscaler a 2
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
			;			
			;			bUdw=1;  
	MOVLB 0
	BSF   0xB8,bUdw,1
			;			T=1; 
	MOVLW 1
	MOVWF T,1
			;			if(estado==ENVIO_LCD) estado = LECTURA_VAC;  // el deixo sortir
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
m008	MOVLB 0
	RLCF  C4tmp,1,1
	RLCF  C4tmp+1,1,1
	RLCF  C5rem,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m009
	MOVLW 10
	SUBWF C5rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m010
m009	MOVLW 10
	MOVLB 0
	SUBWF C5rem,1,1
	BSF   0xFD8,Carry,0
m010	MOVLB 0
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	DECFSZ C3cnt,1,1
	BRA   m008
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
m011	MOVFF sv_PRODL,PRODL
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
m012	CLRWDT
			;		        decfsz    PDel0, 1  ; 1 + (1) es el tiempo 0  ?
	DECFSZ PDel0,1,1
			;		        goto      PLoop0    ; 2 no, loop
	GOTO  m012
			;		PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m013
			;		PDelL2  clrwdt              ; 1 ciclo delay
m013	CLRWDT
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
m014	MOVLW 177
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1,1
			;	PLoop2  clrwdt              ; 1 clear watchdog
m015	CLRWDT
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m016
			;	PDelL2  
			;	        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
m016	DECFSZ PDel1,1,1
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m015
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel0_2,1,1
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m014
			;	PDelL3  goto PDelL4         ; 2 ciclos delay
	GOTO  m017
			;	PDelL4  goto PDelL5         ; 2 ciclos delay
m017	GOTO  m018
			;	PDelL5  clrwdt              ; 1 ciclo delay
m018	CLRWDT
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
m019	MOVLW 55
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_2,0
			;	PLoop1  movlw     .201      ; 1 set numero de repeticion  (A)
m020	MOVLW 201
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m021	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m021
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_2,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m020
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_3,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m019
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m022
			;	PDelL2  clrwdt              ; 1 ciclo delay
m022	CLRWDT
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
m023	MOVLW 59
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_3,0
			;	PLoop1  movlw     .235      ; 1 set numero de repeticion  (A)
m024	MOVLW 235
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2_2,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m025	CLRWDT
			;	        clrwdt              ; 1 ciclo delay
	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2_2,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m025
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_3,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m024
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_4,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m023
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
m026	MOVLW 188
			;	        movwf     PDel1     ; 1 |
	MOVWF PDel1_4,0
			;	PLoop1  movlw     .196      ; 1 set numero de repeticion  (A)
m027	MOVLW 196
			;	        movwf     PDel2     ; 1 |
	MOVWF PDel2_3,0
			;	PLoop2  clrwdt              ; 1 clear watchdog
m028	CLRWDT
			;	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	DECFSZ PDel2_3,1,0
			;	        goto      PLoop2    ; 2 no, loop
	GOTO  m028
			;	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	DECFSZ PDel1_4,1,0
			;	        goto      PLoop1    ; 2 no, loop
	GOTO  m027
			;	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	DECFSZ PDel0_5,1,0
			;	        goto      PLoop0    ; 2 no, loop
	GOTO  m026
			;	PDelL1  goto PDelL2         ; 2 ciclos delay
	GOTO  m029
			;	PDelL2  clrwdt              ; 1 ciclo delay
m029	CLRWDT
			;	        return              ; 2+2 Fin.
	RETURN
			;	;-------------------------------------------------------------
			;	#endasm

  ; FILE LCD_4bit.h
			;
			;/*
			;	ESTA LIBRERIA NO SIRVE PARA LA PLACA DE PROTOTIPOS ES SOLO PARA LA PLACA DEL ONDULADOR!!!!!
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
	MOVWF i_2,1
m030	MOVLW 7
	MOVLB 0
	CPFSLT i_2,1
	BRA   m031
	RCALL retardo_20u
	MOVLB 0
	INCF  i_2,1,1
	BRA   m030
			;	dato = swap (dato);
m031	MOVLB 0
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
	MOVWF i_2,1
m032	MOVLW 7
	MOVLB 0
	CPFSLT i_2,1
	BRA   m033
	RCALL retardo_20u
	MOVLB 0
	INCF  i_2,1,1
	BRA   m032
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m033	MOVLW 12
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
	MOVWF i_3,0
m034	MOVLW 7
	CPFSLT i_3,0
	BRA   m035
	RCALL retardo_20u
	INCF  i_3,1,0
	BRA   m034
			;	dato = swap (dato);
m035	SWAPF dato_2,1,0
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
	MOVWF i_3,0
m036	MOVLW 7
	CPFSLT i_3,0
	BRA   m037
	RCALL retardo_20u
	INCF  i_3,1,0
	BRA   m036
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
m037	MOVLW 12
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
m038	MOVLW 21
	MOVLB 0
	CPFSLT i_4,1
	BRA   m039
	RCALL retardo_1m
	MOVLB 0
	INCF  i_4,1,1
	BRA   m038
			;	envia_codigo_inicial (0b.00.11.0000);
m039	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 6; i++) retardo_1m ();
	MOVLW 1
	MOVLB 0
	MOVWF i_4,1
m040	MOVLW 6
	MOVLB 0
	CPFSLT i_4,1
	BRA   m041
	RCALL retardo_1m
	MOVLB 0
	INCF  i_4,1,1
	BRA   m040
			;    envia_codigo_inicial (0b.00.11.0000);	
m041	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i< 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_4,1
m042	MOVLW 11
	MOVLB 0
	CPFSLT i_4,1
	BRA   m043
	RCALL retardo_20u
	MOVLB 0
	INCF  i_4,1,1
	BRA   m042
			;    envia_codigo_inicial (0b.00.11.0000);
m043	MOVLW 48
	RCALL envia_codigo_inicial
			;	for (i = 1; i < 11; i++) retardo_20u ();
	MOVLW 1
	MOVLB 0
	MOVWF i_4,1
m044	MOVLW 11
	MOVLB 0
	CPFSLT i_4,1
	BRA   m045
	RCALL retardo_20u
	MOVLB 0
	INCF  i_4,1,1
	BRA   m044
			;	envia_codigo_inicial (0b.00.10.0000);			// A 4 bits.
m045	MOVLW 32
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
	BRA   m046
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m047
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m048
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m049
	BRA   m050
			;		{
			;			case 1:
			;				enviar_comando (127 + columna); 	// Inicio primera linea.
m046	MOVLW 127
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;
	BRA   m050
			;						
			;			case 2:
			;				enviar_comando (191 + columna); 	// Inicio segunda lÌnea.
m047	MOVLW 191
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m050
			;
			;			case 3:
			;				enviar_comando (147 + columna);		// Inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m048	MOVLW 147
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m050
			;			
			;			case 4:
			;				enviar_comando (211 + columna); 	// Inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m049	MOVLW 211
	MOVLB 0
	ADDWF columna,W,1
	RCALL enviar_comando
			;			break;
	BRA   m050
			;			enviar_comando (0b.0000.1100);			// Pantalla encendida, sin cursor.
	MOVLW 12
	BRA   enviar_comando
			;		}
			;	
			;	
			;}
m050	RETURN
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
	BRA   m051
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m052
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m053
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m054
	BRA   m055
			;		{
			;			case 1:
			;				enviar_comando (128); 				// Inicio primera linea.
m051	MOVLW 128
	RCALL enviar_comando
			;			break;
	BRA   m055
			;						
			;			case 2:
			;				enviar_comando (192); 				// Inicio segunda lÌnea.
m052	MOVLW 192
	RCALL enviar_comando
			;			break;			
	BRA   m055
			;
			;			case 3:
			;				enviar_comando (148); 				// Inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m053	MOVLW 148
	RCALL enviar_comando
			;			break;				
	BRA   m055
			;			
			;			case 4:
			;				enviar_comando (212); 				// Inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m054	MOVLW 212
	RCALL enviar_comando
			;			break;
			;		}
			;	for (i = 1; i < 21; i++) enviar_literal (' '); 	// Envio 20 car·cteres en blanco y posiciono en la siguiente lÌnea.
m055	MOVLW 1
	MOVWF i_5,0
m056	MOVLW 21
	CPFSLT i_5,0
	BRA   m057
	MOVLW 32
	RCALL enviar_literal
	INCF  i_5,1,0
	BRA   m056
			;	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
m057	MOVLW 12
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
	BRA   m058
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m059
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m060
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m061
	BRA   m062
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m058	MOVLW 127
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m062
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m059	MOVLW 191
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;			
	BRA   m062
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m060	MOVLW 147
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;				
	BRA   m062
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m061	MOVLW 211
	ADDWF columna_2,W,0
	RCALL enviar_comando
			;			break;	
	BRA   m062
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;		if (!xi)
m062	BTFSC 0xF7F,xi,0
	BRA   m063
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
	BRA   m069
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m099
			;		    else goto sa;
			;		}
			;		else
			;		{
			;			xy = 1;
m063	MOVLW 1
	MOVWF xy,0
			;			if (dato > 9999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
	MOVLW 16
	SUBWF dato_3,W,0
	MOVLW 39
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m064
	MOVLW 62
	RCALL enviar_literal
	MOVLW 69
	RCALL enviar_literal
	MOVLW 114
	RCALL enviar_literal
	BRA   m099
			;		}
			;			// Separo per 4 xifres
			;			num = dato; // per 4 xifres
m064	MOVFF dato_3,num
	MOVFF dato_3+1,num+1
			;			u_milers = num / 1000;
	MOVF  num,W,0
	MOVWF C7tmp,0
	MOVF  num+1,W,0
	MOVWF C7tmp+1,0
	CLRF  C8rem,0
	CLRF  C8rem+1,0
	MOVLW 16
	MOVWF C6cnt,0
m065	RLCF  C7tmp,1,0
	RLCF  C7tmp+1,1,0
	RLCF  C8rem,1,0
	RLCF  C8rem+1,1,0
	MOVLW 232
	SUBWF C8rem,W,0
	MOVLW 3
	SUBWFB C8rem+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m066
	MOVLW 232
	SUBWF C8rem,1,0
	MOVLW 3
	SUBWFB C8rem+1,1,0
	BSF   0xFD8,Carry,0
m066	RLCF  u_milers,1,0
	RLCF  u_milers+1,1,0
	DECFSZ C6cnt,1,0
	BRA   m065
			;			dato = num % 1000;
	MOVF  num,W,0
	MOVWF C10tmp,0
	MOVF  num+1,W,0
	MOVWF C10tmp+1,0
	CLRF  dato_3,0
	CLRF  dato_3+1,0
	MOVLW 16
	MOVWF C9cnt,0
m067	RLCF  C10tmp,1,0
	RLCF  C10tmp+1,1,0
	RLCF  dato_3,1,0
	RLCF  dato_3+1,1,0
	MOVLW 232
	SUBWF dato_3,W,0
	MOVLW 3
	SUBWFB dato_3+1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m068
	MOVLW 232
	SUBWF dato_3,1,0
	MOVLW 3
	SUBWFB dato_3+1,1,0
m068	DECFSZ C9cnt,1,0
	BRA   m067
			;			// Separo per 3 xifres
			;sa:			cent   = dato   / 100;   	
m069	MOVF  dato_3,W,0
	MOVWF C12tmp,0
	MOVF  dato_3+1,W,0
	MOVWF C12tmp+1,0
	CLRF  C13rem,0
	MOVLW 16
	MOVWF C11cnt,0
m070	RLCF  C12tmp,1,0
	RLCF  C12tmp+1,1,0
	RLCF  C13rem,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m071
	MOVLW 100
	SUBWF C13rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m072
m071	MOVLW 100
	SUBWF C13rem,1,0
	BSF   0xFD8,Carry,0
m072	RLCF  cent,1,0
	RLCF  cent+1,1,0
	DECFSZ C11cnt,1,0
	BRA   m070
			;			resto1 = dato   % 100;
	MOVF  dato_3,W,0
	MOVWF C15tmp,0
	MOVF  dato_3+1,W,0
	MOVWF C15tmp+1,0
	CLRF  resto1,0
	MOVLW 16
	MOVWF C14cnt,0
m073	RLCF  C15tmp,1,0
	RLCF  C15tmp+1,1,0
	RLCF  resto1,1,0
	BTFSC 0xFD8,Carry,0
	BRA   m074
	MOVLW 100
	SUBWF resto1,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m075
m074	MOVLW 100
	SUBWF resto1,1,0
m075	DECFSZ C14cnt,1,0
	BRA   m073
			;			dec    = resto1 /  10;  
	MOVF  resto1,W,0
	MOVWF C17tmp,0
	CLRF  C18rem,0
	MOVLW 8
	MOVWF C16cnt,0
m076	RLCF  C17tmp,1,0
	RLCF  C18rem,1,0
	MOVLW 10
	SUBWF C18rem,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m077
	MOVLW 10
	SUBWF C18rem,1,0
	BSF   0xFD8,Carry,0
m077	RLCF  dec,1,0
	DECFSZ C16cnt,1,0
	BRA   m076
			;			unid   = resto1 %  10; 		
	MOVF  resto1,W,0
	MOVWF C20tmp,0
	CLRF  unid,0
	MOVLW 8
	MOVWF C19cnt,0
m078	RLCF  C20tmp,1,0
	RLCF  unid,1,0
	MOVLW 10
	SUBWF unid,W,0
	BTFSS 0xFD8,Carry,0
	BRA   m079
	MOVLW 10
	SUBWF unid,1,0
m079	DECFSZ C19cnt,1,0
	BRA   m078
			;		// Envio
			;		for (xx = xy; xx < 7; xx++)
	MOVFF xy,xx
m080	MOVLW 7
	CPFSLT xx,0
	BRA   m099
			;		{
			;			clrwdt () ;
	CLRWDT
			;			if (xx == 1) 
	DECFSZ xx,W,0
	BRA   m082
			;			{
			;				if ((u_milers==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m081
	BTFSC 0xF7F,bd,0
	BRA   m081
	MOVLW 32
	MOVWF dat,0
			;				else dat = u_milers;
	BRA   m082
m081	MOVFF u_milers,dat
			;			}
			;			if (xx == 2) 
m082	MOVLW 2
	CPFSEQ xx,0
	BRA   m084
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(!bd)) dat = ' '; // bd =0 --> espai
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m083
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m083
	BTFSC 0xF7F,bd,0
	BRA   m083
	MOVLW 32
	MOVWF dat,0
			;				else dat = cent;
	BRA   m084
m083	MOVFF cent,dat
			;			}
			;			if (xx == 3) 
m084	MOVLW 3
	CPFSEQ xx,0
	BRA   m087
			;			{
			;				if(ndp) { if (dp==0) dat = '.';
	BTFSS 0xF7F,ndp,0
	BRA   m086
	BTFSC 0xF7F,dp,0
	BRA   m085
	MOVLW 46
	MOVWF dat,0
			;				          else xx++;  
	BRA   m087
m085	INCF  xx,1,0
			;				        }
			;				else xx++;		
	BRA   m087
m086	INCF  xx,1,0
			;			}
			;			if (xx == 4)
m087	MOVLW 4
	CPFSEQ xx,0
	BRA   m089
			;			{
			;				if ((u_milers==0)&&(cent==0)&&(dec==0)&&(!bd)) dat = ' ';
	MOVF  u_milers,W,0
	IORWF u_milers+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m088
	MOVF  cent,W,0
	IORWF cent+1,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m088
	MOVF  dec,W,0
	BTFSS 0xFD8,Zero_,0
	BRA   m088
	BTFSC 0xF7F,bd,0
	BRA   m088
	MOVLW 32
	MOVWF dat,0
			;				else dat = dec ;
	BRA   m089
m088	MOVFF dec,dat
			;			}
			;			if (xx == 5)
m089	MOVLW 5
	CPFSEQ xx,0
	BRA   m092
			;			{
			;				if(!ndp) { if (dp==0) dat = '.';	
	BTFSC 0xF7F,ndp,0
	BRA   m091
	BTFSC 0xF7F,dp,0
	BRA   m090
	MOVLW 46
	MOVWF dat,0
			;				           else xx++;
	BRA   m092
m090	INCF  xx,1,0
			;						 }
			;				else xx++;		 
	BRA   m092
m091	INCF  xx,1,0
			;			}
			;			if (xx == 6) dat = unid;
m092	MOVLW 6
	CPFSEQ xx,0
	BRA   m093
	MOVFF unid,dat
			;						
			;			if ((dat!='.')&&(dat!=' ')) dat = dat + 0x30;
m093	MOVF  dat,W,0
	XORLW 46
	BTFSC 0xFD8,Zero_,0
	BRA   m094
	MOVF  dat,W,0
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m094
	MOVLW 48
	ADDWF dat,1,0
			;
			;			PORTB.3 = dat.4;nop();
m094	BTFSS dat,4,0
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
	MOVWF i_6,0
m095	MOVLW 7
	CPFSLT i_6,0
	BRA   m096
	RCALL retardo_20u
	INCF  i_6,1,0
	BRA   m095
			;			dat = swap (dat);
m096	SWAPF dat,1,0
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
	MOVWF i_6,0
m097	MOVLW 7
	CPFSLT i_6,0
	BRA   m098
	RCALL retardo_20u
	INCF  i_6,1,0
	BRA   m097
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m098	MOVLW 12
	RCALL enviar_comando
			;		}
	INCF  xx,1,0
	BRA   m080
			;so:	//DESCON_LCD ();
			;	return;
m099	RETURN
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
	BRA   m100
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m101
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m102
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m103
	BRA   m104
			;		{
			;			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
m100	MOVLW 127
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m104
			;			case 2:	enviar_comando (191 + columna); 	// inicio segunda lÌnea.
m101	MOVLW 191
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;			
	BRA   m104
			;			case 3:	enviar_comando (147 + columna); 	// inicio tercera lÌnea (cursor en posiciÛn 20 de la primera lÌnea).
m102	MOVLW 147
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;				
	BRA   m104
			;			case 4:	enviar_comando (211 + columna); 	// inicio cuarta lÌnea (cursor en posiciÛn 20 de la segunda lÌnea).
m103	MOVLW 211
	MOVLB 0
	ADDWF columna_3,W,1
	RCALL enviar_comando
			;			break;	
	BRA   m104
			;			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
	MOVLW 12
	RCALL enviar_comando
			;		}				
			;	
			;			
			;			num = dato; 
m104	MOVFF dato_4,num_2
	MOVFF dato_4+1,num_2+1
			;			d_milers =num/10000;
	MOVLB 0
	MOVF  num_2,W,1
	MOVWF C22tmp,1
	MOVF  num_2+1,W,1
	MOVWF C22tmp+1,1
	CLRF  C23rem,1
	CLRF  C23rem+1,1
	MOVLW 16
	MOVWF C21cnt,1
m105	MOVLB 0
	RLCF  C22tmp,1,1
	RLCF  C22tmp+1,1,1
	RLCF  C23rem,1,1
	RLCF  C23rem+1,1,1
	MOVLW 16
	SUBWF C23rem,W,1
	MOVLW 39
	SUBWFB C23rem+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m106
	MOVLW 16
	MOVLB 0
	SUBWF C23rem,1,1
	MOVLW 39
	SUBWFB C23rem+1,1,1
	BSF   0xFD8,Carry,0
m106	MOVLB 0
	RLCF  d_milers,1,1
	RLCF  d_milers+1,1,1
	DECFSZ C21cnt,1,1
	BRA   m105
			;			num= num%10000;
	MOVF  num_2,W,1
	MOVWF C25tmp,1
	MOVF  num_2+1,W,1
	MOVWF C25tmp+1,1
	CLRF  num_2,1
	CLRF  num_2+1,1
	MOVLW 16
	MOVWF C24cnt,1
m107	MOVLB 0
	RLCF  C25tmp,1,1
	RLCF  C25tmp+1,1,1
	RLCF  num_2,1,1
	RLCF  num_2+1,1,1
	MOVLW 16
	SUBWF num_2,W,1
	MOVLW 39
	SUBWFB num_2+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m108
	MOVLW 16
	MOVLB 0
	SUBWF num_2,1,1
	MOVLW 39
	SUBWFB num_2+1,1,1
m108	MOVLB 0
	DECFSZ C24cnt,1,1
	BRA   m107
			;			u_milers = num / 1000;
	MOVF  num_2,W,1
	MOVWF C27tmp,1
	MOVF  num_2+1,W,1
	MOVWF C27tmp+1,1
	CLRF  C28rem,1
	CLRF  C28rem+1,1
	MOVLW 16
	MOVWF C26cnt,1
m109	MOVLB 0
	RLCF  C27tmp,1,1
	RLCF  C27tmp+1,1,1
	RLCF  C28rem,1,1
	RLCF  C28rem+1,1,1
	MOVLW 232
	SUBWF C28rem,W,1
	MOVLW 3
	SUBWFB C28rem+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m110
	MOVLW 232
	MOVLB 0
	SUBWF C28rem,1,1
	MOVLW 3
	SUBWFB C28rem+1,1,1
	BSF   0xFD8,Carry,0
m110	MOVLB 0
	RLCF  u_milers_2,1,1
	RLCF  u_milers_2+1,1,1
	DECFSZ C26cnt,1,1
	BRA   m109
			;			dato = num % 1000;
	MOVF  num_2,W,1
	MOVWF C30tmp,1
	MOVF  num_2+1,W,1
	MOVWF C30tmp+1,1
	CLRF  dato_4,1
	CLRF  dato_4+1,1
	MOVLW 16
	MOVWF C29cnt,1
m111	MOVLB 0
	RLCF  C30tmp,1,1
	RLCF  C30tmp+1,1,1
	RLCF  dato_4,1,1
	RLCF  dato_4+1,1,1
	MOVLW 232
	SUBWF dato_4,W,1
	MOVLW 3
	SUBWFB dato_4+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m112
	MOVLW 232
	MOVLB 0
	SUBWF dato_4,1,1
	MOVLW 3
	SUBWFB dato_4+1,1,1
m112	MOVLB 0
	DECFSZ C29cnt,1,1
	BRA   m111
			;
			;			cent   = dato   / 100;   	
	MOVF  dato_4,W,1
	MOVWF C32tmp,1
	MOVF  dato_4+1,W,1
	MOVWF C32tmp+1,1
	CLRF  C33rem,1
	MOVLW 16
	MOVWF C31cnt,1
m113	MOVLB 0
	RLCF  C32tmp,1,1
	RLCF  C32tmp+1,1,1
	RLCF  C33rem,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m114
	MOVLW 100
	SUBWF C33rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m115
m114	MOVLW 100
	MOVLB 0
	SUBWF C33rem,1,1
	BSF   0xFD8,Carry,0
m115	MOVLB 0
	RLCF  cent_2,1,1
	RLCF  cent_2+1,1,1
	DECFSZ C31cnt,1,1
	BRA   m113
			;			resto1 = dato   % 100;
	MOVF  dato_4,W,1
	MOVWF C35tmp,1
	MOVF  dato_4+1,W,1
	MOVWF C35tmp+1,1
	CLRF  resto1_2,1
	MOVLW 16
	MOVWF C34cnt,1
m116	MOVLB 0
	RLCF  C35tmp,1,1
	RLCF  C35tmp+1,1,1
	RLCF  resto1_2,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m117
	MOVLW 100
	SUBWF resto1_2,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m118
m117	MOVLW 100
	MOVLB 0
	SUBWF resto1_2,1,1
m118	MOVLB 0
	DECFSZ C34cnt,1,1
	BRA   m116
			;			dec    = resto1 /  10;  
	MOVF  resto1_2,W,1
	MOVWF C37tmp,1
	CLRF  C38rem,1
	MOVLW 8
	MOVWF C36cnt,1
m119	MOVLB 0
	RLCF  C37tmp,1,1
	RLCF  C38rem,1,1
	MOVLW 10
	SUBWF C38rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m120
	MOVLW 10
	MOVLB 0
	SUBWF C38rem,1,1
	BSF   0xFD8,Carry,0
m120	MOVLB 0
	RLCF  dec_2,1,1
	DECFSZ C36cnt,1,1
	BRA   m119
			;			unid   = resto1 %  10; 		
	MOVF  resto1_2,W,1
	MOVWF C40tmp,1
	CLRF  unid_2,1
	MOVLW 8
	MOVWF C39cnt,1
m121	MOVLB 0
	RLCF  C40tmp,1,1
	RLCF  unid_2,1,1
	MOVLW 10
	SUBWF unid_2,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m122
	MOVLW 10
	MOVLB 0
	SUBWF unid_2,1,1
m122	MOVLB 0
	DECFSZ C39cnt,1,1
	BRA   m121
			;		// Envio
			;		for (xx=0 ; xx < 5; xx++)
	CLRF  xx_2,1
m123	MOVLW 5
	MOVLB 0
	CPFSLT xx_2,1
	BRA   m139
			;		{
			;			switch(xx){
	MOVF  xx_2,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m124
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m126
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m128
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m130
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m132
	BRA   m133
			;				case 0:
			;					if (d_milers==0) dat = ' '; 
m124	MOVLB 0
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m125
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = d_milers;
	BRA   m133
m125	MOVFF d_milers,dat_2
			;					break;
	BRA   m133
			;				case 1:
			;					if ((u_milers==0)&&(d_milers==0)) dat = ' ';
m126	MOVLB 0
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m127
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m127
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = u_milers;
	BRA   m133
m127	MOVFF u_milers_2,dat_2
			;					break;
	BRA   m133
			;				case 2:
			;					if ((d_milers==0)&&(u_milers==0)&&(cent==0)) dat = ' '; 
m128	MOVLB 0
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m129
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m129
	MOVF  cent_2,W,1
	IORWF cent_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m129
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = cent;
	BRA   m133
m129	MOVFF cent_2,dat_2
			;					break;
	BRA   m133
			;				case 3:
			;					if ((u_milers==0)&&(cent==0)&&(dec==0)&&(d_milers==0)) dat = ' ';
m130	MOVLB 0
	MOVF  u_milers_2,W,1
	IORWF u_milers_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m131
	MOVF  cent_2,W,1
	IORWF cent_2+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m131
	MOVF  dec_2,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m131
	MOVF  d_milers,W,1
	IORWF d_milers+1,W,1
	BTFSS 0xFD8,Zero_,0
	BRA   m131
	MOVLW 32
	MOVWF dat_2,1
			;					else dat = dec ;
	BRA   m133
m131	MOVFF dec_2,dat_2
			;					break;
	BRA   m133
			;				case 4:
			;					dat = unid;
m132	MOVFF unid_2,dat_2
			;					break;
			;			}		
			;			if (dat!=' ') dat = dat + 0x30;
m133	MOVLB 0
	MOVF  dat_2,W,1
	XORLW 32
	BTFSC 0xFD8,Zero_,0
	BRA   m134
	MOVLW 48
	ADDWF dat_2,1,1
			;			PORTB.3 = dat.4;nop();
m134	MOVLB 0
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
	MOVWF i_7,1
m135	MOVLW 7
	MOVLB 0
	CPFSLT i_7,1
	BRA   m136
	CALL  retardo_20u
	MOVLB 0
	INCF  i_7,1,1
	BRA   m135
			;			dat = swap (dat);
m136	MOVLB 0
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
	MOVWF i_7,1
m137	MOVLW 7
	MOVLB 0
	CPFSLT i_7,1
	BRA   m138
	CALL  retardo_20u
	MOVLB 0
	INCF  i_7,1,1
	BRA   m137
			;			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
m138	MOVLW 12
	CALL  enviar_comando
			;		}
	MOVLB 0
	INCF  xx_2,1,1
	BRA   m123
			;
			;	return;
m139	RETURN
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
m140	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m141
	MOVLW 26
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m140
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_2[i]); retardo_20u (); retardo_20u ();}
m141	MOVLB 0
	CLRF  i_8,1
m142	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m143
	MOVLW 34
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m142
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_3[i]); retardo_20u (); retardo_20u ();}
m143	MOVLB 0
	CLRF  i_8,1
m144	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m145
	MOVLW 42
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m144
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_4[i]); retardo_20u (); retardo_20u ();}
m145	MOVLB 0
	CLRF  i_8,1
m146	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m147
	MOVLW 50
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m146
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_5[i]); retardo_20u (); retardo_20u ();}
m147	MOVLB 0
	CLRF  i_8,1
m148	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m149
	MOVLW 58
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m148
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_6[i]); retardo_20u (); retardo_20u ();}
m149	MOVLB 0
	CLRF  i_8,1
m150	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m151
	MOVLW 66
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m150
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_7[i]); retardo_20u (); retardo_20u ();}
m151	MOVLB 0
	CLRF  i_8,1
m152	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m153
	MOVLW 74
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m152
			;	for(i=0;i<=7;i++) { enviar_literal (Carac_8[i]); retardo_20u (); retardo_20u ();}	
m153	MOVLB 0
	CLRF  i_8,1
m154	MOVLW 8
	MOVLB 0
	CPFSLT i_8,1
	BRA   m155
	MOVLW 82
	ADDWF i_8,W,1
	CALL  _const1
	CALL  enviar_literal
	CALL  retardo_20u
	CALL  retardo_20u
	MOVLB 0
	INCF  i_8,1,1
	BRA   m154
			;	enviar_comando (0b.0000.0010);
m155	MOVLW 2
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
	BRA   m156
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m157
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m158
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m159
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m160
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m161
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m162
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m163
	XORLW 15
	BTFSC 0xFD8,Zero_,0
	BRA   m164
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m165
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m166
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m167
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m168
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m169
	BRA   m170
			;	{
			;		//del 0 al 4, est√°n en el PORTA
			;		case 0: 	ADCON0 = 0b.00.0000.01;		break;
m156	MOVLW 1
	MOVWF ADCON0,0
	BRA   m171
			;		case 1:		ADCON0 = 0b.00.0001.01;		break;
m157	MOVLW 5
	MOVWF ADCON0,0
	BRA   m171
			;		case 2:		ADCON0 = 0b.00.0010.01;		break;
m158	MOVLW 9
	MOVWF ADCON0,0
	BRA   m171
			;		case 3:		ADCON0 = 0b.00.0011.01;		break;
m159	MOVLW 13
	MOVWF ADCON0,0
	BRA   m171
			;		case 4:		ADCON0 = 0b.00.0100.01;		break;
m160	MOVLW 17
	MOVWF ADCON0,0
	BRA   m171
			;		case 5:		ADCON0 = 0b.00.0101.01;		break;
m161	MOVLW 21
	MOVWF ADCON0,0
	BRA   m171
			;		case 6:		ADCON0 = 0b.00.0110.01;		break;
m162	MOVLW 25
	MOVWF ADCON0,0
	BRA   m171
			;		case 7:		ADCON0 = 0b.00.0111.01;		break;
m163	MOVLW 29
	MOVWF ADCON0,0
	BRA   m171
			;		case 8:		ADCON0 = 0b.00.1000.01;		break;
m164	MOVLW 33
	MOVWF ADCON0,0
	BRA   m171
			;		case 9:		ADCON0 = 0b.00.1001.01;		break;
m165	MOVLW 37
	MOVWF ADCON0,0
	BRA   m171
			;		case 10:	ADCON0 = 0b.00.1010.01;		break;
m166	MOVLW 41
	MOVWF ADCON0,0
	BRA   m171
			;		case 11:	ADCON0 = 0b.00.1011.01;		break;
m167	MOVLW 45
	MOVWF ADCON0,0
	BRA   m171
			;		case 12:	ADCON0 = 0b.00.1100.01;		break;
m168	MOVLW 49
	MOVWF ADCON0,0
	BRA   m171
			;		case 13:	ADCON0 = 0b.00.1101.01;		break;
m169	MOVLW 53
	MOVWF ADCON0,0
	BRA   m171
			;		default:	ADCON0 = 0b.00.0000.01;
m170	MOVLW 1
	MOVWF ADCON0,0
			;	}
			;	if (bits == 8){ADFM=0;GO = 1;  while(GO);resultado = ADRESH;}
m171	MOVLW 8
	MOVLB 0
	CPFSEQ bits,1
	BRA   m173
	BCF   0xFC0,ADFM,0
	BSF   0xFC2,GO,0
m172	BTFSC 0xFC2,GO,0
	BRA   m172
	MOVFF ADRESH,resultado
	MOVLB 0
	CLRF  resultado+1,1
			;	else 		  {ADFM=1;GO = 1;  while(GO);resultado.low8 = ADRESL;resultado.high8 = ADRESH;}
	BRA   m175
m173	BSF   0xFC0,ADFM,0
	BSF   0xFC2,GO,0
m174	BTFSC 0xFC2,GO,0
	BRA   m174
	MOVFF ADRESL,resultado
	MOVFF ADRESH,resultado+1
			;   	
			;   	return resultado;
m175	MOVLB 0
	MOVF  resultado,W,1
	RETURN

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
	BRA   m180
			;   #endif
			;
			;    arg1f24.high8 += W /* arg2f24.high8 */;
	MOVLB 0
	ADDWF arg1f24+2,1,1
			;    W = FpBIAS-1;
	MOVLW 126
			;    if (Carry)  {
	BTFSS 0xFD8,Carry,0
	BRA   m176
			;        arg1f24.high8 -= W;
	SUBWF arg1f24+2,1,1
			;        if (Carry)
	BTFSS 0xFD8,Carry,0
	BRA   m177
			;            goto OVERFLOW;
	BRA   m181
			;    }
			;    else  {
			;        arg1f24.high8 -= W;
m176	MOVLB 0
	SUBWF arg1f24+2,1,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            goto UNDERFLOW;
	BRA   m179
			;    }
			;    aarg.low8 = arg1f24.low8;
m177	MOVFF arg1f24,aarg
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
	BRA   m178
			;        tmpL = rl( tmpL);
	RLCF  tmpL,1,1
			;        arg1f24.low16 = rl( arg1f24.low16);
	RLCF  arg1f24,1,1
	RLCF  arg1f24+1,1,1
			;        if (arg1f24.high8 == 0)
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;            goto UNDERFLOW;
	BRA   m179
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
m178	MOVLB 0
	BTFSS 0xC5,FpRounding,1
	BRA   m183
	BTFSS 0xFD8,Carry,0
	BRA   m183
			;        arg1f24.low8 += 1;
	INCFSZ arg1f24,1,1
			;        if (!arg1f24.low8)  {
	BRA   m183
			;            arg1f24.mid8 += 1;
	INCFSZ arg1f24+1,1,1
			;            if (!arg1f24.mid8)  {
	BRA   m183
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
	BRA   m183
			;                    goto OVERFLOW;
	BRA   m181
			;            }
			;        }
			;    }
			;   #endif
			;    goto SET_SIGN;
			;
			;  UNDERFLOW:
			;    FpUnderFlow = 1;
m179	MOVLB 0
	BSF   0xC5,FpUnderFlow,1
			;  RES0:
			;    arg1f24.high8 = 0;
m180	MOVLB 0
	CLRF  arg1f24+2,1
			;    goto MANTISSA;
	BRA   m182
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
m181	MOVLB 0
	BSF   0xC5,FpOverflow,1
			;    arg1f24.high8 = 0xFF;
	SETF  arg1f24+2,1
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
m182	MOVLB 0
	CLRF  arg1f24,1
	MOVLW 128
	MOVWF arg1f24+1,1
			;
			;  SET_SIGN:
			;    if (!(sign & 0x80))
m183	MOVLB 0
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
	MOVLB 0
	MOVF  arg1f24+1,W,1
			;    aarg.high8 = W;
	MOVWF aarg_2+1,1
			;
			;    // save sign
			;    char sign = arg2f24.mid8 ^ W;  // before first overflow test
	XORWF arg2f24+1,W,1
	MOVWF sign_2,1
			;
			;   #if __CoreSet__ / 100 == 17
			;    if (!arg2f24.high8)
			;        goto Div0;
			;   #else
			;    W = arg2f24.high8;
	MOVF  arg2f24+2,W,1
			;    if (Zero_)
	BTFSC 0xFD8,Zero_,0
			;        goto Div0;
	BRA   m194
			;   #endif
			;    if (!arg1f24.high8)
	MOVLB 0
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;        goto RES0;
	BRA   m196
			;
			;    arg1f24.high8 -= arg2f24.high8;
	MOVLB 0
	MOVF  arg2f24+2,W,1
	SUBWF arg1f24+2,1,1
			;    W = FpBIAS;
	MOVLW 127
			;    if (!Carry)  {
	BTFSC 0xFD8,Carry,0
	BRA   m184
			;        arg1f24.high8 += W;
	ADDWF arg1f24+2,1,1
			;        if (!Carry)
	BTFSC 0xFD8,Carry,0
	BRA   m185
			;            goto UNDERFLOW;
	BRA   m195
			;    }
			;    else  {
			;        arg1f24.high8 += W;
m184	MOVLB 0
	ADDWF arg1f24+2,1,1
			;        if (Carry)
	BTFSC 0xFD8,Carry,0
			;            goto OVERFLOW;
	BRA   m197
			;    }
			;
			;    aarg.low8 = arg1f24.low8;
m185	MOVFF arg1f24,aarg_2
			;    aarg.15 = 1;
	MOVLB 0
	BSF   aarg_2+1,7,1
			;    arg2f24.15 = 1;
	BSF   arg2f24+1,7,1
			;
			;    // division: shift & add
			;    char counter = 16;
	MOVLW 16
	MOVWF counter,1
			;    arg1f24.low16 = 0;  // speedup
	CLRF  arg1f24,1
	CLRF  arg1f24+1,1
			;
			;#if defined FP_OPTIM_SPEED || !defined FP_OPTIM_SIZE  // SPEED
			;
			;    goto START_ML;
	BRA   m188
			;
			;  TEST_ZERO_L:
			;    W = aarg.low8 - arg2f24.low8;
m186	MOVLB 0
	MOVF  arg2f24,W,1
	SUBWF aarg_2,W,1
			;    if (!Carry)
	BTFSS 0xFD8,Carry,0
			;        goto SHIFT_IN_CARRY;
	BRA   m191
			;    aarg.low8 = W;
	MOVLB 0
	MOVWF aarg_2,1
			;    aarg.high8 = 0;
	CLRF  aarg_2+1,1
			;    goto SET_AND_SHIFT_IN_CARRY;
	BRA   m190
			;
			;// MAIN LOOP
			;    do  {
			;      LOOP_ML:
			;        if (!Carry)  {
m187	BTFSC 0xFD8,Carry,0
	BRA   m189
			;           START_ML:
			;            W = aarg.high8 - arg2f24.mid8;
m188	MOVLB 0
	MOVF  arg2f24+1,W,1
	SUBWF aarg_2+1,W,1
			;            if (Zero_)
	BTFSC 0xFD8,Zero_,0
			;                goto TEST_ZERO_L;
	BRA   m186
			;            if (!Carry)
	BTFSS 0xFD8,Carry,0
			;                goto SHIFT_IN_CARRY;
	BRA   m191
			;        }
			;        aarg.low8 -= arg2f24.low8;
m189	MOVLB 0
	MOVF  arg2f24,W,1
	SUBWF aarg_2,1,1
			;        genSub( aarg.high8, arg2f24.mid8);
	MOVF  arg2f24+1,W,1
	SUBWFB aarg_2+1,1,1
			;      SET_AND_SHIFT_IN_CARRY:
			;        Carry = 1;
m190	BSF   0xFD8,Carry,0
			;      SHIFT_IN_CARRY:
			;        arg1f24.low16 = rl( arg1f24.low16);
m191	MOVLB 0
	RLCF  arg1f24,1,1
	RLCF  arg1f24+1,1,1
			;        // Carry = 0;  // ok, speedup
			;        aarg = rl( aarg);
	RLCF  aarg_2,1,1
	RLCF  aarg_2+1,1,1
			;        counter = decsz(counter);
	DECFSZ counter,1,1
			;    } while (1);
	BRA   m187
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
	BTFSC arg1f24+1,7,1
	BRA   m192
			;        if (!arg1f24.high8)
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;            goto UNDERFLOW;
	BRA   m195
			;       #if __CoreSet__ >= 1700 && __CoreSet__ <= 1800
			;        sign = rr( sign);   // Save Carry
	MOVLB 0
	RRCF  sign_2,1,1
			;       #endif
			;        arg1f24.high8 --;
	DECF  arg1f24+2,1,1
			;        counter ++;
	INCF  counter,1,1
			;       #if __CoreSet__ >= 1700 && __CoreSet__ <= 1800
			;        sign = rl( sign);   // Restore Carry, changed by INCF/DECF
	RLCF  sign_2,1,1
			;       #endif
			;        goto LOOP_ML;
	BRA   m187
			;    }
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding)  {
m192	MOVLB 0
	BTFSS 0xC5,FpRounding,1
	BRA   m200
			;        if (Carry)
	BTFSC 0xFD8,Carry,0
			;            goto ADD_1;
	BRA   m193
			;        aarg.low8 -= arg2f24.low8;
	MOVLB 0
	MOVF  arg2f24,W,1
	SUBWF aarg_2,1,1
			;        genSub( aarg.high8, arg2f24.mid8);
	MOVF  arg2f24+1,W,1
	SUBWFB aarg_2+1,1,1
			;        if (Carry)  {
	BTFSS 0xFD8,Carry,0
	BRA   m200
			;          ADD_1:
			;            arg1f24.low8 += 1;
m193	MOVLB 0
	INCFSZ arg1f24,1,1
			;            if (!arg1f24.low8)  {
	BRA   m200
			;                arg1f24.mid8 ++;
	INCFSZ arg1f24+1,1,1
			;                if (!arg1f24.mid8)  {
	BRA   m200
			;                    arg1f24.low16 = rr( arg1f24.low16);
	RRCF  arg1f24+1,1,1
	RRCF  arg1f24,1,1
			;                    arg1f24.high8 ++;
	INCFSZ arg1f24+2,1,1
			;                    if (!arg1f24.high8)
	BRA   m200
			;                        goto OVERFLOW;
	BRA   m197
			;                }
			;            }
			;        }
			;    }
			;   #endif
			;    goto SET_SIGN;
			;
			;  Div0:
			;    FpDiv0 = 1;
m194	MOVLB 0
	BSF   0xC5,FpDiv0,1
			;    goto SATURATE;
	BRA   m198
			;
			;  UNDERFLOW:
			;    FpUnderFlow = 1;
m195	MOVLB 0
	BSF   0xC5,FpUnderFlow,1
			;  RES0:
			;    arg1f24.high8 = 0;
m196	MOVLB 0
	CLRF  arg1f24+2,1
			;    goto MANTISSA;
	BRA   m199
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
m197	MOVLB 0
	BSF   0xC5,FpOverflow,1
			;  SATURATE:
			;    arg1f24.high8 = 0xFF;
m198	MOVLB 0
	SETF  arg1f24+2,1
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
m199	MOVLB 0
	CLRF  arg1f24,1
	MOVLW 128
	MOVWF arg1f24+1,1
			;
			;  SET_SIGN:
			;    if (!(sign & 0x80))
m200	MOVLB 0
	BTFSS sign_2,7,1
			;        arg1f24.15 = 0;
	BCF   arg1f24+1,7,1
			;    return arg1f24;
	MOVLB 0
	MOVF  arg1f24,W,1
	RETURN
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
	BRA   m201
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
m201	MOVLW 17
	MOVLB 0
	CPFSGT expo,1
	BRA   m202
			;        goto _RETURN_MF;
	BRA   m220
			;    if (!arg2f24.high8)
m202	MOVLB 0
	MOVF  arg2f24+2,1,1
	BTFSC 0xFD8,Zero_,0
			;        goto _RETURN_MF;   // result is arg1f24
	BRA   m220
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
m203	MOVLW 8
			;        expo -= W;
	MOVLB 0
	SUBWF expo,1,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            break;
	BRA   m204
			;        xtra = arg2f24.low8;
	MOVFF arg2f24,xtra
			;        arg2f24.low8 = arg2f24.mid8;
	MOVFF arg2f24+1,arg2f24
			;        arg2f24.mid8 = 0;
	MOVLB 0
	CLRF  arg2f24+1,1
			;    }
	BRA   m203
			;    expo += W;
m204	MOVLB 0
	ADDWF expo,1,1
			;    if (expo)  {
	BTFSC 0xFD8,Zero_,0
	BRA   m206
			;        do  {
			;            Carry = 0;
m205	BCF   0xFD8,Carry,0
			;            arg2f24.low16 = rr( arg2f24.low16);
	MOVLB 0
	RRCF  arg2f24+1,1,1
	RRCF  arg2f24,1,1
			;            xtra = rr( xtra);
	RRCF  xtra,1,1
			;        } while (--expo > 0);
	DECFSZ expo,1,1
	BRA   m205
			;    }
			;
			;
			;    if (sign & 0x80)  {
m206	MOVLB 0
	BTFSS sign_3,7,1
	BRA   m212
			;        // SUBTRACT
			;        arg1f24.low8 -= arg2f24.low8;
	MOVF  arg2f24,W,1
	SUBWF arg1f24,1,1
			;        genSub( arg1f24.mid8, arg2f24.mid8);
	MOVF  arg2f24+1,W,1
	SUBWFB arg1f24+1,1,1
			;        if (!Carry)  {  // arg2f24 > arg1f24
	BTFSC 0xFD8,Carry,0
	BRA   m207
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
m207	MOVLB 0
	NEGF  xtra,1
			;        if (xtra)
	BTFSC 0xFD8,Zero_,0
	BRA   m208
			;            arg1f24.low16 --;
	DECF  arg1f24,1,1
	MOVLW 0
	SUBWFB arg1f24+1,1,1
			;        // adjust result left
			;       #define counter expo
			;        counter = 3;
m208	MOVLW 3
	MOVLB 0
	MOVWF expo,1
			;        while (!arg1f24.mid8)  {
m209	MOVLB 0
	MOVF  arg1f24+1,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m210
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
	BRA   m216
			;            if (--counter == 0)  // max 2 iterations
	MOVLB 0
	DECFSZ expo,1,1
	BRA   m209
			;                goto RES0;
	BRA   m216
			;        }
			;       #undef counter
			;        while (!arg1f24.15)  {
m210	MOVLB 0
	BTFSC arg1f24+1,7,1
	BRA   m211
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
	BRA   m210
			;                goto RES0;   // UNDERFLOW?
	BRA   m216
			;        }
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding  &&  (xtra & 0x80))  {
m211	MOVLB 0
	BTFSS 0xC5,FpRounding,1
	BRA   m219
	BTFSS xtra,7,1
	BRA   m219
			;            xtra = 0; // disable recursion
	CLRF  xtra,1
			;            goto INCREMENT;
	BRA   m215
			;        }
			;       #endif
			;    }
			;    else  {
			;        // ADD arg1f24 and arg2f24
			;        arg1f24.low8 += arg2f24.low8;
m212	MOVLB 0
	MOVF  arg2f24,W,1
	ADDWF arg1f24,1,1
			;        genAdd( arg1f24.mid8, arg2f24.mid8);
	MOVF  arg2f24+1,W,1
	ADDWFC arg1f24+1,1,1
			;        if (Carry)  {
	BTFSS 0xFD8,Carry,0
	BRA   m214
			;          ADJUST_RIGHT:
			;            arg1f24.low16 = rr( arg1f24.low16);
m213	MOVLB 0
	RRCF  arg1f24+1,1,1
	RRCF  arg1f24,1,1
			;            xtra = rr( xtra);
	RRCF  xtra,1,1
			;            arg1f24.high8 += 1;  // exp
	INFSNZ arg1f24+2,1,1
			;            if (!arg1f24.high8)
			;                goto OVERFLOW;
	BRA   m217
			;        }
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding  &&  (xtra & 0x80))  {
m214	MOVLB 0
	BTFSS 0xC5,FpRounding,1
	BRA   m219
	BTFSS xtra,7,1
	BRA   m219
			;          INCREMENT:
			;            arg1f24.low8 += 1;
m215	MOVLB 0
	INCFSZ arg1f24,1,1
			;            if (!arg1f24.low8)  {
	BRA   m219
			;                arg1f24.mid8 += 1;
	INCFSZ arg1f24+1,1,1
			;                if (!arg1f24.mid8)  {
	BRA   m219
			;                    Carry = 1; // prepare for shift
	BSF   0xFD8,Carry,0
			;                    arg1f24.0 = 0;  // disable recursion
	BCF   arg1f24,0,1
			;                    goto ADJUST_RIGHT;
	BRA   m213
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
m216	MOVLB 0
	CLRF  arg1f24+2,1
			;    goto MANTISSA;
	BRA   m218
			;
			;  OVERFLOW:
			;    FpOverflow = 1;
m217	MOVLB 0
	BSF   0xC5,FpOverflow,1
			;    arg1f24.high8 = 0xFF;
	SETF  arg1f24+2,1
			;  MANTISSA:
			;    arg1f24.low16 = 0x8000;
m218	MOVLB 0
	CLRF  arg1f24,1
	MOVLW 128
	MOVWF arg1f24+1,1
			;
			;  SET_SIGN:
			;    if (!(temp & 0x80))
m219	MOVLB 0
	BTFSS temp,7,1
			;        arg1f24.15 = 0;
	BCF   arg1f24+1,7,1
			;
			;  _RETURN_MF:
			;    return arg1f24;
m220	MOVLB 0
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
	BRA   m221
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
m221	MOVLB 0
	MOVF  arg1f24+2,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m222
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
	BRA   m224
m222	MOVLB 0
	MOVF  arg1f24+1,1,1
	BTFSS 0xFD8,Zero_,0
	BRA   m224
			;        expo -= 8;
	MOVLW 8
	SUBWF expo_2,1,1
			;        W = arg1f24.low8;
	MOVF  arg1f24,W,1
			;        if (!W)
	BTFSC 0xFD8,Zero_,0
			;            goto _RETURN_MF;
	BRA   m226
			;        arg1f24.mid8 = W;
	MOVLB 0
	MOVWF arg1f24+1,1
			;        arg1f24.low8 = 0;
	CLRF  arg1f24,1
			;    }
			;
			;    // arg1f24.mid8 != 0
			;    goto TEST_ARG1_B15;
	BRA   m224
			;    do  {
			;        xtra = rl( xtra);
m223	MOVLB 0
	RLCF  xtra_2,1,1
			;        arg1f24.low16 = rl( arg1f24.low16);
	RLCF  arg1f24,1,1
	RLCF  arg1f24+1,1,1
			;        expo --;
	DECF  expo_2,1,1
			;      TEST_ARG1_B15:
			;    } while (!arg1f24.15);
m224	MOVLB 0
	BTFSS arg1f24+1,7,1
	BRA   m223
			;
			;   #ifndef DISABLE_ROUNDING
			;    if (FpRounding && (xtra & 0x80))  {
	BTFSS 0xC5,FpRounding,1
	BRA   m225
	BTFSS xtra_2,7,1
	BRA   m225
			;        arg1f24.low8 += 1;
	INCFSZ arg1f24,1,1
			;        if (!arg1f24.low8)  {
	BRA   m225
			;            arg1f24.mid8 += 1;
	INCFSZ arg1f24+1,1,1
			;            if (!arg1f24.mid8)  {
	BRA   m225
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
m225	MOVFF expo_2,arg1f24+2
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
m226	MOVLB 0
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
	BRA   m232
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
	BRA   m227
			;   #endif
			;        expo += 8;
	MOVLW 8
	ADDWF expo_4,1,1
			;        if (!Carry)
	BTFSS 0xFD8,Carry,0
			;            goto OVERFLOW;
	BRA   m231
			;        arg1f24.high8 = arg1f24.mid8;
	MOVFF arg1f24+1,arg1f24+2
			;        arg1f24.mid8 = arg1f24.low8;
	MOVFF arg1f24,arg1f24+1
			;        arg1f24.low8 = 0;
	MOVLB 0
	CLRF  arg1f24,1
			;    }
			;    else  {  // (a) (b)
	BRA   m228
			;        // expo = 0 .. 16
			;        W = expo - 8;
m227	MOVLW 8
	MOVLB 0
	SUBWF expo_4,W,1
			;        if (Carry)  {  // (a)
	BTFSS 0xFD8,Carry,0
	BRA   m228
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
m228	MOVLB 0
	MOVF  expo_4,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m230
			;        do  {
			;            Carry = 0;
m229	BCF   0xFD8,Carry,0
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
	BRA   m229
			;    }
			;    if (arg1f24.23)  {
m230	MOVLB 0
	BTFSS arg1f24+2,7,1
	BRA   m234
			;       OVERFLOW:
			;        FpOverflow = 1;
m231	MOVLB 0
	BSF   0xC5,FpOverflow,1
			;        W = 0xFF;
	MOVLW 255
			;        goto ASSIGNW;
	BRA   m233
			;       RES0:
			;        W = 0;
m232	MOVLW 0
			;       ASSIGNW:
			;        arg1f24.low8 = W;
m233	MOVLB 0
	MOVWF arg1f24,1
			;        arg1f24.mid8 = W;
	MOVWF arg1f24+1,1
			;        arg1f24.high8 = W;
	MOVWF arg1f24+2,1
			;        arg1f24.23 = 0;
	BCF   arg1f24+2,7,1
			;    }
			;    else  {
	BRA   m236
			;       #ifndef DISABLE_ROUNDING
			;        if (FpRounding && (xtra & 0x80))  {
m234	MOVLB 0
	BTFSS 0xC5,FpRounding,1
	BRA   m235
	BTFSS xtra_4,7,1
	BRA   m235
			;            arg1f24.low8 += 1;
	INFSNZ arg1f24,1,1
			;            if (!arg1f24.low8)
			;                arg1f24.mid8 += 1;
	INCF  arg1f24+1,1,1
			;        }
			;       #endif
			;        if (sign & 0x80)
m235	MOVLB 0
	BTFSS sign_6,7,1
	BRA   m236
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
m236	MOVLB 0
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

  ; FILE ondulador_float.c
			;
			;//==============================================================================================
			;#include "Temporiz_64Mhz.h"
			;void configuraPic (void);
			;void configura1_PWM (void); 				// Configura todos los pr√°metros excepto M.
			;uns8 lectura_VAC (void);
			;	
			;#include "LCD_4bit.h"
			;#include "medir_18F4XK20.h"
			;#include "MATH24F.H"
			;
			;
			;static const char mensaje1[19] ="ONDULADOR 50HZ  by ";
			;static const char mensaje2[3] ="VAC";
			;static const char mensaje3[5] ="VMAX:";
			;static const char mensaje4[4] ="DIFF";
			;static const uns16 refAC [6] = {567,624,725,781,736,561};
			;
			;static const uns16 refIC [6] = {600,750,900,900,750,600};
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
			;	for(p=0;p<19;p++ )enviar_literal(mensaje1[p]);
	MOVLB 0
	CLRF  p,1
m237	MOVLW 19
	MOVLB 0
	CPFSLT p,1
	BRA   m238
	MOVLW 90
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m237
			;	enviar_literal(LOGO_SC);
m238	MOVLW 0
	CALL  enviar_literal
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
	BSF   0xB8,bUdw,1
			;	for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	MOVLW 1
	MOVWF i,1
m239	MOVLW 7
	MOVLB 0
	CPFSLT i,1
	BRA   m240
	RLCF  ancho_pwm,1,1
	RLCF  ancho_pwm+1,1,1
	INCF  i,1,1
	BRA   m239
			;	CCPR1L = ancho_pwm.high8;
m240	MOVFF ancho_pwm+1,CCPR1L
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
	RCALL _int24ToFloat24
	MOVFF Vmax,arg2f24
	MOVFF Vmax+1,arg2f24+1
	MOVFF Vmax+2,arg2f24+2
	RCALL _fmul24
	RCALL _float24ToInt24
	MOVFF rval_3,ancho_pwm
	MOVFF rval_3+1,ancho_pwm+1
			; //**************************************************************************************//
			; //*******************  V A R I A B L E S   L O C A L E L E S ***************************//
			; //**************************************************************************************//
			;	estado=0; //empieza por estado 0
	MOVLB 0
	CLRF  estado,1
			;	uns8 x;
			;	uns16 vac[6],ac;    //variables para guardar temporalmente las arrays
			;	uns16 iac[6],ic,rf;
			;	uns16 dif,difMediaAC,difMediaIC;
			;	char vbat,o=0,BP=10; //Banda proporcional 10% 
	CLRF  o,1
	MOVLW 10
	MOVWF BP,1
			;	bit a,b,c,vuelta=0,flancoVAC,flancoIAC;
	BCF   0x97,vuelta,1
			;	
			;	escribir_posicion (2, 1);
	MOVLW 2
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	for(p=0;p<3;p++ )enviar_literal(mensaje2[p]);
	MOVLB 0
	CLRF  p,1
m241	MOVLW 3
	MOVLB 0
	CPFSLT p,1
	BRA   m242
	MOVLW 109
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m241
			; 	escribir_posicion (4, 1);
m242	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 1
	CALL  escribir_posicion
			; 	for(p=0;p<5;p++ )enviar_literal(mensaje3[p]);
	MOVLB 0
	CLRF  p,1
m243	MOVLW 5
	MOVLB 0
	CPFSLT p,1
	BRA   m244
	MOVLW 112
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m243
			; 	escribir_posicion (4, 12);
m244	MOVLW 4
	MOVLB 0
	MOVWF linea,1
	MOVLW 12
	CALL  escribir_posicion
			;	for(p=0;p<4;p++ )enviar_literal(mensaje4[p]);
	MOVLB 0
	CLRF  p,1
m245	MOVLW 4
	MOVLB 0
	CPFSLT p,1
	BRA   m246
	MOVLW 117
	ADDWF p,W,1
	RCALL _const1
	CALL  enviar_literal
	MOVLB 0
	INCF  p,1,1
	BRA   m245
			; 	GIE=1;
m246	BSF   0xFF2,GIE,0
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
			;				
			;		switch(estado){
m247	MOVLB 0
	MOVF  estado,W,1
	BTFSC 0xFD8,Zero_,0
	BRA   m248
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m254
	XORLW 3
	BTFSC 0xFD8,Zero_,0
	BRA   m268
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m274
	XORLW 7
	BTFSC 0xFD8,Zero_,0
	BRA   m282
	XORLW 1
	BTFSC 0xFD8,Zero_,0
	BRA   m291
	BRA   m247
			;			case LECTURA_VAC:
			;				x=0;
m248	MOVLB 0
	CLRF  x,1
			;				while(LATD.0==1){   //vmax en LEO_VAC 18V 22k serie 8k2
m249	BTFSS LATD,0,0
	BRA   m253
			;						if (((T == 6)&&((x==0)||(x==5))) || ((T == 12 )&&((x==1)||(x==4))) || ((T == 20)&&((x==2)||(x==3)))) {
	MOVLW 6
	MOVLB 0
	CPFSEQ T,1
	BRA   m250
	MOVF  x,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m252
	MOVF  x,W,1
	XORLW 5
	BTFSC 0xFD8,Zero_,0
	BRA   m252
m250	MOVLW 12
	MOVLB 0
	CPFSEQ T,1
	BRA   m251
	DCFSNZ x,W,1
	BRA   m252
	MOVF  x,W,1
	XORLW 4
	BTFSC 0xFD8,Zero_,0
	BRA   m252
m251	MOVLW 20
	MOVLB 0
	CPFSEQ T,1
	BRA   m249
	MOVF  x,W,1
	XORLW 2
	BTFSC 0xFD8,Zero_,0
	BRA   m252
	MOVLW 3
	CPFSEQ x,1
	BRA   m249
			;						ac=medir(LEO_VAC,10);
m252	MOVLB 0
	CLRF  canal,1
	MOVLW 10
	RCALL medir
	MOVFF resultado,ac
	MOVFF resultado+1,ac+1
			;						vac[x]=ac;
	CLRF  FSR0+1,0
	BCF   0xFD8,Carry,0
	MOVLB 0
	RLCF  x,W,1
	ADDLW 112
	MOVWF FSR0,0
	MOVFF ac,POSTINC0
	MOVFF ac+1,POSTINC0
			;						x++;
	INCF  x,1,1
			;						
			;						if ((T==20&&x==3)) {retardo_20u();retardo_20u();retardo_20u();retardo_20u();
	MOVLW 20
	CPFSEQ T,1
	BRA   m249
	MOVLW 3
	CPFSEQ x,1
	BRA   m249
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
			;				}
	BRA   m249
			;				estado = CALCULOS_VAC;
m253	MOVLW 1
	MOVLB 0
	MOVWF estado,1
			;				if(x<=4) estado = LECTURA_VAC;
	MOVLW 5
	CPFSLT x,1
	BRA   m247
	CLRF  estado,1
			;			break;
	BRA   m247
			;
			;			case CALCULOS_VAC:
			;				difMediaAC=0;
m254	MOVLB 0
	CLRF  difMediaAC,1
	CLRF  difMediaAC+1,1
			;				for(p=0;p<=5;p++){
	CLRF  p,1
m255	MOVLW 6
	MOVLB 0
	CPFSLT p,1
	BRA   m258
			;					ac= vac[p];
	CLRF  FSR0+1,0
	BCF   0xFD8,Carry,0
	RLCF  p,W,1
	ADDLW 112
	MOVWF FSR0,0
	MOVFF POSTINC0,ac
	MOVFF POSTINC0,ac+1
			;					rf= refAC[p];
	BCF   0xFD8,Carry,0
	RLCF  p,W,1
	ADDLW 121
	RCALL _const1
	MOVLB 0
	MOVWF rf,1
	TBLRD +*
	MOVF  TABLAT,W,0
	MOVWF rf+1,1
			;					if(ac>=rf){
	MOVF  rf,W,1
	SUBWF ac,W,1
	MOVF  rf+1,W,1
	SUBWFB ac+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m256
			;						dif=ac-rf;
	MOVF  rf,W,1
	SUBWF ac,W,1
	MOVWF dif,1
	MOVF  rf+1,W,1
	SUBWFB ac+1,W,1
	MOVWF dif+1,1
			;						flancoVAC=PORENCIMA;
	BSF   0x97,flancoVAC,1
			;					}
			;					else {
	BRA   m257
			;						dif= rf-ac;
m256	MOVLB 0
	MOVF  ac,W,1
	SUBWF rf,W,1
	MOVWF dif,1
	MOVF  ac+1,W,1
	SUBWFB rf+1,W,1
	MOVWF dif+1,1
			;						flancoVAC=PORDEBAJO;
	BCF   0x97,flancoVAC,1
			;					}
			;					difMediaAC+=dif; 
m257	MOVLB 0
	MOVF  dif,W,1
	ADDWF difMediaAC,1,1
	MOVF  dif+1,W,1
	ADDWFC difMediaAC+1,1,1
			;				}
	INCF  p,1,1
	BRA   m255
			;
			;				difMediaAC/=6;
m258	MOVLB 0
	MOVF  difMediaAC,W,1
	MOVWF C42tmp,1
	MOVF  difMediaAC+1,W,1
	MOVWF C42tmp+1,1
	CLRF  C43rem,1
	MOVLW 16
	MOVWF C41cnt,1
m259	MOVLB 0
	RLCF  C42tmp,1,1
	RLCF  C42tmp+1,1,1
	RLCF  C43rem,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m260
	MOVLW 6
	SUBWF C43rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m261
m260	MOVLW 6
	MOVLB 0
	SUBWF C43rem,1,1
	BSF   0xFD8,Carry,0
m261	MOVLB 0
	RLCF  difMediaAC,1,1
	RLCF  difMediaAC+1,1,1
	DECFSZ C41cnt,1,1
	BRA   m259
			;				
			;				//intento de PID	
			;				Vmax=3.0; //reset Vmax
	CLRF  Vmax,1
	MOVLW 64
	MOVWF Vmax+1,1
	MOVLW 128
	MOVWF Vmax+2,1
			;				float variacion= 3.0*difMediaAC;
	MOVFF difMediaAC,arg1f24
	MOVFF difMediaAC+1,arg1f24+1
	CLRF  arg1f24+2,1
	RCALL _int24ToFloat24
	MOVLB 0
	CLRF  arg2f24,1
	MOVLW 64
	MOVWF arg2f24+1,1
	MOVLW 128
	MOVWF arg2f24+2,1
	RCALL _fmul24
	MOVFF arg1f24,variacion
	MOVFF arg1f24+1,variacion+1
	MOVFF arg1f24+2,variacion+2
			;				variacion/=240.0;
	MOVFF variacion,arg1f24
	MOVFF variacion+1,arg1f24+1
	MOVFF variacion+2,arg1f24+2
	MOVLB 0
	CLRF  arg2f24,1
	MOVLW 112
	MOVWF arg2f24+1,1
	MOVLW 134
	MOVWF arg2f24+2,1
	RCALL _fdiv24
	MOVFF arg1f24,variacion
	MOVFF arg1f24+1,variacion+1
	MOVFF arg1f24+2,variacion+2
			;				
			;				if(flancoVAC==PORENCIMA){	
	MOVLB 0
	BTFSS 0x97,flancoVAC,1
	BRA   m264
			;					if(variacion<=3.0) Vmax+=variacion;
	BTFSC variacion+1,7,1
	BRA   m262
	MOVLW 1
	SUBWF variacion,W,1
	MOVLW 64
	SUBWFB variacion+1,W,1
	MOVLW 128
	SUBWFB variacion+2,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m263
m262	MOVFF Vmax,arg1f24
	MOVFF Vmax+1,arg1f24+1
	MOVFF Vmax+2,arg1f24+2
	MOVFF variacion,arg2f24
	MOVFF variacion+1,arg2f24+1
	MOVFF variacion+2,arg2f24+2
	RCALL _fadd24
	MOVFF arg1f24,Vmax
	MOVFF arg1f24+1,Vmax+1
	MOVFF arg1f24+2,Vmax+2
			;					else Vmax=6.0;
	BRA   m267
m263	MOVLB 0
	CLRF  Vmax,1
	MOVLW 64
	MOVWF Vmax+1,1
	MOVLW 129
	MOVWF Vmax+2,1
			;				}
			;				else{
	BRA   m267
			;					if(variacion<=3.0) Vmax-=variacion;
m264	MOVLB 0
	BTFSC variacion+1,7,1
	BRA   m265
	MOVLW 1
	SUBWF variacion,W,1
	MOVLW 64
	SUBWFB variacion+1,W,1
	MOVLW 128
	SUBWFB variacion+2,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m266
m265	MOVFF Vmax,arg1f24
	MOVFF Vmax+1,arg1f24+1
	MOVFF Vmax+2,arg1f24+2
	MOVFF variacion,arg2f24
	MOVFF variacion+1,arg2f24+1
	MOVFF variacion+2,arg2f24+2
	RCALL _fsub24
	MOVFF arg1f24,Vmax
	MOVFF arg1f24+1,Vmax+1
	MOVFF arg1f24+2,Vmax+2
			;					else Vmax=1.0;
	BRA   m267
m266	MOVLB 0
	CLRF  Vmax,1
	CLRF  Vmax+1,1
	MOVLW 127
	MOVWF Vmax+2,1
			;				}
			;				
			;				r= Vmax*10;
m267	MOVFF Vmax,arg1f24
	MOVFF Vmax+1,arg1f24+1
	MOVFF Vmax+2,arg1f24+2
	MOVLB 0
	CLRF  arg2f24,1
	MOVLW 32
	MOVWF arg2f24+1,1
	MOVLW 130
	MOVWF arg2f24+2,1
	CALL  _fmul24
	RCALL _float24ToInt24
	MOVFF rval_3,r
	MOVFF rval_3+1,r+1
			;				estado = LECTURA_IAC;
	MOVLW 2
	MOVLB 0
	MOVWF estado,1
			;				break;
	BRA   m247
			;
			;			case LECTURA_IAC:
			;				x=0;
m268	MOVLB 0
	CLRF  x,1
			;				while(LATD.0==1){
m269	BTFSS LATD,0,0
	BRA   m273
			;					if (((T == 6)&&((x==0)||(x==5))) || ((T == 12 )&&((x==1)||(x==4))) || ((T == 20)&&((x==2)||(x==3)))) {
	MOVLW 6
	MOVLB 0
	CPFSEQ T,1
	BRA   m270
	MOVF  x,1,1
	BTFSC 0xFD8,Zero_,0
	BRA   m272
	MOVF  x,W,1
	XORLW 5
	BTFSC 0xFD8,Zero_,0
	BRA   m272
m270	MOVLW 12
	MOVLB 0
	CPFSEQ T,1
	BRA   m271
	DCFSNZ x,W,1
	BRA   m272
	MOVF  x,W,1
	XORLW 4
	BTFSC 0xFD8,Zero_,0
	BRA   m272
m271	MOVLW 20
	MOVLB 0
	CPFSEQ T,1
	BRA   m269
	MOVF  x,W,1
	XORLW 2
	BTFSC 0xFD8,Zero_,0
	BRA   m272
	MOVLW 3
	CPFSEQ x,1
	BRA   m269
			;
			;						ic=medir(LEO_IAC,10);	
m272	MOVLW 2
	MOVLB 0
	MOVWF canal,1
	MOVLW 10
	CALL  medir
	MOVFF resultado,ic
	MOVFF resultado+1,ic+1
			;						iac[x]=ic;
	CLRF  FSR0+1,0
	BCF   0xFD8,Carry,0
	MOVLB 0
	RLCF  x,W,1
	ADDLW 126
	MOVWF FSR0,0
	MOVFF ic,POSTINC0
	MOVFF ic+1,POSTINC0
			;						x++;
	INCF  x,1,1
			;						
			;						if ((T==20&&x==3)) {retardo_20u();retardo_20u();retardo_20u();retardo_20u();
	MOVLW 20
	CPFSEQ T,1
	BRA   m269
	MOVLW 3
	CPFSEQ x,1
	BRA   m269
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
			;				}
	BRA   m269
			;				estado = CALCULOS_IAC;// cambiar para cacular corriente!!
m273	MOVLW 3
	MOVLB 0
	MOVWF estado,1
			;				if(x<=4) estado = LECTURA_IAC;
	MOVLW 5
	CPFSLT x,1
	BRA   m247
	MOVLW 2
	MOVWF estado,1
			;			break;
	BRA   m247
			;
			;			case CALCULOS_IAC:
			;				difMediaIC=0;
m274	MOVLB 0
	CLRF  difMediaIC,1
	CLRF  difMediaIC+1,1
			;				for(p=0;p<=5;p++){
	CLRF  p,1
m275	MOVLW 6
	MOVLB 0
	CPFSLT p,1
	BRA   m278
			;					ic= iac[p];
	CLRF  FSR0+1,0
	BCF   0xFD8,Carry,0
	RLCF  p,W,1
	ADDLW 126
	MOVWF FSR0,0
	MOVFF POSTINC0,ic
	MOVFF POSTINC0,ic+1
			;					rf= refIC[p];
	BCF   0xFD8,Carry,0
	RLCF  p,W,1
	ADDLW 133
	RCALL _const1
	MOVLB 0
	MOVWF rf,1
	TBLRD +*
	MOVF  TABLAT,W,0
	MOVWF rf+1,1
			;
			;					if(ic>rf){
	MOVF  ic,W,1
	SUBWF rf,W,1
	MOVF  ic+1,W,1
	SUBWFB rf+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m276
			;						dif=ic-rf;
	MOVF  rf,W,1
	SUBWF ic,W,1
	MOVWF dif,1
	MOVF  rf+1,W,1
	SUBWFB ic+1,W,1
	MOVWF dif+1,1
			;						flancoIAC=PORENCIMA;
	BSF   0x97,flancoIAC,1
			;					}
			;					else{
	BRA   m277
			;						dif = rf - ic;
m276	MOVLB 0
	MOVF  ic,W,1
	SUBWF rf,W,1
	MOVWF dif,1
	MOVF  ic+1,W,1
	SUBWFB rf+1,W,1
	MOVWF dif+1,1
			;						flancoIAC=PORDEBAJO;
	BCF   0x97,flancoIAC,1
			;					}
			;					difMediaIC+=dif; 
m277	MOVLB 0
	MOVF  dif,W,1
	ADDWF difMediaIC,1,1
	MOVF  dif+1,W,1
	ADDWFC difMediaIC+1,1,1
			;				}
	INCF  p,1,1
	BRA   m275
			;				difMediaIC/=6;
m278	MOVLB 0
	MOVF  difMediaIC,W,1
	MOVWF C45tmp,1
	MOVF  difMediaIC+1,W,1
	MOVWF C45tmp+1,1
	CLRF  C46rem,1
	MOVLW 16
	MOVWF C44cnt,1
m279	MOVLB 0
	RLCF  C45tmp,1,1
	RLCF  C45tmp+1,1,1
	RLCF  C46rem,1,1
	BTFSC 0xFD8,Carry,0
	BRA   m280
	MOVLW 6
	SUBWF C46rem,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m281
m280	MOVLW 6
	MOVLB 0
	SUBWF C46rem,1,1
	BSF   0xFD8,Carry,0
m281	MOVLB 0
	RLCF  difMediaIC,1,1
	RLCF  difMediaIC+1,1,1
	DECFSZ C44cnt,1,1
	BRA   m279
			;			
			;				estado = LECTURAS_VARIAS;
	MOVLW 4
	MOVWF estado,1
			;			break;
	BRA   m247
			;																///11,5v-->700
			;			case LECTURAS_VARIAS:								///11,8v-->728
			;				uns16 bat = medir(LEO_BAT,10);				 	///12,0v-->730
m282	MOVLW 1
	MOVLB 0
	MOVWF canal,1
	MOVLW 10
	CALL  medir
	MOVFF resultado,bat
	MOVFF resultado+1,bat+1
			;				if (bat>785)				vbat=BATT_FULL;  	///12,3v-->763
	MOVLW 18
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 3
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m283
	MOVLW 1
	MOVWF vbat,1
			;				else if((bat>762&&bat<775))	vbat=BATT_75;		///12,5v-->774
	BRA   m290
m283	MOVLW 251
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m284
	MOVLW 7
	SUBWF bat,W,1
	MOVLW 3
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m284
	MOVLW 2
	MOVWF vbat,1
			;				else if((bat>742&&bat<760)) vbat=BATT_50;		///12,8v-->794
	BRA   m290
m284	MOVLW 231
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m285
	MOVLW 248
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m285
	MOVLW 3
	MOVWF vbat,1
			;				else if((bat>722&&bat<740)) vbat=BATT_25;		///13,0v-->804
	BRA   m290
m285	MOVLW 211
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m286
	MOVLW 228
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m286
	MOVLW 4
	MOVWF vbat,1
			;				else if((bat>710&&bat<720)) vbat=BATT_10;		///13,5v-->837
	BRA   m290
m286	MOVLW 199
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSS 0xFD8,Carry,0
	BRA   m287
	MOVLW 208
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m287
	MOVLW 5
	MOVWF vbat,1
			;				else if(bat<=708){								///14,0v-->872
	BRA   m290
m287	MOVLW 197
	MOVLB 0
	SUBWF bat,W,1
	MOVLW 2
	SUBWFB bat+1,W,1
	BTFSC 0xFD8,Carry,0
	BRA   m290
			;					o++;										///14,5v-->895
	INCF  o,1,1
			;					if(o<=5)vbat=BATT_LW;						///15,0v-->946
	MOVLW 6
	CPFSLT o,1
	BRA   m288
	MOVLW 6
	MOVWF vbat,1
			;					if(o>6)vbat=BATT_CLEAR;
m288	MOVLW 6
	MOVLB 0
	CPFSGT o,1
	BRA   m289
	MOVLW 7
	MOVWF vbat,1
			;					if(o==10)o=0;
m289	MOVLW 10
	MOVLB 0
	CPFSEQ o,1
	BRA   m290
	CLRF  o,1
			;				} 			
			;				estado= ENVIO_LCD;
m290	MOVLW 5
	MOVLB 0
	MOVWF estado,1
			;			break;
	BRA   m247
			;
			;			case ENVIO_LCD:
			;
			;				if(vuelta){
m291	MOVLB 0
	BTFSS 0x97,vuelta,1
	BRA   m292
			;
			;					Enviar_uns16(3,1,vac[3]);
	MOVLW 3
	MOVWF linea_4,1
	MOVLW 1
	MOVWF columna_3,1
	MOVFF vac+6,dato_4
	MOVFF vac+7,dato_4+1
	CALL  Enviar_uns16
			;					Enviar_uns16(3,6,vac[4]);
	MOVLW 3
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 6
	MOVWF columna_3,1
	MOVFF vac+8,dato_4
	MOVFF vac+9,dato_4+1
	CALL  Enviar_uns16
			;					Enviar_uns16(3,11,vac[5]);
	MOVLW 3
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 11
	MOVWF columna_3,1
	MOVFF vac+10,dato_4
	MOVFF vac+11,dato_4+1
	CALL  Enviar_uns16
			;					Enviar_uns16(4,16, difMediaAC);
	MOVLW 4
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 16
	MOVWF columna_3,1
	MOVFF difMediaAC,dato_4
	MOVFF difMediaAC+1,dato_4+1
	CALL  Enviar_uns16
			;	/*				//escribir_posicion(4,6);
			;					uns16 g =Vmax*10;
			;					Enviar_uns16(4,6,g);
			;					Enviar_uns16(3,4,iac[h]);
			;					Enviar_uns16(3,9,iac[h+1]);
			;					Enviar_uns16(3,14, difMediaIC);
			;					escribir_posicion(3,20);
			;					enviar_cifra(flancoIAC);
			;					h++;
			;					if(h==6)h=0;	
			;	*/				
			;				}
			;				else{
	BRA   m293
			;					uns16 g =Vmax*10;
m292	MOVFF Vmax,arg1f24
	MOVFF Vmax+1,arg1f24+1
	MOVFF Vmax+2,arg1f24+2
	MOVLB 0
	CLRF  arg2f24,1
	MOVLW 32
	MOVWF arg2f24+1,1
	MOVLW 130
	MOVWF arg2f24+2,1
	CALL  _fmul24
	RCALL _float24ToInt24
	MOVFF rval_3,g
	MOVFF rval_3+1,g+1
			;					Enviar_uns16(4,6,g);
	MOVLW 4
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 6
	MOVWF columna_3,1
	MOVFF g,dato_4
	MOVFF g+1,dato_4+1
	CALL  Enviar_uns16
			;					Enviar_uns16(2,1,vac[0]);
	MOVLW 2
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 1
	MOVWF columna_3,1
	MOVFF vac,dato_4
	MOVFF vac+1,dato_4+1
	CALL  Enviar_uns16
			;					Enviar_uns16(2,6,vac[1]);
	MOVLW 2
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 6
	MOVWF columna_3,1
	MOVFF vac+2,dato_4
	MOVFF vac+3,dato_4+1
	CALL  Enviar_uns16
			;					Enviar_uns16(2,11,vac[2]);
	MOVLW 2
	MOVLB 0
	MOVWF linea_4,1
	MOVLW 11
	MOVWF columna_3,1
	MOVFF vac+4,dato_4
	MOVFF vac+5,dato_4+1
	CALL  Enviar_uns16
			;					//Enviar_uns16(3,1,vac[3]);
			;					
			;	/*				
			;					escribir_posicion(4,20);
			;					enviar_literal(vbat);
			;					uns16 j = sen[26]*r;
			;					Enviar_uns16(4,14,j);
			;					Enviar_uns16(2,4,vac[h]);
			;					Enviar_uns16(2,9,vac[h+1]);
			;					Enviar_uns16(2,14, difMediaAC);
			;					escribir_posicion(2,20);
			;					enviar_cifra(flancoVAC);
			;	*/			}
			;				vuelta^=1;
m293	MOVLB 0
	BTG   0x97,vuelta,1
			;				estado = LECTURA_VAC;
	CLRF  estado,1
			;			break;
	BRA   m247
			;
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
			;	ANSEL  = 0b.0000.0111;					// Solo el canal AN0 ser√° entrada anal√≥gica, el resto ser√°n entradas/salidas digitales.(PIC 816F87)
	MOVLW 7
	MOVWF ANSEL,0
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
	ADDLW 220
	MOVWF TBLPTR,0
	MOVLW 24
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
	DW    0x5620
	DW    0x4341
	DW    0x4D56
	DW    0x5841
	DW    0x443A
	DW    0x4649
	DW    0x3746
	DW    0x7002
	DW    0xD502
	DW    0xD02
	DW    0xE003
	DW    0x3102
	DW    0x5802
	DW    0xEE02
	DW    0x8402
	DW    0x8403
	DW    0xEE03
	DW    0x5802
	DW    0x2

	END


; *** KEY INFO ***

; 0x000008  152 word(s)  1 % : highPriorityTimer_0
; 0x0018C4   85 word(s)  1 % : _const1
; 0x000138   10 word(s)  0 % : retardo_20u
; 0x00014C   19 word(s)  0 % : retardo_1m
; 0x000172   20 word(s)  0 % : retardo_50m
; 0x00019A   18 word(s)  0 % : retardo_100m
; 0x0001BE   20 word(s)  0 % : retardo_500m
; 0x001894   24 word(s)  0 % : configuraPic
; 0x0001E6   28 word(s)  0 % : envia_codigo_inicial
; 0x00021E   59 word(s)  0 % : enviar_comando
; 0x000294   79 word(s)  0 % : enviar_literal
; 0x000332   72 word(s)  0 % : enviar_cifra
; 0x0003C2   59 word(s)  0 % : inicializar_lcd
; 0x000438   39 word(s)  0 % : escribir_posicion
; 0x000486   37 word(s)  0 % : borrar_linea
; 0x0004D0    2 word(s)  0 % : borrar_lcd
; 0x0004D4  367 word(s)  4 % : Enviar_lcd
; 0x0007B2  429 word(s)  5 % : Enviar_uns16
; 0x000B0C  160 word(s)  1 % : RAM_LCD
; 0x000C4C  113 word(s)  1 % : medir
; 0x000D2E  100 word(s)  1 % : _fmul24
; 0x000DF6  122 word(s)  1 % : _fdiv24
; 0x000EEA  167 word(s)  2 % : _fadd24
; 0x001038    7 word(s)  0 % : _fsub24
; 0x001046   69 word(s)  0 % : _int24ToFloat24
; 0x0010D0   85 word(s)  1 % : _float24ToInt24
; 0x00117A  909 word(s) 11 % : main

; RAM usage: 102 bytes (88 local), 666 bytes free
; Maximum call level: 3 (+2 for interrupt)
; Total of 3253 code words (39 %)
