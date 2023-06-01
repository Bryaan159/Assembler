;nombre:
;carnet:
    org 100h

    section .text
    ; 35h -> 53
    ;Pasando al registro BL por direccionamiento base+Indice el dato 35 hexadecimal
    XOR   AX, AX
    MOV   byte[200h], 35h
    MOV 	BP, 100h
    MOV 	SI, 100h	
		MOV 	BL, [BP+SI]
    ;Y que llegue al registro BH  el numero 25 en decimal por direccionamiento de registro
    MOV AH, 25
    MOV BH, AH
    ;Realizando una resta sin tomar en cuenta el acarreo
    SUB BL, BH
    ;Moviendo el resultado a la direcion 210h
    MOV [210h], BL
	    ;Moviendo por medio de direccionamiento indirecto el dato 210h a Ax
    MOV BX, 210h
    MOV AX, [BX]
    ;Siguiente operacion
    MOV BL, 8d
    ;Poder realizar una division de signo
    DIV BL
    ;Moviendo el resultado a la direccion 200h
    MOV [200h], AL

    int 20h