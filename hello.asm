global _start

section .data
    text db "Hello, World!", 0x0a
    text_length equ $-text

section .text
_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, text
    mov rdx, text_length
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
