
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
    add s0, zero, zero
    add t1 , zero , zero
loop:
    beq t1 , a2 ,done
    slli t2 , t1 , 2
    add t2 , t2, a0
    lw t3 , 0(t2)
    bne t3, a2 , else
    add s0 , t2 , zero
else: 
    addi t1 ,t1 , 1
    j loop

# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall
