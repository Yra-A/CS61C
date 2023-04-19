.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0) # a0 = n;
    jal ra, factorial 

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    li t0, 1
    add t1, x0, a0
loop:
    beq t1, x0, end
    mul t0, t0, t1
    addi t1, t1, -1
    j loop
end:
    add a0, x0, t0
    jr ra
