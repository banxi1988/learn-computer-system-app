.intel_syntax noprefix
global _multstore
_multstore:
    push rbp
    mov rbp, rsp
    push rbx
    push rax
    mov rbx,rdx
    call _mult2
    mov qword ptr [rbx], rax
    add rsp, 8
    pop rbx
    pop rbp
    ret