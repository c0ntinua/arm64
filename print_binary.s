    .align 2
    .global _print_binary
    .text
    _print_binary:
    stp      x29, x30, [sp, #-16]!
    mov     x29, sp
    arg .req X9
    mask .req X10
    counter .req X11
    result .req X12
    one .req X13	
    mov arg,x0
    mov counter,#63
    scan_start:
    cmp counter,#0
    blt scan_stop
    lsl mask,one,counter
    and result, arg,mask
    lsr result,result,counter
    mov x0, result
    bl _print_decimal_digit
    sub counter,counter,#1
    b scan_start
    scan_stop:
    mov x0,0x0D
    bl _emit
    ldp      x29, x30, [sp], #16
    ret
