  1 section .data
  2 message: db 'Hello, world!', 10
  3 
  4 
  5 section .text
  6 global _start
  7 
  8 _start:
  9         mov rax, 1
 10         mov rdi, 1
 11         mov rsi, message
 12         mov rdx, 14
 13         syscall
 14 
 15         mov rax, 60
 16         xor rdi, rdi
 17         syscall