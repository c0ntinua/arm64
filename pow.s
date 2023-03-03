.align 2
.text
.global _ppow
_ppow:
    stp x29, x30, [sp, -16]!
    mov x29, sp
    base .req x9
    exponent .req x10
    product .req x11
    mov base, x0
    mov exponent, x1
    mov product, 1
check:
    cmp exponent, 0
    beq done
    mul product, product, base
    sub exponent, exponent, 1  
    b check
done:
    mov x0, product
    ldp      x29, x30, [sp], #16
    ret

