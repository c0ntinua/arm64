    .align 2
    .data
d:  .double 5
    .global _main
    .text
_main:
    mov X9,10
loop:
    
    cmp X9,0
    beq fin
    adrp X1, d@PAGE
    mov X4,X9
    add X4, X4,0x2F
    str X4, [X1]
    //sys call write
    mov X0, #1
    mov X2, #1
    mov X16, #4
    svc 0
    sub X9,X9,#1
    b loop
fin:
    ret
