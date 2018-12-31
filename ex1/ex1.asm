
_main:

;ex1.c,1 :: 		void main()
;ex1.c,3 :: 		TRISB = 0b00000000;
	CLRF       TRISB+0
;ex1.c,4 :: 		PORTB = 0b00000000;
	CLRF       PORTB+0
;ex1.c,6 :: 		while(1)
L_main0:
;ex1.c,8 :: 		RB1_bit = 1;
	BSF        RB1_bit+0, BitPos(RB1_bit+0)
;ex1.c,9 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;ex1.c,10 :: 		RB1_bit = 0;
	BCF        RB1_bit+0, BitPos(RB1_bit+0)
;ex1.c,11 :: 		delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;ex1.c,12 :: 		}
	GOTO       L_main0
;ex1.c,13 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
