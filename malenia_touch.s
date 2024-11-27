@ malenia_touch.s

/* function to figure out if tarnished/player is touching malenia/end goal */

.global malenia_touch
malenia_touch:
    cmp r0, r1 // if touching one of base tiles of goal
    beq .yes
    cmp r0, r2 // if touching other base tile
    beq .yes
.no:
    mov r0, #0
    mov pc, lr
.yes:
    mov r0, #1
    mov pc, lr    
