org 100h

    section .text

    ;Direccionamiento relativo con registro
    mov     byte[200h], 25d
    mov     byte[210h], 40d
    ; Esta operación solo funciona con registros con registros índice SI o DI
		mov 	DI, 100h	; dato inmediato a índice
		mov 	AL, [DI+100h]	; contenido de celda de memoria 200h a registro

    mov     DI, 110h
    mov     BH, [DI+100h]

    ; Multiplicacion con signo
    imul    BH

    int 20h