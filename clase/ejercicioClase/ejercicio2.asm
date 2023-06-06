;Ejercicio 2 
    org 100h
    section .txt

; Entero y positivo
    MOV AL, 10d
    MOV BL, 5d
    SBB AL, BL

; Verifica que es entero y positivo
    CMP AL, 0
    JNS factorial

    

    int 20h


; Funcion factorial
factorial:
    MOV byte[200h], AL
    ret