global putstr
putstr:
	mov rdx, rsi          ; num of bytes
        mov rsi, rdi          ; address of character
        mov rax, 1            ; write syscall
        mov rdi, 1            ; stdout file descriptor
        syscall
        ret
