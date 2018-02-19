

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

main:
	mflr r7
	push r7
	mov r31,r3
	addi r3,r3,$780
	push r2
	mov r2,r1
	subi r1,r1,$4
	li r5,$24
	sw r5,r31,$776
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_1572
	li r5,$24
	sw r5,r31,$776
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_1572
@cfg_label_1572:
	fmovi f1,$0.000000
	fst f1,r31,$772
	j @cfg_label_1571
@cfg_label_1571:
	lw r6,r31,$772
	lw r5,r31,$776
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1574
@emit_label_1573:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1573
@emit_label_1574:
	mov r5,r7
	sw r5,r31,$768
; lib_tortesia.ml@21:12;21:31 ::= OArrCrt lib_tortesia.ml@21:25;21:27 lib_tortesia.ml@21:28;21:31
	j @cfg_label_1570
@cfg_label_1570:
	li r5,$24
	sw r5,r31,$764
; lib_tortesia.ml@22:25;22:27
	j @cfg_label_1569
@cfg_label_1569:
	fmovi f1,$0.000000
	fst f1,r31,$760
	j @cfg_label_1568
@cfg_label_1568:
	lw r6,r31,$760
	lw r5,r31,$764
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1576
@emit_label_1575:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1575
@emit_label_1576:
	mov r5,r7
	sw r5,r31,$756
; lib_tortesia.ml@22:12;22:31 ::= OArrCrt lib_tortesia.ml@22:25;22:27 lib_tortesia.ml@22:28;22:31
	j @cfg_label_1567
@cfg_label_1567:
	li r5,$0
	sw r5,r31,$752
; lib_tortesia.ml@25:7;25:8
	j @cfg_label_1566
@cfg_label_1566:
	fmovi f1,$1.000000
	fst f1,r31,$748
	j @cfg_label_1565
@cfg_label_1565:
	lw r7,r31,$748
	lw r6,r31,$752
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$744
; lib_tortesia.ml@25:0;25:16 ::= OArrWrite lib_tortesia.ml@25:0;25:5 lib_tortesia.ml@25:7;25:8 lib_tortesia.ml@25:13;25:16
	j @cfg_label_1564
@cfg_label_1564:
	li r5,$1
	sw r5,r31,$740
; lib_tortesia.ml@26:7;26:8
	j @cfg_label_1563
@cfg_label_1563:
	fmovi f1,$0.500000
	fst f1,r31,$736
	j @cfg_label_1562
@cfg_label_1562:
	lw r7,r31,$736
	lw r6,r31,$740
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$732
; lib_tortesia.ml@26:0;26:16 ::= OArrWrite lib_tortesia.ml@26:0;26:5 lib_tortesia.ml@26:7;26:8 lib_tortesia.ml@26:13;26:16
	j @cfg_label_1561
@cfg_label_1561:
	li r5,$2
	sw r5,r31,$728
; lib_tortesia.ml@27:7;27:8
	j @cfg_label_1560
@cfg_label_1560:
	fmovi f1,$0.250000
	fst f1,r31,$724
	j @cfg_label_1559
@cfg_label_1559:
	lw r7,r31,$724
	lw r6,r31,$728
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$720
; lib_tortesia.ml@27:0;27:17 ::= OArrWrite lib_tortesia.ml@27:0;27:5 lib_tortesia.ml@27:7;27:8 lib_tortesia.ml@27:13;27:17
	j @cfg_label_1558
@cfg_label_1558:
	li r5,$3
	sw r5,r31,$716
; lib_tortesia.ml@28:7;28:8
	j @cfg_label_1557
@cfg_label_1557:
	fmovi f1,$0.125000
	fst f1,r31,$712
	j @cfg_label_1556
@cfg_label_1556:
	lw r7,r31,$712
	lw r6,r31,$716
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$708
; lib_tortesia.ml@28:0;28:18 ::= OArrWrite lib_tortesia.ml@28:0;28:5 lib_tortesia.ml@28:7;28:8 lib_tortesia.ml@28:13;28:18
	j @cfg_label_1555
@cfg_label_1555:
	li r5,$4
	sw r5,r31,$704
; lib_tortesia.ml@29:7;29:8
	j @cfg_label_1554
@cfg_label_1554:
	fmovi f1,$0.062500
	fst f1,r31,$700
	j @cfg_label_1553
@cfg_label_1553:
	lw r7,r31,$700
	lw r6,r31,$704
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$696
; lib_tortesia.ml@29:0;29:19 ::= OArrWrite lib_tortesia.ml@29:0;29:5 lib_tortesia.ml@29:7;29:8 lib_tortesia.ml@29:13;29:19
	j @cfg_label_1552
@cfg_label_1552:
	li r5,$5
	sw r5,r31,$692
; lib_tortesia.ml@30:7;30:8
	j @cfg_label_1551
@cfg_label_1551:
	fmovi f1,$0.031250
	fst f1,r31,$688
	j @cfg_label_1550
@cfg_label_1550:
	lw r7,r31,$688
	lw r6,r31,$692
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$684
; lib_tortesia.ml@30:0;30:20 ::= OArrWrite lib_tortesia.ml@30:0;30:5 lib_tortesia.ml@30:7;30:8 lib_tortesia.ml@30:13;30:20
	j @cfg_label_1549
@cfg_label_1549:
	li r5,$6
	sw r5,r31,$680
; lib_tortesia.ml@31:7;31:8
	j @cfg_label_1548
@cfg_label_1548:
	fmovi f1,$0.015625
	fst f1,r31,$676
	j @cfg_label_1547
@cfg_label_1547:
	lw r7,r31,$676
	lw r6,r31,$680
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$672
; lib_tortesia.ml@31:0;31:21 ::= OArrWrite lib_tortesia.ml@31:0;31:5 lib_tortesia.ml@31:7;31:8 lib_tortesia.ml@31:13;31:21
	j @cfg_label_1546
@cfg_label_1546:
	li r5,$7
	sw r5,r31,$668
; lib_tortesia.ml@32:7;32:8
	j @cfg_label_1545
@cfg_label_1545:
	fmovi f1,$0.007812
	fst f1,r31,$664
	j @cfg_label_1544
@cfg_label_1544:
	lw r7,r31,$664
	lw r6,r31,$668
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$660
; lib_tortesia.ml@32:0;32:22 ::= OArrWrite lib_tortesia.ml@32:0;32:5 lib_tortesia.ml@32:7;32:8 lib_tortesia.ml@32:13;32:22
	j @cfg_label_1543
@cfg_label_1543:
	li r5,$8
	sw r5,r31,$656
; lib_tortesia.ml@33:7;33:8
	j @cfg_label_1542
@cfg_label_1542:
	fmovi f1,$0.003906
	fst f1,r31,$652
	j @cfg_label_1541
@cfg_label_1541:
	lw r7,r31,$652
	lw r6,r31,$656
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$648
; lib_tortesia.ml@33:0;33:23 ::= OArrWrite lib_tortesia.ml@33:0;33:5 lib_tortesia.ml@33:7;33:8 lib_tortesia.ml@33:13;33:23
	j @cfg_label_1540
@cfg_label_1540:
	li r5,$9
	sw r5,r31,$644
; lib_tortesia.ml@34:7;34:8
	j @cfg_label_1539
@cfg_label_1539:
	fmovi f1,$0.001953
	fst f1,r31,$640
	j @cfg_label_1538
@cfg_label_1538:
	lw r7,r31,$640
	lw r6,r31,$644
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$636
; lib_tortesia.ml@34:0;34:24 ::= OArrWrite lib_tortesia.ml@34:0;34:5 lib_tortesia.ml@34:7;34:8 lib_tortesia.ml@34:13;34:24
	j @cfg_label_1537
@cfg_label_1537:
	li r5,$10
	sw r5,r31,$632
; lib_tortesia.ml@35:7;35:9
	j @cfg_label_1536
@cfg_label_1536:
	fmovi f1,$0.000977
	fst f1,r31,$628
	j @cfg_label_1535
@cfg_label_1535:
	lw r7,r31,$628
	lw r6,r31,$632
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$624
; lib_tortesia.ml@35:0;35:26 ::= OArrWrite lib_tortesia.ml@35:0;35:5 lib_tortesia.ml@35:7;35:9 lib_tortesia.ml@35:14;35:26
	j @cfg_label_1534
@cfg_label_1534:
	li r5,$11
	sw r5,r31,$620
; lib_tortesia.ml@36:7;36:9
	j @cfg_label_1533
@cfg_label_1533:
	fmovi f1,$0.000488
	fst f1,r31,$616
	j @cfg_label_1532
@cfg_label_1532:
	lw r7,r31,$616
	lw r6,r31,$620
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$612
; lib_tortesia.ml@36:0;36:27 ::= OArrWrite lib_tortesia.ml@36:0;36:5 lib_tortesia.ml@36:7;36:9 lib_tortesia.ml@36:14;36:27
	j @cfg_label_1531
@cfg_label_1531:
	li r5,$12
	sw r5,r31,$608
; lib_tortesia.ml@37:7;37:9
	j @cfg_label_1530
@cfg_label_1530:
	fmovi f1,$0.000244
	fst f1,r31,$604
	j @cfg_label_1529
@cfg_label_1529:
	lw r7,r31,$604
	lw r6,r31,$608
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$600
; lib_tortesia.ml@37:0;37:28 ::= OArrWrite lib_tortesia.ml@37:0;37:5 lib_tortesia.ml@37:7;37:9 lib_tortesia.ml@37:14;37:28
	j @cfg_label_1528
@cfg_label_1528:
	li r5,$13
	sw r5,r31,$596
; lib_tortesia.ml@38:7;38:9
	j @cfg_label_1527
@cfg_label_1527:
	fmovi f1,$0.000122
	fst f1,r31,$592
	j @cfg_label_1526
@cfg_label_1526:
	lw r7,r31,$592
	lw r6,r31,$596
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$588
; lib_tortesia.ml@38:0;38:29 ::= OArrWrite lib_tortesia.ml@38:0;38:5 lib_tortesia.ml@38:7;38:9 lib_tortesia.ml@38:14;38:29
	j @cfg_label_1525
@cfg_label_1525:
	li r5,$14
	sw r5,r31,$584
; lib_tortesia.ml@39:7;39:9
	j @cfg_label_1524
@cfg_label_1524:
	fmovi f1,$0.000061
	fst f1,r31,$580
	j @cfg_label_1523
@cfg_label_1523:
	lw r7,r31,$580
	lw r6,r31,$584
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$576
; lib_tortesia.ml@39:0;39:30 ::= OArrWrite lib_tortesia.ml@39:0;39:5 lib_tortesia.ml@39:7;39:9 lib_tortesia.ml@39:14;39:30
	j @cfg_label_1522
@cfg_label_1522:
	li r5,$15
	sw r5,r31,$572
; lib_tortesia.ml@40:7;40:9
	j @cfg_label_1521
@cfg_label_1521:
	fmovi f1,$0.000031
	fst f1,r31,$568
	j @cfg_label_1520
@cfg_label_1520:
	lw r7,r31,$568
	lw r6,r31,$572
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$564
; lib_tortesia.ml@40:0;40:31 ::= OArrWrite lib_tortesia.ml@40:0;40:5 lib_tortesia.ml@40:7;40:9 lib_tortesia.ml@40:14;40:31
	j @cfg_label_1519
@cfg_label_1519:
	li r5,$16
	sw r5,r31,$560
; lib_tortesia.ml@41:7;41:9
	j @cfg_label_1518
@cfg_label_1518:
	fmovi f1,$0.000015
	fst f1,r31,$556
	j @cfg_label_1517
@cfg_label_1517:
	lw r7,r31,$556
	lw r6,r31,$560
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$552
; lib_tortesia.ml@41:0;41:32 ::= OArrWrite lib_tortesia.ml@41:0;41:5 lib_tortesia.ml@41:7;41:9 lib_tortesia.ml@41:14;41:32
	j @cfg_label_1516
@cfg_label_1516:
	li r5,$17
	sw r5,r31,$548
; lib_tortesia.ml@42:7;42:9
	j @cfg_label_1515
@cfg_label_1515:
	fmovi f1,$0.000008
	fst f1,r31,$544
	j @cfg_label_1514
@cfg_label_1514:
	lw r7,r31,$544
	lw r6,r31,$548
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$540
; lib_tortesia.ml@42:0;42:33 ::= OArrWrite lib_tortesia.ml@42:0;42:5 lib_tortesia.ml@42:7;42:9 lib_tortesia.ml@42:14;42:33
	j @cfg_label_1513
@cfg_label_1513:
	li r5,$18
	sw r5,r31,$536
; lib_tortesia.ml@43:7;43:9
	j @cfg_label_1512
@cfg_label_1512:
	fmovi f1,$0.000004
	fst f1,r31,$532
	j @cfg_label_1511
@cfg_label_1511:
	lw r7,r31,$532
	lw r6,r31,$536
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$528
; lib_tortesia.ml@43:0;43:34 ::= OArrWrite lib_tortesia.ml@43:0;43:5 lib_tortesia.ml@43:7;43:9 lib_tortesia.ml@43:14;43:34
	j @cfg_label_1510
@cfg_label_1510:
	li r5,$19
	sw r5,r31,$524
; lib_tortesia.ml@44:7;44:9
	j @cfg_label_1509
@cfg_label_1509:
	fmovi f1,$0.000002
	fst f1,r31,$520
	j @cfg_label_1508
@cfg_label_1508:
	lw r7,r31,$520
	lw r6,r31,$524
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$516
; lib_tortesia.ml@44:0;44:35 ::= OArrWrite lib_tortesia.ml@44:0;44:5 lib_tortesia.ml@44:7;44:9 lib_tortesia.ml@44:14;44:35
	j @cfg_label_1507
@cfg_label_1507:
	li r5,$20
	sw r5,r31,$512
; lib_tortesia.ml@45:7;45:9
	j @cfg_label_1506
@cfg_label_1506:
	fmovi f1,$0.000001
	fst f1,r31,$508
	j @cfg_label_1505
@cfg_label_1505:
	lw r7,r31,$508
	lw r6,r31,$512
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$504
; lib_tortesia.ml@45:0;45:36 ::= OArrWrite lib_tortesia.ml@45:0;45:5 lib_tortesia.ml@45:7;45:9 lib_tortesia.ml@45:14;45:36
	j @cfg_label_1504
@cfg_label_1504:
	li r5,$21
	sw r5,r31,$500
; lib_tortesia.ml@46:7;46:9
	j @cfg_label_1503
@cfg_label_1503:
	fmovi f1,$0.000000
	fst f1,r31,$496
	j @cfg_label_1502
@cfg_label_1502:
	lw r7,r31,$496
	lw r6,r31,$500
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$492
; lib_tortesia.ml@46:0;46:37 ::= OArrWrite lib_tortesia.ml@46:0;46:5 lib_tortesia.ml@46:7;46:9 lib_tortesia.ml@46:14;46:37
	j @cfg_label_1501
@cfg_label_1501:
	li r5,$22
	sw r5,r31,$488
; lib_tortesia.ml@47:7;47:9
	j @cfg_label_1500
@cfg_label_1500:
	fmovi f1,$0.000000
	fst f1,r31,$484
	j @cfg_label_1499
@cfg_label_1499:
	lw r7,r31,$484
	lw r6,r31,$488
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$480
; lib_tortesia.ml@47:0;47:38 ::= OArrWrite lib_tortesia.ml@47:0;47:5 lib_tortesia.ml@47:7;47:9 lib_tortesia.ml@47:14;47:38
	j @cfg_label_1498
@cfg_label_1498:
	li r5,$23
	sw r5,r31,$476
; lib_tortesia.ml@48:7;48:9
	j @cfg_label_1497
@cfg_label_1497:
	fmovi f1,$0.000000
	fst f1,r31,$472
	j @cfg_label_1496
@cfg_label_1496:
	lw r7,r31,$472
	lw r6,r31,$476
	lw r5,r31,$768
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$468
; lib_tortesia.ml@48:0;48:39 ::= OArrWrite lib_tortesia.ml@48:0;48:5 lib_tortesia.ml@48:7;48:9 lib_tortesia.ml@48:14;48:39
	j @cfg_label_1495
@cfg_label_1495:
	li r5,$0
	sw r5,r31,$464
; lib_tortesia.ml@50:7;50:8
	j @cfg_label_1494
@cfg_label_1494:
	fmovi f1,$0.785398
	fst f1,r31,$460
	j @cfg_label_1493
@cfg_label_1493:
	lw r7,r31,$460
	lw r6,r31,$464
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$456
; lib_tortesia.ml@50:0;50:39 ::= OArrWrite lib_tortesia.ml@50:0;50:5 lib_tortesia.ml@50:7;50:8 lib_tortesia.ml@50:13;50:39
	j @cfg_label_1492
@cfg_label_1492:
	li r5,$1
	sw r5,r31,$452
; lib_tortesia.ml@51:7;51:8
	j @cfg_label_1491
@cfg_label_1491:
	fmovi f1,$0.463648
	fst f1,r31,$448
	j @cfg_label_1490
@cfg_label_1490:
	lw r7,r31,$448
	lw r6,r31,$452
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$444
; lib_tortesia.ml@51:0;51:39 ::= OArrWrite lib_tortesia.ml@51:0;51:5 lib_tortesia.ml@51:7;51:8 lib_tortesia.ml@51:13;51:39
	j @cfg_label_1489
@cfg_label_1489:
	li r5,$2
	sw r5,r31,$440
; lib_tortesia.ml@52:7;52:8
	j @cfg_label_1488
@cfg_label_1488:
	fmovi f1,$0.244979
	fst f1,r31,$436
	j @cfg_label_1487
@cfg_label_1487:
	lw r7,r31,$436
	lw r6,r31,$440
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$432
; lib_tortesia.ml@52:0;52:39 ::= OArrWrite lib_tortesia.ml@52:0;52:5 lib_tortesia.ml@52:7;52:8 lib_tortesia.ml@52:13;52:39
	j @cfg_label_1486
@cfg_label_1486:
	li r5,$3
	sw r5,r31,$428
; lib_tortesia.ml@53:7;53:8
	j @cfg_label_1485
@cfg_label_1485:
	fmovi f1,$0.124355
	fst f1,r31,$424
	j @cfg_label_1484
@cfg_label_1484:
	lw r7,r31,$424
	lw r6,r31,$428
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$420
; lib_tortesia.ml@53:0;53:39 ::= OArrWrite lib_tortesia.ml@53:0;53:5 lib_tortesia.ml@53:7;53:8 lib_tortesia.ml@53:13;53:39
	j @cfg_label_1483
@cfg_label_1483:
	li r5,$4
	sw r5,r31,$416
; lib_tortesia.ml@54:7;54:8
	j @cfg_label_1482
@cfg_label_1482:
	fmovi f1,$0.062419
	fst f1,r31,$412
	j @cfg_label_1481
@cfg_label_1481:
	lw r7,r31,$412
	lw r6,r31,$416
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$408
; lib_tortesia.ml@54:0;54:39 ::= OArrWrite lib_tortesia.ml@54:0;54:5 lib_tortesia.ml@54:7;54:8 lib_tortesia.ml@54:13;54:39
	j @cfg_label_1480
@cfg_label_1480:
	li r5,$5
	sw r5,r31,$404
; lib_tortesia.ml@55:7;55:8
	j @cfg_label_1479
@cfg_label_1479:
	fmovi f1,$0.031240
	fst f1,r31,$400
	j @cfg_label_1478
@cfg_label_1478:
	lw r7,r31,$400
	lw r6,r31,$404
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$396
; lib_tortesia.ml@55:0;55:39 ::= OArrWrite lib_tortesia.ml@55:0;55:5 lib_tortesia.ml@55:7;55:8 lib_tortesia.ml@55:13;55:39
	j @cfg_label_1477
@cfg_label_1477:
	li r5,$6
	sw r5,r31,$392
; lib_tortesia.ml@56:7;56:8
	j @cfg_label_1476
@cfg_label_1476:
	fmovi f1,$0.015624
	fst f1,r31,$388
	j @cfg_label_1475
@cfg_label_1475:
	lw r7,r31,$388
	lw r6,r31,$392
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$384
; lib_tortesia.ml@56:0;56:39 ::= OArrWrite lib_tortesia.ml@56:0;56:5 lib_tortesia.ml@56:7;56:8 lib_tortesia.ml@56:13;56:39
	j @cfg_label_1474
@cfg_label_1474:
	li r5,$7
	sw r5,r31,$380
; lib_tortesia.ml@57:7;57:8
	j @cfg_label_1473
@cfg_label_1473:
	fmovi f1,$0.007812
	fst f1,r31,$376
	j @cfg_label_1472
@cfg_label_1472:
	lw r7,r31,$376
	lw r6,r31,$380
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$372
; lib_tortesia.ml@57:0;57:39 ::= OArrWrite lib_tortesia.ml@57:0;57:5 lib_tortesia.ml@57:7;57:8 lib_tortesia.ml@57:13;57:39
	j @cfg_label_1471
@cfg_label_1471:
	li r5,$8
	sw r5,r31,$368
; lib_tortesia.ml@58:7;58:8
	j @cfg_label_1470
@cfg_label_1470:
	fmovi f1,$0.003906
	fst f1,r31,$364
	j @cfg_label_1469
@cfg_label_1469:
	lw r7,r31,$364
	lw r6,r31,$368
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$360
; lib_tortesia.ml@58:0;58:39 ::= OArrWrite lib_tortesia.ml@58:0;58:5 lib_tortesia.ml@58:7;58:8 lib_tortesia.ml@58:13;58:39
	j @cfg_label_1468
@cfg_label_1468:
	li r5,$9
	sw r5,r31,$356
; lib_tortesia.ml@59:7;59:8
	j @cfg_label_1467
@cfg_label_1467:
	fmovi f1,$0.001953
	fst f1,r31,$352
	j @cfg_label_1466
@cfg_label_1466:
	lw r7,r31,$352
	lw r6,r31,$356
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$348
; lib_tortesia.ml@59:0;59:39 ::= OArrWrite lib_tortesia.ml@59:0;59:5 lib_tortesia.ml@59:7;59:8 lib_tortesia.ml@59:13;59:39
	j @cfg_label_1465
@cfg_label_1465:
	li r5,$10
	sw r5,r31,$344
; lib_tortesia.ml@60:7;60:9
	j @cfg_label_1464
@cfg_label_1464:
	fmovi f1,$0.000977
	fst f1,r31,$340
	j @cfg_label_1463
@cfg_label_1463:
	lw r7,r31,$340
	lw r6,r31,$344
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$336
; lib_tortesia.ml@60:0;60:40 ::= OArrWrite lib_tortesia.ml@60:0;60:5 lib_tortesia.ml@60:7;60:9 lib_tortesia.ml@60:14;60:40
	j @cfg_label_1462
@cfg_label_1462:
	li r5,$11
	sw r5,r31,$332
; lib_tortesia.ml@61:7;61:9
	j @cfg_label_1461
@cfg_label_1461:
	fmovi f1,$0.000488
	fst f1,r31,$328
	j @cfg_label_1460
@cfg_label_1460:
	lw r7,r31,$328
	lw r6,r31,$332
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$324
; lib_tortesia.ml@61:0;61:40 ::= OArrWrite lib_tortesia.ml@61:0;61:5 lib_tortesia.ml@61:7;61:9 lib_tortesia.ml@61:14;61:40
	j @cfg_label_1459
@cfg_label_1459:
	li r5,$12
	sw r5,r31,$320
; lib_tortesia.ml@62:7;62:9
	j @cfg_label_1458
@cfg_label_1458:
	fmovi f1,$0.000244
	fst f1,r31,$316
	j @cfg_label_1457
@cfg_label_1457:
	lw r7,r31,$316
	lw r6,r31,$320
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$312
; lib_tortesia.ml@62:0;62:40 ::= OArrWrite lib_tortesia.ml@62:0;62:5 lib_tortesia.ml@62:7;62:9 lib_tortesia.ml@62:14;62:40
	j @cfg_label_1456
@cfg_label_1456:
	li r5,$13
	sw r5,r31,$308
; lib_tortesia.ml@63:7;63:9
	j @cfg_label_1455
@cfg_label_1455:
	fmovi f1,$0.000122
	fst f1,r31,$304
	j @cfg_label_1454
@cfg_label_1454:
	lw r7,r31,$304
	lw r6,r31,$308
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$300
; lib_tortesia.ml@63:0;63:40 ::= OArrWrite lib_tortesia.ml@63:0;63:5 lib_tortesia.ml@63:7;63:9 lib_tortesia.ml@63:14;63:40
	j @cfg_label_1453
@cfg_label_1453:
	li r5,$14
	sw r5,r31,$296
; lib_tortesia.ml@64:7;64:9
	j @cfg_label_1452
@cfg_label_1452:
	fmovi f1,$0.000061
	fst f1,r31,$292
	j @cfg_label_1451
@cfg_label_1451:
	lw r7,r31,$292
	lw r6,r31,$296
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$288
; lib_tortesia.ml@64:0;64:40 ::= OArrWrite lib_tortesia.ml@64:0;64:5 lib_tortesia.ml@64:7;64:9 lib_tortesia.ml@64:14;64:40
	j @cfg_label_1450
@cfg_label_1450:
	li r5,$15
	sw r5,r31,$284
; lib_tortesia.ml@65:7;65:9
	j @cfg_label_1449
@cfg_label_1449:
	fmovi f1,$0.000031
	fst f1,r31,$280
	j @cfg_label_1448
@cfg_label_1448:
	lw r7,r31,$280
	lw r6,r31,$284
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$276
; lib_tortesia.ml@65:0;65:40 ::= OArrWrite lib_tortesia.ml@65:0;65:5 lib_tortesia.ml@65:7;65:9 lib_tortesia.ml@65:14;65:40
	j @cfg_label_1447
@cfg_label_1447:
	li r5,$16
	sw r5,r31,$272
; lib_tortesia.ml@66:7;66:9
	j @cfg_label_1446
@cfg_label_1446:
	fmovi f1,$0.000015
	fst f1,r31,$268
	j @cfg_label_1445
@cfg_label_1445:
	lw r7,r31,$268
	lw r6,r31,$272
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$264
; lib_tortesia.ml@66:0;66:40 ::= OArrWrite lib_tortesia.ml@66:0;66:5 lib_tortesia.ml@66:7;66:9 lib_tortesia.ml@66:14;66:40
	j @cfg_label_1444
@cfg_label_1444:
	li r5,$17
	sw r5,r31,$260
; lib_tortesia.ml@67:7;67:9
	j @cfg_label_1443
@cfg_label_1443:
	fmovi f1,$0.000008
	fst f1,r31,$256
	j @cfg_label_1442
@cfg_label_1442:
	lw r7,r31,$256
	lw r6,r31,$260
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$252
; lib_tortesia.ml@67:0;67:40 ::= OArrWrite lib_tortesia.ml@67:0;67:5 lib_tortesia.ml@67:7;67:9 lib_tortesia.ml@67:14;67:40
	j @cfg_label_1441
@cfg_label_1441:
	li r5,$18
	sw r5,r31,$248
; lib_tortesia.ml@68:7;68:9
	j @cfg_label_1440
@cfg_label_1440:
	fmovi f1,$0.000004
	fst f1,r31,$244
	j @cfg_label_1439
@cfg_label_1439:
	lw r7,r31,$244
	lw r6,r31,$248
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$240
; lib_tortesia.ml@68:0;68:40 ::= OArrWrite lib_tortesia.ml@68:0;68:5 lib_tortesia.ml@68:7;68:9 lib_tortesia.ml@68:14;68:40
	j @cfg_label_1438
@cfg_label_1438:
	li r5,$19
	sw r5,r31,$236
; lib_tortesia.ml@69:7;69:9
	j @cfg_label_1437
@cfg_label_1437:
	fmovi f1,$0.000002
	fst f1,r31,$232
	j @cfg_label_1436
@cfg_label_1436:
	lw r7,r31,$232
	lw r6,r31,$236
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$228
; lib_tortesia.ml@69:0;69:40 ::= OArrWrite lib_tortesia.ml@69:0;69:5 lib_tortesia.ml@69:7;69:9 lib_tortesia.ml@69:14;69:40
	j @cfg_label_1435
@cfg_label_1435:
	li r5,$20
	sw r5,r31,$224
; lib_tortesia.ml@70:7;70:9
	j @cfg_label_1434
@cfg_label_1434:
	fmovi f1,$0.000001
	fst f1,r31,$220
	j @cfg_label_1433
@cfg_label_1433:
	lw r7,r31,$220
	lw r6,r31,$224
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$216
; lib_tortesia.ml@70:0;70:40 ::= OArrWrite lib_tortesia.ml@70:0;70:5 lib_tortesia.ml@70:7;70:9 lib_tortesia.ml@70:14;70:40
	j @cfg_label_1432
@cfg_label_1432:
	li r5,$21
	sw r5,r31,$212
; lib_tortesia.ml@71:7;71:9
	j @cfg_label_1431
@cfg_label_1431:
	fmovi f1,$0.000000
	fst f1,r31,$208
	j @cfg_label_1430
@cfg_label_1430:
	lw r7,r31,$208
	lw r6,r31,$212
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$204
; lib_tortesia.ml@71:0;71:40 ::= OArrWrite lib_tortesia.ml@71:0;71:5 lib_tortesia.ml@71:7;71:9 lib_tortesia.ml@71:14;71:40
	j @cfg_label_1429
@cfg_label_1429:
	li r5,$22
	sw r5,r31,$200
; lib_tortesia.ml@72:7;72:9
	j @cfg_label_1428
@cfg_label_1428:
	fmovi f1,$0.000000
	fst f1,r31,$196
	j @cfg_label_1427
@cfg_label_1427:
	lw r7,r31,$196
	lw r6,r31,$200
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$192
; lib_tortesia.ml@72:0;72:40 ::= OArrWrite lib_tortesia.ml@72:0;72:5 lib_tortesia.ml@72:7;72:9 lib_tortesia.ml@72:14;72:40
	j @cfg_label_1426
@cfg_label_1426:
	li r5,$23
	sw r5,r31,$188
; lib_tortesia.ml@73:7;73:9
	j @cfg_label_1425
@cfg_label_1425:
	fmovi f1,$0.000000
	fst f1,r31,$184
	j @cfg_label_1424
@cfg_label_1424:
	lw r7,r31,$184
	lw r6,r31,$188
	lw r5,r31,$756
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$180
; lib_tortesia.ml@73:0;73:40 ::= OArrWrite lib_tortesia.ml@73:0;73:5 lib_tortesia.ml@73:7;73:9 lib_tortesia.ml@73:14;73:40
	j @cfg_label_1423
@cfg_label_1423:
	lw r5,r31,$180
	sw r5,r31,$176
; lib_tortesia.ml@72:0;73:40 ::<= lib_tortesia.ml@73:0;73:40
	j @cfg_label_1422
@cfg_label_1422:
	lw r5,r31,$176
	sw r5,r31,$172
; lib_tortesia.ml@71:0;73:40 ::<= lib_tortesia.ml@72:0;73:40
	j @cfg_label_1421
@cfg_label_1421:
	lw r5,r31,$172
	sw r5,r31,$168
; lib_tortesia.ml@70:0;73:40 ::<= lib_tortesia.ml@71:0;73:40
	j @cfg_label_1420
@cfg_label_1420:
	lw r5,r31,$168
	sw r5,r31,$164
; lib_tortesia.ml@69:0;73:40 ::<= lib_tortesia.ml@70:0;73:40
	j @cfg_label_1419
@cfg_label_1419:
	lw r5,r31,$164
	sw r5,r31,$160
; lib_tortesia.ml@68:0;73:40 ::<= lib_tortesia.ml@69:0;73:40
	j @cfg_label_1418
@cfg_label_1418:
	lw r5,r31,$160
	sw r5,r31,$156
; lib_tortesia.ml@67:0;73:40 ::<= lib_tortesia.ml@68:0;73:40
	j @cfg_label_1417
@cfg_label_1417:
	lw r5,r31,$156
	sw r5,r31,$152
; lib_tortesia.ml@66:0;73:40 ::<= lib_tortesia.ml@67:0;73:40
	j @cfg_label_1416
@cfg_label_1416:
	lw r5,r31,$152
	sw r5,r31,$148
; lib_tortesia.ml@65:0;73:40 ::<= lib_tortesia.ml@66:0;73:40
	j @cfg_label_1415
@cfg_label_1415:
	lw r5,r31,$148
	sw r5,r31,$144
; lib_tortesia.ml@64:0;73:40 ::<= lib_tortesia.ml@65:0;73:40
	j @cfg_label_1414
@cfg_label_1414:
	lw r5,r31,$144
	sw r5,r31,$140
; lib_tortesia.ml@63:0;73:40 ::<= lib_tortesia.ml@64:0;73:40
	j @cfg_label_1413
@cfg_label_1413:
	lw r5,r31,$140
	sw r5,r31,$136
; lib_tortesia.ml@62:0;73:40 ::<= lib_tortesia.ml@63:0;73:40
	j @cfg_label_1412
@cfg_label_1412:
	lw r5,r31,$136
	sw r5,r31,$132
; lib_tortesia.ml@61:0;73:40 ::<= lib_tortesia.ml@62:0;73:40
	j @cfg_label_1411
@cfg_label_1411:
	lw r5,r31,$132
	sw r5,r31,$128
; lib_tortesia.ml@60:0;73:40 ::<= lib_tortesia.ml@61:0;73:40
	j @cfg_label_1410
@cfg_label_1410:
	lw r5,r31,$128
	sw r5,r31,$124
; lib_tortesia.ml@59:0;73:40 ::<= lib_tortesia.ml@60:0;73:40
	j @cfg_label_1409
@cfg_label_1409:
	lw r5,r31,$124
	sw r5,r31,$120
; lib_tortesia.ml@58:0;73:40 ::<= lib_tortesia.ml@59:0;73:40
	j @cfg_label_1408
@cfg_label_1408:
	lw r5,r31,$120
	sw r5,r31,$116
; lib_tortesia.ml@57:0;73:40 ::<= lib_tortesia.ml@58:0;73:40
	j @cfg_label_1407
@cfg_label_1407:
	lw r5,r31,$116
	sw r5,r31,$112
; lib_tortesia.ml@56:0;73:40 ::<= lib_tortesia.ml@57:0;73:40
	j @cfg_label_1406
@cfg_label_1406:
	lw r5,r31,$112
	sw r5,r31,$108
; lib_tortesia.ml@55:0;73:40 ::<= lib_tortesia.ml@56:0;73:40
	j @cfg_label_1405
@cfg_label_1405:
	lw r5,r31,$108
	sw r5,r31,$104
; lib_tortesia.ml@54:0;73:40 ::<= lib_tortesia.ml@55:0;73:40
	j @cfg_label_1404
@cfg_label_1404:
	lw r5,r31,$104
	sw r5,r31,$100
; lib_tortesia.ml@53:0;73:40 ::<= lib_tortesia.ml@54:0;73:40
	j @cfg_label_1403
@cfg_label_1403:
	lw r5,r31,$100
	sw r5,r31,$96
; lib_tortesia.ml@52:0;73:40 ::<= lib_tortesia.ml@53:0;73:40
	j @cfg_label_1402
@cfg_label_1402:
	lw r5,r31,$96
	sw r5,r31,$92
; lib_tortesia.ml@51:0;73:40 ::<= lib_tortesia.ml@52:0;73:40
	j @cfg_label_1401
@cfg_label_1401:
	lw r5,r31,$92
	sw r5,r31,$88
; lib_tortesia.ml@50:0;73:40 ::<= lib_tortesia.ml@51:0;73:40
	j @cfg_label_1400
@cfg_label_1400:
	lw r5,r31,$88
	sw r5,r31,$84
; lib_tortesia.ml@48:0;73:40 ::<= lib_tortesia.ml@50:0;73:40
	j @cfg_label_1399
@cfg_label_1399:
	lw r5,r31,$84
	sw r5,r31,$80
; lib_tortesia.ml@47:0;73:40 ::<= lib_tortesia.ml@48:0;73:40
	j @cfg_label_1398
@cfg_label_1398:
	lw r5,r31,$80
	sw r5,r31,$76
; lib_tortesia.ml@46:0;73:40 ::<= lib_tortesia.ml@47:0;73:40
	j @cfg_label_1397
@cfg_label_1397:
	lw r5,r31,$76
	sw r5,r31,$72
; lib_tortesia.ml@45:0;73:40 ::<= lib_tortesia.ml@46:0;73:40
	j @cfg_label_1396
@cfg_label_1396:
	lw r5,r31,$72
	sw r5,r31,$68
; lib_tortesia.ml@44:0;73:40 ::<= lib_tortesia.ml@45:0;73:40
	j @cfg_label_1395
@cfg_label_1395:
	lw r5,r31,$68
	sw r5,r31,$64
; lib_tortesia.ml@43:0;73:40 ::<= lib_tortesia.ml@44:0;73:40
	j @cfg_label_1394
@cfg_label_1394:
	lw r5,r31,$64
	sw r5,r31,$60
; lib_tortesia.ml@42:0;73:40 ::<= lib_tortesia.ml@43:0;73:40
	j @cfg_label_1393
@cfg_label_1393:
	lw r5,r31,$60
	sw r5,r31,$56
; lib_tortesia.ml@41:0;73:40 ::<= lib_tortesia.ml@42:0;73:40
	j @cfg_label_1392
@cfg_label_1392:
	lw r5,r31,$56
	sw r5,r31,$52
; lib_tortesia.ml@40:0;73:40 ::<= lib_tortesia.ml@41:0;73:40
	j @cfg_label_1391
@cfg_label_1391:
	lw r5,r31,$52
	sw r5,r31,$48
; lib_tortesia.ml@39:0;73:40 ::<= lib_tortesia.ml@40:0;73:40
	j @cfg_label_1390
@cfg_label_1390:
	lw r5,r31,$48
	sw r5,r31,$44
; lib_tortesia.ml@38:0;73:40 ::<= lib_tortesia.ml@39:0;73:40
	j @cfg_label_1389
@cfg_label_1389:
	lw r5,r31,$44
	sw r5,r31,$40
; lib_tortesia.ml@37:0;73:40 ::<= lib_tortesia.ml@38:0;73:40
	j @cfg_label_1388
@cfg_label_1388:
	lw r5,r31,$40
	sw r5,r31,$36
; lib_tortesia.ml@36:0;73:40 ::<= lib_tortesia.ml@37:0;73:40
	j @cfg_label_1387
@cfg_label_1387:
	lw r5,r31,$36
	sw r5,r31,$32
; lib_tortesia.ml@35:0;73:40 ::<= lib_tortesia.ml@36:0;73:40
	j @cfg_label_1386
@cfg_label_1386:
	lw r5,r31,$32
	sw r5,r31,$28
; lib_tortesia.ml@34:0;73:40 ::<= lib_tortesia.ml@35:0;73:40
	j @cfg_label_1385
@cfg_label_1385:
	lw r5,r31,$28
	sw r5,r31,$24
; lib_tortesia.ml@33:0;73:40 ::<= lib_tortesia.ml@34:0;73:40
	j @cfg_label_1384
@cfg_label_1384:
	lw r5,r31,$24
	sw r5,r31,$20
; lib_tortesia.ml@32:0;73:40 ::<= lib_tortesia.ml@33:0;73:40
	j @cfg_label_1383
@cfg_label_1383:
	lw r5,r31,$20
	sw r5,r31,$16
; lib_tortesia.ml@31:0;73:40 ::<= lib_tortesia.ml@32:0;73:40
	j @cfg_label_1382
@cfg_label_1382:
	li r5,$65
	sw r5,r31,$12
; print_char.ml@1:11;1:13
	j @cfg_label_1381
@cfg_label_1381:
	push r4
	lw r5,r31,$12
	push r5
	jal print_char
	sw r5,r31,$8
	addi r1,r1,$4
	pop r4
; print_char.ml@1:0;1:13 print_char.ml@1:0;1:10
	j @cfg_label_1380
@cfg_label_1380:
	li r5,$10
	sw r5,r31,$4
; print_char.ml@2:11;2:13
	j @cfg_label_1379
@cfg_label_1379:
	push r4
	lw r5,r31,$4
	push r5
	jal print_char
	sw r5,r31,$0
	addi r1,r1,$4
	pop r4
; print_char.ml@2:0;2:13 print_char.ml@2:0;2:10
	j @cfg_label_1378
@cfg_label_1378:
	lw r5,r31,$0
	sw r5,r2,$-4
; @0:-1;0:-1 ::<= print_char.ml@2:0;2:13
	li r5,$0
	hlt
	li r5,$0
	hlt
