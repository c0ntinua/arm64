.data
d:  .double 5
.text
.global _print_decimal_digit
_print_decimal_digit:
    stp      x29, x30, [sp, #-16]!
    mov     x29, sp
    ;store x0 + 0x30 at d
    pointer .req X5
    accumulator .req X4
    mov accumulator, X0
    add accumulator, accumulator, 0x30
    adrp pointer, d@PAGE
    add pointer,pointer,d@PAGEOFF
    str accumulator, [pointer]
    ;prepare for syscall
    mov X0, 0x1 ; stdin
    mov X1, pointer 
    mov X2, 0x1 ; len
    mov X16, 0x4; write
    svc 0
    ;pop stack
    ldp      x29, x30, [sp], #16
    ret