MAIN:	addi 	$a0, $zero, 5
	jal	FACT
	j	END


FACT:	beqz	$a0, FACT0

	addi	$sp, $sp, -8
	sw	$a0, 4($sp)
	sw	$ra, 0($sp)

	addi	$a0, $a0, -1

	jal	FACT

	lw	$a0, 4($sp)
	lw	$ra, 0($sp)
	addi	$sp, $sp, 8

	mul	$v0, $v0, $a0
	jr	$ra

FACT0:	addi	$v0, $zero, 1
	jr	$ra


END:	nop
