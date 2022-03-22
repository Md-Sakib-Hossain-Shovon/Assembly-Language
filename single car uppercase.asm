.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,1
    INT 21H
    MOV DL,AL
    SUB DL,32  ;single carecter in uppercase
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN