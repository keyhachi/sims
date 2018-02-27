
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


@a_917f:
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
@cfg_label_1917:
@cfg_label_1916:
@cfg_label_1915:
@cfg_label_1914:
@cfg_label_1866:
	addi r14,r10,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@109:2;111:42
	slt r5,r14,r11
	bne r0,r5,@cfg_label_1910
	j @cfg_label_1909
	j @cfg_label_1911
	j @cfg_label_1912
@cfg_label_1911:
@cfg_label_1909:
	mov r5,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1912:
@cfg_label_1910:
	add r15,r10,r11
;lib_sinint.ml@110:11;110:14::=Oaddlib_sinint.ml@109:2;111:42lib_sinint.ml@109:2;111:42
	slti r6,r15,$0
	add r13,r15,r6
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
	mov r15,r6
;lib_sinint.ml@111:5;111:11::=Oimul[10]lib_sinint.ml@110:10;110:19
	slt r5,r12,r15
	bne r0,r5,@cfg_label_1903
	j @cfg_label_1902
	j @cfg_label_1904
@cfg_label_1903:
	slt r5,r14,r13
	bne r0,r5,@cfg_label_1899
	j @cfg_label_1898
	j @cfg_label_1900
	j @cfg_label_1901
@cfg_label_1900:
@cfg_label_1898:
	mov r5,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1901:
@cfg_label_1899:
	add r14,r10,r13
;lib_sinint.ml@110:11;110:14::=Oaddlib_sinint.ml@109:2;111:42lib_sinint.ml@110:10;110:19
	slti r6,r14,$0
	add r11,r14,r6
	sra r11,r11,$1
;lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r11
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r11
	sll r6,r6,$1
	mov r14,r6
;lib_sinint.ml@111:5;111:11::=Oimul[10]lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_1892
	j @cfg_label_1891
	j @cfg_label_1893
	j @cfg_label_1894
@cfg_label_1893:
@cfg_label_1891:
	mov r14,r11
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r15,r13
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r13,r12
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r10,r14
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r11,r15
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r12,r13
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	j @cfg_label_1866
	j @cfg_label_1915
@cfg_label_1894:
@cfg_label_1892:
	mov r14,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r13,r11
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r15,r12
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r10,r14
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r11,r13
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r12,r15
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	j @cfg_label_1866
	j @cfg_label_1914
@cfg_label_1904:
@cfg_label_1902:
	addi r10,r13,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@110:10;110:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_1881
	j @cfg_label_1880
	j @cfg_label_1882
	j @cfg_label_1883
@cfg_label_1882:
@cfg_label_1880:
	mov r5,r13
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1883:
@cfg_label_1881:
	add r14,r13,r11
;lib_sinint.ml@110:11;110:14::=Oaddlib_sinint.ml@110:10;110:19lib_sinint.ml@109:2;111:42
	slti r6,r14,$0
	add r10,r14,r6
	sra r10,r10,$1
;lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r10
	sll r6,r6,$1
	mov r14,r6
;lib_sinint.ml@111:5;111:11::=Oimul[10]lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_1874
	j @cfg_label_1873
	j @cfg_label_1875
	j @cfg_label_1876
@cfg_label_1875:
@cfg_label_1873:
	mov r13,r10
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r14,r11
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r15,r12
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r10,r13
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r11,r14
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r12,r15
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	j @cfg_label_1866
	j @cfg_label_1917
@cfg_label_1876:
@cfg_label_1874:
	mov r11,r13
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r13,r10
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	mov r14,r12
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r10,r11
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r11,r13
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	mov r12,r14
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	j @cfg_label_1866
	j @cfg_label_1916
@a_845divten:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$4
	sw r22,r1,$0
	subi r1,r1,$4
	sw r21,r1,$0
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r8,r10
@cfg_label_1825:
	li r10,$0
;lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_1862
	j @cfg_label_1861
	j @cfg_label_1863
	j @cfg_label_1864
@cfg_label_1863:
@cfg_label_1861:
	li r22,$0
;lib_sinint.ml@108:1;115:25
	mov r5,r22
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	lw r21,r1,$0
	addi r1,r1,$4
	lw r22,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1864:
@cfg_label_1862:
	li r10,$0
;lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1857
	j @cfg_label_1856
	j @cfg_label_1858
@cfg_label_1857:
	li r9,$0
;lib_sinint.ml@115:12;115:13
	sub r20,r0,r8
;lib_sinint.ml@115:15;115:17::=Ominuslib_sinint.ml@108:1;115:25
	addi r10,r9,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@115:12;115:13
	slt r5,r10,r20
	bne r0,r5,@cfg_label_1847
	j @cfg_label_1846
	j @cfg_label_1848
	j @cfg_label_1849
@cfg_label_1848:
@cfg_label_1846:
	mov r21,r9
;lib_sinint.ml@115:12;115:13::<=lib_sinint.ml@115:10;115:23
	j @cfg_label_1850
@cfg_label_1849:
@cfg_label_1847:
	addi r10,r20,$0
;lib_sinint.ml@110:11;110:14::=Oiadd[0]lib_sinint.ml@115:15;115:17
	slti r6,r10,$0
	add r8,r10,r6
	sra r8,r8,$1
;lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	mov r10,r6
;lib_sinint.ml@111:5;111:11::=Oimul[10]lib_sinint.ml@110:10;110:19
	slt r5,r20,r10
	bne r0,r5,@cfg_label_1840
	j @cfg_label_1839
	j @cfg_label_1841
	j @cfg_label_1842
@cfg_label_1841:
@cfg_label_1839:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r8
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r11,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	mov r12,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	jal @a_917f
	mov r21,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@115:10;115:23lib_sinint.ml@111:22;111:23
	j @cfg_label_1851
@cfg_label_1842:
@cfg_label_1840:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r9
;lib_sinint.ml@115:12;115:13::<=lib_sinint.ml@115:12;115:13
	mov r11,r8
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r12,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	jal @a_917f
	mov r21,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@115:10;115:23lib_sinint.ml@111:22;111:23
@cfg_label_1851:
@cfg_label_1850:
	sub r22,r0,r21
;lib_sinint.ml@108:1;115:25::=Ominuslib_sinint.ml@115:10;115:23
	mov r5,r22
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	lw r21,r1,$0
	addi r1,r1,$4
	lw r22,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1858:
@cfg_label_1856:
	li r9,$0
;lib_sinint.ml@114:19;114:20
	addi r10,r9,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@114:19;114:20
	slt r5,r10,r8
	bne r0,r5,@cfg_label_1834
	j @cfg_label_1833
	j @cfg_label_1835
	j @cfg_label_1836
@cfg_label_1835:
@cfg_label_1833:
	mov r22,r9
;lib_sinint.ml@114:19;114:20::<=lib_sinint.ml@108:1;115:25
	mov r5,r22
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	lw r21,r1,$0
	addi r1,r1,$4
	lw r22,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1836:
@cfg_label_1834:
	addi r10,r8,$0
;lib_sinint.ml@110:11;110:14::=Oiadd[0]lib_sinint.ml@108:1;115:25
	slti r6,r10,$0
	add r20,r10,r6
	sra r20,r20,$1
;lib_sinint.ml@110:10;110:19::=Oibydiv[2]lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	mov r10,r6
;lib_sinint.ml@111:5;111:11::=Oimul[10]lib_sinint.ml@110:10;110:19
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1827
	j @cfg_label_1826
	j @cfg_label_1828
	j @cfg_label_1829
@cfg_label_1828:
@cfg_label_1826:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r11,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	mov r12,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	jal @a_917f
	mov r22,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@108:1;115:25lib_sinint.ml@111:22;111:23
	mov r5,r22
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	lw r21,r1,$0
	addi r1,r1,$4
	lw r22,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1829:
@cfg_label_1827:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r9
;lib_sinint.ml@114:19;114:20::<=lib_sinint.ml@114:19;114:20
	mov r11,r20
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r12,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	jal @a_917f
	mov r22,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@108:1;115:25lib_sinint.ml@111:22;111:23
	mov r5,r22
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	lw r21,r1,$0
	addi r1,r1,$4
	lw r22,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_870print_int_base:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$4
	sw r21,r1,$0
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r8,r10
@cfg_label_1790:
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1821
	j @cfg_label_1820
	j @cfg_label_1822
@cfg_label_1821:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_1816
	j @cfg_label_1815
	j @cfg_label_1817
	j @cfg_label_1818
@cfg_label_1817:
@cfg_label_1815:
;lib_sinint.ml@121:2;124:29
	mov r5,r20
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	lw r21,r1,$0
	addi r1,r1,$4
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1818:
@cfg_label_1816:
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
	lw r21,r1,$0
	addi r1,r1,$4
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1822:
@cfg_label_1820:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@121:2;124:29::<=lib_sinint.ml@121:2;124:29
	jal @a_845divten
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@122:13;122:21lib_sinint.ml@122:13;122:19
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_1803
	j @cfg_label_1802
	j @cfg_label_1804
@cfg_label_1803:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r9
	bne r0,r5,@cfg_label_1798
	j @cfg_label_1797
	j @cfg_label_1799
	j @cfg_label_1800
@cfg_label_1799:
@cfg_label_1797:
;lib_sinint.ml@123:4;123:21
	j @cfg_label_1810
@cfg_label_1800:
@cfg_label_1798:
	addi r20,r9,$48
;lib_sinint.ml@121:44;121:48::=Oiadd[48]lib_sinint.ml@122:13;122:21
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib_sinint.ml@121:44;121:48::<=lib_sinint.ml@121:44;121:48
	jal print_char
	mov r21,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@123:4;123:21lib_sinint.ml@124:3;124:13
	j @cfg_label_1811
@cfg_label_1804:
@cfg_label_1802:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@122:13;122:21::<=lib_sinint.ml@122:13;122:21
	jal @a_845divten
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@122:13;122:21lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib_sinint.ml@122:13;122:21::<=lib_sinint.ml@122:13;122:21
	jal @a_870print_int_base
	mov r21,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@123:4;123:21lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r20
	sll r6,r6,$1
	mov r10,r6
;lib_sinint.ml@124:18;124:23::=Oimul[10]lib_sinint.ml@122:13;122:21
	sub r11,r9,r10
;lib_sinint.ml@124:16;124:23::=Osublib_sinint.ml@122:13;122:21lib_sinint.ml@124:18;124:23
	addi r20,r11,$48
;lib_sinint.ml@124:15;124:27::=Oiadd[48]lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib_sinint.ml@124:15;124:27::<=lib_sinint.ml@124:15;124:27
	jal print_char
	mov r21,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@123:4;123:21lib_sinint.ml@124:3;124:13
	j @cfg_label_1809
@cfg_label_1811:
@cfg_label_1810:
@cfg_label_1809:
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
	lw r21,r1,$0
	addi r1,r1,$4
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_847print_int:
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
@cfg_label_1742:
	li r10,$0
;lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_1786
	j @cfg_label_1785
	j @cfg_label_1787
@cfg_label_1786:
	li r10,$0
;lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1781
	j @cfg_label_1780
	j @cfg_label_1782
@cfg_label_1781:
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
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_1772
	j @cfg_label_1771
	j @cfg_label_1773
@cfg_label_1772:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r9
	bne r0,r5,@cfg_label_1767
	j @cfg_label_1766
	j @cfg_label_1768
	j @cfg_label_1769
@cfg_label_1768:
@cfg_label_1766:
;lib_sinint.ml@118:1;127:79
	mov r5,r8
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
@cfg_label_1769:
@cfg_label_1767:
	addi r20,r9,$48
;lib_sinint.ml@121:44;121:48::=Oiadd[48]lib_sinint.ml@127:52;127:55
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib_sinint.ml@121:44;121:48::<=lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@126:15;126:25
	mov r5,r8
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
@cfg_label_1773:
@cfg_label_1771:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@127:52;127:55::<=lib_sinint.ml@127:52;127:55
	jal @a_845divten
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@122:13;122:21lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@122:13;122:21::<=lib_sinint.ml@122:13;122:21
	jal @a_870print_int_base
	mov r20,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@123:4;123:21lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r8
	sll r6,r6,$1
	mov r10,r6
;lib_sinint.ml@124:18;124:23::=Oimul[10]lib_sinint.ml@122:13;122:21
	sub r11,r9,r10
;lib_sinint.ml@124:16;124:23::=Osublib_sinint.ml@127:52;127:55lib_sinint.ml@124:18;124:23
	addi r9,r11,$48
;lib_sinint.ml@124:15;124:27::=Oiadd[48]lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@124:15;124:27::<=lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@126:15;126:25
	mov r5,r8
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
@cfg_label_1782:
@cfg_label_1780:
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1756
	j @cfg_label_1755
	j @cfg_label_1757
@cfg_label_1756:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_1751
	j @cfg_label_1750
	j @cfg_label_1752
	j @cfg_label_1753
@cfg_label_1752:
@cfg_label_1750:
;lib_sinint.ml@118:1;127:79
	mov r5,r8
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
@cfg_label_1753:
@cfg_label_1751:
	addi r9,r8,$48
;lib_sinint.ml@121:44;121:48::=Oiadd[48]lib_sinint.ml@118:1;127:79
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@121:44;121:48::<=lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@126:15;126:25
	mov r5,r8
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
@cfg_label_1757:
@cfg_label_1755:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@118:1;127:79::<=lib_sinint.ml@118:1;127:79
	jal @a_845divten
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
	jal @a_870print_int_base
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
;lib_sinint.ml@124:16;124:23::=Osublib_sinint.ml@118:1;127:79lib_sinint.ml@124:18;124:23
	addi r9,r11,$48
;lib_sinint.ml@124:15;124:27::=Oiadd[48]lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@124:15;124:27::<=lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@126:15;126:25
	mov r5,r8
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
@cfg_label_1787:
@cfg_label_1785:
	li r9,$48
;lib_sinint.ml@126:26;126:28
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@126:26;126:28::<=lib_sinint.ml@126:26;126:28
	jal print_char
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@118:1;127:79lib_sinint.ml@126:15;126:25
	mov r5,r8
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
@a_849f:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$36
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	subi r1,r1,$4
	fst f6,r1,$0
	subi r1,r1,$4
	fst f4,r1,$0
	fmov f6,f10
@cfg_label_1741:
@cfg_label_1701:
	fmovi f10,$10.00000000000000000000
;./test/floor_check.ml@2:8;2:12
	flt f10,f6
	bft @cfg_label_1737
	j @cfg_label_1736
	j @cfg_label_1738
@cfg_label_1737:
;./test/floor_check.ml@2:1;4:14
	fld f4,r1,$0
	addi r1,r1,$4
	fld f6,r1,$0
	addi r1,r1,$4
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1738:
@cfg_label_1736:
	fmovi f10,$0.00000000000000000000
;lib_tortesia.ml@11:53;11:56
	flt f6,f10
	bft @cfg_label_1704
	j @cfg_label_1703
	j @cfg_label_1705
	j @cfg_label_1706
@cfg_label_1705:
@cfg_label_1703:
	fmov f4,f6
;./test/floor_check.ml@2:1;4:14::<=lib_tortesia.ml@11:46;11:79
	j @cfg_label_1733
@cfg_label_1706:
@cfg_label_1704:
	fmovi f10,$1.00000000000000000000
;lib_tortesia.ml@11:68;11:71
	fsub f4,f6,f10
;lib_tortesia.ml@11:46;11:79::=Ofsub./test/floor_check.ml@2:1;4:14lib_tortesia.ml@11:68;11:71
@cfg_label_1733:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;lib_tortesia.ml@11:46;11:79::<=lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_tortesia.ml@11:32;11:80lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_tortesia.ml@11:32;11:80::<=lib_tortesia.ml@11:32;11:80
	jal float_of_int
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:26;3:33lib_tortesia.ml@11:18;11:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f4
;./test/floor_check.ml@3:26;3:33::<=./test/floor_check.ml@3:26;3:33
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:12;3:34lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;./test/floor_check.ml@3:12;3:34::<=./test/floor_check.ml@3:12;3:34
	jal @a_847print_int
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:1;3:35./test/floor_check.ml@3:1;3:10
	fmovi f10,$0.10000000000000000555
;./test/floor_check.ml@4:9;4:12
	fadd f4,f6,f10
;./test/floor_check.ml@4:4;4:12::=Ofadd./test/floor_check.ml@2:1;4:14./test/floor_check.ml@4:9;4:12
	fmovi f10,$10.00000000000000000000
;./test/floor_check.ml@2:8;2:12
	flt f10,f4
	bft @cfg_label_1723
	j @cfg_label_1722
	j @cfg_label_1724
@cfg_label_1723:
;./test/floor_check.ml@2:1;4:14
	fld f4,r1,$0
	addi r1,r1,$4
	fld f6,r1,$0
	addi r1,r1,$4
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	addi r1,r1,$36
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1724:
@cfg_label_1722:
	fmovi f10,$0.00000000000000000000
;lib_tortesia.ml@11:53;11:56
	flt f4,f10
	bft @cfg_label_1709
	j @cfg_label_1708
	j @cfg_label_1710
	j @cfg_label_1711
@cfg_label_1710:
@cfg_label_1708:
	fmov f6,f4
;./test/floor_check.ml@4:4;4:12::<=lib_tortesia.ml@11:46;11:79
	j @cfg_label_1719
@cfg_label_1711:
@cfg_label_1709:
	fmovi f10,$1.00000000000000000000
;lib_tortesia.ml@11:68;11:71
	fsub f6,f4,f10
;lib_tortesia.ml@11:46;11:79::=Ofsub./test/floor_check.ml@4:4;4:12lib_tortesia.ml@11:68;11:71
@cfg_label_1719:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;lib_tortesia.ml@11:46;11:79::<=lib_tortesia.ml@11:46;11:79
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_tortesia.ml@11:32;11:80lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_tortesia.ml@11:32;11:80::<=lib_tortesia.ml@11:32;11:80
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:26;3:33lib_tortesia.ml@11:18;11:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fmov f10,f6
;./test/floor_check.ml@3:26;3:33::<=./test/floor_check.ml@3:26;3:33
	jal int_of_float
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:12;3:34lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;./test/floor_check.ml@3:12;3:34::<=./test/floor_check.ml@3:12;3:34
	jal @a_847print_int
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:1;3:35./test/floor_check.ml@3:1;3:10
	fmovi f11,$0.10000000000000000555
;./test/floor_check.ml@4:9;4:12
	fadd f10,f4,f11
;./test/floor_check.ml@4:4;4:12::=Ofadd./test/floor_check.ml@4:4;4:12./test/floor_check.ml@4:9;4:12
	fmov f11,f10
;./test/floor_check.ml@4:4;4:12::<=./test/floor_check.ml@2:1;4:14
	fmov f6,f11
;./test/floor_check.ml@2:1;4:14::<=./test/floor_check.ml@2:1;4:14
	j @cfg_label_1701
	j @cfg_label_1741
main:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	mov r31,r3
	addi r3,r3,$636
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$656
@cfg_label_1532:
	li r5,$24
	sw r5,r31,$632
;lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$628
;lib_sinint.ml@1:28;1:31
	lw r5,r31,$632
	lw r6,r31,$628
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1919
@emit_label_1918:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1918
@emit_label_1919:
	mov r5,r7
	sw r5,r31,$624
;lib_sinint.ml@1:12;1:31::=OArrCrtlib_sinint.ml@1:25;1:27lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$620
;lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$616
;lib_sinint.ml@2:28;2:31
	lw r5,r31,$620
	lw r6,r31,$616
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1921
@emit_label_1920:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1920
@emit_label_1921:
	mov r5,r7
	sw r5,r31,$612
;lib_sinint.ml@2:12;2:31::=OArrCrtlib_sinint.ml@2:25;2:27lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$608
;lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$604
;lib_sinint.ml@5:13;5:16
	lw r5,r31,$624
	lw r6,r31,$608
	lw r7,r31,$604
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$600
;lib_sinint.ml@5:0;5:16::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@5:7;5:8lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$596
;lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$592
;lib_sinint.ml@6:13;6:16
	lw r5,r31,$624
	lw r6,r31,$596
	lw r7,r31,$592
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$588
;lib_sinint.ml@6:0;6:16::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@6:7;6:8lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$584
;lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$580
;lib_sinint.ml@7:13;7:17
	lw r5,r31,$624
	lw r6,r31,$584
	lw r7,r31,$580
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$576
;lib_sinint.ml@7:0;7:17::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@7:7;7:8lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$572
;lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$568
;lib_sinint.ml@8:13;8:18
	lw r5,r31,$624
	lw r6,r31,$572
	lw r7,r31,$568
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$564
;lib_sinint.ml@8:0;8:18::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@8:7;8:8lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$560
;lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$556
;lib_sinint.ml@9:13;9:19
	lw r5,r31,$624
	lw r6,r31,$560
	lw r7,r31,$556
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$552
;lib_sinint.ml@9:0;9:19::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@9:7;9:8lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$548
;lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$544
;lib_sinint.ml@10:13;10:20
	lw r5,r31,$624
	lw r6,r31,$548
	lw r7,r31,$544
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$540
;lib_sinint.ml@10:0;10:20::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@10:7;10:8lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$536
;lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$532
;lib_sinint.ml@11:13;11:21
	lw r5,r31,$624
	lw r6,r31,$536
	lw r7,r31,$532
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$528
;lib_sinint.ml@11:0;11:21::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@11:7;11:8lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$524
;lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$520
;lib_sinint.ml@12:13;12:22
	lw r5,r31,$624
	lw r6,r31,$524
	lw r7,r31,$520
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$516
;lib_sinint.ml@12:0;12:22::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@12:7;12:8lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$512
;lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$508
;lib_sinint.ml@13:13;13:23
	lw r5,r31,$624
	lw r6,r31,$512
	lw r7,r31,$508
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$504
;lib_sinint.ml@13:0;13:23::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@13:7;13:8lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$500
;lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$496
;lib_sinint.ml@14:13;14:24
	lw r5,r31,$624
	lw r6,r31,$500
	lw r7,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$492
;lib_sinint.ml@14:0;14:24::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@14:7;14:8lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$488
;lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$484
;lib_sinint.ml@15:14;15:26
	lw r5,r31,$624
	lw r6,r31,$488
	lw r7,r31,$484
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$480
;lib_sinint.ml@15:0;15:26::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@15:7;15:9lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$476
;lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$472
;lib_sinint.ml@16:14;16:27
	lw r5,r31,$624
	lw r6,r31,$476
	lw r7,r31,$472
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$468
;lib_sinint.ml@16:0;16:27::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@16:7;16:9lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$464
;lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$460
;lib_sinint.ml@17:14;17:28
	lw r5,r31,$624
	lw r6,r31,$464
	lw r7,r31,$460
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$456
;lib_sinint.ml@17:0;17:28::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@17:7;17:9lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$452
;lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$448
;lib_sinint.ml@18:14;18:29
	lw r5,r31,$624
	lw r6,r31,$452
	lw r7,r31,$448
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$444
;lib_sinint.ml@18:0;18:29::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@18:7;18:9lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$440
;lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$436
;lib_sinint.ml@19:14;19:30
	lw r5,r31,$624
	lw r6,r31,$440
	lw r7,r31,$436
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$432
;lib_sinint.ml@19:0;19:30::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@19:7;19:9lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$428
;lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$424
;lib_sinint.ml@20:14;20:31
	lw r5,r31,$624
	lw r6,r31,$428
	lw r7,r31,$424
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$420
;lib_sinint.ml@20:0;20:31::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@20:7;20:9lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$416
;lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$412
;lib_sinint.ml@21:14;21:32
	lw r5,r31,$624
	lw r6,r31,$416
	lw r7,r31,$412
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$408
;lib_sinint.ml@21:0;21:32::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@21:7;21:9lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$404
;lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$400
;lib_sinint.ml@22:14;22:33
	lw r5,r31,$624
	lw r6,r31,$404
	lw r7,r31,$400
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$396
;lib_sinint.ml@22:0;22:33::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@22:7;22:9lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$392
;lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$388
;lib_sinint.ml@23:14;23:34
	lw r5,r31,$624
	lw r6,r31,$392
	lw r7,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$384
;lib_sinint.ml@23:0;23:34::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@23:7;23:9lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$380
;lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$376
;lib_sinint.ml@24:14;24:35
	lw r5,r31,$624
	lw r6,r31,$380
	lw r7,r31,$376
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$372
;lib_sinint.ml@24:0;24:35::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@24:7;24:9lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$368
;lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$364
;lib_sinint.ml@25:14;25:36
	lw r5,r31,$624
	lw r6,r31,$368
	lw r7,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$360
;lib_sinint.ml@25:0;25:36::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@25:7;25:9lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$356
;lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$352
;lib_sinint.ml@26:14;26:37
	lw r5,r31,$624
	lw r6,r31,$356
	lw r7,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$348
;lib_sinint.ml@26:0;26:37::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@26:7;26:9lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$344
;lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$340
;lib_sinint.ml@27:14;27:38
	lw r5,r31,$624
	lw r6,r31,$344
	lw r7,r31,$340
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$336
;lib_sinint.ml@27:0;27:38::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@27:7;27:9lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$332
;lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$328
;lib_sinint.ml@28:14;28:39
	lw r5,r31,$624
	lw r6,r31,$332
	lw r7,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$324
;lib_sinint.ml@28:0;28:39::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@28:7;28:9lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$320
;lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$316
;lib_sinint.ml@30:13;30:39
	lw r5,r31,$612
	lw r6,r31,$320
	lw r7,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$312
;lib_sinint.ml@30:0;30:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@30:7;30:8lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$308
;lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$304
;lib_sinint.ml@31:13;31:39
	lw r5,r31,$612
	lw r6,r31,$308
	lw r7,r31,$304
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$300
;lib_sinint.ml@31:0;31:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@31:7;31:8lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$296
;lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$292
;lib_sinint.ml@32:13;32:39
	lw r5,r31,$612
	lw r6,r31,$296
	lw r7,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$288
;lib_sinint.ml@32:0;32:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@32:7;32:8lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$284
;lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$280
;lib_sinint.ml@33:13;33:39
	lw r5,r31,$612
	lw r6,r31,$284
	lw r7,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$276
;lib_sinint.ml@33:0;33:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@33:7;33:8lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$272
;lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$268
;lib_sinint.ml@34:13;34:39
	lw r5,r31,$612
	lw r6,r31,$272
	lw r7,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$264
;lib_sinint.ml@34:0;34:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@34:7;34:8lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$260
;lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$256
;lib_sinint.ml@35:13;35:39
	lw r5,r31,$612
	lw r6,r31,$260
	lw r7,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$252
;lib_sinint.ml@35:0;35:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@35:7;35:8lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$248
;lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$244
;lib_sinint.ml@36:13;36:39
	lw r5,r31,$612
	lw r6,r31,$248
	lw r7,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$240
;lib_sinint.ml@36:0;36:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@36:7;36:8lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$236
;lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$232
;lib_sinint.ml@37:13;37:39
	lw r5,r31,$612
	lw r6,r31,$236
	lw r7,r31,$232
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$228
;lib_sinint.ml@37:0;37:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@37:7;37:8lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$224
;lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$220
;lib_sinint.ml@38:13;38:39
	lw r5,r31,$612
	lw r6,r31,$224
	lw r7,r31,$220
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$216
;lib_sinint.ml@38:0;38:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@38:7;38:8lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$212
;lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$208
;lib_sinint.ml@39:13;39:39
	lw r5,r31,$612
	lw r6,r31,$212
	lw r7,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$204
;lib_sinint.ml@39:0;39:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@39:7;39:8lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$200
;lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$196
;lib_sinint.ml@40:14;40:40
	lw r5,r31,$612
	lw r6,r31,$200
	lw r7,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$192
;lib_sinint.ml@40:0;40:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@40:7;40:9lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$188
;lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$184
;lib_sinint.ml@41:14;41:40
	lw r5,r31,$612
	lw r6,r31,$188
	lw r7,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$180
;lib_sinint.ml@41:0;41:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@41:7;41:9lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$176
;lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$172
;lib_sinint.ml@42:14;42:40
	lw r5,r31,$612
	lw r6,r31,$176
	lw r7,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$168
;lib_sinint.ml@42:0;42:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@42:7;42:9lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$164
;lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$160
;lib_sinint.ml@43:14;43:40
	lw r5,r31,$612
	lw r6,r31,$164
	lw r7,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$156
;lib_sinint.ml@43:0;43:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@43:7;43:9lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$152
;lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$148
;lib_sinint.ml@44:14;44:40
	lw r5,r31,$612
	lw r6,r31,$152
	lw r7,r31,$148
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$144
;lib_sinint.ml@44:0;44:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@44:7;44:9lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$140
;lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$136
;lib_sinint.ml@45:14;45:40
	lw r5,r31,$612
	lw r6,r31,$140
	lw r7,r31,$136
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$132
;lib_sinint.ml@45:0;45:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@45:7;45:9lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$128
;lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$124
;lib_sinint.ml@46:14;46:40
	lw r5,r31,$612
	lw r6,r31,$128
	lw r7,r31,$124
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$120
;lib_sinint.ml@46:0;46:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@46:7;46:9lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$116
;lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$112
;lib_sinint.ml@47:14;47:40
	lw r5,r31,$612
	lw r6,r31,$116
	lw r7,r31,$112
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$108
;lib_sinint.ml@47:0;47:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@47:7;47:9lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$104
;lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$100
;lib_sinint.ml@48:14;48:40
	lw r5,r31,$612
	lw r6,r31,$104
	lw r7,r31,$100
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$96
;lib_sinint.ml@48:0;48:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@48:7;48:9lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$92
;lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$88
;lib_sinint.ml@49:14;49:40
	lw r5,r31,$612
	lw r6,r31,$92
	lw r7,r31,$88
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$84
;lib_sinint.ml@49:0;49:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@49:7;49:9lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$80
;lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$76
;lib_sinint.ml@50:14;50:40
	lw r5,r31,$612
	lw r6,r31,$80
	lw r7,r31,$76
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$72
;lib_sinint.ml@50:0;50:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@50:7;50:9lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$68
;lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$64
;lib_sinint.ml@51:14;51:40
	lw r5,r31,$612
	lw r6,r31,$68
	lw r7,r31,$64
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$60
;lib_sinint.ml@51:0;51:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@51:7;51:9lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$56
;lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$52
;lib_sinint.ml@52:14;52:40
	lw r5,r31,$612
	lw r6,r31,$56
	lw r7,r31,$52
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$48
;lib_sinint.ml@52:0;52:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@52:7;52:9lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$44
;lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$40
;lib_sinint.ml@53:14;53:40
	lw r5,r31,$612
	lw r6,r31,$44
	lw r7,r31,$40
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$36
;lib_sinint.ml@53:0;53:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@53:7;53:9lib_sinint.ml@53:14;53:40
	fmovi f1,$-10.00000000000000000000
	fst f1,r31,$32
;./test/floor_check.ml@6:4;6:8
	fmovi f1,$10.00000000000000000000
	fst f1,r31,$28
;./test/floor_check.ml@2:8;2:12
	lw r5,r31,$28
	lw r6,r31,$32
	flt r5,r6
	bft @cfg_label_1546
	j @cfg_label_1545
	j @cfg_label_1547
@cfg_label_1546:
;@0:-1;0:-1
	hlt 
@cfg_label_1547:
@cfg_label_1545:
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$24
;lib_tortesia.ml@11:53;11:56
	lw r5,r31,$32
	lw r6,r31,$24
	flt r5,r6
	bft @cfg_label_1534
	j @cfg_label_1533
	j @cfg_label_1535
	j @cfg_label_1536
@cfg_label_1535:
@cfg_label_1533:
	fld f5,r31,$32
	fst f5,r31,$20
;./test/floor_check.ml@6:4;6:8::<=lib_tortesia.ml@11:46;11:79
	j @cfg_label_1542
@cfg_label_1536:
@cfg_label_1534:
	fmovi f1,$-11.00000000000000000000
	fst f1,r31,$20
;lib_tortesia.ml@11:46;11:79
@cfg_label_1542:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$20
;lib_tortesia.ml@11:46;11:79::<=lib_tortesia.ml@11:46;11:79
	jal int_of_float
	sw r5,r31,$16
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_tortesia.ml@11:32;11:80lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$16
;lib_tortesia.ml@11:32;11:80::<=lib_tortesia.ml@11:32;11:80
	jal float_of_int
	fst f5,r31,$12
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:26;3:33lib_tortesia.ml@11:18;11:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$12
;./test/floor_check.ml@3:26;3:33::<=./test/floor_check.ml@3:26;3:33
	jal int_of_float
	sw r5,r31,$8
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:12;3:34lib_tortesia.ml@11:32;11:44
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$8
;./test/floor_check.ml@3:12;3:34::<=./test/floor_check.ml@3:12;3:34
	jal @a_847print_int
	sw r5,r31,$4
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/floor_check.ml@3:1;3:35./test/floor_check.ml@3:1;3:10
	fmovi f1,$-9.90000000000000035527
	fst f1,r31,$0
;./test/floor_check.ml@4:4;4:12
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	fld f10,r31,$0
;./test/floor_check.ml@4:4;4:12::<=./test/floor_check.ml@4:4;4:12
	jal @a_849f
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;@0:-1;0:-1./test/floor_check.ml@4:1;4:2
	hlt 
