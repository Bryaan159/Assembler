
org 100h

section .text

call modotexto
call posicionEscribir
call escribir
call esperarTecla

mov bl, 14h
mov cx, 1d

int 20h

modotexto:    
    mov ah, 00h
    mov al, 00h
    int 10h
    ret
posicionEscribir:
    mov ah, 02h
    mov dl, 03h
    mov dh, 10h
    mov bh, 0h
    int 10h
    ret
escribir:
    mov ah, 09h
    mov al, [200h]
    mov cx, 1d
    mov bl, 14h
    int 10h
    ret 
esperarTecla:
    mov ah, 00h
    int 16h
    ret