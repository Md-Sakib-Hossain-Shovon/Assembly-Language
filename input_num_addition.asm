.model small
.stack 100h
.data
.code
main proc
    mov ah,1   ;1st input
    int 21h
    mov dl,al  
    mov ah,1  ;2nd input
    int 21h
    mov cl,al
    add dl,cl
    sub dl,48    ;number addition--48
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main                        