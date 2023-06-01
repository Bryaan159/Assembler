    org 100h
    
    section.text

    MOV AL, 05d
    MOV BL, 03d
    sub AL,BL

    int 20h