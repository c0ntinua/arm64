.align 2
.data
.global _function_name
.text
_function_template:
    stp      x29, x30, [sp, #-16]!
    mov     x29, sp
    ;stuff
    ldp      x29, x30, [sp], #16
    ret
