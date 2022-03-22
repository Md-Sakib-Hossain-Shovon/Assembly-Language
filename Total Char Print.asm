.MODEL SMALL
.STACK 100H
.DATA  
STRING DB 100 DUP(?)
MSG1 DB "Enter A String: $"
MSG2 DB 0DH, 0AH, "Total Characters: $" 
CHARACTERS DW 0   
.CODE
MAIN PROC
    
     MOV AX, @DATA
     MOV DS, AX
     MOV ES, AX
     
     MOV AH, 9
     LEA DX, MSG1
     INT 21H
     
     LEA DI, STRING
 
     MOV AH, 1
     READ:
     INT 21H
     CMP AL, 0DH
     JE ENDOFSTRING  ;je-->jump if equal
     STOSB ;store bytes from al to destination operand
     JMP READ
     
     ENDOFSTRING:
     MOV AL, "$"
     STOSB
     
     XOR BX, BX  ;performs corresponding bits between two operand and place it to the first
     
     COUNT: 
     CMP [STRING+BX], '$'
     JE EXIT
     CMP [STRING+BX], ' '
     JE SPACE
     INC BX
     INC CHARACTERS
     JMP COUNT
     
     SPACE:
     INC BX
     JMP COUNT
     
     EXIT:     
     
     MOV AH, 9
     LEA DX, MSG2
     INT 21H
     
     MOV AH, 2
     MOV DX, CHARACTERS
     ADD DX, 30H
     INT 21H
     
    MAIN ENDP
END MAIN