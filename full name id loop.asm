.model small
.stack 100h
.data
var1 db 'sakib$' 
var2 db 'hosain$'
var4 db '19-40096-1$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    mov cx,3   ;loop number
    Loop1: 
    lea dx,var1
    mov ah,9  ;9--string print
    int 21h
    mov dl,32  ;ashcii space num--32
    mov ah,2
    int 21h
    lea dx,var2
    mov ah,9
    int 21h 
    mov dl,13
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    lea dx,var4
    mov ah,9
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    
    loop Loop1 
    mov ah,4ch
    int 21h
    main endp
end main