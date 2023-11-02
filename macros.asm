.macro print_str (%string)
   	.data
	str:  	.asciz %string
   	.text
   	li a7 4
   	la a0 str
   	ecall
.end_macro

.macro endl
   	print_str("\n")
.end_macro

.macro input_float(%register)
	li a7 7
	ecall
	fmv.d %register fa0
.end_macro

.macro print_float(%register)
	fmv.d fa0 %register
	li a7 3
	ecall
.end_macro

.macro start_subprogramm
	addi sp sp -4
 	sw ra (sp)
.end_macro

.macro finish_subprogramm
	lw ra (sp)
      	addi sp sp 4
 	ret
.end_macro

.macro finish_programm
	li a7 10 
	ecall
.end_macro
