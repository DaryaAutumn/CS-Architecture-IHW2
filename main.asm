# 18 variant, calculating square root 
.include "macros.asm"
.global main
	.text
	main:
	print_str("Input positive number to get a square root:")
	endl
	input_float(ft0)
	
	fmv.s fa0 ft0
	jal check
	
	mv t0 a0 # check result in t0
	
	li a1 1
	beq t0 a1 check_successful
	j check_wrong # if number less than zero
	
	check_successful:
	
	# load parameters
	# number
	fmv.s fa0 ft0
	# accuracy
	li a0 5
	fcvt.s.w fa1 a0
	li a1 100
	fcvt.s.w fa2 a1
	fdiv.s fa1 fa1 fa2
	
	# calculate square root 
	jal square_root
	
	print_str("Sqaure root:")
	endl
	print_float(fa0)
	j exit_programm
	
	check_wrong: 
	print_str("Oops! You've entered negative number, try again!")
	
	exit_programm:
	endl
	li a7 10 
	ecall

