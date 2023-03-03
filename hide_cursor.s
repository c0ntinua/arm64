.align 2
.global _hide_cursor
.text
_hide_cursor:
    stp      x29, x30, [sp, #-16]!
    mov     x29, sp
    ;stuff
    pointer .req x9
    adrp pointer, code@PAGE
    add pointer,pointer,code@PAGEOFF
    mov X0, 0x1 ; stdin
    mov X1, pointer
    mov X2, 0x6 ; len
    mov X16, 0x4; write
    svc 0
    ldp      x29, x30, [sp], #16
    ret
    ldp      x29, x30, [sp], #16
    ret
.data
code: .ascii "\x1b[?25l"
