.data
str:        .string      "VE370"

.text
lw x1 str
lui x1 0x10000
lui x10 0x10000
addi x10 x10 0x100
lw x22 0(x1)
sw x22, 0(x10)