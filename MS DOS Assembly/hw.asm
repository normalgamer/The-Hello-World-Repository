  org  0x100        ; .com files always start 256 bytes into the segment

  mov  dx, msg      ; the address of message in dx
  mov  ah, 9        ; ah=9 - "print string" sub-function
  int  0x21         ; call dos services

  ;mov  ah, 0x4c     ; "terminate program" sub-function
  ;int  0x21         ; call dos services

  msg  db 'Hello World', 0x0d, 0x0a, '$'   ; $-terminated message
  
  ; This must be compiled to a .COM file. Using nasm "nasm -f bin hw.asm -o hw.com"
  ; The reason this file is called hw instead of Hello World is because MS DOS files are limited to 10 characters
