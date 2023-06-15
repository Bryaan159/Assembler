; EJERCICIO 1 PERMUTACION
    org 100h
    section .txt

; Limpiando registros a usar
    xor AX, AX
    xor BX, BX

; Valores de N y R quemados
    ;mov byte[210h], 5d
    ;mov byte[220h], 3d

; Declaracion de variables a usar
    MOV AX, 1d
    MOV BX, 1d

; Llamada a funciones factoriales
; Factorial de N
    MOV CX, [210h]
    call factorialN
; Factorial de N-R
    MOV CX, [210h]
    sub CX, [220h]
    call factorialNmenosR

; Calculo de Permutacion
    mov AX, [230h] ; valor n!
    mov BX, [240h] ; valor (n-r)!
    
    ; Division de n!/(n-r)!
    div BX

    ; Se envia resultado a 200h
    mov [200h], AX

    int 20h

; Funcion factorial
factorialN:
    CMP CX, 1
    jb end_factorialN

    imul AX, CX
    sub CX, 1
    jmp factorialN
end_factorialN:
    mov [230h], AX
    MOV AX, 1d
    ret

factorialNmenosR:
    CMP CX, 1
    jb end_factorialNmenosR

    imul BX, CX
    sub CX, 1
    jmp factorialNmenosR
end_factorialNmenosR:
    mov [240h], BX
    MOV BX, 1d
    ret
