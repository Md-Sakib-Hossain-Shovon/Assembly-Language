.MODEL SMALL
.STACK 100H
.DATA

A DB 'ENTER YOUR PASSWORD $'
OK DB 'CORRECT PASSWORD $'
NOTOK DB 'WRONG PASSWORD $'
PASS DB 'ASSEMBLY$'
PASS1 DW 8

.CODE

MAIN PROC 
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,PASS1
    LEA BX,PASS
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    L1:
    MOV AH,8;8-->TO HIDE AND INPUT TAKING
    INT 21H
    
    CMP AL,[BX]
    JNE L2
    INC BX
    LOOP L1
    
    MOV AH,9
    LEA DX,OK
    INT 21H
    JMP EXIT
    
    L2:
    MOV AH,9
    LEA DX,NOTOK
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END MAIN