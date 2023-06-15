org 100h
section .text

call modotexto
call posicion_escribir
call escribir 
call esperartecla

MOV BL, 14H
;Las veces que se va a repartir
MOV CX, 1d

int 20h

modotexto:
    ;Se debera de hacer sobre los colores
    MOV AH, 00h
    ;Se va a generar los 3 es decir, 0,3 y 13
    MOV AL, 03h
    int 10h
    ret

posicion_escribir:
    MOV AH, 02h
    MOV DL, 03h
    MOV DH, 10h
    MOV BH, 0h
    int 10h
    ret

escribir:
    MOV AH, 09h
    MOV AL, [200h]
    MOV CX, 1d
    MOV BL, 14h
    int 10h
    ret

esperartecla:
    MOV AH, 00h
    int 16h
    ret
    