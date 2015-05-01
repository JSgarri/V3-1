void envia_codigo_inicial (char codigo)
{
	PORTB.4=0;nop();
	PORTB.0 = codigo.4;
	nop();
	PORTB.1 = codigo.5;
	nop();
	PORTB.2 = codigo.6;
	nop();
	PORTB.3 = codigo.7;
	nop();
	PORTB.5 = 1; 
	retardo_20u();
	PORTB.5 = 0; 

	return;
}
 
void enviar_comando (char comando) 
{
	
	PORTB.0 =  comando.4;nop();
	PORTB.1 =  comando.5;nop();
	PORTB.2 =  comando.6;nop();
	PORTB.3 =  comando.7;
	retardo_1m ();
	PORTB.4 = 0;  									// Modo comando.
	retardo_20u (); //
	PORTB.5 = 1;  									// Breve pulso.
	retardo_20u ();
	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	retardo_1m ();
	retardo_1m ();
	comando = swap (comando);
	PORTB.0 =  comando.4;nop();
	PORTB.1 =  comando.5;nop();
	PORTB.2 =  comando.6;nop();
	PORTB.3 =  comando.7;nop();
	retardo_1m ();
	PORTB.4 = 0;  									// Modo comando.
	retardo_20u ();
	PORTB.5 = 1;  									// Breve pulso.
	retardo_20u ();
	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	retardo_1m ();
	retardo_1m ();
	//leds_OFF (10);
	
	
	return;
}    

void enviar_literal (char dato) 
{
    char i;

	
	PORTB.0 = dato.4;
	nop();
	PORTB.1 = dato.5;
	nop();
	PORTB.2 = dato.6;
	nop();
	PORTB.3 = dato.7;
	nop();
	PORTB.4 = 1;  									// Modo dato.
	retardo_20u ();
	PORTB.5 = 1;  									// Breve pulso.
	retardo_20u ();
	PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	for (i = 1; i <= 6; i++) retardo_20u ();
	dato = swap (dato);
	PORTB.0 = dato.4;nop();
	PORTB.1 = dato.5;nop();
	PORTB.2 = dato.6;nop();
	PORTB.3 = dato.7;nop();
	retardo_1m ();
	PORTB.4 = 1;  									// Modo dato.
	retardo_1m ();
	PORTB.5 = 1;  									// Breve pulso.
	retardo_20u ();
	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	for (i = 1; i<= 6; i++) retardo_20u ();
	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
	return;
}   

void enviar_cifra (char dato) 
{
    char i;
	dato = dato + 0x30; 							// Convierto el número en su equivalente ASCII literal. 
	PORTB.0 = dato.4;
	nop();
	PORTB.1 = dato.5;
	nop();
	PORTB.2 = dato.6;
	nop();
	PORTB.3 = dato.7;
	nop();
	PORTB.4 = 1;  									// Modo dato.
	retardo_20u ();
	PORTB.5 = 1;  									// Breve pulso.
	retardo_20u ();
	PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
	for (i = 1; i <= 6; i++) retardo_20u ();
	dato = swap (dato);
	PORTB.0 = dato.4;
	nop();
	PORTB.1 = dato.5;
	nop();
	PORTB.2 = dato.6;
	nop();
	PORTB.3 = dato.7;
	retardo_1m ();
	PORTB.4 = 1;  									// Modo dato.
	retardo_1m ();
	PORTB.5 = 1;  									// Breve pulso.
	retardo_20u ();
	PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
	for (i = 1; i<= 6; i++) retardo_20u ();
	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
	return;
} 

void inicializar_lcd (void) 
{
	char i;
	clrwdt () ;	
	for (i = 1; i < 21; i++) retardo_1m ();    
	envia_codigo_inicial (0b.00.11.0000);
	for (i = 1; i < 6; i++) retardo_1m ();
    envia_codigo_inicial (0b.00.11.0000);	
	for (i = 1; i< 11; i++) retardo_20u ();
    envia_codigo_inicial (0b.00.11.0000);
	for (i = 1; i < 11; i++) retardo_20u ();
	envia_codigo_inicial (0b.00.10.0000);			// A 4 bits.
	enviar_comando (0b.0010.1000);					// A 4 bits, doble línea, caracteres 5x7.
	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.
	enviar_comando (0b.0000.0010);  				// Cursor en home, inicio de primera linea.
	return;
}

void escribir_posicion (char linea, char columna)
{
	
	switch (linea) 									// (se resta una unidad a la coordenada línea para que la posición columna inicial sea 1 y no 0).
		{
			case 1:
				enviar_comando (127 + columna); 	// Inicio primera linea.
			break;
						
			case 2:
				enviar_comando (191 + columna); 	// Inicio segunda línea.
			break;			

			case 3:
				enviar_comando (147 + columna);		// Inicio tercera línea (cursor en posición 20 de la primera línea).
			break;				
			
			case 4:
				enviar_comando (211 + columna); 	// Inicio cuarta línea (cursor en posición 20 de la segunda línea).
			break;
			enviar_comando (0b.0000.1100);			// Pantalla encendida, sin cursor.
		}
	
	
}

void borrar_linea (char linea)
{
	char i;
		
	switch (linea) 									// (se resta una unidad a la coordenada línea para que la posición columna inicial sea 1 y no 0).
		{
			case 1:
				enviar_comando (128); 				// Inicio primera linea.
			break;
						
			case 2:
				enviar_comando (192); 				// Inicio segunda línea.
			break;			

			case 3:
				enviar_comando (148); 				// Inicio tercera línea (cursor en posición 20 de la primera línea).
			break;				
			
			case 4:
				enviar_comando (212); 				// Inicio cuarta línea (cursor en posición 20 de la segunda línea).
			break;
		}
	for (i = 1; i < 21; i++) enviar_literal (' '); 	// Envio 20 carácteres en blanco y posiciono en la siguiente línea.
	enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.	
}

void borrar_lcd (void)
{
	enviar_comando (0b.0000.0001);  				// Borrado del display y cursor en la posición inicial.	
}

void Enviar_lcd (char linea, char columna, uns16 dato, bit bd, bit dp, bit xi,bit ndp)
            //fila , col , uns16 , bd -> si 0 posa espai si "0" a l'esquerra ,, dp -> si "0"--> posa punt decimal
{
// Aquesta funcio, posiciona Fila i Columna d'un LCD 4x20 i envia una xifra uns16 descomposant-la i posant 
//  decimal o no, segons sigui dp, si "0"--> posa punt decimal , si dp "1" -> no posa dp
//  si bd = "0" -> posa espai, si bd = "1"  --> No  posa espai i posa el 0.
// si xi = 0 -> 3 xifres,, si xi = 1  -> 4 xifres
// Atencio, amb dp S'UTILIZA un ESPAI MES
// amb 4 xifres, tambe es representen 3, pero es gasta un espai de mes.
// ESPI utilitzat...3 per 3 xifres,, 4 per 3xifres + dp   O 4xifres s/dp ,, 5 per 4 xifres + dp
// ndp ..si "0"...1decimal... si "1"   2 decimals
	uns16 num, u_milers, cent;
	char dec, unid, resto1;
	char i, xx, yy, dat,xy;
	
	//CON_LCD ();
	//posiciono
	switch (linea) 									// (se resta una unidad a la coordenada línea para que la posición columna inicial sea 1 y no 0).
		{
			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
			break;	
			case 2:	enviar_comando (191 + columna); 	// inicio segunda línea.
			break;			
			case 3:	enviar_comando (147 + columna); 	// inicio tercera línea (cursor en posición 20 de la primera línea).
			break;				
			case 4:	enviar_comando (211 + columna); 	// inicio cuarta línea (cursor en posición 20 de la segunda línea).
			break;	
			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
		}				
		if (!xi)
		{
			xy = 2;
			u_milers = 0;
			if (dato > 999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
		    else goto sa;
		}
		else
		{
			xy = 1;
			if (dato > 9999) { enviar_literal ('>');enviar_literal ('E');enviar_literal ('r'); goto so; }
		}
			// Separo per 4 xifres
			num = dato; // per 4 xifres
			u_milers = num / 1000;
			dato = num % 1000;
			// Separo per 3 xifres
sa:			cent   = dato   / 100;   	
			resto1 = dato   % 100;
			dec    = resto1 /  10;  
			unid   = resto1 %  10; 		
		// Envio
		for (xx = xy; xx < 7; xx++)
		{
			clrwdt () ;
			if (xx == 1) 
			{
				if ((u_milers==0)&&(!bd)) dat = ' '; // bd =0 --> espai
				else dat = u_milers;
			}
			if (xx == 2) 
			{
				if ((u_milers==0)&&(cent==0)&&(!bd)) dat = ' '; // bd =0 --> espai
				else dat = cent;
			}
			if (xx == 3) 
			{
				if(ndp) { if (dp==0) dat = '.';
				          else xx++;  
				        }
				else xx++;		
			}
			if (xx == 4)
			{
				if ((u_milers==0)&&(cent==0)&&(dec==0)&&(!bd)) dat = ' ';
				else dat = dec ;
			}
			if (xx == 5)
			{
				if(!ndp) { if (dp==0) dat = '.';	
				           else xx++;
						 }
				else xx++;		 
			}
			if (xx == 6) dat = unid;
						
			if ((dat!='.')&&(dat!=' ')) dat = dat + 0x30;

			PORTB.0 = dat.4;nop();
			PORTB.1 = dat.5;nop();
			PORTB.2 = dat.6;nop();
			PORTB.3 = dat.7;nop();
			PORTB.4 = 1;  									// Modo dato.
			retardo_20u ();
			PORTB.5 = 1;  									// Breve pulso.
			retardo_20u ();
			PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
			for (i = 1; i <= 6; i++) retardo_20u ();
			dat = swap (dat);
			PORTB.0 = dat.4;nop();
			PORTB.1 = dat.5;nop();
			PORTB.2 = dat.6;nop();
			PORTB.3 = dat.7;
			retardo_1m ();
			PORTB.4 = 1;  									// Modo dato.
			retardo_1m ();
			PORTB.5 = 1;  									// Breve pulso.
			retardo_20u ();
			PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
			for (i = 1; i<= 6; i++) retardo_20u ();
			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
		}
so:	//DESCON_LCD ();
	return;
}

void Enviar_uns16(char linea,char columna,uns16 dato){
	//utilizaremos esta funcion en caso de necesitar un numero entero hasta 65536(16bits)
	uns16 num, u_milers, cent, d_milers;
	char dec, unid, resto1;
	char i, xx, yy, dat,xy;

	switch (linea) 									// (se resta una unidad a la coordenada línea para que la posición columna inicial sea 1 y no 0).
		{
			case 1:	enviar_comando (127 + columna); 	// inicio primera linea.
			break;	
			case 2:	enviar_comando (191 + columna); 	// inicio segunda línea.
			break;			
			case 3:	enviar_comando (147 + columna); 	// inicio tercera línea (cursor en posición 20 de la primera línea).
			break;				
			case 4:	enviar_comando (211 + columna); 	// inicio cuarta línea (cursor en posición 20 de la segunda línea).
			break;	
			enviar_comando (0b.0000.1100);			// pantalla encendida, sin cursor
		}				
	
			
			num = dato; 
			d_milers =num/10000;
			num= num%10000;
			u_milers = num / 1000;
			dato = num % 1000;

			cent   = dato   / 100;   	
			resto1 = dato   % 100;
			dec    = resto1 /  10;  
			unid   = resto1 %  10; 		
		// Envio
		for (xx=0 ; xx < 5; xx++)
		{
			switch(xx){
				case 0:
					if (d_milers==0) dat = ' '; 
					else dat = d_milers;
					break;
				case 1:
					if ((u_milers==0)&&(d_milers==0)) dat = ' ';
					else dat = u_milers;
					break;
				case 2:
					if ((d_milers==0)&&(u_milers==0)&&(cent==0)) dat = ' '; 
					else dat = cent;
					break;
				case 3:
					if ((u_milers==0)&&(cent==0)&&(dec==0)&&(d_milers==0)) dat = ' ';
					else dat = dec ;
					break;
				case 4:
					dat = unid;
					break;
			}		
			if (dat!=' ') dat = dat + 0x30;
			PORTB.0 = dat.4;nop();
			PORTB.1 = dat.5;nop();
			PORTB.2 = dat.6;nop();
			PORTB.3 = dat.7;nop();
			PORTB.4 = 1;  									// Modo dato.
			retardo_20u ();
			PORTB.5 = 1;  									// Breve pulso.
			retardo_20u ();
			PORTB.5 = 0;									// Lo envia y saca por LCD; deshabilita LCD.
			for (i = 1; i <= 6; i++) retardo_20u ();
			dat = swap (dat);
			PORTB.0 = dat.4;nop();
			PORTB.1 = dat.5;nop();
			PORTB.2 = dat.6;nop();
			PORTB.3 = dat.7;
			retardo_1m ();
			PORTB.4 = 1;  									// Modo dato.
			retardo_1m ();
			PORTB.5 = 1;  									// Breve pulso.
			retardo_20u ();
			PORTB.5 = 0; 									// Lo envia y saca por LCD; deshabilita LCD.
			for (i = 1; i<= 6; i++) retardo_20u ();
			enviar_comando (0b.0000.1100);					// Pantalla encendida, sin cursor.			
		}

	return;

}

//***********************************************************************************************
//***********************************************************************************************
// Definicio caracter especial : PROCES  -> posar x, on volguem el pixel ,pes 16 8 4 2 1  Rtat Hexa
//                         -  contar pesos ( veure exple, per Ah)             ¡ ¡x¡x¡ ¡ ¡ 0x0C
//                             -  de dalt a baix, es el codi a posar          ¡x¡ ¡ ¡x¡ ¡ 0x12
//                                                en el vector.               ¡x¡x¡x¡x¡ ¡ 0x1E
//                   - Al inici cridar funcio per ecriure CGRAM               ¡x¡ ¡ ¡x¡ ¡ 0x12
//                    - Hi caben 8 carac especials de 64 a 120                ¡ ¡ ¡x¡ ¡ ¡ 0x00
//                       de 8 e 8,  64 , 72, 80, 88, 96,104.112,120           ¡ ¡ ¡x¡x¡x¡ 0x04
//                   - Despres d'escriure la CGRAM, cal fer un                ¡ ¡ ¡x¡ ¡x¡ 0x07
//                     comando, per no apuntar a la CGRAM                     ¡ ¡ ¡x¡ ¡x¡ 0x05
// Per escriure simbol .... fer :   enviar_literal(3);enviar_literal(4);
//************IMPORTANTE****************************************
//******Poner despues de inicializar_lcd();*********************
void RAM_LCD (void)
{
	static const char Carac_1[] = {0x0C,0x10,0x08,0x04,0x1B,0x04,0x04,0x03};//caracter micro 	//escribir_literal(0);
	static const char Carac_2[] = {0xEE,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};	//escribir_literal(1); BAT_FULL
	static const char Carac_3[] = {0xEE,0xFF,0xF1,0xFF,0xFF,0xFF,0xFF,0xFF};	// ""...               BAT_75
	static const char Carac_4[] = {0xEE,0xFF,0xF1,0xF1,0xFF,0xFF,0xFF,0xFF};					    // BAT_50
	static const char Carac_5[] = {0xEE,0xFF,0xF1,0xF1,0xF1,0xFF,0xFF,0xFF};					    // BAT_25
	static const char Carac_6[] = {0xEE,0xFF,0xF1,0xF1,0xF1,0xF1,0xFF,0xFF};					    // BAT_10
	static const char Carac_7[] = {0xEE,0xFF,0xF1,0xF1,0xF1,0xF1,0xF1,0xFF};					    // BAT_LW
	static const char Carac_8[] = {0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};
	// 1era posicio CGRAM es la 64 , 72, 80, 88, 96,104.112,120
	char i;
	
	enviar_comando (64);// primera posicio del Carac_1, els altres seran consecutius
	retardo_20u ();
	for(i=0;i<=7;i++) { enviar_literal (Carac_1[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_2[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_3[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_4[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_5[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_6[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_7[i]); retardo_20u (); retardo_20u ();}
	for(i=0;i<=7;i++) { enviar_literal (Carac_8[i]); retardo_20u (); retardo_20u ();}	
	enviar_comando (0b.0000.0010);
	
	return;
}