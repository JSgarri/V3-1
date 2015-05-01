void retardo_20u(void){
	
		char PDel0;
		#asm
		;-------------------------------------------------------------
		DEMORA  movlw     .78       ; 1 set numero de repeticion 
		        movwf     PDel0     ; 1 |
		PLoop0  clrwdt              ; 1 clear watchdog
		        decfsz    PDel0, 1  ; 1 + (1) es el tiempo 0  ?
		        goto      PLoop0    ; 2 no, loop
		PDelL1  goto PDelL2         ; 2 ciclos delay
		PDelL2  clrwdt              ; 1 ciclo delay
		        return              ; 2+2 Fin.
		;-------------------------------------------------------------
		#endasm
	
}
void retardo_1m(void){
	char PDel0,PDel1;
	#asm
	;-------------------------------------------------------------
	DEMORA  movlw     .15       ; 1 set numero de repeticion  (B)
	        movwf     PDel0     ; 1 |
	PLoop1  movlw     .177      ; 1 set numero de repeticion  (A)
	        movwf     PDel1     ; 1 |
	PLoop2  clrwdt              ; 1 clear watchdog
	PDelL1  goto PDelL2         ; 2 ciclos delay
	PDelL2  
	        decfsz    PDel1, 1  ; 1 + (1) es el tiempo 0  ? (A)
	        goto      PLoop2    ; 2 no, loop
	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (B)
	        goto      PLoop1    ; 2 no, loop
	PDelL3  goto PDelL4         ; 2 ciclos delay
	PDelL4  goto PDelL5         ; 2 ciclos delay
	PDelL5  clrwdt              ; 1 ciclo delay
	        return              ; 2+2 Fin.
	;-------------------------------------------------------------
	#endasm
}
void retardo_50m(void){
	char PDel0,PDel1,PDel2;
	#asm
	;-------------------------------------------------------------
	DEMORA  movlw     .18       ; 1 set numero de repeticion  (C)
	        movwf     PDel0     ; 1 |
	PLoop0  movlw     .55       ; 1 set numero de repeticion  (B)
	        movwf     PDel1     ; 1 |
	PLoop1  movlw     .201      ; 1 set numero de repeticion  (A)
	        movwf     PDel2     ; 1 |
	PLoop2  clrwdt              ; 1 clear watchdog
	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	        goto      PLoop2    ; 2 no, loop
	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	        goto      PLoop1    ; 2 no, loop
	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	        goto      PLoop0    ; 2 no, loop
	PDelL1  goto PDelL2         ; 2 ciclos delay
	PDelL2  clrwdt              ; 1 ciclo delay
	        return              ; 2+2 Fin.
	;-------------------------------------------------------------
	#endasm
}
void retardo_100m(void){
	char PDel0,PDel1,PDel2;
	#asm
	;-------------------------------------------------------------
	DEMORA  movlw     .23       ; 1 set numero de repeticion  (C)
	        movwf     PDel0     ; 1 |
	PLoop0  movlw     .59       ; 1 set numero de repeticion  (B)
	        movwf     PDel1     ; 1 |
	PLoop1  movlw     .235      ; 1 set numero de repeticion  (A)
	        movwf     PDel2     ; 1 |
	PLoop2  clrwdt              ; 1 clear watchdog
	        clrwdt              ; 1 ciclo delay
	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	        goto      PLoop2    ; 2 no, loop
	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	        goto      PLoop1    ; 2 no, loop
	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	        goto      PLoop0    ; 2 no, loop
	        return              ; 2+2 Fin.
	;-------------------------------------------------------------
	#endasm
}
void retardo_500m(void){
	char PDel0,PDel1,PDel2;
	#asm
	;-------------------------------------------------------------
	DEMORA  movlw     .54       ; 1 set numero de repeticion  (C)
	        movwf     PDel0     ; 1 |
	PLoop0  movlw     .188      ; 1 set numero de repeticion  (B)
	        movwf     PDel1     ; 1 |
	PLoop1  movlw     .196      ; 1 set numero de repeticion  (A)
	        movwf     PDel2     ; 1 |
	PLoop2  clrwdt              ; 1 clear watchdog
	        decfsz    PDel2, 1  ; 1 + (1) es el tiempo 0  ? (A)
	        goto      PLoop2    ; 2 no, loop
	        decfsz    PDel1,  1 ; 1 + (1) es el tiempo 0  ? (B)
	        goto      PLoop1    ; 2 no, loop
	        decfsz    PDel0,  1 ; 1 + (1) es el tiempo 0  ? (C)
	        goto      PLoop0    ; 2 no, loop
	PDelL1  goto PDelL2         ; 2 ciclos delay
	PDelL2  clrwdt              ; 1 ciclo delay
	        return              ; 2+2 Fin.
	;-------------------------------------------------------------
	#endasm
}