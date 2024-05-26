; boot.asm
; This code is licensed under the GNU GPLv3
%macro BiosPrint 1
   mov si, %1
ch_loop:
   lodsb
   or al, al
   jz done
   mov ah, 0x0E
   int 0x10
   stosb
   jmp ch_loop
done:
%endmacro

[ORG 0x7c00]
   xor ax, ax
   mov ds, ax
   cld
 
   BiosPrint msg
 
hang:
   jmp hang
 
msg db 'i am inside your computer', 13, 10, 'HALLO! ', 13, 10, 0

times 510-($-$$) db 0
db 0x55
db 0xAA
