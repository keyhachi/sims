
float_of_int:
	rtof f1,r10
	itof f5,f1
	ret 

int_of_float:
	ftoi f1,f10
	ftor r9,f1
	ret 

sqrt:
	fsqrt f5,f10
	ret 


;itof,ftoiは
;負、正とともに小数点切り捨てだが、
;floorは、負のほうは切り捨てする。


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
	or r9,r5,r6
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


@a_15166internal_sin:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	fmov f10,f10
	fmov f11,f11
	mov r10,r10
	fmov f12,f12
	mov r11,r11
@cfg_label_22686:
@cfg_label_22685:
@cfg_label_22640:
	li r12,$24
;lib/lib_sinint.ml@59:13;59:15
	bne r10,r12,@cfg_label_22681
	j @cfg_label_22680
@cfg_label_22681:
@cfg_label_22683:
	fmovi f13,$0.00000000000000000000
;lib/lib_sinint.ml@65:21;65:24
	flt f12,f13
	bft @cfg_label_22676
	j @cfg_label_22675
@cfg_label_22676:
@cfg_label_22678:
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f13,r5,$0
;lib/lib_sinint.ml@68:36;68:45::=OArrReadlib/lib_sinint.ml@66:36;66:41lib/lib_sinint.ml@59:6;68:110
	fmul f14,f11,f13
;lib/lib_sinint.ml@68:31;68:45::=Ofmullib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@68:36;68:45
	fadd f13,f10,f14
;lib/lib_sinint.ml@68:26;68:45::=Ofaddlib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@68:31;68:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f14,r5,$0
;lib/lib_sinint.ml@68:58;68:67::=OArrReadlib/lib_sinint.ml@66:36;66:41lib/lib_sinint.ml@59:6;68:110
	fmul f15,f10,f14
;lib/lib_sinint.ml@68:53;68:67::=Ofmullib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@68:58;68:67
	fsub f14,f11,f15
;lib/lib_sinint.ml@68:48;68:67::=Ofsublib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@68:53;68:67
	addi r12,r10,$1
;lib/lib_sinint.ml@68:70;68:75::=Oiadd[1]lib/lib_sinint.ml@59:6;68:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add r5,r5,r6
	fld f10,r5,$0
;lib/lib_sinint.ml@68:87;68:96::=OArrReadlib/lib_sinint.ml@66:87;66:92lib/lib_sinint.ml@59:6;68:110
	fadd f15,f12,f10
;lib/lib_sinint.ml@68:78;68:96::=Ofaddlib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@68:87;68:96
	fmov f10,f13
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	fmov f11,f14
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	mov r10,r12
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	fmov f12,f15
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	j @cfg_label_22640
@cfg_label_22675:
@cfg_label_22677:
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f13,r5,$0
;lib/lib_sinint.ml@66:36;66:45::=OArrReadlib/lib_sinint.ml@66:36;66:41lib/lib_sinint.ml@59:6;68:110
	fmul f14,f11,f13
;lib/lib_sinint.ml@66:31;66:45::=Ofmullib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@66:36;66:45
	fsub f13,f10,f14
;lib/lib_sinint.ml@66:26;66:45::=Ofsublib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@66:31;66:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f14,r5,$0
;lib/lib_sinint.ml@66:58;66:67::=OArrReadlib/lib_sinint.ml@66:36;66:41lib/lib_sinint.ml@59:6;68:110
	fmul f15,f10,f14
;lib/lib_sinint.ml@66:53;66:67::=Ofmullib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@66:58;66:67
	fadd f14,f11,f15
;lib/lib_sinint.ml@66:48;66:67::=Ofaddlib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@66:53;66:67
	addi r12,r10,$1
;lib/lib_sinint.ml@66:70;66:75::=Oiadd[1]lib/lib_sinint.ml@59:6;68:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add r5,r5,r6
	fld f10,r5,$0
;lib/lib_sinint.ml@66:87;66:96::=OArrReadlib/lib_sinint.ml@66:87;66:92lib/lib_sinint.ml@59:6;68:110
	fsub f15,f12,f10
;lib/lib_sinint.ml@66:78;66:96::=Ofsublib/lib_sinint.ml@59:6;68:110lib/lib_sinint.ml@66:87;66:96
	fmov f10,f13
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	fmov f11,f14
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	mov r10,r12
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	fmov f12,f15
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	j @cfg_label_22640
@cfg_label_22680:
@cfg_label_22682:
	li r10,$1
;lib/lib_sinint.ml@60:13;60:25
	bne r11,r10,@cfg_label_22643
	j @cfg_label_22642
@cfg_label_22643:
@cfg_label_22645:
	fmov f5,f11
;lib/lib_sinint.ml@59:6;68:110::<=lib/lib_sinint.ml@59:6;68:110
	fmov f5,f11
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22644:
@cfg_label_22642:
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f5,f10,f11
;lib/lib_sinint.ml@59:6;68:110::=Ofmullib/lib_tortesia.ml@18:19;18:22lib/lib_sinint.ml@59:6;68:110
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8523sin:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$52
	subi r1,r1,$32
	sw r6,r1,$0
	sw r20,r1,$4
	fst f9,r1,$8
	fst f8,r1,$12
	fst f7,r1,$16
	sw r8,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	fmov f9,f10
@cfg_label_22616:
	fld f2,r31,$508
	fdiv f11,f9,f2
;lib/lib_sinint.ml@70:28;70:35::=Ofdivlib/lib_sinint.ml@58:3;72:127lib/lib_sinint.ml@70:33;70:35
	fmovi f12,$0.50000000000000000000
;lib/lib_sinint.ml@70:39;70:42
	fadd f10,f11,f12
;lib/lib_sinint.ml@70:28;70:42::=Ofaddlib/lib_sinint.ml@70:28;70:35lib/lib_sinint.ml@70:39;70:42
	fmovi f11,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f4,f10,f11
;lib/lib_tortesia.ml@11:45;11:53::=Ofsublib/lib_sinint.ml@70:28;70:42lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@70:21;70:43lib/lib_tortesia.ml@11:18;11:30
	fmovi f4,$0.60725293500888277709
;lib/lib_sinint.ml@72:22;72:48
	fmovi f6,$0.00000000000000000000
;lib/lib_sinint.ml@72:49;72:52
	li r8,$0
;lib/lib_sinint.ml@72:53;72:54
	fld f2,r31,$508
	fmul f10,f8,f2
;lib/lib_sinint.ml@72:61;72:75::=Ofmullib/lib_sinint.ml@70:21;70:43lib/lib_sinint.ml@70:33;70:35
	fsub f7,f9,f10
;lib/lib_sinint.ml@72:56;72:75::=Ofsublib/lib_sinint.ml@58:3;72:127lib/lib_sinint.ml@72:61;72:75
	fmovi f11,$2.00000000000000000000
;lib/lib_sinint.ml@72:109;72:112
	fdiv f10,f8,f11
;lib/lib_sinint.ml@72:97;72:112::=Ofdivlib/lib_sinint.ml@70:21;70:43lib/lib_sinint.ml@72:109;72:112
	fmovi f11,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f9,f10,f11
;lib/lib_tortesia.ml@11:45;11:53::=Ofsublib/lib_sinint.ml@72:97;72:112lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@72:90;72:113lib/lib_tortesia.ml@11:18;11:30
	fmovi f11,$2.00000000000000000000
;lib/lib_sinint.ml@72:117;72:120
	fmul f10,f9,f11
;lib/lib_sinint.ml@72:90;72:120::=Ofmullib/lib_sinint.ml@72:90;72:113lib/lib_sinint.ml@72:117;72:120
	fsub f11,f8,f10
;lib/lib_sinint.ml@72:78;72:120::=Ofsublib/lib_sinint.ml@70:21;70:43lib/lib_sinint.ml@72:90;72:120
	fmovi f10,$1.00000000000000000000
;lib/lib_sinint.ml@72:123;72:126
	feq f11,f10
	bft @emit_label_22771
	li r20,$0
	j @emit_label_22772
@emit_label_22771:
	li r20,$1
@emit_label_22772:
;lib/lib_sinint.ml@72:78;72:126::=Oeqlib/lib_sinint.ml@72:78;72:120lib/lib_sinint.ml@72:123;72:126
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	fmov f10,f4
;lib/lib_sinint.ml@72:22;72:48::<=lib/lib_sinint.ml@72:22;72:48
	fmov f11,f6
;lib/lib_sinint.ml@72:49;72:52::<=lib/lib_sinint.ml@72:49;72:52
	mov r10,r8
;lib/lib_sinint.ml@72:53;72:54::<=lib/lib_sinint.ml@72:53;72:54
	fmov f12,f7
;lib/lib_sinint.ml@72:56;72:75::<=lib/lib_sinint.ml@72:56;72:75
	mov r11,r20
;lib/lib_sinint.ml@72:78;72:126::<=lib/lib_sinint.ml@72:78;72:126
	jal @a_15166internal_sin
	fmov f8,f5
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@58:3;72:127lib/lib_sinint.ml@72:9;72:21
	fmov f5,f8
	lw r6,r1,$0
	lw r20,r1,$4
	fld f9,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	lw r8,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	addi r1,r1,$32
	addi r1,r1,$52
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_15077internal_cos:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	fmov f10,f10
	fmov f11,f11
	mov r10,r10
	fmov f12,f12
	mov r11,r11
@cfg_label_22615:
@cfg_label_22614:
@cfg_label_22569:
	li r12,$24
;lib/lib_sinint.ml@77:13;77:15
	bne r10,r12,@cfg_label_22610
	j @cfg_label_22609
@cfg_label_22610:
@cfg_label_22612:
	fmovi f13,$0.00000000000000000000
;lib/lib_sinint.ml@83:21;83:24
	flt f12,f13
	bft @cfg_label_22605
	j @cfg_label_22604
@cfg_label_22605:
@cfg_label_22607:
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f13,r5,$0
;lib/lib_sinint.ml@86:36;86:45::=OArrReadlib/lib_sinint.ml@84:36;84:41lib/lib_sinint.ml@77:6;86:110
	fmul f14,f11,f13
;lib/lib_sinint.ml@86:31;86:45::=Ofmullib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@86:36;86:45
	fadd f13,f10,f14
;lib/lib_sinint.ml@86:26;86:45::=Ofaddlib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@86:31;86:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f14,r5,$0
;lib/lib_sinint.ml@86:58;86:67::=OArrReadlib/lib_sinint.ml@84:36;84:41lib/lib_sinint.ml@77:6;86:110
	fmul f15,f10,f14
;lib/lib_sinint.ml@86:53;86:67::=Ofmullib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@86:58;86:67
	fsub f14,f11,f15
;lib/lib_sinint.ml@86:48;86:67::=Ofsublib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@86:53;86:67
	addi r12,r10,$1
;lib/lib_sinint.ml@86:70;86:75::=Oiadd[1]lib/lib_sinint.ml@77:6;86:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add r5,r5,r6
	fld f10,r5,$0
;lib/lib_sinint.ml@86:87;86:96::=OArrReadlib/lib_sinint.ml@84:87;84:92lib/lib_sinint.ml@77:6;86:110
	fadd f15,f12,f10
;lib/lib_sinint.ml@86:78;86:96::=Ofaddlib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@86:87;86:96
	fmov f10,f13
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	fmov f11,f14
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	mov r10,r12
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	fmov f12,f15
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	j @cfg_label_22569
@cfg_label_22604:
@cfg_label_22606:
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f13,r5,$0
;lib/lib_sinint.ml@84:36;84:45::=OArrReadlib/lib_sinint.ml@84:36;84:41lib/lib_sinint.ml@77:6;86:110
	fmul f14,f11,f13
;lib/lib_sinint.ml@84:31;84:45::=Ofmullib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@84:36;84:45
	fsub f13,f10,f14
;lib/lib_sinint.ml@84:26;84:45::=Ofsublib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@84:31;84:45
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f14,r5,$0
;lib/lib_sinint.ml@84:58;84:67::=OArrReadlib/lib_sinint.ml@84:36;84:41lib/lib_sinint.ml@77:6;86:110
	fmul f15,f10,f14
;lib/lib_sinint.ml@84:53;84:67::=Ofmullib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@84:58;84:67
	fadd f14,f11,f15
;lib/lib_sinint.ml@84:48;84:67::=Ofaddlib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@84:53;84:67
	addi r12,r10,$1
;lib/lib_sinint.ml@84:70;84:75::=Oiadd[1]lib/lib_sinint.ml@77:6;86:110
	lw r5,r31,$1088
	sll r6,r10,$2
	add r5,r5,r6
	fld f10,r5,$0
;lib/lib_sinint.ml@84:87;84:96::=OArrReadlib/lib_sinint.ml@84:87;84:92lib/lib_sinint.ml@77:6;86:110
	fsub f15,f12,f10
;lib/lib_sinint.ml@84:78;84:96::=Ofsublib/lib_sinint.ml@77:6;86:110lib/lib_sinint.ml@84:87;84:96
	fmov f10,f13
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	fmov f11,f14
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	mov r10,r12
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	fmov f12,f15
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	j @cfg_label_22569
@cfg_label_22609:
@cfg_label_22611:
	li r10,$1
;lib/lib_sinint.ml@78:13;78:25
	bne r11,r10,@cfg_label_22572
	j @cfg_label_22571
@cfg_label_22572:
@cfg_label_22574:
	fmov f5,f10
;lib/lib_sinint.ml@77:6;86:110::<=lib/lib_sinint.ml@77:6;86:110
	fmov f5,f10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22573:
@cfg_label_22571:
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f5,f11,f10
;lib/lib_sinint.ml@77:6;86:110::=Ofmullib/lib_tortesia.ml@18:19;18:22lib/lib_sinint.ml@77:6;86:110
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8525cos:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$52
	subi r1,r1,$32
	sw r6,r1,$0
	sw r20,r1,$4
	fst f9,r1,$8
	fst f8,r1,$12
	fst f7,r1,$16
	sw r8,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	fmov f9,f10
@cfg_label_22545:
	fld f2,r31,$508
	fdiv f11,f9,f2
;lib/lib_sinint.ml@88:28;88:35::=Ofdivlib/lib_sinint.ml@76:3;90:127lib/lib_sinint.ml@88:33;88:35
	fmovi f12,$0.50000000000000000000
;lib/lib_sinint.ml@88:39;88:42
	fadd f10,f11,f12
;lib/lib_sinint.ml@88:28;88:42::=Ofaddlib/lib_sinint.ml@88:28;88:35lib/lib_sinint.ml@88:39;88:42
	fmovi f11,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f4,f10,f11
;lib/lib_tortesia.ml@11:45;11:53::=Ofsublib/lib_sinint.ml@88:28;88:42lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@88:21;88:43lib/lib_tortesia.ml@11:18;11:30
	fmovi f4,$0.60725293500888277709
;lib/lib_sinint.ml@90:22;90:48
	fmovi f6,$0.00000000000000000000
;lib/lib_sinint.ml@90:49;90:52
	li r8,$0
;lib/lib_sinint.ml@90:53;90:54
	fld f2,r31,$508
	fmul f10,f8,f2
;lib/lib_sinint.ml@90:61;90:75::=Ofmullib/lib_sinint.ml@88:21;88:43lib/lib_sinint.ml@88:33;88:35
	fsub f7,f9,f10
;lib/lib_sinint.ml@90:56;90:75::=Ofsublib/lib_sinint.ml@76:3;90:127lib/lib_sinint.ml@90:61;90:75
	fmovi f11,$2.00000000000000000000
;lib/lib_sinint.ml@90:109;90:112
	fdiv f10,f8,f11
;lib/lib_sinint.ml@90:97;90:112::=Ofdivlib/lib_sinint.ml@88:21;88:43lib/lib_sinint.ml@90:109;90:112
	fmovi f11,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f9,f10,f11
;lib/lib_tortesia.ml@11:45;11:53::=Ofsublib/lib_sinint.ml@90:97;90:112lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@90:90;90:113lib/lib_tortesia.ml@11:18;11:30
	fmovi f11,$2.00000000000000000000
;lib/lib_sinint.ml@90:117;90:120
	fmul f10,f9,f11
;lib/lib_sinint.ml@90:90;90:120::=Ofmullib/lib_sinint.ml@90:90;90:113lib/lib_sinint.ml@90:117;90:120
	fsub f11,f8,f10
;lib/lib_sinint.ml@90:78;90:120::=Ofsublib/lib_sinint.ml@88:21;88:43lib/lib_sinint.ml@90:90;90:120
	fmovi f10,$1.00000000000000000000
;lib/lib_sinint.ml@90:123;90:126
	feq f11,f10
	bft @emit_label_22773
	li r20,$0
	j @emit_label_22774
@emit_label_22773:
	li r20,$1
@emit_label_22774:
;lib/lib_sinint.ml@90:78;90:126::=Oeqlib/lib_sinint.ml@90:78;90:120lib/lib_sinint.ml@90:123;90:126
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	fmov f10,f4
;lib/lib_sinint.ml@90:22;90:48::<=lib/lib_sinint.ml@90:22;90:48
	fmov f11,f6
;lib/lib_sinint.ml@90:49;90:52::<=lib/lib_sinint.ml@90:49;90:52
	mov r10,r8
;lib/lib_sinint.ml@90:53;90:54::<=lib/lib_sinint.ml@90:53;90:54
	fmov f12,f7
;lib/lib_sinint.ml@90:56;90:75::<=lib/lib_sinint.ml@90:56;90:75
	mov r11,r20
;lib/lib_sinint.ml@90:78;90:126::<=lib/lib_sinint.ml@90:78;90:126
	jal @a_15077internal_cos
	fmov f8,f5
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@76:3;90:127lib/lib_sinint.ml@90:9;90:21
	fmov f5,f8
	lw r6,r1,$0
	lw r20,r1,$4
	fld f9,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	lw r8,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	addi r1,r1,$32
	addi r1,r1,$52
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_15017internal_atan:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$4
	sw r6,r1,$0
	fmov f10,f10
	fmov f11,f11
	mov r10,r10
	fmov f12,f12
@cfg_label_22544:
@cfg_label_22543:
@cfg_label_22506:
	li r11,$24
;lib/lib_sinint.ml@94:10;94:12
	bne r10,r11,@cfg_label_22539
@cfg_label_22540:
	fmov f5,f12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22541:
@cfg_label_22539:
	fmovi f13,$0.00000000000000000000
;lib/lib_sinint.ml@97:13;97:16
	flt f11,f13
	bft @cfg_label_22534
	j @cfg_label_22533
@cfg_label_22534:
@cfg_label_22536:
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f13,r5,$0
;lib/lib_sinint.ml@98:34;98:43::=OArrReadlib/lib_sinint.ml@100:34;100:39lib/lib_sinint.ml@94:3;100:95
	fmul f14,f11,f13
;lib/lib_sinint.ml@98:29;98:43::=Ofmullib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@98:34;98:43
	fsub f13,f10,f14
;lib/lib_sinint.ml@98:24;98:43::=Ofsublib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@98:29;98:43
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f14,r5,$0
;lib/lib_sinint.ml@98:56;98:65::=OArrReadlib/lib_sinint.ml@100:34;100:39lib/lib_sinint.ml@94:3;100:95
	fmul f15,f10,f14
;lib/lib_sinint.ml@98:51;98:65::=Ofmullib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@98:56;98:65
	fadd f14,f11,f15
;lib/lib_sinint.ml@98:46;98:65::=Ofaddlib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@98:51;98:65
	addi r11,r10,$1
;lib/lib_sinint.ml@98:68;98:73::=Oiadd[1]lib/lib_sinint.ml@94:3;100:95
	lw r5,r31,$1088
	sll r6,r10,$2
	add r5,r5,r6
	fld f10,r5,$0
;lib/lib_sinint.ml@98:85;98:94::=OArrReadlib/lib_sinint.ml@100:85;100:90lib/lib_sinint.ml@94:3;100:95
	fsub f15,f12,f10
;lib/lib_sinint.ml@98:76;98:94::=Ofsublib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@98:85;98:94
	fmov f10,f13
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	fmov f11,f14
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	mov r10,r11
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	fmov f12,f15
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	j @cfg_label_22506
@cfg_label_22533:
@cfg_label_22535:
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f13,r5,$0
;lib/lib_sinint.ml@100:34;100:43::=OArrReadlib/lib_sinint.ml@100:34;100:39lib/lib_sinint.ml@94:3;100:95
	fmul f14,f11,f13
;lib/lib_sinint.ml@100:29;100:43::=Ofmullib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@100:34;100:43
	fadd f13,f10,f14
;lib/lib_sinint.ml@100:24;100:43::=Ofaddlib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@100:29;100:43
	lw r5,r31,$1100
	sll r6,r10,$2
	add r5,r5,r6
	fld f14,r5,$0
;lib/lib_sinint.ml@100:56;100:65::=OArrReadlib/lib_sinint.ml@100:34;100:39lib/lib_sinint.ml@94:3;100:95
	fmul f15,f10,f14
;lib/lib_sinint.ml@100:51;100:65::=Ofmullib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@100:56;100:65
	fsub f14,f11,f15
;lib/lib_sinint.ml@100:46;100:65::=Ofsublib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@100:51;100:65
	addi r11,r10,$1
;lib/lib_sinint.ml@100:68;100:73::=Oiadd[1]lib/lib_sinint.ml@94:3;100:95
	lw r5,r31,$1088
	sll r6,r10,$2
	add r5,r5,r6
	fld f10,r5,$0
;lib/lib_sinint.ml@100:85;100:94::=OArrReadlib/lib_sinint.ml@100:85;100:90lib/lib_sinint.ml@94:3;100:95
	fadd f15,f12,f10
;lib/lib_sinint.ml@100:76;100:94::=Ofaddlib/lib_sinint.ml@94:3;100:95lib/lib_sinint.ml@100:85;100:94
	fmov f10,f13
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	fmov f11,f14
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	mov r10,r11
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	fmov f12,f15
;lib/lib_sinint.ml@94:3;100:95::<=lib/lib_sinint.ml@94:3;100:95
	j @cfg_label_22506
@a_8527atan:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$20
	subi r1,r1,$24
	sw r6,r1,$0
	fst f8,r1,$4
	fst f7,r1,$8
	sw r8,r1,$12
	fst f6,r1,$16
	fst f4,r1,$20
	fmov f6,f10
@cfg_label_22502:
	fmovi f4,$1.00000000000000000000
;lib/lib_sinint.ml@102:17;102:20
	li r8,$0
;lib/lib_sinint.ml@102:23;102:24
	fmovi f7,$0.00000000000000000000
;lib/lib_sinint.ml@102:25;102:28
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	fmov f10,f4
;lib/lib_sinint.ml@102:17;102:20::<=lib/lib_sinint.ml@102:17;102:20
	fmov f11,f6
;lib/lib_sinint.ml@93:0;102:28::<=lib/lib_sinint.ml@93:0;102:28
	mov r10,r8
;lib/lib_sinint.ml@102:23;102:24::<=lib/lib_sinint.ml@102:23;102:24
	fmov f12,f7
;lib/lib_sinint.ml@102:25;102:28::<=lib/lib_sinint.ml@102:25;102:28
	jal @a_15017internal_atan
	fmov f8,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@93:0;102:28lib/lib_sinint.ml@102:3;102:16
	fmov f5,f8
	lw r6,r1,$0
	fld f8,r1,$4
	fld f7,r1,$8
	lw r8,r1,$12
	fld f6,r1,$16
	fld f4,r1,$20
	addi r1,r1,$24
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_14977f:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$12
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_22501:
@cfg_label_22500:
@cfg_label_22499:
@cfg_label_22498:
@cfg_label_22450:
	addi r13,r10,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@109:2;111:42
	slt r5,r13,r11
	bne r0,r5,@cfg_label_22494
@cfg_label_22495:
	mov r9,r10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22496:
@cfg_label_22494:
	add r14,r10,r11
;lib/lib_sinint.ml@110:11;110:14::=Oaddlib/lib_sinint.ml@109:2;111:42lib/lib_sinint.ml@109:2;111:42
	slti r6,r14,$0
	add r9,r14,r6
	sra r9,r9,$1
;lib/lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib/lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	mov r14,r6
;lib/lib_sinint.ml@111:5;111:11::=Oimul[10]lib/lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_22487
	j @cfg_label_22486
@cfg_label_22487:
@cfg_label_22489:
	slt r5,r13,r9
	bne r0,r5,@cfg_label_22483
@cfg_label_22484:
	mov r9,r10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22485:
@cfg_label_22483:
	add r11,r10,r9
;lib/lib_sinint.ml@110:11;110:14::=Oaddlib/lib_sinint.ml@109:2;111:42lib/lib_sinint.ml@110:10;110:19
	slti r6,r11,$0
	add r13,r11,r6
	sra r13,r13,$1
;lib/lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib/lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	mov r11,r6
;lib/lib_sinint.ml@111:5;111:11::=Oimul[10]lib/lib_sinint.ml@110:10;110:19
	slt r5,r12,r11
	bne r0,r5,@cfg_label_22476
@cfg_label_22477:
	mov r10,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	mov r11,r9
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_22450
@cfg_label_22476:
@cfg_label_22478:
	mov r11,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_22450
@cfg_label_22486:
@cfg_label_22488:
	addi r10,r9,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@110:10;110:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_22465
@cfg_label_22466:
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22467:
@cfg_label_22465:
	add r10,r9,r11
;lib/lib_sinint.ml@110:11;110:14::=Oaddlib/lib_sinint.ml@110:10;110:19lib/lib_sinint.ml@109:2;111:42
	slti r6,r10,$0
	add r13,r10,r6
	sra r13,r13,$1
;lib/lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib/lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@111:5;111:11::=Oimul[10]lib/lib_sinint.ml@110:10;110:19
	slt r5,r12,r10
	bne r0,r5,@cfg_label_22458
@cfg_label_22459:
	mov r10,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_22450
@cfg_label_22458:
@cfg_label_22460:
	mov r10,r9
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	mov r11,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_22450
@a_8529divten:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$24
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	sw r20,r1,$16
	sw r8,r1,$20
	mov r8,r10
@cfg_label_22409:
	li r10,$0
;lib/lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_22446
@cfg_label_22447:
	li r23,$0
;lib/lib_sinint.ml@108:1;115:25
	mov r9,r23
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22448:
@cfg_label_22446:
	li r10,$0
;lib/lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22441
	j @cfg_label_22440
@cfg_label_22441:
@cfg_label_22443:
	li r20,$0
;lib/lib_sinint.ml@115:12;115:13
	sub r21,r0,r8
;lib/lib_sinint.ml@115:15;115:17::=Ominuslib/lib_sinint.ml@108:1;115:25
	addi r10,r20,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@115:12;115:13
	slt r5,r10,r21
	bne r0,r5,@cfg_label_22431
@cfg_label_22432:
	mov r22,r20
;lib/lib_sinint.ml@115:12;115:13::<=lib/lib_sinint.ml@115:10;115:23
	j @cfg_label_22436
@cfg_label_22431:
@cfg_label_22433:
	addi r10,r21,$0
;lib/lib_sinint.ml@110:11;110:14::=Oiadd[0]lib/lib_sinint.ml@115:15;115:17
	slti r6,r10,$0
	add r8,r10,r6
	sra r8,r8,$1
;lib/lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib/lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@111:5;111:11::=Oimul[10]lib/lib_sinint.ml@110:10;110:19
	slt r5,r21,r10
	bne r0,r5,@cfg_label_22424
@cfg_label_22425:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r8
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r11,r21
;lib/lib_sinint.ml@115:15;115:17::<=lib/lib_sinint.ml@115:15;115:17
	mov r12,r21
;lib/lib_sinint.ml@115:15;115:17::<=lib/lib_sinint.ml@115:15;115:17
	jal @a_14977f
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@115:10;115:23lib/lib_sinint.ml@111:22;111:23
	j @cfg_label_22435
@cfg_label_22424:
@cfg_label_22426:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib/lib_sinint.ml@115:12;115:13::<=lib/lib_sinint.ml@115:12;115:13
	mov r11,r8
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r12,r21
;lib/lib_sinint.ml@115:15;115:17::<=lib/lib_sinint.ml@115:15;115:17
	jal @a_14977f
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@115:10;115:23lib/lib_sinint.ml@111:22;111:23
@cfg_label_22435:
@cfg_label_22436:
	sub r23,r0,r22
;lib/lib_sinint.ml@108:1;115:25::=Ominuslib/lib_sinint.ml@115:10;115:23
	mov r9,r23
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22442:
@cfg_label_22440:
	li r20,$0
;lib/lib_sinint.ml@114:19;114:20
	addi r10,r20,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@114:19;114:20
	slt r5,r10,r8
	bne r0,r5,@cfg_label_22418
@cfg_label_22419:
	mov r23,r20
;lib/lib_sinint.ml@114:19;114:20::<=lib/lib_sinint.ml@108:1;115:25
	mov r9,r20
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22420:
@cfg_label_22418:
	addi r10,r8,$0
;lib/lib_sinint.ml@110:11;110:14::=Oiadd[0]lib/lib_sinint.ml@108:1;115:25
	slti r6,r10,$0
	add r21,r10,r6
	sra r21,r21,$1
;lib/lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib/lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@111:5;111:11::=Oimul[10]lib/lib_sinint.ml@110:10;110:19
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22411
@cfg_label_22412:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r11,r8
;lib/lib_sinint.ml@108:1;115:25::<=lib/lib_sinint.ml@108:1;115:25
	mov r12,r8
;lib/lib_sinint.ml@108:1;115:25::<=lib/lib_sinint.ml@108:1;115:25
	jal @a_14977f
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@108:1;115:25lib/lib_sinint.ml@111:22;111:23
	mov r9,r23
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22413:
@cfg_label_22411:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib/lib_sinint.ml@114:19;114:20::<=lib/lib_sinint.ml@114:19;114:20
	mov r11,r21
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r12,r8
;lib/lib_sinint.ml@108:1;115:25::<=lib/lib_sinint.ml@108:1;115:25
	jal @a_14977f
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@108:1;115:25lib/lib_sinint.ml@111:22;111:23
	mov r9,r23
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_14930print_int_base:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$20
	sw r6,r1,$0
	sw r22,r1,$4
	sw r21,r1,$8
	sw r20,r1,$12
	sw r8,r1,$16
	mov r8,r10
@cfg_label_22374:
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22405
	j @cfg_label_22404
@cfg_label_22405:
@cfg_label_22407:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_22400
@cfg_label_22401:
;lib/lib_sinint.ml@121:2;124:29
	mov r9,r21
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22402:
@cfg_label_22400:
	addi r20,r8,$48
;lib/lib_sinint.ml@121:44;121:48::=Oiadd[48]lib/lib_sinint.ml@121:2;124:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@121:44;121:48::<=lib/lib_sinint.ml@121:44;121:48
	jal print_char
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@121:2;124:29lib/lib_sinint.ml@124:3;124:13
	mov r9,r21
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22406:
@cfg_label_22404:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_sinint.ml@121:2;124:29::<=lib/lib_sinint.ml@121:2;124:29
	jal @a_8529divten
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@122:13;122:21lib/lib_sinint.ml@122:13;122:19
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_22387
	j @cfg_label_22386
@cfg_label_22387:
@cfg_label_22389:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r20
	bne r0,r5,@cfg_label_22382
@cfg_label_22383:
;lib/lib_sinint.ml@123:4;123:21
	j @cfg_label_22394
@cfg_label_22382:
@cfg_label_22384:
	addi r21,r20,$48
;lib/lib_sinint.ml@121:44;121:48::=Oiadd[48]lib/lib_sinint.ml@122:13;122:21
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;lib/lib_sinint.ml@121:44;121:48::<=lib/lib_sinint.ml@121:44;121:48
	jal print_char
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@123:4;123:21lib/lib_sinint.ml@124:3;124:13
	j @cfg_label_22393
@cfg_label_22386:
@cfg_label_22388:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@122:13;122:21::<=lib/lib_sinint.ml@122:13;122:21
	jal @a_8529divten
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@122:13;122:21lib/lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;lib/lib_sinint.ml@122:13;122:21::<=lib/lib_sinint.ml@122:13;122:21
	jal @a_14930print_int_base
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@123:4;123:21lib/lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@124:18;124:23::=Oimul[10]lib/lib_sinint.ml@122:13;122:21
	sub r11,r20,r10
;lib/lib_sinint.ml@124:16;124:23::=Osublib/lib_sinint.ml@122:13;122:21lib/lib_sinint.ml@124:18;124:23
	addi r21,r11,$48
;lib/lib_sinint.ml@124:15;124:27::=Oiadd[48]lib/lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;lib/lib_sinint.ml@124:15;124:27::<=lib/lib_sinint.ml@124:15;124:27
	jal print_char
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@123:4;123:21lib/lib_sinint.ml@124:3;124:13
@cfg_label_22394:
@cfg_label_22393:
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@124:18;124:23::=Oimul[10]lib/lib_sinint.ml@122:13;122:21
	sub r11,r8,r10
;lib/lib_sinint.ml@124:16;124:23::=Osublib/lib_sinint.ml@121:2;124:29lib/lib_sinint.ml@124:18;124:23
	addi r8,r11,$48
;lib/lib_sinint.ml@124:15;124:27::=Oiadd[48]lib/lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_sinint.ml@124:15;124:27::<=lib/lib_sinint.ml@124:15;124:27
	jal print_char
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@121:2;124:29lib/lib_sinint.ml@124:3;124:13
	mov r9,r21
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8531print_int:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$16
	sw r6,r1,$0
	sw r21,r1,$4
	sw r20,r1,$8
	sw r8,r1,$12
	mov r8,r10
@cfg_label_22326:
	li r10,$0
;lib/lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_22370
	j @cfg_label_22369
@cfg_label_22370:
@cfg_label_22372:
	li r10,$0
;lib/lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22365
	j @cfg_label_22364
@cfg_label_22365:
@cfg_label_22367:
	li r21,$45
;lib/lib_sinint.ml@127:32;127:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;lib/lib_sinint.ml@127:32;127:34::<=lib/lib_sinint.ml@127:32;127:34
	jal print_char
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@127:21;127:34lib/lib_sinint.ml@126:15;126:25
	li r10,$0
;lib/lib_sinint.ml@127:52;127:53
	sub r20,r10,r8
;lib/lib_sinint.ml@127:52;127:55::=Osublib/lib_sinint.ml@127:52;127:53lib/lib_sinint.ml@118:1;127:79
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_22356
	j @cfg_label_22355
@cfg_label_22356:
@cfg_label_22358:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r20
	bne r0,r5,@cfg_label_22351
@cfg_label_22352:
;lib/lib_sinint.ml@118:1;127:79
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22353:
@cfg_label_22351:
	addi r21,r20,$48
;lib/lib_sinint.ml@121:44;121:48::=Oiadd[48]lib/lib_sinint.ml@127:52;127:55
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;lib/lib_sinint.ml@121:44;121:48::<=lib/lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@118:1;127:79lib/lib_sinint.ml@126:15;126:25
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22357:
@cfg_label_22355:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@127:52;127:55::<=lib/lib_sinint.ml@127:52;127:55
	jal @a_8529divten
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@122:13;122:21lib/lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_sinint.ml@122:13;122:21::<=lib/lib_sinint.ml@122:13;122:21
	jal @a_14930print_int_base
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@123:4;123:21lib/lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@124:18;124:23::=Oimul[10]lib/lib_sinint.ml@122:13;122:21
	sub r11,r20,r10
;lib/lib_sinint.ml@124:16;124:23::=Osublib/lib_sinint.ml@127:52;127:55lib/lib_sinint.ml@124:18;124:23
	addi r20,r11,$48
;lib/lib_sinint.ml@124:15;124:27::=Oiadd[48]lib/lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@124:15;124:27::<=lib/lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@118:1;127:79lib/lib_sinint.ml@126:15;126:25
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22366:
@cfg_label_22364:
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_22340
	j @cfg_label_22339
@cfg_label_22340:
@cfg_label_22342:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_22335
@cfg_label_22336:
;lib/lib_sinint.ml@118:1;127:79
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22337:
@cfg_label_22335:
	addi r20,r8,$48
;lib/lib_sinint.ml@121:44;121:48::=Oiadd[48]lib/lib_sinint.ml@118:1;127:79
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@121:44;121:48::<=lib/lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@118:1;127:79lib/lib_sinint.ml@126:15;126:25
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22341:
@cfg_label_22339:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_sinint.ml@118:1;127:79::<=lib/lib_sinint.ml@118:1;127:79
	jal @a_8529divten
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@122:13;122:21lib/lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@122:13;122:21::<=lib/lib_sinint.ml@122:13;122:21
	jal @a_14930print_int_base
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@123:4;123:21lib/lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	mov r10,r6
;lib/lib_sinint.ml@124:18;124:23::=Oimul[10]lib/lib_sinint.ml@122:13;122:21
	sub r11,r8,r10
;lib/lib_sinint.ml@124:16;124:23::=Osublib/lib_sinint.ml@118:1;127:79lib/lib_sinint.ml@124:18;124:23
	addi r20,r11,$48
;lib/lib_sinint.ml@124:15;124:27::=Oiadd[48]lib/lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@124:15;124:27::<=lib/lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@118:1;127:79lib/lib_sinint.ml@126:15;126:25
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22371:
@cfg_label_22369:
	li r20,$48
;lib/lib_sinint.ml@126:26;126:28
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@126:26;126:28::<=lib/lib_sinint.ml@126:26;126:28
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@118:1;127:79lib/lib_sinint.ml@126:15;126:25
	mov r9,r8
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8594vecunit_sgn:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$20
	sw r6,r1,$0
	fst f6,r1,$4
	fst f4,r1,$8
	sw r20,r1,$12
	sw r8,r1,$16
	mov r8,r10
	mov r20,r11
@cfg_label_22291:
	fld f10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@91:21;91:26::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@91:16;91:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@91:21;91:26../../cpuex2017/raytracer/min-rt.ml@91:21;91:26
	fld f10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@91:35;91:40::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f12,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@91:30;91:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@91:35;91:40../../cpuex2017/raytracer/min-rt.ml@91:35;91:40
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@91:16;91:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@91:16;91:26../../cpuex2017/raytracer/min-rt.ml@91:30;91:40
	fld f12,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@91:49;91:54::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f12,f12
;../../cpuex2017/raytracer/min-rt.ml@91:44;91:54::=Ofmul../../cpuex2017/raytracer/min-rt.ml@91:49;91:54../../cpuex2017/raytracer/min-rt.ml@91:49;91:54
	fadd f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@91:16;91:54::=Ofadd../../cpuex2017/raytracer/min-rt.ml@91:16;91:40../../cpuex2017/raytracer/min-rt.ml@91:44;91:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@91:16;91:54::<=../../cpuex2017/raytracer/min-rt.ml@91:16;91:54
	jal sqrt
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@91:10;91:55../../cpuex2017/raytracer/min-rt.ml@91:10;91:14
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f4,f10
	bft @emit_label_22775
	li r10,$0
	j @emit_label_22776
@emit_label_22775:
	li r10,$1
@emit_label_22776:
;../../cpuex2017/raytracer/min-rt.ml@92:14;92:23::=Oeq../../cpuex2017/raytracer/min-rt.ml@91:10;91:55lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@92:14;92:23
	bne r10,r11,@cfg_label_22300
@cfg_label_22301:
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	j @cfg_label_22313
@cfg_label_22300:
@cfg_label_22302:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@92:41;92:44
	bne r20,r10,@cfg_label_22295
	j @cfg_label_22294
@cfg_label_22295:
@cfg_label_22297:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@92:65;92:68
	fdiv f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@92:11;92:73::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@92:65;92:68../../cpuex2017/raytracer/min-rt.ml@91:10;91:55
	j @cfg_label_22311
@cfg_label_22294:
@cfg_label_22296:
	fmovi f11,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@92:51;92:54
	fdiv f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@92:11;92:73::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@92:51;92:54../../cpuex2017/raytracer/min-rt.ml@91:10;91:55
@cfg_label_22313:
@cfg_label_22311:
	fld f12,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@93:11;93:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@93:11;93:22::=Ofmul../../cpuex2017/raytracer/min-rt.ml@93:11;93:16../../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	fst f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@93:2;93:22::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22../../cpuex2017/raytracer/min-rt.ml@93:11;93:22
	fld f12,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@94:11;94:16::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@94:11;94:22::=Ofmul../../cpuex2017/raytracer/min-rt.ml@94:11;94:16../../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	fst f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@94:2;94:22::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22../../cpuex2017/raytracer/min-rt.ml@94:11;94:22
	fld f12,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@95:11;95:16::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@95:11;95:22::=Ofmul../../cpuex2017/raytracer/min-rt.ml@95:11;95:16../../cpuex2017/raytracer/min-rt.ml@92:11;92:73
	fst f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@91:2;95:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@91:2;95:22../../cpuex2017/raytracer/min-rt.ml@95:11;95:22
	lw r6,r1,$0
	fld f6,r1,$4
	fld f4,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8618vecaccumv:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_22273:
	fld f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@138:14;138:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fld f12,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@138:26;138:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fld f13,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@138:35;138:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fmul f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@138:26;138:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@138:26;138:31../../cpuex2017/raytracer/min-rt.ml@138:35;138:40
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@138:14;138:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@138:14;138:22../../cpuex2017/raytracer/min-rt.ml@138:26;138:40
	fst f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@138:2;138:40::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40../../cpuex2017/raytracer/min-rt.ml@138:14;138:40
	fld f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@139:14;139:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fld f12,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@139:26;139:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fld f13,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@139:35;139:40::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fmul f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@139:26;139:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@139:26;139:31../../cpuex2017/raytracer/min-rt.ml@139:35;139:40
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@139:14;139:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@139:14;139:22../../cpuex2017/raytracer/min-rt.ml@139:26;139:40
	fst f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@139:2;139:40::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40../../cpuex2017/raytracer/min-rt.ml@139:14;139:40
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@140:14;140:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fld f11,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@140:26;140:31::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fld f12,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@140:35;140:40::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40
	fmul f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@140:26;140:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@140:26;140:31../../cpuex2017/raytracer/min-rt.ml@140:35;140:40
	fadd f11,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@140:14;140:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@140:14;140:22../../cpuex2017/raytracer/min-rt.ml@140:26;140:40
	fst f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@138:2;140:40::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@138:2;140:40../../cpuex2017/raytracer/min-rt.ml@140:14;140:40
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8695read_screen_settings:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$80
	subi r1,r1,$28
	sw r6,r1,$0
	fst f9,r1,$4
	sw r8,r1,$8
	fst f8,r1,$12
	fst f7,r1,$16
	fst f6,r1,$20
	fst f4,r1,$24
	sw r10,r2,$8
@cfg_label_22215:
;../../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@490:27;490:29::<=../../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@490:16;490:29../../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	lw r5,r31,$444
	fst f4,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@490:2;490:29::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@490:2;490:8../../cpuex2017/raytracer/min-rt.ml@490:16;490:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@490:27;490:29::<=../../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@491:16;491:29../../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	lw r5,r31,$444
	fst f4,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@491:2;491:29::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@490:2;490:8../../cpuex2017/raytracer/min-rt.ml@491:16;491:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@490:27;490:29::<=../../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@492:16;492:29../../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	lw r5,r31,$444
	fst f4,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@492:2;492:29::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@490:2;490:8../../cpuex2017/raytracer/min-rt.ml@492:16;492:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@490:27;490:29::<=../../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@494:16;494:29../../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	fmovi f10,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f7,f4,f10
;../../cpuex2017/raytracer/min-rt.ml@494:11;494:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@494:16;494:29../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@494:11;494:30::<=../../cpuex2017/raytracer/min-rt.ml@494:11;494:30
	jal @a_8525cos
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@495:15;495:21../../cpuex2017/raytracer/min-rt.ml@495:15;495:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@494:11;494:30::<=../../cpuex2017/raytracer/min-rt.ml@494:11;494:30
	jal @a_8523sin
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@496:15;496:21../../cpuex2017/raytracer/min-rt.ml@496:15;496:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@490:27;490:29::<=../../cpuex2017/raytracer/min-rt.ml@490:27;490:29
	jal read_float
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@497:16;497:29../../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	fmovi f10,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f9,f7,f10
;../../cpuex2017/raytracer/min-rt.ml@497:11;497:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@497:16;497:29../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@497:11;497:30::<=../../cpuex2017/raytracer/min-rt.ml@497:11;497:30
	jal @a_8525cos
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@498:15;498:21../../cpuex2017/raytracer/min-rt.ml@495:15;495:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@497:11;497:30::<=../../cpuex2017/raytracer/min-rt.ml@497:11;497:30
	jal @a_8523sin
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@499:15;499:21../../cpuex2017/raytracer/min-rt.ml@496:15;496:18
	fmul f11,f6,f8
;../../cpuex2017/raytracer/min-rt.ml@501:21;501:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@495:15;495:21../../cpuex2017/raytracer/min-rt.ml@499:15;499:21
	fmovi f12,$200.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@501:41;501:46
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@501:21;501:46::=Ofmul../../cpuex2017/raytracer/min-rt.ml@501:21;501:37../../cpuex2017/raytracer/min-rt.ml@501:41;501:46
	lw r5,r31,$164
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@501:2;501:46::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@501:2;501:13../../cpuex2017/raytracer/min-rt.ml@501:21;501:46
	fmovi f11,$-200.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@502:32;502:37
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@502:21;502:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@496:15;496:21../../cpuex2017/raytracer/min-rt.ml@502:32;502:37
	lw r5,r31,$164
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@502:2;502:37::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@501:2;501:13../../cpuex2017/raytracer/min-rt.ml@502:21;502:37
	fmul f11,f6,f7
;../../cpuex2017/raytracer/min-rt.ml@503:21;503:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@495:15;495:21../../cpuex2017/raytracer/min-rt.ml@498:15;498:21
	fmovi f12,$200.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@503:41;503:46
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@503:21;503:46::=Ofmul../../cpuex2017/raytracer/min-rt.ml@503:21;503:37../../cpuex2017/raytracer/min-rt.ml@503:41;503:46
	lw r5,r31,$164
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@503:2;503:46::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@501:2;501:13../../cpuex2017/raytracer/min-rt.ml@503:21;503:46
	lw r5,r31,$188
	fst f7,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@505:2;505:27::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@505:2;505:13../../cpuex2017/raytracer/min-rt.ml@498:15;498:21
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@506:15;506:16
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@506:21;506:24
	lw r5,r31,$188
	sll r6,r11,$2
	add r5,r5,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@506:2;506:24::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@505:2;505:13../../cpuex2017/raytracer/min-rt.ml@506:15;506:16../../cpuex2017/raytracer/min-rt.ml@506:21;506:24
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f8
;../../cpuex2017/raytracer/min-rt.ml@507:21;507:32::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@499:15;499:21
	lw r5,r31,$188
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@507:2;507:32::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@505:2;505:13../../cpuex2017/raytracer/min-rt.ml@507:21;507:32
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@509:21;509:32::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@496:15;496:21
	fmul f11,f10,f8
;../../cpuex2017/raytracer/min-rt.ml@509:21;509:42::=Ofmul../../cpuex2017/raytracer/min-rt.ml@509:21;509:32../../cpuex2017/raytracer/min-rt.ml@499:15;499:21
	lw r5,r31,$176
	fst f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@509:2;509:42::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@509:2;509:13../../cpuex2017/raytracer/min-rt.ml@509:21;509:42
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f6
;../../cpuex2017/raytracer/min-rt.ml@510:21;510:32::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@495:15;495:21
	lw r5,r31,$176
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@510:2;510:32::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@509:2;509:13../../cpuex2017/raytracer/min-rt.ml@510:21;510:32
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@511:21;511:32::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@496:15;496:21
	fmul f11,f10,f7
;../../cpuex2017/raytracer/min-rt.ml@511:21;511:42::=Ofmul../../cpuex2017/raytracer/min-rt.ml@511:21;511:32../../cpuex2017/raytracer/min-rt.ml@498:15;498:21
	lw r5,r31,$176
	fst f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@511:2;511:42::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@509:2;509:13../../cpuex2017/raytracer/min-rt.ml@511:21;511:42
	lw r5,r31,$444
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@513:19;513:29::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@490:2;490:8
	lw r5,r31,$164
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@513:33;513:48::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@501:2;501:13
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@513:19;513:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@513:19;513:29../../cpuex2017/raytracer/min-rt.ml@513:33;513:48
	lw r5,r31,$432
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@513:2;513:48::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@513:2;513:11../../cpuex2017/raytracer/min-rt.ml@513:19;513:48
	lw r5,r31,$444
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@514:19;514:29::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@490:2;490:8
	lw r5,r31,$164
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@514:33;514:48::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@501:2;501:13
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@514:19;514:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@514:19;514:29../../cpuex2017/raytracer/min-rt.ml@514:33;514:48
	lw r5,r31,$432
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@514:2;514:48::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@513:2;513:11../../cpuex2017/raytracer/min-rt.ml@514:19;514:48
	lw r5,r31,$444
	fld f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@515:19;515:29::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@490:2;490:8
	lw r5,r31,$164
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@515:33;515:48::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@501:2;501:13
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@515:19;515:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@515:19;515:29../../cpuex2017/raytracer/min-rt.ml@515:33;515:48
	lw r5,r31,$432
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@490:2;515:48::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@513:2;513:11../../cpuex2017/raytracer/min-rt.ml@515:19;515:48
	lw r6,r1,$0
	fld f9,r1,$4
	lw r8,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	addi r1,r1,$28
	addi r1,r1,$80
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8697read_light:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$60
	subi r1,r1,$24
	sw r6,r1,$0
	sw r20,r1,$4
	fst f7,r1,$8
	fst f6,r1,$12
	fst f4,r1,$16
	sw r8,r1,$20
	sw r10,r2,$8
@cfg_label_22194:
;../../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@522:20;522:22::<=../../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@522:11;522:22../../cpuex2017/raytracer/min-rt.ml@522:11;522:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@522:20;522:22::<=../../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_float
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@525:16;525:29../../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	fmovi f10,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f4,f6,f10
;../../cpuex2017/raytracer/min-rt.ml@525:11;525:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@525:16;525:29../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@525:11;525:30::<=../../cpuex2017/raytracer/min-rt.ml@525:11;525:30
	jal @a_8523sin
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@526:12;526:18../../cpuex2017/raytracer/min-rt.ml@526:12;526:15
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f6
;../../cpuex2017/raytracer/min-rt.ml@527:15;527:23::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@526:12;526:18
	lw r5,r31,$420
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@527:2;527:23::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@527:2;527:7../../cpuex2017/raytracer/min-rt.ml@527:15;527:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@522:20;522:22::<=../../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_float
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@528:16;528:29../../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	fmovi f10,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f6,f7,f10
;../../cpuex2017/raytracer/min-rt.ml@528:11;528:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@528:16;528:29../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@525:11;525:30::<=../../cpuex2017/raytracer/min-rt.ml@525:11;525:30
	jal @a_8525cos
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@529:12;529:18../../cpuex2017/raytracer/min-rt.ml@529:12;529:15
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@528:11;528:30::<=../../cpuex2017/raytracer/min-rt.ml@528:11;528:30
	jal @a_8523sin
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@530:12;530:18../../cpuex2017/raytracer/min-rt.ml@526:12;526:15
	fmul f10,f7,f4
;../../cpuex2017/raytracer/min-rt.ml@531:15;531:25::=Ofmul../../cpuex2017/raytracer/min-rt.ml@529:12;529:18../../cpuex2017/raytracer/min-rt.ml@530:12;530:18
	lw r5,r31,$420
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@531:2;531:25::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@527:2;527:7../../cpuex2017/raytracer/min-rt.ml@531:15;531:25
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@528:11;528:30::<=../../cpuex2017/raytracer/min-rt.ml@528:11;528:30
	jal @a_8525cos
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@532:12;532:18../../cpuex2017/raytracer/min-rt.ml@529:12;529:15
	fmul f10,f7,f4
;../../cpuex2017/raytracer/min-rt.ml@533:15;533:25::=Ofmul../../cpuex2017/raytracer/min-rt.ml@529:12;529:18../../cpuex2017/raytracer/min-rt.ml@532:12;532:18
	lw r5,r31,$420
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@533:2;533:25::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@527:2;527:7../../cpuex2017/raytracer/min-rt.ml@533:15;533:25
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@522:20;522:22::<=../../cpuex2017/raytracer/min-rt.ml@522:20;522:22
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@534:14;534:27../../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	lw r5,r31,$408
	fst f4,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@522:2;534:27::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@534:2;534:6../../cpuex2017/raytracer/min-rt.ml@534:14;534:27
	lw r6,r1,$0
	lw r20,r1,$4
	fld f7,r1,$8
	fld f6,r1,$12
	fld f4,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8699rotate_quadratic_matrix:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$84
	subi r1,r1,$40
	sw r6,r1,$0
	fst f21,r1,$4
	fst f20,r1,$8
	fst f9,r1,$12
	fst f8,r1,$16
	fst f7,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	mov r20,r10
	mov r8,r11
@cfg_label_22102:
	fld f6,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@544:18;544:25::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@544:18;544:25::<=../../cpuex2017/raytracer/min-rt.ml@544:18;544:25
	jal @a_8525cos
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@544:14;544:25../../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	fld f7,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@545:18;545:25::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@545:18;545:25::<=../../cpuex2017/raytracer/min-rt.ml@545:18;545:25
	jal @a_8523sin
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@545:14;545:25../../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	fld f8,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@546:18;546:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@546:18;546:25::<=../../cpuex2017/raytracer/min-rt.ml@546:18;546:25
	jal @a_8525cos
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@546:14;546:25../../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	fld f9,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@547:18;547:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@547:18;547:25::<=../../cpuex2017/raytracer/min-rt.ml@547:18;547:25
	jal @a_8523sin
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@547:14;547:25../../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	fld f20,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@548:18;548:25::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f20
;../../cpuex2017/raytracer/min-rt.ml@548:18;548:25::<=../../cpuex2017/raytracer/min-rt.ml@548:18;548:25
	jal @a_8525cos
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@548:14;548:25../../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	fld f21,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@549:18;549:25::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f21
;../../cpuex2017/raytracer/min-rt.ml@549:18;549:25::<=../../cpuex2017/raytracer/min-rt.ml@549:18;549:25
	jal @a_8523sin
	fmov f20,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@549:14;549:25../../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	fmul f12,f7,f9
;../../cpuex2017/raytracer/min-rt.ml@551:12;551:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@546:14;546:25../../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fmul f11,f6,f8
;../../cpuex2017/raytracer/min-rt.ml@552:12;552:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@545:14;545:25../../cpuex2017/raytracer/min-rt.ml@547:14;547:25
	fmul f13,f11,f9
;../../cpuex2017/raytracer/min-rt.ml@552:12;552:35::=Ofmul../../cpuex2017/raytracer/min-rt.ml@552:12;552:26../../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fmul f14,f4,f20
;../../cpuex2017/raytracer/min-rt.ml@552:39;552:53::=Ofmul../../cpuex2017/raytracer/min-rt.ml@544:14;544:25../../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fsub f10,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@552:12;552:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@552:12;552:35../../cpuex2017/raytracer/min-rt.ml@552:39;552:53
	fmul f13,f4,f8
;../../cpuex2017/raytracer/min-rt.ml@553:12;553:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@544:14;544:25../../cpuex2017/raytracer/min-rt.ml@547:14;547:25
	fmul f15,f13,f9
;../../cpuex2017/raytracer/min-rt.ml@553:12;553:35::=Ofmul../../cpuex2017/raytracer/min-rt.ml@553:12;553:26../../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fmul f16,f6,f20
;../../cpuex2017/raytracer/min-rt.ml@553:39;553:53::=Ofmul../../cpuex2017/raytracer/min-rt.ml@545:14;545:25../../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fadd f14,f15,f16
;../../cpuex2017/raytracer/min-rt.ml@553:12;553:53::=Ofadd../../cpuex2017/raytracer/min-rt.ml@553:12;553:35../../cpuex2017/raytracer/min-rt.ml@553:39;553:53
	fmul f15,f7,f20
;../../cpuex2017/raytracer/min-rt.ml@555:12;555:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@546:14;546:25../../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fmul f16,f11,f20
;../../cpuex2017/raytracer/min-rt.ml@556:12;556:35::=Ofmul../../cpuex2017/raytracer/min-rt.ml@552:12;552:26../../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fmul f17,f4,f9
;../../cpuex2017/raytracer/min-rt.ml@556:39;556:53::=Ofmul../../cpuex2017/raytracer/min-rt.ml@544:14;544:25../../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fadd f11,f16,f17
;../../cpuex2017/raytracer/min-rt.ml@556:12;556:53::=Ofadd../../cpuex2017/raytracer/min-rt.ml@556:12;556:35../../cpuex2017/raytracer/min-rt.ml@556:39;556:53
	fmul f17,f13,f20
;../../cpuex2017/raytracer/min-rt.ml@557:12;557:35::=Ofmul../../cpuex2017/raytracer/min-rt.ml@553:12;553:26../../cpuex2017/raytracer/min-rt.ml@549:14;549:25
	fmul f13,f6,f9
;../../cpuex2017/raytracer/min-rt.ml@557:39;557:53::=Ofmul../../cpuex2017/raytracer/min-rt.ml@545:14;545:25../../cpuex2017/raytracer/min-rt.ml@548:14;548:25
	fsub f16,f17,f13
;../../cpuex2017/raytracer/min-rt.ml@557:12;557:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@557:12;557:35../../cpuex2017/raytracer/min-rt.ml@557:39;557:53
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f17,f13,f8
;../../cpuex2017/raytracer/min-rt.ml@559:12;559:22::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@547:14;547:25
	fmul f13,f6,f7
;../../cpuex2017/raytracer/min-rt.ml@560:12;560:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@545:14;545:25../../cpuex2017/raytracer/min-rt.ml@546:14;546:25
	fmul f18,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@561:12;561:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@544:14;544:25../../cpuex2017/raytracer/min-rt.ml@546:14;546:25
	fld f6,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@564:11;564:18::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	fld f4,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@565:11;565:18::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	fld f19,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@566:11;566:18::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78
	fmul f7,f12,f12
;../../cpuex2017/raytracer/min-rt.ml@571:19;571:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@551:12;551:26../../cpuex2017/raytracer/min-rt.ml@551:12;551:26
	fmul f8,f6,f7
;../../cpuex2017/raytracer/min-rt.ml@571:13;571:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@564:11;564:18../../cpuex2017/raytracer/min-rt.ml@571:19;571:27
	fmul f7,f15,f15
;../../cpuex2017/raytracer/min-rt.ml@571:37;571:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@555:12;555:26../../cpuex2017/raytracer/min-rt.ml@555:12;555:26
	fmul f9,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@571:31;571:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@565:11;565:18../../cpuex2017/raytracer/min-rt.ml@571:37;571:45
	fadd f7,f8,f9
;../../cpuex2017/raytracer/min-rt.ml@571:13;571:45::=Ofadd../../cpuex2017/raytracer/min-rt.ml@571:13;571:27../../cpuex2017/raytracer/min-rt.ml@571:31;571:45
	fmul f9,f17,f17
;../../cpuex2017/raytracer/min-rt.ml@571:55;571:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@559:12;559:22../../cpuex2017/raytracer/min-rt.ml@559:12;559:22
	fmul f8,f19,f9
;../../cpuex2017/raytracer/min-rt.ml@571:49;571:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@566:11;566:18../../cpuex2017/raytracer/min-rt.ml@571:55;571:63
	fadd f9,f7,f8
;../../cpuex2017/raytracer/min-rt.ml@571:13;571:63::=Ofadd../../cpuex2017/raytracer/min-rt.ml@571:13;571:45../../cpuex2017/raytracer/min-rt.ml@571:49;571:63
	fst f9,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@571:2;571:63::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78../../cpuex2017/raytracer/min-rt.ml@571:13;571:63
	fmul f7,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@572:19;572:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@552:12;552:53../../cpuex2017/raytracer/min-rt.ml@552:12;552:53
	fmul f8,f6,f7
;../../cpuex2017/raytracer/min-rt.ml@572:13;572:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@564:11;564:18../../cpuex2017/raytracer/min-rt.ml@572:19;572:27
	fmul f7,f11,f11
;../../cpuex2017/raytracer/min-rt.ml@572:37;572:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@556:12;556:53../../cpuex2017/raytracer/min-rt.ml@556:12;556:53
	fmul f9,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@572:31;572:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@565:11;565:18../../cpuex2017/raytracer/min-rt.ml@572:37;572:45
	fadd f7,f8,f9
;../../cpuex2017/raytracer/min-rt.ml@572:13;572:45::=Ofadd../../cpuex2017/raytracer/min-rt.ml@572:13;572:27../../cpuex2017/raytracer/min-rt.ml@572:31;572:45
	fmul f9,f13,f13
;../../cpuex2017/raytracer/min-rt.ml@572:55;572:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@560:12;560:26../../cpuex2017/raytracer/min-rt.ml@560:12;560:26
	fmul f8,f19,f9
;../../cpuex2017/raytracer/min-rt.ml@572:49;572:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@566:11;566:18../../cpuex2017/raytracer/min-rt.ml@572:55;572:63
	fadd f9,f7,f8
;../../cpuex2017/raytracer/min-rt.ml@572:13;572:63::=Ofadd../../cpuex2017/raytracer/min-rt.ml@572:13;572:45../../cpuex2017/raytracer/min-rt.ml@572:49;572:63
	fst f9,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@572:2;572:63::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78../../cpuex2017/raytracer/min-rt.ml@572:13;572:63
	fmul f7,f14,f14
;../../cpuex2017/raytracer/min-rt.ml@573:19;573:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@553:12;553:53../../cpuex2017/raytracer/min-rt.ml@553:12;553:53
	fmul f8,f6,f7
;../../cpuex2017/raytracer/min-rt.ml@573:13;573:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@564:11;564:18../../cpuex2017/raytracer/min-rt.ml@573:19;573:27
	fmul f7,f16,f16
;../../cpuex2017/raytracer/min-rt.ml@573:37;573:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@557:12;557:53../../cpuex2017/raytracer/min-rt.ml@557:12;557:53
	fmul f9,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@573:31;573:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@565:11;565:18../../cpuex2017/raytracer/min-rt.ml@573:37;573:45
	fadd f7,f8,f9
;../../cpuex2017/raytracer/min-rt.ml@573:13;573:45::=Ofadd../../cpuex2017/raytracer/min-rt.ml@573:13;573:27../../cpuex2017/raytracer/min-rt.ml@573:31;573:45
	fmul f9,f18,f18
;../../cpuex2017/raytracer/min-rt.ml@573:55;573:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@561:12;561:26../../cpuex2017/raytracer/min-rt.ml@561:12;561:26
	fmul f8,f19,f9
;../../cpuex2017/raytracer/min-rt.ml@573:49;573:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@566:11;566:18../../cpuex2017/raytracer/min-rt.ml@573:55;573:63
	fadd f9,f7,f8
;../../cpuex2017/raytracer/min-rt.ml@573:13;573:63::=Ofadd../../cpuex2017/raytracer/min-rt.ml@573:13;573:45../../cpuex2017/raytracer/min-rt.ml@573:49;573:63
	fst f9,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@573:2;573:63::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78../../cpuex2017/raytracer/min-rt.ml@573:13;573:63
	fmovi f7,$2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@576:13;576:16
	fmul f8,f6,f10
;../../cpuex2017/raytracer/min-rt.ml@576:21;576:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@564:11;564:18../../cpuex2017/raytracer/min-rt.ml@552:12;552:53
	fmul f9,f8,f14
;../../cpuex2017/raytracer/min-rt.ml@576:21;576:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@576:21;576:30../../cpuex2017/raytracer/min-rt.ml@553:12;553:53
	fmul f8,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@576:41;576:50::=Ofmul../../cpuex2017/raytracer/min-rt.ml@565:11;565:18../../cpuex2017/raytracer/min-rt.ml@556:12;556:53
	fmul f20,f8,f16
;../../cpuex2017/raytracer/min-rt.ml@576:41;576:57::=Ofmul../../cpuex2017/raytracer/min-rt.ml@576:41;576:50../../cpuex2017/raytracer/min-rt.ml@557:12;557:53
	fadd f8,f9,f20
;../../cpuex2017/raytracer/min-rt.ml@576:21;576:57::=Ofadd../../cpuex2017/raytracer/min-rt.ml@576:21;576:37../../cpuex2017/raytracer/min-rt.ml@576:41;576:57
	fmul f20,f19,f13
;../../cpuex2017/raytracer/min-rt.ml@576:61;576:70::=Ofmul../../cpuex2017/raytracer/min-rt.ml@566:11;566:18../../cpuex2017/raytracer/min-rt.ml@560:12;560:26
	fmul f9,f20,f18
;../../cpuex2017/raytracer/min-rt.ml@576:61;576:77::=Ofmul../../cpuex2017/raytracer/min-rt.ml@576:61;576:70../../cpuex2017/raytracer/min-rt.ml@561:12;561:26
	fadd f20,f8,f9
;../../cpuex2017/raytracer/min-rt.ml@576:21;576:77::=Ofadd../../cpuex2017/raytracer/min-rt.ml@576:21;576:57../../cpuex2017/raytracer/min-rt.ml@576:61;576:77
	fmul f8,f7,f20
;../../cpuex2017/raytracer/min-rt.ml@576:13;576:78::=Ofmul../../cpuex2017/raytracer/min-rt.ml@576:13;576:16../../cpuex2017/raytracer/min-rt.ml@576:21;576:77
	fst f8,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@576:2;576:78::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78../../cpuex2017/raytracer/min-rt.ml@576:13;576:78
	fmovi f8,$2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@577:13;577:16
	fmul f7,f6,f12
;../../cpuex2017/raytracer/min-rt.ml@577:21;577:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@564:11;564:18../../cpuex2017/raytracer/min-rt.ml@551:12;551:26
	fmul f6,f7,f14
;../../cpuex2017/raytracer/min-rt.ml@577:21;577:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:21;577:30../../cpuex2017/raytracer/min-rt.ml@553:12;553:53
	fmul f12,f4,f15
;../../cpuex2017/raytracer/min-rt.ml@577:41;577:50::=Ofmul../../cpuex2017/raytracer/min-rt.ml@565:11;565:18../../cpuex2017/raytracer/min-rt.ml@555:12;555:26
	fmul f14,f12,f16
;../../cpuex2017/raytracer/min-rt.ml@577:41;577:57::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:41;577:50../../cpuex2017/raytracer/min-rt.ml@557:12;557:53
	fadd f15,f6,f14
;../../cpuex2017/raytracer/min-rt.ml@577:21;577:57::=Ofadd../../cpuex2017/raytracer/min-rt.ml@577:21;577:37../../cpuex2017/raytracer/min-rt.ml@577:41;577:57
	fmul f14,f19,f17
;../../cpuex2017/raytracer/min-rt.ml@577:61;577:70::=Ofmul../../cpuex2017/raytracer/min-rt.ml@566:11;566:18../../cpuex2017/raytracer/min-rt.ml@559:12;559:22
	fmul f16,f14,f18
;../../cpuex2017/raytracer/min-rt.ml@577:61;577:77::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:61;577:70../../cpuex2017/raytracer/min-rt.ml@561:12;561:26
	fadd f17,f15,f16
;../../cpuex2017/raytracer/min-rt.ml@577:21;577:77::=Ofadd../../cpuex2017/raytracer/min-rt.ml@577:21;577:57../../cpuex2017/raytracer/min-rt.ml@577:61;577:77
	fmul f15,f8,f17
;../../cpuex2017/raytracer/min-rt.ml@577:13;577:78::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:13;577:16../../cpuex2017/raytracer/min-rt.ml@577:21;577:77
	fst f15,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@577:2;577:78::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78../../cpuex2017/raytracer/min-rt.ml@577:13;577:78
	fmovi f15,$2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@578:13;578:16
	fmul f16,f7,f10
;../../cpuex2017/raytracer/min-rt.ml@578:21;578:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:21;577:30../../cpuex2017/raytracer/min-rt.ml@552:12;552:53
	fmul f10,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@578:41;578:57::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:41;577:50../../cpuex2017/raytracer/min-rt.ml@556:12;556:53
	fadd f11,f16,f10
;../../cpuex2017/raytracer/min-rt.ml@578:21;578:57::=Ofadd../../cpuex2017/raytracer/min-rt.ml@578:21;578:37../../cpuex2017/raytracer/min-rt.ml@578:41;578:57
	fmul f10,f14,f13
;../../cpuex2017/raytracer/min-rt.ml@578:61;578:77::=Ofmul../../cpuex2017/raytracer/min-rt.ml@577:61;577:70../../cpuex2017/raytracer/min-rt.ml@560:12;560:26
	fadd f12,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@578:21;578:77::=Ofadd../../cpuex2017/raytracer/min-rt.ml@578:21;578:57../../cpuex2017/raytracer/min-rt.ml@578:61;578:77
	fmul f10,f15,f12
;../../cpuex2017/raytracer/min-rt.ml@578:13;578:78::=Ofmul../../cpuex2017/raytracer/min-rt.ml@578:13;578:16../../cpuex2017/raytracer/min-rt.ml@578:21;578:77
	fst f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@544:2;578:78::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@544:2;578:78../../cpuex2017/raytracer/min-rt.ml@578:13;578:78
	lw r6,r1,$0
	fld f21,r1,$4
	fld f20,r1,$8
	fld f9,r1,$12
	fld f8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$84
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8702read_nth_object:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$100
	subi r1,r1,$56
	sw r6,r1,$0
	fst f4,r1,$4
	sw r30,r1,$8
	sw r29,r1,$12
	sw r28,r1,$16
	sw r27,r1,$20
	sw r26,r1,$24
	sw r25,r1,$28
	sw r24,r1,$32
	sw r23,r1,$36
	sw r22,r1,$40
	sw r21,r1,$44
	sw r20,r1,$48
	sw r8,r1,$52
	mov r23,r10
@cfg_label_21914:
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@585:16;585:27../../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@586:16;586:18
	bne r24,r10,@cfg_label_22096
@cfg_label_22097:
	lw r9,r31,$12
	lw r6,r1,$0
	fld f4,r1,$4
	lw r30,r1,$8
	lw r29,r1,$12
	lw r28,r1,$16
	lw r27,r1,$20
	lw r26,r1,$24
	lw r25,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	lw r21,r1,$44
	lw r20,r1,$48
	lw r8,r1,$52
	addi r1,r1,$56
	addi r1,r1,$100
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_22098:
@cfg_label_22096:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@588:17;588:28../../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r25,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@589:21;589:32../../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@590:20;590:31../../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@592:29;592:30
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@592:31;592:34
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22778
@emit_label_22777:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22777
@emit_label_22778:
	mov r8,r7
;../../cpuex2017/raytracer/min-rt.ml@592:16;592:34::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@592:29;592:30../../cpuex2017/raytracer/min-rt.ml@592:31;592:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@593:17;593:30../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@593:6;593:30::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34../../cpuex2017/raytracer/min-rt.ml@593:17;593:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@594:17;594:30../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@594:6;594:30::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34../../cpuex2017/raytracer/min-rt.ml@594:17;594:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@595:17;595:30../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@595:6;595:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34../../cpuex2017/raytracer/min-rt.ml@595:17;595:30
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@597:29;597:30
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@597:31;597:34
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22780
@emit_label_22779:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22779
@emit_label_22780:
	mov r26,r7
;../../cpuex2017/raytracer/min-rt.ml@597:16;597:34::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@597:29;597:30../../cpuex2017/raytracer/min-rt.ml@597:31;597:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@598:17;598:30../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r26,$0
;../../cpuex2017/raytracer/min-rt.ml@598:6;598:30::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@597:16;597:34../../cpuex2017/raytracer/min-rt.ml@598:17;598:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@599:17;599:30../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r26,$4
;../../cpuex2017/raytracer/min-rt.ml@599:6;599:30::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@597:16;597:34../../cpuex2017/raytracer/min-rt.ml@599:17;599:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@600:17;600:30../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r26,$8
;../../cpuex2017/raytracer/min-rt.ml@600:6;600:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@597:16;597:34../../cpuex2017/raytracer/min-rt.ml@600:17;600:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@602:29;602:42../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f4,f10
	bft @emit_label_22781
	li r28,$0
	j @emit_label_22782
@emit_label_22781:
	li r28,$1
@emit_label_22782:
;../../cpuex2017/raytracer/min-rt.ml@602:21;602:43::=Olt../../cpuex2017/raytracer/min-rt.ml@602:29;602:42lib/lib_tortesia.ml@7:24;7:27
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@604:35;604:36
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@604:37;604:40
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22784
@emit_label_22783:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22783
@emit_label_22784:
	mov r29,r7
;../../cpuex2017/raytracer/min-rt.ml@604:22;604:40::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@604:35;604:36../../cpuex2017/raytracer/min-rt.ml@604:37;604:40
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@605:23;605:36../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r29,$0
;../../cpuex2017/raytracer/min-rt.ml@605:6;605:36::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@604:22;604:40../../cpuex2017/raytracer/min-rt.ml@605:23;605:36
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@606:23;606:36../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r29,$4
;../../cpuex2017/raytracer/min-rt.ml@606:6;606:36::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@604:22;604:40../../cpuex2017/raytracer/min-rt.ml@606:23;606:36
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@608:31;608:32
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@608:33;608:36
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22786
@emit_label_22785:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22785
@emit_label_22786:
	mov r30,r7
;../../cpuex2017/raytracer/min-rt.ml@608:18;608:36::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@608:31;608:32../../cpuex2017/raytracer/min-rt.ml@608:33;608:36
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@609:19;609:32../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r30,$0
;../../cpuex2017/raytracer/min-rt.ml@609:6;609:32::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@608:18;608:36../../cpuex2017/raytracer/min-rt.ml@609:19;609:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@610:19;610:32../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r30,$4
;../../cpuex2017/raytracer/min-rt.ml@610:6;610:32::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@608:18;608:36../../cpuex2017/raytracer/min-rt.ml@610:19;610:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@611:19;611:32../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fst f4,r30,$8
;../../cpuex2017/raytracer/min-rt.ml@611:6;611:32::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@608:18;608:36../../cpuex2017/raytracer/min-rt.ml@611:19;611:32
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@613:34;613:35
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@613:36;613:39
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22788
@emit_label_22787:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22787
@emit_label_22788:
	mov r21,r7
;../../cpuex2017/raytracer/min-rt.ml@613:21;613:39::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@613:34;613:35../../cpuex2017/raytracer/min-rt.ml@613:36;613:39
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@614:20;614:21
	bne r20,r10,@cfg_label_21927
@cfg_label_21928:
	j @cfg_label_22050
@cfg_label_21929:
@cfg_label_21927:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@616:23;616:36../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f11,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@616:18;616:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@616:23;616:36../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fst f10,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@616:2;616:37::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@613:21;613:39../../cpuex2017/raytracer/min-rt.ml@616:18;616:37
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@617:23;617:36../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f11,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@617:18;617:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@617:23;617:36../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fst f10,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@617:2;617:37::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@613:21;613:39../../cpuex2017/raytracer/min-rt.ml@617:18;617:37
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@585:25;585:27::<=../../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	jal read_float
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@618:23;618:36../../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	fmovi f11,$0.01745329300000000167
;../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@618:18;618:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@618:23;618:36../../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	fst f10,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@614:6;620:13::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@613:21;613:39../../cpuex2017/raytracer/min-rt.ml@618:18;618:37
@cfg_label_22050:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@625:32;625:33
	bne r22,r10,@cfg_label_21931
@cfg_label_21932:
	lw r10,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@625:39;625:43::<=../../cpuex2017/raytracer/min-rt.ml@625:22;625:57
	j @cfg_label_22047
@cfg_label_21931:
@cfg_label_21933:
	mov r10,r28
;../../cpuex2017/raytracer/min-rt.ml@602:21;602:43::<=../../cpuex2017/raytracer/min-rt.ml@625:22;625:57
@cfg_label_22047:
	li r12,$4
;../../cpuex2017/raytracer/min-rt.ml@626:30;626:31
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@626:32;626:35
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22790
@emit_label_22789:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22789
@emit_label_22790:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@626:17;626:35::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@626:30;626:31../../cpuex2017/raytracer/min-rt.ml@626:32;626:35
	mov r6,r3
	sw r24,r3,$0
	sw r22,r3,$4
	sw r25,r3,$8
	sw r20,r3,$12
	sw r8,r3,$16
	sw r26,r3,$20
	sw r10,r3,$24
	sw r29,r3,$28
	sw r30,r3,$32
	sw r21,r3,$36
	sw r11,r3,$40
	addi r3,r3,$44
	mov r12,r6
;../../cpuex2017/raytracer/min-rt.ml@629:2;635:13
	lw r5,r31,$456
	sll r6,r23,$2
	add r5,r5,r6
	sw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@637:6;637:24::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@637:6;637:13../../cpuex2017/raytracer/min-rt.ml@585:2;662:9../../cpuex2017/raytracer/min-rt.ml@629:2;635:13
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@639:16;639:17
	bne r22,r10,@cfg_label_22027
	j @cfg_label_22026
@cfg_label_22027:
@cfg_label_22029:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@649:21;649:22
	bne r22,r10,@cfg_label_22022
	j @cfg_label_22021
@cfg_label_22022:
@cfg_label_22024:
	j @cfg_label_22037
@cfg_label_22023:
@cfg_label_22021:
	slti r6,r28,$0
	slti r7,r28,$1
	sub r23,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@651:18;651:30::=Onot../../cpuex2017/raytracer/min-rt.ml@602:21;602:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@592:16;592:34::<=../../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@651:18;651:30::<=../../cpuex2017/raytracer/min-rt.ml@651:18;651:30
	jal @a_8594vecunit_sgn
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@639:6;652:13../../cpuex2017/raytracer/min-rt.ml@651:1;651:12
	j @cfg_label_22038
@cfg_label_22026:
@cfg_label_22028:
	fld f10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@642:10;642:17::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22791
	li r10,$0
	j @emit_label_22792
@emit_label_22791:
	li r10,$1
@emit_label_22792:
;../../cpuex2017/raytracer/min-rt.ml@643:16;643:25::=Oeq../../cpuex2017/raytracer/min-rt.ml@642:10;642:17lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@643:16;643:25
	bne r10,r11,@cfg_label_21953
@cfg_label_21954:
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@643:13;643:55
	j @cfg_label_22015
@cfg_label_21953:
@cfg_label_21955:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22793
	li r10,$0
	j @emit_label_22794
@emit_label_22793:
	li r10,$1
@emit_label_22794:
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14::=Oeq../../cpuex2017/raytracer/min-rt.ml@642:10;642:17lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r10,r11,@cfg_label_21942
@cfg_label_21943:
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@643:40;643:45
	j @cfg_label_21948
@cfg_label_21942:
@cfg_label_21944:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22795
	li r10,$0
	j @emit_label_22796
@emit_label_22795:
	li r10,$1
@emit_label_22796:
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18::=Ogt../../cpuex2017/raytracer/min-rt.ml@642:10;642:17lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r10,r11,@cfg_label_21935
@cfg_label_21936:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@643:40;643:45
	j @cfg_label_21947
@cfg_label_21935:
@cfg_label_21937:
	fmovi f11,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@643:40;643:45
@cfg_label_21947:
@cfg_label_21948:
	fmul f12,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@643:49;643:55::=Ofmul../../cpuex2017/raytracer/min-rt.ml@642:10;642:17../../cpuex2017/raytracer/min-rt.ml@642:10;642:17
	fdiv f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@643:13;643:55::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@643:40;643:45../../cpuex2017/raytracer/min-rt.ml@643:49;643:55
@cfg_label_22015:
	fst f10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@643:2;643:55::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34../../cpuex2017/raytracer/min-rt.ml@643:13;643:55
	fld f10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@644:10;644:17::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22797
	li r10,$0
	j @emit_label_22798
@emit_label_22797:
	li r10,$1
@emit_label_22798:
;../../cpuex2017/raytracer/min-rt.ml@645:16;645:25::=Oeq../../cpuex2017/raytracer/min-rt.ml@644:10;644:17lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@645:16;645:25
	bne r10,r11,@cfg_label_21975
@cfg_label_21976:
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@645:13;645:55
	j @cfg_label_22008
@cfg_label_21975:
@cfg_label_21977:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22799
	li r10,$0
	j @emit_label_22800
@emit_label_22799:
	li r10,$1
@emit_label_22800:
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14::=Oeq../../cpuex2017/raytracer/min-rt.ml@644:10;644:17lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r10,r11,@cfg_label_21964
@cfg_label_21965:
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@645:40;645:45
	j @cfg_label_21970
@cfg_label_21964:
@cfg_label_21966:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22801
	li r10,$0
	j @emit_label_22802
@emit_label_22801:
	li r10,$1
@emit_label_22802:
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18::=Ogt../../cpuex2017/raytracer/min-rt.ml@644:10;644:17lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r10,r11,@cfg_label_21957
@cfg_label_21958:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@645:40;645:45
	j @cfg_label_21969
@cfg_label_21957:
@cfg_label_21959:
	fmovi f11,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@645:40;645:45
@cfg_label_21969:
@cfg_label_21970:
	fmul f12,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@645:49;645:55::=Ofmul../../cpuex2017/raytracer/min-rt.ml@644:10;644:17../../cpuex2017/raytracer/min-rt.ml@644:10;644:17
	fdiv f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@645:13;645:55::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@645:40;645:45../../cpuex2017/raytracer/min-rt.ml@645:49;645:55
@cfg_label_22008:
	fst f10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@645:2;645:55::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34../../cpuex2017/raytracer/min-rt.ml@645:13;645:55
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@646:10;646:17::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22803
	li r10,$0
	j @emit_label_22804
@emit_label_22803:
	li r10,$1
@emit_label_22804:
;../../cpuex2017/raytracer/min-rt.ml@647:16;647:25::=Oeq../../cpuex2017/raytracer/min-rt.ml@646:10;646:17lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@647:16;647:25
	bne r10,r11,@cfg_label_21997
@cfg_label_21998:
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@647:13;647:55
	j @cfg_label_22001
@cfg_label_21997:
@cfg_label_21999:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22805
	li r10,$0
	j @emit_label_22806
@emit_label_22805:
	li r10,$1
@emit_label_22806:
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14::=Oeq../../cpuex2017/raytracer/min-rt.ml@646:10;646:17lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r10,r11,@cfg_label_21986
@cfg_label_21987:
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@647:40;647:45
	j @cfg_label_21992
@cfg_label_21986:
@cfg_label_21988:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22807
	li r10,$0
	j @emit_label_22808
@emit_label_22807:
	li r10,$1
@emit_label_22808:
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18::=Ogt../../cpuex2017/raytracer/min-rt.ml@646:10;646:17lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r10,r11,@cfg_label_21979
@cfg_label_21980:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@647:40;647:45
	j @cfg_label_21991
@cfg_label_21979:
@cfg_label_21981:
	fmovi f11,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@647:40;647:45
@cfg_label_21991:
@cfg_label_21992:
	fmul f12,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@647:49;647:55::=Ofmul../../cpuex2017/raytracer/min-rt.ml@646:10;646:17../../cpuex2017/raytracer/min-rt.ml@646:10;646:17
	fdiv f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@647:13;647:55::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@647:40;647:45../../cpuex2017/raytracer/min-rt.ml@647:49;647:55
@cfg_label_22001:
	fst f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@639:6;652:13::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@592:16;592:34../../cpuex2017/raytracer/min-rt.ml@647:13;647:55
@cfg_label_22038:
@cfg_label_22037:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@655:20;655:21
	bne r20,r10,@cfg_label_22031
@cfg_label_22032:
	j @cfg_label_22035
@cfg_label_22033:
@cfg_label_22031:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@592:16;592:34::<=../../cpuex2017/raytracer/min-rt.ml@592:16;592:34
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@613:21;613:39::<=../../cpuex2017/raytracer/min-rt.ml@613:21;613:39
	jal @a_8699rotate_quadratic_matrix
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@655:6;657:13../../cpuex2017/raytracer/min-rt.ml@656:1;656:24
@cfg_label_22035:
	lw r9,r31,$16
	lw r6,r1,$0
	fld f4,r1,$4
	lw r30,r1,$8
	lw r29,r1,$12
	lw r28,r1,$16
	lw r27,r1,$20
	lw r26,r1,$24
	lw r25,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	lw r21,r1,$44
	lw r20,r1,$48
	lw r8,r1,$52
	addi r1,r1,$56
	addi r1,r1,$100
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8704read_object:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$20
	subi r1,r1,$12
	sw r6,r1,$0
	sw r20,r1,$4
	sw r8,r1,$8
	mov r20,r10
@cfg_label_21913:
@cfg_label_21863:
	li r10,$60
;../../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_21909
@cfg_label_21910:
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21911:
@cfg_label_21909:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9::<=../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	jal @a_8702read_nth_object
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24../../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r8,r10,@cfg_label_21903
	j @cfg_label_21902
@cfg_label_21903:
@cfg_label_21905:
	lw r5,r31,$496
	sw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21904:
@cfg_label_21902:
	addi r8,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	li r10,$60
;../../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_21897
@cfg_label_21898:
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21899:
@cfg_label_21897:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::<=../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8702read_nth_object
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24../../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r20,r10,@cfg_label_21891
	j @cfg_label_21890
@cfg_label_21891:
@cfg_label_21893:
	lw r5,r31,$496
	sw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21892:
@cfg_label_21890:
	addi r20,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	li r10,$60
;../../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_21885
@cfg_label_21886:
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21887:
@cfg_label_21885:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::<=../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8702read_nth_object
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24../../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r8,r10,@cfg_label_21879
	j @cfg_label_21878
@cfg_label_21879:
@cfg_label_21881:
	lw r5,r31,$496
	sw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21880:
@cfg_label_21878:
	addi r8,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	li r10,$60
;../../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_21873
@cfg_label_21874:
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21875:
@cfg_label_21873:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::<=../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8702read_nth_object
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24../../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r20,r10,@cfg_label_21867
	j @cfg_label_21866
@cfg_label_21867:
@cfg_label_21869:
	lw r5,r31,$496
	sw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21868:
@cfg_label_21866:
	addi r10,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@667:2;672:9::<=../../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	j @cfg_label_21863
@a_8708read_net_item:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r8,r10
@cfg_label_21838:
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24::<=../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@683:13;683:24../../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r20,r10,@cfg_label_21857
	j @cfg_label_21856
@cfg_label_21857:
@cfg_label_21859:
	addi r21,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@683:2;687:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24::<=../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@683:13;683:24../../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r22,r10,@cfg_label_21847
	j @cfg_label_21846
@cfg_label_21847:
@cfg_label_21849:
	addi r24,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::<=../../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	jal @a_8708read_net_item
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	sll r6,r21,$2
	add r5,r23,r6
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@687:5;687:23::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@686:27;686:37../../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r9,r23
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38::<=../../cpuex2017/raytracer/min-rt.ml@686:12;686:38
	j @cfg_label_21851
@cfg_label_21846:
@cfg_label_21848:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@684:34;684:44::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22810
@emit_label_22809:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22809
@emit_label_22810:
	mov r9,r7
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@684:34;684:44../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
@cfg_label_21851:
	sll r6,r8,$2
	add r5,r9,r6
	sw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@687:5;687:23::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@683:2;687:27../../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r11,r9
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38::<=../../cpuex2017/raytracer/min-rt.ml@683:2;687:27
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21858:
@cfg_label_21856:
	addi r10,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@684:34;684:44::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@683:2;687:27
	li r12,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22812
@emit_label_22811:
	sw r12,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22811
@emit_label_22812:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@683:2;687:27::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@684:34;684:44../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r9,r11
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8710read_or_network:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r8,r10
@cfg_label_21799:
	li r21,$0
;../../cpuex2017/raytracer/min-rt.ml@691:26;691:27
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24::<=../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@683:13;683:24../../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r20,r10,@cfg_label_21806
	j @cfg_label_21805
@cfg_label_21806:
@cfg_label_21808:
	addi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::<=../../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	jal @a_8708read_net_item
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	sw r20,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@687:5;687:23::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r20,r21
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38::<=../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	j @cfg_label_21832
@cfg_label_21805:
@cfg_label_21807:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@684:34;684:44::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22814
@emit_label_22813:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22813
@emit_label_22814:
	mov r20,r7
;../../cpuex2017/raytracer/min-rt.ml@691:12;691:27::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@684:34;684:44../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
@cfg_label_21832:
	lw r10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@692:5;692:12::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@692:15;692:17
	bne r10,r11,@cfg_label_21827
	j @cfg_label_21826
@cfg_label_21827:
@cfg_label_21829:
	addi r22,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@695:29;695:39::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@691:2;696:26
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@691:26;691:27::<=../../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	jal @a_8708read_net_item
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@691:12;691:27../../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	lw r10,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@692:5;692:12::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@692:15;692:17
	bne r10,r11,@cfg_label_21815
	j @cfg_label_21814
@cfg_label_21815:
@cfg_label_21817:
	addi r24,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@695:29;695:39::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@695:29;695:39
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@695:29;695:39::<=../../cpuex2017/raytracer/min-rt.ml@695:29;695:39
	jal @a_8710read_or_network
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@695:12;695:40../../cpuex2017/raytracer/min-rt.ml@695:12;695:27
	sll r6,r22,$2
	add r5,r23,r6
	sw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@696:5;696:22::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@695:12;695:40../../cpuex2017/raytracer/min-rt.ml@695:29;695:39../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	mov r9,r23
;../../cpuex2017/raytracer/min-rt.ml@695:12;695:40::<=../../cpuex2017/raytracer/min-rt.ml@695:12;695:40
	j @cfg_label_21819
@cfg_label_21814:
@cfg_label_21816:
	addi r10,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@693:18;693:28::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@695:29;695:39
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22816
@emit_label_22815:
	sw r21,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22815
@emit_label_22816:
	mov r9,r7
;../../cpuex2017/raytracer/min-rt.ml@695:12;695:40::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@693:18;693:28../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
@cfg_label_21819:
	sll r6,r8,$2
	add r5,r9,r6
	sw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@696:5;696:22::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@695:12;695:40../../cpuex2017/raytracer/min-rt.ml@691:2;696:26../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	mov r11,r9
;../../cpuex2017/raytracer/min-rt.ml@695:12;695:40::<=../../cpuex2017/raytracer/min-rt.ml@691:2;696:26
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21828:
@cfg_label_21826:
	addi r10,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@693:18;693:28::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@691:2;696:26
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22818
@emit_label_22817:
	sw r20,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22817
@emit_label_22818:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@691:2;696:26::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@693:18;693:28../../cpuex2017/raytracer/min-rt.ml@691:12;691:27
	mov r9,r11
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8712read_and_network:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$40
	subi r1,r1,$24
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	sw r20,r1,$16
	sw r8,r1,$20
	mov r20,r10
@cfg_label_21798:
@cfg_label_21763:
	li r22,$0
;../../cpuex2017/raytracer/min-rt.ml@700:26;700:27
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@683:22;683:24::<=../../cpuex2017/raytracer/min-rt.ml@683:22;683:24
	jal read_int
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@683:13;683:24../../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	bne r21,r10,@cfg_label_21770
	j @cfg_label_21769
@cfg_label_21770:
@cfg_label_21772:
	addi r23,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@686:27;686:37::<=../../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	jal @a_8708read_net_item
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	sw r21,r22,$0
;../../cpuex2017/raytracer/min-rt.ml@687:5;687:23::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@686:12;686:38../../cpuex2017/raytracer/min-rt.ml@683:13;683:24
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@686:12;686:38::<=../../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	j @cfg_label_21792
@cfg_label_21769:
@cfg_label_21771:
	addi r11,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@684:34;684:44::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	li r12,$-1
;../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22820
@emit_label_22819:
	sw r12,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22819
@emit_label_22820:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@700:12;700:27::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@684:34;684:44../../cpuex2017/raytracer/min-rt.ml@684:47;684:49
@cfg_label_21792:
	lw r11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@701:5;701:12::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	li r12,$-1
;../../cpuex2017/raytracer/min-rt.ml@701:15;701:17
	bne r11,r12,@cfg_label_21787
@cfg_label_21788:
	mov r9,r8
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$40
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21789:
@cfg_label_21787:
	lw r5,r31,$388
	sll r6,r20,$2
	add r5,r5,r6
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@703:4;703:22::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@703:4;703:11../../cpuex2017/raytracer/min-rt.ml@700:2;705:3../../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	addi r21,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@704:22;704:27::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	li r22,$0
;../../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@700:26;700:27::<=../../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	jal @a_8708read_net_item
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@700:12;700:27../../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	lw r10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@701:5;701:12::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@701:15;701:17
	bne r10,r11,@cfg_label_21777
@cfg_label_21778:
	mov r9,r8
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$40
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21779:
@cfg_label_21777:
	lw r5,r31,$388
	sll r6,r21,$2
	add r5,r5,r6
	sw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@703:4;703:22::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@703:4;703:11../../cpuex2017/raytracer/min-rt.ml@704:22;704:27../../cpuex2017/raytracer/min-rt.ml@700:12;700:27
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@704:22;704:27::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@704:22;704:27
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@700:2;705:3::<=../../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	j @cfg_label_21763
@a_8716solver_rect_surface:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
	mov r12,r12
	mov r13,r13
	mov r14,r14
@cfg_label_21693:
	sll r6,r12,$2
	add r5,r11,r6
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@735:13;735:24::=OArrRead../../cpuex2017/raytracer/min-rt.ml@735:2;744:12../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f14,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f13,f14
	bft @emit_label_22821
	li r15,$0
	j @emit_label_22822
@emit_label_22821:
	li r15,$1
@emit_label_22822:
;../../cpuex2017/raytracer/min-rt.ml@735:5;735:24::=Oeq../../cpuex2017/raytracer/min-rt.ml@735:13;735:24lib/lib_tortesia.ml@5:25;5:28
	li r16,$1
;../../cpuex2017/raytracer/min-rt.ml@735:5;735:24
	bne r15,r16,@cfg_label_21756
@cfg_label_21757:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21758:
@cfg_label_21756:
	lw r15,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@230:29;230:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	lw r16,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	sll r6,r12,$2
	add r5,r11,r6
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@737:48;737:59::=OArrRead../../cpuex2017/raytracer/min-rt.ml@735:2;744:12../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f14,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f13,f14
	bft @emit_label_22823
	li r10,$0
	j @emit_label_22824
@emit_label_22823:
	li r10,$1
@emit_label_22824:
;../../cpuex2017/raytracer/min-rt.ml@737:41;737:59::=Olt../../cpuex2017/raytracer/min-rt.ml@737:48;737:59lib/lib_tortesia.ml@7:24;7:27
	li r17,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r16,r17,@cfg_label_21695
@cfg_label_21696:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r16,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@737:21;737:60::=Onot../../cpuex2017/raytracer/min-rt.ml@737:41;737:59
	j @cfg_label_21748
@cfg_label_21695:
@cfg_label_21697:
	mov r16,r10
;../../cpuex2017/raytracer/min-rt.ml@737:41;737:59::<=../../cpuex2017/raytracer/min-rt.ml@737:21;737:60
@cfg_label_21748:
	sll r6,r12,$2
	add r5,r15,r6
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@737:62;737:70::=OArrRead../../cpuex2017/raytracer/min-rt.ml@230:29;230:30../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r16,r10,@cfg_label_21700
@cfg_label_21701:
	fmov f14,f13
;../../cpuex2017/raytracer/min-rt.ml@737:62;737:70::<=../../cpuex2017/raytracer/min-rt.ml@737:10;737:70
	j @cfg_label_21744
@cfg_label_21700:
@cfg_label_21702:
	fmovi f15,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f14,f15,f13
;../../cpuex2017/raytracer/min-rt.ml@737:10;737:70::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@737:62;737:70
@cfg_label_21744:
	fsub f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@739:12;739:19::=Ofsub../../cpuex2017/raytracer/min-rt.ml@737:10;737:70../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	sll r6,r12,$2
	add r5,r11,r6
	fld f14,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@739:24;739:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@735:2;744:12../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fdiv f10,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@739:11;739:35::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@739:12;739:19../../cpuex2017/raytracer/min-rt.ml@739:24;739:35
	sll r6,r13,$2
	add r5,r11,r6
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@740:24;740:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@735:2;744:12../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmul f14,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@740:18;740:35::=Ofmul../../cpuex2017/raytracer/min-rt.ml@739:11;739:35../../cpuex2017/raytracer/min-rt.ml@740:24;740:35
	fadd f13,f14,f11
;../../cpuex2017/raytracer/min-rt.ml@740:18;740:41::=Ofadd../../cpuex2017/raytracer/min-rt.ml@740:18;740:35../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f11,f13
	bft @cfg_label_21705
	j @cfg_label_21704
@cfg_label_21705:
@cfg_label_21707:
	fmov f11,f13
;../../cpuex2017/raytracer/min-rt.ml@740:18;740:41::<=../../cpuex2017/raytracer/min-rt.ml@740:12;740:42
	j @cfg_label_21734
@cfg_label_21704:
@cfg_label_21706:
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f11,f14,f13
;../../cpuex2017/raytracer/min-rt.ml@740:12;740:42::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@740:18;740:41
@cfg_label_21734:
	sll r6,r13,$2
	add r5,r15,r6
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@740:44;740:52::=OArrRead../../cpuex2017/raytracer/min-rt.ml@230:29;230:30../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	flt f11,f13
	bft @emit_label_22825
	li r10,$0
	j @emit_label_22826
@emit_label_22825:
	li r10,$1
@emit_label_22826:
;../../cpuex2017/raytracer/min-rt.ml@740:5;740:52::=Olt../../cpuex2017/raytracer/min-rt.ml@740:12;740:42../../cpuex2017/raytracer/min-rt.ml@740:44;740:52
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@740:5;740:52
	bne r10,r12,@cfg_label_21728
	j @cfg_label_21727
@cfg_label_21728:
@cfg_label_21730:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21729:
@cfg_label_21727:
	sll r6,r14,$2
	add r5,r11,r6
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@741:26;741:37::=OArrRead../../cpuex2017/raytracer/min-rt.ml@735:2;744:12../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmul f13,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@741:20;741:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@739:11;739:35../../cpuex2017/raytracer/min-rt.ml@741:26;741:37
	fadd f11,f13,f12
;../../cpuex2017/raytracer/min-rt.ml@741:20;741:43::=Ofadd../../cpuex2017/raytracer/min-rt.ml@741:20;741:37../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	fmovi f12,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f12,f11
	bft @cfg_label_21710
	j @cfg_label_21709
@cfg_label_21710:
@cfg_label_21712:
	fmov f12,f11
;../../cpuex2017/raytracer/min-rt.ml@741:20;741:43::<=../../cpuex2017/raytracer/min-rt.ml@741:14;741:44
	j @cfg_label_21721
@cfg_label_21709:
@cfg_label_21711:
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f12,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@741:14;741:44::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@741:20;741:43
@cfg_label_21721:
	sll r6,r14,$2
	add r5,r15,r6
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@741:46;741:54::=OArrRead../../cpuex2017/raytracer/min-rt.ml@230:29;230:30../../cpuex2017/raytracer/min-rt.ml@735:2;744:12
	flt f12,f11
	bft @emit_label_22827
	li r10,$0
	j @emit_label_22828
@emit_label_22827:
	li r10,$1
@emit_label_22828:
;../../cpuex2017/raytracer/min-rt.ml@741:7;741:54::=Olt../../cpuex2017/raytracer/min-rt.ml@741:14;741:44../../cpuex2017/raytracer/min-rt.ml@741:46;741:54
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@741:7;741:54
	bne r10,r11,@cfg_label_21715
	j @cfg_label_21714
@cfg_label_21715:
@cfg_label_21717:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21716:
@cfg_label_21714:
	lw r5,r31,$356
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@742:7;742:28::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@742:7;742:18../../cpuex2017/raytracer/min-rt.ml@739:11;739:35
	lw r9,r31,$16
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8725solver_rect:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$40
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	fst f7,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	mov r8,r10
	mov r20,r11
	fmov f4,f10
	fmov f6,f11
	fmov f7,f12
@cfg_label_21665:
	li r22,$0
;../../cpuex2017/raytracer/min-rt.ml@750:48;750:49
	li r23,$1
;../../cpuex2017/raytracer/min-rt.ml@750:50;750:51
	li r24,$2
;../../cpuex2017/raytracer/min-rt.ml@750:52;750:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$32
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r12,r22
;../../cpuex2017/raytracer/min-rt.ml@750:48;750:49::<=../../cpuex2017/raytracer/min-rt.ml@750:48;750:49
	mov r13,r23
;../../cpuex2017/raytracer/min-rt.ml@750:50;750:51::<=../../cpuex2017/raytracer/min-rt.ml@750:50;750:51
	mov r14,r24
;../../cpuex2017/raytracer/min-rt.ml@750:52;750:53::<=../../cpuex2017/raytracer/min-rt.ml@750:52;750:53
	jal @a_8716solver_rect_surface
	mov r21,r9
	addi r1,r1,$32
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@750:10;750:53../../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@750:10;750:53
	bne r21,r10,@cfg_label_21685
@cfg_label_21686:
	li r9,$1
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21687:
@cfg_label_21685:
	li r22,$1
;../../cpuex2017/raytracer/min-rt.ml@751:48;751:49
	li r23,$2
;../../cpuex2017/raytracer/min-rt.ml@751:50;751:51
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@751:52;751:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$32
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f12,f4
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r12,r22
;../../cpuex2017/raytracer/min-rt.ml@751:48;751:49::<=../../cpuex2017/raytracer/min-rt.ml@751:48;751:49
	mov r13,r23
;../../cpuex2017/raytracer/min-rt.ml@751:50;751:51::<=../../cpuex2017/raytracer/min-rt.ml@751:50;751:51
	mov r14,r24
;../../cpuex2017/raytracer/min-rt.ml@751:52;751:53::<=../../cpuex2017/raytracer/min-rt.ml@751:52;751:53
	jal @a_8716solver_rect_surface
	mov r21,r9
	addi r1,r1,$32
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@751:10;751:53../../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@751:10;751:53
	bne r21,r10,@cfg_label_21676
@cfg_label_21677:
	li r9,$2
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21678:
@cfg_label_21676:
	li r22,$2
;../../cpuex2017/raytracer/min-rt.ml@752:48;752:49
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@752:50;752:51
	li r24,$1
;../../cpuex2017/raytracer/min-rt.ml@752:52;752:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$32
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f11,f4
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	fmov f12,f6
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60::<=../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	mov r12,r22
;../../cpuex2017/raytracer/min-rt.ml@752:48;752:49::<=../../cpuex2017/raytracer/min-rt.ml@752:48;752:49
	mov r13,r23
;../../cpuex2017/raytracer/min-rt.ml@752:50;752:51::<=../../cpuex2017/raytracer/min-rt.ml@752:50;752:51
	mov r14,r24
;../../cpuex2017/raytracer/min-rt.ml@752:52;752:53::<=../../cpuex2017/raytracer/min-rt.ml@752:52;752:53
	jal @a_8716solver_rect_surface
	mov r21,r9
	addi r1,r1,$32
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@752:10;752:53../../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@752:10;752:53
	bne r21,r10,@cfg_label_21667
@cfg_label_21668:
	li r9,$3
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21669:
@cfg_label_21667:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8737quadratic:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_21634:
	fmul f14,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@774:4;774:11::=Ofmul../../cpuex2017/raytracer/min-rt.ml@773:2;782:33../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw r11,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fld f15,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@774:15;774:26::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f13,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@774:4;774:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@774:4;774:11../../cpuex2017/raytracer/min-rt.ml@774:15;774:26
	fmul f14,f11,f11
;../../cpuex2017/raytracer/min-rt.ml@774:30;774:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@773:2;782:33../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fld f16,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@774:41;774:52::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f15,f14,f16
;../../cpuex2017/raytracer/min-rt.ml@774:30;774:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@774:30;774:37../../cpuex2017/raytracer/min-rt.ml@774:41;774:52
	fadd f14,f13,f15
;../../cpuex2017/raytracer/min-rt.ml@774:4;774:52::=Ofadd../../cpuex2017/raytracer/min-rt.ml@774:4;774:26../../cpuex2017/raytracer/min-rt.ml@774:30;774:52
	fmul f13,f12,f12
;../../cpuex2017/raytracer/min-rt.ml@774:56;774:63::=Ofmul../../cpuex2017/raytracer/min-rt.ml@773:2;782:33../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fld f15,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@774:67;774:78::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f16,f13,f15
;../../cpuex2017/raytracer/min-rt.ml@774:56;774:78::=Ofmul../../cpuex2017/raytracer/min-rt.ml@774:56;774:63../../cpuex2017/raytracer/min-rt.ml@774:67;774:78
	fadd f13,f14,f16
;../../cpuex2017/raytracer/min-rt.ml@774:4;774:78::=Ofadd../../cpuex2017/raytracer/min-rt.ml@774:4;774:52../../cpuex2017/raytracer/min-rt.ml@774:56;774:78
	lw r11,r10,$12
;../../cpuex2017/raytracer/min-rt.ml@191:29;191:30::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	li r12,$0
;../../cpuex2017/raytracer/min-rt.ml@776:17;776:18
	bne r11,r12,@cfg_label_21648
@cfg_label_21649:
	fmov f5,f13
;../../cpuex2017/raytracer/min-rt.ml@774:4;774:78::<=../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fmov f5,f13
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21650:
@cfg_label_21648:
	fmul f14,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@780:9;780:17::=Ofmul../../cpuex2017/raytracer/min-rt.ml@773:2;782:33../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	lw r11,r10,$36
;../../cpuex2017/raytracer/min-rt.ml@320:28;320:29::=OGetTuple[9]../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fld f16,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@780:21;780:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f15,f14,f16
;../../cpuex2017/raytracer/min-rt.ml@780:9;780:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@780:9;780:17../../cpuex2017/raytracer/min-rt.ml@780:21;780:33
	fadd f14,f13,f15
;../../cpuex2017/raytracer/min-rt.ml@779:4;780:33::=Ofadd../../cpuex2017/raytracer/min-rt.ml@774:4;774:78../../cpuex2017/raytracer/min-rt.ml@780:9;780:33
	fmul f13,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@781:9;781:17::=Ofmul../../cpuex2017/raytracer/min-rt.ml@773:2;782:33../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fld f12,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@781:21;781:33::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f15,f13,f12
;../../cpuex2017/raytracer/min-rt.ml@781:9;781:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@781:9;781:17../../cpuex2017/raytracer/min-rt.ml@781:21;781:33
	fadd f12,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@779:4;781:33::=Ofadd../../cpuex2017/raytracer/min-rt.ml@779:4;780:33../../cpuex2017/raytracer/min-rt.ml@781:9;781:33
	fmul f13,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@782:9;782:17::=Ofmul../../cpuex2017/raytracer/min-rt.ml@773:2;782:33../../cpuex2017/raytracer/min-rt.ml@773:2;782:33
	fld f10,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@782:21;782:33::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f11,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@782:9;782:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@782:9;782:17../../cpuex2017/raytracer/min-rt.ml@782:21;782:33
	fadd f5,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@773:2;782:33::=Ofadd../../cpuex2017/raytracer/min-rt.ml@779:4;781:33../../cpuex2017/raytracer/min-rt.ml@782:9;782:33
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8742bilinear:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
	fmov f13,f13
	fmov f14,f14
	fmov f15,f15
@cfg_label_21595:
	fmul f17,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@789:4;789:12::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	lw r11,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fld f18,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@789:16;789:27::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f16,f17,f18
;../../cpuex2017/raytracer/min-rt.ml@789:4;789:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@789:4;789:12../../cpuex2017/raytracer/min-rt.ml@789:16;789:27
	fmul f17,f11,f14
;../../cpuex2017/raytracer/min-rt.ml@790:9;790:17::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fld f19,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@790:21;790:32::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f18,f17,f19
;../../cpuex2017/raytracer/min-rt.ml@790:9;790:32::=Ofmul../../cpuex2017/raytracer/min-rt.ml@790:9;790:17../../cpuex2017/raytracer/min-rt.ml@790:21;790:32
	fadd f17,f16,f18
;../../cpuex2017/raytracer/min-rt.ml@789:4;790:32::=Ofadd../../cpuex2017/raytracer/min-rt.ml@789:4;789:27../../cpuex2017/raytracer/min-rt.ml@790:9;790:32
	fmul f16,f12,f15
;../../cpuex2017/raytracer/min-rt.ml@791:9;791:17::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fld f18,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@791:21;791:32::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f19,f16,f18
;../../cpuex2017/raytracer/min-rt.ml@791:9;791:32::=Ofmul../../cpuex2017/raytracer/min-rt.ml@791:9;791:17../../cpuex2017/raytracer/min-rt.ml@791:21;791:32
	fadd f16,f17,f19
;../../cpuex2017/raytracer/min-rt.ml@789:4;791:32::=Ofadd../../cpuex2017/raytracer/min-rt.ml@789:4;790:32../../cpuex2017/raytracer/min-rt.ml@791:9;791:32
	lw r11,r10,$12
;../../cpuex2017/raytracer/min-rt.ml@191:29;191:30::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	li r12,$0
;../../cpuex2017/raytracer/min-rt.ml@793:17;793:18
	bne r11,r12,@cfg_label_21617
@cfg_label_21618:
	fmov f5,f16
;../../cpuex2017/raytracer/min-rt.ml@789:4;791:32::<=../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmov f5,f16
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21619:
@cfg_label_21617:
	fmul f17,f12,f14
;../../cpuex2017/raytracer/min-rt.ml@797:8;797:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmul f19,f11,f15
;../../cpuex2017/raytracer/min-rt.ml@797:20;797:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fadd f18,f17,f19
;../../cpuex2017/raytracer/min-rt.ml@797:8;797:28::=Ofadd../../cpuex2017/raytracer/min-rt.ml@797:8;797:16../../cpuex2017/raytracer/min-rt.ml@797:20;797:28
	lw r11,r10,$36
;../../cpuex2017/raytracer/min-rt.ml@320:28;320:29::=OGetTuple[9]../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fld f19,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@797:33;797:45::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f17,f18,f19
;../../cpuex2017/raytracer/min-rt.ml@797:7;797:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@797:8;797:28../../cpuex2017/raytracer/min-rt.ml@797:33;797:45
	fmul f18,f10,f15
;../../cpuex2017/raytracer/min-rt.ml@798:6;798:14::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmul f15,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@798:18;798:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fadd f12,f18,f15
;../../cpuex2017/raytracer/min-rt.ml@798:6;798:26::=Ofadd../../cpuex2017/raytracer/min-rt.ml@798:6;798:14../../cpuex2017/raytracer/min-rt.ml@798:18;798:26
	fld f18,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@798:31;798:43::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f15,f12,f18
;../../cpuex2017/raytracer/min-rt.ml@798:5;798:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@798:6;798:26../../cpuex2017/raytracer/min-rt.ml@798:31;798:43
	fadd f12,f17,f15
;../../cpuex2017/raytracer/min-rt.ml@797:7;798:43::=Ofadd../../cpuex2017/raytracer/min-rt.ml@797:7;797:45../../cpuex2017/raytracer/min-rt.ml@798:5;798:43
	fmul f15,f10,f14
;../../cpuex2017/raytracer/min-rt.ml@799:6;799:14::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fmul f10,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@799:18;799:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@788:2;799:44../../cpuex2017/raytracer/min-rt.ml@788:2;799:44
	fadd f11,f15,f10
;../../cpuex2017/raytracer/min-rt.ml@799:6;799:26::=Ofadd../../cpuex2017/raytracer/min-rt.ml@799:6;799:14../../cpuex2017/raytracer/min-rt.ml@799:18;799:26
	fld f10,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@799:31;799:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@320:28;320:29
	fmul f13,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@799:5;799:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@799:6;799:26../../cpuex2017/raytracer/min-rt.ml@799:31;799:43
	fadd f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@797:7;799:43::=Ofadd../../cpuex2017/raytracer/min-rt.ml@797:7;798:43../../cpuex2017/raytracer/min-rt.ml@799:5;799:43
	fmovi f12,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@796:17;799:44::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@797:7;799:43lib/lib_tortesia.ml@20:23;20:26
	fadd f5,f16,f11
;../../cpuex2017/raytracer/min-rt.ml@788:2;799:44::=Ofadd../../cpuex2017/raytracer/min-rt.ml@789:4;791:32../../cpuex2017/raytracer/min-rt.ml@796:17;799:44
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8750solver_second:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$60
	subi r1,r1,$44
	sw r6,r1,$0
	fst f22,r1,$4
	fst f21,r1,$8
	fst f20,r1,$12
	sw r20,r1,$16
	fst f9,r1,$20
	fst f8,r1,$24
	fst f7,r1,$28
	fst f6,r1,$32
	sw r8,r1,$36
	fst f4,r1,$40
	mov r8,r10
	mov r20,r11
	fmov f7,f10
	fmov f8,f11
	fmov f9,f12
@cfg_label_21546:
	fld f6,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@814:23;814:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fld f20,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@814:34;814:44::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fld f21,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@814:45;814:55::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@814:23;814:33::<=../../cpuex2017/raytracer/min-rt.ml@814:23;814:33
	fmov f11,f20
;../../cpuex2017/raytracer/min-rt.ml@814:34;814:44::<=../../cpuex2017/raytracer/min-rt.ml@814:34;814:44
	fmov f12,f21
;../../cpuex2017/raytracer/min-rt.ml@814:45;814:55::<=../../cpuex2017/raytracer/min-rt.ml@814:45;814:55
	jal @a_8737quadratic
	fmov f4,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@814:11;814:55../../cpuex2017/raytracer/min-rt.ml@814:11;814:20
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f4,f10
	bft @emit_label_22829
	li r10,$0
	j @emit_label_22830
@emit_label_22829:
	li r10,$1
@emit_label_22830:
;../../cpuex2017/raytracer/min-rt.ml@816:5;816:15::=Oeq../../cpuex2017/raytracer/min-rt.ml@814:11;814:55lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@816:5;816:15
	bne r10,r11,@cfg_label_21585
@cfg_label_21586:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw r6,r1,$0
	fld f22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	lw r20,r1,$16
	fld f9,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	fld f6,r1,$32
	lw r8,r1,$36
	fld f4,r1,$40
	addi r1,r1,$44
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21587:
@cfg_label_21585:
	fld f20,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@821:24;821:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fld f21,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@821:35;821:45::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fld f22,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@821:46;821:56::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$28
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f10,f20
;../../cpuex2017/raytracer/min-rt.ml@821:24;821:34::<=../../cpuex2017/raytracer/min-rt.ml@821:24;821:34
	fmov f11,f21
;../../cpuex2017/raytracer/min-rt.ml@821:35;821:45::<=../../cpuex2017/raytracer/min-rt.ml@821:35;821:45
	fmov f12,f22
;../../cpuex2017/raytracer/min-rt.ml@821:46;821:56::<=../../cpuex2017/raytracer/min-rt.ml@821:46;821:56
	fmov f13,f7
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f14,f8
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f15,f9
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	jal @a_8742bilinear
	fmov f6,f5
	addi r1,r1,$28
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@821:13;821:65../../cpuex2017/raytracer/min-rt.ml@821:13;821:21
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f11,f8
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	fmov f12,f9
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4::<=../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	jal @a_8737quadratic
	fmov f20,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@823:14;823:34../../cpuex2017/raytracer/min-rt.ml@814:11;814:20
	lw r10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@824:27;824:28
	bne r10,r11,@cfg_label_21549
	j @cfg_label_21548
@cfg_label_21549:
@cfg_label_21551:
	fmov f10,f20
;../../cpuex2017/raytracer/min-rt.ml@823:14;823:34::<=../../cpuex2017/raytracer/min-rt.ml@824:13;824:53
	j @cfg_label_21575
@cfg_label_21548:
@cfg_label_21550:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@824:41;824:44
	fsub f10,f20,f11
;../../cpuex2017/raytracer/min-rt.ml@824:13;824:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@823:14;823:34../../cpuex2017/raytracer/min-rt.ml@824:41;824:44
@cfg_label_21575:
	fmul f11,f6,f6
;../../cpuex2017/raytracer/min-rt.ml@826:12;826:19::=Ofmul../../cpuex2017/raytracer/min-rt.ml@821:13;821:65../../cpuex2017/raytracer/min-rt.ml@821:13;821:65
	fmul f12,f4,f10
;../../cpuex2017/raytracer/min-rt.ml@826:23;826:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@814:11;814:55../../cpuex2017/raytracer/min-rt.ml@824:13;824:53
	fsub f7,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@826:12;826:31::=Ofsub../../cpuex2017/raytracer/min-rt.ml@826:12;826:19../../cpuex2017/raytracer/min-rt.ml@826:23;826:31
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f10,f7
	bft @emit_label_22831
	li r10,$0
	j @emit_label_22832
@emit_label_22831:
	li r10,$1
@emit_label_22832:
;../../cpuex2017/raytracer/min-rt.ml@828:7;828:15::=Ogt../../cpuex2017/raytracer/min-rt.ml@826:12;826:31lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@828:7;828:15
	bne r10,r11,@cfg_label_21566
	j @cfg_label_21565
@cfg_label_21566:
@cfg_label_21568:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw r6,r1,$0
	fld f22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	lw r20,r1,$16
	fld f9,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	fld f6,r1,$32
	lw r8,r1,$36
	fld f4,r1,$40
	addi r1,r1,$44
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21567:
@cfg_label_21565:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@826:12;826:31::<=../../cpuex2017/raytracer/min-rt.ml@826:12;826:31
	jal sqrt
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@829:15;829:21../../cpuex2017/raytracer/min-rt.ml@829:15;829:19
	lw r10,r8,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@830:18;830:30
	bne r10,r11,@cfg_label_21554
@cfg_label_21555:
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@829:15;829:21::<=../../cpuex2017/raytracer/min-rt.ml@830:15;830:51
	j @cfg_label_21561
@cfg_label_21554:
@cfg_label_21556:
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f8
;../../cpuex2017/raytracer/min-rt.ml@830:15;830:51::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@829:15;829:21
@cfg_label_21561:
	fsub f11,f10,f6
;../../cpuex2017/raytracer/min-rt.ml@831:27;831:35::=Ofsub../../cpuex2017/raytracer/min-rt.ml@830:15;830:51../../cpuex2017/raytracer/min-rt.ml@821:13;821:65
	fdiv f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@831:26;831:43::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@831:27;831:35../../cpuex2017/raytracer/min-rt.ml@814:11;814:55
	lw r5,r31,$356
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@831:7;831:43::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@831:7;831:18../../cpuex2017/raytracer/min-rt.ml@831:26;831:43
	li r9,$1
;../../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw r6,r1,$0
	fld f22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	lw r20,r1,$16
	fld f9,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	fld f6,r1,$32
	lw r8,r1,$36
	fld f4,r1,$40
	addi r1,r1,$44
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8756solver:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$56
	subi r1,r1,$28
	sw r6,r1,$0
	sw r21,r1,$4
	sw r20,r1,$8
	sw r8,r1,$12
	fst f7,r1,$16
	fst f6,r1,$20
	fst f4,r1,$24
	mov r10,r10
	mov r8,r11
	mov r12,r12
@cfg_label_21492:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@840:10;840:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@840:10;840:17../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fld f10,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@842:12;842:19::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	lw r10,r20,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	fld f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@842:23;842:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@842:12;842:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@842:12;842:19../../cpuex2017/raytracer/min-rt.ml@842:23;842:34
	fld f10,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@843:12;843:19::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fld f11,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@843:23;843:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@843:12;843:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@843:12;843:19../../cpuex2017/raytracer/min-rt.ml@843:23;843:34
	fld f10,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@844:12;844:19::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fld f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@844:23;844:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@844:12;844:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@844:12;844:19../../cpuex2017/raytracer/min-rt.ml@844:23;844:34
	lw r10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@847:15;847:16
	bne r10,r11,@cfg_label_21530
@cfg_label_21531:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@840:10;840:25::<=../../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@840:2;849:59::<=../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@842:12;842:34::<=../../cpuex2017/raytracer/min-rt.ml@842:12;842:34
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@843:12;843:34::<=../../cpuex2017/raytracer/min-rt.ml@843:12;843:34
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@844:12;844:34::<=../../cpuex2017/raytracer/min-rt.ml@844:12;844:34
	jal @a_8725solver_rect
	mov r21,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@840:2;849:59../../cpuex2017/raytracer/min-rt.ml@847:28;847:39
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	addi r1,r1,$28
	addi r1,r1,$56
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21532:
@cfg_label_21530:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@848:20;848:21
	bne r10,r11,@cfg_label_21525
	j @cfg_label_21524
@cfg_label_21525:
@cfg_label_21527:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@840:10;840:25::<=../../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@840:2;849:59::<=../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@842:12;842:34::<=../../cpuex2017/raytracer/min-rt.ml@842:12;842:34
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@843:12;843:34::<=../../cpuex2017/raytracer/min-rt.ml@843:12;843:34
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@844:12;844:34::<=../../cpuex2017/raytracer/min-rt.ml@844:12;844:34
	jal @a_8750solver_second
	mov r21,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@840:2;849:59../../cpuex2017/raytracer/min-rt.ml@849:28;849:41
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	addi r1,r1,$28
	addi r1,r1,$56
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21526:
@cfg_label_21524:
	lw r10,r20,$16
;../../cpuex2017/raytracer/min-rt.ml@761:12;761:25::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@840:10;840:25
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fld f13,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	fld f13,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@762:10;762:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22833
	li r11,$0
	j @emit_label_22834
@emit_label_22833:
	li r11,$1
@emit_label_22834:
;../../cpuex2017/raytracer/min-rt.ml@763:5;763:13::=Ogt../../cpuex2017/raytracer/min-rt.ml@762:10;762:29lib/lib_tortesia.ml@9:24;9:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@763:5;763:13
	bne r11,r12,@cfg_label_21506
	j @cfg_label_21505
@cfg_label_21506:
@cfg_label_21508:
	li r21,$0
;../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	addi r1,r1,$28
	addi r1,r1,$56
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21507:
@cfg_label_21505:
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f11,f12,f4
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:13::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:2;105:7../../cpuex2017/raytracer/min-rt.ml@842:12;842:34
	fld f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f13,f12,f6
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:17;105:22../../cpuex2017/raytracer/min-rt.ml@843:12;843:34
	fadd f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:28::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:13../../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	fld f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:37::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@761:12;761:25
	fmul f13,f11,f7
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:32;105:37../../cpuex2017/raytracer/min-rt.ml@844:12;844:34
	fadd f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@764:29;764:51::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:28../../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f12,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@764:23;764:52::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@764:29;764:51
	fdiv f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@764:23;764:57::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@764:23;764:52../../cpuex2017/raytracer/min-rt.ml@762:10;762:29
	lw r5,r31,$356
	fst f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@764:4;764:57::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@764:4;764:15../../cpuex2017/raytracer/min-rt.ml@764:23;764:57
	li r21,$1
;../../cpuex2017/raytracer/min-rt.ml@840:2;849:59
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	addi r1,r1,$28
	addi r1,r1,$56
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8760solver_rect_fast:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
	mov r12,r12
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_21334:
	fld f13,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@872:12;872:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fsub f14,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@872:12;872:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@872:12;872:22../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fld f15,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@872:33;872:43::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f13,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@872:11;872:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@872:12;872:28../../cpuex2017/raytracer/min-rt.ml@872:33;872:43
	fld f15,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@874:26;874:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f14,f13,f15
;../../cpuex2017/raytracer/min-rt.ml@874:20;874:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@872:11;872:43../../cpuex2017/raytracer/min-rt.ml@874:26;874:31
	fadd f15,f14,f11
;../../cpuex2017/raytracer/min-rt.ml@874:20;874:37::=Ofadd../../cpuex2017/raytracer/min-rt.ml@874:20;874:31../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f14,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f14,f15
	bft @cfg_label_21337
	j @cfg_label_21336
@cfg_label_21337:
@cfg_label_21339:
	fmov f14,f15
;../../cpuex2017/raytracer/min-rt.ml@874:20;874:37::<=../../cpuex2017/raytracer/min-rt.ml@874:14;874:38
	j @cfg_label_21482
@cfg_label_21336:
@cfg_label_21338:
	fmovi f16,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f14,f16,f15
;../../cpuex2017/raytracer/min-rt.ml@874:14;874:38::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@874:20;874:37
@cfg_label_21482:
	lw r13,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@210:29;210:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fld f15,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@874:41;874:52::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f14,f15
	bft @emit_label_22835
	li r10,$0
	j @emit_label_22836
@emit_label_22835:
	li r10,$1
@emit_label_22836:
;../../cpuex2017/raytracer/min-rt.ml@874:7;874:53::=Olt../../cpuex2017/raytracer/min-rt.ml@874:14;874:38../../cpuex2017/raytracer/min-rt.ml@874:41;874:52
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@874:7;874:53
	bne r10,r14,@cfg_label_21362
	j @cfg_label_21361
@cfg_label_21362:
@cfg_label_21364:
	lw r14,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@877:11;877:16::<=../../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	j @cfg_label_21475
@cfg_label_21361:
@cfg_label_21363:
	fld f14,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@875:28;875:33::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@875:22;875:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@872:11;872:43../../cpuex2017/raytracer/min-rt.ml@875:28;875:33
	fadd f14,f15,f12
;../../cpuex2017/raytracer/min-rt.ml@875:22;875:39::=Ofadd../../cpuex2017/raytracer/min-rt.ml@875:22;875:33../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f15,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f15,f14
	bft @cfg_label_21342
	j @cfg_label_21341
@cfg_label_21342:
@cfg_label_21344:
	fmov f15,f14
;../../cpuex2017/raytracer/min-rt.ml@875:22;875:39::<=../../cpuex2017/raytracer/min-rt.ml@875:16;875:40
	j @cfg_label_21355
@cfg_label_21341:
@cfg_label_21343:
	fmovi f16,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f15,f16,f14
;../../cpuex2017/raytracer/min-rt.ml@875:16;875:40::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@875:22;875:39
@cfg_label_21355:
	fld f14,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@875:43;875:54::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f15,f14
	bft @emit_label_22837
	li r10,$0
	j @emit_label_22838
@emit_label_22837:
	li r10,$1
@emit_label_22838:
;../../cpuex2017/raytracer/min-rt.ml@875:9;875:55::=Olt../../cpuex2017/raytracer/min-rt.ml@875:16;875:40../../cpuex2017/raytracer/min-rt.ml@875:43;875:54
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@875:9;875:55
	bne r10,r14,@cfg_label_21349
	j @cfg_label_21348
@cfg_label_21349:
@cfg_label_21351:
	lw r14,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@877:11;877:16::<=../../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	j @cfg_label_21476
@cfg_label_21348:
@cfg_label_21350:
	fld f14,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@876:14;876:24::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f15,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f14,f15
	bft @emit_label_22839
	li r10,$0
	j @emit_label_22840
@emit_label_22839:
	li r10,$1
@emit_label_22840:
;../../cpuex2017/raytracer/min-rt.ml@876:6;876:24::=Oeq../../cpuex2017/raytracer/min-rt.ml@876:14;876:24lib/lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r14,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@874:4;878:14::=Onot../../cpuex2017/raytracer/min-rt.ml@876:6;876:24
@cfg_label_21476:
@cfg_label_21475:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	bne r14,r10,@cfg_label_21471
	j @cfg_label_21470
@cfg_label_21471:
@cfg_label_21473:
	fld f13,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@881:17;881:27::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fsub f14,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@881:17;881:33::=Ofsub../../cpuex2017/raytracer/min-rt.ml@881:17;881:27../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fld f15,r12,$12
;../../cpuex2017/raytracer/min-rt.ml@881:38;881:48::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f13,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@881:16;881:48::=Ofmul../../cpuex2017/raytracer/min-rt.ml@881:17;881:33../../cpuex2017/raytracer/min-rt.ml@881:38;881:48
	fld f14,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@883:26;883:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@883:20;883:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@881:16;881:48../../cpuex2017/raytracer/min-rt.ml@883:26;883:31
	fadd f14,f15,f10
;../../cpuex2017/raytracer/min-rt.ml@883:20;883:37::=Ofadd../../cpuex2017/raytracer/min-rt.ml@883:20;883:31../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f15,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f15,f14
	bft @cfg_label_21368
	j @cfg_label_21367
@cfg_label_21368:
@cfg_label_21370:
	fmov f15,f14
;../../cpuex2017/raytracer/min-rt.ml@883:20;883:37::<=../../cpuex2017/raytracer/min-rt.ml@883:14;883:38
	j @cfg_label_21460
@cfg_label_21367:
@cfg_label_21369:
	fmovi f16,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f15,f16,f14
;../../cpuex2017/raytracer/min-rt.ml@883:14;883:38::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@883:20;883:37
@cfg_label_21460:
	fld f14,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@883:41;883:52::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f15,f14
	bft @emit_label_22841
	li r10,$0
	j @emit_label_22842
@emit_label_22841:
	li r10,$1
@emit_label_22842:
;../../cpuex2017/raytracer/min-rt.ml@883:7;883:53::=Olt../../cpuex2017/raytracer/min-rt.ml@883:14;883:38../../cpuex2017/raytracer/min-rt.ml@883:41;883:52
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@883:7;883:53
	bne r10,r14,@cfg_label_21393
	j @cfg_label_21392
@cfg_label_21393:
@cfg_label_21395:
	lw r14,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@877:11;877:16::<=../../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	j @cfg_label_21454
@cfg_label_21392:
@cfg_label_21394:
	fld f14,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@884:28;884:33::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@884:22;884:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@881:16;881:48../../cpuex2017/raytracer/min-rt.ml@884:28;884:33
	fadd f14,f15,f12
;../../cpuex2017/raytracer/min-rt.ml@884:22;884:39::=Ofadd../../cpuex2017/raytracer/min-rt.ml@884:22;884:33../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f15,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f15,f14
	bft @cfg_label_21373
	j @cfg_label_21372
@cfg_label_21373:
@cfg_label_21375:
	fmov f15,f14
;../../cpuex2017/raytracer/min-rt.ml@884:22;884:39::<=../../cpuex2017/raytracer/min-rt.ml@884:16;884:40
	j @cfg_label_21386
@cfg_label_21372:
@cfg_label_21374:
	fmovi f16,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f15,f16,f14
;../../cpuex2017/raytracer/min-rt.ml@884:16;884:40::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@884:22;884:39
@cfg_label_21386:
	fld f14,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@884:43;884:54::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f15,f14
	bft @emit_label_22843
	li r10,$0
	j @emit_label_22844
@emit_label_22843:
	li r10,$1
@emit_label_22844:
;../../cpuex2017/raytracer/min-rt.ml@884:9;884:55::=Olt../../cpuex2017/raytracer/min-rt.ml@884:16;884:40../../cpuex2017/raytracer/min-rt.ml@884:43;884:54
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@884:9;884:55
	bne r10,r14,@cfg_label_21380
	j @cfg_label_21379
@cfg_label_21380:
@cfg_label_21382:
	lw r14,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@877:11;877:16::<=../../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	j @cfg_label_21455
@cfg_label_21379:
@cfg_label_21381:
	fld f14,r12,$12
;../../cpuex2017/raytracer/min-rt.ml@885:14;885:24::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f15,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f14,f15
	bft @emit_label_22845
	li r10,$0
	j @emit_label_22846
@emit_label_22845:
	li r10,$1
@emit_label_22846:
;../../cpuex2017/raytracer/min-rt.ml@885:6;885:24::=Oeq../../cpuex2017/raytracer/min-rt.ml@885:14;885:24lib/lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r14,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@883:4;887:14::=Onot../../cpuex2017/raytracer/min-rt.ml@885:6;885:24
@cfg_label_21455:
@cfg_label_21454:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	bne r14,r10,@cfg_label_21450
	j @cfg_label_21449
@cfg_label_21450:
@cfg_label_21452:
	fld f14,r12,$16
;../../cpuex2017/raytracer/min-rt.ml@890:17;890:27::=OiArrRead[4]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fsub f13,f14,f12
;../../cpuex2017/raytracer/min-rt.ml@890:17;890:33::=Ofsub../../cpuex2017/raytracer/min-rt.ml@890:17;890:27../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fld f14,r12,$20
;../../cpuex2017/raytracer/min-rt.ml@890:38;890:48::=OiArrRead[5]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f12,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@890:16;890:48::=Ofmul../../cpuex2017/raytracer/min-rt.ml@890:17;890:33../../cpuex2017/raytracer/min-rt.ml@890:38;890:48
	fld f13,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@892:26;892:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f14,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@892:20;892:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@890:16;890:48../../cpuex2017/raytracer/min-rt.ml@892:26;892:31
	fadd f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@892:20;892:37::=Ofadd../../cpuex2017/raytracer/min-rt.ml@892:20;892:31../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f10,f13
	bft @cfg_label_21399
	j @cfg_label_21398
@cfg_label_21399:
@cfg_label_21401:
	fmov f10,f13
;../../cpuex2017/raytracer/min-rt.ml@892:20;892:37::<=../../cpuex2017/raytracer/min-rt.ml@892:14;892:38
	j @cfg_label_21439
@cfg_label_21398:
@cfg_label_21400:
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f10,f14,f13
;../../cpuex2017/raytracer/min-rt.ml@892:14;892:38::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@892:20;892:37
@cfg_label_21439:
	fld f13,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@892:41;892:52::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f10,f13
	bft @emit_label_22847
	li r10,$0
	j @emit_label_22848
@emit_label_22847:
	li r10,$1
@emit_label_22848:
;../../cpuex2017/raytracer/min-rt.ml@892:7;892:53::=Olt../../cpuex2017/raytracer/min-rt.ml@892:14;892:38../../cpuex2017/raytracer/min-rt.ml@892:41;892:52
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@892:7;892:53
	bne r10,r14,@cfg_label_21424
	j @cfg_label_21423
@cfg_label_21424:
@cfg_label_21426:
	lw r11,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@877:11;877:16::<=../../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	j @cfg_label_21433
@cfg_label_21423:
@cfg_label_21425:
	fld f10,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@893:28;893:33::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmul f13,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@893:22;893:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@890:16;890:48../../cpuex2017/raytracer/min-rt.ml@893:28;893:33
	fadd f10,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@893:22;893:39::=Ofadd../../cpuex2017/raytracer/min-rt.ml@893:22;893:33../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f11,f10
	bft @cfg_label_21404
	j @cfg_label_21403
@cfg_label_21404:
@cfg_label_21406:
	fmov f11,f10
;../../cpuex2017/raytracer/min-rt.ml@893:22;893:39::<=../../cpuex2017/raytracer/min-rt.ml@893:16;893:40
	j @cfg_label_21417
@cfg_label_21403:
@cfg_label_21405:
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f11,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@893:16;893:40::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@893:22;893:39
@cfg_label_21417:
	fld f10,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@893:43;893:54::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	flt f11,f10
	bft @emit_label_22849
	li r10,$0
	j @emit_label_22850
@emit_label_22849:
	li r10,$1
@emit_label_22850:
;../../cpuex2017/raytracer/min-rt.ml@893:9;893:55::=Olt../../cpuex2017/raytracer/min-rt.ml@893:16;893:40../../cpuex2017/raytracer/min-rt.ml@893:43;893:54
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@893:9;893:55
	bne r10,r11,@cfg_label_21411
	j @cfg_label_21410
@cfg_label_21411:
@cfg_label_21413:
	lw r11,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@877:11;877:16::<=../../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	j @cfg_label_21434
@cfg_label_21410:
@cfg_label_21412:
	fld f10,r12,$20
;../../cpuex2017/raytracer/min-rt.ml@894:14;894:24::=OiArrRead[5]../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22851
	li r10,$0
	j @emit_label_22852
@emit_label_22851:
	li r10,$1
@emit_label_22852:
;../../cpuex2017/raytracer/min-rt.ml@894:6;894:24::=Oeq../../cpuex2017/raytracer/min-rt.ml@894:14;894:24lib/lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@892:4;896:14::=Onot../../cpuex2017/raytracer/min-rt.ml@894:6;894:24
@cfg_label_21434:
@cfg_label_21433:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	bne r11,r10,@cfg_label_21429
	j @cfg_label_21428
@cfg_label_21429:
@cfg_label_21431:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21430:
@cfg_label_21428:
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@898:5;898:26::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@880:5;880:16../../cpuex2017/raytracer/min-rt.ml@890:16;890:48
	li r9,$3
;../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21451:
@cfg_label_21449:
	lw r5,r31,$356
	fst f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@889:5;889:26::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@880:5;880:16../../cpuex2017/raytracer/min-rt.ml@881:16;881:48
	li r9,$2
;../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21472:
@cfg_label_21470:
	lw r5,r31,$356
	fst f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@880:5;880:26::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@880:5;880:16../../cpuex2017/raytracer/min-rt.ml@872:11;872:43
	li r9,$1
;../../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8773solver_second_fast:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$48
	subi r1,r1,$36
	sw r6,r1,$0
	fst f20,r1,$4
	fst f9,r1,$8
	fst f8,r1,$12
	fst f7,r1,$16
	fst f6,r1,$20
	fst f4,r1,$24
	sw r20,r1,$28
	sw r8,r1,$32
	mov r20,r10
	mov r8,r11
	fmov f7,f10
	fmov f8,f11
	fmov f9,f12
@cfg_label_21281:
	fld f6,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@915:11;915:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f6,f10
	bft @emit_label_22853
	li r10,$0
	j @emit_label_22854
@emit_label_22853:
	li r10,$1
@emit_label_22854:
;../../cpuex2017/raytracer/min-rt.ml@916:5;916:15::=Oeq../../cpuex2017/raytracer/min-rt.ml@915:11;915:21lib/lib_tortesia.ml@5:25;5:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@916:5;916:15
	bne r10,r11,@cfg_label_21327
@cfg_label_21328:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	lw r6,r1,$0
	fld f20,r1,$4
	fld f9,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$48
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21329:
@cfg_label_21327:
	fld f10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@919:17;919:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f11,f10,f7
;../../cpuex2017/raytracer/min-rt.ml@919:17;919:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@919:17;919:27../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@919:37;919:47::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f12,f10,f8
;../../cpuex2017/raytracer/min-rt.ml@919:37;919:53::=Ofmul../../cpuex2017/raytracer/min-rt.ml@919:37;919:47../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@919:17;919:53::=Ofadd../../cpuex2017/raytracer/min-rt.ml@919:17;919:33../../cpuex2017/raytracer/min-rt.ml@919:37;919:53
	fld f12,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@919:57;919:67::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f11,f12,f9
;../../cpuex2017/raytracer/min-rt.ml@919:57;919:73::=Ofmul../../cpuex2017/raytracer/min-rt.ml@919:57;919:67../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fadd f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@919:17;919:73::=Ofadd../../cpuex2017/raytracer/min-rt.ml@919:17;919:53../../cpuex2017/raytracer/min-rt.ml@919:57;919:73
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10::<=../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10::<=../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmov f11,f8
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10::<=../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmov f12,f9
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10::<=../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	jal @a_8737quadratic
	fmov f20,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@920:14;920:34../../cpuex2017/raytracer/min-rt.ml@920:14;920:23
	lw r10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@921:27;921:28
	bne r10,r11,@cfg_label_21284
	j @cfg_label_21283
@cfg_label_21284:
@cfg_label_21286:
	fmov f10,f20
;../../cpuex2017/raytracer/min-rt.ml@920:14;920:34::<=../../cpuex2017/raytracer/min-rt.ml@921:13;921:53
	j @cfg_label_21313
@cfg_label_21283:
@cfg_label_21285:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@921:41;921:44
	fsub f10,f20,f11
;../../cpuex2017/raytracer/min-rt.ml@921:13;921:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@920:14;920:34../../cpuex2017/raytracer/min-rt.ml@921:41;921:44
@cfg_label_21313:
	fmul f11,f4,f4
;../../cpuex2017/raytracer/min-rt.ml@922:13;922:24::=Ofmul../../cpuex2017/raytracer/min-rt.ml@919:17;919:73../../cpuex2017/raytracer/min-rt.ml@919:17;919:73
	fmul f12,f6,f10
;../../cpuex2017/raytracer/min-rt.ml@922:29;922:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@915:11;915:21../../cpuex2017/raytracer/min-rt.ml@921:13;921:53
	fsub f6,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@922:12;922:37::=Ofsub../../cpuex2017/raytracer/min-rt.ml@922:13;922:24../../cpuex2017/raytracer/min-rt.ml@922:29;922:37
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f10,f6
	bft @emit_label_22855
	li r10,$0
	j @emit_label_22856
@emit_label_22855:
	li r10,$1
@emit_label_22856:
;../../cpuex2017/raytracer/min-rt.ml@923:7;923:15::=Ogt../../cpuex2017/raytracer/min-rt.ml@922:12;922:37lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@923:7;923:15
	bne r10,r11,@cfg_label_21304
	j @cfg_label_21303
@cfg_label_21304:
@cfg_label_21306:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	lw r6,r1,$0
	fld f20,r1,$4
	fld f9,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$48
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21305:
@cfg_label_21303:
	lw r10,r20,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@924:9;924:21
	bne r10,r11,@cfg_label_21296
	j @cfg_label_21295
@cfg_label_21296:
@cfg_label_21298:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@922:12;922:37::<=../../cpuex2017/raytracer/min-rt.ml@922:12;922:37
	jal sqrt
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@927:31;927:37../../cpuex2017/raytracer/min-rt.ml@925:31;925:35
	fsub f10,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@927:21;927:37::=Ofsub../../cpuex2017/raytracer/min-rt.ml@919:17;919:73../../cpuex2017/raytracer/min-rt.ml@927:31;927:37
	fld f11,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@927:42;927:52::=OiArrRead[4]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@927:20;927:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@927:21;927:37../../cpuex2017/raytracer/min-rt.ml@927:42;927:52
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@924:6;927:52::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@925:1;925:12../../cpuex2017/raytracer/min-rt.ml@927:20;927:52
	j @cfg_label_21299
@cfg_label_21295:
@cfg_label_21297:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@922:12;922:37::<=../../cpuex2017/raytracer/min-rt.ml@922:12;922:37
	jal sqrt
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@925:31;925:37../../cpuex2017/raytracer/min-rt.ml@925:31;925:35
	fadd f10,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@925:21;925:37::=Ofadd../../cpuex2017/raytracer/min-rt.ml@919:17;919:73../../cpuex2017/raytracer/min-rt.ml@925:31;925:37
	fld f11,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@925:42;925:52::=OiArrRead[4]../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@925:20;925:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@925:21;925:37../../cpuex2017/raytracer/min-rt.ml@925:42;925:52
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@924:6;927:52::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@925:1;925:12../../cpuex2017/raytracer/min-rt.ml@925:20;925:52
@cfg_label_21299:
	li r9,$1
;../../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	lw r6,r1,$0
	fld f20,r1,$4
	fld f9,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$48
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8779solver_fast:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$60
	subi r1,r1,$32
	sw r6,r1,$0
	sw r22,r1,$4
	sw r21,r1,$8
	sw r20,r1,$12
	sw r8,r1,$16
	fst f7,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_21238:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@934:10;934:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@934:10;934:17../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	fld f10,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@935:11;935:18::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw r13,r20,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	fld f11,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@935:22;935:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@935:11;935:33::=Ofsub../../cpuex2017/raytracer/min-rt.ml@935:11;935:18../../cpuex2017/raytracer/min-rt.ml@935:22;935:33
	fld f10,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@936:11;936:18::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	fld f11,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@936:22;936:33::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@936:11;936:33::=Ofsub../../cpuex2017/raytracer/min-rt.ml@936:11;936:18../../cpuex2017/raytracer/min-rt.ml@936:22;936:33
	fld f10,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@937:11;937:18::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	fld f11,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@937:22;937:33::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@937:11;937:33::=Ofsub../../cpuex2017/raytracer/min-rt.ml@937:11;937:18../../cpuex2017/raytracer/min-rt.ml@937:22;937:33
	lw r12,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@451:26;451:27::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	sll r6,r10,$2
	add r5,r12,r6
	lw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@939:15;939:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@451:26;451:27../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	lw r10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@941:15;941:16
	bne r10,r12,@cfg_label_21263
	j @cfg_label_21262
@cfg_label_21263:
@cfg_label_21265:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@943:20;943:21
	bne r10,r11,@cfg_label_21258
	j @cfg_label_21257
@cfg_label_21258:
@cfg_label_21260:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@934:10;934:25::<=../../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@939:15;939:30::<=../../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@935:11;935:33::<=../../cpuex2017/raytracer/min-rt.ml@935:11;935:33
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@936:11;936:33::<=../../cpuex2017/raytracer/min-rt.ml@936:11;936:33
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@937:11;937:33::<=../../cpuex2017/raytracer/min-rt.ml@937:11;937:33
	jal @a_8773solver_second_fast
	mov r22,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@934:2;946:40../../cpuex2017/raytracer/min-rt.ml@946:4;946:22
	mov r9,r22
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	addi r1,r1,$32
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21259:
@cfg_label_21257:
	fld f10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@905:12;905:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22857
	li r10,$0
	j @emit_label_22858
@emit_label_22857:
	li r10,$1
@emit_label_22858:
;../../cpuex2017/raytracer/min-rt.ml@905:5;905:22::=Olt../../cpuex2017/raytracer/min-rt.ml@905:12;905:22lib/lib_tortesia.ml@7:24;7:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@905:5;905:22
	bne r10,r11,@cfg_label_21250
	j @cfg_label_21249
@cfg_label_21250:
@cfg_label_21252:
	li r22,$0
;../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	mov r9,r22
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	addi r1,r1,$32
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21251:
@cfg_label_21249:
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@907:6;907:16::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@907:6;907:22::=Ofmul../../cpuex2017/raytracer/min-rt.ml@907:6;907:16../../cpuex2017/raytracer/min-rt.ml@935:11;935:33
	fld f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@907:26;907:36::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmul f12,f11,f6
;../../cpuex2017/raytracer/min-rt.ml@907:26;907:42::=Ofmul../../cpuex2017/raytracer/min-rt.ml@907:26;907:36../../cpuex2017/raytracer/min-rt.ml@936:11;936:33
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@907:6;907:42::=Ofadd../../cpuex2017/raytracer/min-rt.ml@907:6;907:22../../cpuex2017/raytracer/min-rt.ml@907:26;907:42
	fld f10,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@907:46;907:56::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmul f12,f10,f7
;../../cpuex2017/raytracer/min-rt.ml@907:46;907:62::=Ofmul../../cpuex2017/raytracer/min-rt.ml@907:46;907:56../../cpuex2017/raytracer/min-rt.ml@937:11;937:33
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@907:6;907:62::=Ofadd../../cpuex2017/raytracer/min-rt.ml@907:6;907:42../../cpuex2017/raytracer/min-rt.ml@907:46;907:62
	lw r5,r31,$356
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@906:4;907:62::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@906:4;906:15../../cpuex2017/raytracer/min-rt.ml@907:6;907:62
	li r22,$1
;../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	mov r9,r22
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	addi r1,r1,$32
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21264:
@cfg_label_21262:
	lw r21,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@942:24;942:36::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@934:2;946:40
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@934:10;934:25::<=../../cpuex2017/raytracer/min-rt.ml@934:10;934:25
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@942:24;942:36::<=../../cpuex2017/raytracer/min-rt.ml@942:24;942:36
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@939:15;939:30::<=../../cpuex2017/raytracer/min-rt.ml@939:15;939:30
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@935:11;935:33::<=../../cpuex2017/raytracer/min-rt.ml@935:11;935:33
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@936:11;936:33::<=../../cpuex2017/raytracer/min-rt.ml@936:11;936:33
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@937:11;937:33::<=../../cpuex2017/raytracer/min-rt.ml@937:11;937:33
	jal @a_8760solver_rect_fast
	mov r22,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@934:2;946:40../../cpuex2017/raytracer/min-rt.ml@942:4;942:20
	mov r9,r22
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	addi r1,r1,$32
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8790solver_second_fast2:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$20
	sw r6,r1,$0
	fst f7,r1,$4
	fst f6,r1,$8
	fst f4,r1,$12
	sw r8,r1,$16
	mov r10,r10
	mov r8,r11
	mov r12,r12
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_21194:
	fld f13,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@963:11;963:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmovi f14,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f13,f14
	bft @emit_label_22859
	li r11,$0
	j @emit_label_22860
@emit_label_22859:
	li r11,$1
@emit_label_22860:
;../../cpuex2017/raytracer/min-rt.ml@964:5;964:15::=Oeq../../cpuex2017/raytracer/min-rt.ml@963:11;963:21lib/lib_tortesia.ml@5:25;5:28
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@964:5;964:15
	bne r11,r13,@cfg_label_21231
@cfg_label_21232:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	lw r6,r1,$0
	fld f7,r1,$4
	fld f6,r1,$8
	fld f4,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21233:
@cfg_label_21231:
	fld f15,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@967:17;967:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f14,f15,f10
;../../cpuex2017/raytracer/min-rt.ml@967:17;967:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@967:17;967:27../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@967:37;967:47::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f15,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@967:37;967:53::=Ofmul../../cpuex2017/raytracer/min-rt.ml@967:37;967:47../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fadd f10,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@967:17;967:53::=Ofadd../../cpuex2017/raytracer/min-rt.ml@967:17;967:33../../cpuex2017/raytracer/min-rt.ml@967:37;967:53
	fld f14,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@967:57;967:67::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f11,f14,f12
;../../cpuex2017/raytracer/min-rt.ml@967:57;967:73::=Ofmul../../cpuex2017/raytracer/min-rt.ml@967:57;967:67../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fadd f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@967:17;967:73::=Ofadd../../cpuex2017/raytracer/min-rt.ml@967:17;967:53../../cpuex2017/raytracer/min-rt.ml@967:57;967:73
	fld f10,r12,$12
;../../cpuex2017/raytracer/min-rt.ml@968:13;968:23::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f11,f4,f4
;../../cpuex2017/raytracer/min-rt.ml@969:13;969:24::=Ofmul../../cpuex2017/raytracer/min-rt.ml@967:17;967:73../../cpuex2017/raytracer/min-rt.ml@967:17;967:73
	fmul f12,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@969:29;969:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@963:11;963:21../../cpuex2017/raytracer/min-rt.ml@968:13;968:23
	fsub f6,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@969:12;969:37::=Ofsub../../cpuex2017/raytracer/min-rt.ml@969:13;969:24../../cpuex2017/raytracer/min-rt.ml@969:29;969:37
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f10,f6
	bft @emit_label_22861
	li r11,$0
	j @emit_label_22862
@emit_label_22861:
	li r11,$1
@emit_label_22862:
;../../cpuex2017/raytracer/min-rt.ml@970:7;970:15::=Ogt../../cpuex2017/raytracer/min-rt.ml@969:12;969:37lib/lib_tortesia.ml@9:24;9:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@970:7;970:15
	bne r11,r12,@cfg_label_21212
	j @cfg_label_21211
@cfg_label_21212:
@cfg_label_21214:
	li r9,$0
;../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	lw r6,r1,$0
	fld f7,r1,$4
	fld f6,r1,$8
	fld f4,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_21213:
@cfg_label_21211:
	lw r11,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@971:9;971:21
	bne r11,r10,@cfg_label_21204
	j @cfg_label_21203
@cfg_label_21204:
@cfg_label_21206:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@969:12;969:37::<=../../cpuex2017/raytracer/min-rt.ml@969:12;969:37
	jal sqrt
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@974:31;974:37../../cpuex2017/raytracer/min-rt.ml@972:31;972:35
	fsub f10,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@974:21;974:37::=Ofsub../../cpuex2017/raytracer/min-rt.ml@967:17;967:73../../cpuex2017/raytracer/min-rt.ml@974:31;974:37
	fld f11,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@974:42;974:52::=OiArrRead[4]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@974:20;974:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@974:21;974:37../../cpuex2017/raytracer/min-rt.ml@974:42;974:52
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@971:6;974:52::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@972:1;972:12../../cpuex2017/raytracer/min-rt.ml@974:20;974:52
	j @cfg_label_21207
@cfg_label_21203:
@cfg_label_21205:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@969:12;969:37::<=../../cpuex2017/raytracer/min-rt.ml@969:12;969:37
	jal sqrt
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@972:31;972:37../../cpuex2017/raytracer/min-rt.ml@972:31;972:35
	fadd f10,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@972:21;972:37::=Ofadd../../cpuex2017/raytracer/min-rt.ml@967:17;967:73../../cpuex2017/raytracer/min-rt.ml@972:31;972:37
	fld f11,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@972:42;972:52::=OiArrRead[4]../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@972:20;972:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@972:21;972:37../../cpuex2017/raytracer/min-rt.ml@972:42;972:52
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@971:6;974:52::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@972:1;972:12../../cpuex2017/raytracer/min-rt.ml@972:20;972:52
@cfg_label_21207:
	li r9,$1
;../../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	lw r6,r1,$0
	fld f7,r1,$4
	fld f6,r1,$8
	fld f4,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8800setup_rect_table:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
@cfg_label_21079:
	li r12,$6
;../../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1003:29;1003:32
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22864
@emit_label_22863:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22863
@emit_label_22864:
	mov r9,r7
;../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28../../cpuex2017/raytracer/min-rt.ml@1003:29;1003:32
	fld f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22865
	li r12,$0
	j @emit_label_22866
@emit_label_22865:
	li r12,$1
@emit_label_22866:
;../../cpuex2017/raytracer/min-rt.ml@1005:5;1005:20::=Oeq../../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20lib/lib_tortesia.ml@5:25;5:28
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@1005:5;1005:20
	bne r12,r13,@cfg_label_21108
	j @cfg_label_21107
@cfg_label_21108:
@cfg_label_21110:
	lw r13,r11,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fld f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1009:55;1009:62::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22867
	li r12,$0
	j @emit_label_22868
@emit_label_22867:
	li r12,$1
@emit_label_22868:
;../../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62::=Olt../../cpuex2017/raytracer/min-rt.ml@1009:55;1009:62lib/lib_tortesia.ml@7:24;7:27
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r13,r14,@cfg_label_21083
@cfg_label_21084:
	slti r6,r12,$0
	slti r7,r12,$1
	sub r13,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1009:28;1009:63::=Onot../../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62
	j @cfg_label_21101
@cfg_label_21083:
@cfg_label_21085:
	mov r13,r12
;../../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62::<=../../cpuex2017/raytracer/min-rt.ml@1009:28;1009:63
@cfg_label_21101:
	lw r12,r11,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fld f10,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r13,r12,@cfg_label_21088
@cfg_label_21089:
	fmov f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77::<=../../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78
	j @cfg_label_21096
@cfg_label_21088:
@cfg_label_21090:
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77
@cfg_label_21096:
	fst f11,r9,$0
;../../cpuex2017/raytracer/min-rt.ml@1009:4;1009:78::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1011:17;1011:20
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1011:24;1011:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fdiv f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1011:17;1011:31::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1011:17;1011:20../../cpuex2017/raytracer/min-rt.ml@1011:24;1011:31
	fst f10,r9,$4
;../../cpuex2017/raytracer/min-rt.ml@1005:2;1012:3::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1011:17;1011:31
	j @cfg_label_21185
@cfg_label_21107:
@cfg_label_21109:
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@1006:11;1006:12
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1006:17;1006:20
	sll r6,r13,$2
	add r5,r9,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1005:2;1012:3::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1006:11;1006:12../../cpuex2017/raytracer/min-rt.ml@1006:17;1006:20
@cfg_label_21185:
	fld f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22869
	li r12,$0
	j @emit_label_22870
@emit_label_22869:
	li r12,$1
@emit_label_22870:
;../../cpuex2017/raytracer/min-rt.ml@1013:5;1013:20::=Oeq../../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20lib/lib_tortesia.ml@5:25;5:28
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@1013:5;1013:20
	bne r12,r13,@cfg_label_21139
	j @cfg_label_21138
@cfg_label_21139:
@cfg_label_21141:
	lw r13,r11,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fld f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1016:55;1016:62::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22871
	li r12,$0
	j @emit_label_22872
@emit_label_22871:
	li r12,$1
@emit_label_22872:
;../../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62::=Olt../../cpuex2017/raytracer/min-rt.ml@1016:55;1016:62lib/lib_tortesia.ml@7:24;7:27
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r13,r14,@cfg_label_21114
@cfg_label_21115:
	slti r6,r12,$0
	slti r7,r12,$1
	sub r13,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1016:28;1016:63::=Onot../../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62
	j @cfg_label_21132
@cfg_label_21114:
@cfg_label_21116:
	mov r13,r12
;../../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62::<=../../cpuex2017/raytracer/min-rt.ml@1016:28;1016:63
@cfg_label_21132:
	lw r12,r11,$16
;../../cpuex2017/raytracer/min-rt.ml@210:29;210:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fld f10,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@210:29;210:30
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r13,r12,@cfg_label_21119
@cfg_label_21120:
	fmov f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77::<=../../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78
	j @cfg_label_21127
@cfg_label_21119:
@cfg_label_21121:
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77
@cfg_label_21127:
	fst f11,r9,$8
;../../cpuex2017/raytracer/min-rt.ml@1016:4;1016:78::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1017:17;1017:20
	fld f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1017:24;1017:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fdiv f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1017:17;1017:31::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1017:17;1017:20../../cpuex2017/raytracer/min-rt.ml@1017:24;1017:31
	fst f10,r9,$12
;../../cpuex2017/raytracer/min-rt.ml@1013:2;1018:3::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1017:17;1017:31
	j @cfg_label_21179
@cfg_label_21138:
@cfg_label_21140:
	li r13,$3
;../../cpuex2017/raytracer/min-rt.ml@1014:11;1014:12
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1014:17;1014:20
	sll r6,r13,$2
	add r5,r9,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1013:2;1018:3::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1014:11;1014:12../../cpuex2017/raytracer/min-rt.ml@1014:17;1014:20
@cfg_label_21179:
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22873
	li r12,$0
	j @emit_label_22874
@emit_label_22873:
	li r12,$1
@emit_label_22874:
;../../cpuex2017/raytracer/min-rt.ml@1019:5;1019:20::=Oeq../../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20lib/lib_tortesia.ml@5:25;5:28
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@1019:5;1019:20
	bne r12,r13,@cfg_label_21170
	j @cfg_label_21169
@cfg_label_21170:
@cfg_label_21172:
	lw r13,r11,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1022:55;1022:62::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22875
	li r12,$0
	j @emit_label_22876
@emit_label_22875:
	li r12,$1
@emit_label_22876:
;../../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62::=Olt../../cpuex2017/raytracer/min-rt.ml@1022:55;1022:62lib/lib_tortesia.ml@7:24;7:27
	li r14,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r13,r14,@cfg_label_21145
@cfg_label_21146:
	slti r6,r12,$0
	slti r7,r12,$1
	sub r13,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1022:28;1022:63::=Onot../../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62
	j @cfg_label_21163
@cfg_label_21145:
@cfg_label_21147:
	mov r13,r12
;../../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62::<=../../cpuex2017/raytracer/min-rt.ml@1022:28;1022:63
@cfg_label_21163:
	lw r12,r11,$16
;../../cpuex2017/raytracer/min-rt.ml@220:29;220:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fld f10,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@220:29;220:30
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	bne r13,r11,@cfg_label_21150
@cfg_label_21151:
	fmov f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77::<=../../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78
	j @cfg_label_21158
@cfg_label_21150:
@cfg_label_21152:
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77
@cfg_label_21158:
	fst f11,r9,$16
;../../cpuex2017/raytracer/min-rt.ml@1022:4;1022:78::=OiArrWrite[4]../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1023:17;1023:20
	fld f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1023:24;1023:31::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7
	fdiv f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1023:17;1023:31::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1023:17;1023:20../../cpuex2017/raytracer/min-rt.ml@1023:24;1023:31
	fst f12,r9,$20
;../../cpuex2017/raytracer/min-rt.ml@1019:2;1024:3::=OiArrWrite[5]../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1023:17;1023:31
	j @cfg_label_21173
@cfg_label_21169:
@cfg_label_21171:
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@1020:11;1020:12
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1020:17;1020:20
	sll r6,r11,$2
	add r5,r9,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1019:2;1024:3::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32../../cpuex2017/raytracer/min-rt.ml@1020:11;1020:12../../cpuex2017/raytracer/min-rt.ml@1020:17;1020:20
@cfg_label_21173:
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8803setup_surface_table:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
@cfg_label_21035:
	li r12,$4
;../../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1030:29;1030:32
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22878
@emit_label_22877:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22877
@emit_label_22878:
	mov r9,r7
;../../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28../../cpuex2017/raytracer/min-rt.ml@1030:29;1030:32
	fld f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:11::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	lw r12,r11,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	fld f12,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:11../../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26
	fld f11,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1032:30;1032:37::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	fld f13,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@1032:30;1032:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1032:30;1032:37../../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:52::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:26../../cpuex2017/raytracer/min-rt.ml@1032:30;1032:52
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1032:56;1032:63::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7
	fld f13,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@1032:56;1032:78::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1032:56;1032:63../../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:52../../cpuex2017/raytracer/min-rt.ml@1032:56;1032:78
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22879
	li r10,$0
	j @emit_label_22880
@emit_label_22879:
	li r10,$1
@emit_label_22880:
;../../cpuex2017/raytracer/min-rt.ml@1034:5;1034:13::=Ogt../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1034:5;1034:13
	bne r10,r11,@cfg_label_21056
	j @cfg_label_21055
@cfg_label_21056:
@cfg_label_21058:
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1042:11;1042:12
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1042:17;1042:20
	sll r6,r11,$2
	add r5,r9,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1034:2;1042:20::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32../../cpuex2017/raytracer/min-rt.ml@1042:11;1042:12../../cpuex2017/raytracer/min-rt.ml@1042:17;1042:20
	j @cfg_label_21059
@cfg_label_21055:
@cfg_label_21057:
	fmovi f12,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1036:18;1036:21
	fdiv f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1036:17;1036:26::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1036:18;1036:21../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fst f11,r9,$0
;../../cpuex2017/raytracer/min-rt.ml@1036:4;1036:26::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32../../cpuex2017/raytracer/min-rt.ml@1036:17;1036:26
	fld f12,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@1038:23;1038:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fdiv f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1038:23;1038:39::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1038:23;1038:34../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f12,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@1038:17;1038:40::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1038:23;1038:39
	fst f12,r9,$4
;../../cpuex2017/raytracer/min-rt.ml@1038:4;1038:40::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32../../cpuex2017/raytracer/min-rt.ml@1038:17;1038:40
	fld f12,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@1039:23;1039:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fdiv f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1039:23;1039:39::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1039:23;1039:34../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f12,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@1039:17;1039:40::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1039:23;1039:39
	fst f12,r9,$8
;../../cpuex2017/raytracer/min-rt.ml@1039:4;1039:40::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32../../cpuex2017/raytracer/min-rt.ml@1039:17;1039:40
	fld f12,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@1040:23;1040:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fdiv f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1040:23;1040:39::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1040:23;1040:34../../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@1040:17;1040:40::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1040:23;1040:39
	fst f10,r9,$12
;../../cpuex2017/raytracer/min-rt.ml@1034:2;1042:20::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32../../cpuex2017/raytracer/min-rt.ml@1040:17;1040:40
@cfg_label_21059:
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8806setup_second_table:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$60
	subi r1,r1,$32
	sw r6,r1,$0
	fst f8,r1,$4
	fst f7,r1,$8
	fst f6,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	fst f4,r1,$24
	sw r8,r1,$28
	mov r20,r10
	mov r21,r11
@cfg_label_20955:
	li r10,$5
;../../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1049:29;1049:32
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22882
@emit_label_22881:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22881
@emit_label_22882:
	mov r8,r7
;../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28../../cpuex2017/raytracer/min-rt.ml@1049:29;1049:32
	fld f6,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f7,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f8,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7::<=../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28::<=../../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34::<=../../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40::<=../../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40
	jal @a_8737quadratic
	fmov f4,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40../../cpuex2017/raytracer/min-rt.ml@1051:11;1051:20
	fld f11,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1052:17;1052:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	lw r10,r21,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1052:26;1052:37::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1052:17;1052:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1052:17;1052:22../../cpuex2017/raytracer/min-rt.ml@1052:26;1052:37
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f12,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1052:17;1052:37
	fld f11,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@1053:17;1053:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f13,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1053:26;1053:37::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f10,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@1053:17;1053:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1053:17;1053:22../../cpuex2017/raytracer/min-rt.ml@1053:26;1053:37
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f11,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1053:17;1053:37
	fld f10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@1054:17;1054:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f14,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1054:26;1054:37::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f13,f10,f14
;../../cpuex2017/raytracer/min-rt.ml@1054:17;1054:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1054:17;1054:22../../cpuex2017/raytracer/min-rt.ml@1054:26;1054:37
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f14,f13
;../../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1054:17;1054:37
	fst f4,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1056:2;1056:17::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40
	lw r10,r21,$12
;../../cpuex2017/raytracer/min-rt.ml@191:29;191:30::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1060:18;1060:19
	bne r10,r11,@cfg_label_20992
	j @cfg_label_20991
@cfg_label_20992:
@cfg_label_20994:
	fld f14,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@1061:30;1061:35::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	lw r10,r21,$36
;../../cpuex2017/raytracer/min-rt.ml@330:28;330:29::=OGetTuple[9]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f15,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f13,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@1061:30;1061:51::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1061:30;1061:35../../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51
	fld f15,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@1061:55;1061:60::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f16,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f14,f15,f16
;../../cpuex2017/raytracer/min-rt.ml@1061:55;1061:76::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1061:55;1061:60../../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76
	fadd f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@1061:30;1061:76::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1061:30;1061:51../../cpuex2017/raytracer/min-rt.ml@1061:55;1061:76
	fmovi f14,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f13,f15,f14
;../../cpuex2017/raytracer/min-rt.ml@1061:23;1061:77::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1061:30;1061:76lib/lib_tortesia.ml@20:23;20:26
	fsub f14,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1061:17;1061:77::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38../../cpuex2017/raytracer/min-rt.ml@1061:23;1061:77
	fst f14,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1061:4;1061:77::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1061:17;1061:77
	fld f13,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@1062:30;1062:35::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f14,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f12,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@1062:30;1062:51::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1062:30;1062:35../../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51
	fld f14,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1062:55;1062:60::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f15,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1062:64;1062:76::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f13,f14,f15
;../../cpuex2017/raytracer/min-rt.ml@1062:55;1062:76::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1062:55;1062:60../../cpuex2017/raytracer/min-rt.ml@1062:64;1062:76
	fadd f14,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1062:30;1062:76::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1062:30;1062:51../../cpuex2017/raytracer/min-rt.ml@1062:55;1062:76
	fmovi f13,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f12,f14,f13
;../../cpuex2017/raytracer/min-rt.ml@1062:23;1062:77::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1062:30;1062:76lib/lib_tortesia.ml@20:23;20:26
	fsub f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1062:17;1062:77::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38../../cpuex2017/raytracer/min-rt.ml@1062:23;1062:77
	fst f13,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1062:4;1062:77::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1062:17;1062:77
	fld f12,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@1063:30;1063:35::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f13,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1063:39;1063:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1063:30;1063:51::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1063:30;1063:35../../cpuex2017/raytracer/min-rt.ml@1063:39;1063:51
	fld f12,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1063:55;1063:60::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7
	fld f13,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1063:64;1063:76::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@330:28;330:29
	fmul f14,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1063:55;1063:76::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1063:55;1063:60../../cpuex2017/raytracer/min-rt.ml@1063:64;1063:76
	fadd f12,f11,f14
;../../cpuex2017/raytracer/min-rt.ml@1063:30;1063:76::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1063:30;1063:51../../cpuex2017/raytracer/min-rt.ml@1063:55;1063:76
	fmovi f13,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1063:23;1063:77::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1063:30;1063:76lib/lib_tortesia.ml@20:23;20:26
	fsub f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1063:17;1063:77::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38../../cpuex2017/raytracer/min-rt.ml@1063:23;1063:77
	fst f12,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@1060:2;1068:4::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1063:17;1063:77
	j @cfg_label_21007
@cfg_label_20991:
@cfg_label_20993:
	fst f12,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1065:4;1065:19::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38
	fst f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1066:4;1066:19::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38
	fst f10,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@1060:2;1068:4::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38
@cfg_label_21007:
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f4,f10
	bft @emit_label_22883
	li r10,$0
	j @emit_label_22884
@emit_label_22883:
	li r10,$1
@emit_label_22884:
;../../cpuex2017/raytracer/min-rt.ml@1069:10;1069:20::=Oeq../../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40lib/lib_tortesia.ml@5:25;5:28
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1069:5;1069:21::=Onot../../cpuex2017/raytracer/min-rt.ml@1069:10;1069:20
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1069:5;1069:21
	bne r11,r10,@cfg_label_20998
	j @cfg_label_20997
@cfg_label_20998:
@cfg_label_21000:
;../../cpuex2017/raytracer/min-rt.ml@1069:2;1071:9
	j @cfg_label_21001
@cfg_label_20997:
@cfg_label_20999:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1070:17;1070:20
	fdiv f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1070:17;1070:26::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1070:17;1070:20../../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40
	fst f10,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@1069:2;1071:9::=OiArrWrite[4]../../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32../../cpuex2017/raytracer/min-rt.ml@1070:17;1070:26
@cfg_label_21001:
	mov r9,r8
	lw r6,r1,$0
	fld f8,r1,$4
	fld f7,r1,$8
	fld f6,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	fld f4,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8809iter_setup_dirvec_constants:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r8,r10
	mov r20,r11
@cfg_label_20954:
@cfg_label_20925:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1078:14;1078:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_20950
	j @cfg_label_20949
@cfg_label_20950:
@cfg_label_20952:
;../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20951:
@cfg_label_20949:
	lw r5,r31,$456
	sll r6,r20,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:19../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r21,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@451:26;451:27::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r22,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r10,r23,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1083:17;1083:18
	bne r10,r11,@cfg_label_20935
	j @cfg_label_20934
@cfg_label_20935:
@cfg_label_20937:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@1085:22;1085:23
	bne r10,r11,@cfg_label_20930
	j @cfg_label_20929
@cfg_label_20930:
@cfg_label_20932:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24::<=../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27::<=../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	jal @a_8806setup_second_table
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1088:24;1088:46../../cpuex2017/raytracer/min-rt.ml@1088:24;1088:42
	sll r6,r20,$2
	add r5,r21,r6
	sw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@451:26;451:27../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11../../cpuex2017/raytracer/min-rt.ml@1088:24;1088:46
	j @cfg_label_20941
@cfg_label_20929:
@cfg_label_20931:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24::<=../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27::<=../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	jal @a_8803setup_surface_table
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1086:24;1086:47../../cpuex2017/raytracer/min-rt.ml@1086:24;1086:43
	sll r6,r20,$2
	add r5,r21,r6
	sw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@451:26;451:27../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11../../cpuex2017/raytracer/min-rt.ml@1086:24;1086:47
	j @cfg_label_20942
@cfg_label_20934:
@cfg_label_20936:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24::<=../../cpuex2017/raytracer/min-rt.ml@1081:12;1081:24
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27::<=../../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27
	jal @a_8800setup_rect_table
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1084:24;1084:44../../cpuex2017/raytracer/min-rt.ml@1084:24;1084:40
	sll r6,r20,$2
	add r5,r21,r6
	sw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@451:26;451:27../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11../../cpuex2017/raytracer/min-rt.ml@1084:24;1084:44
@cfg_label_20942:
@cfg_label_20941:
	subi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1090:40;1090:49::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11::<=../../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	j @cfg_label_20925
@a_8814setup_startp_constants:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$68
	subi r1,r1,$40
	sw r6,r1,$0
	fst f8,r1,$4
	fst f7,r1,$8
	fst f6,r1,$12
	fst f4,r1,$16
	sw r23,r1,$20
	sw r22,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	mov r8,r10
	mov r20,r11
@cfg_label_20924:
@cfg_label_20862:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1103:14;1103:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_20920
	j @cfg_label_20919
@cfg_label_20920:
@cfg_label_20922:
;../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw r6,r1,$0
	fld f8,r1,$4
	fld f7,r1,$8
	fld f6,r1,$12
	fld f4,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$68
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20921:
@cfg_label_20919:
	lw r5,r31,$456
	sll r6,r20,$2
	add r5,r5,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:21../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw r21,r22,$40
;../../cpuex2017/raytracer/min-rt.ml@357:28;357:29::=OGetTuple[10]../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	lw r23,r22,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1107:18;1107:23::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw r10,r22,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1107:27;1107:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1107:18;1107:40::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1107:18;1107:23../../cpuex2017/raytracer/min-rt.ml@1107:27;1107:40
	fst f10,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1107:4;1107:40::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29../../cpuex2017/raytracer/min-rt.ml@1107:18;1107:40
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1108:18;1108:23::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	fld f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1108:27;1108:40::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1108:18;1108:40::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1108:18;1108:23../../cpuex2017/raytracer/min-rt.ml@1108:27;1108:40
	fst f10,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1108:4;1108:40::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29../../cpuex2017/raytracer/min-rt.ml@1108:18;1108:40
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1109:18;1109:23::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	fld f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1109:27;1109:40::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1109:18;1109:40::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1109:18;1109:23../../cpuex2017/raytracer/min-rt.ml@1109:27;1109:40
	fst f12,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@1109:4;1109:40::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29../../cpuex2017/raytracer/min-rt.ml@1109:18;1109:40
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@1110:17;1110:18
	bne r23,r10,@cfg_label_20893
	j @cfg_label_20892
@cfg_label_20893:
@cfg_label_20895:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@1113:22;1113:23
	slt r5,r10,r23
	bne r0,r5,@cfg_label_20888
@cfg_label_20889:
;../../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11
	j @cfg_label_20900
@cfg_label_20888:
@cfg_label_20890:
	fld f6,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	fld f7,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	fld f8,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29::<=../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40::<=../../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51::<=../../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62::<=../../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62
	jal @a_8737quadratic
	fmov f4,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62../../cpuex2017/raytracer/min-rt.ml@1114:16;1114:25
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@1115:33;1115:34
	bne r23,r10,@cfg_label_20877
	j @cfg_label_20876
@cfg_label_20877:
@cfg_label_20879:
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62::<=../../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59
	j @cfg_label_20880
@cfg_label_20876:
@cfg_label_20878:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1115:47;1115:50
	fsub f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62../../cpuex2017/raytracer/min-rt.ml@1115:47;1115:50
@cfg_label_20880:
	fst f10,r21,$12
;../../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29../../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59
	j @cfg_label_20899
@cfg_label_20892:
@cfg_label_20894:
	lw r10,r22,$16
;../../cpuex2017/raytracer/min-rt.ml@230:29;230:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29
	fld f14,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1112:29;1112:39::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	fld f12,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1112:40;1112:50::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	fld f10,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@1112:51;1112:61::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29
	fld f13,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f11,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:13::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:2;105:7../../cpuex2017/raytracer/min-rt.ml@1112:29;1112:39
	fld f14,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f14,f12
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:17;105:22../../cpuex2017/raytracer/min-rt.ml@1112:40;1112:50
	fadd f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:28::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:13../../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	fld f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:37::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:32;105:37../../cpuex2017/raytracer/min-rt.ml@1112:51;1112:61
	fadd f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1112:1;1112:61::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:28../../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	fst f10,r21,$12
;../../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@357:28;357:29../../cpuex2017/raytracer/min-rt.ml@1112:1;1112:61
@cfg_label_20900:
@cfg_label_20899:
	subi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1117:30;1117:39::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12::<=../../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	j @cfg_label_20862
@a_8819is_rect_outside:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_20812:
	fmovi f13,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f13,f10
	bft @cfg_label_20815
	j @cfg_label_20814
@cfg_label_20815:
@cfg_label_20817:
	fmov f13,f10
;../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43::<=../../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22
	j @cfg_label_20859
@cfg_label_20814:
@cfg_label_20816:
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
@cfg_label_20859:
	lw r11,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	fld f10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1135:25;1135:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	flt f13,f10
	bft @emit_label_22885
	li r12,$0
	j @emit_label_22886
@emit_label_22885:
	li r12,$1
@emit_label_22886:
;../../cpuex2017/raytracer/min-rt.ml@1135:8;1135:37::=Olt../../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22../../cpuex2017/raytracer/min-rt.ml@1135:25;1135:36
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@1135:8;1135:37
	bne r12,r13,@cfg_label_20843
	j @cfg_label_20842
@cfg_label_20843:
@cfg_label_20845:
	lw r11,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1138:11;1138:16::<=../../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	j @cfg_label_20852
@cfg_label_20842:
@cfg_label_20844:
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f10,f11
	bft @cfg_label_20820
	j @cfg_label_20819
@cfg_label_20820:
@cfg_label_20822:
	fmov f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43::<=../../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24
	j @cfg_label_20839
@cfg_label_20819:
@cfg_label_20821:
	fmovi f13,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f10,f13,f11
;../../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
@cfg_label_20839:
	fld f11,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@1136:27;1136:38::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	flt f10,f11
	bft @emit_label_22887
	li r12,$0
	j @emit_label_22888
@emit_label_22887:
	li r12,$1
@emit_label_22888:
;../../cpuex2017/raytracer/min-rt.ml@1136:10;1136:39::=Olt../../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24../../cpuex2017/raytracer/min-rt.ml@1136:27;1136:38
	li r13,$1
;../../cpuex2017/raytracer/min-rt.ml@1136:10;1136:39
	bne r12,r13,@cfg_label_20833
	j @cfg_label_20832
@cfg_label_20833:
@cfg_label_20835:
	lw r11,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1138:11;1138:16::<=../../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	j @cfg_label_20853
@cfg_label_20832:
@cfg_label_20834:
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f10,f12
	bft @cfg_label_20825
	j @cfg_label_20824
@cfg_label_20825:
@cfg_label_20827:
	fmov f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43::<=../../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15
	j @cfg_label_20829
@cfg_label_20824:
@cfg_label_20826:
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
@cfg_label_20829:
	fld f11,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1137:18;1137:29::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	flt f10,f11
	bft @emit_label_22889
	li r11,$0
	j @emit_label_22890
@emit_label_22889:
	li r11,$1
@emit_label_22890:
;../../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14::=Olt../../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15../../cpuex2017/raytracer/min-rt.ml@1137:18;1137:29
@cfg_label_20853:
@cfg_label_20852:
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	bne r11,r12,@cfg_label_20848
@cfg_label_20849:
	lw r9,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20850:
@cfg_label_20848:
	lw r11,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43
	slti r6,r11,$0
	slti r7,r11,$1
	sub r9,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43::=Onot../../cpuex2017/raytracer/min-rt.ml@182:29;182:30
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8824is_plane_outside:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$20
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_20792:
	lw r11,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@230:29;230:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fld f14,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:13::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:2;105:7../../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fld f10,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f14,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:17;105:22../../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fadd f10,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:28::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:13../../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	fld f11,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:37::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:32;105:37../../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fadd f11,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:28../../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	lw r11,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f11,f10
	bft @emit_label_22891
	li r10,$0
	j @emit_label_22892
@emit_label_22891:
	li r10,$1
@emit_label_22892:
;../../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35::=Olt../../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44lib/lib_tortesia.ml@7:24;7:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20794
@cfg_label_20795:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36::=Onot../../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35
	j @cfg_label_20798
@cfg_label_20794:
@cfg_label_20796:
	mov r11,r10
;../../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35::<=../../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
@cfg_label_20798:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r9,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37::=Onot../../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8834is_outside:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r20,r1,$4
	fst f8,r1,$8
	fst f7,r1,$12
	fst f6,r1,$16
	fst f4,r1,$20
	sw r8,r1,$24
	mov r8,r10
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_20735:
	lw r10,r8,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fld f13,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32../../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28
	fld f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f6,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32../../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32../../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28
	lw r20,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1162:15;1162:16
	bne r20,r10,@cfg_label_20780
@cfg_label_20781:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32::<=../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::<=../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::<=../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::<=../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8819is_rect_outside
	mov r20,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32../../cpuex2017/raytracer/min-rt.ml@1163:4;1163:19
	mov r9,r20
	lw r6,r1,$0
	lw r20,r1,$4
	fld f8,r1,$8
	fld f7,r1,$12
	fld f6,r1,$16
	fld f4,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20782:
@cfg_label_20780:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@1164:20;1164:21
	bne r20,r10,@cfg_label_20775
	j @cfg_label_20774
@cfg_label_20775:
@cfg_label_20777:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32::<=../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::<=../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::<=../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::<=../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8737quadratic
	fmov f8,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:19
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@1152:25;1152:26
	bne r20,r10,@cfg_label_20757
	j @cfg_label_20756
@cfg_label_20757:
@cfg_label_20759:
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30::<=../../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47
	j @cfg_label_20770
@cfg_label_20756:
@cfg_label_20758:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	fsub f10,f8,f11
;../../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30../../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
@cfg_label_20770:
	lw r11,r8,$24
;../../cpuex2017/raytracer/min-rt.ml@1153:12;1153:24::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22893
	li r10,$0
	j @emit_label_22894
@emit_label_22893:
	li r10,$1
@emit_label_22894:
;../../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36::=Olt../../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47lib/lib_tortesia.ml@7:24;7:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20761
@cfg_label_20762:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37::=Onot../../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36
	j @cfg_label_20765
@cfg_label_20761:
@cfg_label_20763:
	mov r11,r10
;../../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36::<=../../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
@cfg_label_20765:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r20,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32::=Onot../../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
	mov r9,r20
	lw r6,r1,$0
	lw r20,r1,$4
	fld f8,r1,$8
	fld f7,r1,$12
	fld f6,r1,$16
	fld f4,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20776:
@cfg_label_20774:
	lw r10,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fld f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:13::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:2;105:7../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	fld f11,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34
	fmul f12,f11,f6
;../../cpuex2017/raytracer/min-rt.ml@105:17;105:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:17;105:22../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@105:2;105:28::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:13../../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:37::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1145:21;1145:34
	fmul f12,f10,f7
;../../cpuex2017/raytracer/min-rt.ml@105:32;105:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@105:32;105:37../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44::=Ofadd../../cpuex2017/raytracer/min-rt.ml@105:2;105:28../../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	lw r11,r8,$24
;../../cpuex2017/raytracer/min-rt.ml@1146:12;1146:24::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22895
	li r10,$0
	j @emit_label_22896
@emit_label_22895:
	li r10,$1
@emit_label_22896:
;../../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35::=Olt../../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44lib/lib_tortesia.ml@7:24;7:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20737
@cfg_label_20738:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36::=Onot../../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35
	j @cfg_label_20741
@cfg_label_20737:
@cfg_label_20739:
	mov r11,r10
;../../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35::<=../../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
@cfg_label_20741:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r20,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1158:2;1167:32::=Onot../../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
	mov r9,r20
	lw r6,r1,$0
	lw r20,r1,$4
	fld f8,r1,$8
	fld f7,r1,$12
	fld f6,r1,$16
	fld f4,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8839check_all_inside:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$72
	subi r1,r1,$48
	sw r6,r1,$0
	sw r22,r1,$4
	fst f21,r1,$8
	fst f20,r1,$12
	fst f9,r1,$16
	fst f8,r1,$20
	sw r21,r1,$24
	sw r20,r1,$28
	sw r8,r1,$32
	fst f7,r1,$36
	fst f6,r1,$40
	fst f4,r1,$44
	mov r20,r10
	mov r8,r11
	fmov f4,f10
	fmov f6,f11
	fmov f7,f12
@cfg_label_20734:
@cfg_label_20661:
	sll r6,r20,$2
	add r5,r8,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20729
@cfg_label_20730:
	lw r9,r31,$16
	lw r6,r1,$0
	lw r22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	fld f9,r1,$16
	fld f8,r1,$20
	lw r21,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	fld f7,r1,$36
	fld f6,r1,$40
	fld f4,r1,$44
	addi r1,r1,$48
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20731:
@cfg_label_20729:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	lw r10,r21,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fld f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f8,f4,f10
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4../../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28
	fld f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f9,f6,f10
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4../../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f20,f7,f10
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4../../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28
	lw r22,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1161:16;1161:24::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1162:15;1162:16
	bne r22,r10,@cfg_label_20687
@cfg_label_20688:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::<=../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	fmov f11,f9
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::<=../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fmov f12,f20
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::<=../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8819is_rect_outside
	mov r22,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41../../cpuex2017/raytracer/min-rt.ml@1163:4;1163:19
	j @cfg_label_20717
@cfg_label_20687:
@cfg_label_20689:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@1164:20;1164:21
	bne r22,r10,@cfg_label_20682
@cfg_label_20683:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::<=../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	fmov f11,f9
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::<=../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fmov f12,f20
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::<=../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8824is_plane_outside
	mov r22,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41../../cpuex2017/raytracer/min-rt.ml@1165:4;1165:20
	j @cfg_label_20716
@cfg_label_20682:
@cfg_label_20684:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28::<=../../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28
	fmov f11,f9
;../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28::<=../../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28
	fmov f12,f20
;../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28::<=../../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28
	jal @a_8737quadratic
	fmov f21,f5
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:19
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@1152:25;1152:26
	bne r22,r10,@cfg_label_20664
	j @cfg_label_20663
@cfg_label_20664:
@cfg_label_20666:
	fmov f10,f21
;../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30::<=../../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47
	j @cfg_label_20677
@cfg_label_20663:
@cfg_label_20665:
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	fsub f10,f21,f11
;../../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30../../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
@cfg_label_20677:
	lw r11,r21,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22897
	li r10,$0
	j @emit_label_22898
@emit_label_22897:
	li r10,$1
@emit_label_22898:
;../../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36::=Olt../../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47lib/lib_tortesia.ml@7:24;7:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	bne r11,r12,@cfg_label_20668
@cfg_label_20669:
	slti r6,r10,$0
	slti r7,r10,$1
	sub r11,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37::=Onot../../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36
	j @cfg_label_20672
@cfg_label_20668:
@cfg_label_20670:
	mov r11,r10
;../../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36::<=../../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
@cfg_label_20672:
	slti r6,r11,$0
	slti r7,r11,$1
	sub r22,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41::=Onot../../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
@cfg_label_20716:
@cfg_label_20717:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r22,r10,@cfg_label_20711
@cfg_label_20712:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	fld f9,r1,$16
	fld f8,r1,$20
	lw r21,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	fld f7,r1,$36
	fld f6,r1,$40
	fld f4,r1,$44
	addi r1,r1,$48
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20713:
@cfg_label_20711:
	addi r21,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	sll r6,r21,$2
	add r5,r8,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20704
@cfg_label_20705:
	lw r9,r31,$16
	lw r6,r1,$0
	lw r22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	fld f9,r1,$16
	fld f8,r1,$20
	lw r21,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	fld f7,r1,$36
	fld f6,r1,$40
	fld f4,r1,$44
	addi r1,r1,$48
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20706:
@cfg_label_20704:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4::<=../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4::<=../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4::<=../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	jal @a_8834is_outside
	mov r22,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r22,r10,@cfg_label_20697
@cfg_label_20698:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r22,r1,$4
	fld f21,r1,$8
	fld f20,r1,$12
	fld f9,r1,$16
	fld f8,r1,$20
	lw r21,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	fld f7,r1,$36
	fld f6,r1,$40
	fld f4,r1,$44
	addi r1,r1,$48
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20699:
@cfg_label_20697:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4::<=../../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4
	j @cfg_label_20661
@a_8845shadow_check_and_group:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$84
	subi r1,r1,$36
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	fst f7,r1,$16
	fst f6,r1,$20
	fst f4,r1,$24
	sw r20,r1,$28
	sw r8,r1,$32
	mov r20,r10
	mov r8,r11
@cfg_label_20660:
@cfg_label_20659:
@cfg_label_20586:
	sll r6,r20,$2
	add r5,r8,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1192:5;1192:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1192:28;1192:30
	bne r10,r11,@cfg_label_20654
@cfg_label_20655:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$84
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20656:
@cfg_label_20654:
	sll r6,r20,$2
	add r5,r8,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34::<=../../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34
	lw r11,r31,$76
;../../cpuex2017/raytracer/min-rt.ml@1196:29;1196:41::<=../../cpuex2017/raytracer/min-rt.ml@1196:29;1196:41
	lw r12,r31,$320
;../../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60::<=../../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	jal @a_8779solver_fast
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1196:13;1196:60../../cpuex2017/raytracer/min-rt.ml@1196:13;1196:24
	lw r5,r31,$356
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1197:14;1197:25
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1198:17;1198:18
	bne r22,r10,@cfg_label_20589
@cfg_label_20590:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9::<=../../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51
	j @cfg_label_20648
@cfg_label_20589:
@cfg_label_20591:
	fmovi f10,$-0.20000000000000001110
;../../cpuex2017/raytracer/min-rt.ml@1198:36;1198:39
	flt f11,f10
	bft @emit_label_22899
	li r10,$0
	j @emit_label_22900
@emit_label_22899:
	li r10,$1
@emit_label_22900:
;../../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51::=Olt../../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29../../cpuex2017/raytracer/min-rt.ml@1198:36;1198:39
@cfg_label_20648:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51
	bne r10,r11,@cfg_label_20643
	j @cfg_label_20642
@cfg_label_20643:
@cfg_label_20645:
	lw r5,r31,$456
	sll r6,r21,$2
	add r5,r5,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25../../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34
	lw r11,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1214:9;1214:35
	bne r11,r10,@cfg_label_20636
	j @cfg_label_20635
@cfg_label_20636:
@cfg_label_20638:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$84
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20637:
@cfg_label_20635:
	addi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1215:25;1215:37::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6::<=../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	j @cfg_label_20586
@cfg_label_20642:
@cfg_label_20644:
	fmovi f12,$0.01000000000000000021
;../../cpuex2017/raytracer/min-rt.ml@1201:21;1201:25
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29../../cpuex2017/raytracer/min-rt.ml@1201:21;1201:25
	lw r5,r31,$420
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:24::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:24../../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25
	lw r5,r31,$320
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1202:33;1202:55::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	fadd f4,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:29../../cpuex2017/raytracer/min-rt.ml@1202:33;1202:55
	lw r5,r31,$420
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:24::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:24../../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25
	lw r5,r31,$320
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1203:33;1203:55::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	fadd f6,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:29../../cpuex2017/raytracer/min-rt.ml@1203:33;1203:55
	lw r5,r31,$420
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:24::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:24../../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25
	lw r5,r31,$320
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1204:33;1204:55::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1196:42;1196:60
	fadd f7,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:29../../cpuex2017/raytracer/min-rt.ml@1204:33;1204:55
	li r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1205:26;1205:27
	lw r10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20601
@cfg_label_20602:
	lw r21,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8::<=../../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	j @cfg_label_20614
@cfg_label_20601:
@cfg_label_20603:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55::<=../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55::<=../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55::<=../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55
	jal @a_8834is_outside
	mov r23,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r23,r10,@cfg_label_20594
@cfg_label_20595:
	lw r21,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9::<=../../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	j @cfg_label_20613
@cfg_label_20594:
@cfg_label_20596:
	addi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1205:26;1205:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::<=../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6::<=../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55::<=../../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55::<=../../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55::<=../../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55
	jal @a_8839check_all_inside
	mov r21,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46../../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
@cfg_label_20613:
@cfg_label_20614:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	bne r21,r10,@cfg_label_20608
@cfg_label_20609:
	lw r9,r31,$16
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$84
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20610:
@cfg_label_20608:
	addi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1208:25;1208:37::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6::<=../../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6
	j @cfg_label_20586
@a_8848shadow_check_one_or_group:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$24
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	sw r20,r1,$16
	sw r8,r1,$20
	mov r21,r10
	mov r8,r11
@cfg_label_20585:
@cfg_label_20552:
	sll r6,r21,$2
	add r5,r8,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4../../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20580
@cfg_label_20581:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20582:
@cfg_label_20580:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43::<=../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::<=../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8845shadow_check_and_group
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r22,r10,@cfg_label_20572
@cfg_label_20573:
	lw r9,r31,$16
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20574:
@cfg_label_20572:
	addi r20,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	sll r6,r20,$2
	add r5,r8,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20565
@cfg_label_20566:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20567:
@cfg_label_20565:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43::<=../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::<=../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8845shadow_check_and_group
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r22,r10,@cfg_label_20557
@cfg_label_20558:
	lw r9,r31,$16
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20559:
@cfg_label_20557:
	addi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4::<=../../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4
	j @cfg_label_20552
@a_8851shadow_check_one_or_matrix:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$72
	subi r1,r1,$32
	sw r6,r1,$0
	sw r25,r1,$4
	sw r24,r1,$8
	sw r23,r1,$12
	sw r22,r1,$16
	sw r21,r1,$20
	sw r20,r1,$24
	sw r8,r1,$28
	mov r20,r10
	mov r8,r11
@cfg_label_20551:
@cfg_label_20550:
@cfg_label_20459:
	sll r6,r20,$2
	add r5,r8,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	lw r22,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@1239:23;1239:25
	bne r22,r10,@cfg_label_20544
@cfg_label_20545:
	lw r9,r31,$12
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20546:
@cfg_label_20544:
	li r10,$99
;../../cpuex2017/raytracer/min-rt.ml@1243:27;1243:29
	bne r22,r10,@cfg_label_20499
@cfg_label_20500:
	lw r10,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5::<=../../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20541
@cfg_label_20499:
@cfg_label_20501:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32::<=../../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32
	lw r11,r31,$76
;../../cpuex2017/raytracer/min-rt.ml@1246:37;1246:49::<=../../cpuex2017/raytracer/min-rt.ml@1246:37;1246:49
	lw r12,r31,$320
;../../cpuex2017/raytracer/min-rt.ml@1246:50;1246:68::<=../../cpuex2017/raytracer/min-rt.ml@1246:50;1246:68
	jal @a_8779solver_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1246:9;1246:68../../cpuex2017/raytracer/min-rt.ml@1246:9;1246:20
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1249:9;1249:10
	bne r23,r10,@cfg_label_20493
@cfg_label_20494:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9::<=../../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20540
@cfg_label_20493:
@cfg_label_20495:
	lw r5,r31,$356
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1250:19;1250:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1250:19;1250:30
	fmovi f11,$-0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@1250:37;1250:40
	flt f10,f11
	bft @emit_label_22901
	li r10,$0
	j @emit_label_22902
@emit_label_22901:
	li r10,$1
@emit_label_22902:
;../../cpuex2017/raytracer/min-rt.ml@1250:13;1250:41::=Olt../../cpuex2017/raytracer/min-rt.ml@1250:19;1250:34../../cpuex2017/raytracer/min-rt.ml@1250:37;1250:40
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1250:13;1250:41
	bne r10,r11,@cfg_label_20485
	j @cfg_label_20484
@cfg_label_20485:
@cfg_label_20487:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9::<=../../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20537
@cfg_label_20484:
@cfg_label_20486:
	li r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1251:41;1251:42
	lw r10,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20470
@cfg_label_20471:
	lw r22,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9::<=../../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	j @cfg_label_20480
@cfg_label_20470:
@cfg_label_20472:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43::<=../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::<=../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8845shadow_check_and_group
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r24,r10,@cfg_label_20462
@cfg_label_20463:
	lw r22,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5::<=../../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	j @cfg_label_20479
@cfg_label_20462:
@cfg_label_20464:
	addi r23,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1251:41;1251:42
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40::<=../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28::<=../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	jal @a_8848shadow_check_one_or_group
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47../../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
@cfg_label_20479:
@cfg_label_20480:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	bne r22,r10,@cfg_label_20474
@cfg_label_20475:
	lw r10,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5::<=../../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_20539
@cfg_label_20474:
@cfg_label_20476:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9::<=../../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
@cfg_label_20539:
@cfg_label_20540:
@cfg_label_20541:
@cfg_label_20537:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	bne r10,r11,@cfg_label_20533
	j @cfg_label_20532
@cfg_label_20533:
@cfg_label_20535:
	addi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1262:34;1262:41::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52::<=../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	j @cfg_label_20459
@cfg_label_20532:
@cfg_label_20534:
	li r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1257:36;1257:37
	lw r10,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	bne r10,r11,@cfg_label_20512
@cfg_label_20513:
	lw r22,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9::<=../../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	j @cfg_label_20525
@cfg_label_20512:
@cfg_label_20514:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27../../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43::<=../../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34::<=../../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34
	jal @a_8845shadow_check_and_group
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53../../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	bne r24,r10,@cfg_label_20504
@cfg_label_20505:
	lw r22,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5::<=../../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	j @cfg_label_20524
@cfg_label_20504:
@cfg_label_20506:
	addi r23,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1257:36;1257:37
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40::<=../../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28::<=../../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28
	jal @a_8848shadow_check_one_or_group
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42../../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
@cfg_label_20524:
@cfg_label_20525:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	bne r22,r10,@cfg_label_20519
@cfg_label_20520:
	lw r9,r31,$16
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20521:
@cfg_label_20519:
	addi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1260:29;1260:36::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52::<=../../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52
	j @cfg_label_20459
@a_8854solve_each_element:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$104
	subi r1,r1,$52
	sw r6,r1,$0
	sw r26,r1,$4
	sw r25,r1,$8
	sw r24,r1,$12
	fst f8,r1,$16
	fst f7,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	sw r23,r1,$32
	sw r22,r1,$36
	sw r21,r1,$40
	sw r20,r1,$44
	sw r8,r1,$48
	mov r21,r10
	mov r20,r11
	mov r8,r12
@cfg_label_20458:
@cfg_label_20457:
@cfg_label_20368:
	sll r6,r21,$2
	add r5,r20,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@1274:12;1274:14
	bne r22,r10,@cfg_label_20452
@cfg_label_20453:
;../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	lw r6,r1,$0
	lw r26,r1,$4
	lw r25,r1,$8
	lw r24,r1,$12
	fld f8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r23,r1,$32
	lw r22,r1,$36
	lw r21,r1,$40
	lw r20,r1,$44
	lw r8,r1,$48
	addi r1,r1,$52
	addi r1,r1,$104
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20454:
@cfg_label_20452:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33::<=../../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4::<=../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	lw r12,r31,$212
;../../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38::<=../../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	jal @a_8756solver
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1276:13;1276:38../../cpuex2017/raytracer/min-rt.ml@1276:13;1276:19
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1277:13;1277:14
	bne r23,r10,@cfg_label_20446
	j @cfg_label_20445
@cfg_label_20446:
@cfg_label_20448:
	lw r5,r31,$356
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1281:17;1281:28
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1283:17;1283:20
	flt f11,f10
	bft @emit_label_22903
	li r10,$0
	j @emit_label_22904
@emit_label_22903:
	li r10,$1
@emit_label_22904:
;../../cpuex2017/raytracer/min-rt.ml@1283:11;1283:24::=Olt../../cpuex2017/raytracer/min-rt.ml@1283:17;1283:20../../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1283:11;1283:24
	bne r10,r11,@cfg_label_20430
	j @cfg_label_20429
@cfg_label_20430:
@cfg_label_20432:
;../../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_20437
@cfg_label_20429:
@cfg_label_20431:
	lw r5,r31,$332
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1284:16;1284:24::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1284:16;1284:20
	flt f10,f11
	bft @emit_label_22905
	li r10,$0
	j @emit_label_22906
@emit_label_22905:
	li r10,$1
@emit_label_22906:
;../../cpuex2017/raytracer/min-rt.ml@1284:6;1284:24::=Olt../../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32../../cpuex2017/raytracer/min-rt.ml@1284:16;1284:24
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1284:6;1284:24
	bne r10,r11,@cfg_label_20423
	j @cfg_label_20422
@cfg_label_20423:
@cfg_label_20425:
;../../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_20438
@cfg_label_20422:
@cfg_label_20424:
	fmovi f11,$0.01000000000000000021
;../../cpuex2017/raytracer/min-rt.ml@1286:20;1286:24
	fadd f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32../../cpuex2017/raytracer/min-rt.ml@1286:20;1286:24
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:24::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:24../../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$212
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1287:33;1287:43::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	fadd f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:29../../cpuex2017/raytracer/min-rt.ml@1287:33;1287:43
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:24::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:24../../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$212
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1288:33;1288:43::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	fadd f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:29../../cpuex2017/raytracer/min-rt.ml@1288:33;1288:43
	fld f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:24::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:24../../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$212
	fld f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1289:33;1289:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1276:32;1276:38
	fadd f8,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:29../../cpuex2017/raytracer/min-rt.ml@1289:33;1289:43
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1290:25;1290:26
	lw r10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20389
@cfg_label_20390:
	lw r24,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8::<=../../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	j @cfg_label_20404
@cfg_label_20389:
@cfg_label_20391:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1305:21;1305:28../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43::<=../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43::<=../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43::<=../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43
	jal @a_8834is_outside
	mov r26,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r26,r10,@cfg_label_20382
@cfg_label_20383:
	lw r24,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11::<=../../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	j @cfg_label_20403
@cfg_label_20382:
@cfg_label_20384:
	addi r25,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1290:25;1290:26
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::<=../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4::<=../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43::<=../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43::<=../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43::<=../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43
	jal @a_8839check_all_inside
	mov r24,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45../../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
@cfg_label_20403:
@cfg_label_20404:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	bne r24,r10,@cfg_label_20398
	j @cfg_label_20397
@cfg_label_20398:
@cfg_label_20400:
;../../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_20439
@cfg_label_20397:
@cfg_label_20399:
	lw r5,r31,$332
	fst f4,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1292:2;1292:15::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1284:16;1284:20../../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24
	lw r5,r31,$320
	fst f6,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@52:2;52:3../../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43
	lw r5,r31,$320
	fst f7,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@52:2;52:3../../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43
	lw r5,r31,$320
	fst f8,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1293:2;1293:36::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@52:2;52:3../../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43
	lw r5,r31,$308
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1294:2;1294:35::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1294:2;1294:23../../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33
	lw r5,r31,$344
	sw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1295:2;1295:17../../cpuex2017/raytracer/min-rt.ml@1276:13;1276:38
@cfg_label_20439:
@cfg_label_20438:
@cfg_label_20437:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1301:27;1301:39::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4::<=../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	j @cfg_label_20368
@cfg_label_20445:
@cfg_label_20447:
	lw r5,r31,$456
	sll r6,r22,$2
	add r5,r5,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1305:21;1305:28../../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33
	lw r11,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1305:9;1305:36
	bne r11,r10,@cfg_label_20374
	j @cfg_label_20373
@cfg_label_20374:
@cfg_label_20376:
;../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	lw r6,r1,$0
	lw r26,r1,$4
	lw r25,r1,$8
	lw r24,r1,$12
	fld f8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r23,r1,$32
	lw r22,r1,$36
	lw r21,r1,$40
	lw r20,r1,$44
	lw r8,r1,$48
	addi r1,r1,$52
	addi r1,r1,$104
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20375:
@cfg_label_20373:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1306:21;1306:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4::<=../../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	j @cfg_label_20368
@a_8858solve_one_or_network:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r22,r10
	mov r20,r11
	mov r8,r12
@cfg_label_20367:
@cfg_label_20323:
	sll r6,r22,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20362
@cfg_label_20363:
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20364:
@cfg_label_20362:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12::<=../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8854solve_each_element
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	sll r6,r21,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20352
@cfg_label_20353:
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20354:
@cfg_label_20352:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12::<=../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8854solve_each_element
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r22,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20342
@cfg_label_20343:
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20344:
@cfg_label_20342:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12::<=../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8854solve_each_element
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r21,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20332
@cfg_label_20333:
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20334:
@cfg_label_20332:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12::<=../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	jal @a_8854solve_each_element
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12::<=../../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	j @cfg_label_20323
@a_8862trace_or_matrix:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$68
	subi r1,r1,$36
	sw r6,r1,$0
	sw r26,r1,$4
	sw r25,r1,$8
	sw r24,r1,$12
	sw r23,r1,$16
	sw r22,r1,$20
	sw r21,r1,$24
	sw r20,r1,$28
	sw r8,r1,$32
	mov r21,r10
	mov r20,r11
	mov r8,r12
@cfg_label_20322:
@cfg_label_20219:
	sll r6,r21,$2
	add r5,r20,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	lw r23,r22,$0
;../../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@1326:23;1326:25
	bne r23,r10,@cfg_label_20316
@cfg_label_20317:
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	lw r6,r1,$0
	lw r26,r1,$4
	lw r25,r1,$8
	lw r24,r1,$12
	lw r23,r1,$16
	lw r22,r1,$20
	lw r21,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	addi r1,r1,$36
	addi r1,r1,$68
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20318:
@cfg_label_20316:
	li r10,$99
;../../cpuex2017/raytracer/min-rt.ml@1329:25;1329:27
	bne r23,r10,@cfg_label_20297
	j @cfg_label_20296
@cfg_label_20297:
@cfg_label_20299:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32::<=../../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	lw r12,r31,$212
;../../cpuex2017/raytracer/min-rt.ml@1334:45;1334:51::<=../../cpuex2017/raytracer/min-rt.ml@1334:45;1334:51
	jal @a_8756solver
	mov r24,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1334:15;1334:51../../cpuex2017/raytracer/min-rt.ml@1334:15;1334:21
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1335:15;1335:16
	bne r24,r10,@cfg_label_20291
@cfg_label_20292:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20309
@cfg_label_20291:
@cfg_label_20293:
	lw r5,r31,$356
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1336:11;1336:26::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1336:11;1336:22
	lw r5,r31,$332
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1337:14;1337:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1337:14;1337:18
	flt f10,f11
	bft @emit_label_22907
	li r10,$0
	j @emit_label_22908
@emit_label_22907:
	li r10,$1
@emit_label_22908:
;../../cpuex2017/raytracer/min-rt.ml@1337:5;1337:22::=Olt../../cpuex2017/raytracer/min-rt.ml@1336:11;1336:26../../cpuex2017/raytracer/min-rt.ml@1337:14;1337:22
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1337:5;1337:22
	bne r10,r11,@cfg_label_20283
	j @cfg_label_20282
@cfg_label_20283:
@cfg_label_20285:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20304
@cfg_label_20282:
@cfg_label_20284:
	li r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1338:29;1338:30
	lw r10,r22,$4
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20276
@cfg_label_20277:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20308
@cfg_label_20276:
@cfg_label_20278:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8854solve_each_element
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1338:29;1338:30
	sll r6,r24,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20266
@cfg_label_20267:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20307
@cfg_label_20266:
@cfg_label_20268:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8854solve_each_element
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r23,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r23,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20256
@cfg_label_20257:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20306
@cfg_label_20256:
@cfg_label_20258:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8854solve_each_element
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::<=../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29::<=../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8858solve_one_or_network
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7../../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
	j @cfg_label_20305
@cfg_label_20296:
@cfg_label_20298:
	li r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1330:31;1330:32
	lw r10,r22,$4
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20245
@cfg_label_20246:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20313
@cfg_label_20245:
@cfg_label_20247:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8854solve_each_element
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1330:31;1330:32
	sll r6,r24,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20235
@cfg_label_20236:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20312
@cfg_label_20235:
@cfg_label_20237:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8854solve_each_element
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r23,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	sll r6,r23,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	bne r10,r11,@cfg_label_20225
@cfg_label_20226:
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_20311
@cfg_label_20225:
@cfg_label_20227:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27../../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24::<=../../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34::<=../../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8854solve_each_element
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41../../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33::<=../../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29::<=../../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	jal @a_8858solve_one_or_network
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7../../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
@cfg_label_20311:
@cfg_label_20312:
@cfg_label_20313:
@cfg_label_20309:
@cfg_label_20308:
@cfg_label_20307:
@cfg_label_20306:
@cfg_label_20305:
@cfg_label_20304:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1342:21;1342:28::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3::<=../../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	j @cfg_label_20219
@a_8868solve_each_element_fast:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$116
	subi r1,r1,$56
	sw r6,r1,$0
	sw r27,r1,$4
	sw r26,r1,$8
	sw r25,r1,$12
	fst f8,r1,$16
	fst f7,r1,$20
	fst f6,r1,$24
	fst f4,r1,$28
	sw r24,r1,$32
	sw r23,r1,$36
	sw r22,r1,$40
	sw r21,r1,$44
	sw r20,r1,$48
	sw r8,r1,$52
	mov r21,r10
	mov r20,r11
	mov r8,r12
@cfg_label_20218:
@cfg_label_20217:
@cfg_label_20093:
	lw r24,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	sll r6,r21,$2
	add r5,r20,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	li r10,$-1
;../../cpuex2017/raytracer/min-rt.ml@1368:12;1368:14
	bne r22,r10,@cfg_label_20211
@cfg_label_20212:
;../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	fld f8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	lw r21,r1,$44
	lw r20,r1,$48
	lw r8,r1,$52
	addi r1,r1,$56
	addi r1,r1,$116
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20213:
@cfg_label_20211:
	lw r5,r31,$456
	sll r6,r22,$2
	add r5,r5,r6
	lw r27,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@981:10;981:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@981:10;981:17../../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r25,r27,$40
;../../cpuex2017/raytracer/min-rt.ml@982:15;982:29::=OGetTuple[10]../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	fld f4,r25,$0
;../../cpuex2017/raytracer/min-rt.ml@983:11;983:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fld f6,r25,$4
;../../cpuex2017/raytracer/min-rt.ml@984:11;984:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fld f7,r25,$8
;../../cpuex2017/raytracer/min-rt.ml@985:11;985:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw r10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@986:16;986:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	sll r6,r22,$2
	add r5,r10,r6
	lw r26,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@987:15;987:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@986:16;986:30../../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r10,r27,$4
;../../cpuex2017/raytracer/min-rt.ml@988:16;988:24::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@989:15;989:16
	bne r10,r11,@cfg_label_20112
@cfg_label_20113:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@981:10;981:25::<=../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25::<=../../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	mov r12,r26
;../../cpuex2017/raytracer/min-rt.ml@987:15;987:30::<=../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@983:11;983:21::<=../../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@984:11;984:21::<=../../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@985:11;985:21::<=../../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8760solver_rect_fast
	mov r23,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37../../cpuex2017/raytracer/min-rt.ml@990:4;990:20
	j @cfg_label_20200
@cfg_label_20112:
@cfg_label_20114:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@991:20;991:21
	bne r10,r11,@cfg_label_20107
	j @cfg_label_20106
@cfg_label_20107:
@cfg_label_20109:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r27
;../../cpuex2017/raytracer/min-rt.ml@981:10;981:25::<=../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r26
;../../cpuex2017/raytracer/min-rt.ml@987:15;987:30::<=../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	mov r12,r25
;../../cpuex2017/raytracer/min-rt.ml@982:15;982:29::<=../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@983:11;983:21::<=../../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@984:11;984:21::<=../../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@985:11;985:21::<=../../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8790solver_second_fast2
	mov r23,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37../../cpuex2017/raytracer/min-rt.ml@994:4;994:23
	j @cfg_label_20197
@cfg_label_20106:
@cfg_label_20108:
	fld f10,r26,$0
;../../cpuex2017/raytracer/min-rt.ml@954:12;954:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22909
	li r10,$0
	j @emit_label_22910
@emit_label_22909:
	li r10,$1
@emit_label_22910:
;../../cpuex2017/raytracer/min-rt.ml@954:5;954:22::=Olt../../cpuex2017/raytracer/min-rt.ml@954:12;954:22lib/lib_tortesia.ml@7:24;7:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@954:5;954:22
	bne r10,r11,@cfg_label_20099
	j @cfg_label_20098
@cfg_label_20099:
@cfg_label_20101:
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37
	j @cfg_label_20198
@cfg_label_20098:
@cfg_label_20100:
	fld f10,r26,$0
;../../cpuex2017/raytracer/min-rt.ml@955:23;955:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fld f11,r25,$12
;../../cpuex2017/raytracer/min-rt.ml@955:37;955:47::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@955:23;955:47::=Ofmul../../cpuex2017/raytracer/min-rt.ml@955:23;955:33../../cpuex2017/raytracer/min-rt.ml@955:37;955:47
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@955:4;955:47::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@955:4;955:15../../cpuex2017/raytracer/min-rt.ml@955:23;955:47
	li r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37
@cfg_label_20200:
@cfg_label_20198:
@cfg_label_20197:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1371:13;1371:14
	bne r23,r10,@cfg_label_20193
	j @cfg_label_20192
@cfg_label_20193:
@cfg_label_20195:
	lw r5,r31,$356
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@955:4;955:15
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1377:17;1377:20
	flt f11,f10
	bft @emit_label_22911
	li r10,$0
	j @emit_label_22912
@emit_label_22911:
	li r10,$1
@emit_label_22912:
;../../cpuex2017/raytracer/min-rt.ml@1377:11;1377:24::=Olt../../cpuex2017/raytracer/min-rt.ml@1377:17;1377:20../../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1377:11;1377:24
	bne r10,r11,@cfg_label_20177
	j @cfg_label_20176
@cfg_label_20177:
@cfg_label_20179:
;../../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20184
@cfg_label_20176:
@cfg_label_20178:
	lw r5,r31,$332
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1378:16;1378:24::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1378:16;1378:20
	flt f10,f11
	bft @emit_label_22913
	li r10,$0
	j @emit_label_22914
@emit_label_22913:
	li r10,$1
@emit_label_22914:
;../../cpuex2017/raytracer/min-rt.ml@1378:6;1378:24::=Olt../../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32../../cpuex2017/raytracer/min-rt.ml@1378:16;1378:24
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1378:6;1378:24
	bne r10,r11,@cfg_label_20170
	j @cfg_label_20169
@cfg_label_20170:
@cfg_label_20172:
;../../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20185
@cfg_label_20169:
@cfg_label_20171:
	fmovi f11,$0.01000000000000000021
;../../cpuex2017/raytracer/min-rt.ml@1380:20;1380:24
	fadd f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32../../cpuex2017/raytracer/min-rt.ml@1380:20;1380:24
	fld f11,r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:21../../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$200
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1381:30;1381:45::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41
	fadd f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:26../../cpuex2017/raytracer/min-rt.ml@1381:30;1381:45
	fld f11,r24,$4
;../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:21../../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$200
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1382:30;1382:45::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41
	fadd f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:26../../cpuex2017/raytracer/min-rt.ml@1382:30;1382:45
	fld f11,r24,$8
;../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1366:13;1366:25
	fmul f10,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:26::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:21../../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$200
	fld f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1383:30;1383:45::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41
	fadd f8,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:26../../cpuex2017/raytracer/min-rt.ml@1383:30;1383:45
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1384:25;1384:26
	lw r10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	bne r10,r11,@cfg_label_20135
@cfg_label_20136:
	lw r24,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8::<=../../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	j @cfg_label_20151
@cfg_label_20135:
@cfg_label_20137:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@981:10;981:17../../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32::<=../../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45::<=../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45::<=../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45::<=../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45
	jal @a_8834is_outside
	mov r26,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:17
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	bne r26,r10,@cfg_label_20128
@cfg_label_20129:
	lw r24,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11::<=../../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	j @cfg_label_20150
@cfg_label_20128:
@cfg_label_20130:
	addi r25,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1384:25;1384:26
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31::<=../../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4::<=../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45::<=../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45
	fmov f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45::<=../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45::<=../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45
	jal @a_8839check_all_inside
	mov r24,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45../../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
@cfg_label_20150:
@cfg_label_20151:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	bne r24,r10,@cfg_label_20145
	j @cfg_label_20144
@cfg_label_20145:
@cfg_label_20147:
;../../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_20186
@cfg_label_20144:
@cfg_label_20146:
	lw r5,r31,$332
	fst f4,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1386:2;1386:15::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1378:16;1378:20../../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24
	lw r5,r31,$320
	fst f6,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@52:2;52:3../../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45
	lw r5,r31,$320
	fst f7,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@52:2;52:3../../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45
	lw r5,r31,$320
	fst f8,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1387:2;1387:36::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@52:2;52:3../../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45
	lw r5,r31,$308
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1388:2;1388:35::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1388:2;1388:23../../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r5,r31,$344
	sw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1389:2;1389:27::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1389:2;1389:17../../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37
;../../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
@cfg_label_20186:
@cfg_label_20185:
@cfg_label_20184:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1395:32;1395:44::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4::<=../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	j @cfg_label_20093
@cfg_label_20192:
@cfg_label_20194:
	lw r5,r31,$456
	sll r6,r22,$2
	add r5,r5,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36::=OArrRead../../cpuex2017/raytracer/min-rt.ml@981:10;981:17../../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33
	lw r11,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1399:10;1399:37
	bne r11,r10,@cfg_label_20120
	j @cfg_label_20119
@cfg_label_20120:
@cfg_label_20122:
;../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	fld f8,r1,$16
	fld f7,r1,$20
	fld f6,r1,$24
	fld f4,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	lw r21,r1,$44
	lw r20,r1,$48
	lw r8,r1,$52
	addi r1,r1,$56
	addi r1,r1,$116
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20121:
@cfg_label_20119:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1400:27;1400:39::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4::<=../../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	j @cfg_label_20093
@a_8872solve_one_or_network_fast:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r22,r10
	mov r20,r11
	mov r8,r12
@cfg_label_20092:
@cfg_label_20048:
	sll r6,r22,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20087
@cfg_label_20088:
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20089:
@cfg_label_20087:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12::<=../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8868solve_each_element_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	sll r6,r21,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20077
@cfg_label_20078:
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20079:
@cfg_label_20077:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12::<=../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8868solve_each_element_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r22,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20067
@cfg_label_20068:
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20069:
@cfg_label_20067:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12::<=../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8868solve_each_element_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r21,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_20057
@cfg_label_20058:
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20059:
@cfg_label_20057:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12::<=../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	jal @a_8868solve_each_element_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12::<=../../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	j @cfg_label_20048
@a_8876trace_or_matrix_fast:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$88
	subi r1,r1,$48
	sw r6,r1,$0
	sw r26,r1,$4
	sw r25,r1,$8
	fst f7,r1,$12
	fst f6,r1,$16
	fst f4,r1,$20
	sw r24,r1,$24
	sw r23,r1,$28
	sw r22,r1,$32
	sw r21,r1,$36
	sw r20,r1,$40
	sw r8,r1,$44
	mov r21,r10
	mov r20,r11
	mov r8,r12
@cfg_label_20047:
@cfg_label_19910:
	sll r6,r21,$2
	add r5,r20,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	lw r10,r22,$0
;../../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1419:23;1419:25
	bne r10,r11,@cfg_label_20041
@cfg_label_20042:
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	lw r6,r1,$0
	lw r26,r1,$4
	lw r25,r1,$8
	fld f7,r1,$12
	fld f6,r1,$16
	fld f4,r1,$20
	lw r24,r1,$24
	lw r23,r1,$28
	lw r22,r1,$32
	lw r21,r1,$36
	lw r20,r1,$40
	lw r8,r1,$44
	addi r1,r1,$48
	addi r1,r1,$88
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_20043:
@cfg_label_20041:
	li r11,$99
;../../cpuex2017/raytracer/min-rt.ml@1422:25;1422:27
	bne r10,r11,@cfg_label_20022
	j @cfg_label_20021
@cfg_label_20022:
@cfg_label_20024:
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@981:10;981:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@981:10;981:17../../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32
	lw r23,r25,$40
;../../cpuex2017/raytracer/min-rt.ml@982:15;982:29::=OGetTuple[10]../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	fld f4,r23,$0
;../../cpuex2017/raytracer/min-rt.ml@983:11;983:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fld f6,r23,$4
;../../cpuex2017/raytracer/min-rt.ml@984:11;984:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fld f7,r23,$8
;../../cpuex2017/raytracer/min-rt.ml@985:11;985:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	lw r11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@986:16;986:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	sll r6,r10,$2
	add r5,r11,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@987:15;987:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@986:16;986:30../../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32
	lw r10,r25,$4
;../../cpuex2017/raytracer/min-rt.ml@988:16;988:24::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@989:15;989:16
	bne r10,r11,@cfg_label_19961
	j @cfg_label_19960
@cfg_label_19961:
@cfg_label_19963:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@991:20;991:21
	bne r10,r11,@cfg_label_19956
	j @cfg_label_19955
@cfg_label_19956:
@cfg_label_19958:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@981:10;981:25::<=../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@987:15;987:30::<=../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	mov r12,r23
;../../cpuex2017/raytracer/min-rt.ml@982:15;982:29::<=../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@983:11;983:21::<=../../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@984:11;984:21::<=../../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@985:11;985:21::<=../../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8790solver_second_fast2
	mov r26,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50../../cpuex2017/raytracer/min-rt.ml@994:4;994:23
	j @cfg_label_20008
@cfg_label_19955:
@cfg_label_19957:
	fld f10,r24,$0
;../../cpuex2017/raytracer/min-rt.ml@954:12;954:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22915
	li r10,$0
	j @emit_label_22916
@emit_label_22915:
	li r10,$1
@emit_label_22916:
;../../cpuex2017/raytracer/min-rt.ml@954:5;954:22::=Olt../../cpuex2017/raytracer/min-rt.ml@954:12;954:22lib/lib_tortesia.ml@7:24;7:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@954:5;954:22
	bne r10,r11,@cfg_label_19948
	j @cfg_label_19947
@cfg_label_19948:
@cfg_label_19950:
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50
	j @cfg_label_20009
@cfg_label_19947:
@cfg_label_19949:
	fld f10,r24,$0
;../../cpuex2017/raytracer/min-rt.ml@955:23;955:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fld f11,r23,$12
;../../cpuex2017/raytracer/min-rt.ml@955:37;955:47::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@982:15;982:29
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@955:23;955:47::=Ofmul../../cpuex2017/raytracer/min-rt.ml@955:23;955:33../../cpuex2017/raytracer/min-rt.ml@955:37;955:47
	lw r5,r31,$356
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@955:4;955:47::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@955:4;955:15../../cpuex2017/raytracer/min-rt.ml@955:23;955:47
	li r26,$1
;../../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50
	j @cfg_label_20010
@cfg_label_19960:
@cfg_label_19962:
	lw r23,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@990:24;990:36::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@981:10;981:25::<=../../cpuex2017/raytracer/min-rt.ml@981:10;981:25
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@990:24;990:36::<=../../cpuex2017/raytracer/min-rt.ml@990:24;990:36
	mov r12,r24
;../../cpuex2017/raytracer/min-rt.ml@987:15;987:30::<=../../cpuex2017/raytracer/min-rt.ml@987:15;987:30
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@983:11;983:21::<=../../cpuex2017/raytracer/min-rt.ml@983:11;983:21
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@984:11;984:21::<=../../cpuex2017/raytracer/min-rt.ml@984:11;984:21
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@985:11;985:21::<=../../cpuex2017/raytracer/min-rt.ml@985:11;985:21
	jal @a_8760solver_rect_fast
	mov r26,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50../../cpuex2017/raytracer/min-rt.ml@990:4;990:20
@cfg_label_20010:
@cfg_label_20009:
@cfg_label_20008:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1428:15;1428:16
	bne r26,r10,@cfg_label_20004
@cfg_label_20005:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20034
@cfg_label_20004:
@cfg_label_20006:
	lw r5,r31,$356
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1429:11;1429:26::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@955:4;955:15
	lw r5,r31,$332
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1430:14;1430:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1430:14;1430:18
	flt f10,f11
	bft @emit_label_22917
	li r10,$0
	j @emit_label_22918
@emit_label_22917:
	li r10,$1
@emit_label_22918:
;../../cpuex2017/raytracer/min-rt.ml@1430:5;1430:22::=Olt../../cpuex2017/raytracer/min-rt.ml@1429:11;1429:26../../cpuex2017/raytracer/min-rt.ml@1430:14;1430:22
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1430:5;1430:22
	bne r10,r11,@cfg_label_19996
	j @cfg_label_19995
@cfg_label_19996:
@cfg_label_19998:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20029
@cfg_label_19995:
@cfg_label_19997:
	li r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1431:34;1431:35
	lw r10,r22,$4
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19989
@cfg_label_19990:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20033
@cfg_label_19989:
@cfg_label_19991:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8868solve_each_element_fast
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1431:34;1431:35
	sll r6,r24,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19979
@cfg_label_19980:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20032
@cfg_label_19979:
@cfg_label_19981:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8868solve_each_element_fast
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r23,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r23,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19969
@cfg_label_19970:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20031
@cfg_label_19969:
@cfg_label_19971:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8868solve_each_element_fast
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::<=../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29::<=../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8872solve_one_or_network_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7../../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
	j @cfg_label_20030
@cfg_label_20021:
@cfg_label_20023:
	li r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1423:35;1423:36
	lw r10,r22,$4
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19936
@cfg_label_19937:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20038
@cfg_label_19936:
@cfg_label_19938:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8868solve_each_element_fast
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1423:35;1423:36
	sll r6,r24,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19926
@cfg_label_19927:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20037
@cfg_label_19926:
@cfg_label_19928:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8868solve_each_element_fast
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r23,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	sll r6,r23,$2
	add r5,r22,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	bne r10,r11,@cfg_label_19916
@cfg_label_19917:
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_20036
@cfg_label_19916:
@cfg_label_19918:
	lw r5,r31,$388
	sll r6,r10,$2
	add r5,r5,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27../../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29::<=../../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34::<=../../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8868solve_each_element_fast
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46../../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38::<=../../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29::<=../../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	jal @a_8872solve_one_or_network_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7../../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
@cfg_label_20036:
@cfg_label_20037:
@cfg_label_20038:
@cfg_label_20034:
@cfg_label_20033:
@cfg_label_20032:
@cfg_label_20031:
@cfg_label_20030:
@cfg_label_20029:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1435:26;1435:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4::<=../../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	j @cfg_label_19910
@a_8886get_nvector_second:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$64
	subi r1,r1,$12
	sw r6,r1,$0
	sw r20,r1,$4
	sw r8,r1,$8
	mov r10,r10
@cfg_label_19854:
	lw r5,r31,$320
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29
	lw r11,r10,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	fld f12,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1478:37;1478:48::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:33../../cpuex2017/raytracer/min-rt.ml@1478:37;1478:48
	lw r5,r31,$320
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1479:11;1479:33::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29
	fld f13,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@1479:37;1479:48::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1479:11;1479:33../../cpuex2017/raytracer/min-rt.ml@1479:37;1479:48
	lw r5,r31,$320
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1480:11;1480:33::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29
	fld f13,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1480:37;1480:48::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f14,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1480:11;1480:33../../cpuex2017/raytracer/min-rt.ml@1480:37;1480:48
	lw r11,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	fld f12,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1482:17;1482:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f15,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48../../cpuex2017/raytracer/min-rt.ml@1482:17;1482:28
	fld f12,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@1483:17;1483:28::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48../../cpuex2017/raytracer/min-rt.ml@1483:17;1483:28
	fld f16,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1484:17;1484:28::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmul f12,f14,f16
;../../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48../../cpuex2017/raytracer/min-rt.ml@1484:17;1484:28
	lw r11,r10,$12
;../../cpuex2017/raytracer/min-rt.ml@191:29;191:30::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	li r12,$0
;../../cpuex2017/raytracer/min-rt.ml@1486:17;1486:18
	bne r11,r12,@cfg_label_19885
	j @cfg_label_19884
@cfg_label_19885:
@cfg_label_19887:
	lw r11,r10,$36
;../../cpuex2017/raytracer/min-rt.ml@340:28;340:29::=OGetTuple[9]../../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	fld f17,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f16,f11,f17
;../../cpuex2017/raytracer/min-rt.ml@1491:32;1491:50::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48../../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50
	fld f17,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f18,f14,f17
;../../cpuex2017/raytracer/min-rt.ml@1491:54;1491:72::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48../../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72
	fadd f17,f16,f18
;../../cpuex2017/raytracer/min-rt.ml@1491:32;1491:72::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1491:32;1491:50../../cpuex2017/raytracer/min-rt.ml@1491:54;1491:72
	fmovi f18,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f16,f17,f18
;../../cpuex2017/raytracer/min-rt.ml@1491:25;1491:73::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1491:32;1491:72lib/lib_tortesia.ml@20:23;20:26
	fadd f17,f15,f16
;../../cpuex2017/raytracer/min-rt.ml@1491:19;1491:73::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28../../cpuex2017/raytracer/min-rt.ml@1491:25;1491:73
	lw r5,r31,$296
	fst f17,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1491:4;1491:73::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11../../cpuex2017/raytracer/min-rt.ml@1491:19;1491:73
	fld f16,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1492:38;1492:50::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f15,f10,f16
;../../cpuex2017/raytracer/min-rt.ml@1492:32;1492:50::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48../../cpuex2017/raytracer/min-rt.ml@1492:38;1492:50
	fld f17,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f16,f14,f17
;../../cpuex2017/raytracer/min-rt.ml@1492:54;1492:72::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48../../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72
	fadd f14,f15,f16
;../../cpuex2017/raytracer/min-rt.ml@1492:32;1492:72::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1492:32;1492:50../../cpuex2017/raytracer/min-rt.ml@1492:54;1492:72
	fmovi f16,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f15,f14,f16
;../../cpuex2017/raytracer/min-rt.ml@1492:25;1492:73::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1492:32;1492:72lib/lib_tortesia.ml@20:23;20:26
	fadd f14,f13,f15
;../../cpuex2017/raytracer/min-rt.ml@1492:19;1492:73::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28../../cpuex2017/raytracer/min-rt.ml@1492:25;1492:73
	lw r5,r31,$296
	fst f14,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1492:4;1492:73::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11../../cpuex2017/raytracer/min-rt.ml@1492:19;1492:73
	fld f14,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@1493:38;1493:50::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f13,f10,f14
;../../cpuex2017/raytracer/min-rt.ml@1493:32;1493:50::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48../../cpuex2017/raytracer/min-rt.ml@1493:38;1493:50
	fld f10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1493:60;1493:72::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@340:28;340:29
	fmul f14,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1493:54;1493:72::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48../../cpuex2017/raytracer/min-rt.ml@1493:60;1493:72
	fadd f10,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@1493:32;1493:72::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1493:32;1493:50../../cpuex2017/raytracer/min-rt.ml@1493:54;1493:72
	fmovi f13,$2.00000000000000000000
;lib/lib_tortesia.ml@20:23;20:26
	fdiv f11,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@1493:25;1493:73::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1493:32;1493:72lib/lib_tortesia.ml@20:23;20:26
	fadd f10,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@1493:19;1493:73::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28../../cpuex2017/raytracer/min-rt.ml@1493:25;1493:73
	lw r5,r31,$296
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1486:2;1494:4::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11../../cpuex2017/raytracer/min-rt.ml@1493:19;1493:73
	j @cfg_label_19889
@cfg_label_19884:
@cfg_label_19886:
	lw r5,r31,$296
	fst f15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11../../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28
	lw r5,r31,$296
	fst f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1488:4;1488:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11../../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28
	lw r5,r31,$296
	fst f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1486:2;1494:4::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11../../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28
@cfg_label_19889:
	lw r8,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	lw r10,r31,$296
;../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11::<=../../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@182:29;182:30::<=../../cpuex2017/raytracer/min-rt.ml@182:29;182:30
	jal @a_8594vecunit_sgn
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36../../cpuex2017/raytracer/min-rt.ml@1495:2;1495:13
	mov r9,r20
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$64
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8891utexture:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$92
	subi r1,r1,$40
	sw r6,r1,$0
	fst f9,r1,$4
	fst f8,r1,$8
	sw r22,r1,$12
	fst f7,r1,$16
	fst f6,r1,$20
	fst f4,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	mov r10,r10
	mov r8,r11
@cfg_label_19621:
	lw r11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1516:14;1516:29::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r12,r10,$32
;../../cpuex2017/raytracer/min-rt.ml@290:29;290:30::=OGetTuple[8]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f10,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@1518:23;1518:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@290:29;290:30
	lw r5,r31,$284
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:36::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1518:23;1518:36
	fld f10,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@1519:23;1519:38::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@290:29;290:30
	lw r5,r31,$284
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1519:2;1519:38::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1519:23;1519:38
	fld f10,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@1520:23;1520:37::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@290:29;290:30
	lw r5,r31,$284
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1520:2;1520:37::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1520:23;1520:37
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@1521:13;1521:14
	bne r11,r12,@cfg_label_19842
	j @cfg_label_19841
@cfg_label_19842:
@cfg_label_19844:
	li r12,$2
;../../cpuex2017/raytracer/min-rt.ml@1539:18;1539:19
	bne r11,r12,@cfg_label_19837
	j @cfg_label_19836
@cfg_label_19837:
@cfg_label_19839:
	li r12,$3
;../../cpuex2017/raytracer/min-rt.ml@1546:18;1546:19
	bne r11,r12,@cfg_label_19832
	j @cfg_label_19831
@cfg_label_19832:
@cfg_label_19834:
	li r12,$4
;../../cpuex2017/raytracer/min-rt.ml@1557:18;1557:19
	bne r11,r12,@cfg_label_19827
	j @cfg_label_19826
@cfg_label_19827:
@cfg_label_19829:
;../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r6,r1,$0
	fld f9,r1,$4
	fld f8,r1,$8
	lw r22,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$92
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19828:
@cfg_label_19826:
	fld f10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1559:14;1559:19::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r20,r10,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f11,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1559:23;1559:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1559:14;1559:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1559:14;1559:19../../cpuex2017/raytracer/min-rt.ml@1559:23;1559:34
	lw r21,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f6,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57::<=../../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57
	jal sqrt
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1559:40;1559:58../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmul f6,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1559:14;1559:34../../cpuex2017/raytracer/min-rt.ml@1559:40;1559:58
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1560:14;1560:19::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f11,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@1560:23;1560:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1560:14;1560:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1560:14;1560:19../../cpuex2017/raytracer/min-rt.ml@1560:23;1560:34
	fld f8,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57::<=../../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57
	jal sqrt
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1560:40;1560:58../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmul f10,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1560:14;1560:34../../cpuex2017/raytracer/min-rt.ml@1560:40;1560:58
	fmul f11,f6,f6
;../../cpuex2017/raytracer/min-rt.ml@1561:14;1561:21::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59../../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59
	fmul f12,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@1561:27;1561:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59../../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59
	fadd f4,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1561:14;1561:21../../cpuex2017/raytracer/min-rt.ml@1561:27;1561:34
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f11,f6
	bft @cfg_label_19713
	j @cfg_label_19712
@cfg_label_19713:
@cfg_label_19715:
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59::<=../../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23
	j @cfg_label_19806
@cfg_label_19712:
@cfg_label_19714:
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f11,f12,f6
;../../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59
@cfg_label_19806:
	fmovi f12,$0.00010000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1563:25;1563:31
	flt f11,f12
	bft @emit_label_22919
	li r10,$0
	j @emit_label_22920
@emit_label_22919:
	li r10,$1
@emit_label_22920:
;../../cpuex2017/raytracer/min-rt.ml@1563:9;1563:31::=Olt../../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23../../cpuex2017/raytracer/min-rt.ml@1563:25;1563:31
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1563:9;1563:31
	bne r10,r11,@cfg_label_19730
@cfg_label_19731:
	fmovi f7,$15.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33
	j @cfg_label_19802
@cfg_label_19730:
@cfg_label_19732:
	fdiv f11,f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59../../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f10,f11
	bft @cfg_label_19718
	j @cfg_label_19717
@cfg_label_19718:
@cfg_label_19720:
	fmov f6,f11
;../../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24::<=../../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25
	j @cfg_label_19725
@cfg_label_19717:
@cfg_label_19719:
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24
@cfg_label_19725:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25::<=../../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25
	jal @a_8527atan
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1568:3;1568:10../../cpuex2017/raytracer/min-rt.ml@1568:3;1568:7
	fmovi f11,$30.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1568:15;1568:19
	fmul f10,f7,f11
;../../cpuex2017/raytracer/min-rt.ml@1568:2;1568:19::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1568:3;1568:10../../cpuex2017/raytracer/min-rt.ml@1568:15;1568:19
	fmovi f11,$3.14159269999999990475
;../../cpuex2017/raytracer/min-rt.ml@1568:24;1568:33
	fdiv f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1568:2;1568:19../../cpuex2017/raytracer/min-rt.ml@1568:24;1568:33
@cfg_label_19802:
	fmovi f10,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f6,f7,f10
;lib/lib_tortesia.ml@11:45;11:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1570:20;1570:28lib/lib_tortesia.ml@11:18;11:30
	fsub f6,f7,f8
;../../cpuex2017/raytracer/min-rt.ml@1570:13;1570:29::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33../../cpuex2017/raytracer/min-rt.ml@1570:20;1570:28
	fld f10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1572:14;1572:19::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f11,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@1572:23;1572:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1572:14;1572:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1572:14;1572:19../../cpuex2017/raytracer/min-rt.ml@1572:23;1572:34
	fld f8,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57::<=../../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57
	jal sqrt
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1572:40;1572:58../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmul f10,f7,f9
;../../cpuex2017/raytracer/min-rt.ml@1572:13;1572:59::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1572:14;1572:34../../cpuex2017/raytracer/min-rt.ml@1572:40;1572:58
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f11,f4
	bft @cfg_label_19735
	j @cfg_label_19734
@cfg_label_19735:
@cfg_label_19737:
	fmov f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35::<=../../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23
	j @cfg_label_19787
@cfg_label_19734:
@cfg_label_19736:
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f11,f12,f4
;../../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35
@cfg_label_19787:
	fmovi f12,$0.00010000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1574:25;1574:31
	flt f11,f12
	bft @emit_label_22921
	li r10,$0
	j @emit_label_22922
@emit_label_22921:
	li r10,$1
@emit_label_22922:
;../../cpuex2017/raytracer/min-rt.ml@1574:9;1574:31::=Olt../../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23../../cpuex2017/raytracer/min-rt.ml@1574:25;1574:31
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1574:9;1574:31
	bne r10,r11,@cfg_label_19752
@cfg_label_19753:
	fmovi f4,$15.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36
	j @cfg_label_19783
@cfg_label_19752:
@cfg_label_19754:
	fdiv f11,f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1572:13;1572:59../../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@14:24;14:27
	flt f10,f11
	bft @cfg_label_19740
	j @cfg_label_19739
@cfg_label_19740:
@cfg_label_19742:
	fmov f4,f11
;../../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24::<=../../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25
	j @cfg_label_19747
@cfg_label_19739:
@cfg_label_19741:
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@14:42;14:45
	fmul f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25::=Ofmullib/lib_tortesia.ml@14:42;14:45../../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24
@cfg_label_19747:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25::<=../../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25
	jal @a_8527atan
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1578:6;1578:13../../cpuex2017/raytracer/min-rt.ml@1568:3;1568:7
	fmovi f11,$30.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1578:18;1578:22
	fmul f10,f7,f11
;../../cpuex2017/raytracer/min-rt.ml@1578:5;1578:22::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1578:6;1578:13../../cpuex2017/raytracer/min-rt.ml@1578:18;1578:22
	fmovi f11,$3.14159269999999990475
;../../cpuex2017/raytracer/min-rt.ml@1578:27;1578:36
	fdiv f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1578:5;1578:22../../cpuex2017/raytracer/min-rt.ml@1578:27;1578:36
@cfg_label_19783:
	fmovi f10,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f7,f4,f10
;lib/lib_tortesia.ml@11:45;11:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f7,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1580:21;1580:29lib/lib_tortesia.ml@11:18;11:30
	fsub f10,f4,f7
;../../cpuex2017/raytracer/min-rt.ml@1580:14;1580:30::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36../../cpuex2017/raytracer/min-rt.ml@1580:21;1580:29
	fmovi f12,$0.14999999999999999445
;../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:18
	fmovi f13,$0.50000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1581:29;1581:32
	fsub f11,f13,f6
;../../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1581:29;1581:32../../cpuex2017/raytracer/min-rt.ml@1570:13;1570:29
	fmul f13,f11,f11
;../../cpuex2017/raytracer/min-rt.ml@1581:23;1581:39::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38../../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38
	fsub f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:40::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:18../../cpuex2017/raytracer/min-rt.ml@1581:23;1581:39
	fmovi f13,$0.50000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1581:51;1581:54
	fsub f12,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1581:51;1581:54../../cpuex2017/raytracer/min-rt.ml@1580:14;1580:30
	fmul f13,f12,f12
;../../cpuex2017/raytracer/min-rt.ml@1581:45;1581:62::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61../../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61
	fsub f10,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:40../../cpuex2017/raytracer/min-rt.ml@1581:45;1581:62
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22923
	li r10,$0
	j @emit_label_22924
@emit_label_22923:
	li r10,$1
@emit_label_22924:
;../../cpuex2017/raytracer/min-rt.ml@1582:17;1582:27::=Olt../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63lib/lib_tortesia.ml@7:24;7:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1582:17;1582:27
	bne r10,r11,@cfg_label_19756
@cfg_label_19757:
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45
	j @cfg_label_19764
@cfg_label_19756:
@cfg_label_19758:
	fmov f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63::<=../../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45
@cfg_label_19764:
	fmovi f12,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1583:26;1583:31
	fmul f10,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@1583:26;1583:38::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1583:26;1583:31../../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45
	fmovi f12,$0.29999999999999998890
;../../cpuex2017/raytracer/min-rt.ml@1583:43;1583:46
	fdiv f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1583:25;1583:46::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1583:26;1583:38../../cpuex2017/raytracer/min-rt.ml@1583:43;1583:46
	lw r5,r31,$284
	fst f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1583:25;1583:46
	lw r6,r1,$0
	fld f9,r1,$4
	fld f8,r1,$8
	lw r22,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$92
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19833:
@cfg_label_19831:
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1549:15;1549:20::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r11,r10,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f12,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1549:24;1549:35::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1549:15;1549:20../../cpuex2017/raytracer/min-rt.ml@1549:24;1549:35
	fld f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1550:15;1550:20::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f13,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1550:24;1550:35::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1550:15;1550:20../../cpuex2017/raytracer/min-rt.ml@1550:24;1550:35
	fmul f11,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@1551:21;1551:28::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35../../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35
	fmul f10,f12,f12
;../../cpuex2017/raytracer/min-rt.ml@1551:32;1551:39::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35../../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35
	fadd f4,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1551:21;1551:28../../cpuex2017/raytracer/min-rt.ml@1551:32;1551:39
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39::<=../../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39
	jal sqrt
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:40../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	fmovi f10,$10.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1551:44;1551:48
	fdiv f4,f6,f10
;../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:40../../cpuex2017/raytracer/min-rt.ml@1551:44;1551:48
	fmovi f10,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f6,f4,f10
;lib/lib_tortesia.ml@11:45;11:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1552:23;1552:31lib/lib_tortesia.ml@11:18;11:30
	fsub f10,f4,f6
;../../cpuex2017/raytracer/min-rt.ml@1552:17;1552:31::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48../../cpuex2017/raytracer/min-rt.ml@1552:23;1552:31
	fmovi f11,$3.14159269999999990475
;../../cpuex2017/raytracer/min-rt.ml@1552:36;1552:45
	fmul f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1552:17;1552:31../../cpuex2017/raytracer/min-rt.ml@1552:36;1552:45
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45::<=../../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45
	jal @a_8525cos
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28../../cpuex2017/raytracer/min-rt.ml@1553:22;1553:25
	fmul f10,f6,f6
;../../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28../../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28
	fmovi f12,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1554:34;1554:39
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1554:27;1554:39::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29../../cpuex2017/raytracer/min-rt.ml@1554:34;1554:39
	lw r5,r31,$284
	fst f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1554:6;1554:39::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1554:27;1554:39
	fmovi f12,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1555:28;1555:31
	fsub f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1555:28;1555:38::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1555:28;1555:31../../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29
	fmovi f12,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1555:43;1555:48
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1555:27;1555:48::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1555:28;1555:38../../cpuex2017/raytracer/min-rt.ml@1555:43;1555:48
	lw r5,r31,$284
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1555:27;1555:48
	lw r6,r1,$0
	fld f9,r1,$4
	fld f8,r1,$8
	lw r22,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$92
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19838:
@cfg_label_19836:
	fld f10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1542:26;1542:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fmovi f11,$0.25000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1542:35;1542:39
	fmul f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1542:26;1542:31../../cpuex2017/raytracer/min-rt.ml@1542:35;1542:39
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39::<=../../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39
	jal @a_8523sin
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40../../cpuex2017/raytracer/min-rt.ml@1542:21;1542:24
	fmul f10,f6,f6
;../../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40../../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40
	fmovi f12,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1543:27;1543:32
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1543:27;1543:38::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1543:27;1543:32../../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41
	lw r5,r31,$284
	fst f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1543:6;1543:38::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1543:27;1543:38
	fmovi f11,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1544:27;1544:32
	fmovi f13,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1544:37;1544:40
	fsub f12,f13,f10
;../../cpuex2017/raytracer/min-rt.ml@1544:37;1544:46::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1544:37;1544:40../../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1544:27;1544:47::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1544:27;1544:32../../cpuex2017/raytracer/min-rt.ml@1544:37;1544:46
	lw r5,r31,$284
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1544:27;1544:47
	lw r6,r1,$0
	fld f9,r1,$4
	fld f8,r1,$8
	lw r22,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$92
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19843:
@cfg_label_19841:
	fld f10,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@1524:14;1524:19::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	lw r21,r10,$20
;../../cpuex2017/raytracer/min-rt.ml@240:29;240:30::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f11,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1524:23;1524:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1524:14;1524:19../../cpuex2017/raytracer/min-rt.ml@1524:23;1524:34
	fmovi f11,$0.05000000000000000278
;../../cpuex2017/raytracer/min-rt.ml@1526:30;1526:34
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@1526:24;1526:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34../../cpuex2017/raytracer/min-rt.ml@1526:30;1526:34
	fmovi f11,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f6,f10,f11
;lib/lib_tortesia.ml@11:45;11:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1526:24;1526:34lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1526:17;1526:35lib/lib_tortesia.ml@11:18;11:30
	fmovi f11,$20.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1526:40;1526:44
	fmul f10,f6,f11
;../../cpuex2017/raytracer/min-rt.ml@1526:16;1526:44::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1526:17;1526:35../../cpuex2017/raytracer/min-rt.ml@1526:40;1526:44
	fsub f11,f4,f10
;../../cpuex2017/raytracer/min-rt.ml@1527:13;1527:21::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34../../cpuex2017/raytracer/min-rt.ml@1526:16;1526:44
	fmovi f10,$10.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1527:23;1527:27
	flt f11,f10
	bft @emit_label_22925
	li r20,$0
	j @emit_label_22926
@emit_label_22925:
	li r20,$1
@emit_label_22926:
;../../cpuex2017/raytracer/min-rt.ml@1526:7;1527:27::=Olt../../cpuex2017/raytracer/min-rt.ml@1527:13;1527:21../../cpuex2017/raytracer/min-rt.ml@1527:23;1527:27
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1529:14;1529:19::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9
	fld f11,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@1529:23;1529:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@240:29;240:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1529:14;1529:19../../cpuex2017/raytracer/min-rt.ml@1529:23;1529:34
	fmovi f11,$0.05000000000000000278
;../../cpuex2017/raytracer/min-rt.ml@1531:30;1531:34
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@1531:24;1531:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34../../cpuex2017/raytracer/min-rt.ml@1531:30;1531:34
	fmovi f11,$0.50000000000000000000
;lib/lib_tortesia.ml@11:50;11:53
	fsub f6,f10,f11
;lib/lib_tortesia.ml@11:45;11:53::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1531:24;1531:34lib/lib_tortesia.ml@11:50;11:53
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;lib/lib_tortesia.ml@11:45;11:53::<=lib/lib_tortesia.ml@11:45;11:53
	jal int_of_float
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_tortesia.ml@11:32;11:54lib/lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_tortesia.ml@11:32;11:54::<=lib/lib_tortesia.ml@11:32;11:54
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1531:17;1531:35lib/lib_tortesia.ml@11:18;11:30
	fmovi f11,$20.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1531:40;1531:44
	fmul f10,f6,f11
;../../cpuex2017/raytracer/min-rt.ml@1531:16;1531:44::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1531:17;1531:35../../cpuex2017/raytracer/min-rt.ml@1531:40;1531:44
	fsub f11,f4,f10
;../../cpuex2017/raytracer/min-rt.ml@1532:14;1532:22::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34../../cpuex2017/raytracer/min-rt.ml@1531:16;1531:44
	fmovi f10,$10.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1532:24;1532:28
	flt f11,f10
	bft @emit_label_22927
	li r10,$0
	j @emit_label_22928
@emit_label_22927:
	li r10,$1
@emit_label_22928:
;../../cpuex2017/raytracer/min-rt.ml@1531:7;1532:28::=Olt../../cpuex2017/raytracer/min-rt.ml@1532:14;1532:22../../cpuex2017/raytracer/min-rt.ml@1532:24;1532:28
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1535:10;1535:15
	bne r20,r11,@cfg_label_19633
	j @cfg_label_19632
@cfg_label_19633:
@cfg_label_19635:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1537:16;1537:21
	bne r10,r11,@cfg_label_19628
@cfg_label_19629:
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19637
@cfg_label_19628:
@cfg_label_19630:
	fmovi f10,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19636
@cfg_label_19632:
@cfg_label_19634:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1536:16;1536:21
	bne r10,r11,@cfg_label_19623
@cfg_label_19624:
	fmovi f10,$255.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_19639
@cfg_label_19623:
@cfg_label_19625:
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
@cfg_label_19639:
@cfg_label_19637:
@cfg_label_19636:
	lw r5,r31,$284
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15../../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	lw r6,r1,$0
	fld f9,r1,$4
	fld f8,r1,$8
	lw r22,r1,$12
	fld f7,r1,$16
	fld f6,r1,$20
	fld f4,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$92
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8894add_light:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$4
	sw r6,r1,$0
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
@cfg_label_19579:
	fmovi f13,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f13,f10
	bft @emit_label_22929
	li r10,$0
	j @emit_label_22930
@emit_label_22929:
	li r10,$1
@emit_label_22930:
;../../cpuex2017/raytracer/min-rt.ml@1596:5;1596:18::=Ogt../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1596:5;1596:18
	bne r10,r11,@cfg_label_19595
	j @cfg_label_19594
@cfg_label_19595:
@cfg_label_19597:
;../../cpuex2017/raytracer/min-rt.ml@1596:2;1598:9
	j @cfg_label_19616
@cfg_label_19594:
@cfg_label_19596:
	lw r5,r31,$260
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:14;110:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	fld f15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:35;110:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f14,f10,f15
;../../cpuex2017/raytracer/min-rt.ml@110:26;110:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11../../cpuex2017/raytracer/min-rt.ml@110:35;110:40
	fadd f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@110:14;110:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@110:14;110:22../../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	lw r5,r31,$260
	fst f15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:2;110:40::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	lw r5,r31,$260
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:14;111:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	fld f15,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:35;111:40::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f14,f10,f15
;../../cpuex2017/raytracer/min-rt.ml@111:26;111:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11../../cpuex2017/raytracer/min-rt.ml@111:35;111:40
	fadd f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@111:14;111:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@111:14;111:22../../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	lw r5,r31,$260
	fst f15,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:2;111:40::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	lw r5,r31,$260
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@112:14;112:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	fld f15,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@112:35;112:40::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f14,f10,f15
;../../cpuex2017/raytracer/min-rt.ml@112:26;112:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11../../cpuex2017/raytracer/min-rt.ml@112:35;112:40
	fadd f10,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@112:14;112:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@112:14;112:22../../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	lw r5,r31,$260
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1596:2;1598:9::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@112:14;112:40
@cfg_label_19616:
	fmovi f10,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f10,f11
	bft @emit_label_22931
	li r10,$0
	j @emit_label_22932
@emit_label_22931:
	li r10,$1
@emit_label_22932:
;../../cpuex2017/raytracer/min-rt.ml@1601:5;1601:19::=Ogt../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1601:5;1601:19
	bne r10,r11,@cfg_label_19610
	j @cfg_label_19609
@cfg_label_19610:
@cfg_label_19612:
;../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19611:
@cfg_label_19609:
	fmul f10,f11,f11
;../../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11
	fmul f11,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@1602:14;1602:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32../../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1602:14;1602:33../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11
	lw r5,r31,$260
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1603:15;1603:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1603:15;1603:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1603:15;1603:22../../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50
	lw r5,r31,$260
	fst f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1603:4;1603:29::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@1603:15;1603:29
	lw r5,r31,$260
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1604:15;1604:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1604:15;1604:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1604:15;1604:22../../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50
	lw r5,r31,$260
	fst f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1604:4;1604:29::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@1604:15;1604:29
	lw r5,r31,$260
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1605:15;1605:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1605:15;1605:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1605:15;1605:22../../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50
	lw r5,r31,$260
	fst f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@1605:15;1605:29
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8898trace_reflections:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$104
	subi r1,r1,$48
	sw r6,r1,$0
	fst f8,r1,$4
	sw r25,r1,$8
	sw r24,r1,$12
	sw r23,r1,$16
	fst f7,r1,$20
	sw r22,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	fst f6,r1,$36
	sw r8,r1,$40
	fst f4,r1,$44
	mov r20,r10
	fmov f4,f10
	fmov f6,f11
	mov r8,r11
@cfg_label_19578:
@cfg_label_19494:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1612:14;1612:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_19574
	j @cfg_label_19573
@cfg_label_19574:
@cfg_label_19576:
;../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	lw r6,r1,$0
	fld f8,r1,$4
	lw r25,r1,$8
	lw r24,r1,$12
	lw r23,r1,$16
	fld f7,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	fld f6,r1,$36
	lw r8,r1,$40
	fld f4,r1,$44
	addi r1,r1,$48
	addi r1,r1,$104
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19575:
@cfg_label_19573:
	lw r5,r31,$32
	sll r6,r20,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1613:16;1613:27../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	lw r22,r21,$4
;../../cpuex2017/raytracer/min-rt.ml@467:32;467:33::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9
	fmovi f10,$1000000000.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	lw r5,r31,$332
	sll r6,r11,$2
	add r5,r5,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1442:2;1442:28::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6../../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9../../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	lw r5,r31,$368
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24::<=../../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36::<=../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36
	mov r12,r22
;../../cpuex2017/raytracer/min-rt.ml@467:32;467:33::<=../../cpuex2017/raytracer/min-rt.ml@467:32;467:33
	jal @a_8876trace_or_matrix_fast
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1443:2;1443:44../../cpuex2017/raytracer/min-rt.ml@1443:2;1443:22
	lw r5,r31,$332
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6
	fmovi f11,$-0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17
	flt f11,f10
	bft @emit_label_22933
	li r10,$0
	j @emit_label_22934
@emit_label_22933:
	li r10,$1
@emit_label_22934:
;../../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20::=Olt../../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17../../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20
	bne r10,r11,@cfg_label_19497
	j @cfg_label_19496
@cfg_label_19497:
@cfg_label_19499:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1448:7;1448:12::<=../../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35
	j @cfg_label_19559
@cfg_label_19496:
@cfg_label_19498:
	fmovi f11,$100000000.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
	flt f10,f11
	bft @emit_label_22935
	li r10,$0
	j @emit_label_22936
@emit_label_22935:
	li r10,$1
@emit_label_22936:
;../../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35::=Olt../../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18../../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
@cfg_label_19559:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35
	bne r10,r11,@cfg_label_19546
	j @cfg_label_19545
@cfg_label_19546:
@cfg_label_19548:
;../../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_19554
@cfg_label_19545:
@cfg_label_19547:
	lw r5,r31,$308
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1618:23;1618:48::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1618:23;1618:44
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r11
	sll r6,r6,$1
	sll r6,r6,$1
	mov r10,r6
;../../cpuex2017/raytracer/min-rt.ml@1618:23;1618:52::=Oimul[4]../../cpuex2017/raytracer/min-rt.ml@1618:23;1618:48
	lw r5,r31,$344
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1618:55;1618:74::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1618:55;1618:70
	add r11,r10,r12
;../../cpuex2017/raytracer/min-rt.ml@1618:23;1618:74::=Oadd../../cpuex2017/raytracer/min-rt.ml@1618:23;1618:52../../cpuex2017/raytracer/min-rt.ml@1618:55;1618:74
	lw r10,r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1619:22;1619:40::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35
	bne r11,r10,@cfg_label_19537
	j @cfg_label_19536
@cfg_label_19537:
@cfg_label_19539:
;../../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_19555
@cfg_label_19536:
@cfg_label_19538:
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44
	lw r5,r31,$368
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1621:45;1621:55::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44::<=../../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@1621:45;1621:55::<=../../cpuex2017/raytracer/min-rt.ml@1621:45;1621:55
	jal @a_8851shadow_check_one_or_matrix
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1621:16;1621:55../../cpuex2017/raytracer/min-rt.ml@1621:16;1621:42
	slti r6,r23,$0
	slti r7,r23,$1
	sub r10,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1621:11;1621:56::=Onot../../cpuex2017/raytracer/min-rt.ml@1621:16;1621:55
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1621:11;1621:56
	bne r10,r11,@cfg_label_19528
	j @cfg_label_19527
@cfg_label_19528:
@cfg_label_19530:
;../../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_19556
@cfg_label_19527:
@cfg_label_19529:
	lw r10,r22,$0
;../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@467:32;467:33
	lw r5,r31,$296
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$296
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fld f13,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$296
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fld f13,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1623:18;1623:47::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fld f10,r21,$8
;../../cpuex2017/raytracer/min-rt.ml@473:32;473:33::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35
	fmul f11,f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1625:23;1625:39::=Ofmul../../cpuex2017/raytracer/min-rt.ml@473:32;473:33../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fmul f7,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1625:23;1625:39../../cpuex2017/raytracer/min-rt.ml@1623:18;1623:47
	fld f12,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fld f13,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fld f12,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fld f14,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f13,f12,f14
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fld f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	fld f13,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1623:36;1623:46
	fmul f14,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f11,f12,f14
;../../cpuex2017/raytracer/min-rt.ml@1626:33;1626:61::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmul f8,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61::=Ofmul../../cpuex2017/raytracer/min-rt.ml@473:32;473:33../../cpuex2017/raytracer/min-rt.ml@1626:33;1626:61
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44::<=../../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44
	fmov f11,f8
;../../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61::<=../../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61
	fmov f12,f6
;../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11::<=../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	jal @a_8894add_light
	mov r21,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11../../cpuex2017/raytracer/min-rt.ml@1627:10;1627:19
@cfg_label_19556:
@cfg_label_19555:
@cfg_label_19554:
	subi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1631:23;1631:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11::<=../../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	j @cfg_label_19494
@a_8903trace_ray:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$176
	subi r1,r1,$64
	sw r6,r1,$0
	fst f20,r1,$4
	sw r27,r1,$8
	fst f9,r1,$12
	sw r26,r1,$16
	sw r25,r1,$20
	fst f8,r1,$24
	fst f7,r1,$28
	sw r24,r1,$32
	sw r23,r1,$36
	sw r22,r1,$40
	fst f6,r1,$44
	sw r21,r1,$48
	sw r20,r1,$52
	sw r8,r1,$56
	fst f4,r1,$60
	mov r21,r10
	fmov f4,f10
	mov r8,r11
	mov r20,r12
	fmov f6,f11
@cfg_label_19198:
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1640:13;1640:14
	slt r5,r10,r21
	bne r0,r5,@cfg_label_19490
	j @cfg_label_19489
@cfg_label_19490:
@cfg_label_19492:
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r6,r1,$0
	fld f20,r1,$4
	lw r27,r1,$8
	fld f9,r1,$12
	lw r26,r1,$16
	lw r25,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	fld f6,r1,$44
	lw r21,r1,$48
	lw r20,r1,$52
	lw r8,r1,$56
	fld f4,r1,$60
	addi r1,r1,$64
	addi r1,r1,$176
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19491:
@cfg_label_19489:
	lw r22,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@384:40;384:45::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9
	fmovi f10,$1000000000.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1351:15;1351:27
	lw r5,r31,$332
	sll r6,r11,$2
	add r5,r5,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1351:2;1351:28::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1351:2;1351:6../../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9../../cpuex2017/raytracer/min-rt.ml@1351:15;1351:27
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19
	lw r5,r31,$368
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1352:21;1352:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19::<=../../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31::<=../../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12::<=../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	jal @a_8862trace_or_matrix
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1352:2;1352:39../../cpuex2017/raytracer/min-rt.ml@1352:2;1352:17
	lw r5,r31,$332
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1351:2;1351:6
	fmovi f11,$-0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@1355:14;1355:17
	flt f11,f10
	bft @emit_label_22937
	li r10,$0
	j @emit_label_22938
@emit_label_22937:
	li r10,$1
@emit_label_22938:
;../../cpuex2017/raytracer/min-rt.ml@1355:6;1355:20::=Olt../../cpuex2017/raytracer/min-rt.ml@1355:14;1355:17../../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1355:6;1355:20
	bne r10,r11,@cfg_label_19201
	j @cfg_label_19200
@cfg_label_19201:
@cfg_label_19203:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1357:7;1357:12::<=../../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32
	j @cfg_label_19476
@cfg_label_19200:
@cfg_label_19202:
	fmovi f11,$100000000.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1356:13;1356:24
	flt f10,f11
	bft @emit_label_22939
	li r10,$0
	j @emit_label_22940
@emit_label_22939:
	li r10,$1
@emit_label_22940:
;../../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32::=Olt../../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18../../cpuex2017/raytracer/min-rt.ml@1356:13;1356:24
@cfg_label_19476:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32
	bne r10,r11,@cfg_label_19472
	j @cfg_label_19471
@cfg_label_19472:
@cfg_label_19474:
	li r11,$-1
;../../cpuex2017/raytracer/min-rt.ml@1705:28;1705:30
	sll r6,r21,$2
	add r5,r22,r6
	sw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1705:6;1705:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@384:40;384:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1705:28;1705:30
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1707:17;1707:18
	bne r21,r10,@cfg_label_19465
@cfg_label_19466:
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r6,r1,$0
	fld f20,r1,$4
	lw r27,r1,$8
	fld f9,r1,$12
	lw r26,r1,$16
	lw r25,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	fld f6,r1,$44
	lw r21,r1,$48
	lw r20,r1,$52
	lw r8,r1,$56
	fld f4,r1,$60
	addi r1,r1,$64
	addi r1,r1,$176
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19467:
@cfg_label_19465:
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fld f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1708:16;1708:37::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1708:16;1708:37
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22941
	li r10,$0
	j @emit_label_22942
@emit_label_22941:
	li r10,$1
@emit_label_22942:
;../../cpuex2017/raytracer/min-rt.ml@1710:4;1710:13::=Ogt../../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1710:4;1710:13
	bne r10,r11,@cfg_label_19445
	j @cfg_label_19444
@cfg_label_19445:
@cfg_label_19447:
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r6,r1,$0
	fld f20,r1,$4
	lw r27,r1,$8
	fld f9,r1,$12
	lw r26,r1,$16
	lw r25,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	fld f6,r1,$44
	lw r21,r1,$48
	lw r20,r1,$52
	lw r8,r1,$56
	fld f4,r1,$60
	addi r1,r1,$64
	addi r1,r1,$176
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19446:
@cfg_label_19444:
	fmul f12,f10,f10
;../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:21::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38../../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:27::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:21../../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38
	fmul f12,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:37::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:27../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$408
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1713:41;1713:49::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1713:41;1713:45
	fmul f10,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:37../../cpuex2017/raytracer/min-rt.ml@1713:41;1713:49
	lw r5,r31,$260
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:22../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49
	lw r5,r31,$260
	fst f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1714:4;1714:29::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:29
	lw r5,r31,$260
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1715:15;1715:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1715:15;1715:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1715:15;1715:22../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49
	lw r5,r31,$260
	fst f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1715:4;1715:29::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18../../cpuex2017/raytracer/min-rt.ml@1715:15;1715:29
	lw r5,r31,$260
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1716:15;1716:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1716:15;1716:29::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1716:15;1716:22../../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49
	lw r5,r31,$260
	fst f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18../../cpuex2017/raytracer/min-rt.ml@1716:15;1716:29
	lw r6,r1,$0
	fld f20,r1,$4
	lw r27,r1,$8
	fld f9,r1,$12
	lw r26,r1,$16
	lw r25,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	fld f6,r1,$44
	lw r21,r1,$48
	lw r20,r1,$52
	lw r8,r1,$56
	fld f4,r1,$60
	addi r1,r1,$64
	addi r1,r1,$176
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19473:
@cfg_label_19471:
	lw r5,r31,$308
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1644:19;1644:40
	lw r5,r31,$456
	sll r6,r25,$2
	add r5,r5,r6
	lw r26,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:23../../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44
	lw r24,r26,$8
;../../cpuex2017/raytracer/min-rt.ml@172:29;172:30::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	lw r23,r26,$28
;../../cpuex2017/raytracer/min-rt.ml@270:29;270:30::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	fld f10,r23,$0
;../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmul f7,f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r10,r26,$4
;../../cpuex2017/raytracer/min-rt.ml@1500:16;1500:24::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1501:15;1501:16
	bne r10,r11,@cfg_label_19248
	j @cfg_label_19247
@cfg_label_19248:
@cfg_label_19250:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@1503:20;1503:21
	bne r10,r11,@cfg_label_19243
	j @cfg_label_19242
@cfg_label_19243:
@cfg_label_19245:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32::<=../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	jal @a_8886get_nvector_second
	mov r27,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28../../cpuex2017/raytracer/min-rt.ml@1506:4;1506:22
	j @cfg_label_19420
@cfg_label_19242:
@cfg_label_19244:
	lw r10,r26,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34
	lw r5,r31,$296
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1471:2;1471:35::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35
	fld f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34
	lw r5,r31,$296
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1472:2;1472:35::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34
	lw r5,r31,$296
	fst f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35
	j @cfg_label_19421
@cfg_label_19247:
@cfg_label_19249:
	lw r5,r31,$344
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@59:2;59:15::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@60:2;60:15::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1464:2;1464:18::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	subi r10,r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36
	sll r6,r10,$2
	add r5,r8,r6
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22943
	li r11,$0
	j @emit_label_22944
@emit_label_22943:
	li r11,$1
@emit_label_22944:
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14::=Oeq../../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56lib/lib_tortesia.ml@5:25;5:28
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r11,r12,@cfg_label_19212
@cfg_label_19213:
	fmovi f12,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19219
@cfg_label_19212:
@cfg_label_19214:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22945
	li r11,$0
	j @emit_label_22946
@emit_label_22945:
	li r11,$1
@emit_label_22946:
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18::=Ogt../../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56lib/lib_tortesia.ml@9:24;9:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r11,r12,@cfg_label_19205
@cfg_label_19206:
	fmovi f12,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19218
@cfg_label_19205:
@cfg_label_19207:
	fmovi f12,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
@cfg_label_19218:
@cfg_label_19219:
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	lw r5,r31,$296
	sll r6,r10,$2
	add r5,r5,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21../../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58
@cfg_label_19421:
@cfg_label_19420:
	lw r5,r31,$320
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$320
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$320
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1650:6;1650:38::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32::<=../../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32
	lw r11,r31,$320
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:17::<=../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	jal @a_8891utexture
	mov r27,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1651:6;1651:37../../cpuex2017/raytracer/min-rt.ml@1651:6;1651:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r25
	sll r6,r6,$1
	sll r6,r6,$1
	mov r10,r6
;../../cpuex2017/raytracer/min-rt.ml@1654:28;1654:38::=Oimul[4]../../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44
	lw r5,r31,$344
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1654:41;1654:60::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32
	add r11,r10,r12
;../../cpuex2017/raytracer/min-rt.ml@1654:28;1654:60::=Oadd../../cpuex2017/raytracer/min-rt.ml@1654:28;1654:38../../cpuex2017/raytracer/min-rt.ml@1654:41;1654:60
	sll r6,r21,$2
	add r5,r22,r6
	sw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1654:6;1654:60::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@384:40;384:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1654:28;1654:60
	lw r11,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@376:40;376:45::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sll r6,r21,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39::=OArrRead../../cpuex2017/raytracer/min-rt.ml@376:40;376:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$320
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$320
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$320
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	fst f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1656:6;1656:58::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r10,r20,$12
;../../cpuex2017/raytracer/min-rt.ml@391:40;391:45::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	fld f10,r23,$0
;../../cpuex2017/raytracer/min-rt.ml@1660:16;1660:29::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmovi f11,$0.50000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1660:31;1660:34
	flt f10,f11
	bft @emit_label_22947
	li r11,$0
	j @emit_label_22948
@emit_label_22947:
	li r11,$1
@emit_label_22948:
;../../cpuex2017/raytracer/min-rt.ml@1660:9;1660:34::=Olt../../cpuex2017/raytracer/min-rt.ml@1660:16;1660:29../../cpuex2017/raytracer/min-rt.ml@1660:31;1660:34
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@1660:9;1660:34
	bne r11,r12,@cfg_label_19281
@cfg_label_19282:
	lw r7,r31,$12
	sll r6,r21,$2
	add r5,r10,r6
	sw r7,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1660:6;1669:8::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@391:40;391:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1357:7;1357:12
	j @cfg_label_19395
@cfg_label_19281:
@cfg_label_19283:
	lw r7,r31,$16
	sll r6,r21,$2
	add r5,r10,r6
	sw r7,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1663:1;1663:28::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@391:40;391:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1663:24;1663:28
	lw r11,r20,$16
;../../cpuex2017/raytracer/min-rt.ml@398:40;398:45::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sll r6,r21,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22::=OArrRead../../cpuex2017/raytracer/min-rt.ml@398:40;398:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$284
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$284
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$284
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	fst f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1665:1;1665:36::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	sll r6,r21,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24::=OArrRead../../cpuex2017/raytracer/min-rt.ml@398:40;398:45../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	fmovi f11,$0.00390625000000000000
;../../cpuex2017/raytracer/min-rt.ml@1666:27;1666:39
	fmul f10,f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1666:27;1666:39../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@131:14;131:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@131:14;131:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@131:14;131:22../../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51
	fst f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@131:2;131:31::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24../../cpuex2017/raytracer/min-rt.ml@131:14;131:31
	fld f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@132:14;132:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@132:14;132:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@132:14;132:22../../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51
	fst f11,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@132:2;132:31::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24../../cpuex2017/raytracer/min-rt.ml@132:14;132:31
	fld f12,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@133:14;133:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@133:14;133:31::=Ofmul../../cpuex2017/raytracer/min-rt.ml@133:14;133:22../../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51
	fst f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1666:1;1666:52::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24../../cpuex2017/raytracer/min-rt.ml@133:14;133:31
	lw r11,r20,$28
;../../cpuex2017/raytracer/min-rt.ml@435:39;435:44::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	sll r6,r21,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23::=OArrRead../../cpuex2017/raytracer/min-rt.ml@435:39;435:44../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$296
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$296
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1668:1;1668:31::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
;../../cpuex2017/raytracer/min-rt.ml@1660:6;1669:8
@cfg_label_19395:
	fmovi f11,$-2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1671:16;1671:19
	fld f12,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fld f12,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f14,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f13,f12,f14
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fld f13,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f14,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f10,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f13,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1671:24;1671:47::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmul f10,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1671:16;1671:19../../cpuex2017/raytracer/min-rt.ml@1671:24;1671:47
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@110:14;110:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:35;110:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@110:26;110:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47../../cpuex2017/raytracer/min-rt.ml@110:35;110:40
	fadd f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@110:14;110:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@110:14;110:22../../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	fst f13,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@110:2;110:40::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@111:14;111:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:35;111:40::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@111:26;111:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47../../cpuex2017/raytracer/min-rt.ml@111:35;111:40
	fadd f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@111:14;111:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@111:14;111:22../../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	fst f13,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@111:2;111:40::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	fld f11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@112:14;112:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$296
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@112:35;112:40::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@112:26;112:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47../../cpuex2017/raytracer/min-rt.ml@112:35;112:40
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@112:14;112:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@112:14;112:22../../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	fst f10,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1673:6;1673:31::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@112:14;112:40
	fld f10,r23,$4
;../../cpuex2017/raytracer/min-rt.ml@1675:36;1675:49::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmul f8,f4,f10
;../../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1675:36;1675:49
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42
	lw r5,r31,$368
	lw r27,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1678:43;1678:53::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1352:21;1352:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r26
;../../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42::<=../../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42
	mov r11,r27
;../../cpuex2017/raytracer/min-rt.ml@1678:43;1678:53::<=../../cpuex2017/raytracer/min-rt.ml@1678:43;1678:53
	jal @a_8851shadow_check_one_or_matrix
	mov r25,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1678:14;1678:53../../cpuex2017/raytracer/min-rt.ml@1678:14;1678:40
	slti r6,r25,$0
	slti r7,r25,$1
	sub r10,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1678:9;1678:54::=Onot../../cpuex2017/raytracer/min-rt.ml@1678:14;1678:53
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1678:9;1678:54
	bne r10,r11,@cfg_label_19312
	j @cfg_label_19311
@cfg_label_19312:
@cfg_label_19314:
;../../cpuex2017/raytracer/min-rt.ml@1678:6;1682:13
	j @cfg_label_19357
@cfg_label_19311:
@cfg_label_19313:
	lw r5,r31,$296
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$296
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$296
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1679:27;1679:49::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1679:21;1679:50::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1679:27;1679:49
	fmul f9,f10,f7
;../../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1679:21;1679:50../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43
	fld f11,r8,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fld f11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fld f12,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$420
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1680:28;1680:49::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f20,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1680:28;1680:49
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61::<=../../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61
	fmov f11,f20
;../../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50::<=../../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50
	fmov f12,f8
;../../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49::<=../../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49
	jal @a_8894add_light
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1678:6;1682:13../../cpuex2017/raytracer/min-rt.ml@1681:8;1681:17
@cfg_label_19357:
	lw r5,r31,$320
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$320
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$320
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r25,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	lw r10,r31,$320
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:17::<=../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r26,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1685:6;1685:37../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	lw r5,r31,$20
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1686:25;1686:42::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1686:25;1686:38
	subi r25,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1686:25;1686:42
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44::<=../../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43::<=../../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43
	fmov f11,f8
;../../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49::<=../../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12::<=../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	jal @a_8898trace_reflections
	mov r26,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1686:6;1686:74../../cpuex2017/raytracer/min-rt.ml@1686:6;1686:23
	fmovi f10,$0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@1689:15;1689:18
	flt f10,f4
	bft @emit_label_22949
	li r10,$0
	j @emit_label_22950
@emit_label_22949:
	li r10,$1
@emit_label_22950:
;../../cpuex2017/raytracer/min-rt.ml@1689:9;1689:25::=Olt../../cpuex2017/raytracer/min-rt.ml@1689:15;1689:18../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1689:9;1689:25
	bne r10,r11,@cfg_label_19339
	j @cfg_label_19338
@cfg_label_19339:
@cfg_label_19341:
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r6,r1,$0
	fld f20,r1,$4
	lw r27,r1,$8
	fld f9,r1,$12
	lw r26,r1,$16
	lw r25,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	fld f6,r1,$44
	lw r21,r1,$48
	lw r20,r1,$52
	lw r8,r1,$56
	fld f4,r1,$60
	addi r1,r1,$64
	addi r1,r1,$176
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19340:
@cfg_label_19338:
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1691:11;1691:12
	slt r5,r21,r10
	bne r0,r5,@cfg_label_19318
@cfg_label_19319:
;../../cpuex2017/raytracer/min-rt.ml@1691:1;1693:8
	j @cfg_label_19336
@cfg_label_19318:
@cfg_label_19320:
	addi r11,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1692:16;1692:22::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	li r12,$-1
;../../cpuex2017/raytracer/min-rt.ml@1692:27;1692:29
	sll r6,r11,$2
	add r5,r22,r6
	sw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1691:1;1693:8::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@384:40;384:45../../cpuex2017/raytracer/min-rt.ml@1692:16;1692:22../../cpuex2017/raytracer/min-rt.ml@1692:27;1692:29
@cfg_label_19336:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@1695:16;1695:17
	bne r24,r10,@cfg_label_19329
	j @cfg_label_19328
@cfg_label_19329:
@cfg_label_19331:
;../../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11
	j @cfg_label_19332
@cfg_label_19328:
@cfg_label_19330:
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1696:28;1696:31
	fld f11,r23,$0
;../../cpuex2017/raytracer/min-rt.ml@1696:35;1696:48::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fsub f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1696:28;1696:48::=Ofsub../../cpuex2017/raytracer/min-rt.ml@1696:28;1696:31../../cpuex2017/raytracer/min-rt.ml@1696:35;1696:48
	fmul f7,f4,f12
;../../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1696:28;1696:48
	addi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r31,$332
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1697:52;1697:60::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1351:2;1351:6
	fadd f4,f6,f10
;../../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12../../cpuex2017/raytracer/min-rt.ml@1697:52;1697:60
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20::<=../../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49::<=../../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12::<=../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12::<=../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	fmov f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60::<=../../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60
	jal @a_8903trace_ray
	mov r21,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11../../cpuex2017/raytracer/min-rt.ml@1697:3;1697:12
@cfg_label_19332:
;../../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r6,r1,$0
	fld f20,r1,$4
	lw r27,r1,$8
	fld f9,r1,$12
	lw r26,r1,$16
	lw r25,r1,$20
	fld f8,r1,$24
	fld f7,r1,$28
	lw r24,r1,$32
	lw r23,r1,$36
	lw r22,r1,$40
	fld f6,r1,$44
	lw r21,r1,$48
	lw r20,r1,$52
	lw r8,r1,$56
	fld f4,r1,$60
	addi r1,r1,$64
	addi r1,r1,$176
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8909trace_diffuse_ray:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$104
	subi r1,r1,$24
	sw r6,r1,$0
	sw r22,r1,$4
	sw r21,r1,$8
	sw r20,r1,$12
	sw r8,r1,$16
	fst f4,r1,$20
	mov r20,r10
	fmov f4,f10
@cfg_label_19070:
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9
	fmovi f10,$1000000000.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	lw r5,r31,$332
	sll r6,r11,$2
	add r5,r5,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1442:2;1442:28::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6../../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9../../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	li r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	lw r5,r31,$368
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24::<=../../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36::<=../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9::<=../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	jal @a_8876trace_or_matrix_fast
	mov r8,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1443:2;1443:44../../cpuex2017/raytracer/min-rt.ml@1443:2;1443:22
	lw r5,r31,$332
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6
	fmovi f11,$-0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17
	flt f11,f10
	bft @emit_label_22951
	li r10,$0
	j @emit_label_22952
@emit_label_22951:
	li r10,$1
@emit_label_22952:
;../../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20::=Olt../../cpuex2017/raytracer/min-rt.ml@1446:14;1446:17../../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20
	bne r10,r11,@cfg_label_19073
	j @cfg_label_19072
@cfg_label_19073:
@cfg_label_19075:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1448:7;1448:12::<=../../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35
	j @cfg_label_19186
@cfg_label_19072:
@cfg_label_19074:
	fmovi f11,$100000000.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
	flt f10,f11
	bft @emit_label_22953
	li r10,$0
	j @emit_label_22954
@emit_label_22953:
	li r10,$1
@emit_label_22954:
;../../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35::=Olt../../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18../../cpuex2017/raytracer/min-rt.ml@1447:13;1447:24
@cfg_label_19186:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35
	bne r10,r11,@cfg_label_19182
	j @cfg_label_19181
@cfg_label_19182:
@cfg_label_19184:
;../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f4,r1,$20
	addi r1,r1,$24
	addi r1,r1,$104
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19183:
@cfg_label_19181:
	lw r5,r31,$308
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1736:23;1736:48::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1736:23;1736:44
	lw r5,r31,$456
	sll r6,r10,$2
	add r5,r5,r6
	lw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:21../../cpuex2017/raytracer/min-rt.ml@1736:23;1736:48
	lw r11,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@1737:21;1737:33::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	lw r10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1500:16;1500:24::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@1501:15;1501:16
	bne r10,r12,@cfg_label_19120
	j @cfg_label_19119
@cfg_label_19120:
@cfg_label_19122:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@1503:20;1503:21
	bne r10,r11,@cfg_label_19115
	j @cfg_label_19114
@cfg_label_19115:
@cfg_label_19117:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49::<=../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	jal @a_8886get_nvector_second
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34../../cpuex2017/raytracer/min-rt.ml@1506:4;1506:22
	j @cfg_label_19173
@cfg_label_19114:
@cfg_label_19116:
	lw r10,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@200:29;200:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34
	lw r5,r31,$296
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1471:2;1471:35::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35
	fld f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34
	lw r5,r31,$296
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1472:2;1472:35::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@200:29;200:30
	fmovi f12,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34
	lw r5,r31,$296
	fst f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35
	j @cfg_label_19174
@cfg_label_19119:
@cfg_label_19121:
	lw r5,r31,$344
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@59:2;59:15::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@60:2;60:15::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$296
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1464:2;1464:18::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	subi r10,r12,$1
;../../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36
	sll r6,r10,$2
	add r5,r11,r6
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1737:21;1737:33../../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@5:25;5:28
	feq f10,f11
	bft @emit_label_22955
	li r11,$0
	j @emit_label_22956
@emit_label_22955:
	li r11,$1
@emit_label_22956:
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14::=Oeq../../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56lib/lib_tortesia.ml@5:25;5:28
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	bne r11,r12,@cfg_label_19084
@cfg_label_19085:
	fmovi f12,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19091
@cfg_label_19084:
@cfg_label_19086:
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22957
	li r11,$0
	j @emit_label_22958
@emit_label_22957:
	li r11,$1
@emit_label_22958:
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18::=Ogt../../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56lib/lib_tortesia.ml@9:24;9:27
	li r12,$1
;../../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	bne r11,r12,@cfg_label_19077
@cfg_label_19078:
	fmovi f12,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	j @cfg_label_19090
@cfg_label_19077:
@cfg_label_19079:
	fmovi f12,$-1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
@cfg_label_19090:
@cfg_label_19091:
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1465:32;1465:57
	lw r5,r31,$296
	sll r6,r10,$2
	add r5,r5,r6
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21../../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58
@cfg_label_19174:
@cfg_label_19173:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49::<=../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	lw r11,r31,$320
;../../cpuex2017/raytracer/min-rt.ml@1738:17;1738:35::<=../../cpuex2017/raytracer/min-rt.ml@1738:17;1738:35
	jal @a_8891utexture
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1738:4;1738:35../../cpuex2017/raytracer/min-rt.ml@1738:4;1738:12
	li r21,$0
;../../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40
	lw r5,r31,$368
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1741:41;1741:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40::<=../../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1741:41;1741:51::<=../../cpuex2017/raytracer/min-rt.ml@1741:41;1741:51
	jal @a_8851shadow_check_one_or_matrix
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1741:12;1741:51../../cpuex2017/raytracer/min-rt.ml@1741:12;1741:38
	slti r6,r20,$0
	slti r7,r20,$1
	sub r10,r7,r6
;../../cpuex2017/raytracer/min-rt.ml@1741:7;1741:52::=Onot../../cpuex2017/raytracer/min-rt.ml@1741:12;1741:51
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1741:7;1741:52
	bne r10,r11,@cfg_label_19164
	j @cfg_label_19163
@cfg_label_19164:
@cfg_label_19166:
;../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f4,r1,$20
	addi r1,r1,$24
	addi r1,r1,$104
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19165:
@cfg_label_19163:
	lw r5,r31,$296
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$296
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$296
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	lw r5,r31,$420
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:11;100:12
	fmul f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f12,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@1742:22;1742:44::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@1742:22;1742:44
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@9:24;9:27
	flt f11,f10
	bft @emit_label_22959
	li r10,$0
	j @emit_label_22960
@emit_label_22959:
	li r10,$1
@emit_label_22960:
;../../cpuex2017/raytracer/min-rt.ml@1743:23;1743:32::=Ogt../../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45lib/lib_tortesia.ml@9:24;9:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1743:23;1743:32
	bne r10,r11,@cfg_label_19124
@cfg_label_19125:
	fmov f12,f10
;../../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45::<=../../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49
	j @cfg_label_19146
@cfg_label_19124:
@cfg_label_19126:
	fmovi f12,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49
@cfg_label_19146:
	fmul f11,f4,f12
;../../cpuex2017/raytracer/min-rt.ml@1744:28;1744:44::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9../../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49
	lw r10,r8,$28
;../../cpuex2017/raytracer/min-rt.ml@270:29;270:30::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1744:48;1744:61::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1744:28;1744:44../../cpuex2017/raytracer/min-rt.ml@1744:48;1744:61
	lw r5,r31,$272
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:14;110:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:35;110:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@110:26;110:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61../../cpuex2017/raytracer/min-rt.ml@110:35;110:40
	fadd f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@110:14;110:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@110:14;110:22../../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	lw r5,r31,$272
	fst f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@110:2;110:40::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	lw r5,r31,$272
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:14;111:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	fld f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:35;111:40::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@111:26;111:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61../../cpuex2017/raytracer/min-rt.ml@111:35;111:40
	fadd f13,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@111:14;111:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@111:14;111:22../../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	lw r5,r31,$272
	fst f13,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@111:2;111:40::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	lw r5,r31,$272
	fld f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@112:14;112:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18
	lw r5,r31,$284
	fld f13,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@112:35;112:40::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@110:35;110:36
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@112:26;112:40::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61../../cpuex2017/raytracer/min-rt.ml@112:35;112:40
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@112:14;112:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@112:14;112:22../../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	lw r5,r31,$272
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@110:14;110:18../../cpuex2017/raytracer/min-rt.ml@112:14;112:40
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	fld f4,r1,$20
	addi r1,r1,$24
	addi r1,r1,$104
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8912iter_trace_diffuse_rays:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r23,r1,$4
	fst f4,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r8,r10
	mov r20,r11
	sw r12,r2,$16
	mov r21,r13
@cfg_label_19069:
@cfg_label_19029:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1752:14;1752:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_19065
	j @cfg_label_19064
@cfg_label_19065:
@cfg_label_19067:
;../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	lw r6,r1,$0
	lw r23,r1,$4
	fld f4,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19066:
@cfg_label_19064:
	sll r6,r21,$2
	add r5,r8,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	lw r10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48
	fld f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48
	fld f12,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	fld f11,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48
	fld f13,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmul f12,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1753:22;1753:48
	fld f13,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmul f12,f10,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f11,$0.00000000000000000000
;lib/lib_tortesia.ml@7:24;7:27
	flt f10,f11
	bft @emit_label_22961
	li r10,$0
	j @emit_label_22962
@emit_label_22961:
	li r10,$1
@emit_label_22962:
;../../cpuex2017/raytracer/min-rt.ml@1757:7;1757:15::=Olt../../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57lib/lib_tortesia.ml@7:24;7:27
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1757:7;1757:15
	bne r10,r11,@cfg_label_19038
	j @cfg_label_19037
@cfg_label_19038:
@cfg_label_19040:
	sll r6,r21,$2
	add r5,r8,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	fmovi f11,$150.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1760:51;1760:56
	fdiv f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57../../cpuex2017/raytracer/min-rt.ml@1760:51;1760:56
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44::<=../../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56::<=../../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56
	jal @a_8909trace_diffuse_ray
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1757:4;1760:57../../cpuex2017/raytracer/min-rt.ml@1758:6;1758:23
	j @cfg_label_19046
@cfg_label_19037:
@cfg_label_19039:
	addi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@1758:38;1758:47::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	sll r6,r10,$2
	add r5,r8,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12../../cpuex2017/raytracer/min-rt.ml@1758:38;1758:47
	fmovi f11,$-150.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@1758:56;1758:61
	fdiv f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57../../cpuex2017/raytracer/min-rt.ml@1758:56;1758:61
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48::<=../../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61::<=../../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61
	jal @a_8909trace_diffuse_ray
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1757:4;1760:57../../cpuex2017/raytracer/min-rt.ml@1758:6;1758:23
@cfg_label_19046:
	subi r10,r21,$2
;../../cpuex2017/raytracer/min-rt.ml@1762:54;1762:63::=Oibysub[2]../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12::<=../../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	j @cfg_label_19029
@a_8921trace_diffuse_ray_80percent:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$40
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r21,r10
	mov r8,r11
	mov r20,r12
@cfg_label_18940:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1779:17;1779:18
	bne r21,r10,@cfg_label_18953
@cfg_label_18954:
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1781:9
	j @cfg_label_19027
@cfg_label_18953:
@cfg_label_18955:
	lw r5,r31,$112
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	fld f10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r24,$118
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34::<=../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r24
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54::<=../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8912iter_trace_diffuse_rays
	mov r23,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1781:9../../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_19027:
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1783:17;1783:18
	bne r21,r10,@cfg_label_18968
@cfg_label_18969:
;../../cpuex2017/raytracer/min-rt.ml@1783:2;1785:9
	j @cfg_label_19024
@cfg_label_18968:
@cfg_label_18970:
	lw r5,r31,$112
	lw r22,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	fld f10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r24,$118
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34::<=../../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r24
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54::<=../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8912iter_trace_diffuse_rays
	mov r23,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1783:2;1785:9../../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_19024:
	li r10,$2
;../../cpuex2017/raytracer/min-rt.ml@1787:17;1787:18
	bne r21,r10,@cfg_label_18983
@cfg_label_18984:
;../../cpuex2017/raytracer/min-rt.ml@1787:2;1789:9
	j @cfg_label_19021
@cfg_label_18983:
@cfg_label_18985:
	lw r5,r31,$112
	lw r22,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	fld f10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r24,$118
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34::<=../../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r24
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54::<=../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8912iter_trace_diffuse_rays
	mov r23,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1787:2;1789:9../../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_19021:
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@1791:17;1791:18
	bne r21,r10,@cfg_label_18998
@cfg_label_18999:
;../../cpuex2017/raytracer/min-rt.ml@1791:2;1793:9
	j @cfg_label_19018
@cfg_label_18998:
@cfg_label_19000:
	lw r5,r31,$112
	lw r22,r5,$12
;../../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34::=OiArrRead[3]../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	fld f10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r24,$118
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34::<=../../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r24
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54::<=../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8912iter_trace_diffuse_rays
	mov r23,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1791:2;1793:9../../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
@cfg_label_19018:
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1795:17;1795:18
	bne r21,r10,@cfg_label_19013
@cfg_label_19014:
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r9,r23
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$40
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_19015:
@cfg_label_19013:
	lw r5,r31,$112
	lw r21,r5,$16
;../../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34::=OiArrRead[4]../../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30
	fld f10,r20,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r22,$118
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34::<=../../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9::<=../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9
	mov r13,r22
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54::<=../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8912iter_trace_diffuse_rays
	mov r23,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9../../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	mov r9,r23
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$40
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8925calc_diffuse_using_1point:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$56
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r10,r10
	mov r20,r11
@cfg_label_18922:
	lw r14,r10,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r12,r10,$28
;../../cpuex2017/raytracer/min-rt.ml@435:39;435:44::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r11,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@376:40;376:45::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r8,r10,$16
;../../cpuex2017/raytracer/min-rt.ml@398:40;398:45::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	sll r6,r20,$2
	add r5,r14,r6
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	fld f10,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1810:2;1810:34::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r13,r10,$24
;../../cpuex2017/raytracer/min-rt.ml@421:39;421:44::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	lw r21,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@421:39;421:44
	sll r6,r20,$2
	add r5,r12,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19::=OArrRead../../cpuex2017/raytracer/min-rt.ml@435:39;435:44../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	sll r6,r20,$2
	add r5,r11,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@376:40;376:45../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21::<=../../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19::<=../../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19
	mov r12,r23
;../../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30::<=../../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30
	jal @a_8921trace_diffuse_ray_80percent
	mov r24,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1811:2;1814:30../../cpuex2017/raytracer/min-rt.ml@1811:2;1811:29
	sll r6,r20,$2
	add r5,r8,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@398:40;398:45../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	lw r10,r31,$260
;../../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15::<=../../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30::<=../../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30
	lw r12,r31,$272
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:6::<=../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	jal @a_8618vecaccumv
	mov r8,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42../../cpuex2017/raytracer/min-rt.ml@1815:2;1815:11
	mov r9,r8
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$56
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8928calc_diffuse_using_5points:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$52
	subi r1,r1,$12
	sw r6,r1,$0
	sw r20,r1,$4
	sw r8,r1,$8
	mov r10,r10
	mov r11,r11
	mov r12,r12
	mov r13,r13
	mov r14,r14
@cfg_label_18847:
	sll r6,r10,$2
	add r5,r11,r6
	lw r15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r18,r15,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46
	subi r15,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1825:45;1825:48::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	sll r6,r15,$2
	add r5,r12,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1825:45;1825:48
	lw r17,r11,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49
	sll r6,r10,$2
	add r5,r12,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r16,r11,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49
	addi r15,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1827:46;1827:49::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	sll r6,r15,$2
	add r5,r12,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1827:46;1827:49
	lw r15,r11,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50
	sll r6,r10,$2
	add r5,r13,r6
	lw r19,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r11,r19,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48
	sll r6,r14,$2
	add r5,r18,r6
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	fld f10,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32
	lw r5,r31,$272
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1830:2;1830:32::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	sll r6,r14,$2
	add r5,r17,r6
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r5,r31,$272
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@117:26;117:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@117:14;117:22../../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:2;117:31::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw r5,r31,$272
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@118:26;118:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@118:14;118:22../../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:2;118:31::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw r5,r31,$272
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f11,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@119:26;119:31::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@119:14;119:22../../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	fst f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1831:2;1831:34::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r14,$2
	add r5,r16,r6
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r5,r31,$272
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@117:26;117:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@117:14;117:22../../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:2;117:31::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw r5,r31,$272
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@118:26;118:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@118:14;118:22../../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:2;118:31::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw r5,r31,$272
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f11,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@119:26;119:31::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@119:14;119:22../../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	fst f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1832:2;1832:36::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r14,$2
	add r5,r15,r6
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r5,r31,$272
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@117:26;117:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@117:14;117:22../../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:2;117:31::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw r5,r31,$272
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@118:26;118:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@118:14;118:22../../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:2;118:31::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw r5,r31,$272
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f11,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@119:26;119:31::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@119:14;119:22../../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	fst f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1833:2;1833:35::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r14,$2
	add r5,r11,r6
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r5,r31,$272
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:22::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$0
;../../cpuex2017/raytracer/min-rt.ml@117:26;117:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@117:14;117:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@117:14;117:22../../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@117:2;117:31::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	lw r5,r31,$272
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:22::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f12,r13,$4
;../../cpuex2017/raytracer/min-rt.ml@118:26;118:31::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@118:14;118:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@118:14;118:22../../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@118:2;118:31::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	lw r5,r31,$272
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:22::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	fld f11,r13,$8
;../../cpuex2017/raytracer/min-rt.ml@119:26;119:31::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@119:14;119:31::=Ofadd../../cpuex2017/raytracer/min-rt.ml@119:14;119:22../../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	lw r5,r31,$272
	fst f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1834:2;1834:34::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	sll r6,r10,$2
	add r5,r12,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	lw r10,r11,$16
;../../cpuex2017/raytracer/min-rt.ml@398:40;398:45::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32
	sll r6,r14,$2
	add r5,r10,r6
	lw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@398:40;398:45../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	lw r10,r31,$260
;../../cpuex2017/raytracer/min-rt.ml@1837:12;1837:15::<=../../cpuex2017/raytracer/min-rt.ml@1837:12;1837:15
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30::<=../../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30
	lw r12,r31,$272
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:6::<=../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	jal @a_8618vecaccumv
	mov r20,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42../../cpuex2017/raytracer/min-rt.ml@1837:2;1837:11
	mov r9,r20
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$52
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8934do_without_neighbors:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$72
	subi r1,r1,$40
	sw r6,r1,$0
	sw r27,r1,$4
	sw r26,r1,$8
	sw r25,r1,$12
	sw r24,r1,$16
	sw r23,r1,$20
	sw r22,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	mov r8,r10
	mov r22,r11
@cfg_label_18846:
@cfg_label_18784:
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r22
	bne r0,r5,@cfg_label_18842
	j @cfg_label_18841
@cfg_label_18842:
@cfg_label_18844:
;../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	lw r24,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18843:
@cfg_label_18841:
	lw r21,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@384:40;384:45::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r22,$2
	add r5,r21,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@384:40;384:45../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18835
	j @cfg_label_18834
@cfg_label_18835:
@cfg_label_18837:
;../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	lw r24,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18836:
@cfg_label_18834:
	lw r20,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@391:40;391:45::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r22,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@391:40;391:45../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18803
	j @cfg_label_18802
@cfg_label_18803:
@cfg_label_18805:
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
	j @cfg_label_18829
@cfg_label_18802:
@cfg_label_18804:
	lw r13,r8,$20
;../../cpuex2017/raytracer/min-rt.ml@1805:15;1805:45::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r11,r8,$28
;../../cpuex2017/raytracer/min-rt.ml@1806:17;1806:33::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r10,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@1807:28;1807:55::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r23,r8,$16
;../../cpuex2017/raytracer/min-rt.ml@1808:16;1808:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r22,$2
	add r5,r13,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1805:15;1805:45../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	fld f10,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r12,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r12,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34
	lw r5,r31,$272
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1810:2;1810:34::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r12,r8,$24
;../../cpuex2017/raytracer/min-rt.ml@421:39;421:44::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r24,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@421:39;421:44
	sll r6,r22,$2
	add r5,r11,r6
	lw r25,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1806:17;1806:33../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	sll r6,r22,$2
	add r5,r10,r6
	lw r26,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1807:28;1807:55../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21::<=../../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19::<=../../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19
	mov r12,r26
;../../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30::<=../../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30
	jal @a_8921trace_diffuse_ray_80percent
	mov r27,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1811:2;1814:30../../cpuex2017/raytracer/min-rt.ml@1811:2;1811:29
	sll r6,r22,$2
	add r5,r23,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1808:16;1808:30../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	lw r10,r31,$260
;../../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15::<=../../cpuex2017/raytracer/min-rt.ml@1815:12;1815:15
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30::<=../../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30
	lw r12,r31,$272
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:6::<=../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	jal @a_8618vecaccumv
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13../../cpuex2017/raytracer/min-rt.ml@1815:2;1815:11
@cfg_label_18829:
	addi r23,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r23
	bne r0,r5,@cfg_label_18824
	j @cfg_label_18823
@cfg_label_18824:
@cfg_label_18826:
;../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	lw r24,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18825:
@cfg_label_18823:
	sll r6,r23,$2
	add r5,r21,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@384:40;384:45../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18818
	j @cfg_label_18817
@cfg_label_18818:
@cfg_label_18820:
;../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	lw r24,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18819:
@cfg_label_18817:
	sll r6,r23,$2
	add r5,r20,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@391:40;391:45../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18807
@cfg_label_18808:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9::<=../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::<=../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	jal @a_8925calc_diffuse_using_1point
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13../../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_18814
@cfg_label_18807:
@cfg_label_18809:
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
@cfg_label_18814:
	addi r10,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9::<=../../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	j @cfg_label_18784
@a_8944neighbors_are_available:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$16
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
	mov r12,r12
	mov r13,r13
	mov r14,r14
@cfg_label_18750:
	sll r6,r10,$2
	add r5,r12,r6
	lw r15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	lw r16,r15,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41
	sll r6,r14,$2
	add r5,r16,r6
	lw r15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1877:19;1877:46::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	sll r6,r10,$2
	add r5,r11,r6
	lw r16,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	lw r11,r16,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28
	sll r6,r14,$2
	add r5,r11,r6
	lw r16,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1879:5;1879:33::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r16,r15,@cfg_label_18775
	j @cfg_label_18774
@cfg_label_18775:
@cfg_label_18777:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18776:
@cfg_label_18774:
	sll r6,r10,$2
	add r5,r13,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	lw r13,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30
	sll r6,r14,$2
	add r5,r13,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1880:7;1880:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r11,r15,@cfg_label_18768
	j @cfg_label_18767
@cfg_label_18768:
@cfg_label_18770:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18769:
@cfg_label_18767:
	subi r13,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1881:29;1881:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	sll r6,r13,$2
	add r5,r12,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12../../cpuex2017/raytracer/min-rt.ml@1881:29;1881:32
	lw r13,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33
	sll r6,r14,$2
	add r5,r13,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1881:9;1881:38::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r11,r15,@cfg_label_18760
	j @cfg_label_18759
@cfg_label_18760:
@cfg_label_18762:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18761:
@cfg_label_18759:
	addi r11,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1882:24;1882:27::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	sll r6,r11,$2
	add r5,r12,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12../../cpuex2017/raytracer/min-rt.ml@1882:24;1882:27
	lw r11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28
	sll r6,r14,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1882:4;1882:33::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12
	bne r10,r15,@cfg_label_18752
@cfg_label_18753:
	lw r9,r31,$16
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18754:
@cfg_label_18752:
	lw r9,r31,$12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8950try_exploit_neighbors:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$32
	sw r6,r1,$0
	sw r25,r1,$4
	sw r24,r1,$8
	sw r23,r1,$12
	sw r22,r1,$16
	sw r21,r1,$20
	sw r20,r1,$24
	sw r8,r1,$28
	mov r21,r10
	sw r11,r2,$12
	mov r22,r12
	mov r20,r13
	mov r23,r14
	mov r8,r15
@cfg_label_18749:
@cfg_label_18690:
	sll r6,r21,$2
	add r5,r20,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1896:13;1896:14
	slt r5,r10,r8
	bne r0,r5,@cfg_label_18744
	j @cfg_label_18743
@cfg_label_18744:
@cfg_label_18746:
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r9,r8
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18745:
@cfg_label_18743:
	lw r11,r24,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21
	sll r6,r8,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1899:7;1899:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1899:36;1899:37
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18737
	j @cfg_label_18736
@cfg_label_18737:
@cfg_label_18739:
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r9,r8
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18738:
@cfg_label_18736:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r13,r23
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r14,r8
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	jal @a_8944neighbors_are_available
	mov r25,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1901:9;1901:53../../cpuex2017/raytracer/min-rt.ml@1901:9;1901:32
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1901:9;1901:53
	bne r25,r10,@cfg_label_18731
	j @cfg_label_18730
@cfg_label_18731:
@cfg_label_18733:
	sll r6,r21,$2
	add r5,r20,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r8
	bne r0,r5,@cfg_label_18725
	j @cfg_label_18724
@cfg_label_18725:
@cfg_label_18727:
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r9,r8
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18726:
@cfg_label_18724:
	lw r11,r22,$8
;../../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	sll r6,r8,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18718
	j @cfg_label_18717
@cfg_label_18718:
@cfg_label_18720:
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r9,r8
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18719:
@cfg_label_18717:
	lw r11,r22,$12
;../../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	sll r6,r8,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18708
@cfg_label_18709:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29::<=../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	jal @a_8925calc_diffuse_using_1point
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13../../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_18713
@cfg_label_18708:
@cfg_label_18710:
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
@cfg_label_18713:
	addi r20,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29::<=../../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::<=../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	jal @a_8934do_without_neighbors
	mov r8,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9../../cpuex2017/raytracer/min-rt.ml@1851:6;1851:26
	mov r9,r8
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18732:
@cfg_label_18730:
	lw r10,r24,$12
;../../cpuex2017/raytracer/min-rt.ml@391:40;391:45::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21
	sll r6,r8,$2
	add r5,r10,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1905:11;1905:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@391:40;391:45../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1905:11;1905:30
	bne r11,r10,@cfg_label_18692
@cfg_label_18693:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r13,r23
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r14,r8
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	jal @a_8928calc_diffuse_using_5points
	mov r24,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1905:8;1907:8../../cpuex2017/raytracer/min-rt.ml@1906:3;1906:29
	j @cfg_label_18703
@cfg_label_18692:
@cfg_label_18694:
;../../cpuex2017/raytracer/min-rt.ml@1905:8;1907:8
@cfg_label_18703:
	addi r10,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@1910:42;1910:50::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	mov r8,r10
;../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9::<=../../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	j @cfg_label_18690
@a_8957write_ppm_header:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$20
	subi r1,r1,$12
	sw r6,r1,$0
	sw r20,r1,$4
	sw r8,r1,$8
	sw r10,r2,$8
@cfg_label_18672:
	li r20,$80
;../../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17::<=../../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:17../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	li r20,$51
;../../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22::<=../../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1924:4;1924:23../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	li r20,$10
;../../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17::<=../../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1925:4;1925:17../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	lw r5,r31,$248
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1926:14;1926:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28::<=../../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28
	jal @a_8531print_int
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1926:4;1926:28../../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	li r20,$32
;../../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17::<=../../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1927:4;1927:17../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	lw r5,r31,$248
	lw r20,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1926:14;1926:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28::<=../../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28
	jal @a_8531print_int
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1928:4;1928:28../../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	li r20,$32
;../../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17::<=../../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1929:4;1929:17../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	li r20,$255
;../../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17::<=../../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17
	jal @a_8531print_int
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1930:4;1930:17../../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	li r8,$10
;../../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17::<=../../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17
	jal print_char
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1923:4;1931:17../../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	mov r9,r20
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8963pretrace_diffuse_rays:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$64
	subi r1,r1,$32
	sw r6,r1,$0
	sw r25,r1,$4
	sw r24,r1,$8
	sw r23,r1,$12
	sw r22,r1,$16
	sw r21,r1,$20
	sw r20,r1,$24
	sw r8,r1,$28
	mov r8,r10
	mov r20,r11
@cfg_label_18671:
@cfg_label_18617:
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1959:13;1959:14
	slt r5,r10,r20
	bne r0,r5,@cfg_label_18667
	j @cfg_label_18666
@cfg_label_18667:
@cfg_label_18669:
;../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$64
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18668:
@cfg_label_18666:
	lw r11,r8,$8
;../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r20,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1962:14;1962:39::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1870:20;1870:39../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1963:14;1963:15
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18660
	j @cfg_label_18659
@cfg_label_18660:
@cfg_label_18662:
;../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$64
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18661:
@cfg_label_18659:
	lw r11,r8,$12
;../../cpuex2017/raytracer/min-rt.ml@391:40;391:45::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r20,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1966:9;1966:28::=OArrRead../../cpuex2017/raytracer/min-rt.ml@391:40;391:45../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1966:9;1966:28
	bne r10,r11,@cfg_label_18648
	j @cfg_label_18647
@cfg_label_18648:
@cfg_label_18650:
;../../cpuex2017/raytracer/min-rt.ml@1966:6;1980:16
	j @cfg_label_18654
@cfg_label_18647:
@cfg_label_18649:
	lw r11,r8,$24
;../../cpuex2017/raytracer/min-rt.ml@421:39;421:44::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1967:16;1967:32::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@421:39;421:44
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$272
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@59:2;59:15::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$272
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@60:2;60:15::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$272
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1968:1;1968:21::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r12,r8,$28
;../../cpuex2017/raytracer/min-rt.ml@435:39;435:44::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r11,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@376:40;376:45::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r5,r31,$112
	sll r6,r10,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1975:3;1975:10../../cpuex2017/raytracer/min-rt.ml@1967:16;1967:32
	sll r6,r20,$2
	add r5,r12,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18::=OArrRead../../cpuex2017/raytracer/min-rt.ml@435:39;435:44../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r20,$2
	add r5,r11,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29::=OArrRead../../cpuex2017/raytracer/min-rt.ml@376:40;376:45../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	fld f10,r23,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	lw r5,r31,$200
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r23,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	lw r5,r31,$200
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r23,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	lw r5,r31,$200
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37
	subi r24,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29::<=../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45::<=../../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45
	jal @a_8814setup_startp_constants
	mov r25,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18../../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	li r25,$118
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21::<=../../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18::<=../../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18
	mov r12,r23
;../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29::<=../../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29
	mov r13,r25
;../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54::<=../../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	jal @a_8912iter_trace_diffuse_rays
	mov r24,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1974:1;1977:29../../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	lw r11,r8,$20
;../../cpuex2017/raytracer/min-rt.ml@405:39;405:44::=OGetTuple[5]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	sll r6,r20,$2
	add r5,r11,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21::=OArrRead../../cpuex2017/raytracer/min-rt.ml@405:39;405:44../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r5,r31,$272
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$272
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$272
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@1966:6;1980:16::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
@cfg_label_18654:
	addi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@1981:35;1981:43::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9::<=../../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	j @cfg_label_18617
@a_8966pretrace_pixels:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$96
	subi r1,r1,$48
	sw r6,r1,$0
	fst f9,r1,$4
	sw r24,r1,$8
	sw r23,r1,$12
	sw r22,r1,$16
	fst f8,r1,$20
	sw r21,r1,$24
	sw r20,r1,$28
	sw r8,r1,$32
	fst f7,r1,$36
	fst f6,r1,$40
	fst f4,r1,$44
	mov r8,r10
	mov r21,r11
	mov r20,r12
	fmov f4,f10
	fmov f6,f11
	fmov f7,f12
@cfg_label_18616:
@cfg_label_18548:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1989:10;1989:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18612
	j @cfg_label_18611
@cfg_label_18612:
@cfg_label_18614:
;../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r6,r1,$0
	fld f9,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	fld f8,r1,$20
	lw r21,r1,$24
	lw r20,r1,$28
	lw r8,r1,$32
	fld f7,r1,$36
	fld f6,r1,$40
	fld f4,r1,$44
	addi r1,r1,$48
	addi r1,r1,$96
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18613:
@cfg_label_18611:
	lw r5,r31,$224
	fld f8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:30::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:26
	lw r5,r31,$236
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1991:52;1991:68::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1991:52;1991:64
	sub r22,r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68::=Osub../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12../../cpuex2017/raytracer/min-rt.ml@1991:52;1991:68
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68::<=../../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68
	jal float_of_int
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1991:34;1991:69../../cpuex2017/raytracer/min-rt.ml@1991:34;1991:46
	fmul f10,f8,f9
;../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:30../../cpuex2017/raytracer/min-rt.ml@1991:34;1991:69
	lw r5,r31,$188
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1992:34;1992:49::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1992:25;1992:49::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69../../cpuex2017/raytracer/min-rt.ml@1992:34;1992:49
	fadd f12,f11,f4
;../../cpuex2017/raytracer/min-rt.ml@1992:25;1992:56::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1992:25;1992:49../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r31,$152
	fst f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:56::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17../../cpuex2017/raytracer/min-rt.ml@1992:25;1992:56
	lw r5,r31,$188
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1993:34;1993:49::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1993:25;1993:49::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69../../cpuex2017/raytracer/min-rt.ml@1993:34;1993:49
	fadd f12,f11,f6
;../../cpuex2017/raytracer/min-rt.ml@1993:25;1993:56::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1993:25;1993:49../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r31,$152
	fst f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1993:4;1993:56::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17../../cpuex2017/raytracer/min-rt.ml@1993:25;1993:56
	lw r5,r31,$188
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1994:34;1994:49::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@1994:25;1994:49::=Ofmul../../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69../../cpuex2017/raytracer/min-rt.ml@1994:34;1994:49
	fadd f10,f11,f7
;../../cpuex2017/raytracer/min-rt.ml@1994:25;1994:56::=Ofadd../../cpuex2017/raytracer/min-rt.ml@1994:25;1994:49../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r31,$152
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1994:4;1994:56::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17../../cpuex2017/raytracer/min-rt.ml@1994:25;1994:56
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	lw r10,r31,$152
;../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17::<=../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17
	lw r11,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1995:30;1995:35::<=../../cpuex2017/raytracer/min-rt.ml@1995:30;1995:35
	jal @a_8594vecunit_sgn
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1995:4;1995:35../../cpuex2017/raytracer/min-rt.ml@1995:4;1995:15
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$260
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@59:2;59:15::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$260
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@60:2;60:15::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$260
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1996:4;1996:16::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3../../cpuex2017/raytracer/min-rt.ml@66:12;66:15
	lw r5,r31,$432
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$432
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$432
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$212
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1997:4;1997:27::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15
	fmovi f8,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2000:16;2000:19
	sll r6,r21,$2
	add r5,r8,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	fmovi f9,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2000:43;2000:46
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15::<=../../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15
	fmov f10,f8
;../../cpuex2017/raytracer/min-rt.ml@2000:16;2000:19::<=../../cpuex2017/raytracer/min-rt.ml@2000:16;2000:19
	lw r11,r31,$152
;../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17::<=../../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17
	mov r12,r24
;../../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42::<=../../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	fmov f11,f9
;../../cpuex2017/raytracer/min-rt.ml@2000:43;2000:46::<=../../cpuex2017/raytracer/min-rt.ml@2000:43;2000:46
	jal @a_8903trace_ray
	mov r22,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2000:4;2000:46../../cpuex2017/raytracer/min-rt.ml@2000:4;2000:13
	sll r6,r21,$2
	add r5,r8,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26
	lw r5,r31,$260
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$260
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$260
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@59:2;59:3
	fst f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2001:4;2001:31::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2001:12;2001:26../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	sll r6,r21,$2
	add r5,r8,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r10,r11,$24
;../../cpuex2017/raytracer/min-rt.ml@428:39;428:44::=OGetTuple[6]../../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27
	sw r20,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2002:4;2002:36::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@428:39;428:44../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	sll r6,r21,$2
	add r5,r8,r6
	lw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34::<=../../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36::<=../../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36
	jal @a_8963pretrace_diffuse_rays
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2005:4;2005:36../../cpuex2017/raytracer/min-rt.ml@2005:4;2005:25
	subi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2007:26;2007:29::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	addi r12,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r12,r11
	bne r0,r5,@cfg_label_18550
@cfg_label_18551:
	subi r11,r12,$5
;../../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18560
@cfg_label_18550:
@cfg_label_18552:
	mov r11,r12
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51
@cfg_label_18560:
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12::<=../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	mov r20,r11
;../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12::<=../../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	j @cfg_label_18548
@a_8973pretrace_line:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$64
	subi r1,r1,$32
	sw r6,r1,$0
	sw r22,r1,$4
	sw r21,r1,$8
	fst f7,r1,$12
	fst f6,r1,$16
	fst f4,r1,$20
	sw r20,r1,$24
	sw r8,r1,$28
	mov r8,r10
	mov r11,r11
	mov r20,r12
@cfg_label_18528:
	lw r5,r31,$224
	fld f4,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:24
	lw r5,r31,$236
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2014:50;2014:66::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2014:50;2014:62
	sub r21,r11,r10
;../../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66::=Osub../../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64../../cpuex2017/raytracer/min-rt.ml@2014:50;2014:66
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66::<=../../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2014:32;2014:67../../cpuex2017/raytracer/min-rt.ml@2014:32;2014:44
	fmul f10,f4,f6
;../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:28../../cpuex2017/raytracer/min-rt.ml@2014:32;2014:67
	lw r5,r31,$176
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2017:21;2017:36::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@2017:12;2017:36::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67../../cpuex2017/raytracer/min-rt.ml@2017:21;2017:36
	lw r5,r31,$164
	fld f12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2017:40;2017:55::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51
	fadd f4,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2017:12;2017:36../../cpuex2017/raytracer/min-rt.ml@2017:40;2017:55
	lw r5,r31,$176
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2018:21;2018:36::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@2018:12;2018:36::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67../../cpuex2017/raytracer/min-rt.ml@2018:21;2018:36
	lw r5,r31,$164
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2018:40;2018:55::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51
	fadd f6,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2018:12;2018:36../../cpuex2017/raytracer/min-rt.ml@2018:40;2018:55
	lw r5,r31,$176
	fld f12,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2019:21;2019:36::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32
	fmul f11,f10,f12
;../../cpuex2017/raytracer/min-rt.ml@2019:12;2019:36::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67../../cpuex2017/raytracer/min-rt.ml@2019:21;2019:36
	lw r5,r31,$164
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2019:40;2019:55::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51
	fadd f7,f11,f10
;../../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2019:12;2019:36../../cpuex2017/raytracer/min-rt.ml@2019:40;2019:55
	lw r5,r31,$248
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2020:24;2020:38::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2020:24;2020:34
	subi r21,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2020:24;2020:38
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64::<=../../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42::<=../../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64::<=../../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55::<=../../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55
	fmov f11,f6
;../../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55::<=../../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55
	fmov f12,f7
;../../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55::<=../../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55
	jal @a_8966pretrace_pixels
	mov r22,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64../../cpuex2017/raytracer/min-rt.ml@2020:2;2020:17
	mov r9,r22
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	fld f7,r1,$12
	fld f6,r1,$16
	fld f4,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$64
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8977scan_pixel:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$72
	subi r1,r1,$40
	sw r6,r1,$0
	fst f4,r1,$4
	sw r26,r1,$8
	sw r25,r1,$12
	sw r24,r1,$16
	sw r23,r1,$20
	sw r22,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	mov r23,r10
	mov r8,r11
	mov r20,r12
	mov r22,r13
	mov r21,r14
@cfg_label_18527:
@cfg_label_18392:
	lw r5,r31,$248
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2030:9;2030:23::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2030:9;2030:19
	slt r5,r23,r10
	bne r0,r5,@cfg_label_18523
@cfg_label_18524:
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r6,r1,$0
	fld f4,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	lw r24,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$72
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18525:
@cfg_label_18523:
	sll r6,r23,$2
	add r5,r22,r6
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29
	fld f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29
	lw r5,r31,$260
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	fld f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29
	lw r5,r31,$260
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	fld f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@2033:16;2033:29
	lw r5,r31,$260
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2033:4;2033:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	addi r10,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@1858:6;1858:11::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r5,r31,$248
	lw r11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1858:15;1858:29::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2030:9;2030:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18410
@cfg_label_18411:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12::<=../../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18511
@cfg_label_18410:
@cfg_label_18412:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1859:11;1859:12
	slt r5,r10,r8
	bne r0,r5,@cfg_label_18405
@cfg_label_18406:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12::<=../../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18510
@cfg_label_18405:
@cfg_label_18407:
	addi r10,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@1860:10;1860:15::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r5,r31,$248
	lw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1860:19;1860:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2030:9;2030:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18399
@cfg_label_18400:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12::<=../../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18509
@cfg_label_18399:
@cfg_label_18401:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1861:8;1861:9
	slt r5,r10,r23
	bne r0,r5,@cfg_label_18394
@cfg_label_18395:
	lw r10,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12::<=../../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_18508
@cfg_label_18394:
@cfg_label_18396:
	lw r10,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@1862:3;1862:7::<=../../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
@cfg_label_18508:
@cfg_label_18509:
@cfg_label_18510:
@cfg_label_18511:
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	bne r10,r11,@cfg_label_18439
	j @cfg_label_18438
@cfg_label_18439:
@cfg_label_18441:
	sll r6,r23,$2
	add r5,r22,r6
	lw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	slt r5,r10,r25
	bne r0,r5,@cfg_label_18432
	j @cfg_label_18431
@cfg_label_18432:
@cfg_label_18434:
;../../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36
	j @cfg_label_18502
@cfg_label_18431:
@cfg_label_18433:
	lw r11,r24,$8
;../../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	lw r10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1845:22;1845:41
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18425
	j @cfg_label_18424
@cfg_label_18425:
@cfg_label_18427:
;../../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36
	j @cfg_label_18503
@cfg_label_18424:
@cfg_label_18426:
	lw r11,r24,$12
;../../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45::=OGetTuple[3]../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	lw r10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1847:25;1847:45
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	bne r10,r11,@cfg_label_18415
@cfg_label_18416:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34::<=../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36::<=../../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	jal @a_8925calc_diffuse_using_1point
	mov r26,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13../../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_18420
@cfg_label_18415:
@cfg_label_18417:
;../../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
@cfg_label_18420:
	addi r26,r25,$1
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34::<=../../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	mov r11,r26
;../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42::<=../../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42
	jal @a_8934do_without_neighbors
	mov r25,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36../../cpuex2017/raytracer/min-rt.ml@1851:6;1851:26
	j @cfg_label_18504
@cfg_label_18438:
@cfg_label_18440:
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$24
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12::<=../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12::<=../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12::<=../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r13,r22
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12::<=../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r14,r21
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12::<=../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r15,r24
;../../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47::<=../../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47
	jal @a_8950try_exploit_neighbors
	mov r25,r9
	addi r1,r1,$24
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36../../cpuex2017/raytracer/min-rt.ml@2037:6;2037:27
@cfg_label_18504:
@cfg_label_18503:
@cfg_label_18502:
	lw r5,r31,$260
	fld f4,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28::<=../../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28
	jal int_of_float
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	li r10,$255
;../../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	slt r5,r10,r24
	bne r0,r5,@cfg_label_18448
	j @cfg_label_18447
@cfg_label_18448:
@cfg_label_18450:
	li r25,$255
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18496
@cfg_label_18447:
@cfg_label_18449:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	slt r5,r24,r10
	bne r0,r5,@cfg_label_18443
@cfg_label_18444:
	mov r25,r24
;../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25::<=../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18498
@cfg_label_18443:
@cfg_label_18445:
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
@cfg_label_18498:
@cfg_label_18496:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63::<=../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	jal @a_8531print_int
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1942:3;1942:28../../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	li r25,$32
;../../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16::<=../../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16
	jal print_char
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1943:3;1943:16../../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	lw r5,r31,$260
	fld f4,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28::<=../../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28
	jal int_of_float
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	li r10,$255
;../../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	slt r5,r10,r24
	bne r0,r5,@cfg_label_18457
	j @cfg_label_18456
@cfg_label_18457:
@cfg_label_18459:
	li r25,$255
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18487
@cfg_label_18456:
@cfg_label_18458:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	slt r5,r24,r10
	bne r0,r5,@cfg_label_18452
@cfg_label_18453:
	mov r25,r24
;../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25::<=../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18489
@cfg_label_18452:
@cfg_label_18454:
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
@cfg_label_18489:
@cfg_label_18487:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63::<=../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	jal @a_8531print_int
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1944:3;1944:28../../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	li r25,$32
;../../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16::<=../../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16
	jal print_char
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1945:3;1945:16../../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	lw r5,r31,$260
	fld f4,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28::<=../../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28
	jal int_of_float
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	li r10,$255
;../../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	slt r5,r10,r24
	bne r0,r5,@cfg_label_18466
	j @cfg_label_18465
@cfg_label_18466:
@cfg_label_18468:
	li r25,$255
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18478
@cfg_label_18465:
@cfg_label_18467:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	slt r5,r24,r10
	bne r0,r5,@cfg_label_18461
@cfg_label_18462:
	mov r25,r24
;../../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25::<=../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_18480
@cfg_label_18461:
@cfg_label_18463:
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
@cfg_label_18480:
@cfg_label_18478:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63::<=../../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	jal @a_8531print_int
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@1946:3;1946:28../../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	li r25,$10
;../../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16::<=../../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16
	jal print_char
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2042:4;2042:16../../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	addi r10,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@2044:16;2044:21::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	mov r23,r10
;../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12::<=../../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	j @cfg_label_18392
@a_8983scan_line:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$32
	sw r6,r1,$0
	sw r25,r1,$4
	sw r24,r1,$8
	sw r23,r1,$12
	sw r22,r1,$16
	sw r21,r1,$20
	sw r20,r1,$24
	sw r8,r1,$28
	mov r24,r10
	mov r20,r11
	mov r21,r12
	mov r8,r13
	mov r23,r14
@cfg_label_18338:
	lw r5,r31,$248
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:19
	slt r5,r24,r10
	bne r0,r5,@cfg_label_18388
@cfg_label_18389:
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18390:
@cfg_label_18388:
	lw r5,r31,$248
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:19
	subi r11,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25
	slt r5,r24,r11
	bne r0,r5,@cfg_label_18341
@cfg_label_18342:
;../../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11
	j @cfg_label_18384
@cfg_label_18341:
@cfg_label_18343:
	addi r25,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31::<=../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31
	mov r12,r23
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	jal @a_8973pretrace_line
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11../../cpuex2017/raytracer/min-rt.ml@2054:6;2054:19
@cfg_label_18384:
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16::<=../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r13,r21
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r14,r8
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	jal @a_8977scan_pixel
	mov r22,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32../../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	addi r22,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	addi r10,r23,$2
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18345
@cfg_label_18346:
	subi r23,r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18377
@cfg_label_18345:
@cfg_label_18347:
	mov r23,r10
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
@cfg_label_18377:
	lw r5,r31,$248
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:19
	slt r5,r22,r10
	bne r0,r5,@cfg_label_18370
@cfg_label_18371:
;../../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57
	j @cfg_label_18374
@cfg_label_18370:
@cfg_label_18372:
	lw r5,r31,$248
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:19
	subi r11,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25
	slt r5,r22,r11
	bne r0,r5,@cfg_label_18350
@cfg_label_18351:
;../../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11
	j @cfg_label_18366
@cfg_label_18350:
@cfg_label_18352:
	addi r25,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31::<=../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31
	mov r12,r23
;../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56::<=../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	jal @a_8973pretrace_line
	mov r24,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11../../cpuex2017/raytracer/min-rt.ml@2054:6;2054:19
@cfg_label_18366:
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16::<=../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20::<=../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	mov r12,r21
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r13,r8
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r14,r20
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	jal @a_8977scan_pixel
	mov r24,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32../../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	addi r24,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	addi r10,r23,$2
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18354
@cfg_label_18355:
	subi r22,r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18359
@cfg_label_18354:
@cfg_label_18356:
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
@cfg_label_18359:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20::<=../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r13,r21
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12::<=../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	mov r14,r22
;../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56::<=../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	jal @a_8983scan_line
	mov r23,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57../../cpuex2017/raytracer/min-rt.ml@2057:4;2057:13
;../../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57
@cfg_label_18374:
;../../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	lw r20,r1,$24
	lw r8,r1,$28
	addi r1,r1,$32
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8989create_float5x3array:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$16
	subi r1,r1,$4
	sw r6,r1,$0
	sw r10,r2,$8
@cfg_label_18316:
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2068:27;2068:30
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22964
@emit_label_22963:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22963
@emit_label_22964:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2068:12;2068:30::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26../../cpuex2017/raytracer/min-rt.ml@2068:27;2068:30
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@2069:27;2069:28
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22966
@emit_label_22965:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22965
@emit_label_22966:
	mov r9,r7
;../../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2069:27;2069:28../../cpuex2017/raytracer/min-rt.ml@2068:12;2068:30
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2070:28;2070:29
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2070:30;2070:33
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22968
@emit_label_22967:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22967
@emit_label_22968:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2070:15;2070:33::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2070:28;2070:29../../cpuex2017/raytracer/min-rt.ml@2070:30;2070:33
	sw r10,r9,$4
;../../cpuex2017/raytracer/min-rt.ml@2070:2;2070:33::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32../../cpuex2017/raytracer/min-rt.ml@2070:15;2070:33
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2071:28;2071:29
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2071:30;2071:33
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22970
@emit_label_22969:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22969
@emit_label_22970:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2071:15;2071:33::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2071:28;2071:29../../cpuex2017/raytracer/min-rt.ml@2071:30;2071:33
	sw r10,r9,$8
;../../cpuex2017/raytracer/min-rt.ml@2071:2;2071:33::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32../../cpuex2017/raytracer/min-rt.ml@2071:15;2071:33
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2072:28;2072:29
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2072:30;2072:33
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22972
@emit_label_22971:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22971
@emit_label_22972:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2072:15;2072:33::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2072:28;2072:29../../cpuex2017/raytracer/min-rt.ml@2072:30;2072:33
	sw r10,r9,$12
;../../cpuex2017/raytracer/min-rt.ml@2072:2;2072:33::=OiArrWrite[3]../../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32../../cpuex2017/raytracer/min-rt.ml@2072:15;2072:33
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2073:28;2073:29
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2073:30;2073:33
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22974
@emit_label_22973:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22973
@emit_label_22974:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2073:15;2073:33::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2073:28;2073:29../../cpuex2017/raytracer/min-rt.ml@2073:30;2073:33
	sw r10,r9,$16
;../../cpuex2017/raytracer/min-rt.ml@2073:2;2073:33::=OiArrWrite[4]../../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32../../cpuex2017/raytracer/min-rt.ml@2073:15;2073:33
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8991create_pixel:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$60
	subi r1,r1,$40
	sw r6,r1,$0
	sw r27,r1,$4
	sw r26,r1,$8
	sw r25,r1,$12
	sw r24,r1,$16
	sw r23,r1,$20
	sw r22,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	sw r8,r1,$36
	sw r10,r2,$8
@cfg_label_18299:
	li r10,$3
;../../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2080:29;2080:32
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22976
@emit_label_22975:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22975
@emit_label_22976:
	mov r8,r7
;../../cpuex2017/raytracer/min-rt.ml@2080:14;2080:32::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28../../cpuex2017/raytracer/min-rt.ml@2080:29;2080:32
;../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41::<=../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8989create_float5x3array
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2081:19;2081:41../../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	li r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2082:28;2082:29
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@2082:30;2082:31
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22978
@emit_label_22977:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22977
@emit_label_22978:
	mov r21,r7
;../../cpuex2017/raytracer/min-rt.ml@2082:15;2082:31::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2082:28;2082:29../../cpuex2017/raytracer/min-rt.ml@2082:30;2082:31
	li r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2083:28;2083:29
	lw r6,r31,$12
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22980
@emit_label_22979:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22979
@emit_label_22980:
	mov r23,r7
;../../cpuex2017/raytracer/min-rt.ml@2083:15;2083:35::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2083:28;2083:29../../cpuex2017/raytracer/min-rt.ml@2083:30;2083:35
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41::<=../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8989create_float5x3array
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2084:15;2084:37../../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41::<=../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8989create_float5x3array
	mov r25,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2085:15;2085:37../../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2086:27;2086:28
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@2086:29;2086:30
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22982
@emit_label_22981:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22981
@emit_label_22982:
	mov r26,r7
;../../cpuex2017/raytracer/min-rt.ml@2086:14;2086:30::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2086:27;2086:28../../cpuex2017/raytracer/min-rt.ml@2086:29;2086:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41::<=../../cpuex2017/raytracer/min-rt.ml@2081:39;2081:41
	jal @a_8989create_float5x3array
	mov r27,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2087:19;2087:41../../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	mov r6,r3
	sw r8,r3,$0
	sw r20,r3,$4
	sw r21,r3,$8
	sw r23,r3,$12
	sw r24,r3,$16
	sw r25,r3,$20
	sw r26,r3,$24
	sw r27,r3,$28
	addi r3,r3,$32
	mov r9,r6
;../../cpuex2017/raytracer/min-rt.ml@2080:2;2088:72
	lw r6,r1,$0
	lw r27,r1,$4
	lw r26,r1,$8
	lw r25,r1,$12
	lw r24,r1,$16
	lw r23,r1,$20
	lw r22,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	lw r8,r1,$36
	addi r1,r1,$40
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_8993init_line_elements:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$16
	subi r1,r1,$20
	sw r6,r1,$0
	sw r22,r1,$4
	sw r21,r1,$8
	sw r20,r1,$12
	sw r8,r1,$16
	mov r8,r10
	mov r22,r11
@cfg_label_18298:
@cfg_label_18262:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r22,r10
	bne r0,r5,@cfg_label_18294
	j @cfg_label_18293
@cfg_label_18294:
@cfg_label_18296:
	mov r9,r8
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18295:
@cfg_label_18293:
;../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30::<=../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8991create_pixel
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r22,$2
	add r5,r8,r6
	sw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18285
	j @cfg_label_18284
@cfg_label_18285:
@cfg_label_18287:
	mov r9,r8
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18286:
@cfg_label_18284:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30::<=../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8991create_pixel
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r21,$2
	add r5,r8,r6
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r22,r10
	bne r0,r5,@cfg_label_18277
	j @cfg_label_18276
@cfg_label_18277:
@cfg_label_18279:
	mov r9,r8
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18278:
@cfg_label_18276:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30::<=../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8991create_pixel
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r22,$2
	add r5,r8,r6
	sw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18269
	j @cfg_label_18268
@cfg_label_18269:
@cfg_label_18271:
	mov r9,r8
	lw r6,r1,$0
	lw r22,r1,$4
	lw r21,r1,$8
	lw r20,r1,$12
	lw r8,r1,$16
	addi r1,r1,$20
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18270:
@cfg_label_18268:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30::<=../../cpuex2017/raytracer/min-rt.ml@2094:28;2094:30
	jal @a_8991create_pixel
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	sll r6,r21,$2
	add r5,r8,r6
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8::<=../../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8
	j @cfg_label_18262
@a_9003calc_dirvec:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$80
	subi r1,r1,$48
	sw r6,r1,$0
	fst f21,r1,$4
	fst f20,r1,$8
	fst f9,r1,$12
	fst f8,r1,$16
	sw r22,r1,$20
	sw r21,r1,$24
	fst f7,r1,$28
	fst f6,r1,$32
	fst f4,r1,$36
	sw r20,r1,$40
	sw r8,r1,$44
	mov r21,r10
	fmov f8,f10
	fmov f7,f11
	fmov f4,f12
	fmov f6,f13
	mov r20,r11
	mov r8,r12
@cfg_label_18261:
@cfg_label_18160:
	li r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2130:15;2130:16
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18257
	j @cfg_label_18256
@cfg_label_18257:
@cfg_label_18259:
	fmul f10,f7,f7
;../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmovi f11,$0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	fadd f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19../../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26::<=../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26
	jal sqrt
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17
	fdiv f7,f10,f8
;../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17../../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22::<=../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22
	jal @a_8527atan
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26../../cpuex2017/raytracer/min-rt.ml@2123:16;2123:20
	fmul f7,f9,f4
;../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36::<=../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8523sin
	fmov f9,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8../../cpuex2017/raytracer/min-rt.ml@2116:2;2116:5
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36::<=../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8525cos
	fmov f20,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18../../cpuex2017/raytracer/min-rt.ml@2116:12;2116:15
	fdiv f10,f9,f20
;../../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8../../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18
	fmul f7,f10,f8
;../../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37../../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	addi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2146:17;2146:27::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmul f10,f7,f7
;../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33../../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33
	fmovi f11,$0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	fadd f9,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19../../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26::<=../../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26
	jal sqrt
	fmov f8,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17
	fdiv f9,f10,f8
;../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17../../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22::<=../../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22
	jal @a_8527atan
	fmov f20,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26../../cpuex2017/raytracer/min-rt.ml@2123:16;2123:20
	fmul f9,f20,f6
;../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36::<=../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8523sin
	fmov f20,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8../../cpuex2017/raytracer/min-rt.ml@2116:2;2116:5
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f9
;../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36::<=../../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36
	jal @a_8525cos
	fmov f21,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18../../cpuex2017/raytracer/min-rt.ml@2116:12;2116:15
	fdiv f11,f20,f21
;../../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8../../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18
	fmul f10,f11,f8
;../../cpuex2017/raytracer/min-rt.ml@2146:33;2146:54::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37../../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27
	mov r21,r22
;../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76::<=../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmov f8,f7
;../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76::<=../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmov f7,f10
;../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76::<=../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	j @cfg_label_18160
@cfg_label_18256:
@cfg_label_18258:
	fmul f11,f8,f8
;../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:23::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fmul f12,f7,f7
;../../cpuex2017/raytracer/min-rt.ml@2131:27;2131:33::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	fadd f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:33::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:23../../cpuex2017/raytracer/min-rt.ml@2131:27;2131:33
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2131:37;2131:40
	fadd f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:33../../cpuex2017/raytracer/min-rt.ml@2131:37;2131:40
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40::<=../../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40
	jal sqrt
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	fdiv f10,f8,f4
;../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41
	fdiv f11,f7,f4
;../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41
	fmovi f13,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:16
	fdiv f12,f13,f4
;../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:16../../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41
	lw r5,r31,$112
	sll r6,r20,$2
	add r5,r5,r6
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:24../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r8,$2
	add r5,r10,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	lw r11,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32
	fst f10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fst f11,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	fst f12,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@2138:4;2138:45::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2138:12;2138:32../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	addi r11,r8,$40
;../../cpuex2017/raytracer/min-rt.ml@2139:26;2139:34::=Oiadd[40]../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r5,r10,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35../../cpuex2017/raytracer/min-rt.ml@2139:26;2139:34
	lw r11,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f13,f14,f11
;../../cpuex2017/raytracer/min-rt.ml@2139:44;2139:51::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	fst f10,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fst f12,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	fst f13,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@2139:4;2139:52::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2139:12;2139:35../../cpuex2017/raytracer/min-rt.ml@2139:44;2139:51
	addi r11,r8,$80
;../../cpuex2017/raytracer/min-rt.ml@2140:26;2140:34::=Oiadd[80]../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r5,r10,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35../../cpuex2017/raytracer/min-rt.ml@2140:26;2140:34
	lw r11,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@2140:41;2140:48::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fmovi f15,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f14,f15,f11
;../../cpuex2017/raytracer/min-rt.ml@2140:51;2140:58::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	fst f12,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	fst f13,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35../../cpuex2017/raytracer/min-rt.ml@2140:41;2140:48
	fst f14,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@2140:4;2140:59::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2140:12;2140:35../../cpuex2017/raytracer/min-rt.ml@2140:51;2140:58
	addi r11,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@2141:26;2141:33::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r5,r10,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35../../cpuex2017/raytracer/min-rt.ml@2141:26;2141:33
	lw r11,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@2141:37;2141:44::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fmovi f15,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f14,f15,f11
;../../cpuex2017/raytracer/min-rt.ml@2141:47;2141:54::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	fmovi f16,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f15,f16,f12
;../../cpuex2017/raytracer/min-rt.ml@2141:57;2141:64::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	fst f13,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34../../cpuex2017/raytracer/min-rt.ml@2141:37;2141:44
	fst f14,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34../../cpuex2017/raytracer/min-rt.ml@2141:47;2141:54
	fst f15,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@2141:4;2141:65::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2141:12;2141:34../../cpuex2017/raytracer/min-rt.ml@2141:57;2141:64
	addi r11,r8,$41
;../../cpuex2017/raytracer/min-rt.ml@2142:26;2142:34::=Oiadd[41]../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r5,r10,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35../../cpuex2017/raytracer/min-rt.ml@2142:26;2142:34
	lw r11,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f13,f14,f10
;../../cpuex2017/raytracer/min-rt.ml@2142:38;2142:45::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fmovi f15,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f14,f15,f12
;../../cpuex2017/raytracer/min-rt.ml@2142:48;2142:55::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	fst f13,r11,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35../../cpuex2017/raytracer/min-rt.ml@2142:38;2142:45
	fst f14,r11,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35../../cpuex2017/raytracer/min-rt.ml@2142:48;2142:55
	fst f11,r11,$8
;../../cpuex2017/raytracer/min-rt.ml@2142:4;2142:59::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2142:12;2142:35../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	addi r11,r8,$81
;../../cpuex2017/raytracer/min-rt.ml@2143:26;2143:34::=Oiadd[81]../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76
	sll r6,r11,$2
	add r5,r10,r6
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35../../cpuex2017/raytracer/min-rt.ml@2143:26;2143:34
	lw r10,r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35::=OGetTuple[0]../../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35
	fmovi f14,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f13,f14,f12
;../../cpuex2017/raytracer/min-rt.ml@2143:38;2143:45::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21
	fst f13,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35../../cpuex2017/raytracer/min-rt.ml@2143:38;2143:45
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35../../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19
	fst f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2143:12;2143:35../../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19
	lw r6,r1,$0
	fld f21,r1,$4
	fld f20,r1,$8
	fld f9,r1,$12
	fld f8,r1,$16
	lw r22,r1,$20
	lw r21,r1,$24
	fld f7,r1,$28
	fld f6,r1,$32
	fld f4,r1,$36
	lw r20,r1,$40
	lw r8,r1,$44
	addi r1,r1,$48
	addi r1,r1,$80
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_9011calc_dirvecs:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$56
	subi r1,r1,$44
	sw r6,r1,$0
	sw r24,r1,$4
	fst f8,r1,$8
	fst f7,r1,$12
	sw r23,r1,$16
	sw r22,r1,$20
	fst f6,r1,$24
	sw r21,r1,$28
	sw r20,r1,$32
	fst f4,r1,$36
	sw r8,r1,$40
	mov r21,r10
	fmov f4,f10
	mov r20,r11
	mov r8,r12
@cfg_label_18159:
@cfg_label_18121:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2151:12;2151:13
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18155
	j @cfg_label_18154
@cfg_label_18155:
@cfg_label_18157:
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	lw r6,r1,$0
	lw r24,r1,$4
	fld f8,r1,$8
	fld f7,r1,$12
	lw r23,r1,$16
	lw r22,r1,$20
	fld f6,r1,$24
	lw r21,r1,$28
	lw r20,r1,$32
	fld f4,r1,$36
	lw r8,r1,$40
	addi r1,r1,$44
	addi r1,r1,$56
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18156:
@cfg_label_18154:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2153:14;2153:30../../cpuex2017/raytracer/min-rt.ml@2153:14;2153:26
	fmovi f11,$0.20000000000000001110
;../../cpuex2017/raytracer/min-rt.ml@2153:35;2153:38
	fmul f10,f6,f11
;../../cpuex2017/raytracer/min-rt.ml@2153:13;2153:38::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2153:14;2153:30../../cpuex2017/raytracer/min-rt.ml@2153:35;2153:38
	fmovi f11,$0.90000000000000002220
;../../cpuex2017/raytracer/min-rt.ml@2153:42;2153:45
	fsub f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2153:13;2153:38../../cpuex2017/raytracer/min-rt.ml@2153:42;2153:45
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17
	fmovi f7,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2154:18;2154:21
	fmovi f8,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2154:22;2154:25
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$28
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17::<=../../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@2154:18;2154:21::<=../../cpuex2017/raytracer/min-rt.ml@2154:18;2154:21
	fmov f11,f8
;../../cpuex2017/raytracer/min-rt.ml@2154:22;2154:25::<=../../cpuex2017/raytracer/min-rt.ml@2154:22;2154:25
	fmov f12,f6
;../../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45::<=../../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45
	fmov f13,f4
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	jal @a_9003calc_dirvec
	mov r22,r9
	addi r1,r1,$28
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2154:4;2154:46../../cpuex2017/raytracer/min-rt.ml@2154:4;2154:15
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2156:15;2156:31../../cpuex2017/raytracer/min-rt.ml@2153:14;2153:26
	fmovi f11,$0.20000000000000001110
;../../cpuex2017/raytracer/min-rt.ml@2156:36;2156:39
	fmul f10,f6,f11
;../../cpuex2017/raytracer/min-rt.ml@2156:14;2156:39::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2156:15;2156:31../../cpuex2017/raytracer/min-rt.ml@2156:36;2156:39
	fmovi f11,$0.10000000000000000555
;../../cpuex2017/raytracer/min-rt.ml@2156:43;2156:46
	fadd f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46::=Ofadd../../cpuex2017/raytracer/min-rt.ml@2156:14;2156:39../../cpuex2017/raytracer/min-rt.ml@2156:43;2156:46
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17
	fmovi f7,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2157:18;2157:21
	fmovi f8,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2157:22;2157:25
	addi r24,r8,$2
;../../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$28
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17::<=../../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17
	fmov f10,f7
;../../cpuex2017/raytracer/min-rt.ml@2157:18;2157:21::<=../../cpuex2017/raytracer/min-rt.ml@2157:18;2157:21
	fmov f11,f8
;../../cpuex2017/raytracer/min-rt.ml@2157:22;2157:25::<=../../cpuex2017/raytracer/min-rt.ml@2157:22;2157:25
	fmov f12,f6
;../../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46::<=../../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46
	fmov f13,f4
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r12,r24
;../../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52::<=../../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52
	jal @a_9003calc_dirvec
	mov r22,r9
	addi r1,r1,$28
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2157:4;2157:53../../cpuex2017/raytracer/min-rt.ml@2154:4;2154:15
	subi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2159:18;2159:25::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	addi r12,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r12,r11
	bne r0,r5,@cfg_label_18123
@cfg_label_18124:
	subi r11,r12,$5
;../../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18131
@cfg_label_18123:
@cfg_label_18125:
	mov r11,r12
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50
@cfg_label_18131:
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	mov r20,r11
;../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12::<=../../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	j @cfg_label_18121
@a_9016calc_dirvec_rows:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r23,r1,$4
	fst f4,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r22,r10
	mov r8,r11
	mov r20,r12
@cfg_label_18120:
@cfg_label_18072:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	slt r5,r22,r10
	bne r0,r5,@cfg_label_18116
	j @cfg_label_18115
@cfg_label_18116:
@cfg_label_18118:
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	lw r6,r1,$0
	lw r23,r1,$4
	fld f4,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18117:
@cfg_label_18115:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12::<=../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	jal float_of_int
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30../../cpuex2017/raytracer/min-rt.ml@2166:14;2166:26
	fmovi f11,$0.20000000000000001110
;../../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30../../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmovi f11,$0.90000000000000002220
;../../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38../../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	li r23,$4
;../../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18::<=../../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45::<=../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45
	mov r11,r8
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12::<=../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12::<=../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	jal @a_9011calc_dirvecs
	mov r21,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2167:4;2167:36../../cpuex2017/raytracer/min-rt.ml@2167:4;2167:16
	subi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	addi r10,r8,$2
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_18074
@cfg_label_18075:
	subi r22,r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18104
@cfg_label_18074:
@cfg_label_18076:
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
@cfg_label_18104:
	addi r8,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63::=Oiadd[4]../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18098
	j @cfg_label_18097
@cfg_label_18098:
@cfg_label_18100:
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	lw r6,r1,$0
	lw r23,r1,$4
	fld f4,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18099:
@cfg_label_18097:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29::<=../../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29
	jal float_of_int
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30../../cpuex2017/raytracer/min-rt.ml@2166:14;2166:26
	fmovi f11,$0.20000000000000001110
;../../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmul f10,f4,f11
;../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30../../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	fmovi f11,$0.90000000000000002220
;../../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38../../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	li r23,$4
;../../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$16
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18::<=../../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	fmov f10,f4
;../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45::<=../../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51::<=../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
	mov r12,r8
;../../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63::<=../../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63
	jal @a_9011calc_dirvecs
	mov r20,r9
	addi r1,r1,$16
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2167:4;2167:36../../cpuex2017/raytracer/min-rt.ml@2167:4;2167:16
	subi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29
	addi r12,r22,$2
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r12,r11
	bne r0,r5,@cfg_label_18078
@cfg_label_18079:
	subi r11,r12,$5
;../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_18086
@cfg_label_18078:
@cfg_label_18080:
	mov r11,r12
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51
@cfg_label_18086:
	addi r12,r8,$4
;../../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63::=Oiadd[4]../../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63
	mov r22,r10
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12::<=../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r8,r11
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12::<=../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	mov r20,r12
;../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12::<=../../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	j @cfg_label_18072
@a_9022create_dirvec_elements:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r6,r1,$0
	mov r10,r10
	mov r11,r11
@cfg_label_18071:
@cfg_label_18041:
	li r12,$0
;../../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	slt r5,r11,r12
	bne r0,r5,@cfg_label_18067
	j @cfg_label_18066
@cfg_label_18067:
@cfg_label_18069:
;../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18068:
@cfg_label_18066:
;../../cpuex2017/raytracer/min-rt.ml@2185:30;2185:32
	li r14,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r14,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22984
@emit_label_22983:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22983
@emit_label_22984:
	mov r13,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r15,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22986
@emit_label_22985:
	sw r13,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22985
@emit_label_22986:
	mov r14,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r13,r3,$0
	sw r14,r3,$4
	addi r3,r3,$8
	mov r15,r6
;../../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	sll r6,r11,$2
	add r5,r10,r6
	sw r15,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12../../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	subi r13,r11,$1
;../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	slt r5,r13,r11
	bne r0,r5,@cfg_label_18053
	j @cfg_label_18052
@cfg_label_18053:
@cfg_label_18055:
	mov r9,r12
;../../cpuex2017/raytracer/min-rt.ml@2185:30;2185:32::<=../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	mov r9,r12
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18054:
@cfg_label_18052:
	li r12,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22988
@emit_label_22987:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22987
@emit_label_22988:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r14,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r14,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22990
@emit_label_22989:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22989
@emit_label_22990:
	mov r12,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r12,r3,$4
	addi r3,r3,$8
	mov r14,r6
;../../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	sll r6,r13,$2
	add r5,r10,r6
	sw r14,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39../../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	subi r12,r13,$1
;../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39
	mov r11,r12
;../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12::<=../../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	j @cfg_label_18041
@a_9025create_dirvecs:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$52
	subi r1,r1,$24
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	sw r20,r1,$16
	sw r8,r1,$20
	mov r20,r10
@cfg_label_18040:
@cfg_label_17987:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_18036
	j @cfg_label_18035
@cfg_label_18036:
@cfg_label_18038:
;../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$52
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18037:
@cfg_label_18035:
	li r10,$120
;../../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39
;../../cpuex2017/raytracer/min-rt.ml@2192:54;2192:56
	li r12,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22992
@emit_label_22991:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22991
@emit_label_22992:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r13,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22994
@emit_label_22993:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22993
@emit_label_22994:
	mov r12,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r12,r3,$4
	addi r3,r3,$8
	mov r13,r6
;../../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22996
@emit_label_22995:
	sw r13,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22995
@emit_label_22996:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39../../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	lw r5,r31,$112
	sll r6,r20,$2
	add r5,r5,r6
	sw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2192:4;2192:57::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12../../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57
	lw r5,r31,$112
	sll r6,r20,$2
	add r5,r5,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	li r10,$118
;../../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	li r11,$0
;../../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	slt r5,r10,r11
	bne r0,r5,@cfg_label_17997
	j @cfg_label_17996
@cfg_label_17997:
@cfg_label_17999:
	j @cfg_label_18020
@cfg_label_17998:
@cfg_label_17996:
	li r12,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22998
@emit_label_22997:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22997
@emit_label_22998:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r13,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23000
@emit_label_22999:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22999
@emit_label_23000:
	mov r12,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r12,r3,$4
	addi r3,r3,$8
	mov r13,r6
;../../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	sw r13,r21,$472
;../../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32::=OiArrWrite[118]../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42../../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42::<=../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39::<=../../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39
	jal @a_9022create_dirvec_elements
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46../../cpuex2017/raytracer/min-rt.ml@2186:4;2186:26
@cfg_label_18020:
	subi r21,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_18015
	j @cfg_label_18014
@cfg_label_18015:
@cfg_label_18017:
	mov r9,r8
;../../cpuex2017/raytracer/min-rt.ml@2192:54;2192:56::<=../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	mov r9,r8
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$52
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_18016:
@cfg_label_18014:
	li r10,$120
;../../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39
	li r12,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f10,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23002
@emit_label_23001:
	fst f10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23001
@emit_label_23002:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r13,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23004
@emit_label_23003:
	sw r11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23003
@emit_label_23004:
	mov r12,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r11,r3,$0
	sw r12,r3,$4
	addi r3,r3,$8
	mov r13,r6
;../../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	mov r7,r3
	sll r5,r10,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23006
@emit_label_23005:
	sw r13,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23005
@emit_label_23006:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39../../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	lw r5,r31,$112
	sll r6,r21,$2
	add r5,r5,r6
	sw r11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2192:4;2192:57::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11../../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27../../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57
	lw r5,r31,$112
	sll r6,r21,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11../../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27
	li r22,$118
;../../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42::<=../../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46::<=../../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	jal @a_9022create_dirvec_elements
	mov r8,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46../../cpuex2017/raytracer/min-rt.ml@2186:4;2186:26
	subi r10,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27
	mov r20,r10
;../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12::<=../../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	j @cfg_label_17987
@a_9027init_dirvec_constants:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$24
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	sw r20,r1,$16
	sw r8,r1,$20
	mov r8,r10
	mov r21,r11
@cfg_label_17986:
@cfg_label_17943:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17982
	j @cfg_label_17981
@cfg_label_17982:
@cfg_label_17984:
;../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17983:
@cfg_label_17981:
	sll r6,r21,$2
	add r5,r8,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r20,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17972
	j @cfg_label_17971
@cfg_label_17972:
@cfg_label_17974:
;../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17973:
@cfg_label_17971:
	sll r6,r20,$2
	add r5,r8,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r21,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17962
	j @cfg_label_17961
@cfg_label_17962:
@cfg_label_17964:
;../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17963:
@cfg_label_17961:
	sll r6,r21,$2
	add r5,r8,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r20,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17952
	j @cfg_label_17951
@cfg_label_17952:
@cfg_label_17954:
;../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	lw r20,r1,$16
	lw r8,r1,$20
	addi r1,r1,$24
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17953:
@cfg_label_17951:
	sll r6,r20,$2
	add r5,r8,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	mov r21,r10
;../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12::<=../../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	j @cfg_label_17943
@a_9030init_vecset_constants:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$44
	subi r1,r1,$28
	sw r6,r1,$0
	sw r24,r1,$4
	sw r23,r1,$8
	sw r22,r1,$12
	sw r21,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r8,r10
@cfg_label_17942:
@cfg_label_17867:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_17938
	j @cfg_label_17937
@cfg_label_17938:
@cfg_label_17940:
;../../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17939:
@cfg_label_17937:
	lw r5,r31,$112
	sll r6,r8,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:33../../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	li r21,$119
;../../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17894
	j @cfg_label_17893
@cfg_label_17894:
@cfg_label_17896:
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17930
@cfg_label_17893:
@cfg_label_17895:
	lw r22,r20,$476
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OiArrRead[119]../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17884
	j @cfg_label_17883
@cfg_label_17884:
@cfg_label_17886:
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17931
@cfg_label_17883:
@cfg_label_17885:
	sll r6,r22,$2
	add r5,r20,r6
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17874
	j @cfg_label_17873
@cfg_label_17874:
@cfg_label_17876:
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17932
@cfg_label_17873:
@cfg_label_17875:
	sll r6,r21,$2
	add r5,r20,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41::<=../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::<=../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	jal @a_9027init_dirvec_constants
	mov r21,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45../../cpuex2017/raytracer/min-rt.ml@2205:4;2205:25
@cfg_label_17932:
@cfg_label_17931:
@cfg_label_17930:
	subi r20,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17925
	j @cfg_label_17924
@cfg_label_17925:
@cfg_label_17927:
;../../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	lw r6,r1,$0
	lw r24,r1,$4
	lw r23,r1,$8
	lw r22,r1,$12
	lw r21,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$44
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17926:
@cfg_label_17924:
	lw r5,r31,$112
	sll r6,r20,$2
	add r5,r5,r6
	lw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:33../../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36
	li r22,$119
;../../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17913
	j @cfg_label_17912
@cfg_label_17913:
@cfg_label_17915:
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17918
@cfg_label_17912:
@cfg_label_17914:
	lw r21,r8,$476
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OiArrRead[119]../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r21,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17903
	j @cfg_label_17902
@cfg_label_17903:
@cfg_label_17905:
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_17919
@cfg_label_17902:
@cfg_label_17904:
	sll r6,r21,$2
	add r5,r8,r6
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41::<=../../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	subi r22,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41::<=../../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43::<=../../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	jal @a_9027init_dirvec_constants
	mov r21,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45../../cpuex2017/raytracer/min-rt.ml@2205:4;2205:25
@cfg_label_17919:
@cfg_label_17918:
	subi r10,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36
	mov r8,r10
;../../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12::<=../../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	j @cfg_label_17867
@a_9041setup_rect_reflection:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$80
	subi r1,r1,$48
	sw r6,r1,$0
	sw r25,r1,$4
	sw r24,r1,$8
	sw r23,r1,$12
	sw r22,r1,$16
	sw r21,r1,$20
	fst f8,r1,$24
	sw r20,r1,$28
	fst f7,r1,$32
	fst f6,r1,$36
	fst f4,r1,$40
	sw r8,r1,$44
	mov r10,r10
	mov r11,r11
@cfg_label_17800:
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	sll r6,r6,$1
	mov r20,r6
;../../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22::=Oimul[4]../../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29
	lw r5,r31,$20
	lw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:24
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2239:11;2239:14
	lw r10,r11,$28
;../../cpuex2017/raytracer/min-rt.ml@270:29;270:30::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29
	fld f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2239:18;2239:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2239:11;2239:31::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2239:11;2239:14../../cpuex2017/raytracer/min-rt.ml@2239:18;2239:31
	lw r5,r31,$420
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:25::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f6,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:25
	lw r5,r31,$420
	fld f11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2241:16;2241:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f7,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2241:16;2241:25
	lw r5,r31,$420
	fld f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2242:16;2242:25::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	fmovi f10,$-1.00000000000000000000
;lib/lib_tortesia.ml@18:19;18:22
	fmul f8,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25::=Ofmullib/lib_tortesia.ml@18:19;18:22../../cpuex2017/raytracer/min-rt.ml@2242:16;2242:25
	addi r21,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@2243:21;2243:26::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22
	lw r5,r31,$420
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2243:31;2243:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23008
@emit_label_23007:
	fst f11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23007
@emit_label_23008:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23010
@emit_label_23009:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23009
@emit_label_23010:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r22,r6
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2243:31;2243:40
	fst f7,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25
	fst f8,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28::<=../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r21,r3,$0
	sw r22,r3,$4
	fst f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
;../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r8,$2
	add r5,r5,r6
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2243:2;2243:46::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r21,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@2244:18;2244:22::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28
	addi r22,r20,$2
;../../cpuex2017/raytracer/min-rt.ml@2244:25;2244:30::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22
	lw r5,r31,$420
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2244:38;2244:47::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23012
@emit_label_23011:
	fst f11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23011
@emit_label_23012:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23014
@emit_label_23013:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23013
@emit_label_23014:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r23,r6
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	fst f6,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25
	fst f10,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2244:38;2244:47
	fst f8,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	subi r24,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28::<=../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r25,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r22,r3,$0
	sw r23,r3,$4
	fst f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
;../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r21,$2
	add r5,r5,r6
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2244:2;2244:50::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13../../cpuex2017/raytracer/min-rt.ml@2244:18;2244:22../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r21,r8,$2
;../../cpuex2017/raytracer/min-rt.ml@2245:18;2245:22::=Oiadd[2]../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28
	addi r22,r20,$3
;../../cpuex2017/raytracer/min-rt.ml@2245:25;2245:30::=Oiadd[3]../../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22
	lw r5,r31,$420
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2245:41;2245:50::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f11,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23016
@emit_label_23015:
	fst f11,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23015
@emit_label_23016:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23018
@emit_label_23017:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23017
@emit_label_23018:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r20,r6
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	fst f6,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25
	fst f7,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25
	fst f10,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2245:41;2245:50
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r20
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28::<=../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r22,r3,$0
	sw r20,r3,$4
	fst f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
;../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r21,$2
	add r5,r5,r6
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2245:2;2245:50::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13../../cpuex2017/raytracer/min-rt.ml@2245:18;2245:22../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r10,r8,$3
;../../cpuex2017/raytracer/min-rt.ml@2246:23;2246:29::=Oiadd[3]../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28
	lw r5,r31,$20
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2238:11;2238:24../../cpuex2017/raytracer/min-rt.ml@2246:23;2246:29
	lw r6,r1,$0
	lw r25,r1,$4
	lw r24,r1,$8
	lw r23,r1,$12
	lw r22,r1,$16
	lw r21,r1,$20
	fld f8,r1,$24
	lw r20,r1,$28
	fld f7,r1,$32
	fld f6,r1,$36
	fld f4,r1,$40
	lw r8,r1,$44
	addi r1,r1,$48
	addi r1,r1,$80
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_9044setup_surface_reflection:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$76
	subi r1,r1,$28
	sw r6,r1,$0
	sw r23,r1,$4
	sw r22,r1,$8
	sw r21,r1,$12
	fst f4,r1,$16
	sw r20,r1,$20
	sw r8,r1,$24
	mov r10,r10
	mov r11,r11
@cfg_label_17747:
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	sll r6,r6,$1
	mov r12,r6
;../../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22::=Oimul[4]../../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29
	addi r20,r12,$1
;../../cpuex2017/raytracer/min-rt.ml@2251:12;2251:26::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22
	lw r5,r31,$20
	lw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2252:11;2252:24
	fmovi f10,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2253:11;2253:14
	lw r10,r11,$28
;../../cpuex2017/raytracer/min-rt.ml@270:29;270:30::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29
	fld f11,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2253:18;2253:31::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fsub f4,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2253:11;2253:31::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2253:11;2253:14../../cpuex2017/raytracer/min-rt.ml@2253:18;2253:31
	lw r10,r11,$16
;../../cpuex2017/raytracer/min-rt.ml@230:29;230:30::=OGetTuple[4]../../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29
	lw r5,r31,$420
	fld f11,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:7::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fld f12,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@100:11;100:16::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f10,f11,f12
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:16::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:2;100:7../../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	lw r5,r31,$420
	fld f12,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fld f13,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@100:29;100:34::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f11,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@100:20;100:34::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:20;100:25../../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	fadd f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@100:2;100:34::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:16../../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	lw r5,r31,$420
	fld f11,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fld f13,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@100:47;100:52::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f10,f11,f13
;../../cpuex2017/raytracer/min-rt.ml@100:38;100:52::=Ofmul../../cpuex2017/raytracer/min-rt.ml@100:38;100:43../../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	fadd f11,f12,f10
;../../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42::=Ofadd../../cpuex2017/raytracer/min-rt.ml@100:2;100:34../../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	fmovi f12,$2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:8
	fld f13,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2257:12;2257:25::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:25::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:8../../cpuex2017/raytracer/min-rt.ml@2257:12;2257:25
	fmul f12,f10,f11
;../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:25../../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42
	lw r5,r31,$420
	fld f13,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2257:34;2257:43::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fsub f10,f12,f13
;../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:43::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:30../../cpuex2017/raytracer/min-rt.ml@2257:34;2257:43
	fmovi f13,$2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:8
	fld f14,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@2258:12;2258:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f12,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:25::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:8../../cpuex2017/raytracer/min-rt.ml@2258:12;2258:25
	fmul f13,f12,f11
;../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:25../../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42
	lw r5,r31,$420
	fld f14,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2258:34;2258:43::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fsub f12,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:43::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:30../../cpuex2017/raytracer/min-rt.ml@2258:34;2258:43
	fmovi f13,$2.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:8
	fld f14,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2259:12;2259:25::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@230:29;230:30
	fmul f15,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:25::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:8../../cpuex2017/raytracer/min-rt.ml@2259:12;2259:25
	fmul f13,f15,f11
;../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:30::=Ofmul../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:25../../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42
	lw r5,r31,$420
	fld f14,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2259:34;2259:43::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@100:2;100:3
	fsub f11,f13,f14
;../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:43::=Ofsub../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:30../../cpuex2017/raytracer/min-rt.ml@2259:34;2259:43
	li r11,$3
;../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	fmovi f13,$0.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23020
@emit_label_23019:
	fst f13,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23019
@emit_label_23020:
	mov r10,r7
;../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25../../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	lw r5,r31,$496
	lw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	mov r7,r3
	sll r5,r12,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23022
@emit_label_23021:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23021
@emit_label_23022:
	mov r11,r7
;../../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29
	mov r6,r3
	sw r10,r3,$0
	sw r11,r3,$4
	addi r3,r3,$8
	mov r21,r6
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	fst f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@52:2;52:12::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2257:5;2257:43
	fst f12,r10,$4
;../../cpuex2017/raytracer/min-rt.ml@53:2;53:12::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2258:5;2258:43
	fst f11,r10,$8
;../../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29../../cpuex2017/raytracer/min-rt.ml@2259:5;2259:43
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37
	subi r22,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28::<=../../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r23,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	mov r6,r3
	sw r20,r3,$0
	sw r21,r3,$4
	fst f4,r3,$8
	addi r3,r3,$12
	mov r10,r6
;../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	lw r5,r31,$32
	sll r6,r8,$2
	add r5,r5,r6
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2256:2;2259:44::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13../../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28../../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	addi r10,r8,$1
;../../cpuex2017/raytracer/min-rt.ml@2260:23;2260:29::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28
	lw r5,r31,$20
	sw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2252:11;2252:24../../cpuex2017/raytracer/min-rt.ml@2260:23;2260:29
	lw r6,r1,$0
	lw r23,r1,$4
	lw r22,r1,$8
	lw r21,r1,$12
	fld f4,r1,$16
	lw r20,r1,$20
	lw r8,r1,$24
	addi r1,r1,$28
	addi r1,r1,$76
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_9047setup_reflections:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$16
	sw r6,r1,$0
	sw r21,r1,$4
	sw r20,r1,$8
	sw r8,r1,$12
	mov r8,r10
@cfg_label_17714:
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2266:15;2266:16
	slt r5,r8,r10
	bne r0,r5,@cfg_label_17743
	j @cfg_label_17742
@cfg_label_17743:
@cfg_label_17745:
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17744:
@cfg_label_17742:
	lw r5,r31,$456
	sll r6,r8,$2
	add r5,r5,r6
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30::=OArrRead../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:21../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	lw r10,r20,$8
;../../cpuex2017/raytracer/min-rt.ml@172:29;172:30::=OGetTuple[2]../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@2268:30;2268:31
	bne r10,r11,@cfg_label_17736
	j @cfg_label_17735
@cfg_label_17736:
@cfg_label_17738:
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17737:
@cfg_label_17735:
	lw r10,r20,$28
;../../cpuex2017/raytracer/min-rt.ml@270:29;270:30::=OGetTuple[7]../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	fld f10,r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2269:16;2269:29::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@270:29;270:30
	fmovi f11,$1.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2269:31;2269:34
	flt f10,f11
	bft @emit_label_23023
	li r10,$0
	j @emit_label_23024
@emit_label_23023:
	li r10,$1
@emit_label_23024:
;../../cpuex2017/raytracer/min-rt.ml@2269:9;2269:34::=Olt../../cpuex2017/raytracer/min-rt.ml@2269:16;2269:29../../cpuex2017/raytracer/min-rt.ml@2269:31;2269:34
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@2269:9;2269:34
	bne r10,r11,@cfg_label_17727
	j @cfg_label_17726
@cfg_label_17727:
@cfg_label_17729:
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17728:
@cfg_label_17726:
	lw r10,r20,$4
;../../cpuex2017/raytracer/min-rt.ml@162:29;162:30::=OGetTuple[1]../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	li r11,$1
;../../cpuex2017/raytracer/min-rt.ml@2272:14;2272:15
	bne r10,r11,@cfg_label_17721
@cfg_label_17722:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9::<=../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30::<=../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	jal @a_9041setup_rect_reflection
	mov r21,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9../../cpuex2017/raytracer/min-rt.ml@2273:3;2273:24
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17723:
@cfg_label_17721:
	li r11,$2
;../../cpuex2017/raytracer/min-rt.ml@2274:19;2274:20
	bne r10,r11,@cfg_label_17716
@cfg_label_17717:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9::<=../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r11,r20
;../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30::<=../../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30
	jal @a_9044setup_surface_reflection
	mov r21,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9../../cpuex2017/raytracer/min-rt.ml@2275:3;2275:27
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17718:
@cfg_label_17716:
;../../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	mov r9,r21
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_9049rt:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$152
	subi r1,r1,$44
	sw r6,r1,$0
	fst f6,r1,$4
	fst f4,r1,$8
	sw r26,r1,$12
	sw r25,r1,$16
	sw r24,r1,$20
	sw r23,r1,$24
	sw r22,r1,$28
	sw r21,r1,$32
	sw r20,r1,$36
	sw r8,r1,$40
	mov r8,r10
	mov r11,r11
@cfg_label_17555:
	lw r5,r31,$248
	sw r8,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:25::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11../../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	lw r5,r31,$248
	sw r11,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2290:1;2290:25::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11../../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	slti r6,r8,$0
	add r12,r8,r6
	sra r12,r12,$1
;../../cpuex2017/raytracer/min-rt.ml@2291:21;2291:31::=Oibydiv[2]../../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	lw r5,r31,$236
	sw r12,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2291:1;2291:31::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2291:1;2291:13../../cpuex2017/raytracer/min-rt.ml@2291:21;2291:31
	slti r6,r11,$0
	add r10,r11,r6
	sra r10,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2292:21;2292:31::=Oibydiv[2]../../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	lw r5,r31,$236
	sw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2292:1;2292:31::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@2291:1;2291:13../../cpuex2017/raytracer/min-rt.ml@2292:21;2292:31
	fmovi f4,$128.00000000000000000000
;../../cpuex2017/raytracer/min-rt.ml@2293:19;2293:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28::<=../../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2293:28;2293:47../../cpuex2017/raytracer/min-rt.ml@2293:28;2293:40
	fdiv f10,f4,f6
;../../cpuex2017/raytracer/min-rt.ml@2293:19;2293:47::=Ofdiv../../cpuex2017/raytracer/min-rt.ml@2293:19;2293:24../../cpuex2017/raytracer/min-rt.ml@2293:28;2293:47
	lw r5,r31,$224
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2293:1;2293:47::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@2293:1;2293:11../../cpuex2017/raytracer/min-rt.ml@2293:19;2293:47
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	lw r5,r31,$248
	lw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	mov r7,r3
	sll r5,r20,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23026
@emit_label_23025:
	sw r22,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23025
@emit_label_23026:
	mov r21,r7
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	lw r5,r31,$248
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r22,r10,$2
;../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43::=Oibysub[2]../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17568
	j @cfg_label_17567
@cfg_label_17568:
@cfg_label_17570:
	mov r20,r21
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	j @cfg_label_17694
@cfg_label_17567:
@cfg_label_17569:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r22,$2
	add r5,r21,r6
	sw r20,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r20,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_17560
	j @cfg_label_17559
@cfg_label_17560:
@cfg_label_17562:
	mov r20,r21
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	j @cfg_label_17695
@cfg_label_17559:
@cfg_label_17561:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r20,$2
	add r5,r21,r6
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r22,r20,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57
	mov r11,r22
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::<=../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	jal @a_8993init_line_elements
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31../../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
@cfg_label_17695:
@cfg_label_17694:
	lw r5,r31,$248
	lw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	mov r7,r3
	sll r5,r21,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23028
@emit_label_23027:
	sw r23,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23027
@emit_label_23028:
	mov r22,r7
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	lw r5,r31,$248
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r23,r10,$2
;../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43::=Oibysub[2]../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r23,r10
	bne r0,r5,@cfg_label_17583
	j @cfg_label_17582
@cfg_label_17583:
@cfg_label_17585:
	mov r21,r22
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	j @cfg_label_17685
@cfg_label_17582:
@cfg_label_17584:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r23,$2
	add r5,r22,r6
	sw r21,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r21,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r21,r10
	bne r0,r5,@cfg_label_17575
	j @cfg_label_17574
@cfg_label_17575:
@cfg_label_17577:
	mov r21,r22
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	j @cfg_label_17686
@cfg_label_17574:
@cfg_label_17576:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r21,$2
	add r5,r22,r6
	sw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r23,r21,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::<=../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	jal @a_8993init_line_elements
	mov r21,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31../../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
@cfg_label_17686:
@cfg_label_17685:
	lw r5,r31,$248
	lw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	mov r7,r3
	sll r5,r22,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_23030
@emit_label_23029:
	sw r24,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_23029
@emit_label_23030:
	mov r23,r7
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::=OArrCrt../../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	lw r5,r31,$248
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r24,r10,$2
;../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43::=Oibysub[2]../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r24,r10
	bne r0,r5,@cfg_label_17598
	j @cfg_label_17597
@cfg_label_17598:
@cfg_label_17600:
	mov r22,r23
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	j @cfg_label_17676
@cfg_label_17597:
@cfg_label_17599:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r24,$2
	add r5,r23,r6
	sw r22,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r22,r24,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43
	li r10,$0
;../../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	slt r5,r22,r10
	bne r0,r5,@cfg_label_17590
	j @cfg_label_17589
@cfg_label_17590:
@cfg_label_17592:
	mov r22,r23
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	j @cfg_label_17677
@cfg_label_17589:
@cfg_label_17591:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8991create_pixel
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30../../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	sll r6,r22,$2
	add r5,r23,r6
	sw r24,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30::=OArrWrite../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32../../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	subi r24,r22,$1
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57::<=../../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32::<=../../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32
	jal @a_8993init_line_elements
	mov r22,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31../../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
@cfg_label_17677:
@cfg_label_17676:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8695read_screen_settings
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@710:3;710:25../../cpuex2017/raytracer/min-rt.ml@710:3;710:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8697read_light
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@711:3;711:15../../cpuex2017/raytracer/min-rt.ml@711:3;711:13
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	li r10,$60
;../../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	slt r5,r23,r10
	bne r0,r5,@cfg_label_17609
@cfg_label_17610:
	j @cfg_label_17671
@cfg_label_17611:
@cfg_label_17609:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@676:14;676:15::<=../../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	jal @a_8702read_nth_object
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24../../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	li r10,$1
;../../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	bne r24,r10,@cfg_label_17603
	j @cfg_label_17602
@cfg_label_17603:
@cfg_label_17605:
	lw r5,r31,$496
	sw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@712:3;712:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15../../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	j @cfg_label_17669
@cfg_label_17602:
@cfg_label_17604:
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@669:19;669:24::<=../../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	jal @a_8704read_object
	mov r25,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@712:3;712:21../../cpuex2017/raytracer/min-rt.ml@669:6;669:17
@cfg_label_17671:
@cfg_label_17669:
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@713:20;713:21
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@713:20;713:21::<=../../cpuex2017/raytracer/min-rt.ml@713:20;713:21
	jal @a_8712read_and_network
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@713:3;713:21../../cpuex2017/raytracer/min-rt.ml@713:3;713:19
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@714:33;714:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@714:33;714:34::<=../../cpuex2017/raytracer/min-rt.ml@714:33;714:34
	jal @a_8710read_or_network
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@714:17;714:34../../cpuex2017/raytracer/min-rt.ml@714:17;714:32
	lw r5,r31,$368
	sw r23,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2297:1;2297:17::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@714:3;714:9../../cpuex2017/raytracer/min-rt.ml@714:17;714:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:29;2294:31
	jal @a_8957write_ppm_header
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2298:1;2298:20../../cpuex2017/raytracer/min-rt.ml@2298:1;2298:17
	li r24,$4
;../../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18::<=../../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18
	jal @a_9025create_dirvecs
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2217:2;2217:18../../cpuex2017/raytracer/min-rt.ml@2217:2;2217:16
	li r24,$9
;../../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22
	li r26,$0
;../../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20::<=../../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20
	mov r11,r25
;../../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22::<=../../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22
	mov r12,r26
;../../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24::<=../../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24
	jal @a_9016calc_dirvec_rows
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2218:2;2218:24../../cpuex2017/raytracer/min-rt.ml@2218:2;2218:18
	li r24,$4
;../../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25::<=../../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25
	jal @a_9030init_vecset_constants
	mov r23,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2299:1;2299:15../../cpuex2017/raytracer/min-rt.ml@2219:2;2219:23
	lw r5,r31,$420
	fld f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:14;71:21::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$88
	fst f10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@71:2;71:21::=OiArrWrite[0]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	lw r5,r31,$420
	fld f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:14;72:21::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$88
	fst f10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@72:2;72:21::=OiArrWrite[1]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	lw r5,r31,$420
	fld f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@73:14;73:21::=OiArrRead[2]../../cpuex2017/raytracer/min-rt.ml@71:14;71:17
	lw r5,r31,$88
	fst f10,r5,$8
;../../cpuex2017/raytracer/min-rt.ml@2300:1;2300:34::=OiArrWrite[2]../../cpuex2017/raytracer/min-rt.ml@71:2;71:6../../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	lw r10,r31,$76
;../../cpuex2017/raytracer/min-rt.ml@1095:30;1095:36::<=../../cpuex2017/raytracer/min-rt.ml@1095:30;1095:36
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55::<=../../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55
	jal @a_8809iter_setup_dirvec_constants
	mov r24,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2301:1;2301:36../../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	lw r5,r31,$496
	lw r10,r5,$0
;../../cpuex2017/raytracer/min-rt.ml@2302:20;2302:33::=OiArrRead[0]../../cpuex2017/raytracer/min-rt.ml@671:6;671:15
	subi r23,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2302:20;2302:37::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2302:20;2302:33
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r23
;../../cpuex2017/raytracer/min-rt.ml@2302:20;2302:37::<=../../cpuex2017/raytracer/min-rt.ml@2302:20;2302:37
	jal @a_9047setup_reflections
	mov r24,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2302:1;2302:38../../cpuex2017/raytracer/min-rt.ml@2302:1;2302:18
	li r24,$0
;../../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
;../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31::<=../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	mov r11,r24
;../../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20::<=../../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20
	mov r12,r25
;../../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22::<=../../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22
	jal @a_8973pretrace_line
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2303:1;2303:22../../cpuex2017/raytracer/min-rt.ml@2303:1;2303:14
	li r23,$0
;../../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	li r24,$2
;../../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28
	lw r5,r31,$248
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	slt r5,r23,r10
	bne r0,r5,@cfg_label_17634
@cfg_label_17635:
	mov r9,r8
	lw r6,r1,$0
	fld f6,r1,$4
	fld f4,r1,$8
	lw r26,r1,$12
	lw r25,r1,$16
	lw r24,r1,$20
	lw r23,r1,$24
	lw r22,r1,$28
	lw r21,r1,$32
	lw r20,r1,$36
	lw r8,r1,$40
	addi r1,r1,$44
	addi r1,r1,$152
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_17636:
@cfg_label_17634:
	lw r5,r31,$248
	lw r10,r5,$4
;../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25::=OiArrRead[1]../../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11
	subi r11,r10,$1
;../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29::=Oibysub[1]../../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25
	slt r5,r23,r11
	bne r0,r5,@cfg_label_17614
@cfg_label_17615:
	j @cfg_label_17630
@cfg_label_17616:
@cfg_label_17614:
	addi r26,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r22
;../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31::<=../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	mov r11,r26
;../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31::<=../../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31
	mov r12,r24
;../../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28::<=../../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28
	jal @a_8973pretrace_line
	mov r25,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11../../cpuex2017/raytracer/min-rt.ml@2303:1;2303:14
@cfg_label_17630:
	li r25,$0
;../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r25
;../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16::<=../../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	mov r11,r23
;../../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12::<=../../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	mov r12,r20
;../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	mov r13,r21
;../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31::<=../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	mov r14,r22
;../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31::<=../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	jal @a_8977scan_pixel
	mov r24,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32../../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	addi r24,r23,$1
;../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20::=Oiadd[1]../../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	li r10,$4
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	li r11,$5
;../../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	slt r5,r10,r11
	bne r0,r5,@cfg_label_17618
@cfg_label_17619:
	subi r23,r10,$5
;../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56::=Oibysub[5]../../cpuex2017/raytracer/min-rt.ml@36:12;36:17
	j @cfg_label_17623
@cfg_label_17618:
@cfg_label_17620:
	mov r23,r10
;../../cpuex2017/raytracer/min-rt.ml@36:12;36:17::<=../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
@cfg_label_17623:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$20
	mov r10,r24
;../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20::<=../../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20
	mov r11,r21
;../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31::<=../../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31
	mov r12,r22
;../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31::<=../../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31
	mov r13,r20
;../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31::<=../../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31
	mov r14,r23
;../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56::<=../../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56
	jal @a_8983scan_line
	mov r25,r9
	addi r1,r1,$20
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57../../cpuex2017/raytracer/min-rt.ml@2057:4;2057:13
	mov r9,r8
	lw r6,r1,$0
	fld f6,r1,$4
	fld f4,r1,$8
	lw r26,r1,$12
	lw r25,r1,$16
	lw r24,r1,$20
	lw r23,r1,$24
	lw r22,r1,$28
	lw r21,r1,$32
	lw r20,r1,$36
	lw r8,r1,$40
	addi r1,r1,$44
	addi r1,r1,$152
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
main:
	mov r31,r3
	addi r3,r3,$1116
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$1124
	subi r1,r1,$4
	sw r6,r1,$0
@cfg_label_17275:
	li r5,$0
	sw r5,r31,$1112
;lib/lib_tortesia.ml@1:12;1:13
	li r5,$24
	sw r5,r31,$1108
;lib/lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$1104
;lib/lib_sinint.ml@1:28;1:31
	lw r5,r31,$1108
	lw r6,r31,$1104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22688
@emit_label_22687:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22687
@emit_label_22688:
	mov r5,r7
	sw r5,r31,$1100
;lib/lib_sinint.ml@1:12;1:31::=OArrCrtlib/lib_sinint.ml@1:25;1:27lib/lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$1096
;lib/lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$1092
;lib/lib_sinint.ml@2:28;2:31
	lw r5,r31,$1096
	lw r6,r31,$1092
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22690
@emit_label_22689:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22689
@emit_label_22690:
	mov r5,r7
	sw r5,r31,$1088
;lib/lib_sinint.ml@2:12;2:31::=OArrCrtlib/lib_sinint.ml@2:25;2:27lib/lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$1084
;lib/lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$1080
;lib/lib_sinint.ml@5:13;5:16
	lw r5,r31,$1100
	lw r6,r31,$1084
	lw r7,r31,$1080
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1076
;lib/lib_sinint.ml@5:0;5:16::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@5:7;5:8lib/lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$1072
;lib/lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$1068
;lib/lib_sinint.ml@6:13;6:16
	lw r5,r31,$1100
	lw r6,r31,$1072
	lw r7,r31,$1068
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1064
;lib/lib_sinint.ml@6:0;6:16::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@6:7;6:8lib/lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$1060
;lib/lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$1056
;lib/lib_sinint.ml@7:13;7:17
	lw r5,r31,$1100
	lw r6,r31,$1060
	lw r7,r31,$1056
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1052
;lib/lib_sinint.ml@7:0;7:17::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@7:7;7:8lib/lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$1048
;lib/lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$1044
;lib/lib_sinint.ml@8:13;8:18
	lw r5,r31,$1100
	lw r6,r31,$1048
	lw r7,r31,$1044
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1040
;lib/lib_sinint.ml@8:0;8:18::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@8:7;8:8lib/lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$1036
;lib/lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$1032
;lib/lib_sinint.ml@9:13;9:19
	lw r5,r31,$1100
	lw r6,r31,$1036
	lw r7,r31,$1032
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1028
;lib/lib_sinint.ml@9:0;9:19::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@9:7;9:8lib/lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$1024
;lib/lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$1020
;lib/lib_sinint.ml@10:13;10:20
	lw r5,r31,$1100
	lw r6,r31,$1024
	lw r7,r31,$1020
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1016
;lib/lib_sinint.ml@10:0;10:20::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@10:7;10:8lib/lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$1012
;lib/lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$1008
;lib/lib_sinint.ml@11:13;11:21
	lw r5,r31,$1100
	lw r6,r31,$1012
	lw r7,r31,$1008
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1004
;lib/lib_sinint.ml@11:0;11:21::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@11:7;11:8lib/lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$1000
;lib/lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$996
;lib/lib_sinint.ml@12:13;12:22
	lw r5,r31,$1100
	lw r6,r31,$1000
	lw r7,r31,$996
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$992
;lib/lib_sinint.ml@12:0;12:22::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@12:7;12:8lib/lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$988
;lib/lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$984
;lib/lib_sinint.ml@13:13;13:23
	lw r5,r31,$1100
	lw r6,r31,$988
	lw r7,r31,$984
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$980
;lib/lib_sinint.ml@13:0;13:23::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@13:7;13:8lib/lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$976
;lib/lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$972
;lib/lib_sinint.ml@14:13;14:24
	lw r5,r31,$1100
	lw r6,r31,$976
	lw r7,r31,$972
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$968
;lib/lib_sinint.ml@14:0;14:24::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@14:7;14:8lib/lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$964
;lib/lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$960
;lib/lib_sinint.ml@15:14;15:26
	lw r5,r31,$1100
	lw r6,r31,$964
	lw r7,r31,$960
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$956
;lib/lib_sinint.ml@15:0;15:26::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@15:7;15:9lib/lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$952
;lib/lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$948
;lib/lib_sinint.ml@16:14;16:27
	lw r5,r31,$1100
	lw r6,r31,$952
	lw r7,r31,$948
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$944
;lib/lib_sinint.ml@16:0;16:27::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@16:7;16:9lib/lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$940
;lib/lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$936
;lib/lib_sinint.ml@17:14;17:28
	lw r5,r31,$1100
	lw r6,r31,$940
	lw r7,r31,$936
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$932
;lib/lib_sinint.ml@17:0;17:28::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@17:7;17:9lib/lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$928
;lib/lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$924
;lib/lib_sinint.ml@18:14;18:29
	lw r5,r31,$1100
	lw r6,r31,$928
	lw r7,r31,$924
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$920
;lib/lib_sinint.ml@18:0;18:29::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@18:7;18:9lib/lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$916
;lib/lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$912
;lib/lib_sinint.ml@19:14;19:30
	lw r5,r31,$1100
	lw r6,r31,$916
	lw r7,r31,$912
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$908
;lib/lib_sinint.ml@19:0;19:30::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@19:7;19:9lib/lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$904
;lib/lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$900
;lib/lib_sinint.ml@20:14;20:31
	lw r5,r31,$1100
	lw r6,r31,$904
	lw r7,r31,$900
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$896
;lib/lib_sinint.ml@20:0;20:31::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@20:7;20:9lib/lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$892
;lib/lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$888
;lib/lib_sinint.ml@21:14;21:32
	lw r5,r31,$1100
	lw r6,r31,$892
	lw r7,r31,$888
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$884
;lib/lib_sinint.ml@21:0;21:32::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@21:7;21:9lib/lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$880
;lib/lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$876
;lib/lib_sinint.ml@22:14;22:33
	lw r5,r31,$1100
	lw r6,r31,$880
	lw r7,r31,$876
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$872
;lib/lib_sinint.ml@22:0;22:33::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@22:7;22:9lib/lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$868
;lib/lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$864
;lib/lib_sinint.ml@23:14;23:34
	lw r5,r31,$1100
	lw r6,r31,$868
	lw r7,r31,$864
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$860
;lib/lib_sinint.ml@23:0;23:34::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@23:7;23:9lib/lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$856
;lib/lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$852
;lib/lib_sinint.ml@24:14;24:35
	lw r5,r31,$1100
	lw r6,r31,$856
	lw r7,r31,$852
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$848
;lib/lib_sinint.ml@24:0;24:35::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@24:7;24:9lib/lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$844
;lib/lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$840
;lib/lib_sinint.ml@25:14;25:36
	lw r5,r31,$1100
	lw r6,r31,$844
	lw r7,r31,$840
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$836
;lib/lib_sinint.ml@25:0;25:36::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@25:7;25:9lib/lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$832
;lib/lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$828
;lib/lib_sinint.ml@26:14;26:37
	lw r5,r31,$1100
	lw r6,r31,$832
	lw r7,r31,$828
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$824
;lib/lib_sinint.ml@26:0;26:37::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@26:7;26:9lib/lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$820
;lib/lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$816
;lib/lib_sinint.ml@27:14;27:38
	lw r5,r31,$1100
	lw r6,r31,$820
	lw r7,r31,$816
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$812
;lib/lib_sinint.ml@27:0;27:38::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@27:7;27:9lib/lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$808
;lib/lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$804
;lib/lib_sinint.ml@28:14;28:39
	lw r5,r31,$1100
	lw r6,r31,$808
	lw r7,r31,$804
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$800
;lib/lib_sinint.ml@28:0;28:39::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@28:7;28:9lib/lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$796
;lib/lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$792
;lib/lib_sinint.ml@30:13;30:39
	lw r5,r31,$1088
	lw r6,r31,$796
	lw r7,r31,$792
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$788
;lib/lib_sinint.ml@30:0;30:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@30:7;30:8lib/lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$784
;lib/lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$780
;lib/lib_sinint.ml@31:13;31:39
	lw r5,r31,$1088
	lw r6,r31,$784
	lw r7,r31,$780
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$776
;lib/lib_sinint.ml@31:0;31:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@31:7;31:8lib/lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$772
;lib/lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$768
;lib/lib_sinint.ml@32:13;32:39
	lw r5,r31,$1088
	lw r6,r31,$772
	lw r7,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$764
;lib/lib_sinint.ml@32:0;32:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@32:7;32:8lib/lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$760
;lib/lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$756
;lib/lib_sinint.ml@33:13;33:39
	lw r5,r31,$1088
	lw r6,r31,$760
	lw r7,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$752
;lib/lib_sinint.ml@33:0;33:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@33:7;33:8lib/lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$748
;lib/lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$744
;lib/lib_sinint.ml@34:13;34:39
	lw r5,r31,$1088
	lw r6,r31,$748
	lw r7,r31,$744
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$740
;lib/lib_sinint.ml@34:0;34:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@34:7;34:8lib/lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$736
;lib/lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$732
;lib/lib_sinint.ml@35:13;35:39
	lw r5,r31,$1088
	lw r6,r31,$736
	lw r7,r31,$732
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$728
;lib/lib_sinint.ml@35:0;35:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@35:7;35:8lib/lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$724
;lib/lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$720
;lib/lib_sinint.ml@36:13;36:39
	lw r5,r31,$1088
	lw r6,r31,$724
	lw r7,r31,$720
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$716
;lib/lib_sinint.ml@36:0;36:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@36:7;36:8lib/lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$712
;lib/lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$708
;lib/lib_sinint.ml@37:13;37:39
	lw r5,r31,$1088
	lw r6,r31,$712
	lw r7,r31,$708
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$704
;lib/lib_sinint.ml@37:0;37:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@37:7;37:8lib/lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$700
;lib/lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$696
;lib/lib_sinint.ml@38:13;38:39
	lw r5,r31,$1088
	lw r6,r31,$700
	lw r7,r31,$696
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$692
;lib/lib_sinint.ml@38:0;38:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@38:7;38:8lib/lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$688
;lib/lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$684
;lib/lib_sinint.ml@39:13;39:39
	lw r5,r31,$1088
	lw r6,r31,$688
	lw r7,r31,$684
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$680
;lib/lib_sinint.ml@39:0;39:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@39:7;39:8lib/lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$676
;lib/lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$672
;lib/lib_sinint.ml@40:14;40:40
	lw r5,r31,$1088
	lw r6,r31,$676
	lw r7,r31,$672
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$668
;lib/lib_sinint.ml@40:0;40:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@40:7;40:9lib/lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$664
;lib/lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$660
;lib/lib_sinint.ml@41:14;41:40
	lw r5,r31,$1088
	lw r6,r31,$664
	lw r7,r31,$660
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$656
;lib/lib_sinint.ml@41:0;41:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@41:7;41:9lib/lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$652
;lib/lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$648
;lib/lib_sinint.ml@42:14;42:40
	lw r5,r31,$1088
	lw r6,r31,$652
	lw r7,r31,$648
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$644
;lib/lib_sinint.ml@42:0;42:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@42:7;42:9lib/lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$640
;lib/lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$636
;lib/lib_sinint.ml@43:14;43:40
	lw r5,r31,$1088
	lw r6,r31,$640
	lw r7,r31,$636
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$632
;lib/lib_sinint.ml@43:0;43:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@43:7;43:9lib/lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$628
;lib/lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$624
;lib/lib_sinint.ml@44:14;44:40
	lw r5,r31,$1088
	lw r6,r31,$628
	lw r7,r31,$624
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$620
;lib/lib_sinint.ml@44:0;44:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@44:7;44:9lib/lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$616
;lib/lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$612
;lib/lib_sinint.ml@45:14;45:40
	lw r5,r31,$1088
	lw r6,r31,$616
	lw r7,r31,$612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$608
;lib/lib_sinint.ml@45:0;45:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@45:7;45:9lib/lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$604
;lib/lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$600
;lib/lib_sinint.ml@46:14;46:40
	lw r5,r31,$1088
	lw r6,r31,$604
	lw r7,r31,$600
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$596
;lib/lib_sinint.ml@46:0;46:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@46:7;46:9lib/lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$592
;lib/lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$588
;lib/lib_sinint.ml@47:14;47:40
	lw r5,r31,$1088
	lw r6,r31,$592
	lw r7,r31,$588
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$584
;lib/lib_sinint.ml@47:0;47:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@47:7;47:9lib/lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$580
;lib/lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$576
;lib/lib_sinint.ml@48:14;48:40
	lw r5,r31,$1088
	lw r6,r31,$580
	lw r7,r31,$576
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$572
;lib/lib_sinint.ml@48:0;48:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@48:7;48:9lib/lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$568
;lib/lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$564
;lib/lib_sinint.ml@49:14;49:40
	lw r5,r31,$1088
	lw r6,r31,$568
	lw r7,r31,$564
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$560
;lib/lib_sinint.ml@49:0;49:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@49:7;49:9lib/lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$556
;lib/lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$552
;lib/lib_sinint.ml@50:14;50:40
	lw r5,r31,$1088
	lw r6,r31,$556
	lw r7,r31,$552
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$548
;lib/lib_sinint.ml@50:0;50:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@50:7;50:9lib/lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$544
;lib/lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$540
;lib/lib_sinint.ml@51:14;51:40
	lw r5,r31,$1088
	lw r6,r31,$544
	lw r7,r31,$540
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$536
;lib/lib_sinint.ml@51:0;51:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@51:7;51:9lib/lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$532
;lib/lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$528
;lib/lib_sinint.ml@52:14;52:40
	lw r5,r31,$1088
	lw r6,r31,$532
	lw r7,r31,$528
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$524
;lib/lib_sinint.ml@52:0;52:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@52:7;52:9lib/lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$520
;lib/lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$516
;lib/lib_sinint.ml@53:14;53:40
	lw r5,r31,$1088
	lw r6,r31,$520
	lw r7,r31,$516
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$512
;lib/lib_sinint.ml@53:0;53:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@53:7;53:9lib/lib_sinint.ml@53:14;53:40
	fmovi f1,$3.14159265358979311600
	fst f1,r31,$508
;lib/lib_sinint.ml@55:9;55:35
	li r5,$1
	sw r5,r31,$504
;../../cpuex2017/raytracer/globals.ml@6:29;6:30
	li r5,$0
	sw r5,r31,$500
;../../cpuex2017/raytracer/globals.ml@6:31;6:32
	lw r5,r31,$504
	lw r6,r31,$500
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22692
@emit_label_22691:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22691
@emit_label_22692:
	mov r5,r7
	sw r5,r31,$496
;../../cpuex2017/raytracer/globals.ml@6:16;6:32::=OArrCrt../../cpuex2017/raytracer/globals.ml@6:29;6:30../../cpuex2017/raytracer/globals.ml@6:31;6:32
	li r5,$0
	sw r5,r31,$492
;../../cpuex2017/raytracer/globals.ml@10:27;10:28
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$488
;../../cpuex2017/raytracer/globals.ml@10:29;10:32
	lw r5,r31,$492
	lw r6,r31,$488
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22694
@emit_label_22693:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22693
@emit_label_22694:
	mov r5,r7
	sw r5,r31,$484
;../../cpuex2017/raytracer/globals.ml@10:14;10:32::=OArrCrt../../cpuex2017/raytracer/globals.ml@10:27;10:28../../cpuex2017/raytracer/globals.ml@10:29;10:32
	li r5,$60
	sw r5,r31,$480
;../../cpuex2017/raytracer/globals.ml@11:15;11:17
	li r5,$0
	sw r5,r31,$476
;../../cpuex2017/raytracer/globals.ml@11:28;11:29
	li r5,$0
	sw r5,r31,$472
;../../cpuex2017/raytracer/globals.ml@11:25;11:26
	li r5,$0
	sw r5,r31,$468
;../../cpuex2017/raytracer/globals.ml@11:22;11:23
	li r5,$0
	sw r5,r31,$464
;../../cpuex2017/raytracer/globals.ml@11:19;11:20
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
;../../cpuex2017/raytracer/globals.ml@11:19;11:78
	lw r5,r31,$480
	lw r6,r31,$460
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22696
@emit_label_22695:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22695
@emit_label_22696:
	mov r5,r7
	sw r5,r31,$456
;../../cpuex2017/raytracer/globals.ml@10:2;11:79::=OArrCrt../../cpuex2017/raytracer/globals.ml@11:15;11:17../../cpuex2017/raytracer/globals.ml@11:19;11:78
	li r5,$3
	sw r5,r31,$452
;../../cpuex2017/raytracer/globals.ml@14:26;14:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$448
;../../cpuex2017/raytracer/globals.ml@14:28;14:31
	lw r5,r31,$452
	lw r6,r31,$448
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22698
@emit_label_22697:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22697
@emit_label_22698:
	mov r5,r7
	sw r5,r31,$444
;../../cpuex2017/raytracer/globals.ml@14:13;14:31::=OArrCrt../../cpuex2017/raytracer/globals.ml@14:26;14:27../../cpuex2017/raytracer/globals.ml@14:28;14:31
	li r5,$3
	sw r5,r31,$440
;../../cpuex2017/raytracer/globals.ml@16:29;16:30
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$436
;../../cpuex2017/raytracer/globals.ml@16:31;16:34
	lw r5,r31,$440
	lw r6,r31,$436
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22700
@emit_label_22699:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22699
@emit_label_22700:
	mov r5,r7
	sw r5,r31,$432
;../../cpuex2017/raytracer/globals.ml@16:16;16:34::=OArrCrt../../cpuex2017/raytracer/globals.ml@16:29;16:30../../cpuex2017/raytracer/globals.ml@16:31;16:34
	li r5,$3
	sw r5,r31,$428
;../../cpuex2017/raytracer/globals.ml@18:25;18:26
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$424
;../../cpuex2017/raytracer/globals.ml@18:27;18:30
	lw r5,r31,$428
	lw r6,r31,$424
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22702
@emit_label_22701:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22701
@emit_label_22702:
	mov r5,r7
	sw r5,r31,$420
;../../cpuex2017/raytracer/globals.ml@18:12;18:30::=OArrCrt../../cpuex2017/raytracer/globals.ml@18:25;18:26../../cpuex2017/raytracer/globals.ml@18:27;18:30
	li r5,$1
	sw r5,r31,$416
;../../cpuex2017/raytracer/globals.ml@20:24;20:25
	fmovi f1,$255.00000000000000000000
	fst f1,r31,$412
;../../cpuex2017/raytracer/globals.ml@20:26;20:31
	lw r5,r31,$416
	lw r6,r31,$412
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22704
@emit_label_22703:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22703
@emit_label_22704:
	mov r5,r7
	sw r5,r31,$408
;../../cpuex2017/raytracer/globals.ml@20:11;20:31::=OArrCrt../../cpuex2017/raytracer/globals.ml@20:24;20:25../../cpuex2017/raytracer/globals.ml@20:26;20:31
	li r5,$50
	sw r5,r31,$404
;../../cpuex2017/raytracer/globals.ml@22:27;22:29
	li r5,$1
	sw r5,r31,$400
;../../cpuex2017/raytracer/globals.ml@22:44;22:45
	li r5,$-1
	sw r5,r31,$396
;../../cpuex2017/raytracer/globals.ml@22:47;22:49
	lw r5,r31,$400
	lw r6,r31,$396
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22706
@emit_label_22705:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22705
@emit_label_22706:
	mov r5,r7
	sw r5,r31,$392
;../../cpuex2017/raytracer/globals.ml@22:31;22:50::=OArrCrt../../cpuex2017/raytracer/globals.ml@22:44;22:45../../cpuex2017/raytracer/globals.ml@22:47;22:49
	lw r5,r31,$404
	lw r6,r31,$392
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22708
@emit_label_22707:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22707
@emit_label_22708:
	mov r5,r7
	sw r5,r31,$388
;../../cpuex2017/raytracer/globals.ml@22:14;22:51::=OArrCrt../../cpuex2017/raytracer/globals.ml@22:27;22:29../../cpuex2017/raytracer/globals.ml@22:31;22:50
	li r5,$1
	sw r5,r31,$384
;../../cpuex2017/raytracer/globals.ml@24:26;24:27
	li r5,$1
	sw r5,r31,$380
;../../cpuex2017/raytracer/globals.ml@24:42;24:43
	lw r5,r31,$388
	lw r5,r5,$0
	sw r5,r31,$376
;../../cpuex2017/raytracer/globals.ml@24:45;24:56::=OiArrRead[0]../../cpuex2017/raytracer/globals.ml@22:14;22:51
	lw r5,r31,$380
	lw r6,r31,$376
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22710
@emit_label_22709:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22709
@emit_label_22710:
	mov r5,r7
	sw r5,r31,$372
;../../cpuex2017/raytracer/globals.ml@24:29;24:57::=OArrCrt../../cpuex2017/raytracer/globals.ml@24:42;24:43../../cpuex2017/raytracer/globals.ml@24:45;24:56
	lw r5,r31,$384
	lw r6,r31,$372
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22712
@emit_label_22711:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22711
@emit_label_22712:
	mov r5,r7
	sw r5,r31,$368
;../../cpuex2017/raytracer/globals.ml@24:13;24:58::=OArrCrt../../cpuex2017/raytracer/globals.ml@24:26;24:27../../cpuex2017/raytracer/globals.ml@24:29;24:57
	li r5,$1
	sw r5,r31,$364
;../../cpuex2017/raytracer/globals.ml@28:31;28:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$360
;../../cpuex2017/raytracer/globals.ml@28:33;28:36
	lw r5,r31,$364
	lw r6,r31,$360
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22714
@emit_label_22713:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22713
@emit_label_22714:
	mov r5,r7
	sw r5,r31,$356
;../../cpuex2017/raytracer/globals.ml@28:18;28:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@28:31;28:32../../cpuex2017/raytracer/globals.ml@28:33;28:36
	li r5,$1
	sw r5,r31,$352
;../../cpuex2017/raytracer/globals.ml@30:35;30:36
	li r5,$0
	sw r5,r31,$348
;../../cpuex2017/raytracer/globals.ml@30:37;30:38
	lw r5,r31,$352
	lw r6,r31,$348
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22716
@emit_label_22715:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22715
@emit_label_22716:
	mov r5,r7
	sw r5,r31,$344
;../../cpuex2017/raytracer/globals.ml@30:22;30:38::=OArrCrt../../cpuex2017/raytracer/globals.ml@30:35;30:36../../cpuex2017/raytracer/globals.ml@30:37;30:38
	li r5,$1
	sw r5,r31,$340
;../../cpuex2017/raytracer/globals.ml@32:24;32:25
	fmovi f1,$1000000000.00000000000000000000
	fst f1,r31,$336
;../../cpuex2017/raytracer/globals.ml@32:27;32:39
	lw r5,r31,$340
	lw r6,r31,$336
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22718
@emit_label_22717:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22717
@emit_label_22718:
	mov r5,r7
	sw r5,r31,$332
;../../cpuex2017/raytracer/globals.ml@32:11;32:40::=OArrCrt../../cpuex2017/raytracer/globals.ml@32:24;32:25../../cpuex2017/raytracer/globals.ml@32:27;32:39
	li r5,$3
	sw r5,r31,$328
;../../cpuex2017/raytracer/globals.ml@34:38;34:39
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$324
;../../cpuex2017/raytracer/globals.ml@34:40;34:43
	lw r5,r31,$328
	lw r6,r31,$324
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22720
@emit_label_22719:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22719
@emit_label_22720:
	mov r5,r7
	sw r5,r31,$320
;../../cpuex2017/raytracer/globals.ml@34:25;34:43::=OArrCrt../../cpuex2017/raytracer/globals.ml@34:38;34:39../../cpuex2017/raytracer/globals.ml@34:40;34:43
	li r5,$1
	sw r5,r31,$316
;../../cpuex2017/raytracer/globals.ml@36:41;36:42
	li r5,$0
	sw r5,r31,$312
;../../cpuex2017/raytracer/globals.ml@36:43;36:44
	lw r5,r31,$316
	lw r6,r31,$312
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22722
@emit_label_22721:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22721
@emit_label_22722:
	mov r5,r7
	sw r5,r31,$308
;../../cpuex2017/raytracer/globals.ml@36:28;36:44::=OArrCrt../../cpuex2017/raytracer/globals.ml@36:41;36:42../../cpuex2017/raytracer/globals.ml@36:43;36:44
	li r5,$3
	sw r5,r31,$304
;../../cpuex2017/raytracer/globals.ml@38:27;38:28
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$300
;../../cpuex2017/raytracer/globals.ml@38:29;38:32
	lw r5,r31,$304
	lw r6,r31,$300
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22724
@emit_label_22723:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22723
@emit_label_22724:
	mov r5,r7
	sw r5,r31,$296
;../../cpuex2017/raytracer/globals.ml@38:14;38:32::=OArrCrt../../cpuex2017/raytracer/globals.ml@38:27;38:28../../cpuex2017/raytracer/globals.ml@38:29;38:32
	li r5,$3
	sw r5,r31,$292
;../../cpuex2017/raytracer/globals.ml@40:33;40:34
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$288
;../../cpuex2017/raytracer/globals.ml@40:35;40:38
	lw r5,r31,$292
	lw r6,r31,$288
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22726
@emit_label_22725:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22725
@emit_label_22726:
	mov r5,r7
	sw r5,r31,$284
;../../cpuex2017/raytracer/globals.ml@40:20;40:38::=OArrCrt../../cpuex2017/raytracer/globals.ml@40:33;40:34../../cpuex2017/raytracer/globals.ml@40:35;40:38
	li r5,$3
	sw r5,r31,$280
;../../cpuex2017/raytracer/globals.ml@43:31;43:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$276
;../../cpuex2017/raytracer/globals.ml@43:33;43:36
	lw r5,r31,$280
	lw r6,r31,$276
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22728
@emit_label_22727:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22727
@emit_label_22728:
	mov r5,r7
	sw r5,r31,$272
;../../cpuex2017/raytracer/globals.ml@43:18;43:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@43:31;43:32../../cpuex2017/raytracer/globals.ml@43:33;43:36
	li r5,$3
	sw r5,r31,$268
;../../cpuex2017/raytracer/globals.ml@45:23;45:24
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$264
;../../cpuex2017/raytracer/globals.ml@45:25;45:28
	lw r5,r31,$268
	lw r6,r31,$264
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22730
@emit_label_22729:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22729
@emit_label_22730:
	mov r5,r7
	sw r5,r31,$260
;../../cpuex2017/raytracer/globals.ml@45:10;45:28::=OArrCrt../../cpuex2017/raytracer/globals.ml@45:23;45:24../../cpuex2017/raytracer/globals.ml@45:25;45:28
	li r5,$2
	sw r5,r31,$256
;../../cpuex2017/raytracer/globals.ml@48:30;48:31
	li r5,$0
	sw r5,r31,$252
;../../cpuex2017/raytracer/globals.ml@48:32;48:33
	lw r5,r31,$256
	lw r6,r31,$252
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22732
@emit_label_22731:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22731
@emit_label_22732:
	mov r5,r7
	sw r5,r31,$248
;../../cpuex2017/raytracer/globals.ml@48:17;48:33::=OArrCrt../../cpuex2017/raytracer/globals.ml@48:30;48:31../../cpuex2017/raytracer/globals.ml@48:32;48:33
	li r5,$2
	sw r5,r31,$244
;../../cpuex2017/raytracer/globals.ml@50:32;50:33
	li r5,$0
	sw r5,r31,$240
;../../cpuex2017/raytracer/globals.ml@50:34;50:35
	lw r5,r31,$244
	lw r6,r31,$240
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22734
@emit_label_22733:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22733
@emit_label_22734:
	mov r5,r7
	sw r5,r31,$236
;../../cpuex2017/raytracer/globals.ml@50:19;50:35::=OArrCrt../../cpuex2017/raytracer/globals.ml@50:32;50:33../../cpuex2017/raytracer/globals.ml@50:34;50:35
	li r5,$1
	sw r5,r31,$232
;../../cpuex2017/raytracer/globals.ml@52:30;52:31
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$228
;../../cpuex2017/raytracer/globals.ml@52:32;52:35
	lw r5,r31,$232
	lw r6,r31,$228
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22736
@emit_label_22735:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22735
@emit_label_22736:
	mov r5,r7
	sw r5,r31,$224
;../../cpuex2017/raytracer/globals.ml@52:17;52:35::=OArrCrt../../cpuex2017/raytracer/globals.ml@52:30;52:31../../cpuex2017/raytracer/globals.ml@52:32;52:35
	li r5,$3
	sw r5,r31,$220
;../../cpuex2017/raytracer/globals.ml@55:26;55:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$216
;../../cpuex2017/raytracer/globals.ml@55:28;55:31
	lw r5,r31,$220
	lw r6,r31,$216
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22738
@emit_label_22737:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22737
@emit_label_22738:
	mov r5,r7
	sw r5,r31,$212
;../../cpuex2017/raytracer/globals.ml@55:13;55:31::=OArrCrt../../cpuex2017/raytracer/globals.ml@55:26;55:27../../cpuex2017/raytracer/globals.ml@55:28;55:31
	li r5,$3
	sw r5,r31,$208
;../../cpuex2017/raytracer/globals.ml@57:31;57:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$204
;../../cpuex2017/raytracer/globals.ml@57:33;57:36
	lw r5,r31,$208
	lw r6,r31,$204
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22740
@emit_label_22739:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22739
@emit_label_22740:
	mov r5,r7
	sw r5,r31,$200
;../../cpuex2017/raytracer/globals.ml@57:18;57:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@57:31;57:32../../cpuex2017/raytracer/globals.ml@57:33;57:36
	li r5,$3
	sw r5,r31,$196
;../../cpuex2017/raytracer/globals.ml@60:31;60:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$192
;../../cpuex2017/raytracer/globals.ml@60:33;60:36
	lw r5,r31,$196
	lw r6,r31,$192
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22742
@emit_label_22741:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22741
@emit_label_22742:
	mov r5,r7
	sw r5,r31,$188
;../../cpuex2017/raytracer/globals.ml@60:18;60:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@60:31;60:32../../cpuex2017/raytracer/globals.ml@60:33;60:36
	li r5,$3
	sw r5,r31,$184
;../../cpuex2017/raytracer/globals.ml@61:31;61:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$180
;../../cpuex2017/raytracer/globals.ml@61:33;61:36
	lw r5,r31,$184
	lw r6,r31,$180
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22744
@emit_label_22743:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22743
@emit_label_22744:
	mov r5,r7
	sw r5,r31,$176
;../../cpuex2017/raytracer/globals.ml@61:18;61:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@61:31;61:32../../cpuex2017/raytracer/globals.ml@61:33;61:36
	li r5,$3
	sw r5,r31,$172
;../../cpuex2017/raytracer/globals.ml@62:31;62:32
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$168
;../../cpuex2017/raytracer/globals.ml@62:33;62:36
	lw r5,r31,$172
	lw r6,r31,$168
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22746
@emit_label_22745:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22745
@emit_label_22746:
	mov r5,r7
	sw r5,r31,$164
;../../cpuex2017/raytracer/globals.ml@62:18;62:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@62:31;62:32../../cpuex2017/raytracer/globals.ml@62:33;62:36
	li r5,$3
	sw r5,r31,$160
;../../cpuex2017/raytracer/globals.ml@65:34;65:35
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$156
;../../cpuex2017/raytracer/globals.ml@65:36;65:39
	lw r5,r31,$160
	lw r6,r31,$156
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22748
@emit_label_22747:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22747
@emit_label_22748:
	mov r5,r7
	sw r5,r31,$152
;../../cpuex2017/raytracer/globals.ml@65:21;65:39::=OArrCrt../../cpuex2017/raytracer/globals.ml@65:34;65:35../../cpuex2017/raytracer/globals.ml@65:36;65:39
	li r5,$0
	sw r5,r31,$148
;../../cpuex2017/raytracer/globals.ml@69:28;69:29
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$144
;../../cpuex2017/raytracer/globals.ml@69:30;69:33
	lw r5,r31,$148
	lw r6,r31,$144
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22750
@emit_label_22749:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22749
@emit_label_22750:
	mov r5,r7
	sw r5,r31,$140
;../../cpuex2017/raytracer/globals.ml@69:15;69:33::=OArrCrt../../cpuex2017/raytracer/globals.ml@69:28;69:29../../cpuex2017/raytracer/globals.ml@69:30;69:33
	li r5,$0
	sw r5,r31,$136
;../../cpuex2017/raytracer/globals.ml@70:29;70:30
	lw r5,r31,$136
	lw r6,r31,$140
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22752
@emit_label_22751:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22751
@emit_label_22752:
	mov r5,r7
	sw r5,r31,$132
;../../cpuex2017/raytracer/globals.ml@70:16;70:37::=OArrCrt../../cpuex2017/raytracer/globals.ml@70:29;70:30../../cpuex2017/raytracer/globals.ml@69:15;69:33
	li r5,$0
	sw r5,r31,$128
;../../cpuex2017/raytracer/globals.ml@71:30;71:31
	mov r6,r3
	lw r5,r31,$140
	sw r5,r3,$0
	lw r5,r31,$132
	sw r5,r3,$4
	addi r3,r3,$8
	sw r6,r31,$124
;../../cpuex2017/raytracer/globals.ml@71:33;71:48
	lw r5,r31,$128
	lw r6,r31,$124
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22754
@emit_label_22753:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22753
@emit_label_22754:
	mov r5,r7
	sw r5,r31,$120
;../../cpuex2017/raytracer/globals.ml@71:17;71:49::=OArrCrt../../cpuex2017/raytracer/globals.ml@71:30;71:31../../cpuex2017/raytracer/globals.ml@71:33;71:48
	li r5,$5
	sw r5,r31,$116
;../../cpuex2017/raytracer/globals.ml@72:15;72:16
	lw r5,r31,$116
	lw r6,r31,$120
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22756
@emit_label_22755:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22755
@emit_label_22756:
	mov r5,r7
	sw r5,r31,$112
;../../cpuex2017/raytracer/globals.ml@69:2;72:25::=OArrCrt../../cpuex2017/raytracer/globals.ml@72:15;72:16../../cpuex2017/raytracer/globals.ml@71:17;71:49
	li r5,$0
	sw r5,r31,$108
;../../cpuex2017/raytracer/globals.ml@76:29;76:30
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$104
;../../cpuex2017/raytracer/globals.ml@76:31;76:34
	lw r5,r31,$108
	lw r6,r31,$104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22758
@emit_label_22757:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22757
@emit_label_22758:
	mov r5,r7
	sw r5,r31,$100
;../../cpuex2017/raytracer/globals.ml@76:16;76:34::=OArrCrt../../cpuex2017/raytracer/globals.ml@76:29;76:30../../cpuex2017/raytracer/globals.ml@76:31;76:34
	li r5,$3
	sw r5,r31,$96
;../../cpuex2017/raytracer/globals.ml@77:24;77:25
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$92
;../../cpuex2017/raytracer/globals.ml@77:26;77:29
	lw r5,r31,$96
	lw r6,r31,$92
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22760
@emit_label_22759:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22759
@emit_label_22760:
	mov r5,r7
	sw r5,r31,$88
;../../cpuex2017/raytracer/globals.ml@77:11;77:29::=OArrCrt../../cpuex2017/raytracer/globals.ml@77:24;77:25../../cpuex2017/raytracer/globals.ml@77:26;77:29
	li r5,$60
	sw r5,r31,$84
;../../cpuex2017/raytracer/globals.ml@78:28;78:30
	lw r5,r31,$84
	lw r6,r31,$100
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22762
@emit_label_22761:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22761
@emit_label_22762:
	mov r5,r7
	sw r5,r31,$80
;../../cpuex2017/raytracer/globals.ml@78:15;78:38::=OArrCrt../../cpuex2017/raytracer/globals.ml@78:28;78:30../../cpuex2017/raytracer/globals.ml@76:16;76:34
	mov r6,r3
	lw r5,r31,$88
	sw r5,r3,$0
	lw r5,r31,$80
	sw r5,r3,$4
	addi r3,r3,$8
	sw r6,r31,$76
;../../cpuex2017/raytracer/globals.ml@76:2;79:14
	li r5,$0
	sw r5,r31,$72
;../../cpuex2017/raytracer/globals.ml@83:29;83:30
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$68
;../../cpuex2017/raytracer/globals.ml@83:31;83:34
	lw r5,r31,$72
	lw r6,r31,$68
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22764
@emit_label_22763:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22763
@emit_label_22764:
	mov r5,r7
	sw r5,r31,$64
;../../cpuex2017/raytracer/globals.ml@83:16;83:34::=OArrCrt../../cpuex2017/raytracer/globals.ml@83:29;83:30../../cpuex2017/raytracer/globals.ml@83:31;83:34
	li r5,$0
	sw r5,r31,$60
;../../cpuex2017/raytracer/globals.ml@84:30;84:31
	lw r5,r31,$60
	lw r6,r31,$64
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22766
@emit_label_22765:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22765
@emit_label_22766:
	mov r5,r7
	sw r5,r31,$56
;../../cpuex2017/raytracer/globals.ml@84:17;84:39::=OArrCrt../../cpuex2017/raytracer/globals.ml@84:30;84:31../../cpuex2017/raytracer/globals.ml@83:16;83:34
	mov r6,r3
	lw r5,r31,$64
	sw r5,r3,$0
	lw r5,r31,$56
	sw r5,r3,$4
	addi r3,r3,$8
	sw r6,r31,$52
;../../cpuex2017/raytracer/globals.ml@85:17;85:34
	li r5,$180
	sw r5,r31,$48
;../../cpuex2017/raytracer/globals.ml@86:15;86:18
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$44
;../../cpuex2017/raytracer/globals.ml@86:32;86:35
	li r5,$0
	sw r5,r31,$40
;../../cpuex2017/raytracer/globals.ml@86:20;86:21
	mov r6,r3
	lw r5,r31,$40
	sw r5,r3,$0
	lw r5,r31,$52
	sw r5,r3,$4
	lw r5,r31,$44
	sw r5,r3,$8
	addi r3,r3,$12
	sw r6,r31,$36
;../../cpuex2017/raytracer/globals.ml@86:20;86:35
	lw r5,r31,$48
	lw r6,r31,$36
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22768
@emit_label_22767:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22767
@emit_label_22768:
	mov r5,r7
	sw r5,r31,$32
;../../cpuex2017/raytracer/globals.ml@83:2;86:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@86:15;86:18../../cpuex2017/raytracer/globals.ml@86:20;86:35
	li r5,$1
	sw r5,r31,$28
;../../cpuex2017/raytracer/globals.ml@90:33;90:34
	li r5,$0
	sw r5,r31,$24
;../../cpuex2017/raytracer/globals.ml@90:35;90:36
	lw r5,r31,$28
	lw r6,r31,$24
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_22770
@emit_label_22769:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_22769
@emit_label_22770:
	mov r5,r7
	sw r5,r31,$20
;../../cpuex2017/raytracer/globals.ml@90:20;90:36::=OArrCrt../../cpuex2017/raytracer/globals.ml@90:33;90:34../../cpuex2017/raytracer/globals.ml@90:35;90:36
	li r5,$1
	sw r5,r31,$16
;../../cpuex2017/raytracer/min-rt.ml@14:23;14:24
	li r5,$0
	sw r5,r31,$12
;../../cpuex2017/raytracer/min-rt.ml@15:24;15:25
	li r5,$128
	sw r5,r31,$8
;../../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14
	li r5,$128
	sw r5,r31,$4
;../../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	lw r10,r31,$8
;../../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14::<=../../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14
	lw r11,r31,$4
;../../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18::<=../../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18
	jal @a_9049rt
	sw r9,r31,$0
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;../../cpuex2017/raytracer/min-rt.ml@2308:8;2308:18../../cpuex2017/raytracer/min-rt.ml@2308:8;2308:10
	li r10,$0
;@0:-1;0:-1
	hlt 
