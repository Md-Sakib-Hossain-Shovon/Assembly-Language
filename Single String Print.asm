.model small
.stack 100h
.data
var1 db 'sakib hossen $' 
.code
main proc        
    mov ax,@data ;fixed
    mov ds,ax   ;fixed
    mov dl,var1
    ;mov dx,offset var1 
    lea dx,var1  ;for string
    mov ah,9  ;9->string
    int 21h
    mov ah,4ch  ;exit
    main endp
end main