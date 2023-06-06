    ;Ejercicio numero 1 
    org 100h
    section .txt


    ;dato 1 por direccionamiento por registro
    MOV BL, 4d
    MOV BH, BL
    
    ;dato 2 por direccionamiento indirecto
    MOV BP, 200h
    MOV byte[BP], 3d		
    MOV AL, byte[BP]

    ;Llama a la funcion suma para sumar solamente los primeros datos es decis dato1 + dato 2
    CALL suma

    ;Hace la comparacion del resultado anterior si es menor a 20
    CMP AL, 20
    JB suma5


    int 20h
    
; llamar la funcion Suma
suma:
    ADD   AL, BH
    ret
suma5:
    ADD AL, 5d
    CMP AL, 20
    JB  suma5
    MOV byte[210h], AL
    ret




