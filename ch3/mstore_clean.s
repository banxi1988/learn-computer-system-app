.global _multstore
_multstore:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx
    pushq %rax
    movq %rdx, %rbx
    callq _mult2
    movq %rax, (%rbx) 
    addq $8, %rsp
    popq %rbx
    popq %rbp
    retq