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
	li a7 6
	ecall
	fmv.s %register fa0
.end_macro

.macro print_float(%register)
	fmv.s fa0 %register
	li a7 2
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
