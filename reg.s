
.global _value_of_register
.global _mark_registers
.align 2
.data
reg: .space 248, 0
m: .skip 16
n: .skip 16
.text


_value_of_register:
try0: 
    cmp w0,0
    bne try1
    mov w0,w0
    b done
try1:
    cmp w0,1
    bne try2
    mov w0,w1
    b done
try2:
    cmp w0,2
    bne try3
    mov w0,w2
    b done
try3:
    cmp w0,3
    bne try4
    mov w0,w3
    b done
try4:
    cmp w0,4
    bne try5
    mov w0,w4
    b done
try5:
    cmp w0,5
    bne try6
    mov w0,w5
    b done
try6:
    cmp w0,6
    bne try7
    mov w0,w6
    b done
try7:
    cmp w0,7
    ;bne try1
    mov w0,w7
    b done
done:
    ret


_mark_registers:
    mov w0,0
    mov w1,1
    mov w2,2
    mov w3,3
    mov w4,4
    mov w5,5
    mov w6,6
    mov w7,7
    ret


.macro reg_value reg
mov x0, \reg
.endmacro


