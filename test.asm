.include "macros.asm"
.global test
test:	
	# accuracy for all testing data
	li a0 5
	fcvt.d.w fa1 a0
	li a1 10000000
	fcvt.d.w fa2 a1
	fdiv.d fa1 fa1 fa2
	
	
	
	# 1 test
	print_str("Testing number: ")
	
	# load parameter to a0
	li a0 25
	fcvt.d.w fa0 a0
	print_float(fa0)
	endl
	
	jal square_root
	
	print_str("Square root: ")
	print_float(fa0)
	endl
	
	
	# 2 test
	print_str("Testing number: ")
	
	# load parameter to a0
	li a0 10000
	fcvt.d.w fa0 a0
	print_float(fa0)
	endl
	
	jal square_root
	
	print_str("Square root: ")
	print_float(fa0)
	endl
	
	
	
	# 3 test
	print_str("Testing number: ")
	
	# load parameter to a0
	li a0 2
	fcvt.d.w fa0 a0
	print_float(fa0)
	endl
	
	jal square_root
	
	print_str("Square root: ")
	print_float(fa0)
	endl
	
	
	# 4 test
	print_str("Testing number: ")
	
	# load parameter to a0
	li a0 1
	fcvt.d.w fa0 a0
	print_float(fa0)
	endl
	
	jal square_root
	
	print_str("Square root: ")
	print_float(fa0)
	endl
	
	
	finish_programm
	
	

	
	