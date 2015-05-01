/*función void medir (char, char)
recibe como parámetros:
Primer parámetro: el canal A/D a convertir  (0...4,8...13) . Si está fuera del rango, toma 0 por defecto
Segundo parámetro: solo admite 8 o 10 (bits del resultado). si el parámetro no es 8 o 10,
interpreta automáticamente a 10.
Siempre. se configura automáticamente la entrada analógica solicitada. Fosc/32
Requiere la función retardo_20u()  (en retardos.h)
resultado: en ADRESH:ADRESL
*/
uns16 medir (char canal, char bits)
{
	uns16 resultado;
	switch (canal)
	{
		//del 0 al 4, están en el PORTA
		case 0: 	ADCON0 = 0b.00.0000.01;		break;
		case 1:		ADCON0 = 0b.00.0001.01;		break;
		case 2:		ADCON0 = 0b.00.0010.01;		break;
		case 3:		ADCON0 = 0b.00.0011.01;		break;
		case 4:		ADCON0 = 0b.00.0100.01;		break;
		case 5:		ADCON0 = 0b.00.0101.01;		break;
		case 6:		ADCON0 = 0b.00.0110.01;		break;
		case 7:		ADCON0 = 0b.00.0111.01;		break;
		case 8:		ADCON0 = 0b.00.1000.01;		break;
		case 9:		ADCON0 = 0b.00.1001.01;		break;
		case 10:	ADCON0 = 0b.00.1010.01;		break;
		case 11:	ADCON0 = 0b.00.1011.01;		break;
		case 12:	ADCON0 = 0b.00.1100.01;		break;
		case 13:	ADCON0 = 0b.00.1101.01;		break;
		default:	ADCON0 = 0b.00.0000.01;
	}
	if (bits == 8){ADFM=0;GO = 1;  while(GO);resultado = ADRESH;}
	else 		  {ADFM=1;GO = 1;  while(GO);resultado.low8 = ADRESL;resultado.high8 = ADRESH;}
   	
   	return resultado;
}

