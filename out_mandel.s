
print_char:
	hlt

print_int:
	hlt
	
fless:
	hlt
	
float_of_int:
	lw r5,r1,$0
	itof f0,r5
	fst f0,r1,$-4
	lw r5,r1,$-4
	ret

@a_132dbl:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$4
	fld f0,r2,$8
	fld f1,r2,$8
	fadd f0,f0,f1
	fst f0,r2,$-4
; ./test/mandelblot_edit.ml@1:28;1:34 ::= Ofadd ./test/mandelblot_edit.ml@1:28;1:29 ./test/mandelblot_edit.ml@1:33;1:34
	lw r5,r2,$-4
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
@a_160iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$68
	li r5,$0
	sw r5,r2,$-64
; ./test/mandelblot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-64
	bne r5,r6,@virtual_label_258
	li r5,$1
	sw r5,r2,$-60
; ./test/mandelblot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-60
	push r5
	jal print_int
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@12:18;20:51 ./test/mandelblot_edit.ml@12:32;12:41
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@virtual_label_258:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f0,r2,$-56
; ./test/mandelblot_edit.ml@13:27;13:37 ::= Ofsub ./test/mandelblot_edit.ml@13:27;13:30 ./test/mandelblot_edit.ml@13:34;13:37
	fld f0,r2,$-56
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f0,r2,$-16
; ./test/mandelblot_edit.ml@13:27;13:43 ::= Ofadd ./test/mandelblot_edit.ml@13:27;13:37 ./test/mandelblot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$12
	push r5
	jal @a_132dbl
	sw r5,r2,$-52
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@14:27;14:33 ./test/mandelblot_edit.ml@14:27;14:30
	fld f0,r2,$-52
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f0,r2,$-48
; ./test/mandelblot_edit.ml@14:27;14:39 ::= Ofmul ./test/mandelblot_edit.ml@14:27;14:33 ./test/mandelblot_edit.ml@14:37;14:39
	fld f0,r2,$-48
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f0,r2,$-12
; ./test/mandelblot_edit.ml@14:27;14:45 ::= Ofadd ./test/mandelblot_edit.ml@14:27;14:39 ./test/mandelblot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f0,r2,$-8
; ./test/mandelblot_edit.ml@17:28;17:36 ::= Ofmul ./test/mandelblot_edit.ml@17:28;17:30 ./test/mandelblot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f0,r2,$-4
; ./test/mandelblot_edit.ml@18:28;18:36 ::= Ofmul ./test/mandelblot_edit.ml@18:28;18:30 ./test/mandelblot_edit.ml@18:34;18:36
	fmovi f0,$4.000000
	fst f0,r2,$-44
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f0,r2,$-40
; ./test/mandelblot_edit.ml@19:41;19:51 ::= Ofadd ./test/mandelblot_edit.ml@19:41;19:44 ./test/mandelblot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-40
	push r5
	lw r5,r2,$-44
	push r5
	jal fless
	sw r5,r2,$-36
	addi r1,r1,$8
	pop r4
; ./test/mandelblot_edit.ml@19:21;19:52 ./test/mandelblot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-32
; ./test/mandelblot_edit.ml@19:21;19:52
	lw r5,r2,$-36
	lw r6,r2,$-32
	bne r5,r6,@virtual_label_260
	li r5,$0
	sw r5,r2,$-28
; ./test/mandelblot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-28
	push r5
	jal print_int
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@12:18;20:51 ./test/mandelblot_edit.ml@19:58;19:67
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@virtual_label_260:
	li r5,$1
	sw r5,r2,$-24
; ./test/mandelblot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-20
; ./test/mandelblot_edit.ml@20:25;20:30 ::= Osub ./test/mandelblot_edit.ml@20:25;20:26 ./test/mandelblot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_160iloop
	sw r5,r2,$-68
	addi r1,r1,$28
	pop r4
; ./test/mandelblot_edit.ml@12:18;20:51 ./test/mandelblot_edit.ml@20:18;20:23
@virtual_label_261:
@virtual_label_259:
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@a_140xloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$100
	li r5,$40
	sw r5,r2,$-96
; ./test/mandelblot_edit.ml@8:24;8:26
	lw r6,r2,$-96
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-92
; ./test/mandelblot_edit.ml@8:19;8:26 ::= Ogeq ./test/mandelblot_edit.ml@8:19;8:20 ./test/mandelblot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-88
; ./test/mandelblot_edit.ml@8:19;8:26
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@virtual_label_256
	sw r3,r2,$-100
	addi r5,r5,$0
; ./test/mandelblot_edit.ml@8:16;40:31
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@virtual_label_256:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-84
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@9:30;9:44 ./test/mandelblot_edit.ml@9:30;9:42
	push r4
	lw r5,r2,$-84
	push r5
	jal @a_132dbl
	sw r5,r2,$-80
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@9:25;9:45 ./test/mandelblot_edit.ml@9:25;9:28
	fmovi f0,$40.000000
	fst f0,r2,$-76
	fld f0,r2,$-80
	fld f1,r2,$-76
	fdiv f0,f0,f1
	fst f0,r2,$-72
; ./test/mandelblot_edit.ml@9:25;9:53 ::= Ofdiv ./test/mandelblot_edit.ml@9:25;9:45 ./test/mandelblot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-68
	fld f0,r2,$-72
	fld f1,r2,$-68
	fsub f0,f0,f1
	fst f0,r2,$-24
; ./test/mandelblot_edit.ml@9:25;9:60 ::= Ofsub ./test/mandelblot_edit.ml@9:25;9:53 ./test/mandelblot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@10:30;10:44 ./test/mandelblot_edit.ml@10:30;10:42
	push r4
	lw r5,r2,$-64
	push r5
	jal @a_132dbl
	sw r5,r2,$-60
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@10:25;10:45 ./test/mandelblot_edit.ml@10:25;10:28
	fmovi f0,$40.000000
	fst f0,r2,$-56
	fld f0,r2,$-60
	fld f1,r2,$-56
	fdiv f0,f0,f1
	fst f0,r2,$-52
; ./test/mandelblot_edit.ml@10:25;10:53 ::= Ofdiv ./test/mandelblot_edit.ml@10:25;10:45 ./test/mandelblot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-48
	fld f0,r2,$-52
	fld f1,r2,$-48
	fsub f0,f0,f1
	fst f0,r2,$-20
; ./test/mandelblot_edit.ml@10:25;10:60 ::= Ofsub ./test/mandelblot_edit.ml@10:25;10:53 ./test/mandelblot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-44
; ./test/mandelblot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-40
	fmovi f0,$0.000000
	fst f0,r2,$-36
	fmovi f0,$0.000000
	fst f0,r2,$-32
	fmovi f0,$0.000000
	fst f0,r2,$-28
	push r4
	lw r5,r2,$-20
	push r5
	lw r5,r2,$-24
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	lw r5,r2,$-44
	push r5
	jal @a_160iloop
	sw r5,r2,$-8
	addi r1,r1,$28
	pop r4
; ./test/mandelblot_edit.ml@21:16;21:48 ./test/mandelblot_edit.ml@21:16;21:21
	li r5,$1
	sw r5,r2,$-16
; ./test/mandelblot_edit.ml@40:27;40:28
	lw r6,r2,$-16
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-12
; ./test/mandelblot_edit.ml@40:23;40:28 ::= Oadd ./test/mandelblot_edit.ml@40:23;40:24 ./test/mandelblot_edit.ml@40:27;40:28
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_140xloop
	sw r5,r2,$-4
	addi r1,r1,$8
	pop r4
; ./test/mandelblot_edit.ml@40:16;40:31 ./test/mandelblot_edit.ml@40:16;40:21
	lw r5,r2,$-4
	sw r5,r2,$-100
; ./test/mandelblot_edit.ml@8:16;40:31 ::<= ./test/mandelblot_edit.ml@40:16;40:31
@virtual_label_257:
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@a_134yloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$48
	li r5,$40
	sw r5,r2,$-44
; ./test/mandelblot_edit.ml@5:22;5:24
	lw r6,r2,$-44
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-40
; ./test/mandelblot_edit.ml@5:17;5:24 ::= Ogeq ./test/mandelblot_edit.ml@5:17;5:18 ./test/mandelblot_edit.ml@5:22;5:24
	li r5,$1
	sw r5,r2,$-36
; ./test/mandelblot_edit.ml@5:17;5:24
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@virtual_label_254
	sw r3,r2,$-48
	addi r5,r5,$0
; ./test/mandelblot_edit.ml@5:14;44:27
	lw r5,r2,$-48
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@virtual_label_254:
	li r5,$0
	sw r5,r2,$-32
; ./test/mandelblot_edit.ml@41:20;41:21
	push r4
	lw r5,r2,$8
	push r5
	lw r5,r2,$-32
	push r5
	jal @a_140xloop
	sw r5,r2,$-8
	addi r1,r1,$8
	pop r4
; ./test/mandelblot_edit.ml@41:14;41:23 ./test/mandelblot_edit.ml@41:14;41:19
	li r5,$10
	sw r5,r2,$-28
; ./test/mandelblot_edit.ml@42:15;42:17
	push r4
	lw r5,r2,$-28
	push r5
	jal print_char
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@42:4;42:17 ./test/mandelblot_edit.ml@42:4;42:14
	li r5,$1
	sw r5,r2,$-24
; ./test/mandelblot_edit.ml@44:25;44:26
	lw r6,r2,$-24
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-20
; ./test/mandelblot_edit.ml@44:21;44:26 ::= Oadd ./test/mandelblot_edit.ml@44:21;44:22 ./test/mandelblot_edit.ml@44:25;44:26
	push r4
	lw r5,r2,$-20
	push r5
	jal @a_134yloop
	sw r5,r2,$-12
	addi r1,r1,$4
	pop r4
; ./test/mandelblot_edit.ml@44:14;44:27 ./test/mandelblot_edit.ml@44:14;44:19
	lw r5,r2,$-12
	sw r5,r2,$-4
; ./test/mandelblot_edit.ml@42:4;44:27 ::<= ./test/mandelblot_edit.ml@44:14;44:27
	lw r5,r2,$-4
	sw r5,r2,$-48
; ./test/mandelblot_edit.ml@5:14;44:27 ::<= ./test/mandelblot_edit.ml@42:4;44:27
@virtual_label_255:
	lw r5,r2,$-48
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
main:
	mflr r7
	push r7
	mov r31,r3
	addi r3,r3,$4
	push r2
	mov r2,r1
	subi r1,r1,$4
	li r5,$0
	sw r5,r31,$0
; ./test/mandelblot_edit.ml@45:18;45:19
	push r4
	lw r5,r31,$0
	push r5
	jal @a_134yloop
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; @0:-1;0:-1 ./test/mandelblot_edit.ml@45:12;45:17
	li r5,$0
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
