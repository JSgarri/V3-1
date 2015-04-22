/*
 * Autor: J_Sanchez
 * 
 * Fecha: 31-03-2015
 * Descripcion:Primera prueba con el 18F44K20 para el proyecto del ondulador v2.0
 *  Configuracion: 
 *		Modelo: 18F44K20
 *		Oscilador: Crystal 64Mhz
 *		Puente en H con PWM mejorado
 */

 //**************************************************************************************//
 //******************* C O N F I G  U R A C I O N    I N I C I A L  *********************//
 //**************************************************************************************//
 
 #pragma chip PIC18F44K20
 #pragma config[1] = 0b.0000.1000//pagina 301 datasheet
 #pragma config[2] = 0b.0000.0001
 #pragma config[3] = 0b.0001.0110
 #pragma config[5] = 0b.1000.1000//Mirar CCP2 MUX bit 0 
 				//-->1 = CCP2 input/output is multiplexed with RC1
				//   -->0 = CCP2 input/output is multiplexed with RB3 
 #pragma config[6] = 0b.1000.0101
 // resto configs son para la proteccion del programa 

 #pragma sharedAllocation//evita error en las interrupciones

 //**************************************************************************************//
 //********************************  V A R I A B L E S  *********************************//
 //**************************************************************************************//

#define LECTURA_VAC  0
#define CALCULOS_VAC 1
#define LECTURA_IAC  2
#define CALCULOS_IAC 3
#define LECTURAS_VARIAS 4
#define ENVIO_LCD    5


#pragma rambank 0
bit bUdw; // a 1 puja en la taula (incrementa) , a 0 decrementa
uns16 ancho_pwm;
uns16 Vmax;
uns8 SENO;


char T,i; // Index de la taula


static const char sen [26] = 			
{0,8,16,23,31,39,47,54,61,68,75,81,87,93,98,103,108,112,115,119,121,123,125,126,127,128};


//=======================================================================
#include "int18XXX.h"	 // Capçalera de interrupcions.

#pragma origin 0x08	//#pragma origin 0x18	(PIC 16F88x)

interrupt highPriorityTimer_0 (void)		// Interrupción por desbordamiento de Timer 0.			
{
	int_save_registers 

	// save remaining registers on demand (error/warning)
	//uns16 sv_FSR0 = FSR0;
	//uns16 sv_FSR1 = FSR1;
	//uns16 sv_FSR2 = FSR2;
	//uns8 sv_PCLATH = PCLATH;
	//uns8 sv_PCLATU = PCLATU;
	uns8 sv_PRODL = PRODL;
	uns8 sv_PRODH = PRODH;
	uns24 sv_TBLPTR = TBLPTR;
	uns8 sv_TABLAT = TABLAT;


	     				// Guarda W, STATUS y PCLATH.
	LATC.0=!LATC.0;
	if(TMR2IF) 	//{ LATD.0= !LATD.0; TMR2IF=0; }
	{ 
		T2CON = 0b.0.0011.1.01; TMR2IF =0; //TMR2ON =1; // PostScaler per 4
		for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
		CCPR1L    = ancho_pwm.high8;	CCP1CON.5 = ancho_pwm.7;	CCP1CON.4 = ancho_pwm.6;
				  
		if(bUdw) 	{ if(T>=25)  bUdw=0;      
				      else        T++;
					} 
		if(!bUdw)   T--;                       
		if(T==0) 
		{  	while(!TMR2IF); TMR2IF =0; // ESPERO QUE ACABI  T=1
			T2CON = 0b.0.0001.1.01;  	CCPR1L = 0;		CCP1CON.5 = 0;	CCP1CON.4 = 0;	 
			// Posrescaler a 2
			//while(!TMR2IF); // espero que acabi el T=0
			//	TMR2IF =0; // Postscaler a 2
			while(!TMR2IF); // espeor que acabi la 1era meitat del T=0, postsclaer =2
			TMR2IF =0; 	T2CON = 0b.0.0000.1.01;  	CCPR1L = 0;		CCP1CON.5 = 0;	CCP1CON.4 = 0;
			LATD.0= !LATD.0;	bUdw=1;  T=1; // el deixo sortir
		}			  
							
		SENO = sen[T];			
		ancho_pwm = (uns16)SENO*Vmax;
				  			  
	} 
			
	// restore registers that are saved
	//FSR0 = sv_FSR0;
	//FSR1 = sv_FSR1;
	//FSR2 = sv_FSR2;
	//PCLATH = sv_PCLATH;
	//PCLATU = sv_PCLATU;
	PRODL = sv_PRODL;
	PRODH = sv_PRODH;
	TBLPTR = sv_TBLPTR;
	TABLAT = sv_TABLAT;

    int_restore_registers 					// Devuelve W, STATUS y PCLATH.
}

//==============================================================================================
#include "Temporiz_20Mhz.h"
void configuraPic (void);
void configura1_PWM (void); 				// Configura todos los prámetros excepto M.
uns8 lectura_VAC (void);

#include "math24F.h"
#include "math24LB.h"	

#include "LCD_4bit.h"
//==============================================================================================
//==============================================================================================

void main (void)
{

	GIE = 0;								// Desactivamos inicialmente todas las interrupciones.
	configuraPic (); 						// Configuramos todos los puertos y PWM
	inicializar_lcd();    
	T0CON   = 0b.01000.001; //(PIC 18F4550)	// Equivale junto con INTCON2 al OPTION_REG del 16F88x).								
	INTCON2 = 0b.0000.0100; //(PIC 18F4550)	// Equivale junto con T0CON al OPTION_REG del 16F88x).	
	TMR0IF = 0;   //T0IF = 0; (PIC 16F88x)	// Ponemos el flanco de interrupciones a cero (aun no se ha efectuado ninguna).
   // w1   =   0;								// Reseteamos la variable índice de la tabla.
	LATD.0 =0;            Vmax = 4;

	
	INTCON = 0b.0100.0000;				// Interrupciones globales (bit 7) e interrupción por Timer0 (bit 5) activadas.

	// COMENÇO AL PAS PER 0, AMB 2 CICLES DE PWM A Ton=0 --> SON 100uS
	T=0; ancho_pwm =0; bUdw=1;	// Començo carregant 0
	for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	CCPR1L    = ancho_pwm.high8;	CCP1CON.5 = ancho_pwm.7;	CCP1CON.4 = ancho_pwm.6; // PWM carregat a 0
	TMR2IF=0;	TMR2IE=1;	GIE=1; TMR2ON  = 1;
	T++; SENO = sen[T];		ancho_pwm = (uns16)SENO*Vmax; // PREPARO SEGUENT VALOR
 //**************************************************************************************//
 //*******************  V A R I A B L E S   L O C A L E L E S ***************************//
 //**************************************************************************************//
	char estado;
	uns8 x;
	char vac[6];


	OSCTUNE=0b.01.000000; //PLL enable 
	
	RCON = 0b.01111111; //C18 pag 80 i 167  Causes del RESET i IPEN (priority Enabled o no)
	OSCCON    = 0b.0.111.0.0.00;
 //**************************************************************************************//
 //**************************  B U C L E   I N F I N I T O  *****************************//
 //**************************************************************************************//
	
	while (1)       					
	{
		PORTC.1^=1;
	
		switch(estado){
			case LECTURA_VAC:
				while(T!=0);//espero a que sea paso por cero
				if(LATD.0==1){
					while(LATD.0==1){
						if ((T == 6) || (T == 15 ) || (T == 20)) {	
							vac[x]=lectura_VAC();
							x++;
						}				
						x=0;
					}
					estado = ENVIO_LCD; // envio lecturas de referencia para luego hacer calculos
					//estado = CALCULOS_VAC;
				}
				else estado = LECTURA_VAC; 
				
				
				break;
			case CALCULOS_VAC:
				
				nop();

				break;
			case LECTURA_IAC:
				while(T!=0);//espero a que sea paso por cero
				while (estado== LECTURA_IAC){
					if ((T == 6) || (T == 15 ) || (T == 20)) {	
					nop();
					}
				}
				break;
			case CALCULOS_IAC:
				nop();
				break;
			case LECTURAS_VARIAS:
				nop();
				break;
			case ENVIO_LCD:

				Enviar_uns16(1,1,var[0]);
				Enviar_uns16(1,10,var[1]);
				Enviar_uns16(2,1,var[2]);
				Enviar_uns16(2,10,var[3]);
				Enviar_uns16(3,1,var[4]);
				Enviar_uns16(3,10,var[5]);

				estado = LECTURA_VAC;
				
				break;

		}
													
	
	}	
}

//=============================================================================================================
uns8 lectura_VAC (void)						// Lee el canal analógico AN0 con resolución de 8 bits:
{
	uns8 valor_AD;
	TRISA.0 = 1;
	//ADCON0 = 0b.00.0000.01; 				// ADCON0 = 0b.01.0000.01; // Canal AN0. (PIC 16F887)
	ADCON0 = 0b.10.000.0.0.1;				// (PIC 16F877)
	//ADCON1 = 0b.1000.0000; 				// Justificado a la derecha.	(PIC 16F887)
	ADCON1 = 0b.1.1.00.0000;				// (PIC 16F877)
	retardo_20u ();							// Retardo de 20 us (para 20 MHz) necesario para adquirir la señal.
	GO = 1;									// Activamos la conversión A -> D
	while (GO);								// Bloqueo mientras realiza la conversión. Al terminar, el resultado está en ADRESH y ADRESL
	//valor_AD.low8  = ADRESL;    			// Cargo en "valor_AD" el valor digital (10 bits: de 0 a 1023) de la conversión.                                                               
	//valor_AD.high8 = ADRESH;				// Cargo en "valor_AD" el valor digital (10 bits: de 0 a 1023) de la conversión. 
	valor_AD = ADRESH;						// Despreciamos los dos bits más bajos para poder trabajar con un char.
	//PORTD = valor_AD.low8; 				// ****** PRUEBA PARA VER SI HACE LA CONVERSIÓN A/D.******************
	//PORTC.1 = !PORTC.1; 					// Conmutamos PORTC.1 para generar un pulso que nos indique el tiempo de conversión A/D.
	
return valor_AD;
}
			
void configuraPic (void)					
{

	OSCTUNE=0b.01.000000; //PLL enable 
	
	RCON = 0b.01111111; //C18 pag 80 i 167  Causes del RESET i IPEN (priority Enabled o no)
	OSCCON    = 0b.0.111.0.0.00;//C18 pag 53  //=============== ULL b3 abans 0 
	
	//ANSEL  = 0b.0000.0001;					// Solo el canal AN0 será entrada analógica, el resto serán entradas/salidas digitales.(PIC 816F87)
	//ANSELH = 0b.0000.0000;					// Solo el canal AN0 será entrada analógica, el resto serán entradas/salidas digitales.(PIC 816F87)
	
	TRISA  = 0b.0000.0001;					// PORTA.0 es entrada, el resto son salidas.
	TRISB  = 0b.0000.0000;					// PORTB todo salidas.
	TRISC  = 0b.0000.0000;					// PORTC todo salidas además de la salida del PWM.
	TRISD  = 0b.0000.0000;					// PORTD todo salidas.				
	PORTB  = 0x00;							// Inicializa las salidas de PORTB a 0.
	PORTC  = 0x00;							// Inicializa las salidas de PORTC a 0.
	PORTD  = 0x00;							// Inicializa las salidas de PORTD a 0.

	//configuro ccp y pwm


	T2CON   = 0b.0.0001.0.01;				// Prescaler P1 = 4, TMR2ON = 1 cuenta;	
	PR2     = 199;
	CCP1CON = 0b.1000.1100;					// CCP1: modo PWM half bridge con bits de CCPR1L a 00 inicialmente.

	PWM1CON =0b.0000.0000; //tiempo muerto entre P1A y P1B
 		// a mirar con el osciloscopio xq no me fio del proteus
		//0b.0000.0011;-->180nS
		//0b.0000.0100;-->240nS
		//0b.0111.1111;-->7.9uS !! se solapan los tiempos e invierte la salida con lo que quedan las 2 conduciendo!!
}

void configura2_PWM (void) //void configura2_PWM (unsigned long ancho_pwm)	// Configura el "delta" del PWM.
{
	for (i = 1; i <= 6; i ++)  ancho_pwm = rl (ancho_pwm);
	CCPR1L    = ancho_pwm.high8;
	CCP1CON.5 = ancho_pwm.7;
	CCP1CON.4 = ancho_pwm.6;
}	