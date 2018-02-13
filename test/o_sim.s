

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

@a_845print_int_base:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$10
	sw r5,r2,$-60
; lib_tortesia.ml@132:9;132:11
	j @cfg_label_1662
	li r5,$10
	sw r5,r2,$-60
; lib_tortesia.ml@132:9;132:11
	j @cfg_label_1662
@cfg_label_1662:
	lw r6,r2,$-60
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-56
; lib_tortesia.ml@132:5;132:11 ::= Olt lib_tortesia.ml@132:5;132:6 lib_tortesia.ml@132:9;132:11
	j @cfg_label_1661
@cfg_label_1661:
	li r5,$1
	sw r5,r2,$-52
; lib_tortesia.ml@132:5;132:11
	j @cfg_label_1660
@cfg_label_1660:
	lw r5,r2,$-56
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_1657
	j @cfg_label_1656
	j @cfg_label_1658
	j @cfg_label_1659
@cfg_label_1659:
@cfg_label_1657:
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
	j @cfg_label_1655
@cfg_label_1655:
	push r4
	lw r5,r2,$-28
	push r5
	jal @a_845print_int_base
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@133:4;133:25 lib_tortesia.ml@133:4;133:18
	j @cfg_label_1654
@cfg_label_1654:
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
	j @cfg_label_1653
@cfg_label_1653:
	lw r6,r2,$-24
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-20
; lib_tortesia.ml@134:16;134:27 ::= Osub lib_tortesia.ml@134:16;134:17 lib_tortesia.ml@134:18;134:27
	j @cfg_label_1652
@cfg_label_1652:
	li r5,$48
	sw r5,r2,$-16
; lib_tortesia.ml@134:29;134:31
	j @cfg_label_1651
@cfg_label_1651:
	lw r6,r2,$-16
	lw r5,r2,$-20
	add r5,r5,r6
	sw r5,r2,$-12
; lib_tortesia.ml@134:15;134:31 ::= Oadd lib_tortesia.ml@134:16;134:27 lib_tortesia.ml@134:29;134:31
	j @cfg_label_1650
@cfg_label_1650:
	push r4
	lw r5,r2,$-12
	push r5
	jal print_char
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@134:3;134:32 lib_tortesia.ml@134:3;134:13
	j @cfg_label_1649
@cfg_label_1649:
	lw r5,r2,$-4
	sw r5,r2,$-64
; lib_tortesia.ml@132:2;134:33 ::<= lib_tortesia.ml@134:3;134:32
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_1658:
@cfg_label_1656:
	li r5,$0
	sw r5,r2,$-48
; lib_tortesia.ml@132:21;132:22
	j @cfg_label_1648
@cfg_label_1648:
	lw r6,r2,$8
	lw r5,r2,$-48
	slt r5,r5,r6
	sw r5,r2,$-44
; lib_tortesia.ml@132:21;132:26 ::= Olt lib_tortesia.ml@132:21;132:22 lib_tortesia.ml@132:25;132:26
	j @cfg_label_1647
@cfg_label_1647:
	li r5,$1
	sw r5,r2,$-40
; lib_tortesia.ml@132:21;132:26
	j @cfg_label_1646
@cfg_label_1646:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_1643
	j @cfg_label_1642
	j @cfg_label_1644
	j @cfg_label_1645
@cfg_label_1645:
@cfg_label_1643:
	sw r3,r2,$-64
	addi r3,r3,$0
; lib_tortesia.ml@132:2;134:33
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_1644:
@cfg_label_1642:
	li r5,$48
	sw r5,r2,$-36
; lib_tortesia.ml@132:46;132:48
	j @cfg_label_1641
@cfg_label_1641:
	lw r6,r2,$-36
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-32
; lib_tortesia.ml@132:44;132:48 ::= Oadd lib_tortesia.ml@132:44;132:45 lib_tortesia.ml@132:46;132:48
	j @cfg_label_1640
@cfg_label_1640:
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
@a_818print_int:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	li r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@136:8;136:9
	j @cfg_label_1639
	li r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@136:8;136:9
	j @cfg_label_1639
@cfg_label_1639:
	lw r5,r2,$8
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_1636
	j @cfg_label_1635
	j @cfg_label_1637
	j @cfg_label_1638
@cfg_label_1638:
@cfg_label_1636:
	li r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@137:14;137:15
	j @cfg_label_1634
@cfg_label_1634:
	lw r6,r2,$-32
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-28
; lib_tortesia.ml@137:10;137:15 ::= Olt lib_tortesia.ml@137:10;137:11 lib_tortesia.ml@137:14;137:15
	j @cfg_label_1633
@cfg_label_1633:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@137:10;137:15
	j @cfg_label_1632
@cfg_label_1632:
	lw r5,r2,$-28
	lw r6,r2,$-24
	bne r5,r6,@cfg_label_1629
	j @cfg_label_1628
	j @cfg_label_1630
	j @cfg_label_1631
@cfg_label_1631:
@cfg_label_1629:
	push r4
	lw r5,r2,$8
	push r5
	jal @a_845print_int_base
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@129:1;137:79 lib_tortesia.ml@137:62;137:76
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_1630:
@cfg_label_1628:
	li r5,$45
	sw r5,r2,$-20
; lib_tortesia.ml@137:32;137:34
	j @cfg_label_1627
@cfg_label_1627:
	push r4
	lw r5,r2,$-20
	push r5
	jal print_char
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@137:21;137:34 lib_tortesia.ml@137:21;137:31
	j @cfg_label_1626
@cfg_label_1626:
	li r5,$0
	sw r5,r2,$-16
; lib_tortesia.ml@137:52;137:53
	j @cfg_label_1625
@cfg_label_1625:
	lw r6,r2,$8
	lw r5,r2,$-16
	sub r5,r5,r6
	sw r5,r2,$-12
; lib_tortesia.ml@137:52;137:55 ::= Osub lib_tortesia.ml@137:52;137:53 lib_tortesia.ml@137:54;137:55
	j @cfg_label_1624
@cfg_label_1624:
	push r4
	lw r5,r2,$-12
	push r5
	jal @a_845print_int_base
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@137:36;137:56 lib_tortesia.ml@137:36;137:50
	j @cfg_label_1623
@cfg_label_1623:
	lw r5,r2,$-4
	sw r5,r2,$-44
; lib_tortesia.ml@129:1;137:79 ::<= lib_tortesia.ml@137:36;137:56
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_1637:
@cfg_label_1635:
	li r5,$48
	sw r5,r2,$-36
; lib_tortesia.ml@136:26;136:28
	j @cfg_label_1622
@cfg_label_1622:
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
	addi r3,r3,$820
	push r2
	mov r2,r1
	subi r1,r1,$4
	li r5,$24
	sw r5,r31,$816
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_1621
	li r5,$24
	sw r5,r31,$816
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_1621
@cfg_label_1621:
	fmovi f1,$0.000000
	fst f1,r31,$812
	j @cfg_label_1620
@cfg_label_1620:
	lw r6,r31,$812
	lw r5,r31,$816
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1664
@emit_label_1663:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1663
@emit_label_1664:
	mov r5,r7
	sw r5,r31,$808
; lib_tortesia.ml@21:12;21:31 ::= OArrCrt lib_tortesia.ml@21:25;21:27 lib_tortesia.ml@21:28;21:31
	j @cfg_label_1619
@cfg_label_1619:
	li r5,$24
	sw r5,r31,$804
; lib_tortesia.ml@22:25;22:27
	j @cfg_label_1618
@cfg_label_1618:
	fmovi f1,$0.000000
	fst f1,r31,$800
	j @cfg_label_1617
@cfg_label_1617:
	lw r6,r31,$800
	lw r5,r31,$804
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1666
@emit_label_1665:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1665
@emit_label_1666:
	mov r5,r7
	sw r5,r31,$796
; lib_tortesia.ml@22:12;22:31 ::= OArrCrt lib_tortesia.ml@22:25;22:27 lib_tortesia.ml@22:28;22:31
	j @cfg_label_1616
@cfg_label_1616:
	li r5,$0
	sw r5,r31,$792
; lib_tortesia.ml@25:7;25:8
	j @cfg_label_1615
@cfg_label_1615:
	fmovi f1,$1.000000
	fst f1,r31,$788
	j @cfg_label_1614
@cfg_label_1614:
	lw r7,r31,$788
	lw r6,r31,$792
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$784
; lib_tortesia.ml@25:0;25:16 ::= OArrWrite lib_tortesia.ml@25:0;25:5 lib_tortesia.ml@25:7;25:8 lib_tortesia.ml@25:13;25:16
	j @cfg_label_1613
@cfg_label_1613:
	li r5,$1
	sw r5,r31,$780
; lib_tortesia.ml@26:7;26:8
	j @cfg_label_1612
@cfg_label_1612:
	fmovi f1,$0.500000
	fst f1,r31,$776
	j @cfg_label_1611
@cfg_label_1611:
	lw r7,r31,$776
	lw r6,r31,$780
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$772
; lib_tortesia.ml@26:0;26:16 ::= OArrWrite lib_tortesia.ml@26:0;26:5 lib_tortesia.ml@26:7;26:8 lib_tortesia.ml@26:13;26:16
	j @cfg_label_1610
@cfg_label_1610:
	li r5,$2
	sw r5,r31,$768
; lib_tortesia.ml@27:7;27:8
	j @cfg_label_1609
@cfg_label_1609:
	fmovi f1,$0.250000
	fst f1,r31,$764
	j @cfg_label_1608
@cfg_label_1608:
	lw r7,r31,$764
	lw r6,r31,$768
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$760
; lib_tortesia.ml@27:0;27:17 ::= OArrWrite lib_tortesia.ml@27:0;27:5 lib_tortesia.ml@27:7;27:8 lib_tortesia.ml@27:13;27:17
	j @cfg_label_1607
@cfg_label_1607:
	li r5,$3
	sw r5,r31,$756
; lib_tortesia.ml@28:7;28:8
	j @cfg_label_1606
@cfg_label_1606:
	fmovi f1,$0.125000
	fst f1,r31,$752
	j @cfg_label_1605
@cfg_label_1605:
	lw r7,r31,$752
	lw r6,r31,$756
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$748
; lib_tortesia.ml@28:0;28:18 ::= OArrWrite lib_tortesia.ml@28:0;28:5 lib_tortesia.ml@28:7;28:8 lib_tortesia.ml@28:13;28:18
	j @cfg_label_1604
@cfg_label_1604:
	li r5,$4
	sw r5,r31,$744
; lib_tortesia.ml@29:7;29:8
	j @cfg_label_1603
@cfg_label_1603:
	fmovi f1,$0.062500
	fst f1,r31,$740
	j @cfg_label_1602
@cfg_label_1602:
	lw r7,r31,$740
	lw r6,r31,$744
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$736
; lib_tortesia.ml@29:0;29:19 ::= OArrWrite lib_tortesia.ml@29:0;29:5 lib_tortesia.ml@29:7;29:8 lib_tortesia.ml@29:13;29:19
	j @cfg_label_1601
@cfg_label_1601:
	li r5,$5
	sw r5,r31,$732
; lib_tortesia.ml@30:7;30:8
	j @cfg_label_1600
@cfg_label_1600:
	fmovi f1,$0.031250
	fst f1,r31,$728
	j @cfg_label_1599
@cfg_label_1599:
	lw r7,r31,$728
	lw r6,r31,$732
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$724
; lib_tortesia.ml@30:0;30:20 ::= OArrWrite lib_tortesia.ml@30:0;30:5 lib_tortesia.ml@30:7;30:8 lib_tortesia.ml@30:13;30:20
	j @cfg_label_1598
@cfg_label_1598:
	li r5,$6
	sw r5,r31,$720
; lib_tortesia.ml@31:7;31:8
	j @cfg_label_1597
@cfg_label_1597:
	fmovi f1,$0.015625
	fst f1,r31,$716
	j @cfg_label_1596
@cfg_label_1596:
	lw r7,r31,$716
	lw r6,r31,$720
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$712
; lib_tortesia.ml@31:0;31:21 ::= OArrWrite lib_tortesia.ml@31:0;31:5 lib_tortesia.ml@31:7;31:8 lib_tortesia.ml@31:13;31:21
	j @cfg_label_1595
@cfg_label_1595:
	li r5,$7
	sw r5,r31,$708
; lib_tortesia.ml@32:7;32:8
	j @cfg_label_1594
@cfg_label_1594:
	fmovi f1,$0.007812
	fst f1,r31,$704
	j @cfg_label_1593
@cfg_label_1593:
	lw r7,r31,$704
	lw r6,r31,$708
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$700
; lib_tortesia.ml@32:0;32:22 ::= OArrWrite lib_tortesia.ml@32:0;32:5 lib_tortesia.ml@32:7;32:8 lib_tortesia.ml@32:13;32:22
	j @cfg_label_1592
@cfg_label_1592:
	li r5,$8
	sw r5,r31,$696
; lib_tortesia.ml@33:7;33:8
	j @cfg_label_1591
@cfg_label_1591:
	fmovi f1,$0.003906
	fst f1,r31,$692
	j @cfg_label_1590
@cfg_label_1590:
	lw r7,r31,$692
	lw r6,r31,$696
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$688
; lib_tortesia.ml@33:0;33:23 ::= OArrWrite lib_tortesia.ml@33:0;33:5 lib_tortesia.ml@33:7;33:8 lib_tortesia.ml@33:13;33:23
	j @cfg_label_1589
@cfg_label_1589:
	li r5,$9
	sw r5,r31,$684
; lib_tortesia.ml@34:7;34:8
	j @cfg_label_1588
@cfg_label_1588:
	fmovi f1,$0.001953
	fst f1,r31,$680
	j @cfg_label_1587
@cfg_label_1587:
	lw r7,r31,$680
	lw r6,r31,$684
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$676
; lib_tortesia.ml@34:0;34:24 ::= OArrWrite lib_tortesia.ml@34:0;34:5 lib_tortesia.ml@34:7;34:8 lib_tortesia.ml@34:13;34:24
	j @cfg_label_1586
@cfg_label_1586:
	li r5,$10
	sw r5,r31,$672
; lib_tortesia.ml@35:7;35:9
	j @cfg_label_1585
@cfg_label_1585:
	fmovi f1,$0.000977
	fst f1,r31,$668
	j @cfg_label_1584
@cfg_label_1584:
	lw r7,r31,$668
	lw r6,r31,$672
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$664
; lib_tortesia.ml@35:0;35:26 ::= OArrWrite lib_tortesia.ml@35:0;35:5 lib_tortesia.ml@35:7;35:9 lib_tortesia.ml@35:14;35:26
	j @cfg_label_1583
@cfg_label_1583:
	li r5,$11
	sw r5,r31,$660
; lib_tortesia.ml@36:7;36:9
	j @cfg_label_1582
@cfg_label_1582:
	fmovi f1,$0.000488
	fst f1,r31,$656
	j @cfg_label_1581
@cfg_label_1581:
	lw r7,r31,$656
	lw r6,r31,$660
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$652
; lib_tortesia.ml@36:0;36:27 ::= OArrWrite lib_tortesia.ml@36:0;36:5 lib_tortesia.ml@36:7;36:9 lib_tortesia.ml@36:14;36:27
	j @cfg_label_1580
@cfg_label_1580:
	li r5,$12
	sw r5,r31,$648
; lib_tortesia.ml@37:7;37:9
	j @cfg_label_1579
@cfg_label_1579:
	fmovi f1,$0.000244
	fst f1,r31,$644
	j @cfg_label_1578
@cfg_label_1578:
	lw r7,r31,$644
	lw r6,r31,$648
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$640
; lib_tortesia.ml@37:0;37:28 ::= OArrWrite lib_tortesia.ml@37:0;37:5 lib_tortesia.ml@37:7;37:9 lib_tortesia.ml@37:14;37:28
	j @cfg_label_1577
@cfg_label_1577:
	li r5,$13
	sw r5,r31,$636
; lib_tortesia.ml@38:7;38:9
	j @cfg_label_1576
@cfg_label_1576:
	fmovi f1,$0.000122
	fst f1,r31,$632
	j @cfg_label_1575
@cfg_label_1575:
	lw r7,r31,$632
	lw r6,r31,$636
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$628
; lib_tortesia.ml@38:0;38:29 ::= OArrWrite lib_tortesia.ml@38:0;38:5 lib_tortesia.ml@38:7;38:9 lib_tortesia.ml@38:14;38:29
	j @cfg_label_1574
@cfg_label_1574:
	li r5,$14
	sw r5,r31,$624
; lib_tortesia.ml@39:7;39:9
	j @cfg_label_1573
@cfg_label_1573:
	fmovi f1,$0.000061
	fst f1,r31,$620
	j @cfg_label_1572
@cfg_label_1572:
	lw r7,r31,$620
	lw r6,r31,$624
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$616
; lib_tortesia.ml@39:0;39:30 ::= OArrWrite lib_tortesia.ml@39:0;39:5 lib_tortesia.ml@39:7;39:9 lib_tortesia.ml@39:14;39:30
	j @cfg_label_1571
@cfg_label_1571:
	li r5,$15
	sw r5,r31,$612
; lib_tortesia.ml@40:7;40:9
	j @cfg_label_1570
@cfg_label_1570:
	fmovi f1,$0.000031
	fst f1,r31,$608
	j @cfg_label_1569
@cfg_label_1569:
	lw r7,r31,$608
	lw r6,r31,$612
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$604
; lib_tortesia.ml@40:0;40:31 ::= OArrWrite lib_tortesia.ml@40:0;40:5 lib_tortesia.ml@40:7;40:9 lib_tortesia.ml@40:14;40:31
	j @cfg_label_1568
@cfg_label_1568:
	li r5,$16
	sw r5,r31,$600
; lib_tortesia.ml@41:7;41:9
	j @cfg_label_1567
@cfg_label_1567:
	fmovi f1,$0.000015
	fst f1,r31,$596
	j @cfg_label_1566
@cfg_label_1566:
	lw r7,r31,$596
	lw r6,r31,$600
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$592
; lib_tortesia.ml@41:0;41:32 ::= OArrWrite lib_tortesia.ml@41:0;41:5 lib_tortesia.ml@41:7;41:9 lib_tortesia.ml@41:14;41:32
	j @cfg_label_1565
@cfg_label_1565:
	li r5,$17
	sw r5,r31,$588
; lib_tortesia.ml@42:7;42:9
	j @cfg_label_1564
@cfg_label_1564:
	fmovi f1,$0.000008
	fst f1,r31,$584
	j @cfg_label_1563
@cfg_label_1563:
	lw r7,r31,$584
	lw r6,r31,$588
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$580
; lib_tortesia.ml@42:0;42:33 ::= OArrWrite lib_tortesia.ml@42:0;42:5 lib_tortesia.ml@42:7;42:9 lib_tortesia.ml@42:14;42:33
	j @cfg_label_1562
@cfg_label_1562:
	li r5,$18
	sw r5,r31,$576
; lib_tortesia.ml@43:7;43:9
	j @cfg_label_1561
@cfg_label_1561:
	fmovi f1,$0.000004
	fst f1,r31,$572
	j @cfg_label_1560
@cfg_label_1560:
	lw r7,r31,$572
	lw r6,r31,$576
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$568
; lib_tortesia.ml@43:0;43:34 ::= OArrWrite lib_tortesia.ml@43:0;43:5 lib_tortesia.ml@43:7;43:9 lib_tortesia.ml@43:14;43:34
	j @cfg_label_1559
@cfg_label_1559:
	li r5,$19
	sw r5,r31,$564
; lib_tortesia.ml@44:7;44:9
	j @cfg_label_1558
@cfg_label_1558:
	fmovi f1,$0.000002
	fst f1,r31,$560
	j @cfg_label_1557
@cfg_label_1557:
	lw r7,r31,$560
	lw r6,r31,$564
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$556
; lib_tortesia.ml@44:0;44:35 ::= OArrWrite lib_tortesia.ml@44:0;44:5 lib_tortesia.ml@44:7;44:9 lib_tortesia.ml@44:14;44:35
	j @cfg_label_1556
@cfg_label_1556:
	li r5,$20
	sw r5,r31,$552
; lib_tortesia.ml@45:7;45:9
	j @cfg_label_1555
@cfg_label_1555:
	fmovi f1,$0.000001
	fst f1,r31,$548
	j @cfg_label_1554
@cfg_label_1554:
	lw r7,r31,$548
	lw r6,r31,$552
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$544
; lib_tortesia.ml@45:0;45:36 ::= OArrWrite lib_tortesia.ml@45:0;45:5 lib_tortesia.ml@45:7;45:9 lib_tortesia.ml@45:14;45:36
	j @cfg_label_1553
@cfg_label_1553:
	li r5,$21
	sw r5,r31,$540
; lib_tortesia.ml@46:7;46:9
	j @cfg_label_1552
@cfg_label_1552:
	fmovi f1,$0.000000
	fst f1,r31,$536
	j @cfg_label_1551
@cfg_label_1551:
	lw r7,r31,$536
	lw r6,r31,$540
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$532
; lib_tortesia.ml@46:0;46:37 ::= OArrWrite lib_tortesia.ml@46:0;46:5 lib_tortesia.ml@46:7;46:9 lib_tortesia.ml@46:14;46:37
	j @cfg_label_1550
@cfg_label_1550:
	li r5,$22
	sw r5,r31,$528
; lib_tortesia.ml@47:7;47:9
	j @cfg_label_1549
@cfg_label_1549:
	fmovi f1,$0.000000
	fst f1,r31,$524
	j @cfg_label_1548
@cfg_label_1548:
	lw r7,r31,$524
	lw r6,r31,$528
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$520
; lib_tortesia.ml@47:0;47:38 ::= OArrWrite lib_tortesia.ml@47:0;47:5 lib_tortesia.ml@47:7;47:9 lib_tortesia.ml@47:14;47:38
	j @cfg_label_1547
@cfg_label_1547:
	li r5,$23
	sw r5,r31,$516
; lib_tortesia.ml@48:7;48:9
	j @cfg_label_1546
@cfg_label_1546:
	fmovi f1,$0.000000
	fst f1,r31,$512
	j @cfg_label_1545
@cfg_label_1545:
	lw r7,r31,$512
	lw r6,r31,$516
	lw r5,r31,$808
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$508
; lib_tortesia.ml@48:0;48:39 ::= OArrWrite lib_tortesia.ml@48:0;48:5 lib_tortesia.ml@48:7;48:9 lib_tortesia.ml@48:14;48:39
	j @cfg_label_1544
@cfg_label_1544:
	li r5,$0
	sw r5,r31,$504
; lib_tortesia.ml@50:7;50:8
	j @cfg_label_1543
@cfg_label_1543:
	fmovi f1,$0.785398
	fst f1,r31,$500
	j @cfg_label_1542
@cfg_label_1542:
	lw r7,r31,$500
	lw r6,r31,$504
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$496
; lib_tortesia.ml@50:0;50:39 ::= OArrWrite lib_tortesia.ml@50:0;50:5 lib_tortesia.ml@50:7;50:8 lib_tortesia.ml@50:13;50:39
	j @cfg_label_1541
@cfg_label_1541:
	li r5,$1
	sw r5,r31,$492
; lib_tortesia.ml@51:7;51:8
	j @cfg_label_1540
@cfg_label_1540:
	fmovi f1,$0.463648
	fst f1,r31,$488
	j @cfg_label_1539
@cfg_label_1539:
	lw r7,r31,$488
	lw r6,r31,$492
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$484
; lib_tortesia.ml@51:0;51:39 ::= OArrWrite lib_tortesia.ml@51:0;51:5 lib_tortesia.ml@51:7;51:8 lib_tortesia.ml@51:13;51:39
	j @cfg_label_1538
@cfg_label_1538:
	li r5,$2
	sw r5,r31,$480
; lib_tortesia.ml@52:7;52:8
	j @cfg_label_1537
@cfg_label_1537:
	fmovi f1,$0.244979
	fst f1,r31,$476
	j @cfg_label_1536
@cfg_label_1536:
	lw r7,r31,$476
	lw r6,r31,$480
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$472
; lib_tortesia.ml@52:0;52:39 ::= OArrWrite lib_tortesia.ml@52:0;52:5 lib_tortesia.ml@52:7;52:8 lib_tortesia.ml@52:13;52:39
	j @cfg_label_1535
@cfg_label_1535:
	li r5,$3
	sw r5,r31,$468
; lib_tortesia.ml@53:7;53:8
	j @cfg_label_1534
@cfg_label_1534:
	fmovi f1,$0.124355
	fst f1,r31,$464
	j @cfg_label_1533
@cfg_label_1533:
	lw r7,r31,$464
	lw r6,r31,$468
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$460
; lib_tortesia.ml@53:0;53:39 ::= OArrWrite lib_tortesia.ml@53:0;53:5 lib_tortesia.ml@53:7;53:8 lib_tortesia.ml@53:13;53:39
	j @cfg_label_1532
@cfg_label_1532:
	li r5,$4
	sw r5,r31,$456
; lib_tortesia.ml@54:7;54:8
	j @cfg_label_1531
@cfg_label_1531:
	fmovi f1,$0.062419
	fst f1,r31,$452
	j @cfg_label_1530
@cfg_label_1530:
	lw r7,r31,$452
	lw r6,r31,$456
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$448
; lib_tortesia.ml@54:0;54:39 ::= OArrWrite lib_tortesia.ml@54:0;54:5 lib_tortesia.ml@54:7;54:8 lib_tortesia.ml@54:13;54:39
	j @cfg_label_1529
@cfg_label_1529:
	li r5,$5
	sw r5,r31,$444
; lib_tortesia.ml@55:7;55:8
	j @cfg_label_1528
@cfg_label_1528:
	fmovi f1,$0.031240
	fst f1,r31,$440
	j @cfg_label_1527
@cfg_label_1527:
	lw r7,r31,$440
	lw r6,r31,$444
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$436
; lib_tortesia.ml@55:0;55:39 ::= OArrWrite lib_tortesia.ml@55:0;55:5 lib_tortesia.ml@55:7;55:8 lib_tortesia.ml@55:13;55:39
	j @cfg_label_1526
@cfg_label_1526:
	li r5,$6
	sw r5,r31,$432
; lib_tortesia.ml@56:7;56:8
	j @cfg_label_1525
@cfg_label_1525:
	fmovi f1,$0.015624
	fst f1,r31,$428
	j @cfg_label_1524
@cfg_label_1524:
	lw r7,r31,$428
	lw r6,r31,$432
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$424
; lib_tortesia.ml@56:0;56:39 ::= OArrWrite lib_tortesia.ml@56:0;56:5 lib_tortesia.ml@56:7;56:8 lib_tortesia.ml@56:13;56:39
	j @cfg_label_1523
@cfg_label_1523:
	li r5,$7
	sw r5,r31,$420
; lib_tortesia.ml@57:7;57:8
	j @cfg_label_1522
@cfg_label_1522:
	fmovi f1,$0.007812
	fst f1,r31,$416
	j @cfg_label_1521
@cfg_label_1521:
	lw r7,r31,$416
	lw r6,r31,$420
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$412
; lib_tortesia.ml@57:0;57:39 ::= OArrWrite lib_tortesia.ml@57:0;57:5 lib_tortesia.ml@57:7;57:8 lib_tortesia.ml@57:13;57:39
	j @cfg_label_1520
@cfg_label_1520:
	li r5,$8
	sw r5,r31,$408
; lib_tortesia.ml@58:7;58:8
	j @cfg_label_1519
@cfg_label_1519:
	fmovi f1,$0.003906
	fst f1,r31,$404
	j @cfg_label_1518
@cfg_label_1518:
	lw r7,r31,$404
	lw r6,r31,$408
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$400
; lib_tortesia.ml@58:0;58:39 ::= OArrWrite lib_tortesia.ml@58:0;58:5 lib_tortesia.ml@58:7;58:8 lib_tortesia.ml@58:13;58:39
	j @cfg_label_1517
@cfg_label_1517:
	li r5,$9
	sw r5,r31,$396
; lib_tortesia.ml@59:7;59:8
	j @cfg_label_1516
@cfg_label_1516:
	fmovi f1,$0.001953
	fst f1,r31,$392
	j @cfg_label_1515
@cfg_label_1515:
	lw r7,r31,$392
	lw r6,r31,$396
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$388
; lib_tortesia.ml@59:0;59:39 ::= OArrWrite lib_tortesia.ml@59:0;59:5 lib_tortesia.ml@59:7;59:8 lib_tortesia.ml@59:13;59:39
	j @cfg_label_1514
@cfg_label_1514:
	li r5,$10
	sw r5,r31,$384
; lib_tortesia.ml@60:7;60:9
	j @cfg_label_1513
@cfg_label_1513:
	fmovi f1,$0.000977
	fst f1,r31,$380
	j @cfg_label_1512
@cfg_label_1512:
	lw r7,r31,$380
	lw r6,r31,$384
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$376
; lib_tortesia.ml@60:0;60:40 ::= OArrWrite lib_tortesia.ml@60:0;60:5 lib_tortesia.ml@60:7;60:9 lib_tortesia.ml@60:14;60:40
	j @cfg_label_1511
@cfg_label_1511:
	li r5,$11
	sw r5,r31,$372
; lib_tortesia.ml@61:7;61:9
	j @cfg_label_1510
@cfg_label_1510:
	fmovi f1,$0.000488
	fst f1,r31,$368
	j @cfg_label_1509
@cfg_label_1509:
	lw r7,r31,$368
	lw r6,r31,$372
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$364
; lib_tortesia.ml@61:0;61:40 ::= OArrWrite lib_tortesia.ml@61:0;61:5 lib_tortesia.ml@61:7;61:9 lib_tortesia.ml@61:14;61:40
	j @cfg_label_1508
@cfg_label_1508:
	li r5,$12
	sw r5,r31,$360
; lib_tortesia.ml@62:7;62:9
	j @cfg_label_1507
@cfg_label_1507:
	fmovi f1,$0.000244
	fst f1,r31,$356
	j @cfg_label_1506
@cfg_label_1506:
	lw r7,r31,$356
	lw r6,r31,$360
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$352
; lib_tortesia.ml@62:0;62:40 ::= OArrWrite lib_tortesia.ml@62:0;62:5 lib_tortesia.ml@62:7;62:9 lib_tortesia.ml@62:14;62:40
	j @cfg_label_1505
@cfg_label_1505:
	li r5,$13
	sw r5,r31,$348
; lib_tortesia.ml@63:7;63:9
	j @cfg_label_1504
@cfg_label_1504:
	fmovi f1,$0.000122
	fst f1,r31,$344
	j @cfg_label_1503
@cfg_label_1503:
	lw r7,r31,$344
	lw r6,r31,$348
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$340
; lib_tortesia.ml@63:0;63:40 ::= OArrWrite lib_tortesia.ml@63:0;63:5 lib_tortesia.ml@63:7;63:9 lib_tortesia.ml@63:14;63:40
	j @cfg_label_1502
@cfg_label_1502:
	li r5,$14
	sw r5,r31,$336
; lib_tortesia.ml@64:7;64:9
	j @cfg_label_1501
@cfg_label_1501:
	fmovi f1,$0.000061
	fst f1,r31,$332
	j @cfg_label_1500
@cfg_label_1500:
	lw r7,r31,$332
	lw r6,r31,$336
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$328
; lib_tortesia.ml@64:0;64:40 ::= OArrWrite lib_tortesia.ml@64:0;64:5 lib_tortesia.ml@64:7;64:9 lib_tortesia.ml@64:14;64:40
	j @cfg_label_1499
@cfg_label_1499:
	li r5,$15
	sw r5,r31,$324
; lib_tortesia.ml@65:7;65:9
	j @cfg_label_1498
@cfg_label_1498:
	fmovi f1,$0.000031
	fst f1,r31,$320
	j @cfg_label_1497
@cfg_label_1497:
	lw r7,r31,$320
	lw r6,r31,$324
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$316
; lib_tortesia.ml@65:0;65:40 ::= OArrWrite lib_tortesia.ml@65:0;65:5 lib_tortesia.ml@65:7;65:9 lib_tortesia.ml@65:14;65:40
	j @cfg_label_1496
@cfg_label_1496:
	li r5,$16
	sw r5,r31,$312
; lib_tortesia.ml@66:7;66:9
	j @cfg_label_1495
@cfg_label_1495:
	fmovi f1,$0.000015
	fst f1,r31,$308
	j @cfg_label_1494
@cfg_label_1494:
	lw r7,r31,$308
	lw r6,r31,$312
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$304
; lib_tortesia.ml@66:0;66:40 ::= OArrWrite lib_tortesia.ml@66:0;66:5 lib_tortesia.ml@66:7;66:9 lib_tortesia.ml@66:14;66:40
	j @cfg_label_1493
@cfg_label_1493:
	li r5,$17
	sw r5,r31,$300
; lib_tortesia.ml@67:7;67:9
	j @cfg_label_1492
@cfg_label_1492:
	fmovi f1,$0.000008
	fst f1,r31,$296
	j @cfg_label_1491
@cfg_label_1491:
	lw r7,r31,$296
	lw r6,r31,$300
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$292
; lib_tortesia.ml@67:0;67:40 ::= OArrWrite lib_tortesia.ml@67:0;67:5 lib_tortesia.ml@67:7;67:9 lib_tortesia.ml@67:14;67:40
	j @cfg_label_1490
@cfg_label_1490:
	li r5,$18
	sw r5,r31,$288
; lib_tortesia.ml@68:7;68:9
	j @cfg_label_1489
@cfg_label_1489:
	fmovi f1,$0.000004
	fst f1,r31,$284
	j @cfg_label_1488
@cfg_label_1488:
	lw r7,r31,$284
	lw r6,r31,$288
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$280
; lib_tortesia.ml@68:0;68:40 ::= OArrWrite lib_tortesia.ml@68:0;68:5 lib_tortesia.ml@68:7;68:9 lib_tortesia.ml@68:14;68:40
	j @cfg_label_1487
@cfg_label_1487:
	li r5,$19
	sw r5,r31,$276
; lib_tortesia.ml@69:7;69:9
	j @cfg_label_1486
@cfg_label_1486:
	fmovi f1,$0.000002
	fst f1,r31,$272
	j @cfg_label_1485
@cfg_label_1485:
	lw r7,r31,$272
	lw r6,r31,$276
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$268
; lib_tortesia.ml@69:0;69:40 ::= OArrWrite lib_tortesia.ml@69:0;69:5 lib_tortesia.ml@69:7;69:9 lib_tortesia.ml@69:14;69:40
	j @cfg_label_1484
@cfg_label_1484:
	li r5,$20
	sw r5,r31,$264
; lib_tortesia.ml@70:7;70:9
	j @cfg_label_1483
@cfg_label_1483:
	fmovi f1,$0.000001
	fst f1,r31,$260
	j @cfg_label_1482
@cfg_label_1482:
	lw r7,r31,$260
	lw r6,r31,$264
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$256
; lib_tortesia.ml@70:0;70:40 ::= OArrWrite lib_tortesia.ml@70:0;70:5 lib_tortesia.ml@70:7;70:9 lib_tortesia.ml@70:14;70:40
	j @cfg_label_1481
@cfg_label_1481:
	li r5,$21
	sw r5,r31,$252
; lib_tortesia.ml@71:7;71:9
	j @cfg_label_1480
@cfg_label_1480:
	fmovi f1,$0.000000
	fst f1,r31,$248
	j @cfg_label_1479
@cfg_label_1479:
	lw r7,r31,$248
	lw r6,r31,$252
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$244
; lib_tortesia.ml@71:0;71:40 ::= OArrWrite lib_tortesia.ml@71:0;71:5 lib_tortesia.ml@71:7;71:9 lib_tortesia.ml@71:14;71:40
	j @cfg_label_1478
@cfg_label_1478:
	li r5,$22
	sw r5,r31,$240
; lib_tortesia.ml@72:7;72:9
	j @cfg_label_1477
@cfg_label_1477:
	fmovi f1,$0.000000
	fst f1,r31,$236
	j @cfg_label_1476
@cfg_label_1476:
	lw r7,r31,$236
	lw r6,r31,$240
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$232
; lib_tortesia.ml@72:0;72:40 ::= OArrWrite lib_tortesia.ml@72:0;72:5 lib_tortesia.ml@72:7;72:9 lib_tortesia.ml@72:14;72:40
	j @cfg_label_1475
@cfg_label_1475:
	li r5,$23
	sw r5,r31,$228
; lib_tortesia.ml@73:7;73:9
	j @cfg_label_1474
@cfg_label_1474:
	fmovi f1,$0.000000
	fst f1,r31,$224
	j @cfg_label_1473
@cfg_label_1473:
	lw r7,r31,$224
	lw r6,r31,$228
	lw r5,r31,$796
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$220
; lib_tortesia.ml@73:0;73:40 ::= OArrWrite lib_tortesia.ml@73:0;73:5 lib_tortesia.ml@73:7;73:9 lib_tortesia.ml@73:14;73:40
	j @cfg_label_1472
@cfg_label_1472:
	lw r5,r31,$220
	sw r5,r31,$216
; lib_tortesia.ml@72:0;73:40 ::<= lib_tortesia.ml@73:0;73:40
	j @cfg_label_1471
@cfg_label_1471:
	lw r5,r31,$216
	sw r5,r31,$212
; lib_tortesia.ml@71:0;73:40 ::<= lib_tortesia.ml@72:0;73:40
	j @cfg_label_1470
@cfg_label_1470:
	lw r5,r31,$212
	sw r5,r31,$208
; lib_tortesia.ml@70:0;73:40 ::<= lib_tortesia.ml@71:0;73:40
	j @cfg_label_1469
@cfg_label_1469:
	lw r5,r31,$208
	sw r5,r31,$204
; lib_tortesia.ml@69:0;73:40 ::<= lib_tortesia.ml@70:0;73:40
	j @cfg_label_1468
@cfg_label_1468:
	lw r5,r31,$204
	sw r5,r31,$200
; lib_tortesia.ml@68:0;73:40 ::<= lib_tortesia.ml@69:0;73:40
	j @cfg_label_1467
@cfg_label_1467:
	lw r5,r31,$200
	sw r5,r31,$196
; lib_tortesia.ml@67:0;73:40 ::<= lib_tortesia.ml@68:0;73:40
	j @cfg_label_1466
@cfg_label_1466:
	lw r5,r31,$196
	sw r5,r31,$192
; lib_tortesia.ml@66:0;73:40 ::<= lib_tortesia.ml@67:0;73:40
	j @cfg_label_1465
@cfg_label_1465:
	lw r5,r31,$192
	sw r5,r31,$188
; lib_tortesia.ml@65:0;73:40 ::<= lib_tortesia.ml@66:0;73:40
	j @cfg_label_1464
@cfg_label_1464:
	lw r5,r31,$188
	sw r5,r31,$184
; lib_tortesia.ml@64:0;73:40 ::<= lib_tortesia.ml@65:0;73:40
	j @cfg_label_1463
@cfg_label_1463:
	lw r5,r31,$184
	sw r5,r31,$180
; lib_tortesia.ml@63:0;73:40 ::<= lib_tortesia.ml@64:0;73:40
	j @cfg_label_1462
@cfg_label_1462:
	lw r5,r31,$180
	sw r5,r31,$176
; lib_tortesia.ml@62:0;73:40 ::<= lib_tortesia.ml@63:0;73:40
	j @cfg_label_1461
@cfg_label_1461:
	lw r5,r31,$176
	sw r5,r31,$172
; lib_tortesia.ml@61:0;73:40 ::<= lib_tortesia.ml@62:0;73:40
	j @cfg_label_1460
@cfg_label_1460:
	lw r5,r31,$172
	sw r5,r31,$168
; lib_tortesia.ml@60:0;73:40 ::<= lib_tortesia.ml@61:0;73:40
	j @cfg_label_1459
@cfg_label_1459:
	lw r5,r31,$168
	sw r5,r31,$164
; lib_tortesia.ml@59:0;73:40 ::<= lib_tortesia.ml@60:0;73:40
	j @cfg_label_1458
@cfg_label_1458:
	lw r5,r31,$164
	sw r5,r31,$160
; lib_tortesia.ml@58:0;73:40 ::<= lib_tortesia.ml@59:0;73:40
	j @cfg_label_1457
@cfg_label_1457:
	lw r5,r31,$160
	sw r5,r31,$156
; lib_tortesia.ml@57:0;73:40 ::<= lib_tortesia.ml@58:0;73:40
	j @cfg_label_1456
@cfg_label_1456:
	lw r5,r31,$156
	sw r5,r31,$152
; lib_tortesia.ml@56:0;73:40 ::<= lib_tortesia.ml@57:0;73:40
	j @cfg_label_1455
@cfg_label_1455:
	lw r5,r31,$152
	sw r5,r31,$148
; lib_tortesia.ml@55:0;73:40 ::<= lib_tortesia.ml@56:0;73:40
	j @cfg_label_1454
@cfg_label_1454:
	lw r5,r31,$148
	sw r5,r31,$144
; lib_tortesia.ml@54:0;73:40 ::<= lib_tortesia.ml@55:0;73:40
	j @cfg_label_1453
@cfg_label_1453:
	lw r5,r31,$144
	sw r5,r31,$140
; lib_tortesia.ml@53:0;73:40 ::<= lib_tortesia.ml@54:0;73:40
	j @cfg_label_1452
@cfg_label_1452:
	lw r5,r31,$140
	sw r5,r31,$136
; lib_tortesia.ml@52:0;73:40 ::<= lib_tortesia.ml@53:0;73:40
	j @cfg_label_1451
@cfg_label_1451:
	lw r5,r31,$136
	sw r5,r31,$132
; lib_tortesia.ml@51:0;73:40 ::<= lib_tortesia.ml@52:0;73:40
	j @cfg_label_1450
@cfg_label_1450:
	lw r5,r31,$132
	sw r5,r31,$128
; lib_tortesia.ml@50:0;73:40 ::<= lib_tortesia.ml@51:0;73:40
	j @cfg_label_1449
@cfg_label_1449:
	lw r5,r31,$128
	sw r5,r31,$124
; lib_tortesia.ml@48:0;73:40 ::<= lib_tortesia.ml@50:0;73:40
	j @cfg_label_1448
@cfg_label_1448:
	lw r5,r31,$124
	sw r5,r31,$120
; lib_tortesia.ml@47:0;73:40 ::<= lib_tortesia.ml@48:0;73:40
	j @cfg_label_1447
@cfg_label_1447:
	lw r5,r31,$120
	sw r5,r31,$116
; lib_tortesia.ml@46:0;73:40 ::<= lib_tortesia.ml@47:0;73:40
	j @cfg_label_1446
@cfg_label_1446:
	lw r5,r31,$116
	sw r5,r31,$112
; lib_tortesia.ml@45:0;73:40 ::<= lib_tortesia.ml@46:0;73:40
	j @cfg_label_1445
@cfg_label_1445:
	lw r5,r31,$112
	sw r5,r31,$108
; lib_tortesia.ml@44:0;73:40 ::<= lib_tortesia.ml@45:0;73:40
	j @cfg_label_1444
@cfg_label_1444:
	lw r5,r31,$108
	sw r5,r31,$104
; lib_tortesia.ml@43:0;73:40 ::<= lib_tortesia.ml@44:0;73:40
	j @cfg_label_1443
@cfg_label_1443:
	lw r5,r31,$104
	sw r5,r31,$100
; lib_tortesia.ml@42:0;73:40 ::<= lib_tortesia.ml@43:0;73:40
	j @cfg_label_1442
@cfg_label_1442:
	lw r5,r31,$100
	sw r5,r31,$96
; lib_tortesia.ml@41:0;73:40 ::<= lib_tortesia.ml@42:0;73:40
	j @cfg_label_1441
@cfg_label_1441:
	lw r5,r31,$96
	sw r5,r31,$92
; lib_tortesia.ml@40:0;73:40 ::<= lib_tortesia.ml@41:0;73:40
	j @cfg_label_1440
@cfg_label_1440:
	lw r5,r31,$92
	sw r5,r31,$88
; lib_tortesia.ml@39:0;73:40 ::<= lib_tortesia.ml@40:0;73:40
	j @cfg_label_1439
@cfg_label_1439:
	lw r5,r31,$88
	sw r5,r31,$84
; lib_tortesia.ml@38:0;73:40 ::<= lib_tortesia.ml@39:0;73:40
	j @cfg_label_1438
@cfg_label_1438:
	lw r5,r31,$84
	sw r5,r31,$80
; lib_tortesia.ml@37:0;73:40 ::<= lib_tortesia.ml@38:0;73:40
	j @cfg_label_1437
@cfg_label_1437:
	lw r5,r31,$80
	sw r5,r31,$76
; lib_tortesia.ml@36:0;73:40 ::<= lib_tortesia.ml@37:0;73:40
	j @cfg_label_1436
@cfg_label_1436:
	lw r5,r31,$76
	sw r5,r31,$72
; lib_tortesia.ml@35:0;73:40 ::<= lib_tortesia.ml@36:0;73:40
	j @cfg_label_1435
@cfg_label_1435:
	lw r5,r31,$72
	sw r5,r31,$68
; lib_tortesia.ml@34:0;73:40 ::<= lib_tortesia.ml@35:0;73:40
	j @cfg_label_1434
@cfg_label_1434:
	lw r5,r31,$68
	sw r5,r31,$64
; lib_tortesia.ml@33:0;73:40 ::<= lib_tortesia.ml@34:0;73:40
	j @cfg_label_1433
@cfg_label_1433:
	lw r5,r31,$64
	sw r5,r31,$60
; lib_tortesia.ml@32:0;73:40 ::<= lib_tortesia.ml@33:0;73:40
	j @cfg_label_1432
@cfg_label_1432:
	lw r5,r31,$60
	sw r5,r31,$56
; lib_tortesia.ml@31:0;73:40 ::<= lib_tortesia.ml@32:0;73:40
	j @cfg_label_1431
@cfg_label_1431:
	fmovi f1,$31.400000
	fst f1,r31,$52
	j @cfg_label_1430
@cfg_label_1430:
	fmovi f1,$15.900000
	fst f1,r31,$48
	j @cfg_label_1429
@cfg_label_1429:
	li r5,$26
	sw r5,r31,$44
; ftoi_itof.ml@1:55;1:57
	j @cfg_label_1428
@cfg_label_1428:
	push r4
	lw r5,r31,$44
	push r5
	jal float_of_int
	sw r5,r31,$40
	addi r1,r1,$4
	pop r4
; ftoi_itof.ml@1:42;1:57 ftoi_itof.ml@1:42;1:54
	j @cfg_label_1427
@cfg_label_1427:
	fld f1,r31,$48
	fld f2,r31,$40
	fdiv f1,f1,f2
	fst f1,r31,$36
; ftoi_itof.ml@1:33;1:58 ::= Ofdiv ftoi_itof.ml@1:33;1:37 ftoi_itof.ml@1:42;1:57
	j @cfg_label_1426
@cfg_label_1426:
	fld f1,r31,$52
	fld f2,r31,$36
	fadd f1,f1,f2
	fst f1,r31,$32
; ftoi_itof.ml@1:25;1:58 ::= Ofadd ftoi_itof.ml@1:25;1:29 ftoi_itof.ml@1:33;1:58
	j @cfg_label_1425
@cfg_label_1425:
	push r4
	lw r5,r31,$32
	push r5
	jal int_of_float
	sw r5,r31,$28
	addi r1,r1,$4
	pop r4
; ftoi_itof.ml@1:11;1:59 ftoi_itof.ml@1:11;1:23
	j @cfg_label_1424
@cfg_label_1424:
	push r4
	lw r5,r31,$28
	push r5
	jal @a_818print_int
	sw r5,r31,$24
	addi r1,r1,$4
	pop r4
; ftoi_itof.ml@1:0;1:60 ftoi_itof.ml@1:0;1:9
	j @cfg_label_1423
@cfg_label_1423:
	fmovi f1,$49.600000
	fst f1,r31,$20
	j @cfg_label_1422
@cfg_label_1422:
	push r4
	lw r5,r31,$20
	push r5
	jal int_of_float
	sw r5,r31,$16
	addi r1,r1,$4
	pop r4
; ftoi_itof.ml@2:11;2:37 ftoi_itof.ml@2:11;2:23
	j @cfg_label_1421
@cfg_label_1421:
	push r4
	lw r5,r31,$16
	push r5
	jal @a_818print_int
	sw r5,r31,$12
	addi r1,r1,$4
	pop r4
; ftoi_itof.ml@2:0;2:38 ftoi_itof.ml@2:0;2:9
	j @cfg_label_1420
@cfg_label_1420:
	li r5,$10
	sw r5,r31,$8
; ftoi_itof.ml@3:11;3:13
	j @cfg_label_1419
@cfg_label_1419:
	push r4
	lw r5,r31,$8
	push r5
	jal print_char
	sw r5,r31,$4
	addi r1,r1,$4
	pop r4
; ftoi_itof.ml@3:0;3:13 ftoi_itof.ml@3:0;3:10
	j @cfg_label_1418
@cfg_label_1418:
	lw r5,r31,$4
	sw r5,r31,$0
; ftoi_itof.ml@2:0;3:13 ::<= ftoi_itof.ml@3:0;3:13
	j @cfg_label_1417
@cfg_label_1417:
	lw r5,r31,$0
	sw r5,r2,$-4
; @0:-1;0:-1 ::<= ftoi_itof.ml@2:0;3:13
	li r5,$0
	hlt
	li r5,$0
	hlt
