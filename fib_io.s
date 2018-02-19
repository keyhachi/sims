
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


; itof,ftoiは
; 負、正とともに小数点切り捨てだが、
; floor は、負のほうは切り捨てする。


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


@a_960f:
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
@cfg_label_1985:
@cfg_label_1984:
@cfg_label_1983:
@cfg_label_1982:
@cfg_label_1934:
	addi r13,r10,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@109:2;111:42
	slt r5,r13,r11
	bne r0,r5,@cfg_label_1978
	j @cfg_label_1977
	j @cfg_label_1979
	j @cfg_label_1980
@cfg_label_1979:
@cfg_label_1977:
	mov r11,r10
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r9,r10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1980:
@cfg_label_1978:
	add r14,r10,r11
; lib_sinint.ml@110:11;110:14 ::= Oadd lib_sinint.ml@109:2;111:42 lib_sinint.ml@109:2;111:42
	slti r6,r14,$0
	add r9,r14,r6
	sra r9,r9,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r9
	sll r6,r6,$1
	mov r14,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r12,r14
	bne r0,r5,@cfg_label_1971
	j @cfg_label_1970
	j @cfg_label_1972
@cfg_label_1971:
	slt r5,r13,r9
	bne r0,r5,@cfg_label_1967
	j @cfg_label_1966
	j @cfg_label_1968
	j @cfg_label_1969
@cfg_label_1968:
@cfg_label_1966:
	mov r11,r10
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r9,r10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1969:
@cfg_label_1967:
	add r11,r10,r9
; lib_sinint.ml@110:11;110:14 ::= Oadd lib_sinint.ml@109:2;111:42 lib_sinint.ml@110:10;110:19
	slti r6,r11,$0
	add r13,r11,r6
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
	mov r11,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r12,r11
	bne r0,r5,@cfg_label_1960
	j @cfg_label_1959
	j @cfg_label_1961
	j @cfg_label_1962
@cfg_label_1961:
@cfg_label_1959:
	mov r10,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r9
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r9
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_1934
	j @cfg_label_1983
@cfg_label_1962:
@cfg_label_1960:
	mov r11,r10
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_1934
	j @cfg_label_1982
@cfg_label_1972:
@cfg_label_1970:
	addi r10,r9,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@110:10;110:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_1949
	j @cfg_label_1948
	j @cfg_label_1950
	j @cfg_label_1951
@cfg_label_1950:
@cfg_label_1948:
	mov r11,r9
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1951:
@cfg_label_1949:
	add r10,r9,r11
; lib_sinint.ml@110:11;110:14 ::= Oadd lib_sinint.ml@110:10;110:19 lib_sinint.ml@109:2;111:42
	slti r6,r10,$0
	add r13,r10,r6
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
	mov r10,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r12,r10
	bne r0,r5,@cfg_label_1942
	j @cfg_label_1941
	j @cfg_label_1943
	j @cfg_label_1944
@cfg_label_1943:
@cfg_label_1941:
	mov r10,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r11
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_1934
	j @cfg_label_1985
@cfg_label_1944:
@cfg_label_1942:
	mov r10,r9
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r13
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r12
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r10,r9
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	mov r11,r13
; lib_sinint.ml@109:2;111:42 ::<= lib_sinint.ml@109:2;111:42
	j @cfg_label_1934
	j @cfg_label_1984
@a_868divten:
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
@cfg_label_1893:
	li r10,$0
; lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_1930
	j @cfg_label_1929
	j @cfg_label_1931
	j @cfg_label_1932
@cfg_label_1931:
@cfg_label_1929:
	li r23,$0
; lib_sinint.ml@108:1;115:25
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
@cfg_label_1932:
@cfg_label_1930:
	li r10,$0
; lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1925
	j @cfg_label_1924
	j @cfg_label_1926
@cfg_label_1925:
	li r20,$0
; lib_sinint.ml@115:12;115:13
	sub r21,r0,r8
; lib_sinint.ml@115:15;115:17 ::= Ominus lib_sinint.ml@108:1;115:25
	addi r10,r20,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@115:12;115:13
	slt r5,r10,r21
	bne r0,r5,@cfg_label_1915
	j @cfg_label_1914
	j @cfg_label_1916
	j @cfg_label_1917
@cfg_label_1916:
@cfg_label_1914:
	mov r22,r20
; lib_sinint.ml@115:12;115:13 ::<= lib_sinint.ml@115:10;115:23
	j @cfg_label_1918
@cfg_label_1917:
@cfg_label_1915:
	addi r10,r21,$0
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
	slt r5,r21,r10
	bne r0,r5,@cfg_label_1908
	j @cfg_label_1907
	j @cfg_label_1909
	j @cfg_label_1910
@cfg_label_1909:
@cfg_label_1907:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r8
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r11,r21
; lib_sinint.ml@115:15;115:17 ::<= lib_sinint.ml@115:15;115:17
	mov r12,r21
; lib_sinint.ml@115:15;115:17 ::<= lib_sinint.ml@115:15;115:17
	jal @a_960f
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@115:10;115:23 lib_sinint.ml@111:22;111:23
	j @cfg_label_1919
@cfg_label_1910:
@cfg_label_1908:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
; lib_sinint.ml@115:12;115:13 ::<= lib_sinint.ml@115:12;115:13
	mov r11,r8
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r12,r21
; lib_sinint.ml@115:15;115:17 ::<= lib_sinint.ml@115:15;115:17
	jal @a_960f
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@115:10;115:23 lib_sinint.ml@111:22;111:23
@cfg_label_1919:
@cfg_label_1918:
	sub r23,r0,r22
; lib_sinint.ml@108:1;115:25 ::= Ominus lib_sinint.ml@115:10;115:23
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
@cfg_label_1926:
@cfg_label_1924:
	li r20,$0
; lib_sinint.ml@114:19;114:20
	addi r10,r20,$1
; lib_sinint.ml@109:5;109:8 ::= Oiadd[1] lib_sinint.ml@114:19;114:20
	slt r5,r10,r8
	bne r0,r5,@cfg_label_1902
	j @cfg_label_1901
	j @cfg_label_1903
	j @cfg_label_1904
@cfg_label_1903:
@cfg_label_1901:
	mov r23,r20
; lib_sinint.ml@114:19;114:20 ::<= lib_sinint.ml@108:1;115:25
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
@cfg_label_1904:
@cfg_label_1902:
	addi r10,r8,$0
; lib_sinint.ml@110:11;110:14 ::= Oiadd[0] lib_sinint.ml@108:1;115:25
	slti r6,r10,$0
	add r21,r10,r6
	sra r21,r21,$1
; lib_sinint.ml@110:10;110:19 ::= Oibydiv[2] lib_sinint.ml@110:11;110:14
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@111:5;111:11 ::= Oimul[10] lib_sinint.ml@110:10;110:19
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1895
	j @cfg_label_1894
	j @cfg_label_1896
	j @cfg_label_1897
@cfg_label_1896:
@cfg_label_1894:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r11,r8
; lib_sinint.ml@108:1;115:25 ::<= lib_sinint.ml@108:1;115:25
	mov r12,r8
; lib_sinint.ml@108:1;115:25 ::<= lib_sinint.ml@108:1;115:25
	jal @a_960f
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@108:1;115:25 lib_sinint.ml@111:22;111:23
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
@cfg_label_1897:
@cfg_label_1895:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
; lib_sinint.ml@114:19;114:20 ::<= lib_sinint.ml@114:19;114:20
	mov r11,r21
; lib_sinint.ml@110:10;110:19 ::<= lib_sinint.ml@110:10;110:19
	mov r12,r8
; lib_sinint.ml@108:1;115:25 ::<= lib_sinint.ml@108:1;115:25
	jal @a_960f
	mov r23,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@108:1;115:25 lib_sinint.ml@111:22;111:23
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
@a_913print_int_base:
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
@cfg_label_1858:
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1889
	j @cfg_label_1888
	j @cfg_label_1890
@cfg_label_1889:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_1884
	j @cfg_label_1883
	j @cfg_label_1885
	j @cfg_label_1886
@cfg_label_1885:
@cfg_label_1883:
; lib_sinint.ml@121:2;124:29
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
@cfg_label_1886:
@cfg_label_1884:
	addi r20,r8,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@121:2;124:29
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@121:2;124:29 lib_sinint.ml@124:3;124:13
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
@cfg_label_1890:
@cfg_label_1888:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@121:2;124:29 ::<= lib_sinint.ml@121:2;124:29
	jal @a_868divten
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_1871
	j @cfg_label_1870
	j @cfg_label_1872
@cfg_label_1871:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r20
	bne r0,r5,@cfg_label_1866
	j @cfg_label_1865
	j @cfg_label_1867
	j @cfg_label_1868
@cfg_label_1867:
@cfg_label_1865:
; lib_sinint.ml@123:4;123:21
	j @cfg_label_1878
@cfg_label_1868:
@cfg_label_1866:
	addi r21,r20,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@122:13;122:21
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@124:3;124:13
	j @cfg_label_1879
@cfg_label_1872:
@cfg_label_1870:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_868divten
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_913print_int_base
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@123:4;123:18
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r21
	sll r6,r6,$1
	mov r10,r6
; lib_sinint.ml@124:18;124:23 ::= Oimul[10] lib_sinint.ml@122:13;122:21
	sub r11,r20,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@122:13;122:21 lib_sinint.ml@124:18;124:23
	addi r21,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r22,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@123:4;123:21 lib_sinint.ml@124:3;124:13
	j @cfg_label_1877
@cfg_label_1879:
@cfg_label_1878:
@cfg_label_1877:
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
	sub r11,r8,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@121:2;124:29 lib_sinint.ml@124:18;124:23
	addi r8,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@121:2;124:29 lib_sinint.ml@124:3;124:13
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
@a_870print_int:
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
@cfg_label_1810:
	li r10,$0
; lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_1854
	j @cfg_label_1853
	j @cfg_label_1855
@cfg_label_1854:
	li r10,$0
; lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1849
	j @cfg_label_1848
	j @cfg_label_1850
@cfg_label_1849:
	li r21,$45
; lib_sinint.ml@127:32;127:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
; lib_sinint.ml@127:32;127:34 ::<= lib_sinint.ml@127:32;127:34
	jal print_char
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@127:21;127:34 lib_sinint.ml@126:15;126:25
	li r10,$0
; lib_sinint.ml@127:52;127:53
	sub r20,r10,r8
; lib_sinint.ml@127:52;127:55 ::= Osub lib_sinint.ml@127:52;127:53 lib_sinint.ml@118:1;127:79
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_1840
	j @cfg_label_1839
	j @cfg_label_1841
@cfg_label_1840:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r20
	bne r0,r5,@cfg_label_1835
	j @cfg_label_1834
	j @cfg_label_1836
	j @cfg_label_1837
@cfg_label_1836:
@cfg_label_1834:
; lib_sinint.ml@118:1;127:79
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
@cfg_label_1837:
@cfg_label_1835:
	addi r21,r20,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@127:52;127:55
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
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
@cfg_label_1841:
@cfg_label_1839:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@127:52;127:55 ::<= lib_sinint.ml@127:52;127:55
	jal @a_868divten
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_913print_int_base
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
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
	sub r11,r20,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@127:52;127:55 lib_sinint.ml@124:18;124:23
	addi r20,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
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
@cfg_label_1850:
@cfg_label_1848:
	li r10,$10
; lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1824
	j @cfg_label_1823
	j @cfg_label_1825
@cfg_label_1824:
	li r10,$0
; lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_1819
	j @cfg_label_1818
	j @cfg_label_1820
	j @cfg_label_1821
@cfg_label_1820:
@cfg_label_1818:
; lib_sinint.ml@118:1;127:79
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
@cfg_label_1821:
@cfg_label_1819:
	addi r20,r8,$48
; lib_sinint.ml@121:44;121:48 ::= Oiadd[48] lib_sinint.ml@118:1;127:79
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@121:44;121:48 ::<= lib_sinint.ml@121:44;121:48
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
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
@cfg_label_1825:
@cfg_label_1823:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; lib_sinint.ml@118:1;127:79 ::<= lib_sinint.ml@118:1;127:79
	jal @a_868divten
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@122:13;122:21 lib_sinint.ml@122:13;122:19
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@122:13;122:21 ::<= lib_sinint.ml@122:13;122:21
	jal @a_913print_int_base
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
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
	sub r11,r8,r10
; lib_sinint.ml@124:16;124:23 ::= Osub lib_sinint.ml@118:1;127:79 lib_sinint.ml@124:18;124:23
	addi r20,r11,$48
; lib_sinint.ml@124:15;124:27 ::= Oiadd[48] lib_sinint.ml@124:16;124:23
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@124:15;124:27 ::<= lib_sinint.ml@124:15;124:27
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
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
@cfg_label_1855:
@cfg_label_1853:
	li r20,$48
; lib_sinint.ml@126:26;126:28
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
; lib_sinint.ml@126:26;126:28 ::<= lib_sinint.ml@126:26;126:28
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; lib_sinint.ml@118:1;127:79 lib_sinint.ml@126:15;126:25
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
@a_872fib:
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
	mov r21,r10
	mov r22,r11
	mov r8,r12
@cfg_label_1809:
@cfg_label_1808:
@cfg_label_1807:
@cfg_label_1806:
@cfg_label_1745:
	li r10,$1
; fib_io.ml@2:12;2:13
	slt r5,r10,r21
	bne r0,r5,@cfg_label_1802
	j @cfg_label_1801
	j @cfg_label_1803
@cfg_label_1802:
	li r10,$10
; fib_io.ml@6:17;6:19
	slt r5,r21,r10
	bne r0,r5,@cfg_label_1797
	j @cfg_label_1796
	j @cfg_label_1798
	j @cfg_label_1799
@cfg_label_1798:
@cfg_label_1796:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@2:4;10:24 fib_io.ml@3:9;3:18
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
@cfg_label_1799:
@cfg_label_1797:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@7:13;7:24 fib_io.ml@3:9;3:18
	addi r23,r21,$1
; fib_io.ml@8:17;8:22 ::= Oiadd[1] fib_io.ml@2:4;10:24
	add r20,r22,r8
; fib_io.ml@8:27;8:32 ::= Oadd fib_io.ml@2:4;10:24 fib_io.ml@2:4;10:24
	li r10,$1
; fib_io.ml@2:12;2:13
	slt r5,r10,r23
	bne r0,r5,@cfg_label_1789
	j @cfg_label_1788
	j @cfg_label_1790
@cfg_label_1789:
	li r10,$10
; fib_io.ml@6:17;6:19
	slt r5,r23,r10
	bne r0,r5,@cfg_label_1784
	j @cfg_label_1783
	j @cfg_label_1785
	j @cfg_label_1786
@cfg_label_1785:
@cfg_label_1783:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@2:4;10:24 fib_io.ml@3:9;3:18
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
@cfg_label_1786:
@cfg_label_1784:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@7:13;7:24 fib_io.ml@3:9;3:18
	addi r10,r23,$1
; fib_io.ml@8:17;8:22 ::= Oiadd[1] fib_io.ml@8:17;8:22
	add r11,r8,r20
; fib_io.ml@8:27;8:32 ::= Oadd fib_io.ml@2:4;10:24 fib_io.ml@8:27;8:32
	mov r12,r10
; fib_io.ml@8:17;8:22 ::<= fib_io.ml@2:4;10:24
	mov r12,r20
; fib_io.ml@8:27;8:32 ::<= fib_io.ml@2:4;10:24
	mov r12,r11
; fib_io.ml@8:27;8:32 ::<= fib_io.ml@2:4;10:24
	mov r21,r10
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r22,r20
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r8,r11
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	j @cfg_label_1745
	j @cfg_label_1806
@cfg_label_1790:
@cfg_label_1788:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@3:9;3:20 fib_io.ml@3:9;3:18
	addi r10,r23,$1
; fib_io.ml@4:13;4:18 ::= Oiadd[1] fib_io.ml@8:17;8:22
	add r11,r8,r20
; fib_io.ml@4:23;4:28 ::= Oadd fib_io.ml@2:4;10:24 fib_io.ml@8:27;8:32
	mov r12,r10
; fib_io.ml@4:13;4:18 ::<= fib_io.ml@2:4;10:24
	mov r12,r20
; fib_io.ml@8:27;8:32 ::<= fib_io.ml@2:4;10:24
	mov r12,r11
; fib_io.ml@4:23;4:28 ::<= fib_io.ml@2:4;10:24
	mov r21,r10
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r22,r20
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r8,r11
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	j @cfg_label_1745
	j @cfg_label_1807
@cfg_label_1803:
@cfg_label_1801:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r22
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@3:9;3:20 fib_io.ml@3:9;3:18
	addi r23,r21,$1
; fib_io.ml@4:13;4:18 ::= Oiadd[1] fib_io.ml@2:4;10:24
	add r20,r22,r8
; fib_io.ml@4:23;4:28 ::= Oadd fib_io.ml@2:4;10:24 fib_io.ml@2:4;10:24
	li r10,$1
; fib_io.ml@2:12;2:13
	slt r5,r10,r23
	bne r0,r5,@cfg_label_1764
	j @cfg_label_1763
	j @cfg_label_1765
@cfg_label_1764:
	li r10,$10
; fib_io.ml@6:17;6:19
	slt r5,r23,r10
	bne r0,r5,@cfg_label_1759
	j @cfg_label_1758
	j @cfg_label_1760
	j @cfg_label_1761
@cfg_label_1760:
@cfg_label_1758:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@2:4;10:24 fib_io.ml@3:9;3:18
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
@cfg_label_1761:
@cfg_label_1759:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@7:13;7:24 fib_io.ml@3:9;3:18
	addi r10,r23,$1
; fib_io.ml@8:17;8:22 ::= Oiadd[1] fib_io.ml@4:13;4:18
	add r11,r8,r20
; fib_io.ml@8:27;8:32 ::= Oadd fib_io.ml@2:4;10:24 fib_io.ml@4:23;4:28
	mov r12,r10
; fib_io.ml@8:17;8:22 ::<= fib_io.ml@2:4;10:24
	mov r12,r20
; fib_io.ml@4:23;4:28 ::<= fib_io.ml@2:4;10:24
	mov r12,r11
; fib_io.ml@8:27;8:32 ::<= fib_io.ml@2:4;10:24
	mov r21,r10
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r22,r20
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r8,r11
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	j @cfg_label_1745
	j @cfg_label_1808
@cfg_label_1765:
@cfg_label_1763:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	jal @a_870print_int
	mov r21,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@3:9;3:20 fib_io.ml@3:9;3:18
	addi r10,r23,$1
; fib_io.ml@4:13;4:18 ::= Oiadd[1] fib_io.ml@4:13;4:18
	add r11,r8,r20
; fib_io.ml@4:23;4:28 ::= Oadd fib_io.ml@2:4;10:24 fib_io.ml@4:23;4:28
	mov r12,r10
; fib_io.ml@4:13;4:18 ::<= fib_io.ml@2:4;10:24
	mov r12,r20
; fib_io.ml@4:23;4:28 ::<= fib_io.ml@2:4;10:24
	mov r12,r11
; fib_io.ml@4:23;4:28 ::<= fib_io.ml@2:4;10:24
	mov r21,r10
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r22,r20
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	mov r8,r11
; fib_io.ml@2:4;10:24 ::<= fib_io.ml@2:4;10:24
	j @cfg_label_1745
	j @cfg_label_1809
main:
	mov r31,r3
	addi r3,r3,$644
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$656
	subi r1,r1,$4
	sw r6,r1,$0
@cfg_label_1575:
	li r5,$24
	sw r5,r31,$640
; lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$636
; lib_sinint.ml@1:28;1:31
	lw r5,r31,$640
	lw r6,r31,$636
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1987
@emit_label_1986:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1986
@emit_label_1987:
	mov r5,r7
	sw r5,r31,$632
; lib_sinint.ml@1:12;1:31 ::= OArrCrt lib_sinint.ml@1:25;1:27 lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$628
; lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$624
; lib_sinint.ml@2:28;2:31
	lw r5,r31,$628
	lw r6,r31,$624
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_1989
@emit_label_1988:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_1988
@emit_label_1989:
	mov r5,r7
	sw r5,r31,$620
; lib_sinint.ml@2:12;2:31 ::= OArrCrt lib_sinint.ml@2:25;2:27 lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$616
; lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$612
; lib_sinint.ml@5:13;5:16
	lw r5,r31,$632
	lw r6,r31,$616
	lw r7,r31,$612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$608
; lib_sinint.ml@5:0;5:16 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@5:7;5:8 lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$604
; lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$600
; lib_sinint.ml@6:13;6:16
	lw r5,r31,$632
	lw r6,r31,$604
	lw r7,r31,$600
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$596
; lib_sinint.ml@6:0;6:16 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@6:7;6:8 lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$592
; lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$588
; lib_sinint.ml@7:13;7:17
	lw r5,r31,$632
	lw r6,r31,$592
	lw r7,r31,$588
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$584
; lib_sinint.ml@7:0;7:17 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@7:7;7:8 lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$580
; lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$576
; lib_sinint.ml@8:13;8:18
	lw r5,r31,$632
	lw r6,r31,$580
	lw r7,r31,$576
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$572
; lib_sinint.ml@8:0;8:18 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@8:7;8:8 lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$568
; lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$564
; lib_sinint.ml@9:13;9:19
	lw r5,r31,$632
	lw r6,r31,$568
	lw r7,r31,$564
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$560
; lib_sinint.ml@9:0;9:19 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@9:7;9:8 lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$556
; lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$552
; lib_sinint.ml@10:13;10:20
	lw r5,r31,$632
	lw r6,r31,$556
	lw r7,r31,$552
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$548
; lib_sinint.ml@10:0;10:20 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@10:7;10:8 lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$544
; lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$540
; lib_sinint.ml@11:13;11:21
	lw r5,r31,$632
	lw r6,r31,$544
	lw r7,r31,$540
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$536
; lib_sinint.ml@11:0;11:21 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@11:7;11:8 lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$532
; lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$528
; lib_sinint.ml@12:13;12:22
	lw r5,r31,$632
	lw r6,r31,$532
	lw r7,r31,$528
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$524
; lib_sinint.ml@12:0;12:22 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@12:7;12:8 lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$520
; lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$516
; lib_sinint.ml@13:13;13:23
	lw r5,r31,$632
	lw r6,r31,$520
	lw r7,r31,$516
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$512
; lib_sinint.ml@13:0;13:23 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@13:7;13:8 lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$508
; lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$504
; lib_sinint.ml@14:13;14:24
	lw r5,r31,$632
	lw r6,r31,$508
	lw r7,r31,$504
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$500
; lib_sinint.ml@14:0;14:24 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@14:7;14:8 lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$496
; lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$492
; lib_sinint.ml@15:14;15:26
	lw r5,r31,$632
	lw r6,r31,$496
	lw r7,r31,$492
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$488
; lib_sinint.ml@15:0;15:26 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@15:7;15:9 lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$484
; lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$480
; lib_sinint.ml@16:14;16:27
	lw r5,r31,$632
	lw r6,r31,$484
	lw r7,r31,$480
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$476
; lib_sinint.ml@16:0;16:27 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@16:7;16:9 lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$472
; lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$468
; lib_sinint.ml@17:14;17:28
	lw r5,r31,$632
	lw r6,r31,$472
	lw r7,r31,$468
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$464
; lib_sinint.ml@17:0;17:28 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@17:7;17:9 lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$460
; lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$456
; lib_sinint.ml@18:14;18:29
	lw r5,r31,$632
	lw r6,r31,$460
	lw r7,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$452
; lib_sinint.ml@18:0;18:29 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@18:7;18:9 lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$448
; lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$444
; lib_sinint.ml@19:14;19:30
	lw r5,r31,$632
	lw r6,r31,$448
	lw r7,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$440
; lib_sinint.ml@19:0;19:30 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@19:7;19:9 lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$436
; lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$432
; lib_sinint.ml@20:14;20:31
	lw r5,r31,$632
	lw r6,r31,$436
	lw r7,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$428
; lib_sinint.ml@20:0;20:31 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@20:7;20:9 lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$424
; lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$420
; lib_sinint.ml@21:14;21:32
	lw r5,r31,$632
	lw r6,r31,$424
	lw r7,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$416
; lib_sinint.ml@21:0;21:32 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@21:7;21:9 lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$412
; lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$408
; lib_sinint.ml@22:14;22:33
	lw r5,r31,$632
	lw r6,r31,$412
	lw r7,r31,$408
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$404
; lib_sinint.ml@22:0;22:33 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@22:7;22:9 lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$400
; lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$396
; lib_sinint.ml@23:14;23:34
	lw r5,r31,$632
	lw r6,r31,$400
	lw r7,r31,$396
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$392
; lib_sinint.ml@23:0;23:34 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@23:7;23:9 lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$388
; lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$384
; lib_sinint.ml@24:14;24:35
	lw r5,r31,$632
	lw r6,r31,$388
	lw r7,r31,$384
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$380
; lib_sinint.ml@24:0;24:35 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@24:7;24:9 lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$376
; lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$372
; lib_sinint.ml@25:14;25:36
	lw r5,r31,$632
	lw r6,r31,$376
	lw r7,r31,$372
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$368
; lib_sinint.ml@25:0;25:36 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@25:7;25:9 lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$364
; lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$360
; lib_sinint.ml@26:14;26:37
	lw r5,r31,$632
	lw r6,r31,$364
	lw r7,r31,$360
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$356
; lib_sinint.ml@26:0;26:37 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@26:7;26:9 lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$352
; lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$348
; lib_sinint.ml@27:14;27:38
	lw r5,r31,$632
	lw r6,r31,$352
	lw r7,r31,$348
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$344
; lib_sinint.ml@27:0;27:38 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@27:7;27:9 lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$340
; lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$336
; lib_sinint.ml@28:14;28:39
	lw r5,r31,$632
	lw r6,r31,$340
	lw r7,r31,$336
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$332
; lib_sinint.ml@28:0;28:39 ::= OArrWrite lib_sinint.ml@1:12;1:31 lib_sinint.ml@28:7;28:9 lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$328
; lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$324
; lib_sinint.ml@30:13;30:39
	lw r5,r31,$620
	lw r6,r31,$328
	lw r7,r31,$324
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$320
; lib_sinint.ml@30:0;30:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@30:7;30:8 lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$316
; lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$312
; lib_sinint.ml@31:13;31:39
	lw r5,r31,$620
	lw r6,r31,$316
	lw r7,r31,$312
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$308
; lib_sinint.ml@31:0;31:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@31:7;31:8 lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$304
; lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$300
; lib_sinint.ml@32:13;32:39
	lw r5,r31,$620
	lw r6,r31,$304
	lw r7,r31,$300
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$296
; lib_sinint.ml@32:0;32:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@32:7;32:8 lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$292
; lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$288
; lib_sinint.ml@33:13;33:39
	lw r5,r31,$620
	lw r6,r31,$292
	lw r7,r31,$288
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$284
; lib_sinint.ml@33:0;33:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@33:7;33:8 lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$280
; lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$276
; lib_sinint.ml@34:13;34:39
	lw r5,r31,$620
	lw r6,r31,$280
	lw r7,r31,$276
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$272
; lib_sinint.ml@34:0;34:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@34:7;34:8 lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$268
; lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$264
; lib_sinint.ml@35:13;35:39
	lw r5,r31,$620
	lw r6,r31,$268
	lw r7,r31,$264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$260
; lib_sinint.ml@35:0;35:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@35:7;35:8 lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$256
; lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$252
; lib_sinint.ml@36:13;36:39
	lw r5,r31,$620
	lw r6,r31,$256
	lw r7,r31,$252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$248
; lib_sinint.ml@36:0;36:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@36:7;36:8 lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$244
; lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$240
; lib_sinint.ml@37:13;37:39
	lw r5,r31,$620
	lw r6,r31,$244
	lw r7,r31,$240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$236
; lib_sinint.ml@37:0;37:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@37:7;37:8 lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$232
; lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$228
; lib_sinint.ml@38:13;38:39
	lw r5,r31,$620
	lw r6,r31,$232
	lw r7,r31,$228
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$224
; lib_sinint.ml@38:0;38:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@38:7;38:8 lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$220
; lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$216
; lib_sinint.ml@39:13;39:39
	lw r5,r31,$620
	lw r6,r31,$220
	lw r7,r31,$216
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$212
; lib_sinint.ml@39:0;39:39 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@39:7;39:8 lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$208
; lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$204
; lib_sinint.ml@40:14;40:40
	lw r5,r31,$620
	lw r6,r31,$208
	lw r7,r31,$204
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$200
; lib_sinint.ml@40:0;40:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@40:7;40:9 lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$196
; lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$192
; lib_sinint.ml@41:14;41:40
	lw r5,r31,$620
	lw r6,r31,$196
	lw r7,r31,$192
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$188
; lib_sinint.ml@41:0;41:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@41:7;41:9 lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$184
; lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$180
; lib_sinint.ml@42:14;42:40
	lw r5,r31,$620
	lw r6,r31,$184
	lw r7,r31,$180
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$176
; lib_sinint.ml@42:0;42:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@42:7;42:9 lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$172
; lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$168
; lib_sinint.ml@43:14;43:40
	lw r5,r31,$620
	lw r6,r31,$172
	lw r7,r31,$168
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$164
; lib_sinint.ml@43:0;43:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@43:7;43:9 lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$160
; lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$156
; lib_sinint.ml@44:14;44:40
	lw r5,r31,$620
	lw r6,r31,$160
	lw r7,r31,$156
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$152
; lib_sinint.ml@44:0;44:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@44:7;44:9 lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$148
; lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$144
; lib_sinint.ml@45:14;45:40
	lw r5,r31,$620
	lw r6,r31,$148
	lw r7,r31,$144
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$140
; lib_sinint.ml@45:0;45:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@45:7;45:9 lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$136
; lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$132
; lib_sinint.ml@46:14;46:40
	lw r5,r31,$620
	lw r6,r31,$136
	lw r7,r31,$132
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$128
; lib_sinint.ml@46:0;46:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@46:7;46:9 lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$124
; lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$120
; lib_sinint.ml@47:14;47:40
	lw r5,r31,$620
	lw r6,r31,$124
	lw r7,r31,$120
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$116
; lib_sinint.ml@47:0;47:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@47:7;47:9 lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$112
; lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$108
; lib_sinint.ml@48:14;48:40
	lw r5,r31,$620
	lw r6,r31,$112
	lw r7,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$104
; lib_sinint.ml@48:0;48:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@48:7;48:9 lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$100
; lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$96
; lib_sinint.ml@49:14;49:40
	lw r5,r31,$620
	lw r6,r31,$100
	lw r7,r31,$96
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$92
; lib_sinint.ml@49:0;49:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@49:7;49:9 lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$88
; lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$84
; lib_sinint.ml@50:14;50:40
	lw r5,r31,$620
	lw r6,r31,$88
	lw r7,r31,$84
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$80
; lib_sinint.ml@50:0;50:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@50:7;50:9 lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$76
; lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$72
; lib_sinint.ml@51:14;51:40
	lw r5,r31,$620
	lw r6,r31,$76
	lw r7,r31,$72
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$68
; lib_sinint.ml@51:0;51:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@51:7;51:9 lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$64
; lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$60
; lib_sinint.ml@52:14;52:40
	lw r5,r31,$620
	lw r6,r31,$64
	lw r7,r31,$60
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$56
; lib_sinint.ml@52:0;52:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@52:7;52:9 lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$52
; lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$48
; lib_sinint.ml@53:14;53:40
	lw r5,r31,$620
	lw r6,r31,$52
	lw r7,r31,$48
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$44
; lib_sinint.ml@53:0;53:40 ::= OArrWrite lib_sinint.ml@2:12;2:31 lib_sinint.ml@53:7;53:9 lib_sinint.ml@53:14;53:40
	li r5,$0
	sw r5,r31,$40
; fib_io.ml@12:8;12:9
	li r5,$0
	sw r5,r31,$36
; fib_io.ml@12:10;12:11
	li r5,$1
	sw r5,r31,$32
; fib_io.ml@12:12;12:13
	li r5,$1
	sw r5,r31,$28
; fib_io.ml@2:12;2:13
	lw r5,r31,$28
	lw r6,r31,$40
	slt r5,r5,r6
	bne r0,r5,@cfg_label_1588
	j @cfg_label_1587
	j @cfg_label_1589
@cfg_label_1588:
	li r5,$10
	sw r5,r31,$24
; fib_io.ml@6:17;6:19
	lw r5,r31,$40
	lw r6,r31,$24
	slt r5,r5,r6
	bne r0,r5,@cfg_label_1583
	j @cfg_label_1582
	j @cfg_label_1584
	j @cfg_label_1585
@cfg_label_1584:
@cfg_label_1582:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$36
; fib_io.ml@12:10;12:11 ::<= fib_io.ml@12:10;12:11
	jal @a_870print_int
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; @0:-1;0:-1 fib_io.ml@3:9;3:18
	hlt
@cfg_label_1585:
@cfg_label_1583:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$36
; fib_io.ml@12:10;12:11 ::<= fib_io.ml@12:10;12:11
	jal @a_870print_int
	sw r9,r31,$20
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@7:13;7:24 fib_io.ml@3:9;3:18
	lw r5,r31,$40
	addi r5,r5,$1
	sw r5,r31,$16
; fib_io.ml@8:17;8:22 ::= Oiadd[1] fib_io.ml@12:8;12:9
	li r5,$1
	sw r5,r31,$12
; fib_io.ml@8:27;8:32
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	lw r10,r31,$16
; fib_io.ml@8:17;8:22 ::<= fib_io.ml@8:17;8:22
	lw r11,r31,$32
; fib_io.ml@12:12;12:13 ::<= fib_io.ml@12:12;12:13
	lw r12,r31,$12
; fib_io.ml@8:27;8:32 ::<= fib_io.ml@8:27;8:32
	jal @a_872fib
	mov r8,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
; @0:-1;0:-1 fib_io.ml@4:8;4:11
	hlt
@cfg_label_1589:
@cfg_label_1587:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$36
; fib_io.ml@12:10;12:11 ::<= fib_io.ml@12:10;12:11
	jal @a_870print_int
	sw r9,r31,$8
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
; fib_io.ml@3:9;3:20 fib_io.ml@3:9;3:18
	lw r5,r31,$40
	addi r5,r5,$1
	sw r5,r31,$4
; fib_io.ml@4:13;4:18 ::= Oiadd[1] fib_io.ml@12:8;12:9
	li r5,$1
	sw r5,r31,$0
; fib_io.ml@4:23;4:28
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	lw r10,r31,$4
; fib_io.ml@4:13;4:18 ::<= fib_io.ml@4:13;4:18
	lw r11,r31,$32
; fib_io.ml@12:12;12:13 ::<= fib_io.ml@12:12;12:13
	lw r12,r31,$0
; fib_io.ml@4:23;4:28 ::<= fib_io.ml@4:23;4:28
	jal @a_872fib
	mov r8,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
; @0:-1;0:-1 fib_io.ml@4:8;4:11
	hlt
