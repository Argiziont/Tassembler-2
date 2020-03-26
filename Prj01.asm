        IDEAL
        MODEL SMALL
        STACK 256
        DATASEG
        
Data1   DB 12h 
Data2   DB 56h 
Data3   DB 89h
Data4   DB 34h
Data5   DB 78h

        CODESEG
Start:
        mov ax,  @data
        mov al, offset Data1 ;12H
        mov bl, offset Data2 ;56H
        mov cx, offset Data3 ;56H
        mov ah, offset Data4 ;34H
        mov bh, offset Data5 ;78H
        mov dx,  0ABCH   ;0ABCH
        
        XCHG ax, bx 
        XCHG cx, dx  
        
        mov si,  ax 
        mov di,  bx
        mov bp,  cx
Exit:   mov al,  04ch
        int 21h         
End     Start
