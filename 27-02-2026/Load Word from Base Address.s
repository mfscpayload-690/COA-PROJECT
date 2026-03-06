addi x1, x0, 5       # x1 = 5
addi x2, x0, 100     # x2 = base address (100)
sw   x1, 0(x2)       # store x1 at memory[x2]
lw   x3, 0(x2)       # load memory[x2] into x3
