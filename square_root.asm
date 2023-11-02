.include "macros.asm"
.global square_root
.text 
square_root: 	# input parameter (number) - in fa0
	# input parameter (accuracy in percents) - in fa1
	# output parameter (square root) - in fa0
	# uses Geron formula - x_(n+1) = 0.5(x_n + (a/x_n))
	
	start_subprogramm
	
	# move input parameters
	fmv.d ft0 fa0 
	fmv.d ft1 fa1
	
	li a0 0
	fcvt.d.w fa0 a0
	feq.d a0 ft0 fa0
	li a1 1
	beq a0 a1 zero_root
	
	# get approximate start value (number / 3)
	li a0 3
	fcvt.d.w fa0 a0
	fdiv.d ft2 ft0 fa0
	# start value - ft2
	
	li a0 1
	fcvt.d.w fa0 a0
	li a1 2
	fcvt.d.w fa1 a1
	fdiv.d ft3 fa0 fa1 
	# 1/2 - ft3
	
	loop:
	# calculating x_(n+1) in fa0
	fdiv.d fa0 ft0 ft2 # a/x_n
	fadd.d fa0 fa0 ft2 # x_n + (a/x_n)
	fmul.d fa0 fa0 ft3 # 0.5(x_n + (a/x_n))
	
	# get accuracy - fa1
	fsub.d fa1 ft2 fa0
	fdiv.d fa1 fa1 ft0
	li a0 100
	fcvt.d.w fa2 a0
	fmul.d fa1 fa1 fa2
	
	#if accuracy positive (a0)
	li a2 0
  	fcvt.d.w fa2 a2
  	fge.d a0 fa1 fa2
  	
  	beq a0 a2 negative_accuracy
  	jal end_accuracy
  	
  	negative_accuracy:
	li a2 -1
	fcvt.d.w fa2 a2
	fmul.d fa1 fa1 fa2
	
	end_accuracy:
	  
	#move new value
	fmv.d ft2 fa0
	
	fle.d a0 fa1 ft1 
	li a1 0
	beq a0 a1 loop
	#end loop
	
	
	# move output parameter
	fmv.d fa0 ft2
	j end_root
	
	zero_root:
	# answer is 0
	fmv.d fa0 ft0
	
	end_root:
	finish_subprogramm
