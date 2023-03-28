  1 section .data
  2 
  3 codes:
  4         db '0123456789ABCDEF'
  5 
  6 
  7 section .text
  8 
  9 global _start
 10 
 11 _start:
 12         mov rax, 0x1122334455667788
 13         mov rdi, 1
 14         mov rdx, 1
 15         mov rcx, 64
 16 .loop:
 17         push rax
 18         sub rcx, 4
 19         sar rax, cl
 20         and rax, 0xf
 21         lea rsi, [codes + rax]
 22         mov rax, 1
 23         push rcx
 24         syscall
 25         pop rcx
 26         pop rax
 27         test rcx, rcx
 28         jnz .loop
 29 
 30         mov rax, 60
 31         xor rdi, rdi
 32         syscall