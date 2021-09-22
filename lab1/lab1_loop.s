.data
str:        .string      "VE370"

.text
lw x1 str
lui x1 0x10000
addi x1 x1 0x000
lui x10 0x10000
addi x10 x10 0x100
Loop:
beq x1 x10 Exit
lw x22 0(x1)
addi x1 x1 4
sw x22, 0(x1)
beq x1 x1 Loop
Exit:
sw x22, 0(x1)