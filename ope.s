
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


@a_2414f:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$16
	mov r10,r10
	mov r11,r11
	mov r12,r12
@cfg_label_3576:
@cfg_label_3575:
@cfg_label_3556:
	addi r13,r10,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@109:2;111:42
	slt r5,r13,r11
	bne r0,r5,@cfg_label_3571
	j @cfg_label_3570
	j @cfg_label_3572
	j @cfg_label_3573
@cfg_label_3572:
@cfg_label_3570:
	mov r5,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3573:
@cfg_label_3571:
	add r14,r10,r11
;lib_sinint.ml@110:11;110:14::=Oaddlib_sinint.ml@109:2;111:42lib_sinint.ml@109:2;111:42
	slti r6,r14,$0
	add r13,r14,r6
	sra r13,r13,$1
;lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r13
	sll r6,r6,$1
	mov r14,r6
;lib_sinint.ml@111:5;111:11::=Oimul[10]lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_3564
	j @cfg_label_3563
	j @cfg_label_3565
	j @cfg_label_3566
@cfg_label_3565:
@cfg_label_3563:
	mov r14,r13
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r13,r11
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r15,r12
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r10,r14
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r11,r13
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r12,r15
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	j @cfg_label_3556
	j @cfg_label_3576
@cfg_label_3566:
@cfg_label_3564:
	mov r11,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r14,r13
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r13,r12
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r10,r11
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r11,r14
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r12,r13
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	j @cfg_label_3556
	j @cfg_label_3575
@a_1684divten:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$16
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r8,r10
@cfg_label_3541:
	li r10,$0
;lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_3552
	j @cfg_label_3551
	j @cfg_label_3553
	j @cfg_label_3554
@cfg_label_3553:
@cfg_label_3551:
	li r9,$0
;lib_sinint.ml@108:1;115:25
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3554:
@cfg_label_3552:
	li r10,$0
;lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_3547
	j @cfg_label_3546
	j @cfg_label_3548
@cfg_label_3547:
	li r9,$0
;lib_sinint.ml@115:12;115:13
	sub r20,r0,r8
;lib_sinint.ml@115:15;115:17::=Ominuslib_sinint.ml@108:1;115:25
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r9
;lib_sinint.ml@115:12;115:13::<=lib_sinint.ml@115:12;115:13
	mov r11,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	mov r12,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	jal @a_2414f
	mov r8,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@115:10;115:23lib_sinint.ml@114:17;114:18
	sub r9,r0,r8
;lib_sinint.ml@108:1;115:25::=Ominuslib_sinint.ml@115:10;115:23
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3548:
@cfg_label_3546:
	li r20,$0
;lib_sinint.ml@114:19;114:20
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib_sinint.ml@114:19;114:20::<=lib_sinint.ml@114:19;114:20
	mov r11,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	mov r12,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	jal @a_2414f
	mov r9,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@108:1;115:25lib_sinint.ml@114:17;114:18
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_2367print_int_base:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$28
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r8,r10
@cfg_label_3524:
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_3537
	j @cfg_label_3536
	j @cfg_label_3538
@cfg_label_3537:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_3532
	j @cfg_label_3531
	j @cfg_label_3533
	j @cfg_label_3534
@cfg_label_3533:
@cfg_label_3531:
;lib_sinint.ml@121:2;124:29
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3534:
@cfg_label_3532:
	addi r9,r8,$48
;lib_sinint.ml@121:44;121:48::=Oiadd[48]lib_sinint.ml@121:2;124:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@121:44;121:48::<=lib_sinint.ml@121:44;121:48
	jal print_char
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@121:2;124:29lib_sinint.ml@124:3;124:13
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3538:
@cfg_label_3536:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@121:2;124:29::<=lib_sinint.ml@121:2;124:29
	jal @a_1684divten
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@122:13;122:21lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@122:13;122:21::<=lib_sinint.ml@122:13;122:21
	jal @a_2367print_int_base
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@123:4;123:21lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	mov r10,r6
;lib_sinint.ml@124:18;124:23::=Oimul[10]lib_sinint.ml@122:13;122:21
	sub r11,r8,r10
;lib_sinint.ml@124:16;124:23::=Osublib_sinint.ml@121:2;124:29lib_sinint.ml@124:18;124:23
	addi r8,r11,$48
;lib_sinint.ml@124:15;124:27::=Oiadd[48]lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@124:15;124:27::<=lib_sinint.ml@124:15;124:27
	jal print_char
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@121:2;124:29lib_sinint.ml@124:3;124:13
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$28
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_1686print_int:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$20
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r8,r10
@cfg_label_3508:
	li r10,$0
;lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_3520
	j @cfg_label_3519
	j @cfg_label_3521
@cfg_label_3520:
	li r10,$0
;lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_3515
	j @cfg_label_3514
	j @cfg_label_3516
	j @cfg_label_3517
@cfg_label_3516:
@cfg_label_3514:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@118:1;127:79::<=lib_sinint.ml@118:1;127:79
	jal @a_2367print_int_base
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@127:62;127:76
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3517:
@cfg_label_3515:
	li r20,$45
;lib_sinint.ml@127:32;127:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib_sinint.ml@127:32;127:34::<=lib_sinint.ml@127:32;127:34
	jal print_char
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@127:21;127:34lib_sinint.ml@126:15;126:25
	li r10,$0
;lib_sinint.ml@127:52;127:53
	sub r9,r10,r8
;lib_sinint.ml@127:52;127:55::=Osublib_sinint.ml@127:52;127:53lib_sinint.ml@118:1;127:79
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@127:52;127:55::<=lib_sinint.ml@127:52;127:55
	jal @a_2367print_int_base
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@127:62;127:76
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_3521:
@cfg_label_3519:
	li r8,$48
;lib_sinint.ml@126:26;126:28
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@126:26;126:28::<=lib_sinint.ml@126:26;126:28
	jal print_char
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@126:15;126:25
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$20
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
main:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	mov r31,r3
	addi r3,r3,$1652
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$1676
@cfg_label_2964:
	li r5,$24
	sw r5,r31,$1648
;lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$1644
;lib_sinint.ml@1:28;1:31
	lw r5,r31,$1648
	lw r6,r31,$1644
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_3578
@emit_label_3577:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_3577
@emit_label_3578:
	mov r5,r7
	sw r5,r31,$1640
;lib_sinint.ml@1:12;1:31::=OArrCrtlib_sinint.ml@1:25;1:27lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$1636
;lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$1632
;lib_sinint.ml@2:28;2:31
	lw r5,r31,$1636
	lw r6,r31,$1632
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_3580
@emit_label_3579:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_3579
@emit_label_3580:
	mov r5,r7
	sw r5,r31,$1628
;lib_sinint.ml@2:12;2:31::=OArrCrtlib_sinint.ml@2:25;2:27lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$1624
;lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$1620
;lib_sinint.ml@5:13;5:16
	lw r5,r31,$1640
	lw r6,r31,$1624
	lw r7,r31,$1620
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1616
;lib_sinint.ml@5:0;5:16::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@5:7;5:8lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$1612
;lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$1608
;lib_sinint.ml@6:13;6:16
	lw r5,r31,$1640
	lw r6,r31,$1612
	lw r7,r31,$1608
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1604
;lib_sinint.ml@6:0;6:16::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@6:7;6:8lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$1600
;lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$1596
;lib_sinint.ml@7:13;7:17
	lw r5,r31,$1640
	lw r6,r31,$1600
	lw r7,r31,$1596
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1592
;lib_sinint.ml@7:0;7:17::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@7:7;7:8lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$1588
;lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$1584
;lib_sinint.ml@8:13;8:18
	lw r5,r31,$1640
	lw r6,r31,$1588
	lw r7,r31,$1584
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1580
;lib_sinint.ml@8:0;8:18::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@8:7;8:8lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$1576
;lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$1572
;lib_sinint.ml@9:13;9:19
	lw r5,r31,$1640
	lw r6,r31,$1576
	lw r7,r31,$1572
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1568
;lib_sinint.ml@9:0;9:19::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@9:7;9:8lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$1564
;lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$1560
;lib_sinint.ml@10:13;10:20
	lw r5,r31,$1640
	lw r6,r31,$1564
	lw r7,r31,$1560
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1556
;lib_sinint.ml@10:0;10:20::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@10:7;10:8lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$1552
;lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$1548
;lib_sinint.ml@11:13;11:21
	lw r5,r31,$1640
	lw r6,r31,$1552
	lw r7,r31,$1548
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1544
;lib_sinint.ml@11:0;11:21::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@11:7;11:8lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$1540
;lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$1536
;lib_sinint.ml@12:13;12:22
	lw r5,r31,$1640
	lw r6,r31,$1540
	lw r7,r31,$1536
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1532
;lib_sinint.ml@12:0;12:22::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@12:7;12:8lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$1528
;lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$1524
;lib_sinint.ml@13:13;13:23
	lw r5,r31,$1640
	lw r6,r31,$1528
	lw r7,r31,$1524
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1520
;lib_sinint.ml@13:0;13:23::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@13:7;13:8lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$1516
;lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$1512
;lib_sinint.ml@14:13;14:24
	lw r5,r31,$1640
	lw r6,r31,$1516
	lw r7,r31,$1512
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1508
;lib_sinint.ml@14:0;14:24::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@14:7;14:8lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$1504
;lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$1500
;lib_sinint.ml@15:14;15:26
	lw r5,r31,$1640
	lw r6,r31,$1504
	lw r7,r31,$1500
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1496
;lib_sinint.ml@15:0;15:26::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@15:7;15:9lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$1492
;lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$1488
;lib_sinint.ml@16:14;16:27
	lw r5,r31,$1640
	lw r6,r31,$1492
	lw r7,r31,$1488
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1484
;lib_sinint.ml@16:0;16:27::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@16:7;16:9lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$1480
;lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$1476
;lib_sinint.ml@17:14;17:28
	lw r5,r31,$1640
	lw r6,r31,$1480
	lw r7,r31,$1476
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1472
;lib_sinint.ml@17:0;17:28::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@17:7;17:9lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$1468
;lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$1464
;lib_sinint.ml@18:14;18:29
	lw r5,r31,$1640
	lw r6,r31,$1468
	lw r7,r31,$1464
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1460
;lib_sinint.ml@18:0;18:29::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@18:7;18:9lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$1456
;lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$1452
;lib_sinint.ml@19:14;19:30
	lw r5,r31,$1640
	lw r6,r31,$1456
	lw r7,r31,$1452
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1448
;lib_sinint.ml@19:0;19:30::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@19:7;19:9lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$1444
;lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$1440
;lib_sinint.ml@20:14;20:31
	lw r5,r31,$1640
	lw r6,r31,$1444
	lw r7,r31,$1440
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1436
;lib_sinint.ml@20:0;20:31::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@20:7;20:9lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$1432
;lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$1428
;lib_sinint.ml@21:14;21:32
	lw r5,r31,$1640
	lw r6,r31,$1432
	lw r7,r31,$1428
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1424
;lib_sinint.ml@21:0;21:32::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@21:7;21:9lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$1420
;lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$1416
;lib_sinint.ml@22:14;22:33
	lw r5,r31,$1640
	lw r6,r31,$1420
	lw r7,r31,$1416
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1412
;lib_sinint.ml@22:0;22:33::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@22:7;22:9lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$1408
;lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$1404
;lib_sinint.ml@23:14;23:34
	lw r5,r31,$1640
	lw r6,r31,$1408
	lw r7,r31,$1404
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1400
;lib_sinint.ml@23:0;23:34::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@23:7;23:9lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$1396
;lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$1392
;lib_sinint.ml@24:14;24:35
	lw r5,r31,$1640
	lw r6,r31,$1396
	lw r7,r31,$1392
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1388
;lib_sinint.ml@24:0;24:35::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@24:7;24:9lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$1384
;lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$1380
;lib_sinint.ml@25:14;25:36
	lw r5,r31,$1640
	lw r6,r31,$1384
	lw r7,r31,$1380
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1376
;lib_sinint.ml@25:0;25:36::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@25:7;25:9lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$1372
;lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$1368
;lib_sinint.ml@26:14;26:37
	lw r5,r31,$1640
	lw r6,r31,$1372
	lw r7,r31,$1368
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1364
;lib_sinint.ml@26:0;26:37::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@26:7;26:9lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$1360
;lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$1356
;lib_sinint.ml@27:14;27:38
	lw r5,r31,$1640
	lw r6,r31,$1360
	lw r7,r31,$1356
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1352
;lib_sinint.ml@27:0;27:38::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@27:7;27:9lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$1348
;lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$1344
;lib_sinint.ml@28:14;28:39
	lw r5,r31,$1640
	lw r6,r31,$1348
	lw r7,r31,$1344
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1340
;lib_sinint.ml@28:0;28:39::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@28:7;28:9lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$1336
;lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$1332
;lib_sinint.ml@30:13;30:39
	lw r5,r31,$1628
	lw r6,r31,$1336
	lw r7,r31,$1332
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1328
;lib_sinint.ml@30:0;30:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@30:7;30:8lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$1324
;lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$1320
;lib_sinint.ml@31:13;31:39
	lw r5,r31,$1628
	lw r6,r31,$1324
	lw r7,r31,$1320
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1316
;lib_sinint.ml@31:0;31:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@31:7;31:8lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$1312
;lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$1308
;lib_sinint.ml@32:13;32:39
	lw r5,r31,$1628
	lw r6,r31,$1312
	lw r7,r31,$1308
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1304
;lib_sinint.ml@32:0;32:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@32:7;32:8lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$1300
;lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$1296
;lib_sinint.ml@33:13;33:39
	lw r5,r31,$1628
	lw r6,r31,$1300
	lw r7,r31,$1296
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1292
;lib_sinint.ml@33:0;33:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@33:7;33:8lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$1288
;lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$1284
;lib_sinint.ml@34:13;34:39
	lw r5,r31,$1628
	lw r6,r31,$1288
	lw r7,r31,$1284
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1280
;lib_sinint.ml@34:0;34:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@34:7;34:8lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$1276
;lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$1272
;lib_sinint.ml@35:13;35:39
	lw r5,r31,$1628
	lw r6,r31,$1276
	lw r7,r31,$1272
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1268
;lib_sinint.ml@35:0;35:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@35:7;35:8lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$1264
;lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$1260
;lib_sinint.ml@36:13;36:39
	lw r5,r31,$1628
	lw r6,r31,$1264
	lw r7,r31,$1260
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1256
;lib_sinint.ml@36:0;36:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@36:7;36:8lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$1252
;lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$1248
;lib_sinint.ml@37:13;37:39
	lw r5,r31,$1628
	lw r6,r31,$1252
	lw r7,r31,$1248
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1244
;lib_sinint.ml@37:0;37:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@37:7;37:8lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$1240
;lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$1236
;lib_sinint.ml@38:13;38:39
	lw r5,r31,$1628
	lw r6,r31,$1240
	lw r7,r31,$1236
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1232
;lib_sinint.ml@38:0;38:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@38:7;38:8lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$1228
;lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$1224
;lib_sinint.ml@39:13;39:39
	lw r5,r31,$1628
	lw r6,r31,$1228
	lw r7,r31,$1224
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1220
;lib_sinint.ml@39:0;39:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@39:7;39:8lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$1216
;lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$1212
;lib_sinint.ml@40:14;40:40
	lw r5,r31,$1628
	lw r6,r31,$1216
	lw r7,r31,$1212
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1208
;lib_sinint.ml@40:0;40:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@40:7;40:9lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$1204
;lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$1200
;lib_sinint.ml@41:14;41:40
	lw r5,r31,$1628
	lw r6,r31,$1204
	lw r7,r31,$1200
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1196
;lib_sinint.ml@41:0;41:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@41:7;41:9lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$1192
;lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$1188
;lib_sinint.ml@42:14;42:40
	lw r5,r31,$1628
	lw r6,r31,$1192
	lw r7,r31,$1188
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1184
;lib_sinint.ml@42:0;42:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@42:7;42:9lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$1180
;lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$1176
;lib_sinint.ml@43:14;43:40
	lw r5,r31,$1628
	lw r6,r31,$1180
	lw r7,r31,$1176
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1172
;lib_sinint.ml@43:0;43:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@43:7;43:9lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$1168
;lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$1164
;lib_sinint.ml@44:14;44:40
	lw r5,r31,$1628
	lw r6,r31,$1168
	lw r7,r31,$1164
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1160
;lib_sinint.ml@44:0;44:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@44:7;44:9lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$1156
;lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$1152
;lib_sinint.ml@45:14;45:40
	lw r5,r31,$1628
	lw r6,r31,$1156
	lw r7,r31,$1152
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1148
;lib_sinint.ml@45:0;45:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@45:7;45:9lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$1144
;lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$1140
;lib_sinint.ml@46:14;46:40
	lw r5,r31,$1628
	lw r6,r31,$1144
	lw r7,r31,$1140
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1136
;lib_sinint.ml@46:0;46:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@46:7;46:9lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$1132
;lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$1128
;lib_sinint.ml@47:14;47:40
	lw r5,r31,$1628
	lw r6,r31,$1132
	lw r7,r31,$1128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1124
;lib_sinint.ml@47:0;47:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@47:7;47:9lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$1120
;lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$1116
;lib_sinint.ml@48:14;48:40
	lw r5,r31,$1628
	lw r6,r31,$1120
	lw r7,r31,$1116
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1112
;lib_sinint.ml@48:0;48:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@48:7;48:9lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$1108
;lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$1104
;lib_sinint.ml@49:14;49:40
	lw r5,r31,$1628
	lw r6,r31,$1108
	lw r7,r31,$1104
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1100
;lib_sinint.ml@49:0;49:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@49:7;49:9lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$1096
;lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$1092
;lib_sinint.ml@50:14;50:40
	lw r5,r31,$1628
	lw r6,r31,$1096
	lw r7,r31,$1092
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1088
;lib_sinint.ml@50:0;50:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@50:7;50:9lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$1084
;lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$1080
;lib_sinint.ml@51:14;51:40
	lw r5,r31,$1628
	lw r6,r31,$1084
	lw r7,r31,$1080
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1076
;lib_sinint.ml@51:0;51:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@51:7;51:9lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$1072
;lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$1068
;lib_sinint.ml@52:14;52:40
	lw r5,r31,$1628
	lw r6,r31,$1072
	lw r7,r31,$1068
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1064
;lib_sinint.ml@52:0;52:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@52:7;52:9lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$1060
;lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$1056
;lib_sinint.ml@53:14;53:40
	lw r5,r31,$1628
	lw r6,r31,$1060
	lw r7,r31,$1056
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1052
;lib_sinint.ml@53:0;53:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@53:7;53:9lib_sinint.ml@53:14;53:40
;../sims/test/operator.ml@1:30;1:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$1044
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@1:19;1:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$1040
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@1:44;1:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$1044
	fld f2,r31,$1040
	fadd f1,f1,f2
	fst f1,r31,$1036
;../sims/test/operator.ml@1:77;1:83::=Ofadd../sims/test/operator.ml@1:19;1:32../sims/test/operator.ml@1:44;1:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$1032
;../sims/test/operator.ml@1:88;1:94
	fld f1,r31,$1036
	fld f2,r31,$1032
	fmul f1,f1,f2
	fst f1,r31,$1028
;../sims/test/operator.ml@1:76;1:94::=Ofmul../sims/test/operator.ml@1:77;1:83../sims/test/operator.ml@1:88;1:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$1028
;../sims/test/operator.ml@1:76;1:94::<=../sims/test/operator.ml@1:76;1:94
	jal int_of_float
	sw r5,r31,$1024
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@1:11;1:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1024
;../sims/test/operator.ml@1:11;1:96::<=../sims/test/operator.ml@1:11;1:96
	jal @a_1686print_int
	sw r5,r31,$1020
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@1:0;1:97../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$1016
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@2:19;2:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$1012
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@2:44;2:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$1016
	fld f2,r31,$1012
	fadd f1,f1,f2
	fst f1,r31,$1008
;../sims/test/operator.ml@2:77;2:83::=Ofadd../sims/test/operator.ml@2:19;2:32../sims/test/operator.ml@2:44;2:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$1004
;../sims/test/operator.ml@2:88;2:94
	fld f1,r31,$1008
	fld f2,r31,$1004
	fmul f1,f1,f2
	fst f1,r31,$1000
;../sims/test/operator.ml@2:76;2:94::=Ofmul../sims/test/operator.ml@2:77;2:83../sims/test/operator.ml@2:88;2:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$1000
;../sims/test/operator.ml@2:76;2:94::<=../sims/test/operator.ml@2:76;2:94
	jal int_of_float
	sw r5,r31,$996
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@2:11;2:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$996
;../sims/test/operator.ml@2:11;2:96::<=../sims/test/operator.ml@2:11;2:96
	jal @a_1686print_int
	sw r5,r31,$992
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@2:0;2:97../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$988
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@3:19;3:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$984
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@3:44;3:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$988
	fld f2,r31,$984
	fadd f1,f1,f2
	fst f1,r31,$980
;../sims/test/operator.ml@3:77;3:83::=Ofadd../sims/test/operator.ml@3:19;3:32../sims/test/operator.ml@3:44;3:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$976
;../sims/test/operator.ml@3:88;3:94
	fld f1,r31,$980
	fld f2,r31,$976
	fmul f1,f1,f2
	fst f1,r31,$972
;../sims/test/operator.ml@3:76;3:94::=Ofmul../sims/test/operator.ml@3:77;3:83../sims/test/operator.ml@3:88;3:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$972
;../sims/test/operator.ml@3:76;3:94::<=../sims/test/operator.ml@3:76;3:94
	jal int_of_float
	sw r5,r31,$968
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@3:11;3:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$968
;../sims/test/operator.ml@3:11;3:96::<=../sims/test/operator.ml@3:11;3:96
	jal @a_1686print_int
	sw r5,r31,$964
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@3:0;3:97../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$960
;../sims/test/operator.ml@4:11;4:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$960
;../sims/test/operator.ml@4:11;4:13::<=../sims/test/operator.ml@4:11;4:13
	jal print_char
	sw r5,r31,$956
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@4:0;4:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$952
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@6:19;6:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$948
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@6:44;6:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$952
	fld f2,r31,$948
	fsub f1,f1,f2
	fst f1,r31,$944
;../sims/test/operator.ml@6:77;6:83::=Ofsub../sims/test/operator.ml@6:19;6:32../sims/test/operator.ml@6:44;6:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$940
;../sims/test/operator.ml@6:88;6:94
	fld f1,r31,$944
	fld f2,r31,$940
	fmul f1,f1,f2
	fst f1,r31,$936
;../sims/test/operator.ml@6:76;6:94::=Ofmul../sims/test/operator.ml@6:77;6:83../sims/test/operator.ml@6:88;6:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$936
;../sims/test/operator.ml@6:76;6:94::<=../sims/test/operator.ml@6:76;6:94
	jal int_of_float
	sw r5,r31,$932
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@6:11;6:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$932
;../sims/test/operator.ml@6:11;6:96::<=../sims/test/operator.ml@6:11;6:96
	jal @a_1686print_int
	sw r5,r31,$928
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@6:0;6:97../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$924
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@7:19;7:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$920
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@7:44;7:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$924
	fld f2,r31,$920
	fsub f1,f1,f2
	fst f1,r31,$916
;../sims/test/operator.ml@7:77;7:83::=Ofsub../sims/test/operator.ml@7:19;7:32../sims/test/operator.ml@7:44;7:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$912
;../sims/test/operator.ml@7:88;7:94
	fld f1,r31,$916
	fld f2,r31,$912
	fmul f1,f1,f2
	fst f1,r31,$908
;../sims/test/operator.ml@7:76;7:94::=Ofmul../sims/test/operator.ml@7:77;7:83../sims/test/operator.ml@7:88;7:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$908
;../sims/test/operator.ml@7:76;7:94::<=../sims/test/operator.ml@7:76;7:94
	jal int_of_float
	sw r5,r31,$904
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@7:11;7:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$904
;../sims/test/operator.ml@7:11;7:96::<=../sims/test/operator.ml@7:11;7:96
	jal @a_1686print_int
	sw r5,r31,$900
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@7:0;7:97../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$896
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@8:19;8:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$892
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@8:44;8:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$896
	fld f2,r31,$892
	fsub f1,f1,f2
	fst f1,r31,$888
;../sims/test/operator.ml@8:77;8:83::=Ofsub../sims/test/operator.ml@8:19;8:32../sims/test/operator.ml@8:44;8:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$884
;../sims/test/operator.ml@8:88;8:94
	fld f1,r31,$888
	fld f2,r31,$884
	fmul f1,f1,f2
	fst f1,r31,$880
;../sims/test/operator.ml@8:76;8:94::=Ofmul../sims/test/operator.ml@8:77;8:83../sims/test/operator.ml@8:88;8:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$880
;../sims/test/operator.ml@8:76;8:94::<=../sims/test/operator.ml@8:76;8:94
	jal int_of_float
	sw r5,r31,$876
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@8:11;8:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$876
;../sims/test/operator.ml@8:11;8:96::<=../sims/test/operator.ml@8:11;8:96
	jal @a_1686print_int
	sw r5,r31,$872
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@8:0;8:97../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$868
;../sims/test/operator.ml@9:11;9:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$868
;../sims/test/operator.ml@9:11;9:13::<=../sims/test/operator.ml@9:11;9:13
	jal print_char
	sw r5,r31,$864
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@9:0;9:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$860
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@11:19;11:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$856
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@11:44;11:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$860
	fld f2,r31,$856
	fmul f1,f1,f2
	fst f1,r31,$852
;../sims/test/operator.ml@11:77;11:83::=Ofmul../sims/test/operator.ml@11:19;11:32../sims/test/operator.ml@11:44;11:57
	fmovi f1,$100.00000000000000000000
	fst f1,r31,$848
;../sims/test/operator.ml@11:88;11:93
	fld f1,r31,$852
	fld f2,r31,$848
	fmul f1,f1,f2
	fst f1,r31,$844
;../sims/test/operator.ml@11:76;11:93::=Ofmul../sims/test/operator.ml@11:77;11:83../sims/test/operator.ml@11:88;11:93
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$844
;../sims/test/operator.ml@11:76;11:93::<=../sims/test/operator.ml@11:76;11:93
	jal int_of_float
	sw r5,r31,$840
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@11:11;11:95../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$840
;../sims/test/operator.ml@11:11;11:95::<=../sims/test/operator.ml@11:11;11:95
	jal @a_1686print_int
	sw r5,r31,$836
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@11:0;11:96../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$832
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@12:19;12:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$828
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@12:44;12:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$832
	fld f2,r31,$828
	fmul f1,f1,f2
	fst f1,r31,$824
;../sims/test/operator.ml@12:77;12:83::=Ofmul../sims/test/operator.ml@12:19;12:32../sims/test/operator.ml@12:44;12:57
	fmovi f1,$100.00000000000000000000
	fst f1,r31,$820
;../sims/test/operator.ml@12:88;12:93
	fld f1,r31,$824
	fld f2,r31,$820
	fmul f1,f1,f2
	fst f1,r31,$816
;../sims/test/operator.ml@12:76;12:93::=Ofmul../sims/test/operator.ml@12:77;12:83../sims/test/operator.ml@12:88;12:93
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$816
;../sims/test/operator.ml@12:76;12:93::<=../sims/test/operator.ml@12:76;12:93
	jal int_of_float
	sw r5,r31,$812
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@12:11;12:95../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$812
;../sims/test/operator.ml@12:11;12:95::<=../sims/test/operator.ml@12:11;12:95
	jal @a_1686print_int
	sw r5,r31,$808
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@12:0;12:96../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$804
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@13:19;13:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$800
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@13:44;13:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$804
	fld f2,r31,$800
	fmul f1,f1,f2
	fst f1,r31,$796
;../sims/test/operator.ml@13:77;13:83::=Ofmul../sims/test/operator.ml@13:19;13:32../sims/test/operator.ml@13:44;13:57
	fmovi f1,$100.00000000000000000000
	fst f1,r31,$792
;../sims/test/operator.ml@13:88;13:93
	fld f1,r31,$796
	fld f2,r31,$792
	fmul f1,f1,f2
	fst f1,r31,$788
;../sims/test/operator.ml@13:76;13:93::=Ofmul../sims/test/operator.ml@13:77;13:83../sims/test/operator.ml@13:88;13:93
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$788
;../sims/test/operator.ml@13:76;13:93::<=../sims/test/operator.ml@13:76;13:93
	jal int_of_float
	sw r5,r31,$784
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@13:11;13:95../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$784
;../sims/test/operator.ml@13:11;13:95::<=../sims/test/operator.ml@13:11;13:95
	jal @a_1686print_int
	sw r5,r31,$780
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@13:0;13:96../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$776
;../sims/test/operator.ml@14:11;14:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$776
;../sims/test/operator.ml@14:11;14:13::<=../sims/test/operator.ml@14:11;14:13
	jal print_char
	sw r5,r31,$772
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@14:0;14:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$768
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@16:19;16:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$764
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@16:44;16:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$768
	fld f2,r31,$764
	fdiv f1,f1,f2
	fst f1,r31,$760
;../sims/test/operator.ml@16:77;16:83::=Ofdiv../sims/test/operator.ml@16:19;16:32../sims/test/operator.ml@16:44;16:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$756
;../sims/test/operator.ml@16:88;16:94
	fld f1,r31,$760
	fld f2,r31,$756
	fmul f1,f1,f2
	fst f1,r31,$752
;../sims/test/operator.ml@16:76;16:94::=Ofmul../sims/test/operator.ml@16:77;16:83../sims/test/operator.ml@16:88;16:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$752
;../sims/test/operator.ml@16:76;16:94::<=../sims/test/operator.ml@16:76;16:94
	jal int_of_float
	sw r5,r31,$748
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@16:11;16:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$748
;../sims/test/operator.ml@16:11;16:96::<=../sims/test/operator.ml@16:11;16:96
	jal @a_1686print_int
	sw r5,r31,$744
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@16:0;16:97../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$740
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@17:19;17:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$736
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@17:44;17:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$740
	fld f2,r31,$736
	fdiv f1,f1,f2
	fst f1,r31,$732
;../sims/test/operator.ml@17:77;17:83::=Ofdiv../sims/test/operator.ml@17:19;17:32../sims/test/operator.ml@17:44;17:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$728
;../sims/test/operator.ml@17:88;17:94
	fld f1,r31,$732
	fld f2,r31,$728
	fmul f1,f1,f2
	fst f1,r31,$724
;../sims/test/operator.ml@17:76;17:94::=Ofmul../sims/test/operator.ml@17:77;17:83../sims/test/operator.ml@17:88;17:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$724
;../sims/test/operator.ml@17:76;17:94::<=../sims/test/operator.ml@17:76;17:94
	jal int_of_float
	sw r5,r31,$720
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@17:11;17:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$720
;../sims/test/operator.ml@17:11;17:96::<=../sims/test/operator.ml@17:11;17:96
	jal @a_1686print_int
	sw r5,r31,$716
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@17:0;17:97../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$712
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@18:19;18:32../sims/test/operator.ml@1:19;1:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_float
	fst f5,r31,$708
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@18:44;18:57../sims/test/operator.ml@1:19;1:29
	fld f1,r31,$712
	fld f2,r31,$708
	fdiv f1,f1,f2
	fst f1,r31,$704
;../sims/test/operator.ml@18:77;18:83::=Ofdiv../sims/test/operator.ml@18:19;18:32../sims/test/operator.ml@18:44;18:57
	fmovi f1,$1000.00000000000000000000
	fst f1,r31,$700
;../sims/test/operator.ml@18:88;18:94
	fld f1,r31,$704
	fld f2,r31,$700
	fmul f1,f1,f2
	fst f1,r31,$696
;../sims/test/operator.ml@18:76;18:94::=Ofmul../sims/test/operator.ml@18:77;18:83../sims/test/operator.ml@18:88;18:94
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$696
;../sims/test/operator.ml@18:76;18:94::<=../sims/test/operator.ml@18:76;18:94
	jal int_of_float
	sw r5,r31,$692
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@18:11;18:96../sims/test/operator.ml@1:62;1:74
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$692
;../sims/test/operator.ml@18:11;18:96::<=../sims/test/operator.ml@18:11;18:96
	jal @a_1686print_int
	sw r5,r31,$688
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@18:0;18:97../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$684
;../sims/test/operator.ml@19:11;19:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$684
;../sims/test/operator.ml@19:11;19:13::<=../sims/test/operator.ml@19:11;19:13
	jal print_char
	sw r5,r31,$680
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@19:0;19:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$676
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@21:16;21:27../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$676
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r31,$672
;../sims/test/operator.ml@21:11;21:28::=Onot../sims/test/operator.ml@21:16;21:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$672
;../sims/test/operator.ml@21:11;21:28::<=../sims/test/operator.ml@21:11;21:28
	jal @a_1686print_int
	sw r5,r31,$668
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@21:0;21:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$664
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@22:16;22:27../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$664
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r31,$660
;../sims/test/operator.ml@22:11;22:28::=Onot../sims/test/operator.ml@22:16;22:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$660
;../sims/test/operator.ml@22:11;22:28::<=../sims/test/operator.ml@22:11;22:28
	jal @a_1686print_int
	sw r5,r31,$656
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@22:0;22:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$652
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@23:16;23:27../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$652
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r31,$648
;../sims/test/operator.ml@23:11;23:28::=Onot../sims/test/operator.ml@23:16;23:27
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$648
;../sims/test/operator.ml@23:11;23:28::<=../sims/test/operator.ml@23:11;23:28
	jal @a_1686print_int
	sw r5,r31,$644
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@23:0;23:29../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$640
;../sims/test/operator.ml@24:11;24:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$640
;../sims/test/operator.ml@24:11;24:13::<=../sims/test/operator.ml@24:11;24:13
	jal print_char
	sw r5,r31,$636
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@24:0;24:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$632
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@26:12;26:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$632
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r31,$628
;../sims/test/operator.ml@26:11;26:28::=Oibydiv[2]../sims/test/operator.ml@26:12;26:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$628
;../sims/test/operator.ml@26:11;26:28::<=../sims/test/operator.ml@26:11;26:28
	jal @a_1686print_int
	sw r5,r31,$624
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@26:0;26:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$620
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@27:12;27:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$620
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r31,$616
;../sims/test/operator.ml@27:11;27:28::=Oibydiv[2]../sims/test/operator.ml@27:12;27:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$616
;../sims/test/operator.ml@27:11;27:28::<=../sims/test/operator.ml@27:11;27:28
	jal @a_1686print_int
	sw r5,r31,$612
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@27:0;27:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$608
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@28:12;28:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$608
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r31,$604
;../sims/test/operator.ml@28:11;28:28::=Oibydiv[2]../sims/test/operator.ml@28:12;28:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$604
;../sims/test/operator.ml@28:11;28:28::<=../sims/test/operator.ml@28:11;28:28
	jal @a_1686print_int
	sw r5,r31,$600
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@28:0;28:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$596
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@29:12;29:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$596
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r31,$592
;../sims/test/operator.ml@29:11;29:28::=Oibydiv[2]../sims/test/operator.ml@29:12;29:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$592
;../sims/test/operator.ml@29:11;29:28::<=../sims/test/operator.ml@29:11;29:28
	jal @a_1686print_int
	sw r5,r31,$588
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@29:0;29:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$584
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@30:12;30:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$584
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r31,$580
;../sims/test/operator.ml@30:11;30:28::=Oibydiv[2]../sims/test/operator.ml@30:12;30:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$580
;../sims/test/operator.ml@30:11;30:28::<=../sims/test/operator.ml@30:11;30:28
	jal @a_1686print_int
	sw r5,r31,$576
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@30:0;30:29../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$572
;../sims/test/operator.ml@31:11;31:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$572
;../sims/test/operator.ml@31:11;31:13::<=../sims/test/operator.ml@31:11;31:13
	jal print_char
	sw r5,r31,$568
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@31:0;31:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$564
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@33:12;33:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$564
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r31,$560
;../sims/test/operator.ml@33:11;33:28::=Oimul[4]../sims/test/operator.ml@33:12;33:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$560
;../sims/test/operator.ml@33:11;33:28::<=../sims/test/operator.ml@33:11;33:28
	jal @a_1686print_int
	sw r5,r31,$556
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@33:0;33:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$552
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@34:12;34:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$552
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r31,$548
;../sims/test/operator.ml@34:11;34:28::=Oimul[4]../sims/test/operator.ml@34:12;34:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$548
;../sims/test/operator.ml@34:11;34:28::<=../sims/test/operator.ml@34:11;34:28
	jal @a_1686print_int
	sw r5,r31,$544
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@34:0;34:29../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$540
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@35:12;35:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$540
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	mov r5,r6
	sw r5,r31,$536
;../sims/test/operator.ml@35:11;35:29::=Oimul[10]../sims/test/operator.ml@35:12;35:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$536
;../sims/test/operator.ml@35:11;35:29::<=../sims/test/operator.ml@35:11;35:29
	jal @a_1686print_int
	sw r5,r31,$532
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@35:0;35:30../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$528
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@36:12;36:23../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$528
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	mov r5,r6
	sw r5,r31,$524
;../sims/test/operator.ml@36:11;36:29::=Oimul[10]../sims/test/operator.ml@36:12;36:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$524
;../sims/test/operator.ml@36:11;36:29::<=../sims/test/operator.ml@36:11;36:29
	jal @a_1686print_int
	sw r5,r31,$520
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@36:0;36:30../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$516
;../sims/test/operator.ml@37:11;37:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$516
;../sims/test/operator.ml@37:11;37:13::<=../sims/test/operator.ml@37:11;37:13
	jal print_char
	sw r5,r31,$512
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@37:0;37:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$508
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@39:13;39:24../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$508
	sub r5,r0,r5
	sw r5,r31,$504
;../sims/test/operator.ml@39:11;39:25::=Ominus../sims/test/operator.ml@39:13;39:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$504
;../sims/test/operator.ml@39:11;39:25::<=../sims/test/operator.ml@39:11;39:25
	jal @a_1686print_int
	sw r5,r31,$500
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@39:0;39:26../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$496
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@40:13;40:24../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$496
	sub r5,r0,r5
	sw r5,r31,$492
;../sims/test/operator.ml@40:11;40:25::=Ominus../sims/test/operator.ml@40:13;40:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$492
;../sims/test/operator.ml@40:11;40:25::<=../sims/test/operator.ml@40:11;40:25
	jal @a_1686print_int
	sw r5,r31,$488
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@40:0;40:26../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$484
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@41:13;41:24../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$484
	sub r5,r0,r5
	sw r5,r31,$480
;../sims/test/operator.ml@41:11;41:25::=Ominus../sims/test/operator.ml@41:13;41:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$480
;../sims/test/operator.ml@41:11;41:25::<=../sims/test/operator.ml@41:11;41:25
	jal @a_1686print_int
	sw r5,r31,$476
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@41:0;41:26../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$472
;../sims/test/operator.ml@42:11;42:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$472
;../sims/test/operator.ml@42:11;42:13::<=../sims/test/operator.ml@42:11;42:13
	jal print_char
	sw r5,r31,$468
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@42:0;42:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$464
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@44:19;44:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$460
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@44:42;44:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$460
	lw r6,r31,$464
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2966
	j @cfg_label_2965
	j @cfg_label_2967
	j @cfg_label_2968
@cfg_label_2967:
@cfg_label_2965:
	li r5,$1
	sw r5,r31,$456
;../sims/test/operator.ml@44:11;44:80
	j @cfg_label_3208
@cfg_label_2968:
@cfg_label_2966:
	li r5,$0
	sw r5,r31,$456
;../sims/test/operator.ml@44:11;44:80
@cfg_label_3208:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$456
;../sims/test/operator.ml@44:11;44:80::<=../sims/test/operator.ml@44:11;44:80
	jal @a_1686print_int
	sw r5,r31,$452
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@44:0;44:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$448
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@45:19;45:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$444
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@45:42;45:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$444
	lw r6,r31,$448
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2970
	j @cfg_label_2969
	j @cfg_label_2971
	j @cfg_label_2972
@cfg_label_2971:
@cfg_label_2969:
	li r5,$1
	sw r5,r31,$440
;../sims/test/operator.ml@45:11;45:80
	j @cfg_label_3203
@cfg_label_2972:
@cfg_label_2970:
	li r5,$0
	sw r5,r31,$440
;../sims/test/operator.ml@45:11;45:80
@cfg_label_3203:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$440
;../sims/test/operator.ml@45:11;45:80::<=../sims/test/operator.ml@45:11;45:80
	jal @a_1686print_int
	sw r5,r31,$436
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@45:0;45:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$432
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@46:19;46:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$428
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@46:42;46:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$428
	lw r6,r31,$432
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2974
	j @cfg_label_2973
	j @cfg_label_2975
	j @cfg_label_2976
@cfg_label_2975:
@cfg_label_2973:
	li r5,$1
	sw r5,r31,$424
;../sims/test/operator.ml@46:11;46:80
	j @cfg_label_3198
@cfg_label_2976:
@cfg_label_2974:
	li r5,$0
	sw r5,r31,$424
;../sims/test/operator.ml@46:11;46:80
@cfg_label_3198:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$424
;../sims/test/operator.ml@46:11;46:80::<=../sims/test/operator.ml@46:11;46:80
	jal @a_1686print_int
	sw r5,r31,$420
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@46:0;46:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$416
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@47:19;47:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$412
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@47:42;47:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$412
	lw r6,r31,$416
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2978
	j @cfg_label_2977
	j @cfg_label_2979
	j @cfg_label_2980
@cfg_label_2979:
@cfg_label_2977:
	li r5,$1
	sw r5,r31,$408
;../sims/test/operator.ml@47:11;47:80
	j @cfg_label_3193
@cfg_label_2980:
@cfg_label_2978:
	li r5,$0
	sw r5,r31,$408
;../sims/test/operator.ml@47:11;47:80
@cfg_label_3193:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$408
;../sims/test/operator.ml@47:11;47:80::<=../sims/test/operator.ml@47:11;47:80
	jal @a_1686print_int
	sw r5,r31,$404
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@47:0;47:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$400
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@48:19;48:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$396
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@48:42;48:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$396
	lw r6,r31,$400
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2982
	j @cfg_label_2981
	j @cfg_label_2983
	j @cfg_label_2984
@cfg_label_2983:
@cfg_label_2981:
	li r5,$1
	sw r5,r31,$392
;../sims/test/operator.ml@48:11;48:80
	j @cfg_label_3188
@cfg_label_2984:
@cfg_label_2982:
	li r5,$0
	sw r5,r31,$392
;../sims/test/operator.ml@48:11;48:80
@cfg_label_3188:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$392
;../sims/test/operator.ml@48:11;48:80::<=../sims/test/operator.ml@48:11;48:80
	jal @a_1686print_int
	sw r5,r31,$388
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@48:0;48:81../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$384
;../sims/test/operator.ml@49:11;49:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$384
;../sims/test/operator.ml@49:11;49:13::<=../sims/test/operator.ml@49:11;49:13
	jal print_char
	sw r5,r31,$380
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@49:0;49:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$376
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@51:19;51:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$372
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@51:42;51:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$376
	lw r6,r31,$372
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2986
	j @cfg_label_2985
	j @cfg_label_2987
	j @cfg_label_2988
@cfg_label_2987:
@cfg_label_2985:
	li r5,$1
	sw r5,r31,$368
;../sims/test/operator.ml@51:11;51:80
	j @cfg_label_3181
@cfg_label_2988:
@cfg_label_2986:
	li r5,$0
	sw r5,r31,$368
;../sims/test/operator.ml@51:11;51:80
@cfg_label_3181:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$368
;../sims/test/operator.ml@51:11;51:80::<=../sims/test/operator.ml@51:11;51:80
	jal @a_1686print_int
	sw r5,r31,$364
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@51:0;51:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$360
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@52:19;52:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$356
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@52:42;52:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$360
	lw r6,r31,$356
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2990
	j @cfg_label_2989
	j @cfg_label_2991
	j @cfg_label_2992
@cfg_label_2991:
@cfg_label_2989:
	li r5,$1
	sw r5,r31,$352
;../sims/test/operator.ml@52:11;52:80
	j @cfg_label_3176
@cfg_label_2992:
@cfg_label_2990:
	li r5,$0
	sw r5,r31,$352
;../sims/test/operator.ml@52:11;52:80
@cfg_label_3176:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$352
;../sims/test/operator.ml@52:11;52:80::<=../sims/test/operator.ml@52:11;52:80
	jal @a_1686print_int
	sw r5,r31,$348
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@52:0;52:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$344
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@53:19;53:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$340
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@53:42;53:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$344
	lw r6,r31,$340
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2994
	j @cfg_label_2993
	j @cfg_label_2995
	j @cfg_label_2996
@cfg_label_2995:
@cfg_label_2993:
	li r5,$1
	sw r5,r31,$336
;../sims/test/operator.ml@53:11;53:80
	j @cfg_label_3171
@cfg_label_2996:
@cfg_label_2994:
	li r5,$0
	sw r5,r31,$336
;../sims/test/operator.ml@53:11;53:80
@cfg_label_3171:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$336
;../sims/test/operator.ml@53:11;53:80::<=../sims/test/operator.ml@53:11;53:80
	jal @a_1686print_int
	sw r5,r31,$332
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@53:0;53:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$328
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@54:19;54:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$324
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@54:42;54:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$328
	lw r6,r31,$324
	slt r5,r5,r6
	bne r0,r5,@cfg_label_2998
	j @cfg_label_2997
	j @cfg_label_2999
	j @cfg_label_3000
@cfg_label_2999:
@cfg_label_2997:
	li r5,$1
	sw r5,r31,$320
;../sims/test/operator.ml@54:11;54:80
	j @cfg_label_3166
@cfg_label_3000:
@cfg_label_2998:
	li r5,$0
	sw r5,r31,$320
;../sims/test/operator.ml@54:11;54:80
@cfg_label_3166:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$320
;../sims/test/operator.ml@54:11;54:80::<=../sims/test/operator.ml@54:11;54:80
	jal @a_1686print_int
	sw r5,r31,$316
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@54:0;54:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$312
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@55:19;55:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$308
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@55:42;55:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$312
	lw r6,r31,$308
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3002
	j @cfg_label_3001
	j @cfg_label_3003
	j @cfg_label_3004
@cfg_label_3003:
@cfg_label_3001:
	li r5,$1
	sw r5,r31,$304
;../sims/test/operator.ml@55:11;55:80
	j @cfg_label_3161
@cfg_label_3004:
@cfg_label_3002:
	li r5,$0
	sw r5,r31,$304
;../sims/test/operator.ml@55:11;55:80
@cfg_label_3161:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$304
;../sims/test/operator.ml@55:11;55:80::<=../sims/test/operator.ml@55:11;55:80
	jal @a_1686print_int
	sw r5,r31,$300
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@55:0;55:81../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$296
;../sims/test/operator.ml@56:11;56:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$296
;../sims/test/operator.ml@56:11;56:13::<=../sims/test/operator.ml@56:11;56:13
	jal print_char
	sw r5,r31,$292
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@56:0;56:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$288
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@58:19;58:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$284
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@58:42;58:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$288
	lw r6,r31,$284
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3006
	j @cfg_label_3005
	j @cfg_label_3007
	j @cfg_label_3008
@cfg_label_3007:
@cfg_label_3005:
	li r5,$0
	sw r5,r31,$280
;../sims/test/operator.ml@58:11;58:79
	j @cfg_label_3154
@cfg_label_3008:
@cfg_label_3006:
	li r5,$1
	sw r5,r31,$280
;../sims/test/operator.ml@58:11;58:79
@cfg_label_3154:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$280
;../sims/test/operator.ml@58:11;58:79::<=../sims/test/operator.ml@58:11;58:79
	jal @a_1686print_int
	sw r5,r31,$276
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@58:0;58:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$272
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@59:19;59:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$268
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@59:42;59:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$272
	lw r6,r31,$268
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3010
	j @cfg_label_3009
	j @cfg_label_3011
	j @cfg_label_3012
@cfg_label_3011:
@cfg_label_3009:
	li r5,$0
	sw r5,r31,$264
;../sims/test/operator.ml@59:11;59:79
	j @cfg_label_3149
@cfg_label_3012:
@cfg_label_3010:
	li r5,$1
	sw r5,r31,$264
;../sims/test/operator.ml@59:11;59:79
@cfg_label_3149:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$264
;../sims/test/operator.ml@59:11;59:79::<=../sims/test/operator.ml@59:11;59:79
	jal @a_1686print_int
	sw r5,r31,$260
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@59:0;59:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$256
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@60:19;60:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$252
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@60:42;60:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$256
	lw r6,r31,$252
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3014
	j @cfg_label_3013
	j @cfg_label_3015
	j @cfg_label_3016
@cfg_label_3015:
@cfg_label_3013:
	li r5,$0
	sw r5,r31,$248
;../sims/test/operator.ml@60:11;60:79
	j @cfg_label_3144
@cfg_label_3016:
@cfg_label_3014:
	li r5,$1
	sw r5,r31,$248
;../sims/test/operator.ml@60:11;60:79
@cfg_label_3144:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$248
;../sims/test/operator.ml@60:11;60:79::<=../sims/test/operator.ml@60:11;60:79
	jal @a_1686print_int
	sw r5,r31,$244
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@60:0;60:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$240
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@61:19;61:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$236
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@61:42;61:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$240
	lw r6,r31,$236
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3018
	j @cfg_label_3017
	j @cfg_label_3019
	j @cfg_label_3020
@cfg_label_3019:
@cfg_label_3017:
	li r5,$0
	sw r5,r31,$232
;../sims/test/operator.ml@61:11;61:79
	j @cfg_label_3139
@cfg_label_3020:
@cfg_label_3018:
	li r5,$1
	sw r5,r31,$232
;../sims/test/operator.ml@61:11;61:79
@cfg_label_3139:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$232
;../sims/test/operator.ml@61:11;61:79::<=../sims/test/operator.ml@61:11;61:79
	jal @a_1686print_int
	sw r5,r31,$228
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@61:0;61:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$224
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@62:19;62:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$220
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@62:42;62:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$224
	lw r6,r31,$220
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3022
	j @cfg_label_3021
	j @cfg_label_3023
	j @cfg_label_3024
@cfg_label_3023:
@cfg_label_3021:
	li r5,$0
	sw r5,r31,$216
;../sims/test/operator.ml@62:11;62:79
	j @cfg_label_3134
@cfg_label_3024:
@cfg_label_3022:
	li r5,$1
	sw r5,r31,$216
;../sims/test/operator.ml@62:11;62:79
@cfg_label_3134:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$216
;../sims/test/operator.ml@62:11;62:79::<=../sims/test/operator.ml@62:11;62:79
	jal @a_1686print_int
	sw r5,r31,$212
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@62:0;62:80../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$208
;../sims/test/operator.ml@63:11;63:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$208
;../sims/test/operator.ml@63:11;63:13::<=../sims/test/operator.ml@63:11;63:13
	jal print_char
	sw r5,r31,$204
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@63:0;63:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$200
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@65:19;65:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$196
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@65:42;65:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$196
	lw r6,r31,$200
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3026
	j @cfg_label_3025
	j @cfg_label_3027
	j @cfg_label_3028
@cfg_label_3027:
@cfg_label_3025:
	li r5,$0
	sw r5,r31,$192
;../sims/test/operator.ml@65:11;65:79
	j @cfg_label_3127
@cfg_label_3028:
@cfg_label_3026:
	li r5,$1
	sw r5,r31,$192
;../sims/test/operator.ml@65:11;65:79
@cfg_label_3127:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$192
;../sims/test/operator.ml@65:11;65:79::<=../sims/test/operator.ml@65:11;65:79
	jal @a_1686print_int
	sw r5,r31,$188
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@65:0;65:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$184
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@66:19;66:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$180
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@66:42;66:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$180
	lw r6,r31,$184
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3030
	j @cfg_label_3029
	j @cfg_label_3031
	j @cfg_label_3032
@cfg_label_3031:
@cfg_label_3029:
	li r5,$0
	sw r5,r31,$176
;../sims/test/operator.ml@66:11;66:79
	j @cfg_label_3122
@cfg_label_3032:
@cfg_label_3030:
	li r5,$1
	sw r5,r31,$176
;../sims/test/operator.ml@66:11;66:79
@cfg_label_3122:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$176
;../sims/test/operator.ml@66:11;66:79::<=../sims/test/operator.ml@66:11;66:79
	jal @a_1686print_int
	sw r5,r31,$172
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@66:0;66:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$168
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@67:19;67:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$164
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@67:42;67:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$164
	lw r6,r31,$168
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3034
	j @cfg_label_3033
	j @cfg_label_3035
	j @cfg_label_3036
@cfg_label_3035:
@cfg_label_3033:
	li r5,$0
	sw r5,r31,$160
;../sims/test/operator.ml@67:11;67:79
	j @cfg_label_3117
@cfg_label_3036:
@cfg_label_3034:
	li r5,$1
	sw r5,r31,$160
;../sims/test/operator.ml@67:11;67:79
@cfg_label_3117:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$160
;../sims/test/operator.ml@67:11;67:79::<=../sims/test/operator.ml@67:11;67:79
	jal @a_1686print_int
	sw r5,r31,$156
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@67:0;67:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$152
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@68:19;68:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$148
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@68:42;68:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$148
	lw r6,r31,$152
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3038
	j @cfg_label_3037
	j @cfg_label_3039
	j @cfg_label_3040
@cfg_label_3039:
@cfg_label_3037:
	li r5,$0
	sw r5,r31,$144
;../sims/test/operator.ml@68:11;68:79
	j @cfg_label_3112
@cfg_label_3040:
@cfg_label_3038:
	li r5,$1
	sw r5,r31,$144
;../sims/test/operator.ml@68:11;68:79
@cfg_label_3112:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$144
;../sims/test/operator.ml@68:11;68:79::<=../sims/test/operator.ml@68:11;68:79
	jal @a_1686print_int
	sw r5,r31,$140
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@68:0;68:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$136
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@69:19;69:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$132
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@69:42;69:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$132
	lw r6,r31,$136
	slt r5,r5,r6
	bne r0,r5,@cfg_label_3042
	j @cfg_label_3041
	j @cfg_label_3043
	j @cfg_label_3044
@cfg_label_3043:
@cfg_label_3041:
	li r5,$0
	sw r5,r31,$128
;../sims/test/operator.ml@69:11;69:79
	j @cfg_label_3107
@cfg_label_3044:
@cfg_label_3042:
	li r5,$1
	sw r5,r31,$128
;../sims/test/operator.ml@69:11;69:79
@cfg_label_3107:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$128
;../sims/test/operator.ml@69:11;69:79::<=../sims/test/operator.ml@69:11;69:79
	jal @a_1686print_int
	sw r5,r31,$124
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@69:0;69:80../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$120
;../sims/test/operator.ml@70:11;70:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$120
;../sims/test/operator.ml@70:11;70:13::<=../sims/test/operator.ml@70:11;70:13
	jal print_char
	sw r5,r31,$116
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@70:0;70:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$112
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@72:19;72:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$108
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@72:42;72:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$112
	lw r6,r31,$108
	bne r5,r6,@cfg_label_3046
	j @cfg_label_3045
	j @cfg_label_3047
	j @cfg_label_3048
@cfg_label_3047:
@cfg_label_3045:
	li r5,$1
	sw r5,r31,$104
;../sims/test/operator.ml@72:11;72:79
	j @cfg_label_3100
@cfg_label_3048:
@cfg_label_3046:
	li r5,$0
	sw r5,r31,$104
;../sims/test/operator.ml@72:11;72:79
@cfg_label_3100:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$104
;../sims/test/operator.ml@72:11;72:79::<=../sims/test/operator.ml@72:11;72:79
	jal @a_1686print_int
	sw r5,r31,$100
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@72:0;72:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$96
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@73:19;73:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$92
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@73:42;73:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$96
	lw r6,r31,$92
	bne r5,r6,@cfg_label_3050
	j @cfg_label_3049
	j @cfg_label_3051
	j @cfg_label_3052
@cfg_label_3051:
@cfg_label_3049:
	li r5,$1
	sw r5,r31,$88
;../sims/test/operator.ml@73:11;73:79
	j @cfg_label_3095
@cfg_label_3052:
@cfg_label_3050:
	li r5,$0
	sw r5,r31,$88
;../sims/test/operator.ml@73:11;73:79
@cfg_label_3095:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$88
;../sims/test/operator.ml@73:11;73:79::<=../sims/test/operator.ml@73:11;73:79
	jal @a_1686print_int
	sw r5,r31,$84
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@73:0;73:80../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$80
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@74:19;74:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$76
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@74:42;74:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$80
	lw r6,r31,$76
	bne r5,r6,@cfg_label_3054
	j @cfg_label_3053
	j @cfg_label_3055
	j @cfg_label_3056
@cfg_label_3055:
@cfg_label_3053:
	li r5,$1
	sw r5,r31,$72
;../sims/test/operator.ml@74:11;74:79
	j @cfg_label_3090
@cfg_label_3056:
@cfg_label_3054:
	li r5,$0
	sw r5,r31,$72
;../sims/test/operator.ml@74:11;74:79
@cfg_label_3090:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$72
;../sims/test/operator.ml@74:11;74:79::<=../sims/test/operator.ml@74:11;74:79
	jal @a_1686print_int
	sw r5,r31,$68
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@74:0;74:80../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$64
;../sims/test/operator.ml@75:11;75:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$64
;../sims/test/operator.ml@75:11;75:13::<=../sims/test/operator.ml@75:11;75:13
	jal print_char
	sw r5,r31,$60
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@75:0;75:13../sims/test/operator.ml@4:0;4:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$56
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@77:19;77:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$52
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@77:42;77:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$56
	lw r6,r31,$52
	bne r5,r6,@cfg_label_3058
	j @cfg_label_3057
	j @cfg_label_3059
	j @cfg_label_3060
@cfg_label_3059:
@cfg_label_3057:
	li r5,$0
	sw r5,r31,$48
;../sims/test/operator.ml@77:11;77:80
	j @cfg_label_3083
@cfg_label_3060:
@cfg_label_3058:
	li r5,$1
	sw r5,r31,$48
;../sims/test/operator.ml@77:11;77:80
@cfg_label_3083:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$48
;../sims/test/operator.ml@77:11;77:80::<=../sims/test/operator.ml@77:11;77:80
	jal @a_1686print_int
	sw r5,r31,$44
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@77:0;77:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$40
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@78:19;78:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$36
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@78:42;78:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$40
	lw r6,r31,$36
	bne r5,r6,@cfg_label_3062
	j @cfg_label_3061
	j @cfg_label_3063
	j @cfg_label_3064
@cfg_label_3063:
@cfg_label_3061:
	li r5,$0
	sw r5,r31,$32
;../sims/test/operator.ml@78:11;78:80
	j @cfg_label_3078
@cfg_label_3064:
@cfg_label_3062:
	li r5,$1
	sw r5,r31,$32
;../sims/test/operator.ml@78:11;78:80
@cfg_label_3078:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$32
;../sims/test/operator.ml@78:11;78:80::<=../sims/test/operator.ml@78:11;78:80
	jal @a_1686print_int
	sw r5,r31,$28
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@78:0;78:81../sims/test/operator.ml@1:0;1:9
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$24
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@79:19;79:30../sims/test/operator.ml@21:16;21:24
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$1048
;../sims/test/operator.ml@1:30;1:32::<=../sims/test/operator.ml@1:30;1:32
	jal read_int
	sw r5,r31,$20
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@79:42;79:53../sims/test/operator.ml@21:16;21:24
	lw r5,r31,$24
	lw r6,r31,$20
	bne r5,r6,@cfg_label_3066
	j @cfg_label_3065
	j @cfg_label_3067
	j @cfg_label_3068
@cfg_label_3067:
@cfg_label_3065:
	li r5,$0
	sw r5,r31,$16
;../sims/test/operator.ml@79:11;79:80
	j @cfg_label_3073
@cfg_label_3068:
@cfg_label_3066:
	li r5,$1
	sw r5,r31,$16
;../sims/test/operator.ml@79:11;79:80
@cfg_label_3073:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$16
;../sims/test/operator.ml@79:11;79:80::<=../sims/test/operator.ml@79:11;79:80
	jal @a_1686print_int
	sw r5,r31,$12
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@79:0;79:81../sims/test/operator.ml@1:0;1:9
	li r5,$10
	sw r5,r31,$8
;../sims/test/operator.ml@80:11;80:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$8
;../sims/test/operator.ml@80:11;80:13::<=../sims/test/operator.ml@80:11;80:13
	jal print_char
	sw r5,r31,$4
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;../sims/test/operator.ml@80:0;80:13../sims/test/operator.ml@4:0;4:10
	li r5,$10
	sw r5,r31,$0
;../sims/test/operator.ml@82:11;82:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$0
;../sims/test/operator.ml@82:11;82:13::<=../sims/test/operator.ml@82:11;82:13
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;@0:-1;0:-1../sims/test/operator.ml@4:0;4:10
	hlt 
