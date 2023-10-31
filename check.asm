.include "macros.asm"
.global check
.text
check: 	# fa0 - input parameter, number to check
	# a0 - output parameter 1 (true) or 0 (false)
	# checking is to make sure floating number is positive 
	# and it is possible to find square root in real numbers
	
	start_subprogramm
	
	fmv.s ft0 fa0
	
	li a1 0
  	fcvt.s.w fa1 a1
	
	fge.s a0 ft0 fa1
	
	finish_subprogramm
	
