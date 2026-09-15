section .text
        global _start

_start:
        mov rax, 1
        mov rdi, 1
        mov rsi, [rsp + 16]

        xor rdx, rdx
getlen_loop:
        cmp byte [rsi + rdx], 0
        je getlen_end
        inc rdx
        jmp getlen_loop
getlen_end:
        syscall

exit:
        mov rax, 60
        mov rdi, 0
        syscall
