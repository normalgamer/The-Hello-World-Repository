[org 0x7C00]

main:
  mov si, helloWorld
  call printString
  
printString:
  mov ah, 0x0E
  .loop:
    lodsb
    cmp al, 0
    je done
    int 0x10
    jmp loop
  .done:
    ret
    
helloWorld db 'Hello World', 0
times 510-($-$$) db 0
dw 0xAA55
