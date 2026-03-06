addi x1, x0, 10
addi x2, x0, 20
blt  x1, x2, less
addi x3, x0, 0
jal  x0, end

less:
addi x3, x0, 1

end:
nop