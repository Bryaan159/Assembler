;Ejercicio 2 
; e200 para modificar dato a celda de memoria
    org 100h
    section .txt
; Limpiando registros a usar
    xor AX, AX
    xor BX, BX
    xor DX, DX

; Valores de N y R
    mov byte[210h], 5d
    mov byte[220h], 3d

; Declaracion de variables a usar
    MOV AX, 1d
    MOV DX, 1d
    MOV BX, 1d

; Llamada a funciones factoriales
    ; Factorial de N
    MOV CX, [210h]
    call factorialN
    ; Factorial de R
    ;MOV CX, [220h]
    ;call factorialR
    ; Factorial de N-R
    MOV CX, [210h]
    sub CX, [220h]
    call factorialNmenosR

; Calculo de combinacion
    mov AX, [230h]
    mov BX, [250h]
    ; Multiplicacion (N-R)!r!
    ;mul DX
    ; se desplaza resultado a 250h
    ;mov [250h], AX
    ; Division n!/(N-R)!r!
    ;mov AX, [230h]
    ;mov BX, [250h]
    
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

factorialR:
    CMP CX, 1
    jb end_factorialR

    imul AX, CX
    sub CX, 1
    jmp factorialR
end_factorialR:
    mov [240h], AX
    MOV AX, 1d
    ret

factorialNmenosR:
    CMP CX, 1
    jb end_factorialNmenosR

    imul BX, CX
    sub CX, 1
    jmp factorialNmenosR
end_factorialNmenosR:
    mov [250h], BX
    MOV BX, 1d
    ret
