addi x1, x0, 5       # N
addi x2, x0, 0       # sum = 0

loop:
add  x2, x2, x1      # sum += N
addi x1, x1, -1      # N--
bne  x1, x0, loop