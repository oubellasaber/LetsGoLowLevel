global putchar
putchar:
        mov rsi, rdi          ; address of character
        mov rax, 1            ; write syscall
        mov rdi, 1            ; stdout file descriptor
        mov rdx, 1            ; write 1 byte
        syscall
        ret
