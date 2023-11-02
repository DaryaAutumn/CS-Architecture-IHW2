# 18 variant, calculating square root 
.include "macros.asm"
.global main
	.text
	main:
	print_str("Input positive number to get a square root:")
	endl
	input_float(ft0)
	
	fmv.d fa0 ft0
	jal check
	
	mv t0 a0 # check result in t0
	
	li a1 1
	beq t0 a1 check_successful
	j check_wrong # if number less than zero
	
	check_successful:
	
	# load parameters
	# number
	fmv.d fa0 ft0
	# accuracy
	li a0 5
	fcvt.d.w fa1 a0
	li a1 1000000000
	fcvt.d.w fa2 a1
	fdiv.d fa1 fa1 fa2
	
	# calculate square root 
	jal square_root
	
	print_str("Sqaure root:")
	endl
	print_float(fa0)
	j exit_programm
	
	check_wrong: 
	print_str("Oops! You've entered a negative number, try again!")
	
	exit_programm:
	endl
	
	finish_programm

