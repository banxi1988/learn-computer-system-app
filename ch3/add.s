# 两整数想加，返回和
# @signature: int (int a,int b)
# @body: return a + b
# @param a - %edi 
# @param b - %esi
# @return 返回两数想加和 - %eax
.global _add
_add:
    pushq %rbp  # 保存老的基址指针(即将 rbp 寄存器的值压入当前栈顶)
    movq %rsp, %rbp # 将当前栈指针作为新的基址指针
    movl %edi, -4(%rbp)
    movl %esi, -8(%rbp)
    movl -4(%rbp), %esi
    addl -8(%rbp), %esi
    movl %esi, %eax
    popq %rbp # 将栈顶保存的老的基址指针恢复到 rbp 寄存器
    retq