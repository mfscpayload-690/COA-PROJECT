.data
array: .word 10, 25, 30, 45, 50
n:     .word 5
key:   .word 30

.text
.globl main

main:
    la t0, array
    la t6, n
    lw t1, 0(t6)

    la t6, key
    lw t2, 0(t6)

    li t3, 0

loop:
    bge t3, t1, not_found
    slli t4, t3, 2
    add t4, t0, t4
    lw t5, 0(t4)
    beq t5, t2, found
    addi t3, t3, 1
    j loop

found:
    nop
    j end

not_found:
    nop

end:
    nop