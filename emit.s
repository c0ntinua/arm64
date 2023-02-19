.align 2
.data
m: .word 0 
.text
.global _emit
_emit:
    stp      x29, x30, [sp, -16]!
    mov     x29, sp
    pointer .req X5
    accumulator .req X4
    mov accumulator, X0
    adrp pointer, m@PAGE
    add pointer,pointer,m@PAGEOFF

    str accumulator, [pointer]
    mov X0, 0x1 ; stdin
    mov X1, pointer 
    mov X2, 0x1 ; len
    mov X16, 0x4; write
    svc 0
    ldp      x29, x30, [sp], #16
    ret

