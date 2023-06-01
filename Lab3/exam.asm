;Nombre:
;Carnet:
    org 100h

    section .text
    ;Pasando al registro BL por direccionamiento inmediato el dato 35 decimal 
    MOV BL, 35
    ;Y que llegue al registro BH  el numero 25 en decimal por direccionamiento de registro
    MOV AH, 25
    MOV BH, AH
    ;Realizando una suma sin tomar en cuenta el acarreo
    ADD BH, BL
    ;Moviendo el resultado a la direcion 200h
    MOV [200h], BH
    ;Moviendo por medio de direccionamiento indirecto el dato 200h a AL
    MOV BX, 200h
    MOV AX, [BX]
    ;Siguiente operacion
    MOV BL, 5d
    ;Poder realizar una multiplicacion de signo
    imul BL
    ;Moviendo el resultado a la direccion 210h
    MOV [210h], AL

    int 20h
