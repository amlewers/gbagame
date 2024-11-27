
@ apply_gravity.s

/* just redoing gravity in assembly */

.global apply_gravity
apply_gravity:
    sub sp, sp, #4
    str r4, [sp, #0]
    mov r4, #1
    cmp r1, r4
    bne .done
    mov r2, r2, asr #8
    add r0, r0, r2
        
.done:
    ldr r4, [sp, #0]
    add sp, sp, #4
    mov pc, lr
