    org 100h
    section .text

    XOR SI, SI
    XOR DI, DI
    MOV CX, 6d;
    MOV AX, 0d;
    MOV BX, 01d;

iterar:
    ADD AX,BX
    DEC CX
    JNZ iterar 
    ;verificar acarreo
    ADC BX, 0
    JNC no_carry

    SUB AX, BX
    TEST AX,AX
    JS no_positive
    
    ;Mueve el resultado a 210h
    MOV [210h], AL
    MOV AX, 1
    XOR BX, BX
    int 20h
exit:
    MOV AX, 1
    XOR BX, BX
    int 20h
    
section .data

arreglo db 1,2,3,4,5,6

    
;Las funciones

no_carry:
    JMP exit

no_positive:
    CMP AX,BX
    JMP exit
