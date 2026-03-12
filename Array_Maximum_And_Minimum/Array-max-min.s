.data
array: .word 29,10,14,37,13
n:     .word 5

.text
.globl main

main:
    la t0, array
    lw t1, n
    lw t2, 0(t0)
    lw t3, 0(t0)
    li t4, 1

loop:
    bge t4, t1, end
    slli t5, t4, 2
    add t5, t0, t5
    lw t6, 0(t5)

    bgt t6, t2, update_max

check_min:
    blt t6, t3, update_min
    j next

update_max:
    mv t2, t6
    j check_min

update_min:
    mv t3, t6

next:
    addi t4, t4, 1
    j loop

end:
    nop