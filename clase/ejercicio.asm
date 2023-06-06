    org 100h
    section .text
    XOR DI, DI
    MOV CX, 6d;
    MOV AX, 0;
    MOV BX, 01d;

iterar:
    ADC AX, [arreglo+DI]

    INC DI
    LOOP iterar

    ;verificar acarreo
    ; ADC BX, 0
    JNC no_carry

    SUB AX, BX
    JS positive
    
exit:

    MOV AX, 1
    XOR BX, BX
    int 20h
    
section .data
    arreglo db 1,34,3,4,50,66

;Las funciones

no_carry:
    JMP exit
    ret

positive:
    ;Mueve el resultado a 210h
    MOV [210h], AX
    ret