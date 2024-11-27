@ malenia_pos.s

/* function to help make Malenia (end goal) "move" by ID'ing what position she's in */

.global malenia_pos
malenia_pos:
    mov r1, #
    cmp r0, r1
    beq .down
    cmp r0, r1
    blt .not
    mov r0, #1
    mov pc, lr
.down:
    mov r0, #0
    mov pc, lr
.not:
    mov r0, #2
    mov pc, lr
