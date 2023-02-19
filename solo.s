    .align 2
    .data
    .global _main
.text
;_function_template:
;    stp      x29, x30, [sp, #-16]!
;    mov     x29, sp
;    ;stuff
;    ldp      x29, x30, [sp], #16
;    ret

_main:
    stp      x29, x30, [sp, #-16]!
    mov     x29, sp
    ldr x0,=0x7FFFFFFFFFFFFFFF
    ;movz     x0,0b1111111111111111
    ;movz    x0, 0b1000000000000000
    ;eon x0,x0,x0
    bl _count_down
    ;bl _print_binary
    ;mov     x0,10
    ;bl _emit
    ;mov     x0,3
    ;bl _print_binary
    ;mov     x0,10
    ;bl _emit
    ldp      x29, x30, [sp], #16
    ret


_count_down:
    stp     x29, x30, [sp, #-16]!
    mov     x29, sp
    counter .req x3 ;seg fault if choose nonvolatile register
    mov counter,x0
while:
    cmp counter,0
    blt  done
    mov X0,counter
    bl  _print_binary
not_done:
    sub  counter,counter,1
    b       while
done:
    ldp      x29, x30, [sp], #16
    ret

  
