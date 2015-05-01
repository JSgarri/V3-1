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
 #pragma config[6] = 0b.1000.0001
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

#define LOGO_SC		 0
#define BATT_FULL	 1
#define BATT_75		 2
#define BATT_50		 3
#define BATT_25		 4
#define BATT_10		 5
#define BATT_LW		 6 
#define BATT_CLEAR	 7


#pragma rambank 0
bit bUdw; // a 1 puja en la taula (incrementa) , a 0 decrementa
uns16 ancho_pwm;
uns16 Vmax;
uns8 SENO;
char T,i,estado; // Index de la taula


static const char sen [26] = 			
{0,8,16,23,31,39,47,54,61,68,75,81,87,93,98,103,108,112,115,119,121,123,125,126,127,128};
// PWM maximo 799 para ser 100% 

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
			LATD.0= !LATD.0;	bUdw=1;  T=1; if(estado==ENVIO_LCD) estado = LECTURA_VAC;  // el deixo sortir
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
#include "Temporiz_64Mhz.h"
void configuraPic (void);
void configura1_PWM (void); 				// Configura todos los prámetros excepto M.
uns8 lectura_VAC (void);
	
#include "LCD_4bit.h"
#include "medir_18F4XK20.h"

static const char mensaje1[19] ="ONDULADOR 50HZ  by ";
static const char mensaje2[7] ="ESTADO:";
static const char mensaje3[5] ="VMAX:";
static const char mensaje4[13] ="LECTURAS_VAC:";
static const char ref [6] = {100,100,100,100,100,100};
//==============================================================================================
//==============================================================================================

void main (void)
{

	GIE = 0;								// Desactivamos inicialmente todas las interrupciones.
	configuraPic (); 						// Configuramos todos los puertos y PWM
	
	T0CON   = 0b.01000.001; //(PIC 18F4550)	// Equivale junto con INTCON2 al OPTION_REG del 16F88x).								
	INTCON2 = 0b.0000.0100; //(PIC 18F4550)	// Equivale junto con T0CON al OPTION_REG del 16F88x).	
	TMR0IF = 0;   //T0IF = 0; (PIC 16F88x)	// Ponemos el flanco de interrupciones a cero (aun no se ha efectuado ninguna).
   // w1   =   0;								// Reseteamos la variable índice de la tabla.
	LATD.0 =0;            Vmax = 2; //2 el pwm maximo en 

	
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
	estado=0; //empieza por estado 0
	uns8 x;
	char vac[6];
	char ac,rf,dif,vbat,o=0; //variables para guardar temporalmente las arrays
	bit a,b,c,vuelta=0;


	OSCTUNE=0b.01.000000; //PLL enable 
	
	RCON = 0b.01111111; //C18 pag 80 i 167  Causes del RESET i IPEN (priority Enabled o no)
	OSCCON    = 0b.0.111.0.0.00;

	inicializar_lcd(); 
	borrar_lcd();
	retardo_100m();
	RAM_LCD();
	retardo_100m();
	borrar_lcd();
	escribir_posicion (1, 1);
	char p,h;
	for(p=0;p<19;p++ )enviar_literal(mensaje1[p]);
	enviar_literal(LOGO_SC);
	escribir_posicion (2, 1);
 	for(p=0;p<7;p++ )enviar_literal(mensaje2[p]);
 	escribir_posicion (3, 1);
 	for(p=0;p<5;p++ )enviar_literal(mensaje3[p]);
 	escribir_posicion (4, 1);
 	for(p=0;p<13;p++ )enviar_literal(mensaje4[p]);
	
	ADCON2=0b.10.001.110;

 //**************************************************************************************//
 //**************************  B U C L E   I N F I N I T O  *****************************//
 //**************************************************************************************//
	while (1)       					
	{
		PORTC.1^=1;
	
		switch(estado){
			case LECTURA_VAC:
				x=0;
				while(LATD.0==1){
					PORTC.4=1;
					if (((T == 6)&&((x==0)||(x==5))) || ((T == 12 )&&((x==1)||(x==4))) || ((T == 20)&&((x==2)||(x==3)))) {
						PORTC.3=1;
						ac=medir(0,8);
						PORTC.3=0;	
						vac[x]=ac;
						x++;
						h=x;
						if ((T==20&&x==3)) {retardo_20u();retardo_20u();retardo_20u();retardo_20u();
							retardo_20u();retardo_20u();retardo_20u();retardo_20u();retardo_20u();}
					}		
					PORTC.4=0;		
				}
				estado = CALCULOS_VAC;
				if(x<=4) estado = LECTURA_VAC;
			break;
			case CALCULOS_VAC:
				for(p=0;p<=5;p++){
					ac= vac[p];
					rf =ref[p];
					if((p==0||p==5)){
						dif=ac-rf;

						
					}
					else if((p==1|| p==4)){

					}
					else {

					}
				}
				
				estado = LECTURAS_VARIAS;
			break;
			case LECTURA_IAC:
				
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
				char bat = medir(1,8);
				if (bat>216)				vbat=BATT_FULL;
				else if((bat>173&&bat<215))	vbat=BATT_75;
				else if((bat>133&&bat<172)) vbat=BATT_50;
				else if((bat>87 &&bat<130)) vbat=BATT_25;
				else if((bat>43 && bat<85)) vbat=BATT_10;
				else if(bat<=42){
					o++;
					if(o<=5)vbat=BATT_LW;
					if(o>6)vbat=BATT_CLEAR;
					if(o==10)o=0;
				} 			
				estado= ENVIO_LCD;
			break;
			case ENVIO_LCD:

				if(vuelta){
					escribir_posicion(2,9);
					enviar_cifra(estado);
					escribir_posicion(3,9);
					enviar_cifra(Vmax);
					Enviar_uns16(3,16,bat);	
					
				}
				else{
					escribir_posicion(4,14);
					enviar_cifra(x);
					escribir_posicion(4,20);
					enviar_literal(vbat);
					Enviar_uns16(2,16,vac[0]);
				//Enviar_uns16(2,10,vac[1]);
				//Enviar_uns16(3,1,vac[2]);
				//Enviar_uns16(3,10,vac[3]);
				//Enviar_uns16(4,1,vac[4]);
				//Enviar_uns16(4,10,vac[5]);
				}
				vuelta^=1;
				estado = LECTURA_VAC;
				
			break;
		}
	}	
}

//=============================================================================================================
			
void configuraPic (void)					
{

	OSCTUNE=0b.01.000000; //PLL enable 
	
	RCON = 0b.01111111; //C18 pag 80 i 167  Causes del RESET i IPEN (priority Enabled o no)
	OSCCON    = 0b.0.111.0.0.00;//C18 pag 53  //=============== ULL b3 abans 0 
	
	//ANSEL  = 0b.0000.0001;					// Solo el canal AN0 será entrada analógica, el resto serán entradas/salidas digitales.(PIC 816F87)
	//ANSELH = 0b.0000.0000;					// Solo el canal AN0 será entrada analógica, el resto serán entradas/salidas digitales.(PIC 816F87)
	
	TRISA  = 0b.0000.1111;					// PORTA.0 es entrada, el resto son salidas.
	TRISB  = 0b.0000.0000;					// PORTB todo salidas.
	TRISC  = 0b.0000.0000;					// PORTC todo salidas además de la salida del PWM.
	TRISD  = 0b.0000.0000;					// PORTD todo salidas.				
	LATB  = 0x00;							// Inicializa las salidas de PORTB a 0.
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