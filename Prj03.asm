         .MODEL small
         .STACK 100h
         .DATA
Data1    DB 12h 
Data2    DB 56h 
Data3    DB 89h
Data4    DB 34h
Data5    DB 78h

SRC      DB 1,2,3,4,5,6,7,8
DST      DB 8 DUP (?)
ABC      DB 3 DUP (?)

         .CODE
start:
         mov ax,  @data
         lea cx, SRC
         push cx
         
         mov al, offset Data1 ;12H
         mov bl, offset Data2 ;56H
         mov cx, offset Data3 ;56H
         mov ah, offset Data4 ;34H
         mov bh, offset Data5 ;78H
         mov dx,  0ABCH       ;0ABCH
        
         mov ABC, AH
         mov ABC+1,BH
         mov ABC+2,CH
         
         XCHG ax, bx 
         XCHG cx, dx  
        
         mov si,  ax 
         mov di,  bx
         mov bp,  cx
         
         pop cx  
              
Exit:   mov al,  04ch
        int 21h         
End     Start
