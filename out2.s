
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


; itof,ftoiは
; 負、正とともに小数点切り捨てだが、
; floor は、負のほうは切り捨てする。

@a_15169internal_sin:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$32
	mov f10,f10
	mov f11,f11
	mov r10,r10
	mov f12,f12
	mov r11,r11
@cfg_label_22621:
@cfg_label_22620:
@cfg_label_22575:
	li r12,$24
; lib_sinint.ml@59:13;59:15
	bne r10,r12,@cfg_label_22616
	j @cfg_label_22615
	j @cfg_label_22617
@cfg_label_22616:
	fmovi f13,$0.00000000000000000000
; lib_sinint.ml@65:21;65:24
	flt f12,f13
	bft @cfg_label_22611
	j @cfg_label_22610
	j @cfg_label_22612
@cfg_label_22611:
	lw r5,r31,$1100
	sll r6,r10,$2
	add f13,r5,r6
	lw f13,f13,$0
; lib_sinint.ml@68:36;68:45 ::= OArrRead lib_sinint.ml@66:36;66:41 lib_sinint.ml@59:6;68:110
	fmul f14,f11,f13
; lib_sinint.ml@68:31;68:45 ::= Ofmul lib_sinint.ml@59:6;68:110 lib_sinint.ml@68:36;68:45
	fadd f13,f10,f14
; lib_sinint.ml@68:26;68:45 ::= Ofadd lib_sinint.ml@59:6;68:110 lib_sinint.ml@68:31;68:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add f15,r5,r6
	lw f15,f15,$0
; lib_sinint.ml@68:58;68:67 ::= OArrRead lib_sinint.ml@66:36;66:41 lib_sinint.ml@59:6;68:110
	fmul f14,f10,f15
; lib_sinint.ml@68:53;68:67 ::= Ofmul lib_sinint.ml@59:6;68:110 lib_sinint.ml@68:58;68:67
	fsub f10,f11,f14
; lib_sinint.ml@68:48;68:67 ::= Ofsub lib_sinint.ml@59:6;68:110 lib_sinint.ml@68:53;68:67
	addi r12,r10,$1
; lib_sinint.ml@68:70;68:75 ::= Oiadd[1] lib_sinint.ml@59:6;68:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add f14,r5,r6
	lw f14,f14,$0
; lib_sinint.ml@68:87;68:96 ::= OArrRead lib_sinint.ml@66:87;66:92 lib_sinint.ml@59:6;68:110
	fadd f11,f12,f14
; lib_sinint.ml@68:78;68:96 ::= Ofadd lib_sinint.ml@59:6;68:110 lib_sinint.ml@68:87;68:96
	mov f12,f13
; lib_sinint.ml@68:26;68:45 ::<= lib_sinint.ml@59:6;68:110
	mov f13,f10
; lib_sinint.ml@68:48;68:67 ::<= lib_sinint.ml@59:6;68:110
	mov r13,r12
; lib_sinint.ml@68:70;68:75 ::<= lib_sinint.ml@59:6;68:110
	mov f14,f11
; lib_sinint.ml@68:78;68:96 ::<= lib_sinint.ml@59:6;68:110
	mov r12,r11
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov f10,f12
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov f11,f13
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov r10,r13
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov f12,f14
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov r11,r12
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	j @cfg_label_22575
	j @cfg_label_22620
@cfg_label_22612:
@cfg_label_22610:
	lw r5,r31,$1100
	sll r6,r10,$2
	add f13,r5,r6
	lw f13,f13,$0
; lib_sinint.ml@66:36;66:45 ::= OArrRead lib_sinint.ml@66:36;66:41 lib_sinint.ml@59:6;68:110
	fmul f14,f11,f13
; lib_sinint.ml@66:31;66:45 ::= Ofmul lib_sinint.ml@59:6;68:110 lib_sinint.ml@66:36;66:45
	fsub f13,f10,f14
; lib_sinint.ml@66:26;66:45 ::= Ofsub lib_sinint.ml@59:6;68:110 lib_sinint.ml@66:31;66:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add f15,r5,r6
	lw f15,f15,$0
; lib_sinint.ml@66:58;66:67 ::= OArrRead lib_sinint.ml@66:36;66:41 lib_sinint.ml@59:6;68:110
	fmul f14,f10,f15
; lib_sinint.ml@66:53;66:67 ::= Ofmul lib_sinint.ml@59:6;68:110 lib_sinint.ml@66:58;66:67
	fadd f10,f11,f14
; lib_sinint.ml@66:48;66:67 ::= Ofadd lib_sinint.ml@59:6;68:110 lib_sinint.ml@66:53;66:67
	addi r12,r10,$1
; lib_sinint.ml@66:70;66:75 ::= Oiadd[1] lib_sinint.ml@59:6;68:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add f14,r5,r6
	lw f14,f14,$0
; lib_sinint.ml@66:87;66:96 ::= OArrRead lib_sinint.ml@66:87;66:92 lib_sinint.ml@59:6;68:110
	fsub f11,f12,f14
; lib_sinint.ml@66:78;66:96 ::= Ofsub lib_sinint.ml@59:6;68:110 lib_sinint.ml@66:87;66:96
	mov f12,f13
; lib_sinint.ml@66:26;66:45 ::<= lib_sinint.ml@59:6;68:110
	mov f13,f10
; lib_sinint.ml@66:48;66:67 ::<= lib_sinint.ml@59:6;68:110
	mov r13,r12
; lib_sinint.ml@66:70;66:75 ::<= lib_sinint.ml@59:6;68:110
	mov f14,f11
; lib_sinint.ml@66:78;66:96 ::<= lib_sinint.ml@59:6;68:110
	mov r12,r11
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov f10,f12
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov f11,f13
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov r10,r13
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov f12,f14
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	mov r11,r12
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	j @cfg_label_22575
	j @cfg_label_22621
@cfg_label_22617:
@cfg_label_22615:
	li r10,$1
; lib_sinint.ml@60:13;60:25
	bne r11,r10,@cfg_label_22578
	j @cfg_label_22577
	j @cfg_label_22579
@cfg_label_22578:
	mov f5,f11
; lib_sinint.ml@59:6;68:110 ::<= lib_sinint.ml@59:6;68:110
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_22579:
@cfg_label_22577:
	fmovi f10,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f5,f10,f11
; lib_sinint.ml@59:6;68:110 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_sinint.ml@59:6;68:110
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@a_8526sin:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$52
	push r9
	push f9
	push f8
	push f7
	push r8
	push f6
	push f4
	mov f9,f10
@cfg_label_22539:
	fld f2,r31,$508
	fdiv f11,f9,f2
; lib_sinint.ml@70:28;70:35 ::= Ofdiv lib_sinint.ml@58:3;72:127 lib_sinint.ml@70:33;70:35
	fmovi f12,$0.50000000000000000000
; lib_sinint.ml@70:39;70:42
	fadd f10,f11,f12
; lib_sinint.ml@70:28;70:42 ::= Ofadd lib_sinint.ml@70:28;70:35 lib_sinint.ml@70:39;70:42
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f10,f11
	bft @cfg_label_22542
	j @cfg_label_22541
	j @cfg_label_22543
	j @cfg_label_22544
@cfg_label_22543:
@cfg_label_22541:
	mov f4,f10
; lib_sinint.ml@70:28;70:42 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_22569
@cfg_label_22544:
@cfg_label_22542:
	fmovi f11,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f4,f10,f11
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_sinint.ml@70:28;70:42 lib_tortesia.ml@11:68;11:71
@cfg_label_22569:
	push r4
	subi r1,r1,$4
	mov f10,f4
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f8,f5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@70:21;70:43 lib_tortesia.ml@11:18;11:30
	fmovi f4,$0.60725293500888277709
; lib_sinint.ml@72:22;72:48
	fmovi f6,$0.00000000000000000000
; lib_sinint.ml@72:49;72:52
	li r8,$0
; lib_sinint.ml@72:53;72:54
	fld f2,r31,$508
	fmul f10,f8,f2
; lib_sinint.ml@72:61;72:75 ::= Ofmul lib_sinint.ml@70:21;70:43 lib_sinint.ml@70:33;70:35
	fsub f7,f9,f10
; lib_sinint.ml@72:56;72:75 ::= Ofsub lib_sinint.ml@58:3;72:127 lib_sinint.ml@72:61;72:75
	fmovi f11,$2.00000000000000000000
; lib_sinint.ml@72:109;72:112
	fdiv f10,f8,f11
; lib_sinint.ml@72:97;72:112 ::= Ofdiv lib_sinint.ml@70:21;70:43 lib_sinint.ml@72:109;72:112
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f10,f11
	bft @cfg_label_22547
	j @cfg_label_22546
	j @cfg_label_22548
	j @cfg_label_22549
@cfg_label_22548:
@cfg_label_22546:
	mov f9,f10
; lib_sinint.ml@72:97;72:112 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_22557
@cfg_label_22549:
@cfg_label_22547:
	fmovi f11,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f9,f10,f11
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_sinint.ml@72:97;72:112 lib_tortesia.ml@11:68;11:71
@cfg_label_22557:
	push r4
	subi r1,r1,$4
	mov f10,f9
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r9,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f9,f5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@72:90;72:113 lib_tortesia.ml@11:18;11:30
	fmovi f11,$2.00000000000000000000
; lib_sinint.ml@72:117;72:120
	fmul f10,f9,f11
; lib_sinint.ml@72:90;72:120 ::= Ofmul lib_sinint.ml@72:90;72:113 lib_sinint.ml@72:117;72:120
	fsub f11,f8,f10
; lib_sinint.ml@72:78;72:120 ::= Ofsub lib_sinint.ml@70:21;70:43 lib_sinint.ml@72:90;72:120
	fmovi f10,$1.00000000000000000000
; lib_sinint.ml@72:123;72:126
	feq f11,f10
	bft @emit_label_22706
	li r9,$0
	j @emit_label_22707
@emit_label_22706:
	li r9,$1
@emit_label_22707:
; lib_sinint.ml@72:78;72:126 ::= Oeq lib_sinint.ml@72:78;72:120 lib_sinint.ml@72:123;72:126
	push r4
	subi r1,r1,$20
	mov f10,f4
; lib_sinint.ml@72:22;72:48 ::<= lib_sinint.ml@72:22;72:48
	mov f11,f6
; lib_sinint.ml@72:49;72:52 ::<= lib_sinint.ml@72:49;72:52
	mov r10,r8
; lib_sinint.ml@72:53;72:54 ::<= lib_sinint.ml@72:53;72:54
	mov f12,f7
; lib_sinint.ml@72:56;72:75 ::<= lib_sinint.ml@72:56;72:75
	mov r11,r9
; lib_sinint.ml@72:78;72:126 ::<= lib_sinint.ml@72:78;72:126
	jal @a_15169internal_sin
	mov f8,f5
	addi r1,r1,$20
	pop r4
; lib_sinint.ml@58:3;72:127 lib_sinint.ml@72:9;72:21
	mov f5,f8
	pop f4
	pop f6
	pop r8
	pop f7
	pop f8
	pop f9
	pop r9
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@a_15080internal_cos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$32
	mov f10,f10
	mov f11,f11
	mov r10,r10
	mov f12,f12
	mov r11,r11
@cfg_label_22538:
@cfg_label_22537:
@cfg_label_22492:
	li r12,$24
; lib_sinint.ml@77:13;77:15
	bne r10,r12,@cfg_label_22533
	j @cfg_label_22532
	j @cfg_label_22534
@cfg_label_22533:
	fmovi f13,$0.00000000000000000000
; lib_sinint.ml@83:21;83:24
	flt f12,f13
	bft @cfg_label_22528
	j @cfg_label_22527
	j @cfg_label_22529
@cfg_label_22528:
	lw r5,r31,$1100
	sll r6,r10,$2
	add f13,r5,r6
	lw f13,f13,$0
; lib_sinint.ml@86:36;86:45 ::= OArrRead lib_sinint.ml@84:36;84:41 lib_sinint.ml@77:6;86:110
	fmul f14,f11,f13
; lib_sinint.ml@86:31;86:45 ::= Ofmul lib_sinint.ml@77:6;86:110 lib_sinint.ml@86:36;86:45
	fadd f13,f10,f14
; lib_sinint.ml@86:26;86:45 ::= Ofadd lib_sinint.ml@77:6;86:110 lib_sinint.ml@86:31;86:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add f15,r5,r6
	lw f15,f15,$0
; lib_sinint.ml@86:58;86:67 ::= OArrRead lib_sinint.ml@84:36;84:41 lib_sinint.ml@77:6;86:110
	fmul f14,f10,f15
; lib_sinint.ml@86:53;86:67 ::= Ofmul lib_sinint.ml@77:6;86:110 lib_sinint.ml@86:58;86:67
	fsub f10,f11,f14
; lib_sinint.ml@86:48;86:67 ::= Ofsub lib_sinint.ml@77:6;86:110 lib_sinint.ml@86:53;86:67
	addi r12,r10,$1
; lib_sinint.ml@86:70;86:75 ::= Oiadd[1] lib_sinint.ml@77:6;86:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add f14,r5,r6
	lw f14,f14,$0
; lib_sinint.ml@86:87;86:96 ::= OArrRead lib_sinint.ml@84:87;84:92 lib_sinint.ml@77:6;86:110
	fadd f11,f12,f14
; lib_sinint.ml@86:78;86:96 ::= Ofadd lib_sinint.ml@77:6;86:110 lib_sinint.ml@86:87;86:96
	mov f12,f13
; lib_sinint.ml@86:26;86:45 ::<= lib_sinint.ml@77:6;86:110
	mov f13,f10
; lib_sinint.ml@86:48;86:67 ::<= lib_sinint.ml@77:6;86:110
	mov r13,r12
; lib_sinint.ml@86:70;86:75 ::<= lib_sinint.ml@77:6;86:110
	mov f14,f11
; lib_sinint.ml@86:78;86:96 ::<= lib_sinint.ml@77:6;86:110
	mov r12,r11
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov f10,f12
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov f11,f13
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov r10,r13
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov f12,f14
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov r11,r12
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	j @cfg_label_22492
	j @cfg_label_22537
@cfg_label_22529:
@cfg_label_22527:
	lw r5,r31,$1100
	sll r6,r10,$2
	add f13,r5,r6
	lw f13,f13,$0
; lib_sinint.ml@84:36;84:45 ::= OArrRead lib_sinint.ml@84:36;84:41 lib_sinint.ml@77:6;86:110
	fmul f14,f11,f13
; lib_sinint.ml@84:31;84:45 ::= Ofmul lib_sinint.ml@77:6;86:110 lib_sinint.ml@84:36;84:45
	fsub f13,f10,f14
; lib_sinint.ml@84:26;84:45 ::= Ofsub lib_sinint.ml@77:6;86:110 lib_sinint.ml@84:31;84:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add f15,r5,r6
	lw f15,f15,$0
; lib_sinint.ml@84:58;84:67 ::= OArrRead lib_sinint.ml@84:36;84:41 lib_sinint.ml@77:6;86:110
	fmul f14,f10,f15
; lib_sinint.ml@84:53;84:67 ::= Ofmul lib_sinint.ml@77:6;86:110 lib_sinint.ml@84:58;84:67
	fadd f10,f11,f14
; lib_sinint.ml@84:48;84:67 ::= Ofadd lib_sinint.ml@77:6;86:110 lib_sinint.ml@84:53;84:67
	addi r12,r10,$1
; lib_sinint.ml@84:70;84:75 ::= Oiadd[1] lib_sinint.ml@77:6;86:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add f14,r5,r6
	lw f14,f14,$0
; lib_sinint.ml@84:87;84:96 ::= OArrRead lib_sinint.ml@84:87;84:92 lib_sinint.ml@77:6;86:110
	fsub f11,f12,f14
; lib_sinint.ml@84:78;84:96 ::= Ofsub lib_sinint.ml@77:6;86:110 lib_sinint.ml@84:87;84:96
	mov f12,f13
; lib_sinint.ml@84:26;84:45 ::<= lib_sinint.ml@77:6;86:110
	mov f13,f10
; lib_sinint.ml@84:48;84:67 ::<= lib_sinint.ml@77:6;86:110
	mov r13,r12
; lib_sinint.ml@84:70;84:75 ::<= lib_sinint.ml@77:6;86:110
	mov f14,f11
; lib_sinint.ml@84:78;84:96 ::<= lib_sinint.ml@77:6;86:110
	mov r12,r11
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov f10,f12
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov f11,f13
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov r10,r13
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov f12,f14
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	mov r11,r12
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	j @cfg_label_22492
	j @cfg_label_22538
@cfg_label_22534:
@cfg_label_22532:
	li r10,$1
; lib_sinint.ml@78:13;78:25
	bne r11,r10,@cfg_label_22495
	j @cfg_label_22494
	j @cfg_label_22496
@cfg_label_22495:
	mov f5,f10
; lib_sinint.ml@77:6;86:110 ::<= lib_sinint.ml@77:6;86:110
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_22496:
@cfg_label_22494:
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f5,f11,f10
; lib_sinint.ml@77:6;86:110 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_sinint.ml@77:6;86:110
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@a_8528cos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$52
	push r9
	push f9
	push f8
	push f7
	push r8
	push f6
	push f4
	mov f9,f10
@cfg_label_22456:
	fld f2,r31,$508
	fdiv f11,f9,f2
; lib_sinint.ml@88:28;88:35 ::= Ofdiv lib_sinint.ml@76:3;90:127 lib_sinint.ml@88:33;88:35
	fmovi f12,$0.50000000000000000000
; lib_sinint.ml@88:39;88:42
	fadd f10,f11,f12
; lib_sinint.ml@88:28;88:42 ::= Ofadd lib_sinint.ml@88:28;88:35 lib_sinint.ml@88:39;88:42
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f10,f11
	bft @cfg_label_22459
	j @cfg_label_22458
	j @cfg_label_22460
	j @cfg_label_22461
@cfg_label_22460:
@cfg_label_22458:
	mov f4,f10
; lib_sinint.ml@88:28;88:42 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_22486
@cfg_label_22461:
@cfg_label_22459:
	fmovi f11,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f4,f10,f11
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_sinint.ml@88:28;88:42 lib_tortesia.ml@11:68;11:71
@cfg_label_22486:
	push r4
	subi r1,r1,$4
	mov f10,f4
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f8,f5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@88:21;88:43 lib_tortesia.ml@11:18;11:30
	fmovi f4,$0.60725293500888277709
; lib_sinint.ml@90:22;90:48
	fmovi f6,$0.00000000000000000000
; lib_sinint.ml@90:49;90:52
	li r8,$0
; lib_sinint.ml@90:53;90:54
	fld f2,r31,$508
	fmul f10,f8,f2
; lib_sinint.ml@90:61;90:75 ::= Ofmul lib_sinint.ml@88:21;88:43 lib_sinint.ml@88:33;88:35
	fsub f7,f9,f10
; lib_sinint.ml@90:56;90:75 ::= Ofsub lib_sinint.ml@76:3;90:127 lib_sinint.ml@90:61;90:75
	fmovi f11,$2.00000000000000000000
; lib_sinint.ml@90:109;90:112
	fdiv f10,f8,f11
; lib_sinint.ml@90:97;90:112 ::= Ofdiv lib_sinint.ml@88:21;88:43 lib_sinint.ml@90:109;90:112
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f10,f11
	bft @cfg_label_22464
	j @cfg_label_22463
	j @cfg_label_22465
	j @cfg_label_22466
@cfg_label_22465:
@cfg_label_22463:
	mov f9,f10
; lib_sinint.ml@90:97;90:112 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_22474
@cfg_label_22466:
@cfg_label_22464:
	fmovi f11,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f9,f10,f11
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_sinint.ml@90:97;90:112 lib_tortesia.ml@11:68;11:71
@cfg_label_22474:
	push r4
	subi r1,r1,$4
	mov f10,f9
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r9,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f9,f5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@90:90;90:113 lib_tortesia.ml@11:18;11:30
	fmovi f11,$2.00000000000000000000
; lib_sinint.ml@90:117;90:120
	fmul f10,f9,f11
; lib_sinint.ml@90:90;90:120 ::= Ofmul lib_sinint.ml@90:90;90:113 lib_sinint.ml@90:117;90:120
	fsub f11,f8,f10
; lib_sinint.ml@90:78;90:120 ::= Ofsub lib_sinint.ml@88:21;88:43 lib_sinint.ml@90:90;90:120
	fmovi f10,$1.00000000000000000000
; lib_sinint.ml@90:123;90:126
	feq f11,f10
	bft @emit_label_22708
	li r9,$0
	j @emit_label_22709
@emit_label_22708:
	li r9,$1
@emit_label_22709:
; lib_sinint.ml@90:78;90:126 ::= Oeq lib_sinint.ml@90:78;90:120 lib_sinint.ml@90:123;90:126
	push r4
	subi r1,r1,$20
	mov f10,f4
; lib_sinint.ml@90:22;90:48 ::<= lib_sinint.ml@90:22;90:48
	mov f11,f6
; lib_sinint.ml@90:49;90:52 ::<= lib_sinint.ml@90:49;90:52
	mov r10,r8
; lib_sinint.ml@90:53;90:54 ::<= lib_sinint.ml@90:53;90:54
	mov f12,f7
; lib_sinint.ml@90:56;90:75 ::<= lib_sinint.ml@90:56;90:75
	mov r11,r9
; lib_sinint.ml@90:78;90:126 ::<= lib_sinint.ml@90:78;90:126
	jal @a_15080internal_cos
	mov f8,f5
	addi r1,r1,$20
	pop r4
; lib_sinint.ml@76:3;90:127 lib_sinint.ml@90:9;90:21
	mov f5,f8
	pop f4
	pop f6
	pop r8
	pop f7
	pop f8
	pop f9
	pop r9
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@a_15020internal_atan:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$32
	mov f10,f10
	mov f11,f11
	mov r10,r10
	mov f12,f12
@cfg_label_22455:
@cfg_label_22454:
@cfg_label_22417:
	li r11,$24
; lib_sinint.ml@94:10;94:12
	bne r10,r11,@cfg_label_22450
	j @cfg_label_22449
	j @cfg_label_22451
	j @cfg_label_22452
@cfg_label_22451:
@cfg_label_22449:
	mov f5,f12
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_22452:
@cfg_label_22450:
	fmovi f13,$0.00000000000000000000
; lib_sinint.ml@97:13;97:16
	flt f11,f13
	bft @cfg_label_22445
	j @cfg_label_22444
	j @cfg_label_22446
@cfg_label_22445:
	lw r5,r31,$1100
	sll r6,r10,$2
	add f13,r5,r6
	lw f13,f13,$0
; lib_sinint.ml@98:34;98:43 ::= OArrRead lib_sinint.ml@100:34;100:39 lib_sinint.ml@94:3;100:95
	fmul f14,f11,f13
; lib_sinint.ml@98:29;98:43 ::= Ofmul lib_sinint.ml@94:3;100:95 lib_sinint.ml@98:34;98:43
	fsub f13,f10,f14
; lib_sinint.ml@98:24;98:43 ::= Ofsub lib_sinint.ml@94:3;100:95 lib_sinint.ml@98:29;98:43
	lw r5,r31,$1100
	sll r6,r10,$2
	add f15,r5,r6
	lw f15,f15,$0
; lib_sinint.ml@98:56;98:65 ::= OArrRead lib_sinint.ml@100:34;100:39 lib_sinint.ml@94:3;100:95
	fmul f14,f10,f15
; lib_sinint.ml@98:51;98:65 ::= Ofmul lib_sinint.ml@94:3;100:95 lib_sinint.ml@98:56;98:65
	fadd f10,f11,f14
; lib_sinint.ml@98:46;98:65 ::= Ofadd lib_sinint.ml@94:3;100:95 lib_sinint.ml@98:51;98:65
	addi r11,r10,$1
; lib_sinint.ml@98:68;98:73 ::= Oiadd[1] lib_sinint.ml@94:3;100:95
	lw r5,r31,$1088
	sll r6,r10,$2
	add f14,r5,r6
	lw f14,f14,$0
; lib_sinint.ml@98:85;98:94 ::= OArrRead lib_sinint.ml@100:85;100:90 lib_sinint.ml@94:3;100:95
	fsub f11,f12,f14
; lib_sinint.ml@98:76;98:94 ::= Ofsub lib_sinint.ml@94:3;100:95 lib_sinint.ml@98:85;98:94
	mov f12,f13
; lib_sinint.ml@98:24;98:43 ::<= lib_sinint.ml@94:3;100:95
	mov f13,f10
; lib_sinint.ml@98:46;98:65 ::<= lib_sinint.ml@94:3;100:95
	mov r12,r11
; lib_sinint.ml@98:68;98:73 ::<= lib_sinint.ml@94:3;100:95
	mov f14,f11
; lib_sinint.ml@98:76;98:94 ::<= lib_sinint.ml@94:3;100:95
	mov f10,f12
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	mov f11,f13
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	mov r10,r12
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	mov f12,f14
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	j @cfg_label_22417
	j @cfg_label_22454
@cfg_label_22446:
@cfg_label_22444:
	lw r5,r31,$1100
	sll r6,r10,$2
	add f13,r5,r6
	lw f13,f13,$0
; lib_sinint.ml@100:34;100:43 ::= OArrRead lib_sinint.ml@100:34;100:39 lib_sinint.ml@94:3;100:95
	fmul f14,f11,f13
; lib_sinint.ml@100:29;100:43 ::= Ofmul lib_sinint.ml@94:3;100:95 lib_sinint.ml@100:34;100:43
	fadd f13,f10,f14
; lib_sinint.ml@100:24;100:43 ::= Ofadd lib_sinint.ml@94:3;100:95 lib_sinint.ml@100:29;100:43
	lw r5,r31,$1100
	sll r6,r10,$2
	add f15,r5,r6
	lw f15,f15,$0
; lib_sinint.ml@100:56;100:65 ::= OArrRead lib_sinint.ml@100:34;100:39 lib_sinint.ml@94:3;100:95
	fmul f14,f10,f15
; lib_sinint.ml@100:51;100:65 ::= Ofmul lib_sinint.ml@94:3;100:95 lib_sinint.ml@100:56;100:65
	fsub f10,f11,f14
; lib_sinint.ml@100:46;100:65 ::= Ofsub lib_sinint.ml@94:3;100:95 lib_sinint.ml@100:51;100:65
	addi r11,r10,$1
; lib_sinint.ml@100:68;100:73 ::= Oiadd[1] lib_sinint.ml@94:3;100:95
	lw r5,r31,$1088
	sll r6,r10,$2
	add f14,r5,r6
	lw f14,f14,$0
; lib_sinint.ml@100:85;100:94 ::= OArrRead lib_sinint.ml@100:85;100:90 lib_sinint.ml@94:3;100:95
	fadd f11,f12,f14
; lib_sinint.ml@100:76;100:94 ::= Ofadd lib_sinint.ml@94:3;100:95 lib_sinint.ml@100:85;100:94
	mov f12,f13
; lib_sinint.ml@100:24;100:43 ::<= lib_sinint.ml@94:3;100:95
	mov f13,f10
; lib_sinint.ml@100:46;100:65 ::<= lib_sinint.ml@94:3;100:95
	mov r12,r11
; lib_sinint.ml@100:68;100:73 ::<= lib_sinint.ml@94:3;100:95
	mov f14,f11
; lib_sinint.ml@100:76;100:94 ::<= lib_sinint.ml@94:3;100:95
	mov f10,f12
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	mov f11,f13
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	mov r10,r12
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	mov f12,f14
; lib_sinint.ml@94:3;100:95 ::<= lib_sinint.ml@94:3;100:95
	j @cfg_label_22417
	j @cfg_label_22455
@a_8530atan:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$20
	push f8
	push f7
	push r8
	push f6
	push f4
	mov f6,f10
@cfg_label_22413:
	fmovi f4,$1.00000000000000000000
; lib_sinint.ml@102:17;102:20
	li r8,$0
; lib_sinint.ml@102:23;102:24
	fmovi f7,$0.00000000000000000000
; lib_sinint.ml@102:25;102:28
	push r4
	subi r1,r1,$16
	mov f10,f4
; lib_sinint.ml@102:17;102:20 ::<= lib_sinint.ml@102:17;102:20
	mov f11,f6
; lib_sinint.ml@93:0;102:28 ::<= lib_sinint.ml@93:0;102:28
	mov r10,r8
; lib_sinint.ml@102:23;102:24 ::<= lib_sinint.ml@102:23;102:24
	mov f12,f7
; lib_sinint.ml@102:25;102:28 ::<= lib_sinint.ml@102:25;102:28
	jal @a_15020internal_atan
	mov f8,f5
	addi r1,r1,$16
	pop r4
; lib_sinint.ml@93:0;102:28 lib_sinint.ml@102:3;102:16
	mov f5,f8
	pop f4
	pop f6
	pop r8
	pop f7
	pop f8
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@a_14980f:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$16
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_22412:
@cfg_label_22411:
@cfg_label_22410:
@cfg_label_22409:
@cfg_label_22361:
	addi r14,r10,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@109:2;111:42
	slt r5,r14,r11
	bne r0,r5,@cfg_label_22405
	j @cfg_label_22404
	j @cfg_label_22406
	j @cfg_label_22407
@cfg_label_22406:
@cfg_label_22404:
	mov r5,r10
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	pop r2
	pop r6
	jr r6
@cfg_label_22407:
@cfg_label_22405:
	add r15,r10,r11
; lib_sinint.ml@110:11;110:14 ::= Oadd lib_sinint.ml@109:2;111:42 lib_sinint.ml@109:2;111:42
	slti r6,r15,$0
	add r13,r15,r6
	sra r13,r13,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	mov r15,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r12,r15
	bne r0,r5,@cfg_label_22398
	j @cfg_label_22397
	j @cfg_label_22399
@cfg_label_22398:
	slt r5,r14,r13
	bne r0,r5,@cfg_label_22394
	j @cfg_label_22393
	j @cfg_label_22395
	j @cfg_label_22396
@cfg_label_22395:
@cfg_label_22393:
	mov r5,r10
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	pop r2
	pop r6
	jr r6
@cfg_label_22396:
@cfg_label_22394:
	add r14,r10,r13
; lib_sinint.ml@110:11;110:14 ::= Oadd lib_sinint.ml@109:2;111:42 lib_sinint.ml@110:10;110:19
	slti r6,r14,$0
	add r11,r14,r6
	sra r11,r11,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r11
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r11
	sll r6,r6,$1
	mov r14,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_22387
	j @cfg_label_22386
	j @cfg_label_22388
	j @cfg_label_22389
@cfg_label_22388:
@cfg_label_22386:
	mov r14,r11
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r15,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r13,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r14
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r15
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r12,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_22361
	j @cfg_label_22410
@cfg_label_22389:
@cfg_label_22387:
	mov r14,r10
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r13,r11
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r15,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r14
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r12,r15
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_22361
	j @cfg_label_22409
@cfg_label_22399:
@cfg_label_22397:
	addi r10,r13,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@110:10;110:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_22376
	j @cfg_label_22375
	j @cfg_label_22377
	j @cfg_label_22378
@cfg_label_22377:
@cfg_label_22375:
	mov r5,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	pop r2
	pop r6
	jr r6
@cfg_label_22378:
@cfg_label_22376:
	add r14,r13,r11
; lib_sinint.ml@110:11;110:14 ::= Oadd lib_sinint.ml@110:10;110:19 lib_sinint.ml@109:2;111:42
	slti r6,r14,$0
	add r10,r14,r6
	sra r10,r10,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	mov r14,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_22369
	j @cfg_label_22368
	j @cfg_label_22370
	j @cfg_label_22371
@cfg_label_22370:
@cfg_label_22368:
	mov r13,r10
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r14,r11
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r15,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r14
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r12,r15
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_22361
	j @cfg_label_22412
@cfg_label_22371:
@cfg_label_22369:
	mov r11,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r13,r10
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r14,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r11
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r12,r14
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_22361
	j @cfg_label_22411
@a_8532divten:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$24
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_22320:
	li r10,$0
; lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_22357
	j @cfg_label_22356
	j @cfg_label_22358
	j @cfg_label_22359
@cfg_label_22358:
@cfg_label_22356:
	li r22,$0
; lib_sinint.ml@108:1;115:25
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_22359:
@cfg_label_22357:
	li r10,$0
; lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22352
	j @cfg_label_22351
	j @cfg_label_22353
@cfg_label_22352:
	li r9,$0
; lib_sinint.ml@115:12;115:13
	sub r20,r0,r8
; lib_sinint.ml@115:15;115:17 ::= Ominus lib_sinint.ml@108:1;115:25
	addi r10,r9,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@115:12;115:13
	slt r5,r10,r20
	bne r0,r5,@cfg_label_22342
	j @cfg_label_22341
	j @cfg_label_22343
	j @cfg_label_22344
@cfg_label_22343:
@cfg_label_22341:
	mov r21,r9
; lib_sinint.ml@115:12;115:13 ::<= lib_sinint.ml@115:10;115:23
	j @cfg_label_22345
@cfg_label_22344:
@cfg_label_22342:
	addi r10,r20,$0
; lib_sinint.ml@110:11;110:14 ::= Oiadd[0] lib_sinint.ml@115:15;115:17
	slti r6,r10,$0
	add r8,r10,r6
	sra r8,r8,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r20,r10
	bne r0,r5,@cfg_label_22335
	j @cfg_label_22334
	j @cfg_label_22336
	j @cfg_label_22337
@cfg_label_22336:
@cfg_label_22334:
	push r4
	subi r1,r1,$12
	mov r10,r8
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r11,r20
; lib_sinint.ml@115:15;115:17 ::<= lib_sinint.ml@115:15;115:17
	mov r12,r20
; lib_sinint.ml@115:15;115:17 ::<= lib_sinint.ml@115:15;115:17
	jal @a_14980f
	mov r21,r5
	addi r1,r1,$12
	pop r4
; lib_sinint.ml@115:10;115:23 lib_sinint.ml@111:22;111:23
	j @cfg_label_22346
@cfg_label_22337:
@cfg_label_22335:
	push r4
	subi r1,r1,$12
	mov r10,r9
; lib_sinint.ml@115:12;115:13 ::<= lib_sinint.ml@115:12;115:13
	mov r11,r8
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r12,r20
; lib_sinint.ml@115:15;115:17 ::<= lib_sinint.ml@115:15;115:17
	jal @a_14980f
	mov r21,r5
	addi r1,r1,$12
	pop r4
; lib_sinint.ml@115:10;115:23 lib_sinint.ml@111:22;111:23
@cfg_label_22346:
@cfg_label_22345:
	sub r22,r0,r21
; lib_sinint.ml@108:1;115:25 ::= Ominus lib_sinint.ml@115:10;115:23
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_22353:
@cfg_label_22351:
	li r9,$0
; lib_sinint.ml@114:19;114:20
	addi r10,r9,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@114:19;114:20
	slt r5,r10,r8
	bne r0,r5,@cfg_label_22329
	j @cfg_label_22328
	j @cfg_label_22330
	j @cfg_label_22331
@cfg_label_22330:
@cfg_label_22328:
	mov r22,r9
; lib_sinint.ml@114:19;114:20 ::<= lib_sinint.ml@108:1;115:25
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_22331:
@cfg_label_22329:
	addi r10,r8,$0
; lib_sinint.ml@110:11;110:14 ::= Oiadd[0] lib_sinint.ml@108:1;115:25
	slti r6,r10,$0
	add r20,r10,r6
	sra r20,r20,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22322
	j @cfg_label_22321
	j @cfg_label_22323
	j @cfg_label_22324
@cfg_label_22323:
@cfg_label_22321:
	push r4
	subi r1,r1,$12
	mov r10,r20
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r11,r8
; lib_sinint.ml@108:1;115:25 ::<= lib_sinint.ml@108:1;115:25
	mov r12,r8
; lib_sinint.ml@108:1;115:25 ::<= lib_sinint.ml@108:1;115:25
	jal @a_14980f
	mov r22,r5
	addi r1,r1,$12
	pop r4
; lib_sinint.ml@108:1;115:25 lib_sinint.ml@111:22;111:23
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_22324:
@cfg_label_22322:
	push r4
	subi r1,r1,$12
	mov r10,r9
; lib_sinint.ml@114:19;114:20 ::<= lib_sinint.ml@114:19;114:20
	mov r11,r20
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r12,r8
; lib_sinint.ml@108:1;115:25 ::<= lib_sinint.ml@108:1;115:25
	jal @a_14980f
	mov r22,r5
	addi r1,r1,$12
	pop r4
; lib_sinint.ml@108:1;115:25 lib_sinint.ml@111:22;111:23
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@a_14933print_int_base:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$32
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_22285:
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22316
	j @cfg_label_22315
	j @cfg_label_22317
@cfg_label_22316:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_22311
	j @cfg_label_22310
	j @cfg_label_22312
	j @cfg_label_22313
@cfg_label_22312:
@cfg_label_22310:
; lib_sinint.ml@121:2;124:29
	mov r5,r20
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_22313:
@cfg_label_22311:
	addi r9,r8,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@121:2;124:29
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r20,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@121:2;124:29 lib_sinint.ml@124:3;124:13
	mov r5,r20
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_22317:
@cfg_label_22315:
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@121:2;124:29 ::<= lib_sinint.ml@121:2;124:29
	jal @a_8532divten
	mov r9,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_22298
	j @cfg_label_22297
	j @cfg_label_22299
@cfg_label_22298:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r9
	bne r0,r5,@cfg_label_22293
	j @cfg_label_22292
	j @cfg_label_22294
	j @cfg_label_22295
@cfg_label_22294:
@cfg_label_22292:
; lib_sinint.ml@123:4;123:21
	j @cfg_label_22305
@cfg_label_22295:
@cfg_label_22293:
	addi r20,r9,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@122:13;122:21
	push r4
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r21,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@124:3;124:13
	j @cfg_label_22306
@cfg_label_22299:
@cfg_label_22297:
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_8532divten
	mov r20,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	push r4
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_14933print_int_base
	mov r21,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@124:18;124:23 ::= Oimul[10] lib_sinint.ml@122:13;122:21
	sub r11,r9,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@122:13;122:21 lib_sinint.ml@124:18;124:23
	addi r20,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	push r4
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r21,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@124:3;124:13
	j @cfg_label_22304
@cfg_label_22306:
@cfg_label_22305:
@cfg_label_22304:
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@124:18;124:23 ::= Oimul[10] lib_sinint.ml@122:13;122:21
	sub r11,r8,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@121:2;124:29 lib_sinint.ml@124:18;124:23
	addi r8,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r20,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@121:2;124:29 lib_sinint.ml@124:3;124:13
	mov r5,r20
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@a_8534print_int:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_22237:
	li r10,$0
; lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_22281
	j @cfg_label_22280
	j @cfg_label_22282
@cfg_label_22281:
	li r10,$0
; lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22276
	j @cfg_label_22275
	j @cfg_label_22277
@cfg_label_22276:
	li r20,$45
; lib_sinint.ml@127:32;127:34
	push r4
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@127:32;127:34 ::<= lib_sinint.ml@127:32;127:34
	jal print_char
	mov r9,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@127:21;127:34 lib_sinint.ml@126:15;126:25
	li r10,$0
; lib_sinint.ml@127:52;127:53
	sub r9,r10,r8
; lib_sinint.ml@127:52;127:55 ::= Osub lib_sinint.ml@127:52;127:53 lib_sinint.ml@118:1;127:79
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_22267
	j @cfg_label_22266
	j @cfg_label_22268
@cfg_label_22267:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r9
	bne r0,r5,@cfg_label_22262
	j @cfg_label_22261
	j @cfg_label_22263
	j @cfg_label_22264
@cfg_label_22263:
@cfg_label_22261:
; lib_sinint.ml@118:1;127:79
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_22264:
@cfg_label_22262:
	addi r20,r9,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@127:52;127:55
	push r4
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_22268:
@cfg_label_22266:
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@127:52;127:55 ::<= lib_sinint.ml@127:52;127:55
	jal @a_8532divten
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_14933print_int_base
	mov r20,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@124:18;124:23 ::= Oimul[10] lib_sinint.ml@122:13;122:21
	sub r11,r9,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@127:52;127:55 lib_sinint.ml@124:18;124:23
	addi r9,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_22277:
@cfg_label_22275:
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22251
	j @cfg_label_22250
	j @cfg_label_22252
@cfg_label_22251:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_22246
	j @cfg_label_22245
	j @cfg_label_22247
	j @cfg_label_22248
@cfg_label_22247:
@cfg_label_22245:
; lib_sinint.ml@118:1;127:79
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_22248:
@cfg_label_22246:
	addi r9,r8,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@118:1;127:79
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_22252:
@cfg_label_22250:
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@118:1;127:79 ::<= lib_sinint.ml@118:1;127:79
	jal @a_8532divten
	mov r9,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_14933print_int_base
	mov r20,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@124:18;124:23 ::= Oimul[10] lib_sinint.ml@122:13;122:21
	sub r11,r8,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@118:1;127:79 lib_sinint.ml@124:18;124:23
	addi r9,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_22282:
@cfg_label_22280:
	li r9,$48
; lib_sinint.ml@126:26;126:28
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_sinint.ml@126:26;126:28 ::<= lib_sinint.ml@126:26;126:28
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
	mov r5,r8
	pop r8
	pop r9
	pop r20
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@a_8597vecunit_sgn:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$48
	push f9
	push f8
	push r9
	push f7
	push f6
	push f4
	push r8
	mov r8,r10
	mov r9,r11
@cfg_label_22205:
	lw f7,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@91:21;91:26 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f7,f7
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@91:21;91:26 ../cpuex2017/raytracer/min-rt.ml@91:21;91:26
	lw f4,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@91:35;91:40 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f12,f4,f4
; ../cpuex2017/raytracer/min-rt.ml@91:30;91:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@91:35;91:40 ../cpuex2017/raytracer/min-rt.ml@91:35;91:40
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@91:16;91:26 ../cpuex2017/raytracer/min-rt.ml@91:30;91:40
	lw f6,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@91:49;91:54 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f6,f6
; ../cpuex2017/raytracer/min-rt.ml@91:44;91:54 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@91:49;91:54 ../cpuex2017/raytracer/min-rt.ml@91:49;91:54
	fadd f9,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:54 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@91:16;91:40 ../cpuex2017/raytracer/min-rt.ml@91:44;91:54
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:54 ::<= ../cpuex2017/raytracer/min-rt.ml@91:16;91:54
	jal sqrt
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@91:10;91:55 ../cpuex2017/raytracer/min-rt.ml@91:10;91:14
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f8,f10
	bft @emit_label_22710
	li r10,$0
	j @emit_label_22711
@emit_label_22710:
	li r10,$1
@emit_label_22711:
; ../cpuex2017/raytracer/min-rt.ml@92:14;92:23 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@91:10;91:55 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@92:14;92:23
	bne r10,r11,@cfg_label_22214
	j @cfg_label_22213
	j @cfg_label_22215
	j @cfg_label_22216
@cfg_label_22215:
@cfg_label_22213:
	fmovi f10,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	j @cfg_label_22222
@cfg_label_22216:
@cfg_label_22214:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@92:41;92:44
	bne r9,r10,@cfg_label_22209
	j @cfg_label_22208
	j @cfg_label_22210
@cfg_label_22209:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@92:65;92:68
	fdiv f10,f11,f8
; ../cpuex2017/raytracer/min-rt.ml@92:11;92:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@92:65;92:68 ../cpuex2017/raytracer/min-rt.ml@91:10;91:55
	j @cfg_label_22224
@cfg_label_22210:
@cfg_label_22208:
	fmovi f11,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@92:51;92:54
	fdiv f10,f11,f8
; ../cpuex2017/raytracer/min-rt.ml@92:11;92:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@92:51;92:54 ../cpuex2017/raytracer/min-rt.ml@91:10;91:55
	j @cfg_label_22223
@cfg_label_22224:
@cfg_label_22223:
@cfg_label_22222:
	fmul f11,f7,f10
; ../cpuex2017/raytracer/min-rt.ml@93:11;93:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@91:21;91:26 ../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	sw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@93:2;93:22 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@91:2;95:22 ../cpuex2017/raytracer/min-rt.ml@93:11;93:22
	fmul f11,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@94:11;94:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@91:35;91:40 ../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	sw f11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@94:2;94:22 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@91:2;95:22 ../cpuex2017/raytracer/min-rt.ml@94:11;94:22
	fmul f11,f6,f10
; ../cpuex2017/raytracer/min-rt.ml@95:11;95:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@91:49;91:54 ../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	sw f11,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@91:2;95:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@91:2;95:22 ../cpuex2017/raytracer/min-rt.ml@95:11;95:22
	pop r8
	pop f4
	pop f6
	pop f7
	pop r9
	pop f8
	pop f9
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@a_8621vecaccumv:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$24
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_22187:
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@138:14;138:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	lw f12,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@138:26;138:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	lw f13,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@138:35;138:40 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fmul f11,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@138:26;138:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@138:26;138:31 ../cpuex2017/raytracer/min-rt.ml@138:35;138:40
	fadd f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@138:14;138:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@138:14;138:22 ../cpuex2017/raytracer/min-rt.ml@138:26;138:40
	sw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@138:2;138:40 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40 ../cpuex2017/raytracer/min-rt.ml@138:14;138:40
	lw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@139:14;139:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	lw f12,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@139:26;139:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	lw f13,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@139:35;139:40 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fmul f11,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@139:26;139:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@139:26;139:31 ../cpuex2017/raytracer/min-rt.ml@139:35;139:40
	fadd f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@139:14;139:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@139:14;139:22 ../cpuex2017/raytracer/min-rt.ml@139:26;139:40
	sw f12,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@139:2;139:40 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40 ../cpuex2017/raytracer/min-rt.ml@139:14;139:40
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@140:14;140:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	lw f11,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@140:26;140:31 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	lw f12,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@140:35;140:40 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fmul f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@140:26;140:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@140:26;140:31 ../cpuex2017/raytracer/min-rt.ml@140:35;140:40
	fadd f11,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@140:14;140:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@140:14;140:22 ../cpuex2017/raytracer/min-rt.ml@140:26;140:40
	sw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@138:2;140:40 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@138:2;140:40 ../cpuex2017/raytracer/min-rt.ml@140:14;140:40
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@a_8698read_screen_settings:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	push f9
	push r8
	push f8
	push f7
	push f6
	push f4
	sw r10,r2,$8
@cfg_label_22129:
; ../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@490:27;490:29 ::<= ../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@490:16;490:29 ../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	lw r5,r31,$444
	sw f4,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@490:2;490:29 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@490:2;490:8 ../cpuex2017/raytracer/min-rt.ml@490:16;490:29
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@490:27;490:29 ::<= ../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@491:16;491:29 ../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	lw r5,r31,$444
	sw f4,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@491:2;491:29 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@490:2;490:8 ../cpuex2017/raytracer/min-rt.ml@491:16;491:29
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@490:27;490:29 ::<= ../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@492:16;492:29 ../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	lw r5,r31,$444
	sw f4,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@492:2;492:29 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@490:2;490:8 ../cpuex2017/raytracer/min-rt.ml@492:16;492:29
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@490:27;490:29 ::<= ../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@494:16;494:29 ../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	fmovi f10,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f7,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@494:11;494:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@494:16;494:29 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@494:11;494:30 ::<= ../cpuex2017/raytracer/min-rt.ml@494:11;494:30
	jal @a_8528cos
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@495:15;495:21 ../cpuex2017/raytracer/min-rt.ml@495:15;495:18
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@494:11;494:30 ::<= ../cpuex2017/raytracer/min-rt.ml@494:11;494:30
	jal @a_8526sin
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@496:15;496:21 ../cpuex2017/raytracer/min-rt.ml@496:15;496:18
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@490:27;490:29 ::<= ../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@497:16;497:29 ../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	fmovi f10,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f9,f7,f10
; ../cpuex2017/raytracer/min-rt.ml@497:11;497:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@497:16;497:29 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@497:11;497:30 ::<= ../cpuex2017/raytracer/min-rt.ml@497:11;497:30
	jal @a_8528cos
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@498:15;498:21 ../cpuex2017/raytracer/min-rt.ml@495:15;495:18
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@497:11;497:30 ::<= ../cpuex2017/raytracer/min-rt.ml@497:11;497:30
	jal @a_8526sin
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@499:15;499:21 ../cpuex2017/raytracer/min-rt.ml@496:15;496:18
	fmul f11,f6,f8
; ../cpuex2017/raytracer/min-rt.ml@501:21;501:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@495:15;495:21 ../cpuex2017/raytracer/min-rt.ml@499:15;499:21
	fmovi f12,$200.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@501:41;501:46
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@501:21;501:46 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@501:21;501:37 ../cpuex2017/raytracer/min-rt.ml@501:41;501:46
	lw r5,r31,$164
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@501:2;501:46 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@501:2;501:13 ../cpuex2017/raytracer/min-rt.ml@501:21;501:46
	fmovi f11,$-200.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@502:32;502:37
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@502:21;502:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@496:15;496:21 ../cpuex2017/raytracer/min-rt.ml@502:32;502:37
	lw r5,r31,$164
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@502:2;502:37 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@501:2;501:13 ../cpuex2017/raytracer/min-rt.ml@502:21;502:37
	fmul f11,f6,f7
; ../cpuex2017/raytracer/min-rt.ml@503:21;503:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@495:15;495:21 ../cpuex2017/raytracer/min-rt.ml@498:15;498:21
	fmovi f12,$200.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@503:41;503:46
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@503:21;503:46 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@503:21;503:37 ../cpuex2017/raytracer/min-rt.ml@503:41;503:46
	lw r5,r31,$164
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@503:2;503:46 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@501:2;501:13 ../cpuex2017/raytracer/min-rt.ml@503:21;503:46
	lw r5,r31,$188
	sw f7,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@505:2;505:27 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@505:2;505:13 ../cpuex2017/raytracer/min-rt.ml@498:15;498:21
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@506:15;506:16
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@506:21;506:24
	lw r5,r31,$188
	sll r6,r11,$2
	add r5,r5,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@506:2;506:24 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@505:2;505:13 ../cpuex2017/raytracer/min-rt.ml@506:15;506:16 ../cpuex2017/raytracer/min-rt.ml@506:21;506:24
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f8
; ../cpuex2017/raytracer/min-rt.ml@507:21;507:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@499:15;499:21
	lw r5,r31,$188
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@507:2;507:32 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@505:2;505:13 ../cpuex2017/raytracer/min-rt.ml@507:21;507:32
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@509:21;509:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@496:15;496:21
	fmul f11,f10,f8
; ../cpuex2017/raytracer/min-rt.ml@509:21;509:42 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@509:21;509:32 ../cpuex2017/raytracer/min-rt.ml@499:15;499:21
	lw r5,r31,$176
	sw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@509:2;509:42 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@509:2;509:13 ../cpuex2017/raytracer/min-rt.ml@509:21;509:42
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f6
; ../cpuex2017/raytracer/min-rt.ml@510:21;510:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@495:15;495:21
	lw r5,r31,$176
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@510:2;510:32 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@509:2;509:13 ../cpuex2017/raytracer/min-rt.ml@510:21;510:32
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@511:21;511:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@496:15;496:21
	fmul f11,f10,f7
; ../cpuex2017/raytracer/min-rt.ml@511:21;511:42 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@511:21;511:32 ../cpuex2017/raytracer/min-rt.ml@498:15;498:21
	lw r5,r31,$176
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@511:2;511:42 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@509:2;509:13 ../cpuex2017/raytracer/min-rt.ml@511:21;511:42
	lw r5,r31,$444
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@513:19;513:29 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@490:2;490:8
	lw r5,r31,$164
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@513:33;513:48 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@501:2;501:13
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@513:19;513:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@513:19;513:29 ../cpuex2017/raytracer/min-rt.ml@513:33;513:48
	lw r5,r31,$432
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@513:2;513:48 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@513:2;513:11 ../cpuex2017/raytracer/min-rt.ml@513:19;513:48
	lw r5,r31,$444
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@514:19;514:29 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@490:2;490:8
	lw r5,r31,$164
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@514:33;514:48 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@501:2;501:13
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@514:19;514:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@514:19;514:29 ../cpuex2017/raytracer/min-rt.ml@514:33;514:48
	lw r5,r31,$432
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@514:2;514:48 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@513:2;513:11 ../cpuex2017/raytracer/min-rt.ml@514:19;514:48
	lw r5,r31,$444
	lw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@515:19;515:29 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@490:2;490:8
	lw r5,r31,$164
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@515:33;515:48 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@501:2;501:13
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@515:19;515:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@515:19;515:29 ../cpuex2017/raytracer/min-rt.ml@515:33;515:48
	lw r5,r31,$432
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@490:2;515:48 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@513:2;513:11 ../cpuex2017/raytracer/min-rt.ml@515:19;515:48
	pop f4
	pop f6
	pop f7
	pop f8
	pop r8
	pop f9
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@a_8700read_light:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$60
	push r9
	push f7
	push f6
	push f4
	push r8
	sw r10,r2,$8
@cfg_label_22108:
; ../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@522:20;522:22 ::<= ../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_int
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@522:11;522:22 ../cpuex2017/raytracer/min-rt.ml@522:11;522:19
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@522:20;522:22 ::<= ../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_float
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@525:16;525:29 ../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	fmovi f10,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f4,f6,f10
; ../cpuex2017/raytracer/min-rt.ml@525:11;525:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@525:16;525:29 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@525:11;525:30 ::<= ../cpuex2017/raytracer/min-rt.ml@525:11;525:30
	jal @a_8526sin
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@526:12;526:18 ../cpuex2017/raytracer/min-rt.ml@526:12;526:15
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f6
; ../cpuex2017/raytracer/min-rt.ml@527:15;527:23 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@526:12;526:18
	lw r5,r31,$420
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@527:2;527:23 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@527:2;527:7 ../cpuex2017/raytracer/min-rt.ml@527:15;527:23
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@522:20;522:22 ::<= ../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_float
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@528:16;528:29 ../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	fmovi f10,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f6,f7,f10
; ../cpuex2017/raytracer/min-rt.ml@528:11;528:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@528:16;528:29 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@525:11;525:30 ::<= ../cpuex2017/raytracer/min-rt.ml@525:11;525:30
	jal @a_8528cos
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@529:12;529:18 ../cpuex2017/raytracer/min-rt.ml@529:12;529:15
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@528:11;528:30 ::<= ../cpuex2017/raytracer/min-rt.ml@528:11;528:30
	jal @a_8526sin
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@530:12;530:18 ../cpuex2017/raytracer/min-rt.ml@526:12;526:15
	fmul f10,f7,f4
; ../cpuex2017/raytracer/min-rt.ml@531:15;531:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@529:12;529:18 ../cpuex2017/raytracer/min-rt.ml@530:12;530:18
	lw r5,r31,$420
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@531:2;531:25 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@527:2;527:7 ../cpuex2017/raytracer/min-rt.ml@531:15;531:25
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@528:11;528:30 ::<= ../cpuex2017/raytracer/min-rt.ml@528:11;528:30
	jal @a_8528cos
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@532:12;532:18 ../cpuex2017/raytracer/min-rt.ml@529:12;529:15
	fmul f10,f7,f4
; ../cpuex2017/raytracer/min-rt.ml@533:15;533:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@529:12;529:18 ../cpuex2017/raytracer/min-rt.ml@532:12;532:18
	lw r5,r31,$420
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@533:2;533:25 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@527:2;527:7 ../cpuex2017/raytracer/min-rt.ml@533:15;533:25
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@522:20;522:22 ::<= ../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@534:14;534:27 ../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	lw r5,r31,$408
	sw f4,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@522:2;534:27 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@534:2;534:6 ../cpuex2017/raytracer/min-rt.ml@534:14;534:27
	pop r8
	pop f4
	pop f6
	pop f7
	pop r9
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@a_8702rotate_quadratic_matrix:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$84
	push f21
	push f20
	push f9
	push f8
	push f7
	push f6
	push f4
	push r9
	push r8
	mov r9,r10
	mov r8,r11
@cfg_label_22019:
	lw f7,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@544:18;544:25 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@544:18;544:25 ::<= ../cpuex2017/raytracer/min-rt.ml@544:18;544:25
	jal @a_8528cos
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@544:14;544:25 ../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@544:18;544:25 ::<= ../cpuex2017/raytracer/min-rt.ml@544:18;544:25
	jal @a_8526sin
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@545:14;545:25 ../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	lw f9,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@546:18;546:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@546:18;546:25 ::<= ../cpuex2017/raytracer/min-rt.ml@546:18;546:25
	jal @a_8528cos
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@546:14;546:25 ../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@546:18;546:25 ::<= ../cpuex2017/raytracer/min-rt.ml@546:18;546:25
	jal @a_8526sin
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@547:14;547:25 ../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	lw f21,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@548:18;548:25 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	push r4
	subi r1,r1,$4
	mov f10,f21
; ../cpuex2017/raytracer/min-rt.ml@548:18;548:25 ::<= ../cpuex2017/raytracer/min-rt.ml@548:18;548:25
	jal @a_8528cos
	mov f9,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@548:14;548:25 ../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	push r4
	subi r1,r1,$4
	mov f10,f21
; ../cpuex2017/raytracer/min-rt.ml@548:18;548:25 ::<= ../cpuex2017/raytracer/min-rt.ml@548:18;548:25
	jal @a_8526sin
	mov f20,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@549:14;549:25 ../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	fmul f12,f7,f9
; ../cpuex2017/raytracer/min-rt.ml@551:12;551:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@546:14;546:25 ../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fmul f11,f6,f8
; ../cpuex2017/raytracer/min-rt.ml@552:12;552:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@545:14;545:25 ../cpuex2017/raytracer/min-rt.ml@547:14;547:25
	fmul f13,f11,f9
; ../cpuex2017/raytracer/min-rt.ml@552:12;552:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@552:12;552:26 ../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fmul f14,f4,f20
; ../cpuex2017/raytracer/min-rt.ml@552:39;552:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@544:14;544:25 ../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fsub f10,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@552:12;552:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@552:12;552:35 ../cpuex2017/raytracer/min-rt.ml@552:39;552:53
	fmul f13,f4,f8
; ../cpuex2017/raytracer/min-rt.ml@553:12;553:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@544:14;544:25 ../cpuex2017/raytracer/min-rt.ml@547:14;547:25
	fmul f15,f13,f9
; ../cpuex2017/raytracer/min-rt.ml@553:12;553:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@553:12;553:26 ../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fmul f16,f6,f20
; ../cpuex2017/raytracer/min-rt.ml@553:39;553:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@545:14;545:25 ../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fadd f14,f15,f16
; ../cpuex2017/raytracer/min-rt.ml@553:12;553:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@553:12;553:35 ../cpuex2017/raytracer/min-rt.ml@553:39;553:53
	fmul f15,f7,f20
; ../cpuex2017/raytracer/min-rt.ml@555:12;555:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@546:14;546:25 ../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fmul f16,f11,f20
; ../cpuex2017/raytracer/min-rt.ml@556:12;556:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@552:12;552:26 ../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fmul f17,f4,f9
; ../cpuex2017/raytracer/min-rt.ml@556:39;556:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@544:14;544:25 ../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fadd f11,f16,f17
; ../cpuex2017/raytracer/min-rt.ml@556:12;556:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@556:12;556:35 ../cpuex2017/raytracer/min-rt.ml@556:39;556:53
	fmul f17,f13,f20
; ../cpuex2017/raytracer/min-rt.ml@557:12;557:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@553:12;553:26 ../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fmul f13,f6,f9
; ../cpuex2017/raytracer/min-rt.ml@557:39;557:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@545:14;545:25 ../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fsub f16,f17,f13
; ../cpuex2017/raytracer/min-rt.ml@557:12;557:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@557:12;557:35 ../cpuex2017/raytracer/min-rt.ml@557:39;557:53
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f17,f13,f8
; ../cpuex2017/raytracer/min-rt.ml@559:12;559:22 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@547:14;547:25
	fmul f13,f6,f7
; ../cpuex2017/raytracer/min-rt.ml@560:12;560:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@545:14;545:25 ../cpuex2017/raytracer/min-rt.ml@546:14;546:25
	fmul f18,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@561:12;561:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@544:14;544:25 ../cpuex2017/raytracer/min-rt.ml@546:14;546:25
	lw f6,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	lw f4,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	lw f19,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	fmul f7,f12,f12
; ../cpuex2017/raytracer/min-rt.ml@571:19;571:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@551:12;551:26 ../cpuex2017/raytracer/min-rt.ml@551:12;551:26
	fmul f8,f6,f7
; ../cpuex2017/raytracer/min-rt.ml@571:13;571:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ../cpuex2017/raytracer/min-rt.ml@571:19;571:27
	fmul f7,f15,f15
; ../cpuex2017/raytracer/min-rt.ml@571:37;571:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@555:12;555:26 ../cpuex2017/raytracer/min-rt.ml@555:12;555:26
	fmul f9,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@571:31;571:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ../cpuex2017/raytracer/min-rt.ml@571:37;571:45
	fadd f7,f8,f9
; ../cpuex2017/raytracer/min-rt.ml@571:13;571:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@571:13;571:27 ../cpuex2017/raytracer/min-rt.ml@571:31;571:45
	fmul f9,f17,f17
; ../cpuex2017/raytracer/min-rt.ml@571:55;571:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@559:12;559:22 ../cpuex2017/raytracer/min-rt.ml@559:12;559:22
	fmul f8,f19,f9
; ../cpuex2017/raytracer/min-rt.ml@571:49;571:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ../cpuex2017/raytracer/min-rt.ml@571:55;571:63
	fadd f9,f7,f8
; ../cpuex2017/raytracer/min-rt.ml@571:13;571:63 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@571:13;571:45 ../cpuex2017/raytracer/min-rt.ml@571:49;571:63
	sw f9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@571:2;571:63 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ../cpuex2017/raytracer/min-rt.ml@571:13;571:63
	fmul f7,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@572:19;572:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@552:12;552:53 ../cpuex2017/raytracer/min-rt.ml@552:12;552:53
	fmul f8,f6,f7
; ../cpuex2017/raytracer/min-rt.ml@572:13;572:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ../cpuex2017/raytracer/min-rt.ml@572:19;572:27
	fmul f7,f11,f11
; ../cpuex2017/raytracer/min-rt.ml@572:37;572:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@556:12;556:53 ../cpuex2017/raytracer/min-rt.ml@556:12;556:53
	fmul f9,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@572:31;572:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ../cpuex2017/raytracer/min-rt.ml@572:37;572:45
	fadd f7,f8,f9
; ../cpuex2017/raytracer/min-rt.ml@572:13;572:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@572:13;572:27 ../cpuex2017/raytracer/min-rt.ml@572:31;572:45
	fmul f9,f13,f13
; ../cpuex2017/raytracer/min-rt.ml@572:55;572:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@560:12;560:26 ../cpuex2017/raytracer/min-rt.ml@560:12;560:26
	fmul f8,f19,f9
; ../cpuex2017/raytracer/min-rt.ml@572:49;572:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ../cpuex2017/raytracer/min-rt.ml@572:55;572:63
	fadd f9,f7,f8
; ../cpuex2017/raytracer/min-rt.ml@572:13;572:63 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@572:13;572:45 ../cpuex2017/raytracer/min-rt.ml@572:49;572:63
	sw f9,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@572:2;572:63 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ../cpuex2017/raytracer/min-rt.ml@572:13;572:63
	fmul f7,f14,f14
; ../cpuex2017/raytracer/min-rt.ml@573:19;573:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@553:12;553:53 ../cpuex2017/raytracer/min-rt.ml@553:12;553:53
	fmul f8,f6,f7
; ../cpuex2017/raytracer/min-rt.ml@573:13;573:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ../cpuex2017/raytracer/min-rt.ml@573:19;573:27
	fmul f7,f16,f16
; ../cpuex2017/raytracer/min-rt.ml@573:37;573:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@557:12;557:53 ../cpuex2017/raytracer/min-rt.ml@557:12;557:53
	fmul f9,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@573:31;573:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ../cpuex2017/raytracer/min-rt.ml@573:37;573:45
	fadd f7,f8,f9
; ../cpuex2017/raytracer/min-rt.ml@573:13;573:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@573:13;573:27 ../cpuex2017/raytracer/min-rt.ml@573:31;573:45
	fmul f9,f18,f18
; ../cpuex2017/raytracer/min-rt.ml@573:55;573:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@561:12;561:26 ../cpuex2017/raytracer/min-rt.ml@561:12;561:26
	fmul f8,f19,f9
; ../cpuex2017/raytracer/min-rt.ml@573:49;573:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ../cpuex2017/raytracer/min-rt.ml@573:55;573:63
	fadd f9,f7,f8
; ../cpuex2017/raytracer/min-rt.ml@573:13;573:63 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@573:13;573:45 ../cpuex2017/raytracer/min-rt.ml@573:49;573:63
	sw f9,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@573:2;573:63 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ../cpuex2017/raytracer/min-rt.ml@573:13;573:63
	fmovi f7,$2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@576:13;576:16
	fmul f8,f6,f10
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ../cpuex2017/raytracer/min-rt.ml@552:12;552:53
	fmul f9,f8,f14
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:21;576:30 ../cpuex2017/raytracer/min-rt.ml@553:12;553:53
	fmul f8,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@576:41;576:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ../cpuex2017/raytracer/min-rt.ml@556:12;556:53
	fmul f20,f8,f16
; ../cpuex2017/raytracer/min-rt.ml@576:41;576:57 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:41;576:50 ../cpuex2017/raytracer/min-rt.ml@557:12;557:53
	fadd f8,f9,f20
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@576:21;576:37 ../cpuex2017/raytracer/min-rt.ml@576:41;576:57
	fmul f20,f19,f13
; ../cpuex2017/raytracer/min-rt.ml@576:61;576:70 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ../cpuex2017/raytracer/min-rt.ml@560:12;560:26
	fmul f9,f20,f18
; ../cpuex2017/raytracer/min-rt.ml@576:61;576:77 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:61;576:70 ../cpuex2017/raytracer/min-rt.ml@561:12;561:26
	fadd f20,f8,f9
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:77 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@576:21;576:57 ../cpuex2017/raytracer/min-rt.ml@576:61;576:77
	fmul f8,f7,f20
; ../cpuex2017/raytracer/min-rt.ml@576:13;576:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:13;576:16 ../cpuex2017/raytracer/min-rt.ml@576:21;576:77
	sw f8,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@576:2;576:78 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ../cpuex2017/raytracer/min-rt.ml@576:13;576:78
	fmovi f8,$2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@577:13;577:16
	fmul f7,f6,f12
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ../cpuex2017/raytracer/min-rt.ml@551:12;551:26
	fmul f6,f7,f14
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:21;577:30 ../cpuex2017/raytracer/min-rt.ml@553:12;553:53
	fmul f12,f4,f15
; ../cpuex2017/raytracer/min-rt.ml@577:41;577:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ../cpuex2017/raytracer/min-rt.ml@555:12;555:26
	fmul f14,f12,f16
; ../cpuex2017/raytracer/min-rt.ml@577:41;577:57 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:41;577:50 ../cpuex2017/raytracer/min-rt.ml@557:12;557:53
	fadd f15,f6,f14
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@577:21;577:37 ../cpuex2017/raytracer/min-rt.ml@577:41;577:57
	fmul f14,f19,f17
; ../cpuex2017/raytracer/min-rt.ml@577:61;577:70 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ../cpuex2017/raytracer/min-rt.ml@559:12;559:22
	fmul f16,f14,f18
; ../cpuex2017/raytracer/min-rt.ml@577:61;577:77 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:61;577:70 ../cpuex2017/raytracer/min-rt.ml@561:12;561:26
	fadd f17,f15,f16
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:77 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@577:21;577:57 ../cpuex2017/raytracer/min-rt.ml@577:61;577:77
	fmul f15,f8,f17
; ../cpuex2017/raytracer/min-rt.ml@577:13;577:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:13;577:16 ../cpuex2017/raytracer/min-rt.ml@577:21;577:77
	sw f15,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@577:2;577:78 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ../cpuex2017/raytracer/min-rt.ml@577:13;577:78
	fmovi f15,$2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@578:13;578:16
	fmul f16,f7,f10
; ../cpuex2017/raytracer/min-rt.ml@578:21;578:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:21;577:30 ../cpuex2017/raytracer/min-rt.ml@552:12;552:53
	fmul f10,f12,f11
; ../cpuex2017/raytracer/min-rt.ml@578:41;578:57 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:41;577:50 ../cpuex2017/raytracer/min-rt.ml@556:12;556:53
	fadd f11,f16,f10
; ../cpuex2017/raytracer/min-rt.ml@578:21;578:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@578:21;578:37 ../cpuex2017/raytracer/min-rt.ml@578:41;578:57
	fmul f10,f14,f13
; ../cpuex2017/raytracer/min-rt.ml@578:61;578:77 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:61;577:70 ../cpuex2017/raytracer/min-rt.ml@560:12;560:26
	fadd f12,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@578:21;578:77 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@578:21;578:57 ../cpuex2017/raytracer/min-rt.ml@578:61;578:77
	fmul f10,f15,f12
; ../cpuex2017/raytracer/min-rt.ml@578:13;578:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@578:13;578:16 ../cpuex2017/raytracer/min-rt.ml@578:21;578:77
	sw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ../cpuex2017/raytracer/min-rt.ml@578:13;578:78
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop f8
	pop f9
	pop f20
	pop f21
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
@a_8705read_nth_object:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	push f4
	push r29
	push r28
	push r27
	push r26
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r23,r10
@cfg_label_21831:
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r24,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@585:16;585:27 ../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@586:16;586:18
	bne r24,r10,@cfg_label_22013
	j @cfg_label_22012
	j @cfg_label_22014
	j @cfg_label_22015
@cfg_label_22014:
@cfg_label_22012:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@662:4;662:9 ::<= ../cpuex2017/raytracer/min-rt.ml@585:2;662:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	pop r27
	pop r28
	pop r29
	pop f4
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_22015:
@cfg_label_22013:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@588:17;588:28 ../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r25,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@589:21;589:32 ../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@590:20;590:31 ../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@592:29;592:30
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@592:31;592:34
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22713
@emit_label_22712:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22712
@emit_label_22713:
	mov r9,r7
; ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@592:29;592:30 ../cpuex2017/raytracer/min-rt.ml@592:31;592:34
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@593:17;593:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@593:6;593:30 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ../cpuex2017/raytracer/min-rt.ml@593:17;593:30
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@594:17;594:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@594:6;594:30 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ../cpuex2017/raytracer/min-rt.ml@594:17;594:30
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@595:17;595:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@595:6;595:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ../cpuex2017/raytracer/min-rt.ml@595:17;595:30
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@597:29;597:30
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@597:31;597:34
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22715
@emit_label_22714:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22714
@emit_label_22715:
	mov r26,r7
; ../cpuex2017/raytracer/min-rt.ml@597:16;597:34 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@597:29;597:30 ../cpuex2017/raytracer/min-rt.ml@597:31;597:34
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@598:17;598:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r26,$0
; ../cpuex2017/raytracer/min-rt.ml@598:6;598:30 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@597:16;597:34 ../cpuex2017/raytracer/min-rt.ml@598:17;598:30
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@599:17;599:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r26,$4
; ../cpuex2017/raytracer/min-rt.ml@599:6;599:30 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@597:16;597:34 ../cpuex2017/raytracer/min-rt.ml@599:17;599:30
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@600:17;600:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r26,$8
; ../cpuex2017/raytracer/min-rt.ml@600:6;600:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@597:16;597:34 ../cpuex2017/raytracer/min-rt.ml@600:17;600:30
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@602:29;602:42 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f4,f10
	bft @emit_label_22716
	li r27,$0
	j @emit_label_22717
@emit_label_22716:
	li r27,$1
@emit_label_22717:
; ../cpuex2017/raytracer/min-rt.ml@602:21;602:43 ::= Olt ../cpuex2017/raytracer/min-rt.ml@602:29;602:42 lib_tortesia.ml@7:24;7:27
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@604:35;604:36
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@604:37;604:40
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22719
@emit_label_22718:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22718
@emit_label_22719:
	mov r28,r7
; ../cpuex2017/raytracer/min-rt.ml@604:22;604:40 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@604:35;604:36 ../cpuex2017/raytracer/min-rt.ml@604:37;604:40
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@605:23;605:36 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r28,$0
; ../cpuex2017/raytracer/min-rt.ml@605:6;605:36 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@604:22;604:40 ../cpuex2017/raytracer/min-rt.ml@605:23;605:36
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@606:23;606:36 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r28,$4
; ../cpuex2017/raytracer/min-rt.ml@606:6;606:36 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@604:22;604:40 ../cpuex2017/raytracer/min-rt.ml@606:23;606:36
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@608:31;608:32
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@608:33;608:36
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22721
@emit_label_22720:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22720
@emit_label_22721:
	mov r29,r7
; ../cpuex2017/raytracer/min-rt.ml@608:18;608:36 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@608:31;608:32 ../cpuex2017/raytracer/min-rt.ml@608:33;608:36
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@609:19;609:32 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r29,$0
; ../cpuex2017/raytracer/min-rt.ml@609:6;609:32 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@608:18;608:36 ../cpuex2017/raytracer/min-rt.ml@609:19;609:32
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@610:19;610:32 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r29,$4
; ../cpuex2017/raytracer/min-rt.ml@610:6;610:32 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@608:18;608:36 ../cpuex2017/raytracer/min-rt.ml@610:19;610:32
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@611:19;611:32 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	sw f4,r29,$8
; ../cpuex2017/raytracer/min-rt.ml@611:6;611:32 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@608:18;608:36 ../cpuex2017/raytracer/min-rt.ml@611:19;611:32
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@613:34;613:35
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@613:36;613:39
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22723
@emit_label_22722:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22722
@emit_label_22723:
	mov r21,r7
; ../cpuex2017/raytracer/min-rt.ml@613:21;613:39 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@613:34;613:35 ../cpuex2017/raytracer/min-rt.ml@613:36;613:39
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@614:20;614:21
	bne r20,r10,@cfg_label_21844
	j @cfg_label_21843
	j @cfg_label_21845
	j @cfg_label_21846
@cfg_label_21845:
@cfg_label_21843:
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@614:6;620:13
	j @cfg_label_21966
@cfg_label_21846:
@cfg_label_21844:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@616:23;616:36 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f11,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@616:18;616:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@616:23;616:36 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	sw f10,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@616:2;616:37 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@613:21;613:39 ../cpuex2017/raytracer/min-rt.ml@616:18;616:37
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@617:23;617:36 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f11,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@617:18;617:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@617:23;617:36 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	sw f10,r21,$4
; ../cpuex2017/raytracer/min-rt.ml@617:2;617:37 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@613:21;613:39 ../cpuex2017/raytracer/min-rt.ml@617:18;617:37
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@618:23;618:36 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f11,$0.01745329300000000167
; ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@618:18;618:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@618:23;618:36 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	sw f10,r21,$8
; ../cpuex2017/raytracer/min-rt.ml@614:6;620:13 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@613:21;613:39 ../cpuex2017/raytracer/min-rt.ml@618:18;618:37
@cfg_label_21966:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@625:32;625:33
	bne r22,r10,@cfg_label_21848
	j @cfg_label_21847
	j @cfg_label_21849
	j @cfg_label_21850
@cfg_label_21849:
@cfg_label_21847:
	lw r10,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@625:39;625:43 ::<= ../cpuex2017/raytracer/min-rt.ml@625:22;625:57
	j @cfg_label_21963
@cfg_label_21850:
@cfg_label_21848:
	mov r10,r27
; ../cpuex2017/raytracer/min-rt.ml@602:21;602:43 ::<= ../cpuex2017/raytracer/min-rt.ml@625:22;625:57
@cfg_label_21963:
	li r12,$4
; ../cpuex2017/raytracer/min-rt.ml@626:30;626:31
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@626:32;626:35
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22725
@emit_label_22724:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22724
@emit_label_22725:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@626:17;626:35 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@626:30;626:31 ../cpuex2017/raytracer/min-rt.ml@626:32;626:35
	mov r6,r3
	sw r24,r3,$0
	sw r22,r3,$4
	sw r25,r3,$8
	sw r20,r3,$12
	sw r9,r3,$16
	sw r26,r3,$20
	sw r10,r3,$24
	sw r28,r3,$28
	sw r29,r3,$32
	sw r21,r3,$36
	sw r11,r3,$40
	addi r3,r3,$44
	mov r12,r6
; ../cpuex2017/raytracer/min-rt.ml@629:2;635:13
	lw r5,r31,$456
	sll r6,r23,$2
	add r5,r5,r6
	sw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@637:6;637:24 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@637:6;637:13 ../cpuex2017/raytracer/min-rt.ml@585:2;662:9 ../cpuex2017/raytracer/min-rt.ml@629:2;635:13
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@639:16;639:17
	bne r22,r10,@cfg_label_21944
	j @cfg_label_21943
	j @cfg_label_21945
@cfg_label_21944:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@649:21;649:22
	bne r22,r10,@cfg_label_21939
	j @cfg_label_21938
	j @cfg_label_21940
@cfg_label_21939:
	mov r23,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@639:6;652:13
	j @cfg_label_21956
@cfg_label_21940:
@cfg_label_21938:
	slti r6,r27,$0
	slti r7,r27,$1
	sub r22,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@651:18;651:30 ::= Onot ../cpuex2017/raytracer/min-rt.ml@602:21;602:43
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ::<= ../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@651:18;651:30 ::<= ../cpuex2017/raytracer/min-rt.ml@651:18;651:30
	jal @a_8597vecunit_sgn
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@639:6;652:13 ../cpuex2017/raytracer/min-rt.ml@651:1;651:12
	j @cfg_label_21955
@cfg_label_21945:
@cfg_label_21943:
	lw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@642:10;642:17 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22726
	li r10,$0
	j @emit_label_22727
@emit_label_22726:
	li r10,$1
@emit_label_22727:
; ../cpuex2017/raytracer/min-rt.ml@643:16;643:25 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@642:10;642:17 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@643:16;643:25
	bne r10,r11,@cfg_label_21870
	j @cfg_label_21869
	j @cfg_label_21871
	j @cfg_label_21872
@cfg_label_21871:
@cfg_label_21869:
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@643:13;643:55
	j @cfg_label_21931
@cfg_label_21872:
@cfg_label_21870:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22728
	li r10,$0
	j @emit_label_22729
@emit_label_22728:
	li r10,$1
@emit_label_22729:
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@642:10;642:17 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r10,r11,@cfg_label_21859
	j @cfg_label_21858
	j @cfg_label_21860
	j @cfg_label_21861
@cfg_label_21860:
@cfg_label_21858:
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@643:40;643:45
	j @cfg_label_21863
@cfg_label_21861:
@cfg_label_21859:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22730
	li r10,$0
	j @emit_label_22731
@emit_label_22730:
	li r10,$1
@emit_label_22731:
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@642:10;642:17 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r10,r11,@cfg_label_21852
	j @cfg_label_21851
	j @cfg_label_21853
	j @cfg_label_21854
@cfg_label_21853:
@cfg_label_21851:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@643:40;643:45
	j @cfg_label_21864
@cfg_label_21854:
@cfg_label_21852:
	fmovi f11,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@643:40;643:45
@cfg_label_21864:
@cfg_label_21863:
	fmul f12,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@643:49;643:55 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@642:10;642:17 ../cpuex2017/raytracer/min-rt.ml@642:10;642:17
	fdiv f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@643:13;643:55 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@643:40;643:45 ../cpuex2017/raytracer/min-rt.ml@643:49;643:55
@cfg_label_21931:
	sw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@643:2;643:55 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ../cpuex2017/raytracer/min-rt.ml@643:13;643:55
	lw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@644:10;644:17 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22732
	li r10,$0
	j @emit_label_22733
@emit_label_22732:
	li r10,$1
@emit_label_22733:
; ../cpuex2017/raytracer/min-rt.ml@645:16;645:25 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@644:10;644:17 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@645:16;645:25
	bne r10,r11,@cfg_label_21892
	j @cfg_label_21891
	j @cfg_label_21893
	j @cfg_label_21894
@cfg_label_21893:
@cfg_label_21891:
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@645:13;645:55
	j @cfg_label_21924
@cfg_label_21894:
@cfg_label_21892:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22734
	li r10,$0
	j @emit_label_22735
@emit_label_22734:
	li r10,$1
@emit_label_22735:
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@644:10;644:17 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r10,r11,@cfg_label_21881
	j @cfg_label_21880
	j @cfg_label_21882
	j @cfg_label_21883
@cfg_label_21882:
@cfg_label_21880:
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@645:40;645:45
	j @cfg_label_21885
@cfg_label_21883:
@cfg_label_21881:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22736
	li r10,$0
	j @emit_label_22737
@emit_label_22736:
	li r10,$1
@emit_label_22737:
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@644:10;644:17 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r10,r11,@cfg_label_21874
	j @cfg_label_21873
	j @cfg_label_21875
	j @cfg_label_21876
@cfg_label_21875:
@cfg_label_21873:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@645:40;645:45
	j @cfg_label_21886
@cfg_label_21876:
@cfg_label_21874:
	fmovi f11,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@645:40;645:45
@cfg_label_21886:
@cfg_label_21885:
	fmul f12,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@645:49;645:55 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@644:10;644:17 ../cpuex2017/raytracer/min-rt.ml@644:10;644:17
	fdiv f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@645:13;645:55 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@645:40;645:45 ../cpuex2017/raytracer/min-rt.ml@645:49;645:55
@cfg_label_21924:
	sw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@645:2;645:55 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ../cpuex2017/raytracer/min-rt.ml@645:13;645:55
	lw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@646:10;646:17 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22738
	li r10,$0
	j @emit_label_22739
@emit_label_22738:
	li r10,$1
@emit_label_22739:
; ../cpuex2017/raytracer/min-rt.ml@647:16;647:25 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@646:10;646:17 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@647:16;647:25
	bne r10,r11,@cfg_label_21914
	j @cfg_label_21913
	j @cfg_label_21915
	j @cfg_label_21916
@cfg_label_21915:
@cfg_label_21913:
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@647:13;647:55
	j @cfg_label_21917
@cfg_label_21916:
@cfg_label_21914:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22740
	li r10,$0
	j @emit_label_22741
@emit_label_22740:
	li r10,$1
@emit_label_22741:
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@646:10;646:17 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r10,r11,@cfg_label_21903
	j @cfg_label_21902
	j @cfg_label_21904
	j @cfg_label_21905
@cfg_label_21904:
@cfg_label_21902:
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@647:40;647:45
	j @cfg_label_21907
@cfg_label_21905:
@cfg_label_21903:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22742
	li r10,$0
	j @emit_label_22743
@emit_label_22742:
	li r10,$1
@emit_label_22743:
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@646:10;646:17 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r10,r11,@cfg_label_21896
	j @cfg_label_21895
	j @cfg_label_21897
	j @cfg_label_21898
@cfg_label_21897:
@cfg_label_21895:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@647:40;647:45
	j @cfg_label_21908
@cfg_label_21898:
@cfg_label_21896:
	fmovi f11,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@647:40;647:45
@cfg_label_21908:
@cfg_label_21907:
	fmul f12,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@647:49;647:55 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@646:10;646:17 ../cpuex2017/raytracer/min-rt.ml@646:10;646:17
	fdiv f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@647:13;647:55 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@647:40;647:45 ../cpuex2017/raytracer/min-rt.ml@647:49;647:55
@cfg_label_21917:
	sw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@639:6;652:13 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ../cpuex2017/raytracer/min-rt.ml@647:13;647:55
	j @cfg_label_21954
@cfg_label_21956:
@cfg_label_21955:
@cfg_label_21954:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@655:20;655:21
	bne r20,r10,@cfg_label_21948
	j @cfg_label_21947
	j @cfg_label_21949
	j @cfg_label_21950
@cfg_label_21949:
@cfg_label_21947:
	mov r20,r8
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27 ::<= ../cpuex2017/raytracer/min-rt.ml@655:6;657:13
	j @cfg_label_21951
@cfg_label_21950:
@cfg_label_21948:
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ::<= ../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@613:21;613:39 ::<= ../cpuex2017/raytracer/min-rt.ml@613:21;613:39
	jal @a_8702rotate_quadratic_matrix
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@655:6;657:13 ../cpuex2017/raytracer/min-rt.ml@656:1;656:24
@cfg_label_21951:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@625:39;625:43 ::<= ../cpuex2017/raytracer/min-rt.ml@585:2;662:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	pop r27
	pop r28
	pop r29
	pop f4
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@a_8707read_object:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$24
	push r9
	push r8
	mov r9,r10
@cfg_label_21830:
@cfg_label_21780:
	li r10,$60
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_21826
	j @cfg_label_21825
	j @cfg_label_21827
	j @cfg_label_21828
@cfg_label_21827:
@cfg_label_21825:
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21828:
@cfg_label_21826:
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::<= ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	jal @a_8705read_nth_object
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r8,r10,@cfg_label_21820
	j @cfg_label_21819
	j @cfg_label_21821
@cfg_label_21820:
	lw r5,r31,$496
	sw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21821:
@cfg_label_21819:
	addi r8,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	li r10,$60
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_21814
	j @cfg_label_21813
	j @cfg_label_21815
	j @cfg_label_21816
@cfg_label_21815:
@cfg_label_21813:
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21816:
@cfg_label_21814:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::<= ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8705read_nth_object
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r9,r10,@cfg_label_21808
	j @cfg_label_21807
	j @cfg_label_21809
@cfg_label_21808:
	lw r5,r31,$496
	sw r8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21809:
@cfg_label_21807:
	addi r9,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	li r10,$60
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_21802
	j @cfg_label_21801
	j @cfg_label_21803
	j @cfg_label_21804
@cfg_label_21803:
@cfg_label_21801:
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21804:
@cfg_label_21802:
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::<= ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8705read_nth_object
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r8,r10,@cfg_label_21796
	j @cfg_label_21795
	j @cfg_label_21797
@cfg_label_21796:
	lw r5,r31,$496
	sw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21797:
@cfg_label_21795:
	addi r8,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	li r10,$60
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_21790
	j @cfg_label_21789
	j @cfg_label_21791
	j @cfg_label_21792
@cfg_label_21791:
@cfg_label_21789:
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21792:
@cfg_label_21790:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::<= ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8705read_nth_object
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r9,r10,@cfg_label_21784
	j @cfg_label_21783
	j @cfg_label_21785
@cfg_label_21784:
	lw r5,r31,$496
	sw r8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	pop r8
	pop r9
	addi r1,r1,$24
	pop r2
	pop r6
	jr r6
@cfg_label_21785:
@cfg_label_21783:
	addi r10,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::<= ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::<= ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	j @cfg_label_21780
	j @cfg_label_21830
@a_8711read_net_item:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_21755:
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	push r4
	subi r1,r1,$4
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24 ::<= ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r9,r10,@cfg_label_21774
	j @cfg_label_21773
	j @cfg_label_21775
@cfg_label_21774:
	addi r20,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@683:2;687:27
	push r4
	subi r1,r1,$4
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24 ::<= ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r21,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r21,r10,@cfg_label_21764
	j @cfg_label_21763
	j @cfg_label_21765
@cfg_label_21764:
	addi r23,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::<= ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	jal @a_8711read_net_item
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	sll r6,r20,$2
	add r5,r22,r6
	sw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::<= ../cpuex2017/raytracer/min-rt.ml@686:12;686:38
	j @cfg_label_21769
@cfg_label_21765:
@cfg_label_21763:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	li r12,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22745
@emit_label_22744:
	sw r12,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22744
@emit_label_22745:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_21768
@cfg_label_21769:
@cfg_label_21768:
	sll r6,r8,$2
	add r5,r10,r6
	sw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@683:2;687:27 ../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r5,r10
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::<= ../cpuex2017/raytracer/min-rt.ml@683:2;687:27
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_21775:
@cfg_label_21773:
	addi r10,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@683:2;687:27
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22747
@emit_label_22746:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22746
@emit_label_22747:
	mov r5,r7
; ../cpuex2017/raytracer/min-rt.ml@683:2;687:27 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@a_8713read_or_network:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_21716:
	li r20,$0
; ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24 ::<= ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r9,r10,@cfg_label_21723
	j @cfg_label_21722
	j @cfg_label_21724
@cfg_label_21723:
	addi r21,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::<= ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	jal @a_8711read_net_item
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	sw r9,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r9,r20
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::<= ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	j @cfg_label_21750
@cfg_label_21724:
@cfg_label_21722:
	addi r10,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22749
@emit_label_22748:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22748
@emit_label_22749:
	mov r9,r7
; ../cpuex2017/raytracer/min-rt.ml@691:12;691:27 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_21749
@cfg_label_21750:
@cfg_label_21749:
	lw r10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@692:5;692:12 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@692:15;692:17
	bne r10,r11,@cfg_label_21744
	j @cfg_label_21743
	j @cfg_label_21745
@cfg_label_21744:
	addi r21,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@695:29;695:39 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@691:2;696:26
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	push r4
	subi r1,r1,$4
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@691:26;691:27 ::<= ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	jal @a_8711read_net_item
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@691:12;691:27 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	lw r10,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@692:5;692:12 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@692:15;692:17
	bne r10,r11,@cfg_label_21732
	j @cfg_label_21731
	j @cfg_label_21733
@cfg_label_21732:
	addi r23,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@695:29;695:39 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@695:29;695:39
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@695:29;695:39 ::<= ../cpuex2017/raytracer/min-rt.ml@695:29;695:39
	jal @a_8713read_or_network
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ../cpuex2017/raytracer/min-rt.ml@695:12;695:27
	sll r6,r21,$2
	add r5,r22,r6
	sw r20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@696:5;696:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ../cpuex2017/raytracer/min-rt.ml@695:29;695:39 ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ::<= ../cpuex2017/raytracer/min-rt.ml@695:12;695:40
	j @cfg_label_21737
@cfg_label_21733:
@cfg_label_21731:
	addi r11,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@695:29;695:39
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22751
@emit_label_22750:
	sw r20,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22750
@emit_label_22751:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	j @cfg_label_21736
@cfg_label_21737:
@cfg_label_21736:
	sll r6,r8,$2
	add r5,r10,r6
	sw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@696:5;696:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ../cpuex2017/raytracer/min-rt.ml@691:2;696:26 ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	mov r5,r10
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ::<= ../cpuex2017/raytracer/min-rt.ml@691:2;696:26
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_21745:
@cfg_label_21743:
	addi r10,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@691:2;696:26
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22753
@emit_label_22752:
	sw r9,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22752
@emit_label_22753:
	mov r5,r7
; ../cpuex2017/raytracer/min-rt.ml@691:2;696:26 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@a_8715read_and_network:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r9,r10
@cfg_label_21715:
@cfg_label_21680:
	li r21,$0
; ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24 ::<= ../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r20,r10,@cfg_label_21687
	j @cfg_label_21686
	j @cfg_label_21688
@cfg_label_21687:
	addi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	push r4
	subi r1,r1,$4
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::<= ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	jal @a_8711read_net_item
	mov r21,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	sw r20,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::<= ../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	j @cfg_label_21710
@cfg_label_21688:
@cfg_label_21686:
	addi r11,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	li r12,$-1
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22755
@emit_label_22754:
	sw r12,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22754
@emit_label_22755:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@700:12;700:27 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_21709
@cfg_label_21710:
@cfg_label_21709:
	lw r11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@701:5;701:12 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	li r12,$-1
; ../cpuex2017/raytracer/min-rt.ml@701:15;701:17
	bne r11,r12,@cfg_label_21704
	j @cfg_label_21703
	j @cfg_label_21705
	j @cfg_label_21706
@cfg_label_21705:
@cfg_label_21703:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24 ::<= ../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_21706:
@cfg_label_21704:
	lw r5,r31,$388
	sll r6,r9,$2
	add r5,r5,r6
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@703:4;703:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@703:4;703:11 ../cpuex2017/raytracer/min-rt.ml@700:2;705:3 ../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	addi r20,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@704:22;704:27 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	li r21,$0
; ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@700:26;700:27 ::<= ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	jal @a_8711read_net_item
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@700:12;700:27 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	lw r10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@701:5;701:12 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@701:15;701:17
	bne r10,r11,@cfg_label_21694
	j @cfg_label_21693
	j @cfg_label_21695
	j @cfg_label_21696
@cfg_label_21695:
@cfg_label_21693:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@683:22;683:24 ::<= ../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_21696:
@cfg_label_21694:
	lw r5,r31,$388
	sll r6,r20,$2
	add r5,r5,r6
	sw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@703:4;703:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@703:4;703:11 ../cpuex2017/raytracer/min-rt.ml@704:22;704:27 ../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	addi r10,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@704:22;704:27 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@704:22;704:27
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@704:22;704:27 ::<= ../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@700:2;705:3 ::<= ../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	j @cfg_label_21680
	j @cfg_label_21715
@a_8719solver_rect_surface:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$40
	mov r10,r10
	mov r11,r11
	mov f10,f10
	mov f11,f11
	mov f12,f12
	mov r12,r12
	mov r13,r13
	mov r14,r14
@cfg_label_21610:
	sll r6,r12,$2
	add f13,r11,r6
	lw f13,f13,$0
; ../cpuex2017/raytracer/min-rt.ml@735:13;735:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f14,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f13,f14
	bft @emit_label_22756
	li r15,$0
	j @emit_label_22757
@emit_label_22756:
	li r15,$1
@emit_label_22757:
; ../cpuex2017/raytracer/min-rt.ml@735:5;735:24 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@735:13;735:24 lib_tortesia.ml@5:25;5:28
	li r16,$1
; ../cpuex2017/raytracer/min-rt.ml@735:5;735:24
	bne r15,r16,@cfg_label_21673
	j @cfg_label_21672
	j @cfg_label_21674
	j @cfg_label_21675
@cfg_label_21674:
@cfg_label_21672:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@735:30;735:35 ::<= ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_21675:
@cfg_label_21673:
	lw r15,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	lw r16,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	sll r6,r12,$2
	add f13,r11,r6
	lw f13,f13,$0
; ../cpuex2017/raytracer/min-rt.ml@737:48;737:59 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f14,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f13,f14
	bft @emit_label_22758
	li r10,$0
	j @emit_label_22759
@emit_label_22758:
	li r10,$1
@emit_label_22759:
; ../cpuex2017/raytracer/min-rt.ml@737:41;737:59 ::= Olt ../cpuex2017/raytracer/min-rt.ml@737:48;737:59 lib_tortesia.ml@7:24;7:27
	li r17,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r16,r17,@cfg_label_21612
	j @cfg_label_21611
	j @cfg_label_21613
	j @cfg_label_21614
@cfg_label_21613:
@cfg_label_21611:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r16,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@737:21;737:60 ::= Onot ../cpuex2017/raytracer/min-rt.ml@737:41;737:59
	j @cfg_label_21664
@cfg_label_21614:
@cfg_label_21612:
	mov r16,r10
; ../cpuex2017/raytracer/min-rt.ml@737:41;737:59 ::<= ../cpuex2017/raytracer/min-rt.ml@737:21;737:60
@cfg_label_21664:
	sll r6,r12,$2
	add f13,r15,r6
	lw f13,f13,$0
; ../cpuex2017/raytracer/min-rt.ml@737:62;737:70 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r16,r10,@cfg_label_21617
	j @cfg_label_21616
	j @cfg_label_21618
	j @cfg_label_21619
@cfg_label_21618:
@cfg_label_21616:
	mov f14,f13
; ../cpuex2017/raytracer/min-rt.ml@737:62;737:70 ::<= ../cpuex2017/raytracer/min-rt.ml@737:10;737:70
	j @cfg_label_21660
@cfg_label_21619:
@cfg_label_21617:
	fmovi f15,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f14,f15,f13
; ../cpuex2017/raytracer/min-rt.ml@737:10;737:70 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@737:62;737:70
@cfg_label_21660:
	fsub f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@739:12;739:19 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@737:10;737:70 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	sll r6,r12,$2
	add f14,r11,r6
	lw f14,f14,$0
; ../cpuex2017/raytracer/min-rt.ml@739:24;739:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fdiv f10,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@739:11;739:35 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@739:12;739:19 ../cpuex2017/raytracer/min-rt.ml@739:24;739:35
	sll r6,r13,$2
	add f13,r11,r6
	lw f13,f13,$0
; ../cpuex2017/raytracer/min-rt.ml@740:24;740:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmul f14,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@740:18;740:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@739:11;739:35 ../cpuex2017/raytracer/min-rt.ml@740:24;740:35
	fadd f13,f14,f11
; ../cpuex2017/raytracer/min-rt.ml@740:18;740:41 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@740:18;740:35 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f11,f13
	bft @cfg_label_21622
	j @cfg_label_21621
	j @cfg_label_21623
@cfg_label_21622:
	mov f11,f13
; ../cpuex2017/raytracer/min-rt.ml@740:18;740:41 ::<= ../cpuex2017/raytracer/min-rt.ml@740:12;740:42
	j @cfg_label_21652
@cfg_label_21623:
@cfg_label_21621:
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f11,f14,f13
; ../cpuex2017/raytracer/min-rt.ml@740:12;740:42 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@740:18;740:41
	j @cfg_label_21651
@cfg_label_21652:
@cfg_label_21651:
	sll r6,r13,$2
	add f13,r15,r6
	lw f13,f13,$0
; ../cpuex2017/raytracer/min-rt.ml@740:44;740:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	flt f11,f13
	bft @emit_label_22760
	li r10,$0
	j @emit_label_22761
@emit_label_22760:
	li r10,$1
@emit_label_22761:
; ../cpuex2017/raytracer/min-rt.ml@740:5;740:52 ::= Olt ../cpuex2017/raytracer/min-rt.ml@740:12;740:42 ../cpuex2017/raytracer/min-rt.ml@740:44;740:52
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@740:5;740:52
	bne r10,r12,@cfg_label_21645
	j @cfg_label_21644
	j @cfg_label_21646
@cfg_label_21645:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@735:30;735:35 ::<= ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_21646:
@cfg_label_21644:
	sll r6,r14,$2
	add f11,r11,r6
	lw f11,f11,$0
; ../cpuex2017/raytracer/min-rt.ml@741:26;741:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmul f13,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@741:20;741:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@739:11;739:35 ../cpuex2017/raytracer/min-rt.ml@741:26;741:37
	fadd f11,f13,f12
; ../cpuex2017/raytracer/min-rt.ml@741:20;741:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@741:20;741:37 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f12,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f12,f11
	bft @cfg_label_21627
	j @cfg_label_21626
	j @cfg_label_21628
@cfg_label_21627:
	mov f12,f11
; ../cpuex2017/raytracer/min-rt.ml@741:20;741:43 ::<= ../cpuex2017/raytracer/min-rt.ml@741:14;741:44
	j @cfg_label_21639
@cfg_label_21628:
@cfg_label_21626:
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f12,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@741:14;741:44 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@741:20;741:43
	j @cfg_label_21638
@cfg_label_21639:
@cfg_label_21638:
	sll r6,r14,$2
	add f11,r15,r6
	lw f11,f11,$0
; ../cpuex2017/raytracer/min-rt.ml@741:46;741:54 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	flt f12,f11
	bft @emit_label_22762
	li r10,$0
	j @emit_label_22763
@emit_label_22762:
	li r10,$1
@emit_label_22763:
; ../cpuex2017/raytracer/min-rt.ml@741:7;741:54 ::= Olt ../cpuex2017/raytracer/min-rt.ml@741:14;741:44 ../cpuex2017/raytracer/min-rt.ml@741:46;741:54
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@741:7;741:54
	bne r10,r11,@cfg_label_21632
	j @cfg_label_21631
	j @cfg_label_21633
@cfg_label_21632:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@735:30;735:35 ::<= ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_21633:
@cfg_label_21631:
	lw r5,r31,$356
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@742:7;742:28 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@742:7;742:18 ../cpuex2017/raytracer/min-rt.ml@739:11;739:35
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@742:30;742:34 ::<= ../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@a_8728solver_rect:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	push r23
	push r22
	push r21
	push r20
	push f7
	push f6
	push f4
	push r9
	push r8
	mov r8,r10
	mov r9,r11
	mov f4,f10
	mov f6,f11
	mov f7,f12
@cfg_label_21582:
	li r21,$0
; ../cpuex2017/raytracer/min-rt.ml@750:48;750:49
	li r22,$1
; ../cpuex2017/raytracer/min-rt.ml@750:50;750:51
	li r23,$2
; ../cpuex2017/raytracer/min-rt.ml@750:52;750:53
	push r4
	subi r1,r1,$32
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r12,r21
; ../cpuex2017/raytracer/min-rt.ml@750:48;750:49 ::<= ../cpuex2017/raytracer/min-rt.ml@750:48;750:49
	mov r13,r22
; ../cpuex2017/raytracer/min-rt.ml@750:50;750:51 ::<= ../cpuex2017/raytracer/min-rt.ml@750:50;750:51
	mov r14,r23
; ../cpuex2017/raytracer/min-rt.ml@750:52;750:53 ::<= ../cpuex2017/raytracer/min-rt.ml@750:52;750:53
	jal @a_8719solver_rect_surface
	mov r20,r5
	addi r1,r1,$32
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@750:10;750:53 ../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@750:10;750:53
	bne r20,r10,@cfg_label_21602
	j @cfg_label_21601
	j @cfg_label_21603
	j @cfg_label_21604
@cfg_label_21603:
@cfg_label_21601:
	li r5,$1
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_21604:
@cfg_label_21602:
	li r21,$1
; ../cpuex2017/raytracer/min-rt.ml@751:48;751:49
	li r22,$2
; ../cpuex2017/raytracer/min-rt.ml@751:50;751:51
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@751:52;751:53
	push r4
	subi r1,r1,$32
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f12,f4
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r12,r21
; ../cpuex2017/raytracer/min-rt.ml@751:48;751:49 ::<= ../cpuex2017/raytracer/min-rt.ml@751:48;751:49
	mov r13,r22
; ../cpuex2017/raytracer/min-rt.ml@751:50;751:51 ::<= ../cpuex2017/raytracer/min-rt.ml@751:50;751:51
	mov r14,r23
; ../cpuex2017/raytracer/min-rt.ml@751:52;751:53 ::<= ../cpuex2017/raytracer/min-rt.ml@751:52;751:53
	jal @a_8719solver_rect_surface
	mov r20,r5
	addi r1,r1,$32
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@751:10;751:53 ../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@751:10;751:53
	bne r20,r10,@cfg_label_21593
	j @cfg_label_21592
	j @cfg_label_21594
	j @cfg_label_21595
@cfg_label_21594:
@cfg_label_21592:
	li r5,$2
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_21595:
@cfg_label_21593:
	li r21,$2
; ../cpuex2017/raytracer/min-rt.ml@752:48;752:49
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@752:50;752:51
	li r23,$1
; ../cpuex2017/raytracer/min-rt.ml@752:52;752:53
	push r4
	subi r1,r1,$32
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f11,f4
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov f12,f6
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60 ::<= ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r12,r21
; ../cpuex2017/raytracer/min-rt.ml@752:48;752:49 ::<= ../cpuex2017/raytracer/min-rt.ml@752:48;752:49
	mov r13,r22
; ../cpuex2017/raytracer/min-rt.ml@752:50;752:51 ::<= ../cpuex2017/raytracer/min-rt.ml@752:50;752:51
	mov r14,r23
; ../cpuex2017/raytracer/min-rt.ml@752:52;752:53 ::<= ../cpuex2017/raytracer/min-rt.ml@752:52;752:53
	jal @a_8719solver_rect_surface
	mov r20,r5
	addi r1,r1,$32
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@752:10;752:53 ../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@752:10;752:53
	bne r20,r10,@cfg_label_21584
	j @cfg_label_21583
	j @cfg_label_21585
	j @cfg_label_21586
@cfg_label_21585:
@cfg_label_21583:
	li r5,$3
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_21586:
@cfg_label_21584:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@a_8740quadratic:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	mov r10,r10
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_21551:
	fmul f14,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:11 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw r11,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw f15,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@774:15;774:26 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f13,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@774:4;774:11 ../cpuex2017/raytracer/min-rt.ml@774:15;774:26
	fmul f14,f11,f11
; ../cpuex2017/raytracer/min-rt.ml@774:30;774:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw f16,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@774:41;774:52 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f15,f14,f16
; ../cpuex2017/raytracer/min-rt.ml@774:30;774:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@774:30;774:37 ../cpuex2017/raytracer/min-rt.ml@774:41;774:52
	fadd f14,f13,f15
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:52 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@774:4;774:26 ../cpuex2017/raytracer/min-rt.ml@774:30;774:52
	fmul f13,f12,f12
; ../cpuex2017/raytracer/min-rt.ml@774:56;774:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw f15,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@774:67;774:78 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f16,f13,f15
; ../cpuex2017/raytracer/min-rt.ml@774:56;774:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@774:56;774:63 ../cpuex2017/raytracer/min-rt.ml@774:67;774:78
	fadd f13,f14,f16
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:78 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@774:4;774:52 ../cpuex2017/raytracer/min-rt.ml@774:56;774:78
	lw r11,r10,$12
; ../cpuex2017/raytracer/min-rt.ml@191:29;191:30 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	li r12,$0
; ../cpuex2017/raytracer/min-rt.ml@776:17;776:18
	bne r11,r12,@cfg_label_21565
	j @cfg_label_21564
	j @cfg_label_21566
	j @cfg_label_21567
@cfg_label_21566:
@cfg_label_21564:
	mov f5,f13
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:78 ::<= ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_21567:
@cfg_label_21565:
	fmul f14,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@780:9;780:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw r11,r10,$36
; ../cpuex2017/raytracer/min-rt.ml@320:28;320:29 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw f16,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@780:21;780:33 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f15,f14,f16
; ../cpuex2017/raytracer/min-rt.ml@780:9;780:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@780:9;780:17 ../cpuex2017/raytracer/min-rt.ml@780:21;780:33
	fadd f14,f13,f15
; ../cpuex2017/raytracer/min-rt.ml@779:4;780:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@774:4;774:78 ../cpuex2017/raytracer/min-rt.ml@780:9;780:33
	fmul f13,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@781:9;781:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw f12,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@781:21;781:33 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f15,f13,f12
; ../cpuex2017/raytracer/min-rt.ml@781:9;781:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@781:9;781:17 ../cpuex2017/raytracer/min-rt.ml@781:21;781:33
	fadd f12,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@779:4;781:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@779:4;780:33 ../cpuex2017/raytracer/min-rt.ml@781:9;781:33
	fmul f13,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@782:9;782:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw f10,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@782:21;782:33 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f11,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@782:9;782:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@782:9;782:17 ../cpuex2017/raytracer/min-rt.ml@782:21;782:33
	fadd f5,f12,f11
; ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@779:4;781:33 ../cpuex2017/raytracer/min-rt.ml@782:9;782:33
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@a_8745bilinear:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	mov r10,r10
	mov f10,f10
	mov f11,f11
	mov f12,f12
	mov f13,f13
	mov f14,f14
	mov f15,f15
@cfg_label_21512:
	fmul f17,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@789:4;789:12 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	lw r11,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	lw f18,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@789:16;789:27 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f16,f17,f18
; ../cpuex2017/raytracer/min-rt.ml@789:4;789:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@789:4;789:12 ../cpuex2017/raytracer/min-rt.ml@789:16;789:27
	fmul f17,f11,f14
; ../cpuex2017/raytracer/min-rt.ml@790:9;790:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	lw f19,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@790:21;790:32 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f18,f17,f19
; ../cpuex2017/raytracer/min-rt.ml@790:9;790:32 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@790:9;790:17 ../cpuex2017/raytracer/min-rt.ml@790:21;790:32
	fadd f17,f16,f18
; ../cpuex2017/raytracer/min-rt.ml@789:4;790:32 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@789:4;789:27 ../cpuex2017/raytracer/min-rt.ml@790:9;790:32
	fmul f16,f12,f15
; ../cpuex2017/raytracer/min-rt.ml@791:9;791:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	lw f18,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@791:21;791:32 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f19,f16,f18
; ../cpuex2017/raytracer/min-rt.ml@791:9;791:32 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@791:9;791:17 ../cpuex2017/raytracer/min-rt.ml@791:21;791:32
	fadd f16,f17,f19
; ../cpuex2017/raytracer/min-rt.ml@789:4;791:32 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@789:4;790:32 ../cpuex2017/raytracer/min-rt.ml@791:9;791:32
	lw r11,r10,$12
; ../cpuex2017/raytracer/min-rt.ml@191:29;191:30 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	li r12,$0
; ../cpuex2017/raytracer/min-rt.ml@793:17;793:18
	bne r11,r12,@cfg_label_21534
	j @cfg_label_21533
	j @cfg_label_21535
	j @cfg_label_21536
@cfg_label_21535:
@cfg_label_21533:
	mov f5,f16
; ../cpuex2017/raytracer/min-rt.ml@789:4;791:32 ::<= ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_21536:
@cfg_label_21534:
	fmul f17,f12,f14
; ../cpuex2017/raytracer/min-rt.ml@797:8;797:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmul f19,f11,f15
; ../cpuex2017/raytracer/min-rt.ml@797:20;797:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fadd f18,f17,f19
; ../cpuex2017/raytracer/min-rt.ml@797:8;797:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@797:8;797:16 ../cpuex2017/raytracer/min-rt.ml@797:20;797:28
	lw r11,r10,$36
; ../cpuex2017/raytracer/min-rt.ml@320:28;320:29 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	lw f19,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@797:33;797:45 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f17,f18,f19
; ../cpuex2017/raytracer/min-rt.ml@797:7;797:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@797:8;797:28 ../cpuex2017/raytracer/min-rt.ml@797:33;797:45
	fmul f18,f10,f15
; ../cpuex2017/raytracer/min-rt.ml@798:6;798:14 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmul f15,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@798:18;798:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fadd f12,f18,f15
; ../cpuex2017/raytracer/min-rt.ml@798:6;798:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@798:6;798:14 ../cpuex2017/raytracer/min-rt.ml@798:18;798:26
	lw f18,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@798:31;798:43 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f15,f12,f18
; ../cpuex2017/raytracer/min-rt.ml@798:5;798:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@798:6;798:26 ../cpuex2017/raytracer/min-rt.ml@798:31;798:43
	fadd f12,f17,f15
; ../cpuex2017/raytracer/min-rt.ml@797:7;798:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@797:7;797:45 ../cpuex2017/raytracer/min-rt.ml@798:5;798:43
	fmul f15,f10,f14
; ../cpuex2017/raytracer/min-rt.ml@799:6;799:14 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmul f10,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@799:18;799:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fadd f11,f15,f10
; ../cpuex2017/raytracer/min-rt.ml@799:6;799:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@799:6;799:14 ../cpuex2017/raytracer/min-rt.ml@799:18;799:26
	lw f10,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@799:31;799:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f13,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@799:5;799:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@799:6;799:26 ../cpuex2017/raytracer/min-rt.ml@799:31;799:43
	fadd f10,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@797:7;799:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@797:7;798:43 ../cpuex2017/raytracer/min-rt.ml@799:5;799:43
	fmovi f12,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@796:17;799:44 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@797:7;799:43 lib_tortesia.ml@19:23;19:26
	fadd f5,f16,f11
; ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@789:4;791:32 ../cpuex2017/raytracer/min-rt.ml@796:17;799:44
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@a_8753solver_second:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	push f22
	push f21
	push f20
	push f9
	push f8
	push f7
	push r8
	push f6
	push f4
	mov r8,r10
	mov r11,r11
	mov f7,f10
	mov f8,f11
	mov f9,f12
@cfg_label_21466:
	lw f20,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@814:23;814:33 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw f21,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@814:34;814:44 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw f22,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@814:45;814:55 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	push r4
	subi r1,r1,$16
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f10,f20
; ../cpuex2017/raytracer/min-rt.ml@814:23;814:33 ::<= ../cpuex2017/raytracer/min-rt.ml@814:23;814:33
	mov f11,f21
; ../cpuex2017/raytracer/min-rt.ml@814:34;814:44 ::<= ../cpuex2017/raytracer/min-rt.ml@814:34;814:44
	mov f12,f22
; ../cpuex2017/raytracer/min-rt.ml@814:45;814:55 ::<= ../cpuex2017/raytracer/min-rt.ml@814:45;814:55
	jal @a_8740quadratic
	mov f4,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@814:11;814:55 ../cpuex2017/raytracer/min-rt.ml@814:11;814:20
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f4,f10
	bft @emit_label_22764
	li r10,$0
	j @emit_label_22765
@emit_label_22764:
	li r10,$1
@emit_label_22765:
; ../cpuex2017/raytracer/min-rt.ml@816:5;816:15 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@814:11;814:55 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@816:5;816:15
	bne r10,r11,@cfg_label_21502
	j @cfg_label_21501
	j @cfg_label_21503
	j @cfg_label_21504
@cfg_label_21503:
@cfg_label_21501:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	pop f4
	pop f6
	pop r8
	pop f7
	pop f8
	pop f9
	pop f20
	pop f21
	pop f22
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21504:
@cfg_label_21502:
	push r4
	subi r1,r1,$28
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f10,f20
; ../cpuex2017/raytracer/min-rt.ml@814:23;814:33 ::<= ../cpuex2017/raytracer/min-rt.ml@814:23;814:33
	mov f11,f21
; ../cpuex2017/raytracer/min-rt.ml@814:34;814:44 ::<= ../cpuex2017/raytracer/min-rt.ml@814:34;814:44
	mov f12,f22
; ../cpuex2017/raytracer/min-rt.ml@814:45;814:55 ::<= ../cpuex2017/raytracer/min-rt.ml@814:45;814:55
	mov f13,f7
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f14,f8
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f15,f9
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	jal @a_8745bilinear
	mov f6,f5
	addi r1,r1,$28
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@821:13;821:65 ../cpuex2017/raytracer/min-rt.ml@821:13;821:21
	push r4
	subi r1,r1,$16
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f11,f8
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	mov f12,f9
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	jal @a_8740quadratic
	mov f20,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@823:14;823:34 ../cpuex2017/raytracer/min-rt.ml@814:11;814:20
	lw r10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	li r11,$3
; ../cpuex2017/raytracer/min-rt.ml@824:27;824:28
	bne r10,r11,@cfg_label_21469
	j @cfg_label_21468
	j @cfg_label_21470
@cfg_label_21469:
	mov f10,f20
; ../cpuex2017/raytracer/min-rt.ml@823:14;823:34 ::<= ../cpuex2017/raytracer/min-rt.ml@824:13;824:53
	j @cfg_label_21496
@cfg_label_21470:
@cfg_label_21468:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@824:41;824:44
	fsub f10,f20,f11
; ../cpuex2017/raytracer/min-rt.ml@824:13;824:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@823:14;823:34 ../cpuex2017/raytracer/min-rt.ml@824:41;824:44
	j @cfg_label_21495
@cfg_label_21496:
@cfg_label_21495:
	fmul f11,f6,f6
; ../cpuex2017/raytracer/min-rt.ml@826:12;826:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@821:13;821:65 ../cpuex2017/raytracer/min-rt.ml@821:13;821:65
	fmul f12,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@826:23;826:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@814:11;814:55 ../cpuex2017/raytracer/min-rt.ml@824:13;824:53
	fsub f7,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@826:12;826:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@826:12;826:19 ../cpuex2017/raytracer/min-rt.ml@826:23;826:31
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f10,f7
	bft @emit_label_22766
	li r10,$0
	j @emit_label_22767
@emit_label_22766:
	li r10,$1
@emit_label_22767:
; ../cpuex2017/raytracer/min-rt.ml@828:7;828:15 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@826:12;826:31 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@828:7;828:15
	bne r10,r11,@cfg_label_21486
	j @cfg_label_21485
	j @cfg_label_21487
@cfg_label_21486:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	pop f4
	pop f6
	pop r8
	pop f7
	pop f8
	pop f9
	pop f20
	pop f21
	pop f22
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21487:
@cfg_label_21485:
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@826:12;826:31 ::<= ../cpuex2017/raytracer/min-rt.ml@826:12;826:31
	jal sqrt
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@829:15;829:21 ../cpuex2017/raytracer/min-rt.ml@829:15;829:19
	lw r10,r8,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@830:18;830:30
	bne r10,r11,@cfg_label_21474
	j @cfg_label_21473
	j @cfg_label_21475
	j @cfg_label_21476
@cfg_label_21475:
@cfg_label_21473:
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@829:15;829:21 ::<= ../cpuex2017/raytracer/min-rt.ml@830:15;830:51
	j @cfg_label_21480
@cfg_label_21476:
@cfg_label_21474:
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f8
; ../cpuex2017/raytracer/min-rt.ml@830:15;830:51 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@829:15;829:21
@cfg_label_21480:
	fsub f11,f10,f6
; ../cpuex2017/raytracer/min-rt.ml@831:27;831:35 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@830:15;830:51 ../cpuex2017/raytracer/min-rt.ml@821:13;821:65
	fdiv f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@831:26;831:43 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@831:27;831:35 ../cpuex2017/raytracer/min-rt.ml@814:11;814:55
	lw r5,r31,$356
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@831:7;831:43 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@831:7;831:18 ../cpuex2017/raytracer/min-rt.ml@831:26;831:43
	li r5,$1
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	pop f4
	pop f6
	pop r8
	pop f7
	pop f8
	pop f9
	pop f20
	pop f21
	pop f22
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@a_8759solver:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	push r20
	push r9
	push r8
	push f7
	push f6
	push f4
	mov r10,r10
	mov r8,r11
	mov r12,r12
@cfg_label_21415:
	lw r5,r31,$456
	sll r6,r10,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@840:10;840:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@840:10;840:17 ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw f10,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@842:12;842:19 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw r10,r9,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	lw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@842:23;842:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@842:12;842:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@842:12;842:19 ../cpuex2017/raytracer/min-rt.ml@842:23;842:34
	lw f10,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@843:12;843:19 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw f11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@843:23;843:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@843:12;843:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@843:12;843:19 ../cpuex2017/raytracer/min-rt.ml@843:23;843:34
	lw f10,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@844:12;844:19 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@844:23;844:34 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@844:12;844:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@844:12;844:19 ../cpuex2017/raytracer/min-rt.ml@844:23;844:34
	lw r10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@847:15;847:16
	bne r10,r11,@cfg_label_21450
	j @cfg_label_21449
	j @cfg_label_21451
	j @cfg_label_21452
@cfg_label_21451:
@cfg_label_21449:
	push r4
	subi r1,r1,$20
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@840:10;840:25 ::<= ../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ::<= ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@842:12;842:34 ::<= ../cpuex2017/raytracer/min-rt.ml@842:12;842:34
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@843:12;843:34 ::<= ../cpuex2017/raytracer/min-rt.ml@843:12;843:34
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@844:12;844:34 ::<= ../cpuex2017/raytracer/min-rt.ml@844:12;844:34
	jal @a_8728solver_rect
	mov r20,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ../cpuex2017/raytracer/min-rt.ml@847:28;847:39
	mov r5,r20
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_21452:
@cfg_label_21450:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@848:20;848:21
	bne r10,r11,@cfg_label_21445
	j @cfg_label_21444
	j @cfg_label_21446
@cfg_label_21445:
	push r4
	subi r1,r1,$20
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@840:10;840:25 ::<= ../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ::<= ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@842:12;842:34 ::<= ../cpuex2017/raytracer/min-rt.ml@842:12;842:34
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@843:12;843:34 ::<= ../cpuex2017/raytracer/min-rt.ml@843:12;843:34
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@844:12;844:34 ::<= ../cpuex2017/raytracer/min-rt.ml@844:12;844:34
	jal @a_8753solver_second
	mov r20,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ../cpuex2017/raytracer/min-rt.ml@849:28;849:41
	mov r5,r20
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_21446:
@cfg_label_21444:
	lw r10,r9,$16
; ../cpuex2017/raytracer/min-rt.ml@761:12;761:25 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	lw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f12,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw f14,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw f11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f13,f14,f11
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f14,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw f12,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw f13,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f15,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@762:10;762:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f14,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f14,f12
	bft @emit_label_22768
	li r10,$0
	j @emit_label_22769
@emit_label_22768:
	li r10,$1
@emit_label_22769:
; ../cpuex2017/raytracer/min-rt.ml@763:5;763:13 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@762:10;762:29 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@763:5;763:13
	bne r10,r11,@cfg_label_21426
	j @cfg_label_21425
	j @cfg_label_21427
@cfg_label_21426:
	li r20,$0
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	mov r5,r20
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_21427:
@cfg_label_21425:
	fmul f14,f10,f4
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ../cpuex2017/raytracer/min-rt.ml@842:12;842:34
	fmul f10,f11,f6
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ../cpuex2017/raytracer/min-rt.ml@843:12;843:34
	fadd f11,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	fmul f10,f13,f7
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ../cpuex2017/raytracer/min-rt.ml@844:12;844:34
	fadd f13,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@764:29;764:51 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@764:23;764:52 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@764:29;764:51
	fdiv f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@764:23;764:57 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@764:23;764:52 ../cpuex2017/raytracer/min-rt.ml@762:10;762:29
	lw r5,r31,$356
	sw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@764:4;764:57 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@764:4;764:15 ../cpuex2017/raytracer/min-rt.ml@764:23;764:57
	li r20,$1
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	mov r5,r20
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@a_8763solver_rect_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	push f6
	push f4
	mov r10,r10
	mov r11,r11
	mov r12,r12
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_21264:
	lw f14,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@872:12;872:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fsub f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@872:12;872:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@872:12;872:22 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw f16,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@872:33;872:43 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f15,f13,f16
; ../cpuex2017/raytracer/min-rt.ml@872:11;872:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@872:12;872:28 ../cpuex2017/raytracer/min-rt.ml@872:33;872:43
	lw f13,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@874:26;874:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f17,f15,f13
; ../cpuex2017/raytracer/min-rt.ml@874:20;874:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@872:11;872:43 ../cpuex2017/raytracer/min-rt.ml@874:26;874:31
	fadd f14,f17,f11
; ../cpuex2017/raytracer/min-rt.ml@874:20;874:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@874:20;874:31 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f17,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f17,f14
	bft @cfg_label_21267
	j @cfg_label_21266
	j @cfg_label_21268
@cfg_label_21267:
	mov f17,f14
; ../cpuex2017/raytracer/min-rt.ml@874:20;874:37 ::<= ../cpuex2017/raytracer/min-rt.ml@874:14;874:38
	j @cfg_label_21406
@cfg_label_21268:
@cfg_label_21266:
	fmovi f18,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f17,f18,f14
; ../cpuex2017/raytracer/min-rt.ml@874:14;874:38 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@874:20;874:37
	j @cfg_label_21405
@cfg_label_21406:
@cfg_label_21405:
	lw r13,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@210:29;210:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw f14,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@874:41;874:52 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f17,f14
	bft @emit_label_22770
	li r10,$0
	j @emit_label_22771
@emit_label_22770:
	li r10,$1
@emit_label_22771:
; ../cpuex2017/raytracer/min-rt.ml@874:7;874:53 ::= Olt ../cpuex2017/raytracer/min-rt.ml@874:14;874:38 ../cpuex2017/raytracer/min-rt.ml@874:41;874:52
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@874:7;874:53
	bne r10,r14,@cfg_label_21291
	j @cfg_label_21290
	j @cfg_label_21292
@cfg_label_21291:
	lw r14,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@877:11;877:16 ::<= ../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	j @cfg_label_21400
@cfg_label_21292:
@cfg_label_21290:
	lw f17,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@875:28;875:33 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f18,f15,f17
; ../cpuex2017/raytracer/min-rt.ml@875:22;875:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@872:11;872:43 ../cpuex2017/raytracer/min-rt.ml@875:28;875:33
	fadd f17,f18,f12
; ../cpuex2017/raytracer/min-rt.ml@875:22;875:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@875:22;875:33 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f18,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f18,f17
	bft @cfg_label_21272
	j @cfg_label_21271
	j @cfg_label_21273
@cfg_label_21272:
	mov f18,f17
; ../cpuex2017/raytracer/min-rt.ml@875:22;875:39 ::<= ../cpuex2017/raytracer/min-rt.ml@875:16;875:40
	j @cfg_label_21285
@cfg_label_21273:
@cfg_label_21271:
	fmovi f19,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f18,f19,f17
; ../cpuex2017/raytracer/min-rt.ml@875:16;875:40 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@875:22;875:39
	j @cfg_label_21284
@cfg_label_21285:
@cfg_label_21284:
	lw f17,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@875:43;875:54 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f18,f17
	bft @emit_label_22772
	li r10,$0
	j @emit_label_22773
@emit_label_22772:
	li r10,$1
@emit_label_22773:
; ../cpuex2017/raytracer/min-rt.ml@875:9;875:55 ::= Olt ../cpuex2017/raytracer/min-rt.ml@875:16;875:40 ../cpuex2017/raytracer/min-rt.ml@875:43;875:54
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@875:9;875:55
	bne r10,r14,@cfg_label_21278
	j @cfg_label_21277
	j @cfg_label_21279
@cfg_label_21278:
	lw r14,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@877:11;877:16 ::<= ../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	j @cfg_label_21399
@cfg_label_21279:
@cfg_label_21277:
	fmovi f17,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f16,f17
	bft @emit_label_22774
	li r10,$0
	j @emit_label_22775
@emit_label_22774:
	li r10,$1
@emit_label_22775:
; ../cpuex2017/raytracer/min-rt.ml@876:6;876:24 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@872:33;872:43 lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r14,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@874:4;878:14 ::= Onot ../cpuex2017/raytracer/min-rt.ml@876:6;876:24
	j @cfg_label_21398
@cfg_label_21400:
@cfg_label_21399:
@cfg_label_21398:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	bne r14,r10,@cfg_label_21394
	j @cfg_label_21393
	j @cfg_label_21395
@cfg_label_21394:
	lw f16,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@881:17;881:27 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fsub f15,f16,f11
; ../cpuex2017/raytracer/min-rt.ml@881:17;881:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@881:17;881:27 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw f18,r12,$12
; ../cpuex2017/raytracer/min-rt.ml@881:38;881:48 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f17,f15,f18
; ../cpuex2017/raytracer/min-rt.ml@881:16;881:48 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@881:17;881:33 ../cpuex2017/raytracer/min-rt.ml@881:38;881:48
	lw f16,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@883:26;883:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f19,f17,f16
; ../cpuex2017/raytracer/min-rt.ml@883:20;883:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@881:16;881:48 ../cpuex2017/raytracer/min-rt.ml@883:26;883:31
	fadd f15,f19,f10
; ../cpuex2017/raytracer/min-rt.ml@883:20;883:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@883:20;883:31 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f19,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f19,f15
	bft @cfg_label_21297
	j @cfg_label_21296
	j @cfg_label_21298
@cfg_label_21297:
	mov f19,f15
; ../cpuex2017/raytracer/min-rt.ml@883:20;883:37 ::<= ../cpuex2017/raytracer/min-rt.ml@883:14;883:38
	j @cfg_label_21384
@cfg_label_21298:
@cfg_label_21296:
	fmovi f4,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f19,f4,f15
; ../cpuex2017/raytracer/min-rt.ml@883:14;883:38 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@883:20;883:37
	j @cfg_label_21383
@cfg_label_21384:
@cfg_label_21383:
	lw f15,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@883:41;883:52 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f19,f15
	bft @emit_label_22776
	li r10,$0
	j @emit_label_22777
@emit_label_22776:
	li r10,$1
@emit_label_22777:
; ../cpuex2017/raytracer/min-rt.ml@883:7;883:53 ::= Olt ../cpuex2017/raytracer/min-rt.ml@883:14;883:38 ../cpuex2017/raytracer/min-rt.ml@883:41;883:52
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@883:7;883:53
	bne r10,r14,@cfg_label_21321
	j @cfg_label_21320
	j @cfg_label_21322
@cfg_label_21321:
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@877:11;877:16 ::<= ../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	j @cfg_label_21379
@cfg_label_21322:
@cfg_label_21320:
	lw f19,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@884:28;884:33 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f4,f17,f19
; ../cpuex2017/raytracer/min-rt.ml@884:22;884:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@881:16;881:48 ../cpuex2017/raytracer/min-rt.ml@884:28;884:33
	fadd f19,f4,f12
; ../cpuex2017/raytracer/min-rt.ml@884:22;884:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@884:22;884:33 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f4,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f4,f19
	bft @cfg_label_21302
	j @cfg_label_21301
	j @cfg_label_21303
@cfg_label_21302:
	mov f4,f19
; ../cpuex2017/raytracer/min-rt.ml@884:22;884:39 ::<= ../cpuex2017/raytracer/min-rt.ml@884:16;884:40
	j @cfg_label_21315
@cfg_label_21303:
@cfg_label_21301:
	fmovi f6,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f4,f6,f19
; ../cpuex2017/raytracer/min-rt.ml@884:16;884:40 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@884:22;884:39
	j @cfg_label_21314
@cfg_label_21315:
@cfg_label_21314:
	lw f19,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@884:43;884:54 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f4,f19
	bft @emit_label_22778
	li r10,$0
	j @emit_label_22779
@emit_label_22778:
	li r10,$1
@emit_label_22779:
; ../cpuex2017/raytracer/min-rt.ml@884:9;884:55 ::= Olt ../cpuex2017/raytracer/min-rt.ml@884:16;884:40 ../cpuex2017/raytracer/min-rt.ml@884:43;884:54
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@884:9;884:55
	bne r10,r11,@cfg_label_21308
	j @cfg_label_21307
	j @cfg_label_21309
@cfg_label_21308:
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@877:11;877:16 ::<= ../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	j @cfg_label_21378
@cfg_label_21309:
@cfg_label_21307:
	fmovi f19,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f18,f19
	bft @emit_label_22780
	li r10,$0
	j @emit_label_22781
@emit_label_22780:
	li r10,$1
@emit_label_22781:
; ../cpuex2017/raytracer/min-rt.ml@885:6;885:24 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@881:38;881:48 lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@883:4;887:14 ::= Onot ../cpuex2017/raytracer/min-rt.ml@885:6;885:24
	j @cfg_label_21377
@cfg_label_21379:
@cfg_label_21378:
@cfg_label_21377:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	bne r11,r10,@cfg_label_21373
	j @cfg_label_21372
	j @cfg_label_21374
@cfg_label_21373:
	lw f17,r12,$16
; ../cpuex2017/raytracer/min-rt.ml@890:17;890:27 ::= OiArrRead[4] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fsub f18,f17,f12
; ../cpuex2017/raytracer/min-rt.ml@890:17;890:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@890:17;890:27 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw f17,r12,$20
; ../cpuex2017/raytracer/min-rt.ml@890:38;890:48 ::= OiArrRead[5] ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f12,f18,f17
; ../cpuex2017/raytracer/min-rt.ml@890:16;890:48 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@890:17;890:33 ../cpuex2017/raytracer/min-rt.ml@890:38;890:48
	fmul f18,f12,f16
; ../cpuex2017/raytracer/min-rt.ml@892:20;892:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@890:16;890:48 ../cpuex2017/raytracer/min-rt.ml@883:26;883:31
	fadd f16,f18,f10
; ../cpuex2017/raytracer/min-rt.ml@892:20;892:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@892:20;892:31 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f10,f16
	bft @cfg_label_21327
	j @cfg_label_21326
	j @cfg_label_21328
@cfg_label_21327:
	mov f10,f16
; ../cpuex2017/raytracer/min-rt.ml@892:20;892:37 ::<= ../cpuex2017/raytracer/min-rt.ml@892:14;892:38
	j @cfg_label_21364
@cfg_label_21328:
@cfg_label_21326:
	fmovi f18,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f10,f18,f16
; ../cpuex2017/raytracer/min-rt.ml@892:14;892:38 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@892:20;892:37
	j @cfg_label_21363
@cfg_label_21364:
@cfg_label_21363:
	flt f10,f15
	bft @emit_label_22782
	li r10,$0
	j @emit_label_22783
@emit_label_22782:
	li r10,$1
@emit_label_22783:
; ../cpuex2017/raytracer/min-rt.ml@892:7;892:53 ::= Olt ../cpuex2017/raytracer/min-rt.ml@892:14;892:38 ../cpuex2017/raytracer/min-rt.ml@883:41;883:52
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@892:7;892:53
	bne r10,r11,@cfg_label_21349
	j @cfg_label_21348
	j @cfg_label_21350
@cfg_label_21349:
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@877:11;877:16 ::<= ../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	j @cfg_label_21360
@cfg_label_21350:
@cfg_label_21348:
	fmul f15,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@893:22;893:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@890:16;890:48 ../cpuex2017/raytracer/min-rt.ml@874:26;874:31
	fadd f10,f15,f11
; ../cpuex2017/raytracer/min-rt.ml@893:22;893:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@893:22;893:33 ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f11,f10
	bft @cfg_label_21332
	j @cfg_label_21331
	j @cfg_label_21333
@cfg_label_21332:
	mov f11,f10
; ../cpuex2017/raytracer/min-rt.ml@893:22;893:39 ::<= ../cpuex2017/raytracer/min-rt.ml@893:16;893:40
	j @cfg_label_21344
@cfg_label_21333:
@cfg_label_21331:
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f11,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@893:16;893:40 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@893:22;893:39
	j @cfg_label_21343
@cfg_label_21344:
@cfg_label_21343:
	flt f11,f14
	bft @emit_label_22784
	li r10,$0
	j @emit_label_22785
@emit_label_22784:
	li r10,$1
@emit_label_22785:
; ../cpuex2017/raytracer/min-rt.ml@893:9;893:55 ::= Olt ../cpuex2017/raytracer/min-rt.ml@893:16;893:40 ../cpuex2017/raytracer/min-rt.ml@874:41;874:52
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@893:9;893:55
	bne r10,r11,@cfg_label_21338
	j @cfg_label_21337
	j @cfg_label_21339
@cfg_label_21338:
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@877:11;877:16 ::<= ../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	j @cfg_label_21359
@cfg_label_21339:
@cfg_label_21337:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f17,f10
	bft @emit_label_22786
	li r10,$0
	j @emit_label_22787
@emit_label_22786:
	li r10,$1
@emit_label_22787:
; ../cpuex2017/raytracer/min-rt.ml@894:6;894:24 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@890:38;890:48 lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@892:4;896:14 ::= Onot ../cpuex2017/raytracer/min-rt.ml@894:6;894:24
	j @cfg_label_21358
@cfg_label_21360:
@cfg_label_21359:
@cfg_label_21358:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	bne r11,r10,@cfg_label_21354
	j @cfg_label_21353
	j @cfg_label_21355
@cfg_label_21354:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	pop f4
	pop f6
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21355:
@cfg_label_21353:
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@898:5;898:26 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@880:5;880:16 ../cpuex2017/raytracer/min-rt.ml@890:16;890:48
	li r5,$3
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	pop f4
	pop f6
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21374:
@cfg_label_21372:
	lw r5,r31,$356
	sw f17,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@889:5;889:26 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@880:5;880:16 ../cpuex2017/raytracer/min-rt.ml@881:16;881:48
	li r5,$2
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	pop f4
	pop f6
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21395:
@cfg_label_21393:
	lw r5,r31,$356
	sw f15,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@880:5;880:26 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@880:5;880:16 ../cpuex2017/raytracer/min-rt.ml@872:11;872:43
	li r5,$1
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	pop f4
	pop f6
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@a_8776solver_second_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$48
	push f20
	push f9
	push f8
	push f7
	push f6
	push f4
	push r9
	push r8
	mov r9,r10
	mov r8,r11
	mov f7,f10
	mov f8,f11
	mov f9,f12
@cfg_label_21211:
	lw f6,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@915:11;915:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f6,f10
	bft @emit_label_22788
	li r10,$0
	j @emit_label_22789
@emit_label_22788:
	li r10,$1
@emit_label_22789:
; ../cpuex2017/raytracer/min-rt.ml@916:5;916:15 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@915:11;915:21 lib_tortesia.ml@5:25;5:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@916:5;916:15
	bne r10,r11,@cfg_label_21257
	j @cfg_label_21256
	j @cfg_label_21258
	j @cfg_label_21259
@cfg_label_21258:
@cfg_label_21256:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop f8
	pop f9
	pop f20
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_21259:
@cfg_label_21257:
	lw f10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f11,f10,f7
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:17;919:27 ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	lw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@919:37;919:47 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f12,f10,f8
; ../cpuex2017/raytracer/min-rt.ml@919:37;919:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:37;919:47 ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@919:17;919:33 ../cpuex2017/raytracer/min-rt.ml@919:37;919:53
	lw f12,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@919:57;919:67 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f11,f12,f9
; ../cpuex2017/raytracer/min-rt.ml@919:57;919:73 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:57;919:67 ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fadd f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@919:17;919:53 ../cpuex2017/raytracer/min-rt.ml@919:57;919:73
	push r4
	subi r1,r1,$16
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10 ::<= ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10 ::<= ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	mov f11,f8
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10 ::<= ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	mov f12,f9
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10 ::<= ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	jal @a_8740quadratic
	mov f20,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@920:14;920:34 ../cpuex2017/raytracer/min-rt.ml@920:14;920:23
	lw r10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	li r11,$3
; ../cpuex2017/raytracer/min-rt.ml@921:27;921:28
	bne r10,r11,@cfg_label_21214
	j @cfg_label_21213
	j @cfg_label_21215
@cfg_label_21214:
	mov f10,f20
; ../cpuex2017/raytracer/min-rt.ml@920:14;920:34 ::<= ../cpuex2017/raytracer/min-rt.ml@921:13;921:53
	j @cfg_label_21244
@cfg_label_21215:
@cfg_label_21213:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@921:41;921:44
	fsub f10,f20,f11
; ../cpuex2017/raytracer/min-rt.ml@921:13;921:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@920:14;920:34 ../cpuex2017/raytracer/min-rt.ml@921:41;921:44
	j @cfg_label_21243
@cfg_label_21244:
@cfg_label_21243:
	fmul f11,f4,f4
; ../cpuex2017/raytracer/min-rt.ml@922:13;922:24 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:17;919:73 ../cpuex2017/raytracer/min-rt.ml@919:17;919:73
	fmul f12,f6,f10
; ../cpuex2017/raytracer/min-rt.ml@922:29;922:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@915:11;915:21 ../cpuex2017/raytracer/min-rt.ml@921:13;921:53
	fsub f6,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@922:12;922:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@922:13;922:24 ../cpuex2017/raytracer/min-rt.ml@922:29;922:37
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f10,f6
	bft @emit_label_22790
	li r10,$0
	j @emit_label_22791
@emit_label_22790:
	li r10,$1
@emit_label_22791:
; ../cpuex2017/raytracer/min-rt.ml@923:7;923:15 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@922:12;922:37 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@923:7;923:15
	bne r10,r11,@cfg_label_21234
	j @cfg_label_21233
	j @cfg_label_21235
@cfg_label_21234:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop f8
	pop f9
	pop f20
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_21235:
@cfg_label_21233:
	lw r10,r9,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@924:9;924:21
	bne r10,r11,@cfg_label_21226
	j @cfg_label_21225
	j @cfg_label_21227
@cfg_label_21226:
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@922:12;922:37 ::<= ../cpuex2017/raytracer/min-rt.ml@922:12;922:37
	jal sqrt
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@927:31;927:37 ../cpuex2017/raytracer/min-rt.ml@925:31;925:35
	fsub f10,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@927:21;927:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@919:17;919:73 ../cpuex2017/raytracer/min-rt.ml@927:31;927:37
	lw f11,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@927:42;927:52 ::= OiArrRead[4] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@927:20;927:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@927:21;927:37 ../cpuex2017/raytracer/min-rt.ml@927:42;927:52
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@924:6;927:52 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@925:1;925:12 ../cpuex2017/raytracer/min-rt.ml@927:20;927:52
	j @cfg_label_21230
@cfg_label_21227:
@cfg_label_21225:
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@922:12;922:37 ::<= ../cpuex2017/raytracer/min-rt.ml@922:12;922:37
	jal sqrt
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@925:31;925:37 ../cpuex2017/raytracer/min-rt.ml@925:31;925:35
	fadd f10,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@925:21;925:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@919:17;919:73 ../cpuex2017/raytracer/min-rt.ml@925:31;925:37
	lw f11,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@925:42;925:52 ::= OiArrRead[4] ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@925:20;925:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@925:21;925:37 ../cpuex2017/raytracer/min-rt.ml@925:42;925:52
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@924:6;927:52 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@925:1;925:12 ../cpuex2017/raytracer/min-rt.ml@925:20;925:52
	j @cfg_label_21229
@cfg_label_21230:
@cfg_label_21229:
	li r5,$1
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop f8
	pop f9
	pop f20
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@a_8782solver_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$60
	push r21
	push r20
	push r9
	push r8
	push f7
	push f6
	push f4
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_21168:
	lw r5,r31,$456
	sll r6,r10,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@934:10;934:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@934:10;934:17 ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw f10,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@935:11;935:18 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw r13,r9,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	lw f11,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@935:22;935:33 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@935:11;935:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@935:11;935:18 ../cpuex2017/raytracer/min-rt.ml@935:22;935:33
	lw f10,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@936:11;936:18 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw f11,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@936:22;936:33 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@936:11;936:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@936:11;936:18 ../cpuex2017/raytracer/min-rt.ml@936:22;936:33
	lw f10,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@937:11;937:18 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw f11,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@937:22;937:33 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@937:11;937:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@937:11;937:18 ../cpuex2017/raytracer/min-rt.ml@937:22;937:33
	lw r12,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@451:26;451:27 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	sll r6,r10,$2
	add r8,r12,r6
	lw r8,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@939:15;939:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@451:26;451:27 ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw r10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@941:15;941:16
	bne r10,r12,@cfg_label_21193
	j @cfg_label_21192
	j @cfg_label_21194
@cfg_label_21193:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@943:20;943:21
	bne r10,r11,@cfg_label_21188
	j @cfg_label_21187
	j @cfg_label_21189
@cfg_label_21188:
	push r4
	subi r1,r1,$20
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@934:10;934:25 ::<= ../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@939:15;939:30 ::<= ../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@935:11;935:33 ::<= ../cpuex2017/raytracer/min-rt.ml@935:11;935:33
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@936:11;936:33 ::<= ../cpuex2017/raytracer/min-rt.ml@936:11;936:33
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@937:11;937:33 ::<= ../cpuex2017/raytracer/min-rt.ml@937:11;937:33
	jal @a_8776solver_second_fast
	mov r21,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40 ../cpuex2017/raytracer/min-rt.ml@946:4;946:22
	mov r5,r21
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@cfg_label_21189:
@cfg_label_21187:
	lw f10,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@905:12;905:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22792
	li r10,$0
	j @emit_label_22793
@emit_label_22792:
	li r10,$1
@emit_label_22793:
; ../cpuex2017/raytracer/min-rt.ml@905:5;905:22 ::= Olt ../cpuex2017/raytracer/min-rt.ml@905:12;905:22 lib_tortesia.ml@7:24;7:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@905:5;905:22
	bne r10,r11,@cfg_label_21180
	j @cfg_label_21179
	j @cfg_label_21181
@cfg_label_21180:
	li r21,$0
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	mov r5,r21
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@cfg_label_21181:
@cfg_label_21179:
	lw f11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:16 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@907:6;907:16 ../cpuex2017/raytracer/min-rt.ml@935:11;935:33
	lw f11,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@907:26;907:36 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmul f12,f11,f6
; ../cpuex2017/raytracer/min-rt.ml@907:26;907:42 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@907:26;907:36 ../cpuex2017/raytracer/min-rt.ml@936:11;936:33
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:42 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@907:6;907:22 ../cpuex2017/raytracer/min-rt.ml@907:26;907:42
	lw f10,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@907:46;907:56 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmul f12,f10,f7
; ../cpuex2017/raytracer/min-rt.ml@907:46;907:62 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@907:46;907:56 ../cpuex2017/raytracer/min-rt.ml@937:11;937:33
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:62 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@907:6;907:42 ../cpuex2017/raytracer/min-rt.ml@907:46;907:62
	lw r5,r31,$356
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@906:4;907:62 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@906:4;906:15 ../cpuex2017/raytracer/min-rt.ml@907:6;907:62
	li r21,$1
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	mov r5,r21
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@cfg_label_21194:
@cfg_label_21192:
	lw r20,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@942:24;942:36 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	push r4
	subi r1,r1,$24
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@934:10;934:25 ::<= ../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@942:24;942:36 ::<= ../cpuex2017/raytracer/min-rt.ml@942:24;942:36
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@939:15;939:30 ::<= ../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@935:11;935:33 ::<= ../cpuex2017/raytracer/min-rt.ml@935:11;935:33
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@936:11;936:33 ::<= ../cpuex2017/raytracer/min-rt.ml@936:11;936:33
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@937:11;937:33 ::<= ../cpuex2017/raytracer/min-rt.ml@937:11;937:33
	jal @a_8763solver_rect_fast
	mov r21,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40 ../cpuex2017/raytracer/min-rt.ml@942:4;942:20
	mov r5,r21
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@a_8793solver_second_fast2:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	push f7
	push f6
	push f4
	push r8
	mov r10,r10
	mov r8,r11
	mov r12,r12
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_21124:
	lw f13,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@963:11;963:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmovi f14,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f13,f14
	bft @emit_label_22794
	li r11,$0
	j @emit_label_22795
@emit_label_22794:
	li r11,$1
@emit_label_22795:
; ../cpuex2017/raytracer/min-rt.ml@964:5;964:15 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@963:11;963:21 lib_tortesia.ml@5:25;5:28
	li r13,$1
; ../cpuex2017/raytracer/min-rt.ml@964:5;964:15
	bne r11,r13,@cfg_label_21161
	j @cfg_label_21160
	j @cfg_label_21162
	j @cfg_label_21163
@cfg_label_21162:
@cfg_label_21160:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	pop r8
	pop f4
	pop f6
	pop f7
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_21163:
@cfg_label_21161:
	lw f15,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f14,f15,f10
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:17;967:27 ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	lw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@967:37;967:47 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f15,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@967:37;967:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:37;967:47 ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fadd f10,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@967:17;967:33 ../cpuex2017/raytracer/min-rt.ml@967:37;967:53
	lw f14,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@967:57;967:67 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f11,f14,f12
; ../cpuex2017/raytracer/min-rt.ml@967:57;967:73 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:57;967:67 ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fadd f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@967:17;967:53 ../cpuex2017/raytracer/min-rt.ml@967:57;967:73
	lw f10,r12,$12
; ../cpuex2017/raytracer/min-rt.ml@968:13;968:23 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f11,f4,f4
; ../cpuex2017/raytracer/min-rt.ml@969:13;969:24 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:17;967:73 ../cpuex2017/raytracer/min-rt.ml@967:17;967:73
	fmul f12,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@969:29;969:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@963:11;963:21 ../cpuex2017/raytracer/min-rt.ml@968:13;968:23
	fsub f6,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@969:12;969:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@969:13;969:24 ../cpuex2017/raytracer/min-rt.ml@969:29;969:37
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f10,f6
	bft @emit_label_22796
	li r11,$0
	j @emit_label_22797
@emit_label_22796:
	li r11,$1
@emit_label_22797:
; ../cpuex2017/raytracer/min-rt.ml@970:7;970:15 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@969:12;969:37 lib_tortesia.ml@9:24;9:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@970:7;970:15
	bne r11,r12,@cfg_label_21142
	j @cfg_label_21141
	j @cfg_label_21143
@cfg_label_21142:
	li r5,$0
; ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	pop r8
	pop f4
	pop f6
	pop f7
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_21143:
@cfg_label_21141:
	lw r11,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@971:9;971:21
	bne r11,r10,@cfg_label_21134
	j @cfg_label_21133
	j @cfg_label_21135
@cfg_label_21134:
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@969:12;969:37 ::<= ../cpuex2017/raytracer/min-rt.ml@969:12;969:37
	jal sqrt
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@974:31;974:37 ../cpuex2017/raytracer/min-rt.ml@972:31;972:35
	fsub f10,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@974:21;974:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@967:17;967:73 ../cpuex2017/raytracer/min-rt.ml@974:31;974:37
	lw f11,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@974:42;974:52 ::= OiArrRead[4] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@974:20;974:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@974:21;974:37 ../cpuex2017/raytracer/min-rt.ml@974:42;974:52
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@971:6;974:52 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@972:1;972:12 ../cpuex2017/raytracer/min-rt.ml@974:20;974:52
	j @cfg_label_21138
@cfg_label_21135:
@cfg_label_21133:
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@969:12;969:37 ::<= ../cpuex2017/raytracer/min-rt.ml@969:12;969:37
	jal sqrt
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@972:31;972:37 ../cpuex2017/raytracer/min-rt.ml@972:31;972:35
	fadd f10,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@972:21;972:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@967:17;967:73 ../cpuex2017/raytracer/min-rt.ml@972:31;972:37
	lw f11,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@972:42;972:52 ::= OiArrRead[4] ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@972:20;972:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@972:21;972:37 ../cpuex2017/raytracer/min-rt.ml@972:42;972:52
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@971:6;974:52 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@972:1;972:12 ../cpuex2017/raytracer/min-rt.ml@972:20;972:52
	j @cfg_label_21137
@cfg_label_21138:
@cfg_label_21137:
	li r5,$1
; ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	pop r8
	pop f4
	pop f6
	pop f7
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@a_8803setup_rect_table:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$36
	mov r10,r10
	mov r11,r11
@cfg_label_21015:
	li r13,$6
; ../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1003:29;1003:32
	mov r7,r3
	sll r5,r13,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22799
@emit_label_22798:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22798
@emit_label_22799:
	mov r12,r7
; ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28 ../cpuex2017/raytracer/min-rt.ml@1003:29;1003:32
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22800
	li r13,$0
	j @emit_label_22801
@emit_label_22800:
	li r13,$1
@emit_label_22801:
; ../cpuex2017/raytracer/min-rt.ml@1005:5;1005:20 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20 lib_tortesia.ml@5:25;5:28
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@1005:5;1005:20
	bne r13,r14,@cfg_label_21042
	j @cfg_label_21041
	j @cfg_label_21043
@cfg_label_21042:
	lw r14,r11,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22802
	li r13,$0
	j @emit_label_22803
@emit_label_22802:
	li r13,$1
@emit_label_22803:
; ../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20 lib_tortesia.ml@7:24;7:27
	li r15,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r14,r15,@cfg_label_21019
	j @cfg_label_21018
	j @cfg_label_21020
	j @cfg_label_21021
@cfg_label_21020:
@cfg_label_21018:
	slti r6,r13,$0
	slti r7,r13,$1
	sub r14,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1009:28;1009:63 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62
	j @cfg_label_21035
@cfg_label_21021:
@cfg_label_21019:
	mov r14,r13
; ../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62 ::<= ../cpuex2017/raytracer/min-rt.ml@1009:28;1009:63
@cfg_label_21035:
	lw r13,r11,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	lw f11,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	li r13,$1
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r14,r13,@cfg_label_21024
	j @cfg_label_21023
	j @cfg_label_21025
	j @cfg_label_21026
@cfg_label_21025:
@cfg_label_21023:
	mov f12,f11
; ../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77 ::<= ../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78
	j @cfg_label_21030
@cfg_label_21026:
@cfg_label_21024:
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f12,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77
@cfg_label_21030:
	sw f12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@1009:4;1009:78 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78
	fmovi f12,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:20
	fdiv f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:31 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:20 ../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20
	sw f11,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@1005:2;1012:3 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:31
	j @cfg_label_21116
@cfg_label_21043:
@cfg_label_21041:
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@1006:11;1006:12
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1006:17;1006:20
	sll r6,r14,$2
	add r5,r12,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1005:2;1012:3 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1006:11;1006:12 ../cpuex2017/raytracer/min-rt.ml@1006:17;1006:20
	j @cfg_label_21115
@cfg_label_21116:
@cfg_label_21115:
	lw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22804
	li r13,$0
	j @emit_label_22805
@emit_label_22804:
	li r13,$1
@emit_label_22805:
; ../cpuex2017/raytracer/min-rt.ml@1013:5;1013:20 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20 lib_tortesia.ml@5:25;5:28
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@1013:5;1013:20
	bne r13,r14,@cfg_label_21071
	j @cfg_label_21070
	j @cfg_label_21072
@cfg_label_21071:
	lw r14,r11,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22806
	li r13,$0
	j @emit_label_22807
@emit_label_22806:
	li r13,$1
@emit_label_22807:
; ../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20 lib_tortesia.ml@7:24;7:27
	li r15,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r14,r15,@cfg_label_21048
	j @cfg_label_21047
	j @cfg_label_21049
	j @cfg_label_21050
@cfg_label_21049:
@cfg_label_21047:
	slti r6,r13,$0
	slti r7,r13,$1
	sub r14,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1016:28;1016:63 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62
	j @cfg_label_21064
@cfg_label_21050:
@cfg_label_21048:
	mov r14,r13
; ../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62 ::<= ../cpuex2017/raytracer/min-rt.ml@1016:28;1016:63
@cfg_label_21064:
	lw r13,r11,$16
; ../cpuex2017/raytracer/min-rt.ml@210:29;210:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	lw f11,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	li r13,$1
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r14,r13,@cfg_label_21053
	j @cfg_label_21052
	j @cfg_label_21054
	j @cfg_label_21055
@cfg_label_21054:
@cfg_label_21052:
	mov f12,f11
; ../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77 ::<= ../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78
	j @cfg_label_21059
@cfg_label_21055:
@cfg_label_21053:
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f12,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77
@cfg_label_21059:
	sw f12,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@1016:4;1016:78 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78
	fmovi f12,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:20
	fdiv f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:31 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:20 ../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20
	sw f11,r12,$12
; ../cpuex2017/raytracer/min-rt.ml@1013:2;1018:3 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:31
	j @cfg_label_21110
@cfg_label_21072:
@cfg_label_21070:
	li r14,$3
; ../cpuex2017/raytracer/min-rt.ml@1014:11;1014:12
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1014:17;1014:20
	sll r6,r14,$2
	add r5,r12,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1013:2;1018:3 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1014:11;1014:12 ../cpuex2017/raytracer/min-rt.ml@1014:17;1014:20
	j @cfg_label_21109
@cfg_label_21110:
@cfg_label_21109:
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22808
	li r10,$0
	j @emit_label_22809
@emit_label_22808:
	li r10,$1
@emit_label_22809:
; ../cpuex2017/raytracer/min-rt.ml@1019:5;1019:20 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20 lib_tortesia.ml@5:25;5:28
	li r13,$1
; ../cpuex2017/raytracer/min-rt.ml@1019:5;1019:20
	bne r10,r13,@cfg_label_21100
	j @cfg_label_21099
	j @cfg_label_21101
@cfg_label_21100:
	lw r13,r11,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22810
	li r10,$0
	j @emit_label_22811
@emit_label_22810:
	li r10,$1
@emit_label_22811:
; ../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20 lib_tortesia.ml@7:24;7:27
	li r14,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r13,r14,@cfg_label_21077
	j @cfg_label_21076
	j @cfg_label_21078
	j @cfg_label_21079
@cfg_label_21078:
@cfg_label_21076:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r13,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1022:28;1022:63 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62
	j @cfg_label_21093
@cfg_label_21079:
@cfg_label_21077:
	mov r13,r10
; ../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62 ::<= ../cpuex2017/raytracer/min-rt.ml@1022:28;1022:63
@cfg_label_21093:
	lw r10,r11,$16
; ../cpuex2017/raytracer/min-rt.ml@220:29;220:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	lw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@220:29;220:30
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r13,r10,@cfg_label_21082
	j @cfg_label_21081
	j @cfg_label_21083
	j @cfg_label_21084
@cfg_label_21083:
@cfg_label_21081:
	mov f12,f11
; ../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77 ::<= ../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78
	j @cfg_label_21088
@cfg_label_21084:
@cfg_label_21082:
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f12,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77
@cfg_label_21088:
	sw f12,r12,$16
; ../cpuex2017/raytracer/min-rt.ml@1022:4;1022:78 ::= OiArrWrite[4] ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78
	fmovi f12,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:20
	fdiv f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:31 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:20 ../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20
	sw f11,r12,$20
; ../cpuex2017/raytracer/min-rt.ml@1019:2;1024:3 ::= OiArrWrite[5] ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:31
	j @cfg_label_21104
@cfg_label_21101:
@cfg_label_21099:
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@1020:11;1020:12
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1020:17;1020:20
	sll r6,r11,$2
	add r5,r12,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1019:2;1024:3 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ../cpuex2017/raytracer/min-rt.ml@1020:11;1020:12 ../cpuex2017/raytracer/min-rt.ml@1020:17;1020:20
	j @cfg_label_21103
@cfg_label_21104:
@cfg_label_21103:
	mov r5,r12
; ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@a_8806setup_surface_table:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$36
	mov r10,r10
	mov r11,r11
@cfg_label_20974:
	li r13,$4
; ../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1030:29;1030:32
	mov r7,r3
	sll r5,r13,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22813
@emit_label_22812:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22812
@emit_label_22813:
	mov r12,r7
; ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28 ../cpuex2017/raytracer/min-rt.ml@1030:29;1030:32
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:11 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	lw r13,r11,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	lw f13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f11,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:11 ../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26
	lw f14,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:37 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	lw f10,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f12,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:37 ../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52
	fadd f14,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:52 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:26 ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:52
	lw f12,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:63 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	lw f11,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f15,f12,f11
; ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:63 ../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78
	fadd f12,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:52 ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:78
	fmovi f14,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f14,f12
	bft @emit_label_22814
	li r10,$0
	j @emit_label_22815
@emit_label_22814:
	li r10,$1
@emit_label_22815:
; ../cpuex2017/raytracer/min-rt.ml@1034:5;1034:13 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1034:5;1034:13
	bne r10,r11,@cfg_label_20992
	j @cfg_label_20991
	j @cfg_label_20993
@cfg_label_20992:
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1042:11;1042:12
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1042:17;1042:20
	sll r6,r11,$2
	add r5,r12,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1034:2;1042:20 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ../cpuex2017/raytracer/min-rt.ml@1042:11;1042:12 ../cpuex2017/raytracer/min-rt.ml@1042:17;1042:20
	j @cfg_label_20996
@cfg_label_20993:
@cfg_label_20991:
	fmovi f15,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1036:18;1036:21
	fdiv f14,f15,f12
; ../cpuex2017/raytracer/min-rt.ml@1036:17;1036:26 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1036:18;1036:21 ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	sw f14,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@1036:4;1036:26 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ../cpuex2017/raytracer/min-rt.ml@1036:17;1036:26
	fdiv f14,f13,f12
; ../cpuex2017/raytracer/min-rt.ml@1038:23;1038:39 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26 ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fmovi f15,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f15,f14
; ../cpuex2017/raytracer/min-rt.ml@1038:17;1038:40 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1038:23;1038:39
	sw f13,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@1038:4;1038:40 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ../cpuex2017/raytracer/min-rt.ml@1038:17;1038:40
	fdiv f13,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1039:23;1039:39 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52 ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f14,f13
; ../cpuex2017/raytracer/min-rt.ml@1039:17;1039:40 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1039:23;1039:39
	sw f10,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@1039:4;1039:40 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ../cpuex2017/raytracer/min-rt.ml@1039:17;1039:40
	fdiv f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1040:23;1040:39 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78 ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fmovi f12,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1040:17;1040:40 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1040:23;1040:39
	sw f11,r12,$12
; ../cpuex2017/raytracer/min-rt.ml@1034:2;1042:20 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ../cpuex2017/raytracer/min-rt.ml@1040:17;1040:40
	j @cfg_label_20995
@cfg_label_20996:
@cfg_label_20995:
	mov r5,r12
; ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@a_8809setup_second_table:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	push r9
	push f8
	push f7
	push f6
	push f4
	push r8
	mov r10,r10
	mov r9,r11
@cfg_label_20906:
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1049:29;1049:32
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22817
@emit_label_22816:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22816
@emit_label_22817:
	mov r8,r7
; ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28 ../cpuex2017/raytracer/min-rt.ml@1049:29;1049:32
	lw f6,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	lw f7,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	lw f8,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	push r4
	subi r1,r1,$16
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34
	mov f12,f8
; ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40
	jal @a_8740quadratic
	mov f4,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40 ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:20
	lw r10,r9,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	lw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1052:26;1052:37 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f10,f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1052:17;1052:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28 ../cpuex2017/raytracer/min-rt.ml@1052:26;1052:37
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f12,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1052:17;1052:37
	lw f11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1053:26;1053:37 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f10,f7,f11
; ../cpuex2017/raytracer/min-rt.ml@1053:17;1053:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34 ../cpuex2017/raytracer/min-rt.ml@1053:26;1053:37
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f11,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1053:17;1053:37
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1054:26;1054:37 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f13,f8,f10
; ../cpuex2017/raytracer/min-rt.ml@1054:17;1054:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40 ../cpuex2017/raytracer/min-rt.ml@1054:26;1054:37
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f14,f13
; ../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1054:17;1054:37
	sw f4,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1056:2;1056:17 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40
	lw r10,r9,$12
; ../cpuex2017/raytracer/min-rt.ml@191:29;191:30 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1060:18;1060:19
	bne r10,r11,@cfg_label_20934
	j @cfg_label_20933
	j @cfg_label_20935
@cfg_label_20934:
	lw r10,r9,$36
; ../cpuex2017/raytracer/min-rt.ml@330:28;330:29 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	lw f13,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f16,f8,f13
; ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40 ../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51
	lw f14,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f17,f7,f14
; ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:76 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34 ../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76
	fadd f15,f16,f17
; ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:76 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:51 ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:76
	fmovi f17,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f16,f15,f17
; ../cpuex2017/raytracer/min-rt.ml@1061:23;1061:77 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:76 lib_tortesia.ml@19:23;19:26
	fsub f15,f12,f16
; ../cpuex2017/raytracer/min-rt.ml@1061:17;1061:77 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38 ../cpuex2017/raytracer/min-rt.ml@1061:23;1061:77
	sw f15,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1061:4;1061:77 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1061:17;1061:77
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f15,f8,f12
; ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40 ../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51
	fmul f16,f6,f14
; ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:76 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28 ../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76
	fadd f14,f15,f16
; ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:76 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:51 ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:76
	fmovi f16,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f15,f14,f16
; ../cpuex2017/raytracer/min-rt.ml@1062:23;1062:77 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:76 lib_tortesia.ml@19:23;19:26
	fsub f14,f11,f15
; ../cpuex2017/raytracer/min-rt.ml@1062:17;1062:77 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38 ../cpuex2017/raytracer/min-rt.ml@1062:23;1062:77
	sw f14,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1062:4;1062:77 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1062:17;1062:77
	fmul f11,f7,f12
; ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34 ../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51
	fmul f12,f6,f13
; ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:76 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28 ../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51
	fadd f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:76 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:51 ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:76
	fmovi f12,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f11,f13,f12
; ../cpuex2017/raytracer/min-rt.ml@1063:23;1063:77 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:76 lib_tortesia.ml@19:23;19:26
	fsub f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1063:17;1063:77 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38 ../cpuex2017/raytracer/min-rt.ml@1063:23;1063:77
	sw f12,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@1060:2;1068:4 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1063:17;1063:77
	j @cfg_label_20950
@cfg_label_20935:
@cfg_label_20933:
	sw f12,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1065:4;1065:19 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38
	sw f11,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1066:4;1066:19 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38
	sw f10,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@1060:2;1068:4 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38
	j @cfg_label_20949
@cfg_label_20950:
@cfg_label_20949:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f4,f10
	bft @emit_label_22818
	li r10,$0
	j @emit_label_22819
@emit_label_22818:
	li r10,$1
@emit_label_22819:
; ../cpuex2017/raytracer/min-rt.ml@1069:10;1069:20 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40 lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1069:5;1069:21 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1069:10;1069:20
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1069:5;1069:21
	bne r11,r10,@cfg_label_20940
	j @cfg_label_20939
	j @cfg_label_20941
@cfg_label_20940:
; ../cpuex2017/raytracer/min-rt.ml@1069:2;1071:9
	j @cfg_label_20944
@cfg_label_20941:
@cfg_label_20939:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:20
	fdiv f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:26 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:20 ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40
	sw f10,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@1069:2;1071:9 ::= OiArrWrite[4] ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:26
	j @cfg_label_20943
@cfg_label_20944:
@cfg_label_20943:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	pop r8
	pop f4
	pop f6
	pop f7
	pop f8
	pop r9
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@a_8812iter_setup_dirvec_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$48
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r9,r11
@cfg_label_20905:
@cfg_label_20876:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1078:14;1078:15
	slt r5,r9,r10
	bne r0,r5,@cfg_label_20901
	j @cfg_label_20900
	j @cfg_label_20902
@cfg_label_20901:
; ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_20902:
@cfg_label_20900:
	lw r5,r31,$456
	sll r6,r9,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:19 ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r20,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@451:26;451:27 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r21,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r10,r22,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1083:17;1083:18
	bne r10,r11,@cfg_label_20886
	j @cfg_label_20885
	j @cfg_label_20887
@cfg_label_20886:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@1085:22;1085:23
	bne r10,r11,@cfg_label_20881
	j @cfg_label_20880
	j @cfg_label_20882
@cfg_label_20881:
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27 ::<= ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	jal @a_8809setup_second_table
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1088:24;1088:46 ../cpuex2017/raytracer/min-rt.ml@1088:24;1088:42
	sll r6,r9,$2
	add r5,r20,r6
	sw r23,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@451:26;451:27 ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ../cpuex2017/raytracer/min-rt.ml@1088:24;1088:46
	j @cfg_label_20894
@cfg_label_20882:
@cfg_label_20880:
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27 ::<= ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	jal @a_8806setup_surface_table
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1086:24;1086:47 ../cpuex2017/raytracer/min-rt.ml@1086:24;1086:43
	sll r6,r9,$2
	add r5,r20,r6
	sw r23,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@451:26;451:27 ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ../cpuex2017/raytracer/min-rt.ml@1086:24;1086:47
	j @cfg_label_20893
@cfg_label_20887:
@cfg_label_20885:
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27 ::<= ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	jal @a_8803setup_rect_table
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1084:24;1084:44 ../cpuex2017/raytracer/min-rt.ml@1084:24;1084:40
	sll r6,r9,$2
	add r5,r20,r6
	sw r23,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@451:26;451:27 ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ../cpuex2017/raytracer/min-rt.ml@1084:24;1084:44
	j @cfg_label_20892
@cfg_label_20894:
@cfg_label_20893:
@cfg_label_20892:
	subi r10,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1090:40;1090:49 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1090:40;1090:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	j @cfg_label_20876
	j @cfg_label_20905
@a_8817setup_startp_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$72
	push f8
	push f7
	push f6
	push f4
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r9,r11
@cfg_label_20875:
@cfg_label_20813:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1103:14;1103:15
	slt r5,r9,r10
	bne r0,r5,@cfg_label_20871
	j @cfg_label_20870
	j @cfg_label_20872
@cfg_label_20871:
; ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop f4
	pop f6
	pop f7
	pop f8
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@cfg_label_20872:
@cfg_label_20870:
	lw r5,r31,$456
	sll r6,r9,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:21 ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw r20,r21,$40
; ../cpuex2017/raytracer/min-rt.ml@357:28;357:29 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	lw r22,r21,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	lw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:23 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw r10,r21,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1107:27;1107:40 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:23 ../cpuex2017/raytracer/min-rt.ml@1107:27;1107:40
	sw f10,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1107:4;1107:40 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29 ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:40
	lw f11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:23 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw f12,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1108:27;1108:40 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:23 ../cpuex2017/raytracer/min-rt.ml@1108:27;1108:40
	sw f10,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1108:4;1108:40 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29 ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:40
	lw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:23 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1109:27;1109:40 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:23 ../cpuex2017/raytracer/min-rt.ml@1109:27;1109:40
	sw f12,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@1109:4;1109:40 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29 ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:40
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@1110:17;1110:18
	bne r22,r10,@cfg_label_20844
	j @cfg_label_20843
	j @cfg_label_20845
@cfg_label_20844:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@1113:22;1113:23
	slt r5,r10,r22
	bne r0,r5,@cfg_label_20839
	j @cfg_label_20838
	j @cfg_label_20840
	j @cfg_label_20841
@cfg_label_20840:
@cfg_label_20838:
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11
	j @cfg_label_20851
@cfg_label_20841:
@cfg_label_20839:
	lw f6,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	lw f7,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	lw f8,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	push r4
	subi r1,r1,$16
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51 ::<= ../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51
	mov f12,f8
; ../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62 ::<= ../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62
	jal @a_8740quadratic
	mov f4,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62 ../cpuex2017/raytracer/min-rt.ml@1114:16;1114:25
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@1115:33;1115:34
	bne r22,r10,@cfg_label_20828
	j @cfg_label_20827
	j @cfg_label_20829
@cfg_label_20828:
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62 ::<= ../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59
	j @cfg_label_20832
@cfg_label_20829:
@cfg_label_20827:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1115:47;1115:50
	fsub f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62 ../cpuex2017/raytracer/min-rt.ml@1115:47;1115:50
	j @cfg_label_20831
@cfg_label_20832:
@cfg_label_20831:
	sw f10,r20,$12
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29 ../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59
	j @cfg_label_20852
@cfg_label_20845:
@cfg_label_20843:
	lw r10,r21,$16
; ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	lw f14,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1112:29;1112:39 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	lw f12,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1112:40;1112:50 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	lw f10,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@1112:51;1112:61 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	lw f13,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f11,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ../cpuex2017/raytracer/min-rt.ml@1112:29;1112:39
	lw f14,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f14,f12
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ../cpuex2017/raytracer/min-rt.ml@1112:40;1112:50
	fadd f12,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	lw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ../cpuex2017/raytracer/min-rt.ml@1112:51;1112:61
	fadd f10,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@1112:1;1112:61 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	sw f10,r20,$12
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@357:28;357:29 ../cpuex2017/raytracer/min-rt.ml@1112:1;1112:61
	j @cfg_label_20850
@cfg_label_20852:
@cfg_label_20851:
@cfg_label_20850:
	subi r10,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1117:30;1117:39 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1117:30;1117:39 ::<= ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	j @cfg_label_20813
	j @cfg_label_20875
@a_8822is_rect_outside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	mov r10,r10
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_20763:
	fmovi f13,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f13,f10
	bft @cfg_label_20766
	j @cfg_label_20765
	j @cfg_label_20767
@cfg_label_20766:
	mov f13,f10
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22
	j @cfg_label_20811
@cfg_label_20767:
@cfg_label_20765:
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	j @cfg_label_20810
@cfg_label_20811:
@cfg_label_20810:
	lw r11,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	lw f10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1135:25;1135:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	flt f13,f10
	bft @emit_label_22820
	li r12,$0
	j @emit_label_22821
@emit_label_22820:
	li r12,$1
@emit_label_22821:
; ../cpuex2017/raytracer/min-rt.ml@1135:8;1135:37 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22 ../cpuex2017/raytracer/min-rt.ml@1135:25;1135:36
	li r13,$1
; ../cpuex2017/raytracer/min-rt.ml@1135:8;1135:37
	bne r12,r13,@cfg_label_20794
	j @cfg_label_20793
	j @cfg_label_20795
@cfg_label_20794:
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1138:11;1138:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	j @cfg_label_20805
@cfg_label_20795:
@cfg_label_20793:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f10,f11
	bft @cfg_label_20771
	j @cfg_label_20770
	j @cfg_label_20772
@cfg_label_20771:
	mov f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24
	j @cfg_label_20791
@cfg_label_20772:
@cfg_label_20770:
	fmovi f13,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f10,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	j @cfg_label_20790
@cfg_label_20791:
@cfg_label_20790:
	lw f11,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@1136:27;1136:38 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	flt f10,f11
	bft @emit_label_22822
	li r12,$0
	j @emit_label_22823
@emit_label_22822:
	li r12,$1
@emit_label_22823:
; ../cpuex2017/raytracer/min-rt.ml@1136:10;1136:39 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24 ../cpuex2017/raytracer/min-rt.ml@1136:27;1136:38
	li r13,$1
; ../cpuex2017/raytracer/min-rt.ml@1136:10;1136:39
	bne r12,r13,@cfg_label_20784
	j @cfg_label_20783
	j @cfg_label_20785
@cfg_label_20784:
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1138:11;1138:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	j @cfg_label_20804
@cfg_label_20785:
@cfg_label_20783:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f10,f12
	bft @cfg_label_20776
	j @cfg_label_20775
	j @cfg_label_20777
@cfg_label_20776:
	mov f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15
	j @cfg_label_20781
@cfg_label_20777:
@cfg_label_20775:
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	j @cfg_label_20780
@cfg_label_20781:
@cfg_label_20780:
	lw f11,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1137:18;1137:29 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	flt f10,f11
	bft @emit_label_22824
	li r11,$0
	j @emit_label_22825
@emit_label_22824:
	li r11,$1
@emit_label_22825:
; ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15 ../cpuex2017/raytracer/min-rt.ml@1137:18;1137:29
	j @cfg_label_20803
@cfg_label_20805:
@cfg_label_20804:
@cfg_label_20803:
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	bne r11,r12,@cfg_label_20799
	j @cfg_label_20798
	j @cfg_label_20800
	j @cfg_label_20801
@cfg_label_20800:
@cfg_label_20798:
	lw r5,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_20801:
@cfg_label_20799:
	lw r11,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	slti r6,r11,$0
	slti r7,r11,$1
	sub r5,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::= Onot ../cpuex2017/raytracer/min-rt.ml@182:29;182:30
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@a_8827is_plane_outside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$20
	mov r10,r10
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_20743:
	lw r11,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	lw f14,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	lw f10,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f14,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fadd f10,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	lw f11,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fadd f11,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	lw r11,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f11,f10
	bft @emit_label_22826
	li r10,$0
	j @emit_label_22827
@emit_label_22826:
	li r10,$1
@emit_label_22827:
; ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44 lib_tortesia.ml@7:24;7:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20745
	j @cfg_label_20744
	j @cfg_label_20746
	j @cfg_label_20747
@cfg_label_20746:
@cfg_label_20744:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35
	j @cfg_label_20748
@cfg_label_20747:
@cfg_label_20745:
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
@cfg_label_20748:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r5,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@a_8837is_outside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	push r9
	push f8
	push f7
	push f6
	push f4
	push r8
	mov r8,r10
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_20686:
	lw r10,r8,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	lw f13,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28
	lw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f6,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28
	lw r9,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1162:15;1162:16
	bne r9,r10,@cfg_label_20731
	j @cfg_label_20730
	j @cfg_label_20732
	j @cfg_label_20733
@cfg_label_20732:
@cfg_label_20730:
	push r4
	subi r1,r1,$16
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8822is_rect_outside
	mov r9,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ../cpuex2017/raytracer/min-rt.ml@1163:4;1163:19
	mov r5,r9
	pop r8
	pop f4
	pop f6
	pop f7
	pop f8
	pop r9
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_20733:
@cfg_label_20731:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@1164:20;1164:21
	bne r9,r10,@cfg_label_20726
	j @cfg_label_20725
	j @cfg_label_20727
@cfg_label_20726:
	push r4
	subi r1,r1,$16
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8740quadratic
	mov f8,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:19
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@1152:25;1152:26
	bne r9,r10,@cfg_label_20708
	j @cfg_label_20707
	j @cfg_label_20709
@cfg_label_20708:
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47
	j @cfg_label_20722
@cfg_label_20709:
@cfg_label_20707:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	fsub f10,f8,f11
; ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	j @cfg_label_20721
@cfg_label_20722:
@cfg_label_20721:
	lw r11,r8,$24
; ../cpuex2017/raytracer/min-rt.ml@1153:12;1153:24 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22828
	li r10,$0
	j @emit_label_22829
@emit_label_22828:
	li r10,$1
@emit_label_22829:
; ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47 lib_tortesia.ml@7:24;7:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20712
	j @cfg_label_20711
	j @cfg_label_20713
	j @cfg_label_20714
@cfg_label_20713:
@cfg_label_20711:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36
	j @cfg_label_20715
@cfg_label_20714:
@cfg_label_20712:
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
@cfg_label_20715:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r9,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
	mov r5,r9
	pop r8
	pop f4
	pop f6
	pop f7
	pop f8
	pop r9
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_20727:
@cfg_label_20725:
	lw r10,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	lw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	lw f11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34
	fmul f12,f11,f6
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34
	fmul f12,f10,f7
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	lw r11,r8,$24
; ../cpuex2017/raytracer/min-rt.ml@1146:12;1146:24 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22830
	li r10,$0
	j @emit_label_22831
@emit_label_22830:
	li r10,$1
@emit_label_22831:
; ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44 lib_tortesia.ml@7:24;7:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20688
	j @cfg_label_20687
	j @cfg_label_20689
	j @cfg_label_20690
@cfg_label_20689:
@cfg_label_20687:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35
	j @cfg_label_20691
@cfg_label_20690:
@cfg_label_20688:
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
@cfg_label_20691:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r9,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
	mov r5,r9
	pop r8
	pop f4
	pop f6
	pop f7
	pop f8
	pop r9
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@a_8842check_all_inside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	push r21
	push f21
	push f20
	push f9
	push f8
	push r20
	push r9
	push r8
	push f7
	push f6
	push f4
	mov r9,r10
	mov r8,r11
	mov f4,f10
	mov f6,f11
	mov f7,f12
@cfg_label_20685:
@cfg_label_20612:
	sll r6,r9,$2
	add r10,r8,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20680
	j @cfg_label_20679
	j @cfg_label_20681
	j @cfg_label_20682
@cfg_label_20681:
@cfg_label_20679:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop f8
	pop f9
	pop f20
	pop f21
	pop r21
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_20682:
@cfg_label_20680:
	lw r5,r31,$456
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25 ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	lw r10,r20,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f8,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28
	lw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f9,f6,f10
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f20,f7,f10
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28
	lw r21,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1161:16;1161:24 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1162:15;1162:16
	bne r21,r10,@cfg_label_20638
	j @cfg_label_20637
	j @cfg_label_20639
	j @cfg_label_20640
@cfg_label_20639:
@cfg_label_20637:
	push r4
	subi r1,r1,$16
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	mov f11,f9
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	mov f12,f20
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8822is_rect_outside
	mov r21,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1163:4;1163:19
	j @cfg_label_20666
@cfg_label_20640:
@cfg_label_20638:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@1164:20;1164:21
	bne r21,r10,@cfg_label_20633
	j @cfg_label_20632
	j @cfg_label_20634
	j @cfg_label_20635
@cfg_label_20634:
@cfg_label_20632:
	push r4
	subi r1,r1,$16
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	mov f11,f9
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	mov f12,f20
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8827is_plane_outside
	mov r21,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1165:4;1165:20
	j @cfg_label_20667
@cfg_label_20635:
@cfg_label_20633:
	push r4
	subi r1,r1,$16
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	mov f11,f9
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	mov f12,f20
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8740quadratic
	mov f21,f5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:19
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@1152:25;1152:26
	bne r21,r10,@cfg_label_20615
	j @cfg_label_20614
	j @cfg_label_20616
@cfg_label_20615:
	mov f10,f21
; ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47
	j @cfg_label_20629
@cfg_label_20616:
@cfg_label_20614:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	fsub f10,f21,f11
; ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	j @cfg_label_20628
@cfg_label_20629:
@cfg_label_20628:
	lw r11,r20,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22832
	li r10,$0
	j @emit_label_22833
@emit_label_22832:
	li r10,$1
@emit_label_22833:
; ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47 lib_tortesia.ml@7:24;7:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20619
	j @cfg_label_20618
	j @cfg_label_20620
	j @cfg_label_20621
@cfg_label_20620:
@cfg_label_20618:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36
	j @cfg_label_20622
@cfg_label_20621:
@cfg_label_20619:
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
@cfg_label_20622:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r21,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
@cfg_label_20667:
@cfg_label_20666:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r21,r10,@cfg_label_20662
	j @cfg_label_20661
	j @cfg_label_20663
	j @cfg_label_20664
@cfg_label_20663:
@cfg_label_20661:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop f8
	pop f9
	pop f20
	pop f21
	pop r21
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_20664:
@cfg_label_20662:
	addi r20,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	sll r6,r20,$2
	add r10,r8,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20655
	j @cfg_label_20654
	j @cfg_label_20656
	j @cfg_label_20657
@cfg_label_20656:
@cfg_label_20654:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop f8
	pop f9
	pop f20
	pop f21
	pop r21
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_20657:
@cfg_label_20655:
	lw r5,r31,$456
	sll r6,r10,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25 ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	push r4
	subi r1,r1,$16
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	jal @a_8837is_outside
	mov r21,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r21,r10,@cfg_label_20648
	j @cfg_label_20647
	j @cfg_label_20649
	j @cfg_label_20650
@cfg_label_20649:
@cfg_label_20647:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	pop f4
	pop f6
	pop f7
	pop r8
	pop r9
	pop r20
	pop f8
	pop f9
	pop f20
	pop f21
	pop r21
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_20650:
@cfg_label_20648:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	mov f7,f12
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	j @cfg_label_20612
	j @cfg_label_20685
@a_8848shadow_check_and_group:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$88
	push r22
	push r21
	push r20
	push f7
	push f6
	push f4
	push r9
	push r8
	mov r9,r10
	mov r8,r11
@cfg_label_20611:
@cfg_label_20610:
@cfg_label_20537:
	sll r6,r9,$2
	add r10,r8,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1192:5;1192:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1192:28;1192:30
	bne r10,r11,@cfg_label_20605
	j @cfg_label_20604
	j @cfg_label_20606
	j @cfg_label_20607
@cfg_label_20606:
@cfg_label_20604:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@cfg_label_20607:
@cfg_label_20605:
	sll r6,r9,$2
	add r20,r8,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	push r4
	subi r1,r1,$12
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34
	lw r11,r31,$76
; ../cpuex2017/raytracer/min-rt.ml@1196:29;1196:41 ::<= ../cpuex2017/raytracer/min-rt.ml@1196:29;1196:41
	lw r12,r31,$320
; ../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60 ::<= ../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	jal @a_8782solver_fast
	mov r21,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1196:13;1196:60 ../cpuex2017/raytracer/min-rt.ml@1196:13;1196:24
	lw r5,r31,$356
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1197:14;1197:25
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1198:17;1198:18
	bne r21,r10,@cfg_label_20540
	j @cfg_label_20539
	j @cfg_label_20541
	j @cfg_label_20542
@cfg_label_20541:
@cfg_label_20539:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51
	j @cfg_label_20598
@cfg_label_20542:
@cfg_label_20540:
	fmovi f10,$-0.20000000000000001110
; ../cpuex2017/raytracer/min-rt.ml@1198:36;1198:39
	flt f11,f10
	bft @emit_label_22834
	li r10,$0
	j @emit_label_22835
@emit_label_22834:
	li r10,$1
@emit_label_22835:
; ../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29 ../cpuex2017/raytracer/min-rt.ml@1198:36;1198:39
@cfg_label_20598:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51
	bne r10,r11,@cfg_label_20594
	j @cfg_label_20593
	j @cfg_label_20595
@cfg_label_20594:
	lw r5,r31,$456
	sll r6,r20,$2
	add r10,r5,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25 ../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34
	lw r11,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1214:9;1214:35
	bne r11,r10,@cfg_label_20587
	j @cfg_label_20586
	j @cfg_label_20588
@cfg_label_20587:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@cfg_label_20588:
@cfg_label_20586:
	addi r11,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1215:25;1215:37 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1215:25;1215:37 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	j @cfg_label_20537
	j @cfg_label_20610
@cfg_label_20595:
@cfg_label_20593:
	fmovi f12,$0.01000000000000000021
; ../cpuex2017/raytracer/min-rt.ml@1201:21;1201:25
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29 ../cpuex2017/raytracer/min-rt.ml@1201:21;1201:25
	lw r5,r31,$420
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:24 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:24 ../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25
	lw r5,r31,$320
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1202:33;1202:55 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	fadd f4,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:29 ../cpuex2017/raytracer/min-rt.ml@1202:33;1202:55
	lw r5,r31,$420
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:24 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:24 ../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25
	lw r5,r31,$320
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1203:33;1203:55 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	fadd f6,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:29 ../cpuex2017/raytracer/min-rt.ml@1203:33;1203:55
	lw r5,r31,$420
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:24 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:24 ../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25
	lw r5,r31,$320
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1204:33;1204:55 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	fadd f7,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:29 ../cpuex2017/raytracer/min-rt.ml@1204:33;1204:55
	li r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1205:26;1205:27
	lw r10,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20552
	j @cfg_label_20551
	j @cfg_label_20553
	j @cfg_label_20554
@cfg_label_20553:
@cfg_label_20551:
	lw r20,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	j @cfg_label_20563
@cfg_label_20554:
@cfg_label_20552:
	lw r5,r31,$456
	sll r6,r10,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25 ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	push r4
	subi r1,r1,$16
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55
	jal @a_8837is_outside
	mov r22,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r22,r10,@cfg_label_20545
	j @cfg_label_20544
	j @cfg_label_20546
	j @cfg_label_20547
@cfg_label_20546:
@cfg_label_20544:
	lw r20,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	j @cfg_label_20564
@cfg_label_20547:
@cfg_label_20545:
	addi r21,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1205:26;1205:27
	push r4
	subi r1,r1,$20
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::<= ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55
	jal @a_8842check_all_inside
	mov r20,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46 ../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
@cfg_label_20564:
@cfg_label_20563:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	bne r20,r10,@cfg_label_20559
	j @cfg_label_20558
	j @cfg_label_20560
	j @cfg_label_20561
@cfg_label_20560:
@cfg_label_20558:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	pop r22
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@cfg_label_20561:
@cfg_label_20559:
	addi r11,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1208:25;1208:37 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1208:25;1208:37 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	j @cfg_label_20537
	j @cfg_label_20611
@a_8851shadow_check_one_or_group:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$40
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r9,r10
	mov r8,r11
@cfg_label_20536:
@cfg_label_20503:
	sll r6,r9,$2
	add r10,r8,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20531
	j @cfg_label_20530
	j @cfg_label_20532
	j @cfg_label_20533
@cfg_label_20532:
@cfg_label_20530:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1224:4;1224:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_20533:
@cfg_label_20531:
	lw r5,r31,$388
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8848shadow_check_and_group
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r21,r10,@cfg_label_20523
	j @cfg_label_20522
	j @cfg_label_20524
	j @cfg_label_20525
@cfg_label_20524:
@cfg_label_20522:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1229:6;1229:10 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_20525:
@cfg_label_20523:
	addi r20,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	sll r6,r20,$2
	add r10,r8,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20516
	j @cfg_label_20515
	j @cfg_label_20517
	j @cfg_label_20518
@cfg_label_20517:
@cfg_label_20515:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1224:4;1224:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_20518:
@cfg_label_20516:
	lw r5,r31,$388
	sll r6,r10,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8848shadow_check_and_group
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r21,r10,@cfg_label_20508
	j @cfg_label_20507
	j @cfg_label_20509
	j @cfg_label_20510
@cfg_label_20509:
@cfg_label_20507:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1229:6;1229:10 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_20510:
@cfg_label_20508:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	j @cfg_label_20503
	j @cfg_label_20536
@a_8854shadow_check_one_or_matrix:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$76
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r9,r10
	mov r8,r11
@cfg_label_20502:
@cfg_label_20501:
@cfg_label_20410:
	sll r6,r9,$2
	add r20,r8,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	lw r21,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@1239:23;1239:25
	bne r21,r10,@cfg_label_20495
	j @cfg_label_20494
	j @cfg_label_20496
	j @cfg_label_20497
@cfg_label_20496:
@cfg_label_20494:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_20497:
@cfg_label_20495:
	li r10,$99
; ../cpuex2017/raytracer/min-rt.ml@1243:27;1243:29
	bne r21,r10,@cfg_label_20450
	j @cfg_label_20449
	j @cfg_label_20451
	j @cfg_label_20452
@cfg_label_20451:
@cfg_label_20449:
	lw r10,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5 ::<= ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20488
@cfg_label_20452:
@cfg_label_20450:
	push r4
	subi r1,r1,$12
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32
	lw r11,r31,$76
; ../cpuex2017/raytracer/min-rt.ml@1246:37;1246:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1246:37;1246:49
	lw r12,r31,$320
; ../cpuex2017/raytracer/min-rt.ml@1246:50;1246:68 ::<= ../cpuex2017/raytracer/min-rt.ml@1246:50;1246:68
	jal @a_8782solver_fast
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1246:9;1246:68 ../cpuex2017/raytracer/min-rt.ml@1246:9;1246:20
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1249:9;1249:10
	bne r22,r10,@cfg_label_20444
	j @cfg_label_20443
	j @cfg_label_20445
	j @cfg_label_20446
@cfg_label_20445:
@cfg_label_20443:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20489
@cfg_label_20446:
@cfg_label_20444:
	lw r5,r31,$356
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1250:19;1250:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1250:19;1250:30
	fmovi f11,$-0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@1250:37;1250:40
	flt f10,f11
	bft @emit_label_22836
	li r10,$0
	j @emit_label_22837
@emit_label_22836:
	li r10,$1
@emit_label_22837:
; ../cpuex2017/raytracer/min-rt.ml@1250:13;1250:41 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1250:19;1250:34 ../cpuex2017/raytracer/min-rt.ml@1250:37;1250:40
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1250:13;1250:41
	bne r10,r11,@cfg_label_20436
	j @cfg_label_20435
	j @cfg_label_20437
@cfg_label_20436:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20492
@cfg_label_20437:
@cfg_label_20435:
	li r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1251:41;1251:42
	lw r10,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20421
	j @cfg_label_20420
	j @cfg_label_20422
	j @cfg_label_20423
@cfg_label_20422:
@cfg_label_20420:
	lw r21,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	j @cfg_label_20429
@cfg_label_20423:
@cfg_label_20421:
	lw r5,r31,$388
	sll r6,r10,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	push r4
	subi r1,r1,$8
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8848shadow_check_and_group
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r23,r10,@cfg_label_20413
	j @cfg_label_20412
	j @cfg_label_20414
	j @cfg_label_20415
@cfg_label_20414:
@cfg_label_20412:
	lw r21,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5 ::<= ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	j @cfg_label_20430
@cfg_label_20415:
@cfg_label_20413:
	addi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1251:41;1251:42
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	jal @a_8851shadow_check_one_or_group
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47 ../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
@cfg_label_20430:
@cfg_label_20429:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	bne r21,r10,@cfg_label_20425
	j @cfg_label_20424
	j @cfg_label_20426
	j @cfg_label_20427
@cfg_label_20426:
@cfg_label_20424:
	lw r10,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5 ::<= ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20490
@cfg_label_20427:
@cfg_label_20425:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20491
@cfg_label_20492:
@cfg_label_20491:
@cfg_label_20490:
@cfg_label_20489:
@cfg_label_20488:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	bne r10,r11,@cfg_label_20484
	j @cfg_label_20483
	j @cfg_label_20485
@cfg_label_20484:
	addi r11,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1262:34;1262:41 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1262:34;1262:41 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	j @cfg_label_20410
	j @cfg_label_20501
@cfg_label_20485:
@cfg_label_20483:
	li r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1257:36;1257:37
	lw r10,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20463
	j @cfg_label_20462
	j @cfg_label_20464
	j @cfg_label_20465
@cfg_label_20464:
@cfg_label_20462:
	lw r21,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	j @cfg_label_20474
@cfg_label_20465:
@cfg_label_20463:
	lw r5,r31,$388
	sll r6,r10,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	push r4
	subi r1,r1,$8
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8848shadow_check_and_group
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r23,r10,@cfg_label_20455
	j @cfg_label_20454
	j @cfg_label_20456
	j @cfg_label_20457
@cfg_label_20456:
@cfg_label_20454:
	lw r21,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5 ::<= ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	j @cfg_label_20475
@cfg_label_20457:
@cfg_label_20455:
	addi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1257:36;1257:37
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	jal @a_8851shadow_check_one_or_group
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42 ../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
@cfg_label_20475:
@cfg_label_20474:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	bne r21,r10,@cfg_label_20470
	j @cfg_label_20469
	j @cfg_label_20471
	j @cfg_label_20472
@cfg_label_20471:
@cfg_label_20469:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_20472:
@cfg_label_20470:
	addi r11,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1260:29;1260:36 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1260:29;1260:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	j @cfg_label_20410
	j @cfg_label_20502
@a_8857solve_each_element:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$108
	push r25
	push r24
	push r23
	push f8
	push f7
	push f6
	push f4
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r9,r11
	mov r8,r12
@cfg_label_20409:
@cfg_label_20408:
@cfg_label_20319:
	sll r6,r20,$2
	add r21,r9,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@1274:12;1274:14
	bne r21,r10,@cfg_label_20403
	j @cfg_label_20402
	j @cfg_label_20404
	j @cfg_label_20405
@cfg_label_20404:
@cfg_label_20402:
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop f4
	pop f6
	pop f7
	pop f8
	pop r23
	pop r24
	pop r25
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_20405:
@cfg_label_20403:
	push r4
	subi r1,r1,$12
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	lw r12,r31,$212
; ../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38 ::<= ../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	jal @a_8759solver
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1276:13;1276:38 ../cpuex2017/raytracer/min-rt.ml@1276:13;1276:19
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1277:13;1277:14
	bne r22,r10,@cfg_label_20397
	j @cfg_label_20396
	j @cfg_label_20398
@cfg_label_20397:
	lw r5,r31,$356
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:28
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1283:17;1283:20
	flt f11,f10
	bft @emit_label_22838
	li r10,$0
	j @emit_label_22839
@emit_label_22838:
	li r10,$1
@emit_label_22839:
; ../cpuex2017/raytracer/min-rt.ml@1283:11;1283:24 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1283:17;1283:20 ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1283:11;1283:24
	bne r10,r11,@cfg_label_20381
	j @cfg_label_20380
	j @cfg_label_20382
@cfg_label_20381:
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_20391
@cfg_label_20382:
@cfg_label_20380:
	lw r5,r31,$332
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1284:16;1284:24 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1284:16;1284:20
	flt f10,f11
	bft @emit_label_22840
	li r10,$0
	j @emit_label_22841
@emit_label_22840:
	li r10,$1
@emit_label_22841:
; ../cpuex2017/raytracer/min-rt.ml@1284:6;1284:24 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32 ../cpuex2017/raytracer/min-rt.ml@1284:16;1284:24
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1284:6;1284:24
	bne r10,r11,@cfg_label_20374
	j @cfg_label_20373
	j @cfg_label_20375
@cfg_label_20374:
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_20390
@cfg_label_20375:
@cfg_label_20373:
	fmovi f11,$0.01000000000000000021
; ../cpuex2017/raytracer/min-rt.ml@1286:20;1286:24
	fadd f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32 ../cpuex2017/raytracer/min-rt.ml@1286:20;1286:24
	lw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:24 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:24 ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$212
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1287:33;1287:43 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	fadd f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:29 ../cpuex2017/raytracer/min-rt.ml@1287:33;1287:43
	lw f11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:24 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:24 ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$212
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1288:33;1288:43 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	fadd f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:29 ../cpuex2017/raytracer/min-rt.ml@1288:33;1288:43
	lw f11,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:24 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:24 ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$212
	lw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1289:33;1289:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	fadd f8,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:29 ../cpuex2017/raytracer/min-rt.ml@1289:33;1289:43
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1290:25;1290:26
	lw r10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20340
	j @cfg_label_20339
	j @cfg_label_20341
	j @cfg_label_20342
@cfg_label_20341:
@cfg_label_20339:
	lw r23,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	j @cfg_label_20353
@cfg_label_20342:
@cfg_label_20340:
	lw r5,r31,$456
	sll r6,r10,$2
	add r24,r5,r6
	lw r24,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:28 ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	push r4
	subi r1,r1,$16
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43
	mov f12,f8
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43
	jal @a_8837is_outside
	mov r25,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r25,r10,@cfg_label_20333
	j @cfg_label_20332
	j @cfg_label_20334
	j @cfg_label_20335
@cfg_label_20334:
@cfg_label_20332:
	lw r23,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	j @cfg_label_20354
@cfg_label_20335:
@cfg_label_20333:
	addi r24,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1290:25;1290:26
	push r4
	subi r1,r1,$20
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::<= ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43
	mov f12,f8
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43
	jal @a_8842check_all_inside
	mov r23,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45 ../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
@cfg_label_20354:
@cfg_label_20353:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	bne r23,r10,@cfg_label_20349
	j @cfg_label_20348
	j @cfg_label_20350
@cfg_label_20349:
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_20389
@cfg_label_20350:
@cfg_label_20348:
	lw r5,r31,$332
	sw f4,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1292:2;1292:15 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1284:16;1284:20 ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$320
	sw f6,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43
	lw r5,r31,$320
	sw f7,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43
	lw r5,r31,$320
	sw f8,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1293:2;1293:36 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43
	lw r5,r31,$308
	sw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1294:2;1294:35 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1294:2;1294:23 ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33
	lw r5,r31,$344
	sw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1295:2;1295:17 ../cpuex2017/raytracer/min-rt.ml@1276:13;1276:38
	j @cfg_label_20388
@cfg_label_20391:
@cfg_label_20390:
@cfg_label_20389:
@cfg_label_20388:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1301:27;1301:39 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1301:27;1301:39 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	j @cfg_label_20319
	j @cfg_label_20408
@cfg_label_20398:
@cfg_label_20396:
	lw r5,r31,$456
	sll r6,r21,$2
	add r10,r5,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:28 ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33
	lw r11,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1305:9;1305:36
	bne r11,r10,@cfg_label_20325
	j @cfg_label_20324
	j @cfg_label_20326
@cfg_label_20325:
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop f4
	pop f6
	pop f7
	pop f8
	pop r23
	pop r24
	pop r25
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_20326:
@cfg_label_20324:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1306:21;1306:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1306:21;1306:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	j @cfg_label_20319
	j @cfg_label_20409
@a_8861solve_one_or_network:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$36
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r9,r11
	mov r8,r12
@cfg_label_20318:
@cfg_label_20274:
	sll r6,r20,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20313
	j @cfg_label_20312
	j @cfg_label_20314
	j @cfg_label_20315
@cfg_label_20314:
@cfg_label_20312:
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20315:
@cfg_label_20313:
	lw r5,r31,$388
	sll r6,r10,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8857solve_each_element
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r22,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	sll r6,r22,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20303
	j @cfg_label_20302
	j @cfg_label_20304
	j @cfg_label_20305
@cfg_label_20304:
@cfg_label_20302:
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20305:
@cfg_label_20303:
	lw r5,r31,$388
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8857solve_each_element
	mov r21,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r21,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r21,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20293
	j @cfg_label_20292
	j @cfg_label_20294
	j @cfg_label_20295
@cfg_label_20294:
@cfg_label_20292:
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20295:
@cfg_label_20293:
	lw r5,r31,$388
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8857solve_each_element
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r20,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20283
	j @cfg_label_20282
	j @cfg_label_20284
	j @cfg_label_20285
@cfg_label_20284:
@cfg_label_20282:
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20285:
@cfg_label_20283:
	lw r5,r31,$388
	sll r6,r10,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8857solve_each_element
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	j @cfg_label_20274
	j @cfg_label_20318
@a_8865trace_or_matrix:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$72
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r9,r11
	mov r8,r12
@cfg_label_20273:
@cfg_label_20170:
	sll r6,r20,$2
	add r21,r9,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	lw r22,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@1326:23;1326:25
	bne r22,r10,@cfg_label_20267
	j @cfg_label_20266
	j @cfg_label_20268
	j @cfg_label_20269
@cfg_label_20268:
@cfg_label_20266:
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@cfg_label_20269:
@cfg_label_20267:
	li r10,$99
; ../cpuex2017/raytracer/min-rt.ml@1329:25;1329:27
	bne r22,r10,@cfg_label_20248
	j @cfg_label_20247
	j @cfg_label_20249
@cfg_label_20248:
	push r4
	subi r1,r1,$12
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	lw r12,r31,$212
; ../cpuex2017/raytracer/min-rt.ml@1334:45;1334:51 ::<= ../cpuex2017/raytracer/min-rt.ml@1334:45;1334:51
	jal @a_8759solver
	mov r23,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1334:15;1334:51 ../cpuex2017/raytracer/min-rt.ml@1334:15;1334:21
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1335:15;1335:16
	bne r23,r10,@cfg_label_20242
	j @cfg_label_20241
	j @cfg_label_20243
	j @cfg_label_20244
@cfg_label_20243:
@cfg_label_20241:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20259
@cfg_label_20244:
@cfg_label_20242:
	lw r5,r31,$356
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1336:11;1336:26 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1336:11;1336:22
	lw r5,r31,$332
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1337:14;1337:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1337:14;1337:18
	flt f10,f11
	bft @emit_label_22842
	li r10,$0
	j @emit_label_22843
@emit_label_22842:
	li r10,$1
@emit_label_22843:
; ../cpuex2017/raytracer/min-rt.ml@1337:5;1337:22 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1336:11;1336:26 ../cpuex2017/raytracer/min-rt.ml@1337:14;1337:22
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1337:5;1337:22
	bne r10,r11,@cfg_label_20234
	j @cfg_label_20233
	j @cfg_label_20235
@cfg_label_20234:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20264
@cfg_label_20235:
@cfg_label_20233:
	li r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1338:29;1338:30
	lw r10,r21,$4
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20227
	j @cfg_label_20226
	j @cfg_label_20228
	j @cfg_label_20229
@cfg_label_20228:
@cfg_label_20226:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20260
@cfg_label_20229:
@cfg_label_20227:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8857solve_each_element
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1338:29;1338:30
	sll r6,r23,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20217
	j @cfg_label_20216
	j @cfg_label_20218
	j @cfg_label_20219
@cfg_label_20218:
@cfg_label_20216:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20261
@cfg_label_20219:
@cfg_label_20217:
	lw r5,r31,$388
	sll r6,r10,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8857solve_each_element
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r22,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r22,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20207
	j @cfg_label_20206
	j @cfg_label_20208
	j @cfg_label_20209
@cfg_label_20208:
@cfg_label_20206:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20262
@cfg_label_20209:
@cfg_label_20207:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8857solve_each_element
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8861solve_one_or_network
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7 ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
	j @cfg_label_20263
@cfg_label_20249:
@cfg_label_20247:
	li r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1330:31;1330:32
	lw r10,r21,$4
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20196
	j @cfg_label_20195
	j @cfg_label_20197
	j @cfg_label_20198
@cfg_label_20197:
@cfg_label_20195:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20255
@cfg_label_20198:
@cfg_label_20196:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8857solve_each_element
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1330:31;1330:32
	sll r6,r23,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20186
	j @cfg_label_20185
	j @cfg_label_20187
	j @cfg_label_20188
@cfg_label_20187:
@cfg_label_20185:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20256
@cfg_label_20188:
@cfg_label_20186:
	lw r5,r31,$388
	sll r6,r10,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8857solve_each_element
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r22,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r22,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20176
	j @cfg_label_20175
	j @cfg_label_20177
	j @cfg_label_20178
@cfg_label_20177:
@cfg_label_20175:
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20257
@cfg_label_20178:
@cfg_label_20176:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8857solve_each_element
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8861solve_one_or_network
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7 ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
	j @cfg_label_20258
@cfg_label_20264:
@cfg_label_20263:
@cfg_label_20262:
@cfg_label_20261:
@cfg_label_20260:
@cfg_label_20259:
@cfg_label_20258:
@cfg_label_20257:
@cfg_label_20256:
@cfg_label_20255:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1342:21;1342:28 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1342:21;1342:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	j @cfg_label_20170
	j @cfg_label_20273
@a_8871solve_each_element_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	push r26
	push r25
	push r24
	push f8
	push f7
	push f6
	push f4
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r9,r11
	mov r8,r12
@cfg_label_20169:
@cfg_label_20168:
@cfg_label_20045:
	lw r23,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	sll r6,r20,$2
	add r21,r9,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	li r10,$-1
; ../cpuex2017/raytracer/min-rt.ml@1368:12;1368:14
	bne r21,r10,@cfg_label_20162
	j @cfg_label_20161
	j @cfg_label_20163
	j @cfg_label_20164
@cfg_label_20163:
@cfg_label_20161:
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop f4
	pop f6
	pop f7
	pop f8
	pop r24
	pop r25
	pop r26
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@cfg_label_20164:
@cfg_label_20162:
	lw r5,r31,$456
	sll r6,r21,$2
	add r26,r5,r6
	lw r26,r26,$0
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@981:10;981:17 ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r24,r26,$40
; ../cpuex2017/raytracer/min-rt.ml@982:15;982:29 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	lw f4,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw f6,r24,$4
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw f7,r24,$8
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw r10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@986:16;986:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	sll r6,r21,$2
	add r25,r10,r6
	lw r25,r25,$0
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@986:16;986:30 ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r10,r26,$4
; ../cpuex2017/raytracer/min-rt.ml@988:16;988:24 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@989:15;989:16
	bne r10,r11,@cfg_label_20063
	j @cfg_label_20062
	j @cfg_label_20064
	j @cfg_label_20065
@cfg_label_20064:
@cfg_label_20062:
	push r4
	subi r1,r1,$24
	mov r10,r26
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::<= ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	mov r12,r25
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::<= ../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::<= ../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::<= ../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::<= ../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8763solver_rect_fast
	mov r22,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37 ../cpuex2017/raytracer/min-rt.ml@990:4;990:20
	j @cfg_label_20148
@cfg_label_20065:
@cfg_label_20063:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@991:20;991:21
	bne r10,r11,@cfg_label_20058
	j @cfg_label_20057
	j @cfg_label_20059
@cfg_label_20058:
	push r4
	subi r1,r1,$24
	mov r10,r26
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::<= ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r25
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::<= ../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	mov r12,r24
; ../cpuex2017/raytracer/min-rt.ml@982:15;982:29 ::<= ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::<= ../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::<= ../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::<= ../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8793solver_second_fast2
	mov r22,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37 ../cpuex2017/raytracer/min-rt.ml@994:4;994:23
	j @cfg_label_20151
@cfg_label_20059:
@cfg_label_20057:
	lw f10,r25,$0
; ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22844
	li r10,$0
	j @emit_label_22845
@emit_label_22844:
	li r10,$1
@emit_label_22845:
; ../cpuex2017/raytracer/min-rt.ml@954:5;954:22 ::= Olt ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 lib_tortesia.ml@7:24;7:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@954:5;954:22
	bne r10,r11,@cfg_label_20050
	j @cfg_label_20049
	j @cfg_label_20051
@cfg_label_20050:
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37
	j @cfg_label_20150
@cfg_label_20051:
@cfg_label_20049:
	lw f11,r24,$12
; ../cpuex2017/raytracer/min-rt.ml@955:37;955:47 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fmul f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@955:23;955:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 ../cpuex2017/raytracer/min-rt.ml@955:37;955:47
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@955:4;955:47 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@955:4;955:15 ../cpuex2017/raytracer/min-rt.ml@955:23;955:47
	li r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37
	j @cfg_label_20149
@cfg_label_20151:
@cfg_label_20150:
@cfg_label_20149:
@cfg_label_20148:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1371:13;1371:14
	bne r22,r10,@cfg_label_20144
	j @cfg_label_20143
	j @cfg_label_20145
@cfg_label_20144:
	lw r5,r31,$356
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@955:4;955:15
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1377:17;1377:20
	flt f11,f10
	bft @emit_label_22846
	li r10,$0
	j @emit_label_22847
@emit_label_22846:
	li r10,$1
@emit_label_22847:
; ../cpuex2017/raytracer/min-rt.ml@1377:11;1377:24 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1377:17;1377:20 ../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1377:11;1377:24
	bne r10,r11,@cfg_label_20128
	j @cfg_label_20127
	j @cfg_label_20129
@cfg_label_20128:
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20138
@cfg_label_20129:
@cfg_label_20127:
	lw r5,r31,$332
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1378:16;1378:24 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1378:16;1378:20
	flt f10,f11
	bft @emit_label_22848
	li r10,$0
	j @emit_label_22849
@emit_label_22848:
	li r10,$1
@emit_label_22849:
; ../cpuex2017/raytracer/min-rt.ml@1378:6;1378:24 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32 ../cpuex2017/raytracer/min-rt.ml@1378:16;1378:24
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1378:6;1378:24
	bne r10,r11,@cfg_label_20121
	j @cfg_label_20120
	j @cfg_label_20122
@cfg_label_20121:
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20137
@cfg_label_20122:
@cfg_label_20120:
	fmovi f11,$0.01000000000000000021
; ../cpuex2017/raytracer/min-rt.ml@1380:20;1380:24
	fadd f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32 ../cpuex2017/raytracer/min-rt.ml@1380:20;1380:24
	lw f11,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:21 ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$200
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:45 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41
	fadd f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:26 ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:45
	lw f11,r23,$4
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:21 ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$200
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1382:30;1382:45 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41
	fadd f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:26 ../cpuex2017/raytracer/min-rt.ml@1382:30;1382:45
	lw f11,r23,$8
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	fmul f10,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:21 ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$200
	lw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1383:30;1383:45 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41
	fadd f8,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:26 ../cpuex2017/raytracer/min-rt.ml@1383:30;1383:45
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1384:25;1384:26
	lw r10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20086
	j @cfg_label_20085
	j @cfg_label_20087
	j @cfg_label_20088
@cfg_label_20087:
@cfg_label_20085:
	lw r23,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	j @cfg_label_20100
@cfg_label_20088:
@cfg_label_20086:
	lw r5,r31,$456
	sll r6,r10,$2
	add r24,r5,r6
	lw r24,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@981:10;981:17 ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	push r4
	subi r1,r1,$16
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45
	mov f12,f8
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45
	jal @a_8837is_outside
	mov r25,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r25,r10,@cfg_label_20079
	j @cfg_label_20078
	j @cfg_label_20080
	j @cfg_label_20081
@cfg_label_20080:
@cfg_label_20078:
	lw r23,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	j @cfg_label_20101
@cfg_label_20081:
@cfg_label_20079:
	addi r24,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1384:25;1384:26
	push r4
	subi r1,r1,$20
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::<= ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45
	mov f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45
	mov f12,f8
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45
	jal @a_8842check_all_inside
	mov r23,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45 ../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
@cfg_label_20101:
@cfg_label_20100:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	bne r23,r10,@cfg_label_20096
	j @cfg_label_20095
	j @cfg_label_20097
@cfg_label_20096:
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20136
@cfg_label_20097:
@cfg_label_20095:
	lw r5,r31,$332
	sw f4,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1386:2;1386:15 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1378:16;1378:20 ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$320
	sw f6,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45
	lw r5,r31,$320
	sw f7,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45
	lw r5,r31,$320
	sw f8,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1387:2;1387:36 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45
	lw r5,r31,$308
	sw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1388:2;1388:35 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1388:2;1388:23 ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r5,r31,$344
	sw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:27 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:17 ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20135
@cfg_label_20138:
@cfg_label_20137:
@cfg_label_20136:
@cfg_label_20135:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1395:32;1395:44 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1395:32;1395:44 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	j @cfg_label_20045
	j @cfg_label_20168
@cfg_label_20145:
@cfg_label_20143:
	lw r5,r31,$456
	sll r6,r21,$2
	add r10,r5,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@981:10;981:17 ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r11,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1399:10;1399:37
	bne r11,r10,@cfg_label_20071
	j @cfg_label_20070
	j @cfg_label_20072
@cfg_label_20071:
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop f4
	pop f6
	pop f7
	pop f8
	pop r24
	pop r25
	pop r26
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@cfg_label_20072:
@cfg_label_20070:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1400:27;1400:39 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1400:27;1400:39 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	j @cfg_label_20045
	j @cfg_label_20169
@a_8875solve_one_or_network_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$36
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r9,r11
	mov r8,r12
@cfg_label_20044:
@cfg_label_20000:
	sll r6,r20,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20039
	j @cfg_label_20038
	j @cfg_label_20040
	j @cfg_label_20041
@cfg_label_20040:
@cfg_label_20038:
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20041:
@cfg_label_20039:
	lw r5,r31,$388
	sll r6,r10,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8871solve_each_element_fast
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r22,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	sll r6,r22,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20029
	j @cfg_label_20028
	j @cfg_label_20030
	j @cfg_label_20031
@cfg_label_20030:
@cfg_label_20028:
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20031:
@cfg_label_20029:
	lw r5,r31,$388
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8871solve_each_element_fast
	mov r21,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r21,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r21,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20019
	j @cfg_label_20018
	j @cfg_label_20020
	j @cfg_label_20021
@cfg_label_20020:
@cfg_label_20018:
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20021:
@cfg_label_20019:
	lw r5,r31,$388
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8871solve_each_element_fast
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r20,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20009
	j @cfg_label_20008
	j @cfg_label_20010
	j @cfg_label_20011
@cfg_label_20010:
@cfg_label_20008:
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_20011:
@cfg_label_20009:
	lw r5,r31,$388
	sll r6,r10,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8871solve_each_element_fast
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	j @cfg_label_20000
	j @cfg_label_20044
@a_8879trace_or_matrix_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$92
	push r25
	push r24
	push f7
	push f6
	push f4
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r9,r11
	mov r8,r12
@cfg_label_19999:
@cfg_label_19863:
	sll r6,r20,$2
	add r21,r9,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	lw r10,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1419:23;1419:25
	bne r10,r11,@cfg_label_19993
	j @cfg_label_19992
	j @cfg_label_19994
	j @cfg_label_19995
@cfg_label_19994:
@cfg_label_19992:
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop f4
	pop f6
	pop f7
	pop r24
	pop r25
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@cfg_label_19995:
@cfg_label_19993:
	li r11,$99
; ../cpuex2017/raytracer/min-rt.ml@1422:25;1422:27
	bne r10,r11,@cfg_label_19974
	j @cfg_label_19973
	j @cfg_label_19975
@cfg_label_19974:
	lw r5,r31,$456
	sll r6,r10,$2
	add r24,r5,r6
	lw r24,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@981:10;981:17 ../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32
	lw r22,r24,$40
; ../cpuex2017/raytracer/min-rt.ml@982:15;982:29 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	lw f4,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw f6,r22,$4
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw f7,r22,$8
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw r11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@986:16;986:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	sll r6,r10,$2
	add r23,r11,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@986:16;986:30 ../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32
	lw r10,r24,$4
; ../cpuex2017/raytracer/min-rt.ml@988:16;988:24 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@989:15;989:16
	bne r10,r11,@cfg_label_19913
	j @cfg_label_19912
	j @cfg_label_19914
@cfg_label_19913:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@991:20;991:21
	bne r10,r11,@cfg_label_19908
	j @cfg_label_19907
	j @cfg_label_19909
@cfg_label_19908:
	push r4
	subi r1,r1,$24
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::<= ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::<= ../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	mov r12,r22
; ../cpuex2017/raytracer/min-rt.ml@982:15;982:29 ::<= ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::<= ../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::<= ../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::<= ../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8793solver_second_fast2
	mov r25,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50 ../cpuex2017/raytracer/min-rt.ml@994:4;994:23
	j @cfg_label_19963
@cfg_label_19909:
@cfg_label_19907:
	lw f10,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22850
	li r10,$0
	j @emit_label_22851
@emit_label_22850:
	li r10,$1
@emit_label_22851:
; ../cpuex2017/raytracer/min-rt.ml@954:5;954:22 ::= Olt ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 lib_tortesia.ml@7:24;7:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@954:5;954:22
	bne r10,r11,@cfg_label_19900
	j @cfg_label_19899
	j @cfg_label_19901
@cfg_label_19900:
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50
	j @cfg_label_19962
@cfg_label_19901:
@cfg_label_19899:
	lw f11,r22,$12
; ../cpuex2017/raytracer/min-rt.ml@955:37;955:47 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fmul f12,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@955:23;955:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 ../cpuex2017/raytracer/min-rt.ml@955:37;955:47
	lw r5,r31,$356
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@955:4;955:47 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@955:4;955:15 ../cpuex2017/raytracer/min-rt.ml@955:23;955:47
	li r25,$1
; ../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50
	j @cfg_label_19961
@cfg_label_19914:
@cfg_label_19912:
	lw r22,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@990:24;990:36 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	push r4
	subi r1,r1,$24
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::<= ../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@990:24;990:36 ::<= ../cpuex2017/raytracer/min-rt.ml@990:24;990:36
	mov r12,r23
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::<= ../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::<= ../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::<= ../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::<= ../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8763solver_rect_fast
	mov r25,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50 ../cpuex2017/raytracer/min-rt.ml@990:4;990:20
	j @cfg_label_19960
@cfg_label_19963:
@cfg_label_19962:
@cfg_label_19961:
@cfg_label_19960:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1428:15;1428:16
	bne r25,r10,@cfg_label_19956
	j @cfg_label_19955
	j @cfg_label_19957
	j @cfg_label_19958
@cfg_label_19957:
@cfg_label_19955:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19985
@cfg_label_19958:
@cfg_label_19956:
	lw r5,r31,$356
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1429:11;1429:26 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@955:4;955:15
	lw r5,r31,$332
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1430:14;1430:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1430:14;1430:18
	flt f10,f11
	bft @emit_label_22852
	li r10,$0
	j @emit_label_22853
@emit_label_22852:
	li r10,$1
@emit_label_22853:
; ../cpuex2017/raytracer/min-rt.ml@1430:5;1430:22 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1429:11;1429:26 ../cpuex2017/raytracer/min-rt.ml@1430:14;1430:22
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1430:5;1430:22
	bne r10,r11,@cfg_label_19948
	j @cfg_label_19947
	j @cfg_label_19949
@cfg_label_19948:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19990
@cfg_label_19949:
@cfg_label_19947:
	li r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1431:34;1431:35
	lw r10,r21,$4
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19941
	j @cfg_label_19940
	j @cfg_label_19942
	j @cfg_label_19943
@cfg_label_19942:
@cfg_label_19940:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19986
@cfg_label_19943:
@cfg_label_19941:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8871solve_each_element_fast
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1431:34;1431:35
	sll r6,r23,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19931
	j @cfg_label_19930
	j @cfg_label_19932
	j @cfg_label_19933
@cfg_label_19932:
@cfg_label_19930:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19987
@cfg_label_19933:
@cfg_label_19931:
	lw r5,r31,$388
	sll r6,r10,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8871solve_each_element_fast
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r22,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r22,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19921
	j @cfg_label_19920
	j @cfg_label_19922
	j @cfg_label_19923
@cfg_label_19922:
@cfg_label_19920:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19988
@cfg_label_19923:
@cfg_label_19921:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8871solve_each_element_fast
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::<= ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8875solve_one_or_network_fast
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7 ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
	j @cfg_label_19989
@cfg_label_19975:
@cfg_label_19973:
	li r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1423:35;1423:36
	lw r10,r21,$4
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19889
	j @cfg_label_19888
	j @cfg_label_19890
	j @cfg_label_19891
@cfg_label_19890:
@cfg_label_19888:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19981
@cfg_label_19891:
@cfg_label_19889:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8871solve_each_element_fast
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1423:35;1423:36
	sll r6,r23,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19879
	j @cfg_label_19878
	j @cfg_label_19880
	j @cfg_label_19881
@cfg_label_19880:
@cfg_label_19878:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19982
@cfg_label_19881:
@cfg_label_19879:
	lw r5,r31,$388
	sll r6,r10,$2
	add r22,r5,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8871solve_each_element_fast
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r22,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r22,$2
	add r10,r21,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19869
	j @cfg_label_19868
	j @cfg_label_19870
	j @cfg_label_19871
@cfg_label_19870:
@cfg_label_19868:
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_19983
@cfg_label_19871:
@cfg_label_19869:
	lw r5,r31,$388
	sll r6,r10,$2
	add r23,r5,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	push r4
	subi r1,r1,$12
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8871solve_each_element_fast
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::<= ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8875solve_one_or_network_fast
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7 ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
	j @cfg_label_19984
@cfg_label_19990:
@cfg_label_19989:
@cfg_label_19988:
@cfg_label_19987:
@cfg_label_19986:
@cfg_label_19985:
@cfg_label_19984:
@cfg_label_19983:
@cfg_label_19982:
@cfg_label_19981:
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1435:26;1435:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1435:26;1435:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	j @cfg_label_19863
	j @cfg_label_19999
@a_8889get_nvector_second:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$72
	push r9
	push r8
	push f4
	mov r10,r10
@cfg_label_19810:
	lw r5,r31,$320
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:33 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29
	lw r11,r10,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	lw f12,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1478:37;1478:48 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:33 ../cpuex2017/raytracer/min-rt.ml@1478:37;1478:48
	lw r5,r31,$320
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:33 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29
	lw f13,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@1479:37;1479:48 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f11,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:33 ../cpuex2017/raytracer/min-rt.ml@1479:37;1479:48
	lw r5,r31,$320
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:33 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29
	lw f13,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1480:37;1480:48 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f14,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:33 ../cpuex2017/raytracer/min-rt.ml@1480:37;1480:48
	lw r11,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	lw f12,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1482:17;1482:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f16,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48 ../cpuex2017/raytracer/min-rt.ml@1482:17;1482:28
	lw f12,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@1483:17;1483:28 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48 ../cpuex2017/raytracer/min-rt.ml@1483:17;1483:28
	lw f15,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1484:17;1484:28 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f12,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48 ../cpuex2017/raytracer/min-rt.ml@1484:17;1484:28
	lw r11,r10,$12
; ../cpuex2017/raytracer/min-rt.ml@191:29;191:30 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	li r12,$0
; ../cpuex2017/raytracer/min-rt.ml@1486:17;1486:18
	bne r11,r12,@cfg_label_19838
	j @cfg_label_19837
	j @cfg_label_19839
@cfg_label_19838:
	lw r11,r10,$36
; ../cpuex2017/raytracer/min-rt.ml@340:28;340:29 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	lw f17,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f19,f11,f17
; ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48 ../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50
	lw f15,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f4,f14,f15
; ../cpuex2017/raytracer/min-rt.ml@1491:54;1491:72 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48 ../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72
	fadd f18,f19,f4
; ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:72 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:50 ../cpuex2017/raytracer/min-rt.ml@1491:54;1491:72
	fmovi f4,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f19,f18,f4
; ../cpuex2017/raytracer/min-rt.ml@1491:25;1491:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:72 lib_tortesia.ml@19:23;19:26
	fadd f18,f16,f19
; ../cpuex2017/raytracer/min-rt.ml@1491:19;1491:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28 ../cpuex2017/raytracer/min-rt.ml@1491:25;1491:73
	lw r5,r31,$296
	sw f18,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1491:4;1491:73 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1491:19;1491:73
	fmul f18,f10,f17
; ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48 ../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50
	lw f16,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f17,f14,f16
; ../cpuex2017/raytracer/min-rt.ml@1492:54;1492:72 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48 ../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72
	fadd f14,f18,f17
; ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:72 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:50 ../cpuex2017/raytracer/min-rt.ml@1492:54;1492:72
	fmovi f18,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f17,f14,f18
; ../cpuex2017/raytracer/min-rt.ml@1492:25;1492:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:72 lib_tortesia.ml@19:23;19:26
	fadd f14,f13,f17
; ../cpuex2017/raytracer/min-rt.ml@1492:19;1492:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28 ../cpuex2017/raytracer/min-rt.ml@1492:25;1492:73
	lw r5,r31,$296
	sw f14,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1492:4;1492:73 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1492:19;1492:73
	fmul f13,f10,f15
; ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48 ../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72
	fmul f10,f11,f16
; ../cpuex2017/raytracer/min-rt.ml@1493:54;1493:72 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48 ../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72
	fadd f11,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:72 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:50 ../cpuex2017/raytracer/min-rt.ml@1493:54;1493:72
	fmovi f13,$2.00000000000000000000
; lib_tortesia.ml@19:23;19:26
	fdiv f10,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@1493:25;1493:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:72 lib_tortesia.ml@19:23;19:26
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1493:19;1493:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28 ../cpuex2017/raytracer/min-rt.ml@1493:25;1493:73
	lw r5,r31,$296
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1486:2;1494:4 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1493:19;1493:73
	j @cfg_label_19843
@cfg_label_19839:
@cfg_label_19837:
	lw r5,r31,$296
	sw f16,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28
	lw r5,r31,$296
	sw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1488:4;1488:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28
	lw r5,r31,$296
	sw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1486:2;1494:4 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28
	j @cfg_label_19842
@cfg_label_19843:
@cfg_label_19842:
	lw r8,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	push r4
	subi r1,r1,$8
	lw r10,r31,$296
; ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@182:29;182:30 ::<= ../cpuex2017/raytracer/min-rt.ml@182:29;182:30
	jal @a_8597vecunit_sgn
	mov r9,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36 ../cpuex2017/raytracer/min-rt.ml@1495:2;1495:13
	mov r5,r9
	pop f4
	pop r8
	pop r9
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@a_8894utexture:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$92
	push f9
	push f8
	push r21
	push f7
	push f6
	push f4
	push r20
	push r9
	push r8
	mov r10,r10
	mov r8,r11
@cfg_label_19547:
	lw r11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1516:14;1516:29 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r12,r10,$32
; ../cpuex2017/raytracer/min-rt.ml@290:29;290:30 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f10,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@1518:23;1518:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@290:29;290:30
	lw r5,r31,$284
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:36 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1518:23;1518:36
	lw f10,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@1519:23;1519:38 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@290:29;290:30
	lw r5,r31,$284
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1519:2;1519:38 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1519:23;1519:38
	lw f10,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@1520:23;1520:37 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@290:29;290:30
	lw r5,r31,$284
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1520:2;1520:37 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1520:23;1520:37
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@1521:13;1521:14
	bne r11,r12,@cfg_label_19798
	j @cfg_label_19797
	j @cfg_label_19799
@cfg_label_19798:
	li r12,$2
; ../cpuex2017/raytracer/min-rt.ml@1539:18;1539:19
	bne r11,r12,@cfg_label_19793
	j @cfg_label_19792
	j @cfg_label_19794
@cfg_label_19793:
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@1546:18;1546:19
	bne r11,r12,@cfg_label_19788
	j @cfg_label_19787
	j @cfg_label_19789
@cfg_label_19788:
	li r12,$4
; ../cpuex2017/raytracer/min-rt.ml@1557:18;1557:19
	bne r11,r12,@cfg_label_19783
	j @cfg_label_19782
	j @cfg_label_19784
@cfg_label_19783:
; ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	pop r8
	pop r9
	pop r20
	pop f4
	pop f6
	pop f7
	pop r21
	pop f8
	pop f9
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@cfg_label_19784:
@cfg_label_19782:
	lw f10,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:19 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r9,r10,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f11,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@1559:23;1559:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:19 ../cpuex2017/raytracer/min-rt.ml@1559:23;1559:34
	lw r20,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f6,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57 ::<= ../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57
	jal sqrt
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1559:40;1559:58 ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmul f6,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:34 ../cpuex2017/raytracer/min-rt.ml@1559:40;1559:58
	lw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:19 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f11,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@1560:23;1560:34 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:19 ../cpuex2017/raytracer/min-rt.ml@1560:23;1560:34
	lw f8,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	push r4
	subi r1,r1,$4
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57 ::<= ../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57
	jal sqrt
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1560:40;1560:58 ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmul f10,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:34 ../cpuex2017/raytracer/min-rt.ml@1560:40;1560:58
	fmul f11,f6,f6
; ../cpuex2017/raytracer/min-rt.ml@1561:14;1561:21 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59 ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59
	fmul f12,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@1561:27;1561:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59 ../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59
	fadd f4,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1561:14;1561:21 ../cpuex2017/raytracer/min-rt.ml@1561:27;1561:34
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f11,f6
	bft @cfg_label_19657
	j @cfg_label_19656
	j @cfg_label_19658
@cfg_label_19657:
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59 ::<= ../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23
	j @cfg_label_19763
@cfg_label_19658:
@cfg_label_19656:
	fmovi f12,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f11,f12,f6
; ../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59
	j @cfg_label_19762
@cfg_label_19763:
@cfg_label_19762:
	fmovi f12,$0.00010000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1563:25;1563:31
	flt f11,f12
	bft @emit_label_22854
	li r10,$0
	j @emit_label_22855
@emit_label_22854:
	li r10,$1
@emit_label_22855:
; ../cpuex2017/raytracer/min-rt.ml@1563:9;1563:31 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23 ../cpuex2017/raytracer/min-rt.ml@1563:25;1563:31
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1563:9;1563:31
	bne r10,r11,@cfg_label_19674
	j @cfg_label_19673
	j @cfg_label_19675
	j @cfg_label_19676
@cfg_label_19675:
@cfg_label_19673:
	fmovi f7,$15.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33
	j @cfg_label_19757
@cfg_label_19676:
@cfg_label_19674:
	fdiv f11,f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59 ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f10,f11
	bft @cfg_label_19662
	j @cfg_label_19661
	j @cfg_label_19663
@cfg_label_19662:
	mov f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25
	j @cfg_label_19670
@cfg_label_19663:
@cfg_label_19661:
	fmovi f10,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24
	j @cfg_label_19669
@cfg_label_19670:
@cfg_label_19669:
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25 ::<= ../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25
	jal @a_8530atan
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:10 ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:7
	fmovi f11,$30.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1568:15;1568:19
	fmul f10,f7,f11
; ../cpuex2017/raytracer/min-rt.ml@1568:2;1568:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:10 ../cpuex2017/raytracer/min-rt.ml@1568:15;1568:19
	fmovi f11,$3.14159269999999990475
; ../cpuex2017/raytracer/min-rt.ml@1568:24;1568:33
	fdiv f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1568:2;1568:19 ../cpuex2017/raytracer/min-rt.ml@1568:24;1568:33
@cfg_label_19757:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f7,f10
	bft @cfg_label_19679
	j @cfg_label_19678
	j @cfg_label_19680
	j @cfg_label_19681
@cfg_label_19680:
@cfg_label_19678:
	mov f6,f7
; ../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_19754
@cfg_label_19681:
@cfg_label_19679:
	fmovi f10,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f6,f7,f10
; lib_tortesia.ml@11:46;11:79 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33 lib_tortesia.ml@11:68;11:71
@cfg_label_19754:
	push r4
	subi r1,r1,$4
	mov f10,f6
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r21,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r21
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1570:20;1570:28 lib_tortesia.ml@11:18;11:30
	fsub f6,f7,f8
; ../cpuex2017/raytracer/min-rt.ml@1570:13;1570:29 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33 ../cpuex2017/raytracer/min-rt.ml@1570:20;1570:28
	lw f10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:19 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f11,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@1572:23;1572:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:19 ../cpuex2017/raytracer/min-rt.ml@1572:23;1572:34
	lw f8,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	push r4
	subi r1,r1,$4
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57 ::<= ../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57
	jal sqrt
	mov f9,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1572:40;1572:58 ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmul f10,f7,f9
; ../cpuex2017/raytracer/min-rt.ml@1572:13;1572:59 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:34 ../cpuex2017/raytracer/min-rt.ml@1572:40;1572:58
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f11,f4
	bft @cfg_label_19684
	j @cfg_label_19683
	j @cfg_label_19685
@cfg_label_19684:
	mov f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23
	j @cfg_label_19743
@cfg_label_19685:
@cfg_label_19683:
	fmovi f12,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f11,f12,f4
; ../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35
	j @cfg_label_19742
@cfg_label_19743:
@cfg_label_19742:
	fmovi f12,$0.00010000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1574:25;1574:31
	flt f11,f12
	bft @emit_label_22856
	li r10,$0
	j @emit_label_22857
@emit_label_22856:
	li r10,$1
@emit_label_22857:
; ../cpuex2017/raytracer/min-rt.ml@1574:9;1574:31 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23 ../cpuex2017/raytracer/min-rt.ml@1574:25;1574:31
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1574:9;1574:31
	bne r10,r11,@cfg_label_19701
	j @cfg_label_19700
	j @cfg_label_19702
	j @cfg_label_19703
@cfg_label_19702:
@cfg_label_19700:
	fmovi f4,$15.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36
	j @cfg_label_19737
@cfg_label_19703:
@cfg_label_19701:
	fdiv f11,f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1572:13;1572:59 ../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@13:24;13:27
	flt f10,f11
	bft @cfg_label_19689
	j @cfg_label_19688
	j @cfg_label_19690
@cfg_label_19689:
	mov f4,f11
; ../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25
	j @cfg_label_19697
@cfg_label_19690:
@cfg_label_19688:
	fmovi f10,$-1.00000000000000000000
; lib_tortesia.ml@13:42;13:45
	fmul f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25 ::= Ofmul lib_tortesia.ml@13:42;13:45 ../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24
	j @cfg_label_19696
@cfg_label_19697:
@cfg_label_19696:
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25 ::<= ../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25
	jal @a_8530atan
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1578:6;1578:13 ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:7
	fmovi f11,$30.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1578:18;1578:22
	fmul f10,f7,f11
; ../cpuex2017/raytracer/min-rt.ml@1578:5;1578:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1578:6;1578:13 ../cpuex2017/raytracer/min-rt.ml@1578:18;1578:22
	fmovi f11,$3.14159269999999990475
; ../cpuex2017/raytracer/min-rt.ml@1578:27;1578:36
	fdiv f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1578:5;1578:22 ../cpuex2017/raytracer/min-rt.ml@1578:27;1578:36
@cfg_label_19737:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f4,f10
	bft @cfg_label_19706
	j @cfg_label_19705
	j @cfg_label_19707
	j @cfg_label_19708
@cfg_label_19707:
@cfg_label_19705:
	mov f7,f4
; ../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_19734
@cfg_label_19708:
@cfg_label_19706:
	fmovi f10,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f7,f4,f10
; lib_tortesia.ml@11:46;11:79 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36 lib_tortesia.ml@11:68;11:71
@cfg_label_19734:
	push r4
	subi r1,r1,$4
	mov f10,f7
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f7,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1580:21;1580:29 lib_tortesia.ml@11:18;11:30
	fsub f10,f4,f7
; ../cpuex2017/raytracer/min-rt.ml@1580:14;1580:30 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36 ../cpuex2017/raytracer/min-rt.ml@1580:21;1580:29
	fmovi f12,$0.14999999999999999445
; ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:18
	fmovi f13,$0.50000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:32
	fsub f11,f13,f6
; ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:32 ../cpuex2017/raytracer/min-rt.ml@1570:13;1570:29
	fmul f13,f11,f11
; ../cpuex2017/raytracer/min-rt.ml@1581:23;1581:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38 ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38
	fsub f11,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:18 ../cpuex2017/raytracer/min-rt.ml@1581:23;1581:39
	fmovi f13,$0.50000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:54
	fsub f12,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:54 ../cpuex2017/raytracer/min-rt.ml@1580:14;1580:30
	fmul f13,f12,f12
; ../cpuex2017/raytracer/min-rt.ml@1581:45;1581:62 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61 ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61
	fsub f10,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:40 ../cpuex2017/raytracer/min-rt.ml@1581:45;1581:62
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22858
	li r10,$0
	j @emit_label_22859
@emit_label_22858:
	li r10,$1
@emit_label_22859:
; ../cpuex2017/raytracer/min-rt.ml@1582:17;1582:27 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63 lib_tortesia.ml@7:24;7:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1582:17;1582:27
	bne r10,r11,@cfg_label_19710
	j @cfg_label_19709
	j @cfg_label_19711
	j @cfg_label_19712
@cfg_label_19711:
@cfg_label_19709:
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45
	j @cfg_label_19717
@cfg_label_19712:
@cfg_label_19710:
	mov f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45
@cfg_label_19717:
	fmovi f12,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:31
	fmul f10,f12,f11
; ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:31 ../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45
	fmovi f12,$0.29999999999999998890
; ../cpuex2017/raytracer/min-rt.ml@1583:43;1583:46
	fdiv f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1583:25;1583:46 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:38 ../cpuex2017/raytracer/min-rt.ml@1583:43;1583:46
	lw r5,r31,$284
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1583:25;1583:46
	pop r8
	pop r9
	pop r20
	pop f4
	pop f6
	pop f7
	pop r21
	pop f8
	pop f9
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@cfg_label_19789:
@cfg_label_19787:
	lw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:20 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r11,r10,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f12,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1549:24;1549:35 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:20 ../cpuex2017/raytracer/min-rt.ml@1549:24;1549:35
	lw f11,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:20 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f13,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1550:24;1550:35 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f12,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:20 ../cpuex2017/raytracer/min-rt.ml@1550:24;1550:35
	fmul f11,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35 ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35
	fmul f10,f12,f12
; ../cpuex2017/raytracer/min-rt.ml@1551:32;1551:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35 ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35
	fadd f4,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:28 ../cpuex2017/raytracer/min-rt.ml@1551:32;1551:39
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39 ::<= ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39
	jal sqrt
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:40 ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmovi f10,$10.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1551:44;1551:48
	fdiv f4,f6,f10
; ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:40 ../cpuex2017/raytracer/min-rt.ml@1551:44;1551:48
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f4,f10
	bft @cfg_label_19622
	j @cfg_label_19621
	j @cfg_label_19623
	j @cfg_label_19624
@cfg_label_19623:
@cfg_label_19621:
	mov f6,f4
; ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_19639
@cfg_label_19624:
@cfg_label_19622:
	fmovi f10,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f6,f4,f10
; lib_tortesia.ml@11:46;11:79 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48 lib_tortesia.ml@11:68;11:71
@cfg_label_19639:
	push r4
	subi r1,r1,$4
	mov f10,f6
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1552:23;1552:31 lib_tortesia.ml@11:18;11:30
	fsub f10,f4,f6
; ../cpuex2017/raytracer/min-rt.ml@1552:17;1552:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48 ../cpuex2017/raytracer/min-rt.ml@1552:23;1552:31
	fmovi f11,$3.14159269999999990475
; ../cpuex2017/raytracer/min-rt.ml@1552:36;1552:45
	fmul f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1552:17;1552:31 ../cpuex2017/raytracer/min-rt.ml@1552:36;1552:45
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45
	jal @a_8528cos
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28 ../cpuex2017/raytracer/min-rt.ml@1553:22;1553:25
	fmul f10,f6,f6
; ../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28 ../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28
	fmovi f12,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1554:34;1554:39
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1554:27;1554:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29 ../cpuex2017/raytracer/min-rt.ml@1554:34;1554:39
	lw r5,r31,$284
	sw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1554:6;1554:39 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1554:27;1554:39
	fmovi f12,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:31
	fsub f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:38 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:31 ../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29
	fmovi f12,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1555:43;1555:48
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1555:27;1555:48 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:38 ../cpuex2017/raytracer/min-rt.ml@1555:43;1555:48
	lw r5,r31,$284
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1555:27;1555:48
	pop r8
	pop r9
	pop r20
	pop f4
	pop f6
	pop f7
	pop r21
	pop f8
	pop f9
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@cfg_label_19794:
@cfg_label_19792:
	lw f10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fmovi f11,$0.25000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1542:35;1542:39
	fmul f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:31 ../cpuex2017/raytracer/min-rt.ml@1542:35;1542:39
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39 ::<= ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39
	jal @a_8526sin
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40 ../cpuex2017/raytracer/min-rt.ml@1542:21;1542:24
	fmul f10,f6,f6
; ../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40 ../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40
	fmovi f12,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:32
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:32 ../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41
	lw r5,r31,$284
	sw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1543:6;1543:38 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:38
	fmovi f11,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:32
	fmovi f13,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:40
	fsub f12,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:46 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:40 ../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:32 ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:46
	lw r5,r31,$284
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:47
	pop r8
	pop r9
	pop r20
	pop f4
	pop f6
	pop f7
	pop r21
	pop f8
	pop f9
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@cfg_label_19799:
@cfg_label_19797:
	lw f10,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:19 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r20,r10,$20
; ../cpuex2017/raytracer/min-rt.ml@240:29;240:30 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f11,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1524:23;1524:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:19 ../cpuex2017/raytracer/min-rt.ml@1524:23;1524:34
	fmovi f11,$0.05000000000000000278
; ../cpuex2017/raytracer/min-rt.ml@1526:30;1526:34
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@1526:24;1526:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34 ../cpuex2017/raytracer/min-rt.ml@1526:30;1526:34
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f10,f11
	bft @cfg_label_19550
	j @cfg_label_19549
	j @cfg_label_19551
	j @cfg_label_19552
@cfg_label_19551:
@cfg_label_19549:
	mov f6,f10
; ../cpuex2017/raytracer/min-rt.ml@1526:24;1526:34 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_19599
@cfg_label_19552:
@cfg_label_19550:
	fmovi f11,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f6,f10,f11
; lib_tortesia.ml@11:46;11:79 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1526:24;1526:34 lib_tortesia.ml@11:68;11:71
@cfg_label_19599:
	push r4
	subi r1,r1,$4
	mov f10,f6
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r9,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r9
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1526:17;1526:35 lib_tortesia.ml@11:18;11:30
	fmovi f11,$20.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1526:40;1526:44
	fmul f10,f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1526:16;1526:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1526:17;1526:35 ../cpuex2017/raytracer/min-rt.ml@1526:40;1526:44
	fsub f11,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1527:13;1527:21 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34 ../cpuex2017/raytracer/min-rt.ml@1526:16;1526:44
	fmovi f10,$10.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1527:23;1527:27
	flt f11,f10
	bft @emit_label_22860
	li r9,$0
	j @emit_label_22861
@emit_label_22860:
	li r9,$1
@emit_label_22861:
; ../cpuex2017/raytracer/min-rt.ml@1526:7;1527:27 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1527:13;1527:21 ../cpuex2017/raytracer/min-rt.ml@1527:23;1527:27
	lw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:19 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw f11,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@1529:23;1529:34 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:19 ../cpuex2017/raytracer/min-rt.ml@1529:23;1529:34
	fmovi f11,$0.05000000000000000278
; ../cpuex2017/raytracer/min-rt.ml@1531:30;1531:34
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@1531:24;1531:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34 ../cpuex2017/raytracer/min-rt.ml@1531:30;1531:34
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@11:53;11:56
	flt f10,f11
	bft @cfg_label_19555
	j @cfg_label_19554
	j @cfg_label_19556
	j @cfg_label_19557
@cfg_label_19556:
@cfg_label_19554:
	mov f6,f10
; ../cpuex2017/raytracer/min-rt.ml@1531:24;1531:34 ::<= lib_tortesia.ml@11:46;11:79
	j @cfg_label_19584
@cfg_label_19557:
@cfg_label_19555:
	fmovi f11,$1.00000000000000000000
; lib_tortesia.ml@11:68;11:71
	fsub f6,f10,f11
; lib_tortesia.ml@11:46;11:79 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1531:24;1531:34 lib_tortesia.ml@11:68;11:71
@cfg_label_19584:
	push r4
	subi r1,r1,$4
	mov f10,f6
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	push r4
	subi r1,r1,$4
	mov r10,r8
; lib_tortesia.ml@11:32;11:80 ::<= lib_tortesia.ml@11:32;11:80
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1531:17;1531:35 lib_tortesia.ml@11:18;11:30
	fmovi f11,$20.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1531:40;1531:44
	fmul f10,f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1531:16;1531:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1531:17;1531:35 ../cpuex2017/raytracer/min-rt.ml@1531:40;1531:44
	fsub f11,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1532:14;1532:22 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34 ../cpuex2017/raytracer/min-rt.ml@1531:16;1531:44
	fmovi f10,$10.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1532:24;1532:28
	flt f11,f10
	bft @emit_label_22862
	li r10,$0
	j @emit_label_22863
@emit_label_22862:
	li r10,$1
@emit_label_22863:
; ../cpuex2017/raytracer/min-rt.ml@1531:7;1532:28 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1532:14;1532:22 ../cpuex2017/raytracer/min-rt.ml@1532:24;1532:28
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1535:10;1535:15
	bne r9,r11,@cfg_label_19569
	j @cfg_label_19568
	j @cfg_label_19570
@cfg_label_19569:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1537:16;1537:21
	bne r10,r11,@cfg_label_19564
	j @cfg_label_19563
	j @cfg_label_19565
	j @cfg_label_19566
@cfg_label_19565:
@cfg_label_19563:
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19574
@cfg_label_19566:
@cfg_label_19564:
	fmovi f10,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19575
@cfg_label_19570:
@cfg_label_19568:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1536:16;1536:21
	bne r10,r11,@cfg_label_19559
	j @cfg_label_19558
	j @cfg_label_19560
	j @cfg_label_19561
@cfg_label_19560:
@cfg_label_19558:
	fmovi f10,$255.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19572
@cfg_label_19561:
@cfg_label_19559:
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19573
@cfg_label_19575:
@cfg_label_19574:
@cfg_label_19573:
@cfg_label_19572:
	lw r5,r31,$284
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	pop r8
	pop r9
	pop r20
	pop f4
	pop f6
	pop f7
	pop r21
	pop f8
	pop f9
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@a_8897add_light:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$32
	mov f10,f10
	mov f11,f11
	mov f12,f12
@cfg_label_19505:
	fmovi f13,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f13,f10
	bft @emit_label_22864
	li r10,$0
	j @emit_label_22865
@emit_label_22864:
	li r10,$1
@emit_label_22865:
; ../cpuex2017/raytracer/min-rt.ml@1596:5;1596:18 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1596:5;1596:18
	bne r10,r11,@cfg_label_19521
	j @cfg_label_19520
	j @cfg_label_19522
@cfg_label_19521:
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1598:9
	j @cfg_label_19543
@cfg_label_19522:
@cfg_label_19520:
	lw r5,r31,$260
	lw f13,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	lw f15,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@110:35;110:40 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f14,f10,f15
; ../cpuex2017/raytracer/min-rt.ml@110:26;110:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 ../cpuex2017/raytracer/min-rt.ml@110:35;110:40
	fadd f15,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@110:14;110:22 ../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	lw r5,r31,$260
	sw f15,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@110:2;110:40 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	lw r5,r31,$260
	lw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	lw f15,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@111:35;111:40 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f14,f10,f15
; ../cpuex2017/raytracer/min-rt.ml@111:26;111:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 ../cpuex2017/raytracer/min-rt.ml@111:35;111:40
	fadd f15,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@111:14;111:22 ../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	lw r5,r31,$260
	sw f15,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@111:2;111:40 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	lw r5,r31,$260
	lw f13,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	lw f15,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@112:35;112:40 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f14,f10,f15
; ../cpuex2017/raytracer/min-rt.ml@112:26;112:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 ../cpuex2017/raytracer/min-rt.ml@112:35;112:40
	fadd f10,f13,f14
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@112:14;112:22 ../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	lw r5,r31,$260
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1598:9 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@112:14;112:40
	j @cfg_label_19542
@cfg_label_19543:
@cfg_label_19542:
	fmovi f10,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f10,f11
	bft @emit_label_22866
	li r10,$0
	j @emit_label_22867
@emit_label_22866:
	li r10,$1
@emit_label_22867:
; ../cpuex2017/raytracer/min-rt.ml@1601:5;1601:19 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1601:5;1601:19
	bne r10,r11,@cfg_label_19536
	j @cfg_label_19535
	j @cfg_label_19537
@cfg_label_19536:
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_19537:
@cfg_label_19535:
	fmul f10,f11,f11
; ../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11
	fmul f11,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32 ../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:33 ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11
	lw r5,r31,$260
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:22 ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50
	lw r5,r31,$260
	sw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1603:4;1603:29 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:29
	lw r5,r31,$260
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:22 ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50
	lw r5,r31,$260
	sw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1604:4;1604:29 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:29
	lw r5,r31,$260
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:22 ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50
	lw r5,r31,$260
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:29
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@a_8901trace_reflections:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$108
	push f8
	push r24
	push r23
	push f7
	push r22
	push r21
	push r20
	push r9
	push r8
	push f6
	push f4
	mov r9,r10
	mov f4,f10
	mov f6,f11
	mov r8,r11
@cfg_label_19504:
@cfg_label_19424:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1612:14;1612:15
	slt r5,r9,r10
	bne r0,r5,@cfg_label_19500
	j @cfg_label_19499
	j @cfg_label_19501
@cfg_label_19500:
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	pop f4
	pop f6
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop f7
	pop r23
	pop r24
	pop f8
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_19501:
@cfg_label_19499:
	lw r5,r31,$32
	sll r6,r9,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:27 ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	lw r21,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@467:32;467:33 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9
	fmovi f10,$1000000000.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	lw r5,r31,$332
	sll r6,r11,$2
	add r5,r5,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6 ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9 ../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	lw r5,r31,$368
	lw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32
	push r4
	subi r1,r1,$12
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36
	mov r12,r21
; ../cpuex2017/raytracer/min-rt.ml@467:32;467:33 ::<= ../cpuex2017/raytracer/min-rt.ml@467:32;467:33
	jal @a_8879trace_or_matrix_fast
	mov r23,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1443:2;1443:44 ../cpuex2017/raytracer/min-rt.ml@1443:2;1443:22
	lw r5,r31,$332
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6
	fmovi f11,$-0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17
	flt f11,f10
	bft @emit_label_22868
	li r10,$0
	j @emit_label_22869
@emit_label_22868:
	li r10,$1
@emit_label_22869:
; ../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17 ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20
	bne r10,r11,@cfg_label_19427
	j @cfg_label_19426
	j @cfg_label_19428
@cfg_label_19427:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1448:7;1448:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35
	j @cfg_label_19486
@cfg_label_19428:
@cfg_label_19426:
	fmovi f11,$100000000.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
	flt f10,f11
	bft @emit_label_22870
	li r10,$0
	j @emit_label_22871
@emit_label_22870:
	li r10,$1
@emit_label_22871:
; ../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18 ../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
	j @cfg_label_19485
@cfg_label_19486:
@cfg_label_19485:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35
	bne r10,r11,@cfg_label_19472
	j @cfg_label_19471
	j @cfg_label_19473
@cfg_label_19472:
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_19483
@cfg_label_19473:
@cfg_label_19471:
	lw r5,r31,$308
	lw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:48 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:44
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r11
	sll r6,r6,$1
	sll r6,r6,$1
	mov r10,r6
; ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:52 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:48
	lw r5,r31,$344
	lw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1618:55;1618:74 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1618:55;1618:70
	add r11,r10,r12
; ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:74 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:52 ../cpuex2017/raytracer/min-rt.ml@1618:55;1618:74
	lw r10,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1619:22;1619:40 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35
	bne r11,r10,@cfg_label_19463
	j @cfg_label_19462
	j @cfg_label_19464
@cfg_label_19463:
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_19482
@cfg_label_19464:
@cfg_label_19462:
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44
	push r4
	subi r1,r1,$8
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44 ::<= ../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36
	jal @a_8854shadow_check_one_or_matrix
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1621:16;1621:55 ../cpuex2017/raytracer/min-rt.ml@1621:16;1621:42
	slti r6,r23,$0
	slti r7,r23,$1
	sub r10,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1621:11;1621:56 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1621:16;1621:55
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1621:11;1621:56
	bne r10,r11,@cfg_label_19455
	j @cfg_label_19454
	j @cfg_label_19456
@cfg_label_19455:
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_19481
@cfg_label_19456:
@cfg_label_19454:
	lw r10,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@467:32;467:33
	lw r5,r31,$296
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$296
	lw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	lw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f14,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f13,f11,f14
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$296
	lw f14,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	lw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f15,f14,f11
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f14,f13,f15
; ../cpuex2017/raytracer/min-rt.ml@1623:18;1623:47 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	lw f13,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@473:32;473:33 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35
	fmul f15,f13,f4
; ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@473:32;473:33 ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fmul f7,f15,f14
; ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:39 ../cpuex2017/raytracer/min-rt.ml@1623:18;1623:47
	lw f15,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fmul f14,f15,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw f15,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fmul f12,f15,f10
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f10,f14,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw f14,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fmul f12,f14,f11
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1626:33;1626:61 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmul f8,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@473:32;473:33 ../cpuex2017/raytracer/min-rt.ml@1626:33;1626:61
	push r4
	subi r1,r1,$12
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44 ::<= ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44
	mov f11,f8
; ../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61 ::<= ../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61
	mov f12,f6
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	jal @a_8897add_light
	mov r20,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11 ../cpuex2017/raytracer/min-rt.ml@1627:10;1627:19
	j @cfg_label_19480
@cfg_label_19483:
@cfg_label_19482:
@cfg_label_19481:
@cfg_label_19480:
	subi r11,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1631:23;1631:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@1631:23;1631:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov r9,r10
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	j @cfg_label_19424
	j @cfg_label_19504
@a_8906trace_ray:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$220
	push r27
	push f29
	push f28
	push f27
	push r26
	push f26
	push r25
	push f25
	push f24
	push f23
	push f22
	push f21
	push f20
	push r24
	push r23
	push f9
	push r22
	push f8
	push f7
	push r21
	push f6
	push r20
	push r9
	push r8
	push f4
	mov r9,r10
	mov f4,f10
	mov r8,r11
	mov r20,r12
	mov f6,f11
@cfg_label_19153:
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1640:13;1640:14
	slt r5,r10,r9
	bne r0,r5,@cfg_label_19420
	j @cfg_label_19419
	j @cfg_label_19421
@cfg_label_19420:
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop f7
	pop f8
	pop r22
	pop f9
	pop r23
	pop r24
	pop f20
	pop f21
	pop f22
	pop f23
	pop f24
	pop f25
	pop r25
	pop f26
	pop r26
	pop f27
	pop f28
	pop f29
	pop r27
	addi r1,r1,$220
	pop r2
	pop r6
	jr r6
@cfg_label_19421:
@cfg_label_19419:
	lw r21,r20,$8
; ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9
	fmovi f10,$1000000000.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1351:15;1351:27
	lw r5,r31,$332
	sll r6,r11,$2
	add r5,r5,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1351:2;1351:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1351:2;1351:6 ../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9 ../cpuex2017/raytracer/min-rt.ml@1351:15;1351:27
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19
	lw r5,r31,$368
	lw r23,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:27
	push r4
	subi r1,r1,$12
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19 ::<= ../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31 ::<= ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	jal @a_8865trace_or_matrix
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1352:2;1352:39 ../cpuex2017/raytracer/min-rt.ml@1352:2;1352:17
	lw r5,r31,$332
	lw f7,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1351:2;1351:6
	fmovi f10,$-0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@1355:14;1355:17
	flt f10,f7
	bft @emit_label_22872
	li r10,$0
	j @emit_label_22873
@emit_label_22872:
	li r10,$1
@emit_label_22873:
; ../cpuex2017/raytracer/min-rt.ml@1355:6;1355:20 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1355:14;1355:17 ../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1355:6;1355:20
	bne r10,r11,@cfg_label_19156
	j @cfg_label_19155
	j @cfg_label_19157
@cfg_label_19156:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1357:7;1357:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32
	j @cfg_label_19407
@cfg_label_19157:
@cfg_label_19155:
	fmovi f10,$100000000.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1356:13;1356:24
	flt f7,f10
	bft @emit_label_22874
	li r10,$0
	j @emit_label_22875
@emit_label_22874:
	li r10,$1
@emit_label_22875:
; ../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18 ../cpuex2017/raytracer/min-rt.ml@1356:13;1356:24
	j @cfg_label_19406
@cfg_label_19407:
@cfg_label_19406:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32
	bne r10,r11,@cfg_label_19402
	j @cfg_label_19401
	j @cfg_label_19403
@cfg_label_19402:
	li r11,$-1
; ../cpuex2017/raytracer/min-rt.ml@1705:28;1705:30
	sll r6,r9,$2
	add r5,r21,r6
	sw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1705:6;1705:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1705:28;1705:30
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1707:17;1707:18
	bne r9,r10,@cfg_label_19395
	j @cfg_label_19394
	j @cfg_label_19396
	j @cfg_label_19397
@cfg_label_19396:
@cfg_label_19394:
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop f7
	pop f8
	pop r22
	pop f9
	pop r23
	pop r24
	pop f20
	pop f21
	pop f22
	pop f23
	pop f24
	pop f25
	pop r25
	pop f26
	pop r26
	pop f27
	pop f28
	pop f29
	pop r27
	addi r1,r1,$220
	pop r2
	pop r6
	jr r6
@cfg_label_19397:
@cfg_label_19395:
	lw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw f11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	lw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	lw f13,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1708:16;1708:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1708:16;1708:37
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22876
	li r10,$0
	j @emit_label_22877
@emit_label_22876:
	li r10,$1
@emit_label_22877:
; ../cpuex2017/raytracer/min-rt.ml@1710:4;1710:13 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1710:4;1710:13
	bne r10,r11,@cfg_label_19375
	j @cfg_label_19374
	j @cfg_label_19376
@cfg_label_19375:
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop f7
	pop f8
	pop r22
	pop f9
	pop r23
	pop r24
	pop f20
	pop f21
	pop f22
	pop f23
	pop f24
	pop f25
	pop r25
	pop f26
	pop r26
	pop f27
	pop f28
	pop f29
	pop r27
	addi r1,r1,$220
	pop r2
	pop r6
	jr r6
@cfg_label_19376:
@cfg_label_19374:
	fmul f12,f10,f10
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:21 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38 ../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:21 ../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38
	fmul f12,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:27 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$408
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1713:41;1713:49 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1713:41;1713:45
	fmul f10,f12,f11
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:37 ../cpuex2017/raytracer/min-rt.ml@1713:41;1713:49
	lw r5,r31,$260
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:22 ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49
	lw r5,r31,$260
	sw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1714:4;1714:29 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18 ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:29
	lw r5,r31,$260
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:22 ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49
	lw r5,r31,$260
	sw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1715:4;1715:29 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18 ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:29
	lw r5,r31,$260
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:22 ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49
	lw r5,r31,$260
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18 ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:29
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop f7
	pop f8
	pop r22
	pop f9
	pop r23
	pop r24
	pop f20
	pop f21
	pop f22
	pop f23
	pop f24
	pop f25
	pop r25
	pop f26
	pop r26
	pop f27
	pop f28
	pop f29
	pop r27
	addi r1,r1,$220
	pop r2
	pop r6
	jr r6
@cfg_label_19403:
@cfg_label_19401:
	lw r5,r31,$308
	lw r25,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1644:19;1644:40
	lw r5,r31,$456
	sll r6,r25,$2
	add r26,r5,r6
	lw r26,r26,$0
; ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:23 ../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44
	lw r22,r26,$8
; ../cpuex2017/raytracer/min-rt.ml@172:29;172:30 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	lw r24,r26,$28
; ../cpuex2017/raytracer/min-rt.ml@270:29;270:30 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	lw f8,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmul f9,f8,f4
; ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r10,r26,$4
; ../cpuex2017/raytracer/min-rt.ml@1500:16;1500:24 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1501:15;1501:16
	bne r10,r11,@cfg_label_19203
	j @cfg_label_19202
	j @cfg_label_19204
@cfg_label_19203:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@1503:20;1503:21
	bne r10,r11,@cfg_label_19198
	j @cfg_label_19197
	j @cfg_label_19199
@cfg_label_19198:
	push r4
	subi r1,r1,$4
	mov r10,r26
; ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	jal @a_8889get_nvector_second
	mov r27,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28 ../cpuex2017/raytracer/min-rt.ml@1506:4;1506:22
	j @cfg_label_19352
@cfg_label_19199:
@cfg_label_19197:
	lw r10,r26,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34
	lw r5,r31,$296
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1471:2;1471:35 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35
	lw f12,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34
	lw r5,r31,$296
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1472:2;1472:35 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f12,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34
	lw r5,r31,$296
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35
	j @cfg_label_19351
@cfg_label_19204:
@cfg_label_19202:
	lw r5,r31,$344
	lw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1464:2;1464:18 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	subi r10,r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36
	sll r6,r10,$2
	add f10,r8,r6
	lw f10,f10,$0
; ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22878
	li r11,$0
	j @emit_label_22879
@emit_label_22878:
	li r11,$1
@emit_label_22879:
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 lib_tortesia.ml@5:25;5:28
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r11,r12,@cfg_label_19167
	j @cfg_label_19166
	j @cfg_label_19168
	j @cfg_label_19169
@cfg_label_19168:
@cfg_label_19166:
	fmovi f12,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19172
@cfg_label_19169:
@cfg_label_19167:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22880
	li r11,$0
	j @emit_label_22881
@emit_label_22880:
	li r11,$1
@emit_label_22881:
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 lib_tortesia.ml@9:24;9:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r11,r12,@cfg_label_19160
	j @cfg_label_19159
	j @cfg_label_19161
	j @cfg_label_19162
@cfg_label_19161:
@cfg_label_19159:
	fmovi f12,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19173
@cfg_label_19162:
@cfg_label_19160:
	fmovi f12,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
@cfg_label_19173:
@cfg_label_19172:
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	lw r5,r31,$296
	sll r6,r10,$2
	add r5,r5,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21 ../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58
	j @cfg_label_19350
@cfg_label_19352:
@cfg_label_19351:
@cfg_label_19350:
	lw r5,r31,$320
	lw f20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	sw f20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$320
	lw f21,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	sw f21,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$320
	lw f22,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	sw f22,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1650:6;1650:38 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	push r4
	subi r1,r1,$8
	mov r10,r26
; ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	lw r11,r31,$320
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ::<= ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	jal @a_8894utexture
	mov r27,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1651:6;1651:37 ../cpuex2017/raytracer/min-rt.ml@1651:6;1651:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r25
	sll r6,r6,$1
	sll r6,r6,$1
	mov r10,r6
; ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:38 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44
	lw r5,r31,$344
	lw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1654:41;1654:60 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32
	add r11,r10,r12
; ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:60 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:38 ../cpuex2017/raytracer/min-rt.ml@1654:41;1654:60
	sll r6,r9,$2
	add r5,r21,r6
	sw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1654:6;1654:60 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:60
	lw r11,r20,$4
; ../cpuex2017/raytracer/min-rt.ml@376:40;376:45 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@376:40;376:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sw f20,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	sw f21,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	sw f22,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1656:6;1656:58 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r10,r20,$12
; ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	fmovi f10,$0.50000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1660:31;1660:34
	flt f8,f10
	bft @emit_label_22882
	li r11,$0
	j @emit_label_22883
@emit_label_22882:
	li r11,$1
@emit_label_22883:
; ../cpuex2017/raytracer/min-rt.ml@1660:9;1660:34 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33 ../cpuex2017/raytracer/min-rt.ml@1660:31;1660:34
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@1660:9;1660:34
	bne r11,r12,@cfg_label_19236
	j @cfg_label_19235
	j @cfg_label_19237
	j @cfg_label_19238
@cfg_label_19237:
@cfg_label_19235:
	lw r7,r31,$12
	sll r6,r9,$2
	add r5,r10,r6
	sw r7,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1660:6;1669:8 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1357:7;1357:12
	j @cfg_label_19328
@cfg_label_19238:
@cfg_label_19236:
	lw r7,r31,$16
	sll r6,r9,$2
	add r5,r10,r6
	sw r7,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1663:1;1663:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1663:24;1663:28
	lw r11,r20,$16
; ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$284
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	sw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$284
	lw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	sw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$284
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	sw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1665:1;1665:36 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	fmovi f11,$0.00390625000000000000
; ../cpuex2017/raytracer/min-rt.ml@1666:27;1666:39
	fmul f10,f11,f9
; ../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1666:27;1666:39 ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@131:14;131:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@131:14;131:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@131:14;131:22 ../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51
	sw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@131:2;131:31 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24 ../cpuex2017/raytracer/min-rt.ml@131:14;131:31
	lw f12,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@132:14;132:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@132:14;132:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@132:14;132:22 ../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51
	sw f11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@132:2;132:31 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24 ../cpuex2017/raytracer/min-rt.ml@132:14;132:31
	lw f12,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@133:14;133:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@133:14;133:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@133:14;133:22 ../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51
	sw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1666:1;1666:52 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24 ../cpuex2017/raytracer/min-rt.ml@133:14;133:31
	lw r11,r20,$28
; ../cpuex2017/raytracer/min-rt.ml@435:39;435:44 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@435:39;435:44 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$296
	lw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$296
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1668:1;1668:31 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
; ../cpuex2017/raytracer/min-rt.ml@1660:6;1669:8
@cfg_label_19328:
	fmovi f11,$-2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1671:16;1671:19
	lw f25,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	lw f29,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f12,f25,f29
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw f23,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	lw f28,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f13,f23,f28
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f10,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw f24,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	lw f27,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f13,f24,f27
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@1671:24;1671:47 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1671:16;1671:19 ../cpuex2017/raytracer/min-rt.ml@1671:24;1671:47
	fmul f12,f10,f29
; ../cpuex2017/raytracer/min-rt.ml@110:26;110:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fadd f11,f25,f12
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	sw f11,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@110:2;110:40 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	fmul f12,f10,f28
; ../cpuex2017/raytracer/min-rt.ml@111:26;111:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f23,f12
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	sw f11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@111:2;111:40 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	fmul f11,f10,f27
; ../cpuex2017/raytracer/min-rt.ml@112:26;112:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f10,f24,f11
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	sw f10,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1673:6;1673:31 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@112:14;112:40
	lw f10,r24,$4
; ../cpuex2017/raytracer/min-rt.ml@1675:36;1675:49 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmul f26,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1675:36;1675:49
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42
	push r4
	subi r1,r1,$8
	mov r10,r25
; ../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31 ::<= ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31
	jal @a_8854shadow_check_one_or_matrix
	mov r24,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1678:14;1678:53 ../cpuex2017/raytracer/min-rt.ml@1678:14;1678:40
	slti r6,r24,$0
	slti r7,r24,$1
	sub r10,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1678:9;1678:54 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1678:14;1678:53
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1678:9;1678:54
	bne r10,r11,@cfg_label_19258
	j @cfg_label_19257
	j @cfg_label_19259
@cfg_label_19258:
; ../cpuex2017/raytracer/min-rt.ml@1678:6;1682:13
	j @cfg_label_19299
@cfg_label_19259:
@cfg_label_19257:
	lw r5,r31,$420
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f29,f10
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$420
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f14,f28,f11
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f13,f12,f14
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$420
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f15,f27,f12
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f14,f13,f15
; ../cpuex2017/raytracer/min-rt.ml@1679:27;1679:49 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f15,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f15,f14
; ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:50 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1679:27;1679:49
	fmul f27,f13,f9
; ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:50 ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43
	fmul f13,f25,f10
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fmul f10,f23,f11
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f13,f10
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fmul f10,f24,f12
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1680:28;1680:49 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f10,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f23,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1680:28;1680:49
	push r4
	subi r1,r1,$12
	mov f10,f27
; ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61 ::<= ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61
	mov f11,f23
; ../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50 ::<= ../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50
	mov f12,f26
; ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49
	jal @a_8897add_light
	mov r23,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1678:6;1682:13 ../cpuex2017/raytracer/min-rt.ml@1681:8;1681:17
	j @cfg_label_19298
@cfg_label_19299:
@cfg_label_19298:
	lw r5,r31,$200
	sw f20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$200
	sw f21,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$200
	sw f22,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r23,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	lw r10,r31,$320
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ::<= ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r24,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1685:6;1685:37 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	lw r5,r31,$20
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:42 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:38
	subi r23,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:42
	push r4
	subi r1,r1,$16
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44 ::<= ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43
	mov f11,f26
; ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	jal @a_8901trace_reflections
	mov r24,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1686:6;1686:74 ../cpuex2017/raytracer/min-rt.ml@1686:6;1686:23
	fmovi f10,$0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@1689:15;1689:18
	flt f10,f4
	bft @emit_label_22884
	li r10,$0
	j @emit_label_22885
@emit_label_22884:
	li r10,$1
@emit_label_22885:
; ../cpuex2017/raytracer/min-rt.ml@1689:9;1689:25 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1689:15;1689:18 ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1689:9;1689:25
	bne r10,r11,@cfg_label_19283
	j @cfg_label_19282
	j @cfg_label_19284
@cfg_label_19283:
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop f7
	pop f8
	pop r22
	pop f9
	pop r23
	pop r24
	pop f20
	pop f21
	pop f22
	pop f23
	pop f24
	pop f25
	pop r25
	pop f26
	pop r26
	pop f27
	pop f28
	pop f29
	pop r27
	addi r1,r1,$220
	pop r2
	pop r6
	jr r6
@cfg_label_19284:
@cfg_label_19282:
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1691:11;1691:12
	slt r5,r9,r10
	bne r0,r5,@cfg_label_19264
	j @cfg_label_19263
	j @cfg_label_19265
	j @cfg_label_19266
@cfg_label_19265:
@cfg_label_19263:
; ../cpuex2017/raytracer/min-rt.ml@1691:1;1693:8
	j @cfg_label_19279
@cfg_label_19266:
@cfg_label_19264:
	addi r11,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1692:16;1692:22 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	li r12,$-1
; ../cpuex2017/raytracer/min-rt.ml@1692:27;1692:29
	sll r6,r11,$2
	add r5,r21,r6
	sw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1691:1;1693:8 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ../cpuex2017/raytracer/min-rt.ml@1692:16;1692:22 ../cpuex2017/raytracer/min-rt.ml@1692:27;1692:29
@cfg_label_19279:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@1695:16;1695:17
	bne r22,r10,@cfg_label_19273
	j @cfg_label_19272
	j @cfg_label_19274
@cfg_label_19273:
; ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11
	j @cfg_label_19277
@cfg_label_19274:
@cfg_label_19272:
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:31
	fsub f10,f11,f8
; ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:31 ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33
	fmul f8,f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:48
	addi r21,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	fadd f4,f6,f7
; ../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18
	push r4
	subi r1,r1,$20
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20 ::<= ../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	mov r12,r20
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	mov f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60 ::<= ../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60
	jal @a_8906trace_ray
	mov r9,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11 ../cpuex2017/raytracer/min-rt.ml@1697:3;1697:12
	j @cfg_label_19276
@cfg_label_19277:
@cfg_label_19276:
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop f7
	pop f8
	pop r22
	pop f9
	pop r23
	pop r24
	pop f20
	pop f21
	pop f22
	pop f23
	pop f24
	pop f25
	pop r25
	pop f26
	pop r26
	pop f27
	pop f28
	pop f29
	pop r27
	addi r1,r1,$220
	pop r2
	pop r6
	jr r6
@a_8912trace_diffuse_ray:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	push r21
	push r20
	push r9
	push r8
	push f4
	mov r20,r10
	mov f4,f10
@cfg_label_19026:
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9
	fmovi f10,$1000000000.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	lw r5,r31,$332
	sll r6,r11,$2
	add r5,r5,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6 ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9 ../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	li r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	lw r5,r31,$368
	lw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32
	push r4
	subi r1,r1,$12
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36
	mov r12,r20
; ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	jal @a_8879trace_or_matrix_fast
	mov r8,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1443:2;1443:44 ../cpuex2017/raytracer/min-rt.ml@1443:2;1443:22
	lw r5,r31,$332
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6
	fmovi f11,$-0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17
	flt f11,f10
	bft @emit_label_22886
	li r10,$0
	j @emit_label_22887
@emit_label_22886:
	li r10,$1
@emit_label_22887:
; ../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17 ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20
	bne r10,r11,@cfg_label_19029
	j @cfg_label_19028
	j @cfg_label_19030
@cfg_label_19029:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1448:7;1448:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35
	j @cfg_label_19142
@cfg_label_19030:
@cfg_label_19028:
	fmovi f11,$100000000.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
	flt f10,f11
	bft @emit_label_22888
	li r10,$0
	j @emit_label_22889
@emit_label_22888:
	li r10,$1
@emit_label_22889:
; ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18 ../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
	j @cfg_label_19141
@cfg_label_19142:
@cfg_label_19141:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35
	bne r10,r11,@cfg_label_19137
	j @cfg_label_19136
	j @cfg_label_19138
@cfg_label_19137:
; ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	pop f4
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_19138:
@cfg_label_19136:
	lw r5,r31,$308
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1736:23;1736:48 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1736:23;1736:44
	lw r5,r31,$456
	sll r6,r10,$2
	add r8,r5,r6
	lw r8,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:21 ../cpuex2017/raytracer/min-rt.ml@1736:23;1736:48
	lw r11,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1737:21;1737:33 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	lw r10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1500:16;1500:24 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@1501:15;1501:16
	bne r10,r12,@cfg_label_19076
	j @cfg_label_19075
	j @cfg_label_19077
@cfg_label_19076:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@1503:20;1503:21
	bne r10,r11,@cfg_label_19071
	j @cfg_label_19070
	j @cfg_label_19072
@cfg_label_19071:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	jal @a_8889get_nvector_second
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34 ../cpuex2017/raytracer/min-rt.ml@1506:4;1506:22
	j @cfg_label_19130
@cfg_label_19072:
@cfg_label_19070:
	lw r10,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@200:29;200:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34
	lw r5,r31,$296
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1471:2;1471:35 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35
	lw f12,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34
	lw r5,r31,$296
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1472:2;1472:35 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f12,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34
	lw r5,r31,$296
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35
	j @cfg_label_19129
@cfg_label_19077:
@cfg_label_19075:
	lw r5,r31,$344
	lw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1464:2;1464:18 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	subi r10,r12,$1
; ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36
	sll r6,r10,$2
	add f10,r11,r6
	lw f10,f10,$0
; ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1737:21;1737:33 ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22890
	li r11,$0
	j @emit_label_22891
@emit_label_22890:
	li r11,$1
@emit_label_22891:
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 lib_tortesia.ml@5:25;5:28
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r11,r12,@cfg_label_19040
	j @cfg_label_19039
	j @cfg_label_19041
	j @cfg_label_19042
@cfg_label_19041:
@cfg_label_19039:
	fmovi f12,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19045
@cfg_label_19042:
@cfg_label_19040:
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22892
	li r11,$0
	j @emit_label_22893
@emit_label_22892:
	li r11,$1
@emit_label_22893:
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 lib_tortesia.ml@9:24;9:27
	li r12,$1
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r11,r12,@cfg_label_19033
	j @cfg_label_19032
	j @cfg_label_19034
	j @cfg_label_19035
@cfg_label_19034:
@cfg_label_19032:
	fmovi f12,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19046
@cfg_label_19035:
@cfg_label_19033:
	fmovi f12,$-1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
@cfg_label_19046:
@cfg_label_19045:
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	lw r5,r31,$296
	sll r6,r10,$2
	add r5,r5,r6
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21 ../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58
	j @cfg_label_19128
@cfg_label_19130:
@cfg_label_19129:
@cfg_label_19128:
	push r4
	subi r1,r1,$8
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	lw r11,r31,$320
; ../cpuex2017/raytracer/min-rt.ml@1738:17;1738:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1738:17;1738:35
	jal @a_8894utexture
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1738:4;1738:35 ../cpuex2017/raytracer/min-rt.ml@1738:4;1738:12
	li r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36
	jal @a_8854shadow_check_one_or_matrix
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1741:12;1741:51 ../cpuex2017/raytracer/min-rt.ml@1741:12;1741:38
	slti r6,r20,$0
	slti r7,r20,$1
	sub r10,r7,r6
; ../cpuex2017/raytracer/min-rt.ml@1741:7;1741:52 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1741:12;1741:51
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1741:7;1741:52
	bne r10,r11,@cfg_label_19120
	j @cfg_label_19119
	j @cfg_label_19121
@cfg_label_19120:
; ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	pop f4
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_19121:
@cfg_label_19119:
	lw r5,r31,$296
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$296
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	lw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$296
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	lw f13,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@1742:22;1742:44 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@1742:22;1742:44
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22894
	li r10,$0
	j @emit_label_22895
@emit_label_22894:
	li r10,$1
@emit_label_22895:
; ../cpuex2017/raytracer/min-rt.ml@1743:23;1743:32 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45 lib_tortesia.ml@9:24;9:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1743:23;1743:32
	bne r10,r11,@cfg_label_19080
	j @cfg_label_19079
	j @cfg_label_19081
	j @cfg_label_19082
@cfg_label_19081:
@cfg_label_19079:
	mov f12,f10
; ../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49
	j @cfg_label_19101
@cfg_label_19082:
@cfg_label_19080:
	fmovi f12,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49
@cfg_label_19101:
	fmul f11,f4,f12
; ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9 ../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49
	lw r10,r8,$28
; ../cpuex2017/raytracer/min-rt.ml@270:29;270:30 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	lw f12,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1744:48;1744:61 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:44 ../cpuex2017/raytracer/min-rt.ml@1744:48;1744:61
	lw r5,r31,$272
	lw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	lw f13,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@110:35;110:40 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f12,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@110:26;110:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61 ../cpuex2017/raytracer/min-rt.ml@110:35;110:40
	fadd f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@110:14;110:22 ../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	lw r5,r31,$272
	sw f13,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@110:2;110:40 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	lw r5,r31,$272
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	lw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@111:35;111:40 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f12,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@111:26;111:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61 ../cpuex2017/raytracer/min-rt.ml@111:35;111:40
	fadd f13,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@111:14;111:22 ../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	lw r5,r31,$272
	sw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@111:2;111:40 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	lw r5,r31,$272
	lw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	lw f13,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@112:35;112:40 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f12,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@112:26;112:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61 ../cpuex2017/raytracer/min-rt.ml@112:35;112:40
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@112:14;112:22 ../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	lw r5,r31,$272
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@112:14;112:40
	pop f4
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@a_8915iter_trace_diffuse_rays:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	push r23
	push f4
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r9,r11
	mov r20,r12
	mov r21,r13
@cfg_label_19025:
@cfg_label_18985:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1752:14;1752:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_19021
	j @cfg_label_19020
	j @cfg_label_19022
@cfg_label_19021:
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop f4
	pop r23
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_19022:
@cfg_label_19020:
	sll r6,r21,$2
	add r11,r8,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	lw r10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48
	lw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48
	lw f12,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmul f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw f11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48
	lw f13,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmul f12,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48
	lw f13,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmul f12,f10,f13
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$0.00000000000000000000
; lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22896
	li r10,$0
	j @emit_label_22897
@emit_label_22896:
	li r10,$1
@emit_label_22897:
; ../cpuex2017/raytracer/min-rt.ml@1757:7;1757:15 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57 lib_tortesia.ml@7:24;7:27
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1757:7;1757:15
	bne r10,r11,@cfg_label_18994
	j @cfg_label_18993
	j @cfg_label_18995
@cfg_label_18994:
	sll r6,r21,$2
	add r22,r8,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmovi f11,$150.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1760:51;1760:56
	fdiv f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57 ../cpuex2017/raytracer/min-rt.ml@1760:51;1760:56
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44 ::<= ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56 ::<= ../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56
	jal @a_8912trace_diffuse_ray
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1757:4;1760:57 ../cpuex2017/raytracer/min-rt.ml@1758:6;1758:23
	j @cfg_label_19003
@cfg_label_18995:
@cfg_label_18993:
	addi r10,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1758:38;1758:47 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	sll r6,r10,$2
	add r22,r8,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ../cpuex2017/raytracer/min-rt.ml@1758:38;1758:47
	fmovi f11,$-150.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@1758:56;1758:61
	fdiv f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57 ../cpuex2017/raytracer/min-rt.ml@1758:56;1758:61
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48 ::<= ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61 ::<= ../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61
	jal @a_8912trace_diffuse_ray
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1757:4;1760:57 ../cpuex2017/raytracer/min-rt.ml@1758:6;1758:23
	j @cfg_label_19002
@cfg_label_19003:
@cfg_label_19002:
	subi r10,r21,$2
; ../cpuex2017/raytracer/min-rt.ml@1762:54;1762:63 ::= Oibysub[2] ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r13,r9
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r14,r20
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1762:54;1762:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r9,r13
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r20,r14
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r21,r11
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	j @cfg_label_18985
	j @cfg_label_19025
@a_8924trace_diffuse_ray_80percent:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$40
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r8,r11
	mov r9,r12
@cfg_label_18896:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1779:17;1779:18
	bne r20,r10,@cfg_label_18909
	j @cfg_label_18908
	j @cfg_label_18910
	j @cfg_label_18911
@cfg_label_18910:
@cfg_label_18908:
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1781:9
	j @cfg_label_18982
@cfg_label_18911:
@cfg_label_18909:
	lw r5,r31,$112
	lw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	lw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r22,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r23,$118
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	push r4
	subi r1,r1,$16
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r23
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8915iter_trace_diffuse_rays
	mov r22,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1781:9 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_18982:
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1783:17;1783:18
	bne r20,r10,@cfg_label_18924
	j @cfg_label_18923
	j @cfg_label_18925
	j @cfg_label_18926
@cfg_label_18925:
@cfg_label_18923:
; ../cpuex2017/raytracer/min-rt.ml@1783:2;1785:9
	j @cfg_label_18979
@cfg_label_18926:
@cfg_label_18924:
	lw r5,r31,$112
	lw r21,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	lw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r22,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r23,$118
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	push r4
	subi r1,r1,$16
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r23
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8915iter_trace_diffuse_rays
	mov r22,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1783:2;1785:9 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_18979:
	li r10,$2
; ../cpuex2017/raytracer/min-rt.ml@1787:17;1787:18
	bne r20,r10,@cfg_label_18939
	j @cfg_label_18938
	j @cfg_label_18940
	j @cfg_label_18941
@cfg_label_18940:
@cfg_label_18938:
; ../cpuex2017/raytracer/min-rt.ml@1787:2;1789:9
	j @cfg_label_18976
@cfg_label_18941:
@cfg_label_18939:
	lw r5,r31,$112
	lw r21,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	lw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r22,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r23,$118
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	push r4
	subi r1,r1,$16
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r23
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8915iter_trace_diffuse_rays
	mov r22,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1787:2;1789:9 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_18976:
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@1791:17;1791:18
	bne r20,r10,@cfg_label_18954
	j @cfg_label_18953
	j @cfg_label_18955
	j @cfg_label_18956
@cfg_label_18955:
@cfg_label_18953:
; ../cpuex2017/raytracer/min-rt.ml@1791:2;1793:9
	j @cfg_label_18973
@cfg_label_18956:
@cfg_label_18954:
	lw r5,r31,$112
	lw r21,r5,$12
; ../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34 ::= OiArrRead[3] ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	lw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r22,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r23,$118
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	push r4
	subi r1,r1,$16
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r23
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8915iter_trace_diffuse_rays
	mov r22,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1791:2;1793:9 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_18973:
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1795:17;1795:18
	bne r20,r10,@cfg_label_18969
	j @cfg_label_18968
	j @cfg_label_18970
	j @cfg_label_18971
@cfg_label_18970:
@cfg_label_18968:
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@cfg_label_18971:
@cfg_label_18969:
	lw r5,r31,$112
	lw r20,r5,$16
; ../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34 ::= OiArrRead[4] ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	lw f10,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r21,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r22,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r21,$118
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	push r4
	subi r1,r1,$16
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34 ::<= ../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r21
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8915iter_trace_diffuse_rays
	mov r22,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	mov r5,r22
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$40
	pop r2
	pop r6
	jr r6
@a_8928calc_diffuse_using_1point:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r10,r10
	mov r9,r11
@cfg_label_18878:
	lw r14,r10,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r12,r10,$28
; ../cpuex2017/raytracer/min-rt.ml@435:39;435:44 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@376:40;376:45 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r8,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	sll r6,r9,$2
	add r13,r14,r6
	lw r13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw f10,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1810:2;1810:34 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r13,r10,$24
; ../cpuex2017/raytracer/min-rt.ml@421:39;421:44 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r20,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@421:39;421:44
	sll r6,r9,$2
	add r21,r12,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@435:39;435:44 ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	sll r6,r9,$2
	add r22,r11,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@376:40;376:45 ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	push r4
	subi r1,r1,$12
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21 ::<= ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19 ::<= ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19
	mov r12,r22
; ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30
	jal @a_8924trace_diffuse_ray_80percent
	mov r23,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1811:2;1814:30 ../cpuex2017/raytracer/min-rt.ml@1811:2;1811:29
	sll r6,r9,$2
	add r20,r8,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	push r4
	subi r1,r1,$12
	lw r10,r31,$260
; ../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15 ::<= ../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30
	lw r12,r31,$272
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ::<= ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	jal @a_8621vecaccumv
	mov r8,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42 ../cpuex2017/raytracer/min-rt.ml@1815:2;1815:11
	mov r5,r8
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@a_8931calc_diffuse_using_5points:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$60
	push r9
	push r8
	mov r10,r10
	mov r11,r11
	mov r12,r12
	mov r13,r13
	mov r14,r14
@cfg_label_18812:
	sll r6,r10,$2
	add r15,r11,r6
	lw r15,r15,$0
; ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r18,r15,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46
	subi r15,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1825:45;1825:48 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	sll r6,r15,$2
	add r11,r12,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1825:45;1825:48
	lw r17,r11,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49
	sll r6,r10,$2
	add r11,r12,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r16,r11,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49
	addi r15,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1827:46;1827:49 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	sll r6,r15,$2
	add r11,r12,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1827:46;1827:49
	lw r15,r11,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50
	sll r6,r10,$2
	add r19,r13,r6
	lw r19,r19,$0
; ../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r11,r19,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48
	sll r6,r14,$2
	add r13,r18,r6
	lw r13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw f10,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32
	lw r5,r31,$272
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32
	lw r5,r31,$272
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32
	lw r5,r31,$272
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1830:2;1830:32 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	sll r6,r14,$2
	add r13,r17,r6
	lw r13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r5,r31,$272
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	lw f12,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@117:26;117:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34
	fadd f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	sw f11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@117:2;117:31 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw r5,r31,$272
	lw f11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	lw f13,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@118:26;118:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34
	fadd f12,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	sw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@118:2;118:31 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw r5,r31,$272
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	lw f13,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@119:26;119:31 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34
	fadd f14,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	sw f14,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1831:2;1831:34 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r14,$2
	add r13,r16,r6
	lw r13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw f14,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@117:26;117:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36
	fadd f13,f10,f14
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	sw f13,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@117:2;117:31 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw f14,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@118:26;118:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36
	fadd f13,f11,f14
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	sw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@118:2;118:31 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw f13,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@119:26;119:31 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36
	fadd f14,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	sw f14,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1832:2;1832:36 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r14,$2
	add r13,r15,r6
	lw r13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw f14,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@117:26;117:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35
	fadd f13,f10,f14
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	sw f13,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@117:2;117:31 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw f14,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@118:26;118:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35
	fadd f13,f11,f14
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	sw f13,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@118:2;118:31 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw f13,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@119:26;119:31 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35
	fadd f14,f12,f13
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	sw f14,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1833:2;1833:35 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r14,$2
	add r13,r11,r6
	lw r13,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw f14,r13,$0
; ../cpuex2017/raytracer/min-rt.ml@117:26;117:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34
	fadd f13,f10,f14
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	sw f13,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@117:2;117:31 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw f13,r13,$4
; ../cpuex2017/raytracer/min-rt.ml@118:26;118:31 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34
	fadd f10,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@118:2;118:31 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw f10,r13,$8
; ../cpuex2017/raytracer/min-rt.ml@119:26;119:31 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34
	fadd f11,f12,f10
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	sw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1834:2;1834:34 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r10,$2
	add r11,r12,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r10,r11,$16
; ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32
	sll r6,r14,$2
	add r8,r10,r6
	lw r8,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@398:40;398:45 ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	push r4
	subi r1,r1,$12
	lw r10,r31,$260
; ../cpuex2017/raytracer/min-rt.ml@1837:12;1837:15 ::<= ../cpuex2017/raytracer/min-rt.ml@1837:12;1837:15
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30
	lw r12,r31,$272
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ::<= ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	jal @a_8621vecaccumv
	mov r9,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1837:2;1837:11
	mov r5,r9
	pop r8
	pop r9
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@a_8937do_without_neighbors:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$72
	push r26
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r21,r11
@cfg_label_18811:
@cfg_label_18749:
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r21
	bne r0,r5,@cfg_label_18807
	j @cfg_label_18806
	j @cfg_label_18808
@cfg_label_18807:
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@cfg_label_18808:
@cfg_label_18806:
	lw r20,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r21,$2
	add r10,r20,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18800
	j @cfg_label_18799
	j @cfg_label_18801
@cfg_label_18800:
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@cfg_label_18801:
@cfg_label_18799:
	lw r9,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r21,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18768
	j @cfg_label_18767
	j @cfg_label_18769
@cfg_label_18768:
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
	j @cfg_label_18795
@cfg_label_18769:
@cfg_label_18767:
	lw r13,r8,$20
; ../cpuex2017/raytracer/min-rt.ml@1805:15;1805:45 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r11,r8,$28
; ../cpuex2017/raytracer/min-rt.ml@1806:17;1806:33 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r10,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@1807:28;1807:55 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r22,r8,$16
; ../cpuex2017/raytracer/min-rt.ml@1808:16;1808:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r21,$2
	add r12,r13,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1805:15;1805:45 ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw f10,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r12,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r12,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1810:2;1810:34 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r12,r8,$24
; ../cpuex2017/raytracer/min-rt.ml@421:39;421:44 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r23,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@421:39;421:44
	sll r6,r21,$2
	add r24,r11,r6
	lw r24,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1806:17;1806:33 ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r21,$2
	add r25,r10,r6
	lw r25,r25,$0
; ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1807:28;1807:55 ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21 ::<= ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21
	mov r11,r24
; ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19 ::<= ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19
	mov r12,r25
; ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30
	jal @a_8924trace_diffuse_ray_80percent
	mov r26,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1811:2;1814:30 ../cpuex2017/raytracer/min-rt.ml@1811:2;1811:29
	sll r6,r21,$2
	add r23,r22,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1808:16;1808:30 ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	push r4
	subi r1,r1,$12
	lw r10,r31,$260
; ../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15 ::<= ../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30 ::<= ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30
	lw r12,r31,$272
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ::<= ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	jal @a_8621vecaccumv
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13 ../cpuex2017/raytracer/min-rt.ml@1815:2;1815:11
	j @cfg_label_18794
@cfg_label_18795:
@cfg_label_18794:
	addi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r22
	bne r0,r5,@cfg_label_18789
	j @cfg_label_18788
	j @cfg_label_18790
@cfg_label_18789:
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@cfg_label_18790:
@cfg_label_18788:
	sll r6,r22,$2
	add r10,r20,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@384:40;384:45 ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18783
	j @cfg_label_18782
	j @cfg_label_18784
@cfg_label_18783:
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@cfg_label_18784:
@cfg_label_18782:
	sll r6,r22,$2
	add r10,r9,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18772
	j @cfg_label_18771
	j @cfg_label_18773
	j @cfg_label_18774
@cfg_label_18773:
@cfg_label_18771:
	push r4
	subi r1,r1,$8
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	jal @a_8928calc_diffuse_using_1point
	mov r9,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13 ../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_18778
@cfg_label_18774:
@cfg_label_18772:
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
@cfg_label_18778:
	addi r10,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	mov r21,r11
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	j @cfg_label_18749
	j @cfg_label_18811
@a_8947neighbors_are_available:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$20
	mov r10,r10
	mov r11,r11
	mov r12,r12
	mov r13,r13
	mov r14,r14
@cfg_label_18715:
	sll r6,r10,$2
	add r15,r12,r6
	lw r15,r15,$0
; ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	lw r16,r15,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41
	sll r6,r14,$2
	add r15,r16,r6
	lw r15,r15,$0
; ../cpuex2017/raytracer/min-rt.ml@1877:19;1877:46 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	sll r6,r10,$2
	add r16,r11,r6
	lw r16,r16,$0
; ../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	lw r11,r16,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28
	sll r6,r14,$2
	add r16,r11,r6
	lw r16,r16,$0
; ../cpuex2017/raytracer/min-rt.ml@1879:5;1879:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r16,r15,@cfg_label_18740
	j @cfg_label_18739
	j @cfg_label_18741
@cfg_label_18740:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1884:6;1884:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@cfg_label_18741:
@cfg_label_18739:
	sll r6,r10,$2
	add r11,r13,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	lw r13,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30
	sll r6,r14,$2
	add r11,r13,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1880:7;1880:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r11,r15,@cfg_label_18733
	j @cfg_label_18732
	j @cfg_label_18734
@cfg_label_18733:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1884:6;1884:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@cfg_label_18734:
@cfg_label_18732:
	subi r13,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1881:29;1881:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	sll r6,r13,$2
	add r11,r12,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ../cpuex2017/raytracer/min-rt.ml@1881:29;1881:32
	lw r13,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33
	sll r6,r14,$2
	add r11,r13,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1881:9;1881:38 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r11,r15,@cfg_label_18725
	j @cfg_label_18724
	j @cfg_label_18726
@cfg_label_18725:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1884:6;1884:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@cfg_label_18726:
@cfg_label_18724:
	addi r11,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1882:24;1882:27 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	sll r6,r11,$2
	add r10,r12,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ../cpuex2017/raytracer/min-rt.ml@1882:24;1882:27
	lw r11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28
	sll r6,r14,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1882:4;1882:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r10,r15,@cfg_label_18717
	j @cfg_label_18716
	j @cfg_label_18718
	j @cfg_label_18719
@cfg_label_18718:
@cfg_label_18716:
	lw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1883:3;1883:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@cfg_label_18719:
@cfg_label_18717:
	lw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1884:6;1884:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@a_8953try_exploit_neighbors:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$52
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
	mov r21,r11
	mov r22,r12
	mov r9,r13
	mov r23,r14
	mov r8,r15
@cfg_label_18714:
@cfg_label_18655:
	sll r6,r20,$2
	add r24,r9,r6
	lw r24,r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1896:13;1896:14
	slt r5,r10,r8
	bne r0,r5,@cfg_label_18709
	j @cfg_label_18708
	j @cfg_label_18710
@cfg_label_18709:
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r5,r8
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@cfg_label_18710:
@cfg_label_18708:
	lw r11,r24,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21
	sll r6,r8,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1899:7;1899:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1899:36;1899:37
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18702
	j @cfg_label_18701
	j @cfg_label_18703
@cfg_label_18702:
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r5,r8
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@cfg_label_18703:
@cfg_label_18701:
	push r4
	subi r1,r1,$20
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r13,r23
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r14,r8
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	jal @a_8947neighbors_are_available
	mov r25,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1901:9;1901:53 ../cpuex2017/raytracer/min-rt.ml@1901:9;1901:32
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1901:9;1901:53
	bne r25,r10,@cfg_label_18696
	j @cfg_label_18695
	j @cfg_label_18697
@cfg_label_18696:
	sll r6,r20,$2
	add r21,r9,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r8
	bne r0,r5,@cfg_label_18690
	j @cfg_label_18689
	j @cfg_label_18691
@cfg_label_18690:
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r5,r8
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@cfg_label_18691:
@cfg_label_18689:
	lw r11,r21,$8
; ../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	sll r6,r8,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41 ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18683
	j @cfg_label_18682
	j @cfg_label_18684
@cfg_label_18683:
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r5,r8
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@cfg_label_18684:
@cfg_label_18682:
	lw r11,r21,$12
; ../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	sll r6,r8,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45 ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18673
	j @cfg_label_18672
	j @cfg_label_18674
	j @cfg_label_18675
@cfg_label_18674:
@cfg_label_18672:
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	jal @a_8928calc_diffuse_using_1point
	mov r9,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13 ../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_18677
@cfg_label_18675:
@cfg_label_18673:
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
@cfg_label_18677:
	addi r9,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	jal @a_8937do_without_neighbors
	mov r8,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ../cpuex2017/raytracer/min-rt.ml@1851:6;1851:26
	mov r5,r8
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$52
	pop r2
	pop r6
	jr r6
@cfg_label_18697:
@cfg_label_18695:
	lw r10,r24,$12
; ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21
	sll r6,r8,$2
	add r11,r10,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1905:11;1905:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1905:11;1905:30
	bne r11,r10,@cfg_label_18657
	j @cfg_label_18656
	j @cfg_label_18658
	j @cfg_label_18659
@cfg_label_18658:
@cfg_label_18656:
	push r4
	subi r1,r1,$20
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r13,r23
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r14,r8
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	jal @a_8931calc_diffuse_using_5points
	mov r24,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1905:8;1907:8 ../cpuex2017/raytracer/min-rt.ml@1906:3;1906:29
	j @cfg_label_18667
@cfg_label_18659:
@cfg_label_18657:
; ../cpuex2017/raytracer/min-rt.ml@1905:8;1907:8
@cfg_label_18667:
	addi r10,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@1910:42;1910:50 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r12,r20
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r13,r21
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r14,r22
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r15,r9
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r16,r23
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1910:42;1910:50 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r20,r12
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r21,r13
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r22,r14
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r9,r15
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r23,r16
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	j @cfg_label_18655
	j @cfg_label_18714
@a_8960write_ppm_header:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$20
	push r9
	push r8
	sw r10,r2,$8
@cfg_label_18637:
	li r9,$80
; ../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:17 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	li r9,$51
; ../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22 ::<= ../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1924:4;1924:23 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	li r9,$10
; ../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1925:4;1925:17 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	lw r5,r31,$248
	lw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:24
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28
	jal @a_8534print_int
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1926:4;1926:28 ../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	li r9,$32
; ../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1927:4;1927:17 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	lw r5,r31,$248
	lw r9,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:24
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28
	jal @a_8534print_int
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1928:4;1928:28 ../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	li r9,$32
; ../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1929:4;1929:17 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	li r9,$255
; ../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17
	jal @a_8534print_int
	mov r8,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1930:4;1930:17 ../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	li r8,$10
; ../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17
	jal print_char
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1923:4;1931:17 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	mov r5,r9
	pop r8
	pop r9
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@a_8966pretrace_diffuse_rays:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r9,r11
@cfg_label_18636:
@cfg_label_18582:
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1959:13;1959:14
	slt r5,r10,r9
	bne r0,r5,@cfg_label_18632
	j @cfg_label_18631
	j @cfg_label_18633
@cfg_label_18632:
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_18633:
@cfg_label_18631:
	lw r11,r8,$8
; ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1962:14;1962:39 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39 ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1963:14;1963:15
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18625
	j @cfg_label_18624
	j @cfg_label_18626
@cfg_label_18625:
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_18626:
@cfg_label_18624:
	lw r11,r8,$12
; ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1966:9;1966:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@391:40;391:45 ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1966:9;1966:28
	bne r10,r11,@cfg_label_18613
	j @cfg_label_18612
	j @cfg_label_18614
@cfg_label_18613:
; ../cpuex2017/raytracer/min-rt.ml@1966:6;1980:16
	j @cfg_label_18620
@cfg_label_18614:
@cfg_label_18612:
	lw r11,r8,$24
; ../cpuex2017/raytracer/min-rt.ml@421:39;421:44 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1967:16;1967:32 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@421:39;421:44
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$272
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$272
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$272
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1968:1;1968:21 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r12,r8,$28
; ../cpuex2017/raytracer/min-rt.ml@435:39;435:44 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r11,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@376:40;376:45 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r5,r31,$112
	sll r6,r10,$2
	add r20,r5,r6
	lw r20,r20,$0
; ../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1975:3;1975:10 ../cpuex2017/raytracer/min-rt.ml@1967:16;1967:32
	sll r6,r9,$2
	add r21,r12,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@435:39;435:44 ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r9,$2
	add r22,r11,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@376:40;376:45 ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw f10,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	lw r5,r31,$200
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r22,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	lw r5,r31,$200
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r22,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	lw r5,r31,$200
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r23,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8817setup_startp_constants
	mov r24,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r24,$118
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	push r4
	subi r1,r1,$16
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21 ::<= ../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18 ::<= ../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18
	mov r12,r22
; ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	mov r13,r24
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8915iter_trace_diffuse_rays
	mov r23,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1974:1;1977:29 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	lw r11,r8,$20
; ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r9,$2
	add r10,r11,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@405:39;405:44 ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r5,r31,$272
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$272
	lw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$272
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@1966:6;1980:16 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_18619
@cfg_label_18620:
@cfg_label_18619:
	addi r10,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@1981:35;1981:43 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@1981:35;1981:43 ::<= ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	j @cfg_label_18582
	j @cfg_label_18636
@a_8969pretrace_pixels:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$100
	push f9
	push r23
	push r22
	push r21
	push f8
	push r20
	push r9
	push f7
	push f6
	push f4
	push r8
	mov r8,r10
	mov r20,r11
	mov r9,r12
	mov f4,f10
	mov f6,f11
	mov f7,f12
@cfg_label_18581:
@cfg_label_18513:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1989:10;1989:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18577
	j @cfg_label_18576
	j @cfg_label_18578
@cfg_label_18577:
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	pop r8
	pop f4
	pop f6
	pop f7
	pop r9
	pop r20
	pop f8
	pop r21
	pop r22
	pop r23
	pop f9
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@cfg_label_18578:
@cfg_label_18576:
	lw r5,r31,$224
	lw f8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:30 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:26
	lw r5,r31,$236
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1991:52;1991:68 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1991:52;1991:64
	sub r21,r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ../cpuex2017/raytracer/min-rt.ml@1991:52;1991:68
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68 ::<= ../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68
	jal float_of_int
	mov f9,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1991:34;1991:69 ../cpuex2017/raytracer/min-rt.ml@1991:34;1991:46
	fmul f10,f8,f9
; ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:30 ../cpuex2017/raytracer/min-rt.ml@1991:34;1991:69
	lw r5,r31,$188
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:49 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69 ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:49
	fadd f12,f11,f4
; ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:56 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:49 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r31,$152
	sw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:56 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17 ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:56
	lw r5,r31,$188
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1993:34;1993:49 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69 ../cpuex2017/raytracer/min-rt.ml@1993:34;1993:49
	fadd f12,f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:56 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:49 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r31,$152
	sw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1993:4;1993:56 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17 ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:56
	lw r5,r31,$188
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1994:34;1994:49 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69 ../cpuex2017/raytracer/min-rt.ml@1994:34;1994:49
	fadd f10,f11,f7
; ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:56 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:49 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r31,$152
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1994:4;1994:56 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17 ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:56
	push r4
	subi r1,r1,$8
	lw r10,r31,$152
; ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17
	lw r11,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1995:30;1995:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1995:30;1995:35
	jal @a_8597vecunit_sgn
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1995:4;1995:35 ../cpuex2017/raytracer/min-rt.ml@1995:4;1995:15
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$260
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$260
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$260
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1996:4;1996:16 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$432
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$432
	lw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$432
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1997:4;1997:27 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15
	fmovi f8,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2000:16;2000:19
	sll r6,r20,$2
	add r23,r8,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	fmovi f9,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2000:43;2000:46
	push r4
	subi r1,r1,$20
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15 ::<= ../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15
	mov f10,f8
; ../cpuex2017/raytracer/min-rt.ml@2000:16;2000:19 ::<= ../cpuex2017/raytracer/min-rt.ml@2000:16;2000:19
	lw r11,r31,$152
; ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17
	mov r12,r23
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::<= ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	mov f11,f9
; ../cpuex2017/raytracer/min-rt.ml@2000:43;2000:46 ::<= ../cpuex2017/raytracer/min-rt.ml@2000:43;2000:46
	jal @a_8906trace_ray
	mov r21,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2000:4;2000:46 ../cpuex2017/raytracer/min-rt.ml@2000:4;2000:13
	sll r6,r20,$2
	add r11,r8,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26
	lw r5,r31,$260
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$260
	lw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$260
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	sw f10,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2001:4;2001:31 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	sll r6,r20,$2
	add r11,r8,r6
	lw r11,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r10,r11,$24
; ../cpuex2017/raytracer/min-rt.ml@428:39;428:44 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27
	sw r9,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2002:4;2002:36 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@428:39;428:44 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	sll r6,r20,$2
	add r22,r8,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::<= ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36
	jal @a_8966pretrace_diffuse_rays
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2005:4;2005:36 ../cpuex2017/raytracer/min-rt.ml@2005:4;2005:25
	subi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2007:26;2007:29 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	addi r10,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	li r12,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r12
	bne r0,r5,@cfg_label_18515
	j @cfg_label_18514
	j @cfg_label_18516
	j @cfg_label_18517
@cfg_label_18516:
@cfg_label_18514:
	subi r13,r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18524
@cfg_label_18517:
@cfg_label_18515:
	mov r13,r10
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51
@cfg_label_18524:
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@2007:26;2007:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov r11,r13
; ../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov f4,f10
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov f6,f11
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov f7,f12
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	j @cfg_label_18513
	j @cfg_label_18581
@a_8976pretrace_line:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	push r21
	push r20
	push f7
	push f6
	push f4
	push r9
	push r8
	mov r8,r10
	mov r11,r11
	mov r9,r12
@cfg_label_18493:
	lw r5,r31,$224
	lw f4,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:24
	lw r5,r31,$236
	lw r10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2014:50;2014:66 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2014:50;2014:62
	sub r20,r11,r10
; ../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64 ../cpuex2017/raytracer/min-rt.ml@2014:50;2014:66
	push r4
	subi r1,r1,$4
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66 ::<= ../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2014:32;2014:67 ../cpuex2017/raytracer/min-rt.ml@2014:32;2014:44
	fmul f10,f4,f6
; ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:28 ../cpuex2017/raytracer/min-rt.ml@2014:32;2014:67
	lw r5,r31,$176
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:36 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67 ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:36
	lw r5,r31,$164
	lw f12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:55 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51
	fadd f4,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:36 ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:55
	lw r5,r31,$176
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2018:21;2018:36 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67 ../cpuex2017/raytracer/min-rt.ml@2018:21;2018:36
	lw r5,r31,$164
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2018:40;2018:55 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51
	fadd f6,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:36 ../cpuex2017/raytracer/min-rt.ml@2018:40;2018:55
	lw r5,r31,$176
	lw f12,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@2019:21;2019:36 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32
	fmul f11,f10,f12
; ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67 ../cpuex2017/raytracer/min-rt.ml@2019:21;2019:36
	lw r5,r31,$164
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@2019:40;2019:55 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51
	fadd f7,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:36 ../cpuex2017/raytracer/min-rt.ml@2019:40;2019:55
	lw r5,r31,$248
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:38 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:34
	subi r20,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:38
	push r4
	subi r1,r1,$24
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42 ::<= ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55 ::<= ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55
	mov f11,f6
; ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55 ::<= ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55
	mov f12,f7
; ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55 ::<= ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55
	jal @a_8969pretrace_pixels
	mov r21,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64 ../cpuex2017/raytracer/min-rt.ml@2020:2;2020:17
	mov r5,r21
	pop r8
	pop r9
	pop f4
	pop f6
	pop f7
	pop r20
	pop r21
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@a_8980scan_pixel:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$84
	push f4
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r22,r10
	mov r8,r11
	mov r9,r12
	mov r20,r13
	mov r21,r14
@cfg_label_18492:
@cfg_label_18358:
	lw r5,r31,$248
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2030:9;2030:23 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2030:9;2030:19
	slt r5,r22,r10
	bne r0,r5,@cfg_label_18488
	j @cfg_label_18487
	j @cfg_label_18489
	j @cfg_label_18490
@cfg_label_18489:
@cfg_label_18487:
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop f4
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
@cfg_label_18490:
@cfg_label_18488:
	sll r6,r22,$2
	add r12,r20,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r11,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29
	lw f10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29
	lw r5,r31,$260
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw f10,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29
	lw r5,r31,$260
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw f10,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29
	lw r5,r31,$260
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@2033:4;2033:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	addi r11,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@1858:6;1858:11 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r5,r31,$248
	lw r12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1858:15;1858:29 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2030:9;2030:19
	slt r5,r11,r12
	bne r0,r5,@cfg_label_18375
	j @cfg_label_18374
	j @cfg_label_18376
	j @cfg_label_18377
@cfg_label_18376:
@cfg_label_18374:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18472
@cfg_label_18377:
@cfg_label_18375:
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1859:11;1859:12
	slt r5,r11,r8
	bne r0,r5,@cfg_label_18370
	j @cfg_label_18369
	j @cfg_label_18371
	j @cfg_label_18372
@cfg_label_18371:
@cfg_label_18369:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18473
@cfg_label_18372:
@cfg_label_18370:
	addi r11,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@1860:10;1860:15 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	slt r5,r11,r10
	bne r0,r5,@cfg_label_18365
	j @cfg_label_18364
	j @cfg_label_18366
	j @cfg_label_18367
@cfg_label_18366:
@cfg_label_18364:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18474
@cfg_label_18367:
@cfg_label_18365:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1861:8;1861:9
	slt r5,r10,r22
	bne r0,r5,@cfg_label_18360
	j @cfg_label_18359
	j @cfg_label_18361
	j @cfg_label_18362
@cfg_label_18361:
@cfg_label_18359:
	lw r10,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18475
@cfg_label_18362:
@cfg_label_18360:
	lw r10,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@1862:3;1862:7 ::<= ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
@cfg_label_18475:
@cfg_label_18474:
@cfg_label_18473:
@cfg_label_18472:
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	bne r10,r11,@cfg_label_18404
	j @cfg_label_18403
	j @cfg_label_18405
@cfg_label_18404:
	sll r6,r22,$2
	add r23,r20,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r24
	bne r0,r5,@cfg_label_18397
	j @cfg_label_18396
	j @cfg_label_18398
@cfg_label_18397:
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36
	j @cfg_label_18470
@cfg_label_18398:
@cfg_label_18396:
	lw r11,r23,$8
; ../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	lw r10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18390
	j @cfg_label_18389
	j @cfg_label_18391
@cfg_label_18390:
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36
	j @cfg_label_18469
@cfg_label_18391:
@cfg_label_18389:
	lw r11,r23,$12
; ../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	lw r10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18380
	j @cfg_label_18379
	j @cfg_label_18381
	j @cfg_label_18382
@cfg_label_18381:
@cfg_label_18379:
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::<= ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	mov r11,r24
; ../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	jal @a_8928calc_diffuse_using_1point
	mov r25,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13 ../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_18384
@cfg_label_18382:
@cfg_label_18380:
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
@cfg_label_18384:
	addi r25,r24,$1
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::<= ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	mov r11,r25
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	jal @a_8937do_without_neighbors
	mov r24,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36 ../cpuex2017/raytracer/min-rt.ml@1851:6;1851:26
	j @cfg_label_18468
@cfg_label_18405:
@cfg_label_18403:
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47
	push r4
	subi r1,r1,$24
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r13,r20
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r14,r21
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r15,r23
; ../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47 ::<= ../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47
	jal @a_8953try_exploit_neighbors
	mov r24,r5
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36 ../cpuex2017/raytracer/min-rt.ml@2037:6;2037:27
	j @cfg_label_18467
@cfg_label_18470:
@cfg_label_18469:
@cfg_label_18468:
@cfg_label_18467:
	lw r5,r31,$260
	lw f4,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28
	jal int_of_float
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	li r10,$255
; ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	slt r5,r10,r23
	bne r0,r5,@cfg_label_18413
	j @cfg_label_18412
	j @cfg_label_18414
@cfg_label_18413:
	li r24,$255
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18463
@cfg_label_18414:
@cfg_label_18412:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	slt r5,r23,r10
	bne r0,r5,@cfg_label_18408
	j @cfg_label_18407
	j @cfg_label_18409
	j @cfg_label_18410
@cfg_label_18409:
@cfg_label_18407:
	mov r24,r23
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18461
@cfg_label_18410:
@cfg_label_18408:
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18462
@cfg_label_18463:
@cfg_label_18462:
@cfg_label_18461:
	push r4
	subi r1,r1,$4
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	jal @a_8534print_int
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1942:3;1942:28 ../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	li r24,$32
; ../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16
	push r4
	subi r1,r1,$4
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16
	jal print_char
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1943:3;1943:16 ../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	lw r5,r31,$260
	lw f4,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28
	jal int_of_float
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	li r10,$255
; ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	slt r5,r10,r23
	bne r0,r5,@cfg_label_18422
	j @cfg_label_18421
	j @cfg_label_18423
@cfg_label_18422:
	li r24,$255
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18454
@cfg_label_18423:
@cfg_label_18421:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	slt r5,r23,r10
	bne r0,r5,@cfg_label_18417
	j @cfg_label_18416
	j @cfg_label_18418
	j @cfg_label_18419
@cfg_label_18418:
@cfg_label_18416:
	mov r24,r23
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18452
@cfg_label_18419:
@cfg_label_18417:
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18453
@cfg_label_18454:
@cfg_label_18453:
@cfg_label_18452:
	push r4
	subi r1,r1,$4
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	jal @a_8534print_int
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1944:3;1944:28 ../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	li r24,$32
; ../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16
	push r4
	subi r1,r1,$4
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16
	jal print_char
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1945:3;1945:16 ../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	lw r5,r31,$260
	lw f4,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	push r4
	subi r1,r1,$4
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28
	jal int_of_float
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	li r10,$255
; ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	slt r5,r10,r23
	bne r0,r5,@cfg_label_18431
	j @cfg_label_18430
	j @cfg_label_18432
@cfg_label_18431:
	li r24,$255
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18445
@cfg_label_18432:
@cfg_label_18430:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	slt r5,r23,r10
	bne r0,r5,@cfg_label_18426
	j @cfg_label_18425
	j @cfg_label_18427
	j @cfg_label_18428
@cfg_label_18427:
@cfg_label_18425:
	mov r24,r23
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18443
@cfg_label_18428:
@cfg_label_18426:
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18444
@cfg_label_18445:
@cfg_label_18444:
@cfg_label_18443:
	push r4
	subi r1,r1,$4
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	jal @a_8534print_int
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1946:3;1946:28 ../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	li r24,$10
; ../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16
	push r4
	subi r1,r1,$4
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16
	jal print_char
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2042:4;2042:16 ../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	addi r11,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2044:16;2044:21 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@2044:16;2044:21 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r13,r20
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r14,r21
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r22,r10
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r9,r12
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r20,r13
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r21,r14
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	j @cfg_label_18358
	j @cfg_label_18492
@a_8986scan_line:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	push r26
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r25,r10
	mov r9,r11
	mov r20,r12
	mov r8,r13
	mov r24,r14
@cfg_label_18308:
	lw r5,r31,$248
	lw r23,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:19
	slt r5,r25,r23
	bne r0,r5,@cfg_label_18354
	j @cfg_label_18353
	j @cfg_label_18355
	j @cfg_label_18356
@cfg_label_18355:
@cfg_label_18353:
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_18356:
@cfg_label_18354:
	subi r22,r23,$1
; ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23
	slt r5,r25,r22
	bne r0,r5,@cfg_label_18311
	j @cfg_label_18310
	j @cfg_label_18312
	j @cfg_label_18313
@cfg_label_18312:
@cfg_label_18310:
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11
	j @cfg_label_18350
@cfg_label_18313:
@cfg_label_18311:
	addi r26,r25,$1
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	push r4
	subi r1,r1,$12
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r11,r26
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31
	mov r12,r24
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	jal @a_8976pretrace_line
	mov r21,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11 ../cpuex2017/raytracer/min-rt.ml@2054:6;2054:19
@cfg_label_18350:
	li r26,$0
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	push r4
	subi r1,r1,$20
	mov r10,r26
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16 ::<= ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	mov r11,r25
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r13,r20
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r14,r8
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	jal @a_8980scan_pixel
	mov r21,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32 ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	addi r21,r25,$1
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	addi r10,r24,$2
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18315
	j @cfg_label_18314
	j @cfg_label_18316
	j @cfg_label_18317
@cfg_label_18316:
@cfg_label_18314:
	subi r24,r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18343
@cfg_label_18317:
@cfg_label_18315:
	mov r24,r10
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
@cfg_label_18343:
	slt r5,r21,r23
	bne r0,r5,@cfg_label_18338
	j @cfg_label_18337
	j @cfg_label_18339
	j @cfg_label_18340
@cfg_label_18339:
@cfg_label_18337:
; ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57
	j @cfg_label_18341
@cfg_label_18340:
@cfg_label_18338:
	slt r5,r21,r22
	bne r0,r5,@cfg_label_18320
	j @cfg_label_18319
	j @cfg_label_18321
	j @cfg_label_18322
@cfg_label_18321:
@cfg_label_18319:
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11
	j @cfg_label_18335
@cfg_label_18322:
@cfg_label_18320:
	addi r23,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	push r4
	subi r1,r1,$12
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31
	mov r12,r24
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	jal @a_8976pretrace_line
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11 ../cpuex2017/raytracer/min-rt.ml@2054:6;2054:19
@cfg_label_18335:
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	push r4
	subi r1,r1,$20
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16 ::<= ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	mov r12,r20
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r13,r8
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r14,r9
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	jal @a_8980scan_pixel
	mov r22,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32 ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	addi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	addi r10,r24,$2
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18324
	j @cfg_label_18323
	j @cfg_label_18325
	j @cfg_label_18326
@cfg_label_18325:
@cfg_label_18323:
	subi r21,r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18328
@cfg_label_18326:
@cfg_label_18324:
	mov r21,r10
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
@cfg_label_18328:
	push r4
	subi r1,r1,$20
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r13,r20
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r14,r21
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	jal @a_8986scan_line
	mov r23,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57 ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:13
; ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57
@cfg_label_18341:
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@a_8992create_float5x3array:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$20
	sw r10,r2,$8
@cfg_label_18286:
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2068:27;2068:30
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22899
@emit_label_22898:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22898
@emit_label_22899:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2068:12;2068:30 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26 ../cpuex2017/raytracer/min-rt.ml@2068:27;2068:30
	li r12,$5
; ../cpuex2017/raytracer/min-rt.ml@2069:27;2069:28
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22901
@emit_label_22900:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22900
@emit_label_22901:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2069:27;2069:28 ../cpuex2017/raytracer/min-rt.ml@2068:12;2068:30
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2070:28;2070:29
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2070:30;2070:33
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22903
@emit_label_22902:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22902
@emit_label_22903:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2070:15;2070:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2070:28;2070:29 ../cpuex2017/raytracer/min-rt.ml@2070:30;2070:33
	sw r11,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@2070:2;2070:33 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ../cpuex2017/raytracer/min-rt.ml@2070:15;2070:33
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2071:28;2071:29
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2071:30;2071:33
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22905
@emit_label_22904:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22904
@emit_label_22905:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2071:15;2071:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2071:28;2071:29 ../cpuex2017/raytracer/min-rt.ml@2071:30;2071:33
	sw r11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2071:2;2071:33 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ../cpuex2017/raytracer/min-rt.ml@2071:15;2071:33
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2072:28;2072:29
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2072:30;2072:33
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22907
@emit_label_22906:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22906
@emit_label_22907:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2072:15;2072:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2072:28;2072:29 ../cpuex2017/raytracer/min-rt.ml@2072:30;2072:33
	sw r11,r10,$12
; ../cpuex2017/raytracer/min-rt.ml@2072:2;2072:33 ::= OiArrWrite[3] ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ../cpuex2017/raytracer/min-rt.ml@2072:15;2072:33
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2073:28;2073:29
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2073:30;2073:33
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22909
@emit_label_22908:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22908
@emit_label_22909:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2073:15;2073:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2073:28;2073:29 ../cpuex2017/raytracer/min-rt.ml@2073:30;2073:33
	sw r11,r10,$16
; ../cpuex2017/raytracer/min-rt.ml@2073:2;2073:33 ::= OiArrWrite[4] ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ../cpuex2017/raytracer/min-rt.ml@2073:15;2073:33
	mov r5,r10
; ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ::<= ../cpuex2017/raytracer/min-rt.ml@2068:2;2074:7
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@a_8994create_pixel:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$60
	push r26
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	sw r10,r2,$8
@cfg_label_18269:
	li r10,$3
; ../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2080:29;2080:32
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22911
@emit_label_22910:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22910
@emit_label_22911:
	mov r8,r7
; ../cpuex2017/raytracer/min-rt.ml@2080:14;2080:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28 ../cpuex2017/raytracer/min-rt.ml@2080:29;2080:32
; ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8992create_float5x3array
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:41 ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	li r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2082:28;2082:29
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2082:30;2082:31
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22913
@emit_label_22912:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22912
@emit_label_22913:
	mov r20,r7
; ../cpuex2017/raytracer/min-rt.ml@2082:15;2082:31 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2082:28;2082:29 ../cpuex2017/raytracer/min-rt.ml@2082:30;2082:31
	li r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2083:28;2083:29
	lw r6,r31,$12
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22915
@emit_label_22914:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22914
@emit_label_22915:
	mov r22,r7
; ../cpuex2017/raytracer/min-rt.ml@2083:15;2083:35 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2083:28;2083:29 ../cpuex2017/raytracer/min-rt.ml@2083:30;2083:35
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8992create_float5x3array
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2084:15;2084:37 ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8992create_float5x3array
	mov r24,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2085:15;2085:37 ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@2086:27;2086:28
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2086:29;2086:30
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22917
@emit_label_22916:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22916
@emit_label_22917:
	mov r25,r7
; ../cpuex2017/raytracer/min-rt.ml@2086:14;2086:30 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2086:27;2086:28 ../cpuex2017/raytracer/min-rt.ml@2086:29;2086:30
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8992create_float5x3array
	mov r26,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2087:19;2087:41 ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	mov r6,r3
	sw r8,r3,$0
	sw r9,r3,$4
	sw r20,r3,$8
	sw r22,r3,$12
	sw r23,r3,$16
	sw r24,r3,$20
	sw r25,r3,$24
	sw r26,r3,$28
	addi r3,r3,$32
	mov r5,r6
; ../cpuex2017/raytracer/min-rt.ml@2080:2;2088:72
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop r26
	addi r1,r1,$60
	pop r2
	pop r6
	jr r6
@a_8996init_line_elements:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r21,r11
@cfg_label_18268:
@cfg_label_18232:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18264
	j @cfg_label_18263
	j @cfg_label_18265
@cfg_label_18264:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_18265:
@cfg_label_18263:
; ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30 ::<= ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8994create_pixel
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r21,$2
	add r5,r8,r6
	sw r20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18255
	j @cfg_label_18254
	j @cfg_label_18256
@cfg_label_18255:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_18256:
@cfg_label_18254:
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30 ::<= ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8994create_pixel
	mov r21,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r20,$2
	add r5,r8,r6
	sw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r21,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18247
	j @cfg_label_18246
	j @cfg_label_18248
@cfg_label_18247:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_18248:
@cfg_label_18246:
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30 ::<= ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8994create_pixel
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r21,$2
	add r5,r8,r6
	sw r20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18239
	j @cfg_label_18238
	j @cfg_label_18240
@cfg_label_18239:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	pop r8
	pop r9
	pop r20
	pop r21
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@cfg_label_18240:
@cfg_label_18238:
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30 ::<= ../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8994create_pixel
	mov r21,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r20,$2
	add r5,r8,r6
	sw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r10,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	mov r21,r11
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	j @cfg_label_18232
	j @cfg_label_18268
@a_9006calc_dirvec:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	push f21
	push f20
	push f9
	push r21
	push f8
	push f7
	push r20
	push f6
	push f4
	push r9
	push r8
	mov r20,r10
	mov f8,f10
	mov f7,f11
	mov f4,f12
	mov f6,f13
	mov r9,r11
	mov r8,r12
@cfg_label_18231:
@cfg_label_18130:
	li r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2130:15;2130:16
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18227
	j @cfg_label_18226
	j @cfg_label_18228
@cfg_label_18227:
	fmul f10,f7,f7
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmovi f11,$0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	fadd f7,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26 ::<= ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26
	jal sqrt
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	fmovi f10,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17
	fdiv f7,f10,f8
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17 ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22 ::<= ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22
	jal @a_8530atan
	mov f9,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26 ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:20
	fmul f7,f9,f4
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8526sin
	mov f9,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:5
	push r4
	subi r1,r1,$4
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8528cos
	mov f20,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:15
	fdiv f10,f9,f20
; ../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18
	fmul f7,f10,f8
; ../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37 ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	addi r21,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2146:17;2146:27 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmul f10,f7,f7
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33 ../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33
	fmovi f11,$0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	fadd f9,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26 ::<= ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26
	jal sqrt
	mov f8,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	fmovi f10,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17
	fdiv f9,f10,f8
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17 ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22 ::<= ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22
	jal @a_8530atan
	mov f20,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26 ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:20
	fmul f9,f20,f6
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8526sin
	mov f20,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:5
	push r4
	subi r1,r1,$4
	mov f10,f9
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8528cos
	mov f21,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:15
	fdiv f10,f20,f21
; ../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18
	fmul f12,f10,f8
; ../cpuex2017/raytracer/min-rt.ml@2146:33;2146:54 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37 ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2146:17;2146:27 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f11,f12
; ../cpuex2017/raytracer/min-rt.ml@2146:33;2146:54 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f12,f4
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f13,f6
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f8,f10
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f7,f11
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f4,f12
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov f6,f13
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	j @cfg_label_18130
	j @cfg_label_18231
@cfg_label_18228:
@cfg_label_18226:
	fmul f11,f8,f8
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:23 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmul f12,f7,f7
; ../cpuex2017/raytracer/min-rt.ml@2131:27;2131:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fadd f10,f11,f12
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:23 ../cpuex2017/raytracer/min-rt.ml@2131:27;2131:33
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2131:37;2131:40
	fadd f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:33 ../cpuex2017/raytracer/min-rt.ml@2131:37;2131:40
	push r4
	subi r1,r1,$4
	mov f10,f6
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40 ::<= ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40
	jal sqrt
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	fdiv f10,f8,f4
; ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41
	fdiv f11,f7,f4
; ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41
	fmovi f13,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:16
	fdiv f12,f13,f4
; ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:16 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41
	lw r5,r31,$112
	sll r6,r9,$2
	add r10,r5,r6
	lw r10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:24 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r8,$2
	add r12,r10,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	lw r11,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32
	sw f10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32 ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	sw f11,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32 ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	sw f12,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@2138:4;2138:45 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32 ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	addi r11,r8,$40
; ../cpuex2017/raytracer/min-rt.ml@2139:26;2139:34 ::= Oiadd[40] ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r12,r10,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ../cpuex2017/raytracer/min-rt.ml@2139:26;2139:34
	lw r11,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f14,f11
; ../cpuex2017/raytracer/min-rt.ml@2139:44;2139:51 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	sw f10,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35 ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	sw f12,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35 ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	sw f13,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@2139:4;2139:52 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35 ../cpuex2017/raytracer/min-rt.ml@2139:44;2139:51
	addi r11,r8,$80
; ../cpuex2017/raytracer/min-rt.ml@2140:26;2140:34 ::= Oiadd[80] ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r12,r10,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ../cpuex2017/raytracer/min-rt.ml@2140:26;2140:34
	lw r11,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@2140:41;2140:48 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fmovi f15,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f14,f15,f11
; ../cpuex2017/raytracer/min-rt.ml@2140:51;2140:58 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	sw f12,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35 ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	sw f13,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35 ../cpuex2017/raytracer/min-rt.ml@2140:41;2140:48
	sw f14,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@2140:4;2140:59 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35 ../cpuex2017/raytracer/min-rt.ml@2140:51;2140:58
	addi r11,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@2141:26;2141:33 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r12,r10,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ../cpuex2017/raytracer/min-rt.ml@2141:26;2141:33
	lw r11,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@2141:37;2141:44 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fmovi f15,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f14,f15,f11
; ../cpuex2017/raytracer/min-rt.ml@2141:47;2141:54 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	fmovi f16,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f15,f16,f12
; ../cpuex2017/raytracer/min-rt.ml@2141:57;2141:64 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	sw f13,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34 ../cpuex2017/raytracer/min-rt.ml@2141:37;2141:44
	sw f14,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34 ../cpuex2017/raytracer/min-rt.ml@2141:47;2141:54
	sw f15,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@2141:4;2141:65 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34 ../cpuex2017/raytracer/min-rt.ml@2141:57;2141:64
	addi r11,r8,$41
; ../cpuex2017/raytracer/min-rt.ml@2142:26;2142:34 ::= Oiadd[41] ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r12,r10,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ../cpuex2017/raytracer/min-rt.ml@2142:26;2142:34
	lw r11,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f14,f10
; ../cpuex2017/raytracer/min-rt.ml@2142:38;2142:45 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fmovi f15,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f14,f15,f12
; ../cpuex2017/raytracer/min-rt.ml@2142:48;2142:55 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	sw f13,r11,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35 ../cpuex2017/raytracer/min-rt.ml@2142:38;2142:45
	sw f14,r11,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35 ../cpuex2017/raytracer/min-rt.ml@2142:48;2142:55
	sw f11,r11,$8
; ../cpuex2017/raytracer/min-rt.ml@2142:4;2142:59 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35 ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	addi r11,r8,$81
; ../cpuex2017/raytracer/min-rt.ml@2143:26;2143:34 ::= Oiadd[81] ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r12,r10,r6
	lw r12,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ../cpuex2017/raytracer/min-rt.ml@2143:26;2143:34
	lw r10,r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35
	fmovi f14,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f13,f14,f12
; ../cpuex2017/raytracer/min-rt.ml@2143:38;2143:45 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	sw f13,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35 ../cpuex2017/raytracer/min-rt.ml@2143:38;2143:45
	sw f10,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35 ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	sw f11,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35 ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	pop r8
	pop r9
	pop f4
	pop f6
	pop r20
	pop f7
	pop f8
	pop r21
	pop f9
	pop f20
	pop f21
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@a_9014calc_dirvecs:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	push r23
	push f8
	push f7
	push r22
	push r21
	push f6
	push r20
	push r9
	push r8
	push f4
	mov r9,r10
	mov f4,f10
	mov r20,r11
	mov r8,r12
@cfg_label_18129:
@cfg_label_18091:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2151:12;2151:13
	slt r5,r9,r10
	bne r0,r5,@cfg_label_18125
	j @cfg_label_18124
	j @cfg_label_18126
@cfg_label_18125:
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	pop f4
	pop r8
	pop r9
	pop r20
	pop f6
	pop r21
	pop r22
	pop f7
	pop f8
	pop r23
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_18126:
@cfg_label_18124:
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:30 ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:26
	fmovi f11,$0.20000000000000001110
; ../cpuex2017/raytracer/min-rt.ml@2153:35;2153:38
	fmul f10,f6,f11
; ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:30 ../cpuex2017/raytracer/min-rt.ml@2153:35;2153:38
	fmovi f11,$0.90000000000000002220
; ../cpuex2017/raytracer/min-rt.ml@2153:42;2153:45
	fsub f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:38 ../cpuex2017/raytracer/min-rt.ml@2153:42;2153:45
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17
	fmovi f7,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2154:18;2154:21
	fmovi f8,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2154:22;2154:25
	push r4
	subi r1,r1,$28
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2154:18;2154:21 ::<= ../cpuex2017/raytracer/min-rt.ml@2154:18;2154:21
	mov f11,f8
; ../cpuex2017/raytracer/min-rt.ml@2154:22;2154:25 ::<= ../cpuex2017/raytracer/min-rt.ml@2154:22;2154:25
	mov f12,f6
; ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45 ::<= ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45
	mov f13,f4
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	jal @a_9006calc_dirvec
	mov r21,r5
	addi r1,r1,$28
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2154:4;2154:46 ../cpuex2017/raytracer/min-rt.ml@2154:4;2154:15
	push r4
	subi r1,r1,$4
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2156:15;2156:31 ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:26
	fmovi f11,$0.20000000000000001110
; ../cpuex2017/raytracer/min-rt.ml@2156:36;2156:39
	fmul f10,f6,f11
; ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2156:15;2156:31 ../cpuex2017/raytracer/min-rt.ml@2156:36;2156:39
	fmovi f11,$0.10000000000000000555
; ../cpuex2017/raytracer/min-rt.ml@2156:43;2156:46
	fadd f6,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:39 ../cpuex2017/raytracer/min-rt.ml@2156:43;2156:46
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17
	fmovi f7,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2157:18;2157:21
	fmovi f8,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2157:22;2157:25
	addi r23,r8,$2
; ../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	push r4
	subi r1,r1,$28
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17
	mov f10,f7
; ../cpuex2017/raytracer/min-rt.ml@2157:18;2157:21 ::<= ../cpuex2017/raytracer/min-rt.ml@2157:18;2157:21
	mov f11,f8
; ../cpuex2017/raytracer/min-rt.ml@2157:22;2157:25 ::<= ../cpuex2017/raytracer/min-rt.ml@2157:22;2157:25
	mov f12,f6
; ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46 ::<= ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46
	mov f13,f4
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r12,r23
; ../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52 ::<= ../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52
	jal @a_9006calc_dirvec
	mov r21,r5
	addi r1,r1,$28
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2157:4;2157:53 ../cpuex2017/raytracer/min-rt.ml@2154:4;2154:15
	subi r10,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@2159:18;2159:25 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	addi r11,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	li r12,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r11,r12
	bne r0,r5,@cfg_label_18093
	j @cfg_label_18092
	j @cfg_label_18094
	j @cfg_label_18095
@cfg_label_18094:
@cfg_label_18092:
	subi r12,r11,$5
; ../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18100
@cfg_label_18095:
@cfg_label_18093:
	mov r12,r11
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50
@cfg_label_18100:
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@2159:18;2159:25 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r10,r12
; ../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov f4,f10
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r20,r10
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	j @cfg_label_18091
	j @cfg_label_18129
@a_9019calc_dirvec_rows:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$48
	push r22
	push f4
	push r21
	push r20
	push r9
	push r8
	mov r21,r10
	mov r8,r11
	mov r9,r12
@cfg_label_18090:
@cfg_label_18042:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18086
	j @cfg_label_18085
	j @cfg_label_18087
@cfg_label_18086:
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop f4
	pop r22
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_18087:
@cfg_label_18085:
	push r4
	subi r1,r1,$4
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	jal float_of_int
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30 ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:26
	fmovi f11,$0.20000000000000001110
; ../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30 ../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmovi f11,$0.90000000000000002220
; ../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38 ../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	li r22,$4
; ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	push r4
	subi r1,r1,$16
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18 ::<= ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45 ::<= ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45
	mov r11,r8
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	jal @a_9014calc_dirvecs
	mov r20,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2167:4;2167:36 ../cpuex2017/raytracer/min-rt.ml@2167:4;2167:16
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	addi r10,r8,$2
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18044
	j @cfg_label_18043
	j @cfg_label_18045
	j @cfg_label_18046
@cfg_label_18045:
@cfg_label_18043:
	subi r21,r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18073
@cfg_label_18046:
@cfg_label_18044:
	mov r21,r10
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
@cfg_label_18073:
	addi r8,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63 ::= Oiadd[4] ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18068
	j @cfg_label_18067
	j @cfg_label_18069
@cfg_label_18068:
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop f4
	pop r22
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_18069:
@cfg_label_18067:
	push r4
	subi r1,r1,$4
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29 ::<= ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29
	jal float_of_int
	mov f4,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30 ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:26
	fmovi f11,$0.20000000000000001110
; ../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmul f10,f4,f11
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30 ../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmovi f11,$0.90000000000000002220
; ../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38 ../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	li r22,$4
; ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	push r4
	subi r1,r1,$16
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18 ::<= ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	mov f10,f4
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45 ::<= ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51 ::<= ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63 ::<= ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63
	jal @a_9014calc_dirvecs
	mov r9,r5
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2167:4;2167:36 ../cpuex2017/raytracer/min-rt.ml@2167:4;2167:16
	subi r10,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29
	addi r12,r21,$2
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r12,r11
	bne r0,r5,@cfg_label_18048
	j @cfg_label_18047
	j @cfg_label_18049
	j @cfg_label_18050
@cfg_label_18049:
@cfg_label_18047:
	subi r11,r12,$5
; ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18055
@cfg_label_18050:
@cfg_label_18048:
	mov r11,r12
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
@cfg_label_18055:
	addi r12,r8,$4
; ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63 ::= Oiadd[4] ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63
	mov r13,r10
; ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r10,r11
; ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r11,r12
; ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r21,r13
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r8,r10
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r9,r11
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	j @cfg_label_18042
	j @cfg_label_18090
@a_9025create_dirvec_elements:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$32
	mov r10,r10
	mov r11,r11
@cfg_label_18041:
@cfg_label_18012:
	li r12,$0
; ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	slt r5,r11,r12
	bne r0,r5,@cfg_label_18037
	j @cfg_label_18036
	j @cfg_label_18038
@cfg_label_18037:
; ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_18038:
@cfg_label_18036:
; ../cpuex2017/raytracer/min-rt.ml@2185:30;2185:32
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22919
@emit_label_22918:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22918
@emit_label_22919:
	mov r14,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22921
@emit_label_22920:
	sw r14,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22920
@emit_label_22921:
	mov r16,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r14,r3,$0
	sw r16,r3,$4
	addi r3,r3,$8
	mov r15,r6
; ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	sll r6,r11,$2
	add r5,r10,r6
	sw r15,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	subi r14,r11,$1
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	slt r5,r14,r11
	bne r0,r5,@cfg_label_18023
	j @cfg_label_18022
	j @cfg_label_18024
@cfg_label_18023:
	mov r5,r13
; ../cpuex2017/raytracer/min-rt.ml@2185:30;2185:32 ::<= ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	addi r1,r1,$32
	pop r2
	pop r6
	jr r6
@cfg_label_18024:
@cfg_label_18022:
	li r13,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r13,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22923
@emit_label_22922:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22922
@emit_label_22923:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22925
@emit_label_22924:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22924
@emit_label_22925:
	mov r13,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r13,r3,$4
	addi r3,r3,$8
	mov r12,r6
; ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	sll r6,r14,$2
	add r5,r10,r6
	sw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	subi r11,r14,$1
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39
	mov r13,r10
; ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	mov r12,r11
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::<= ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	mov r10,r13
; ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	mov r11,r12
; ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	j @cfg_label_18012
	j @cfg_label_18041
@a_9028create_dirvecs:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r20,r10
@cfg_label_18011:
@cfg_label_17960:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18007
	j @cfg_label_18006
	j @cfg_label_18008
@cfg_label_18007:
; ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_18008:
@cfg_label_18006:
	li r10,$120
; ../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39
; ../cpuex2017/raytracer/min-rt.ml@2192:54;2192:56
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22927
@emit_label_22926:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22926
@emit_label_22927:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r8,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22929
@emit_label_22928:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22928
@emit_label_22929:
	mov r13,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r13,r3,$4
	addi r3,r3,$8
	mov r12,r6
; ../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22931
@emit_label_22930:
	sw r12,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22930
@emit_label_22931:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39 ../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	lw r5,r31,$112
	sll r6,r20,$2
	add r5,r5,r6
	sw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:57 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11 ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12 ../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57
	lw r5,r31,$112
	sll r6,r20,$2
	add r21,r5,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11 ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	li r10,$118
; ../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	li r11,$0
; ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	slt r5,r10,r11
	bne r0,r5,@cfg_label_17969
	j @cfg_label_17968
	j @cfg_label_17970
@cfg_label_17969:
	mov r23,r9
; ../cpuex2017/raytracer/min-rt.ml@2192:54;2192:56 ::<= ../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46
	j @cfg_label_17992
@cfg_label_17970:
@cfg_label_17968:
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22933
@emit_label_22932:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22932
@emit_label_22933:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r8,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22935
@emit_label_22934:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22934
@emit_label_22935:
	mov r13,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r13,r3,$4
	addi r3,r3,$8
	mov r12,r6
; ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	sw r12,r21,$472
; ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32 ::= OiArrWrite[118] ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42 ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	subi r22,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42 ::<= ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::<= ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39
	jal @a_9025create_dirvec_elements
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46 ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:26
	j @cfg_label_17991
@cfg_label_17992:
@cfg_label_17991:
	subi r21,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17986
	j @cfg_label_17985
	j @cfg_label_17987
@cfg_label_17986:
	mov r5,r9
; ../cpuex2017/raytracer/min-rt.ml@2192:54;2192:56 ::<= ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_17987:
@cfg_label_17985:
	li r10,$120
; ../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39
	li r12,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22937
@emit_label_22936:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22936
@emit_label_22937:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r8,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22939
@emit_label_22938:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22938
@emit_label_22939:
	mov r12,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r12,r3,$4
	addi r3,r3,$8
	mov r13,r6
; ../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22941
@emit_label_22940:
	sw r13,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22940
@emit_label_22941:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39 ../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	lw r5,r31,$112
	sll r6,r21,$2
	add r5,r5,r6
	sw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:57 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11 ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27 ../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57
	lw r5,r31,$112
	sll r6,r21,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11 ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27
	li r20,$118
; ../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42 ::<= ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46 ::<= ../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	jal @a_9025create_dirvec_elements
	mov r8,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46 ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:26
	subi r10,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27 ::<= ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	mov r20,r11
; ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	j @cfg_label_17960
	j @cfg_label_18011
@a_9030init_dirvec_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$36
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r20,r11
@cfg_label_17959:
@cfg_label_17922:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17955
	j @cfg_label_17954
	j @cfg_label_17956
@cfg_label_17955:
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17956:
@cfg_label_17954:
	sll r6,r20,$2
	add r21,r8,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r9,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r22,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r22,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17945
	j @cfg_label_17944
	j @cfg_label_17946
@cfg_label_17945:
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17946:
@cfg_label_17944:
	sll r6,r22,$2
	add r21,r8,r6
	lw r21,r21,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r21,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17937
	j @cfg_label_17936
	j @cfg_label_17938
@cfg_label_17937:
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17938:
@cfg_label_17936:
	sll r6,r21,$2
	add r22,r8,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17929
	j @cfg_label_17928
	j @cfg_label_17930
@cfg_label_17929:
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17930:
@cfg_label_17928:
	sll r6,r20,$2
	add r22,r8,r6
	lw r22,r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r10,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	mov r12,r8
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::<= ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	mov r8,r12
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	mov r20,r11
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	j @cfg_label_17922
	j @cfg_label_17959
@a_9033init_vecset_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$48
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_17921:
@cfg_label_17852:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_17917
	j @cfg_label_17916
	j @cfg_label_17918
@cfg_label_17917:
; ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_17918:
@cfg_label_17916:
	lw r5,r31,$112
	sll r6,r8,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:33 ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	li r21,$119
; ../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17875
	j @cfg_label_17874
	j @cfg_label_17876
@cfg_label_17875:
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17912
@cfg_label_17876:
@cfg_label_17874:
	lw r22,r9,$476
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OiArrRead[119] ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r20,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	push r4
	subi r1,r1,$8
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17865
	j @cfg_label_17864
	j @cfg_label_17866
@cfg_label_17865:
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17911
@cfg_label_17866:
@cfg_label_17864:
	sll r6,r22,$2
	add r23,r9,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r21,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17857
	j @cfg_label_17856
	j @cfg_label_17858
@cfg_label_17857:
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17910
@cfg_label_17858:
@cfg_label_17856:
	sll r6,r21,$2
	add r23,r9,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r22,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::<= ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	jal @a_9030init_dirvec_constants
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45 ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:25
	j @cfg_label_17909
@cfg_label_17912:
@cfg_label_17911:
@cfg_label_17910:
@cfg_label_17909:
	subi r9,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	slt r5,r9,r10
	bne r0,r5,@cfg_label_17904
	j @cfg_label_17903
	j @cfg_label_17905
@cfg_label_17904:
; ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	addi r1,r1,$48
	pop r2
	pop r6
	jr r6
@cfg_label_17905:
@cfg_label_17903:
	lw r5,r31,$112
	sll r6,r9,$2
	add r8,r5,r6
	lw r8,r8,$0
; ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:33 ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36
	li r22,$119
; ../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17892
	j @cfg_label_17891
	j @cfg_label_17893
@cfg_label_17892:
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17899
@cfg_label_17893:
@cfg_label_17891:
	lw r21,r8,$476
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OiArrRead[119] ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r20,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	push r4
	subi r1,r1,$8
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r21,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17882
	j @cfg_label_17881
	j @cfg_label_17883
@cfg_label_17882:
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17898
@cfg_label_17883:
@cfg_label_17881:
	sll r6,r21,$2
	add r23,r8,r6
	lw r23,r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r22,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	push r4
	subi r1,r1,$8
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ::<= ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::<= ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	jal @a_9030init_dirvec_constants
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45 ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:25
	j @cfg_label_17897
@cfg_label_17899:
@cfg_label_17898:
@cfg_label_17897:
	subi r10,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36
	mov r11,r10
; ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36 ::<= ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	mov r8,r11
; ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	j @cfg_label_17852
	j @cfg_label_17921
@a_9044setup_rect_reflection:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$88
	push r25
	push r24
	push r23
	push r22
	push f20
	push f9
	push r21
	push r20
	push r9
	push f8
	push f7
	push f6
	push f4
	push r8
	mov r10,r10
	mov r11,r11
@cfg_label_17795:
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	sll r6,r6,$1
	mov r9,r6
; ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29
	lw r5,r31,$20
	lw r8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:24
	fmovi f10,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2239:11;2239:14
	lw r10,r11,$28
; ../cpuex2017/raytracer/min-rt.ml@270:29;270:30 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29
	lw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2239:18;2239:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2239:11;2239:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2239:11;2239:14 ../cpuex2017/raytracer/min-rt.ml@2239:18;2239:31
	lw r5,r31,$420
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:25 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f6,f11,f10
; ../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:25
	lw r5,r31,$420
	lw f9,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2241:16;2241:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f7,f11,f9
; ../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2241:16;2241:25
	lw r5,r31,$420
	lw f8,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@2242:16;2242:25 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	fmovi f11,$-1.00000000000000000000
; lib_tortesia.ml@17:19;17:22
	fmul f20,f11,f8
; ../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25 ::= Ofmul lib_tortesia.ml@17:19;17:22 ../cpuex2017/raytracer/min-rt.ml@2242:16;2242:25
	addi r22,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@2243:21;2243:26 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22
	li r11,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22943
@emit_label_22942:
	sw f11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22942
@emit_label_22943:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r20,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22945
@emit_label_22944:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22944
@emit_label_22945:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r23,r6
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	sw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:25
	sw f7,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25
	sw f20,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25
	subi r21,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r24,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r22,r3,$0
	sw r23,r3,$4
	sw f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r8,$2
	add r5,r5,r6
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2243:2;2243:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r22,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@2244:18;2244:22 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28
	addi r23,r9,$2
; ../cpuex2017/raytracer/min-rt.ml@2244:25;2244:30 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22
	li r11,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22947
@emit_label_22946:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22946
@emit_label_22947:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r20,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22949
@emit_label_22948:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22948
@emit_label_22949:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r24,r6
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	sw f6,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25
	sw f9,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2241:16;2241:25
	sw f20,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25
	push r4
	subi r1,r1,$8
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r25,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r23,r3,$0
	sw r24,r3,$4
	sw f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r22,$2
	add r5,r5,r6
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2244:2;2244:50 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2244:18;2244:22 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r22,r8,$2
; ../cpuex2017/raytracer/min-rt.ml@2245:18;2245:22 ::= Oiadd[2] ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28
	addi r23,r9,$3
; ../cpuex2017/raytracer/min-rt.ml@2245:25;2245:30 ::= Oiadd[3] ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22
	li r11,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22951
@emit_label_22950:
	sw f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22950
@emit_label_22951:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r20,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22953
@emit_label_22952:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22952
@emit_label_22953:
	mov r11,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r9,r6
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	sw f6,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25
	sw f7,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25
	sw f8,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2242:16;2242:25
	push r4
	subi r1,r1,$8
	mov r10,r9
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r23,r3,$0
	sw r9,r3,$4
	sw f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r22,$2
	add r5,r5,r6
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2245:2;2245:50 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2245:18;2245:22 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r10,r8,$3
; ../cpuex2017/raytracer/min-rt.ml@2246:23;2246:29 ::= Oiadd[3] ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28
	lw r5,r31,$20
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:24 ../cpuex2017/raytracer/min-rt.ml@2246:23;2246:29
	pop r8
	pop f4
	pop f6
	pop f7
	pop f8
	pop r9
	pop r20
	pop r21
	pop f9
	pop f20
	pop r22
	pop r23
	pop r24
	pop r25
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@a_9047setup_surface_reflection:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$88
	push r22
	push r21
	push r20
	push f4
	push r9
	push r8
	mov r10,r10
	mov r11,r11
@cfg_label_17749:
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	sll r6,r6,$1
	mov r12,r6
; ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29
	addi r9,r12,$1
; ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:26 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22
	lw r5,r31,$20
	lw r8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:24
	fmovi f10,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2253:11;2253:14
	lw r10,r11,$28
; ../cpuex2017/raytracer/min-rt.ml@270:29;270:30 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29
	lw f11,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2253:18;2253:31 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fsub f4,f10,f11
; ../cpuex2017/raytracer/min-rt.ml@2253:11;2253:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2253:11;2253:14 ../cpuex2017/raytracer/min-rt.ml@2253:18;2253:31
	lw r10,r11,$16
; ../cpuex2017/raytracer/min-rt.ml@230:29;230:30 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29
	lw r5,r31,$420
	lw f16,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f11,f16,f10
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$420
	lw f12,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	lw f15,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f12,f15
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f17,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$420
	lw f11,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	lw f13,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f18,f11,f13
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f14,f17,f18
; ../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f18,$2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:8
	fmul f17,f18,f10
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:8 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fmul f18,f17,f14
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:25 ../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42
	fsub f10,f18,f16
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:43 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:30 ../cpuex2017/raytracer/min-rt.ml@100:2;100:7
	fmovi f17,$2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:8
	fmul f16,f17,f15
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:8 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fmul f17,f16,f14
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:25 ../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42
	fsub f15,f17,f12
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:43 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:30 ../cpuex2017/raytracer/min-rt.ml@100:20;100:25
	fmovi f16,$2.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:8
	fmul f12,f16,f13
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:8 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fmul f13,f12,f14
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:25 ../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42
	fsub f12,f13,f11
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:43 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:30 ../cpuex2017/raytracer/min-rt.ml@100:38;100:43
	li r11,$3
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f11,$0.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22955
@emit_label_22954:
	sw f11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22954
@emit_label_22955:
	mov r10,r7
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r11,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22957
@emit_label_22956:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22956
@emit_label_22957:
	mov r12,r7
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r12,r3,$4
	addi r3,r3,$8
	mov r20,r6
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	sw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:43
	sw f15,r10,$4
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:43
	sw f12,r10,$8
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:43
	subi r21,r11,$1
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41
	push r4
	subi r1,r1,$8
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r21
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r22,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r9,r3,$0
	sw r20,r3,$4
	sw f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r8,$2
	add r5,r5,r6
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2256:2;2259:44 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r10,r8,$1
; ../cpuex2017/raytracer/min-rt.ml@2260:23;2260:29 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28
	lw r5,r31,$20
	sw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:24 ../cpuex2017/raytracer/min-rt.ml@2260:23;2260:29
	pop r8
	pop r9
	pop f4
	pop r20
	pop r21
	pop r22
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@a_9050setup_reflections:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$36
	push r20
	push r9
	push r8
	mov r8,r10
@cfg_label_17716:
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2266:15;2266:16
	slt r5,r8,r10
	bne r0,r5,@cfg_label_17745
	j @cfg_label_17744
	j @cfg_label_17746
@cfg_label_17745:
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r5,r20
	pop r8
	pop r9
	pop r20
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17746:
@cfg_label_17744:
	lw r5,r31,$456
	sll r6,r8,$2
	add r9,r5,r6
	lw r9,r9,$0
; ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:21 ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	lw r10,r9,$8
; ../cpuex2017/raytracer/min-rt.ml@172:29;172:30 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@2268:30;2268:31
	bne r10,r11,@cfg_label_17738
	j @cfg_label_17737
	j @cfg_label_17739
@cfg_label_17738:
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r5,r20
	pop r8
	pop r9
	pop r20
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17739:
@cfg_label_17737:
	lw r10,r9,$28
; ../cpuex2017/raytracer/min-rt.ml@270:29;270:30 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	lw f10,r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2269:16;2269:29 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmovi f11,$1.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2269:31;2269:34
	flt f10,f11
	bft @emit_label_22958
	li r10,$0
	j @emit_label_22959
@emit_label_22958:
	li r10,$1
@emit_label_22959:
; ../cpuex2017/raytracer/min-rt.ml@2269:9;2269:34 ::= Olt ../cpuex2017/raytracer/min-rt.ml@2269:16;2269:29 ../cpuex2017/raytracer/min-rt.ml@2269:31;2269:34
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@2269:9;2269:34
	bne r10,r11,@cfg_label_17729
	j @cfg_label_17728
	j @cfg_label_17730
@cfg_label_17729:
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r5,r20
	pop r8
	pop r9
	pop r20
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17730:
@cfg_label_17728:
	lw r10,r9,$4
; ../cpuex2017/raytracer/min-rt.ml@162:29;162:30 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	li r11,$1
; ../cpuex2017/raytracer/min-rt.ml@2272:14;2272:15
	bne r10,r11,@cfg_label_17723
	j @cfg_label_17722
	j @cfg_label_17724
	j @cfg_label_17725
@cfg_label_17724:
@cfg_label_17722:
	push r4
	subi r1,r1,$8
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9 ::<= ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30 ::<= ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	jal @a_9044setup_rect_reflection
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9 ../cpuex2017/raytracer/min-rt.ml@2273:3;2273:24
	mov r5,r20
	pop r8
	pop r9
	pop r20
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17725:
@cfg_label_17723:
	li r11,$2
; ../cpuex2017/raytracer/min-rt.ml@2274:19;2274:20
	bne r10,r11,@cfg_label_17718
	j @cfg_label_17717
	j @cfg_label_17719
	j @cfg_label_17720
@cfg_label_17719:
@cfg_label_17717:
	push r4
	subi r1,r1,$8
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9 ::<= ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r11,r9
; ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30 ::<= ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	jal @a_9047setup_surface_reflection
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9 ../cpuex2017/raytracer/min-rt.ml@2275:3;2275:27
	mov r5,r20
	pop r8
	pop r9
	pop r20
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@cfg_label_17720:
@cfg_label_17718:
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r5,r20
	pop r8
	pop r9
	pop r20
	addi r1,r1,$36
	pop r2
	pop r6
	jr r6
@a_9052rt:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$156
	push f6
	push f4
	push r25
	push r24
	push r23
	push r22
	push r21
	push r20
	push r9
	push r8
	mov r8,r10
	mov r11,r11
@cfg_label_17567:
	lw r5,r31,$248
	sw r8,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:25 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11 ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	lw r5,r31,$248
	sw r11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2290:1;2290:25 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11 ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	slti r6,r8,$0
	add r12,r8,r6
	sra r12,r12,$1
; ../cpuex2017/raytracer/min-rt.ml@2291:21;2291:31 ::= Oibydiv[2] ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	lw r5,r31,$236
	sw r12,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2291:1;2291:31 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2291:1;2291:13 ../cpuex2017/raytracer/min-rt.ml@2291:21;2291:31
	slti r6,r11,$0
	add r10,r11,r6
	sra r10,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@2292:21;2292:31 ::= Oibydiv[2] ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	lw r5,r31,$236
	sw r10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2292:1;2292:31 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@2291:1;2291:13 ../cpuex2017/raytracer/min-rt.ml@2292:21;2292:31
	fmovi f4,$128.00000000000000000000
; ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:24
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	jal float_of_int
	mov f6,f5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2293:28;2293:47 ../cpuex2017/raytracer/min-rt.ml@2293:28;2293:40
	fdiv f10,f4,f6
; ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:47 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:24 ../cpuex2017/raytracer/min-rt.ml@2293:28;2293:47
	lw r5,r31,$224
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2293:1;2293:47 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@2293:1;2293:11 ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:47
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	lw r5,r31,$248
	lw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	mov r7,r3
	sll r5,r22,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22961
@emit_label_22960:
	sw r9,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22960
@emit_label_22961:
	mov r20,r7
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	subi r21,r22,$2
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ::= Oibysub[2] ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17580
	j @cfg_label_17579
	j @cfg_label_17581
@cfg_label_17580:
	mov r9,r20
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	j @cfg_label_17699
@cfg_label_17581:
@cfg_label_17579:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r9,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r21,$2
	add r5,r20,r6
	sw r9,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r9,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_17572
	j @cfg_label_17571
	j @cfg_label_17573
@cfg_label_17572:
	mov r9,r20
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	j @cfg_label_17698
@cfg_label_17573:
@cfg_label_17571:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r9,$2
	add r5,r20,r6
	sw r23,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r23,r9,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	push r4
	subi r1,r1,$8
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::<= ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	jal @a_8996init_line_elements
	mov r9,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31 ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
	j @cfg_label_17697
@cfg_label_17699:
@cfg_label_17698:
@cfg_label_17697:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	mov r7,r3
	sll r5,r22,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22963
@emit_label_22962:
	sw r20,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22962
@emit_label_22963:
	mov r23,r7
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17595
	j @cfg_label_17594
	j @cfg_label_17596
@cfg_label_17595:
	mov r20,r23
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	j @cfg_label_17693
@cfg_label_17596:
@cfg_label_17594:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r20,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r21,$2
	add r5,r23,r6
	sw r20,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r20,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17587
	j @cfg_label_17586
	j @cfg_label_17588
@cfg_label_17587:
	mov r20,r23
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	j @cfg_label_17692
@cfg_label_17588:
@cfg_label_17586:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r24,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r20,$2
	add r5,r23,r6
	sw r24,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r24,r20,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57
	mov r11,r24
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::<= ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	jal @a_8996init_line_elements
	mov r20,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31 ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
	j @cfg_label_17691
@cfg_label_17693:
@cfg_label_17692:
@cfg_label_17691:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r24,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	mov r7,r3
	sll r5,r22,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22965
@emit_label_22964:
	sw r24,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22964
@emit_label_22965:
	mov r23,r7
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17610
	j @cfg_label_17609
	j @cfg_label_17611
@cfg_label_17610:
	mov r21,r23
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	j @cfg_label_17687
@cfg_label_17611:
@cfg_label_17609:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r21,$2
	add r5,r23,r6
	sw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r22,r21,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43
	li r10,$0
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17602
	j @cfg_label_17601
	j @cfg_label_17603
@cfg_label_17602:
	mov r21,r23
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	j @cfg_label_17686
@cfg_label_17603:
@cfg_label_17601:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8994create_pixel
	mov r21,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r22,$2
	add r5,r23,r6
	sw r21,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r24,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	push r4
	subi r1,r1,$8
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57
	mov r11,r24
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::<= ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	jal @a_8996init_line_elements
	mov r21,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31 ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
	j @cfg_label_17685
@cfg_label_17687:
@cfg_label_17686:
@cfg_label_17685:
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8698read_screen_settings
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@710:3;710:25 ../cpuex2017/raytracer/min-rt.ml@710:3;710:23
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8700read_light
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@711:3;711:15 ../cpuex2017/raytracer/min-rt.ml@711:3;711:13
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	li r10,$60
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17621
	j @cfg_label_17620
	j @cfg_label_17622
	j @cfg_label_17623
@cfg_label_17622:
@cfg_label_17620:
	mov r24,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@712:3;712:21
	j @cfg_label_17678
@cfg_label_17623:
@cfg_label_17621:
	push r4
	subi r1,r1,$4
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@676:14;676:15 ::<= ../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	jal @a_8705read_nth_object
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r23,r10,@cfg_label_17615
	j @cfg_label_17614
	j @cfg_label_17616
@cfg_label_17615:
	lw r5,r31,$496
	sw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@712:3;712:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	j @cfg_label_17680
@cfg_label_17616:
@cfg_label_17614:
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::<= ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8707read_object
	mov r24,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@712:3;712:21 ../cpuex2017/raytracer/min-rt.ml@669:6;669:17
	j @cfg_label_17679
@cfg_label_17680:
@cfg_label_17679:
@cfg_label_17678:
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@713:20;713:21
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@713:20;713:21 ::<= ../cpuex2017/raytracer/min-rt.ml@713:20;713:21
	jal @a_8715read_and_network
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@713:3;713:21 ../cpuex2017/raytracer/min-rt.ml@713:3;713:19
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@714:33;714:34
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@714:33;714:34 ::<= ../cpuex2017/raytracer/min-rt.ml@714:33;714:34
	jal @a_8713read_or_network
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@714:17;714:34 ../cpuex2017/raytracer/min-rt.ml@714:17;714:32
	lw r5,r31,$368
	sw r22,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@2297:1;2297:17 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@714:3;714:9 ../cpuex2017/raytracer/min-rt.ml@714:17;714:34
	push r4
	subi r1,r1,$4
	mov r10,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8960write_ppm_header
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2298:1;2298:20 ../cpuex2017/raytracer/min-rt.ml@2298:1;2298:17
	li r23,$4
; ../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18 ::<= ../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18
	jal @a_9028create_dirvecs
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2217:2;2217:18 ../cpuex2017/raytracer/min-rt.ml@2217:2;2217:16
	li r23,$9
; ../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22
	li r25,$0
; ../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24
	push r4
	subi r1,r1,$12
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20 ::<= ../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20
	mov r11,r24
; ../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22 ::<= ../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22
	mov r12,r25
; ../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24 ::<= ../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24
	jal @a_9019calc_dirvec_rows
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2218:2;2218:24 ../cpuex2017/raytracer/min-rt.ml@2218:2;2218:18
	li r23,$4
; ../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25
	push r4
	subi r1,r1,$4
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25 ::<= ../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25
	jal @a_9033init_vecset_constants
	mov r22,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2299:1;2299:15 ../cpuex2017/raytracer/min-rt.ml@2219:2;2219:23
	lw r5,r31,$420
	lw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$88
	sw f10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OiArrWrite[0] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$420
	lw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$88
	sw f10,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OiArrWrite[1] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$420
	lw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OiArrRead[2] ../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$88
	sw f10,r5,$8
; ../cpuex2017/raytracer/min-rt.ml@2300:1;2300:34 ::= OiArrWrite[2] ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OiArrRead[0] ../cpuex2017/raytracer/min-rt.ml@671:6;671:15
	subi r22,r10,$1
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	push r4
	subi r1,r1,$8
	lw r10,r31,$76
; ../cpuex2017/raytracer/min-rt.ml@1095:30;1095:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:30;1095:36
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8812iter_setup_dirvec_constants
	mov r23,r5
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2301:1;2301:36 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	push r4
	subi r1,r1,$4
	mov r10,r22
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_9050setup_reflections
	mov r23,r5
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2302:1;2302:38 ../cpuex2017/raytracer/min-rt.ml@2302:1;2302:18
	li r23,$0
; ../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22
	push r4
	subi r1,r1,$12
	mov r10,r20
; ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	mov r11,r23
; ../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20 ::<= ../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20
	mov r12,r24
; ../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22 ::<= ../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22
	jal @a_8976pretrace_line
	mov r22,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2303:1;2303:22 ../cpuex2017/raytracer/min-rt.ml@2303:1;2303:14
	li r22,$0
; ../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	li r23,$2
; ../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28
	lw r5,r31,$248
	lw r11,r5,$4
; ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23 ::= OiArrRead[1] ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	slt r5,r22,r11
	bne r0,r5,@cfg_label_17645
	j @cfg_label_17644
	j @cfg_label_17646
	j @cfg_label_17647
@cfg_label_17646:
@cfg_label_17644:
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop f4
	pop f6
	addi r1,r1,$156
	pop r2
	pop r6
	jr r6
@cfg_label_17647:
@cfg_label_17645:
	subi r10,r11,$1
; ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29 ::= Oibysub[1] ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17626
	j @cfg_label_17625
	j @cfg_label_17627
	j @cfg_label_17628
@cfg_label_17627:
@cfg_label_17625:
	mov r24,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11
	j @cfg_label_17641
@cfg_label_17628:
@cfg_label_17626:
	addi r25,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	push r4
	subi r1,r1,$12
	mov r10,r21
; ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	mov r11,r25
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31
	mov r12,r23
; ../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28
	jal @a_8976pretrace_line
	mov r24,r5
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11 ../cpuex2017/raytracer/min-rt.ml@2303:1;2303:14
@cfg_label_17641:
	li r24,$0
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	push r4
	subi r1,r1,$20
	mov r10,r24
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16 ::<= ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	mov r11,r22
; ../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	mov r12,r9
; ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	mov r13,r20
; ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	mov r14,r21
; ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	jal @a_8980scan_pixel
	mov r23,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32 ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	addi r23,r22,$1
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::= Oiadd[1] ../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	li r10,$4
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	li r11,$5
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_17630
	j @cfg_label_17629
	j @cfg_label_17631
	j @cfg_label_17632
@cfg_label_17631:
@cfg_label_17629:
	subi r22,r10,$5
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::= Oibysub[5] ../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_17634
@cfg_label_17632:
@cfg_label_17630:
	mov r22,r10
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
@cfg_label_17634:
	push r4
	subi r1,r1,$20
	mov r10,r23
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	mov r11,r20
; ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	mov r12,r21
; ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	mov r13,r9
; ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	mov r14,r22
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	jal @a_8986scan_line
	mov r24,r5
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57 ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:13
	mov r5,r8
; ../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31 ::<= ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	pop r8
	pop r9
	pop r20
	pop r21
	pop r22
	pop r23
	pop r24
	pop r25
	pop f4
	pop f6
	addi r1,r1,$156
	pop r2
	pop r6
	jr r6
main:
	mflr r7
	push r7
	mov r31,r3
	addi r3,r3,$1116
	push r2
	mov r2,r1
	subi r1,r1,$1124
@cfg_label_17287:
	li r5,$0
	sw r5,r31,$1112
; lib_tortesia.ml@1:12;1:13
	li r5,$24
	sw r5,r31,$1108
; lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$1104
; lib_sinint.ml@1:28;1:31
	lw r5,r31,$1108
	lw r6,r31,$1104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22623
@emit_label_22622:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22622
@emit_label_22623:
	mov r5,r7
	sw r5,r31,$1100
; lib_sinint.ml@1:12;1:31 ::= OArrCrt lib_sinint.ml@1:25;1:27 lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$1096
; lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$1092
; lib_sinint.ml@2:28;2:31
	lw r5,r31,$1096
	lw r6,r31,$1092
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22625
@emit_label_22624:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22624
@emit_label_22625:
	mov r5,r7
	sw r5,r31,$1088
; lib_sinint.ml@2:12;2:31 ::= OArrCrt lib_sinint.ml@2:25;2:27 lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$1084
; lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$1080
; lib_sinint.ml@5:13;5:16
	lw r5,r31,$1100
	lw r6,r31,$1084
	lw r7,r31,$1080
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1076
; lib_sinint.ml@5:0;5:16 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@5:7;5:8 lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$1072
; lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$1068
; lib_sinint.ml@6:13;6:16
	lw r5,r31,$1100
	lw r6,r31,$1072
	lw r7,r31,$1068
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1064
; lib_sinint.ml@6:0;6:16 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@6:7;6:8 lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$1060
; lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$1056
; lib_sinint.ml@7:13;7:17
	lw r5,r31,$1100
	lw r6,r31,$1060
	lw r7,r31,$1056
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1052
; lib_sinint.ml@7:0;7:17 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@7:7;7:8 lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$1048
; lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$1044
; lib_sinint.ml@8:13;8:18
	lw r5,r31,$1100
	lw r6,r31,$1048
	lw r7,r31,$1044
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1040
; lib_sinint.ml@8:0;8:18 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@8:7;8:8 lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$1036
; lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$1032
; lib_sinint.ml@9:13;9:19
	lw r5,r31,$1100
	lw r6,r31,$1036
	lw r7,r31,$1032
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1028
; lib_sinint.ml@9:0;9:19 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@9:7;9:8 lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$1024
; lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$1020
; lib_sinint.ml@10:13;10:20
	lw r5,r31,$1100
	lw r6,r31,$1024
	lw r7,r31,$1020
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1016
; lib_sinint.ml@10:0;10:20 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@10:7;10:8 lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$1012
; lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$1008
; lib_sinint.ml@11:13;11:21
	lw r5,r31,$1100
	lw r6,r31,$1012
	lw r7,r31,$1008
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1004
; lib_sinint.ml@11:0;11:21 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@11:7;11:8 lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$1000
; lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$996
; lib_sinint.ml@12:13;12:22
	lw r5,r31,$1100
	lw r6,r31,$1000
	lw r7,r31,$996
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$992
; lib_sinint.ml@12:0;12:22 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@12:7;12:8 lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$988
; lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$984
; lib_sinint.ml@13:13;13:23
	lw r5,r31,$1100
	lw r6,r31,$988
	lw r7,r31,$984
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$980
; lib_sinint.ml@13:0;13:23 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@13:7;13:8 lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$976
; lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$972
; lib_sinint.ml@14:13;14:24
	lw r5,r31,$1100
	lw r6,r31,$976
	lw r7,r31,$972
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$968
; lib_sinint.ml@14:0;14:24 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@14:7;14:8 lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$964
; lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$960
; lib_sinint.ml@15:14;15:26
	lw r5,r31,$1100
	lw r6,r31,$964
	lw r7,r31,$960
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$956
; lib_sinint.ml@15:0;15:26 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@15:7;15:9 lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$952
; lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$948
; lib_sinint.ml@16:14;16:27
	lw r5,r31,$1100
	lw r6,r31,$952
	lw r7,r31,$948
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$944
; lib_sinint.ml@16:0;16:27 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@16:7;16:9 lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$940
; lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$936
; lib_sinint.ml@17:14;17:28
	lw r5,r31,$1100
	lw r6,r31,$940
	lw r7,r31,$936
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$932
; lib_sinint.ml@17:0;17:28 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@17:7;17:9 lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$928
; lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$924
; lib_sinint.ml@18:14;18:29
	lw r5,r31,$1100
	lw r6,r31,$928
	lw r7,r31,$924
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$920
; lib_sinint.ml@18:0;18:29 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@18:7;18:9 lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$916
; lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$912
; lib_sinint.ml@19:14;19:30
	lw r5,r31,$1100
	lw r6,r31,$916
	lw r7,r31,$912
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$908
; lib_sinint.ml@19:0;19:30 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@19:7;19:9 lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$904
; lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$900
; lib_sinint.ml@20:14;20:31
	lw r5,r31,$1100
	lw r6,r31,$904
	lw r7,r31,$900
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$896
; lib_sinint.ml@20:0;20:31 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@20:7;20:9 lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$892
; lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$888
; lib_sinint.ml@21:14;21:32
	lw r5,r31,$1100
	lw r6,r31,$892
	lw r7,r31,$888
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$884
; lib_sinint.ml@21:0;21:32 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@21:7;21:9 lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$880
; lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$876
; lib_sinint.ml@22:14;22:33
	lw r5,r31,$1100
	lw r6,r31,$880
	lw r7,r31,$876
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$872
; lib_sinint.ml@22:0;22:33 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@22:7;22:9 lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$868
; lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$864
; lib_sinint.ml@23:14;23:34
	lw r5,r31,$1100
	lw r6,r31,$868
	lw r7,r31,$864
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$860
; lib_sinint.ml@23:0;23:34 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@23:7;23:9 lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$856
; lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$852
; lib_sinint.ml@24:14;24:35
	lw r5,r31,$1100
	lw r6,r31,$856
	lw r7,r31,$852
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$848
; lib_sinint.ml@24:0;24:35 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@24:7;24:9 lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$844
; lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$840
; lib_sinint.ml@25:14;25:36
	lw r5,r31,$1100
	lw r6,r31,$844
	lw r7,r31,$840
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$836
; lib_sinint.ml@25:0;25:36 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@25:7;25:9 lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$832
; lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$828
; lib_sinint.ml@26:14;26:37
	lw r5,r31,$1100
	lw r6,r31,$832
	lw r7,r31,$828
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$824
; lib_sinint.ml@26:0;26:37 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@26:7;26:9 lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$820
; lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$816
; lib_sinint.ml@27:14;27:38
	lw r5,r31,$1100
	lw r6,r31,$820
	lw r7,r31,$816
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$812
; lib_sinint.ml@27:0;27:38 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@27:7;27:9 lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$808
; lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$804
; lib_sinint.ml@28:14;28:39
	lw r5,r31,$1100
	lw r6,r31,$808
	lw r7,r31,$804
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$800
; lib_sinint.ml@28:0;28:39 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@28:7;28:9 lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$796
; lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$792
; lib_sinint.ml@30:13;30:39
	lw r5,r31,$1088
	lw r6,r31,$796
	lw r7,r31,$792
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$788
; lib_sinint.ml@30:0;30:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@30:7;30:8 lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$784
; lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$780
; lib_sinint.ml@31:13;31:39
	lw r5,r31,$1088
	lw r6,r31,$784
	lw r7,r31,$780
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$776
; lib_sinint.ml@31:0;31:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@31:7;31:8 lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$772
; lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$768
; lib_sinint.ml@32:13;32:39
	lw r5,r31,$1088
	lw r6,r31,$772
	lw r7,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$764
; lib_sinint.ml@32:0;32:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@32:7;32:8 lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$760
; lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$756
; lib_sinint.ml@33:13;33:39
	lw r5,r31,$1088
	lw r6,r31,$760
	lw r7,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$752
; lib_sinint.ml@33:0;33:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@33:7;33:8 lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$748
; lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$744
; lib_sinint.ml@34:13;34:39
	lw r5,r31,$1088
	lw r6,r31,$748
	lw r7,r31,$744
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$740
; lib_sinint.ml@34:0;34:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@34:7;34:8 lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$736
; lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$732
; lib_sinint.ml@35:13;35:39
	lw r5,r31,$1088
	lw r6,r31,$736
	lw r7,r31,$732
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$728
; lib_sinint.ml@35:0;35:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@35:7;35:8 lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$724
; lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$720
; lib_sinint.ml@36:13;36:39
	lw r5,r31,$1088
	lw r6,r31,$724
	lw r7,r31,$720
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$716
; lib_sinint.ml@36:0;36:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@36:7;36:8 lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$712
; lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$708
; lib_sinint.ml@37:13;37:39
	lw r5,r31,$1088
	lw r6,r31,$712
	lw r7,r31,$708
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$704
; lib_sinint.ml@37:0;37:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@37:7;37:8 lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$700
; lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$696
; lib_sinint.ml@38:13;38:39
	lw r5,r31,$1088
	lw r6,r31,$700
	lw r7,r31,$696
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$692
; lib_sinint.ml@38:0;38:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@38:7;38:8 lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$688
; lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$684
; lib_sinint.ml@39:13;39:39
	lw r5,r31,$1088
	lw r6,r31,$688
	lw r7,r31,$684
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$680
; lib_sinint.ml@39:0;39:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@39:7;39:8 lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$676
; lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$672
; lib_sinint.ml@40:14;40:40
	lw r5,r31,$1088
	lw r6,r31,$676
	lw r7,r31,$672
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$668
; lib_sinint.ml@40:0;40:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@40:7;40:9 lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$664
; lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$660
; lib_sinint.ml@41:14;41:40
	lw r5,r31,$1088
	lw r6,r31,$664
	lw r7,r31,$660
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$656
; lib_sinint.ml@41:0;41:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@41:7;41:9 lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$652
; lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$648
; lib_sinint.ml@42:14;42:40
	lw r5,r31,$1088
	lw r6,r31,$652
	lw r7,r31,$648
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$644
; lib_sinint.ml@42:0;42:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@42:7;42:9 lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$640
; lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$636
; lib_sinint.ml@43:14;43:40
	lw r5,r31,$1088
	lw r6,r31,$640
	lw r7,r31,$636
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$632
; lib_sinint.ml@43:0;43:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@43:7;43:9 lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$628
; lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$624
; lib_sinint.ml@44:14;44:40
	lw r5,r31,$1088
	lw r6,r31,$628
	lw r7,r31,$624
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$620
; lib_sinint.ml@44:0;44:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@44:7;44:9 lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$616
; lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$612
; lib_sinint.ml@45:14;45:40
	lw r5,r31,$1088
	lw r6,r31,$616
	lw r7,r31,$612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$608
; lib_sinint.ml@45:0;45:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@45:7;45:9 lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$604
; lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$600
; lib_sinint.ml@46:14;46:40
	lw r5,r31,$1088
	lw r6,r31,$604
	lw r7,r31,$600
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$596
; lib_sinint.ml@46:0;46:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@46:7;46:9 lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$592
; lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$588
; lib_sinint.ml@47:14;47:40
	lw r5,r31,$1088
	lw r6,r31,$592
	lw r7,r31,$588
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$584
; lib_sinint.ml@47:0;47:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@47:7;47:9 lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$580
; lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$576
; lib_sinint.ml@48:14;48:40
	lw r5,r31,$1088
	lw r6,r31,$580
	lw r7,r31,$576
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$572
; lib_sinint.ml@48:0;48:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@48:7;48:9 lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$568
; lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$564
; lib_sinint.ml@49:14;49:40
	lw r5,r31,$1088
	lw r6,r31,$568
	lw r7,r31,$564
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$560
; lib_sinint.ml@49:0;49:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@49:7;49:9 lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$556
; lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$552
; lib_sinint.ml@50:14;50:40
	lw r5,r31,$1088
	lw r6,r31,$556
	lw r7,r31,$552
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$548
; lib_sinint.ml@50:0;50:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@50:7;50:9 lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$544
; lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$540
; lib_sinint.ml@51:14;51:40
	lw r5,r31,$1088
	lw r6,r31,$544
	lw r7,r31,$540
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$536
; lib_sinint.ml@51:0;51:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@51:7;51:9 lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$532
; lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$528
; lib_sinint.ml@52:14;52:40
	lw r5,r31,$1088
	lw r6,r31,$532
	lw r7,r31,$528
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$524
; lib_sinint.ml@52:0;52:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@52:7;52:9 lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$520
; lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$516
; lib_sinint.ml@53:14;53:40
	lw r5,r31,$1088
	lw r6,r31,$520
	lw r7,r31,$516
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$512
; lib_sinint.ml@53:0;53:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@53:7;53:9 lib_sinint.ml@53:14;53:40
	fmovi f1,$3.14159265358979311600
	fst f1,r31,$508
; lib_sinint.ml@55:9;55:35
	li r5,$1
	sw r5,r31,$504
; ../cpuex2017/raytracer/globals.ml@6:29;6:30
	li r5,$0
	sw r5,r31,$500
; ../cpuex2017/raytracer/globals.ml@6:31;6:32
	lw r5,r31,$504
	lw r6,r31,$500
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22627
@emit_label_22626:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22626
@emit_label_22627:
	mov r5,r7
	sw r5,r31,$496
; ../cpuex2017/raytracer/globals.ml@6:16;6:32 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@6:29;6:30 ../cpuex2017/raytracer/globals.ml@6:31;6:32
	li r5,$0
	sw r5,r31,$492
; ../cpuex2017/raytracer/globals.ml@10:27;10:28
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$488
; ../cpuex2017/raytracer/globals.ml@10:29;10:32
	lw r5,r31,$492
	lw r6,r31,$488
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22629
@emit_label_22628:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22628
@emit_label_22629:
	mov r5,r7
	sw r5,r31,$484
; ../cpuex2017/raytracer/globals.ml@10:14;10:32 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@10:27;10:28 ../cpuex2017/raytracer/globals.ml@10:29;10:32
	li r5,$60
	sw r5,r31,$480
; ../cpuex2017/raytracer/globals.ml@11:15;11:17
	li r5,$0
	sw r5,r31,$476
; ../cpuex2017/raytracer/globals.ml@11:28;11:29
	li r5,$0
	sw r5,r31,$472
; ../cpuex2017/raytracer/globals.ml@11:25;11:26
	li r5,$0
	sw r5,r31,$468
; ../cpuex2017/raytracer/globals.ml@11:22;11:23
	li r5,$0
	sw r5,r31,$464
; ../cpuex2017/raytracer/globals.ml@11:19;11:20
	mov r6,r3
	lw r5,r31,$464
	sw r5,r3,$0
	lw r5,r31,$468
	sw r5,r3,$4
	lw r5,r31,$472
	sw r5,r3,$8
	lw r5,r31,$476
	sw r5,r3,$12
	lw r5,r31,$484
	sw r5,r3,$16
	lw r5,r31,$484
	sw r5,r3,$20
	lw r5,r31,$1112
	sw r5,r3,$24
	lw r5,r31,$484
	sw r5,r3,$28
	lw r5,r31,$484
	sw r5,r3,$32
	lw r5,r31,$484
	sw r5,r3,$36
	lw r5,r31,$484
	sw r5,r3,$40
	addi r3,r3,$44
	sw r6,r31,$460
; ../cpuex2017/raytracer/globals.ml@11:19;11:78
	lw r5,r31,$480
	lw r6,r31,$460
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22631
@emit_label_22630:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22630
@emit_label_22631:
	mov r5,r7
	sw r5,r31,$456
; ../cpuex2017/raytracer/globals.ml@10:2;11:79 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@11:15;11:17 ../cpuex2017/raytracer/globals.ml@11:19;11:78
	li r5,$3
	sw r5,r31,$452
; ../cpuex2017/raytracer/globals.ml@14:26;14:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$448
; ../cpuex2017/raytracer/globals.ml@14:28;14:31
	lw r5,r31,$452
	lw r6,r31,$448
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22633
@emit_label_22632:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22632
@emit_label_22633:
	mov r5,r7
	sw r5,r31,$444
; ../cpuex2017/raytracer/globals.ml@14:13;14:31 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@14:26;14:27 ../cpuex2017/raytracer/globals.ml@14:28;14:31
	li r5,$3
	sw r5,r31,$440
; ../cpuex2017/raytracer/globals.ml@16:29;16:30
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$436
; ../cpuex2017/raytracer/globals.ml@16:31;16:34
	lw r5,r31,$440
	lw r6,r31,$436
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22635
@emit_label_22634:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22634
@emit_label_22635:
	mov r5,r7
	sw r5,r31,$432
; ../cpuex2017/raytracer/globals.ml@16:16;16:34 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@16:29;16:30 ../cpuex2017/raytracer/globals.ml@16:31;16:34
	li r5,$3
	sw r5,r31,$428
; ../cpuex2017/raytracer/globals.ml@18:25;18:26
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$424
; ../cpuex2017/raytracer/globals.ml@18:27;18:30
	lw r5,r31,$428
	lw r6,r31,$424
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22637
@emit_label_22636:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22636
@emit_label_22637:
	mov r5,r7
	sw r5,r31,$420
; ../cpuex2017/raytracer/globals.ml@18:12;18:30 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@18:25;18:26 ../cpuex2017/raytracer/globals.ml@18:27;18:30
	li r5,$1
	sw r5,r31,$416
; ../cpuex2017/raytracer/globals.ml@20:24;20:25
	fmovi f1,$255.00000000000000000000
	fst f1,r31,$412
; ../cpuex2017/raytracer/globals.ml@20:26;20:31
	lw r5,r31,$416
	lw r6,r31,$412
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22639
@emit_label_22638:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22638
@emit_label_22639:
	mov r5,r7
	sw r5,r31,$408
; ../cpuex2017/raytracer/globals.ml@20:11;20:31 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@20:24;20:25 ../cpuex2017/raytracer/globals.ml@20:26;20:31
	li r5,$50
	sw r5,r31,$404
; ../cpuex2017/raytracer/globals.ml@22:27;22:29
	li r5,$1
	sw r5,r31,$400
; ../cpuex2017/raytracer/globals.ml@22:44;22:45
	li r5,$-1
	sw r5,r31,$396
; ../cpuex2017/raytracer/globals.ml@22:47;22:49
	lw r5,r31,$400
	lw r6,r31,$396
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22641
@emit_label_22640:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22640
@emit_label_22641:
	mov r5,r7
	sw r5,r31,$392
; ../cpuex2017/raytracer/globals.ml@22:31;22:50 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@22:44;22:45 ../cpuex2017/raytracer/globals.ml@22:47;22:49
	lw r5,r31,$404
	lw r6,r31,$392
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22643
@emit_label_22642:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22642
@emit_label_22643:
	mov r5,r7
	sw r5,r31,$388
; ../cpuex2017/raytracer/globals.ml@22:14;22:51 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@22:27;22:29 ../cpuex2017/raytracer/globals.ml@22:31;22:50
	li r5,$1
	sw r5,r31,$384
; ../cpuex2017/raytracer/globals.ml@24:26;24:27
	li r5,$1
	sw r5,r31,$380
; ../cpuex2017/raytracer/globals.ml@24:42;24:43
	lw r5,r31,$388
	lw r5,r5,$0
	sw r5,r31,$376
; ../cpuex2017/raytracer/globals.ml@24:45;24:56 ::= OiArrRead[0] ../cpuex2017/raytracer/globals.ml@22:14;22:51
	lw r5,r31,$380
	lw r6,r31,$376
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22645
@emit_label_22644:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22644
@emit_label_22645:
	mov r5,r7
	sw r5,r31,$372
; ../cpuex2017/raytracer/globals.ml@24:29;24:57 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@24:42;24:43 ../cpuex2017/raytracer/globals.ml@24:45;24:56
	lw r5,r31,$384
	lw r6,r31,$372
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22647
@emit_label_22646:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22646
@emit_label_22647:
	mov r5,r7
	sw r5,r31,$368
; ../cpuex2017/raytracer/globals.ml@24:13;24:58 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@24:26;24:27 ../cpuex2017/raytracer/globals.ml@24:29;24:57
	li r5,$1
	sw r5,r31,$364
; ../cpuex2017/raytracer/globals.ml@28:31;28:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$360
; ../cpuex2017/raytracer/globals.ml@28:33;28:36
	lw r5,r31,$364
	lw r6,r31,$360
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22649
@emit_label_22648:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22648
@emit_label_22649:
	mov r5,r7
	sw r5,r31,$356
; ../cpuex2017/raytracer/globals.ml@28:18;28:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@28:31;28:32 ../cpuex2017/raytracer/globals.ml@28:33;28:36
	li r5,$1
	sw r5,r31,$352
; ../cpuex2017/raytracer/globals.ml@30:35;30:36
	li r5,$0
	sw r5,r31,$348
; ../cpuex2017/raytracer/globals.ml@30:37;30:38
	lw r5,r31,$352
	lw r6,r31,$348
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22651
@emit_label_22650:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22650
@emit_label_22651:
	mov r5,r7
	sw r5,r31,$344
; ../cpuex2017/raytracer/globals.ml@30:22;30:38 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@30:35;30:36 ../cpuex2017/raytracer/globals.ml@30:37;30:38
	li r5,$1
	sw r5,r31,$340
; ../cpuex2017/raytracer/globals.ml@32:24;32:25
	fmovi f1,$1000000000.00000000000000000000
	fst f1,r31,$336
; ../cpuex2017/raytracer/globals.ml@32:27;32:39
	lw r5,r31,$340
	lw r6,r31,$336
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22653
@emit_label_22652:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22652
@emit_label_22653:
	mov r5,r7
	sw r5,r31,$332
; ../cpuex2017/raytracer/globals.ml@32:11;32:40 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@32:24;32:25 ../cpuex2017/raytracer/globals.ml@32:27;32:39
	li r5,$3
	sw r5,r31,$328
; ../cpuex2017/raytracer/globals.ml@34:38;34:39
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$324
; ../cpuex2017/raytracer/globals.ml@34:40;34:43
	lw r5,r31,$328
	lw r6,r31,$324
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22655
@emit_label_22654:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22654
@emit_label_22655:
	mov r5,r7
	sw r5,r31,$320
; ../cpuex2017/raytracer/globals.ml@34:25;34:43 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@34:38;34:39 ../cpuex2017/raytracer/globals.ml@34:40;34:43
	li r5,$1
	sw r5,r31,$316
; ../cpuex2017/raytracer/globals.ml@36:41;36:42
	li r5,$0
	sw r5,r31,$312
; ../cpuex2017/raytracer/globals.ml@36:43;36:44
	lw r5,r31,$316
	lw r6,r31,$312
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22657
@emit_label_22656:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22656
@emit_label_22657:
	mov r5,r7
	sw r5,r31,$308
; ../cpuex2017/raytracer/globals.ml@36:28;36:44 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@36:41;36:42 ../cpuex2017/raytracer/globals.ml@36:43;36:44
	li r5,$3
	sw r5,r31,$304
; ../cpuex2017/raytracer/globals.ml@38:27;38:28
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$300
; ../cpuex2017/raytracer/globals.ml@38:29;38:32
	lw r5,r31,$304
	lw r6,r31,$300
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22659
@emit_label_22658:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22658
@emit_label_22659:
	mov r5,r7
	sw r5,r31,$296
; ../cpuex2017/raytracer/globals.ml@38:14;38:32 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@38:27;38:28 ../cpuex2017/raytracer/globals.ml@38:29;38:32
	li r5,$3
	sw r5,r31,$292
; ../cpuex2017/raytracer/globals.ml@40:33;40:34
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$288
; ../cpuex2017/raytracer/globals.ml@40:35;40:38
	lw r5,r31,$292
	lw r6,r31,$288
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22661
@emit_label_22660:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22660
@emit_label_22661:
	mov r5,r7
	sw r5,r31,$284
; ../cpuex2017/raytracer/globals.ml@40:20;40:38 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@40:33;40:34 ../cpuex2017/raytracer/globals.ml@40:35;40:38
	li r5,$3
	sw r5,r31,$280
; ../cpuex2017/raytracer/globals.ml@43:31;43:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$276
; ../cpuex2017/raytracer/globals.ml@43:33;43:36
	lw r5,r31,$280
	lw r6,r31,$276
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22663
@emit_label_22662:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22662
@emit_label_22663:
	mov r5,r7
	sw r5,r31,$272
; ../cpuex2017/raytracer/globals.ml@43:18;43:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@43:31;43:32 ../cpuex2017/raytracer/globals.ml@43:33;43:36
	li r5,$3
	sw r5,r31,$268
; ../cpuex2017/raytracer/globals.ml@45:23;45:24
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$264
; ../cpuex2017/raytracer/globals.ml@45:25;45:28
	lw r5,r31,$268
	lw r6,r31,$264
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22665
@emit_label_22664:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22664
@emit_label_22665:
	mov r5,r7
	sw r5,r31,$260
; ../cpuex2017/raytracer/globals.ml@45:10;45:28 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@45:23;45:24 ../cpuex2017/raytracer/globals.ml@45:25;45:28
	li r5,$2
	sw r5,r31,$256
; ../cpuex2017/raytracer/globals.ml@48:30;48:31
	li r5,$0
	sw r5,r31,$252
; ../cpuex2017/raytracer/globals.ml@48:32;48:33
	lw r5,r31,$256
	lw r6,r31,$252
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22667
@emit_label_22666:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22666
@emit_label_22667:
	mov r5,r7
	sw r5,r31,$248
; ../cpuex2017/raytracer/globals.ml@48:17;48:33 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@48:30;48:31 ../cpuex2017/raytracer/globals.ml@48:32;48:33
	li r5,$2
	sw r5,r31,$244
; ../cpuex2017/raytracer/globals.ml@50:32;50:33
	li r5,$0
	sw r5,r31,$240
; ../cpuex2017/raytracer/globals.ml@50:34;50:35
	lw r5,r31,$244
	lw r6,r31,$240
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22669
@emit_label_22668:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22668
@emit_label_22669:
	mov r5,r7
	sw r5,r31,$236
; ../cpuex2017/raytracer/globals.ml@50:19;50:35 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@50:32;50:33 ../cpuex2017/raytracer/globals.ml@50:34;50:35
	li r5,$1
	sw r5,r31,$232
; ../cpuex2017/raytracer/globals.ml@52:30;52:31
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$228
; ../cpuex2017/raytracer/globals.ml@52:32;52:35
	lw r5,r31,$232
	lw r6,r31,$228
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22671
@emit_label_22670:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22670
@emit_label_22671:
	mov r5,r7
	sw r5,r31,$224
; ../cpuex2017/raytracer/globals.ml@52:17;52:35 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@52:30;52:31 ../cpuex2017/raytracer/globals.ml@52:32;52:35
	li r5,$3
	sw r5,r31,$220
; ../cpuex2017/raytracer/globals.ml@55:26;55:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$216
; ../cpuex2017/raytracer/globals.ml@55:28;55:31
	lw r5,r31,$220
	lw r6,r31,$216
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22673
@emit_label_22672:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22672
@emit_label_22673:
	mov r5,r7
	sw r5,r31,$212
; ../cpuex2017/raytracer/globals.ml@55:13;55:31 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@55:26;55:27 ../cpuex2017/raytracer/globals.ml@55:28;55:31
	li r5,$3
	sw r5,r31,$208
; ../cpuex2017/raytracer/globals.ml@57:31;57:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$204
; ../cpuex2017/raytracer/globals.ml@57:33;57:36
	lw r5,r31,$208
	lw r6,r31,$204
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22675
@emit_label_22674:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22674
@emit_label_22675:
	mov r5,r7
	sw r5,r31,$200
; ../cpuex2017/raytracer/globals.ml@57:18;57:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@57:31;57:32 ../cpuex2017/raytracer/globals.ml@57:33;57:36
	li r5,$3
	sw r5,r31,$196
; ../cpuex2017/raytracer/globals.ml@60:31;60:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$192
; ../cpuex2017/raytracer/globals.ml@60:33;60:36
	lw r5,r31,$196
	lw r6,r31,$192
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22677
@emit_label_22676:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22676
@emit_label_22677:
	mov r5,r7
	sw r5,r31,$188
; ../cpuex2017/raytracer/globals.ml@60:18;60:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@60:31;60:32 ../cpuex2017/raytracer/globals.ml@60:33;60:36
	li r5,$3
	sw r5,r31,$184
; ../cpuex2017/raytracer/globals.ml@61:31;61:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$180
; ../cpuex2017/raytracer/globals.ml@61:33;61:36
	lw r5,r31,$184
	lw r6,r31,$180
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22679
@emit_label_22678:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22678
@emit_label_22679:
	mov r5,r7
	sw r5,r31,$176
; ../cpuex2017/raytracer/globals.ml@61:18;61:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@61:31;61:32 ../cpuex2017/raytracer/globals.ml@61:33;61:36
	li r5,$3
	sw r5,r31,$172
; ../cpuex2017/raytracer/globals.ml@62:31;62:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$168
; ../cpuex2017/raytracer/globals.ml@62:33;62:36
	lw r5,r31,$172
	lw r6,r31,$168
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22681
@emit_label_22680:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22680
@emit_label_22681:
	mov r5,r7
	sw r5,r31,$164
; ../cpuex2017/raytracer/globals.ml@62:18;62:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@62:31;62:32 ../cpuex2017/raytracer/globals.ml@62:33;62:36
	li r5,$3
	sw r5,r31,$160
; ../cpuex2017/raytracer/globals.ml@65:34;65:35
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$156
; ../cpuex2017/raytracer/globals.ml@65:36;65:39
	lw r5,r31,$160
	lw r6,r31,$156
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22683
@emit_label_22682:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22682
@emit_label_22683:
	mov r5,r7
	sw r5,r31,$152
; ../cpuex2017/raytracer/globals.ml@65:21;65:39 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@65:34;65:35 ../cpuex2017/raytracer/globals.ml@65:36;65:39
	li r5,$0
	sw r5,r31,$148
; ../cpuex2017/raytracer/globals.ml@69:28;69:29
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$144
; ../cpuex2017/raytracer/globals.ml@69:30;69:33
	lw r5,r31,$148
	lw r6,r31,$144
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22685
@emit_label_22684:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22684
@emit_label_22685:
	mov r5,r7
	sw r5,r31,$140
; ../cpuex2017/raytracer/globals.ml@69:15;69:33 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@69:28;69:29 ../cpuex2017/raytracer/globals.ml@69:30;69:33
	li r5,$0
	sw r5,r31,$136
; ../cpuex2017/raytracer/globals.ml@70:29;70:30
	lw r5,r31,$136
	lw r6,r31,$140
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22687
@emit_label_22686:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22686
@emit_label_22687:
	mov r5,r7
	sw r5,r31,$132
; ../cpuex2017/raytracer/globals.ml@70:16;70:37 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@70:29;70:30 ../cpuex2017/raytracer/globals.ml@69:15;69:33
	li r5,$0
	sw r5,r31,$128
; ../cpuex2017/raytracer/globals.ml@71:30;71:31
	mov r6,r3
	lw r5,r31,$140
	sw r5,r3,$0
	lw r5,r31,$132
	sw r5,r3,$4
	addi r3,r3,$8
	sw r6,r31,$124
; ../cpuex2017/raytracer/globals.ml@71:33;71:48
	lw r5,r31,$128
	lw r6,r31,$124
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22689
@emit_label_22688:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22688
@emit_label_22689:
	mov r5,r7
	sw r5,r31,$120
; ../cpuex2017/raytracer/globals.ml@71:17;71:49 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@71:30;71:31 ../cpuex2017/raytracer/globals.ml@71:33;71:48
	li r5,$5
	sw r5,r31,$116
; ../cpuex2017/raytracer/globals.ml@72:15;72:16
	lw r5,r31,$116
	lw r6,r31,$120
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22691
@emit_label_22690:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22690
@emit_label_22691:
	mov r5,r7
	sw r5,r31,$112
; ../cpuex2017/raytracer/globals.ml@69:2;72:25 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@72:15;72:16 ../cpuex2017/raytracer/globals.ml@71:17;71:49
	li r5,$0
	sw r5,r31,$108
; ../cpuex2017/raytracer/globals.ml@76:29;76:30
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$104
; ../cpuex2017/raytracer/globals.ml@76:31;76:34
	lw r5,r31,$108
	lw r6,r31,$104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22693
@emit_label_22692:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22692
@emit_label_22693:
	mov r5,r7
	sw r5,r31,$100
; ../cpuex2017/raytracer/globals.ml@76:16;76:34 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@76:29;76:30 ../cpuex2017/raytracer/globals.ml@76:31;76:34
	li r5,$3
	sw r5,r31,$96
; ../cpuex2017/raytracer/globals.ml@77:24;77:25
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$92
; ../cpuex2017/raytracer/globals.ml@77:26;77:29
	lw r5,r31,$96
	lw r6,r31,$92
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22695
@emit_label_22694:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22694
@emit_label_22695:
	mov r5,r7
	sw r5,r31,$88
; ../cpuex2017/raytracer/globals.ml@77:11;77:29 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@77:24;77:25 ../cpuex2017/raytracer/globals.ml@77:26;77:29
	li r5,$60
	sw r5,r31,$84
; ../cpuex2017/raytracer/globals.ml@78:28;78:30
	lw r5,r31,$84
	lw r6,r31,$100
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22697
@emit_label_22696:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22696
@emit_label_22697:
	mov r5,r7
	sw r5,r31,$80
; ../cpuex2017/raytracer/globals.ml@78:15;78:38 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@78:28;78:30 ../cpuex2017/raytracer/globals.ml@76:16;76:34
	mov r6,r3
	lw r5,r31,$88
	sw r5,r3,$0
	lw r5,r31,$80
	sw r5,r3,$4
	addi r3,r3,$8
	sw r6,r31,$76
; ../cpuex2017/raytracer/globals.ml@76:2;79:14
	li r5,$0
	sw r5,r31,$72
; ../cpuex2017/raytracer/globals.ml@83:29;83:30
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$68
; ../cpuex2017/raytracer/globals.ml@83:31;83:34
	lw r5,r31,$72
	lw r6,r31,$68
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22699
@emit_label_22698:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22698
@emit_label_22699:
	mov r5,r7
	sw r5,r31,$64
; ../cpuex2017/raytracer/globals.ml@83:16;83:34 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@83:29;83:30 ../cpuex2017/raytracer/globals.ml@83:31;83:34
	li r5,$0
	sw r5,r31,$60
; ../cpuex2017/raytracer/globals.ml@84:30;84:31
	lw r5,r31,$60
	lw r6,r31,$64
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22701
@emit_label_22700:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22700
@emit_label_22701:
	mov r5,r7
	sw r5,r31,$56
; ../cpuex2017/raytracer/globals.ml@84:17;84:39 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@84:30;84:31 ../cpuex2017/raytracer/globals.ml@83:16;83:34
	mov r6,r3
	lw r5,r31,$64
	sw r5,r3,$0
	lw r5,r31,$56
	sw r5,r3,$4
	addi r3,r3,$8
	sw r6,r31,$52
; ../cpuex2017/raytracer/globals.ml@85:17;85:34
	li r5,$180
	sw r5,r31,$48
; ../cpuex2017/raytracer/globals.ml@86:15;86:18
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$44
; ../cpuex2017/raytracer/globals.ml@86:32;86:35
	li r5,$0
	sw r5,r31,$40
; ../cpuex2017/raytracer/globals.ml@86:20;86:21
	mov r6,r3
	lw r5,r31,$40
	sw r5,r3,$0
	lw r5,r31,$52
	sw r5,r3,$4
	lw r5,r31,$44
	sw r5,r3,$8
	addi r3,r3,$12
	sw r6,r31,$36
; ../cpuex2017/raytracer/globals.ml@86:20;86:35
	lw r5,r31,$48
	lw r6,r31,$36
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22703
@emit_label_22702:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22702
@emit_label_22703:
	mov r5,r7
	sw r5,r31,$32
; ../cpuex2017/raytracer/globals.ml@83:2;86:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@86:15;86:18 ../cpuex2017/raytracer/globals.ml@86:20;86:35
	li r5,$1
	sw r5,r31,$28
; ../cpuex2017/raytracer/globals.ml@90:33;90:34
	li r5,$0
	sw r5,r31,$24
; ../cpuex2017/raytracer/globals.ml@90:35;90:36
	lw r5,r31,$28
	lw r6,r31,$24
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22705
@emit_label_22704:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22704
@emit_label_22705:
	mov r5,r7
	sw r5,r31,$20
; ../cpuex2017/raytracer/globals.ml@90:20;90:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@90:33;90:34 ../cpuex2017/raytracer/globals.ml@90:35;90:36
	li r5,$1
	sw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@14:23;14:24
	li r5,$0
	sw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@15:24;15:25
	li r5,$128
	sw r5,r31,$8
; ../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14
	li r5,$128
	sw r5,r31,$4
; ../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18
	push r4
	subi r1,r1,$8
	lw r10,r31,$8
; ../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14 ::<= ../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14
	lw r11,r31,$4
; ../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18 ::<= ../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18
	jal @a_9052rt
	sw r5,r31,$0
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2308:8;2308:18 ../cpuex2017/raytracer/min-rt.ml@2308:8;2308:10
	li r10,$0
; @0:-1;0:-1
	hlt
