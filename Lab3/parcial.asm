;Nombre: Kevin Bryan Hernández López
;Carnet: 00057720
    org 100h

    section .text
    ;Pasando al registro BH por direccionamiento por registro 3C hexadecimal
    ;MOV AH, 3Ch
    MOV BH, 3Ch
    ;Y que llegue al registro BL el numero 25d usando direccionamiento inmediato
    MOV BL, 25d
    ;Realizando una resta tomando en cuenta el acarreo que se pueda operar
    SBB BH,BL
    ;Moviendo el resultado a la direccion 210h
    MOV [210h], BH
    ;Moviendo por medio de direccionamiento indirecto mover el dato en 210h
    MOV BX, 210h
    MOV AX, [BX]
    ;Cargar el dato 8d a BL
    MOV BL, 8d
    ;Poder realizar una multiplicacion de signo
    imul BL
    ;Moviendo el resultado de la direccion 220h
    MOV [220h], AX

    int 20h