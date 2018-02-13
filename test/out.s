

float_of_int:
	lw r5,r1,$0
	itof f1,r5
	fst f1,r1,$-4
	lw r5,r1,$-4
	ret

int_of_float:
	fld f1,r1,$0
	ftoi r5,f1
	ret

sqrt:
	fld f1,r1,$0
	fsqrt f2,f1
	fst f2,r1,$-4
	lw r5,r1,$-4
	ret

; itof,ftoiは
; 負、正とともに小数点切り捨てだが、
; floor は、負のほうは切り捨てする。

@a_1539fless:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$4
	fld f1,r2,$8
	fld f2,r2,$12
	flt f1,f2
	bft @emit_label_3508
	li r5,$0
	j @emit_label_3509
@emit_label_3508:
	li r5,$1
@emit_label_3509:
	sw r5,r2,$-4
; lib_tortesia.ml@3:20;3:25 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	lw r5,r2,$-4
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-4
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
@a_1542fiszero:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$8
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3503
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3503
@cfg_label_3503:
	fld f1,r2,$8
	fld f2,r2,$-4
	feq f1,f2
	bft @emit_label_3510
	li r5,$0
	j @emit_label_3511
@emit_label_3510:
	li r5,$1
@emit_label_3511:
	sw r5,r2,$-8
; lib_tortesia.ml@5:21;5:28 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
@a_1544fisneg:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$8
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3502
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3502
@cfg_label_3502:
	fld f1,r2,$8
	fld f2,r2,$-4
	flt f1,f2
	bft @emit_label_3512
	li r5,$0
	j @emit_label_3513
@emit_label_3512:
	li r5,$1
@emit_label_3513:
	sw r5,r2,$-8
; lib_tortesia.ml@7:20;7:27 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
@a_1546fispos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$8
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3501
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3501
@cfg_label_3501:
	fld f1,r2,$8
	fld f2,r2,$-4
	flt f2,f1
	bft @emit_label_3514
	li r5,$0
	j @emit_label_3515
@emit_label_3514:
	li r5,$1
@emit_label_3515:
	sw r5,r2,$-8
; lib_tortesia.ml@9:20;9:27 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
@a_1548floor:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$28
	fmovi f1,$0.000000
	fst f1,r2,$-24
	j @cfg_label_3500
	fmovi f1,$0.000000
	fst f1,r2,$-24
	j @cfg_label_3500
@cfg_label_3500:
	fld f1,r2,$8
	fld f2,r2,$-24
	flt f1,f2
	bft @emit_label_3516
	li r5,$0
	j @emit_label_3517
@emit_label_3516:
	li r5,$1
@emit_label_3517:
	sw r5,r2,$-20
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_3499
@cfg_label_3499:
	li r5,$1
	sw r5,r2,$-16
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_3498
@cfg_label_3498:
	lw r5,r2,$-20
	lw r6,r2,$-16
	bne r5,r6,@cfg_label_3492
	j @cfg_label_3491
	j @cfg_label_3493
	j @cfg_label_3494
@cfg_label_3494:
@cfg_label_3492:
	lw r5,r2,$8
	sw r5,r2,$-8
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_3497
@cfg_label_3493:
@cfg_label_3491:
	fmovi f1,$1.000000
	fst f1,r2,$-12
	j @cfg_label_3490
@cfg_label_3490:
	fld f1,r2,$8
	fld f2,r2,$-12
	fsub f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_3496
@cfg_label_3497:
@cfg_label_3496:
	push r4
	lw r5,r2,$-8
	push r5
	jal int_of_float
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_3495
@cfg_label_3495:
	push r4
	lw r5,r2,$-4
	push r5
	jal float_of_int
	sw r5,r2,$-28
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:18;11:81 lib_tortesia.ml@11:18;11:30
	lw r5,r2,$-28
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-28
	addi r1,r1,$28
	pop r2
	pop r6
	jr r6
@a_1550fabs:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$20
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_3489
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_3489
@cfg_label_3489:
	fld f1,r2,$8
	fld f2,r2,$-16
	flt f2,f1
	bft @emit_label_3518
	li r5,$0
	j @emit_label_3519
@emit_label_3518:
	li r5,$1
@emit_label_3519:
	sw r5,r2,$-12
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_3488
@cfg_label_3488:
	li r5,$1
	sw r5,r2,$-8
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_3487
@cfg_label_3487:
	lw r5,r2,$-12
	lw r6,r2,$-8
	bne r5,r6,@cfg_label_3484
	j @cfg_label_3483
	j @cfg_label_3485
	j @cfg_label_3486
@cfg_label_3485:
@cfg_label_3483:
	lw r5,r2,$8
	sw r5,r2,$-20
; lib_tortesia.ml@13:17;13:51 ::<= lib_tortesia.ml@13:20;13:21
	lw r5,r2,$-20
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@cfg_label_3486:
@cfg_label_3484:
	fmovi f1,$-1.000000
	fst f1,r2,$-4
	j @cfg_label_3482
@cfg_label_3482:
	fld f1,r2,$-4
	fld f2,r2,$8
	fmul f1,f1,f2
	fst f1,r2,$-20
; lib_tortesia.ml@13:17;13:51 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	lw r5,r2,$-20
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-20
	addi r1,r1,$20
	pop r2
	pop r6
	jr r6
@a_1552fsqr:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$4
	fld f1,r2,$8
	fld f2,r2,$8
	fmul f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@15:17;15:23 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	lw r5,r2,$-4
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-4
	addi r1,r1,$4
	pop r2
	pop r6
	jr r6
@a_1554fneg:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$8
	fmovi f1,$-1.000000
	fst f1,r2,$-4
	j @cfg_label_3481
	fmovi f1,$-1.000000
	fst f1,r2,$-4
	j @cfg_label_3481
@cfg_label_3481:
	fld f1,r2,$-4
	fld f2,r2,$8
	fmul f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@17:18;17:27 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
@a_1556fhalf:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$8
	fmovi f1,$2.000000
	fst f1,r2,$-4
	j @cfg_label_3480
	fmovi f1,$2.000000
	fst f1,r2,$-4
	j @cfg_label_3480
@cfg_label_3480:
	fld f1,r2,$8
	fld f2,r2,$-4
	fdiv f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@19:18;19:26 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-8
	addi r1,r1,$8
	pop r2
	pop r6
	jr r6
@a_2320internal_sin:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	li r5,$24
	sw r5,r2,$-100
; lib_tortesia.ml@79:13;79:15
	j @cfg_label_3479
	li r5,$24
	sw r5,r2,$-100
; lib_tortesia.ml@79:13;79:15
	j @cfg_label_3479
@cfg_label_3479:
	lw r5,r2,$16
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_3476
	j @cfg_label_3475
	j @cfg_label_3477
	j @cfg_label_3478
@cfg_label_3478:
@cfg_label_3476:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_3474
@cfg_label_3474:
	fld f1,r2,$20
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_3520
	li r5,$1
	j @emit_label_3521
@emit_label_3520:
	li r5,$0
@emit_label_3521:
	sw r5,r2,$-88
; lib_tortesia.ml@85:12;85:24 ::= Ogeq lib_tortesia.ml@85:12;85:17 lib_tortesia.ml@85:21;85:24
	j @cfg_label_3473
@cfg_label_3473:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@85:12;85:24
	j @cfg_label_3472
@cfg_label_3472:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_3469
	j @cfg_label_3468
	j @cfg_label_3470
	j @cfg_label_3471
@cfg_label_3471:
@cfg_label_3469:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@88:36;88:45 ::= OArrRead lib_tortesia.ml@88:36;88:41 lib_tortesia.ml@88:43;88:44
	j @cfg_label_3467
@cfg_label_3467:
	fld f1,r2,$12
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-36
; lib_tortesia.ml@88:31;88:45 ::= Ofmul lib_tortesia.ml@88:31;88:32 lib_tortesia.ml@88:36;88:45
	j @cfg_label_3466
@cfg_label_3466:
	fld f1,r2,$8
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-16
; lib_tortesia.ml@88:26;88:45 ::= Ofadd lib_tortesia.ml@88:26;88:27 lib_tortesia.ml@88:31;88:45
	j @cfg_label_3465
@cfg_label_3465:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@88:58;88:67 ::= OArrRead lib_tortesia.ml@88:58;88:63 lib_tortesia.ml@88:65;88:66
	j @cfg_label_3464
@cfg_label_3464:
	fld f1,r2,$8
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@88:53;88:67 ::= Ofmul lib_tortesia.ml@88:53;88:54 lib_tortesia.ml@88:58;88:67
	j @cfg_label_3463
@cfg_label_3463:
	fld f1,r2,$12
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-12
; lib_tortesia.ml@88:48;88:67 ::= Ofsub lib_tortesia.ml@88:48;88:49 lib_tortesia.ml@88:53;88:67
	j @cfg_label_3462
@cfg_label_3462:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@88:74;88:75
	j @cfg_label_3461
@cfg_label_3461:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-8
; lib_tortesia.ml@88:70;88:75 ::= Oadd lib_tortesia.ml@88:70;88:71 lib_tortesia.ml@88:74;88:75
	j @cfg_label_3460
@cfg_label_3460:
	lw r6,r2,$16
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; lib_tortesia.ml@88:87;88:96 ::= OArrRead lib_tortesia.ml@88:87;88:92 lib_tortesia.ml@88:94;88:95
	j @cfg_label_3459
@cfg_label_3459:
	fld f1,r2,$20
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@88:78;88:96 ::= Ofadd lib_tortesia.ml@88:78;88:83 lib_tortesia.ml@88:87;88:96
	j @cfg_label_3458
@cfg_label_3458:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	jal @a_2320internal_sin
	sw r5,r2,$-104
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@79:6;88:110 lib_tortesia.ml@88:12;88:24
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_3470:
@cfg_label_3468:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; lib_tortesia.ml@86:36;86:45 ::= OArrRead lib_tortesia.ml@86:36;86:41 lib_tortesia.ml@86:43;86:44
	j @cfg_label_3457
@cfg_label_3457:
	fld f1,r2,$12
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-76
; lib_tortesia.ml@86:31;86:45 ::= Ofmul lib_tortesia.ml@86:31;86:32 lib_tortesia.ml@86:36;86:45
	j @cfg_label_3456
@cfg_label_3456:
	fld f1,r2,$8
	fld f2,r2,$-76
	fsub f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@86:26;86:45 ::= Ofsub lib_tortesia.ml@86:26;86:27 lib_tortesia.ml@86:31;86:45
	j @cfg_label_3455
@cfg_label_3455:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; lib_tortesia.ml@86:58;86:67 ::= OArrRead lib_tortesia.ml@86:58;86:63 lib_tortesia.ml@86:65;86:66
	j @cfg_label_3454
@cfg_label_3454:
	fld f1,r2,$8
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@86:53;86:67 ::= Ofmul lib_tortesia.ml@86:53;86:54 lib_tortesia.ml@86:58;86:67
	j @cfg_label_3453
@cfg_label_3453:
	fld f1,r2,$12
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@86:48;86:67 ::= Ofadd lib_tortesia.ml@86:48;86:49 lib_tortesia.ml@86:53;86:67
	j @cfg_label_3452
@cfg_label_3452:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@86:74;86:75
	j @cfg_label_3451
@cfg_label_3451:
	lw r6,r2,$-64
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-48
; lib_tortesia.ml@86:70;86:75 ::= Oadd lib_tortesia.ml@86:70;86:71 lib_tortesia.ml@86:74;86:75
	j @cfg_label_3450
@cfg_label_3450:
	lw r6,r2,$16
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; lib_tortesia.ml@86:87;86:96 ::= OArrRead lib_tortesia.ml@86:87;86:92 lib_tortesia.ml@86:94;86:95
	j @cfg_label_3449
@cfg_label_3449:
	fld f1,r2,$20
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; lib_tortesia.ml@86:78;86:96 ::= Ofsub lib_tortesia.ml@86:78;86:83 lib_tortesia.ml@86:87;86:96
	j @cfg_label_3448
@cfg_label_3448:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_2320internal_sin
	sw r5,r2,$-104
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@79:6;88:110 lib_tortesia.ml@86:12;86:24
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_3477:
@cfg_label_3475:
	li r5,$1
	sw r5,r2,$-96
; lib_tortesia.ml@80:13;80:25
	j @cfg_label_3447
@cfg_label_3447:
	lw r5,r2,$24
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_3444
	j @cfg_label_3443
	j @cfg_label_3445
	j @cfg_label_3446
@cfg_label_3445:
@cfg_label_3443:
	push r4
	lw r5,r2,$12
	push r5
	jal @a_1554fneg
	sw r5,r2,$-104
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@79:6;88:110 lib_tortesia.ml@81:13;81:17
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_3446:
@cfg_label_3444:
	lw r5,r2,$12
	sw r5,r2,$-104
; lib_tortesia.ml@79:6;88:110 ::<= lib_tortesia.ml@83:12;83:13
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@a_1562sin:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$72
	fld f1,r2,$8
	fld f2,r31,$1496
	fdiv f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@90:28;90:35 ::= Ofdiv lib_tortesia.ml@90:28;90:29 lib_tortesia.ml@90:33;90:35
	j @cfg_label_3442
	fld f1,r2,$8
	fld f2,r31,$1496
	fdiv f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@90:28;90:35 ::= Ofdiv lib_tortesia.ml@90:28;90:29 lib_tortesia.ml@90:33;90:35
	j @cfg_label_3442
@cfg_label_3442:
	fmovi f1,$0.500000
	fst f1,r2,$-64
	j @cfg_label_3441
@cfg_label_3441:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fadd f1,f1,f2
	fst f1,r2,$-60
; lib_tortesia.ml@90:28;90:42 ::= Ofadd lib_tortesia.ml@90:28;90:35 lib_tortesia.ml@90:39;90:42
	j @cfg_label_3440
@cfg_label_3440:
	push r4
	lw r5,r2,$-60
	push r5
	jal @a_1548floor
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@90:21;90:43 lib_tortesia.ml@90:21;90:26
	j @cfg_label_3439
@cfg_label_3439:
	fmovi f1,$0.607253
	fst f1,r2,$-20
	j @cfg_label_3438
@cfg_label_3438:
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_3437
@cfg_label_3437:
	li r5,$0
	sw r5,r2,$-12
; lib_tortesia.ml@92:53;92:54
	j @cfg_label_3436
@cfg_label_3436:
	fld f1,r2,$-36
	fld f2,r31,$1496
	fmul f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@92:61;92:75 ::= Ofmul lib_tortesia.ml@92:61;92:69 lib_tortesia.ml@92:73;92:75
	j @cfg_label_3435
@cfg_label_3435:
	fld f1,r2,$8
	fld f2,r2,$-56
	fsub f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@92:56;92:75 ::= Ofsub lib_tortesia.ml@92:56;92:57 lib_tortesia.ml@92:61;92:75
	j @cfg_label_3434
@cfg_label_3434:
	fmovi f1,$2.000000
	fst f1,r2,$-52
	j @cfg_label_3433
@cfg_label_3433:
	fld f1,r2,$-36
	fld f2,r2,$-52
	fdiv f1,f1,f2
	fst f1,r2,$-48
; lib_tortesia.ml@92:97;92:112 ::= Ofdiv lib_tortesia.ml@92:97;92:105 lib_tortesia.ml@92:109;92:112
	j @cfg_label_3432
@cfg_label_3432:
	push r4
	lw r5,r2,$-48
	push r5
	jal @a_1548floor
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@92:90;92:113 lib_tortesia.ml@92:90;92:95
	j @cfg_label_3431
@cfg_label_3431:
	fmovi f1,$2.000000
	fst f1,r2,$-40
	j @cfg_label_3430
@cfg_label_3430:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-32
; lib_tortesia.ml@92:90;92:120 ::= Ofmul lib_tortesia.ml@92:90;92:113 lib_tortesia.ml@92:117;92:120
	j @cfg_label_3429
@cfg_label_3429:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fsub f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@92:78;92:120 ::= Ofsub lib_tortesia.ml@92:78;92:86 lib_tortesia.ml@92:90;92:120
	j @cfg_label_3428
@cfg_label_3428:
	fmovi f1,$1.000000
	fst f1,r2,$-24
	j @cfg_label_3427
@cfg_label_3427:
	fld f1,r2,$-28
	fld f2,r2,$-24
	feq f1,f2
	bft @emit_label_3522
	li r5,$0
	j @emit_label_3523
@emit_label_3522:
	li r5,$1
@emit_label_3523:
	sw r5,r2,$-4
; lib_tortesia.ml@92:78;92:126 ::= Oeq lib_tortesia.ml@92:78;92:120 lib_tortesia.ml@92:123;92:126
	j @cfg_label_3426
@cfg_label_3426:
	push r4
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
	jal @a_2320internal_sin
	sw r5,r2,$-72
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@78:3;92:127 lib_tortesia.ml@92:9;92:21
	lw r5,r2,$-72
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-72
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@a_2229internal_cos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	li r5,$24
	sw r5,r2,$-100
; lib_tortesia.ml@97:13;97:15
	j @cfg_label_3425
	li r5,$24
	sw r5,r2,$-100
; lib_tortesia.ml@97:13;97:15
	j @cfg_label_3425
@cfg_label_3425:
	lw r5,r2,$16
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_3422
	j @cfg_label_3421
	j @cfg_label_3423
	j @cfg_label_3424
@cfg_label_3424:
@cfg_label_3422:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_3420
@cfg_label_3420:
	fld f1,r2,$20
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_3524
	li r5,$1
	j @emit_label_3525
@emit_label_3524:
	li r5,$0
@emit_label_3525:
	sw r5,r2,$-88
; lib_tortesia.ml@103:12;103:24 ::= Ogeq lib_tortesia.ml@103:12;103:17 lib_tortesia.ml@103:21;103:24
	j @cfg_label_3419
@cfg_label_3419:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@103:12;103:24
	j @cfg_label_3418
@cfg_label_3418:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_3415
	j @cfg_label_3414
	j @cfg_label_3416
	j @cfg_label_3417
@cfg_label_3417:
@cfg_label_3415:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@106:36;106:45 ::= OArrRead lib_tortesia.ml@106:36;106:41 lib_tortesia.ml@106:43;106:44
	j @cfg_label_3413
@cfg_label_3413:
	fld f1,r2,$12
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-36
; lib_tortesia.ml@106:31;106:45 ::= Ofmul lib_tortesia.ml@106:31;106:32 lib_tortesia.ml@106:36;106:45
	j @cfg_label_3412
@cfg_label_3412:
	fld f1,r2,$8
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-16
; lib_tortesia.ml@106:26;106:45 ::= Ofadd lib_tortesia.ml@106:26;106:27 lib_tortesia.ml@106:31;106:45
	j @cfg_label_3411
@cfg_label_3411:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@106:58;106:67 ::= OArrRead lib_tortesia.ml@106:58;106:63 lib_tortesia.ml@106:65;106:66
	j @cfg_label_3410
@cfg_label_3410:
	fld f1,r2,$8
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@106:53;106:67 ::= Ofmul lib_tortesia.ml@106:53;106:54 lib_tortesia.ml@106:58;106:67
	j @cfg_label_3409
@cfg_label_3409:
	fld f1,r2,$12
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-12
; lib_tortesia.ml@106:48;106:67 ::= Ofsub lib_tortesia.ml@106:48;106:49 lib_tortesia.ml@106:53;106:67
	j @cfg_label_3408
@cfg_label_3408:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@106:74;106:75
	j @cfg_label_3407
@cfg_label_3407:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-8
; lib_tortesia.ml@106:70;106:75 ::= Oadd lib_tortesia.ml@106:70;106:71 lib_tortesia.ml@106:74;106:75
	j @cfg_label_3406
@cfg_label_3406:
	lw r6,r2,$16
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; lib_tortesia.ml@106:87;106:96 ::= OArrRead lib_tortesia.ml@106:87;106:92 lib_tortesia.ml@106:94;106:95
	j @cfg_label_3405
@cfg_label_3405:
	fld f1,r2,$20
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@106:78;106:96 ::= Ofadd lib_tortesia.ml@106:78;106:83 lib_tortesia.ml@106:87;106:96
	j @cfg_label_3404
@cfg_label_3404:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	jal @a_2229internal_cos
	sw r5,r2,$-104
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@97:6;106:110 lib_tortesia.ml@106:12;106:24
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_3416:
@cfg_label_3414:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; lib_tortesia.ml@104:36;104:45 ::= OArrRead lib_tortesia.ml@104:36;104:41 lib_tortesia.ml@104:43;104:44
	j @cfg_label_3403
@cfg_label_3403:
	fld f1,r2,$12
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-76
; lib_tortesia.ml@104:31;104:45 ::= Ofmul lib_tortesia.ml@104:31;104:32 lib_tortesia.ml@104:36;104:45
	j @cfg_label_3402
@cfg_label_3402:
	fld f1,r2,$8
	fld f2,r2,$-76
	fsub f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@104:26;104:45 ::= Ofsub lib_tortesia.ml@104:26;104:27 lib_tortesia.ml@104:31;104:45
	j @cfg_label_3401
@cfg_label_3401:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; lib_tortesia.ml@104:58;104:67 ::= OArrRead lib_tortesia.ml@104:58;104:63 lib_tortesia.ml@104:65;104:66
	j @cfg_label_3400
@cfg_label_3400:
	fld f1,r2,$8
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@104:53;104:67 ::= Ofmul lib_tortesia.ml@104:53;104:54 lib_tortesia.ml@104:58;104:67
	j @cfg_label_3399
@cfg_label_3399:
	fld f1,r2,$12
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@104:48;104:67 ::= Ofadd lib_tortesia.ml@104:48;104:49 lib_tortesia.ml@104:53;104:67
	j @cfg_label_3398
@cfg_label_3398:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@104:74;104:75
	j @cfg_label_3397
@cfg_label_3397:
	lw r6,r2,$-64
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-48
; lib_tortesia.ml@104:70;104:75 ::= Oadd lib_tortesia.ml@104:70;104:71 lib_tortesia.ml@104:74;104:75
	j @cfg_label_3396
@cfg_label_3396:
	lw r6,r2,$16
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; lib_tortesia.ml@104:87;104:96 ::= OArrRead lib_tortesia.ml@104:87;104:92 lib_tortesia.ml@104:94;104:95
	j @cfg_label_3395
@cfg_label_3395:
	fld f1,r2,$20
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; lib_tortesia.ml@104:78;104:96 ::= Ofsub lib_tortesia.ml@104:78;104:83 lib_tortesia.ml@104:87;104:96
	j @cfg_label_3394
@cfg_label_3394:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_2229internal_cos
	sw r5,r2,$-104
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@97:6;106:110 lib_tortesia.ml@104:12;104:24
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_3423:
@cfg_label_3421:
	li r5,$1
	sw r5,r2,$-96
; lib_tortesia.ml@98:13;98:25
	j @cfg_label_3393
@cfg_label_3393:
	lw r5,r2,$24
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_3390
	j @cfg_label_3389
	j @cfg_label_3391
	j @cfg_label_3392
@cfg_label_3391:
@cfg_label_3389:
	push r4
	lw r5,r2,$8
	push r5
	jal @a_1554fneg
	sw r5,r2,$-104
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@97:6;106:110 lib_tortesia.ml@99:13;99:17
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_3392:
@cfg_label_3390:
	lw r5,r2,$8
	sw r5,r2,$-104
; lib_tortesia.ml@97:6;106:110 ::<= lib_tortesia.ml@101:12;101:13
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@a_1564cos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$72
	fld f1,r2,$8
	fld f2,r31,$1496
	fdiv f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@108:28;108:35 ::= Ofdiv lib_tortesia.ml@108:28;108:29 lib_tortesia.ml@108:33;108:35
	j @cfg_label_3388
	fld f1,r2,$8
	fld f2,r31,$1496
	fdiv f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@108:28;108:35 ::= Ofdiv lib_tortesia.ml@108:28;108:29 lib_tortesia.ml@108:33;108:35
	j @cfg_label_3388
@cfg_label_3388:
	fmovi f1,$0.500000
	fst f1,r2,$-64
	j @cfg_label_3387
@cfg_label_3387:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fadd f1,f1,f2
	fst f1,r2,$-60
; lib_tortesia.ml@108:28;108:42 ::= Ofadd lib_tortesia.ml@108:28;108:35 lib_tortesia.ml@108:39;108:42
	j @cfg_label_3386
@cfg_label_3386:
	push r4
	lw r5,r2,$-60
	push r5
	jal @a_1548floor
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@108:21;108:43 lib_tortesia.ml@108:21;108:26
	j @cfg_label_3385
@cfg_label_3385:
	fmovi f1,$0.607253
	fst f1,r2,$-20
	j @cfg_label_3384
@cfg_label_3384:
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_3383
@cfg_label_3383:
	li r5,$0
	sw r5,r2,$-12
; lib_tortesia.ml@110:53;110:54
	j @cfg_label_3382
@cfg_label_3382:
	fld f1,r2,$-36
	fld f2,r31,$1496
	fmul f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@110:61;110:75 ::= Ofmul lib_tortesia.ml@110:61;110:69 lib_tortesia.ml@110:73;110:75
	j @cfg_label_3381
@cfg_label_3381:
	fld f1,r2,$8
	fld f2,r2,$-56
	fsub f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@110:56;110:75 ::= Ofsub lib_tortesia.ml@110:56;110:57 lib_tortesia.ml@110:61;110:75
	j @cfg_label_3380
@cfg_label_3380:
	fmovi f1,$2.000000
	fst f1,r2,$-52
	j @cfg_label_3379
@cfg_label_3379:
	fld f1,r2,$-36
	fld f2,r2,$-52
	fdiv f1,f1,f2
	fst f1,r2,$-48
; lib_tortesia.ml@110:97;110:112 ::= Ofdiv lib_tortesia.ml@110:97;110:105 lib_tortesia.ml@110:109;110:112
	j @cfg_label_3378
@cfg_label_3378:
	push r4
	lw r5,r2,$-48
	push r5
	jal @a_1548floor
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@110:90;110:113 lib_tortesia.ml@110:90;110:95
	j @cfg_label_3377
@cfg_label_3377:
	fmovi f1,$2.000000
	fst f1,r2,$-40
	j @cfg_label_3376
@cfg_label_3376:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-32
; lib_tortesia.ml@110:90;110:120 ::= Ofmul lib_tortesia.ml@110:90;110:113 lib_tortesia.ml@110:117;110:120
	j @cfg_label_3375
@cfg_label_3375:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fsub f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@110:78;110:120 ::= Ofsub lib_tortesia.ml@110:78;110:86 lib_tortesia.ml@110:90;110:120
	j @cfg_label_3374
@cfg_label_3374:
	fmovi f1,$1.000000
	fst f1,r2,$-24
	j @cfg_label_3373
@cfg_label_3373:
	fld f1,r2,$-28
	fld f2,r2,$-24
	feq f1,f2
	bft @emit_label_3526
	li r5,$0
	j @emit_label_3527
@emit_label_3526:
	li r5,$1
@emit_label_3527:
	sw r5,r2,$-4
; lib_tortesia.ml@110:78;110:126 ::= Oeq lib_tortesia.ml@110:78;110:120 lib_tortesia.ml@110:123;110:126
	j @cfg_label_3372
@cfg_label_3372:
	push r4
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
	jal @a_2229internal_cos
	sw r5,r2,$-72
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@96:3;110:127 lib_tortesia.ml@110:9;110:21
	lw r5,r2,$-72
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-72
	addi r1,r1,$72
	pop r2
	pop r6
	jr r6
@a_2167internal_atan:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$100
	li r5,$24
	sw r5,r2,$-96
; lib_tortesia.ml@114:10;114:12
	j @cfg_label_3371
	li r5,$24
	sw r5,r2,$-96
; lib_tortesia.ml@114:10;114:12
	j @cfg_label_3371
@cfg_label_3371:
	lw r5,r2,$16
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_3368
	j @cfg_label_3367
	j @cfg_label_3369
	j @cfg_label_3370
@cfg_label_3369:
@cfg_label_3367:
	lw r5,r2,$20
	sw r5,r2,$-100
; lib_tortesia.ml@114:3;120:95 ::<= lib_tortesia.ml@115:6;115:11
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@cfg_label_3370:
@cfg_label_3368:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_3366
@cfg_label_3366:
	fld f1,r2,$12
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_3528
	li r5,$0
	j @emit_label_3529
@emit_label_3528:
	li r5,$1
@emit_label_3529:
	sw r5,r2,$-88
; lib_tortesia.ml@117:9;117:16 ::= Olt lib_tortesia.ml@117:9;117:10 lib_tortesia.ml@117:13;117:16
	j @cfg_label_3365
@cfg_label_3365:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@117:9;117:16
	j @cfg_label_3364
@cfg_label_3364:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_3361
	j @cfg_label_3360
	j @cfg_label_3362
	j @cfg_label_3363
@cfg_label_3363:
@cfg_label_3361:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@120:34;120:43 ::= OArrRead lib_tortesia.ml@120:34;120:39 lib_tortesia.ml@120:41;120:42
	j @cfg_label_3359
@cfg_label_3359:
	fld f1,r2,$12
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-36
; lib_tortesia.ml@120:29;120:43 ::= Ofmul lib_tortesia.ml@120:29;120:30 lib_tortesia.ml@120:34;120:43
	j @cfg_label_3358
@cfg_label_3358:
	fld f1,r2,$8
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-16
; lib_tortesia.ml@120:24;120:43 ::= Ofadd lib_tortesia.ml@120:24;120:25 lib_tortesia.ml@120:29;120:43
	j @cfg_label_3357
@cfg_label_3357:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@120:56;120:65 ::= OArrRead lib_tortesia.ml@120:56;120:61 lib_tortesia.ml@120:63;120:64
	j @cfg_label_3356
@cfg_label_3356:
	fld f1,r2,$8
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@120:51;120:65 ::= Ofmul lib_tortesia.ml@120:51;120:52 lib_tortesia.ml@120:56;120:65
	j @cfg_label_3355
@cfg_label_3355:
	fld f1,r2,$12
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-12
; lib_tortesia.ml@120:46;120:65 ::= Ofsub lib_tortesia.ml@120:46;120:47 lib_tortesia.ml@120:51;120:65
	j @cfg_label_3354
@cfg_label_3354:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@120:72;120:73
	j @cfg_label_3353
@cfg_label_3353:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-8
; lib_tortesia.ml@120:68;120:73 ::= Oadd lib_tortesia.ml@120:68;120:69 lib_tortesia.ml@120:72;120:73
	j @cfg_label_3352
@cfg_label_3352:
	lw r6,r2,$16
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; lib_tortesia.ml@120:85;120:94 ::= OArrRead lib_tortesia.ml@120:85;120:90 lib_tortesia.ml@120:92;120:93
	j @cfg_label_3351
@cfg_label_3351:
	fld f1,r2,$20
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@120:76;120:94 ::= Ofadd lib_tortesia.ml@120:76;120:81 lib_tortesia.ml@120:85;120:94
	j @cfg_label_3350
@cfg_label_3350:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	jal @a_2167internal_atan
	sw r5,r2,$-100
	addi r1,r1,$16
	pop r4
; lib_tortesia.ml@114:3;120:95 lib_tortesia.ml@120:9;120:22
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@cfg_label_3362:
@cfg_label_3360:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; lib_tortesia.ml@118:34;118:43 ::= OArrRead lib_tortesia.ml@118:34;118:39 lib_tortesia.ml@118:41;118:42
	j @cfg_label_3349
@cfg_label_3349:
	fld f1,r2,$12
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-76
; lib_tortesia.ml@118:29;118:43 ::= Ofmul lib_tortesia.ml@118:29;118:30 lib_tortesia.ml@118:34;118:43
	j @cfg_label_3348
@cfg_label_3348:
	fld f1,r2,$8
	fld f2,r2,$-76
	fsub f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@118:24;118:43 ::= Ofsub lib_tortesia.ml@118:24;118:25 lib_tortesia.ml@118:29;118:43
	j @cfg_label_3347
@cfg_label_3347:
	lw r6,r2,$16
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; lib_tortesia.ml@118:56;118:65 ::= OArrRead lib_tortesia.ml@118:56;118:61 lib_tortesia.ml@118:63;118:64
	j @cfg_label_3346
@cfg_label_3346:
	fld f1,r2,$8
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@118:51;118:65 ::= Ofmul lib_tortesia.ml@118:51;118:52 lib_tortesia.ml@118:56;118:65
	j @cfg_label_3345
@cfg_label_3345:
	fld f1,r2,$12
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@118:46;118:65 ::= Ofadd lib_tortesia.ml@118:46;118:47 lib_tortesia.ml@118:51;118:65
	j @cfg_label_3344
@cfg_label_3344:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@118:72;118:73
	j @cfg_label_3343
@cfg_label_3343:
	lw r6,r2,$-64
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-48
; lib_tortesia.ml@118:68;118:73 ::= Oadd lib_tortesia.ml@118:68;118:69 lib_tortesia.ml@118:72;118:73
	j @cfg_label_3342
@cfg_label_3342:
	lw r6,r2,$16
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; lib_tortesia.ml@118:85;118:94 ::= OArrRead lib_tortesia.ml@118:85;118:90 lib_tortesia.ml@118:92;118:93
	j @cfg_label_3341
@cfg_label_3341:
	fld f1,r2,$20
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; lib_tortesia.ml@118:76;118:94 ::= Ofsub lib_tortesia.ml@118:76;118:81 lib_tortesia.ml@118:85;118:94
	j @cfg_label_3340
@cfg_label_3340:
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_2167internal_atan
	sw r5,r2,$-100
	addi r1,r1,$16
	pop r4
; lib_tortesia.ml@114:3;120:95 lib_tortesia.ml@118:9;118:22
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@a_1566atan:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$16
	fmovi f1,$1.000000
	fst f1,r2,$-12
	j @cfg_label_3339
	fmovi f1,$1.000000
	fst f1,r2,$-12
	j @cfg_label_3339
@cfg_label_3339:
	li r5,$0
	sw r5,r2,$-8
; lib_tortesia.ml@122:23;122:24
	j @cfg_label_3338
@cfg_label_3338:
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_3337
@cfg_label_3337:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$8
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_2167internal_atan
	sw r5,r2,$-16
	addi r1,r1,$16
	pop r4
; lib_tortesia.ml@113:0;122:28 lib_tortesia.ml@122:3;122:16
	lw r5,r2,$-16
	addi r1,r1,$16
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-16
	addi r1,r1,$16
	pop r2
	pop r6
	jr r6
@a_2113print_int_base:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$10
	sw r5,r2,$-60
; lib_tortesia.ml@132:9;132:11
	j @cfg_label_3336
	li r5,$10
	sw r5,r2,$-60
; lib_tortesia.ml@132:9;132:11
	j @cfg_label_3336
@cfg_label_3336:
	lw r6,r2,$-60
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-56
; lib_tortesia.ml@132:5;132:11 ::= Olt lib_tortesia.ml@132:5;132:6 lib_tortesia.ml@132:9;132:11
	j @cfg_label_3335
@cfg_label_3335:
	li r5,$1
	sw r5,r2,$-52
; lib_tortesia.ml@132:5;132:11
	j @cfg_label_3334
@cfg_label_3334:
	lw r5,r2,$-56
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_3331
	j @cfg_label_3330
	j @cfg_label_3332
	j @cfg_label_3333
@cfg_label_3333:
@cfg_label_3331:
	lw r5,r2,$8
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sra r5,r6,$11
	sw r5,r2,$-28
; lib_tortesia.ml@133:20;133:24 ::= Oibydiv[10] lib_tortesia.ml@133:20;133:21
	j @cfg_label_3329
@cfg_label_3329:
	push r4
	lw r5,r2,$-28
	push r5
	jal @a_2113print_int_base
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@133:4;133:25 lib_tortesia.ml@133:4;133:18
	j @cfg_label_3328
@cfg_label_3328:
	lw r5,r2,$-28
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-24
; lib_tortesia.ml@134:18;134:27 ::= Oimul[10] lib_tortesia.ml@134:19;134:23
	j @cfg_label_3327
@cfg_label_3327:
	lw r6,r2,$-24
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-20
; lib_tortesia.ml@134:16;134:27 ::= Osub lib_tortesia.ml@134:16;134:17 lib_tortesia.ml@134:18;134:27
	j @cfg_label_3326
@cfg_label_3326:
	li r5,$48
	sw r5,r2,$-16
; lib_tortesia.ml@134:29;134:31
	j @cfg_label_3325
@cfg_label_3325:
	lw r6,r2,$-16
	lw r5,r2,$-20
	add r5,r5,r6
	sw r5,r2,$-12
; lib_tortesia.ml@134:15;134:31 ::= Oadd lib_tortesia.ml@134:16;134:27 lib_tortesia.ml@134:29;134:31
	j @cfg_label_3324
@cfg_label_3324:
	push r4
	lw r5,r2,$-12
	push r5
	jal print_char
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@134:3;134:32 lib_tortesia.ml@134:3;134:13
	j @cfg_label_3323
@cfg_label_3323:
	lw r5,r2,$-4
	sw r5,r2,$-64
; lib_tortesia.ml@132:2;134:33 ::<= lib_tortesia.ml@134:3;134:32
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_3332:
@cfg_label_3330:
	li r5,$0
	sw r5,r2,$-48
; lib_tortesia.ml@132:21;132:22
	j @cfg_label_3322
@cfg_label_3322:
	lw r6,r2,$8
	lw r5,r2,$-48
	slt r5,r5,r6
	sw r5,r2,$-44
; lib_tortesia.ml@132:21;132:26 ::= Olt lib_tortesia.ml@132:21;132:22 lib_tortesia.ml@132:25;132:26
	j @cfg_label_3321
@cfg_label_3321:
	li r5,$1
	sw r5,r2,$-40
; lib_tortesia.ml@132:21;132:26
	j @cfg_label_3320
@cfg_label_3320:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_3317
	j @cfg_label_3316
	j @cfg_label_3318
	j @cfg_label_3319
@cfg_label_3319:
@cfg_label_3317:
	sw r3,r2,$-64
	addi r3,r3,$0
; lib_tortesia.ml@132:2;134:33
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_3318:
@cfg_label_3316:
	li r5,$48
	sw r5,r2,$-36
; lib_tortesia.ml@132:46;132:48
	j @cfg_label_3315
@cfg_label_3315:
	lw r6,r2,$-36
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-32
; lib_tortesia.ml@132:44;132:48 ::= Oadd lib_tortesia.ml@132:44;132:45 lib_tortesia.ml@132:46;132:48
	j @cfg_label_3314
@cfg_label_3314:
	push r4
	lw r5,r2,$-32
	push r5
	jal print_char
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@132:2;134:33 lib_tortesia.ml@132:32;132:42
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@a_1568print_int:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	li r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@136:8;136:9
	j @cfg_label_3313
	li r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@136:8;136:9
	j @cfg_label_3313
@cfg_label_3313:
	lw r5,r2,$8
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_3310
	j @cfg_label_3309
	j @cfg_label_3311
	j @cfg_label_3312
@cfg_label_3312:
@cfg_label_3310:
	li r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@137:14;137:15
	j @cfg_label_3308
@cfg_label_3308:
	lw r6,r2,$-32
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-28
; lib_tortesia.ml@137:10;137:15 ::= Olt lib_tortesia.ml@137:10;137:11 lib_tortesia.ml@137:14;137:15
	j @cfg_label_3307
@cfg_label_3307:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@137:10;137:15
	j @cfg_label_3306
@cfg_label_3306:
	lw r5,r2,$-28
	lw r6,r2,$-24
	bne r5,r6,@cfg_label_3303
	j @cfg_label_3302
	j @cfg_label_3304
	j @cfg_label_3305
@cfg_label_3305:
@cfg_label_3303:
	push r4
	lw r5,r2,$8
	push r5
	jal @a_2113print_int_base
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@129:1;137:79 lib_tortesia.ml@137:62;137:76
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_3304:
@cfg_label_3302:
	li r5,$45
	sw r5,r2,$-20
; lib_tortesia.ml@137:32;137:34
	j @cfg_label_3301
@cfg_label_3301:
	push r4
	lw r5,r2,$-20
	push r5
	jal print_char
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@137:21;137:34 lib_tortesia.ml@137:21;137:31
	j @cfg_label_3300
@cfg_label_3300:
	li r5,$0
	sw r5,r2,$-16
; lib_tortesia.ml@137:52;137:53
	j @cfg_label_3299
@cfg_label_3299:
	lw r6,r2,$8
	lw r5,r2,$-16
	sub r5,r5,r6
	sw r5,r2,$-12
; lib_tortesia.ml@137:52;137:55 ::= Osub lib_tortesia.ml@137:52;137:53 lib_tortesia.ml@137:54;137:55
	j @cfg_label_3298
@cfg_label_3298:
	push r4
	lw r5,r2,$-12
	push r5
	jal @a_2113print_int_base
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@137:36;137:56 lib_tortesia.ml@137:36;137:50
	j @cfg_label_3297
@cfg_label_3297:
	lw r5,r2,$-4
	sw r5,r2,$-44
; lib_tortesia.ml@129:1;137:79 ::<= lib_tortesia.ml@137:36;137:56
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_3311:
@cfg_label_3309:
	li r5,$48
	sw r5,r2,$-36
; lib_tortesia.ml@136:26;136:28
	j @cfg_label_3296
@cfg_label_3296:
	push r4
	lw r5,r2,$-36
	push r5
	jal print_char
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@129:1;137:79 lib_tortesia.ml@136:15;136:25
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
main:
	mflr r7
	push r7
	mov r31,r3
	addi r3,r3,$2264
	push r2
	mov r2,r1
	subi r1,r1,$4
	li r5,$24
	sw r5,r31,$2260
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_3295
	li r5,$24
	sw r5,r31,$2260
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_3295
@cfg_label_3295:
	fmovi f1,$0.000000
	fst f1,r31,$2256
	j @cfg_label_3294
@cfg_label_3294:
	lw r6,r31,$2256
	lw r5,r31,$2260
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_3505
@emit_label_3504:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_3504
@emit_label_3505:
	mov r5,r7
	sw r5,r31,$2252
; lib_tortesia.ml@21:12;21:31 ::= OArrCrt lib_tortesia.ml@21:25;21:27 lib_tortesia.ml@21:28;21:31
	j @cfg_label_3293
@cfg_label_3293:
	li r5,$24
	sw r5,r31,$2248
; lib_tortesia.ml@22:25;22:27
	j @cfg_label_3292
@cfg_label_3292:
	fmovi f1,$0.000000
	fst f1,r31,$2244
	j @cfg_label_3291
@cfg_label_3291:
	lw r6,r31,$2244
	lw r5,r31,$2248
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_3507
@emit_label_3506:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_3506
@emit_label_3507:
	mov r5,r7
	sw r5,r31,$2240
; lib_tortesia.ml@22:12;22:31 ::= OArrCrt lib_tortesia.ml@22:25;22:27 lib_tortesia.ml@22:28;22:31
	j @cfg_label_3290
@cfg_label_3290:
	li r5,$0
	sw r5,r31,$2236
; lib_tortesia.ml@25:7;25:8
	j @cfg_label_3289
@cfg_label_3289:
	fmovi f1,$1.000000
	fst f1,r31,$2232
	j @cfg_label_3288
@cfg_label_3288:
	lw r7,r31,$2232
	lw r6,r31,$2236
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2228
; lib_tortesia.ml@25:0;25:16 ::= OArrWrite lib_tortesia.ml@25:0;25:5 lib_tortesia.ml@25:7;25:8 lib_tortesia.ml@25:13;25:16
	j @cfg_label_3287
@cfg_label_3287:
	li r5,$1
	sw r5,r31,$2224
; lib_tortesia.ml@26:7;26:8
	j @cfg_label_3286
@cfg_label_3286:
	fmovi f1,$0.500000
	fst f1,r31,$2220
	j @cfg_label_3285
@cfg_label_3285:
	lw r7,r31,$2220
	lw r6,r31,$2224
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2216
; lib_tortesia.ml@26:0;26:16 ::= OArrWrite lib_tortesia.ml@26:0;26:5 lib_tortesia.ml@26:7;26:8 lib_tortesia.ml@26:13;26:16
	j @cfg_label_3284
@cfg_label_3284:
	li r5,$2
	sw r5,r31,$2212
; lib_tortesia.ml@27:7;27:8
	j @cfg_label_3283
@cfg_label_3283:
	fmovi f1,$0.250000
	fst f1,r31,$2208
	j @cfg_label_3282
@cfg_label_3282:
	lw r7,r31,$2208
	lw r6,r31,$2212
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2204
; lib_tortesia.ml@27:0;27:17 ::= OArrWrite lib_tortesia.ml@27:0;27:5 lib_tortesia.ml@27:7;27:8 lib_tortesia.ml@27:13;27:17
	j @cfg_label_3281
@cfg_label_3281:
	li r5,$3
	sw r5,r31,$2200
; lib_tortesia.ml@28:7;28:8
	j @cfg_label_3280
@cfg_label_3280:
	fmovi f1,$0.125000
	fst f1,r31,$2196
	j @cfg_label_3279
@cfg_label_3279:
	lw r7,r31,$2196
	lw r6,r31,$2200
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2192
; lib_tortesia.ml@28:0;28:18 ::= OArrWrite lib_tortesia.ml@28:0;28:5 lib_tortesia.ml@28:7;28:8 lib_tortesia.ml@28:13;28:18
	j @cfg_label_3278
@cfg_label_3278:
	li r5,$4
	sw r5,r31,$2188
; lib_tortesia.ml@29:7;29:8
	j @cfg_label_3277
@cfg_label_3277:
	fmovi f1,$0.062500
	fst f1,r31,$2184
	j @cfg_label_3276
@cfg_label_3276:
	lw r7,r31,$2184
	lw r6,r31,$2188
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2180
; lib_tortesia.ml@29:0;29:19 ::= OArrWrite lib_tortesia.ml@29:0;29:5 lib_tortesia.ml@29:7;29:8 lib_tortesia.ml@29:13;29:19
	j @cfg_label_3275
@cfg_label_3275:
	li r5,$5
	sw r5,r31,$2176
; lib_tortesia.ml@30:7;30:8
	j @cfg_label_3274
@cfg_label_3274:
	fmovi f1,$0.031250
	fst f1,r31,$2172
	j @cfg_label_3273
@cfg_label_3273:
	lw r7,r31,$2172
	lw r6,r31,$2176
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2168
; lib_tortesia.ml@30:0;30:20 ::= OArrWrite lib_tortesia.ml@30:0;30:5 lib_tortesia.ml@30:7;30:8 lib_tortesia.ml@30:13;30:20
	j @cfg_label_3272
@cfg_label_3272:
	li r5,$6
	sw r5,r31,$2164
; lib_tortesia.ml@31:7;31:8
	j @cfg_label_3271
@cfg_label_3271:
	fmovi f1,$0.015625
	fst f1,r31,$2160
	j @cfg_label_3270
@cfg_label_3270:
	lw r7,r31,$2160
	lw r6,r31,$2164
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2156
; lib_tortesia.ml@31:0;31:21 ::= OArrWrite lib_tortesia.ml@31:0;31:5 lib_tortesia.ml@31:7;31:8 lib_tortesia.ml@31:13;31:21
	j @cfg_label_3269
@cfg_label_3269:
	li r5,$7
	sw r5,r31,$2152
; lib_tortesia.ml@32:7;32:8
	j @cfg_label_3268
@cfg_label_3268:
	fmovi f1,$0.007812
	fst f1,r31,$2148
	j @cfg_label_3267
@cfg_label_3267:
	lw r7,r31,$2148
	lw r6,r31,$2152
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2144
; lib_tortesia.ml@32:0;32:22 ::= OArrWrite lib_tortesia.ml@32:0;32:5 lib_tortesia.ml@32:7;32:8 lib_tortesia.ml@32:13;32:22
	j @cfg_label_3266
@cfg_label_3266:
	li r5,$8
	sw r5,r31,$2140
; lib_tortesia.ml@33:7;33:8
	j @cfg_label_3265
@cfg_label_3265:
	fmovi f1,$0.003906
	fst f1,r31,$2136
	j @cfg_label_3264
@cfg_label_3264:
	lw r7,r31,$2136
	lw r6,r31,$2140
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2132
; lib_tortesia.ml@33:0;33:23 ::= OArrWrite lib_tortesia.ml@33:0;33:5 lib_tortesia.ml@33:7;33:8 lib_tortesia.ml@33:13;33:23
	j @cfg_label_3263
@cfg_label_3263:
	li r5,$9
	sw r5,r31,$2128
; lib_tortesia.ml@34:7;34:8
	j @cfg_label_3262
@cfg_label_3262:
	fmovi f1,$0.001953
	fst f1,r31,$2124
	j @cfg_label_3261
@cfg_label_3261:
	lw r7,r31,$2124
	lw r6,r31,$2128
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2120
; lib_tortesia.ml@34:0;34:24 ::= OArrWrite lib_tortesia.ml@34:0;34:5 lib_tortesia.ml@34:7;34:8 lib_tortesia.ml@34:13;34:24
	j @cfg_label_3260
@cfg_label_3260:
	li r5,$10
	sw r5,r31,$2116
; lib_tortesia.ml@35:7;35:9
	j @cfg_label_3259
@cfg_label_3259:
	fmovi f1,$0.000977
	fst f1,r31,$2112
	j @cfg_label_3258
@cfg_label_3258:
	lw r7,r31,$2112
	lw r6,r31,$2116
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2108
; lib_tortesia.ml@35:0;35:26 ::= OArrWrite lib_tortesia.ml@35:0;35:5 lib_tortesia.ml@35:7;35:9 lib_tortesia.ml@35:14;35:26
	j @cfg_label_3257
@cfg_label_3257:
	li r5,$11
	sw r5,r31,$2104
; lib_tortesia.ml@36:7;36:9
	j @cfg_label_3256
@cfg_label_3256:
	fmovi f1,$0.000488
	fst f1,r31,$2100
	j @cfg_label_3255
@cfg_label_3255:
	lw r7,r31,$2100
	lw r6,r31,$2104
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2096
; lib_tortesia.ml@36:0;36:27 ::= OArrWrite lib_tortesia.ml@36:0;36:5 lib_tortesia.ml@36:7;36:9 lib_tortesia.ml@36:14;36:27
	j @cfg_label_3254
@cfg_label_3254:
	li r5,$12
	sw r5,r31,$2092
; lib_tortesia.ml@37:7;37:9
	j @cfg_label_3253
@cfg_label_3253:
	fmovi f1,$0.000244
	fst f1,r31,$2088
	j @cfg_label_3252
@cfg_label_3252:
	lw r7,r31,$2088
	lw r6,r31,$2092
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2084
; lib_tortesia.ml@37:0;37:28 ::= OArrWrite lib_tortesia.ml@37:0;37:5 lib_tortesia.ml@37:7;37:9 lib_tortesia.ml@37:14;37:28
	j @cfg_label_3251
@cfg_label_3251:
	li r5,$13
	sw r5,r31,$2080
; lib_tortesia.ml@38:7;38:9
	j @cfg_label_3250
@cfg_label_3250:
	fmovi f1,$0.000122
	fst f1,r31,$2076
	j @cfg_label_3249
@cfg_label_3249:
	lw r7,r31,$2076
	lw r6,r31,$2080
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2072
; lib_tortesia.ml@38:0;38:29 ::= OArrWrite lib_tortesia.ml@38:0;38:5 lib_tortesia.ml@38:7;38:9 lib_tortesia.ml@38:14;38:29
	j @cfg_label_3248
@cfg_label_3248:
	li r5,$14
	sw r5,r31,$2068
; lib_tortesia.ml@39:7;39:9
	j @cfg_label_3247
@cfg_label_3247:
	fmovi f1,$0.000061
	fst f1,r31,$2064
	j @cfg_label_3246
@cfg_label_3246:
	lw r7,r31,$2064
	lw r6,r31,$2068
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2060
; lib_tortesia.ml@39:0;39:30 ::= OArrWrite lib_tortesia.ml@39:0;39:5 lib_tortesia.ml@39:7;39:9 lib_tortesia.ml@39:14;39:30
	j @cfg_label_3245
@cfg_label_3245:
	li r5,$15
	sw r5,r31,$2056
; lib_tortesia.ml@40:7;40:9
	j @cfg_label_3244
@cfg_label_3244:
	fmovi f1,$0.000031
	fst f1,r31,$2052
	j @cfg_label_3243
@cfg_label_3243:
	lw r7,r31,$2052
	lw r6,r31,$2056
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2048
; lib_tortesia.ml@40:0;40:31 ::= OArrWrite lib_tortesia.ml@40:0;40:5 lib_tortesia.ml@40:7;40:9 lib_tortesia.ml@40:14;40:31
	j @cfg_label_3242
@cfg_label_3242:
	li r5,$16
	sw r5,r31,$2044
; lib_tortesia.ml@41:7;41:9
	j @cfg_label_3241
@cfg_label_3241:
	fmovi f1,$0.000015
	fst f1,r31,$2040
	j @cfg_label_3240
@cfg_label_3240:
	lw r7,r31,$2040
	lw r6,r31,$2044
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2036
; lib_tortesia.ml@41:0;41:32 ::= OArrWrite lib_tortesia.ml@41:0;41:5 lib_tortesia.ml@41:7;41:9 lib_tortesia.ml@41:14;41:32
	j @cfg_label_3239
@cfg_label_3239:
	li r5,$17
	sw r5,r31,$2032
; lib_tortesia.ml@42:7;42:9
	j @cfg_label_3238
@cfg_label_3238:
	fmovi f1,$0.000008
	fst f1,r31,$2028
	j @cfg_label_3237
@cfg_label_3237:
	lw r7,r31,$2028
	lw r6,r31,$2032
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2024
; lib_tortesia.ml@42:0;42:33 ::= OArrWrite lib_tortesia.ml@42:0;42:5 lib_tortesia.ml@42:7;42:9 lib_tortesia.ml@42:14;42:33
	j @cfg_label_3236
@cfg_label_3236:
	li r5,$18
	sw r5,r31,$2020
; lib_tortesia.ml@43:7;43:9
	j @cfg_label_3235
@cfg_label_3235:
	fmovi f1,$0.000004
	fst f1,r31,$2016
	j @cfg_label_3234
@cfg_label_3234:
	lw r7,r31,$2016
	lw r6,r31,$2020
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2012
; lib_tortesia.ml@43:0;43:34 ::= OArrWrite lib_tortesia.ml@43:0;43:5 lib_tortesia.ml@43:7;43:9 lib_tortesia.ml@43:14;43:34
	j @cfg_label_3233
@cfg_label_3233:
	li r5,$19
	sw r5,r31,$2008
; lib_tortesia.ml@44:7;44:9
	j @cfg_label_3232
@cfg_label_3232:
	fmovi f1,$0.000002
	fst f1,r31,$2004
	j @cfg_label_3231
@cfg_label_3231:
	lw r7,r31,$2004
	lw r6,r31,$2008
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$2000
; lib_tortesia.ml@44:0;44:35 ::= OArrWrite lib_tortesia.ml@44:0;44:5 lib_tortesia.ml@44:7;44:9 lib_tortesia.ml@44:14;44:35
	j @cfg_label_3230
@cfg_label_3230:
	li r5,$20
	sw r5,r31,$1996
; lib_tortesia.ml@45:7;45:9
	j @cfg_label_3229
@cfg_label_3229:
	fmovi f1,$0.000001
	fst f1,r31,$1992
	j @cfg_label_3228
@cfg_label_3228:
	lw r7,r31,$1992
	lw r6,r31,$1996
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1988
; lib_tortesia.ml@45:0;45:36 ::= OArrWrite lib_tortesia.ml@45:0;45:5 lib_tortesia.ml@45:7;45:9 lib_tortesia.ml@45:14;45:36
	j @cfg_label_3227
@cfg_label_3227:
	li r5,$21
	sw r5,r31,$1984
; lib_tortesia.ml@46:7;46:9
	j @cfg_label_3226
@cfg_label_3226:
	fmovi f1,$0.000000
	fst f1,r31,$1980
	j @cfg_label_3225
@cfg_label_3225:
	lw r7,r31,$1980
	lw r6,r31,$1984
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1976
; lib_tortesia.ml@46:0;46:37 ::= OArrWrite lib_tortesia.ml@46:0;46:5 lib_tortesia.ml@46:7;46:9 lib_tortesia.ml@46:14;46:37
	j @cfg_label_3224
@cfg_label_3224:
	li r5,$22
	sw r5,r31,$1972
; lib_tortesia.ml@47:7;47:9
	j @cfg_label_3223
@cfg_label_3223:
	fmovi f1,$0.000000
	fst f1,r31,$1968
	j @cfg_label_3222
@cfg_label_3222:
	lw r7,r31,$1968
	lw r6,r31,$1972
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1964
; lib_tortesia.ml@47:0;47:38 ::= OArrWrite lib_tortesia.ml@47:0;47:5 lib_tortesia.ml@47:7;47:9 lib_tortesia.ml@47:14;47:38
	j @cfg_label_3221
@cfg_label_3221:
	li r5,$23
	sw r5,r31,$1960
; lib_tortesia.ml@48:7;48:9
	j @cfg_label_3220
@cfg_label_3220:
	fmovi f1,$0.000000
	fst f1,r31,$1956
	j @cfg_label_3219
@cfg_label_3219:
	lw r7,r31,$1956
	lw r6,r31,$1960
	lw r5,r31,$2252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1952
; lib_tortesia.ml@48:0;48:39 ::= OArrWrite lib_tortesia.ml@48:0;48:5 lib_tortesia.ml@48:7;48:9 lib_tortesia.ml@48:14;48:39
	j @cfg_label_3218
@cfg_label_3218:
	li r5,$0
	sw r5,r31,$1948
; lib_tortesia.ml@50:7;50:8
	j @cfg_label_3217
@cfg_label_3217:
	fmovi f1,$0.785398
	fst f1,r31,$1944
	j @cfg_label_3216
@cfg_label_3216:
	lw r7,r31,$1944
	lw r6,r31,$1948
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1940
; lib_tortesia.ml@50:0;50:39 ::= OArrWrite lib_tortesia.ml@50:0;50:5 lib_tortesia.ml@50:7;50:8 lib_tortesia.ml@50:13;50:39
	j @cfg_label_3215
@cfg_label_3215:
	li r5,$1
	sw r5,r31,$1936
; lib_tortesia.ml@51:7;51:8
	j @cfg_label_3214
@cfg_label_3214:
	fmovi f1,$0.463648
	fst f1,r31,$1932
	j @cfg_label_3213
@cfg_label_3213:
	lw r7,r31,$1932
	lw r6,r31,$1936
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1928
; lib_tortesia.ml@51:0;51:39 ::= OArrWrite lib_tortesia.ml@51:0;51:5 lib_tortesia.ml@51:7;51:8 lib_tortesia.ml@51:13;51:39
	j @cfg_label_3212
@cfg_label_3212:
	li r5,$2
	sw r5,r31,$1924
; lib_tortesia.ml@52:7;52:8
	j @cfg_label_3211
@cfg_label_3211:
	fmovi f1,$0.244979
	fst f1,r31,$1920
	j @cfg_label_3210
@cfg_label_3210:
	lw r7,r31,$1920
	lw r6,r31,$1924
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1916
; lib_tortesia.ml@52:0;52:39 ::= OArrWrite lib_tortesia.ml@52:0;52:5 lib_tortesia.ml@52:7;52:8 lib_tortesia.ml@52:13;52:39
	j @cfg_label_3209
@cfg_label_3209:
	li r5,$3
	sw r5,r31,$1912
; lib_tortesia.ml@53:7;53:8
	j @cfg_label_3208
@cfg_label_3208:
	fmovi f1,$0.124355
	fst f1,r31,$1908
	j @cfg_label_3207
@cfg_label_3207:
	lw r7,r31,$1908
	lw r6,r31,$1912
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1904
; lib_tortesia.ml@53:0;53:39 ::= OArrWrite lib_tortesia.ml@53:0;53:5 lib_tortesia.ml@53:7;53:8 lib_tortesia.ml@53:13;53:39
	j @cfg_label_3206
@cfg_label_3206:
	li r5,$4
	sw r5,r31,$1900
; lib_tortesia.ml@54:7;54:8
	j @cfg_label_3205
@cfg_label_3205:
	fmovi f1,$0.062419
	fst f1,r31,$1896
	j @cfg_label_3204
@cfg_label_3204:
	lw r7,r31,$1896
	lw r6,r31,$1900
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1892
; lib_tortesia.ml@54:0;54:39 ::= OArrWrite lib_tortesia.ml@54:0;54:5 lib_tortesia.ml@54:7;54:8 lib_tortesia.ml@54:13;54:39
	j @cfg_label_3203
@cfg_label_3203:
	li r5,$5
	sw r5,r31,$1888
; lib_tortesia.ml@55:7;55:8
	j @cfg_label_3202
@cfg_label_3202:
	fmovi f1,$0.031240
	fst f1,r31,$1884
	j @cfg_label_3201
@cfg_label_3201:
	lw r7,r31,$1884
	lw r6,r31,$1888
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1880
; lib_tortesia.ml@55:0;55:39 ::= OArrWrite lib_tortesia.ml@55:0;55:5 lib_tortesia.ml@55:7;55:8 lib_tortesia.ml@55:13;55:39
	j @cfg_label_3200
@cfg_label_3200:
	li r5,$6
	sw r5,r31,$1876
; lib_tortesia.ml@56:7;56:8
	j @cfg_label_3199
@cfg_label_3199:
	fmovi f1,$0.015624
	fst f1,r31,$1872
	j @cfg_label_3198
@cfg_label_3198:
	lw r7,r31,$1872
	lw r6,r31,$1876
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1868
; lib_tortesia.ml@56:0;56:39 ::= OArrWrite lib_tortesia.ml@56:0;56:5 lib_tortesia.ml@56:7;56:8 lib_tortesia.ml@56:13;56:39
	j @cfg_label_3197
@cfg_label_3197:
	li r5,$7
	sw r5,r31,$1864
; lib_tortesia.ml@57:7;57:8
	j @cfg_label_3196
@cfg_label_3196:
	fmovi f1,$0.007812
	fst f1,r31,$1860
	j @cfg_label_3195
@cfg_label_3195:
	lw r7,r31,$1860
	lw r6,r31,$1864
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1856
; lib_tortesia.ml@57:0;57:39 ::= OArrWrite lib_tortesia.ml@57:0;57:5 lib_tortesia.ml@57:7;57:8 lib_tortesia.ml@57:13;57:39
	j @cfg_label_3194
@cfg_label_3194:
	li r5,$8
	sw r5,r31,$1852
; lib_tortesia.ml@58:7;58:8
	j @cfg_label_3193
@cfg_label_3193:
	fmovi f1,$0.003906
	fst f1,r31,$1848
	j @cfg_label_3192
@cfg_label_3192:
	lw r7,r31,$1848
	lw r6,r31,$1852
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1844
; lib_tortesia.ml@58:0;58:39 ::= OArrWrite lib_tortesia.ml@58:0;58:5 lib_tortesia.ml@58:7;58:8 lib_tortesia.ml@58:13;58:39
	j @cfg_label_3191
@cfg_label_3191:
	li r5,$9
	sw r5,r31,$1840
; lib_tortesia.ml@59:7;59:8
	j @cfg_label_3190
@cfg_label_3190:
	fmovi f1,$0.001953
	fst f1,r31,$1836
	j @cfg_label_3189
@cfg_label_3189:
	lw r7,r31,$1836
	lw r6,r31,$1840
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1832
; lib_tortesia.ml@59:0;59:39 ::= OArrWrite lib_tortesia.ml@59:0;59:5 lib_tortesia.ml@59:7;59:8 lib_tortesia.ml@59:13;59:39
	j @cfg_label_3188
@cfg_label_3188:
	li r5,$10
	sw r5,r31,$1828
; lib_tortesia.ml@60:7;60:9
	j @cfg_label_3187
@cfg_label_3187:
	fmovi f1,$0.000977
	fst f1,r31,$1824
	j @cfg_label_3186
@cfg_label_3186:
	lw r7,r31,$1824
	lw r6,r31,$1828
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1820
; lib_tortesia.ml@60:0;60:40 ::= OArrWrite lib_tortesia.ml@60:0;60:5 lib_tortesia.ml@60:7;60:9 lib_tortesia.ml@60:14;60:40
	j @cfg_label_3185
@cfg_label_3185:
	li r5,$11
	sw r5,r31,$1816
; lib_tortesia.ml@61:7;61:9
	j @cfg_label_3184
@cfg_label_3184:
	fmovi f1,$0.000488
	fst f1,r31,$1812
	j @cfg_label_3183
@cfg_label_3183:
	lw r7,r31,$1812
	lw r6,r31,$1816
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1808
; lib_tortesia.ml@61:0;61:40 ::= OArrWrite lib_tortesia.ml@61:0;61:5 lib_tortesia.ml@61:7;61:9 lib_tortesia.ml@61:14;61:40
	j @cfg_label_3182
@cfg_label_3182:
	li r5,$12
	sw r5,r31,$1804
; lib_tortesia.ml@62:7;62:9
	j @cfg_label_3181
@cfg_label_3181:
	fmovi f1,$0.000244
	fst f1,r31,$1800
	j @cfg_label_3180
@cfg_label_3180:
	lw r7,r31,$1800
	lw r6,r31,$1804
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1796
; lib_tortesia.ml@62:0;62:40 ::= OArrWrite lib_tortesia.ml@62:0;62:5 lib_tortesia.ml@62:7;62:9 lib_tortesia.ml@62:14;62:40
	j @cfg_label_3179
@cfg_label_3179:
	li r5,$13
	sw r5,r31,$1792
; lib_tortesia.ml@63:7;63:9
	j @cfg_label_3178
@cfg_label_3178:
	fmovi f1,$0.000122
	fst f1,r31,$1788
	j @cfg_label_3177
@cfg_label_3177:
	lw r7,r31,$1788
	lw r6,r31,$1792
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1784
; lib_tortesia.ml@63:0;63:40 ::= OArrWrite lib_tortesia.ml@63:0;63:5 lib_tortesia.ml@63:7;63:9 lib_tortesia.ml@63:14;63:40
	j @cfg_label_3176
@cfg_label_3176:
	li r5,$14
	sw r5,r31,$1780
; lib_tortesia.ml@64:7;64:9
	j @cfg_label_3175
@cfg_label_3175:
	fmovi f1,$0.000061
	fst f1,r31,$1776
	j @cfg_label_3174
@cfg_label_3174:
	lw r7,r31,$1776
	lw r6,r31,$1780
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1772
; lib_tortesia.ml@64:0;64:40 ::= OArrWrite lib_tortesia.ml@64:0;64:5 lib_tortesia.ml@64:7;64:9 lib_tortesia.ml@64:14;64:40
	j @cfg_label_3173
@cfg_label_3173:
	li r5,$15
	sw r5,r31,$1768
; lib_tortesia.ml@65:7;65:9
	j @cfg_label_3172
@cfg_label_3172:
	fmovi f1,$0.000031
	fst f1,r31,$1764
	j @cfg_label_3171
@cfg_label_3171:
	lw r7,r31,$1764
	lw r6,r31,$1768
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1760
; lib_tortesia.ml@65:0;65:40 ::= OArrWrite lib_tortesia.ml@65:0;65:5 lib_tortesia.ml@65:7;65:9 lib_tortesia.ml@65:14;65:40
	j @cfg_label_3170
@cfg_label_3170:
	li r5,$16
	sw r5,r31,$1756
; lib_tortesia.ml@66:7;66:9
	j @cfg_label_3169
@cfg_label_3169:
	fmovi f1,$0.000015
	fst f1,r31,$1752
	j @cfg_label_3168
@cfg_label_3168:
	lw r7,r31,$1752
	lw r6,r31,$1756
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1748
; lib_tortesia.ml@66:0;66:40 ::= OArrWrite lib_tortesia.ml@66:0;66:5 lib_tortesia.ml@66:7;66:9 lib_tortesia.ml@66:14;66:40
	j @cfg_label_3167
@cfg_label_3167:
	li r5,$17
	sw r5,r31,$1744
; lib_tortesia.ml@67:7;67:9
	j @cfg_label_3166
@cfg_label_3166:
	fmovi f1,$0.000008
	fst f1,r31,$1740
	j @cfg_label_3165
@cfg_label_3165:
	lw r7,r31,$1740
	lw r6,r31,$1744
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1736
; lib_tortesia.ml@67:0;67:40 ::= OArrWrite lib_tortesia.ml@67:0;67:5 lib_tortesia.ml@67:7;67:9 lib_tortesia.ml@67:14;67:40
	j @cfg_label_3164
@cfg_label_3164:
	li r5,$18
	sw r5,r31,$1732
; lib_tortesia.ml@68:7;68:9
	j @cfg_label_3163
@cfg_label_3163:
	fmovi f1,$0.000004
	fst f1,r31,$1728
	j @cfg_label_3162
@cfg_label_3162:
	lw r7,r31,$1728
	lw r6,r31,$1732
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1724
; lib_tortesia.ml@68:0;68:40 ::= OArrWrite lib_tortesia.ml@68:0;68:5 lib_tortesia.ml@68:7;68:9 lib_tortesia.ml@68:14;68:40
	j @cfg_label_3161
@cfg_label_3161:
	li r5,$19
	sw r5,r31,$1720
; lib_tortesia.ml@69:7;69:9
	j @cfg_label_3160
@cfg_label_3160:
	fmovi f1,$0.000002
	fst f1,r31,$1716
	j @cfg_label_3159
@cfg_label_3159:
	lw r7,r31,$1716
	lw r6,r31,$1720
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1712
; lib_tortesia.ml@69:0;69:40 ::= OArrWrite lib_tortesia.ml@69:0;69:5 lib_tortesia.ml@69:7;69:9 lib_tortesia.ml@69:14;69:40
	j @cfg_label_3158
@cfg_label_3158:
	li r5,$20
	sw r5,r31,$1708
; lib_tortesia.ml@70:7;70:9
	j @cfg_label_3157
@cfg_label_3157:
	fmovi f1,$0.000001
	fst f1,r31,$1704
	j @cfg_label_3156
@cfg_label_3156:
	lw r7,r31,$1704
	lw r6,r31,$1708
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1700
; lib_tortesia.ml@70:0;70:40 ::= OArrWrite lib_tortesia.ml@70:0;70:5 lib_tortesia.ml@70:7;70:9 lib_tortesia.ml@70:14;70:40
	j @cfg_label_3155
@cfg_label_3155:
	li r5,$21
	sw r5,r31,$1696
; lib_tortesia.ml@71:7;71:9
	j @cfg_label_3154
@cfg_label_3154:
	fmovi f1,$0.000000
	fst f1,r31,$1692
	j @cfg_label_3153
@cfg_label_3153:
	lw r7,r31,$1692
	lw r6,r31,$1696
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1688
; lib_tortesia.ml@71:0;71:40 ::= OArrWrite lib_tortesia.ml@71:0;71:5 lib_tortesia.ml@71:7;71:9 lib_tortesia.ml@71:14;71:40
	j @cfg_label_3152
@cfg_label_3152:
	li r5,$22
	sw r5,r31,$1684
; lib_tortesia.ml@72:7;72:9
	j @cfg_label_3151
@cfg_label_3151:
	fmovi f1,$0.000000
	fst f1,r31,$1680
	j @cfg_label_3150
@cfg_label_3150:
	lw r7,r31,$1680
	lw r6,r31,$1684
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1676
; lib_tortesia.ml@72:0;72:40 ::= OArrWrite lib_tortesia.ml@72:0;72:5 lib_tortesia.ml@72:7;72:9 lib_tortesia.ml@72:14;72:40
	j @cfg_label_3149
@cfg_label_3149:
	li r5,$23
	sw r5,r31,$1672
; lib_tortesia.ml@73:7;73:9
	j @cfg_label_3148
@cfg_label_3148:
	fmovi f1,$0.000000
	fst f1,r31,$1668
	j @cfg_label_3147
@cfg_label_3147:
	lw r7,r31,$1668
	lw r6,r31,$1672
	lw r5,r31,$2240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1664
; lib_tortesia.ml@73:0;73:40 ::= OArrWrite lib_tortesia.ml@73:0;73:5 lib_tortesia.ml@73:7;73:9 lib_tortesia.ml@73:14;73:40
	j @cfg_label_3146
@cfg_label_3146:
	lw r5,r31,$1664
	sw r5,r31,$1660
; lib_tortesia.ml@72:0;73:40 ::<= lib_tortesia.ml@73:0;73:40
	j @cfg_label_3145
@cfg_label_3145:
	lw r5,r31,$1660
	sw r5,r31,$1656
; lib_tortesia.ml@71:0;73:40 ::<= lib_tortesia.ml@72:0;73:40
	j @cfg_label_3144
@cfg_label_3144:
	lw r5,r31,$1656
	sw r5,r31,$1652
; lib_tortesia.ml@70:0;73:40 ::<= lib_tortesia.ml@71:0;73:40
	j @cfg_label_3143
@cfg_label_3143:
	lw r5,r31,$1652
	sw r5,r31,$1648
; lib_tortesia.ml@69:0;73:40 ::<= lib_tortesia.ml@70:0;73:40
	j @cfg_label_3142
@cfg_label_3142:
	lw r5,r31,$1648
	sw r5,r31,$1644
; lib_tortesia.ml@68:0;73:40 ::<= lib_tortesia.ml@69:0;73:40
	j @cfg_label_3141
@cfg_label_3141:
	lw r5,r31,$1644
	sw r5,r31,$1640
; lib_tortesia.ml@67:0;73:40 ::<= lib_tortesia.ml@68:0;73:40
	j @cfg_label_3140
@cfg_label_3140:
	lw r5,r31,$1640
	sw r5,r31,$1636
; lib_tortesia.ml@66:0;73:40 ::<= lib_tortesia.ml@67:0;73:40
	j @cfg_label_3139
@cfg_label_3139:
	lw r5,r31,$1636
	sw r5,r31,$1632
; lib_tortesia.ml@65:0;73:40 ::<= lib_tortesia.ml@66:0;73:40
	j @cfg_label_3138
@cfg_label_3138:
	lw r5,r31,$1632
	sw r5,r31,$1628
; lib_tortesia.ml@64:0;73:40 ::<= lib_tortesia.ml@65:0;73:40
	j @cfg_label_3137
@cfg_label_3137:
	lw r5,r31,$1628
	sw r5,r31,$1624
; lib_tortesia.ml@63:0;73:40 ::<= lib_tortesia.ml@64:0;73:40
	j @cfg_label_3136
@cfg_label_3136:
	lw r5,r31,$1624
	sw r5,r31,$1620
; lib_tortesia.ml@62:0;73:40 ::<= lib_tortesia.ml@63:0;73:40
	j @cfg_label_3135
@cfg_label_3135:
	lw r5,r31,$1620
	sw r5,r31,$1616
; lib_tortesia.ml@61:0;73:40 ::<= lib_tortesia.ml@62:0;73:40
	j @cfg_label_3134
@cfg_label_3134:
	lw r5,r31,$1616
	sw r5,r31,$1612
; lib_tortesia.ml@60:0;73:40 ::<= lib_tortesia.ml@61:0;73:40
	j @cfg_label_3133
@cfg_label_3133:
	lw r5,r31,$1612
	sw r5,r31,$1608
; lib_tortesia.ml@59:0;73:40 ::<= lib_tortesia.ml@60:0;73:40
	j @cfg_label_3132
@cfg_label_3132:
	lw r5,r31,$1608
	sw r5,r31,$1604
; lib_tortesia.ml@58:0;73:40 ::<= lib_tortesia.ml@59:0;73:40
	j @cfg_label_3131
@cfg_label_3131:
	lw r5,r31,$1604
	sw r5,r31,$1600
; lib_tortesia.ml@57:0;73:40 ::<= lib_tortesia.ml@58:0;73:40
	j @cfg_label_3130
@cfg_label_3130:
	lw r5,r31,$1600
	sw r5,r31,$1596
; lib_tortesia.ml@56:0;73:40 ::<= lib_tortesia.ml@57:0;73:40
	j @cfg_label_3129
@cfg_label_3129:
	lw r5,r31,$1596
	sw r5,r31,$1592
; lib_tortesia.ml@55:0;73:40 ::<= lib_tortesia.ml@56:0;73:40
	j @cfg_label_3128
@cfg_label_3128:
	lw r5,r31,$1592
	sw r5,r31,$1588
; lib_tortesia.ml@54:0;73:40 ::<= lib_tortesia.ml@55:0;73:40
	j @cfg_label_3127
@cfg_label_3127:
	lw r5,r31,$1588
	sw r5,r31,$1584
; lib_tortesia.ml@53:0;73:40 ::<= lib_tortesia.ml@54:0;73:40
	j @cfg_label_3126
@cfg_label_3126:
	lw r5,r31,$1584
	sw r5,r31,$1580
; lib_tortesia.ml@52:0;73:40 ::<= lib_tortesia.ml@53:0;73:40
	j @cfg_label_3125
@cfg_label_3125:
	lw r5,r31,$1580
	sw r5,r31,$1576
; lib_tortesia.ml@51:0;73:40 ::<= lib_tortesia.ml@52:0;73:40
	j @cfg_label_3124
@cfg_label_3124:
	lw r5,r31,$1576
	sw r5,r31,$1572
; lib_tortesia.ml@50:0;73:40 ::<= lib_tortesia.ml@51:0;73:40
	j @cfg_label_3123
@cfg_label_3123:
	lw r5,r31,$1572
	sw r5,r31,$1568
; lib_tortesia.ml@48:0;73:40 ::<= lib_tortesia.ml@50:0;73:40
	j @cfg_label_3122
@cfg_label_3122:
	lw r5,r31,$1568
	sw r5,r31,$1564
; lib_tortesia.ml@47:0;73:40 ::<= lib_tortesia.ml@48:0;73:40
	j @cfg_label_3121
@cfg_label_3121:
	lw r5,r31,$1564
	sw r5,r31,$1560
; lib_tortesia.ml@46:0;73:40 ::<= lib_tortesia.ml@47:0;73:40
	j @cfg_label_3120
@cfg_label_3120:
	lw r5,r31,$1560
	sw r5,r31,$1556
; lib_tortesia.ml@45:0;73:40 ::<= lib_tortesia.ml@46:0;73:40
	j @cfg_label_3119
@cfg_label_3119:
	lw r5,r31,$1556
	sw r5,r31,$1552
; lib_tortesia.ml@44:0;73:40 ::<= lib_tortesia.ml@45:0;73:40
	j @cfg_label_3118
@cfg_label_3118:
	lw r5,r31,$1552
	sw r5,r31,$1548
; lib_tortesia.ml@43:0;73:40 ::<= lib_tortesia.ml@44:0;73:40
	j @cfg_label_3117
@cfg_label_3117:
	lw r5,r31,$1548
	sw r5,r31,$1544
; lib_tortesia.ml@42:0;73:40 ::<= lib_tortesia.ml@43:0;73:40
	j @cfg_label_3116
@cfg_label_3116:
	lw r5,r31,$1544
	sw r5,r31,$1540
; lib_tortesia.ml@41:0;73:40 ::<= lib_tortesia.ml@42:0;73:40
	j @cfg_label_3115
@cfg_label_3115:
	lw r5,r31,$1540
	sw r5,r31,$1536
; lib_tortesia.ml@40:0;73:40 ::<= lib_tortesia.ml@41:0;73:40
	j @cfg_label_3114
@cfg_label_3114:
	lw r5,r31,$1536
	sw r5,r31,$1532
; lib_tortesia.ml@39:0;73:40 ::<= lib_tortesia.ml@40:0;73:40
	j @cfg_label_3113
@cfg_label_3113:
	lw r5,r31,$1532
	sw r5,r31,$1528
; lib_tortesia.ml@38:0;73:40 ::<= lib_tortesia.ml@39:0;73:40
	j @cfg_label_3112
@cfg_label_3112:
	lw r5,r31,$1528
	sw r5,r31,$1524
; lib_tortesia.ml@37:0;73:40 ::<= lib_tortesia.ml@38:0;73:40
	j @cfg_label_3111
@cfg_label_3111:
	lw r5,r31,$1524
	sw r5,r31,$1520
; lib_tortesia.ml@36:0;73:40 ::<= lib_tortesia.ml@37:0;73:40
	j @cfg_label_3110
@cfg_label_3110:
	lw r5,r31,$1520
	sw r5,r31,$1516
; lib_tortesia.ml@35:0;73:40 ::<= lib_tortesia.ml@36:0;73:40
	j @cfg_label_3109
@cfg_label_3109:
	lw r5,r31,$1516
	sw r5,r31,$1512
; lib_tortesia.ml@34:0;73:40 ::<= lib_tortesia.ml@35:0;73:40
	j @cfg_label_3108
@cfg_label_3108:
	lw r5,r31,$1512
	sw r5,r31,$1508
; lib_tortesia.ml@33:0;73:40 ::<= lib_tortesia.ml@34:0;73:40
	j @cfg_label_3107
@cfg_label_3107:
	lw r5,r31,$1508
	sw r5,r31,$1504
; lib_tortesia.ml@32:0;73:40 ::<= lib_tortesia.ml@33:0;73:40
	j @cfg_label_3106
@cfg_label_3106:
	lw r5,r31,$1504
	sw r5,r31,$1500
; lib_tortesia.ml@31:0;73:40 ::<= lib_tortesia.ml@32:0;73:40
	j @cfg_label_3105
@cfg_label_3105:
	fmovi f1,$3.141593
	fst f1,r31,$1496
	j @cfg_label_3104
@cfg_label_3104:
	fmovi f1,$3.140000
	fst f1,r31,$1492
	j @cfg_label_3103
@cfg_label_3103:
	push r4
	lw r5,r31,$1492
	push r5
	jal int_of_float
	sw r5,r31,$1488
	addi r1,r1,$4
	pop r4
; external_library.ml@1:11;1:28 external_library.ml@1:11;1:23
	j @cfg_label_3102
@cfg_label_3102:
	push r4
	lw r5,r31,$1488
	push r5
	jal @a_1568print_int
	sw r5,r31,$1484
	addi r1,r1,$4
	pop r4
; external_library.ml@1:0;1:29 external_library.ml@1:0;1:9
	j @cfg_label_3101
@cfg_label_3101:
	fmovi f1,$3.920000
	fst f1,r31,$1480
	j @cfg_label_3100
@cfg_label_3100:
	push r4
	lw r5,r31,$1480
	push r5
	jal int_of_float
	sw r5,r31,$1476
	addi r1,r1,$4
	pop r4
; external_library.ml@2:11;2:28 external_library.ml@2:11;2:23
	j @cfg_label_3099
@cfg_label_3099:
	push r4
	lw r5,r31,$1476
	push r5
	jal @a_1568print_int
	sw r5,r31,$1472
	addi r1,r1,$4
	pop r4
; external_library.ml@2:0;2:29 external_library.ml@2:0;2:9
	j @cfg_label_3098
@cfg_label_3098:
	fmovi f1,$3.000000
	fst f1,r31,$1468
	j @cfg_label_3097
@cfg_label_3097:
	push r4
	lw r5,r31,$1468
	push r5
	jal int_of_float
	sw r5,r31,$1464
	addi r1,r1,$4
	pop r4
; external_library.ml@3:11;3:27 external_library.ml@3:11;3:23
	j @cfg_label_3096
@cfg_label_3096:
	push r4
	lw r5,r31,$1464
	push r5
	jal @a_1568print_int
	sw r5,r31,$1460
	addi r1,r1,$4
	pop r4
; external_library.ml@3:0;3:28 external_library.ml@3:0;3:9
	j @cfg_label_3095
@cfg_label_3095:
	fmovi f1,$0.000000
	fst f1,r31,$1456
	j @cfg_label_3094
@cfg_label_3094:
	push r4
	lw r5,r31,$1456
	push r5
	jal int_of_float
	sw r5,r31,$1452
	addi r1,r1,$4
	pop r4
; external_library.ml@4:11;4:27 external_library.ml@4:11;4:23
	j @cfg_label_3093
@cfg_label_3093:
	push r4
	lw r5,r31,$1452
	push r5
	jal @a_1568print_int
	sw r5,r31,$1448
	addi r1,r1,$4
	pop r4
; external_library.ml@4:0;4:28 external_library.ml@4:0;4:9
	j @cfg_label_3092
@cfg_label_3092:
	fmovi f1,$-3.140000
	fst f1,r31,$1444
	j @cfg_label_3091
@cfg_label_3091:
	push r4
	lw r5,r31,$1444
	push r5
	jal int_of_float
	sw r5,r31,$1440
	addi r1,r1,$4
	pop r4
; external_library.ml@5:11;5:31 external_library.ml@5:11;5:23
	j @cfg_label_3090
@cfg_label_3090:
	push r4
	lw r5,r31,$1440
	push r5
	jal @a_1568print_int
	sw r5,r31,$1436
	addi r1,r1,$4
	pop r4
; external_library.ml@5:0;5:32 external_library.ml@5:0;5:9
	j @cfg_label_3089
@cfg_label_3089:
	fmovi f1,$-3.920000
	fst f1,r31,$1432
	j @cfg_label_3088
@cfg_label_3088:
	push r4
	lw r5,r31,$1432
	push r5
	jal int_of_float
	sw r5,r31,$1428
	addi r1,r1,$4
	pop r4
; external_library.ml@6:11;6:31 external_library.ml@6:11;6:23
	j @cfg_label_3087
@cfg_label_3087:
	push r4
	lw r5,r31,$1428
	push r5
	jal @a_1568print_int
	sw r5,r31,$1424
	addi r1,r1,$4
	pop r4
; external_library.ml@6:0;6:32 external_library.ml@6:0;6:9
	j @cfg_label_3086
@cfg_label_3086:
	fmovi f1,$-3.000000
	fst f1,r31,$1420
	j @cfg_label_3085
@cfg_label_3085:
	push r4
	lw r5,r31,$1420
	push r5
	jal int_of_float
	sw r5,r31,$1416
	addi r1,r1,$4
	pop r4
; external_library.ml@7:11;7:30 external_library.ml@7:11;7:23
	j @cfg_label_3084
@cfg_label_3084:
	push r4
	lw r5,r31,$1416
	push r5
	jal @a_1568print_int
	sw r5,r31,$1412
	addi r1,r1,$4
	pop r4
; external_library.ml@7:0;7:31 external_library.ml@7:0;7:9
	j @cfg_label_3083
@cfg_label_3083:
	li r5,$10
	sw r5,r31,$1408
; external_library.ml@8:11;8:13
	j @cfg_label_3082
@cfg_label_3082:
	push r4
	lw r5,r31,$1408
	push r5
	jal print_char
	sw r5,r31,$1404
	addi r1,r1,$4
	pop r4
; external_library.ml@8:0;8:13 external_library.ml@8:0;8:10
	j @cfg_label_3081
@cfg_label_3081:
	fmovi f1,$0.500000
	fst f1,r31,$1400
	j @cfg_label_3080
@cfg_label_3080:
	push r4
	lw r5,r31,$1400
	push r5
	jal @a_1542fiszero
	sw r5,r31,$1396
	addi r1,r1,$4
	pop r4
; external_library.ml@10:11;10:22 external_library.ml@10:11;10:18
	j @cfg_label_3079
@cfg_label_3079:
	push r4
	lw r5,r31,$1396
	push r5
	jal @a_1568print_int
	sw r5,r31,$1392
	addi r1,r1,$4
	pop r4
; external_library.ml@10:0;10:23 external_library.ml@10:0;10:9
	j @cfg_label_3078
@cfg_label_3078:
	fmovi f1,$0.000000
	fst f1,r31,$1388
	j @cfg_label_3077
@cfg_label_3077:
	push r4
	lw r5,r31,$1388
	push r5
	jal @a_1542fiszero
	sw r5,r31,$1384
	addi r1,r1,$4
	pop r4
; external_library.ml@11:11;11:22 external_library.ml@11:11;11:18
	j @cfg_label_3076
@cfg_label_3076:
	push r4
	lw r5,r31,$1384
	push r5
	jal @a_1568print_int
	sw r5,r31,$1380
	addi r1,r1,$4
	pop r4
; external_library.ml@11:0;11:23 external_library.ml@11:0;11:9
	j @cfg_label_3075
@cfg_label_3075:
	fmovi f1,$-0.500000
	fst f1,r31,$1376
	j @cfg_label_3074
@cfg_label_3074:
	push r4
	lw r5,r31,$1376
	push r5
	jal @a_1542fiszero
	sw r5,r31,$1372
	addi r1,r1,$4
	pop r4
; external_library.ml@12:11;12:25 external_library.ml@12:11;12:18
	j @cfg_label_3073
@cfg_label_3073:
	push r4
	lw r5,r31,$1372
	push r5
	jal @a_1568print_int
	sw r5,r31,$1368
	addi r1,r1,$4
	pop r4
; external_library.ml@12:0;12:26 external_library.ml@12:0;12:9
	j @cfg_label_3072
@cfg_label_3072:
	li r5,$10
	sw r5,r31,$1364
; external_library.ml@13:11;13:13
	j @cfg_label_3071
@cfg_label_3071:
	push r4
	lw r5,r31,$1364
	push r5
	jal print_char
	sw r5,r31,$1360
	addi r1,r1,$4
	pop r4
; external_library.ml@13:0;13:13 external_library.ml@13:0;13:10
	j @cfg_label_3070
@cfg_label_3070:
	fmovi f1,$1.000000
	fst f1,r31,$1356
	j @cfg_label_3069
@cfg_label_3069:
	push r4
	lw r5,r31,$1356
	push r5
	jal @a_1544fisneg
	sw r5,r31,$1352
	addi r1,r1,$4
	pop r4
; external_library.ml@15:11;15:21 external_library.ml@15:11;15:17
	j @cfg_label_3068
@cfg_label_3068:
	push r4
	lw r5,r31,$1352
	push r5
	jal @a_1568print_int
	sw r5,r31,$1348
	addi r1,r1,$4
	pop r4
; external_library.ml@15:0;15:22 external_library.ml@15:0;15:9
	j @cfg_label_3067
@cfg_label_3067:
	fmovi f1,$0.000000
	fst f1,r31,$1344
	j @cfg_label_3066
@cfg_label_3066:
	push r4
	lw r5,r31,$1344
	push r5
	jal @a_1544fisneg
	sw r5,r31,$1340
	addi r1,r1,$4
	pop r4
; external_library.ml@16:11;16:21 external_library.ml@16:11;16:17
	j @cfg_label_3065
@cfg_label_3065:
	push r4
	lw r5,r31,$1340
	push r5
	jal @a_1568print_int
	sw r5,r31,$1336
	addi r1,r1,$4
	pop r4
; external_library.ml@16:0;16:22 external_library.ml@16:0;16:9
	j @cfg_label_3064
@cfg_label_3064:
	fmovi f1,$-1.000000
	fst f1,r31,$1332
	j @cfg_label_3063
@cfg_label_3063:
	push r4
	lw r5,r31,$1332
	push r5
	jal @a_1544fisneg
	sw r5,r31,$1328
	addi r1,r1,$4
	pop r4
; external_library.ml@17:11;17:24 external_library.ml@17:11;17:17
	j @cfg_label_3062
@cfg_label_3062:
	push r4
	lw r5,r31,$1328
	push r5
	jal @a_1568print_int
	sw r5,r31,$1324
	addi r1,r1,$4
	pop r4
; external_library.ml@17:0;17:25 external_library.ml@17:0;17:9
	j @cfg_label_3061
@cfg_label_3061:
	li r5,$10
	sw r5,r31,$1320
; external_library.ml@18:11;18:13
	j @cfg_label_3060
@cfg_label_3060:
	push r4
	lw r5,r31,$1320
	push r5
	jal print_char
	sw r5,r31,$1316
	addi r1,r1,$4
	pop r4
; external_library.ml@18:0;18:13 external_library.ml@18:0;18:10
	j @cfg_label_3059
@cfg_label_3059:
	fmovi f1,$1.000000
	fst f1,r31,$1312
	j @cfg_label_3058
@cfg_label_3058:
	push r4
	lw r5,r31,$1312
	push r5
	jal @a_1546fispos
	sw r5,r31,$1308
	addi r1,r1,$4
	pop r4
; external_library.ml@20:11;20:21 external_library.ml@20:11;20:17
	j @cfg_label_3057
@cfg_label_3057:
	push r4
	lw r5,r31,$1308
	push r5
	jal @a_1568print_int
	sw r5,r31,$1304
	addi r1,r1,$4
	pop r4
; external_library.ml@20:0;20:22 external_library.ml@20:0;20:9
	j @cfg_label_3056
@cfg_label_3056:
	fmovi f1,$0.000000
	fst f1,r31,$1300
	j @cfg_label_3055
@cfg_label_3055:
	push r4
	lw r5,r31,$1300
	push r5
	jal @a_1546fispos
	sw r5,r31,$1296
	addi r1,r1,$4
	pop r4
; external_library.ml@21:11;21:21 external_library.ml@21:11;21:17
	j @cfg_label_3054
@cfg_label_3054:
	push r4
	lw r5,r31,$1296
	push r5
	jal @a_1568print_int
	sw r5,r31,$1292
	addi r1,r1,$4
	pop r4
; external_library.ml@21:0;21:22 external_library.ml@21:0;21:9
	j @cfg_label_3053
@cfg_label_3053:
	fmovi f1,$-1.000000
	fst f1,r31,$1288
	j @cfg_label_3052
@cfg_label_3052:
	push r4
	lw r5,r31,$1288
	push r5
	jal @a_1546fispos
	sw r5,r31,$1284
	addi r1,r1,$4
	pop r4
; external_library.ml@22:11;22:24 external_library.ml@22:11;22:17
	j @cfg_label_3051
@cfg_label_3051:
	push r4
	lw r5,r31,$1284
	push r5
	jal @a_1568print_int
	sw r5,r31,$1280
	addi r1,r1,$4
	pop r4
; external_library.ml@22:0;22:25 external_library.ml@22:0;22:9
	j @cfg_label_3050
@cfg_label_3050:
	li r5,$10
	sw r5,r31,$1276
; external_library.ml@23:11;23:13
	j @cfg_label_3049
@cfg_label_3049:
	push r4
	lw r5,r31,$1276
	push r5
	jal print_char
	sw r5,r31,$1272
	addi r1,r1,$4
	pop r4
; external_library.ml@23:0;23:13 external_library.ml@23:0;23:10
	j @cfg_label_3048
@cfg_label_3048:
	fmovi f1,$0.000000
	fst f1,r31,$1268
	j @cfg_label_3047
@cfg_label_3047:
	push r4
	lw r5,r31,$1268
	push r5
	jal int_of_float
	sw r5,r31,$1264
	addi r1,r1,$4
	pop r4
; external_library.ml@25:11;25:29 external_library.ml@25:11;25:23
	j @cfg_label_3046
@cfg_label_3046:
	push r4
	lw r5,r31,$1264
	push r5
	jal @a_1568print_int
	sw r5,r31,$1260
	addi r1,r1,$4
	pop r4
; external_library.ml@25:0;25:30 external_library.ml@25:0;25:9
	j @cfg_label_3045
@cfg_label_3045:
	fmovi f1,$3.500000
	fst f1,r31,$1256
	j @cfg_label_3044
@cfg_label_3044:
	push r4
	lw r5,r31,$1256
	push r5
	jal int_of_float
	sw r5,r31,$1252
	addi r1,r1,$4
	pop r4
; external_library.ml@26:11;26:29 external_library.ml@26:11;26:23
	j @cfg_label_3043
@cfg_label_3043:
	push r4
	lw r5,r31,$1252
	push r5
	jal @a_1568print_int
	sw r5,r31,$1248
	addi r1,r1,$4
	pop r4
; external_library.ml@26:0;26:30 external_library.ml@26:0;26:9
	j @cfg_label_3042
@cfg_label_3042:
	fmovi f1,$3.490000
	fst f1,r31,$1244
	j @cfg_label_3041
@cfg_label_3041:
	push r4
	lw r5,r31,$1244
	push r5
	jal int_of_float
	sw r5,r31,$1240
	addi r1,r1,$4
	pop r4
; external_library.ml@27:11;27:30 external_library.ml@27:11;27:23
	j @cfg_label_3040
@cfg_label_3040:
	push r4
	lw r5,r31,$1240
	push r5
	jal @a_1568print_int
	sw r5,r31,$1236
	addi r1,r1,$4
	pop r4
; external_library.ml@27:0;27:31 external_library.ml@27:0;27:9
	j @cfg_label_3039
@cfg_label_3039:
	fmovi f1,$-3.550000
	fst f1,r31,$1232
	j @cfg_label_3038
@cfg_label_3038:
	push r4
	lw r5,r31,$1232
	push r5
	jal int_of_float
	sw r5,r31,$1228
	addi r1,r1,$4
	pop r4
; external_library.ml@28:11;28:31 external_library.ml@28:11;28:23
	j @cfg_label_3037
@cfg_label_3037:
	push r4
	lw r5,r31,$1228
	push r5
	jal @a_1568print_int
	sw r5,r31,$1224
	addi r1,r1,$4
	pop r4
; external_library.ml@28:0;28:32 external_library.ml@28:0;28:9
	j @cfg_label_3036
@cfg_label_3036:
	fmovi f1,$-3.500000
	fst f1,r31,$1220
	j @cfg_label_3035
@cfg_label_3035:
	push r4
	lw r5,r31,$1220
	push r5
	jal int_of_float
	sw r5,r31,$1216
	addi r1,r1,$4
	pop r4
; external_library.ml@29:11;29:30 external_library.ml@29:11;29:23
	j @cfg_label_3034
@cfg_label_3034:
	push r4
	lw r5,r31,$1216
	push r5
	jal @a_1568print_int
	sw r5,r31,$1212
	addi r1,r1,$4
	pop r4
; external_library.ml@29:0;29:31 external_library.ml@29:0;29:9
	j @cfg_label_3033
@cfg_label_3033:
	fmovi f1,$-3.490000
	fst f1,r31,$1208
	j @cfg_label_3032
@cfg_label_3032:
	push r4
	lw r5,r31,$1208
	push r5
	jal int_of_float
	sw r5,r31,$1204
	addi r1,r1,$4
	pop r4
; external_library.ml@30:11;30:31 external_library.ml@30:11;30:23
	j @cfg_label_3031
@cfg_label_3031:
	push r4
	lw r5,r31,$1204
	push r5
	jal @a_1568print_int
	sw r5,r31,$1200
	addi r1,r1,$4
	pop r4
; external_library.ml@30:0;30:32 external_library.ml@30:0;30:9
	j @cfg_label_3030
@cfg_label_3030:
	li r5,$10
	sw r5,r31,$1196
; external_library.ml@31:11;31:13
	j @cfg_label_3029
@cfg_label_3029:
	push r4
	lw r5,r31,$1196
	push r5
	jal print_char
	sw r5,r31,$1192
	addi r1,r1,$4
	pop r4
; external_library.ml@31:0;31:13 external_library.ml@31:0;31:10
	j @cfg_label_3028
@cfg_label_3028:
	fmovi f1,$3.140000
	fst f1,r31,$1188
	j @cfg_label_3027
@cfg_label_3027:
	push r4
	lw r5,r31,$1188
	push r5
	jal @a_1556fhalf
	sw r5,r31,$1184
	addi r1,r1,$4
	pop r4
; external_library.ml@33:25;33:35 external_library.ml@33:25;33:30
	j @cfg_label_3026
@cfg_label_3026:
	push r4
	lw r5,r31,$1184
	push r5
	jal int_of_float
	sw r5,r31,$1180
	addi r1,r1,$4
	pop r4
; external_library.ml@33:11;33:36 external_library.ml@33:11;33:23
	j @cfg_label_3025
@cfg_label_3025:
	push r4
	lw r5,r31,$1180
	push r5
	jal @a_1568print_int
	sw r5,r31,$1176
	addi r1,r1,$4
	pop r4
; external_library.ml@33:0;33:37 external_library.ml@33:0;33:9
	j @cfg_label_3024
@cfg_label_3024:
	fmovi f1,$13.000000
	fst f1,r31,$1172
	j @cfg_label_3023
@cfg_label_3023:
	push r4
	lw r5,r31,$1172
	push r5
	jal @a_1556fhalf
	sw r5,r31,$1168
	addi r1,r1,$4
	pop r4
; external_library.ml@34:25;34:35 external_library.ml@34:25;34:30
	j @cfg_label_3022
@cfg_label_3022:
	push r4
	lw r5,r31,$1168
	push r5
	jal int_of_float
	sw r5,r31,$1164
	addi r1,r1,$4
	pop r4
; external_library.ml@34:11;34:36 external_library.ml@34:11;34:23
	j @cfg_label_3021
@cfg_label_3021:
	push r4
	lw r5,r31,$1164
	push r5
	jal @a_1568print_int
	sw r5,r31,$1160
	addi r1,r1,$4
	pop r4
; external_library.ml@34:0;34:37 external_library.ml@34:0;34:9
	j @cfg_label_3020
@cfg_label_3020:
	fmovi f1,$5.210000
	fst f1,r31,$1156
	j @cfg_label_3019
@cfg_label_3019:
	push r4
	lw r5,r31,$1156
	push r5
	jal @a_1556fhalf
	sw r5,r31,$1152
	addi r1,r1,$4
	pop r4
; external_library.ml@35:25;35:35 external_library.ml@35:25;35:30
	j @cfg_label_3018
@cfg_label_3018:
	push r4
	lw r5,r31,$1152
	push r5
	jal int_of_float
	sw r5,r31,$1148
	addi r1,r1,$4
	pop r4
; external_library.ml@35:11;35:36 external_library.ml@35:11;35:23
	j @cfg_label_3017
@cfg_label_3017:
	push r4
	lw r5,r31,$1148
	push r5
	jal @a_1568print_int
	sw r5,r31,$1144
	addi r1,r1,$4
	pop r4
; external_library.ml@35:0;35:37 external_library.ml@35:0;35:9
	j @cfg_label_3016
@cfg_label_3016:
	li r5,$10
	sw r5,r31,$1140
; external_library.ml@36:11;36:13
	j @cfg_label_3015
@cfg_label_3015:
	push r4
	lw r5,r31,$1140
	push r5
	jal print_char
	sw r5,r31,$1136
	addi r1,r1,$4
	pop r4
; external_library.ml@36:0;36:13 external_library.ml@36:0;36:10
	j @cfg_label_3014
@cfg_label_3014:
	fmovi f1,$3.140000
	fst f1,r31,$1132
	j @cfg_label_3013
@cfg_label_3013:
	push r4
	lw r5,r31,$1132
	push r5
	jal @a_1548floor
	sw r5,r31,$1128
	addi r1,r1,$4
	pop r4
; external_library.ml@38:26;38:36 external_library.ml@38:26;38:31
	j @cfg_label_3012
@cfg_label_3012:
	fmovi f1,$10.000000
	fst f1,r31,$1124
	j @cfg_label_3011
@cfg_label_3011:
	fld f1,r31,$1128
	fld f2,r31,$1124
	fmul f1,f1,f2
	fst f1,r31,$1120
; external_library.ml@38:25;38:45 ::= Ofmul external_library.ml@38:26;38:36 external_library.ml@38:41;38:45
	j @cfg_label_3010
@cfg_label_3010:
	push r4
	lw r5,r31,$1120
	push r5
	jal int_of_float
	sw r5,r31,$1116
	addi r1,r1,$4
	pop r4
; external_library.ml@38:11;38:46 external_library.ml@38:11;38:23
	j @cfg_label_3009
@cfg_label_3009:
	push r4
	lw r5,r31,$1116
	push r5
	jal @a_1568print_int
	sw r5,r31,$1112
	addi r1,r1,$4
	pop r4
; external_library.ml@38:0;38:47 external_library.ml@38:0;38:9
	j @cfg_label_3008
@cfg_label_3008:
	fmovi f1,$1.590000
	fst f1,r31,$1108
	j @cfg_label_3007
@cfg_label_3007:
	push r4
	lw r5,r31,$1108
	push r5
	jal @a_1548floor
	sw r5,r31,$1104
	addi r1,r1,$4
	pop r4
; external_library.ml@39:26;39:36 external_library.ml@39:26;39:31
	j @cfg_label_3006
@cfg_label_3006:
	fmovi f1,$10.000000
	fst f1,r31,$1100
	j @cfg_label_3005
@cfg_label_3005:
	fld f1,r31,$1104
	fld f2,r31,$1100
	fmul f1,f1,f2
	fst f1,r31,$1096
; external_library.ml@39:25;39:45 ::= Ofmul external_library.ml@39:26;39:36 external_library.ml@39:41;39:45
	j @cfg_label_3004
@cfg_label_3004:
	push r4
	lw r5,r31,$1096
	push r5
	jal int_of_float
	sw r5,r31,$1092
	addi r1,r1,$4
	pop r4
; external_library.ml@39:11;39:46 external_library.ml@39:11;39:23
	j @cfg_label_3003
@cfg_label_3003:
	push r4
	lw r5,r31,$1092
	push r5
	jal @a_1568print_int
	sw r5,r31,$1088
	addi r1,r1,$4
	pop r4
; external_library.ml@39:0;39:47 external_library.ml@39:0;39:9
	j @cfg_label_3002
@cfg_label_3002:
	fmovi f1,$5.120000
	fst f1,r31,$1084
	j @cfg_label_3001
@cfg_label_3001:
	push r4
	lw r5,r31,$1084
	push r5
	jal @a_1548floor
	sw r5,r31,$1080
	addi r1,r1,$4
	pop r4
; external_library.ml@40:26;40:36 external_library.ml@40:26;40:31
	j @cfg_label_3000
@cfg_label_3000:
	fmovi f1,$10.000000
	fst f1,r31,$1076
	j @cfg_label_2999
@cfg_label_2999:
	fld f1,r31,$1080
	fld f2,r31,$1076
	fmul f1,f1,f2
	fst f1,r31,$1072
; external_library.ml@40:25;40:45 ::= Ofmul external_library.ml@40:26;40:36 external_library.ml@40:41;40:45
	j @cfg_label_2998
@cfg_label_2998:
	push r4
	lw r5,r31,$1072
	push r5
	jal int_of_float
	sw r5,r31,$1068
	addi r1,r1,$4
	pop r4
; external_library.ml@40:11;40:46 external_library.ml@40:11;40:23
	j @cfg_label_2997
@cfg_label_2997:
	push r4
	lw r5,r31,$1068
	push r5
	jal @a_1568print_int
	sw r5,r31,$1064
	addi r1,r1,$4
	pop r4
; external_library.ml@40:0;40:47 external_library.ml@40:0;40:9
	j @cfg_label_2996
@cfg_label_2996:
	li r5,$10
	sw r5,r31,$1060
; external_library.ml@41:11;41:13
	j @cfg_label_2995
@cfg_label_2995:
	push r4
	lw r5,r31,$1060
	push r5
	jal print_char
	sw r5,r31,$1056
	addi r1,r1,$4
	pop r4
; external_library.ml@41:0;41:13 external_library.ml@41:0;41:10
	j @cfg_label_2994
@cfg_label_2994:
	fmovi f1,$3.140000
	fst f1,r31,$1052
	j @cfg_label_2993
@cfg_label_2993:
	push r4
	lw r5,r31,$1052
	push r5
	jal @a_1550fabs
	sw r5,r31,$1048
	addi r1,r1,$4
	pop r4
; external_library.ml@43:25;43:34 external_library.ml@43:25;43:29
	j @cfg_label_2992
@cfg_label_2992:
	push r4
	lw r5,r31,$1048
	push r5
	jal int_of_float
	sw r5,r31,$1044
	addi r1,r1,$4
	pop r4
; external_library.ml@43:11;43:35 external_library.ml@43:11;43:23
	j @cfg_label_2991
@cfg_label_2991:
	push r4
	lw r5,r31,$1044
	push r5
	jal @a_1568print_int
	sw r5,r31,$1040
	addi r1,r1,$4
	pop r4
; external_library.ml@43:0;43:36 external_library.ml@43:0;43:9
	j @cfg_label_2990
@cfg_label_2990:
	fmovi f1,$0.000000
	fst f1,r31,$1036
	j @cfg_label_2989
@cfg_label_2989:
	push r4
	lw r5,r31,$1036
	push r5
	jal @a_1550fabs
	sw r5,r31,$1032
	addi r1,r1,$4
	pop r4
; external_library.ml@44:25;44:33 external_library.ml@44:25;44:29
	j @cfg_label_2988
@cfg_label_2988:
	push r4
	lw r5,r31,$1032
	push r5
	jal int_of_float
	sw r5,r31,$1028
	addi r1,r1,$4
	pop r4
; external_library.ml@44:11;44:34 external_library.ml@44:11;44:23
	j @cfg_label_2987
@cfg_label_2987:
	push r4
	lw r5,r31,$1028
	push r5
	jal @a_1568print_int
	sw r5,r31,$1024
	addi r1,r1,$4
	pop r4
; external_library.ml@44:0;44:35 external_library.ml@44:0;44:9
	j @cfg_label_2986
@cfg_label_2986:
	fmovi f1,$-5.210000
	fst f1,r31,$1020
	j @cfg_label_2985
@cfg_label_2985:
	push r4
	lw r5,r31,$1020
	push r5
	jal @a_1550fabs
	sw r5,r31,$1016
	addi r1,r1,$4
	pop r4
; external_library.ml@45:25;45:37 external_library.ml@45:25;45:29
	j @cfg_label_2984
@cfg_label_2984:
	push r4
	lw r5,r31,$1016
	push r5
	jal int_of_float
	sw r5,r31,$1012
	addi r1,r1,$4
	pop r4
; external_library.ml@45:11;45:38 external_library.ml@45:11;45:23
	j @cfg_label_2983
@cfg_label_2983:
	push r4
	lw r5,r31,$1012
	push r5
	jal @a_1568print_int
	sw r5,r31,$1008
	addi r1,r1,$4
	pop r4
; external_library.ml@45:0;45:39 external_library.ml@45:0;45:9
	j @cfg_label_2982
@cfg_label_2982:
	li r5,$10
	sw r5,r31,$1004
; external_library.ml@46:11;46:13
	j @cfg_label_2981
@cfg_label_2981:
	push r4
	lw r5,r31,$1004
	push r5
	jal print_char
	sw r5,r31,$1000
	addi r1,r1,$4
	pop r4
; external_library.ml@46:0;46:13 external_library.ml@46:0;46:10
	j @cfg_label_2980
@cfg_label_2980:
	fmovi f1,$1.100000
	fst f1,r31,$996
	j @cfg_label_2979
@cfg_label_2979:
	push r4
	lw r5,r31,$996
	push r5
	jal @a_1554fneg
	sw r5,r31,$992
	addi r1,r1,$4
	pop r4
; external_library.ml@49:25;49:33 external_library.ml@49:25;49:29
	j @cfg_label_2978
@cfg_label_2978:
	push r4
	lw r5,r31,$992
	push r5
	jal int_of_float
	sw r5,r31,$988
	addi r1,r1,$4
	pop r4
; external_library.ml@49:11;49:34 external_library.ml@49:11;49:23
	j @cfg_label_2977
@cfg_label_2977:
	push r4
	lw r5,r31,$988
	push r5
	jal @a_1568print_int
	sw r5,r31,$984
	addi r1,r1,$4
	pop r4
; external_library.ml@49:0;49:35 external_library.ml@49:0;49:9
	j @cfg_label_2976
@cfg_label_2976:
	fmovi f1,$0.000000
	fst f1,r31,$980
	j @cfg_label_2975
@cfg_label_2975:
	push r4
	lw r5,r31,$980
	push r5
	jal @a_1554fneg
	sw r5,r31,$976
	addi r1,r1,$4
	pop r4
; external_library.ml@50:25;50:33 external_library.ml@50:25;50:29
	j @cfg_label_2974
@cfg_label_2974:
	push r4
	lw r5,r31,$976
	push r5
	jal int_of_float
	sw r5,r31,$972
	addi r1,r1,$4
	pop r4
; external_library.ml@50:11;50:34 external_library.ml@50:11;50:23
	j @cfg_label_2973
@cfg_label_2973:
	push r4
	lw r5,r31,$972
	push r5
	jal @a_1568print_int
	sw r5,r31,$968
	addi r1,r1,$4
	pop r4
; external_library.ml@50:0;50:35 external_library.ml@50:0;50:9
	j @cfg_label_2972
@cfg_label_2972:
	fmovi f1,$-1.100000
	fst f1,r31,$964
	j @cfg_label_2971
@cfg_label_2971:
	push r4
	lw r5,r31,$964
	push r5
	jal @a_1554fneg
	sw r5,r31,$960
	addi r1,r1,$4
	pop r4
; external_library.ml@51:25;51:36 external_library.ml@51:25;51:29
	j @cfg_label_2970
@cfg_label_2970:
	push r4
	lw r5,r31,$960
	push r5
	jal int_of_float
	sw r5,r31,$956
	addi r1,r1,$4
	pop r4
; external_library.ml@51:11;51:37 external_library.ml@51:11;51:23
	j @cfg_label_2969
@cfg_label_2969:
	push r4
	lw r5,r31,$956
	push r5
	jal @a_1568print_int
	sw r5,r31,$952
	addi r1,r1,$4
	pop r4
; external_library.ml@51:0;51:38 external_library.ml@51:0;51:9
	j @cfg_label_2968
@cfg_label_2968:
	li r5,$10
	sw r5,r31,$948
; external_library.ml@52:11;52:13
	j @cfg_label_2967
@cfg_label_2967:
	push r4
	lw r5,r31,$948
	push r5
	jal print_char
	sw r5,r31,$944
	addi r1,r1,$4
	pop r4
; external_library.ml@52:0;52:13 external_library.ml@52:0;52:10
	j @cfg_label_2966
@cfg_label_2966:
	fmovi f1,$2.340000
	fst f1,r31,$940
	j @cfg_label_2965
@cfg_label_2965:
	push r4
	lw r5,r31,$940
	push r5
	jal @a_1562sin
	sw r5,r31,$936
	addi r1,r1,$4
	pop r4
; external_library.ml@54:26;54:34 external_library.ml@54:26;54:29
	j @cfg_label_2964
@cfg_label_2964:
	fmovi f1,$1000.000000
	fst f1,r31,$932
	j @cfg_label_2963
@cfg_label_2963:
	fld f1,r31,$936
	fld f2,r31,$932
	fmul f1,f1,f2
	fst f1,r31,$928
; external_library.ml@54:25;54:45 ::= Ofmul external_library.ml@54:26;54:34 external_library.ml@54:39;54:45
	j @cfg_label_2962
@cfg_label_2962:
	push r4
	lw r5,r31,$928
	push r5
	jal int_of_float
	sw r5,r31,$924
	addi r1,r1,$4
	pop r4
; external_library.ml@54:11;54:46 external_library.ml@54:11;54:23
	j @cfg_label_2961
@cfg_label_2961:
	push r4
	lw r5,r31,$924
	push r5
	jal @a_1568print_int
	sw r5,r31,$920
	addi r1,r1,$4
	pop r4
; external_library.ml@54:0;54:47 external_library.ml@54:0;54:9
	j @cfg_label_2960
@cfg_label_2960:
	fmovi f1,$-3.510000
	fst f1,r31,$916
	j @cfg_label_2959
@cfg_label_2959:
	push r4
	lw r5,r31,$916
	push r5
	jal @a_1562sin
	sw r5,r31,$912
	addi r1,r1,$4
	pop r4
; external_library.ml@55:26;55:37 external_library.ml@55:26;55:29
	j @cfg_label_2958
@cfg_label_2958:
	fmovi f1,$1000.000000
	fst f1,r31,$908
	j @cfg_label_2957
@cfg_label_2957:
	fld f1,r31,$912
	fld f2,r31,$908
	fmul f1,f1,f2
	fst f1,r31,$904
; external_library.ml@55:25;55:48 ::= Ofmul external_library.ml@55:26;55:37 external_library.ml@55:42;55:48
	j @cfg_label_2956
@cfg_label_2956:
	push r4
	lw r5,r31,$904
	push r5
	jal int_of_float
	sw r5,r31,$900
	addi r1,r1,$4
	pop r4
; external_library.ml@55:11;55:49 external_library.ml@55:11;55:23
	j @cfg_label_2955
@cfg_label_2955:
	push r4
	lw r5,r31,$900
	push r5
	jal @a_1568print_int
	sw r5,r31,$896
	addi r1,r1,$4
	pop r4
; external_library.ml@55:0;55:50 external_library.ml@55:0;55:9
	j @cfg_label_2954
@cfg_label_2954:
	fmovi f1,$100.000000
	fst f1,r31,$892
	j @cfg_label_2953
@cfg_label_2953:
	push r4
	lw r5,r31,$892
	push r5
	jal @a_1562sin
	sw r5,r31,$888
	addi r1,r1,$4
	pop r4
; external_library.ml@56:26;56:35 external_library.ml@56:26;56:29
	j @cfg_label_2952
@cfg_label_2952:
	fmovi f1,$1000.000000
	fst f1,r31,$884
	j @cfg_label_2951
@cfg_label_2951:
	fld f1,r31,$888
	fld f2,r31,$884
	fmul f1,f1,f2
	fst f1,r31,$880
; external_library.ml@56:25;56:46 ::= Ofmul external_library.ml@56:26;56:35 external_library.ml@56:40;56:46
	j @cfg_label_2950
@cfg_label_2950:
	push r4
	lw r5,r31,$880
	push r5
	jal int_of_float
	sw r5,r31,$876
	addi r1,r1,$4
	pop r4
; external_library.ml@56:11;56:47 external_library.ml@56:11;56:23
	j @cfg_label_2949
@cfg_label_2949:
	push r4
	lw r5,r31,$876
	push r5
	jal @a_1568print_int
	sw r5,r31,$872
	addi r1,r1,$4
	pop r4
; external_library.ml@56:0;56:48 external_library.ml@56:0;56:9
	j @cfg_label_2948
@cfg_label_2948:
	li r5,$10
	sw r5,r31,$868
; external_library.ml@57:11;57:13
	j @cfg_label_2947
@cfg_label_2947:
	push r4
	lw r5,r31,$868
	push r5
	jal print_char
	sw r5,r31,$864
	addi r1,r1,$4
	pop r4
; external_library.ml@57:0;57:13 external_library.ml@57:0;57:10
	j @cfg_label_2946
@cfg_label_2946:
	fmovi f1,$2.340000
	fst f1,r31,$860
	j @cfg_label_2945
@cfg_label_2945:
	push r4
	lw r5,r31,$860
	push r5
	jal @a_1564cos
	sw r5,r31,$856
	addi r1,r1,$4
	pop r4
; external_library.ml@59:26;59:34 external_library.ml@59:26;59:29
	j @cfg_label_2944
@cfg_label_2944:
	fmovi f1,$1000.000000
	fst f1,r31,$852
	j @cfg_label_2943
@cfg_label_2943:
	fld f1,r31,$856
	fld f2,r31,$852
	fmul f1,f1,f2
	fst f1,r31,$848
; external_library.ml@59:25;59:45 ::= Ofmul external_library.ml@59:26;59:34 external_library.ml@59:39;59:45
	j @cfg_label_2942
@cfg_label_2942:
	push r4
	lw r5,r31,$848
	push r5
	jal int_of_float
	sw r5,r31,$844
	addi r1,r1,$4
	pop r4
; external_library.ml@59:11;59:46 external_library.ml@59:11;59:23
	j @cfg_label_2941
@cfg_label_2941:
	push r4
	lw r5,r31,$844
	push r5
	jal @a_1568print_int
	sw r5,r31,$840
	addi r1,r1,$4
	pop r4
; external_library.ml@59:0;59:47 external_library.ml@59:0;59:9
	j @cfg_label_2940
@cfg_label_2940:
	fmovi f1,$-3.510000
	fst f1,r31,$836
	j @cfg_label_2939
@cfg_label_2939:
	push r4
	lw r5,r31,$836
	push r5
	jal @a_1564cos
	sw r5,r31,$832
	addi r1,r1,$4
	pop r4
; external_library.ml@60:26;60:37 external_library.ml@60:26;60:29
	j @cfg_label_2938
@cfg_label_2938:
	fmovi f1,$1000.000000
	fst f1,r31,$828
	j @cfg_label_2937
@cfg_label_2937:
	fld f1,r31,$832
	fld f2,r31,$828
	fmul f1,f1,f2
	fst f1,r31,$824
; external_library.ml@60:25;60:48 ::= Ofmul external_library.ml@60:26;60:37 external_library.ml@60:42;60:48
	j @cfg_label_2936
@cfg_label_2936:
	push r4
	lw r5,r31,$824
	push r5
	jal int_of_float
	sw r5,r31,$820
	addi r1,r1,$4
	pop r4
; external_library.ml@60:11;60:49 external_library.ml@60:11;60:23
	j @cfg_label_2935
@cfg_label_2935:
	push r4
	lw r5,r31,$820
	push r5
	jal @a_1568print_int
	sw r5,r31,$816
	addi r1,r1,$4
	pop r4
; external_library.ml@60:0;60:50 external_library.ml@60:0;60:9
	j @cfg_label_2934
@cfg_label_2934:
	fmovi f1,$100.000000
	fst f1,r31,$812
	j @cfg_label_2933
@cfg_label_2933:
	push r4
	lw r5,r31,$812
	push r5
	jal @a_1564cos
	sw r5,r31,$808
	addi r1,r1,$4
	pop r4
; external_library.ml@61:26;61:35 external_library.ml@61:26;61:29
	j @cfg_label_2932
@cfg_label_2932:
	fmovi f1,$1000.000000
	fst f1,r31,$804
	j @cfg_label_2931
@cfg_label_2931:
	fld f1,r31,$808
	fld f2,r31,$804
	fmul f1,f1,f2
	fst f1,r31,$800
; external_library.ml@61:25;61:46 ::= Ofmul external_library.ml@61:26;61:35 external_library.ml@61:40;61:46
	j @cfg_label_2930
@cfg_label_2930:
	push r4
	lw r5,r31,$800
	push r5
	jal int_of_float
	sw r5,r31,$796
	addi r1,r1,$4
	pop r4
; external_library.ml@61:11;61:47 external_library.ml@61:11;61:23
	j @cfg_label_2929
@cfg_label_2929:
	push r4
	lw r5,r31,$796
	push r5
	jal @a_1568print_int
	sw r5,r31,$792
	addi r1,r1,$4
	pop r4
; external_library.ml@61:0;61:48 external_library.ml@61:0;61:9
	j @cfg_label_2928
@cfg_label_2928:
	li r5,$10
	sw r5,r31,$788
; external_library.ml@62:11;62:13
	j @cfg_label_2927
@cfg_label_2927:
	push r4
	lw r5,r31,$788
	push r5
	jal print_char
	sw r5,r31,$784
	addi r1,r1,$4
	pop r4
; external_library.ml@62:0;62:13 external_library.ml@62:0;62:10
	j @cfg_label_2926
@cfg_label_2926:
	fmovi f1,$2.340000
	fst f1,r31,$780
	j @cfg_label_2925
@cfg_label_2925:
	push r4
	lw r5,r31,$780
	push r5
	jal @a_1566atan
	sw r5,r31,$776
	addi r1,r1,$4
	pop r4
; external_library.ml@64:26;64:35 external_library.ml@64:26;64:30
	j @cfg_label_2924
@cfg_label_2924:
	fmovi f1,$1000.000000
	fst f1,r31,$772
	j @cfg_label_2923
@cfg_label_2923:
	fld f1,r31,$776
	fld f2,r31,$772
	fmul f1,f1,f2
	fst f1,r31,$768
; external_library.ml@64:25;64:46 ::= Ofmul external_library.ml@64:26;64:35 external_library.ml@64:40;64:46
	j @cfg_label_2922
@cfg_label_2922:
	push r4
	lw r5,r31,$768
	push r5
	jal int_of_float
	sw r5,r31,$764
	addi r1,r1,$4
	pop r4
; external_library.ml@64:11;64:47 external_library.ml@64:11;64:23
	j @cfg_label_2921
@cfg_label_2921:
	push r4
	lw r5,r31,$764
	push r5
	jal @a_1568print_int
	sw r5,r31,$760
	addi r1,r1,$4
	pop r4
; external_library.ml@64:0;64:48 external_library.ml@64:0;64:9
	j @cfg_label_2920
@cfg_label_2920:
	fmovi f1,$-3.510000
	fst f1,r31,$756
	j @cfg_label_2919
@cfg_label_2919:
	push r4
	lw r5,r31,$756
	push r5
	jal @a_1566atan
	sw r5,r31,$752
	addi r1,r1,$4
	pop r4
; external_library.ml@65:26;65:38 external_library.ml@65:26;65:30
	j @cfg_label_2918
@cfg_label_2918:
	fmovi f1,$1000.000000
	fst f1,r31,$748
	j @cfg_label_2917
@cfg_label_2917:
	fld f1,r31,$752
	fld f2,r31,$748
	fmul f1,f1,f2
	fst f1,r31,$744
; external_library.ml@65:25;65:49 ::= Ofmul external_library.ml@65:26;65:38 external_library.ml@65:43;65:49
	j @cfg_label_2916
@cfg_label_2916:
	push r4
	lw r5,r31,$744
	push r5
	jal int_of_float
	sw r5,r31,$740
	addi r1,r1,$4
	pop r4
; external_library.ml@65:11;65:50 external_library.ml@65:11;65:23
	j @cfg_label_2915
@cfg_label_2915:
	push r4
	lw r5,r31,$740
	push r5
	jal @a_1568print_int
	sw r5,r31,$736
	addi r1,r1,$4
	pop r4
; external_library.ml@65:0;65:51 external_library.ml@65:0;65:9
	j @cfg_label_2914
@cfg_label_2914:
	fmovi f1,$100.000000
	fst f1,r31,$732
	j @cfg_label_2913
@cfg_label_2913:
	push r4
	lw r5,r31,$732
	push r5
	jal @a_1566atan
	sw r5,r31,$728
	addi r1,r1,$4
	pop r4
; external_library.ml@66:26;66:36 external_library.ml@66:26;66:30
	j @cfg_label_2912
@cfg_label_2912:
	fmovi f1,$1000.000000
	fst f1,r31,$724
	j @cfg_label_2911
@cfg_label_2911:
	fld f1,r31,$728
	fld f2,r31,$724
	fmul f1,f1,f2
	fst f1,r31,$720
; external_library.ml@66:25;66:47 ::= Ofmul external_library.ml@66:26;66:36 external_library.ml@66:41;66:47
	j @cfg_label_2910
@cfg_label_2910:
	push r4
	lw r5,r31,$720
	push r5
	jal int_of_float
	sw r5,r31,$716
	addi r1,r1,$4
	pop r4
; external_library.ml@66:11;66:48 external_library.ml@66:11;66:23
	j @cfg_label_2909
@cfg_label_2909:
	push r4
	lw r5,r31,$716
	push r5
	jal @a_1568print_int
	sw r5,r31,$712
	addi r1,r1,$4
	pop r4
; external_library.ml@66:0;66:49 external_library.ml@66:0;66:9
	j @cfg_label_2908
@cfg_label_2908:
	li r5,$10
	sw r5,r31,$708
; external_library.ml@67:11;67:13
	j @cfg_label_2907
@cfg_label_2907:
	push r4
	lw r5,r31,$708
	push r5
	jal print_char
	sw r5,r31,$704
	addi r1,r1,$4
	pop r4
; external_library.ml@67:0;67:13 external_library.ml@67:0;67:10
	j @cfg_label_2906
@cfg_label_2906:
	fmovi f1,$256.000000
	fst f1,r31,$700
	j @cfg_label_2905
@cfg_label_2905:
	push r4
	lw r5,r31,$700
	push r5
	jal @a_1552fsqr
	sw r5,r31,$696
	addi r1,r1,$4
	pop r4
; external_library.ml@70:26;70:36 external_library.ml@70:26;70:30
	j @cfg_label_2904
@cfg_label_2904:
	fmovi f1,$1000.000000
	fst f1,r31,$692
	j @cfg_label_2903
@cfg_label_2903:
	fld f1,r31,$696
	fld f2,r31,$692
	fmul f1,f1,f2
	fst f1,r31,$688
; external_library.ml@70:25;70:47 ::= Ofmul external_library.ml@70:26;70:36 external_library.ml@70:41;70:47
	j @cfg_label_2902
@cfg_label_2902:
	push r4
	lw r5,r31,$688
	push r5
	jal int_of_float
	sw r5,r31,$684
	addi r1,r1,$4
	pop r4
; external_library.ml@70:11;70:48 external_library.ml@70:11;70:23
	j @cfg_label_2901
@cfg_label_2901:
	push r4
	lw r5,r31,$684
	push r5
	jal @a_1568print_int
	sw r5,r31,$680
	addi r1,r1,$4
	pop r4
; external_library.ml@70:0;70:49 external_library.ml@70:0;70:9
	j @cfg_label_2900
@cfg_label_2900:
	fmovi f1,$314.000000
	fst f1,r31,$676
	j @cfg_label_2899
@cfg_label_2899:
	push r4
	lw r5,r31,$676
	push r5
	jal @a_1552fsqr
	sw r5,r31,$672
	addi r1,r1,$4
	pop r4
; external_library.ml@71:26;71:36 external_library.ml@71:26;71:30
	j @cfg_label_2898
@cfg_label_2898:
	fmovi f1,$1000.000000
	fst f1,r31,$668
	j @cfg_label_2897
@cfg_label_2897:
	fld f1,r31,$672
	fld f2,r31,$668
	fmul f1,f1,f2
	fst f1,r31,$664
; external_library.ml@71:25;71:47 ::= Ofmul external_library.ml@71:26;71:36 external_library.ml@71:41;71:47
	j @cfg_label_2896
@cfg_label_2896:
	push r4
	lw r5,r31,$664
	push r5
	jal int_of_float
	sw r5,r31,$660
	addi r1,r1,$4
	pop r4
; external_library.ml@71:11;71:48 external_library.ml@71:11;71:23
	j @cfg_label_2895
@cfg_label_2895:
	push r4
	lw r5,r31,$660
	push r5
	jal @a_1568print_int
	sw r5,r31,$656
	addi r1,r1,$4
	pop r4
; external_library.ml@71:0;71:49 external_library.ml@71:0;71:9
	j @cfg_label_2894
@cfg_label_2894:
	fmovi f1,$278.000000
	fst f1,r31,$652
	j @cfg_label_2893
@cfg_label_2893:
	push r4
	lw r5,r31,$652
	push r5
	jal @a_1552fsqr
	sw r5,r31,$648
	addi r1,r1,$4
	pop r4
; external_library.ml@72:26;72:36 external_library.ml@72:26;72:30
	j @cfg_label_2892
@cfg_label_2892:
	fmovi f1,$1000.000000
	fst f1,r31,$644
	j @cfg_label_2891
@cfg_label_2891:
	fld f1,r31,$648
	fld f2,r31,$644
	fmul f1,f1,f2
	fst f1,r31,$640
; external_library.ml@72:25;72:47 ::= Ofmul external_library.ml@72:26;72:36 external_library.ml@72:41;72:47
	j @cfg_label_2890
@cfg_label_2890:
	push r4
	lw r5,r31,$640
	push r5
	jal int_of_float
	sw r5,r31,$636
	addi r1,r1,$4
	pop r4
; external_library.ml@72:11;72:48 external_library.ml@72:11;72:23
	j @cfg_label_2889
@cfg_label_2889:
	push r4
	lw r5,r31,$636
	push r5
	jal @a_1568print_int
	sw r5,r31,$632
	addi r1,r1,$4
	pop r4
; external_library.ml@72:0;72:49 external_library.ml@72:0;72:9
	j @cfg_label_2888
@cfg_label_2888:
	li r5,$10
	sw r5,r31,$628
; external_library.ml@73:11;73:13
	j @cfg_label_2887
@cfg_label_2887:
	push r4
	lw r5,r31,$628
	push r5
	jal print_char
	sw r5,r31,$624
	addi r1,r1,$4
	pop r4
; external_library.ml@73:0;73:13 external_library.ml@73:0;73:10
	j @cfg_label_2886
@cfg_label_2886:
	fmovi f1,$256.340000
	fst f1,r31,$620
	j @cfg_label_2885
@cfg_label_2885:
	push r4
	lw r5,r31,$620
	push r5
	jal sqrt
	sw r5,r31,$616
	addi r1,r1,$4
	pop r4
; external_library.ml@75:26;75:37 external_library.ml@75:26;75:30
	j @cfg_label_2884
@cfg_label_2884:
	fmovi f1,$1000.000000
	fst f1,r31,$612
	j @cfg_label_2883
@cfg_label_2883:
	fld f1,r31,$616
	fld f2,r31,$612
	fmul f1,f1,f2
	fst f1,r31,$608
; external_library.ml@75:25;75:48 ::= Ofmul external_library.ml@75:26;75:37 external_library.ml@75:42;75:48
	j @cfg_label_2882
@cfg_label_2882:
	push r4
	lw r5,r31,$608
	push r5
	jal int_of_float
	sw r5,r31,$604
	addi r1,r1,$4
	pop r4
; external_library.ml@75:11;75:49 external_library.ml@75:11;75:23
	j @cfg_label_2881
@cfg_label_2881:
	push r4
	lw r5,r31,$604
	push r5
	jal @a_1568print_int
	sw r5,r31,$600
	addi r1,r1,$4
	pop r4
; external_library.ml@75:0;75:50 external_library.ml@75:0;75:9
	j @cfg_label_2880
@cfg_label_2880:
	fmovi f1,$314.510000
	fst f1,r31,$596
	j @cfg_label_2879
@cfg_label_2879:
	push r4
	lw r5,r31,$596
	push r5
	jal sqrt
	sw r5,r31,$592
	addi r1,r1,$4
	pop r4
; external_library.ml@76:26;76:37 external_library.ml@76:26;76:30
	j @cfg_label_2878
@cfg_label_2878:
	fmovi f1,$1000.000000
	fst f1,r31,$588
	j @cfg_label_2877
@cfg_label_2877:
	fld f1,r31,$592
	fld f2,r31,$588
	fmul f1,f1,f2
	fst f1,r31,$584
; external_library.ml@76:25;76:48 ::= Ofmul external_library.ml@76:26;76:37 external_library.ml@76:42;76:48
	j @cfg_label_2876
@cfg_label_2876:
	push r4
	lw r5,r31,$584
	push r5
	jal int_of_float
	sw r5,r31,$580
	addi r1,r1,$4
	pop r4
; external_library.ml@76:11;76:49 external_library.ml@76:11;76:23
	j @cfg_label_2875
@cfg_label_2875:
	push r4
	lw r5,r31,$580
	push r5
	jal @a_1568print_int
	sw r5,r31,$576
	addi r1,r1,$4
	pop r4
; external_library.ml@76:0;76:50 external_library.ml@76:0;76:9
	j @cfg_label_2874
@cfg_label_2874:
	fmovi f1,$278.239000
	fst f1,r31,$572
	j @cfg_label_2873
@cfg_label_2873:
	push r4
	lw r5,r31,$572
	push r5
	jal sqrt
	sw r5,r31,$568
	addi r1,r1,$4
	pop r4
; external_library.ml@77:26;77:38 external_library.ml@77:26;77:30
	j @cfg_label_2872
@cfg_label_2872:
	fmovi f1,$1000.000000
	fst f1,r31,$564
	j @cfg_label_2871
@cfg_label_2871:
	fld f1,r31,$568
	fld f2,r31,$564
	fmul f1,f1,f2
	fst f1,r31,$560
; external_library.ml@77:25;77:49 ::= Ofmul external_library.ml@77:26;77:38 external_library.ml@77:43;77:49
	j @cfg_label_2870
@cfg_label_2870:
	push r4
	lw r5,r31,$560
	push r5
	jal int_of_float
	sw r5,r31,$556
	addi r1,r1,$4
	pop r4
; external_library.ml@77:11;77:50 external_library.ml@77:11;77:23
	j @cfg_label_2869
@cfg_label_2869:
	push r4
	lw r5,r31,$556
	push r5
	jal @a_1568print_int
	sw r5,r31,$552
	addi r1,r1,$4
	pop r4
; external_library.ml@77:0;77:51 external_library.ml@77:0;77:9
	j @cfg_label_2868
@cfg_label_2868:
	li r5,$10
	sw r5,r31,$548
; external_library.ml@78:11;78:13
	j @cfg_label_2867
@cfg_label_2867:
	push r4
	lw r5,r31,$548
	push r5
	jal print_char
	sw r5,r31,$544
	addi r1,r1,$4
	pop r4
; external_library.ml@78:0;78:13 external_library.ml@78:0;78:10
	j @cfg_label_2866
@cfg_label_2866:
	fmovi f1,$1.000000
	fst f1,r31,$540
	j @cfg_label_2865
@cfg_label_2865:
	fmovi f1,$1.500000
	fst f1,r31,$536
	j @cfg_label_2864
@cfg_label_2864:
	push r4
	lw r5,r31,$536
	push r5
	lw r5,r31,$540
	push r5
	jal @a_1539fless
	sw r5,r31,$532
	addi r1,r1,$8
	pop r4
; external_library.ml@81:15;81:28 external_library.ml@81:15;81:20
	j @cfg_label_2863
@cfg_label_2863:
	li r5,$1
	sw r5,r31,$528
; external_library.ml@81:15;81:28
	j @cfg_label_2862
@cfg_label_2862:
	lw r5,r31,$532
	lw r6,r31,$528
	bne r5,r6,@cfg_label_2701
	j @cfg_label_2700
	j @cfg_label_2702
	j @cfg_label_2703
@cfg_label_2702:
@cfg_label_2700:
	li r5,$1
	sw r5,r31,$524
; external_library.ml@81:11;81:43
	j @cfg_label_2860
@cfg_label_2703:
@cfg_label_2701:
	li r5,$0
	sw r5,r31,$524
; external_library.ml@81:11;81:43
	j @cfg_label_2861
@cfg_label_2861:
@cfg_label_2860:
	push r4
	lw r5,r31,$524
	push r5
	jal @a_1568print_int
	sw r5,r31,$520
	addi r1,r1,$4
	pop r4
; external_library.ml@81:0;81:44 external_library.ml@81:0;81:9
	j @cfg_label_2859
@cfg_label_2859:
	fmovi f1,$1.500000
	fst f1,r31,$516
	j @cfg_label_2858
@cfg_label_2858:
	fmovi f1,$1.500000
	fst f1,r31,$512
	j @cfg_label_2857
@cfg_label_2857:
	push r4
	lw r5,r31,$512
	push r5
	lw r5,r31,$516
	push r5
	jal @a_1539fless
	sw r5,r31,$508
	addi r1,r1,$8
	pop r4
; external_library.ml@82:15;82:28 external_library.ml@82:15;82:20
	j @cfg_label_2856
@cfg_label_2856:
	li r5,$1
	sw r5,r31,$504
; external_library.ml@82:15;82:28
	j @cfg_label_2855
@cfg_label_2855:
	lw r5,r31,$508
	lw r6,r31,$504
	bne r5,r6,@cfg_label_2705
	j @cfg_label_2704
	j @cfg_label_2706
	j @cfg_label_2707
@cfg_label_2706:
@cfg_label_2704:
	li r5,$1
	sw r5,r31,$500
; external_library.ml@82:11;82:43
	j @cfg_label_2853
@cfg_label_2707:
@cfg_label_2705:
	li r5,$0
	sw r5,r31,$500
; external_library.ml@82:11;82:43
	j @cfg_label_2854
@cfg_label_2854:
@cfg_label_2853:
	push r4
	lw r5,r31,$500
	push r5
	jal @a_1568print_int
	sw r5,r31,$496
	addi r1,r1,$4
	pop r4
; external_library.ml@82:0;82:44 external_library.ml@82:0;82:9
	j @cfg_label_2852
@cfg_label_2852:
	fmovi f1,$1.500000
	fst f1,r31,$492
	j @cfg_label_2851
@cfg_label_2851:
	fmovi f1,$1.000000
	fst f1,r31,$488
	j @cfg_label_2850
@cfg_label_2850:
	push r4
	lw r5,r31,$488
	push r5
	lw r5,r31,$492
	push r5
	jal @a_1539fless
	sw r5,r31,$484
	addi r1,r1,$8
	pop r4
; external_library.ml@83:15;83:28 external_library.ml@83:15;83:20
	j @cfg_label_2849
@cfg_label_2849:
	li r5,$1
	sw r5,r31,$480
; external_library.ml@83:15;83:28
	j @cfg_label_2848
@cfg_label_2848:
	lw r5,r31,$484
	lw r6,r31,$480
	bne r5,r6,@cfg_label_2709
	j @cfg_label_2708
	j @cfg_label_2710
	j @cfg_label_2711
@cfg_label_2710:
@cfg_label_2708:
	li r5,$1
	sw r5,r31,$476
; external_library.ml@83:11;83:43
	j @cfg_label_2846
@cfg_label_2711:
@cfg_label_2709:
	li r5,$0
	sw r5,r31,$476
; external_library.ml@83:11;83:43
	j @cfg_label_2847
@cfg_label_2847:
@cfg_label_2846:
	push r4
	lw r5,r31,$476
	push r5
	jal @a_1568print_int
	sw r5,r31,$472
	addi r1,r1,$4
	pop r4
; external_library.ml@83:0;83:44 external_library.ml@83:0;83:9
	j @cfg_label_2845
@cfg_label_2845:
	fmovi f1,$1.000000
	fst f1,r31,$468
	j @cfg_label_2844
@cfg_label_2844:
	fmovi f1,$-0.500000
	fst f1,r31,$464
	j @cfg_label_2843
@cfg_label_2843:
	push r4
	lw r5,r31,$464
	push r5
	lw r5,r31,$468
	push r5
	jal @a_1539fless
	sw r5,r31,$460
	addi r1,r1,$8
	pop r4
; external_library.ml@84:15;84:31 external_library.ml@84:15;84:20
	j @cfg_label_2842
@cfg_label_2842:
	li r5,$1
	sw r5,r31,$456
; external_library.ml@84:15;84:31
	j @cfg_label_2841
@cfg_label_2841:
	lw r5,r31,$460
	lw r6,r31,$456
	bne r5,r6,@cfg_label_2713
	j @cfg_label_2712
	j @cfg_label_2714
	j @cfg_label_2715
@cfg_label_2714:
@cfg_label_2712:
	li r5,$1
	sw r5,r31,$452
; external_library.ml@84:11;84:46
	j @cfg_label_2839
@cfg_label_2715:
@cfg_label_2713:
	li r5,$0
	sw r5,r31,$452
; external_library.ml@84:11;84:46
	j @cfg_label_2840
@cfg_label_2840:
@cfg_label_2839:
	push r4
	lw r5,r31,$452
	push r5
	jal @a_1568print_int
	sw r5,r31,$448
	addi r1,r1,$4
	pop r4
; external_library.ml@84:0;84:47 external_library.ml@84:0;84:9
	j @cfg_label_2838
@cfg_label_2838:
	fmovi f1,$-0.500000
	fst f1,r31,$444
	j @cfg_label_2837
@cfg_label_2837:
	fmovi f1,$-0.500000
	fst f1,r31,$440
	j @cfg_label_2836
@cfg_label_2836:
	push r4
	lw r5,r31,$440
	push r5
	lw r5,r31,$444
	push r5
	jal @a_1539fless
	sw r5,r31,$436
	addi r1,r1,$8
	pop r4
; external_library.ml@85:15;85:34 external_library.ml@85:15;85:20
	j @cfg_label_2835
@cfg_label_2835:
	li r5,$1
	sw r5,r31,$432
; external_library.ml@85:15;85:34
	j @cfg_label_2834
@cfg_label_2834:
	lw r5,r31,$436
	lw r6,r31,$432
	bne r5,r6,@cfg_label_2717
	j @cfg_label_2716
	j @cfg_label_2718
	j @cfg_label_2719
@cfg_label_2718:
@cfg_label_2716:
	li r5,$1
	sw r5,r31,$428
; external_library.ml@85:11;85:49
	j @cfg_label_2832
@cfg_label_2719:
@cfg_label_2717:
	li r5,$0
	sw r5,r31,$428
; external_library.ml@85:11;85:49
	j @cfg_label_2833
@cfg_label_2833:
@cfg_label_2832:
	push r4
	lw r5,r31,$428
	push r5
	jal @a_1568print_int
	sw r5,r31,$424
	addi r1,r1,$4
	pop r4
; external_library.ml@85:0;85:50 external_library.ml@85:0;85:9
	j @cfg_label_2831
@cfg_label_2831:
	fmovi f1,$-0.500000
	fst f1,r31,$420
	j @cfg_label_2830
@cfg_label_2830:
	fmovi f1,$1.000000
	fst f1,r31,$416
	j @cfg_label_2829
@cfg_label_2829:
	push r4
	lw r5,r31,$416
	push r5
	lw r5,r31,$420
	push r5
	jal @a_1539fless
	sw r5,r31,$412
	addi r1,r1,$8
	pop r4
; external_library.ml@86:15;86:31 external_library.ml@86:15;86:20
	j @cfg_label_2828
@cfg_label_2828:
	li r5,$1
	sw r5,r31,$408
; external_library.ml@86:15;86:31
	j @cfg_label_2827
@cfg_label_2827:
	lw r5,r31,$412
	lw r6,r31,$408
	bne r5,r6,@cfg_label_2721
	j @cfg_label_2720
	j @cfg_label_2722
	j @cfg_label_2723
@cfg_label_2722:
@cfg_label_2720:
	li r5,$1
	sw r5,r31,$404
; external_library.ml@86:11;86:46
	j @cfg_label_2825
@cfg_label_2723:
@cfg_label_2721:
	li r5,$0
	sw r5,r31,$404
; external_library.ml@86:11;86:46
	j @cfg_label_2826
@cfg_label_2826:
@cfg_label_2825:
	push r4
	lw r5,r31,$404
	push r5
	jal @a_1568print_int
	sw r5,r31,$400
	addi r1,r1,$4
	pop r4
; external_library.ml@86:0;86:47 external_library.ml@86:0;86:9
	j @cfg_label_2824
@cfg_label_2824:
	li r5,$10
	sw r5,r31,$396
; external_library.ml@87:11;87:13
	j @cfg_label_2823
@cfg_label_2823:
	push r4
	lw r5,r31,$396
	push r5
	jal print_char
	sw r5,r31,$392
	addi r1,r1,$4
	pop r4
; external_library.ml@87:0;87:13 external_library.ml@87:0;87:10
	j @cfg_label_2822
@cfg_label_2822:
	li r5,$5
	sw r5,r31,$388
; external_library.ml@89:39;89:40
	j @cfg_label_2821
@cfg_label_2821:
	push r4
	lw r5,r31,$388
	push r5
	jal float_of_int
	sw r5,r31,$384
	addi r1,r1,$4
	pop r4
; external_library.ml@89:26;89:40 external_library.ml@89:26;89:38
	j @cfg_label_2820
@cfg_label_2820:
	li r5,$5
	sw r5,r31,$380
; external_library.ml@89:59;89:60
	j @cfg_label_2819
@cfg_label_2819:
	push r4
	lw r5,r31,$380
	push r5
	jal float_of_int
	sw r5,r31,$376
	addi r1,r1,$4
	pop r4
; external_library.ml@89:46;89:60 external_library.ml@89:46;89:58
	j @cfg_label_2818
@cfg_label_2818:
	fld f1,r31,$384
	fld f2,r31,$376
	fmul f1,f1,f2
	fst f1,r31,$372
; external_library.ml@89:25;89:61 ::= Ofmul external_library.ml@89:26;89:40 external_library.ml@89:46;89:60
	j @cfg_label_2817
@cfg_label_2817:
	push r4
	lw r5,r31,$372
	push r5
	jal int_of_float
	sw r5,r31,$368
	addi r1,r1,$4
	pop r4
; external_library.ml@89:11;89:62 external_library.ml@89:11;89:23
	j @cfg_label_2816
@cfg_label_2816:
	push r4
	lw r5,r31,$368
	push r5
	jal @a_1568print_int
	sw r5,r31,$364
	addi r1,r1,$4
	pop r4
; external_library.ml@89:0;89:63 external_library.ml@89:0;89:9
	j @cfg_label_2815
@cfg_label_2815:
	li r5,$5
	sw r5,r31,$360
; external_library.ml@90:39;90:40
	j @cfg_label_2814
@cfg_label_2814:
	push r4
	lw r5,r31,$360
	push r5
	jal float_of_int
	sw r5,r31,$356
	addi r1,r1,$4
	pop r4
; external_library.ml@90:26;90:40 external_library.ml@90:26;90:38
	j @cfg_label_2813
@cfg_label_2813:
	li r5,$5
	sw r5,r31,$352
; external_library.ml@90:59;90:60
	j @cfg_label_2812
@cfg_label_2812:
	push r4
	lw r5,r31,$352
	push r5
	jal float_of_int
	sw r5,r31,$348
	addi r1,r1,$4
	pop r4
; external_library.ml@90:46;90:60 external_library.ml@90:46;90:58
	j @cfg_label_2811
@cfg_label_2811:
	fld f1,r31,$356
	fld f2,r31,$348
	fmul f1,f1,f2
	fst f1,r31,$344
; external_library.ml@90:25;90:61 ::= Ofmul external_library.ml@90:26;90:40 external_library.ml@90:46;90:60
	j @cfg_label_2810
@cfg_label_2810:
	push r4
	lw r5,r31,$344
	push r5
	jal int_of_float
	sw r5,r31,$340
	addi r1,r1,$4
	pop r4
; external_library.ml@90:11;90:62 external_library.ml@90:11;90:23
	j @cfg_label_2809
@cfg_label_2809:
	push r4
	lw r5,r31,$340
	push r5
	jal @a_1568print_int
	sw r5,r31,$336
	addi r1,r1,$4
	pop r4
; external_library.ml@90:0;90:63 external_library.ml@90:0;90:9
	j @cfg_label_2808
@cfg_label_2808:
	li r5,$5
	sw r5,r31,$332
; external_library.ml@91:39;91:40
	j @cfg_label_2807
@cfg_label_2807:
	push r4
	lw r5,r31,$332
	push r5
	jal float_of_int
	sw r5,r31,$328
	addi r1,r1,$4
	pop r4
; external_library.ml@91:26;91:40 external_library.ml@91:26;91:38
	j @cfg_label_2806
@cfg_label_2806:
	li r5,$5
	sw r5,r31,$324
; external_library.ml@91:59;91:60
	j @cfg_label_2805
@cfg_label_2805:
	push r4
	lw r5,r31,$324
	push r5
	jal float_of_int
	sw r5,r31,$320
	addi r1,r1,$4
	pop r4
; external_library.ml@91:46;91:60 external_library.ml@91:46;91:58
	j @cfg_label_2804
@cfg_label_2804:
	fld f1,r31,$328
	fld f2,r31,$320
	fmul f1,f1,f2
	fst f1,r31,$316
; external_library.ml@91:25;91:61 ::= Ofmul external_library.ml@91:26;91:40 external_library.ml@91:46;91:60
	j @cfg_label_2803
@cfg_label_2803:
	push r4
	lw r5,r31,$316
	push r5
	jal int_of_float
	sw r5,r31,$312
	addi r1,r1,$4
	pop r4
; external_library.ml@91:11;91:62 external_library.ml@91:11;91:23
	j @cfg_label_2802
@cfg_label_2802:
	push r4
	lw r5,r31,$312
	push r5
	jal @a_1568print_int
	sw r5,r31,$308
	addi r1,r1,$4
	pop r4
; external_library.ml@91:0;91:63 external_library.ml@91:0;91:9
	j @cfg_label_2801
@cfg_label_2801:
	li r5,$10
	sw r5,r31,$304
; external_library.ml@92:11;92:13
	j @cfg_label_2800
@cfg_label_2800:
	push r4
	lw r5,r31,$304
	push r5
	jal print_char
	sw r5,r31,$300
	addi r1,r1,$4
	pop r4
; external_library.ml@92:0;92:13 external_library.ml@92:0;92:10
	j @cfg_label_2799
@cfg_label_2799:
	li r5,$10
	sw r5,r31,$296
; external_library.ml@94:11;94:13
	j @cfg_label_2798
@cfg_label_2798:
	push r4
	lw r5,r31,$296
	push r5
	jal print_char
	sw r5,r31,$292
	addi r1,r1,$4
	pop r4
; external_library.ml@94:0;94:13 external_library.ml@94:0;94:10
	j @cfg_label_2797
@cfg_label_2797:
	lw r5,r31,$292
	sw r5,r31,$288
; external_library.ml@92:0;94:13 ::<= external_library.ml@94:0;94:13
	j @cfg_label_2796
@cfg_label_2796:
	lw r5,r31,$288
	sw r5,r31,$284
; external_library.ml@91:0;94:13 ::<= external_library.ml@92:0;94:13
	j @cfg_label_2795
@cfg_label_2795:
	lw r5,r31,$284
	sw r5,r31,$280
; external_library.ml@90:0;94:13 ::<= external_library.ml@91:0;94:13
	j @cfg_label_2794
@cfg_label_2794:
	lw r5,r31,$280
	sw r5,r31,$276
; external_library.ml@89:0;94:13 ::<= external_library.ml@90:0;94:13
	j @cfg_label_2793
@cfg_label_2793:
	lw r5,r31,$276
	sw r5,r31,$272
; external_library.ml@87:0;94:13 ::<= external_library.ml@89:0;94:13
	j @cfg_label_2792
@cfg_label_2792:
	lw r5,r31,$272
	sw r5,r31,$268
; external_library.ml@86:0;94:13 ::<= external_library.ml@87:0;94:13
	j @cfg_label_2791
@cfg_label_2791:
	lw r5,r31,$268
	sw r5,r31,$264
; external_library.ml@85:0;94:13 ::<= external_library.ml@86:0;94:13
	j @cfg_label_2790
@cfg_label_2790:
	lw r5,r31,$264
	sw r5,r31,$260
; external_library.ml@84:0;94:13 ::<= external_library.ml@85:0;94:13
	j @cfg_label_2789
@cfg_label_2789:
	lw r5,r31,$260
	sw r5,r31,$256
; external_library.ml@83:0;94:13 ::<= external_library.ml@84:0;94:13
	j @cfg_label_2788
@cfg_label_2788:
	lw r5,r31,$256
	sw r5,r31,$252
; external_library.ml@82:0;94:13 ::<= external_library.ml@83:0;94:13
	j @cfg_label_2787
@cfg_label_2787:
	lw r5,r31,$252
	sw r5,r31,$248
; external_library.ml@81:0;94:13 ::<= external_library.ml@82:0;94:13
	j @cfg_label_2786
@cfg_label_2786:
	lw r5,r31,$248
	sw r5,r31,$244
; external_library.ml@78:0;94:13 ::<= external_library.ml@81:0;94:13
	j @cfg_label_2785
@cfg_label_2785:
	lw r5,r31,$244
	sw r5,r31,$240
; external_library.ml@77:0;94:13 ::<= external_library.ml@78:0;94:13
	j @cfg_label_2784
@cfg_label_2784:
	lw r5,r31,$240
	sw r5,r31,$236
; external_library.ml@76:0;94:13 ::<= external_library.ml@77:0;94:13
	j @cfg_label_2783
@cfg_label_2783:
	lw r5,r31,$236
	sw r5,r31,$232
; external_library.ml@75:0;94:13 ::<= external_library.ml@76:0;94:13
	j @cfg_label_2782
@cfg_label_2782:
	lw r5,r31,$232
	sw r5,r31,$228
; external_library.ml@73:0;94:13 ::<= external_library.ml@75:0;94:13
	j @cfg_label_2781
@cfg_label_2781:
	lw r5,r31,$228
	sw r5,r31,$224
; external_library.ml@72:0;94:13 ::<= external_library.ml@73:0;94:13
	j @cfg_label_2780
@cfg_label_2780:
	lw r5,r31,$224
	sw r5,r31,$220
; external_library.ml@71:0;94:13 ::<= external_library.ml@72:0;94:13
	j @cfg_label_2779
@cfg_label_2779:
	lw r5,r31,$220
	sw r5,r31,$216
; external_library.ml@70:0;94:13 ::<= external_library.ml@71:0;94:13
	j @cfg_label_2778
@cfg_label_2778:
	lw r5,r31,$216
	sw r5,r31,$212
; external_library.ml@67:0;94:13 ::<= external_library.ml@70:0;94:13
	j @cfg_label_2777
@cfg_label_2777:
	lw r5,r31,$212
	sw r5,r31,$208
; external_library.ml@66:0;94:13 ::<= external_library.ml@67:0;94:13
	j @cfg_label_2776
@cfg_label_2776:
	lw r5,r31,$208
	sw r5,r31,$204
; external_library.ml@65:0;94:13 ::<= external_library.ml@66:0;94:13
	j @cfg_label_2775
@cfg_label_2775:
	lw r5,r31,$204
	sw r5,r31,$200
; external_library.ml@64:0;94:13 ::<= external_library.ml@65:0;94:13
	j @cfg_label_2774
@cfg_label_2774:
	lw r5,r31,$200
	sw r5,r31,$196
; external_library.ml@62:0;94:13 ::<= external_library.ml@64:0;94:13
	j @cfg_label_2773
@cfg_label_2773:
	lw r5,r31,$196
	sw r5,r31,$192
; external_library.ml@61:0;94:13 ::<= external_library.ml@62:0;94:13
	j @cfg_label_2772
@cfg_label_2772:
	lw r5,r31,$192
	sw r5,r31,$188
; external_library.ml@60:0;94:13 ::<= external_library.ml@61:0;94:13
	j @cfg_label_2771
@cfg_label_2771:
	lw r5,r31,$188
	sw r5,r31,$184
; external_library.ml@59:0;94:13 ::<= external_library.ml@60:0;94:13
	j @cfg_label_2770
@cfg_label_2770:
	lw r5,r31,$184
	sw r5,r31,$180
; external_library.ml@57:0;94:13 ::<= external_library.ml@59:0;94:13
	j @cfg_label_2769
@cfg_label_2769:
	lw r5,r31,$180
	sw r5,r31,$176
; external_library.ml@56:0;94:13 ::<= external_library.ml@57:0;94:13
	j @cfg_label_2768
@cfg_label_2768:
	lw r5,r31,$176
	sw r5,r31,$172
; external_library.ml@55:0;94:13 ::<= external_library.ml@56:0;94:13
	j @cfg_label_2767
@cfg_label_2767:
	lw r5,r31,$172
	sw r5,r31,$168
; external_library.ml@54:0;94:13 ::<= external_library.ml@55:0;94:13
	j @cfg_label_2766
@cfg_label_2766:
	lw r5,r31,$168
	sw r5,r31,$164
; external_library.ml@52:0;94:13 ::<= external_library.ml@54:0;94:13
	j @cfg_label_2765
@cfg_label_2765:
	lw r5,r31,$164
	sw r5,r31,$160
; external_library.ml@51:0;94:13 ::<= external_library.ml@52:0;94:13
	j @cfg_label_2764
@cfg_label_2764:
	lw r5,r31,$160
	sw r5,r31,$156
; external_library.ml@50:0;94:13 ::<= external_library.ml@51:0;94:13
	j @cfg_label_2763
@cfg_label_2763:
	lw r5,r31,$156
	sw r5,r31,$152
; external_library.ml@49:0;94:13 ::<= external_library.ml@50:0;94:13
	j @cfg_label_2762
@cfg_label_2762:
	lw r5,r31,$152
	sw r5,r31,$148
; external_library.ml@46:0;94:13 ::<= external_library.ml@49:0;94:13
	j @cfg_label_2761
@cfg_label_2761:
	lw r5,r31,$148
	sw r5,r31,$144
; external_library.ml@45:0;94:13 ::<= external_library.ml@46:0;94:13
	j @cfg_label_2760
@cfg_label_2760:
	lw r5,r31,$144
	sw r5,r31,$140
; external_library.ml@44:0;94:13 ::<= external_library.ml@45:0;94:13
	j @cfg_label_2759
@cfg_label_2759:
	lw r5,r31,$140
	sw r5,r31,$136
; external_library.ml@43:0;94:13 ::<= external_library.ml@44:0;94:13
	j @cfg_label_2758
@cfg_label_2758:
	lw r5,r31,$136
	sw r5,r31,$132
; external_library.ml@41:0;94:13 ::<= external_library.ml@43:0;94:13
	j @cfg_label_2757
@cfg_label_2757:
	lw r5,r31,$132
	sw r5,r31,$128
; external_library.ml@40:0;94:13 ::<= external_library.ml@41:0;94:13
	j @cfg_label_2756
@cfg_label_2756:
	lw r5,r31,$128
	sw r5,r31,$124
; external_library.ml@39:0;94:13 ::<= external_library.ml@40:0;94:13
	j @cfg_label_2755
@cfg_label_2755:
	lw r5,r31,$124
	sw r5,r31,$120
; external_library.ml@38:0;94:13 ::<= external_library.ml@39:0;94:13
	j @cfg_label_2754
@cfg_label_2754:
	lw r5,r31,$120
	sw r5,r31,$116
; external_library.ml@36:0;94:13 ::<= external_library.ml@38:0;94:13
	j @cfg_label_2753
@cfg_label_2753:
	lw r5,r31,$116
	sw r5,r31,$112
; external_library.ml@35:0;94:13 ::<= external_library.ml@36:0;94:13
	j @cfg_label_2752
@cfg_label_2752:
	lw r5,r31,$112
	sw r5,r31,$108
; external_library.ml@34:0;94:13 ::<= external_library.ml@35:0;94:13
	j @cfg_label_2751
@cfg_label_2751:
	lw r5,r31,$108
	sw r5,r31,$104
; external_library.ml@33:0;94:13 ::<= external_library.ml@34:0;94:13
	j @cfg_label_2750
@cfg_label_2750:
	lw r5,r31,$104
	sw r5,r31,$100
; external_library.ml@31:0;94:13 ::<= external_library.ml@33:0;94:13
	j @cfg_label_2749
@cfg_label_2749:
	lw r5,r31,$100
	sw r5,r31,$96
; external_library.ml@30:0;94:13 ::<= external_library.ml@31:0;94:13
	j @cfg_label_2748
@cfg_label_2748:
	lw r5,r31,$96
	sw r5,r31,$92
; external_library.ml@29:0;94:13 ::<= external_library.ml@30:0;94:13
	j @cfg_label_2747
@cfg_label_2747:
	lw r5,r31,$92
	sw r5,r31,$88
; external_library.ml@28:0;94:13 ::<= external_library.ml@29:0;94:13
	j @cfg_label_2746
@cfg_label_2746:
	lw r5,r31,$88
	sw r5,r31,$84
; external_library.ml@27:0;94:13 ::<= external_library.ml@28:0;94:13
	j @cfg_label_2745
@cfg_label_2745:
	lw r5,r31,$84
	sw r5,r31,$80
; external_library.ml@26:0;94:13 ::<= external_library.ml@27:0;94:13
	j @cfg_label_2744
@cfg_label_2744:
	lw r5,r31,$80
	sw r5,r31,$76
; external_library.ml@25:0;94:13 ::<= external_library.ml@26:0;94:13
	j @cfg_label_2743
@cfg_label_2743:
	lw r5,r31,$76
	sw r5,r31,$72
; external_library.ml@23:0;94:13 ::<= external_library.ml@25:0;94:13
	j @cfg_label_2742
@cfg_label_2742:
	lw r5,r31,$72
	sw r5,r31,$68
; external_library.ml@22:0;94:13 ::<= external_library.ml@23:0;94:13
	j @cfg_label_2741
@cfg_label_2741:
	lw r5,r31,$68
	sw r5,r31,$64
; external_library.ml@21:0;94:13 ::<= external_library.ml@22:0;94:13
	j @cfg_label_2740
@cfg_label_2740:
	lw r5,r31,$64
	sw r5,r31,$60
; external_library.ml@20:0;94:13 ::<= external_library.ml@21:0;94:13
	j @cfg_label_2739
@cfg_label_2739:
	lw r5,r31,$60
	sw r5,r31,$56
; external_library.ml@18:0;94:13 ::<= external_library.ml@20:0;94:13
	j @cfg_label_2738
@cfg_label_2738:
	lw r5,r31,$56
	sw r5,r31,$52
; external_library.ml@17:0;94:13 ::<= external_library.ml@18:0;94:13
	j @cfg_label_2737
@cfg_label_2737:
	lw r5,r31,$52
	sw r5,r31,$48
; external_library.ml@16:0;94:13 ::<= external_library.ml@17:0;94:13
	j @cfg_label_2736
@cfg_label_2736:
	lw r5,r31,$48
	sw r5,r31,$44
; external_library.ml@15:0;94:13 ::<= external_library.ml@16:0;94:13
	j @cfg_label_2735
@cfg_label_2735:
	lw r5,r31,$44
	sw r5,r31,$40
; external_library.ml@13:0;94:13 ::<= external_library.ml@15:0;94:13
	j @cfg_label_2734
@cfg_label_2734:
	lw r5,r31,$40
	sw r5,r31,$36
; external_library.ml@12:0;94:13 ::<= external_library.ml@13:0;94:13
	j @cfg_label_2733
@cfg_label_2733:
	lw r5,r31,$36
	sw r5,r31,$32
; external_library.ml@11:0;94:13 ::<= external_library.ml@12:0;94:13
	j @cfg_label_2732
@cfg_label_2732:
	lw r5,r31,$32
	sw r5,r31,$28
; external_library.ml@10:0;94:13 ::<= external_library.ml@11:0;94:13
	j @cfg_label_2731
@cfg_label_2731:
	lw r5,r31,$28
	sw r5,r31,$24
; external_library.ml@8:0;94:13 ::<= external_library.ml@10:0;94:13
	j @cfg_label_2730
@cfg_label_2730:
	lw r5,r31,$24
	sw r5,r31,$20
; external_library.ml@7:0;94:13 ::<= external_library.ml@8:0;94:13
	j @cfg_label_2729
@cfg_label_2729:
	lw r5,r31,$20
	sw r5,r31,$16
; external_library.ml@6:0;94:13 ::<= external_library.ml@7:0;94:13
	j @cfg_label_2728
@cfg_label_2728:
	lw r5,r31,$16
	sw r5,r31,$12
; external_library.ml@5:0;94:13 ::<= external_library.ml@6:0;94:13
	j @cfg_label_2727
@cfg_label_2727:
	lw r5,r31,$12
	sw r5,r31,$8
; external_library.ml@4:0;94:13 ::<= external_library.ml@5:0;94:13
	j @cfg_label_2726
@cfg_label_2726:
	lw r5,r31,$8
	sw r5,r31,$4
; external_library.ml@3:0;94:13 ::<= external_library.ml@4:0;94:13
	j @cfg_label_2725
@cfg_label_2725:
	lw r5,r31,$4
	sw r5,r31,$0
; external_library.ml@2:0;94:13 ::<= external_library.ml@3:0;94:13
	j @cfg_label_2724
@cfg_label_2724:
	lw r5,r31,$0
	sw r5,r2,$-4
; @0:-1;0:-1 ::<= external_library.ml@2:0;94:13
	li r5,$0
	hlt
	li r5,$0
	hlt
