.align 2
.global _print_block
.text
_print_block:
    stp      x29, x30, [sp, #-16]!
    mov     x29, sp
    ;pointer .req x9
    ;adrp pointer, block@PAGE
    ;add pointer,pointer,block@PAGEOFF
    ;mov X0, 0x1 ; stdin
    ;mov X1, pointer
    ;mov X2, 0x3 ; len
    ;mov X16, 0x4; write
    ;svc 0
    mov x0, 0xE2
    bl _emit
    mov x0, 0x96
    bl _emit
    mov x0, 0x88
    bl _emit
    ldp      x29, x30, [sp], #16
    ret
;.data
;block: .ascii "\xE2\x96\x88" 
