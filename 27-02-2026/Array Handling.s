addi x1, x0, 0       # i = 0
addi x2, x0, 0       # sum = 0
addi x3, x0, 200     # base address of array
addi x4, x0, 5       # size of array

loop:
lw   x5, 0(x3)       # load A[i]
add  x2, x2, x5      # sum += A[i]
addi x3, x3, 4       # move to next element
addi x1, x1, 1       # i++
blt  x1, x4, loop