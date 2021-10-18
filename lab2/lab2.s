.data
size: .word 40
array: .word 47	40 4 48 0 0 21 26 0	-18 26 0 0 -46 27 32 -45 -19 0 41 0	14 -21 28 -37 0 38 21 0	-18 0 0 0 -12 18 -39 -29 26 0 -1

.text
#x1: return address of countArray
#x10: i
#x11: the size of the array
#x12: the address of the array
#x13: PosCnt
#x14: NegCnt
#x15: ZeroCnt
#x16: Sum
#x18: temp reg for array[i]
#x19: const 1
#x20: const -1

jal x1 main

countArray:
    lw x18, (0)x12 #load the next element of array
    #inside the for loop
    add x16, x16, x18 #sum the array
    jal x1, isPos
    jal x1, isNeg
    jal x1, isZero
     
    #for (i=0;i<size;i++)
    addi x12, x12, 4 #*arr points to * arr+1
    addi x10, x10, 1 #i++
    bne x10, x11, countArray
    jalr x0 x1 0
    
isPos:
    bge x0, x18, return
    addi x13, x13, 1
    
isNeg:
    bge x18, x0, return
    addi x14, x14, 1

    
isZero:
    bne x18, x0, return
    addi x15, x15, 1

return:
    jalr x0, x1(0)
    
main:
#initialize
addi x10,x10,0 #x10=i=for loop index
lw x11, size #x11=size=40
lui x12, %hi(array) #x12=*arr
addi x12, x12, %lo(array)
addi x13,x13,0 #x13=PosCnt=0
addi x14,x14,0 #x14=NegCnt=0
addi x15,x15,0 #x15=ZeroCnt=0
addi x19, x19, 1 #Define POSCOUNT 1
addi x20, x20, -1 #Define NEGCOUNT 1
jal x1, countArray 

    
