
print_char:
	hlt

print_int:
	hlt

fless:
	hlt

float_of_int:
	lw r5,r2,$0
	itof f0,r5
	fst f0,r2,$-4
	lw r5,r2,$-4
	ret

@a_129dbl:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$4
	fld f0,r2,$8
	fld f1,r2,$8
	fadd f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@1:28;1:34 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	lw r5,r2,$-4
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1921
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1922
@label_1921:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1923
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1924
@label_1923:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1925
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1926
@label_1925:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1927
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1928
@label_1927:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1929
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1930
@label_1929:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1931
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1932
@label_1931:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1933
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1934
@label_1933:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-72
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-68
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1935
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1936
@label_1935:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1936:
@label_1934:
@label_1932:
@label_1930:
@label_1928:
@label_1926:
@label_1924:
@label_1922:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_440@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1905
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1906
@label_1905:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1907
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1908
@label_1907:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1909
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1910
@label_1909:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1911
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1912
@label_1911:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1913
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1914
@label_1913:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1915
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1916
@label_1915:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1917
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1918
@label_1917:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-72
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-68
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1919
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1920
@label_1919:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_440@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1920:
@label_1918:
@label_1916:
@label_1914:
@label_1912:
@label_1910:
@label_1908:
@label_1906:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_137xloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$628
	li r5,$80
	sw r5,r2,$-624
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-624
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-620
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-616
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-620
	lw r6,r2,$-616
	bne r5,r6,@label_1877
	sw r3,r2,$-628
	addi r5,r5,$0
; ../mandelbrot_edit.ml@8:16;40:31
	j @label_1878
@label_1877:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-612
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-612
	fld f1,r2,$-612
	fadd f0,f0,f1
	fst f1,r2,$-608
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-604
	fld f0,r2,$-608
	fld f1,r2,$-604
	fdiv f0,f0,f1
	fst f1,r2,$-600
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-596
	fld f0,r2,$-600
	fld f1,r2,$-596
	fsub f0,f0,f1
	fst f1,r2,$-336
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-592
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-592
	fld f1,r2,$-592
	fadd f0,f0,f1
	fst f1,r2,$-588
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-584
	fld f0,r2,$-588
	fld f1,r2,$-584
	fdiv f0,f0,f1
	fst f1,r2,$-580
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-576
	fld f0,r2,$-580
	fld f1,r2,$-576
	fsub f0,f0,f1
	fst f1,r2,$-332
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-508
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-552
	fmovi f0,$0.000000
	fst f0,r2,$-544
	fmovi f0,$0.000000
	fst f0,r2,$-564
	fmovi f0,$0.000000
	fst f0,r2,$-560
	li r5,$0
	sw r5,r2,$-572
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-508
	lw r6,r2,$-572
	bne r5,r6,@label_1893
	li r5,$1
	sw r5,r2,$-568
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-568
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1894
@label_1893:
	fld f0,r2,$-564
	fld f1,r2,$-560
	fsub f0,f0,f1
	fst f1,r2,$-556
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-556
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-480
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-552
	fld f1,r2,$-552
	fadd f0,f0,f1
	fst f1,r2,$-548
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-548
	fld f1,r2,$-544
	fmul f0,f0,f1
	fst f1,r2,$-540
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-540
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-472
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-480
	fld f1,r2,$-480
	fmul f0,f0,f1
	fst f1,r2,$-492
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-472
	fld f1,r2,$-472
	fmul f0,f0,f1
	fst f1,r2,$-488
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-492
	fld f1,r2,$-488
	fadd f0,f0,f1
	fst f1,r2,$-528
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-536
	fmovi f0,$2.000000
	fst f0,r2,$-532
	fld f0,r2,$-536
	fld f1,r2,$-532
	fmul f0,f0,f1
	fst f1,r2,$-524
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-524
	push r5
	lw r5,r2,$-528
	push r5
	jal fless
	sw r5,r2,$-520
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-516
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-520
	lw r6,r2,$-516
	bne r5,r6,@label_1895
	li r5,$0
	sw r5,r2,$-512
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-512
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1896
@label_1895:
	li r5,$1
	sw r5,r2,$-504
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-504
	lw r5,r2,$-508
	sub r5,r5,r6
	sw r5,r2,$-436
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-500
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-436
	lw r6,r2,$-500
	bne r5,r6,@label_1897
	li r5,$1
	sw r5,r2,$-496
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-496
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1898
@label_1897:
	fld f0,r2,$-492
	fld f1,r2,$-488
	fsub f0,f0,f1
	fst f1,r2,$-484
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-484
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-408
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-480
	fld f1,r2,$-480
	fadd f0,f0,f1
	fst f1,r2,$-476
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-476
	fld f1,r2,$-472
	fmul f0,f0,f1
	fst f1,r2,$-468
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-468
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-400
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-408
	fld f1,r2,$-408
	fmul f0,f0,f1
	fst f1,r2,$-420
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-400
	fld f1,r2,$-400
	fmul f0,f0,f1
	fst f1,r2,$-416
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-420
	fld f1,r2,$-416
	fadd f0,f0,f1
	fst f1,r2,$-456
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-464
	fmovi f0,$2.000000
	fst f0,r2,$-460
	fld f0,r2,$-464
	fld f1,r2,$-460
	fmul f0,f0,f1
	fst f1,r2,$-452
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-452
	push r5
	lw r5,r2,$-456
	push r5
	jal fless
	sw r5,r2,$-448
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-444
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-448
	lw r6,r2,$-444
	bne r5,r6,@label_1899
	li r5,$0
	sw r5,r2,$-440
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-440
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1900
@label_1899:
	li r5,$1
	sw r5,r2,$-432
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-432
	lw r5,r2,$-436
	sub r5,r5,r6
	sw r5,r2,$-364
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-428
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-364
	lw r6,r2,$-428
	bne r5,r6,@label_1901
	li r5,$1
	sw r5,r2,$-424
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-424
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1902
@label_1901:
	fld f0,r2,$-420
	fld f1,r2,$-416
	fsub f0,f0,f1
	fst f1,r2,$-412
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-412
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-352
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-408
	fld f1,r2,$-408
	fadd f0,f0,f1
	fst f1,r2,$-404
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-404
	fld f1,r2,$-400
	fmul f0,f0,f1
	fst f1,r2,$-396
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-396
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-348
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-352
	fld f1,r2,$-352
	fmul f0,f0,f1
	fst f1,r2,$-344
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-348
	fld f1,r2,$-348
	fmul f0,f0,f1
	fst f1,r2,$-340
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-344
	fld f1,r2,$-340
	fadd f0,f0,f1
	fst f1,r2,$-384
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-392
	fmovi f0,$2.000000
	fst f0,r2,$-388
	fld f0,r2,$-392
	fld f1,r2,$-388
	fmul f0,f0,f1
	fst f1,r2,$-380
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-380
	push r5
	lw r5,r2,$-384
	push r5
	jal fless
	sw r5,r2,$-376
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-372
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-376
	lw r6,r2,$-372
	bne r5,r6,@label_1903
	li r5,$0
	sw r5,r2,$-368
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-368
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1904
@label_1903:
	li r5,$1
	sw r5,r2,$-360
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-360
	lw r5,r2,$-364
	sub r5,r5,r6
	sw r5,r2,$-356
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-332
	push r5
	lw r5,r2,$-336
	push r5
	lw r5,r2,$-340
	push r5
	lw r5,r2,$-344
	push r5
	lw r5,r2,$-348
	push r5
	lw r5,r2,$-352
	push r5
	lw r5,r2,$-356
	push r5
	jal @a_157iloop
	sw r5,r2,$-8
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1904:
@label_1902:
@label_1900:
@label_1898:
@label_1896:
@label_1894:
	li r5,$1
	sw r5,r2,$-328
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-328
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	li r5,$80
	sw r5,r2,$-324
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-324
	lw r5,r2,$-28
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-320
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-316
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-320
	lw r6,r2,$-316
	bne r5,r6,@label_1879
	sw r3,r2,$-4
	addi r5,r5,$0
; ../mandelbrot_edit.ml@40:16;40:31
	j @label_1880
@label_1879:
	push r4
	lw r5,r2,$-28
	push r5
	jal float_of_int
	sw r5,r2,$-312
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-312
	fld f1,r2,$-312
	fadd f0,f0,f1
	fst f1,r2,$-308
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-304
	fld f0,r2,$-308
	fld f1,r2,$-304
	fdiv f0,f0,f1
	fst f1,r2,$-300
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-296
	fld f0,r2,$-300
	fld f1,r2,$-296
	fsub f0,f0,f1
	fst f1,r2,$-36
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-292
	fld f1,r2,$-292
	fadd f0,f0,f1
	fst f1,r2,$-288
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-284
	fld f0,r2,$-288
	fld f1,r2,$-284
	fdiv f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-276
	fld f0,r2,$-280
	fld f1,r2,$-276
	fsub f0,f0,f1
	fst f1,r2,$-32
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-208
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-252
	fmovi f0,$0.000000
	fst f0,r2,$-244
	fmovi f0,$0.000000
	fst f0,r2,$-264
	fmovi f0,$0.000000
	fst f0,r2,$-260
	li r5,$0
	sw r5,r2,$-272
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-208
	lw r6,r2,$-272
	bne r5,r6,@label_1881
	li r5,$1
	sw r5,r2,$-268
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-268
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1882
@label_1881:
	fld f0,r2,$-264
	fld f1,r2,$-260
	fsub f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-256
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-180
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-252
	fld f1,r2,$-252
	fadd f0,f0,f1
	fst f1,r2,$-248
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-248
	fld f1,r2,$-244
	fmul f0,f0,f1
	fst f1,r2,$-240
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-240
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-172
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-180
	fld f1,r2,$-180
	fmul f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-172
	fld f1,r2,$-172
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-192
	fld f1,r2,$-188
	fadd f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-236
	fmovi f0,$2.000000
	fst f0,r2,$-232
	fld f0,r2,$-236
	fld f1,r2,$-232
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-224
	push r5
	lw r5,r2,$-228
	push r5
	jal fless
	sw r5,r2,$-220
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-216
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-220
	lw r6,r2,$-216
	bne r5,r6,@label_1883
	li r5,$0
	sw r5,r2,$-212
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-212
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1884
@label_1883:
	li r5,$1
	sw r5,r2,$-204
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-204
	lw r5,r2,$-208
	sub r5,r5,r6
	sw r5,r2,$-136
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-200
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-136
	lw r6,r2,$-200
	bne r5,r6,@label_1885
	li r5,$1
	sw r5,r2,$-196
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-196
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1886
@label_1885:
	fld f0,r2,$-192
	fld f1,r2,$-188
	fsub f0,f0,f1
	fst f1,r2,$-184
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-184
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-108
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-180
	fld f1,r2,$-180
	fadd f0,f0,f1
	fst f1,r2,$-176
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-176
	fld f1,r2,$-172
	fmul f0,f0,f1
	fst f1,r2,$-168
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-168
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-100
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-108
	fld f1,r2,$-108
	fmul f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-100
	fld f1,r2,$-100
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-120
	fld f1,r2,$-116
	fadd f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-164
	fmovi f0,$2.000000
	fst f0,r2,$-160
	fld f0,r2,$-164
	fld f1,r2,$-160
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-152
	push r5
	lw r5,r2,$-156
	push r5
	jal fless
	sw r5,r2,$-148
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-144
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@label_1887
	li r5,$0
	sw r5,r2,$-140
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-140
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1888
@label_1887:
	li r5,$1
	sw r5,r2,$-132
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-132
	lw r5,r2,$-136
	sub r5,r5,r6
	sw r5,r2,$-64
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-128
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-64
	lw r6,r2,$-128
	bne r5,r6,@label_1889
	li r5,$1
	sw r5,r2,$-124
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-124
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1890
@label_1889:
	fld f0,r2,$-120
	fld f1,r2,$-116
	fsub f0,f0,f1
	fst f1,r2,$-112
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-112
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-52
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-108
	fld f1,r2,$-108
	fadd f0,f0,f1
	fst f1,r2,$-104
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-104
	fld f1,r2,$-100
	fmul f0,f0,f1
	fst f1,r2,$-96
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-96
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-52
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-48
	fld f1,r2,$-48
	fmul f0,f0,f1
	fst f1,r2,$-40
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-44
	fld f1,r2,$-40
	fadd f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-92
	fmovi f0,$2.000000
	fst f0,r2,$-88
	fld f0,r2,$-92
	fld f1,r2,$-88
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	jal fless
	sw r5,r2,$-76
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-72
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@label_1891
	li r5,$0
	sw r5,r2,$-68
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-68
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1892
@label_1891:
	li r5,$1
	sw r5,r2,$-60
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-60
	lw r5,r2,$-64
	sub r5,r5,r6
	sw r5,r2,$-56
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_440@a_157iloop
	sw r5,r2,$-16
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1892:
@label_1890:
@label_1888:
@label_1886:
@label_1884:
@label_1882:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-24
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_137xloop
	sw r5,r2,$-12
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@40:16;40:31 ../mandelbrot_edit.ml@40:16;40:21
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../mandelbrot_edit.ml@40:16;40:31 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1880:
	lw r5,r2,$-4
	sw r5,r2,$-628
; ../mandelbrot_edit.ml@8:16;40:31 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1878:
	lw r5,r2,$-628
	addi r1,r1,$628
	pop r2
	pop r6
	jr r6
@a_340@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1861
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1862
@label_1861:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1863
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1864
@label_1863:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1865
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1866
@label_1865:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1867
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1868
@label_1867:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1869
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1870
@label_1869:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1871
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1872
@label_1871:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1873
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1874
@label_1873:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-72
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-68
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1875
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1876
@label_1875:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_340@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1876:
@label_1874:
@label_1872:
@label_1870:
@label_1868:
@label_1866:
@label_1864:
@label_1862:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_712@a_340@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1845
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1846
@label_1845:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1847
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1848
@label_1847:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1849
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1850
@label_1849:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1851
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1852
@label_1851:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1853
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1854
@label_1853:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1855
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1856
@label_1855:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1857
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1858
@label_1857:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-72
	push r5
	jal @a_129dbl
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1859
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1860
@label_1859:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_712@a_340@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1860:
@label_1858:
@label_1856:
@label_1854:
@label_1852:
@label_1850:
@label_1848:
@label_1846:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_314@a_137xloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$628
	li r5,$80
	sw r5,r2,$-624
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-624
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-620
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-616
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-620
	lw r6,r2,$-616
	bne r5,r6,@label_1817
	sw r3,r2,$-628
	addi r5,r5,$0
; ../mandelbrot_edit.ml@8:16;40:31
	j @label_1818
@label_1817:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-612
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-612
	fld f1,r2,$-612
	fadd f0,f0,f1
	fst f1,r2,$-608
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-604
	fld f0,r2,$-608
	fld f1,r2,$-604
	fdiv f0,f0,f1
	fst f1,r2,$-600
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-596
	fld f0,r2,$-600
	fld f1,r2,$-596
	fsub f0,f0,f1
	fst f1,r2,$-336
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-592
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-592
	fld f1,r2,$-592
	fadd f0,f0,f1
	fst f1,r2,$-588
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-584
	fld f0,r2,$-588
	fld f1,r2,$-584
	fdiv f0,f0,f1
	fst f1,r2,$-580
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-576
	fld f0,r2,$-580
	fld f1,r2,$-576
	fsub f0,f0,f1
	fst f1,r2,$-332
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-508
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-552
	fmovi f0,$0.000000
	fst f0,r2,$-544
	fmovi f0,$0.000000
	fst f0,r2,$-564
	fmovi f0,$0.000000
	fst f0,r2,$-560
	li r5,$0
	sw r5,r2,$-572
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-508
	lw r6,r2,$-572
	bne r5,r6,@label_1833
	li r5,$1
	sw r5,r2,$-568
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-568
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1834
@label_1833:
	fld f0,r2,$-564
	fld f1,r2,$-560
	fsub f0,f0,f1
	fst f1,r2,$-556
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-556
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-480
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-552
	fld f1,r2,$-552
	fadd f0,f0,f1
	fst f1,r2,$-548
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-548
	fld f1,r2,$-544
	fmul f0,f0,f1
	fst f1,r2,$-540
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-540
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-472
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-480
	fld f1,r2,$-480
	fmul f0,f0,f1
	fst f1,r2,$-492
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-472
	fld f1,r2,$-472
	fmul f0,f0,f1
	fst f1,r2,$-488
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-492
	fld f1,r2,$-488
	fadd f0,f0,f1
	fst f1,r2,$-528
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-536
	fmovi f0,$2.000000
	fst f0,r2,$-532
	fld f0,r2,$-536
	fld f1,r2,$-532
	fmul f0,f0,f1
	fst f1,r2,$-524
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-524
	push r5
	lw r5,r2,$-528
	push r5
	jal fless
	sw r5,r2,$-520
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-516
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-520
	lw r6,r2,$-516
	bne r5,r6,@label_1835
	li r5,$0
	sw r5,r2,$-512
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-512
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1836
@label_1835:
	li r5,$1
	sw r5,r2,$-504
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-504
	lw r5,r2,$-508
	sub r5,r5,r6
	sw r5,r2,$-436
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-500
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-436
	lw r6,r2,$-500
	bne r5,r6,@label_1837
	li r5,$1
	sw r5,r2,$-496
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-496
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1838
@label_1837:
	fld f0,r2,$-492
	fld f1,r2,$-488
	fsub f0,f0,f1
	fst f1,r2,$-484
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-484
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-408
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-480
	fld f1,r2,$-480
	fadd f0,f0,f1
	fst f1,r2,$-476
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-476
	fld f1,r2,$-472
	fmul f0,f0,f1
	fst f1,r2,$-468
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-468
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-400
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-408
	fld f1,r2,$-408
	fmul f0,f0,f1
	fst f1,r2,$-420
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-400
	fld f1,r2,$-400
	fmul f0,f0,f1
	fst f1,r2,$-416
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-420
	fld f1,r2,$-416
	fadd f0,f0,f1
	fst f1,r2,$-456
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-464
	fmovi f0,$2.000000
	fst f0,r2,$-460
	fld f0,r2,$-464
	fld f1,r2,$-460
	fmul f0,f0,f1
	fst f1,r2,$-452
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-452
	push r5
	lw r5,r2,$-456
	push r5
	jal fless
	sw r5,r2,$-448
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-444
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-448
	lw r6,r2,$-444
	bne r5,r6,@label_1839
	li r5,$0
	sw r5,r2,$-440
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-440
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1840
@label_1839:
	li r5,$1
	sw r5,r2,$-432
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-432
	lw r5,r2,$-436
	sub r5,r5,r6
	sw r5,r2,$-364
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-428
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-364
	lw r6,r2,$-428
	bne r5,r6,@label_1841
	li r5,$1
	sw r5,r2,$-424
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-424
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1842
@label_1841:
	fld f0,r2,$-420
	fld f1,r2,$-416
	fsub f0,f0,f1
	fst f1,r2,$-412
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-412
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-352
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-408
	fld f1,r2,$-408
	fadd f0,f0,f1
	fst f1,r2,$-404
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-404
	fld f1,r2,$-400
	fmul f0,f0,f1
	fst f1,r2,$-396
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-396
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-348
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-352
	fld f1,r2,$-352
	fmul f0,f0,f1
	fst f1,r2,$-344
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-348
	fld f1,r2,$-348
	fmul f0,f0,f1
	fst f1,r2,$-340
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-344
	fld f1,r2,$-340
	fadd f0,f0,f1
	fst f1,r2,$-384
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-392
	fmovi f0,$2.000000
	fst f0,r2,$-388
	fld f0,r2,$-392
	fld f1,r2,$-388
	fmul f0,f0,f1
	fst f1,r2,$-380
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-380
	push r5
	lw r5,r2,$-384
	push r5
	jal fless
	sw r5,r2,$-376
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-372
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-376
	lw r6,r2,$-372
	bne r5,r6,@label_1843
	li r5,$0
	sw r5,r2,$-368
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-368
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1844
@label_1843:
	li r5,$1
	sw r5,r2,$-360
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-360
	lw r5,r2,$-364
	sub r5,r5,r6
	sw r5,r2,$-356
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-332
	push r5
	lw r5,r2,$-336
	push r5
	lw r5,r2,$-340
	push r5
	lw r5,r2,$-344
	push r5
	lw r5,r2,$-348
	push r5
	lw r5,r2,$-352
	push r5
	lw r5,r2,$-356
	push r5
	jal @a_340@a_157iloop
	sw r5,r2,$-8
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1844:
@label_1842:
@label_1840:
@label_1838:
@label_1836:
@label_1834:
	li r5,$1
	sw r5,r2,$-328
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-328
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	li r5,$80
	sw r5,r2,$-324
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-324
	lw r5,r2,$-28
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-320
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-316
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-320
	lw r6,r2,$-316
	bne r5,r6,@label_1819
	sw r3,r2,$-4
	addi r5,r5,$0
; ../mandelbrot_edit.ml@40:16;40:31
	j @label_1820
@label_1819:
	push r4
	lw r5,r2,$-28
	push r5
	jal float_of_int
	sw r5,r2,$-312
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-312
	fld f1,r2,$-312
	fadd f0,f0,f1
	fst f1,r2,$-308
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-304
	fld f0,r2,$-308
	fld f1,r2,$-304
	fdiv f0,f0,f1
	fst f1,r2,$-300
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-296
	fld f0,r2,$-300
	fld f1,r2,$-296
	fsub f0,f0,f1
	fst f1,r2,$-36
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-292
	fld f1,r2,$-292
	fadd f0,f0,f1
	fst f1,r2,$-288
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-284
	fld f0,r2,$-288
	fld f1,r2,$-284
	fdiv f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-276
	fld f0,r2,$-280
	fld f1,r2,$-276
	fsub f0,f0,f1
	fst f1,r2,$-32
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-208
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-252
	fmovi f0,$0.000000
	fst f0,r2,$-244
	fmovi f0,$0.000000
	fst f0,r2,$-264
	fmovi f0,$0.000000
	fst f0,r2,$-260
	li r5,$0
	sw r5,r2,$-272
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-208
	lw r6,r2,$-272
	bne r5,r6,@label_1821
	li r5,$1
	sw r5,r2,$-268
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-268
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1822
@label_1821:
	fld f0,r2,$-264
	fld f1,r2,$-260
	fsub f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-256
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-180
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-252
	fld f1,r2,$-252
	fadd f0,f0,f1
	fst f1,r2,$-248
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-248
	fld f1,r2,$-244
	fmul f0,f0,f1
	fst f1,r2,$-240
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-240
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-172
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-180
	fld f1,r2,$-180
	fmul f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-172
	fld f1,r2,$-172
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-192
	fld f1,r2,$-188
	fadd f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-236
	fmovi f0,$2.000000
	fst f0,r2,$-232
	fld f0,r2,$-236
	fld f1,r2,$-232
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-224
	push r5
	lw r5,r2,$-228
	push r5
	jal fless
	sw r5,r2,$-220
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-216
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-220
	lw r6,r2,$-216
	bne r5,r6,@label_1823
	li r5,$0
	sw r5,r2,$-212
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-212
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1824
@label_1823:
	li r5,$1
	sw r5,r2,$-204
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-204
	lw r5,r2,$-208
	sub r5,r5,r6
	sw r5,r2,$-136
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-200
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-136
	lw r6,r2,$-200
	bne r5,r6,@label_1825
	li r5,$1
	sw r5,r2,$-196
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-196
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1826
@label_1825:
	fld f0,r2,$-192
	fld f1,r2,$-188
	fsub f0,f0,f1
	fst f1,r2,$-184
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-184
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-108
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-180
	fld f1,r2,$-180
	fadd f0,f0,f1
	fst f1,r2,$-176
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-176
	fld f1,r2,$-172
	fmul f0,f0,f1
	fst f1,r2,$-168
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-168
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-100
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-108
	fld f1,r2,$-108
	fmul f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-100
	fld f1,r2,$-100
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-120
	fld f1,r2,$-116
	fadd f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-164
	fmovi f0,$2.000000
	fst f0,r2,$-160
	fld f0,r2,$-164
	fld f1,r2,$-160
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-152
	push r5
	lw r5,r2,$-156
	push r5
	jal fless
	sw r5,r2,$-148
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-144
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@label_1827
	li r5,$0
	sw r5,r2,$-140
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-140
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1828
@label_1827:
	li r5,$1
	sw r5,r2,$-132
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-132
	lw r5,r2,$-136
	sub r5,r5,r6
	sw r5,r2,$-64
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-128
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-64
	lw r6,r2,$-128
	bne r5,r6,@label_1829
	li r5,$1
	sw r5,r2,$-124
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-124
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1830
@label_1829:
	fld f0,r2,$-120
	fld f1,r2,$-116
	fsub f0,f0,f1
	fst f1,r2,$-112
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-112
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-52
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-108
	push r5
	jal @a_129dbl
	sw r5,r2,$-104
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-104
	fld f1,r2,$-100
	fmul f0,f0,f1
	fst f1,r2,$-96
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-96
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-52
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-48
	fld f1,r2,$-48
	fmul f0,f0,f1
	fst f1,r2,$-40
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-44
	fld f1,r2,$-40
	fadd f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-92
	fmovi f0,$2.000000
	fst f0,r2,$-88
	fld f0,r2,$-92
	fld f1,r2,$-88
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	jal fless
	sw r5,r2,$-76
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-72
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@label_1831
	li r5,$0
	sw r5,r2,$-68
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-68
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1832
@label_1831:
	li r5,$1
	sw r5,r2,$-60
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-60
	lw r5,r2,$-64
	sub r5,r5,r6
	sw r5,r2,$-56
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_712@a_340@a_157iloop
	sw r5,r2,$-16
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1832:
@label_1830:
@label_1828:
@label_1826:
@label_1824:
@label_1822:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-24
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_314@a_137xloop
	sw r5,r2,$-12
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@40:16;40:31 ../mandelbrot_edit.ml@40:16;40:21
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../mandelbrot_edit.ml@40:16;40:31 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1820:
	lw r5,r2,$-4
	sw r5,r2,$-628
; ../mandelbrot_edit.ml@8:16;40:31 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1818:
	lw r5,r2,$-628
	addi r1,r1,$628
	pop r2
	pop r6
	jr r6
@a_662@a_340@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1801
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1802
@label_1801:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1803
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1804
@label_1803:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1805
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1806
@label_1805:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1807
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1808
@label_1807:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1809
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1810
@label_1809:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1811
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1812
@label_1811:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1813
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1814
@label_1813:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-72
	push r5
	jal @a_129dbl
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1815
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1816
@label_1815:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_662@a_340@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1816:
@label_1814:
@label_1812:
@label_1810:
@label_1808:
@label_1806:
@label_1804:
@label_1802:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_390@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1785
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1786
@label_1785:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1787
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1788
@label_1787:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1789
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1790
@label_1789:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1791
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1792
@label_1791:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1793
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1794
@label_1793:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1795
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1796
@label_1795:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1797
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1798
@label_1797:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-72
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-68
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1799
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1800
@label_1799:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_390@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1800:
@label_1798:
@label_1796:
@label_1794:
@label_1792:
@label_1790:
@label_1788:
@label_1786:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_131yloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$716
	li r5,$40
	sw r5,r2,$-712
; ../mandelbrot_edit.ml@5:22;5:24
	lw r6,r2,$-712
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-708
; ../mandelbrot_edit.ml@5:17;5:24 ::= Ogeq ../mandelbrot_edit.ml@5:17;5:18 ../mandelbrot_edit.ml@5:22;5:24
	li r5,$1
	sw r5,r2,$-704
; ../mandelbrot_edit.ml@5:17;5:24
	lw r5,r2,$-708
	lw r6,r2,$-704
	bne r5,r6,@label_1753
	sw r3,r2,$-716
	addi r5,r5,$0
; ../mandelbrot_edit.ml@5:14;43:27
	j @label_1754
@label_1753:
	li r5,$0
	sw r5,r2,$-404
; ../mandelbrot_edit.ml@41:20;41:21
	li r5,$80
	sw r5,r2,$-700
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-700
	lw r5,r2,$-404
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-696
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-692
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-696
	lw r6,r2,$-692
	bne r5,r6,@label_1771
	sw r3,r2,$-8
	addi r5,r5,$0
; ../mandelbrot_edit.ml@41:14;41:23
	j @label_1772
@label_1771:
	push r4
	lw r5,r2,$-404
	push r5
	jal float_of_int
	sw r5,r2,$-688
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-688
	fld f1,r2,$-688
	fadd f0,f0,f1
	fst f1,r2,$-684
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-680
	fld f0,r2,$-684
	fld f1,r2,$-680
	fdiv f0,f0,f1
	fst f1,r2,$-676
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-672
	fld f0,r2,$-676
	fld f1,r2,$-672
	fsub f0,f0,f1
	fst f1,r2,$-412
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-668
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-668
	fld f1,r2,$-668
	fadd f0,f0,f1
	fst f1,r2,$-664
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-660
	fld f0,r2,$-664
	fld f1,r2,$-660
	fdiv f0,f0,f1
	fst f1,r2,$-656
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-652
	fld f0,r2,$-656
	fld f1,r2,$-652
	fsub f0,f0,f1
	fst f1,r2,$-408
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-584
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-628
	fmovi f0,$0.000000
	fst f0,r2,$-620
	fmovi f0,$0.000000
	fst f0,r2,$-640
	fmovi f0,$0.000000
	fst f0,r2,$-636
	li r5,$0
	sw r5,r2,$-648
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-584
	lw r6,r2,$-648
	bne r5,r6,@label_1773
	li r5,$1
	sw r5,r2,$-644
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-644
	push r5
	jal print_int
	sw r5,r2,$-392
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1774
@label_1773:
	fld f0,r2,$-640
	fld f1,r2,$-636
	fsub f0,f0,f1
	fst f1,r2,$-632
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-632
	fld f1,r2,$-412
	fadd f0,f0,f1
	fst f1,r2,$-556
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-628
	fld f1,r2,$-628
	fadd f0,f0,f1
	fst f1,r2,$-624
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-624
	fld f1,r2,$-620
	fmul f0,f0,f1
	fst f1,r2,$-616
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-616
	fld f1,r2,$-408
	fadd f0,f0,f1
	fst f1,r2,$-548
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-556
	fld f1,r2,$-556
	fmul f0,f0,f1
	fst f1,r2,$-568
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-548
	fld f1,r2,$-548
	fmul f0,f0,f1
	fst f1,r2,$-564
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-568
	fld f1,r2,$-564
	fadd f0,f0,f1
	fst f1,r2,$-604
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-612
	fmovi f0,$2.000000
	fst f0,r2,$-608
	fld f0,r2,$-612
	fld f1,r2,$-608
	fmul f0,f0,f1
	fst f1,r2,$-600
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-600
	push r5
	lw r5,r2,$-604
	push r5
	jal fless
	sw r5,r2,$-596
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-592
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-596
	lw r6,r2,$-592
	bne r5,r6,@label_1775
	li r5,$0
	sw r5,r2,$-588
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-588
	push r5
	jal print_int
	sw r5,r2,$-392
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1776
@label_1775:
	li r5,$1
	sw r5,r2,$-580
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-580
	lw r5,r2,$-584
	sub r5,r5,r6
	sw r5,r2,$-512
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-576
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-512
	lw r6,r2,$-576
	bne r5,r6,@label_1777
	li r5,$1
	sw r5,r2,$-572
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-572
	push r5
	jal print_int
	sw r5,r2,$-392
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1778
@label_1777:
	fld f0,r2,$-568
	fld f1,r2,$-564
	fsub f0,f0,f1
	fst f1,r2,$-560
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-560
	fld f1,r2,$-412
	fadd f0,f0,f1
	fst f1,r2,$-484
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-556
	fld f1,r2,$-556
	fadd f0,f0,f1
	fst f1,r2,$-552
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-552
	fld f1,r2,$-548
	fmul f0,f0,f1
	fst f1,r2,$-544
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-544
	fld f1,r2,$-408
	fadd f0,f0,f1
	fst f1,r2,$-476
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-484
	fld f1,r2,$-484
	fmul f0,f0,f1
	fst f1,r2,$-496
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-476
	fld f1,r2,$-476
	fmul f0,f0,f1
	fst f1,r2,$-492
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-496
	fld f1,r2,$-492
	fadd f0,f0,f1
	fst f1,r2,$-532
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-540
	fmovi f0,$2.000000
	fst f0,r2,$-536
	fld f0,r2,$-540
	fld f1,r2,$-536
	fmul f0,f0,f1
	fst f1,r2,$-528
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-528
	push r5
	lw r5,r2,$-532
	push r5
	jal fless
	sw r5,r2,$-524
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-520
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-524
	lw r6,r2,$-520
	bne r5,r6,@label_1779
	li r5,$0
	sw r5,r2,$-516
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-516
	push r5
	jal print_int
	sw r5,r2,$-392
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1780
@label_1779:
	li r5,$1
	sw r5,r2,$-508
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-508
	lw r5,r2,$-512
	sub r5,r5,r6
	sw r5,r2,$-440
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-504
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-440
	lw r6,r2,$-504
	bne r5,r6,@label_1781
	li r5,$1
	sw r5,r2,$-500
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-500
	push r5
	jal print_int
	sw r5,r2,$-392
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1782
@label_1781:
	fld f0,r2,$-496
	fld f1,r2,$-492
	fsub f0,f0,f1
	fst f1,r2,$-488
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-488
	fld f1,r2,$-412
	fadd f0,f0,f1
	fst f1,r2,$-428
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-484
	fld f1,r2,$-484
	fadd f0,f0,f1
	fst f1,r2,$-480
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-480
	fld f1,r2,$-476
	fmul f0,f0,f1
	fst f1,r2,$-472
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-472
	fld f1,r2,$-408
	fadd f0,f0,f1
	fst f1,r2,$-424
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-428
	fld f1,r2,$-428
	fmul f0,f0,f1
	fst f1,r2,$-420
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-424
	fld f1,r2,$-424
	fmul f0,f0,f1
	fst f1,r2,$-416
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-420
	fld f1,r2,$-416
	fadd f0,f0,f1
	fst f1,r2,$-460
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-468
	fmovi f0,$2.000000
	fst f0,r2,$-464
	fld f0,r2,$-468
	fld f1,r2,$-464
	fmul f0,f0,f1
	fst f1,r2,$-456
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-456
	push r5
	lw r5,r2,$-460
	push r5
	jal fless
	sw r5,r2,$-452
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-448
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-452
	lw r6,r2,$-448
	bne r5,r6,@label_1783
	li r5,$0
	sw r5,r2,$-444
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-444
	push r5
	jal print_int
	sw r5,r2,$-392
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1784
@label_1783:
	li r5,$1
	sw r5,r2,$-436
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-436
	lw r5,r2,$-440
	sub r5,r5,r6
	sw r5,r2,$-432
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-408
	push r5
	lw r5,r2,$-412
	push r5
	lw r5,r2,$-416
	push r5
	lw r5,r2,$-420
	push r5
	lw r5,r2,$-424
	push r5
	lw r5,r2,$-428
	push r5
	lw r5,r2,$-432
	push r5
	jal @a_390@a_157iloop
	sw r5,r2,$-392
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1784:
@label_1782:
@label_1780:
@label_1778:
@label_1776:
@label_1774:
	li r5,$1
	sw r5,r2,$-400
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-400
	lw r5,r2,$-404
	add r5,r5,r6
	sw r5,r2,$-396
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	push r4
	lw r5,r2,$8
	push r5
	lw r5,r2,$-396
	push r5
	jal @a_137xloop
	sw r5,r2,$-388
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@40:16;40:31 ../mandelbrot_edit.ml@40:16;40:21
	lw r5,r2,$-388
	sw r5,r2,$-8
; ../mandelbrot_edit.ml@41:14;41:23 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1772:
	li r5,$10
	sw r5,r2,$-384
; ../mandelbrot_edit.ml@41:36;41:38
	push r4
	lw r5,r2,$-384
	push r5
	jal print_char
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@41:25;41:38 ../mandelbrot_edit.ml@41:25;41:35
	li r5,$1
	sw r5,r2,$-380
; ../mandelbrot_edit.ml@43:25;43:26
	lw r6,r2,$-380
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-44
; ../mandelbrot_edit.ml@43:21;43:26 ::= Oadd ../mandelbrot_edit.ml@43:21;43:22 ../mandelbrot_edit.ml@43:25;43:26
	li r5,$40
	sw r5,r2,$-376
; ../mandelbrot_edit.ml@5:22;5:24
	lw r6,r2,$-376
	lw r5,r2,$-44
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-372
; ../mandelbrot_edit.ml@5:17;5:24 ::= Ogeq ../mandelbrot_edit.ml@5:17;5:18 ../mandelbrot_edit.ml@5:22;5:24
	li r5,$1
	sw r5,r2,$-368
; ../mandelbrot_edit.ml@5:17;5:24
	lw r5,r2,$-372
	lw r6,r2,$-368
	bne r5,r6,@label_1755
	sw r3,r2,$-12
	addi r5,r5,$0
; ../mandelbrot_edit.ml@43:14;43:27
	j @label_1756
@label_1755:
	li r5,$0
	sw r5,r2,$-68
; ../mandelbrot_edit.ml@41:20;41:21
	li r5,$80
	sw r5,r2,$-364
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-364
	lw r5,r2,$-68
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-360
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-356
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-360
	lw r6,r2,$-356
	bne r5,r6,@label_1757
	sw r3,r2,$-24
	addi r5,r5,$0
; ../mandelbrot_edit.ml@41:14;41:23
	j @label_1758
@label_1757:
	push r4
	lw r5,r2,$-68
	push r5
	jal float_of_int
	sw r5,r2,$-352
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-352
	fld f1,r2,$-352
	fadd f0,f0,f1
	fst f1,r2,$-348
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-344
	fld f0,r2,$-348
	fld f1,r2,$-344
	fdiv f0,f0,f1
	fst f1,r2,$-340
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-336
	fld f0,r2,$-340
	fld f1,r2,$-336
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$-44
	push r5
	jal float_of_int
	sw r5,r2,$-332
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-332
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-328
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-324
	fld f0,r2,$-328
	fld f1,r2,$-324
	fdiv f0,f0,f1
	fst f1,r2,$-320
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-316
	fld f0,r2,$-320
	fld f1,r2,$-316
	fsub f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-292
	fmovi f0,$0.000000
	fst f0,r2,$-284
	fmovi f0,$0.000000
	fst f0,r2,$-304
	fmovi f0,$0.000000
	fst f0,r2,$-300
	li r5,$0
	sw r5,r2,$-312
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-248
	lw r6,r2,$-312
	bne r5,r6,@label_1759
	li r5,$1
	sw r5,r2,$-308
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-308
	push r5
	jal print_int
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1760
@label_1759:
	fld f0,r2,$-304
	fld f1,r2,$-300
	fsub f0,f0,f1
	fst f1,r2,$-296
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-296
	fld f1,r2,$-76
	fadd f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-292
	fld f1,r2,$-292
	fadd f0,f0,f1
	fst f1,r2,$-288
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-288
	fld f1,r2,$-284
	fmul f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-280
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-220
	fld f1,r2,$-220
	fmul f0,f0,f1
	fst f1,r2,$-232
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-212
	fld f1,r2,$-212
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-232
	fld f1,r2,$-228
	fadd f0,f0,f1
	fst f1,r2,$-268
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-276
	fmovi f0,$2.000000
	fst f0,r2,$-272
	fld f0,r2,$-276
	fld f1,r2,$-272
	fmul f0,f0,f1
	fst f1,r2,$-264
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-264
	push r5
	lw r5,r2,$-268
	push r5
	jal fless
	sw r5,r2,$-260
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-256
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-260
	lw r6,r2,$-256
	bne r5,r6,@label_1761
	li r5,$0
	sw r5,r2,$-252
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-252
	push r5
	jal print_int
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1762
@label_1761:
	li r5,$1
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-244
	lw r5,r2,$-248
	sub r5,r5,r6
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-176
	lw r6,r2,$-240
	bne r5,r6,@label_1763
	li r5,$1
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-236
	push r5
	jal print_int
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1764
@label_1763:
	fld f0,r2,$-232
	fld f1,r2,$-228
	fsub f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-224
	fld f1,r2,$-76
	fadd f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-220
	fld f1,r2,$-220
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-216
	fld f1,r2,$-212
	fmul f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-208
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-148
	fld f1,r2,$-148
	fmul f0,f0,f1
	fst f1,r2,$-160
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-140
	fld f1,r2,$-140
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-160
	fld f1,r2,$-156
	fadd f0,f0,f1
	fst f1,r2,$-196
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-204
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fld f0,r2,$-204
	fld f1,r2,$-200
	fmul f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-192
	push r5
	lw r5,r2,$-196
	push r5
	jal fless
	sw r5,r2,$-188
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-184
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-188
	lw r6,r2,$-184
	bne r5,r6,@label_1765
	li r5,$0
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-180
	push r5
	jal print_int
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1766
@label_1765:
	li r5,$1
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-172
	lw r5,r2,$-176
	sub r5,r5,r6
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-104
	lw r6,r2,$-168
	bne r5,r6,@label_1767
	li r5,$1
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-164
	push r5
	jal print_int
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1768
@label_1767:
	fld f0,r2,$-160
	fld f1,r2,$-156
	fsub f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-152
	fld f1,r2,$-76
	fadd f0,f0,f1
	fst f1,r2,$-92
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-148
	push r5
	jal @a_129dbl
	sw r5,r2,$-144
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-144
	fld f1,r2,$-140
	fmul f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-136
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-88
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-92
	fld f1,r2,$-92
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-88
	fld f1,r2,$-88
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-124
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-132
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fld f0,r2,$-132
	fld f1,r2,$-128
	fmul f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	jal fless
	sw r5,r2,$-116
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-112
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-116
	lw r6,r2,$-112
	bne r5,r6,@label_1769
	li r5,$0
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-108
	push r5
	jal print_int
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1770
@label_1769:
	li r5,$1
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-100
	lw r5,r2,$-104
	sub r5,r5,r6
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-72
	push r5
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	jal @a_662@a_340@a_157iloop
	sw r5,r2,$-56
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1770:
@label_1768:
@label_1766:
@label_1764:
@label_1762:
@label_1760:
	li r5,$1
	sw r5,r2,$-64
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-64
	lw r5,r2,$-68
	add r5,r5,r6
	sw r5,r2,$-60
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_314@a_137xloop
	sw r5,r2,$-52
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@40:16;40:31 ../mandelbrot_edit.ml@40:16;40:21
	lw r5,r2,$-52
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@41:14;41:23 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1758:
	li r5,$10
	sw r5,r2,$-48
; ../mandelbrot_edit.ml@41:36;41:38
	push r4
	lw r5,r2,$-48
	push r5
	jal print_char
	sw r5,r2,$-32
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@41:25;41:38 ../mandelbrot_edit.ml@41:25;41:35
	li r5,$1
	sw r5,r2,$-40
; ../mandelbrot_edit.ml@43:25;43:26
	lw r6,r2,$-40
	lw r5,r2,$-44
	add r5,r5,r6
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@43:21;43:26 ::= Oadd ../mandelbrot_edit.ml@43:21;43:22 ../mandelbrot_edit.ml@43:25;43:26
	push r4
	lw r5,r2,$-36
	push r5
	jal @a_131yloop
	sw r5,r2,$-28
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@43:14;43:27 ../mandelbrot_edit.ml@43:14;43:19
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@41:25;43:27 ::<= ../mandelbrot_edit.ml@43:14;43:27
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../mandelbrot_edit.ml@43:14;43:27 ::<= ../mandelbrot_edit.ml@41:25;43:27
@label_1756:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../mandelbrot_edit.ml@41:25;43:27 ::<= ../mandelbrot_edit.ml@43:14;43:27
	lw r5,r2,$-4
	sw r5,r2,$-716
; ../mandelbrot_edit.ml@5:14;43:27 ::<= ../mandelbrot_edit.ml@41:25;43:27
@label_1754:
	lw r5,r2,$-716
	addi r1,r1,$716
	pop r2
	pop r6
	jr r6
@a_276@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1737
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1738
@label_1737:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1739
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1740
@label_1739:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1741
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1742
@label_1741:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1743
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1744
@label_1743:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1745
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1746
@label_1745:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1747
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1748
@label_1747:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1749
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1750
@label_1749:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-72
	fld f1,r2,$-72
	fadd f0,f0,f1
	fst f1,r2,$-68
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1751
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1752
@label_1751:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_276@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1752:
@label_1750:
@label_1748:
@label_1746:
@label_1744:
@label_1742:
@label_1740:
@label_1738:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_576@a_276@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1721
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1722
@label_1721:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1723
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1724
@label_1723:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1725
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1726
@label_1725:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1727
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1728
@label_1727:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1729
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1730
@label_1729:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1731
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1732
@label_1731:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1733
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1734
@label_1733:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-72
	push r5
	jal @a_129dbl
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1735
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1736
@label_1735:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_576@a_276@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1736:
@label_1734:
@label_1732:
@label_1730:
@label_1728:
@label_1726:
@label_1724:
@label_1722:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
@a_250@a_137xloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$628
	li r5,$80
	sw r5,r2,$-624
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-624
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-620
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-616
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-620
	lw r6,r2,$-616
	bne r5,r6,@label_1693
	sw r3,r2,$-628
	addi r5,r5,$0
; ../mandelbrot_edit.ml@8:16;40:31
	j @label_1694
@label_1693:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-612
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-612
	fld f1,r2,$-612
	fadd f0,f0,f1
	fst f1,r2,$-608
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-604
	fld f0,r2,$-608
	fld f1,r2,$-604
	fdiv f0,f0,f1
	fst f1,r2,$-600
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-596
	fld f0,r2,$-600
	fld f1,r2,$-596
	fsub f0,f0,f1
	fst f1,r2,$-336
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-592
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-592
	fld f1,r2,$-592
	fadd f0,f0,f1
	fst f1,r2,$-588
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-584
	fld f0,r2,$-588
	fld f1,r2,$-584
	fdiv f0,f0,f1
	fst f1,r2,$-580
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-576
	fld f0,r2,$-580
	fld f1,r2,$-576
	fsub f0,f0,f1
	fst f1,r2,$-332
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-508
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-552
	fmovi f0,$0.000000
	fst f0,r2,$-544
	fmovi f0,$0.000000
	fst f0,r2,$-564
	fmovi f0,$0.000000
	fst f0,r2,$-560
	li r5,$0
	sw r5,r2,$-572
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-508
	lw r6,r2,$-572
	bne r5,r6,@label_1709
	li r5,$1
	sw r5,r2,$-568
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-568
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1710
@label_1709:
	fld f0,r2,$-564
	fld f1,r2,$-560
	fsub f0,f0,f1
	fst f1,r2,$-556
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-556
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-480
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-552
	fld f1,r2,$-552
	fadd f0,f0,f1
	fst f1,r2,$-548
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-548
	fld f1,r2,$-544
	fmul f0,f0,f1
	fst f1,r2,$-540
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-540
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-472
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-480
	fld f1,r2,$-480
	fmul f0,f0,f1
	fst f1,r2,$-492
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-472
	fld f1,r2,$-472
	fmul f0,f0,f1
	fst f1,r2,$-488
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-492
	fld f1,r2,$-488
	fadd f0,f0,f1
	fst f1,r2,$-528
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-536
	fmovi f0,$2.000000
	fst f0,r2,$-532
	fld f0,r2,$-536
	fld f1,r2,$-532
	fmul f0,f0,f1
	fst f1,r2,$-524
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-524
	push r5
	lw r5,r2,$-528
	push r5
	jal fless
	sw r5,r2,$-520
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-516
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-520
	lw r6,r2,$-516
	bne r5,r6,@label_1711
	li r5,$0
	sw r5,r2,$-512
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-512
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1712
@label_1711:
	li r5,$1
	sw r5,r2,$-504
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-504
	lw r5,r2,$-508
	sub r5,r5,r6
	sw r5,r2,$-436
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-500
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-436
	lw r6,r2,$-500
	bne r5,r6,@label_1713
	li r5,$1
	sw r5,r2,$-496
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-496
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1714
@label_1713:
	fld f0,r2,$-492
	fld f1,r2,$-488
	fsub f0,f0,f1
	fst f1,r2,$-484
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-484
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-408
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-480
	fld f1,r2,$-480
	fadd f0,f0,f1
	fst f1,r2,$-476
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-476
	fld f1,r2,$-472
	fmul f0,f0,f1
	fst f1,r2,$-468
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-468
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-400
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-408
	fld f1,r2,$-408
	fmul f0,f0,f1
	fst f1,r2,$-420
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-400
	fld f1,r2,$-400
	fmul f0,f0,f1
	fst f1,r2,$-416
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-420
	fld f1,r2,$-416
	fadd f0,f0,f1
	fst f1,r2,$-456
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-464
	fmovi f0,$2.000000
	fst f0,r2,$-460
	fld f0,r2,$-464
	fld f1,r2,$-460
	fmul f0,f0,f1
	fst f1,r2,$-452
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-452
	push r5
	lw r5,r2,$-456
	push r5
	jal fless
	sw r5,r2,$-448
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-444
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-448
	lw r6,r2,$-444
	bne r5,r6,@label_1715
	li r5,$0
	sw r5,r2,$-440
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-440
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1716
@label_1715:
	li r5,$1
	sw r5,r2,$-432
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-432
	lw r5,r2,$-436
	sub r5,r5,r6
	sw r5,r2,$-364
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-428
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-364
	lw r6,r2,$-428
	bne r5,r6,@label_1717
	li r5,$1
	sw r5,r2,$-424
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-424
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1718
@label_1717:
	fld f0,r2,$-420
	fld f1,r2,$-416
	fsub f0,f0,f1
	fst f1,r2,$-412
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-412
	fld f1,r2,$-336
	fadd f0,f0,f1
	fst f1,r2,$-352
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-408
	fld f1,r2,$-408
	fadd f0,f0,f1
	fst f1,r2,$-404
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-404
	fld f1,r2,$-400
	fmul f0,f0,f1
	fst f1,r2,$-396
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-396
	fld f1,r2,$-332
	fadd f0,f0,f1
	fst f1,r2,$-348
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-352
	fld f1,r2,$-352
	fmul f0,f0,f1
	fst f1,r2,$-344
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-348
	fld f1,r2,$-348
	fmul f0,f0,f1
	fst f1,r2,$-340
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-344
	fld f1,r2,$-340
	fadd f0,f0,f1
	fst f1,r2,$-384
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-392
	fmovi f0,$2.000000
	fst f0,r2,$-388
	fld f0,r2,$-392
	fld f1,r2,$-388
	fmul f0,f0,f1
	fst f1,r2,$-380
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-380
	push r5
	lw r5,r2,$-384
	push r5
	jal fless
	sw r5,r2,$-376
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-372
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-376
	lw r6,r2,$-372
	bne r5,r6,@label_1719
	li r5,$0
	sw r5,r2,$-368
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-368
	push r5
	jal print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1720
@label_1719:
	li r5,$1
	sw r5,r2,$-360
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-360
	lw r5,r2,$-364
	sub r5,r5,r6
	sw r5,r2,$-356
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-332
	push r5
	lw r5,r2,$-336
	push r5
	lw r5,r2,$-340
	push r5
	lw r5,r2,$-344
	push r5
	lw r5,r2,$-348
	push r5
	lw r5,r2,$-352
	push r5
	lw r5,r2,$-356
	push r5
	jal @a_276@a_157iloop
	sw r5,r2,$-8
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1720:
@label_1718:
@label_1716:
@label_1714:
@label_1712:
@label_1710:
	li r5,$1
	sw r5,r2,$-328
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-328
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	li r5,$80
	sw r5,r2,$-324
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r2,$-324
	lw r5,r2,$-28
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r2,$-320
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r2,$-316
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r2,$-320
	lw r6,r2,$-316
	bne r5,r6,@label_1695
	sw r3,r2,$-4
	addi r5,r5,$0
; ../mandelbrot_edit.ml@40:16;40:31
	j @label_1696
@label_1695:
	push r4
	lw r5,r2,$-28
	push r5
	jal float_of_int
	sw r5,r2,$-312
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r2,$-312
	fld f1,r2,$-312
	fadd f0,f0,f1
	fst f1,r2,$-308
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r2,$-304
	fld f0,r2,$-308
	fld f1,r2,$-304
	fdiv f0,f0,f1
	fst f1,r2,$-300
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r2,$-296
	fld f0,r2,$-300
	fld f1,r2,$-296
	fsub f0,f0,f1
	fst f1,r2,$-36
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r2,$12
	push r5
	jal float_of_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r2,$-292
	fld f1,r2,$-292
	fadd f0,f0,f1
	fst f1,r2,$-288
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r2,$-284
	fld f0,r2,$-288
	fld f1,r2,$-284
	fdiv f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r2,$-276
	fld f0,r2,$-280
	fld f1,r2,$-276
	fsub f0,f0,f1
	fst f1,r2,$-32
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r2,$-208
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r2,$-252
	fmovi f0,$0.000000
	fst f0,r2,$-244
	fmovi f0,$0.000000
	fst f0,r2,$-264
	fmovi f0,$0.000000
	fst f0,r2,$-260
	li r5,$0
	sw r5,r2,$-272
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-208
	lw r6,r2,$-272
	bne r5,r6,@label_1697
	li r5,$1
	sw r5,r2,$-268
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-268
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1698
@label_1697:
	fld f0,r2,$-264
	fld f1,r2,$-260
	fsub f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-256
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-180
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-252
	fld f1,r2,$-252
	fadd f0,f0,f1
	fst f1,r2,$-248
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-248
	fld f1,r2,$-244
	fmul f0,f0,f1
	fst f1,r2,$-240
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-240
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-172
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-180
	fld f1,r2,$-180
	fmul f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-172
	fld f1,r2,$-172
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-192
	fld f1,r2,$-188
	fadd f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-236
	fmovi f0,$2.000000
	fst f0,r2,$-232
	fld f0,r2,$-236
	fld f1,r2,$-232
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-224
	push r5
	lw r5,r2,$-228
	push r5
	jal fless
	sw r5,r2,$-220
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-216
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-220
	lw r6,r2,$-216
	bne r5,r6,@label_1699
	li r5,$0
	sw r5,r2,$-212
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-212
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1700
@label_1699:
	li r5,$1
	sw r5,r2,$-204
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-204
	lw r5,r2,$-208
	sub r5,r5,r6
	sw r5,r2,$-136
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-200
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-136
	lw r6,r2,$-200
	bne r5,r6,@label_1701
	li r5,$1
	sw r5,r2,$-196
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-196
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1702
@label_1701:
	fld f0,r2,$-192
	fld f1,r2,$-188
	fsub f0,f0,f1
	fst f1,r2,$-184
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-184
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-108
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-180
	fld f1,r2,$-180
	fadd f0,f0,f1
	fst f1,r2,$-176
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-176
	fld f1,r2,$-172
	fmul f0,f0,f1
	fst f1,r2,$-168
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-168
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-100
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-108
	fld f1,r2,$-108
	fmul f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-100
	fld f1,r2,$-100
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-120
	fld f1,r2,$-116
	fadd f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-164
	fmovi f0,$2.000000
	fst f0,r2,$-160
	fld f0,r2,$-164
	fld f1,r2,$-160
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-152
	push r5
	lw r5,r2,$-156
	push r5
	jal fless
	sw r5,r2,$-148
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-144
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@label_1703
	li r5,$0
	sw r5,r2,$-140
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-140
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1704
@label_1703:
	li r5,$1
	sw r5,r2,$-132
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-132
	lw r5,r2,$-136
	sub r5,r5,r6
	sw r5,r2,$-64
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-128
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-64
	lw r6,r2,$-128
	bne r5,r6,@label_1705
	li r5,$1
	sw r5,r2,$-124
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-124
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1706
@label_1705:
	fld f0,r2,$-120
	fld f1,r2,$-116
	fsub f0,f0,f1
	fst f1,r2,$-112
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-112
	fld f1,r2,$-36
	fadd f0,f0,f1
	fst f1,r2,$-52
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-108
	push r5
	jal @a_129dbl
	sw r5,r2,$-104
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-104
	fld f1,r2,$-100
	fmul f0,f0,f1
	fst f1,r2,$-96
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-96
	fld f1,r2,$-32
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-52
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-48
	fld f1,r2,$-48
	fmul f0,f0,f1
	fst f1,r2,$-40
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-44
	fld f1,r2,$-40
	fadd f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-92
	fmovi f0,$2.000000
	fst f0,r2,$-88
	fld f0,r2,$-92
	fld f1,r2,$-88
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	jal fless
	sw r5,r2,$-76
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-72
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@label_1707
	li r5,$0
	sw r5,r2,$-68
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-68
	push r5
	jal print_int
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1708
@label_1707:
	li r5,$1
	sw r5,r2,$-60
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-60
	lw r5,r2,$-64
	sub r5,r5,r6
	sw r5,r2,$-56
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_576@a_276@a_157iloop
	sw r5,r2,$-16
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1708:
@label_1706:
@label_1704:
@label_1702:
@label_1700:
@label_1698:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r2,$-24
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_250@a_137xloop
	sw r5,r2,$-12
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@40:16;40:31 ../mandelbrot_edit.ml@40:16;40:21
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../mandelbrot_edit.ml@40:16;40:31 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1696:
	lw r5,r2,$-4
	sw r5,r2,$-628
; ../mandelbrot_edit.ml@8:16;40:31 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1694:
	lw r5,r2,$-628
	addi r1,r1,$628
	pop r2
	pop r6
	jr r6
@a_526@a_276@a_157iloop:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$292
	li r5,$0
	sw r5,r2,$-288
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$8
	lw r6,r2,$-288
	bne r5,r6,@label_1677
	li r5,$1
	sw r5,r2,$-284
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-284
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1678
@label_1677:
	fld f0,r2,$20
	fld f1,r2,$24
	fsub f0,f0,f1
	fst f1,r2,$-280
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-280
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-216
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$12
	fld f1,r2,$12
	fadd f0,f0,f1
	fst f1,r2,$-276
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-276
	fld f1,r2,$16
	fmul f0,f0,f1
	fst f1,r2,$-272
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-272
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-208
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-216
	fld f1,r2,$-216
	fmul f0,f0,f1
	fst f1,r2,$-228
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-208
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-224
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-228
	fld f1,r2,$-224
	fadd f0,f0,f1
	fst f1,r2,$-260
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-268
	fmovi f0,$2.000000
	fst f0,r2,$-264
	fld f0,r2,$-268
	fld f1,r2,$-264
	fmul f0,f0,f1
	fst f1,r2,$-256
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	jal fless
	sw r5,r2,$-252
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-248
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-252
	lw r6,r2,$-248
	bne r5,r6,@label_1679
	li r5,$0
	sw r5,r2,$-244
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-244
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1680
@label_1679:
	li r5,$1
	sw r5,r2,$-240
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-240
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-236
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-172
	lw r6,r2,$-236
	bne r5,r6,@label_1681
	li r5,$1
	sw r5,r2,$-232
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-232
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1682
@label_1681:
	fld f0,r2,$-228
	fld f1,r2,$-224
	fsub f0,f0,f1
	fst f1,r2,$-220
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-220
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-144
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-216
	fld f1,r2,$-216
	fadd f0,f0,f1
	fst f1,r2,$-212
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-212
	fld f1,r2,$-208
	fmul f0,f0,f1
	fst f1,r2,$-204
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-204
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-136
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-144
	fld f1,r2,$-144
	fmul f0,f0,f1
	fst f1,r2,$-156
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-136
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-152
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-156
	fld f1,r2,$-152
	fadd f0,f0,f1
	fst f1,r2,$-192
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-200
	fmovi f0,$2.000000
	fst f0,r2,$-196
	fld f0,r2,$-200
	fld f1,r2,$-196
	fmul f0,f0,f1
	fst f1,r2,$-188
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-188
	push r5
	lw r5,r2,$-192
	push r5
	jal fless
	sw r5,r2,$-184
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-180
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@label_1683
	li r5,$0
	sw r5,r2,$-176
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-176
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1684
@label_1683:
	li r5,$1
	sw r5,r2,$-168
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-168
	lw r5,r2,$-172
	sub r5,r5,r6
	sw r5,r2,$-100
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-164
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-100
	lw r6,r2,$-164
	bne r5,r6,@label_1685
	li r5,$1
	sw r5,r2,$-160
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-160
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1686
@label_1685:
	fld f0,r2,$-156
	fld f1,r2,$-152
	fsub f0,f0,f1
	fst f1,r2,$-148
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-148
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-72
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r2,$-144
	fld f1,r2,$-144
	fadd f0,f0,f1
	fst f1,r2,$-140
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r2,$-140
	fld f1,r2,$-136
	fmul f0,f0,f1
	fst f1,r2,$-132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-132
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-72
	fld f1,r2,$-72
	fmul f0,f0,f1
	fst f1,r2,$-84
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-64
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-80
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-84
	fld f1,r2,$-80
	fadd f0,f0,f1
	fst f1,r2,$-120
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-128
	fmovi f0,$2.000000
	fst f0,r2,$-124
	fld f0,r2,$-128
	fld f1,r2,$-124
	fmul f0,f0,f1
	fst f1,r2,$-116
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	jal fless
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-108
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-112
	lw r6,r2,$-108
	bne r5,r6,@label_1687
	li r5,$0
	sw r5,r2,$-104
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-104
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1688
@label_1687:
	li r5,$1
	sw r5,r2,$-96
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-96
	lw r5,r2,$-100
	sub r5,r5,r6
	sw r5,r2,$-28
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r2,$-92
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r2,$-28
	lw r6,r2,$-92
	bne r5,r6,@label_1689
	li r5,$1
	sw r5,r2,$-88
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r2,$-88
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1690
@label_1689:
	fld f0,r2,$-84
	fld f1,r2,$-80
	fsub f0,f0,f1
	fst f1,r2,$-76
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r2,$-76
	fld f1,r2,$28
	fadd f0,f0,f1
	fst f1,r2,$-16
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r2,$-72
	push r5
	jal @a_129dbl
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r2,$-68
	fld f1,r2,$-64
	fmul f0,f0,f1
	fst f1,r2,$-60
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r2,$-60
	fld f1,r2,$32
	fadd f0,f0,f1
	fst f1,r2,$-12
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r2,$-16
	fld f1,r2,$-16
	fmul f0,f0,f1
	fst f1,r2,$-8
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r2,$-12
	fld f1,r2,$-12
	fmul f0,f0,f1
	fst f1,r2,$-4
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r2,$-8
	fld f1,r2,$-4
	fadd f0,f0,f1
	fst f1,r2,$-48
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r2,$-56
	fmovi f0,$2.000000
	fst f0,r2,$-52
	fld f0,r2,$-56
	fld f1,r2,$-52
	fmul f0,f0,f1
	fst f1,r2,$-44
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal fless
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r2,$-36
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@label_1691
	li r5,$0
	sw r5,r2,$-32
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r2,$-32
	push r5
	jal print_int
	sw r5,r2,$-292
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1692
@label_1691:
	li r5,$1
	sw r5,r2,$-24
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
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
	jal @a_526@a_276@a_157iloop
	sw r5,r2,$-292
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@12:18;20:51 ../mandelbrot_edit.ml@20:18;20:23
@label_1692:
@label_1690:
@label_1688:
@label_1686:
@label_1684:
@label_1682:
@label_1680:
@label_1678:
	lw r5,r2,$-292
	addi r1,r1,$292
	pop r2
	pop r6
	jr r6
main:
	mflr r7
	push r7
	mov r31,r3

	addi r3,r3,$360
	push r2
	mov r2,r1
	subi r1,r1,$4
	li r5,$0
	sw r5,r31,$356
; ../mandelbrot_edit.ml@44:18;44:19
	li r5,$40
	sw r5,r31,$352
; ../mandelbrot_edit.ml@5:22;5:24
	lw r6,r31,$352
	lw r5,r31,$356
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r31,$348
; ../mandelbrot_edit.ml@5:17;5:24 ::= Ogeq ../mandelbrot_edit.ml@5:17;5:18 ../mandelbrot_edit.ml@5:22;5:24
	li r5,$1
	sw r5,r31,$344
; ../mandelbrot_edit.ml@5:17;5:24
	lw r5,r31,$348
	lw r6,r31,$344
	bne r5,r6,@label_1661
	sw r3,r2,$-4
	addi r5,r5,$0
; @0:-1;0:-1
	j @label_1662
@label_1661:
	li r5,$0
	sw r5,r31,$340
; ../mandelbrot_edit.ml@41:20;41:21
	li r5,$80
	sw r5,r31,$336
; ../mandelbrot_edit.ml@8:24;8:26
	lw r6,r31,$336
	lw r5,r31,$340
	slt r5,r6,r5
	li r6,1
	xor r5,r5,r6
	sw r5,r31,$332
; ../mandelbrot_edit.ml@8:19;8:26 ::= Ogeq ../mandelbrot_edit.ml@8:19;8:20 ../mandelbrot_edit.ml@8:24;8:26
	li r5,$1
	sw r5,r31,$328
; ../mandelbrot_edit.ml@8:19;8:26
	lw r5,r31,$332
	lw r6,r31,$328
	bne r5,r6,@label_1663
	sw r3,r31,$324
	addi r5,r5,$0
; ../mandelbrot_edit.ml@41:14;41:23
	j @label_1664
@label_1663:
	push r4
	lw r5,r31,$340
	push r5
	jal float_of_int
	sw r5,r31,$296
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@9:30;9:44 ../mandelbrot_edit.ml@9:30;9:42
	fld f0,r31,$296
	fld f1,r31,$296
	fadd f0,f0,f1
	fst f1,r31,$292
; ../mandelbrot_edit.ml@9:25;9:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$80.000000
	fst f0,r31,$288
	fld f0,r31,$292
	fld f1,r31,$288
	fdiv f0,f0,f1
	fst f1,r31,$284
; ../mandelbrot_edit.ml@9:25;9:53 ::= Ofdiv ../mandelbrot_edit.ml@9:25;9:45 ../mandelbrot_edit.ml@9:49;9:53
	fmovi f0,$1.500000
	fst f0,r31,$280
	fld f0,r31,$284
	fld f1,r31,$280
	fsub f0,f0,f1
	fst f1,r31,$276
; ../mandelbrot_edit.ml@9:25;9:60 ::= Ofsub ../mandelbrot_edit.ml@9:25;9:53 ../mandelbrot_edit.ml@9:57;9:60
	push r4
	lw r5,r31,$356
	push r5
	jal float_of_int
	sw r5,r31,$272
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@10:30;10:44 ../mandelbrot_edit.ml@10:30;10:42
	fld f0,r31,$272
	fld f1,r31,$272
	fadd f0,f0,f1
	fst f1,r31,$268
; ../mandelbrot_edit.ml@10:25;10:45 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fmovi f0,$40.000000
	fst f0,r31,$264
	fld f0,r31,$268
	fld f1,r31,$264
	fdiv f0,f0,f1
	fst f1,r31,$260
; ../mandelbrot_edit.ml@10:25;10:53 ::= Ofdiv ../mandelbrot_edit.ml@10:25;10:45 ../mandelbrot_edit.ml@10:49;10:53
	fmovi f0,$1.000000
	fst f0,r31,$256
	fld f0,r31,$260
	fld f1,r31,$256
	fsub f0,f0,f1
	fst f1,r31,$252
; ../mandelbrot_edit.ml@10:25;10:60 ::= Ofsub ../mandelbrot_edit.ml@10:25;10:53 ../mandelbrot_edit.ml@10:57;10:60
	li r5,$1000
	sw r5,r31,$248
; ../mandelbrot_edit.ml@21:22;21:26
	fmovi f0,$0.000000
	fst f0,r31,$244
	fmovi f0,$0.000000
	fst f0,r31,$240
	fmovi f0,$0.000000
	fst f0,r31,$236
	fmovi f0,$0.000000
	fst f0,r31,$232
	li r5,$0
	sw r5,r31,$228
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r31,$248
	lw r6,r31,$228
	bne r5,r6,@label_1665
	li r5,$1
	sw r5,r31,$0
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r31,$0
	push r5
	jal print_int
	sw r5,r31,$224
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1666
@label_1665:
	fld f0,r31,$236
	fld f1,r31,$232
	fsub f0,f0,f1
	fst f1,r31,$208
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r31,$208
	fld f1,r31,$276
	fadd f0,f0,f1
	fst f1,r31,$204
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r31,$244
	fld f1,r31,$244
	fadd f0,f0,f1
	fst f1,r31,$200
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r31,$200
	fld f1,r31,$240
	fmul f0,f0,f1
	fst f1,r31,$196
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r31,$196
	fld f1,r31,$252
	fadd f0,f0,f1
	fst f1,r31,$192
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r31,$204
	fld f1,r31,$204
	fmul f0,f0,f1
	fst f1,r31,$188
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r31,$192
	fld f1,r31,$192
	fmul f0,f0,f1
	fst f1,r31,$184
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r31,$188
	fld f1,r31,$184
	fadd f0,f0,f1
	fst f1,r31,$180
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r31,$176
	fmovi f0,$2.000000
	fst f0,r31,$172
	fld f0,r31,$176
	fld f1,r31,$172
	fmul f0,f0,f1
	fst f1,r31,$168
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r31,$168
	push r5
	lw r5,r31,$180
	push r5
	jal fless
	sw r5,r31,$164
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r31,$160
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r31,$164
	lw r6,r31,$160
	bne r5,r6,@label_1667
	li r5,$0
	sw r5,r31,$4
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r31,$4
	push r5
	jal print_int
	sw r5,r31,$224
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1668
@label_1667:
	li r5,$1
	sw r5,r31,$156
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r31,$156
	lw r5,r31,$248
	sub r5,r5,r6
	sw r5,r31,$152
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r31,$148
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r31,$152
	lw r6,r31,$148
	bne r5,r6,@label_1669
	li r5,$1
	sw r5,r31,$8
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r31,$8
	push r5
	jal print_int
	sw r5,r31,$224
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1670
@label_1669:
	fld f0,r31,$188
	fld f1,r31,$184
	fsub f0,f0,f1
	fst f1,r31,$144
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r31,$144
	fld f1,r31,$276
	fadd f0,f0,f1
	fst f1,r31,$140
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	fld f0,r31,$204
	fld f1,r31,$204
	fadd f0,f0,f1
	fst f1,r31,$136
; ../mandelbrot_edit.ml@14:27;14:33 ::= Ofadd ../mandelbrot_edit.ml@1:28;1:29 ../mandelbrot_edit.ml@1:33;1:34
	fld f0,r31,$136
	fld f1,r31,$192
	fmul f0,f0,f1
	fst f1,r31,$132
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r31,$132
	fld f1,r31,$252
	fadd f0,f0,f1
	fst f1,r31,$128
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r31,$140
	fld f1,r31,$140
	fmul f0,f0,f1
	fst f1,r31,$124
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r31,$128
	fld f1,r31,$128
	fmul f0,f0,f1
	fst f1,r31,$120
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r31,$124
	fld f1,r31,$120
	fadd f0,f0,f1
	fst f1,r31,$116
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r31,$112
	fmovi f0,$2.000000
	fst f0,r31,$108
	fld f0,r31,$112
	fld f1,r31,$108
	fmul f0,f0,f1
	fst f1,r31,$104
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r31,$104
	push r5
	lw r5,r31,$116
	push r5
	jal fless
	sw r5,r31,$100
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r31,$96
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r31,$100
	lw r6,r31,$96
	bne r5,r6,@label_1671
	li r5,$0
	sw r5,r31,$12
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r31,$12
	push r5
	jal print_int
	sw r5,r31,$224
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1672
@label_1671:
	li r5,$1
	sw r5,r31,$92
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r31,$92
	lw r5,r31,$152
	sub r5,r5,r6
	sw r5,r31,$88
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	li r5,$0
	sw r5,r31,$84
; ../mandelbrot_edit.ml@12:25;12:26
	lw r5,r31,$88
	lw r6,r31,$84
	bne r5,r6,@label_1673
	li r5,$1
	sw r5,r31,$16
; ../mandelbrot_edit.ml@12:42;12:43
	push r4
	lw r5,r31,$16
	push r5
	jal print_int
	sw r5,r31,$224
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@12:32;12:41
	j @label_1674
@label_1673:
	fld f0,r31,$124
	fld f1,r31,$120
	fsub f0,f0,f1
	fst f1,r31,$80
; ../mandelbrot_edit.ml@13:27;13:37 ::= Ofsub ../mandelbrot_edit.ml@13:27;13:30 ../mandelbrot_edit.ml@13:34;13:37
	fld f0,r31,$80
	fld f1,r31,$276
	fadd f0,f0,f1
	fst f1,r31,$76
; ../mandelbrot_edit.ml@13:27;13:43 ::= Ofadd ../mandelbrot_edit.ml@13:27;13:37 ../mandelbrot_edit.ml@13:41;13:43
	push r4
	lw r5,r31,$140
	push r5
	jal @a_129dbl
	sw r5,r31,$72
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:27;14:30
	fld f0,r31,$72
	fld f1,r31,$128
	fmul f0,f0,f1
	fst f1,r31,$68
; ../mandelbrot_edit.ml@14:27;14:39 ::= Ofmul ../mandelbrot_edit.ml@14:27;14:33 ../mandelbrot_edit.ml@14:37;14:39
	fld f0,r31,$68
	fld f1,r31,$252
	fadd f0,f0,f1
	fst f1,r31,$64
; ../mandelbrot_edit.ml@14:27;14:45 ::= Ofadd ../mandelbrot_edit.ml@14:27;14:39 ../mandelbrot_edit.ml@14:43;14:45
	fld f0,r31,$76
	fld f1,r31,$76
	fmul f0,f0,f1
	fst f1,r31,$60
; ../mandelbrot_edit.ml@17:28;17:36 ::= Ofmul ../mandelbrot_edit.ml@17:28;17:30 ../mandelbrot_edit.ml@17:34;17:36
	fld f0,r31,$64
	fld f1,r31,$64
	fmul f0,f0,f1
	fst f1,r31,$56
; ../mandelbrot_edit.ml@18:28;18:36 ::= Ofmul ../mandelbrot_edit.ml@18:28;18:30 ../mandelbrot_edit.ml@18:34;18:36
	fld f0,r31,$60
	fld f1,r31,$56
	fadd f0,f0,f1
	fst f1,r31,$52
; ../mandelbrot_edit.ml@19:28;19:38 ::= Ofadd ../mandelbrot_edit.ml@19:28;19:31 ../mandelbrot_edit.ml@19:35;19:38
	fmovi f0,$2.000000
	fst f0,r31,$48
	fmovi f0,$2.000000
	fst f0,r31,$44
	fld f0,r31,$48
	fld f1,r31,$44
	fmul f0,f0,f1
	fst f1,r31,$40
; ../mandelbrot_edit.ml@19:41;19:51 ::= Ofmul ../mandelbrot_edit.ml@19:41;19:44 ../mandelbrot_edit.ml@19:48;19:51
	push r4
	lw r5,r31,$40
	push r5
	lw r5,r31,$52
	push r5
	jal fless
	sw r5,r31,$36
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@19:21;19:52 ../mandelbrot_edit.ml@19:21;19:26
	li r5,$1
	sw r5,r31,$32
; ../mandelbrot_edit.ml@19:21;19:52
	lw r5,r31,$36
	lw r6,r31,$32
	bne r5,r6,@label_1675
	li r5,$0
	sw r5,r31,$20
; ../mandelbrot_edit.ml@19:68;19:69
	push r4
	lw r5,r31,$20
	push r5
	jal print_int
	sw r5,r31,$224
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@19:58;19:67
	j @label_1676
@label_1675:
	li r5,$1
	sw r5,r31,$28
; ../mandelbrot_edit.ml@20:29;20:30
	lw r6,r31,$28
	lw r5,r31,$88
	sub r5,r5,r6
	sw r5,r31,$24
; ../mandelbrot_edit.ml@20:25;20:30 ::= Osub ../mandelbrot_edit.ml@20:25;20:26 ../mandelbrot_edit.ml@20:29;20:30
	push r4
	lw r5,r31,$252
	push r5
	lw r5,r31,$276
	push r5
	lw r5,r31,$56
	push r5
	lw r5,r31,$60
	push r5
	lw r5,r31,$64
	push r5
	lw r5,r31,$76
	push r5
	lw r5,r31,$24
	push r5
	jal @a_526@a_276@a_157iloop
	sw r5,r31,$224
	addi r1,r1,$28
	pop r4
; ../mandelbrot_edit.ml@21:16;21:48 ../mandelbrot_edit.ml@20:18;20:23
@label_1676:
@label_1674:
@label_1672:
@label_1670:
@label_1668:
@label_1666:
	li r5,$1
	sw r5,r31,$220
; ../mandelbrot_edit.ml@40:27;40:28
	lw r6,r31,$220
	lw r5,r31,$340
	add r5,r5,r6
	sw r5,r31,$216
; ../mandelbrot_edit.ml@40:23;40:28 ::= Oadd ../mandelbrot_edit.ml@40:23;40:24 ../mandelbrot_edit.ml@40:27;40:28
	push r4
	lw r5,r31,$356
	push r5
	lw r5,r31,$216
	push r5
	jal @a_250@a_137xloop
	sw r5,r31,$212
	addi r1,r1,$8
	pop r4
; ../mandelbrot_edit.ml@40:16;40:31 ../mandelbrot_edit.ml@40:16;40:21
	lw r5,r31,$212
	sw r5,r31,$324
; ../mandelbrot_edit.ml@41:14;41:23 ::<= ../mandelbrot_edit.ml@40:16;40:31
@label_1664:
	li r5,$10
	sw r5,r31,$320
; ../mandelbrot_edit.ml@41:36;41:38
	push r4
	lw r5,r31,$320
	push r5
	jal print_char
	sw r5,r31,$316
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@41:25;41:38 ../mandelbrot_edit.ml@41:25;41:35
	li r5,$1
	sw r5,r31,$312
; ../mandelbrot_edit.ml@43:25;43:26
	lw r6,r31,$312
	lw r5,r31,$356
	add r5,r5,r6
	sw r5,r31,$308
; ../mandelbrot_edit.ml@43:21;43:26 ::= Oadd ../mandelbrot_edit.ml@43:21;43:22 ../mandelbrot_edit.ml@43:25;43:26
	push r4
	lw r5,r31,$308
	push r5
	jal @a_131yloop
	sw r5,r31,$304
	addi r1,r1,$4
	pop r4
; ../mandelbrot_edit.ml@43:14;43:27 ../mandelbrot_edit.ml@43:14;43:19
	lw r5,r31,$304
	sw r5,r31,$300
; ../mandelbrot_edit.ml@41:25;43:27 ::<= ../mandelbrot_edit.ml@43:14;43:27
	lw r5,r31,$300
	sw r5,r2,$-4
; @0:-1;0:-1 ::<= ../mandelbrot_edit.ml@41:25;43:27
@label_1662:
	li r5,$0
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
