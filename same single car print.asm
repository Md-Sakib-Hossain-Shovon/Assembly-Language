.MODEL        SMALL
.STACK          100H  
.CODE
	MAIN PROC
	; display prompt to the user
	MOV AH,2 ; display character function
	MOV DL,'?' ; character is ‘?’
	INT 21H      ; display the DL char (?)
	;input a character
	MOV AH,1   ; read character function
	INT 21H      ; character is in AL
	MOV BL,AL ; save input to BL reg
	;go to new line
	MOV AH,2 		; display character function
	MOV DL,0Dh 	; carriage return
	INT 21H 		; execute carriage return
	MOV DL,0AH 	; line feed to display
	INT 21H 		; execute Line feed
	; display character 
	MOV DL, BL 		; retrieve character
	INT 21H
	;return to DOS
	MOV AH,4CH  ; terminate the currant process and   transfer control to invoking process 
	INT 21H           ; termination the execution of progra return control to DOS
	MAIN ENDP
END MAIN
