read_int:
	ini r5
	ini r6
	sll r6,r6,$8
	or r5,r5,r6
	ini r6
	sll r6,r6,$16
	or r5,r5,r6
	ini r6
	sll r6,r6,$24
	or r5,r5,r6
	ret

read_float:
	inf r5
	inf r6
	sll r6,r6,$8
	or r5,r5,r6
	inf r6
	sll r6,r6,$16
	or r5,r5,r6
	inf r6
	sll r6,r6,$24
	or r5,r5,r6
	rtof f5,r5
	ret

print_char:
	out r10
	ret



float_of_int:
	rtof f1,r10
	itof f5,f1
	ret

int_of_float:
	ftoi f1,f10
	ftor r5,f1
	ret

sqrt:
	fsqrt f5,f10
	ret



	inf r10
	jal print_char 
	inf r10
	jal print_char 
	inf r10
	jal print_char 
	inf r10
	jal print_char 
	hlt

main:
	jal read_float
	fmov f10,f5
	fmovi f5,$20.0
	fadd f10,f10,f5
	jal int_of_float
	mov r10,r5
	jal print_char
	li r10,$10
	jal print_char
	hlt




