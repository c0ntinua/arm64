.align 2
.text
.global _pow
_pow:
    stp x29, x30, [sp, -16]!
    mov x29, sp
    base .req x9
    exponent .req x10
    product .req x11
    mov base, x0
    mov exponent, x1
    move product, 1
check:
    cmp power, 0
    beq done
    mul product, product, base  
    b check
done:
    mov x0, product
    ldp      x29, x30, [sp], #16
    ret

