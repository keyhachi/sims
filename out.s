

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

@a_15314internal_sin:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$108
	li r5,$24
	sw r5,r2,$-104
; lib_tortesia.ml@79:13;79:15
	j @cfg_label_25880
	li r5,$24
	sw r5,r2,$-104
; lib_tortesia.ml@79:13;79:15
	j @cfg_label_25880
@cfg_label_25880:
	lw r5,r2,$16
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_25877
	j @cfg_label_25876
	j @cfg_label_25878
	j @cfg_label_25879
@cfg_label_25879:
@cfg_label_25877:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_25875
@cfg_label_25875:
	fld f1,r2,$20
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_25965
	li r5,$1
	j @emit_label_25966
@emit_label_25965:
	li r5,$0
@emit_label_25966:
	sw r5,r2,$-88
; lib_tortesia.ml@85:12;85:24 ::= Ogeq lib_tortesia.ml@85:12;85:17 lib_tortesia.ml@85:21;85:24
	j @cfg_label_25874
@cfg_label_25874:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@85:12;85:24
	j @cfg_label_25873
@cfg_label_25873:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_25870
	j @cfg_label_25869
	j @cfg_label_25871
	j @cfg_label_25872
@cfg_label_25872:
@cfg_label_25870:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@88:36;88:45 ::= OArrRead lib_tortesia.ml@88:36;88:41 lib_tortesia.ml@88:43;88:44
	j @cfg_label_25868
@cfg_label_25868:
	fld f1,r2,$12
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-36
; lib_tortesia.ml@88:31;88:45 ::= Ofmul lib_tortesia.ml@88:31;88:32 lib_tortesia.ml@88:36;88:45
	j @cfg_label_25867
@cfg_label_25867:
	fld f1,r2,$8
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-16
; lib_tortesia.ml@88:26;88:45 ::= Ofadd lib_tortesia.ml@88:26;88:27 lib_tortesia.ml@88:31;88:45
	j @cfg_label_25866
@cfg_label_25866:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@88:58;88:67 ::= OArrRead lib_tortesia.ml@88:58;88:63 lib_tortesia.ml@88:65;88:66
	j @cfg_label_25865
@cfg_label_25865:
	fld f1,r2,$8
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@88:53;88:67 ::= Ofmul lib_tortesia.ml@88:53;88:54 lib_tortesia.ml@88:58;88:67
	j @cfg_label_25864
@cfg_label_25864:
	fld f1,r2,$12
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-12
; lib_tortesia.ml@88:48;88:67 ::= Ofsub lib_tortesia.ml@88:48;88:49 lib_tortesia.ml@88:53;88:67
	j @cfg_label_25863
@cfg_label_25863:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@88:74;88:75
	j @cfg_label_25862
@cfg_label_25862:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-8
; lib_tortesia.ml@88:70;88:75 ::= Oadd lib_tortesia.ml@88:70;88:71 lib_tortesia.ml@88:74;88:75
	j @cfg_label_25861
@cfg_label_25861:
	lw r6,r2,$16
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; lib_tortesia.ml@88:87;88:96 ::= OArrRead lib_tortesia.ml@88:87;88:92 lib_tortesia.ml@88:94;88:95
	j @cfg_label_25860
@cfg_label_25860:
	fld f1,r2,$20
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@88:78;88:96 ::= Ofadd lib_tortesia.ml@88:78;88:83 lib_tortesia.ml@88:87;88:96
	j @cfg_label_25859
@cfg_label_25859:
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
	jal @a_15314internal_sin
	sw r5,r2,$-108
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@79:6;88:110 lib_tortesia.ml@88:12;88:24
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_25871:
@cfg_label_25869:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; lib_tortesia.ml@86:36;86:45 ::= OArrRead lib_tortesia.ml@86:36;86:41 lib_tortesia.ml@86:43;86:44
	j @cfg_label_25858
@cfg_label_25858:
	fld f1,r2,$12
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-76
; lib_tortesia.ml@86:31;86:45 ::= Ofmul lib_tortesia.ml@86:31;86:32 lib_tortesia.ml@86:36;86:45
	j @cfg_label_25857
@cfg_label_25857:
	fld f1,r2,$8
	fld f2,r2,$-76
	fsub f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@86:26;86:45 ::= Ofsub lib_tortesia.ml@86:26;86:27 lib_tortesia.ml@86:31;86:45
	j @cfg_label_25856
@cfg_label_25856:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; lib_tortesia.ml@86:58;86:67 ::= OArrRead lib_tortesia.ml@86:58;86:63 lib_tortesia.ml@86:65;86:66
	j @cfg_label_25855
@cfg_label_25855:
	fld f1,r2,$8
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@86:53;86:67 ::= Ofmul lib_tortesia.ml@86:53;86:54 lib_tortesia.ml@86:58;86:67
	j @cfg_label_25854
@cfg_label_25854:
	fld f1,r2,$12
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@86:48;86:67 ::= Ofadd lib_tortesia.ml@86:48;86:49 lib_tortesia.ml@86:53;86:67
	j @cfg_label_25853
@cfg_label_25853:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@86:74;86:75
	j @cfg_label_25852
@cfg_label_25852:
	lw r6,r2,$-64
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-48
; lib_tortesia.ml@86:70;86:75 ::= Oadd lib_tortesia.ml@86:70;86:71 lib_tortesia.ml@86:74;86:75
	j @cfg_label_25851
@cfg_label_25851:
	lw r6,r2,$16
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; lib_tortesia.ml@86:87;86:96 ::= OArrRead lib_tortesia.ml@86:87;86:92 lib_tortesia.ml@86:94;86:95
	j @cfg_label_25850
@cfg_label_25850:
	fld f1,r2,$20
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; lib_tortesia.ml@86:78;86:96 ::= Ofsub lib_tortesia.ml@86:78;86:83 lib_tortesia.ml@86:87;86:96
	j @cfg_label_25849
@cfg_label_25849:
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
	jal @a_15314internal_sin
	sw r5,r2,$-108
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@79:6;88:110 lib_tortesia.ml@86:12;86:24
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_25878:
@cfg_label_25876:
	li r5,$1
	sw r5,r2,$-100
; lib_tortesia.ml@80:13;80:25
	j @cfg_label_25848
@cfg_label_25848:
	lw r5,r2,$24
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_25845
	j @cfg_label_25844
	j @cfg_label_25846
	j @cfg_label_25847
@cfg_label_25847:
@cfg_label_25845:
	lw r5,r2,$12
	sw r5,r2,$-108
; lib_tortesia.ml@79:6;88:110 ::<= lib_tortesia.ml@83:12;83:13
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_25846:
@cfg_label_25844:
	fmovi f1,$-1.000000
	fst f1,r2,$-96
	j @cfg_label_25843
@cfg_label_25843:
	fld f1,r2,$-96
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-108
; lib_tortesia.ml@79:6;88:110 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@a_8598sin:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	fld f1,r2,$8
	fld f2,r31,$508
	fdiv f1,f1,f2
	fst f1,r2,$-116
; lib_tortesia.ml@90:28;90:35 ::= Ofdiv lib_tortesia.ml@90:28;90:29 lib_tortesia.ml@90:33;90:35
	j @cfg_label_25842
	fld f1,r2,$8
	fld f2,r31,$508
	fdiv f1,f1,f2
	fst f1,r2,$-116
; lib_tortesia.ml@90:28;90:35 ::= Ofdiv lib_tortesia.ml@90:28;90:29 lib_tortesia.ml@90:33;90:35
	j @cfg_label_25842
@cfg_label_25842:
	fmovi f1,$0.500000
	fst f1,r2,$-112
	j @cfg_label_25841
@cfg_label_25841:
	fld f1,r2,$-116
	fld f2,r2,$-112
	fadd f1,f1,f2
	fst f1,r2,$-92
; lib_tortesia.ml@90:28;90:42 ::= Ofadd lib_tortesia.ml@90:28;90:35 lib_tortesia.ml@90:39;90:42
	j @cfg_label_25840
@cfg_label_25840:
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_25839
@cfg_label_25839:
	fld f1,r2,$-92
	fld f2,r2,$-108
	flt f1,f2
	bft @emit_label_25967
	li r5,$0
	j @emit_label_25968
@emit_label_25967:
	li r5,$1
@emit_label_25968:
	sw r5,r2,$-104
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_25838
@cfg_label_25838:
	li r5,$1
	sw r5,r2,$-100
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_25837
@cfg_label_25837:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_25806
	j @cfg_label_25805
	j @cfg_label_25807
	j @cfg_label_25808
@cfg_label_25808:
@cfg_label_25806:
	lw r5,r2,$-92
	sw r5,r2,$-88
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_25836
@cfg_label_25807:
@cfg_label_25805:
	fmovi f1,$1.000000
	fst f1,r2,$-96
	j @cfg_label_25804
@cfg_label_25804:
	fld f1,r2,$-92
	fld f2,r2,$-96
	fsub f1,f1,f2
	fst f1,r2,$-88
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_25835
@cfg_label_25836:
@cfg_label_25835:
	push r4
	lw r5,r2,$-88
	push r5
	jal int_of_float
	sw r5,r2,$-84
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_25834
@cfg_label_25834:
	push r4
	lw r5,r2,$-84
	push r5
	jal float_of_int
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@90:21;90:43 lib_tortesia.ml@11:18;11:30
	j @cfg_label_25833
@cfg_label_25833:
	fmovi f1,$0.607253
	fst f1,r2,$-20
	j @cfg_label_25832
@cfg_label_25832:
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_25831
@cfg_label_25831:
	li r5,$0
	sw r5,r2,$-12
; lib_tortesia.ml@92:53;92:54
	j @cfg_label_25830
@cfg_label_25830:
	fld f1,r2,$-36
	fld f2,r31,$508
	fmul f1,f1,f2
	fst f1,r2,$-80
; lib_tortesia.ml@92:61;92:75 ::= Ofmul lib_tortesia.ml@92:61;92:69 lib_tortesia.ml@92:73;92:75
	j @cfg_label_25829
@cfg_label_25829:
	fld f1,r2,$8
	fld f2,r2,$-80
	fsub f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@92:56;92:75 ::= Ofsub lib_tortesia.ml@92:56;92:57 lib_tortesia.ml@92:61;92:75
	j @cfg_label_25828
@cfg_label_25828:
	fmovi f1,$2.000000
	fst f1,r2,$-76
	j @cfg_label_25827
@cfg_label_25827:
	fld f1,r2,$-36
	fld f2,r2,$-76
	fdiv f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@92:97;92:112 ::= Ofdiv lib_tortesia.ml@92:97;92:105 lib_tortesia.ml@92:109;92:112
	j @cfg_label_25826
@cfg_label_25826:
	fmovi f1,$0.000000
	fst f1,r2,$-72
	j @cfg_label_25825
@cfg_label_25825:
	fld f1,r2,$-56
	fld f2,r2,$-72
	flt f1,f2
	bft @emit_label_25969
	li r5,$0
	j @emit_label_25970
@emit_label_25969:
	li r5,$1
@emit_label_25970:
	sw r5,r2,$-68
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_25824
@cfg_label_25824:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_25823
@cfg_label_25823:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_25811
	j @cfg_label_25810
	j @cfg_label_25812
	j @cfg_label_25813
@cfg_label_25813:
@cfg_label_25811:
	lw r5,r2,$-56
	sw r5,r2,$-52
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_25822
@cfg_label_25812:
@cfg_label_25810:
	fmovi f1,$1.000000
	fst f1,r2,$-60
	j @cfg_label_25809
@cfg_label_25809:
	fld f1,r2,$-56
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_25821
@cfg_label_25822:
@cfg_label_25821:
	push r4
	lw r5,r2,$-52
	push r5
	jal int_of_float
	sw r5,r2,$-48
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_25820
@cfg_label_25820:
	push r4
	lw r5,r2,$-48
	push r5
	jal float_of_int
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@92:90;92:113 lib_tortesia.ml@11:18;11:30
	j @cfg_label_25819
@cfg_label_25819:
	fmovi f1,$2.000000
	fst f1,r2,$-40
	j @cfg_label_25818
@cfg_label_25818:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-32
; lib_tortesia.ml@92:90;92:120 ::= Ofmul lib_tortesia.ml@92:90;92:113 lib_tortesia.ml@92:117;92:120
	j @cfg_label_25817
@cfg_label_25817:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fsub f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@92:78;92:120 ::= Ofsub lib_tortesia.ml@92:78;92:86 lib_tortesia.ml@92:90;92:120
	j @cfg_label_25816
@cfg_label_25816:
	fmovi f1,$1.000000
	fst f1,r2,$-24
	j @cfg_label_25815
@cfg_label_25815:
	fld f1,r2,$-28
	fld f2,r2,$-24
	feq f1,f2
	bft @emit_label_25971
	li r5,$0
	j @emit_label_25972
@emit_label_25971:
	li r5,$1
@emit_label_25972:
	sw r5,r2,$-4
; lib_tortesia.ml@92:78;92:126 ::= Oeq lib_tortesia.ml@92:78;92:120 lib_tortesia.ml@92:123;92:126
	j @cfg_label_25814
@cfg_label_25814:
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
	jal @a_15314internal_sin
	sw r5,r2,$-120
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@78:3;92:127 lib_tortesia.ml@92:9;92:21
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@a_15223internal_cos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$108
	li r5,$24
	sw r5,r2,$-104
; lib_tortesia.ml@97:13;97:15
	j @cfg_label_25803
	li r5,$24
	sw r5,r2,$-104
; lib_tortesia.ml@97:13;97:15
	j @cfg_label_25803
@cfg_label_25803:
	lw r5,r2,$16
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_25800
	j @cfg_label_25799
	j @cfg_label_25801
	j @cfg_label_25802
@cfg_label_25802:
@cfg_label_25800:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_25798
@cfg_label_25798:
	fld f1,r2,$20
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_25973
	li r5,$1
	j @emit_label_25974
@emit_label_25973:
	li r5,$0
@emit_label_25974:
	sw r5,r2,$-88
; lib_tortesia.ml@103:12;103:24 ::= Ogeq lib_tortesia.ml@103:12;103:17 lib_tortesia.ml@103:21;103:24
	j @cfg_label_25797
@cfg_label_25797:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@103:12;103:24
	j @cfg_label_25796
@cfg_label_25796:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_25793
	j @cfg_label_25792
	j @cfg_label_25794
	j @cfg_label_25795
@cfg_label_25795:
@cfg_label_25793:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@106:36;106:45 ::= OArrRead lib_tortesia.ml@106:36;106:41 lib_tortesia.ml@106:43;106:44
	j @cfg_label_25791
@cfg_label_25791:
	fld f1,r2,$12
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-36
; lib_tortesia.ml@106:31;106:45 ::= Ofmul lib_tortesia.ml@106:31;106:32 lib_tortesia.ml@106:36;106:45
	j @cfg_label_25790
@cfg_label_25790:
	fld f1,r2,$8
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-16
; lib_tortesia.ml@106:26;106:45 ::= Ofadd lib_tortesia.ml@106:26;106:27 lib_tortesia.ml@106:31;106:45
	j @cfg_label_25789
@cfg_label_25789:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@106:58;106:67 ::= OArrRead lib_tortesia.ml@106:58;106:63 lib_tortesia.ml@106:65;106:66
	j @cfg_label_25788
@cfg_label_25788:
	fld f1,r2,$8
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@106:53;106:67 ::= Ofmul lib_tortesia.ml@106:53;106:54 lib_tortesia.ml@106:58;106:67
	j @cfg_label_25787
@cfg_label_25787:
	fld f1,r2,$12
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-12
; lib_tortesia.ml@106:48;106:67 ::= Ofsub lib_tortesia.ml@106:48;106:49 lib_tortesia.ml@106:53;106:67
	j @cfg_label_25786
@cfg_label_25786:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@106:74;106:75
	j @cfg_label_25785
@cfg_label_25785:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-8
; lib_tortesia.ml@106:70;106:75 ::= Oadd lib_tortesia.ml@106:70;106:71 lib_tortesia.ml@106:74;106:75
	j @cfg_label_25784
@cfg_label_25784:
	lw r6,r2,$16
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; lib_tortesia.ml@106:87;106:96 ::= OArrRead lib_tortesia.ml@106:87;106:92 lib_tortesia.ml@106:94;106:95
	j @cfg_label_25783
@cfg_label_25783:
	fld f1,r2,$20
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@106:78;106:96 ::= Ofadd lib_tortesia.ml@106:78;106:83 lib_tortesia.ml@106:87;106:96
	j @cfg_label_25782
@cfg_label_25782:
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
	jal @a_15223internal_cos
	sw r5,r2,$-108
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@97:6;106:110 lib_tortesia.ml@106:12;106:24
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_25794:
@cfg_label_25792:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; lib_tortesia.ml@104:36;104:45 ::= OArrRead lib_tortesia.ml@104:36;104:41 lib_tortesia.ml@104:43;104:44
	j @cfg_label_25781
@cfg_label_25781:
	fld f1,r2,$12
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-76
; lib_tortesia.ml@104:31;104:45 ::= Ofmul lib_tortesia.ml@104:31;104:32 lib_tortesia.ml@104:36;104:45
	j @cfg_label_25780
@cfg_label_25780:
	fld f1,r2,$8
	fld f2,r2,$-76
	fsub f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@104:26;104:45 ::= Ofsub lib_tortesia.ml@104:26;104:27 lib_tortesia.ml@104:31;104:45
	j @cfg_label_25779
@cfg_label_25779:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; lib_tortesia.ml@104:58;104:67 ::= OArrRead lib_tortesia.ml@104:58;104:63 lib_tortesia.ml@104:65;104:66
	j @cfg_label_25778
@cfg_label_25778:
	fld f1,r2,$8
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@104:53;104:67 ::= Ofmul lib_tortesia.ml@104:53;104:54 lib_tortesia.ml@104:58;104:67
	j @cfg_label_25777
@cfg_label_25777:
	fld f1,r2,$12
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@104:48;104:67 ::= Ofadd lib_tortesia.ml@104:48;104:49 lib_tortesia.ml@104:53;104:67
	j @cfg_label_25776
@cfg_label_25776:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@104:74;104:75
	j @cfg_label_25775
@cfg_label_25775:
	lw r6,r2,$-64
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-48
; lib_tortesia.ml@104:70;104:75 ::= Oadd lib_tortesia.ml@104:70;104:71 lib_tortesia.ml@104:74;104:75
	j @cfg_label_25774
@cfg_label_25774:
	lw r6,r2,$16
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; lib_tortesia.ml@104:87;104:96 ::= OArrRead lib_tortesia.ml@104:87;104:92 lib_tortesia.ml@104:94;104:95
	j @cfg_label_25773
@cfg_label_25773:
	fld f1,r2,$20
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; lib_tortesia.ml@104:78;104:96 ::= Ofsub lib_tortesia.ml@104:78;104:83 lib_tortesia.ml@104:87;104:96
	j @cfg_label_25772
@cfg_label_25772:
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
	jal @a_15223internal_cos
	sw r5,r2,$-108
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@97:6;106:110 lib_tortesia.ml@104:12;104:24
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_25801:
@cfg_label_25799:
	li r5,$1
	sw r5,r2,$-100
; lib_tortesia.ml@98:13;98:25
	j @cfg_label_25771
@cfg_label_25771:
	lw r5,r2,$24
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_25768
	j @cfg_label_25767
	j @cfg_label_25769
	j @cfg_label_25770
@cfg_label_25770:
@cfg_label_25768:
	lw r5,r2,$8
	sw r5,r2,$-108
; lib_tortesia.ml@97:6;106:110 ::<= lib_tortesia.ml@101:12;101:13
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@cfg_label_25769:
@cfg_label_25767:
	fmovi f1,$-1.000000
	fst f1,r2,$-96
	j @cfg_label_25766
@cfg_label_25766:
	fld f1,r2,$-96
	fld f2,r2,$8
	fmul f1,f1,f2
	fst f1,r2,$-108
; lib_tortesia.ml@97:6;106:110 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@a_8600cos:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	fld f1,r2,$8
	fld f2,r31,$508
	fdiv f1,f1,f2
	fst f1,r2,$-116
; lib_tortesia.ml@108:28;108:35 ::= Ofdiv lib_tortesia.ml@108:28;108:29 lib_tortesia.ml@108:33;108:35
	j @cfg_label_25765
	fld f1,r2,$8
	fld f2,r31,$508
	fdiv f1,f1,f2
	fst f1,r2,$-116
; lib_tortesia.ml@108:28;108:35 ::= Ofdiv lib_tortesia.ml@108:28;108:29 lib_tortesia.ml@108:33;108:35
	j @cfg_label_25765
@cfg_label_25765:
	fmovi f1,$0.500000
	fst f1,r2,$-112
	j @cfg_label_25764
@cfg_label_25764:
	fld f1,r2,$-116
	fld f2,r2,$-112
	fadd f1,f1,f2
	fst f1,r2,$-92
; lib_tortesia.ml@108:28;108:42 ::= Ofadd lib_tortesia.ml@108:28;108:35 lib_tortesia.ml@108:39;108:42
	j @cfg_label_25763
@cfg_label_25763:
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_25762
@cfg_label_25762:
	fld f1,r2,$-92
	fld f2,r2,$-108
	flt f1,f2
	bft @emit_label_25975
	li r5,$0
	j @emit_label_25976
@emit_label_25975:
	li r5,$1
@emit_label_25976:
	sw r5,r2,$-104
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_25761
@cfg_label_25761:
	li r5,$1
	sw r5,r2,$-100
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_25760
@cfg_label_25760:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_25729
	j @cfg_label_25728
	j @cfg_label_25730
	j @cfg_label_25731
@cfg_label_25731:
@cfg_label_25729:
	lw r5,r2,$-92
	sw r5,r2,$-88
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_25759
@cfg_label_25730:
@cfg_label_25728:
	fmovi f1,$1.000000
	fst f1,r2,$-96
	j @cfg_label_25727
@cfg_label_25727:
	fld f1,r2,$-92
	fld f2,r2,$-96
	fsub f1,f1,f2
	fst f1,r2,$-88
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_25758
@cfg_label_25759:
@cfg_label_25758:
	push r4
	lw r5,r2,$-88
	push r5
	jal int_of_float
	sw r5,r2,$-84
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_25757
@cfg_label_25757:
	push r4
	lw r5,r2,$-84
	push r5
	jal float_of_int
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@108:21;108:43 lib_tortesia.ml@11:18;11:30
	j @cfg_label_25756
@cfg_label_25756:
	fmovi f1,$0.607253
	fst f1,r2,$-20
	j @cfg_label_25755
@cfg_label_25755:
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_25754
@cfg_label_25754:
	li r5,$0
	sw r5,r2,$-12
; lib_tortesia.ml@110:53;110:54
	j @cfg_label_25753
@cfg_label_25753:
	fld f1,r2,$-36
	fld f2,r31,$508
	fmul f1,f1,f2
	fst f1,r2,$-80
; lib_tortesia.ml@110:61;110:75 ::= Ofmul lib_tortesia.ml@110:61;110:69 lib_tortesia.ml@110:73;110:75
	j @cfg_label_25752
@cfg_label_25752:
	fld f1,r2,$8
	fld f2,r2,$-80
	fsub f1,f1,f2
	fst f1,r2,$-8
; lib_tortesia.ml@110:56;110:75 ::= Ofsub lib_tortesia.ml@110:56;110:57 lib_tortesia.ml@110:61;110:75
	j @cfg_label_25751
@cfg_label_25751:
	fmovi f1,$2.000000
	fst f1,r2,$-76
	j @cfg_label_25750
@cfg_label_25750:
	fld f1,r2,$-36
	fld f2,r2,$-76
	fdiv f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@110:97;110:112 ::= Ofdiv lib_tortesia.ml@110:97;110:105 lib_tortesia.ml@110:109;110:112
	j @cfg_label_25749
@cfg_label_25749:
	fmovi f1,$0.000000
	fst f1,r2,$-72
	j @cfg_label_25748
@cfg_label_25748:
	fld f1,r2,$-56
	fld f2,r2,$-72
	flt f1,f2
	bft @emit_label_25977
	li r5,$0
	j @emit_label_25978
@emit_label_25977:
	li r5,$1
@emit_label_25978:
	sw r5,r2,$-68
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_25747
@cfg_label_25747:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_25746
@cfg_label_25746:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_25734
	j @cfg_label_25733
	j @cfg_label_25735
	j @cfg_label_25736
@cfg_label_25736:
@cfg_label_25734:
	lw r5,r2,$-56
	sw r5,r2,$-52
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_25745
@cfg_label_25735:
@cfg_label_25733:
	fmovi f1,$1.000000
	fst f1,r2,$-60
	j @cfg_label_25732
@cfg_label_25732:
	fld f1,r2,$-56
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_25744
@cfg_label_25745:
@cfg_label_25744:
	push r4
	lw r5,r2,$-52
	push r5
	jal int_of_float
	sw r5,r2,$-48
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_25743
@cfg_label_25743:
	push r4
	lw r5,r2,$-48
	push r5
	jal float_of_int
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@110:90;110:113 lib_tortesia.ml@11:18;11:30
	j @cfg_label_25742
@cfg_label_25742:
	fmovi f1,$2.000000
	fst f1,r2,$-40
	j @cfg_label_25741
@cfg_label_25741:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-32
; lib_tortesia.ml@110:90;110:120 ::= Ofmul lib_tortesia.ml@110:90;110:113 lib_tortesia.ml@110:117;110:120
	j @cfg_label_25740
@cfg_label_25740:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fsub f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@110:78;110:120 ::= Ofsub lib_tortesia.ml@110:78;110:86 lib_tortesia.ml@110:90;110:120
	j @cfg_label_25739
@cfg_label_25739:
	fmovi f1,$1.000000
	fst f1,r2,$-24
	j @cfg_label_25738
@cfg_label_25738:
	fld f1,r2,$-28
	fld f2,r2,$-24
	feq f1,f2
	bft @emit_label_25979
	li r5,$0
	j @emit_label_25980
@emit_label_25979:
	li r5,$1
@emit_label_25980:
	sw r5,r2,$-4
; lib_tortesia.ml@110:78;110:126 ::= Oeq lib_tortesia.ml@110:78;110:120 lib_tortesia.ml@110:123;110:126
	j @cfg_label_25737
@cfg_label_25737:
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
	jal @a_15223internal_cos
	sw r5,r2,$-120
	addi r1,r1,$20
	pop r4
; lib_tortesia.ml@96:3;110:127 lib_tortesia.ml@110:9;110:21
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@a_15161internal_atan:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$100
	li r5,$24
	sw r5,r2,$-96
; lib_tortesia.ml@114:10;114:12
	j @cfg_label_25726
	li r5,$24
	sw r5,r2,$-96
; lib_tortesia.ml@114:10;114:12
	j @cfg_label_25726
@cfg_label_25726:
	lw r5,r2,$16
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_25723
	j @cfg_label_25722
	j @cfg_label_25724
	j @cfg_label_25725
@cfg_label_25724:
@cfg_label_25722:
	lw r5,r2,$20
	sw r5,r2,$-100
; lib_tortesia.ml@114:3;120:95 ::<= lib_tortesia.ml@115:6;115:11
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@cfg_label_25725:
@cfg_label_25723:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_25721
@cfg_label_25721:
	fld f1,r2,$12
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_25981
	li r5,$0
	j @emit_label_25982
@emit_label_25981:
	li r5,$1
@emit_label_25982:
	sw r5,r2,$-88
; lib_tortesia.ml@117:9;117:16 ::= Olt lib_tortesia.ml@117:9;117:10 lib_tortesia.ml@117:13;117:16
	j @cfg_label_25720
@cfg_label_25720:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@117:9;117:16
	j @cfg_label_25719
@cfg_label_25719:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_25716
	j @cfg_label_25715
	j @cfg_label_25717
	j @cfg_label_25718
@cfg_label_25718:
@cfg_label_25716:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@120:34;120:43 ::= OArrRead lib_tortesia.ml@120:34;120:39 lib_tortesia.ml@120:41;120:42
	j @cfg_label_25714
@cfg_label_25714:
	fld f1,r2,$12
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-36
; lib_tortesia.ml@120:29;120:43 ::= Ofmul lib_tortesia.ml@120:29;120:30 lib_tortesia.ml@120:34;120:43
	j @cfg_label_25713
@cfg_label_25713:
	fld f1,r2,$8
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-16
; lib_tortesia.ml@120:24;120:43 ::= Ofadd lib_tortesia.ml@120:24;120:25 lib_tortesia.ml@120:29;120:43
	j @cfg_label_25712
@cfg_label_25712:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@120:56;120:65 ::= OArrRead lib_tortesia.ml@120:56;120:61 lib_tortesia.ml@120:63;120:64
	j @cfg_label_25711
@cfg_label_25711:
	fld f1,r2,$8
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; lib_tortesia.ml@120:51;120:65 ::= Ofmul lib_tortesia.ml@120:51;120:52 lib_tortesia.ml@120:56;120:65
	j @cfg_label_25710
@cfg_label_25710:
	fld f1,r2,$12
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-12
; lib_tortesia.ml@120:46;120:65 ::= Ofsub lib_tortesia.ml@120:46;120:47 lib_tortesia.ml@120:51;120:65
	j @cfg_label_25709
@cfg_label_25709:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@120:72;120:73
	j @cfg_label_25708
@cfg_label_25708:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-8
; lib_tortesia.ml@120:68;120:73 ::= Oadd lib_tortesia.ml@120:68;120:69 lib_tortesia.ml@120:72;120:73
	j @cfg_label_25707
@cfg_label_25707:
	lw r6,r2,$16
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; lib_tortesia.ml@120:85;120:94 ::= OArrRead lib_tortesia.ml@120:85;120:90 lib_tortesia.ml@120:92;120:93
	j @cfg_label_25706
@cfg_label_25706:
	fld f1,r2,$20
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-4
; lib_tortesia.ml@120:76;120:94 ::= Ofadd lib_tortesia.ml@120:76;120:81 lib_tortesia.ml@120:85;120:94
	j @cfg_label_25705
@cfg_label_25705:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	jal @a_15161internal_atan
	sw r5,r2,$-100
	addi r1,r1,$16
	pop r4
; lib_tortesia.ml@114:3;120:95 lib_tortesia.ml@120:9;120:22
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@cfg_label_25717:
@cfg_label_25715:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; lib_tortesia.ml@118:34;118:43 ::= OArrRead lib_tortesia.ml@118:34;118:39 lib_tortesia.ml@118:41;118:42
	j @cfg_label_25704
@cfg_label_25704:
	fld f1,r2,$12
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-76
; lib_tortesia.ml@118:29;118:43 ::= Ofmul lib_tortesia.ml@118:29;118:30 lib_tortesia.ml@118:34;118:43
	j @cfg_label_25703
@cfg_label_25703:
	fld f1,r2,$8
	fld f2,r2,$-76
	fsub f1,f1,f2
	fst f1,r2,$-56
; lib_tortesia.ml@118:24;118:43 ::= Ofsub lib_tortesia.ml@118:24;118:25 lib_tortesia.ml@118:29;118:43
	j @cfg_label_25702
@cfg_label_25702:
	lw r6,r2,$16
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; lib_tortesia.ml@118:56;118:65 ::= OArrRead lib_tortesia.ml@118:56;118:61 lib_tortesia.ml@118:63;118:64
	j @cfg_label_25701
@cfg_label_25701:
	fld f1,r2,$8
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; lib_tortesia.ml@118:51;118:65 ::= Ofmul lib_tortesia.ml@118:51;118:52 lib_tortesia.ml@118:56;118:65
	j @cfg_label_25700
@cfg_label_25700:
	fld f1,r2,$12
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-52
; lib_tortesia.ml@118:46;118:65 ::= Ofadd lib_tortesia.ml@118:46;118:47 lib_tortesia.ml@118:51;118:65
	j @cfg_label_25699
@cfg_label_25699:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@118:72;118:73
	j @cfg_label_25698
@cfg_label_25698:
	lw r6,r2,$-64
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-48
; lib_tortesia.ml@118:68;118:73 ::= Oadd lib_tortesia.ml@118:68;118:69 lib_tortesia.ml@118:72;118:73
	j @cfg_label_25697
@cfg_label_25697:
	lw r6,r2,$16
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; lib_tortesia.ml@118:85;118:94 ::= OArrRead lib_tortesia.ml@118:85;118:90 lib_tortesia.ml@118:92;118:93
	j @cfg_label_25696
@cfg_label_25696:
	fld f1,r2,$20
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; lib_tortesia.ml@118:76;118:94 ::= Ofsub lib_tortesia.ml@118:76;118:81 lib_tortesia.ml@118:85;118:94
	j @cfg_label_25695
@cfg_label_25695:
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_15161internal_atan
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
@a_8602atan:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$16
	fmovi f1,$1.000000
	fst f1,r2,$-12
	j @cfg_label_25694
	fmovi f1,$1.000000
	fst f1,r2,$-12
	j @cfg_label_25694
@cfg_label_25694:
	li r5,$0
	sw r5,r2,$-8
; lib_tortesia.ml@122:23;122:24
	j @cfg_label_25693
@cfg_label_25693:
	fmovi f1,$0.000000
	fst f1,r2,$-4
	j @cfg_label_25692
@cfg_label_25692:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$8
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_15161internal_atan
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
@a_15107print_int_base:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$10
	sw r5,r2,$-60
; lib_tortesia.ml@132:9;132:11
	j @cfg_label_25691
	li r5,$10
	sw r5,r2,$-60
; lib_tortesia.ml@132:9;132:11
	j @cfg_label_25691
@cfg_label_25691:
	lw r6,r2,$-60
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-56
; lib_tortesia.ml@132:5;132:11 ::= Olt lib_tortesia.ml@132:5;132:6 lib_tortesia.ml@132:9;132:11
	j @cfg_label_25690
@cfg_label_25690:
	li r5,$1
	sw r5,r2,$-52
; lib_tortesia.ml@132:5;132:11
	j @cfg_label_25689
@cfg_label_25689:
	lw r5,r2,$-56
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_25686
	j @cfg_label_25685
	j @cfg_label_25687
	j @cfg_label_25688
@cfg_label_25688:
@cfg_label_25686:
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
	j @cfg_label_25684
@cfg_label_25684:
	push r4
	lw r5,r2,$-28
	push r5
	jal @a_15107print_int_base
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@133:4;133:25 lib_tortesia.ml@133:4;133:18
	j @cfg_label_25683
@cfg_label_25683:
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
	j @cfg_label_25682
@cfg_label_25682:
	lw r6,r2,$-24
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-20
; lib_tortesia.ml@134:16;134:27 ::= Osub lib_tortesia.ml@134:16;134:17 lib_tortesia.ml@134:18;134:27
	j @cfg_label_25681
@cfg_label_25681:
	li r5,$48
	sw r5,r2,$-16
; lib_tortesia.ml@134:29;134:31
	j @cfg_label_25680
@cfg_label_25680:
	lw r6,r2,$-16
	lw r5,r2,$-20
	add r5,r5,r6
	sw r5,r2,$-12
; lib_tortesia.ml@134:15;134:31 ::= Oadd lib_tortesia.ml@134:16;134:27 lib_tortesia.ml@134:29;134:31
	j @cfg_label_25679
@cfg_label_25679:
	push r4
	lw r5,r2,$-12
	push r5
	jal print_char
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@134:3;134:32 lib_tortesia.ml@134:3;134:13
	j @cfg_label_25678
@cfg_label_25678:
	lw r5,r2,$-4
	sw r5,r2,$-64
; lib_tortesia.ml@132:2;134:33 ::<= lib_tortesia.ml@134:3;134:32
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_25687:
@cfg_label_25685:
	li r5,$0
	sw r5,r2,$-48
; lib_tortesia.ml@132:21;132:22
	j @cfg_label_25677
@cfg_label_25677:
	lw r6,r2,$8
	lw r5,r2,$-48
	slt r5,r5,r6
	sw r5,r2,$-44
; lib_tortesia.ml@132:21;132:26 ::= Olt lib_tortesia.ml@132:21;132:22 lib_tortesia.ml@132:25;132:26
	j @cfg_label_25676
@cfg_label_25676:
	li r5,$1
	sw r5,r2,$-40
; lib_tortesia.ml@132:21;132:26
	j @cfg_label_25675
@cfg_label_25675:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_25672
	j @cfg_label_25671
	j @cfg_label_25673
	j @cfg_label_25674
@cfg_label_25674:
@cfg_label_25672:
	sw r3,r2,$-64
	addi r3,r3,$0
; lib_tortesia.ml@132:2;134:33
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_25673:
@cfg_label_25671:
	li r5,$48
	sw r5,r2,$-36
; lib_tortesia.ml@132:46;132:48
	j @cfg_label_25670
@cfg_label_25670:
	lw r6,r2,$-36
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-32
; lib_tortesia.ml@132:44;132:48 ::= Oadd lib_tortesia.ml@132:44;132:45 lib_tortesia.ml@132:46;132:48
	j @cfg_label_25669
@cfg_label_25669:
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
@a_8604print_int:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$44
	li r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@136:8;136:9
	j @cfg_label_25668
	li r5,$0
	sw r5,r2,$-40
; lib_tortesia.ml@136:8;136:9
	j @cfg_label_25668
@cfg_label_25668:
	lw r5,r2,$8
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_25665
	j @cfg_label_25664
	j @cfg_label_25666
	j @cfg_label_25667
@cfg_label_25667:
@cfg_label_25665:
	li r5,$0
	sw r5,r2,$-32
; lib_tortesia.ml@137:14;137:15
	j @cfg_label_25663
@cfg_label_25663:
	lw r6,r2,$-32
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-28
; lib_tortesia.ml@137:10;137:15 ::= Olt lib_tortesia.ml@137:10;137:11 lib_tortesia.ml@137:14;137:15
	j @cfg_label_25662
@cfg_label_25662:
	li r5,$1
	sw r5,r2,$-24
; lib_tortesia.ml@137:10;137:15
	j @cfg_label_25661
@cfg_label_25661:
	lw r5,r2,$-28
	lw r6,r2,$-24
	bne r5,r6,@cfg_label_25658
	j @cfg_label_25657
	j @cfg_label_25659
	j @cfg_label_25660
@cfg_label_25660:
@cfg_label_25658:
	push r4
	lw r5,r2,$8
	push r5
	jal @a_15107print_int_base
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@129:1;137:79 lib_tortesia.ml@137:62;137:76
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_25659:
@cfg_label_25657:
	li r5,$45
	sw r5,r2,$-20
; lib_tortesia.ml@137:32;137:34
	j @cfg_label_25656
@cfg_label_25656:
	push r4
	lw r5,r2,$-20
	push r5
	jal print_char
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@137:21;137:34 lib_tortesia.ml@137:21;137:31
	j @cfg_label_25655
@cfg_label_25655:
	li r5,$0
	sw r5,r2,$-16
; lib_tortesia.ml@137:52;137:53
	j @cfg_label_25654
@cfg_label_25654:
	lw r6,r2,$8
	lw r5,r2,$-16
	sub r5,r5,r6
	sw r5,r2,$-12
; lib_tortesia.ml@137:52;137:55 ::= Osub lib_tortesia.ml@137:52;137:53 lib_tortesia.ml@137:54;137:55
	j @cfg_label_25653
@cfg_label_25653:
	push r4
	lw r5,r2,$-12
	push r5
	jal @a_15107print_int_base
	sw r5,r2,$-4
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@137:36;137:56 lib_tortesia.ml@137:36;137:50
	j @cfg_label_25652
@cfg_label_25652:
	lw r5,r2,$-4
	sw r5,r2,$-44
; lib_tortesia.ml@129:1;137:79 ::<= lib_tortesia.ml@137:36;137:56
	lw r5,r2,$-44
	addi r1,r1,$44
	pop r2
	pop r6
	jr r6
@cfg_label_25666:
@cfg_label_25664:
	li r5,$48
	sw r5,r2,$-36
; lib_tortesia.ml@136:26;136:28
	j @cfg_label_25651
@cfg_label_25651:
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
@a_8667vecunit_sgn:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$144
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@91:24;91:25
	j @cfg_label_25650
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@91:24;91:25
	j @cfg_label_25650
@cfg_label_25650:
	lw r6,r2,$-140
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@91:21;91:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@91:21;91:22 ../cpuex2017/raytracer/min-rt.ml@91:24;91:25
	j @cfg_label_25649
@cfg_label_25649:
	fld f1,r2,$-136
	fld f2,r2,$-136
	fmul f1,f1,f2
	fst f1,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:26 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25648
@cfg_label_25648:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@91:38;91:39
	j @cfg_label_25647
@cfg_label_25647:
	lw r6,r2,$-132
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@91:35;91:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@91:35;91:36 ../cpuex2017/raytracer/min-rt.ml@91:38;91:39
	j @cfg_label_25646
@cfg_label_25646:
	fld f1,r2,$-128
	fld f2,r2,$-128
	fmul f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@91:30;91:40 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25645
@cfg_label_25645:
	fld f1,r2,$-124
	fld f2,r2,$-120
	fadd f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@91:16;91:26 ../cpuex2017/raytracer/min-rt.ml@91:30;91:40
	j @cfg_label_25644
@cfg_label_25644:
	li r5,$2
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@91:52;91:53
	j @cfg_label_25643
@cfg_label_25643:
	lw r6,r2,$-116
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@91:49;91:54 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@91:49;91:50 ../cpuex2017/raytracer/min-rt.ml@91:52;91:53
	j @cfg_label_25642
@cfg_label_25642:
	fld f1,r2,$-112
	fld f2,r2,$-112
	fmul f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@91:44;91:54 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25641
@cfg_label_25641:
	fld f1,r2,$-108
	fld f2,r2,$-104
	fadd f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@91:16;91:54 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@91:16;91:40 ../cpuex2017/raytracer/min-rt.ml@91:44;91:54
	j @cfg_label_25640
@cfg_label_25640:
	push r4
	lw r5,r2,$-100
	push r5
	jal sqrt
	sw r5,r2,$-72
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@91:10;91:55 ../cpuex2017/raytracer/min-rt.ml@91:10;91:14
	j @cfg_label_25639
@cfg_label_25639:
	fmovi f1,$0.000000
	fst f1,r2,$-96
	j @cfg_label_25638
@cfg_label_25638:
	fld f1,r2,$-72
	fld f2,r2,$-96
	feq f1,f2
	bft @emit_label_25983
	li r5,$0
	j @emit_label_25984
@emit_label_25983:
	li r5,$1
@emit_label_25984:
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@92:14;92:23 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25637
@cfg_label_25637:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@92:14;92:23
	j @cfg_label_25636
@cfg_label_25636:
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_25614
	j @cfg_label_25613
	j @cfg_label_25615
	j @cfg_label_25616
@cfg_label_25615:
@cfg_label_25613:
	fmovi f1,$1.000000
	fst f1,r2,$-28
	j @cfg_label_25633
@cfg_label_25616:
@cfg_label_25614:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@92:41;92:44
	j @cfg_label_25612
@cfg_label_25612:
	lw r5,r2,$12
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_25609
	j @cfg_label_25608
	j @cfg_label_25610
	j @cfg_label_25611
@cfg_label_25611:
@cfg_label_25609:
	fmovi f1,$1.000000
	fst f1,r2,$-76
	j @cfg_label_25607
@cfg_label_25607:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fdiv f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@92:11;92:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@92:65;92:68 ../cpuex2017/raytracer/min-rt.ml@92:72;92:73
	j @cfg_label_25635
@cfg_label_25610:
@cfg_label_25608:
	fmovi f1,$-1.000000
	fst f1,r2,$-80
	j @cfg_label_25606
@cfg_label_25606:
	fld f1,r2,$-80
	fld f2,r2,$-72
	fdiv f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@92:11;92:73 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@92:51;92:54 ../cpuex2017/raytracer/min-rt.ml@92:58;92:59
	j @cfg_label_25634
@cfg_label_25635:
@cfg_label_25634:
@cfg_label_25633:
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@93:5;93:6
	j @cfg_label_25632
@cfg_label_25632:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@93:14;93:15
	j @cfg_label_25631
@cfg_label_25631:
	lw r6,r2,$-68
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@93:11;93:16 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@93:11;93:12 ../cpuex2017/raytracer/min-rt.ml@93:14;93:15
	j @cfg_label_25630
@cfg_label_25630:
	fld f1,r2,$-64
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@93:11;93:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@93:11;93:16 ../cpuex2017/raytracer/min-rt.ml@93:20;93:22
	j @cfg_label_25629
@cfg_label_25629:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@93:2;93:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@93:2;93:3 ../cpuex2017/raytracer/min-rt.ml@93:5;93:6 ../cpuex2017/raytracer/min-rt.ml@93:11;93:22
	j @cfg_label_25628
@cfg_label_25628:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@94:5;94:6
	j @cfg_label_25627
@cfg_label_25627:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@94:14;94:15
	j @cfg_label_25626
@cfg_label_25626:
	lw r6,r2,$-52
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@94:11;94:16 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@94:11;94:12 ../cpuex2017/raytracer/min-rt.ml@94:14;94:15
	j @cfg_label_25625
@cfg_label_25625:
	fld f1,r2,$-48
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@94:11;94:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@94:11;94:16 ../cpuex2017/raytracer/min-rt.ml@94:20;94:22
	j @cfg_label_25624
@cfg_label_25624:
	lw r7,r2,$-40
	lw r6,r2,$-44
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@94:2;94:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@94:2;94:3 ../cpuex2017/raytracer/min-rt.ml@94:5;94:6 ../cpuex2017/raytracer/min-rt.ml@94:11;94:22
	j @cfg_label_25623
@cfg_label_25623:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@95:5;95:6
	j @cfg_label_25622
@cfg_label_25622:
	li r5,$2
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@95:14;95:15
	j @cfg_label_25621
@cfg_label_25621:
	lw r6,r2,$-36
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@95:11;95:16 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@95:11;95:12 ../cpuex2017/raytracer/min-rt.ml@95:14;95:15
	j @cfg_label_25620
@cfg_label_25620:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@95:11;95:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@95:11;95:16 ../cpuex2017/raytracer/min-rt.ml@95:20;95:22
	j @cfg_label_25619
@cfg_label_25619:
	lw r7,r2,$-20
	lw r6,r2,$-24
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@95:2;95:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@95:2;95:3 ../cpuex2017/raytracer/min-rt.ml@95:5;95:6 ../cpuex2017/raytracer/min-rt.ml@95:11;95:22
	j @cfg_label_25618
@cfg_label_25618:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@94:2;95:22 ::<= ../cpuex2017/raytracer/min-rt.ml@95:2;95:22
	j @cfg_label_25617
@cfg_label_25617:
	lw r5,r2,$-4
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@91:2;95:22 ::<= ../cpuex2017/raytracer/min-rt.ml@94:2;95:22
	lw r5,r2,$-144
	addi r1,r1,$144
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-144
	addi r1,r1,$144
	pop r2
	pop r6
	jr r6
@a_8670veciprod:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$68
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@100:5;100:6
	j @cfg_label_25605
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@100:5;100:6
	j @cfg_label_25605
@cfg_label_25605:
	lw r6,r2,$-64
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@100:2;100:3 ../cpuex2017/raytracer/min-rt.ml@100:5;100:6
	j @cfg_label_25604
@cfg_label_25604:
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@100:14;100:15
	j @cfg_label_25603
@cfg_label_25603:
	lw r6,r2,$-60
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@100:11;100:16 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@100:11;100:12 ../cpuex2017/raytracer/min-rt.ml@100:14;100:15
	j @cfg_label_25602
@cfg_label_25602:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fmul f1,f1,f2
	fst f1,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:2;100:7 ../cpuex2017/raytracer/min-rt.ml@100:11;100:16
	j @cfg_label_25601
@cfg_label_25601:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@100:23;100:24
	j @cfg_label_25600
@cfg_label_25600:
	lw r6,r2,$-48
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@100:20;100:21 ../cpuex2017/raytracer/min-rt.ml@100:23;100:24
	j @cfg_label_25599
@cfg_label_25599:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@100:32;100:33
	j @cfg_label_25598
@cfg_label_25598:
	lw r6,r2,$-44
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@100:29;100:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@100:29;100:30 ../cpuex2017/raytracer/min-rt.ml@100:32;100:33
	j @cfg_label_25597
@cfg_label_25597:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fmul f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@100:20;100:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:20;100:25 ../cpuex2017/raytracer/min-rt.ml@100:29;100:34
	j @cfg_label_25596
@cfg_label_25596:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fadd f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:16 ../cpuex2017/raytracer/min-rt.ml@100:20;100:34
	j @cfg_label_25595
@cfg_label_25595:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@100:41;100:42
	j @cfg_label_25594
@cfg_label_25594:
	lw r6,r2,$-24
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@100:38;100:39 ../cpuex2017/raytracer/min-rt.ml@100:41;100:42
	j @cfg_label_25593
@cfg_label_25593:
	li r5,$2
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@100:50;100:51
	j @cfg_label_25592
@cfg_label_25592:
	lw r6,r2,$-20
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@100:47;100:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@100:47;100:48 ../cpuex2017/raytracer/min-rt.ml@100:50;100:51
	j @cfg_label_25591
@cfg_label_25591:
	fld f1,r2,$-16
	fld f2,r2,$-12
	fmul f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@100:38;100:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@100:38;100:43 ../cpuex2017/raytracer/min-rt.ml@100:47;100:52
	j @cfg_label_25590
@cfg_label_25590:
	fld f1,r2,$-8
	fld f2,r2,$-4
	fadd f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@100:2;100:52 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@100:2;100:34 ../cpuex2017/raytracer/min-rt.ml@100:38;100:52
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@a_8678vecaccum:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@110:8;110:9
	j @cfg_label_25589
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@110:8;110:9
	j @cfg_label_25589
@cfg_label_25589:
	li r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@110:20;110:21
	j @cfg_label_25588
@cfg_label_25588:
	lw r6,r2,$-100
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@110:14;110:18 ../cpuex2017/raytracer/min-rt.ml@110:20;110:21
	j @cfg_label_25587
@cfg_label_25587:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@110:38;110:39
	j @cfg_label_25586
@cfg_label_25586:
	lw r6,r2,$-96
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@110:35;110:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@110:35;110:36 ../cpuex2017/raytracer/min-rt.ml@110:38;110:39
	j @cfg_label_25585
@cfg_label_25585:
	fld f1,r2,$12
	fld f2,r2,$-92
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@110:26;110:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@110:26;110:31 ../cpuex2017/raytracer/min-rt.ml@110:35;110:40
	j @cfg_label_25584
@cfg_label_25584:
	fld f1,r2,$-88
	fld f2,r2,$-84
	fadd f1,f1,f2
	fst f1,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@110:14;110:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@110:14;110:22 ../cpuex2017/raytracer/min-rt.ml@110:26;110:40
	j @cfg_label_25583
@cfg_label_25583:
	lw r7,r2,$-76
	lw r6,r2,$-80
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@110:2;110:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@110:2;110:6 ../cpuex2017/raytracer/min-rt.ml@110:8;110:9 ../cpuex2017/raytracer/min-rt.ml@110:14;110:40
	j @cfg_label_25582
@cfg_label_25582:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@111:8;111:9
	j @cfg_label_25581
@cfg_label_25581:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@111:20;111:21
	j @cfg_label_25580
@cfg_label_25580:
	lw r6,r2,$-72
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@111:14;111:18 ../cpuex2017/raytracer/min-rt.ml@111:20;111:21
	j @cfg_label_25579
@cfg_label_25579:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@111:38;111:39
	j @cfg_label_25578
@cfg_label_25578:
	lw r6,r2,$-68
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@111:35;111:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@111:35;111:36 ../cpuex2017/raytracer/min-rt.ml@111:38;111:39
	j @cfg_label_25577
@cfg_label_25577:
	fld f1,r2,$12
	fld f2,r2,$-64
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@111:26;111:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@111:26;111:31 ../cpuex2017/raytracer/min-rt.ml@111:35;111:40
	j @cfg_label_25576
@cfg_label_25576:
	fld f1,r2,$-60
	fld f2,r2,$-56
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@111:14;111:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@111:14;111:22 ../cpuex2017/raytracer/min-rt.ml@111:26;111:40
	j @cfg_label_25575
@cfg_label_25575:
	lw r7,r2,$-48
	lw r6,r2,$-52
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@111:2;111:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@111:2;111:6 ../cpuex2017/raytracer/min-rt.ml@111:8;111:9 ../cpuex2017/raytracer/min-rt.ml@111:14;111:40
	j @cfg_label_25574
@cfg_label_25574:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@112:8;112:9
	j @cfg_label_25573
@cfg_label_25573:
	li r5,$2
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@112:20;112:21
	j @cfg_label_25572
@cfg_label_25572:
	lw r6,r2,$-44
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@112:14;112:18 ../cpuex2017/raytracer/min-rt.ml@112:20;112:21
	j @cfg_label_25571
@cfg_label_25571:
	li r5,$2
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@112:38;112:39
	j @cfg_label_25570
@cfg_label_25570:
	lw r6,r2,$-40
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@112:35;112:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@112:35;112:36 ../cpuex2017/raytracer/min-rt.ml@112:38;112:39
	j @cfg_label_25569
@cfg_label_25569:
	fld f1,r2,$12
	fld f2,r2,$-36
	fmul f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@112:26;112:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@112:26;112:31 ../cpuex2017/raytracer/min-rt.ml@112:35;112:40
	j @cfg_label_25568
@cfg_label_25568:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fadd f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@112:14;112:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@112:14;112:22 ../cpuex2017/raytracer/min-rt.ml@112:26;112:40
	j @cfg_label_25567
@cfg_label_25567:
	lw r7,r2,$-20
	lw r6,r2,$-24
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@112:2;112:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@112:2;112:6 ../cpuex2017/raytracer/min-rt.ml@112:8;112:9 ../cpuex2017/raytracer/min-rt.ml@112:14;112:40
	j @cfg_label_25566
@cfg_label_25566:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@111:2;112:40 ::<= ../cpuex2017/raytracer/min-rt.ml@112:2;112:40
	j @cfg_label_25565
@cfg_label_25565:
	lw r5,r2,$-4
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@110:2;112:40 ::<= ../cpuex2017/raytracer/min-rt.ml@111:2;112:40
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
@a_8682vecadd:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$92
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@117:8;117:9
	j @cfg_label_25564
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@117:8;117:9
	j @cfg_label_25564
@cfg_label_25564:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@117:20;117:21
	j @cfg_label_25563
@cfg_label_25563:
	lw r6,r2,$-88
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@117:14;117:18 ../cpuex2017/raytracer/min-rt.ml@117:20;117:21
	j @cfg_label_25562
@cfg_label_25562:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@117:29;117:30
	j @cfg_label_25561
@cfg_label_25561:
	lw r6,r2,$-84
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@117:26;117:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@117:26;117:27 ../cpuex2017/raytracer/min-rt.ml@117:29;117:30
	j @cfg_label_25560
@cfg_label_25560:
	fld f1,r2,$-80
	fld f2,r2,$-76
	fadd f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@117:14;117:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@117:14;117:22 ../cpuex2017/raytracer/min-rt.ml@117:26;117:31
	j @cfg_label_25559
@cfg_label_25559:
	lw r7,r2,$-68
	lw r6,r2,$-72
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@117:2;117:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@117:2;117:6 ../cpuex2017/raytracer/min-rt.ml@117:8;117:9 ../cpuex2017/raytracer/min-rt.ml@117:14;117:31
	j @cfg_label_25558
@cfg_label_25558:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@118:8;118:9
	j @cfg_label_25557
@cfg_label_25557:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@118:20;118:21
	j @cfg_label_25556
@cfg_label_25556:
	lw r6,r2,$-64
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@118:14;118:18 ../cpuex2017/raytracer/min-rt.ml@118:20;118:21
	j @cfg_label_25555
@cfg_label_25555:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@118:29;118:30
	j @cfg_label_25554
@cfg_label_25554:
	lw r6,r2,$-60
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@118:26;118:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@118:26;118:27 ../cpuex2017/raytracer/min-rt.ml@118:29;118:30
	j @cfg_label_25553
@cfg_label_25553:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fadd f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@118:14;118:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@118:14;118:22 ../cpuex2017/raytracer/min-rt.ml@118:26;118:31
	j @cfg_label_25552
@cfg_label_25552:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@118:2;118:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@118:2;118:6 ../cpuex2017/raytracer/min-rt.ml@118:8;118:9 ../cpuex2017/raytracer/min-rt.ml@118:14;118:31
	j @cfg_label_25551
@cfg_label_25551:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@119:8;119:9
	j @cfg_label_25550
@cfg_label_25550:
	li r5,$2
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@119:20;119:21
	j @cfg_label_25549
@cfg_label_25549:
	lw r6,r2,$-40
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@119:14;119:18 ../cpuex2017/raytracer/min-rt.ml@119:20;119:21
	j @cfg_label_25548
@cfg_label_25548:
	li r5,$2
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@119:29;119:30
	j @cfg_label_25547
@cfg_label_25547:
	lw r6,r2,$-36
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@119:26;119:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@119:26;119:27 ../cpuex2017/raytracer/min-rt.ml@119:29;119:30
	j @cfg_label_25546
@cfg_label_25546:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fadd f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@119:14;119:31 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@119:14;119:22 ../cpuex2017/raytracer/min-rt.ml@119:26;119:31
	j @cfg_label_25545
@cfg_label_25545:
	lw r7,r2,$-20
	lw r6,r2,$-24
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@119:2;119:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@119:2;119:6 ../cpuex2017/raytracer/min-rt.ml@119:8;119:9 ../cpuex2017/raytracer/min-rt.ml@119:14;119:31
	j @cfg_label_25544
@cfg_label_25544:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@118:2;119:31 ::<= ../cpuex2017/raytracer/min-rt.ml@119:2;119:31
	j @cfg_label_25543
@cfg_label_25543:
	lw r5,r2,$-4
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@117:2;119:31 ::<= ../cpuex2017/raytracer/min-rt.ml@118:2;119:31
	lw r5,r2,$-92
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-92
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@a_8688vecscale:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$68
	li r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@131:8;131:9
	j @cfg_label_25542
	li r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@131:8;131:9
	j @cfg_label_25542
@cfg_label_25542:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@131:20;131:21
	j @cfg_label_25541
@cfg_label_25541:
	lw r6,r2,$-64
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@131:14;131:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@131:14;131:18 ../cpuex2017/raytracer/min-rt.ml@131:20;131:21
	j @cfg_label_25540
@cfg_label_25540:
	fld f1,r2,$-60
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@131:14;131:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@131:14;131:22 ../cpuex2017/raytracer/min-rt.ml@131:26;131:31
	j @cfg_label_25539
@cfg_label_25539:
	lw r7,r2,$-52
	lw r6,r2,$-56
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@131:2;131:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@131:2;131:6 ../cpuex2017/raytracer/min-rt.ml@131:8;131:9 ../cpuex2017/raytracer/min-rt.ml@131:14;131:31
	j @cfg_label_25538
@cfg_label_25538:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@132:8;132:9
	j @cfg_label_25537
@cfg_label_25537:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@132:20;132:21
	j @cfg_label_25536
@cfg_label_25536:
	lw r6,r2,$-48
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@132:14;132:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@132:14;132:18 ../cpuex2017/raytracer/min-rt.ml@132:20;132:21
	j @cfg_label_25535
@cfg_label_25535:
	fld f1,r2,$-44
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@132:14;132:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@132:14;132:22 ../cpuex2017/raytracer/min-rt.ml@132:26;132:31
	j @cfg_label_25534
@cfg_label_25534:
	lw r7,r2,$-36
	lw r6,r2,$-40
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@132:2;132:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@132:2;132:6 ../cpuex2017/raytracer/min-rt.ml@132:8;132:9 ../cpuex2017/raytracer/min-rt.ml@132:14;132:31
	j @cfg_label_25533
@cfg_label_25533:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@133:8;133:9
	j @cfg_label_25532
@cfg_label_25532:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@133:20;133:21
	j @cfg_label_25531
@cfg_label_25531:
	lw r6,r2,$-32
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@133:14;133:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@133:14;133:18 ../cpuex2017/raytracer/min-rt.ml@133:20;133:21
	j @cfg_label_25530
@cfg_label_25530:
	fld f1,r2,$-28
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@133:14;133:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@133:14;133:22 ../cpuex2017/raytracer/min-rt.ml@133:26;133:31
	j @cfg_label_25529
@cfg_label_25529:
	lw r7,r2,$-20
	lw r6,r2,$-24
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@133:2;133:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@133:2;133:6 ../cpuex2017/raytracer/min-rt.ml@133:8;133:9 ../cpuex2017/raytracer/min-rt.ml@133:14;133:31
	j @cfg_label_25528
@cfg_label_25528:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@132:2;133:31 ::<= ../cpuex2017/raytracer/min-rt.ml@133:2;133:31
	j @cfg_label_25527
@cfg_label_25527:
	lw r5,r2,$-4
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@131:2;133:31 ::<= ../cpuex2017/raytracer/min-rt.ml@132:2;133:31
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@a_8691vecaccumv:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$128
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@138:8;138:9
	j @cfg_label_25526
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@138:8;138:9
	j @cfg_label_25526
@cfg_label_25526:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@138:20;138:21
	j @cfg_label_25525
@cfg_label_25525:
	lw r6,r2,$-124
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@138:14;138:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@138:14;138:18 ../cpuex2017/raytracer/min-rt.ml@138:20;138:21
	j @cfg_label_25524
@cfg_label_25524:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@138:29;138:30
	j @cfg_label_25523
@cfg_label_25523:
	lw r6,r2,$-120
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@138:26;138:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@138:26;138:27 ../cpuex2017/raytracer/min-rt.ml@138:29;138:30
	j @cfg_label_25522
@cfg_label_25522:
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@138:38;138:39
	j @cfg_label_25521
@cfg_label_25521:
	lw r6,r2,$-116
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@138:35;138:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@138:35;138:36 ../cpuex2017/raytracer/min-rt.ml@138:38;138:39
	j @cfg_label_25520
@cfg_label_25520:
	fld f1,r2,$-112
	fld f2,r2,$-108
	fmul f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@138:26;138:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@138:26;138:31 ../cpuex2017/raytracer/min-rt.ml@138:35;138:40
	j @cfg_label_25519
@cfg_label_25519:
	fld f1,r2,$-104
	fld f2,r2,$-100
	fadd f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@138:14;138:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@138:14;138:22 ../cpuex2017/raytracer/min-rt.ml@138:26;138:40
	j @cfg_label_25518
@cfg_label_25518:
	lw r7,r2,$-92
	lw r6,r2,$-96
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@138:2;138:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@138:2;138:6 ../cpuex2017/raytracer/min-rt.ml@138:8;138:9 ../cpuex2017/raytracer/min-rt.ml@138:14;138:40
	j @cfg_label_25517
@cfg_label_25517:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@139:8;139:9
	j @cfg_label_25516
@cfg_label_25516:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@139:20;139:21
	j @cfg_label_25515
@cfg_label_25515:
	lw r6,r2,$-88
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@139:14;139:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@139:14;139:18 ../cpuex2017/raytracer/min-rt.ml@139:20;139:21
	j @cfg_label_25514
@cfg_label_25514:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@139:29;139:30
	j @cfg_label_25513
@cfg_label_25513:
	lw r6,r2,$-84
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@139:26;139:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@139:26;139:27 ../cpuex2017/raytracer/min-rt.ml@139:29;139:30
	j @cfg_label_25512
@cfg_label_25512:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@139:38;139:39
	j @cfg_label_25511
@cfg_label_25511:
	lw r6,r2,$-80
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@139:35;139:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@139:35;139:36 ../cpuex2017/raytracer/min-rt.ml@139:38;139:39
	j @cfg_label_25510
@cfg_label_25510:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@139:26;139:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@139:26;139:31 ../cpuex2017/raytracer/min-rt.ml@139:35;139:40
	j @cfg_label_25509
@cfg_label_25509:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fadd f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@139:14;139:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@139:14;139:22 ../cpuex2017/raytracer/min-rt.ml@139:26;139:40
	j @cfg_label_25508
@cfg_label_25508:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@139:2;139:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@139:2;139:6 ../cpuex2017/raytracer/min-rt.ml@139:8;139:9 ../cpuex2017/raytracer/min-rt.ml@139:14;139:40
	j @cfg_label_25507
@cfg_label_25507:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@140:8;140:9
	j @cfg_label_25506
@cfg_label_25506:
	li r5,$2
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@140:20;140:21
	j @cfg_label_25505
@cfg_label_25505:
	lw r6,r2,$-52
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@140:14;140:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@140:14;140:18 ../cpuex2017/raytracer/min-rt.ml@140:20;140:21
	j @cfg_label_25504
@cfg_label_25504:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@140:29;140:30
	j @cfg_label_25503
@cfg_label_25503:
	lw r6,r2,$-48
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@140:26;140:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@140:26;140:27 ../cpuex2017/raytracer/min-rt.ml@140:29;140:30
	j @cfg_label_25502
@cfg_label_25502:
	li r5,$2
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@140:38;140:39
	j @cfg_label_25501
@cfg_label_25501:
	lw r6,r2,$-44
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@140:35;140:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@140:35;140:36 ../cpuex2017/raytracer/min-rt.ml@140:38;140:39
	j @cfg_label_25500
@cfg_label_25500:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fmul f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@140:26;140:40 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@140:26;140:31 ../cpuex2017/raytracer/min-rt.ml@140:35;140:40
	j @cfg_label_25499
@cfg_label_25499:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fadd f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@140:14;140:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@140:14;140:22 ../cpuex2017/raytracer/min-rt.ml@140:26;140:40
	j @cfg_label_25498
@cfg_label_25498:
	lw r7,r2,$-20
	lw r6,r2,$-24
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@140:2;140:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@140:2;140:6 ../cpuex2017/raytracer/min-rt.ml@140:8;140:9 ../cpuex2017/raytracer/min-rt.ml@140:14;140:40
	j @cfg_label_25497
@cfg_label_25497:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@139:2;140:40 ::<= ../cpuex2017/raytracer/min-rt.ml@140:2;140:40
	j @cfg_label_25496
@cfg_label_25496:
	lw r5,r2,$-4
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@138:2;140:40 ::<= ../cpuex2017/raytracer/min-rt.ml@139:2;140:40
	lw r5,r2,$-128
	addi r1,r1,$128
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-128
	addi r1,r1,$128
	pop r2
	pop r6
	jr r6
@a_8768read_screen_settings:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$364
	li r5,$0
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@490:10;490:11
	j @cfg_label_25495
	li r5,$0
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@490:10;490:11
	j @cfg_label_25495
@cfg_label_25495:
	push r4
	jal read_float
	sw r5,r2,$-356
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@490:16;490:29 ../cpuex2017/raytracer/min-rt.ml@490:16;490:26
	j @cfg_label_25494
@cfg_label_25494:
	lw r7,r2,$-356
	lw r6,r2,$-360
	lw r5,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@490:2;490:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@490:2;490:8 ../cpuex2017/raytracer/min-rt.ml@490:10;490:11 ../cpuex2017/raytracer/min-rt.ml@490:16;490:29
	j @cfg_label_25493
@cfg_label_25493:
	li r5,$1
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@491:10;491:11
	j @cfg_label_25492
@cfg_label_25492:
	push r4
	jal read_float
	sw r5,r2,$-348
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@491:16;491:29 ../cpuex2017/raytracer/min-rt.ml@491:16;491:26
	j @cfg_label_25491
@cfg_label_25491:
	lw r7,r2,$-348
	lw r6,r2,$-352
	lw r5,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@491:2;491:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@491:2;491:8 ../cpuex2017/raytracer/min-rt.ml@491:10;491:11 ../cpuex2017/raytracer/min-rt.ml@491:16;491:29
	j @cfg_label_25490
@cfg_label_25490:
	li r5,$2
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@492:10;492:11
	j @cfg_label_25489
@cfg_label_25489:
	push r4
	jal read_float
	sw r5,r2,$-340
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@492:16;492:29 ../cpuex2017/raytracer/min-rt.ml@492:16;492:26
	j @cfg_label_25488
@cfg_label_25488:
	lw r7,r2,$-340
	lw r6,r2,$-344
	lw r5,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@492:2;492:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@492:2;492:8 ../cpuex2017/raytracer/min-rt.ml@492:10;492:11 ../cpuex2017/raytracer/min-rt.ml@492:16;492:29
	j @cfg_label_25487
@cfg_label_25487:
	push r4
	jal read_float
	sw r5,r2,$-336
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@494:16;494:29 ../cpuex2017/raytracer/min-rt.ml@494:16;494:26
	j @cfg_label_25486
@cfg_label_25486:
	fmovi f1,$0.017453
	fst f1,r2,$-332
	j @cfg_label_25485
@cfg_label_25485:
	fld f1,r2,$-336
	fld f2,r2,$-332
	fmul f1,f1,f2
	fst f1,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@494:11;494:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25484
@cfg_label_25484:
	push r4
	lw r5,r2,$-328
	push r5
	jal @a_8600cos
	sw r5,r2,$-220
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@495:15;495:21 ../cpuex2017/raytracer/min-rt.ml@495:15;495:18
	j @cfg_label_25483
@cfg_label_25483:
	push r4
	lw r5,r2,$-328
	push r5
	jal @a_8598sin
	sw r5,r2,$-204
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@496:15;496:21 ../cpuex2017/raytracer/min-rt.ml@496:15;496:18
	j @cfg_label_25482
@cfg_label_25482:
	push r4
	jal read_float
	sw r5,r2,$-324
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@497:16;497:29 ../cpuex2017/raytracer/min-rt.ml@497:16;497:26
	j @cfg_label_25481
@cfg_label_25481:
	fmovi f1,$0.017453
	fst f1,r2,$-320
	j @cfg_label_25480
@cfg_label_25480:
	fld f1,r2,$-324
	fld f2,r2,$-320
	fmul f1,f1,f2
	fst f1,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@497:11;497:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25479
@cfg_label_25479:
	push r4
	lw r5,r2,$-316
	push r5
	jal @a_8600cos
	sw r5,r2,$-196
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@498:15;498:21 ../cpuex2017/raytracer/min-rt.ml@498:15;498:18
	j @cfg_label_25478
@cfg_label_25478:
	push r4
	lw r5,r2,$-316
	push r5
	jal @a_8598sin
	sw r5,r2,$-236
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@499:15;499:21 ../cpuex2017/raytracer/min-rt.ml@499:15;499:18
	j @cfg_label_25477
@cfg_label_25477:
	li r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@501:15;501:16
	j @cfg_label_25476
@cfg_label_25476:
	fld f1,r2,$-220
	fld f2,r2,$-236
	fmul f1,f1,f2
	fst f1,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@501:21;501:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@501:21;501:27 ../cpuex2017/raytracer/min-rt.ml@501:31;501:37
	j @cfg_label_25475
@cfg_label_25475:
	fmovi f1,$200.000000
	fst f1,r2,$-308
	j @cfg_label_25474
@cfg_label_25474:
	fld f1,r2,$-312
	fld f2,r2,$-308
	fmul f1,f1,f2
	fst f1,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@501:21;501:46 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@501:21;501:37 ../cpuex2017/raytracer/min-rt.ml@501:41;501:46
	j @cfg_label_25473
@cfg_label_25473:
	lw r7,r2,$-300
	lw r6,r2,$-304
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@501:2;501:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@501:2;501:13 ../cpuex2017/raytracer/min-rt.ml@501:15;501:16 ../cpuex2017/raytracer/min-rt.ml@501:21;501:46
	j @cfg_label_25472
@cfg_label_25472:
	li r5,$1
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@502:15;502:16
	j @cfg_label_25471
@cfg_label_25471:
	fmovi f1,$-200.000000
	fst f1,r2,$-296
	j @cfg_label_25470
@cfg_label_25470:
	fld f1,r2,$-204
	fld f2,r2,$-296
	fmul f1,f1,f2
	fst f1,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@502:21;502:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@502:21;502:27 ../cpuex2017/raytracer/min-rt.ml@502:32;502:37
	j @cfg_label_25469
@cfg_label_25469:
	lw r7,r2,$-288
	lw r6,r2,$-292
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@502:2;502:37 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@502:2;502:13 ../cpuex2017/raytracer/min-rt.ml@502:15;502:16 ../cpuex2017/raytracer/min-rt.ml@502:21;502:37
	j @cfg_label_25468
@cfg_label_25468:
	li r5,$2
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@503:15;503:16
	j @cfg_label_25467
@cfg_label_25467:
	fld f1,r2,$-220
	fld f2,r2,$-196
	fmul f1,f1,f2
	fst f1,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@503:21;503:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@503:21;503:27 ../cpuex2017/raytracer/min-rt.ml@503:31;503:37
	j @cfg_label_25466
@cfg_label_25466:
	fmovi f1,$200.000000
	fst f1,r2,$-280
	j @cfg_label_25465
@cfg_label_25465:
	fld f1,r2,$-284
	fld f2,r2,$-280
	fmul f1,f1,f2
	fst f1,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@503:21;503:46 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@503:21;503:37 ../cpuex2017/raytracer/min-rt.ml@503:41;503:46
	j @cfg_label_25464
@cfg_label_25464:
	lw r7,r2,$-272
	lw r6,r2,$-276
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@503:2;503:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@503:2;503:13 ../cpuex2017/raytracer/min-rt.ml@503:15;503:16 ../cpuex2017/raytracer/min-rt.ml@503:21;503:46
	j @cfg_label_25463
@cfg_label_25463:
	li r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@505:15;505:16
	j @cfg_label_25462
@cfg_label_25462:
	lw r7,r2,$-196
	lw r6,r2,$-268
	lw r5,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@505:2;505:27 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@505:2;505:13 ../cpuex2017/raytracer/min-rt.ml@505:15;505:16 ../cpuex2017/raytracer/min-rt.ml@505:21;505:27
	j @cfg_label_25461
@cfg_label_25461:
	li r5,$1
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@506:15;506:16
	j @cfg_label_25460
@cfg_label_25460:
	fmovi f1,$0.000000
	fst f1,r2,$-260
	j @cfg_label_25459
@cfg_label_25459:
	lw r7,r2,$-260
	lw r6,r2,$-264
	lw r5,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@506:2;506:24 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@506:2;506:13 ../cpuex2017/raytracer/min-rt.ml@506:15;506:16 ../cpuex2017/raytracer/min-rt.ml@506:21;506:24
	j @cfg_label_25458
@cfg_label_25458:
	li r5,$2
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@507:15;507:16
	j @cfg_label_25457
@cfg_label_25457:
	fmovi f1,$-1.000000
	fst f1,r2,$-256
	j @cfg_label_25456
@cfg_label_25456:
	fld f1,r2,$-256
	fld f2,r2,$-236
	fmul f1,f1,f2
	fst f1,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@507:21;507:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_25455
@cfg_label_25455:
	lw r7,r2,$-248
	lw r6,r2,$-252
	lw r5,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@507:2;507:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@507:2;507:13 ../cpuex2017/raytracer/min-rt.ml@507:15;507:16 ../cpuex2017/raytracer/min-rt.ml@507:21;507:32
	j @cfg_label_25454
@cfg_label_25454:
	li r5,$0
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@509:15;509:16
	j @cfg_label_25453
@cfg_label_25453:
	fmovi f1,$-1.000000
	fst f1,r2,$-244
	j @cfg_label_25452
@cfg_label_25452:
	fld f1,r2,$-244
	fld f2,r2,$-204
	fmul f1,f1,f2
	fst f1,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@509:21;509:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_25451
@cfg_label_25451:
	fld f1,r2,$-240
	fld f2,r2,$-236
	fmul f1,f1,f2
	fst f1,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@509:21;509:42 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@509:21;509:32 ../cpuex2017/raytracer/min-rt.ml@509:36;509:42
	j @cfg_label_25450
@cfg_label_25450:
	lw r7,r2,$-228
	lw r6,r2,$-232
	lw r5,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@509:2;509:42 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@509:2;509:13 ../cpuex2017/raytracer/min-rt.ml@509:15;509:16 ../cpuex2017/raytracer/min-rt.ml@509:21;509:42
	j @cfg_label_25449
@cfg_label_25449:
	li r5,$1
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@510:15;510:16
	j @cfg_label_25448
@cfg_label_25448:
	fmovi f1,$-1.000000
	fst f1,r2,$-224
	j @cfg_label_25447
@cfg_label_25447:
	fld f1,r2,$-224
	fld f2,r2,$-220
	fmul f1,f1,f2
	fst f1,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@510:21;510:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_25446
@cfg_label_25446:
	lw r7,r2,$-212
	lw r6,r2,$-216
	lw r5,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@510:2;510:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@510:2;510:13 ../cpuex2017/raytracer/min-rt.ml@510:15;510:16 ../cpuex2017/raytracer/min-rt.ml@510:21;510:32
	j @cfg_label_25445
@cfg_label_25445:
	li r5,$2
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@511:15;511:16
	j @cfg_label_25444
@cfg_label_25444:
	fmovi f1,$-1.000000
	fst f1,r2,$-208
	j @cfg_label_25443
@cfg_label_25443:
	fld f1,r2,$-208
	fld f2,r2,$-204
	fmul f1,f1,f2
	fst f1,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@511:21;511:32 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_25442
@cfg_label_25442:
	fld f1,r2,$-200
	fld f2,r2,$-196
	fmul f1,f1,f2
	fst f1,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@511:21;511:42 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@511:21;511:32 ../cpuex2017/raytracer/min-rt.ml@511:36;511:42
	j @cfg_label_25441
@cfg_label_25441:
	lw r7,r2,$-188
	lw r6,r2,$-192
	lw r5,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@511:2;511:42 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@511:2;511:13 ../cpuex2017/raytracer/min-rt.ml@511:15;511:16 ../cpuex2017/raytracer/min-rt.ml@511:21;511:42
	j @cfg_label_25440
@cfg_label_25440:
	li r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@513:13;513:14
	j @cfg_label_25439
@cfg_label_25439:
	li r5,$0
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@513:27;513:28
	j @cfg_label_25438
@cfg_label_25438:
	lw r6,r2,$-184
	lw r5,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@513:19;513:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@513:19;513:25 ../cpuex2017/raytracer/min-rt.ml@513:27;513:28
	j @cfg_label_25437
@cfg_label_25437:
	li r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@513:46;513:47
	j @cfg_label_25436
@cfg_label_25436:
	lw r6,r2,$-180
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@513:33;513:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@513:33;513:44 ../cpuex2017/raytracer/min-rt.ml@513:46;513:47
	j @cfg_label_25435
@cfg_label_25435:
	fld f1,r2,$-176
	fld f2,r2,$-172
	fsub f1,f1,f2
	fst f1,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@513:19;513:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@513:19;513:29 ../cpuex2017/raytracer/min-rt.ml@513:33;513:48
	j @cfg_label_25434
@cfg_label_25434:
	lw r7,r2,$-164
	lw r6,r2,$-168
	lw r5,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@513:2;513:48 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@513:2;513:11 ../cpuex2017/raytracer/min-rt.ml@513:13;513:14 ../cpuex2017/raytracer/min-rt.ml@513:19;513:48
	j @cfg_label_25433
@cfg_label_25433:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@514:13;514:14
	j @cfg_label_25432
@cfg_label_25432:
	li r5,$1
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@514:27;514:28
	j @cfg_label_25431
@cfg_label_25431:
	lw r6,r2,$-160
	lw r5,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@514:19;514:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@514:19;514:25 ../cpuex2017/raytracer/min-rt.ml@514:27;514:28
	j @cfg_label_25430
@cfg_label_25430:
	li r5,$1
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@514:46;514:47
	j @cfg_label_25429
@cfg_label_25429:
	lw r6,r2,$-156
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@514:33;514:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@514:33;514:44 ../cpuex2017/raytracer/min-rt.ml@514:46;514:47
	j @cfg_label_25428
@cfg_label_25428:
	fld f1,r2,$-152
	fld f2,r2,$-148
	fsub f1,f1,f2
	fst f1,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@514:19;514:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@514:19;514:29 ../cpuex2017/raytracer/min-rt.ml@514:33;514:48
	j @cfg_label_25427
@cfg_label_25427:
	lw r7,r2,$-140
	lw r6,r2,$-144
	lw r5,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@514:2;514:48 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@514:2;514:11 ../cpuex2017/raytracer/min-rt.ml@514:13;514:14 ../cpuex2017/raytracer/min-rt.ml@514:19;514:48
	j @cfg_label_25426
@cfg_label_25426:
	li r5,$2
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@515:13;515:14
	j @cfg_label_25425
@cfg_label_25425:
	li r5,$2
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@515:27;515:28
	j @cfg_label_25424
@cfg_label_25424:
	lw r6,r2,$-136
	lw r5,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@515:19;515:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@515:19;515:25 ../cpuex2017/raytracer/min-rt.ml@515:27;515:28
	j @cfg_label_25423
@cfg_label_25423:
	li r5,$2
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@515:46;515:47
	j @cfg_label_25422
@cfg_label_25422:
	lw r6,r2,$-132
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@515:33;515:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@515:33;515:44 ../cpuex2017/raytracer/min-rt.ml@515:46;515:47
	j @cfg_label_25421
@cfg_label_25421:
	fld f1,r2,$-128
	fld f2,r2,$-124
	fsub f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@515:19;515:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@515:19;515:29 ../cpuex2017/raytracer/min-rt.ml@515:33;515:48
	j @cfg_label_25420
@cfg_label_25420:
	lw r7,r2,$-116
	lw r6,r2,$-120
	lw r5,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@515:2;515:48 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@515:2;515:11 ../cpuex2017/raytracer/min-rt.ml@515:13;515:14 ../cpuex2017/raytracer/min-rt.ml@515:19;515:48
	j @cfg_label_25419
@cfg_label_25419:
	lw r5,r2,$-108
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@514:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@515:2;515:48
	j @cfg_label_25418
@cfg_label_25418:
	lw r5,r2,$-100
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@513:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@514:2;515:48
	j @cfg_label_25417
@cfg_label_25417:
	lw r5,r2,$-92
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@511:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@513:2;515:48
	j @cfg_label_25416
@cfg_label_25416:
	lw r5,r2,$-84
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@510:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@511:2;515:48
	j @cfg_label_25415
@cfg_label_25415:
	lw r5,r2,$-76
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@509:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@510:2;515:48
	j @cfg_label_25414
@cfg_label_25414:
	lw r5,r2,$-68
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@507:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@509:2;515:48
	j @cfg_label_25413
@cfg_label_25413:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@506:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@507:2;515:48
	j @cfg_label_25412
@cfg_label_25412:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@505:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@506:2;515:48
	j @cfg_label_25411
@cfg_label_25411:
	lw r5,r2,$-44
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@503:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@505:2;515:48
	j @cfg_label_25410
@cfg_label_25410:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@502:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@503:2;515:48
	j @cfg_label_25409
@cfg_label_25409:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@494:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@502:2;515:48
	j @cfg_label_25408
@cfg_label_25408:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@492:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@494:2;515:48
	j @cfg_label_25407
@cfg_label_25407:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@491:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@492:2;515:48
	j @cfg_label_25406
@cfg_label_25406:
	lw r5,r2,$-4
	sw r5,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@490:2;515:48 ::<= ../cpuex2017/raytracer/min-rt.ml@491:2;515:48
	lw r5,r2,$-364
	addi r1,r1,$364
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-364
	addi r1,r1,$364
	pop r2
	pop r6
	jr r6
@a_8770read_light:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$108
	push r4
	jal read_int
	sw r5,r2,$-104
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@522:11;522:22 ../cpuex2017/raytracer/min-rt.ml@522:11;522:19
	j @cfg_label_25405
	push r4
	jal read_int
	sw r5,r2,$-104
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@522:11;522:22 ../cpuex2017/raytracer/min-rt.ml@522:11;522:19
	j @cfg_label_25405
@cfg_label_25405:
	push r4
	jal read_float
	sw r5,r2,$-100
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@525:16;525:29 ../cpuex2017/raytracer/min-rt.ml@525:16;525:26
	j @cfg_label_25404
@cfg_label_25404:
	fmovi f1,$0.017453
	fst f1,r2,$-96
	j @cfg_label_25403
@cfg_label_25403:
	fld f1,r2,$-100
	fld f2,r2,$-96
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@525:11;525:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25402
@cfg_label_25402:
	push r4
	lw r5,r2,$-68
	push r5
	jal @a_8598sin
	sw r5,r2,$-88
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@526:12;526:18 ../cpuex2017/raytracer/min-rt.ml@526:12;526:15
	j @cfg_label_25401
@cfg_label_25401:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@527:9;527:10
	j @cfg_label_25400
@cfg_label_25400:
	fmovi f1,$-1.000000
	fst f1,r2,$-92
	j @cfg_label_25399
@cfg_label_25399:
	fld f1,r2,$-92
	fld f2,r2,$-88
	fmul f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@527:15;527:23 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_25398
@cfg_label_25398:
	lw r7,r2,$-80
	lw r6,r2,$-84
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@527:2;527:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@527:2;527:7 ../cpuex2017/raytracer/min-rt.ml@527:9;527:10 ../cpuex2017/raytracer/min-rt.ml@527:15;527:23
	j @cfg_label_25397
@cfg_label_25397:
	push r4
	jal read_float
	sw r5,r2,$-76
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@528:16;528:29 ../cpuex2017/raytracer/min-rt.ml@528:16;528:26
	j @cfg_label_25396
@cfg_label_25396:
	fmovi f1,$0.017453
	fst f1,r2,$-72
	j @cfg_label_25395
@cfg_label_25395:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@528:11;528:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25394
@cfg_label_25394:
	push r4
	lw r5,r2,$-68
	push r5
	jal @a_8600cos
	sw r5,r2,$-48
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@529:12;529:18 ../cpuex2017/raytracer/min-rt.ml@529:12;529:15
	j @cfg_label_25393
@cfg_label_25393:
	push r4
	lw r5,r2,$-52
	push r5
	jal @a_8598sin
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@530:12;530:18 ../cpuex2017/raytracer/min-rt.ml@530:12;530:15
	j @cfg_label_25392
@cfg_label_25392:
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@531:9;531:10
	j @cfg_label_25391
@cfg_label_25391:
	fld f1,r2,$-48
	fld f2,r2,$-64
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@531:15;531:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@531:15;531:18 ../cpuex2017/raytracer/min-rt.ml@531:22;531:25
	j @cfg_label_25390
@cfg_label_25390:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@531:2;531:25 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@531:2;531:7 ../cpuex2017/raytracer/min-rt.ml@531:9;531:10 ../cpuex2017/raytracer/min-rt.ml@531:15;531:25
	j @cfg_label_25389
@cfg_label_25389:
	push r4
	lw r5,r2,$-52
	push r5
	jal @a_8600cos
	sw r5,r2,$-44
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@532:12;532:18 ../cpuex2017/raytracer/min-rt.ml@532:12;532:15
	j @cfg_label_25388
@cfg_label_25388:
	li r5,$2
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@533:9;533:10
	j @cfg_label_25387
@cfg_label_25387:
	fld f1,r2,$-48
	fld f2,r2,$-44
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@533:15;533:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@533:15;533:18 ../cpuex2017/raytracer/min-rt.ml@533:22;533:25
	j @cfg_label_25386
@cfg_label_25386:
	lw r7,r2,$-36
	lw r6,r2,$-40
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@533:2;533:25 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@533:2;533:7 ../cpuex2017/raytracer/min-rt.ml@533:9;533:10 ../cpuex2017/raytracer/min-rt.ml@533:15;533:25
	j @cfg_label_25385
@cfg_label_25385:
	li r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@534:8;534:9
	j @cfg_label_25384
@cfg_label_25384:
	push r4
	jal read_float
	sw r5,r2,$-28
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@534:14;534:27 ../cpuex2017/raytracer/min-rt.ml@534:14;534:24
	j @cfg_label_25383
@cfg_label_25383:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r31,$408
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@534:2;534:27 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@534:2;534:6 ../cpuex2017/raytracer/min-rt.ml@534:8;534:9 ../cpuex2017/raytracer/min-rt.ml@534:14;534:27
	j @cfg_label_25382
@cfg_label_25382:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@532:2;534:27 ::<= ../cpuex2017/raytracer/min-rt.ml@534:2;534:27
	j @cfg_label_25381
@cfg_label_25381:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@528:2;534:27 ::<= ../cpuex2017/raytracer/min-rt.ml@532:2;534:27
	j @cfg_label_25380
@cfg_label_25380:
	lw r5,r2,$-4
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@522:2;534:27 ::<= ../cpuex2017/raytracer/min-rt.ml@528:2;534:27
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-108
	addi r1,r1,$108
	pop r2
	pop r6
	jr r6
@a_8772rotate_quadratic_matrix:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$448
	li r5,$0
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@544:23;544:24
	j @cfg_label_25379
	li r5,$0
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@544:23;544:24
	j @cfg_label_25379
@cfg_label_25379:
	lw r6,r2,$-444
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@544:18;544:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@544:18;544:21 ../cpuex2017/raytracer/min-rt.ml@544:23;544:24
	j @cfg_label_25378
@cfg_label_25378:
	push r4
	lw r5,r2,$-440
	push r5
	jal @a_8600cos
	sw r5,r2,$-336
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@544:14;544:25 ../cpuex2017/raytracer/min-rt.ml@544:14;544:17
	j @cfg_label_25377
@cfg_label_25377:
	li r5,$0
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@545:23;545:24
	j @cfg_label_25376
@cfg_label_25376:
	lw r6,r2,$-436
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-432
; ../cpuex2017/raytracer/min-rt.ml@545:18;545:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@545:18;545:21 ../cpuex2017/raytracer/min-rt.ml@545:23;545:24
	j @cfg_label_25375
@cfg_label_25375:
	push r4
	lw r5,r2,$-432
	push r5
	jal @a_8598sin
	sw r5,r2,$-340
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@545:14;545:25 ../cpuex2017/raytracer/min-rt.ml@545:14;545:17
	j @cfg_label_25374
@cfg_label_25374:
	li r5,$1
	sw r5,r2,$-428
; ../cpuex2017/raytracer/min-rt.ml@546:23;546:24
	j @cfg_label_25373
@cfg_label_25373:
	lw r6,r2,$-428
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@546:18;546:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@546:18;546:21 ../cpuex2017/raytracer/min-rt.ml@546:23;546:24
	j @cfg_label_25372
@cfg_label_25372:
	push r4
	lw r5,r2,$-424
	push r5
	jal @a_8600cos
	sw r5,r2,$-332
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@546:14;546:25 ../cpuex2017/raytracer/min-rt.ml@546:14;546:17
	j @cfg_label_25371
@cfg_label_25371:
	li r5,$1
	sw r5,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@547:23;547:24
	j @cfg_label_25370
@cfg_label_25370:
	lw r6,r2,$-420
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@547:18;547:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@547:18;547:21 ../cpuex2017/raytracer/min-rt.ml@547:23;547:24
	j @cfg_label_25369
@cfg_label_25369:
	push r4
	lw r5,r2,$-416
	push r5
	jal @a_8598sin
	sw r5,r2,$-344
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@547:14;547:25 ../cpuex2017/raytracer/min-rt.ml@547:14;547:17
	j @cfg_label_25368
@cfg_label_25368:
	li r5,$2
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@548:23;548:24
	j @cfg_label_25367
@cfg_label_25367:
	lw r6,r2,$-412
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-408
; ../cpuex2017/raytracer/min-rt.ml@548:18;548:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@548:18;548:21 ../cpuex2017/raytracer/min-rt.ml@548:23;548:24
	j @cfg_label_25366
@cfg_label_25366:
	push r4
	lw r5,r2,$-408
	push r5
	jal @a_8600cos
	sw r5,r2,$-360
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@548:14;548:25 ../cpuex2017/raytracer/min-rt.ml@548:14;548:17
	j @cfg_label_25365
@cfg_label_25365:
	li r5,$2
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@549:23;549:24
	j @cfg_label_25364
@cfg_label_25364:
	lw r6,r2,$-404
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@549:18;549:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@549:18;549:21 ../cpuex2017/raytracer/min-rt.ml@549:23;549:24
	j @cfg_label_25363
@cfg_label_25363:
	push r4
	lw r5,r2,$-400
	push r5
	jal @a_8598sin
	sw r5,r2,$-364
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@549:14;549:25 ../cpuex2017/raytracer/min-rt.ml@549:14;549:17
	j @cfg_label_25362
@cfg_label_25362:
	fld f1,r2,$-332
	fld f2,r2,$-360
	fmul f1,f1,f2
	fst f1,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@551:12;551:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@551:12;551:17 ../cpuex2017/raytracer/min-rt.ml@551:21;551:26
	j @cfg_label_25361
@cfg_label_25361:
	fld f1,r2,$-340
	fld f2,r2,$-344
	fmul f1,f1,f2
	fst f1,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@552:12;552:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@552:12;552:17 ../cpuex2017/raytracer/min-rt.ml@552:21;552:26
	j @cfg_label_25360
@cfg_label_25360:
	fld f1,r2,$-380
	fld f2,r2,$-360
	fmul f1,f1,f2
	fst f1,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@552:12;552:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@552:12;552:26 ../cpuex2017/raytracer/min-rt.ml@552:30;552:35
	j @cfg_label_25359
@cfg_label_25359:
	fld f1,r2,$-336
	fld f2,r2,$-364
	fmul f1,f1,f2
	fst f1,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@552:39;552:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@552:39;552:44 ../cpuex2017/raytracer/min-rt.ml@552:48;552:53
	j @cfg_label_25358
@cfg_label_25358:
	fld f1,r2,$-396
	fld f2,r2,$-392
	fsub f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@552:12;552:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@552:12;552:35 ../cpuex2017/raytracer/min-rt.ml@552:39;552:53
	j @cfg_label_25357
@cfg_label_25357:
	fld f1,r2,$-336
	fld f2,r2,$-344
	fmul f1,f1,f2
	fst f1,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@553:12;553:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@553:12;553:17 ../cpuex2017/raytracer/min-rt.ml@553:21;553:26
	j @cfg_label_25356
@cfg_label_25356:
	fld f1,r2,$-368
	fld f2,r2,$-360
	fmul f1,f1,f2
	fst f1,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@553:12;553:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@553:12;553:26 ../cpuex2017/raytracer/min-rt.ml@553:30;553:35
	j @cfg_label_25355
@cfg_label_25355:
	fld f1,r2,$-340
	fld f2,r2,$-364
	fmul f1,f1,f2
	fst f1,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@553:39;553:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@553:39;553:44 ../cpuex2017/raytracer/min-rt.ml@553:48;553:53
	j @cfg_label_25354
@cfg_label_25354:
	fld f1,r2,$-388
	fld f2,r2,$-384
	fadd f1,f1,f2
	fst f1,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@553:12;553:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@553:12;553:35 ../cpuex2017/raytracer/min-rt.ml@553:39;553:53
	j @cfg_label_25353
@cfg_label_25353:
	fld f1,r2,$-332
	fld f2,r2,$-364
	fmul f1,f1,f2
	fst f1,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@555:12;555:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@555:12;555:17 ../cpuex2017/raytracer/min-rt.ml@555:21;555:26
	j @cfg_label_25352
@cfg_label_25352:
	fld f1,r2,$-380
	fld f2,r2,$-364
	fmul f1,f1,f2
	fst f1,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@556:12;556:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@556:12;556:26 ../cpuex2017/raytracer/min-rt.ml@556:30;556:35
	j @cfg_label_25351
@cfg_label_25351:
	fld f1,r2,$-336
	fld f2,r2,$-360
	fmul f1,f1,f2
	fst f1,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@556:39;556:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@556:39;556:44 ../cpuex2017/raytracer/min-rt.ml@556:48;556:53
	j @cfg_label_25350
@cfg_label_25350:
	fld f1,r2,$-376
	fld f2,r2,$-372
	fadd f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@556:12;556:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@556:12;556:35 ../cpuex2017/raytracer/min-rt.ml@556:39;556:53
	j @cfg_label_25349
@cfg_label_25349:
	fld f1,r2,$-368
	fld f2,r2,$-364
	fmul f1,f1,f2
	fst f1,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@557:12;557:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@557:12;557:26 ../cpuex2017/raytracer/min-rt.ml@557:30;557:35
	j @cfg_label_25348
@cfg_label_25348:
	fld f1,r2,$-340
	fld f2,r2,$-360
	fmul f1,f1,f2
	fst f1,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@557:39;557:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@557:39;557:44 ../cpuex2017/raytracer/min-rt.ml@557:48;557:53
	j @cfg_label_25347
@cfg_label_25347:
	fld f1,r2,$-356
	fld f2,r2,$-352
	fsub f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@557:12;557:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@557:12;557:35 ../cpuex2017/raytracer/min-rt.ml@557:39;557:53
	j @cfg_label_25346
@cfg_label_25346:
	fmovi f1,$-1.000000
	fst f1,r2,$-348
	j @cfg_label_25345
@cfg_label_25345:
	fld f1,r2,$-348
	fld f2,r2,$-344
	fmul f1,f1,f2
	fst f1,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@559:12;559:22 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_25344
@cfg_label_25344:
	fld f1,r2,$-340
	fld f2,r2,$-332
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@560:12;560:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@560:12;560:17 ../cpuex2017/raytracer/min-rt.ml@560:21;560:26
	j @cfg_label_25343
@cfg_label_25343:
	fld f1,r2,$-336
	fld f2,r2,$-332
	fmul f1,f1,f2
	fst f1,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@561:12;561:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@561:12;561:17 ../cpuex2017/raytracer/min-rt.ml@561:21;561:26
	j @cfg_label_25342
@cfg_label_25342:
	li r5,$0
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@564:16;564:17
	j @cfg_label_25341
@cfg_label_25341:
	lw r6,r2,$-328
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@564:11;564:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@564:11;564:14 ../cpuex2017/raytracer/min-rt.ml@564:16;564:17
	j @cfg_label_25340
@cfg_label_25340:
	li r5,$1
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@565:16;565:17
	j @cfg_label_25339
@cfg_label_25339:
	lw r6,r2,$-324
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@565:11;565:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@565:11;565:14 ../cpuex2017/raytracer/min-rt.ml@565:16;565:17
	j @cfg_label_25338
@cfg_label_25338:
	li r5,$2
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@566:16;566:17
	j @cfg_label_25337
@cfg_label_25337:
	lw r6,r2,$-320
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@566:11;566:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@566:11;566:14 ../cpuex2017/raytracer/min-rt.ml@566:16;566:17
	j @cfg_label_25336
@cfg_label_25336:
	li r5,$0
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@571:7;571:8
	j @cfg_label_25335
@cfg_label_25335:
	fld f1,r2,$-160
	fld f2,r2,$-160
	fmul f1,f1,f2
	fst f1,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@571:19;571:27 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25334
@cfg_label_25334:
	fld f1,r2,$-164
	fld f2,r2,$-316
	fmul f1,f1,f2
	fst f1,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@571:13;571:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@571:13;571:15 ../cpuex2017/raytracer/min-rt.ml@571:19;571:27
	j @cfg_label_25333
@cfg_label_25333:
	fld f1,r2,$-148
	fld f2,r2,$-148
	fmul f1,f1,f2
	fst f1,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@571:37;571:45 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25332
@cfg_label_25332:
	fld f1,r2,$-152
	fld f2,r2,$-312
	fmul f1,f1,f2
	fst f1,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@571:31;571:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@571:31;571:33 ../cpuex2017/raytracer/min-rt.ml@571:37;571:45
	j @cfg_label_25331
@cfg_label_25331:
	fld f1,r2,$-308
	fld f2,r2,$-304
	fadd f1,f1,f2
	fst f1,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@571:13;571:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@571:13;571:27 ../cpuex2017/raytracer/min-rt.ml@571:31;571:45
	j @cfg_label_25330
@cfg_label_25330:
	fld f1,r2,$-128
	fld f2,r2,$-128
	fmul f1,f1,f2
	fst f1,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@571:55;571:63 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25329
@cfg_label_25329:
	fld f1,r2,$-132
	fld f2,r2,$-300
	fmul f1,f1,f2
	fst f1,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@571:49;571:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@571:49;571:51 ../cpuex2017/raytracer/min-rt.ml@571:55;571:63
	j @cfg_label_25328
@cfg_label_25328:
	fld f1,r2,$-296
	fld f2,r2,$-292
	fadd f1,f1,f2
	fst f1,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@571:13;571:63 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@571:13;571:45 ../cpuex2017/raytracer/min-rt.ml@571:49;571:63
	j @cfg_label_25327
@cfg_label_25327:
	lw r7,r2,$-284
	lw r6,r2,$-288
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@571:2;571:63 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@571:2;571:5 ../cpuex2017/raytracer/min-rt.ml@571:7;571:8 ../cpuex2017/raytracer/min-rt.ml@571:13;571:63
	j @cfg_label_25326
@cfg_label_25326:
	li r5,$1
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@572:7;572:8
	j @cfg_label_25325
@cfg_label_25325:
	fld f1,r2,$-92
	fld f2,r2,$-92
	fmul f1,f1,f2
	fst f1,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@572:19;572:27 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25324
@cfg_label_25324:
	fld f1,r2,$-164
	fld f2,r2,$-280
	fmul f1,f1,f2
	fst f1,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@572:13;572:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@572:13;572:15 ../cpuex2017/raytracer/min-rt.ml@572:19;572:27
	j @cfg_label_25323
@cfg_label_25323:
	fld f1,r2,$-84
	fld f2,r2,$-84
	fmul f1,f1,f2
	fst f1,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@572:37;572:45 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25322
@cfg_label_25322:
	fld f1,r2,$-152
	fld f2,r2,$-276
	fmul f1,f1,f2
	fst f1,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@572:31;572:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@572:31;572:33 ../cpuex2017/raytracer/min-rt.ml@572:37;572:45
	j @cfg_label_25321
@cfg_label_25321:
	fld f1,r2,$-272
	fld f2,r2,$-268
	fadd f1,f1,f2
	fst f1,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@572:13;572:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@572:13;572:27 ../cpuex2017/raytracer/min-rt.ml@572:31;572:45
	j @cfg_label_25320
@cfg_label_25320:
	fld f1,r2,$-68
	fld f2,r2,$-68
	fmul f1,f1,f2
	fst f1,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@572:55;572:63 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25319
@cfg_label_25319:
	fld f1,r2,$-132
	fld f2,r2,$-264
	fmul f1,f1,f2
	fst f1,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@572:49;572:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@572:49;572:51 ../cpuex2017/raytracer/min-rt.ml@572:55;572:63
	j @cfg_label_25318
@cfg_label_25318:
	fld f1,r2,$-260
	fld f2,r2,$-256
	fadd f1,f1,f2
	fst f1,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@572:13;572:63 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@572:13;572:45 ../cpuex2017/raytracer/min-rt.ml@572:49;572:63
	j @cfg_label_25317
@cfg_label_25317:
	lw r7,r2,$-248
	lw r6,r2,$-252
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@572:2;572:63 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@572:2;572:5 ../cpuex2017/raytracer/min-rt.ml@572:7;572:8 ../cpuex2017/raytracer/min-rt.ml@572:13;572:63
	j @cfg_label_25316
@cfg_label_25316:
	li r5,$2
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@573:7;573:8
	j @cfg_label_25315
@cfg_label_25315:
	fld f1,r2,$-156
	fld f2,r2,$-156
	fmul f1,f1,f2
	fst f1,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@573:19;573:27 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25314
@cfg_label_25314:
	fld f1,r2,$-164
	fld f2,r2,$-244
	fmul f1,f1,f2
	fst f1,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@573:13;573:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@573:13;573:15 ../cpuex2017/raytracer/min-rt.ml@573:19;573:27
	j @cfg_label_25313
@cfg_label_25313:
	fld f1,r2,$-144
	fld f2,r2,$-144
	fmul f1,f1,f2
	fst f1,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@573:37;573:45 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25312
@cfg_label_25312:
	fld f1,r2,$-152
	fld f2,r2,$-240
	fmul f1,f1,f2
	fst f1,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@573:31;573:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@573:31;573:33 ../cpuex2017/raytracer/min-rt.ml@573:37;573:45
	j @cfg_label_25311
@cfg_label_25311:
	fld f1,r2,$-236
	fld f2,r2,$-232
	fadd f1,f1,f2
	fst f1,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@573:13;573:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@573:13;573:27 ../cpuex2017/raytracer/min-rt.ml@573:31;573:45
	j @cfg_label_25310
@cfg_label_25310:
	fld f1,r2,$-124
	fld f2,r2,$-124
	fmul f1,f1,f2
	fst f1,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@573:55;573:63 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25309
@cfg_label_25309:
	fld f1,r2,$-132
	fld f2,r2,$-228
	fmul f1,f1,f2
	fst f1,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@573:49;573:63 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@573:49;573:51 ../cpuex2017/raytracer/min-rt.ml@573:55;573:63
	j @cfg_label_25308
@cfg_label_25308:
	fld f1,r2,$-224
	fld f2,r2,$-220
	fadd f1,f1,f2
	fst f1,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@573:13;573:63 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@573:13;573:45 ../cpuex2017/raytracer/min-rt.ml@573:49;573:63
	j @cfg_label_25307
@cfg_label_25307:
	lw r7,r2,$-212
	lw r6,r2,$-216
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@573:2;573:63 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@573:2;573:5 ../cpuex2017/raytracer/min-rt.ml@573:7;573:8 ../cpuex2017/raytracer/min-rt.ml@573:13;573:63
	j @cfg_label_25306
@cfg_label_25306:
	li r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@576:7;576:8
	j @cfg_label_25305
@cfg_label_25305:
	fmovi f1,$2.000000
	fst f1,r2,$-180
	j @cfg_label_25304
@cfg_label_25304:
	fld f1,r2,$-164
	fld f2,r2,$-92
	fmul f1,f1,f2
	fst f1,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:21;576:23 ../cpuex2017/raytracer/min-rt.ml@576:27;576:30
	j @cfg_label_25303
@cfg_label_25303:
	fld f1,r2,$-208
	fld f2,r2,$-156
	fmul f1,f1,f2
	fst f1,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:21;576:30 ../cpuex2017/raytracer/min-rt.ml@576:34;576:37
	j @cfg_label_25302
@cfg_label_25302:
	fld f1,r2,$-152
	fld f2,r2,$-84
	fmul f1,f1,f2
	fst f1,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@576:41;576:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:41;576:43 ../cpuex2017/raytracer/min-rt.ml@576:47;576:50
	j @cfg_label_25301
@cfg_label_25301:
	fld f1,r2,$-204
	fld f2,r2,$-144
	fmul f1,f1,f2
	fst f1,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@576:41;576:57 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:41;576:50 ../cpuex2017/raytracer/min-rt.ml@576:54;576:57
	j @cfg_label_25300
@cfg_label_25300:
	fld f1,r2,$-200
	fld f2,r2,$-196
	fadd f1,f1,f2
	fst f1,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@576:21;576:37 ../cpuex2017/raytracer/min-rt.ml@576:41;576:57
	j @cfg_label_25299
@cfg_label_25299:
	fld f1,r2,$-132
	fld f2,r2,$-68
	fmul f1,f1,f2
	fst f1,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@576:61;576:70 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:61;576:63 ../cpuex2017/raytracer/min-rt.ml@576:67;576:70
	j @cfg_label_25298
@cfg_label_25298:
	fld f1,r2,$-192
	fld f2,r2,$-124
	fmul f1,f1,f2
	fst f1,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@576:61;576:77 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:61;576:70 ../cpuex2017/raytracer/min-rt.ml@576:74;576:77
	j @cfg_label_25297
@cfg_label_25297:
	fld f1,r2,$-188
	fld f2,r2,$-184
	fadd f1,f1,f2
	fst f1,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@576:21;576:77 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@576:21;576:57 ../cpuex2017/raytracer/min-rt.ml@576:61;576:77
	j @cfg_label_25296
@cfg_label_25296:
	fld f1,r2,$-180
	fld f2,r2,$-176
	fmul f1,f1,f2
	fst f1,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@576:13;576:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@576:13;576:16 ../cpuex2017/raytracer/min-rt.ml@576:21;576:77
	j @cfg_label_25295
@cfg_label_25295:
	lw r7,r2,$-168
	lw r6,r2,$-172
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@576:2;576:78 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@576:2;576:5 ../cpuex2017/raytracer/min-rt.ml@576:7;576:8 ../cpuex2017/raytracer/min-rt.ml@576:13;576:78
	j @cfg_label_25294
@cfg_label_25294:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@577:7;577:8
	j @cfg_label_25293
@cfg_label_25293:
	fmovi f1,$2.000000
	fst f1,r2,$-112
	j @cfg_label_25292
@cfg_label_25292:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fmul f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:21;577:23 ../cpuex2017/raytracer/min-rt.ml@577:27;577:30
	j @cfg_label_25291
@cfg_label_25291:
	fld f1,r2,$-96
	fld f2,r2,$-156
	fmul f1,f1,f2
	fst f1,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:21;577:30 ../cpuex2017/raytracer/min-rt.ml@577:34;577:37
	j @cfg_label_25290
@cfg_label_25290:
	fld f1,r2,$-152
	fld f2,r2,$-148
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@577:41;577:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:41;577:43 ../cpuex2017/raytracer/min-rt.ml@577:47;577:50
	j @cfg_label_25289
@cfg_label_25289:
	fld f1,r2,$-88
	fld f2,r2,$-144
	fmul f1,f1,f2
	fst f1,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@577:41;577:57 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:41;577:50 ../cpuex2017/raytracer/min-rt.ml@577:54;577:57
	j @cfg_label_25288
@cfg_label_25288:
	fld f1,r2,$-140
	fld f2,r2,$-136
	fadd f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@577:21;577:37 ../cpuex2017/raytracer/min-rt.ml@577:41;577:57
	j @cfg_label_25287
@cfg_label_25287:
	fld f1,r2,$-132
	fld f2,r2,$-128
	fmul f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@577:61;577:70 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:61;577:63 ../cpuex2017/raytracer/min-rt.ml@577:67;577:70
	j @cfg_label_25286
@cfg_label_25286:
	fld f1,r2,$-72
	fld f2,r2,$-124
	fmul f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@577:61;577:77 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:61;577:70 ../cpuex2017/raytracer/min-rt.ml@577:74;577:77
	j @cfg_label_25285
@cfg_label_25285:
	fld f1,r2,$-120
	fld f2,r2,$-116
	fadd f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@577:21;577:77 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@577:21;577:57 ../cpuex2017/raytracer/min-rt.ml@577:61;577:77
	j @cfg_label_25284
@cfg_label_25284:
	fld f1,r2,$-112
	fld f2,r2,$-108
	fmul f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@577:13;577:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@577:13;577:16 ../cpuex2017/raytracer/min-rt.ml@577:21;577:77
	j @cfg_label_25283
@cfg_label_25283:
	lw r7,r2,$-100
	lw r6,r2,$-104
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@577:2;577:78 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@577:2;577:5 ../cpuex2017/raytracer/min-rt.ml@577:7;577:8 ../cpuex2017/raytracer/min-rt.ml@577:13;577:78
	j @cfg_label_25282
@cfg_label_25282:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@578:7;578:8
	j @cfg_label_25281
@cfg_label_25281:
	fmovi f1,$2.000000
	fst f1,r2,$-56
	j @cfg_label_25280
@cfg_label_25280:
	fld f1,r2,$-96
	fld f2,r2,$-92
	fmul f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@578:21;578:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@578:21;578:30 ../cpuex2017/raytracer/min-rt.ml@578:34;578:37
	j @cfg_label_25279
@cfg_label_25279:
	fld f1,r2,$-88
	fld f2,r2,$-84
	fmul f1,f1,f2
	fst f1,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@578:41;578:57 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@578:41;578:50 ../cpuex2017/raytracer/min-rt.ml@578:54;578:57
	j @cfg_label_25278
@cfg_label_25278:
	fld f1,r2,$-80
	fld f2,r2,$-76
	fadd f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@578:21;578:57 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@578:21;578:37 ../cpuex2017/raytracer/min-rt.ml@578:41;578:57
	j @cfg_label_25277
@cfg_label_25277:
	fld f1,r2,$-72
	fld f2,r2,$-68
	fmul f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@578:61;578:77 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@578:61;578:70 ../cpuex2017/raytracer/min-rt.ml@578:74;578:77
	j @cfg_label_25276
@cfg_label_25276:
	fld f1,r2,$-64
	fld f2,r2,$-60
	fadd f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@578:21;578:77 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@578:21;578:57 ../cpuex2017/raytracer/min-rt.ml@578:61;578:77
	j @cfg_label_25275
@cfg_label_25275:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@578:13;578:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@578:13;578:16 ../cpuex2017/raytracer/min-rt.ml@578:21;578:77
	j @cfg_label_25274
@cfg_label_25274:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@578:2;578:78 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@578:2;578:5 ../cpuex2017/raytracer/min-rt.ml@578:7;578:8 ../cpuex2017/raytracer/min-rt.ml@578:13;578:78
	j @cfg_label_25273
@cfg_label_25273:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@577:2;578:78 ::<= ../cpuex2017/raytracer/min-rt.ml@578:2;578:78
	j @cfg_label_25272
@cfg_label_25272:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@576:2;578:78 ::<= ../cpuex2017/raytracer/min-rt.ml@577:2;578:78
	j @cfg_label_25271
@cfg_label_25271:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@573:2;578:78 ::<= ../cpuex2017/raytracer/min-rt.ml@576:2;578:78
	j @cfg_label_25270
@cfg_label_25270:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@572:2;578:78 ::<= ../cpuex2017/raytracer/min-rt.ml@573:2;578:78
	j @cfg_label_25269
@cfg_label_25269:
	lw r5,r2,$-4
	sw r5,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@544:2;578:78 ::<= ../cpuex2017/raytracer/min-rt.ml@572:2;578:78
	lw r5,r2,$-448
	addi r1,r1,$448
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-448
	addi r1,r1,$448
	pop r2
	pop r6
	jr r6
@a_8775read_nth_object:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$632
	sw r3,r2,$-120
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	j @cfg_label_25268
	sw r3,r2,$-120
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	j @cfg_label_25268
@cfg_label_25268:
	push r4
	jal read_int
	sw r5,r2,$-392
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@585:16;585:27 ../cpuex2017/raytracer/min-rt.ml@585:16;585:24
	j @cfg_label_25267
@cfg_label_25267:
	li r5,$-1
	sw r5,r2,$-628
; ../cpuex2017/raytracer/min-rt.ml@586:16;586:18
	j @cfg_label_25266
@cfg_label_25266:
	lw r6,r2,$-628
	lw r5,r2,$-392
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-624
; ../cpuex2017/raytracer/min-rt.ml@586:5;586:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@586:5;586:12 ../cpuex2017/raytracer/min-rt.ml@586:16;586:18
	j @cfg_label_25265
@cfg_label_25265:
	li r5,$1
	sw r5,r2,$-620
; ../cpuex2017/raytracer/min-rt.ml@586:5;586:18
	j @cfg_label_25264
@cfg_label_25264:
	lw r5,r2,$-624
	lw r6,r2,$-620
	bne r5,r6,@cfg_label_25261
	j @cfg_label_25260
	j @cfg_label_25262
	j @cfg_label_25263
@cfg_label_25263:
@cfg_label_25261:
	lw r5,r31,$12
	sw r5,r2,$-632
; ../cpuex2017/raytracer/min-rt.ml@585:2;662:9 ::<= ../cpuex2017/raytracer/min-rt.ml@662:4;662:9
	lw r5,r2,$-632
	addi r1,r1,$632
	pop r2
	pop r6
	jr r6
@cfg_label_25262:
@cfg_label_25260:
	push r4
	jal read_int
	sw r5,r2,$-160
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@588:17;588:28 ../cpuex2017/raytracer/min-rt.ml@588:17;588:25
	j @cfg_label_25259
@cfg_label_25259:
	push r4
	jal read_int
	sw r5,r2,$-388
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@589:21;589:32 ../cpuex2017/raytracer/min-rt.ml@589:21;589:29
	j @cfg_label_25258
@cfg_label_25258:
	push r4
	jal read_int
	sw r5,r2,$-144
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@590:20;590:31 ../cpuex2017/raytracer/min-rt.ml@590:20;590:28
	j @cfg_label_25257
@cfg_label_25257:
	li r5,$3
	sw r5,r2,$-616
; ../cpuex2017/raytracer/min-rt.ml@592:29;592:30
	j @cfg_label_25256
@cfg_label_25256:
	fmovi f1,$0.000000
	fst f1,r2,$-612
	j @cfg_label_25255
@cfg_label_25255:
	lw r6,r2,$-612
	lw r5,r2,$-616
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25986
@emit_label_25985:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25985
@emit_label_25986:
	mov r5,r7
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@592:16;592:34 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@592:29;592:30 ../cpuex2017/raytracer/min-rt.ml@592:31;592:34
	j @cfg_label_25254
@cfg_label_25254:
	li r5,$0
	sw r5,r2,$-608
; ../cpuex2017/raytracer/min-rt.ml@593:11;593:12
	j @cfg_label_25253
@cfg_label_25253:
	push r4
	jal read_float
	sw r5,r2,$-604
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@593:17;593:30 ../cpuex2017/raytracer/min-rt.ml@593:17;593:27
	j @cfg_label_25252
@cfg_label_25252:
	lw r7,r2,$-604
	lw r6,r2,$-608
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@593:6;593:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@593:6;593:9 ../cpuex2017/raytracer/min-rt.ml@593:11;593:12 ../cpuex2017/raytracer/min-rt.ml@593:17;593:30
	j @cfg_label_25251
@cfg_label_25251:
	li r5,$1
	sw r5,r2,$-600
; ../cpuex2017/raytracer/min-rt.ml@594:11;594:12
	j @cfg_label_25250
@cfg_label_25250:
	push r4
	jal read_float
	sw r5,r2,$-596
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@594:17;594:30 ../cpuex2017/raytracer/min-rt.ml@594:17;594:27
	j @cfg_label_25249
@cfg_label_25249:
	lw r7,r2,$-596
	lw r6,r2,$-600
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@594:6;594:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@594:6;594:9 ../cpuex2017/raytracer/min-rt.ml@594:11;594:12 ../cpuex2017/raytracer/min-rt.ml@594:17;594:30
	j @cfg_label_25248
@cfg_label_25248:
	li r5,$2
	sw r5,r2,$-592
; ../cpuex2017/raytracer/min-rt.ml@595:11;595:12
	j @cfg_label_25247
@cfg_label_25247:
	push r4
	jal read_float
	sw r5,r2,$-588
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@595:17;595:30 ../cpuex2017/raytracer/min-rt.ml@595:17;595:27
	j @cfg_label_25246
@cfg_label_25246:
	lw r7,r2,$-588
	lw r6,r2,$-592
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@595:6;595:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@595:6;595:9 ../cpuex2017/raytracer/min-rt.ml@595:11;595:12 ../cpuex2017/raytracer/min-rt.ml@595:17;595:30
	j @cfg_label_25245
@cfg_label_25245:
	li r5,$3
	sw r5,r2,$-584
; ../cpuex2017/raytracer/min-rt.ml@597:29;597:30
	j @cfg_label_25244
@cfg_label_25244:
	fmovi f1,$0.000000
	fst f1,r2,$-580
	j @cfg_label_25243
@cfg_label_25243:
	lw r6,r2,$-580
	lw r5,r2,$-584
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25988
@emit_label_25987:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25987
@emit_label_25988:
	mov r5,r7
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@597:16;597:34 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@597:29;597:30 ../cpuex2017/raytracer/min-rt.ml@597:31;597:34
	j @cfg_label_25242
@cfg_label_25242:
	li r5,$0
	sw r5,r2,$-576
; ../cpuex2017/raytracer/min-rt.ml@598:11;598:12
	j @cfg_label_25241
@cfg_label_25241:
	push r4
	jal read_float
	sw r5,r2,$-572
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@598:17;598:30 ../cpuex2017/raytracer/min-rt.ml@598:17;598:27
	j @cfg_label_25240
@cfg_label_25240:
	lw r7,r2,$-572
	lw r6,r2,$-576
	lw r5,r2,$-384
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@598:6;598:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@598:6;598:9 ../cpuex2017/raytracer/min-rt.ml@598:11;598:12 ../cpuex2017/raytracer/min-rt.ml@598:17;598:30
	j @cfg_label_25239
@cfg_label_25239:
	li r5,$1
	sw r5,r2,$-568
; ../cpuex2017/raytracer/min-rt.ml@599:11;599:12
	j @cfg_label_25238
@cfg_label_25238:
	push r4
	jal read_float
	sw r5,r2,$-564
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@599:17;599:30 ../cpuex2017/raytracer/min-rt.ml@599:17;599:27
	j @cfg_label_25237
@cfg_label_25237:
	lw r7,r2,$-564
	lw r6,r2,$-568
	lw r5,r2,$-384
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@599:6;599:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@599:6;599:9 ../cpuex2017/raytracer/min-rt.ml@599:11;599:12 ../cpuex2017/raytracer/min-rt.ml@599:17;599:30
	j @cfg_label_25236
@cfg_label_25236:
	li r5,$2
	sw r5,r2,$-560
; ../cpuex2017/raytracer/min-rt.ml@600:11;600:12
	j @cfg_label_25235
@cfg_label_25235:
	push r4
	jal read_float
	sw r5,r2,$-556
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@600:17;600:30 ../cpuex2017/raytracer/min-rt.ml@600:17;600:27
	j @cfg_label_25234
@cfg_label_25234:
	lw r7,r2,$-556
	lw r6,r2,$-560
	lw r5,r2,$-384
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@600:6;600:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@600:6;600:9 ../cpuex2017/raytracer/min-rt.ml@600:11;600:12 ../cpuex2017/raytracer/min-rt.ml@600:17;600:30
	j @cfg_label_25233
@cfg_label_25233:
	push r4
	jal read_float
	sw r5,r2,$-552
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@602:29;602:42 ../cpuex2017/raytracer/min-rt.ml@602:29;602:39
	j @cfg_label_25232
@cfg_label_25232:
	fmovi f1,$0.000000
	fst f1,r2,$-548
	j @cfg_label_25231
@cfg_label_25231:
	fld f1,r2,$-552
	fld f2,r2,$-548
	flt f1,f2
	bft @emit_label_25989
	li r5,$0
	j @emit_label_25990
@emit_label_25989:
	li r5,$1
@emit_label_25990:
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@602:21;602:43 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_25230
@cfg_label_25230:
	li r5,$2
	sw r5,r2,$-544
; ../cpuex2017/raytracer/min-rt.ml@604:35;604:36
	j @cfg_label_25229
@cfg_label_25229:
	fmovi f1,$0.000000
	fst f1,r2,$-540
	j @cfg_label_25228
@cfg_label_25228:
	lw r6,r2,$-540
	lw r5,r2,$-544
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25992
@emit_label_25991:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25991
@emit_label_25992:
	mov r5,r7
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@604:22;604:40 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@604:35;604:36 ../cpuex2017/raytracer/min-rt.ml@604:37;604:40
	j @cfg_label_25227
@cfg_label_25227:
	li r5,$0
	sw r5,r2,$-536
; ../cpuex2017/raytracer/min-rt.ml@605:17;605:18
	j @cfg_label_25226
@cfg_label_25226:
	push r4
	jal read_float
	sw r5,r2,$-532
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@605:23;605:36 ../cpuex2017/raytracer/min-rt.ml@605:23;605:33
	j @cfg_label_25225
@cfg_label_25225:
	lw r7,r2,$-532
	lw r6,r2,$-536
	lw r5,r2,$-376
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@605:6;605:36 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@605:6;605:15 ../cpuex2017/raytracer/min-rt.ml@605:17;605:18 ../cpuex2017/raytracer/min-rt.ml@605:23;605:36
	j @cfg_label_25224
@cfg_label_25224:
	li r5,$1
	sw r5,r2,$-528
; ../cpuex2017/raytracer/min-rt.ml@606:17;606:18
	j @cfg_label_25223
@cfg_label_25223:
	push r4
	jal read_float
	sw r5,r2,$-524
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@606:23;606:36 ../cpuex2017/raytracer/min-rt.ml@606:23;606:33
	j @cfg_label_25222
@cfg_label_25222:
	lw r7,r2,$-524
	lw r6,r2,$-528
	lw r5,r2,$-376
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@606:6;606:36 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@606:6;606:15 ../cpuex2017/raytracer/min-rt.ml@606:17;606:18 ../cpuex2017/raytracer/min-rt.ml@606:23;606:36
	j @cfg_label_25221
@cfg_label_25221:
	li r5,$3
	sw r5,r2,$-520
; ../cpuex2017/raytracer/min-rt.ml@608:31;608:32
	j @cfg_label_25220
@cfg_label_25220:
	fmovi f1,$0.000000
	fst f1,r2,$-516
	j @cfg_label_25219
@cfg_label_25219:
	lw r6,r2,$-516
	lw r5,r2,$-520
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25994
@emit_label_25993:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25993
@emit_label_25994:
	mov r5,r7
	sw r5,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@608:18;608:36 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@608:31;608:32 ../cpuex2017/raytracer/min-rt.ml@608:33;608:36
	j @cfg_label_25218
@cfg_label_25218:
	li r5,$0
	sw r5,r2,$-512
; ../cpuex2017/raytracer/min-rt.ml@609:13;609:14
	j @cfg_label_25217
@cfg_label_25217:
	push r4
	jal read_float
	sw r5,r2,$-508
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@609:19;609:32 ../cpuex2017/raytracer/min-rt.ml@609:19;609:29
	j @cfg_label_25216
@cfg_label_25216:
	lw r7,r2,$-508
	lw r6,r2,$-512
	lw r5,r2,$-372
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@609:6;609:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@609:6;609:11 ../cpuex2017/raytracer/min-rt.ml@609:13;609:14 ../cpuex2017/raytracer/min-rt.ml@609:19;609:32
	j @cfg_label_25215
@cfg_label_25215:
	li r5,$1
	sw r5,r2,$-504
; ../cpuex2017/raytracer/min-rt.ml@610:13;610:14
	j @cfg_label_25214
@cfg_label_25214:
	push r4
	jal read_float
	sw r5,r2,$-500
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@610:19;610:32 ../cpuex2017/raytracer/min-rt.ml@610:19;610:29
	j @cfg_label_25213
@cfg_label_25213:
	lw r7,r2,$-500
	lw r6,r2,$-504
	lw r5,r2,$-372
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@610:6;610:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@610:6;610:11 ../cpuex2017/raytracer/min-rt.ml@610:13;610:14 ../cpuex2017/raytracer/min-rt.ml@610:19;610:32
	j @cfg_label_25212
@cfg_label_25212:
	li r5,$2
	sw r5,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@611:13;611:14
	j @cfg_label_25211
@cfg_label_25211:
	push r4
	jal read_float
	sw r5,r2,$-492
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@611:19;611:32 ../cpuex2017/raytracer/min-rt.ml@611:19;611:29
	j @cfg_label_25210
@cfg_label_25210:
	lw r7,r2,$-492
	lw r6,r2,$-496
	lw r5,r2,$-372
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@611:6;611:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@611:6;611:11 ../cpuex2017/raytracer/min-rt.ml@611:13;611:14 ../cpuex2017/raytracer/min-rt.ml@611:19;611:32
	j @cfg_label_25209
@cfg_label_25209:
	li r5,$3
	sw r5,r2,$-488
; ../cpuex2017/raytracer/min-rt.ml@613:34;613:35
	j @cfg_label_25208
@cfg_label_25208:
	fmovi f1,$0.000000
	fst f1,r2,$-484
	j @cfg_label_25207
@cfg_label_25207:
	lw r6,r2,$-484
	lw r5,r2,$-488
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25996
@emit_label_25995:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25995
@emit_label_25996:
	mov r5,r7
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@613:21;613:39 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@613:34;613:35 ../cpuex2017/raytracer/min-rt.ml@613:36;613:39
	j @cfg_label_25206
@cfg_label_25206:
	li r5,$0
	sw r5,r2,$-480
; ../cpuex2017/raytracer/min-rt.ml@614:20;614:21
	j @cfg_label_25205
@cfg_label_25205:
	lw r6,r2,$-480
	lw r5,r2,$-144
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-476
; ../cpuex2017/raytracer/min-rt.ml@614:9;614:21 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@614:9;614:16 ../cpuex2017/raytracer/min-rt.ml@614:20;614:21
	j @cfg_label_25204
@cfg_label_25204:
	li r5,$1
	sw r5,r2,$-472
; ../cpuex2017/raytracer/min-rt.ml@614:9;614:21
	j @cfg_label_25203
@cfg_label_25203:
	lw r5,r2,$-476
	lw r6,r2,$-472
	bne r5,r6,@cfg_label_25055
	j @cfg_label_25054
	j @cfg_label_25056
	j @cfg_label_25057
@cfg_label_25057:
@cfg_label_25055:
	lw r5,r2,$-120
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@614:6;620:13 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	j @cfg_label_25202
@cfg_label_25056:
@cfg_label_25054:
	li r5,$0
	sw r5,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@616:12;616:13
	j @cfg_label_25053
@cfg_label_25053:
	push r4
	jal read_float
	sw r5,r2,$-468
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@616:23;616:36 ../cpuex2017/raytracer/min-rt.ml@616:23;616:33
	j @cfg_label_25052
@cfg_label_25052:
	fmovi f1,$0.017453
	fst f1,r2,$-464
	j @cfg_label_25051
@cfg_label_25051:
	fld f1,r2,$-468
	fld f2,r2,$-464
	fmul f1,f1,f2
	fst f1,r2,$-456
; ../cpuex2017/raytracer/min-rt.ml@616:18;616:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25050
@cfg_label_25050:
	lw r7,r2,$-456
	lw r6,r2,$-460
	lw r5,r2,$-124
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@616:2;616:37 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@616:2;616:10 ../cpuex2017/raytracer/min-rt.ml@616:12;616:13 ../cpuex2017/raytracer/min-rt.ml@616:18;616:37
	j @cfg_label_25049
@cfg_label_25049:
	li r5,$1
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@617:12;617:13
	j @cfg_label_25048
@cfg_label_25048:
	push r4
	jal read_float
	sw r5,r2,$-452
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@617:23;617:36 ../cpuex2017/raytracer/min-rt.ml@617:23;617:33
	j @cfg_label_25047
@cfg_label_25047:
	fmovi f1,$0.017453
	fst f1,r2,$-448
	j @cfg_label_25046
@cfg_label_25046:
	fld f1,r2,$-452
	fld f2,r2,$-448
	fmul f1,f1,f2
	fst f1,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@617:18;617:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25045
@cfg_label_25045:
	lw r7,r2,$-440
	lw r6,r2,$-444
	lw r5,r2,$-124
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@617:2;617:37 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@617:2;617:10 ../cpuex2017/raytracer/min-rt.ml@617:12;617:13 ../cpuex2017/raytracer/min-rt.ml@617:18;617:37
	j @cfg_label_25044
@cfg_label_25044:
	li r5,$2
	sw r5,r2,$-428
; ../cpuex2017/raytracer/min-rt.ml@618:12;618:13
	j @cfg_label_25043
@cfg_label_25043:
	push r4
	jal read_float
	sw r5,r2,$-436
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@618:23;618:36 ../cpuex2017/raytracer/min-rt.ml@618:23;618:33
	j @cfg_label_25042
@cfg_label_25042:
	fmovi f1,$0.017453
	fst f1,r2,$-432
	j @cfg_label_25041
@cfg_label_25041:
	fld f1,r2,$-436
	fld f2,r2,$-432
	fmul f1,f1,f2
	fst f1,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@618:18;618:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@483:2;483:3 ../cpuex2017/raytracer/min-rt.ml@483:7;483:18
	j @cfg_label_25040
@cfg_label_25040:
	lw r7,r2,$-424
	lw r6,r2,$-428
	lw r5,r2,$-124
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@618:2;618:37 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@618:2;618:10 ../cpuex2017/raytracer/min-rt.ml@618:12;618:13 ../cpuex2017/raytracer/min-rt.ml@618:18;618:37
	j @cfg_label_25039
@cfg_label_25039:
	lw r5,r2,$-416
	sw r5,r2,$-408
; ../cpuex2017/raytracer/min-rt.ml@617:2;618:37 ::<= ../cpuex2017/raytracer/min-rt.ml@618:2;618:37
	j @cfg_label_25038
@cfg_label_25038:
	lw r5,r2,$-408
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@614:6;620:13 ::<= ../cpuex2017/raytracer/min-rt.ml@617:2;618:37
	j @cfg_label_25201
@cfg_label_25202:
@cfg_label_25201:
	li r5,$2
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@625:32;625:33
	j @cfg_label_25200
@cfg_label_25200:
	lw r5,r2,$-160
	lw r6,r2,$-404
	bne r5,r6,@cfg_label_25059
	j @cfg_label_25058
	j @cfg_label_25060
	j @cfg_label_25061
@cfg_label_25060:
@cfg_label_25058:
	lw r5,r31,$16
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@625:22;625:57 ::<= ../cpuex2017/raytracer/min-rt.ml@625:39;625:43
	j @cfg_label_25198
@cfg_label_25061:
@cfg_label_25059:
	lw r5,r2,$-152
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@625:22;625:57 ::<= ../cpuex2017/raytracer/min-rt.ml@625:49;625:57
	j @cfg_label_25199
@cfg_label_25199:
@cfg_label_25198:
	li r5,$4
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@626:30;626:31
	j @cfg_label_25197
@cfg_label_25197:
	fmovi f1,$0.000000
	fst f1,r2,$-396
	j @cfg_label_25196
@cfg_label_25196:
	lw r6,r2,$-396
	lw r5,r2,$-400
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25998
@emit_label_25997:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25997
@emit_label_25998:
	mov r5,r7
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@626:17;626:35 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@626:30;626:31 ../cpuex2017/raytracer/min-rt.ml@626:32;626:35
	j @cfg_label_25195
@cfg_label_25195:
	sw r3,r2,$-364
	lw r5,r2,$-392
	sw r5,r3,$0
	lw r5,r2,$-160
	sw r5,r3,$4
	lw r5,r2,$-388
	sw r5,r3,$8
	lw r5,r2,$-144
	sw r5,r3,$12
	lw r5,r2,$-128
	sw r5,r3,$16
	lw r5,r2,$-384
	sw r5,r3,$20
	lw r5,r2,$-380
	sw r5,r3,$24
	lw r5,r2,$-376
	sw r5,r3,$28
	lw r5,r2,$-372
	sw r5,r3,$32
	lw r5,r2,$-124
	sw r5,r3,$36
	lw r5,r2,$-368
	sw r5,r3,$40
	addi r3,r3,$44
; ../cpuex2017/raytracer/min-rt.ml@629:2;635:13
	j @cfg_label_25194
@cfg_label_25194:
	lw r7,r2,$-364
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@637:6;637:24 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@637:6;637:13 ../cpuex2017/raytracer/min-rt.ml@637:15;637:16 ../cpuex2017/raytracer/min-rt.ml@637:21;637:24
	j @cfg_label_25193
@cfg_label_25193:
	li r5,$3
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@639:16;639:17
	j @cfg_label_25192
@cfg_label_25192:
	lw r5,r2,$-160
	lw r6,r2,$-360
	bne r5,r6,@cfg_label_25163
	j @cfg_label_25162
	j @cfg_label_25164
	j @cfg_label_25165
@cfg_label_25165:
@cfg_label_25163:
	li r5,$2
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@649:21;649:22
	j @cfg_label_25161
@cfg_label_25161:
	lw r5,r2,$-160
	lw r6,r2,$-156
	bne r5,r6,@cfg_label_25158
	j @cfg_label_25157
	j @cfg_label_25159
	j @cfg_label_25160
@cfg_label_25160:
@cfg_label_25158:
	lw r5,r2,$-120
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@639:6;652:13 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	j @cfg_label_25191
@cfg_label_25159:
@cfg_label_25157:
	lw r5,r2,$-152
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@651:18;651:30 ::= Onot ../cpuex2017/raytracer/min-rt.ml@651:22;651:30
	j @cfg_label_25156
@cfg_label_25156:
	push r4
	lw r5,r2,$-148
	push r5
	lw r5,r2,$-128
	push r5
	jal @a_8667vecunit_sgn
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@639:6;652:13 ../cpuex2017/raytracer/min-rt.ml@651:1;651:12
	j @cfg_label_25190
@cfg_label_25164:
@cfg_label_25162:
	li r5,$0
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@642:15;642:16
	j @cfg_label_25155
@cfg_label_25155:
	lw r6,r2,$-356
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@642:10;642:17 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@642:10;642:13 ../cpuex2017/raytracer/min-rt.ml@642:15;642:16
	j @cfg_label_25154
@cfg_label_25154:
	li r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@643:7;643:8
	j @cfg_label_25153
@cfg_label_25153:
	fmovi f1,$0.000000
	fst f1,r2,$-352
	j @cfg_label_25152
@cfg_label_25152:
	fld f1,r2,$-316
	fld f2,r2,$-352
	feq f1,f2
	bft @emit_label_25999
	li r5,$0
	j @emit_label_26000
@emit_label_25999:
	li r5,$1
@emit_label_26000:
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@643:16;643:25 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25151
@cfg_label_25151:
	li r5,$1
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@643:16;643:25
	j @cfg_label_25150
@cfg_label_25150:
	lw r5,r2,$-348
	lw r6,r2,$-344
	bne r5,r6,@cfg_label_25081
	j @cfg_label_25080
	j @cfg_label_25082
	j @cfg_label_25083
@cfg_label_25082:
@cfg_label_25080:
	fmovi f1,$0.000000
	fst f1,r2,$-300
	j @cfg_label_25148
@cfg_label_25083:
@cfg_label_25081:
	fmovi f1,$0.000000
	fst f1,r2,$-340
	j @cfg_label_25079
@cfg_label_25079:
	fld f1,r2,$-316
	fld f2,r2,$-340
	feq f1,f2
	bft @emit_label_26001
	li r5,$0
	j @emit_label_26002
@emit_label_26001:
	li r5,$1
@emit_label_26002:
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25078
@cfg_label_25078:
	li r5,$1
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	j @cfg_label_25077
@cfg_label_25077:
	lw r5,r2,$-336
	lw r6,r2,$-332
	bne r5,r6,@cfg_label_25070
	j @cfg_label_25069
	j @cfg_label_25071
	j @cfg_label_25072
@cfg_label_25071:
@cfg_label_25069:
	fmovi f1,$0.000000
	fst f1,r2,$-312
	j @cfg_label_25074
@cfg_label_25072:
@cfg_label_25070:
	fmovi f1,$0.000000
	fst f1,r2,$-328
	j @cfg_label_25068
@cfg_label_25068:
	fld f1,r2,$-316
	fld f2,r2,$-328
	flt f2,f1
	bft @emit_label_26003
	li r5,$0
	j @emit_label_26004
@emit_label_26003:
	li r5,$1
@emit_label_26004:
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_25067
@cfg_label_25067:
	li r5,$1
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	j @cfg_label_25066
@cfg_label_25066:
	lw r5,r2,$-324
	lw r6,r2,$-320
	bne r5,r6,@cfg_label_25063
	j @cfg_label_25062
	j @cfg_label_25064
	j @cfg_label_25065
@cfg_label_25064:
@cfg_label_25062:
	fmovi f1,$1.000000
	fst f1,r2,$-312
	j @cfg_label_25075
@cfg_label_25065:
@cfg_label_25063:
	fmovi f1,$-1.000000
	fst f1,r2,$-312
	j @cfg_label_25076
@cfg_label_25076:
@cfg_label_25075:
@cfg_label_25074:
	fld f1,r2,$-316
	fld f2,r2,$-316
	fmul f1,f1,f2
	fst f1,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@643:49;643:55 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25073
@cfg_label_25073:
	fld f1,r2,$-312
	fld f2,r2,$-308
	fdiv f1,f1,f2
	fst f1,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@643:13;643:55 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@643:40;643:45 ../cpuex2017/raytracer/min-rt.ml@643:49;643:55
	j @cfg_label_25149
@cfg_label_25149:
@cfg_label_25148:
	lw r7,r2,$-300
	lw r6,r2,$-304
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@643:2;643:55 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@643:2;643:5 ../cpuex2017/raytracer/min-rt.ml@643:7;643:8 ../cpuex2017/raytracer/min-rt.ml@643:13;643:55
	j @cfg_label_25147
@cfg_label_25147:
	li r5,$1
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@644:15;644:16
	j @cfg_label_25146
@cfg_label_25146:
	lw r6,r2,$-296
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@644:10;644:17 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@644:10;644:13 ../cpuex2017/raytracer/min-rt.ml@644:15;644:16
	j @cfg_label_25145
@cfg_label_25145:
	li r5,$1
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@645:7;645:8
	j @cfg_label_25144
@cfg_label_25144:
	fmovi f1,$0.000000
	fst f1,r2,$-292
	j @cfg_label_25143
@cfg_label_25143:
	fld f1,r2,$-256
	fld f2,r2,$-292
	feq f1,f2
	bft @emit_label_26005
	li r5,$0
	j @emit_label_26006
@emit_label_26005:
	li r5,$1
@emit_label_26006:
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@645:16;645:25 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25142
@cfg_label_25142:
	li r5,$1
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@645:16;645:25
	j @cfg_label_25141
@cfg_label_25141:
	lw r5,r2,$-288
	lw r6,r2,$-284
	bne r5,r6,@cfg_label_25103
	j @cfg_label_25102
	j @cfg_label_25104
	j @cfg_label_25105
@cfg_label_25104:
@cfg_label_25102:
	fmovi f1,$0.000000
	fst f1,r2,$-240
	j @cfg_label_25139
@cfg_label_25105:
@cfg_label_25103:
	fmovi f1,$0.000000
	fst f1,r2,$-280
	j @cfg_label_25101
@cfg_label_25101:
	fld f1,r2,$-256
	fld f2,r2,$-280
	feq f1,f2
	bft @emit_label_26007
	li r5,$0
	j @emit_label_26008
@emit_label_26007:
	li r5,$1
@emit_label_26008:
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25100
@cfg_label_25100:
	li r5,$1
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	j @cfg_label_25099
@cfg_label_25099:
	lw r5,r2,$-276
	lw r6,r2,$-272
	bne r5,r6,@cfg_label_25092
	j @cfg_label_25091
	j @cfg_label_25093
	j @cfg_label_25094
@cfg_label_25093:
@cfg_label_25091:
	fmovi f1,$0.000000
	fst f1,r2,$-252
	j @cfg_label_25096
@cfg_label_25094:
@cfg_label_25092:
	fmovi f1,$0.000000
	fst f1,r2,$-268
	j @cfg_label_25090
@cfg_label_25090:
	fld f1,r2,$-256
	fld f2,r2,$-268
	flt f2,f1
	bft @emit_label_26009
	li r5,$0
	j @emit_label_26010
@emit_label_26009:
	li r5,$1
@emit_label_26010:
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_25089
@cfg_label_25089:
	li r5,$1
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	j @cfg_label_25088
@cfg_label_25088:
	lw r5,r2,$-264
	lw r6,r2,$-260
	bne r5,r6,@cfg_label_25085
	j @cfg_label_25084
	j @cfg_label_25086
	j @cfg_label_25087
@cfg_label_25086:
@cfg_label_25084:
	fmovi f1,$1.000000
	fst f1,r2,$-252
	j @cfg_label_25097
@cfg_label_25087:
@cfg_label_25085:
	fmovi f1,$-1.000000
	fst f1,r2,$-252
	j @cfg_label_25098
@cfg_label_25098:
@cfg_label_25097:
@cfg_label_25096:
	fld f1,r2,$-256
	fld f2,r2,$-256
	fmul f1,f1,f2
	fst f1,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@645:49;645:55 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25095
@cfg_label_25095:
	fld f1,r2,$-252
	fld f2,r2,$-248
	fdiv f1,f1,f2
	fst f1,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@645:13;645:55 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@645:40;645:45 ../cpuex2017/raytracer/min-rt.ml@645:49;645:55
	j @cfg_label_25140
@cfg_label_25140:
@cfg_label_25139:
	lw r7,r2,$-240
	lw r6,r2,$-244
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@645:2;645:55 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@645:2;645:5 ../cpuex2017/raytracer/min-rt.ml@645:7;645:8 ../cpuex2017/raytracer/min-rt.ml@645:13;645:55
	j @cfg_label_25138
@cfg_label_25138:
	li r5,$2
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@646:15;646:16
	j @cfg_label_25137
@cfg_label_25137:
	lw r6,r2,$-236
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@646:10;646:17 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@646:10;646:13 ../cpuex2017/raytracer/min-rt.ml@646:15;646:16
	j @cfg_label_25136
@cfg_label_25136:
	li r5,$2
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@647:7;647:8
	j @cfg_label_25135
@cfg_label_25135:
	fmovi f1,$0.000000
	fst f1,r2,$-232
	j @cfg_label_25134
@cfg_label_25134:
	fld f1,r2,$-196
	fld f2,r2,$-232
	feq f1,f2
	bft @emit_label_26011
	li r5,$0
	j @emit_label_26012
@emit_label_26011:
	li r5,$1
@emit_label_26012:
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@647:16;647:25 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25133
@cfg_label_25133:
	li r5,$1
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@647:16;647:25
	j @cfg_label_25132
@cfg_label_25132:
	lw r5,r2,$-228
	lw r6,r2,$-224
	bne r5,r6,@cfg_label_25125
	j @cfg_label_25124
	j @cfg_label_25126
	j @cfg_label_25127
@cfg_label_25126:
@cfg_label_25124:
	fmovi f1,$0.000000
	fst f1,r2,$-180
	j @cfg_label_25130
@cfg_label_25127:
@cfg_label_25125:
	fmovi f1,$0.000000
	fst f1,r2,$-220
	j @cfg_label_25123
@cfg_label_25123:
	fld f1,r2,$-196
	fld f2,r2,$-220
	feq f1,f2
	bft @emit_label_26013
	li r5,$0
	j @emit_label_26014
@emit_label_26013:
	li r5,$1
@emit_label_26014:
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_25122
@cfg_label_25122:
	li r5,$1
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	j @cfg_label_25121
@cfg_label_25121:
	lw r5,r2,$-216
	lw r6,r2,$-212
	bne r5,r6,@cfg_label_25114
	j @cfg_label_25113
	j @cfg_label_25115
	j @cfg_label_25116
@cfg_label_25115:
@cfg_label_25113:
	fmovi f1,$0.000000
	fst f1,r2,$-192
	j @cfg_label_25118
@cfg_label_25116:
@cfg_label_25114:
	fmovi f1,$0.000000
	fst f1,r2,$-208
	j @cfg_label_25112
@cfg_label_25112:
	fld f1,r2,$-196
	fld f2,r2,$-208
	flt f2,f1
	bft @emit_label_26015
	li r5,$0
	j @emit_label_26016
@emit_label_26015:
	li r5,$1
@emit_label_26016:
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_25111
@cfg_label_25111:
	li r5,$1
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	j @cfg_label_25110
@cfg_label_25110:
	lw r5,r2,$-204
	lw r6,r2,$-200
	bne r5,r6,@cfg_label_25107
	j @cfg_label_25106
	j @cfg_label_25108
	j @cfg_label_25109
@cfg_label_25108:
@cfg_label_25106:
	fmovi f1,$1.000000
	fst f1,r2,$-192
	j @cfg_label_25119
@cfg_label_25109:
@cfg_label_25107:
	fmovi f1,$-1.000000
	fst f1,r2,$-192
	j @cfg_label_25120
@cfg_label_25120:
@cfg_label_25119:
@cfg_label_25118:
	fld f1,r2,$-196
	fld f2,r2,$-196
	fmul f1,f1,f2
	fst f1,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@647:49;647:55 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_25117
@cfg_label_25117:
	fld f1,r2,$-192
	fld f2,r2,$-188
	fdiv f1,f1,f2
	fst f1,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@647:13;647:55 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@647:40;647:45 ../cpuex2017/raytracer/min-rt.ml@647:49;647:55
	j @cfg_label_25131
@cfg_label_25131:
@cfg_label_25130:
	lw r7,r2,$-180
	lw r6,r2,$-184
	lw r5,r2,$-128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@646:2;647:55 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@647:2;647:5 ../cpuex2017/raytracer/min-rt.ml@647:7;647:8 ../cpuex2017/raytracer/min-rt.ml@647:13;647:55
	j @cfg_label_25129
@cfg_label_25129:
	lw r5,r2,$-172
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@644:2;647:55 ::<= ../cpuex2017/raytracer/min-rt.ml@646:2;647:55
	j @cfg_label_25128
@cfg_label_25128:
	lw r5,r2,$-164
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@639:6;652:13 ::<= ../cpuex2017/raytracer/min-rt.ml@644:2;647:55
	j @cfg_label_25189
@cfg_label_25191:
@cfg_label_25190:
@cfg_label_25189:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@655:20;655:21
	j @cfg_label_25188
@cfg_label_25188:
	lw r6,r2,$-140
	lw r5,r2,$-144
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@655:9;655:21 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@655:9;655:16 ../cpuex2017/raytracer/min-rt.ml@655:20;655:21
	j @cfg_label_25187
@cfg_label_25187:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@655:9;655:21
	j @cfg_label_25186
@cfg_label_25186:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_25167
	j @cfg_label_25166
	j @cfg_label_25168
	j @cfg_label_25169
@cfg_label_25168:
@cfg_label_25166:
	push r4
	lw r5,r2,$-124
	push r5
	lw r5,r2,$-128
	push r5
	jal @a_8772rotate_quadratic_matrix
	sw r5,r2,$-116
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@655:6;657:13 ../cpuex2017/raytracer/min-rt.ml@656:1;656:24
	j @cfg_label_25184
@cfg_label_25169:
@cfg_label_25167:
	lw r5,r2,$-120
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@655:6;657:13 ::<= ../cpuex2017/raytracer/min-rt.ml@585:25;585:27
	j @cfg_label_25185
@cfg_label_25185:
@cfg_label_25184:
	lw r5,r31,$16
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@655:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@659:6;659:10
	j @cfg_label_25183
@cfg_label_25183:
	lw r5,r2,$-108
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@639:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@655:6;659:10
	j @cfg_label_25182
@cfg_label_25182:
	lw r5,r2,$-100
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@625:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@639:6;659:10
	j @cfg_label_25181
@cfg_label_25181:
	lw r5,r2,$-92
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@613:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@625:6;659:10
	j @cfg_label_25180
@cfg_label_25180:
	lw r5,r2,$-84
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@611:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@613:6;659:10
	j @cfg_label_25179
@cfg_label_25179:
	lw r5,r2,$-76
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@610:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@611:6;659:10
	j @cfg_label_25178
@cfg_label_25178:
	lw r5,r2,$-68
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@608:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@610:6;659:10
	j @cfg_label_25177
@cfg_label_25177:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@606:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@608:6;659:10
	j @cfg_label_25176
@cfg_label_25176:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@602:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@606:6;659:10
	j @cfg_label_25175
@cfg_label_25175:
	lw r5,r2,$-44
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@600:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@602:6;659:10
	j @cfg_label_25174
@cfg_label_25174:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@599:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@600:6;659:10
	j @cfg_label_25173
@cfg_label_25173:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@597:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@599:6;659:10
	j @cfg_label_25172
@cfg_label_25172:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@595:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@597:6;659:10
	j @cfg_label_25171
@cfg_label_25171:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@594:6;659:10 ::<= ../cpuex2017/raytracer/min-rt.ml@595:6;659:10
	j @cfg_label_25170
@cfg_label_25170:
	lw r5,r2,$-4
	sw r5,r2,$-632
; ../cpuex2017/raytracer/min-rt.ml@585:2;662:9 ::<= ../cpuex2017/raytracer/min-rt.ml@594:6;659:10
	lw r5,r2,$-632
	addi r1,r1,$632
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-632
	addi r1,r1,$632
	pop r2
	pop r6
	jr r6
@a_8777read_object:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$68
	li r5,$60
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	j @cfg_label_25037
	li r5,$60
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	j @cfg_label_25037
@cfg_label_25037:
	lw r6,r2,$-64
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@667:5;667:11 ::= Olt ../cpuex2017/raytracer/min-rt.ml@667:5;667:6 ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	j @cfg_label_25036
@cfg_label_25036:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@667:5;667:11
	j @cfg_label_25035
@cfg_label_25035:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_25032
	j @cfg_label_25031
	j @cfg_label_25033
	j @cfg_label_25034
@cfg_label_25034:
@cfg_label_25032:
	sw r3,r2,$-68
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_25033:
@cfg_label_25031:
	push r4
	lw r5,r2,$8
	push r5
	jal @a_8775read_nth_object
	sw r5,r2,$-52
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	j @cfg_label_25030
@cfg_label_25030:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	j @cfg_label_25029
@cfg_label_25029:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_25026
	j @cfg_label_25025
	j @cfg_label_25027
	j @cfg_label_25028
@cfg_label_25028:
@cfg_label_25026:
	li r5,$0
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@671:17;671:18
	j @cfg_label_25024
@cfg_label_25024:
	lw r7,r2,$8
	lw r6,r2,$-4
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@671:17;671:18 ../cpuex2017/raytracer/min-rt.ml@671:23;671:24
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_25027:
@cfg_label_25025:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@669:23;669:24
	j @cfg_label_25023
@cfg_label_25023:
	lw r6,r2,$-44
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@669:19;669:20 ../cpuex2017/raytracer/min-rt.ml@669:23;669:24
	j @cfg_label_25022
@cfg_label_25022:
	li r5,$60
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	j @cfg_label_25021
@cfg_label_25021:
	lw r6,r2,$-40
	lw r5,r2,$-8
	slt r5,r5,r6
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@667:5;667:11 ::= Olt ../cpuex2017/raytracer/min-rt.ml@667:5;667:6 ../cpuex2017/raytracer/min-rt.ml@667:9;667:11
	j @cfg_label_25020
@cfg_label_25020:
	li r5,$1
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@667:5;667:11
	j @cfg_label_25019
@cfg_label_25019:
	lw r5,r2,$-36
	lw r6,r2,$-32
	bne r5,r6,@cfg_label_25016
	j @cfg_label_25015
	j @cfg_label_25017
	j @cfg_label_25018
@cfg_label_25018:
@cfg_label_25016:
	sw r3,r2,$-68
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_25017:
@cfg_label_25015:
	push r4
	lw r5,r2,$-8
	push r5
	jal @a_8775read_nth_object
	sw r5,r2,$-28
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	j @cfg_label_25014
@cfg_label_25014:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	j @cfg_label_25013
@cfg_label_25013:
	lw r5,r2,$-28
	lw r6,r2,$-24
	bne r5,r6,@cfg_label_25010
	j @cfg_label_25009
	j @cfg_label_25011
	j @cfg_label_25012
@cfg_label_25012:
@cfg_label_25010:
	li r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@671:17;671:18
	j @cfg_label_25008
@cfg_label_25008:
	lw r7,r2,$-8
	lw r6,r2,$-12
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@671:17;671:18 ../cpuex2017/raytracer/min-rt.ml@671:23;671:24
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_25011:
@cfg_label_25009:
	li r5,$1
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@669:23;669:24
	j @cfg_label_25007
@cfg_label_25007:
	lw r6,r2,$-20
	lw r5,r2,$-8
	add r5,r5,r6
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@669:19;669:20 ../cpuex2017/raytracer/min-rt.ml@669:23;669:24
	j @cfg_label_25006
@cfg_label_25006:
	push r4
	lw r5,r2,$-16
	push r5
	jal @a_8777read_object
	sw r5,r2,$-68
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@667:2;672:9 ../cpuex2017/raytracer/min-rt.ml@669:6;669:17
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@a_8781read_net_item:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$76
	push r4
	jal read_int
	sw r5,r2,$-12
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	j @cfg_label_25005
	push r4
	jal read_int
	sw r5,r2,$-12
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	j @cfg_label_25005
@cfg_label_25005:
	li r5,$-1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	j @cfg_label_25004
@cfg_label_25004:
	lw r5,r2,$-12
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_25001
	j @cfg_label_25000
	j @cfg_label_25002
	j @cfg_label_25003
@cfg_label_25003:
@cfg_label_25001:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@686:36;686:37
	j @cfg_label_24999
@cfg_label_24999:
	lw r6,r2,$-56
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@686:27;686:33 ../cpuex2017/raytracer/min-rt.ml@686:36;686:37
	j @cfg_label_24998
@cfg_label_24998:
	push r4
	jal read_int
	sw r5,r2,$-24
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	j @cfg_label_24997
@cfg_label_24997:
	li r5,$-1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	j @cfg_label_24996
@cfg_label_24996:
	lw r5,r2,$-24
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_24990
	j @cfg_label_24989
	j @cfg_label_24991
	j @cfg_label_24992
@cfg_label_24992:
@cfg_label_24990:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@686:36;686:37
	j @cfg_label_24988
@cfg_label_24988:
	lw r6,r2,$-36
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@686:27;686:33 ../cpuex2017/raytracer/min-rt.ml@686:36;686:37
	j @cfg_label_24987
@cfg_label_24987:
	push r4
	lw r5,r2,$-32
	push r5
	jal @a_8781read_net_item
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	j @cfg_label_24986
@cfg_label_24986:
	lw r7,r2,$-24
	lw r6,r2,$-28
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@687:5;687:6 ../cpuex2017/raytracer/min-rt.ml@687:8;687:14 ../cpuex2017/raytracer/min-rt.ml@687:19;687:23
	j @cfg_label_24985
@cfg_label_24985:
	lw r5,r2,$-16
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::<= ../cpuex2017/raytracer/min-rt.ml@687:25;687:26
	j @cfg_label_24995
@cfg_label_24991:
@cfg_label_24989:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@684:43;684:44
	j @cfg_label_24984
@cfg_label_24984:
	lw r6,r2,$-48
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@684:34;684:40 ../cpuex2017/raytracer/min-rt.ml@684:43;684:44
	j @cfg_label_24983
@cfg_label_24983:
	li r5,$-1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24982
@cfg_label_24982:
	lw r6,r2,$-40
	lw r5,r2,$-44
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26018
@emit_label_26017:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26017
@emit_label_26018:
	mov r5,r7
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24994
@cfg_label_24995:
@cfg_label_24994:
	lw r7,r2,$-12
	lw r6,r2,$8
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@687:5;687:6 ../cpuex2017/raytracer/min-rt.ml@687:8;687:14 ../cpuex2017/raytracer/min-rt.ml@687:19;687:23
	j @cfg_label_24993
@cfg_label_24993:
	lw r5,r2,$-4
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@683:2;687:27 ::<= ../cpuex2017/raytracer/min-rt.ml@687:25;687:26
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_25002:
@cfg_label_25000:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@684:43;684:44
	j @cfg_label_24981
@cfg_label_24981:
	lw r6,r2,$-68
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@684:34;684:40 ../cpuex2017/raytracer/min-rt.ml@684:43;684:44
	j @cfg_label_24980
@cfg_label_24980:
	li r5,$-1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24979
@cfg_label_24979:
	lw r6,r2,$-60
	lw r5,r2,$-64
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26020
@emit_label_26019:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26019
@emit_label_26020:
	mov r5,r7
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@683:2;687:27 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@a_8783read_or_network:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	li r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	j @cfg_label_24978
	li r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	j @cfg_label_24978
@cfg_label_24978:
	push r4
	jal read_int
	sw r5,r2,$-96
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	j @cfg_label_24977
@cfg_label_24977:
	li r5,$-1
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	j @cfg_label_24976
@cfg_label_24976:
	lw r5,r2,$-96
	lw r6,r2,$-116
	bne r5,r6,@cfg_label_24942
	j @cfg_label_24941
	j @cfg_label_24943
	j @cfg_label_24944
@cfg_label_24944:
@cfg_label_24942:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	j @cfg_label_24940
@cfg_label_24940:
	push r4
	lw r5,r2,$-104
	push r5
	jal @a_8781read_net_item
	sw r5,r2,$-88
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	j @cfg_label_24939
@cfg_label_24939:
	lw r7,r2,$-96
	lw r6,r2,$-100
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@687:5;687:6 ../cpuex2017/raytracer/min-rt.ml@687:8;687:14 ../cpuex2017/raytracer/min-rt.ml@687:19;687:23
	j @cfg_label_24938
@cfg_label_24938:
	lw r5,r2,$-88
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@691:12;691:27 ::<= ../cpuex2017/raytracer/min-rt.ml@687:25;687:26
	j @cfg_label_24975
@cfg_label_24943:
@cfg_label_24941:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44
	j @cfg_label_24937
@cfg_label_24937:
	li r5,$-1
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24936
@cfg_label_24936:
	lw r6,r2,$-108
	lw r5,r2,$-112
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26022
@emit_label_26021:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26021
@emit_label_26022:
	mov r5,r7
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@691:12;691:27 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24974
@cfg_label_24975:
@cfg_label_24974:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@692:10;692:11
	j @cfg_label_24973
@cfg_label_24973:
	lw r6,r2,$-84
	lw r5,r2,$-12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@692:5;692:12 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@692:5;692:8 ../cpuex2017/raytracer/min-rt.ml@692:10;692:11
	j @cfg_label_24972
@cfg_label_24972:
	li r5,$-1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@692:15;692:17
	j @cfg_label_24971
@cfg_label_24971:
	lw r5,r2,$-80
	lw r6,r2,$-76
	bne r5,r6,@cfg_label_24968
	j @cfg_label_24967
	j @cfg_label_24969
	j @cfg_label_24970
@cfg_label_24970:
@cfg_label_24968:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@695:38;695:39
	j @cfg_label_24966
@cfg_label_24966:
	lw r6,r2,$-64
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@695:29;695:39 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@695:29;695:35 ../cpuex2017/raytracer/min-rt.ml@695:38;695:39
	j @cfg_label_24965
@cfg_label_24965:
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@691:26;691:27
	j @cfg_label_24964
@cfg_label_24964:
	push r4
	lw r5,r2,$-60
	push r5
	jal @a_8781read_net_item
	sw r5,r2,$-24
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@691:12;691:27 ../cpuex2017/raytracer/min-rt.ml@691:12;691:25
	j @cfg_label_24963
@cfg_label_24963:
	li r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@692:10;692:11
	j @cfg_label_24962
@cfg_label_24962:
	lw r6,r2,$-56
	lw r5,r2,$-24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@692:5;692:12 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@692:5;692:8 ../cpuex2017/raytracer/min-rt.ml@692:10;692:11
	j @cfg_label_24961
@cfg_label_24961:
	li r5,$-1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@692:15;692:17
	j @cfg_label_24960
@cfg_label_24960:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_24954
	j @cfg_label_24953
	j @cfg_label_24955
	j @cfg_label_24956
@cfg_label_24956:
@cfg_label_24954:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@695:38;695:39
	j @cfg_label_24952
@cfg_label_24952:
	lw r6,r2,$-36
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@695:29;695:39 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@695:29;695:35 ../cpuex2017/raytracer/min-rt.ml@695:38;695:39
	j @cfg_label_24951
@cfg_label_24951:
	push r4
	lw r5,r2,$-32
	push r5
	jal @a_8783read_or_network
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ../cpuex2017/raytracer/min-rt.ml@695:12;695:27
	j @cfg_label_24950
@cfg_label_24950:
	lw r7,r2,$-24
	lw r6,r2,$-28
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@696:5;696:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@696:5;696:6 ../cpuex2017/raytracer/min-rt.ml@696:8;696:14 ../cpuex2017/raytracer/min-rt.ml@696:19;696:22
	j @cfg_label_24949
@cfg_label_24949:
	lw r5,r2,$-16
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ::<= ../cpuex2017/raytracer/min-rt.ml@696:24;696:25
	j @cfg_label_24959
@cfg_label_24955:
@cfg_label_24953:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@693:27;693:28
	j @cfg_label_24948
@cfg_label_24948:
	lw r6,r2,$-44
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@693:18;693:24 ../cpuex2017/raytracer/min-rt.ml@693:27;693:28
	j @cfg_label_24947
@cfg_label_24947:
	lw r6,r2,$-24
	lw r5,r2,$-40
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26024
@emit_label_26023:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26023
@emit_label_26024:
	mov r5,r7
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@695:12;695:40 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ../cpuex2017/raytracer/min-rt.ml@693:30;693:33
	j @cfg_label_24958
@cfg_label_24959:
@cfg_label_24958:
	lw r7,r2,$-12
	lw r6,r2,$8
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@696:5;696:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@696:5;696:6 ../cpuex2017/raytracer/min-rt.ml@696:8;696:14 ../cpuex2017/raytracer/min-rt.ml@696:19;696:22
	j @cfg_label_24957
@cfg_label_24957:
	lw r5,r2,$-4
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@691:2;696:26 ::<= ../cpuex2017/raytracer/min-rt.ml@696:24;696:25
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@cfg_label_24969:
@cfg_label_24967:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@693:27;693:28
	j @cfg_label_24946
@cfg_label_24946:
	lw r6,r2,$-72
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@693:18;693:24 ../cpuex2017/raytracer/min-rt.ml@693:27;693:28
	j @cfg_label_24945
@cfg_label_24945:
	lw r6,r2,$-12
	lw r5,r2,$-68
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26026
@emit_label_26025:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26025
@emit_label_26026:
	mov r5,r7
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@691:2;696:26 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@693:18;693:28 ../cpuex2017/raytracer/min-rt.ml@693:30;693:33
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@a_8785read_and_network:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	j @cfg_label_24935
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	j @cfg_label_24935
@cfg_label_24935:
	push r4
	jal read_int
	sw r5,r2,$-80
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@683:13;683:24 ../cpuex2017/raytracer/min-rt.ml@683:13;683:21
	j @cfg_label_24934
@cfg_label_24934:
	li r5,$-1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@684:12;684:14
	j @cfg_label_24933
@cfg_label_24933:
	lw r5,r2,$-80
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_24903
	j @cfg_label_24902
	j @cfg_label_24904
	j @cfg_label_24905
@cfg_label_24905:
@cfg_label_24903:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@686:27;686:37
	j @cfg_label_24901
@cfg_label_24901:
	push r4
	lw r5,r2,$-88
	push r5
	jal @a_8781read_net_item
	sw r5,r2,$-72
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@686:12;686:38 ../cpuex2017/raytracer/min-rt.ml@686:12;686:25
	j @cfg_label_24900
@cfg_label_24900:
	lw r7,r2,$-80
	lw r6,r2,$-84
	lw r5,r2,$-72
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@687:5;687:23 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@687:5;687:6 ../cpuex2017/raytracer/min-rt.ml@687:8;687:14 ../cpuex2017/raytracer/min-rt.ml@687:19;687:23
	j @cfg_label_24899
@cfg_label_24899:
	lw r5,r2,$-72
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@700:12;700:27 ::<= ../cpuex2017/raytracer/min-rt.ml@687:25;687:26
	j @cfg_label_24932
@cfg_label_24904:
@cfg_label_24902:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@684:34;684:44
	j @cfg_label_24898
@cfg_label_24898:
	li r5,$-1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24897
@cfg_label_24897:
	lw r6,r2,$-92
	lw r5,r2,$-96
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26028
@emit_label_26027:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26027
@emit_label_26028:
	mov r5,r7
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@700:12;700:27 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@684:34;684:44 ../cpuex2017/raytracer/min-rt.ml@684:47;684:49
	j @cfg_label_24931
@cfg_label_24932:
@cfg_label_24931:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@701:10;701:11
	j @cfg_label_24930
@cfg_label_24930:
	lw r6,r2,$-68
	lw r5,r2,$-56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@701:5;701:12 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@701:5;701:8 ../cpuex2017/raytracer/min-rt.ml@701:10;701:11
	j @cfg_label_24929
@cfg_label_24929:
	li r5,$-1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@701:15;701:17
	j @cfg_label_24928
@cfg_label_24928:
	lw r5,r2,$-64
	lw r6,r2,$-60
	bne r5,r6,@cfg_label_24925
	j @cfg_label_24924
	j @cfg_label_24926
	j @cfg_label_24927
@cfg_label_24926:
@cfg_label_24924:
	sw r3,r2,$-104
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@700:2;705:3
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_24927:
@cfg_label_24925:
	lw r7,r2,$-56
	lw r6,r2,$8
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@703:4;703:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@703:4;703:11 ../cpuex2017/raytracer/min-rt.ml@703:13;703:14 ../cpuex2017/raytracer/min-rt.ml@703:19;703:22
	j @cfg_label_24923
@cfg_label_24923:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@704:26;704:27
	j @cfg_label_24922
@cfg_label_24922:
	lw r6,r2,$-52
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@704:22;704:27 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@704:22;704:23 ../cpuex2017/raytracer/min-rt.ml@704:26;704:27
	j @cfg_label_24921
@cfg_label_24921:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@700:26;700:27
	j @cfg_label_24920
@cfg_label_24920:
	push r4
	lw r5,r2,$-48
	push r5
	jal @a_8781read_net_item
	sw r5,r2,$-32
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@700:12;700:27 ../cpuex2017/raytracer/min-rt.ml@700:12;700:25
	j @cfg_label_24919
@cfg_label_24919:
	li r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@701:10;701:11
	j @cfg_label_24918
@cfg_label_24918:
	lw r6,r2,$-44
	lw r5,r2,$-32
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@701:5;701:12 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@701:5;701:8 ../cpuex2017/raytracer/min-rt.ml@701:10;701:11
	j @cfg_label_24917
@cfg_label_24917:
	li r5,$-1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@701:15;701:17
	j @cfg_label_24916
@cfg_label_24916:
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_24911
	j @cfg_label_24910
	j @cfg_label_24912
	j @cfg_label_24913
@cfg_label_24912:
@cfg_label_24910:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@704:4;704:28
	j @cfg_label_24914
@cfg_label_24913:
@cfg_label_24911:
	lw r7,r2,$-32
	lw r6,r2,$-28
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@703:4;703:22 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@703:4;703:11 ../cpuex2017/raytracer/min-rt.ml@703:13;703:14 ../cpuex2017/raytracer/min-rt.ml@703:19;703:22
	j @cfg_label_24909
@cfg_label_24909:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@704:26;704:27
	j @cfg_label_24908
@cfg_label_24908:
	lw r6,r2,$-24
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@704:22;704:27 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@704:22;704:23 ../cpuex2017/raytracer/min-rt.ml@704:26;704:27
	j @cfg_label_24907
@cfg_label_24907:
	push r4
	lw r5,r2,$-20
	push r5
	jal @a_8785read_and_network
	sw r5,r2,$-12
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@704:4;704:28 ../cpuex2017/raytracer/min-rt.ml@704:4;704:20
	j @cfg_label_24906
@cfg_label_24906:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@704:4;704:28 ::<= ../cpuex2017/raytracer/min-rt.ml@704:4;704:28
	j @cfg_label_24915
@cfg_label_24915:
@cfg_label_24914:
	lw r5,r2,$-4
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@700:2;705:3 ::<= ../cpuex2017/raytracer/min-rt.ml@704:4;704:28
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
@a_8789solver_rect_surface:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$164
	lw r6,r2,$68
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@735:13;735:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:13;735:19 ../cpuex2017/raytracer/min-rt.ml@735:21;735:23
	j @cfg_label_24896
	lw r6,r2,$68
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@735:13;735:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@735:13;735:19 ../cpuex2017/raytracer/min-rt.ml@735:21;735:23
	j @cfg_label_24896
@cfg_label_24896:
	fmovi f1,$0.000000
	fst f1,r2,$-156
	j @cfg_label_24895
@cfg_label_24895:
	fld f1,r2,$-160
	fld f2,r2,$-156
	feq f1,f2
	bft @emit_label_26029
	li r5,$0
	j @emit_label_26030
@emit_label_26029:
	li r5,$1
@emit_label_26030:
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@735:5;735:24 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24894
@cfg_label_24894:
	li r5,$1
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@735:5;735:24
	j @cfg_label_24893
@cfg_label_24893:
	lw r5,r2,$-152
	lw r6,r2,$-148
	bne r5,r6,@cfg_label_24890
	j @cfg_label_24889
	j @cfg_label_24891
	j @cfg_label_24892
@cfg_label_24891:
@cfg_label_24889:
	lw r5,r31,$12
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ::<= ../cpuex2017/raytracer/min-rt.ml@735:30;735:35
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_24892:
@cfg_label_24890:
	lw r6,r2,$68
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@737:48;737:59 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@737:48;737:54 ../cpuex2017/raytracer/min-rt.ml@737:56;737:58
	j @cfg_label_24888
@cfg_label_24888:
	fmovi f1,$0.000000
	fst f1,r2,$-140
	j @cfg_label_24887
@cfg_label_24887:
	fld f1,r2,$-144
	fld f2,r2,$-140
	flt f1,f2
	bft @emit_label_26031
	li r5,$0
	j @emit_label_26032
@emit_label_26031:
	li r5,$1
@emit_label_26032:
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@737:41;737:59 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_24886
@cfg_label_24886:
	li r5,$1
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	j @cfg_label_24885
@cfg_label_24885:
	lw r5,r2,$32
	lw r6,r2,$-136
	bne r5,r6,@cfg_label_24826
	j @cfg_label_24825
	j @cfg_label_24827
	j @cfg_label_24828
@cfg_label_24827:
@cfg_label_24825:
	lw r5,r2,$-132
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@737:21;737:60 ::= Onot ../cpuex2017/raytracer/min-rt.ml@16:44;16:45
	j @cfg_label_24883
@cfg_label_24828:
@cfg_label_24826:
	lw r5,r2,$-132
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@737:21;737:60 ::<= ../cpuex2017/raytracer/min-rt.ml@16:51;16:52
	j @cfg_label_24884
@cfg_label_24884:
@cfg_label_24883:
	lw r6,r2,$68
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@737:62;737:70 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@737:62;737:65 ../cpuex2017/raytracer/min-rt.ml@737:67;737:69
	j @cfg_label_24882
@cfg_label_24882:
	li r5,$1
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	j @cfg_label_24881
@cfg_label_24881:
	lw r5,r2,$-128
	lw r6,r2,$-124
	bne r5,r6,@cfg_label_24831
	j @cfg_label_24830
	j @cfg_label_24832
	j @cfg_label_24833
@cfg_label_24832:
@cfg_label_24830:
	lw r5,r2,$-116
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@737:10;737:70 ::<= ../cpuex2017/raytracer/min-rt.ml@31:15;31:16
	j @cfg_label_24879
@cfg_label_24833:
@cfg_label_24831:
	fmovi f1,$-1.000000
	fst f1,r2,$-120
	j @cfg_label_24829
@cfg_label_24829:
	fld f1,r2,$-120
	fld f2,r2,$-116
	fmul f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@737:10;737:70 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24880
@cfg_label_24880:
@cfg_label_24879:
	fld f1,r2,$-112
	fld f2,r2,$56
	fsub f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@739:12;739:19 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@739:12;739:13 ../cpuex2017/raytracer/min-rt.ml@739:17;739:19
	j @cfg_label_24878
@cfg_label_24878:
	lw r6,r2,$68
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@739:24;739:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@739:24;739:30 ../cpuex2017/raytracer/min-rt.ml@739:32;739:34
	j @cfg_label_24877
@cfg_label_24877:
	fld f1,r2,$-108
	fld f2,r2,$-104
	fdiv f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@739:11;739:35 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@739:12;739:19 ../cpuex2017/raytracer/min-rt.ml@739:24;739:35
	j @cfg_label_24876
@cfg_label_24876:
	lw r6,r2,$72
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@740:24;740:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@740:24;740:30 ../cpuex2017/raytracer/min-rt.ml@740:32;740:34
	j @cfg_label_24875
@cfg_label_24875:
	fld f1,r2,$-8
	fld f2,r2,$-100
	fmul f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@740:18;740:35 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@740:18;740:20 ../cpuex2017/raytracer/min-rt.ml@740:24;740:35
	j @cfg_label_24874
@cfg_label_24874:
	fld f1,r2,$-96
	fld f2,r2,$60
	fadd f1,f1,f2
	fst f1,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@740:18;740:41 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@740:18;740:35 ../cpuex2017/raytracer/min-rt.ml@740:39;740:41
	j @cfg_label_24873
@cfg_label_24873:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_24872
@cfg_label_24872:
	fld f1,r2,$-76
	fld f2,r2,$-92
	flt f2,f1
	bft @emit_label_26033
	li r5,$0
	j @emit_label_26034
@emit_label_26033:
	li r5,$1
@emit_label_26034:
	sw r5,r2,$-88
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24871
@cfg_label_24871:
	li r5,$1
	sw r5,r2,$-84
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24870
@cfg_label_24870:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_24836
	j @cfg_label_24835
	j @cfg_label_24837
	j @cfg_label_24838
@cfg_label_24837:
@cfg_label_24835:
	lw r5,r2,$-76
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@740:12;740:42 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24868
@cfg_label_24838:
@cfg_label_24836:
	fmovi f1,$-1.000000
	fst f1,r2,$-80
	j @cfg_label_24834
@cfg_label_24834:
	fld f1,r2,$-80
	fld f2,r2,$-76
	fmul f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@740:12;740:42 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24869
@cfg_label_24869:
@cfg_label_24868:
	lw r6,r2,$72
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@740:44;740:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@740:44;740:47 ../cpuex2017/raytracer/min-rt.ml@740:49;740:51
	j @cfg_label_24867
@cfg_label_24867:
	fld f1,r2,$-72
	fld f2,r2,$-68
	flt f1,f2
	bft @emit_label_26035
	li r5,$0
	j @emit_label_26036
@emit_label_26035:
	li r5,$1
@emit_label_26036:
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@740:5;740:52 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24866
@cfg_label_24866:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@740:5;740:52
	j @cfg_label_24865
@cfg_label_24865:
	lw r5,r2,$-64
	lw r6,r2,$-60
	bne r5,r6,@cfg_label_24862
	j @cfg_label_24861
	j @cfg_label_24863
	j @cfg_label_24864
@cfg_label_24864:
@cfg_label_24862:
	lw r5,r31,$12
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ::<= ../cpuex2017/raytracer/min-rt.ml@744:7;744:12
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_24863:
@cfg_label_24861:
	lw r6,r2,$76
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@741:26;741:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@741:26;741:32 ../cpuex2017/raytracer/min-rt.ml@741:34;741:36
	j @cfg_label_24860
@cfg_label_24860:
	fld f1,r2,$-8
	fld f2,r2,$-56
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@741:20;741:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@741:20;741:22 ../cpuex2017/raytracer/min-rt.ml@741:26;741:37
	j @cfg_label_24859
@cfg_label_24859:
	fld f1,r2,$-52
	fld f2,r2,$64
	fadd f1,f1,f2
	fst f1,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@741:20;741:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@741:20;741:37 ../cpuex2017/raytracer/min-rt.ml@741:41;741:43
	j @cfg_label_24858
@cfg_label_24858:
	fmovi f1,$0.000000
	fst f1,r2,$-48
	j @cfg_label_24857
@cfg_label_24857:
	fld f1,r2,$-32
	fld f2,r2,$-48
	flt f2,f1
	bft @emit_label_26037
	li r5,$0
	j @emit_label_26038
@emit_label_26037:
	li r5,$1
@emit_label_26038:
	sw r5,r2,$-44
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24856
@cfg_label_24856:
	li r5,$1
	sw r5,r2,$-40
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24855
@cfg_label_24855:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_24841
	j @cfg_label_24840
	j @cfg_label_24842
	j @cfg_label_24843
@cfg_label_24842:
@cfg_label_24840:
	lw r5,r2,$-32
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@741:14;741:44 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24853
@cfg_label_24843:
@cfg_label_24841:
	fmovi f1,$-1.000000
	fst f1,r2,$-36
	j @cfg_label_24839
@cfg_label_24839:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@741:14;741:44 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24854
@cfg_label_24854:
@cfg_label_24853:
	lw r6,r2,$76
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@741:46;741:54 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@741:46;741:49 ../cpuex2017/raytracer/min-rt.ml@741:51;741:53
	j @cfg_label_24852
@cfg_label_24852:
	fld f1,r2,$-28
	fld f2,r2,$-24
	flt f1,f2
	bft @emit_label_26039
	li r5,$0
	j @emit_label_26040
@emit_label_26039:
	li r5,$1
@emit_label_26040:
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@741:7;741:54 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24851
@cfg_label_24851:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@741:7;741:54
	j @cfg_label_24850
@cfg_label_24850:
	lw r5,r2,$-20
	lw r6,r2,$-16
	bne r5,r6,@cfg_label_24847
	j @cfg_label_24846
	j @cfg_label_24848
	j @cfg_label_24849
@cfg_label_24849:
@cfg_label_24847:
	lw r5,r31,$12
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ::<= ../cpuex2017/raytracer/min-rt.ml@743:9;743:14
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_24848:
@cfg_label_24846:
	li r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@742:20;742:21
	j @cfg_label_24845
@cfg_label_24845:
	lw r7,r2,$-8
	lw r6,r2,$-12
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@742:7;742:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@742:7;742:18 ../cpuex2017/raytracer/min-rt.ml@742:20;742:21 ../cpuex2017/raytracer/min-rt.ml@742:26;742:28
	j @cfg_label_24844
@cfg_label_24844:
	lw r5,r31,$16
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@735:2;744:12 ::<= ../cpuex2017/raytracer/min-rt.ml@742:30;742:34
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@a_8798solver_rect:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@750:48;750:49
	j @cfg_label_24824
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@750:48;750:49
	j @cfg_label_24824
@cfg_label_24824:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@750:50;750:51
	j @cfg_label_24823
@cfg_label_24823:
	li r5,$2
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@750:52;750:53
	j @cfg_label_24822
@cfg_label_24822:
	push r4
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$64
	push r5
	lw r5,r2,$60
	push r5
	lw r5,r2,$56
	push r5
	lw r5,r2,$52
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8789solver_rect_surface
	sw r5,r2,$-48
	addi r1,r1,$72
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@750:10;750:53 ../cpuex2017/raytracer/min-rt.ml@750:10;750:29
	j @cfg_label_24821
@cfg_label_24821:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@750:10;750:53
	j @cfg_label_24820
@cfg_label_24820:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_24817
	j @cfg_label_24816
	j @cfg_label_24818
	j @cfg_label_24819
@cfg_label_24818:
@cfg_label_24816:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_24819:
@cfg_label_24817:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@751:48;751:49
	j @cfg_label_24815
@cfg_label_24815:
	li r5,$2
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@751:50;751:51
	j @cfg_label_24814
@cfg_label_24814:
	li r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@751:52;751:53
	j @cfg_label_24813
@cfg_label_24813:
	push r4
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	lw r5,r2,$56
	push r5
	lw r5,r2,$64
	push r5
	lw r5,r2,$60
	push r5
	lw r5,r2,$52
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8789solver_rect_surface
	sw r5,r2,$-28
	addi r1,r1,$72
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@751:10;751:53 ../cpuex2017/raytracer/min-rt.ml@751:10;751:29
	j @cfg_label_24812
@cfg_label_24812:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@751:10;751:53
	j @cfg_label_24811
@cfg_label_24811:
	lw r5,r2,$-28
	lw r6,r2,$-24
	bne r5,r6,@cfg_label_24808
	j @cfg_label_24807
	j @cfg_label_24809
	j @cfg_label_24810
@cfg_label_24809:
@cfg_label_24807:
	li r5,$2
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_24810:
@cfg_label_24808:
	li r5,$2
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@752:48;752:49
	j @cfg_label_24806
@cfg_label_24806:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@752:50;752:51
	j @cfg_label_24805
@cfg_label_24805:
	li r5,$1
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@752:52;752:53
	j @cfg_label_24804
@cfg_label_24804:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	lw r5,r2,$-20
	push r5
	lw r5,r2,$60
	push r5
	lw r5,r2,$56
	push r5
	lw r5,r2,$64
	push r5
	lw r5,r2,$52
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8789solver_rect_surface
	sw r5,r2,$-8
	addi r1,r1,$72
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@752:10;752:53 ../cpuex2017/raytracer/min-rt.ml@752:10;752:29
	j @cfg_label_24803
@cfg_label_24803:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@752:10;752:53
	j @cfg_label_24802
@cfg_label_24802:
	lw r5,r2,$-8
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_24799
	j @cfg_label_24798
	j @cfg_label_24800
	j @cfg_label_24801
@cfg_label_24800:
@cfg_label_24798:
	li r5,$3
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
	lw r5,r2,$-64
	addi r1,r1,$64
	pop r2
	pop r6
	jr r6
@cfg_label_24801:
@cfg_label_24799:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@750:2;753:60
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
@a_8804solver_surface:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$88
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$52
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-20
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@762:10;762:29 ../cpuex2017/raytracer/min-rt.ml@762:10;762:18
	j @cfg_label_24797
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$52
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-20
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@762:10;762:29 ../cpuex2017/raytracer/min-rt.ml@762:10;762:18
	j @cfg_label_24797
@cfg_label_24797:
	fmovi f1,$0.000000
	fst f1,r2,$-84
	j @cfg_label_24796
@cfg_label_24796:
	fld f1,r2,$-20
	fld f2,r2,$-84
	flt f2,f1
	bft @emit_label_26041
	li r5,$0
	j @emit_label_26042
@emit_label_26041:
	li r5,$1
@emit_label_26042:
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@763:5;763:13 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_24795
@cfg_label_24795:
	li r5,$1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@763:5;763:13
	j @cfg_label_24794
@cfg_label_24794:
	lw r5,r2,$-80
	lw r6,r2,$-76
	bne r5,r6,@cfg_label_24791
	j @cfg_label_24790
	j @cfg_label_24792
	j @cfg_label_24793
@cfg_label_24793:
@cfg_label_24791:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@761:2;766:11
	lw r5,r2,$-88
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@cfg_label_24792:
@cfg_label_24790:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@764:17;764:18
	j @cfg_label_24789
@cfg_label_24789:
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_24788
@cfg_label_24788:
	lw r6,r2,$-72
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:2;105:3 ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_24787
@cfg_label_24787:
	fld f1,r2,$-68
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ../cpuex2017/raytracer/min-rt.ml@105:11;105:13
	j @cfg_label_24786
@cfg_label_24786:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@105:20;105:21
	j @cfg_label_24785
@cfg_label_24785:
	lw r6,r2,$-64
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:17;105:18 ../cpuex2017/raytracer/min-rt.ml@105:20;105:21
	j @cfg_label_24784
@cfg_label_24784:
	fld f1,r2,$-60
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ../cpuex2017/raytracer/min-rt.ml@105:26;105:28
	j @cfg_label_24783
@cfg_label_24783:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fadd f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	j @cfg_label_24782
@cfg_label_24782:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@105:35;105:36
	j @cfg_label_24781
@cfg_label_24781:
	lw r6,r2,$-48
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:32;105:33 ../cpuex2017/raytracer/min-rt.ml@105:35;105:36
	j @cfg_label_24780
@cfg_label_24780:
	fld f1,r2,$-44
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ../cpuex2017/raytracer/min-rt.ml@105:41;105:43
	j @cfg_label_24779
@cfg_label_24779:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@764:29;764:51 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	j @cfg_label_24778
@cfg_label_24778:
	fmovi f1,$-1.000000
	fst f1,r2,$-32
	j @cfg_label_24777
@cfg_label_24777:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@764:23;764:52 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24776
@cfg_label_24776:
	fld f1,r2,$-24
	fld f2,r2,$-20
	fdiv f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@764:23;764:57 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@764:23;764:52 ../cpuex2017/raytracer/min-rt.ml@764:56;764:57
	j @cfg_label_24775
@cfg_label_24775:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@764:4;764:57 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@764:4;764:15 ../cpuex2017/raytracer/min-rt.ml@764:17;764:18 ../cpuex2017/raytracer/min-rt.ml@764:23;764:57
	j @cfg_label_24774
@cfg_label_24774:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@765:4;765:5
	j @cfg_label_24773
@cfg_label_24773:
	lw r5,r2,$-4
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@761:2;766:11 ::<= ../cpuex2017/raytracer/min-rt.ml@765:4;765:5
	lw r5,r2,$-88
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-88
	addi r1,r1,$88
	pop r2
	pop r6
	jr r6
@a_8810quadratic:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	fld f1,r2,$52
	fld f2,r2,$52
	fmul f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:11 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24772
	fld f1,r2,$52
	fld f2,r2,$52
	fmul f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:11 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24772
@cfg_label_24772:
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24771
@cfg_label_24771:
	lw r6,r2,$-116
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@774:15;774:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24770
@cfg_label_24770:
	fld f1,r2,$-112
	fld f2,r2,$-108
	fmul f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@774:4;774:11 ../cpuex2017/raytracer/min-rt.ml@774:15;774:26
	j @cfg_label_24769
@cfg_label_24769:
	fld f1,r2,$56
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@774:30;774:37 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24768
@cfg_label_24768:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24767
@cfg_label_24767:
	lw r6,r2,$-104
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@774:41;774:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24766
@cfg_label_24766:
	fld f1,r2,$-100
	fld f2,r2,$-96
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@774:30;774:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@774:30;774:37 ../cpuex2017/raytracer/min-rt.ml@774:41;774:52
	j @cfg_label_24765
@cfg_label_24765:
	fld f1,r2,$-92
	fld f2,r2,$-88
	fadd f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:52 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@774:4;774:26 ../cpuex2017/raytracer/min-rt.ml@774:30;774:52
	j @cfg_label_24764
@cfg_label_24764:
	fld f1,r2,$60
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@774:56;774:63 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24763
@cfg_label_24763:
	li r5,$2
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24762
@cfg_label_24762:
	lw r6,r2,$-84
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@774:67;774:78 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24761
@cfg_label_24761:
	fld f1,r2,$-80
	fld f2,r2,$-76
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@774:56;774:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@774:56;774:63 ../cpuex2017/raytracer/min-rt.ml@774:67;774:78
	j @cfg_label_24760
@cfg_label_24760:
	fld f1,r2,$-72
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@774:4;774:78 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@774:4;774:52 ../cpuex2017/raytracer/min-rt.ml@774:56;774:78
	j @cfg_label_24759
@cfg_label_24759:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@776:17;776:18
	j @cfg_label_24758
@cfg_label_24758:
	lw r5,r2,$20
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_24755
	j @cfg_label_24754
	j @cfg_label_24756
	j @cfg_label_24757
@cfg_label_24756:
@cfg_label_24754:
	lw r5,r2,$-48
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ::<= ../cpuex2017/raytracer/min-rt.ml@777:4;777:13
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@cfg_label_24757:
@cfg_label_24755:
	fld f1,r2,$56
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@780:9;780:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@780:9;780:11 ../cpuex2017/raytracer/min-rt.ml@780:15;780:17
	j @cfg_label_24753
@cfg_label_24753:
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_24752
@cfg_label_24752:
	lw r6,r2,$-60
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@780:21;780:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@322:2;322:10 ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_24751
@cfg_label_24751:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@780:9;780:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@780:9;780:17 ../cpuex2017/raytracer/min-rt.ml@780:21;780:33
	j @cfg_label_24750
@cfg_label_24750:
	fld f1,r2,$-48
	fld f2,r2,$-44
	fadd f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@779:4;780:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@779:4;779:13 ../cpuex2017/raytracer/min-rt.ml@780:9;780:33
	j @cfg_label_24749
@cfg_label_24749:
	fld f1,r2,$60
	fld f2,r2,$52
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@781:9;781:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@781:9;781:11 ../cpuex2017/raytracer/min-rt.ml@781:15;781:17
	j @cfg_label_24748
@cfg_label_24748:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_24747
@cfg_label_24747:
	lw r6,r2,$-40
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@781:21;781:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@332:2;332:10 ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_24746
@cfg_label_24746:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fmul f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@781:9;781:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@781:9;781:17 ../cpuex2017/raytracer/min-rt.ml@781:21;781:33
	j @cfg_label_24745
@cfg_label_24745:
	fld f1,r2,$-28
	fld f2,r2,$-24
	fadd f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@779:4;781:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@779:4;780:33 ../cpuex2017/raytracer/min-rt.ml@781:9;781:33
	j @cfg_label_24744
@cfg_label_24744:
	fld f1,r2,$52
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@782:9;782:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@782:9;782:11 ../cpuex2017/raytracer/min-rt.ml@782:15;782:17
	j @cfg_label_24743
@cfg_label_24743:
	li r5,$2
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_24742
@cfg_label_24742:
	lw r6,r2,$-20
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@782:21;782:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@342:2;342:10 ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_24741
@cfg_label_24741:
	fld f1,r2,$-16
	fld f2,r2,$-12
	fmul f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@782:9;782:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@782:9;782:17 ../cpuex2017/raytracer/min-rt.ml@782:21;782:33
	j @cfg_label_24740
@cfg_label_24740:
	fld f1,r2,$-8
	fld f2,r2,$-4
	fadd f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@773:2;782:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@779:4;781:33 ../cpuex2017/raytracer/min-rt.ml@782:9;782:33
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@a_8815bilinear:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$152
	fld f1,r2,$52
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@789:4;789:12 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@789:4;789:6 ../cpuex2017/raytracer/min-rt.ml@789:10;789:12
	j @cfg_label_24739
	fld f1,r2,$52
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@789:4;789:12 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@789:4;789:6 ../cpuex2017/raytracer/min-rt.ml@789:10;789:12
	j @cfg_label_24739
@cfg_label_24739:
	li r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24738
@cfg_label_24738:
	lw r6,r2,$-148
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@789:16;789:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24737
@cfg_label_24737:
	fld f1,r2,$-144
	fld f2,r2,$-140
	fmul f1,f1,f2
	fst f1,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@789:4;789:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@789:4;789:12 ../cpuex2017/raytracer/min-rt.ml@789:16;789:27
	j @cfg_label_24736
@cfg_label_24736:
	fld f1,r2,$56
	fld f2,r2,$68
	fmul f1,f1,f2
	fst f1,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@790:9;790:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@790:9;790:11 ../cpuex2017/raytracer/min-rt.ml@790:15;790:17
	j @cfg_label_24735
@cfg_label_24735:
	li r5,$1
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24734
@cfg_label_24734:
	lw r6,r2,$-136
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@790:21;790:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24733
@cfg_label_24733:
	fld f1,r2,$-132
	fld f2,r2,$-128
	fmul f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@790:9;790:32 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@790:9;790:17 ../cpuex2017/raytracer/min-rt.ml@790:21;790:32
	j @cfg_label_24732
@cfg_label_24732:
	fld f1,r2,$-124
	fld f2,r2,$-120
	fadd f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@789:4;790:32 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@789:4;789:27 ../cpuex2017/raytracer/min-rt.ml@790:9;790:32
	j @cfg_label_24731
@cfg_label_24731:
	fld f1,r2,$60
	fld f2,r2,$72
	fmul f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@791:9;791:17 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@791:9;791:11 ../cpuex2017/raytracer/min-rt.ml@791:15;791:17
	j @cfg_label_24730
@cfg_label_24730:
	li r5,$2
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24729
@cfg_label_24729:
	lw r6,r2,$-116
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@791:21;791:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24728
@cfg_label_24728:
	fld f1,r2,$-112
	fld f2,r2,$-108
	fmul f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@791:9;791:32 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@791:9;791:17 ../cpuex2017/raytracer/min-rt.ml@791:21;791:32
	j @cfg_label_24727
@cfg_label_24727:
	fld f1,r2,$-104
	fld f2,r2,$-100
	fadd f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@789:4;791:32 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@789:4;790:32 ../cpuex2017/raytracer/min-rt.ml@791:9;791:32
	j @cfg_label_24726
@cfg_label_24726:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@793:17;793:18
	j @cfg_label_24725
@cfg_label_24725:
	lw r5,r2,$20
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_24722
	j @cfg_label_24721
	j @cfg_label_24723
	j @cfg_label_24724
@cfg_label_24723:
@cfg_label_24721:
	lw r5,r2,$-8
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ::<= ../cpuex2017/raytracer/min-rt.ml@794:4;794:13
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@cfg_label_24724:
@cfg_label_24722:
	fld f1,r2,$60
	fld f2,r2,$68
	fmul f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@797:8;797:16 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@797:8;797:10 ../cpuex2017/raytracer/min-rt.ml@797:14;797:16
	j @cfg_label_24720
@cfg_label_24720:
	fld f1,r2,$56
	fld f2,r2,$72
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@797:20;797:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@797:20;797:22 ../cpuex2017/raytracer/min-rt.ml@797:26;797:28
	j @cfg_label_24719
@cfg_label_24719:
	fld f1,r2,$-92
	fld f2,r2,$-88
	fadd f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@797:8;797:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@797:8;797:16 ../cpuex2017/raytracer/min-rt.ml@797:20;797:28
	j @cfg_label_24718
@cfg_label_24718:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_24717
@cfg_label_24717:
	lw r6,r2,$-84
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@797:33;797:45 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@322:2;322:10 ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_24716
@cfg_label_24716:
	fld f1,r2,$-80
	fld f2,r2,$-76
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@797:7;797:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@797:8;797:28 ../cpuex2017/raytracer/min-rt.ml@797:33;797:45
	j @cfg_label_24715
@cfg_label_24715:
	fld f1,r2,$52
	fld f2,r2,$72
	fmul f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@798:6;798:14 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@798:6;798:8 ../cpuex2017/raytracer/min-rt.ml@798:12;798:14
	j @cfg_label_24714
@cfg_label_24714:
	fld f1,r2,$60
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@798:18;798:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@798:18;798:20 ../cpuex2017/raytracer/min-rt.ml@798:24;798:26
	j @cfg_label_24713
@cfg_label_24713:
	fld f1,r2,$-72
	fld f2,r2,$-68
	fadd f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@798:6;798:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@798:6;798:14 ../cpuex2017/raytracer/min-rt.ml@798:18;798:26
	j @cfg_label_24712
@cfg_label_24712:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_24711
@cfg_label_24711:
	lw r6,r2,$-64
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@798:31;798:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@332:2;332:10 ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_24710
@cfg_label_24710:
	fld f1,r2,$-60
	fld f2,r2,$-56
	fmul f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@798:5;798:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@798:6;798:26 ../cpuex2017/raytracer/min-rt.ml@798:31;798:43
	j @cfg_label_24709
@cfg_label_24709:
	fld f1,r2,$-52
	fld f2,r2,$-48
	fadd f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@797:7;798:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@797:7;797:45 ../cpuex2017/raytracer/min-rt.ml@798:5;798:43
	j @cfg_label_24708
@cfg_label_24708:
	fld f1,r2,$52
	fld f2,r2,$68
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@799:6;799:14 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@799:6;799:8 ../cpuex2017/raytracer/min-rt.ml@799:12;799:14
	j @cfg_label_24707
@cfg_label_24707:
	fld f1,r2,$56
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@799:18;799:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@799:18;799:20 ../cpuex2017/raytracer/min-rt.ml@799:24;799:26
	j @cfg_label_24706
@cfg_label_24706:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fadd f1,f1,f2
	fst f1,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@799:6;799:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@799:6;799:14 ../cpuex2017/raytracer/min-rt.ml@799:18;799:26
	j @cfg_label_24705
@cfg_label_24705:
	li r5,$2
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_24704
@cfg_label_24704:
	lw r6,r2,$-36
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@799:31;799:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@342:2;342:10 ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_24703
@cfg_label_24703:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@799:5;799:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@799:6;799:26 ../cpuex2017/raytracer/min-rt.ml@799:31;799:43
	j @cfg_label_24702
@cfg_label_24702:
	fld f1,r2,$-24
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@797:7;799:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@797:7;798:43 ../cpuex2017/raytracer/min-rt.ml@799:5;799:43
	j @cfg_label_24701
@cfg_label_24701:
	fmovi f1,$2.000000
	fst f1,r2,$-12
	j @cfg_label_24700
@cfg_label_24700:
	fld f1,r2,$-16
	fld f2,r2,$-12
	fdiv f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@796:17;799:44 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_24699
@cfg_label_24699:
	fld f1,r2,$-8
	fld f2,r2,$-4
	fadd f1,f1,f2
	fst f1,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@788:2;799:44 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@796:4;796:13 ../cpuex2017/raytracer/min-rt.ml@796:17;799:44
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@a_8823solver_second:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$148
	li r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@814:31;814:32
	j @cfg_label_24698
	li r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@814:31;814:32
	j @cfg_label_24698
@cfg_label_24698:
	lw r6,r2,$-144
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@814:23;814:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@814:23;814:29 ../cpuex2017/raytracer/min-rt.ml@814:31;814:32
	j @cfg_label_24697
@cfg_label_24697:
	li r5,$1
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@814:42;814:43
	j @cfg_label_24696
@cfg_label_24696:
	lw r6,r2,$-140
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@814:34;814:44 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@814:34;814:40 ../cpuex2017/raytracer/min-rt.ml@814:42;814:43
	j @cfg_label_24695
@cfg_label_24695:
	li r5,$2
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@814:53;814:54
	j @cfg_label_24694
@cfg_label_24694:
	lw r6,r2,$-136
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@814:45;814:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@814:45;814:51 ../cpuex2017/raytracer/min-rt.ml@814:53;814:54
	j @cfg_label_24693
@cfg_label_24693:
	push r4
	lw r5,r2,$-124
	push r5
	lw r5,r2,$-128
	push r5
	lw r5,r2,$-132
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8810quadratic
	sw r5,r2,$-20
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@814:11;814:55 ../cpuex2017/raytracer/min-rt.ml@814:11;814:20
	j @cfg_label_24692
@cfg_label_24692:
	fmovi f1,$0.000000
	fst f1,r2,$-120
	j @cfg_label_24691
@cfg_label_24691:
	fld f1,r2,$-20
	fld f2,r2,$-120
	feq f1,f2
	bft @emit_label_26043
	li r5,$0
	j @emit_label_26044
@emit_label_26043:
	li r5,$1
@emit_label_26044:
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@816:5;816:15 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24690
@cfg_label_24690:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@816:5;816:15
	j @cfg_label_24689
@cfg_label_24689:
	lw r5,r2,$-116
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_24686
	j @cfg_label_24685
	j @cfg_label_24687
	j @cfg_label_24688
@cfg_label_24687:
@cfg_label_24685:
	li r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw r5,r2,$-148
	addi r1,r1,$148
	pop r2
	pop r6
	jr r6
@cfg_label_24688:
@cfg_label_24686:
	li r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@821:32;821:33
	j @cfg_label_24684
@cfg_label_24684:
	lw r6,r2,$-108
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@821:24;821:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@821:24;821:30 ../cpuex2017/raytracer/min-rt.ml@821:32;821:33
	j @cfg_label_24683
@cfg_label_24683:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@821:43;821:44
	j @cfg_label_24682
@cfg_label_24682:
	lw r6,r2,$-104
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@821:35;821:45 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@821:35;821:41 ../cpuex2017/raytracer/min-rt.ml@821:43;821:44
	j @cfg_label_24681
@cfg_label_24681:
	li r5,$2
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@821:54;821:55
	j @cfg_label_24680
@cfg_label_24680:
	lw r6,r2,$-100
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@821:46;821:56 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@821:46;821:52 ../cpuex2017/raytracer/min-rt.ml@821:54;821:55
	j @cfg_label_24679
@cfg_label_24679:
	push r4
	lw r5,r2,$64
	push r5
	lw r5,r2,$60
	push r5
	lw r5,r2,$56
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8815bilinear
	sw r5,r2,$-28
	addi r1,r1,$68
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@821:13;821:65 ../cpuex2017/raytracer/min-rt.ml@821:13;821:21
	j @cfg_label_24678
@cfg_label_24678:
	push r4
	lw r5,r2,$64
	push r5
	lw r5,r2,$60
	push r5
	lw r5,r2,$56
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8810quadratic
	sw r5,r2,$-76
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@823:14;823:34 ../cpuex2017/raytracer/min-rt.ml@823:14;823:23
	j @cfg_label_24677
@cfg_label_24677:
	li r5,$3
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@824:27;824:28
	j @cfg_label_24676
@cfg_label_24676:
	lw r5,r2,$12
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_24647
	j @cfg_label_24646
	j @cfg_label_24648
	j @cfg_label_24649
@cfg_label_24649:
@cfg_label_24647:
	lw r5,r2,$-76
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@824:13;824:53 ::<= ../cpuex2017/raytracer/min-rt.ml@824:50;824:53
	j @cfg_label_24675
@cfg_label_24648:
@cfg_label_24646:
	fmovi f1,$1.000000
	fst f1,r2,$-80
	j @cfg_label_24645
@cfg_label_24645:
	fld f1,r2,$-76
	fld f2,r2,$-80
	fsub f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@824:13;824:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@824:34;824:37 ../cpuex2017/raytracer/min-rt.ml@824:41;824:44
	j @cfg_label_24674
@cfg_label_24675:
@cfg_label_24674:
	fld f1,r2,$-28
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@826:12;826:19 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24673
@cfg_label_24673:
	fld f1,r2,$-20
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@826:23;826:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@826:23;826:25 ../cpuex2017/raytracer/min-rt.ml@826:29;826:31
	j @cfg_label_24672
@cfg_label_24672:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fsub f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@826:12;826:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@826:12;826:19 ../cpuex2017/raytracer/min-rt.ml@826:23;826:31
	j @cfg_label_24671
@cfg_label_24671:
	fmovi f1,$0.000000
	fst f1,r2,$-60
	j @cfg_label_24670
@cfg_label_24670:
	fld f1,r2,$-48
	fld f2,r2,$-60
	flt f2,f1
	bft @emit_label_26045
	li r5,$0
	j @emit_label_26046
@emit_label_26045:
	li r5,$1
@emit_label_26046:
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@828:7;828:15 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_24669
@cfg_label_24669:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@828:7;828:15
	j @cfg_label_24668
@cfg_label_24668:
	lw r5,r2,$-56
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_24665
	j @cfg_label_24664
	j @cfg_label_24666
	j @cfg_label_24667
@cfg_label_24667:
@cfg_label_24665:
	li r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4
	lw r5,r2,$-148
	addi r1,r1,$148
	pop r2
	pop r6
	jr r6
@cfg_label_24666:
@cfg_label_24664:
	push r4
	lw r5,r2,$-48
	push r5
	jal sqrt
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@829:15;829:21 ../cpuex2017/raytracer/min-rt.ml@829:15;829:19
	j @cfg_label_24663
@cfg_label_24663:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@830:18;830:30
	j @cfg_label_24662
@cfg_label_24662:
	lw r5,r2,$32
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_24652
	j @cfg_label_24651
	j @cfg_label_24653
	j @cfg_label_24654
@cfg_label_24653:
@cfg_label_24651:
	lw r5,r2,$-36
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@830:15;830:51 ::<= ../cpuex2017/raytracer/min-rt.ml@830:36;830:38
	j @cfg_label_24660
@cfg_label_24654:
@cfg_label_24652:
	fmovi f1,$-1.000000
	fst f1,r2,$-40
	j @cfg_label_24650
@cfg_label_24650:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fmul f1,f1,f2
	fst f1,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@830:15;830:51 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24661
@cfg_label_24661:
@cfg_label_24660:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@831:20;831:21
	j @cfg_label_24659
@cfg_label_24659:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fsub f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@831:27;831:35 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@831:27;831:29 ../cpuex2017/raytracer/min-rt.ml@831:33;831:35
	j @cfg_label_24658
@cfg_label_24658:
	fld f1,r2,$-24
	fld f2,r2,$-20
	fdiv f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@831:26;831:43 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@831:27;831:35 ../cpuex2017/raytracer/min-rt.ml@831:41;831:43
	j @cfg_label_24657
@cfg_label_24657:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@831:7;831:43 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@831:7;831:18 ../cpuex2017/raytracer/min-rt.ml@831:20;831:21 ../cpuex2017/raytracer/min-rt.ml@831:26;831:43
	j @cfg_label_24656
@cfg_label_24656:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@831:45;831:46
	j @cfg_label_24655
@cfg_label_24655:
	lw r5,r2,$-4
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@814:2;835:4 ::<= ../cpuex2017/raytracer/min-rt.ml@831:45;831:46
	lw r5,r2,$-148
	addi r1,r1,$148
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-148
	addi r1,r1,$148
	pop r2
	pop r6
	jr r6
@a_8829solver:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@840:10;840:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@840:10;840:17 ../cpuex2017/raytracer/min-rt.ml@840:19;840:24
	j @cfg_label_24644
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@840:10;840:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@840:10;840:17 ../cpuex2017/raytracer/min-rt.ml@840:19;840:24
	j @cfg_label_24644
@cfg_label_24644:
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@842:17;842:18
	j @cfg_label_24643
@cfg_label_24643:
	lw r6,r2,$-116
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@842:12;842:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@842:12;842:15 ../cpuex2017/raytracer/min-rt.ml@842:17;842:18
	j @cfg_label_24642
@cfg_label_24642:
	lw r5,r2,$-112
	lw r5,r5,$40
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24641
@cfg_label_24641:
	lw r5,r2,$-112
	lw r5,r5,$36
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24640
@cfg_label_24640:
	lw r5,r2,$-112
	lw r5,r5,$32
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24639
@cfg_label_24639:
	lw r5,r2,$-112
	lw r5,r5,$28
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24638
@cfg_label_24638:
	lw r5,r2,$-112
	lw r5,r5,$24
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24637
@cfg_label_24637:
	lw r5,r2,$-112
	lw r5,r5,$20
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24636
@cfg_label_24636:
	lw r5,r2,$-112
	lw r5,r5,$16
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24635
@cfg_label_24635:
	lw r5,r2,$-112
	lw r5,r5,$12
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24634
@cfg_label_24634:
	lw r5,r2,$-112
	lw r5,r5,$8
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24633
@cfg_label_24633:
	lw r5,r2,$-112
	lw r5,r5,$4
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24632
@cfg_label_24632:
	lw r5,r2,$-112
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@842:33;842:34 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@842:33;842:34
	j @cfg_label_24631
@cfg_label_24631:
	li r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_24630
@cfg_label_24630:
	lw r6,r2,$-108
	lw r5,r2,$-36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@842:23;842:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_24629
@cfg_label_24629:
	fld f1,r2,$-104
	fld f2,r2,$-100
	fsub f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@842:12;842:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@842:12;842:19 ../cpuex2017/raytracer/min-rt.ml@842:23;842:34
	j @cfg_label_24628
@cfg_label_24628:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@843:17;843:18
	j @cfg_label_24627
@cfg_label_24627:
	lw r6,r2,$-96
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@843:12;843:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@843:12;843:15 ../cpuex2017/raytracer/min-rt.ml@843:17;843:18
	j @cfg_label_24626
@cfg_label_24626:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_24625
@cfg_label_24625:
	lw r6,r2,$-92
	lw r5,r2,$-36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@843:23;843:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@252:2;252:7 ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_24624
@cfg_label_24624:
	fld f1,r2,$-88
	fld f2,r2,$-84
	fsub f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@843:12;843:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@843:12;843:19 ../cpuex2017/raytracer/min-rt.ml@843:23;843:34
	j @cfg_label_24623
@cfg_label_24623:
	li r5,$2
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@844:17;844:18
	j @cfg_label_24622
@cfg_label_24622:
	lw r6,r2,$-80
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@844:12;844:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@844:12;844:15 ../cpuex2017/raytracer/min-rt.ml@844:17;844:18
	j @cfg_label_24621
@cfg_label_24621:
	li r5,$2
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_24620
@cfg_label_24620:
	lw r6,r2,$-76
	lw r5,r2,$-36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@844:23;844:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_24619
@cfg_label_24619:
	fld f1,r2,$-72
	fld f2,r2,$-68
	fsub f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@844:12;844:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@844:12;844:19 ../cpuex2017/raytracer/min-rt.ml@844:23;844:34
	j @cfg_label_24618
@cfg_label_24618:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@847:15;847:16
	j @cfg_label_24617
@cfg_label_24617:
	lw r5,r2,$-52
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_24614
	j @cfg_label_24613
	j @cfg_label_24615
	j @cfg_label_24616
@cfg_label_24615:
@cfg_label_24613:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-16
	push r5
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_8798solver_rect
	sw r5,r2,$-120
	addi r1,r1,$60
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ../cpuex2017/raytracer/min-rt.ml@847:28;847:39
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@cfg_label_24616:
@cfg_label_24614:
	li r5,$2
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@848:20;848:21
	j @cfg_label_24612
@cfg_label_24612:
	lw r5,r2,$-52
	lw r6,r2,$-60
	bne r5,r6,@cfg_label_24609
	j @cfg_label_24608
	j @cfg_label_24610
	j @cfg_label_24611
@cfg_label_24610:
@cfg_label_24608:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-16
	push r5
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_8804solver_surface
	sw r5,r2,$-120
	addi r1,r1,$60
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ../cpuex2017/raytracer/min-rt.ml@848:28;848:42
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@cfg_label_24611:
@cfg_label_24609:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-16
	push r5
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_8823solver_second
	sw r5,r2,$-120
	addi r1,r1,$60
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@840:2;849:59 ../cpuex2017/raytracer/min-rt.ml@849:28;849:41
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@a_8833solver_rect_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$496
	li r5,$0
	sw r5,r2,$-492
; ../cpuex2017/raytracer/min-rt.ml@872:20;872:21
	j @cfg_label_24607
	li r5,$0
	sw r5,r2,$-492
; ../cpuex2017/raytracer/min-rt.ml@872:20;872:21
	j @cfg_label_24607
@cfg_label_24607:
	lw r6,r2,$-492
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-488
; ../cpuex2017/raytracer/min-rt.ml@872:12;872:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@872:12;872:18 ../cpuex2017/raytracer/min-rt.ml@872:20;872:21
	j @cfg_label_24606
@cfg_label_24606:
	fld f1,r2,$-488
	fld f2,r2,$60
	fsub f1,f1,f2
	fst f1,r2,$-480
; ../cpuex2017/raytracer/min-rt.ml@872:12;872:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@872:12;872:22 ../cpuex2017/raytracer/min-rt.ml@872:26;872:28
	j @cfg_label_24605
@cfg_label_24605:
	li r5,$1
	sw r5,r2,$-484
; ../cpuex2017/raytracer/min-rt.ml@872:41;872:42
	j @cfg_label_24604
@cfg_label_24604:
	lw r6,r2,$-484
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-476
; ../cpuex2017/raytracer/min-rt.ml@872:33;872:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@872:33;872:39 ../cpuex2017/raytracer/min-rt.ml@872:41;872:42
	j @cfg_label_24603
@cfg_label_24603:
	fld f1,r2,$-480
	fld f2,r2,$-476
	fmul f1,f1,f2
	fst f1,r2,$-340
; ../cpuex2017/raytracer/min-rt.ml@872:11;872:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@872:12;872:28 ../cpuex2017/raytracer/min-rt.ml@872:33;872:43
	j @cfg_label_24602
@cfg_label_24602:
	li r5,$1
	sw r5,r2,$-472
; ../cpuex2017/raytracer/min-rt.ml@874:29;874:30
	j @cfg_label_24601
@cfg_label_24601:
	lw r6,r2,$-472
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-468
; ../cpuex2017/raytracer/min-rt.ml@874:26;874:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@874:26;874:27 ../cpuex2017/raytracer/min-rt.ml@874:29;874:30
	j @cfg_label_24600
@cfg_label_24600:
	fld f1,r2,$-340
	fld f2,r2,$-468
	fmul f1,f1,f2
	fst f1,r2,$-464
; ../cpuex2017/raytracer/min-rt.ml@874:20;874:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@874:20;874:22 ../cpuex2017/raytracer/min-rt.ml@874:26;874:31
	j @cfg_label_24599
@cfg_label_24599:
	fld f1,r2,$-464
	fld f2,r2,$64
	fadd f1,f1,f2
	fst f1,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@874:20;874:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@874:20;874:31 ../cpuex2017/raytracer/min-rt.ml@874:35;874:37
	j @cfg_label_24598
@cfg_label_24598:
	fmovi f1,$0.000000
	fst f1,r2,$-460
	j @cfg_label_24597
@cfg_label_24597:
	fld f1,r2,$-444
	fld f2,r2,$-460
	flt f2,f1
	bft @emit_label_26047
	li r5,$0
	j @emit_label_26048
@emit_label_26047:
	li r5,$1
@emit_label_26048:
	sw r5,r2,$-456
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24596
@cfg_label_24596:
	li r5,$1
	sw r5,r2,$-452
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24595
@cfg_label_24595:
	lw r5,r2,$-456
	lw r6,r2,$-452
	bne r5,r6,@cfg_label_24415
	j @cfg_label_24414
	j @cfg_label_24416
	j @cfg_label_24417
@cfg_label_24416:
@cfg_label_24414:
	lw r5,r2,$-444
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@874:14;874:38 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24593
@cfg_label_24417:
@cfg_label_24415:
	fmovi f1,$-1.000000
	fst f1,r2,$-448
	j @cfg_label_24413
@cfg_label_24413:
	fld f1,r2,$-448
	fld f2,r2,$-444
	fmul f1,f1,f2
	fst f1,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@874:14;874:38 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24594
@cfg_label_24594:
@cfg_label_24593:
	li r5,$1
	sw r5,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24592
@cfg_label_24592:
	lw r6,r2,$-440
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-432
; ../cpuex2017/raytracer/min-rt.ml@874:41;874:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24591
@cfg_label_24591:
	fld f1,r2,$-436
	fld f2,r2,$-432
	flt f1,f2
	bft @emit_label_26049
	li r5,$0
	j @emit_label_26050
@emit_label_26049:
	li r5,$1
@emit_label_26050:
	sw r5,r2,$-428
; ../cpuex2017/raytracer/min-rt.ml@874:7;874:53 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24590
@cfg_label_24590:
	li r5,$1
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@874:7;874:53
	j @cfg_label_24589
@cfg_label_24589:
	lw r5,r2,$-428
	lw r6,r2,$-424
	bne r5,r6,@cfg_label_24445
	j @cfg_label_24444
	j @cfg_label_24446
	j @cfg_label_24447
@cfg_label_24447:
@cfg_label_24445:
	lw r5,r31,$12
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@874:4;878:14 ::<= ../cpuex2017/raytracer/min-rt.ml@878:9;878:14
	j @cfg_label_24588
@cfg_label_24446:
@cfg_label_24444:
	li r5,$2
	sw r5,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@875:31;875:32
	j @cfg_label_24443
@cfg_label_24443:
	lw r6,r2,$-420
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@875:28;875:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@875:28;875:29 ../cpuex2017/raytracer/min-rt.ml@875:31;875:32
	j @cfg_label_24442
@cfg_label_24442:
	fld f1,r2,$-340
	fld f2,r2,$-416
	fmul f1,f1,f2
	fst f1,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@875:22;875:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@875:22;875:24 ../cpuex2017/raytracer/min-rt.ml@875:28;875:33
	j @cfg_label_24441
@cfg_label_24441:
	fld f1,r2,$-412
	fld f2,r2,$68
	fadd f1,f1,f2
	fst f1,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@875:22;875:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@875:22;875:33 ../cpuex2017/raytracer/min-rt.ml@875:37;875:39
	j @cfg_label_24440
@cfg_label_24440:
	fmovi f1,$0.000000
	fst f1,r2,$-408
	j @cfg_label_24439
@cfg_label_24439:
	fld f1,r2,$-392
	fld f2,r2,$-408
	flt f2,f1
	bft @emit_label_26051
	li r5,$0
	j @emit_label_26052
@emit_label_26051:
	li r5,$1
@emit_label_26052:
	sw r5,r2,$-404
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24438
@cfg_label_24438:
	li r5,$1
	sw r5,r2,$-400
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24437
@cfg_label_24437:
	lw r5,r2,$-404
	lw r6,r2,$-400
	bne r5,r6,@cfg_label_24420
	j @cfg_label_24419
	j @cfg_label_24421
	j @cfg_label_24422
@cfg_label_24421:
@cfg_label_24419:
	lw r5,r2,$-392
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@875:16;875:40 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24435
@cfg_label_24422:
@cfg_label_24420:
	fmovi f1,$-1.000000
	fst f1,r2,$-396
	j @cfg_label_24418
@cfg_label_24418:
	fld f1,r2,$-396
	fld f2,r2,$-392
	fmul f1,f1,f2
	fst f1,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@875:16;875:40 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24436
@cfg_label_24436:
@cfg_label_24435:
	li r5,$2
	sw r5,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24434
@cfg_label_24434:
	lw r6,r2,$-388
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@875:43;875:54 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24433
@cfg_label_24433:
	fld f1,r2,$-384
	fld f2,r2,$-380
	flt f1,f2
	bft @emit_label_26053
	li r5,$0
	j @emit_label_26054
@emit_label_26053:
	li r5,$1
@emit_label_26054:
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@875:9;875:55 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24432
@cfg_label_24432:
	li r5,$1
	sw r5,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@875:9;875:55
	j @cfg_label_24431
@cfg_label_24431:
	lw r5,r2,$-376
	lw r6,r2,$-372
	bne r5,r6,@cfg_label_24428
	j @cfg_label_24427
	j @cfg_label_24429
	j @cfg_label_24430
@cfg_label_24430:
@cfg_label_24428:
	lw r5,r31,$12
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@874:4;878:14 ::<= ../cpuex2017/raytracer/min-rt.ml@877:11;877:16
	j @cfg_label_24587
@cfg_label_24429:
@cfg_label_24427:
	li r5,$1
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@876:22;876:23
	j @cfg_label_24426
@cfg_label_24426:
	lw r6,r2,$-368
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@876:14;876:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@876:14;876:20 ../cpuex2017/raytracer/min-rt.ml@876:22;876:23
	j @cfg_label_24425
@cfg_label_24425:
	fmovi f1,$0.000000
	fst f1,r2,$-360
	j @cfg_label_24424
@cfg_label_24424:
	fld f1,r2,$-364
	fld f2,r2,$-360
	feq f1,f2
	bft @emit_label_26055
	li r5,$0
	j @emit_label_26056
@emit_label_26055:
	li r5,$1
@emit_label_26056:
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@876:6;876:24 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24423
@cfg_label_24423:
	lw r5,r2,$-356
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@874:4;878:14 ::= Onot ../cpuex2017/raytracer/min-rt.ml@876:6;876:24
	j @cfg_label_24586
@cfg_label_24588:
@cfg_label_24587:
@cfg_label_24586:
	li r5,$1
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@874:4;878:14
	j @cfg_label_24585
@cfg_label_24585:
	lw r5,r2,$-352
	lw r6,r2,$-348
	bne r5,r6,@cfg_label_24582
	j @cfg_label_24581
	j @cfg_label_24583
	j @cfg_label_24584
@cfg_label_24584:
@cfg_label_24582:
	li r5,$2
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@881:25;881:26
	j @cfg_label_24580
@cfg_label_24580:
	lw r6,r2,$-328
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@881:17;881:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@881:17;881:23 ../cpuex2017/raytracer/min-rt.ml@881:25;881:26
	j @cfg_label_24579
@cfg_label_24579:
	fld f1,r2,$-324
	fld f2,r2,$64
	fsub f1,f1,f2
	fst f1,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@881:17;881:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@881:17;881:27 ../cpuex2017/raytracer/min-rt.ml@881:31;881:33
	j @cfg_label_24578
@cfg_label_24578:
	li r5,$3
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@881:46;881:47
	j @cfg_label_24577
@cfg_label_24577:
	lw r6,r2,$-320
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@881:38;881:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@881:38;881:44 ../cpuex2017/raytracer/min-rt.ml@881:46;881:47
	j @cfg_label_24576
@cfg_label_24576:
	fld f1,r2,$-316
	fld f2,r2,$-312
	fmul f1,f1,f2
	fst f1,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@881:16;881:48 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@881:17;881:33 ../cpuex2017/raytracer/min-rt.ml@881:38;881:48
	j @cfg_label_24575
@cfg_label_24575:
	li r5,$0
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@883:29;883:30
	j @cfg_label_24574
@cfg_label_24574:
	lw r6,r2,$-308
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@883:26;883:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@883:26;883:27 ../cpuex2017/raytracer/min-rt.ml@883:29;883:30
	j @cfg_label_24573
@cfg_label_24573:
	fld f1,r2,$-176
	fld f2,r2,$-304
	fmul f1,f1,f2
	fst f1,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@883:20;883:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@883:20;883:22 ../cpuex2017/raytracer/min-rt.ml@883:26;883:31
	j @cfg_label_24572
@cfg_label_24572:
	fld f1,r2,$-300
	fld f2,r2,$60
	fadd f1,f1,f2
	fst f1,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@883:20;883:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@883:20;883:31 ../cpuex2017/raytracer/min-rt.ml@883:35;883:37
	j @cfg_label_24571
@cfg_label_24571:
	fmovi f1,$0.000000
	fst f1,r2,$-296
	j @cfg_label_24570
@cfg_label_24570:
	fld f1,r2,$-280
	fld f2,r2,$-296
	flt f2,f1
	bft @emit_label_26057
	li r5,$0
	j @emit_label_26058
@emit_label_26057:
	li r5,$1
@emit_label_26058:
	sw r5,r2,$-292
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24569
@cfg_label_24569:
	li r5,$1
	sw r5,r2,$-288
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24568
@cfg_label_24568:
	lw r5,r2,$-292
	lw r6,r2,$-288
	bne r5,r6,@cfg_label_24453
	j @cfg_label_24452
	j @cfg_label_24454
	j @cfg_label_24455
@cfg_label_24454:
@cfg_label_24452:
	lw r5,r2,$-280
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@883:14;883:38 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24566
@cfg_label_24455:
@cfg_label_24453:
	fmovi f1,$-1.000000
	fst f1,r2,$-284
	j @cfg_label_24451
@cfg_label_24451:
	fld f1,r2,$-284
	fld f2,r2,$-280
	fmul f1,f1,f2
	fst f1,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@883:14;883:38 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24567
@cfg_label_24567:
@cfg_label_24566:
	li r5,$0
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24565
@cfg_label_24565:
	lw r6,r2,$-276
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@883:41;883:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24564
@cfg_label_24564:
	fld f1,r2,$-272
	fld f2,r2,$-268
	flt f1,f2
	bft @emit_label_26059
	li r5,$0
	j @emit_label_26060
@emit_label_26059:
	li r5,$1
@emit_label_26060:
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@883:7;883:53 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24563
@cfg_label_24563:
	li r5,$1
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@883:7;883:53
	j @cfg_label_24562
@cfg_label_24562:
	lw r5,r2,$-264
	lw r6,r2,$-260
	bne r5,r6,@cfg_label_24483
	j @cfg_label_24482
	j @cfg_label_24484
	j @cfg_label_24485
@cfg_label_24485:
@cfg_label_24483:
	lw r5,r31,$12
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@883:4;887:14 ::<= ../cpuex2017/raytracer/min-rt.ml@887:9;887:14
	j @cfg_label_24561
@cfg_label_24484:
@cfg_label_24482:
	li r5,$2
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@884:31;884:32
	j @cfg_label_24481
@cfg_label_24481:
	lw r6,r2,$-256
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@884:28;884:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@884:28;884:29 ../cpuex2017/raytracer/min-rt.ml@884:31;884:32
	j @cfg_label_24480
@cfg_label_24480:
	fld f1,r2,$-176
	fld f2,r2,$-252
	fmul f1,f1,f2
	fst f1,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@884:22;884:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@884:22;884:24 ../cpuex2017/raytracer/min-rt.ml@884:28;884:33
	j @cfg_label_24479
@cfg_label_24479:
	fld f1,r2,$-248
	fld f2,r2,$68
	fadd f1,f1,f2
	fst f1,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@884:22;884:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@884:22;884:33 ../cpuex2017/raytracer/min-rt.ml@884:37;884:39
	j @cfg_label_24478
@cfg_label_24478:
	fmovi f1,$0.000000
	fst f1,r2,$-244
	j @cfg_label_24477
@cfg_label_24477:
	fld f1,r2,$-228
	fld f2,r2,$-244
	flt f2,f1
	bft @emit_label_26061
	li r5,$0
	j @emit_label_26062
@emit_label_26061:
	li r5,$1
@emit_label_26062:
	sw r5,r2,$-240
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24476
@cfg_label_24476:
	li r5,$1
	sw r5,r2,$-236
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24475
@cfg_label_24475:
	lw r5,r2,$-240
	lw r6,r2,$-236
	bne r5,r6,@cfg_label_24458
	j @cfg_label_24457
	j @cfg_label_24459
	j @cfg_label_24460
@cfg_label_24459:
@cfg_label_24457:
	lw r5,r2,$-228
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@884:16;884:40 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24473
@cfg_label_24460:
@cfg_label_24458:
	fmovi f1,$-1.000000
	fst f1,r2,$-232
	j @cfg_label_24456
@cfg_label_24456:
	fld f1,r2,$-232
	fld f2,r2,$-228
	fmul f1,f1,f2
	fst f1,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@884:16;884:40 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24474
@cfg_label_24474:
@cfg_label_24473:
	li r5,$2
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24472
@cfg_label_24472:
	lw r6,r2,$-224
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@884:43;884:54 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24471
@cfg_label_24471:
	fld f1,r2,$-220
	fld f2,r2,$-216
	flt f1,f2
	bft @emit_label_26063
	li r5,$0
	j @emit_label_26064
@emit_label_26063:
	li r5,$1
@emit_label_26064:
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@884:9;884:55 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24470
@cfg_label_24470:
	li r5,$1
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@884:9;884:55
	j @cfg_label_24469
@cfg_label_24469:
	lw r5,r2,$-212
	lw r6,r2,$-208
	bne r5,r6,@cfg_label_24466
	j @cfg_label_24465
	j @cfg_label_24467
	j @cfg_label_24468
@cfg_label_24468:
@cfg_label_24466:
	lw r5,r31,$12
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@883:4;887:14 ::<= ../cpuex2017/raytracer/min-rt.ml@886:11;886:16
	j @cfg_label_24560
@cfg_label_24467:
@cfg_label_24465:
	li r5,$3
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@885:22;885:23
	j @cfg_label_24464
@cfg_label_24464:
	lw r6,r2,$-204
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@885:14;885:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@885:14;885:20 ../cpuex2017/raytracer/min-rt.ml@885:22;885:23
	j @cfg_label_24463
@cfg_label_24463:
	fmovi f1,$0.000000
	fst f1,r2,$-196
	j @cfg_label_24462
@cfg_label_24462:
	fld f1,r2,$-200
	fld f2,r2,$-196
	feq f1,f2
	bft @emit_label_26065
	li r5,$0
	j @emit_label_26066
@emit_label_26065:
	li r5,$1
@emit_label_26066:
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@885:6;885:24 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24461
@cfg_label_24461:
	lw r5,r2,$-192
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@883:4;887:14 ::= Onot ../cpuex2017/raytracer/min-rt.ml@885:6;885:24
	j @cfg_label_24559
@cfg_label_24561:
@cfg_label_24560:
@cfg_label_24559:
	li r5,$1
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@883:4;887:14
	j @cfg_label_24558
@cfg_label_24558:
	lw r5,r2,$-188
	lw r6,r2,$-184
	bne r5,r6,@cfg_label_24555
	j @cfg_label_24554
	j @cfg_label_24556
	j @cfg_label_24557
@cfg_label_24557:
@cfg_label_24555:
	li r5,$4
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@890:25;890:26
	j @cfg_label_24553
@cfg_label_24553:
	lw r6,r2,$-164
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@890:17;890:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@890:17;890:23 ../cpuex2017/raytracer/min-rt.ml@890:25;890:26
	j @cfg_label_24552
@cfg_label_24552:
	fld f1,r2,$-160
	fld f2,r2,$68
	fsub f1,f1,f2
	fst f1,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@890:17;890:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@890:17;890:27 ../cpuex2017/raytracer/min-rt.ml@890:31;890:33
	j @cfg_label_24551
@cfg_label_24551:
	li r5,$5
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@890:46;890:47
	j @cfg_label_24550
@cfg_label_24550:
	lw r6,r2,$-156
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@890:38;890:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@890:38;890:44 ../cpuex2017/raytracer/min-rt.ml@890:46;890:47
	j @cfg_label_24549
@cfg_label_24549:
	fld f1,r2,$-152
	fld f2,r2,$-148
	fmul f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@890:16;890:48 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@890:17;890:33 ../cpuex2017/raytracer/min-rt.ml@890:38;890:48
	j @cfg_label_24548
@cfg_label_24548:
	li r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@892:29;892:30
	j @cfg_label_24547
@cfg_label_24547:
	lw r6,r2,$-144
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@892:26;892:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@892:26;892:27 ../cpuex2017/raytracer/min-rt.ml@892:29;892:30
	j @cfg_label_24546
@cfg_label_24546:
	fld f1,r2,$-12
	fld f2,r2,$-140
	fmul f1,f1,f2
	fst f1,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@892:20;892:31 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@892:20;892:22 ../cpuex2017/raytracer/min-rt.ml@892:26;892:31
	j @cfg_label_24545
@cfg_label_24545:
	fld f1,r2,$-136
	fld f2,r2,$60
	fadd f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@892:20;892:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@892:20;892:31 ../cpuex2017/raytracer/min-rt.ml@892:35;892:37
	j @cfg_label_24544
@cfg_label_24544:
	fmovi f1,$0.000000
	fst f1,r2,$-132
	j @cfg_label_24543
@cfg_label_24543:
	fld f1,r2,$-116
	fld f2,r2,$-132
	flt f2,f1
	bft @emit_label_26067
	li r5,$0
	j @emit_label_26068
@emit_label_26067:
	li r5,$1
@emit_label_26068:
	sw r5,r2,$-128
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24542
@cfg_label_24542:
	li r5,$1
	sw r5,r2,$-124
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24541
@cfg_label_24541:
	lw r5,r2,$-128
	lw r6,r2,$-124
	bne r5,r6,@cfg_label_24491
	j @cfg_label_24490
	j @cfg_label_24492
	j @cfg_label_24493
@cfg_label_24492:
@cfg_label_24490:
	lw r5,r2,$-116
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@892:14;892:38 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24539
@cfg_label_24493:
@cfg_label_24491:
	fmovi f1,$-1.000000
	fst f1,r2,$-120
	j @cfg_label_24489
@cfg_label_24489:
	fld f1,r2,$-120
	fld f2,r2,$-116
	fmul f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@892:14;892:38 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24540
@cfg_label_24540:
@cfg_label_24539:
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24538
@cfg_label_24538:
	lw r6,r2,$-112
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@892:41;892:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24537
@cfg_label_24537:
	fld f1,r2,$-108
	fld f2,r2,$-104
	flt f1,f2
	bft @emit_label_26069
	li r5,$0
	j @emit_label_26070
@emit_label_26069:
	li r5,$1
@emit_label_26070:
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@892:7;892:53 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24536
@cfg_label_24536:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@892:7;892:53
	j @cfg_label_24535
@cfg_label_24535:
	lw r5,r2,$-100
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_24521
	j @cfg_label_24520
	j @cfg_label_24522
	j @cfg_label_24523
@cfg_label_24523:
@cfg_label_24521:
	lw r5,r31,$12
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@892:4;896:14 ::<= ../cpuex2017/raytracer/min-rt.ml@896:9;896:14
	j @cfg_label_24534
@cfg_label_24522:
@cfg_label_24520:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@893:31;893:32
	j @cfg_label_24519
@cfg_label_24519:
	lw r6,r2,$-92
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@893:28;893:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@893:28;893:29 ../cpuex2017/raytracer/min-rt.ml@893:31;893:32
	j @cfg_label_24518
@cfg_label_24518:
	fld f1,r2,$-12
	fld f2,r2,$-88
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@893:22;893:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@893:22;893:24 ../cpuex2017/raytracer/min-rt.ml@893:28;893:33
	j @cfg_label_24517
@cfg_label_24517:
	fld f1,r2,$-84
	fld f2,r2,$64
	fadd f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@893:22;893:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@893:22;893:33 ../cpuex2017/raytracer/min-rt.ml@893:37;893:39
	j @cfg_label_24516
@cfg_label_24516:
	fmovi f1,$0.000000
	fst f1,r2,$-80
	j @cfg_label_24515
@cfg_label_24515:
	fld f1,r2,$-64
	fld f2,r2,$-80
	flt f2,f1
	bft @emit_label_26071
	li r5,$0
	j @emit_label_26072
@emit_label_26071:
	li r5,$1
@emit_label_26072:
	sw r5,r2,$-76
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_24514
@cfg_label_24514:
	li r5,$1
	sw r5,r2,$-72
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_24513
@cfg_label_24513:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_24496
	j @cfg_label_24495
	j @cfg_label_24497
	j @cfg_label_24498
@cfg_label_24497:
@cfg_label_24495:
	lw r5,r2,$-64
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@893:16;893:40 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_24511
@cfg_label_24498:
@cfg_label_24496:
	fmovi f1,$-1.000000
	fst f1,r2,$-68
	j @cfg_label_24494
@cfg_label_24494:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@893:16;893:40 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_24512
@cfg_label_24512:
@cfg_label_24511:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24510
@cfg_label_24510:
	lw r6,r2,$-60
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@893:43;893:54 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24509
@cfg_label_24509:
	fld f1,r2,$-56
	fld f2,r2,$-52
	flt f1,f2
	bft @emit_label_26073
	li r5,$0
	j @emit_label_26074
@emit_label_26073:
	li r5,$1
@emit_label_26074:
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@893:9;893:55 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_24508
@cfg_label_24508:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@893:9;893:55
	j @cfg_label_24507
@cfg_label_24507:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_24504
	j @cfg_label_24503
	j @cfg_label_24505
	j @cfg_label_24506
@cfg_label_24506:
@cfg_label_24504:
	lw r5,r31,$12
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@892:4;896:14 ::<= ../cpuex2017/raytracer/min-rt.ml@895:11;895:16
	j @cfg_label_24533
@cfg_label_24505:
@cfg_label_24503:
	li r5,$5
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@894:22;894:23
	j @cfg_label_24502
@cfg_label_24502:
	lw r6,r2,$-40
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@894:14;894:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@894:14;894:20 ../cpuex2017/raytracer/min-rt.ml@894:22;894:23
	j @cfg_label_24501
@cfg_label_24501:
	fmovi f1,$0.000000
	fst f1,r2,$-32
	j @cfg_label_24500
@cfg_label_24500:
	fld f1,r2,$-36
	fld f2,r2,$-32
	feq f1,f2
	bft @emit_label_26075
	li r5,$0
	j @emit_label_26076
@emit_label_26075:
	li r5,$1
@emit_label_26076:
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@894:6;894:24 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24499
@cfg_label_24499:
	lw r5,r2,$-28
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@892:4;896:14 ::= Onot ../cpuex2017/raytracer/min-rt.ml@894:6;894:24
	j @cfg_label_24532
@cfg_label_24534:
@cfg_label_24533:
@cfg_label_24532:
	li r5,$1
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@892:4;896:14
	j @cfg_label_24531
@cfg_label_24531:
	lw r5,r2,$-24
	lw r6,r2,$-20
	bne r5,r6,@cfg_label_24528
	j @cfg_label_24527
	j @cfg_label_24529
	j @cfg_label_24530
@cfg_label_24530:
@cfg_label_24528:
	li r5,$0
	sw r5,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5
	lw r5,r2,$-496
	addi r1,r1,$496
	pop r2
	pop r6
	jr r6
@cfg_label_24529:
@cfg_label_24527:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@898:18;898:19
	j @cfg_label_24526
@cfg_label_24526:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@898:5;898:26 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@898:5;898:16 ../cpuex2017/raytracer/min-rt.ml@898:18;898:19 ../cpuex2017/raytracer/min-rt.ml@898:24;898:26
	j @cfg_label_24525
@cfg_label_24525:
	li r5,$3
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@898:28;898:29
	j @cfg_label_24524
@cfg_label_24524:
	lw r5,r2,$-4
	sw r5,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5 ::<= ../cpuex2017/raytracer/min-rt.ml@898:28;898:29
	lw r5,r2,$-496
	addi r1,r1,$496
	pop r2
	pop r6
	jr r6
@cfg_label_24556:
@cfg_label_24554:
	li r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@889:18;889:19
	j @cfg_label_24488
@cfg_label_24488:
	lw r7,r2,$-176
	lw r6,r2,$-180
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@889:5;889:26 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@889:5;889:16 ../cpuex2017/raytracer/min-rt.ml@889:18;889:19 ../cpuex2017/raytracer/min-rt.ml@889:24;889:26
	j @cfg_label_24487
@cfg_label_24487:
	li r5,$2
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@889:28;889:29
	j @cfg_label_24486
@cfg_label_24486:
	lw r5,r2,$-168
	sw r5,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5 ::<= ../cpuex2017/raytracer/min-rt.ml@889:28;889:29
	lw r5,r2,$-496
	addi r1,r1,$496
	pop r2
	pop r6
	jr r6
@cfg_label_24583:
@cfg_label_24581:
	li r5,$0
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@880:18;880:19
	j @cfg_label_24450
@cfg_label_24450:
	lw r7,r2,$-340
	lw r6,r2,$-344
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@880:5;880:26 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@880:5;880:16 ../cpuex2017/raytracer/min-rt.ml@880:18;880:19 ../cpuex2017/raytracer/min-rt.ml@880:24;880:26
	j @cfg_label_24449
@cfg_label_24449:
	li r5,$1
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@880:28;880:29
	j @cfg_label_24448
@cfg_label_24448:
	lw r5,r2,$-332
	sw r5,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@872:2;900:5 ::<= ../cpuex2017/raytracer/min-rt.ml@880:28;880:29
	lw r5,r2,$-496
	addi r1,r1,$496
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-496
	addi r1,r1,$496
	pop r2
	pop r6
	jr r6
@a_8840solver_surface_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@905:20;905:21
	j @cfg_label_24412
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@905:20;905:21
	j @cfg_label_24412
@cfg_label_24412:
	lw r6,r2,$-76
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@905:12;905:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@905:12;905:18 ../cpuex2017/raytracer/min-rt.ml@905:20;905:21
	j @cfg_label_24411
@cfg_label_24411:
	fmovi f1,$0.000000
	fst f1,r2,$-68
	j @cfg_label_24410
@cfg_label_24410:
	fld f1,r2,$-72
	fld f2,r2,$-68
	flt f1,f2
	bft @emit_label_26077
	li r5,$0
	j @emit_label_26078
@emit_label_26077:
	li r5,$1
@emit_label_26078:
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@905:5;905:22 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_24409
@cfg_label_24409:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@905:5;905:22
	j @cfg_label_24408
@cfg_label_24408:
	lw r5,r2,$-64
	lw r6,r2,$-60
	bne r5,r6,@cfg_label_24405
	j @cfg_label_24404
	j @cfg_label_24406
	j @cfg_label_24407
@cfg_label_24407:
@cfg_label_24405:
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@905:2;909:11
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_24406:
@cfg_label_24404:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@906:17;906:18
	j @cfg_label_24403
@cfg_label_24403:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@907:14;907:15
	j @cfg_label_24402
@cfg_label_24402:
	lw r6,r2,$-56
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:16 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@907:6;907:12 ../cpuex2017/raytracer/min-rt.ml@907:14;907:15
	j @cfg_label_24401
@cfg_label_24401:
	fld f1,r2,$-52
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@907:6;907:16 ../cpuex2017/raytracer/min-rt.ml@907:20;907:22
	j @cfg_label_24400
@cfg_label_24400:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@907:34;907:35
	j @cfg_label_24399
@cfg_label_24399:
	lw r6,r2,$-48
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@907:26;907:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@907:26;907:32 ../cpuex2017/raytracer/min-rt.ml@907:34;907:35
	j @cfg_label_24398
@cfg_label_24398:
	fld f1,r2,$-44
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@907:26;907:42 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@907:26;907:36 ../cpuex2017/raytracer/min-rt.ml@907:40;907:42
	j @cfg_label_24397
@cfg_label_24397:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:42 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@907:6;907:22 ../cpuex2017/raytracer/min-rt.ml@907:26;907:42
	j @cfg_label_24396
@cfg_label_24396:
	li r5,$3
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@907:54;907:55
	j @cfg_label_24395
@cfg_label_24395:
	lw r6,r2,$-32
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@907:46;907:56 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@907:46;907:52 ../cpuex2017/raytracer/min-rt.ml@907:54;907:55
	j @cfg_label_24394
@cfg_label_24394:
	fld f1,r2,$-28
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@907:46;907:62 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@907:46;907:56 ../cpuex2017/raytracer/min-rt.ml@907:60;907:62
	j @cfg_label_24393
@cfg_label_24393:
	fld f1,r2,$-24
	fld f2,r2,$-20
	fadd f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@907:6;907:62 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@907:6;907:42 ../cpuex2017/raytracer/min-rt.ml@907:46;907:62
	j @cfg_label_24392
@cfg_label_24392:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@906:4;907:62 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@906:4;906:15 ../cpuex2017/raytracer/min-rt.ml@906:17;906:18 ../cpuex2017/raytracer/min-rt.ml@907:6;907:62
	j @cfg_label_24391
@cfg_label_24391:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@908:4;908:5
	j @cfg_label_24390
@cfg_label_24390:
	lw r5,r2,$-4
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@905:2;909:11 ::<= ../cpuex2017/raytracer/min-rt.ml@908:4;908:5
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@a_8846solver_second_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$168
	li r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@915:19;915:20
	j @cfg_label_24389
	li r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@915:19;915:20
	j @cfg_label_24389
@cfg_label_24389:
	lw r6,r2,$-164
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@915:11;915:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@915:11;915:17 ../cpuex2017/raytracer/min-rt.ml@915:19;915:20
	j @cfg_label_24388
@cfg_label_24388:
	fmovi f1,$0.000000
	fst f1,r2,$-160
	j @cfg_label_24387
@cfg_label_24387:
	fld f1,r2,$-96
	fld f2,r2,$-160
	feq f1,f2
	bft @emit_label_26079
	li r5,$0
	j @emit_label_26080
@emit_label_26079:
	li r5,$1
@emit_label_26080:
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@916:5;916:15 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24386
@cfg_label_24386:
	li r5,$1
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@916:5;916:15
	j @cfg_label_24385
@cfg_label_24385:
	lw r5,r2,$-156
	lw r6,r2,$-152
	bne r5,r6,@cfg_label_24382
	j @cfg_label_24381
	j @cfg_label_24383
	j @cfg_label_24384
@cfg_label_24383:
@cfg_label_24381:
	li r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	lw r5,r2,$-168
	addi r1,r1,$168
	pop r2
	pop r6
	jr r6
@cfg_label_24384:
@cfg_label_24382:
	li r5,$1
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@919:25;919:26
	j @cfg_label_24380
@cfg_label_24380:
	lw r6,r2,$-148
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@919:17;919:23 ../cpuex2017/raytracer/min-rt.ml@919:25;919:26
	j @cfg_label_24379
@cfg_label_24379:
	fld f1,r2,$-144
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:17;919:27 ../cpuex2017/raytracer/min-rt.ml@919:31;919:33
	j @cfg_label_24378
@cfg_label_24378:
	li r5,$2
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@919:45;919:46
	j @cfg_label_24377
@cfg_label_24377:
	lw r6,r2,$-140
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@919:37;919:47 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@919:37;919:43 ../cpuex2017/raytracer/min-rt.ml@919:45;919:46
	j @cfg_label_24376
@cfg_label_24376:
	fld f1,r2,$-136
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@919:37;919:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:37;919:47 ../cpuex2017/raytracer/min-rt.ml@919:51;919:53
	j @cfg_label_24375
@cfg_label_24375:
	fld f1,r2,$-132
	fld f2,r2,$-128
	fadd f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@919:17;919:33 ../cpuex2017/raytracer/min-rt.ml@919:37;919:53
	j @cfg_label_24374
@cfg_label_24374:
	li r5,$3
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@919:65;919:66
	j @cfg_label_24373
@cfg_label_24373:
	lw r6,r2,$-124
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@919:57;919:67 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@919:57;919:63 ../cpuex2017/raytracer/min-rt.ml@919:65;919:66
	j @cfg_label_24372
@cfg_label_24372:
	fld f1,r2,$-120
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@919:57;919:73 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@919:57;919:67 ../cpuex2017/raytracer/min-rt.ml@919:71;919:73
	j @cfg_label_24371
@cfg_label_24371:
	fld f1,r2,$-116
	fld f2,r2,$-112
	fadd f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@919:17;919:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@919:17;919:53 ../cpuex2017/raytracer/min-rt.ml@919:57;919:73
	j @cfg_label_24370
@cfg_label_24370:
	push r4
	lw r5,r2,$64
	push r5
	lw r5,r2,$60
	push r5
	lw r5,r2,$56
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8810quadratic
	sw r5,r2,$-100
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@920:14;920:34 ../cpuex2017/raytracer/min-rt.ml@920:14;920:23
	j @cfg_label_24369
@cfg_label_24369:
	li r5,$3
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@921:27;921:28
	j @cfg_label_24368
@cfg_label_24368:
	lw r5,r2,$12
	lw r6,r2,$-108
	bne r5,r6,@cfg_label_24333
	j @cfg_label_24332
	j @cfg_label_24334
	j @cfg_label_24335
@cfg_label_24335:
@cfg_label_24333:
	lw r5,r2,$-100
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@921:13;921:53 ::<= ../cpuex2017/raytracer/min-rt.ml@921:50;921:53
	j @cfg_label_24367
@cfg_label_24334:
@cfg_label_24332:
	fmovi f1,$1.000000
	fst f1,r2,$-104
	j @cfg_label_24331
@cfg_label_24331:
	fld f1,r2,$-100
	fld f2,r2,$-104
	fsub f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@921:13;921:53 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@921:34;921:37 ../cpuex2017/raytracer/min-rt.ml@921:41;921:44
	j @cfg_label_24366
@cfg_label_24367:
@cfg_label_24366:
	fld f1,r2,$-36
	fld f2,r2,$-36
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@922:13;922:24 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24365
@cfg_label_24365:
	fld f1,r2,$-96
	fld f2,r2,$-92
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@922:29;922:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@922:29;922:31 ../cpuex2017/raytracer/min-rt.ml@922:35;922:37
	j @cfg_label_24364
@cfg_label_24364:
	fld f1,r2,$-88
	fld f2,r2,$-84
	fsub f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@922:12;922:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@922:13;922:24 ../cpuex2017/raytracer/min-rt.ml@922:29;922:37
	j @cfg_label_24363
@cfg_label_24363:
	fmovi f1,$0.000000
	fst f1,r2,$-80
	j @cfg_label_24362
@cfg_label_24362:
	fld f1,r2,$-40
	fld f2,r2,$-80
	flt f2,f1
	bft @emit_label_26081
	li r5,$0
	j @emit_label_26082
@emit_label_26081:
	li r5,$1
@emit_label_26082:
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@923:7;923:15 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_24361
@cfg_label_24361:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@923:7;923:15
	j @cfg_label_24360
@cfg_label_24360:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_24357
	j @cfg_label_24356
	j @cfg_label_24358
	j @cfg_label_24359
@cfg_label_24359:
@cfg_label_24357:
	li r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10
	lw r5,r2,$-168
	addi r1,r1,$168
	pop r2
	pop r6
	jr r6
@cfg_label_24358:
@cfg_label_24356:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@924:9;924:21
	j @cfg_label_24355
@cfg_label_24355:
	lw r5,r2,$32
	lw r6,r2,$-68
	bne r5,r6,@cfg_label_24349
	j @cfg_label_24348
	j @cfg_label_24350
	j @cfg_label_24351
@cfg_label_24351:
@cfg_label_24349:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@927:14;927:15
	j @cfg_label_24347
@cfg_label_24347:
	push r4
	lw r5,r2,$-40
	push r5
	jal sqrt
	sw r5,r2,$-32
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@927:31;927:37 ../cpuex2017/raytracer/min-rt.ml@927:31;927:35
	j @cfg_label_24346
@cfg_label_24346:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fsub f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@927:21;927:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@927:21;927:27 ../cpuex2017/raytracer/min-rt.ml@927:31;927:37
	j @cfg_label_24345
@cfg_label_24345:
	li r5,$4
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@927:50;927:51
	j @cfg_label_24344
@cfg_label_24344:
	lw r6,r2,$-28
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@927:42;927:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@927:42;927:48 ../cpuex2017/raytracer/min-rt.ml@927:50;927:51
	j @cfg_label_24343
@cfg_label_24343:
	fld f1,r2,$-24
	fld f2,r2,$-20
	fmul f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@927:20;927:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@927:21;927:37 ../cpuex2017/raytracer/min-rt.ml@927:42;927:52
	j @cfg_label_24342
@cfg_label_24342:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@924:6;927:52 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@927:1;927:12 ../cpuex2017/raytracer/min-rt.ml@927:14;927:15 ../cpuex2017/raytracer/min-rt.ml@927:20;927:52
	j @cfg_label_24354
@cfg_label_24350:
@cfg_label_24348:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@925:14;925:15
	j @cfg_label_24341
@cfg_label_24341:
	push r4
	lw r5,r2,$-40
	push r5
	jal sqrt
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@925:31;925:37 ../cpuex2017/raytracer/min-rt.ml@925:31;925:35
	j @cfg_label_24340
@cfg_label_24340:
	fld f1,r2,$-36
	fld f2,r2,$-64
	fadd f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@925:21;925:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@925:21;925:27 ../cpuex2017/raytracer/min-rt.ml@925:31;925:37
	j @cfg_label_24339
@cfg_label_24339:
	li r5,$4
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@925:50;925:51
	j @cfg_label_24338
@cfg_label_24338:
	lw r6,r2,$-60
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@925:42;925:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@925:42;925:48 ../cpuex2017/raytracer/min-rt.ml@925:50;925:51
	j @cfg_label_24337
@cfg_label_24337:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@925:20;925:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@925:21;925:37 ../cpuex2017/raytracer/min-rt.ml@925:42;925:52
	j @cfg_label_24336
@cfg_label_24336:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@924:6;927:52 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@925:1;925:12 ../cpuex2017/raytracer/min-rt.ml@925:14;925:15 ../cpuex2017/raytracer/min-rt.ml@925:20;925:52
	j @cfg_label_24353
@cfg_label_24354:
@cfg_label_24353:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@928:6;928:7
	j @cfg_label_24352
@cfg_label_24352:
	lw r5,r2,$-4
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@915:2;929:10 ::<= ../cpuex2017/raytracer/min-rt.ml@928:6;928:7
	lw r5,r2,$-168
	addi r1,r1,$168
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-168
	addi r1,r1,$168
	pop r2
	pop r6
	jr r6
@a_8852solver_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$124
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@934:10;934:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@934:10;934:17 ../cpuex2017/raytracer/min-rt.ml@934:19;934:24
	j @cfg_label_24330
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@934:10;934:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@934:10;934:17 ../cpuex2017/raytracer/min-rt.ml@934:19;934:24
	j @cfg_label_24330
@cfg_label_24330:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@935:16;935:17
	j @cfg_label_24329
@cfg_label_24329:
	lw r6,r2,$-120
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@935:11;935:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@935:11;935:14 ../cpuex2017/raytracer/min-rt.ml@935:16;935:17
	j @cfg_label_24328
@cfg_label_24328:
	lw r5,r2,$-116
	lw r5,r5,$40
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24327
@cfg_label_24327:
	lw r5,r2,$-116
	lw r5,r5,$36
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24326
@cfg_label_24326:
	lw r5,r2,$-116
	lw r5,r5,$32
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24325
@cfg_label_24325:
	lw r5,r2,$-116
	lw r5,r5,$28
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24324
@cfg_label_24324:
	lw r5,r2,$-116
	lw r5,r5,$24
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24323
@cfg_label_24323:
	lw r5,r2,$-116
	lw r5,r5,$20
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24322
@cfg_label_24322:
	lw r5,r2,$-116
	lw r5,r5,$16
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24321
@cfg_label_24321:
	lw r5,r2,$-116
	lw r5,r5,$12
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24320
@cfg_label_24320:
	lw r5,r2,$-116
	lw r5,r5,$8
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24319
@cfg_label_24319:
	lw r5,r2,$-116
	lw r5,r5,$4
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24318
@cfg_label_24318:
	lw r5,r2,$-116
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@935:32;935:33 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@935:32;935:33
	j @cfg_label_24317
@cfg_label_24317:
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_24316
@cfg_label_24316:
	lw r6,r2,$-112
	lw r5,r2,$-40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@935:22;935:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_24315
@cfg_label_24315:
	fld f1,r2,$-108
	fld f2,r2,$-104
	fsub f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@935:11;935:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@935:11;935:18 ../cpuex2017/raytracer/min-rt.ml@935:22;935:33
	j @cfg_label_24314
@cfg_label_24314:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@936:16;936:17
	j @cfg_label_24313
@cfg_label_24313:
	lw r6,r2,$-100
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@936:11;936:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@936:11;936:14 ../cpuex2017/raytracer/min-rt.ml@936:16;936:17
	j @cfg_label_24312
@cfg_label_24312:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_24311
@cfg_label_24311:
	lw r6,r2,$-96
	lw r5,r2,$-40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@936:22;936:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@252:2;252:7 ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_24310
@cfg_label_24310:
	fld f1,r2,$-92
	fld f2,r2,$-88
	fsub f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@936:11;936:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@936:11;936:18 ../cpuex2017/raytracer/min-rt.ml@936:22;936:33
	j @cfg_label_24309
@cfg_label_24309:
	li r5,$2
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@937:16;937:17
	j @cfg_label_24308
@cfg_label_24308:
	lw r6,r2,$-84
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@937:11;937:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@937:11;937:14 ../cpuex2017/raytracer/min-rt.ml@937:16;937:17
	j @cfg_label_24307
@cfg_label_24307:
	li r5,$2
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_24306
@cfg_label_24306:
	lw r6,r2,$-80
	lw r5,r2,$-40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@937:22;937:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_24305
@cfg_label_24305:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fsub f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@937:11;937:33 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@937:11;937:18 ../cpuex2017/raytracer/min-rt.ml@937:22;937:33
	j @cfg_label_24304
@cfg_label_24304:
	lw r6,r2,$8
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@939:15;939:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@939:15;939:22 ../cpuex2017/raytracer/min-rt.ml@939:24;939:29
	j @cfg_label_24303
@cfg_label_24303:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@941:15;941:16
	j @cfg_label_24302
@cfg_label_24302:
	lw r5,r2,$-56
	lw r6,r2,$-68
	bne r5,r6,@cfg_label_24299
	j @cfg_label_24298
	j @cfg_label_24300
	j @cfg_label_24301
@cfg_label_24300:
@cfg_label_24298:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	lw r5,r2,$12
	push r5
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_8833solver_rect_fast
	sw r5,r2,$-124
	addi r1,r1,$64
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40 ../cpuex2017/raytracer/min-rt.ml@942:4;942:20
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
@cfg_label_24301:
@cfg_label_24299:
	li r5,$2
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@943:20;943:21
	j @cfg_label_24297
@cfg_label_24297:
	lw r5,r2,$-56
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_24294
	j @cfg_label_24293
	j @cfg_label_24295
	j @cfg_label_24296
@cfg_label_24295:
@cfg_label_24293:
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_8840solver_surface_fast
	sw r5,r2,$-124
	addi r1,r1,$60
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40 ../cpuex2017/raytracer/min-rt.ml@944:4;944:23
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
@cfg_label_24296:
@cfg_label_24294:
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_8846solver_second_fast
	sw r5,r2,$-124
	addi r1,r1,$60
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@934:2;946:40 ../cpuex2017/raytracer/min-rt.ml@946:4;946:22
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
@a_8863solver_second_fast2:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$160
	li r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@963:19;963:20
	j @cfg_label_24292
	li r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@963:19;963:20
	j @cfg_label_24292
@cfg_label_24292:
	lw r6,r2,$-156
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@963:11;963:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@963:11;963:17 ../cpuex2017/raytracer/min-rt.ml@963:19;963:20
	j @cfg_label_24291
@cfg_label_24291:
	fmovi f1,$0.000000
	fst f1,r2,$-152
	j @cfg_label_24290
@cfg_label_24290:
	fld f1,r2,$-96
	fld f2,r2,$-152
	feq f1,f2
	bft @emit_label_26083
	li r5,$0
	j @emit_label_26084
@emit_label_26083:
	li r5,$1
@emit_label_26084:
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@964:5;964:15 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24289
@cfg_label_24289:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@964:5;964:15
	j @cfg_label_24288
@cfg_label_24288:
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@cfg_label_24285
	j @cfg_label_24284
	j @cfg_label_24286
	j @cfg_label_24287
@cfg_label_24286:
@cfg_label_24284:
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@cfg_label_24287:
@cfg_label_24285:
	li r5,$1
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@967:25;967:26
	j @cfg_label_24283
@cfg_label_24283:
	lw r6,r2,$-140
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@967:17;967:23 ../cpuex2017/raytracer/min-rt.ml@967:25;967:26
	j @cfg_label_24282
@cfg_label_24282:
	fld f1,r2,$-136
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:17;967:27 ../cpuex2017/raytracer/min-rt.ml@967:31;967:33
	j @cfg_label_24281
@cfg_label_24281:
	li r5,$2
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@967:45;967:46
	j @cfg_label_24280
@cfg_label_24280:
	lw r6,r2,$-132
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@967:37;967:47 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@967:37;967:43 ../cpuex2017/raytracer/min-rt.ml@967:45;967:46
	j @cfg_label_24279
@cfg_label_24279:
	fld f1,r2,$-128
	fld f2,r2,$64
	fmul f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@967:37;967:53 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:37;967:47 ../cpuex2017/raytracer/min-rt.ml@967:51;967:53
	j @cfg_label_24278
@cfg_label_24278:
	fld f1,r2,$-124
	fld f2,r2,$-120
	fadd f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:53 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@967:17;967:33 ../cpuex2017/raytracer/min-rt.ml@967:37;967:53
	j @cfg_label_24277
@cfg_label_24277:
	li r5,$3
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@967:65;967:66
	j @cfg_label_24276
@cfg_label_24276:
	lw r6,r2,$-116
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@967:57;967:67 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@967:57;967:63 ../cpuex2017/raytracer/min-rt.ml@967:65;967:66
	j @cfg_label_24275
@cfg_label_24275:
	fld f1,r2,$-112
	fld f2,r2,$68
	fmul f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@967:57;967:73 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@967:57;967:67 ../cpuex2017/raytracer/min-rt.ml@967:71;967:73
	j @cfg_label_24274
@cfg_label_24274:
	fld f1,r2,$-108
	fld f2,r2,$-104
	fadd f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@967:17;967:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@967:17;967:53 ../cpuex2017/raytracer/min-rt.ml@967:57;967:73
	j @cfg_label_24273
@cfg_label_24273:
	li r5,$3
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@968:21;968:22
	j @cfg_label_24272
@cfg_label_24272:
	lw r6,r2,$-100
	lw r5,r2,$56
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@968:13;968:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@968:13;968:19 ../cpuex2017/raytracer/min-rt.ml@968:21;968:22
	j @cfg_label_24271
@cfg_label_24271:
	fld f1,r2,$-36
	fld f2,r2,$-36
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@969:13;969:24 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_24270
@cfg_label_24270:
	fld f1,r2,$-96
	fld f2,r2,$-92
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@969:29;969:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@969:29;969:31 ../cpuex2017/raytracer/min-rt.ml@969:35;969:37
	j @cfg_label_24269
@cfg_label_24269:
	fld f1,r2,$-88
	fld f2,r2,$-84
	fsub f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@969:12;969:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@969:13;969:24 ../cpuex2017/raytracer/min-rt.ml@969:29;969:37
	j @cfg_label_24268
@cfg_label_24268:
	fmovi f1,$0.000000
	fst f1,r2,$-80
	j @cfg_label_24267
@cfg_label_24267:
	fld f1,r2,$-40
	fld f2,r2,$-80
	flt f2,f1
	bft @emit_label_26085
	li r5,$0
	j @emit_label_26086
@emit_label_26085:
	li r5,$1
@emit_label_26086:
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@970:7;970:15 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_24266
@cfg_label_24266:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@970:7;970:15
	j @cfg_label_24265
@cfg_label_24265:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_24262
	j @cfg_label_24261
	j @cfg_label_24263
	j @cfg_label_24264
@cfg_label_24264:
@cfg_label_24262:
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@963:2;976:10
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@cfg_label_24263:
@cfg_label_24261:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@971:9;971:21
	j @cfg_label_24260
@cfg_label_24260:
	lw r5,r2,$32
	lw r6,r2,$-68
	bne r5,r6,@cfg_label_24254
	j @cfg_label_24253
	j @cfg_label_24255
	j @cfg_label_24256
@cfg_label_24256:
@cfg_label_24254:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@974:14;974:15
	j @cfg_label_24252
@cfg_label_24252:
	push r4
	lw r5,r2,$-40
	push r5
	jal sqrt
	sw r5,r2,$-32
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@974:31;974:37 ../cpuex2017/raytracer/min-rt.ml@974:31;974:35
	j @cfg_label_24251
@cfg_label_24251:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fsub f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@974:21;974:37 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@974:21;974:27 ../cpuex2017/raytracer/min-rt.ml@974:31;974:37
	j @cfg_label_24250
@cfg_label_24250:
	li r5,$4
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@974:50;974:51
	j @cfg_label_24249
@cfg_label_24249:
	lw r6,r2,$-28
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@974:42;974:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@974:42;974:48 ../cpuex2017/raytracer/min-rt.ml@974:50;974:51
	j @cfg_label_24248
@cfg_label_24248:
	fld f1,r2,$-24
	fld f2,r2,$-20
	fmul f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@974:20;974:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@974:21;974:37 ../cpuex2017/raytracer/min-rt.ml@974:42;974:52
	j @cfg_label_24247
@cfg_label_24247:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@971:6;974:52 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@974:1;974:12 ../cpuex2017/raytracer/min-rt.ml@974:14;974:15 ../cpuex2017/raytracer/min-rt.ml@974:20;974:52
	j @cfg_label_24259
@cfg_label_24255:
@cfg_label_24253:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@972:14;972:15
	j @cfg_label_24246
@cfg_label_24246:
	push r4
	lw r5,r2,$-40
	push r5
	jal sqrt
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@972:31;972:37 ../cpuex2017/raytracer/min-rt.ml@972:31;972:35
	j @cfg_label_24245
@cfg_label_24245:
	fld f1,r2,$-36
	fld f2,r2,$-64
	fadd f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@972:21;972:37 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@972:21;972:27 ../cpuex2017/raytracer/min-rt.ml@972:31;972:37
	j @cfg_label_24244
@cfg_label_24244:
	li r5,$4
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@972:50;972:51
	j @cfg_label_24243
@cfg_label_24243:
	lw r6,r2,$-60
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@972:42;972:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@972:42;972:48 ../cpuex2017/raytracer/min-rt.ml@972:50;972:51
	j @cfg_label_24242
@cfg_label_24242:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@972:20;972:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@972:21;972:37 ../cpuex2017/raytracer/min-rt.ml@972:42;972:52
	j @cfg_label_24241
@cfg_label_24241:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@971:6;974:52 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@972:1;972:12 ../cpuex2017/raytracer/min-rt.ml@972:14;972:15 ../cpuex2017/raytracer/min-rt.ml@972:20;972:52
	j @cfg_label_24258
@cfg_label_24259:
@cfg_label_24258:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@975:6;975:7
	j @cfg_label_24257
@cfg_label_24257:
	lw r5,r2,$-4
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@963:2;976:10 ::<= ../cpuex2017/raytracer/min-rt.ml@975:6;975:7
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@a_8870solver_fast2:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$140
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@981:10;981:17 ../cpuex2017/raytracer/min-rt.ml@981:19;981:24
	j @cfg_label_24240
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@981:10;981:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@981:10;981:17 ../cpuex2017/raytracer/min-rt.ml@981:19;981:24
	j @cfg_label_24240
@cfg_label_24240:
	lw r5,r2,$-136
	lw r5,r5,$40
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24239
@cfg_label_24239:
	lw r5,r2,$-136
	lw r5,r5,$36
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24238
@cfg_label_24238:
	lw r5,r2,$-136
	lw r5,r5,$32
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24237
@cfg_label_24237:
	lw r5,r2,$-136
	lw r5,r5,$28
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24236
@cfg_label_24236:
	lw r5,r2,$-136
	lw r5,r5,$24
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24235
@cfg_label_24235:
	lw r5,r2,$-136
	lw r5,r5,$20
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24234
@cfg_label_24234:
	lw r5,r2,$-136
	lw r5,r5,$16
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24233
@cfg_label_24233:
	lw r5,r2,$-136
	lw r5,r5,$12
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24232
@cfg_label_24232:
	lw r5,r2,$-136
	lw r5,r5,$8
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24231
@cfg_label_24231:
	lw r5,r2,$-136
	lw r5,r5,$4
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24230
@cfg_label_24230:
	lw r5,r2,$-136
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@982:28;982:29 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@982:28;982:29
	j @cfg_label_24229
@cfg_label_24229:
	li r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@983:19;983:20
	j @cfg_label_24228
@cfg_label_24228:
	lw r6,r2,$-132
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@983:11;983:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@983:11;983:17 ../cpuex2017/raytracer/min-rt.ml@983:19;983:20
	j @cfg_label_24227
@cfg_label_24227:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@984:19;984:20
	j @cfg_label_24226
@cfg_label_24226:
	lw r6,r2,$-128
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@984:11;984:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@984:11;984:17 ../cpuex2017/raytracer/min-rt.ml@984:19;984:20
	j @cfg_label_24225
@cfg_label_24225:
	li r5,$2
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@985:19;985:20
	j @cfg_label_24224
@cfg_label_24224:
	lw r6,r2,$-124
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@985:11;985:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@985:11;985:17 ../cpuex2017/raytracer/min-rt.ml@985:19;985:20
	j @cfg_label_24223
@cfg_label_24223:
	lw r6,r2,$8
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@987:15;987:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@987:15;987:22 ../cpuex2017/raytracer/min-rt.ml@987:24;987:29
	j @cfg_label_24222
@cfg_label_24222:
	li r5,$1
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@989:15;989:16
	j @cfg_label_24221
@cfg_label_24221:
	lw r5,r2,$-56
	lw r6,r2,$-120
	bne r5,r6,@cfg_label_24218
	j @cfg_label_24217
	j @cfg_label_24219
	j @cfg_label_24220
@cfg_label_24219:
@cfg_label_24217:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-20
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-16
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_8833solver_rect_fast
	sw r5,r2,$-140
	addi r1,r1,$64
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@981:2;994:48 ../cpuex2017/raytracer/min-rt.ml@990:4;990:20
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
@cfg_label_24220:
@cfg_label_24218:
	li r5,$2
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@991:20;991:21
	j @cfg_label_24216
@cfg_label_24216:
	lw r5,r2,$-56
	lw r6,r2,$-116
	bne r5,r6,@cfg_label_24213
	j @cfg_label_24212
	j @cfg_label_24214
	j @cfg_label_24215
@cfg_label_24215:
@cfg_label_24213:
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
	lw r5,r2,$-16
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_8863solver_second_fast2
	sw r5,r2,$-140
	addi r1,r1,$64
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@981:2;994:48 ../cpuex2017/raytracer/min-rt.ml@994:4;994:23
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
@cfg_label_24214:
@cfg_label_24212:
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@954:20;954:21
	j @cfg_label_24211
@cfg_label_24211:
	lw r6,r2,$-112
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@954:12;954:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@954:12;954:18 ../cpuex2017/raytracer/min-rt.ml@954:20;954:21
	j @cfg_label_24210
@cfg_label_24210:
	fmovi f1,$0.000000
	fst f1,r2,$-104
	j @cfg_label_24209
@cfg_label_24209:
	fld f1,r2,$-108
	fld f2,r2,$-104
	flt f1,f2
	bft @emit_label_26087
	li r5,$0
	j @emit_label_26088
@emit_label_26087:
	li r5,$1
@emit_label_26088:
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@954:5;954:22 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_24208
@cfg_label_24208:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@954:5;954:22
	j @cfg_label_24207
@cfg_label_24207:
	lw r5,r2,$-100
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_24204
	j @cfg_label_24203
	j @cfg_label_24205
	j @cfg_label_24206
@cfg_label_24206:
@cfg_label_24204:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@981:2;994:48
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
@cfg_label_24205:
@cfg_label_24203:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@955:17;955:18
	j @cfg_label_24202
@cfg_label_24202:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@955:31;955:32
	j @cfg_label_24201
@cfg_label_24201:
	lw r6,r2,$-92
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@955:23;955:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@955:23;955:29 ../cpuex2017/raytracer/min-rt.ml@955:31;955:32
	j @cfg_label_24200
@cfg_label_24200:
	li r5,$3
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@955:45;955:46
	j @cfg_label_24199
@cfg_label_24199:
	lw r6,r2,$-88
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@955:37;955:47 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@955:37;955:43 ../cpuex2017/raytracer/min-rt.ml@955:45;955:46
	j @cfg_label_24198
@cfg_label_24198:
	fld f1,r2,$-84
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@955:23;955:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@955:23;955:33 ../cpuex2017/raytracer/min-rt.ml@955:37;955:47
	j @cfg_label_24197
@cfg_label_24197:
	lw r7,r2,$-72
	lw r6,r2,$-76
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@955:4;955:47 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@955:4;955:15 ../cpuex2017/raytracer/min-rt.ml@955:17;955:18 ../cpuex2017/raytracer/min-rt.ml@955:23;955:47
	j @cfg_label_24196
@cfg_label_24196:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@956:4;956:5
	j @cfg_label_24195
@cfg_label_24195:
	lw r5,r2,$-64
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@981:2;994:48 ::<= ../cpuex2017/raytracer/min-rt.ml@956:4;956:5
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
@a_8873setup_rect_table:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$348
	li r5,$6
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28
	j @cfg_label_24194
	li r5,$6
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28
	j @cfg_label_24194
@cfg_label_24194:
	fmovi f1,$0.000000
	fst f1,r2,$-340
	j @cfg_label_24193
@cfg_label_24193:
	lw r6,r2,$-340
	lw r5,r2,$-344
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26090
@emit_label_26089:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26089
@emit_label_26090:
	mov r5,r7
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1003:14;1003:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@1003:27;1003:28 ../cpuex2017/raytracer/min-rt.ml@1003:29;1003:32
	j @cfg_label_24192
@cfg_label_24192:
	li r5,$0
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@1005:18;1005:19
	j @cfg_label_24191
@cfg_label_24191:
	lw r6,r2,$-336
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@1005:13;1005:20 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1005:13;1005:16 ../cpuex2017/raytracer/min-rt.ml@1005:18;1005:19
	j @cfg_label_24190
@cfg_label_24190:
	fmovi f1,$0.000000
	fst f1,r2,$-328
	j @cfg_label_24189
@cfg_label_24189:
	fld f1,r2,$-332
	fld f2,r2,$-328
	feq f1,f2
	bft @emit_label_26091
	li r5,$0
	j @emit_label_26092
@emit_label_26091:
	li r5,$1
@emit_label_26092:
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@1005:5;1005:20 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24188
@cfg_label_24188:
	li r5,$1
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@1005:5;1005:20
	j @cfg_label_24187
@cfg_label_24187:
	lw r5,r2,$-324
	lw r6,r2,$-320
	bne r5,r6,@cfg_label_24096
	j @cfg_label_24095
	j @cfg_label_24097
	j @cfg_label_24098
@cfg_label_24098:
@cfg_label_24096:
	li r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@1009:11;1009:12
	j @cfg_label_24094
@cfg_label_24094:
	li r5,$0
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@1009:60;1009:61
	j @cfg_label_24093
@cfg_label_24093:
	lw r6,r2,$-308
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@1009:55;1009:62 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1009:55;1009:58 ../cpuex2017/raytracer/min-rt.ml@1009:60;1009:61
	j @cfg_label_24092
@cfg_label_24092:
	fmovi f1,$0.000000
	fst f1,r2,$-300
	j @cfg_label_24091
@cfg_label_24091:
	fld f1,r2,$-304
	fld f2,r2,$-300
	flt f1,f2
	bft @emit_label_26093
	li r5,$0
	j @emit_label_26094
@emit_label_26093:
	li r5,$1
@emit_label_26094:
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@1009:48;1009:62 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_24090
@cfg_label_24090:
	li r5,$1
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	j @cfg_label_24089
@cfg_label_24089:
	lw r5,r2,$36
	lw r6,r2,$-296
	bne r5,r6,@cfg_label_24067
	j @cfg_label_24066
	j @cfg_label_24068
	j @cfg_label_24069
@cfg_label_24068:
@cfg_label_24066:
	lw r5,r2,$-292
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@1009:28;1009:63 ::= Onot ../cpuex2017/raytracer/min-rt.ml@16:44;16:45
	j @cfg_label_24087
@cfg_label_24069:
@cfg_label_24067:
	lw r5,r2,$-292
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@1009:28;1009:63 ::<= ../cpuex2017/raytracer/min-rt.ml@16:51;16:52
	j @cfg_label_24088
@cfg_label_24088:
@cfg_label_24087:
	li r5,$0
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24086
@cfg_label_24086:
	lw r6,r2,$-288
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@1009:66;1009:77 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24085
@cfg_label_24085:
	li r5,$1
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	j @cfg_label_24084
@cfg_label_24084:
	lw r5,r2,$-284
	lw r6,r2,$-280
	bne r5,r6,@cfg_label_24072
	j @cfg_label_24071
	j @cfg_label_24073
	j @cfg_label_24074
@cfg_label_24073:
@cfg_label_24071:
	lw r5,r2,$-272
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78 ::<= ../cpuex2017/raytracer/min-rt.ml@31:15;31:16
	j @cfg_label_24082
@cfg_label_24074:
@cfg_label_24072:
	fmovi f1,$-1.000000
	fst f1,r2,$-276
	j @cfg_label_24070
@cfg_label_24070:
	fld f1,r2,$-276
	fld f2,r2,$-272
	fmul f1,f1,f2
	fst f1,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24083
@cfg_label_24083:
@cfg_label_24082:
	lw r7,r2,$-264
	lw r6,r2,$-268
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1009:4;1009:78 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1009:4;1009:9 ../cpuex2017/raytracer/min-rt.ml@1009:11;1009:12 ../cpuex2017/raytracer/min-rt.ml@1009:17;1009:78
	j @cfg_label_24081
@cfg_label_24081:
	li r5,$1
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@1011:11;1011:12
	j @cfg_label_24080
@cfg_label_24080:
	fmovi f1,$1.000000
	fst f1,r2,$-256
	j @cfg_label_24079
@cfg_label_24079:
	li r5,$0
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@1011:29;1011:30
	j @cfg_label_24078
@cfg_label_24078:
	lw r6,r2,$-260
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1011:24;1011:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1011:24;1011:27 ../cpuex2017/raytracer/min-rt.ml@1011:29;1011:30
	j @cfg_label_24077
@cfg_label_24077:
	fld f1,r2,$-256
	fld f2,r2,$-252
	fdiv f1,f1,f2
	fst f1,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:31 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:20 ../cpuex2017/raytracer/min-rt.ml@1011:24;1011:31
	j @cfg_label_24076
@cfg_label_24076:
	lw r7,r2,$-244
	lw r6,r2,$-248
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@1011:4;1011:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1011:4;1011:9 ../cpuex2017/raytracer/min-rt.ml@1011:11;1011:12 ../cpuex2017/raytracer/min-rt.ml@1011:17;1011:31
	j @cfg_label_24075
@cfg_label_24075:
	lw r5,r2,$-236
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1005:2;1012:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1011:4;1011:31
	j @cfg_label_24186
@cfg_label_24097:
@cfg_label_24095:
	li r5,$1
	sw r5,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@1006:11;1006:12
	j @cfg_label_24065
@cfg_label_24065:
	fmovi f1,$0.000000
	fst f1,r2,$-312
	j @cfg_label_24064
@cfg_label_24064:
	lw r7,r2,$-312
	lw r6,r2,$-316
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1005:2;1012:3 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1006:4;1006:9 ../cpuex2017/raytracer/min-rt.ml@1006:11;1006:12 ../cpuex2017/raytracer/min-rt.ml@1006:17;1006:20
	j @cfg_label_24185
@cfg_label_24186:
@cfg_label_24185:
	li r5,$1
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@1013:18;1013:19
	j @cfg_label_24184
@cfg_label_24184:
	lw r6,r2,$-232
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@1013:13;1013:20 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1013:13;1013:16 ../cpuex2017/raytracer/min-rt.ml@1013:18;1013:19
	j @cfg_label_24183
@cfg_label_24183:
	fmovi f1,$0.000000
	fst f1,r2,$-224
	j @cfg_label_24182
@cfg_label_24182:
	fld f1,r2,$-228
	fld f2,r2,$-224
	feq f1,f2
	bft @emit_label_26095
	li r5,$0
	j @emit_label_26096
@emit_label_26095:
	li r5,$1
@emit_label_26096:
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1013:5;1013:20 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24181
@cfg_label_24181:
	li r5,$1
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1013:5;1013:20
	j @cfg_label_24180
@cfg_label_24180:
	lw r5,r2,$-220
	lw r6,r2,$-216
	bne r5,r6,@cfg_label_24131
	j @cfg_label_24130
	j @cfg_label_24132
	j @cfg_label_24133
@cfg_label_24133:
@cfg_label_24131:
	li r5,$2
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1016:11;1016:12
	j @cfg_label_24129
@cfg_label_24129:
	li r5,$1
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1016:60;1016:61
	j @cfg_label_24128
@cfg_label_24128:
	lw r6,r2,$-204
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@1016:55;1016:62 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1016:55;1016:58 ../cpuex2017/raytracer/min-rt.ml@1016:60;1016:61
	j @cfg_label_24127
@cfg_label_24127:
	fmovi f1,$0.000000
	fst f1,r2,$-196
	j @cfg_label_24126
@cfg_label_24126:
	fld f1,r2,$-200
	fld f2,r2,$-196
	flt f1,f2
	bft @emit_label_26097
	li r5,$0
	j @emit_label_26098
@emit_label_26097:
	li r5,$1
@emit_label_26098:
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1016:48;1016:62 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_24125
@cfg_label_24125:
	li r5,$1
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	j @cfg_label_24124
@cfg_label_24124:
	lw r5,r2,$36
	lw r6,r2,$-192
	bne r5,r6,@cfg_label_24102
	j @cfg_label_24101
	j @cfg_label_24103
	j @cfg_label_24104
@cfg_label_24103:
@cfg_label_24101:
	lw r5,r2,$-188
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1016:28;1016:63 ::= Onot ../cpuex2017/raytracer/min-rt.ml@16:44;16:45
	j @cfg_label_24122
@cfg_label_24104:
@cfg_label_24102:
	lw r5,r2,$-188
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1016:28;1016:63 ::<= ../cpuex2017/raytracer/min-rt.ml@16:51;16:52
	j @cfg_label_24123
@cfg_label_24123:
@cfg_label_24122:
	li r5,$1
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24121
@cfg_label_24121:
	lw r6,r2,$-184
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1016:66;1016:77 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24120
@cfg_label_24120:
	li r5,$1
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	j @cfg_label_24119
@cfg_label_24119:
	lw r5,r2,$-180
	lw r6,r2,$-176
	bne r5,r6,@cfg_label_24107
	j @cfg_label_24106
	j @cfg_label_24108
	j @cfg_label_24109
@cfg_label_24108:
@cfg_label_24106:
	lw r5,r2,$-168
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78 ::<= ../cpuex2017/raytracer/min-rt.ml@31:15;31:16
	j @cfg_label_24117
@cfg_label_24109:
@cfg_label_24107:
	fmovi f1,$-1.000000
	fst f1,r2,$-172
	j @cfg_label_24105
@cfg_label_24105:
	fld f1,r2,$-172
	fld f2,r2,$-168
	fmul f1,f1,f2
	fst f1,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24118
@cfg_label_24118:
@cfg_label_24117:
	lw r7,r2,$-160
	lw r6,r2,$-164
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1016:4;1016:78 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1016:4;1016:9 ../cpuex2017/raytracer/min-rt.ml@1016:11;1016:12 ../cpuex2017/raytracer/min-rt.ml@1016:17;1016:78
	j @cfg_label_24116
@cfg_label_24116:
	li r5,$3
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1017:11;1017:12
	j @cfg_label_24115
@cfg_label_24115:
	fmovi f1,$1.000000
	fst f1,r2,$-152
	j @cfg_label_24114
@cfg_label_24114:
	li r5,$1
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1017:29;1017:30
	j @cfg_label_24113
@cfg_label_24113:
	lw r6,r2,$-156
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1017:24;1017:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1017:24;1017:27 ../cpuex2017/raytracer/min-rt.ml@1017:29;1017:30
	j @cfg_label_24112
@cfg_label_24112:
	fld f1,r2,$-152
	fld f2,r2,$-148
	fdiv f1,f1,f2
	fst f1,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:31 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:20 ../cpuex2017/raytracer/min-rt.ml@1017:24;1017:31
	j @cfg_label_24111
@cfg_label_24111:
	lw r7,r2,$-140
	lw r6,r2,$-144
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1017:4;1017:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1017:4;1017:9 ../cpuex2017/raytracer/min-rt.ml@1017:11;1017:12 ../cpuex2017/raytracer/min-rt.ml@1017:17;1017:31
	j @cfg_label_24110
@cfg_label_24110:
	lw r5,r2,$-132
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1013:2;1018:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1017:4;1017:31
	j @cfg_label_24179
@cfg_label_24132:
@cfg_label_24130:
	li r5,$3
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1014:11;1014:12
	j @cfg_label_24100
@cfg_label_24100:
	fmovi f1,$0.000000
	fst f1,r2,$-208
	j @cfg_label_24099
@cfg_label_24099:
	lw r7,r2,$-208
	lw r6,r2,$-212
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1013:2;1018:3 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1014:4;1014:9 ../cpuex2017/raytracer/min-rt.ml@1014:11;1014:12 ../cpuex2017/raytracer/min-rt.ml@1014:17;1014:20
	j @cfg_label_24178
@cfg_label_24179:
@cfg_label_24178:
	li r5,$2
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1019:18;1019:19
	j @cfg_label_24177
@cfg_label_24177:
	lw r6,r2,$-128
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1019:13;1019:20 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1019:13;1019:16 ../cpuex2017/raytracer/min-rt.ml@1019:18;1019:19
	j @cfg_label_24176
@cfg_label_24176:
	fmovi f1,$0.000000
	fst f1,r2,$-120
	j @cfg_label_24175
@cfg_label_24175:
	fld f1,r2,$-124
	fld f2,r2,$-120
	feq f1,f2
	bft @emit_label_26099
	li r5,$0
	j @emit_label_26100
@emit_label_26099:
	li r5,$1
@emit_label_26100:
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1019:5;1019:20 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_24174
@cfg_label_24174:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1019:5;1019:20
	j @cfg_label_24173
@cfg_label_24173:
	lw r5,r2,$-116
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_24166
	j @cfg_label_24165
	j @cfg_label_24167
	j @cfg_label_24168
@cfg_label_24168:
@cfg_label_24166:
	li r5,$4
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1022:11;1022:12
	j @cfg_label_24164
@cfg_label_24164:
	li r5,$2
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1022:60;1022:61
	j @cfg_label_24163
@cfg_label_24163:
	lw r6,r2,$-100
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1022:55;1022:62 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1022:55;1022:58 ../cpuex2017/raytracer/min-rt.ml@1022:60;1022:61
	j @cfg_label_24162
@cfg_label_24162:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_24161
@cfg_label_24161:
	fld f1,r2,$-96
	fld f2,r2,$-92
	flt f1,f2
	bft @emit_label_26101
	li r5,$0
	j @emit_label_26102
@emit_label_26101:
	li r5,$1
@emit_label_26102:
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1022:48;1022:62 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_24160
@cfg_label_24160:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	j @cfg_label_24159
@cfg_label_24159:
	lw r5,r2,$36
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_24137
	j @cfg_label_24136
	j @cfg_label_24138
	j @cfg_label_24139
@cfg_label_24138:
@cfg_label_24136:
	lw r5,r2,$-84
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1022:28;1022:63 ::= Onot ../cpuex2017/raytracer/min-rt.ml@16:44;16:45
	j @cfg_label_24157
@cfg_label_24139:
@cfg_label_24137:
	lw r5,r2,$-84
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1022:28;1022:63 ::<= ../cpuex2017/raytracer/min-rt.ml@16:51;16:52
	j @cfg_label_24158
@cfg_label_24158:
@cfg_label_24157:
	li r5,$2
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24156
@cfg_label_24156:
	lw r6,r2,$-80
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1022:66;1022:77 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24155
@cfg_label_24155:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@31:5;31:9
	j @cfg_label_24154
@cfg_label_24154:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_24142
	j @cfg_label_24141
	j @cfg_label_24143
	j @cfg_label_24144
@cfg_label_24143:
@cfg_label_24141:
	lw r5,r2,$-64
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78 ::<= ../cpuex2017/raytracer/min-rt.ml@31:15;31:16
	j @cfg_label_24152
@cfg_label_24144:
@cfg_label_24142:
	fmovi f1,$-1.000000
	fst f1,r2,$-68
	j @cfg_label_24140
@cfg_label_24140:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24153
@cfg_label_24153:
@cfg_label_24152:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1022:4;1022:78 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1022:4;1022:9 ../cpuex2017/raytracer/min-rt.ml@1022:11;1022:12 ../cpuex2017/raytracer/min-rt.ml@1022:17;1022:78
	j @cfg_label_24151
@cfg_label_24151:
	li r5,$5
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1023:11;1023:12
	j @cfg_label_24150
@cfg_label_24150:
	fmovi f1,$1.000000
	fst f1,r2,$-48
	j @cfg_label_24149
@cfg_label_24149:
	li r5,$2
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1023:29;1023:30
	j @cfg_label_24148
@cfg_label_24148:
	lw r6,r2,$-52
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1023:24;1023:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1023:24;1023:27 ../cpuex2017/raytracer/min-rt.ml@1023:29;1023:30
	j @cfg_label_24147
@cfg_label_24147:
	fld f1,r2,$-48
	fld f2,r2,$-44
	fdiv f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:31 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:20 ../cpuex2017/raytracer/min-rt.ml@1023:24;1023:31
	j @cfg_label_24146
@cfg_label_24146:
	lw r7,r2,$-36
	lw r6,r2,$-40
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1023:4;1023:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1023:4;1023:9 ../cpuex2017/raytracer/min-rt.ml@1023:11;1023:12 ../cpuex2017/raytracer/min-rt.ml@1023:17;1023:31
	j @cfg_label_24145
@cfg_label_24145:
	lw r5,r2,$-28
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1019:2;1024:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1023:4;1023:31
	j @cfg_label_24172
@cfg_label_24167:
@cfg_label_24165:
	li r5,$5
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1020:11;1020:12
	j @cfg_label_24135
@cfg_label_24135:
	fmovi f1,$0.000000
	fst f1,r2,$-104
	j @cfg_label_24134
@cfg_label_24134:
	lw r7,r2,$-104
	lw r6,r2,$-108
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1019:2;1024:3 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1020:4;1020:9 ../cpuex2017/raytracer/min-rt.ml@1020:11;1020:12 ../cpuex2017/raytracer/min-rt.ml@1020:17;1020:20
	j @cfg_label_24171
@cfg_label_24172:
@cfg_label_24171:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1019:2;1025:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1025:2;1025:7
	j @cfg_label_24170
@cfg_label_24170:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1013:2;1025:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1019:2;1025:7
	j @cfg_label_24169
@cfg_label_24169:
	lw r5,r2,$-4
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@1003:2;1025:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1013:2;1025:7
	lw r5,r2,$-348
	addi r1,r1,$348
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-348
	addi r1,r1,$348
	pop r2
	pop r6
	jr r6
@a_8876setup_surface_table:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$216
	li r5,$4
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28
	j @cfg_label_24063
	li r5,$4
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28
	j @cfg_label_24063
@cfg_label_24063:
	fmovi f1,$0.000000
	fst f1,r2,$-208
	j @cfg_label_24062
@cfg_label_24062:
	lw r6,r2,$-208
	lw r5,r2,$-212
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26104
@emit_label_26103:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26103
@emit_label_26104:
	mov r5,r7
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1030:14;1030:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@1030:27;1030:28 ../cpuex2017/raytracer/min-rt.ml@1030:29;1030:32
	j @cfg_label_24061
@cfg_label_24061:
	li r5,$0
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1032:9;1032:10
	j @cfg_label_24060
@cfg_label_24060:
	lw r6,r2,$-204
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:11 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:7 ../cpuex2017/raytracer/min-rt.ml@1032:9;1032:10
	j @cfg_label_24059
@cfg_label_24059:
	li r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24058
@cfg_label_24058:
	lw r6,r2,$-200
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24057
@cfg_label_24057:
	fld f1,r2,$-196
	fld f2,r2,$-192
	fmul f1,f1,f2
	fst f1,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:11 ../cpuex2017/raytracer/min-rt.ml@1032:15;1032:26
	j @cfg_label_24056
@cfg_label_24056:
	li r5,$1
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1032:35;1032:36
	j @cfg_label_24055
@cfg_label_24055:
	lw r6,r2,$-188
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:33 ../cpuex2017/raytracer/min-rt.ml@1032:35;1032:36
	j @cfg_label_24054
@cfg_label_24054:
	li r5,$1
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24053
@cfg_label_24053:
	lw r6,r2,$-184
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24052
@cfg_label_24052:
	fld f1,r2,$-180
	fld f2,r2,$-176
	fmul f1,f1,f2
	fst f1,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:52 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:37 ../cpuex2017/raytracer/min-rt.ml@1032:41;1032:52
	j @cfg_label_24051
@cfg_label_24051:
	fld f1,r2,$-172
	fld f2,r2,$-168
	fadd f1,f1,f2
	fst f1,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:52 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:26 ../cpuex2017/raytracer/min-rt.ml@1032:30;1032:52
	j @cfg_label_24050
@cfg_label_24050:
	li r5,$2
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1032:61;1032:62
	j @cfg_label_24049
@cfg_label_24049:
	lw r6,r2,$-164
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:63 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:59 ../cpuex2017/raytracer/min-rt.ml@1032:61;1032:62
	j @cfg_label_24048
@cfg_label_24048:
	li r5,$2
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24047
@cfg_label_24047:
	lw r6,r2,$-160
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24046
@cfg_label_24046:
	fld f1,r2,$-156
	fld f2,r2,$-152
	fmul f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:78 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:63 ../cpuex2017/raytracer/min-rt.ml@1032:67;1032:78
	j @cfg_label_24045
@cfg_label_24045:
	fld f1,r2,$-148
	fld f2,r2,$-144
	fadd f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:78 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1032:4;1032:52 ../cpuex2017/raytracer/min-rt.ml@1032:56;1032:78
	j @cfg_label_24044
@cfg_label_24044:
	fmovi f1,$0.000000
	fst f1,r2,$-140
	j @cfg_label_24043
@cfg_label_24043:
	fld f1,r2,$-60
	fld f2,r2,$-140
	flt f2,f1
	bft @emit_label_26105
	li r5,$0
	j @emit_label_26106
@emit_label_26105:
	li r5,$1
@emit_label_26106:
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1034:5;1034:13 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_24042
@cfg_label_24042:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1034:5;1034:13
	j @cfg_label_24041
@cfg_label_24041:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_24036
	j @cfg_label_24035
	j @cfg_label_24037
	j @cfg_label_24038
@cfg_label_24038:
@cfg_label_24036:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1042:11;1042:12
	j @cfg_label_24034
@cfg_label_24034:
	fmovi f1,$0.000000
	fst f1,r2,$-12
	j @cfg_label_24033
@cfg_label_24033:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1034:2;1042:20 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1042:4;1042:9 ../cpuex2017/raytracer/min-rt.ml@1042:11;1042:12 ../cpuex2017/raytracer/min-rt.ml@1042:17;1042:20
	j @cfg_label_24040
@cfg_label_24037:
@cfg_label_24035:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1036:11;1036:12
	j @cfg_label_24032
@cfg_label_24032:
	fmovi f1,$-1.000000
	fst f1,r2,$-128
	j @cfg_label_24031
@cfg_label_24031:
	fld f1,r2,$-128
	fld f2,r2,$-60
	fdiv f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1036:17;1036:26 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1036:18;1036:21 ../cpuex2017/raytracer/min-rt.ml@1036:25;1036:26
	j @cfg_label_24030
@cfg_label_24030:
	lw r7,r2,$-120
	lw r6,r2,$-124
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1036:4;1036:26 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1036:4;1036:9 ../cpuex2017/raytracer/min-rt.ml@1036:11;1036:12 ../cpuex2017/raytracer/min-rt.ml@1036:17;1036:26
	j @cfg_label_24029
@cfg_label_24029:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1038:11;1038:12
	j @cfg_label_24028
@cfg_label_24028:
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24027
@cfg_label_24027:
	lw r6,r2,$-116
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1038:23;1038:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_24026
@cfg_label_24026:
	fld f1,r2,$-112
	fld f2,r2,$-60
	fdiv f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1038:23;1038:39 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1038:23;1038:34 ../cpuex2017/raytracer/min-rt.ml@1038:38;1038:39
	j @cfg_label_24025
@cfg_label_24025:
	fmovi f1,$-1.000000
	fst f1,r2,$-108
	j @cfg_label_24024
@cfg_label_24024:
	fld f1,r2,$-108
	fld f2,r2,$-104
	fmul f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1038:17;1038:40 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24023
@cfg_label_24023:
	lw r7,r2,$-96
	lw r6,r2,$-100
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1038:4;1038:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1038:4;1038:9 ../cpuex2017/raytracer/min-rt.ml@1038:11;1038:12 ../cpuex2017/raytracer/min-rt.ml@1038:17;1038:40
	j @cfg_label_24022
@cfg_label_24022:
	li r5,$2
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1039:11;1039:12
	j @cfg_label_24021
@cfg_label_24021:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24020
@cfg_label_24020:
	lw r6,r2,$-92
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1039:23;1039:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_24019
@cfg_label_24019:
	fld f1,r2,$-88
	fld f2,r2,$-60
	fdiv f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1039:23;1039:39 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1039:23;1039:34 ../cpuex2017/raytracer/min-rt.ml@1039:38;1039:39
	j @cfg_label_24018
@cfg_label_24018:
	fmovi f1,$-1.000000
	fst f1,r2,$-84
	j @cfg_label_24017
@cfg_label_24017:
	fld f1,r2,$-84
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1039:17;1039:40 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24016
@cfg_label_24016:
	lw r7,r2,$-72
	lw r6,r2,$-76
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1039:4;1039:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1039:4;1039:9 ../cpuex2017/raytracer/min-rt.ml@1039:11;1039:12 ../cpuex2017/raytracer/min-rt.ml@1039:17;1039:40
	j @cfg_label_24015
@cfg_label_24015:
	li r5,$3
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1040:11;1040:12
	j @cfg_label_24014
@cfg_label_24014:
	li r5,$2
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24013
@cfg_label_24013:
	lw r6,r2,$-68
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1040:23;1040:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_24012
@cfg_label_24012:
	fld f1,r2,$-64
	fld f2,r2,$-60
	fdiv f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1040:23;1040:39 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1040:23;1040:34 ../cpuex2017/raytracer/min-rt.ml@1040:38;1040:39
	j @cfg_label_24011
@cfg_label_24011:
	fmovi f1,$-1.000000
	fst f1,r2,$-56
	j @cfg_label_24010
@cfg_label_24010:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1040:17;1040:40 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_24009
@cfg_label_24009:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r2,$-4
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1040:4;1040:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1040:4;1040:9 ../cpuex2017/raytracer/min-rt.ml@1040:11;1040:12 ../cpuex2017/raytracer/min-rt.ml@1040:17;1040:40
	j @cfg_label_24008
@cfg_label_24008:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1039:4;1040:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1040:4;1040:40
	j @cfg_label_24007
@cfg_label_24007:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1038:4;1040:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1039:4;1040:40
	j @cfg_label_24006
@cfg_label_24006:
	lw r5,r2,$-20
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1034:2;1042:20 ::<= ../cpuex2017/raytracer/min-rt.ml@1038:4;1040:40
	j @cfg_label_24039
@cfg_label_24040:
@cfg_label_24039:
	lw r5,r2,$-4
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1030:2;1043:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1043:2;1043:7
	lw r5,r2,$-216
	addi r1,r1,$216
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-216
	addi r1,r1,$216
	pop r2
	pop r6
	jr r6
@a_8879setup_second_table:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$416
	li r5,$5
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28
	j @cfg_label_24005
	li r5,$5
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28
	j @cfg_label_24005
@cfg_label_24005:
	fmovi f1,$0.000000
	fst f1,r2,$-408
	j @cfg_label_24004
@cfg_label_24004:
	lw r6,r2,$-408
	lw r5,r2,$-412
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26108
@emit_label_26107:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26107
@emit_label_26108:
	mov r5,r7
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1049:14;1049:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@1049:27;1049:28 ../cpuex2017/raytracer/min-rt.ml@1049:29;1049:32
	j @cfg_label_24003
@cfg_label_24003:
	li r5,$0
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@1051:26;1051:27
	j @cfg_label_24002
@cfg_label_24002:
	lw r6,r2,$-404
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1051:23;1051:24 ../cpuex2017/raytracer/min-rt.ml@1051:26;1051:27
	j @cfg_label_24001
@cfg_label_24001:
	li r5,$1
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@1051:32;1051:33
	j @cfg_label_24000
@cfg_label_24000:
	lw r6,r2,$-400
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1051:29;1051:30 ../cpuex2017/raytracer/min-rt.ml@1051:32;1051:33
	j @cfg_label_23999
@cfg_label_23999:
	li r5,$2
	sw r5,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@1051:38;1051:39
	j @cfg_label_23998
@cfg_label_23998:
	lw r6,r2,$-396
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1051:35;1051:36 ../cpuex2017/raytracer/min-rt.ml@1051:38;1051:39
	j @cfg_label_23997
@cfg_label_23997:
	push r4
	lw r5,r2,$-384
	push r5
	lw r5,r2,$-388
	push r5
	lw r5,r2,$-392
	push r5
	lw r5,r2,$52
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	jal @a_8810quadratic
	sw r5,r2,$-36
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:40 ../cpuex2017/raytracer/min-rt.ml@1051:11;1051:20
	j @cfg_label_23996
@cfg_label_23996:
	li r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@1052:20;1052:21
	j @cfg_label_23995
@cfg_label_23995:
	lw r6,r2,$-380
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@1052:17;1052:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1052:17;1052:18 ../cpuex2017/raytracer/min-rt.ml@1052:20;1052:21
	j @cfg_label_23994
@cfg_label_23994:
	li r5,$0
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_23993
@cfg_label_23993:
	lw r6,r2,$-376
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@1052:26;1052:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_23992
@cfg_label_23992:
	fld f1,r2,$-372
	fld f2,r2,$-368
	fmul f1,f1,f2
	fst f1,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@1052:17;1052:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1052:17;1052:22 ../cpuex2017/raytracer/min-rt.ml@1052:26;1052:37
	j @cfg_label_23991
@cfg_label_23991:
	fmovi f1,$-1.000000
	fst f1,r2,$-364
	j @cfg_label_23990
@cfg_label_23990:
	fld f1,r2,$-364
	fld f2,r2,$-360
	fmul f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1052:11;1052:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_23989
@cfg_label_23989:
	li r5,$1
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@1053:20;1053:21
	j @cfg_label_23988
@cfg_label_23988:
	lw r6,r2,$-356
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@1053:17;1053:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1053:17;1053:18 ../cpuex2017/raytracer/min-rt.ml@1053:20;1053:21
	j @cfg_label_23987
@cfg_label_23987:
	li r5,$1
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_23986
@cfg_label_23986:
	lw r6,r2,$-352
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@1053:26;1053:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_23985
@cfg_label_23985:
	fld f1,r2,$-348
	fld f2,r2,$-344
	fmul f1,f1,f2
	fst f1,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@1053:17;1053:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1053:17;1053:22 ../cpuex2017/raytracer/min-rt.ml@1053:26;1053:37
	j @cfg_label_23984
@cfg_label_23984:
	fmovi f1,$-1.000000
	fst f1,r2,$-340
	j @cfg_label_23983
@cfg_label_23983:
	fld f1,r2,$-340
	fld f2,r2,$-336
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1053:11;1053:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_23982
@cfg_label_23982:
	li r5,$2
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@1054:20;1054:21
	j @cfg_label_23981
@cfg_label_23981:
	lw r6,r2,$-332
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@1054:17;1054:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1054:17;1054:18 ../cpuex2017/raytracer/min-rt.ml@1054:20;1054:21
	j @cfg_label_23980
@cfg_label_23980:
	li r5,$2
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_23979
@cfg_label_23979:
	lw r6,r2,$-328
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@1054:26;1054:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_23978
@cfg_label_23978:
	fld f1,r2,$-324
	fld f2,r2,$-320
	fmul f1,f1,f2
	fst f1,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@1054:17;1054:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1054:17;1054:22 ../cpuex2017/raytracer/min-rt.ml@1054:26;1054:37
	j @cfg_label_23977
@cfg_label_23977:
	fmovi f1,$-1.000000
	fst f1,r2,$-316
	j @cfg_label_23976
@cfg_label_23976:
	fld f1,r2,$-316
	fld f2,r2,$-312
	fmul f1,f1,f2
	fst f1,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1054:11;1054:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_23975
@cfg_label_23975:
	li r5,$0
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@1056:9;1056:10
	j @cfg_label_23974
@cfg_label_23974:
	lw r7,r2,$-36
	lw r6,r2,$-308
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1056:2;1056:17 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1056:2;1056:7 ../cpuex2017/raytracer/min-rt.ml@1056:9;1056:10 ../cpuex2017/raytracer/min-rt.ml@1056:15;1056:17
	j @cfg_label_23973
@cfg_label_23973:
	li r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@1060:18;1060:19
	j @cfg_label_23972
@cfg_label_23972:
	lw r6,r2,$-304
	lw r5,r2,$24
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@1060:5;1060:19 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1060:5;1060:14 ../cpuex2017/raytracer/min-rt.ml@1060:18;1060:19
	j @cfg_label_23971
@cfg_label_23971:
	li r5,$1
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@1060:5;1060:19
	j @cfg_label_23970
@cfg_label_23970:
	lw r5,r2,$-300
	lw r6,r2,$-296
	bne r5,r6,@cfg_label_23950
	j @cfg_label_23949
	j @cfg_label_23951
	j @cfg_label_23952
@cfg_label_23952:
@cfg_label_23950:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1065:11;1065:12
	j @cfg_label_23948
@cfg_label_23948:
	lw r7,r2,$-92
	lw r6,r2,$-96
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1065:4;1065:19 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1065:4;1065:9 ../cpuex2017/raytracer/min-rt.ml@1065:11;1065:12 ../cpuex2017/raytracer/min-rt.ml@1065:17;1065:19
	j @cfg_label_23947
@cfg_label_23947:
	li r5,$2
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1066:11;1066:12
	j @cfg_label_23946
@cfg_label_23946:
	lw r7,r2,$-84
	lw r6,r2,$-88
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1066:4;1066:19 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1066:4;1066:9 ../cpuex2017/raytracer/min-rt.ml@1066:11;1066:12 ../cpuex2017/raytracer/min-rt.ml@1066:17;1066:19
	j @cfg_label_23945
@cfg_label_23945:
	li r5,$3
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1067:11;1067:12
	j @cfg_label_23944
@cfg_label_23944:
	lw r7,r2,$-76
	lw r6,r2,$-80
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1067:4;1067:19 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1067:4;1067:9 ../cpuex2017/raytracer/min-rt.ml@1067:11;1067:12 ../cpuex2017/raytracer/min-rt.ml@1067:17;1067:19
	j @cfg_label_23943
@cfg_label_23943:
	lw r5,r2,$-68
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1066:4;1067:19 ::<= ../cpuex2017/raytracer/min-rt.ml@1067:4;1067:19
	j @cfg_label_23942
@cfg_label_23942:
	lw r5,r2,$-60
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1060:2;1068:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1066:4;1067:19
	j @cfg_label_23969
@cfg_label_23951:
@cfg_label_23949:
	li r5,$1
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1061:11;1061:12
	j @cfg_label_23941
@cfg_label_23941:
	li r5,$2
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@1061:33;1061:34
	j @cfg_label_23940
@cfg_label_23940:
	lw r6,r2,$-292
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:31 ../cpuex2017/raytracer/min-rt.ml@1061:33;1061:34
	j @cfg_label_23939
@cfg_label_23939:
	li r5,$1
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_23938
@cfg_label_23938:
	lw r6,r2,$-288
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@332:2;332:10 ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_23937
@cfg_label_23937:
	fld f1,r2,$-284
	fld f2,r2,$-280
	fmul f1,f1,f2
	fst f1,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:35 ../cpuex2017/raytracer/min-rt.ml@1061:39;1061:51
	j @cfg_label_23936
@cfg_label_23936:
	li r5,$1
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@1061:58;1061:59
	j @cfg_label_23935
@cfg_label_23935:
	lw r6,r2,$-276
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:60 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:56 ../cpuex2017/raytracer/min-rt.ml@1061:58;1061:59
	j @cfg_label_23934
@cfg_label_23934:
	li r5,$2
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_23933
@cfg_label_23933:
	lw r6,r2,$-272
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@342:2;342:10 ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_23932
@cfg_label_23932:
	fld f1,r2,$-268
	fld f2,r2,$-264
	fmul f1,f1,f2
	fst f1,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:76 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:60 ../cpuex2017/raytracer/min-rt.ml@1061:64;1061:76
	j @cfg_label_23931
@cfg_label_23931:
	fld f1,r2,$-260
	fld f2,r2,$-256
	fadd f1,f1,f2
	fst f1,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:76 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1061:30;1061:51 ../cpuex2017/raytracer/min-rt.ml@1061:55;1061:76
	j @cfg_label_23930
@cfg_label_23930:
	fmovi f1,$2.000000
	fst f1,r2,$-248
	j @cfg_label_23929
@cfg_label_23929:
	fld f1,r2,$-252
	fld f2,r2,$-248
	fdiv f1,f1,f2
	fst f1,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1061:23;1061:77 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_23928
@cfg_label_23928:
	fld f1,r2,$-92
	fld f2,r2,$-244
	fsub f1,f1,f2
	fst f1,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@1061:17;1061:77 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1061:17;1061:19 ../cpuex2017/raytracer/min-rt.ml@1061:23;1061:77
	j @cfg_label_23927
@cfg_label_23927:
	lw r7,r2,$-236
	lw r6,r2,$-240
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1061:4;1061:77 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1061:4;1061:9 ../cpuex2017/raytracer/min-rt.ml@1061:11;1061:12 ../cpuex2017/raytracer/min-rt.ml@1061:17;1061:77
	j @cfg_label_23926
@cfg_label_23926:
	li r5,$2
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1062:11;1062:12
	j @cfg_label_23925
@cfg_label_23925:
	li r5,$2
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@1062:33;1062:34
	j @cfg_label_23924
@cfg_label_23924:
	lw r6,r2,$-232
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:31 ../cpuex2017/raytracer/min-rt.ml@1062:33;1062:34
	j @cfg_label_23923
@cfg_label_23923:
	li r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_23922
@cfg_label_23922:
	lw r6,r2,$-228
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@322:2;322:10 ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_23921
@cfg_label_23921:
	fld f1,r2,$-224
	fld f2,r2,$-220
	fmul f1,f1,f2
	fst f1,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:35 ../cpuex2017/raytracer/min-rt.ml@1062:39;1062:51
	j @cfg_label_23920
@cfg_label_23920:
	li r5,$0
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1062:58;1062:59
	j @cfg_label_23919
@cfg_label_23919:
	lw r6,r2,$-216
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:60 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:56 ../cpuex2017/raytracer/min-rt.ml@1062:58;1062:59
	j @cfg_label_23918
@cfg_label_23918:
	li r5,$2
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_23917
@cfg_label_23917:
	lw r6,r2,$-212
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1062:64;1062:76 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@342:2;342:10 ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_23916
@cfg_label_23916:
	fld f1,r2,$-208
	fld f2,r2,$-204
	fmul f1,f1,f2
	fst f1,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:76 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:60 ../cpuex2017/raytracer/min-rt.ml@1062:64;1062:76
	j @cfg_label_23915
@cfg_label_23915:
	fld f1,r2,$-200
	fld f2,r2,$-196
	fadd f1,f1,f2
	fst f1,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:76 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1062:30;1062:51 ../cpuex2017/raytracer/min-rt.ml@1062:55;1062:76
	j @cfg_label_23914
@cfg_label_23914:
	fmovi f1,$2.000000
	fst f1,r2,$-188
	j @cfg_label_23913
@cfg_label_23913:
	fld f1,r2,$-192
	fld f2,r2,$-188
	fdiv f1,f1,f2
	fst f1,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1062:23;1062:77 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_23912
@cfg_label_23912:
	fld f1,r2,$-84
	fld f2,r2,$-184
	fsub f1,f1,f2
	fst f1,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1062:17;1062:77 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1062:17;1062:19 ../cpuex2017/raytracer/min-rt.ml@1062:23;1062:77
	j @cfg_label_23911
@cfg_label_23911:
	lw r7,r2,$-176
	lw r6,r2,$-180
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1062:4;1062:77 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1062:4;1062:9 ../cpuex2017/raytracer/min-rt.ml@1062:11;1062:12 ../cpuex2017/raytracer/min-rt.ml@1062:17;1062:77
	j @cfg_label_23910
@cfg_label_23910:
	li r5,$3
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1063:11;1063:12
	j @cfg_label_23909
@cfg_label_23909:
	li r5,$1
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1063:33;1063:34
	j @cfg_label_23908
@cfg_label_23908:
	lw r6,r2,$-172
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:31 ../cpuex2017/raytracer/min-rt.ml@1063:33;1063:34
	j @cfg_label_23907
@cfg_label_23907:
	li r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_23906
@cfg_label_23906:
	lw r6,r2,$-168
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1063:39;1063:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@322:2;322:10 ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_23905
@cfg_label_23905:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fmul f1,f1,f2
	fst f1,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:35 ../cpuex2017/raytracer/min-rt.ml@1063:39;1063:51
	j @cfg_label_23904
@cfg_label_23904:
	li r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1063:58;1063:59
	j @cfg_label_23903
@cfg_label_23903:
	lw r6,r2,$-156
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:60 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:56 ../cpuex2017/raytracer/min-rt.ml@1063:58;1063:59
	j @cfg_label_23902
@cfg_label_23902:
	li r5,$1
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_23901
@cfg_label_23901:
	lw r6,r2,$-152
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1063:64;1063:76 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@332:2;332:10 ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_23900
@cfg_label_23900:
	fld f1,r2,$-148
	fld f2,r2,$-144
	fmul f1,f1,f2
	fst f1,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:76 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:60 ../cpuex2017/raytracer/min-rt.ml@1063:64;1063:76
	j @cfg_label_23899
@cfg_label_23899:
	fld f1,r2,$-140
	fld f2,r2,$-136
	fadd f1,f1,f2
	fst f1,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:76 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1063:30;1063:51 ../cpuex2017/raytracer/min-rt.ml@1063:55;1063:76
	j @cfg_label_23898
@cfg_label_23898:
	fmovi f1,$2.000000
	fst f1,r2,$-128
	j @cfg_label_23897
@cfg_label_23897:
	fld f1,r2,$-132
	fld f2,r2,$-128
	fdiv f1,f1,f2
	fst f1,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1063:23;1063:77 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_23896
@cfg_label_23896:
	fld f1,r2,$-76
	fld f2,r2,$-124
	fsub f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1063:17;1063:77 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1063:17;1063:19 ../cpuex2017/raytracer/min-rt.ml@1063:23;1063:77
	j @cfg_label_23895
@cfg_label_23895:
	lw r7,r2,$-116
	lw r6,r2,$-120
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1063:4;1063:77 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1063:4;1063:9 ../cpuex2017/raytracer/min-rt.ml@1063:11;1063:12 ../cpuex2017/raytracer/min-rt.ml@1063:17;1063:77
	j @cfg_label_23894
@cfg_label_23894:
	lw r5,r2,$-108
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1062:4;1063:77 ::<= ../cpuex2017/raytracer/min-rt.ml@1063:4;1063:77
	j @cfg_label_23893
@cfg_label_23893:
	lw r5,r2,$-100
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1060:2;1068:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1062:4;1063:77
	j @cfg_label_23968
@cfg_label_23969:
@cfg_label_23968:
	fmovi f1,$0.000000
	fst f1,r2,$-56
	j @cfg_label_23967
@cfg_label_23967:
	fld f1,r2,$-36
	fld f2,r2,$-56
	feq f1,f2
	bft @emit_label_26109
	li r5,$0
	j @emit_label_26110
@emit_label_26109:
	li r5,$1
@emit_label_26110:
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1069:10;1069:20 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_23966
@cfg_label_23966:
	lw r5,r2,$-52
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1069:5;1069:21 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1069:10;1069:20
	j @cfg_label_23965
@cfg_label_23965:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1069:5;1069:21
	j @cfg_label_23964
@cfg_label_23964:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_23957
	j @cfg_label_23956
	j @cfg_label_23958
	j @cfg_label_23959
@cfg_label_23959:
@cfg_label_23957:
	sw r3,r2,$-24
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1069:2;1071:9
	j @cfg_label_23963
@cfg_label_23958:
@cfg_label_23956:
	li r5,$4
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1070:11;1070:12
	j @cfg_label_23955
@cfg_label_23955:
	fmovi f1,$1.000000
	fst f1,r2,$-40
	j @cfg_label_23954
@cfg_label_23954:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fdiv f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:26 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:20 ../cpuex2017/raytracer/min-rt.ml@1070:24;1070:26
	j @cfg_label_23953
@cfg_label_23953:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r2,$-20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1069:2;1071:9 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1070:4;1070:9 ../cpuex2017/raytracer/min-rt.ml@1070:11;1070:12 ../cpuex2017/raytracer/min-rt.ml@1070:17;1070:26
	j @cfg_label_23962
@cfg_label_23963:
@cfg_label_23962:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1069:2;1072:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1072:2;1072:7
	j @cfg_label_23961
@cfg_label_23961:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1060:2;1072:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1069:2;1072:7
	j @cfg_label_23960
@cfg_label_23960:
	lw r5,r2,$-4
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@1049:2;1072:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1060:2;1072:7
	lw r5,r2,$-416
	addi r1,r1,$416
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-416
	addi r1,r1,$416
	pop r2
	pop r6
	jr r6
@a_8882iter_setup_dirvec_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$100
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1078:14;1078:15
	j @cfg_label_23892
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1078:14;1078:15
	j @cfg_label_23892
@cfg_label_23892:
	lw r6,r2,$-96
	lw r5,r2,$16
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1078:5;1078:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1078:5;1078:10 ../cpuex2017/raytracer/min-rt.ml@1078:14;1078:15
	j @cfg_label_23891
@cfg_label_23891:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1078:5;1078:15
	j @cfg_label_23890
@cfg_label_23890:
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_23887
	j @cfg_label_23886
	j @cfg_label_23888
	j @cfg_label_23889
@cfg_label_23889:
@cfg_label_23887:
	sw r3,r2,$-100
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11
	lw r5,r2,$-100
	addi r1,r1,$100
	pop r2
	pop r6
	jr r6
@cfg_label_23888:
@cfg_label_23886:
	lw r6,r2,$16
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1079:12;1079:19 ../cpuex2017/raytracer/min-rt.ml@1079:21;1079:26
	j @cfg_label_23885
@cfg_label_23885:
	lw r5,r2,$-84
	lw r5,r5,$40
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23884
@cfg_label_23884:
	lw r5,r2,$-84
	lw r5,r5,$36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23883
@cfg_label_23883:
	lw r5,r2,$-84
	lw r5,r5,$32
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23882
@cfg_label_23882:
	lw r5,r2,$-84
	lw r5,r5,$28
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23881
@cfg_label_23881:
	lw r5,r2,$-84
	lw r5,r5,$24
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23880
@cfg_label_23880:
	lw r5,r2,$-84
	lw r5,r5,$20
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23879
@cfg_label_23879:
	lw r5,r2,$-84
	lw r5,r5,$16
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23878
@cfg_label_23878:
	lw r5,r2,$-84
	lw r5,r5,$12
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23877
@cfg_label_23877:
	lw r5,r2,$-84
	lw r5,r5,$8
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23876
@cfg_label_23876:
	lw r5,r2,$-84
	lw r5,r5,$4
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23875
@cfg_label_23875:
	lw r5,r2,$-84
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1082:25;1082:26
	j @cfg_label_23874
@cfg_label_23874:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1083:17;1083:18
	j @cfg_label_23873
@cfg_label_23873:
	lw r5,r2,$-60
	lw r6,r2,$-80
	bne r5,r6,@cfg_label_23864
	j @cfg_label_23863
	j @cfg_label_23865
	j @cfg_label_23866
@cfg_label_23866:
@cfg_label_23864:
	li r5,$2
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1085:22;1085:23
	j @cfg_label_23862
@cfg_label_23862:
	lw r5,r2,$-60
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_23859
	j @cfg_label_23858
	j @cfg_label_23860
	j @cfg_label_23861
@cfg_label_23861:
@cfg_label_23859:
	push r4
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8879setup_second_table
	sw r5,r2,$-20
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1088:24;1088:46 ../cpuex2017/raytracer/min-rt.ml@1088:24;1088:42
	j @cfg_label_23857
@cfg_label_23857:
	lw r7,r2,$-20
	lw r6,r2,$16
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1088:6;1088:12 ../cpuex2017/raytracer/min-rt.ml@1088:14;1088:19 ../cpuex2017/raytracer/min-rt.ml@1088:24;1088:46
	j @cfg_label_23872
@cfg_label_23860:
@cfg_label_23858:
	push r4
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8876setup_surface_table
	sw r5,r2,$-68
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1086:24;1086:47 ../cpuex2017/raytracer/min-rt.ml@1086:24;1086:43
	j @cfg_label_23856
@cfg_label_23856:
	lw r7,r2,$-68
	lw r6,r2,$16
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1086:6;1086:12 ../cpuex2017/raytracer/min-rt.ml@1086:14;1086:19 ../cpuex2017/raytracer/min-rt.ml@1086:24;1086:47
	j @cfg_label_23871
@cfg_label_23865:
@cfg_label_23863:
	push r4
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
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8873setup_rect_table
	sw r5,r2,$-76
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1084:24;1084:44 ../cpuex2017/raytracer/min-rt.ml@1084:24;1084:40
	j @cfg_label_23855
@cfg_label_23855:
	lw r7,r2,$-76
	lw r6,r2,$16
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1083:4;1088:46 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1084:6;1084:12 ../cpuex2017/raytracer/min-rt.ml@1084:14;1084:19 ../cpuex2017/raytracer/min-rt.ml@1084:24;1084:44
	j @cfg_label_23870
@cfg_label_23872:
@cfg_label_23871:
@cfg_label_23870:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1090:48;1090:49
	j @cfg_label_23869
@cfg_label_23869:
	lw r6,r2,$-16
	lw r5,r2,$16
	sub r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1090:40;1090:49 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1090:40;1090:45 ../cpuex2017/raytracer/min-rt.ml@1090:48;1090:49
	j @cfg_label_23868
@cfg_label_23868:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-4
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1090:4;1090:50 ../cpuex2017/raytracer/min-rt.ml@1090:4;1090:31
	j @cfg_label_23867
@cfg_label_23867:
	lw r5,r2,$-4
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1078:2;1091:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1090:4;1090:50
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
@a_8887setup_startp_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$308
	li r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@1103:14;1103:15
	j @cfg_label_23854
	li r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@1103:14;1103:15
	j @cfg_label_23854
@cfg_label_23854:
	lw r6,r2,$-304
	lw r5,r2,$12
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@1103:5;1103:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1103:5;1103:10 ../cpuex2017/raytracer/min-rt.ml@1103:14;1103:15
	j @cfg_label_23853
@cfg_label_23853:
	li r5,$1
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@1103:5;1103:15
	j @cfg_label_23852
@cfg_label_23852:
	lw r5,r2,$-300
	lw r6,r2,$-296
	bne r5,r6,@cfg_label_23849
	j @cfg_label_23848
	j @cfg_label_23850
	j @cfg_label_23851
@cfg_label_23851:
@cfg_label_23849:
	sw r3,r2,$-308
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12
	lw r5,r2,$-308
	addi r1,r1,$308
	pop r2
	pop r6
	jr r6
@cfg_label_23850:
@cfg_label_23848:
	lw r6,r2,$12
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1104:14;1104:21 ../cpuex2017/raytracer/min-rt.ml@1104:23;1104:28
	j @cfg_label_23847
@cfg_label_23847:
	lw r5,r2,$-292
	lw r5,r5,$40
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23846
@cfg_label_23846:
	lw r5,r2,$-292
	lw r5,r5,$36
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23845
@cfg_label_23845:
	lw r5,r2,$-292
	lw r5,r5,$32
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23844
@cfg_label_23844:
	lw r5,r2,$-292
	lw r5,r5,$28
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23843
@cfg_label_23843:
	lw r5,r2,$-292
	lw r5,r5,$24
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23842
@cfg_label_23842:
	lw r5,r2,$-292
	lw r5,r5,$20
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23841
@cfg_label_23841:
	lw r5,r2,$-292
	lw r5,r5,$16
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23840
@cfg_label_23840:
	lw r5,r2,$-292
	lw r5,r5,$12
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23839
@cfg_label_23839:
	lw r5,r2,$-292
	lw r5,r5,$8
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23838
@cfg_label_23838:
	lw r5,r2,$-292
	lw r5,r5,$4
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23837
@cfg_label_23837:
	lw r5,r2,$-292
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1105:30;1105:33
	j @cfg_label_23836
@cfg_label_23836:
	li r5,$0
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@1107:12;1107:13
	j @cfg_label_23835
@cfg_label_23835:
	li r5,$0
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@1107:21;1107:22
	j @cfg_label_23834
@cfg_label_23834:
	lw r6,r2,$-288
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:19 ../cpuex2017/raytracer/min-rt.ml@1107:21;1107:22
	j @cfg_label_23833
@cfg_label_23833:
	li r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_23832
@cfg_label_23832:
	lw r6,r2,$-284
	lw r5,r2,$-100
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@1107:27;1107:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_23831
@cfg_label_23831:
	fld f1,r2,$-280
	fld f2,r2,$-276
	fsub f1,f1,f2
	fst f1,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:23 ../cpuex2017/raytracer/min-rt.ml@1107:27;1107:40
	j @cfg_label_23830
@cfg_label_23830:
	lw r7,r2,$-268
	lw r6,r2,$-272
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1107:4;1107:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1107:4;1107:10 ../cpuex2017/raytracer/min-rt.ml@1107:12;1107:13 ../cpuex2017/raytracer/min-rt.ml@1107:18;1107:40
	j @cfg_label_23829
@cfg_label_23829:
	li r5,$1
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@1108:12;1108:13
	j @cfg_label_23828
@cfg_label_23828:
	li r5,$1
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@1108:21;1108:22
	j @cfg_label_23827
@cfg_label_23827:
	lw r6,r2,$-264
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:19 ../cpuex2017/raytracer/min-rt.ml@1108:21;1108:22
	j @cfg_label_23826
@cfg_label_23826:
	li r5,$1
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_23825
@cfg_label_23825:
	lw r6,r2,$-260
	lw r5,r2,$-100
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1108:27;1108:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@252:2;252:7 ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_23824
@cfg_label_23824:
	fld f1,r2,$-256
	fld f2,r2,$-252
	fsub f1,f1,f2
	fst f1,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:23 ../cpuex2017/raytracer/min-rt.ml@1108:27;1108:40
	j @cfg_label_23823
@cfg_label_23823:
	lw r7,r2,$-244
	lw r6,r2,$-248
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1108:4;1108:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1108:4;1108:10 ../cpuex2017/raytracer/min-rt.ml@1108:12;1108:13 ../cpuex2017/raytracer/min-rt.ml@1108:18;1108:40
	j @cfg_label_23822
@cfg_label_23822:
	li r5,$2
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1109:12;1109:13
	j @cfg_label_23821
@cfg_label_23821:
	li r5,$2
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1109:21;1109:22
	j @cfg_label_23820
@cfg_label_23820:
	lw r6,r2,$-240
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:19 ../cpuex2017/raytracer/min-rt.ml@1109:21;1109:22
	j @cfg_label_23819
@cfg_label_23819:
	li r5,$2
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_23818
@cfg_label_23818:
	lw r6,r2,$-236
	lw r5,r2,$-100
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@1109:27;1109:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_23817
@cfg_label_23817:
	fld f1,r2,$-232
	fld f2,r2,$-228
	fsub f1,f1,f2
	fst f1,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:23 ../cpuex2017/raytracer/min-rt.ml@1109:27;1109:40
	j @cfg_label_23816
@cfg_label_23816:
	lw r7,r2,$-220
	lw r6,r2,$-224
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1109:4;1109:40 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1109:4;1109:10 ../cpuex2017/raytracer/min-rt.ml@1109:12;1109:13 ../cpuex2017/raytracer/min-rt.ml@1109:18;1109:40
	j @cfg_label_23815
@cfg_label_23815:
	li r5,$2
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1110:17;1110:18
	j @cfg_label_23814
@cfg_label_23814:
	lw r5,r2,$-68
	lw r6,r2,$-216
	bne r5,r6,@cfg_label_23802
	j @cfg_label_23801
	j @cfg_label_23803
	j @cfg_label_23804
@cfg_label_23804:
@cfg_label_23802:
	li r5,$2
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1113:22;1113:23
	j @cfg_label_23800
@cfg_label_23800:
	lw r6,r2,$-140
	lw r5,r2,$-68
	slt r5,r6,r5
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1113:12;1113:23 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1113:12;1113:19 ../cpuex2017/raytracer/min-rt.ml@1113:22;1113:23
	j @cfg_label_23799
@cfg_label_23799:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1113:12;1113:23
	j @cfg_label_23798
@cfg_label_23798:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_23795
	j @cfg_label_23794
	j @cfg_label_23796
	j @cfg_label_23797
@cfg_label_23797:
@cfg_label_23795:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11
	j @cfg_label_23813
@cfg_label_23796:
@cfg_label_23794:
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1114:38;1114:39
	j @cfg_label_23793
@cfg_label_23793:
	lw r6,r2,$-128
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1114:30;1114:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1114:30;1114:36 ../cpuex2017/raytracer/min-rt.ml@1114:38;1114:39
	j @cfg_label_23792
@cfg_label_23792:
	li r5,$1
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1114:49;1114:50
	j @cfg_label_23791
@cfg_label_23791:
	lw r6,r2,$-124
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1114:41;1114:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1114:41;1114:47 ../cpuex2017/raytracer/min-rt.ml@1114:49;1114:50
	j @cfg_label_23790
@cfg_label_23790:
	li r5,$2
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1114:60;1114:61
	j @cfg_label_23789
@cfg_label_23789:
	lw r6,r2,$-120
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1114:52;1114:62 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1114:52;1114:58 ../cpuex2017/raytracer/min-rt.ml@1114:60;1114:61
	j @cfg_label_23788
@cfg_label_23788:
	push r4
	lw r5,r2,$-72
	push r5
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-112
	push r5
	lw r5,r2,$-68
	push r5
	lw r5,r2,$-116
	push r5
	jal @a_8810quadratic
	sw r5,r2,$-56
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1114:16;1114:62 ../cpuex2017/raytracer/min-rt.ml@1114:16;1114:25
	j @cfg_label_23787
@cfg_label_23787:
	li r5,$3
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1115:14;1115:15
	j @cfg_label_23786
@cfg_label_23786:
	li r5,$3
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1115:33;1115:34
	j @cfg_label_23785
@cfg_label_23785:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_23780
	j @cfg_label_23779
	j @cfg_label_23781
	j @cfg_label_23782
@cfg_label_23782:
@cfg_label_23780:
	lw r5,r2,$-56
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59 ::<= ../cpuex2017/raytracer/min-rt.ml@1115:56;1115:59
	j @cfg_label_23784
@cfg_label_23781:
@cfg_label_23779:
	fmovi f1,$1.000000
	fst f1,r2,$-60
	j @cfg_label_23778
@cfg_label_23778:
	fld f1,r2,$-56
	fld f2,r2,$-60
	fsub f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1115:40;1115:43 ../cpuex2017/raytracer/min-rt.ml@1115:47;1115:50
	j @cfg_label_23783
@cfg_label_23784:
@cfg_label_23783:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1115:6;1115:12 ../cpuex2017/raytracer/min-rt.ml@1115:14;1115:15 ../cpuex2017/raytracer/min-rt.ml@1115:20;1115:59
	j @cfg_label_23812
@cfg_label_23803:
@cfg_label_23801:
	li r5,$3
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1111:14;1111:15
	j @cfg_label_23777
@cfg_label_23777:
	li r5,$0
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1112:37;1112:38
	j @cfg_label_23776
@cfg_label_23776:
	lw r6,r2,$-212
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1112:29;1112:39 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1112:29;1112:35 ../cpuex2017/raytracer/min-rt.ml@1112:37;1112:38
	j @cfg_label_23775
@cfg_label_23775:
	li r5,$1
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1112:48;1112:49
	j @cfg_label_23774
@cfg_label_23774:
	lw r6,r2,$-208
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1112:40;1112:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1112:40;1112:46 ../cpuex2017/raytracer/min-rt.ml@1112:48;1112:49
	j @cfg_label_23773
@cfg_label_23773:
	li r5,$2
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1112:59;1112:60
	j @cfg_label_23772
@cfg_label_23772:
	lw r6,r2,$-204
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1112:51;1112:61 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1112:51;1112:57 ../cpuex2017/raytracer/min-rt.ml@1112:59;1112:60
	j @cfg_label_23771
@cfg_label_23771:
	li r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_23770
@cfg_label_23770:
	lw r6,r2,$-200
	lw r5,r2,$-104
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:2;105:3 ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_23769
@cfg_label_23769:
	fld f1,r2,$-196
	fld f2,r2,$-192
	fmul f1,f1,f2
	fst f1,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ../cpuex2017/raytracer/min-rt.ml@105:11;105:13
	j @cfg_label_23768
@cfg_label_23768:
	li r5,$1
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@105:20;105:21
	j @cfg_label_23767
@cfg_label_23767:
	lw r6,r2,$-188
	lw r5,r2,$-104
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:17;105:18 ../cpuex2017/raytracer/min-rt.ml@105:20;105:21
	j @cfg_label_23766
@cfg_label_23766:
	fld f1,r2,$-184
	fld f2,r2,$-180
	fmul f1,f1,f2
	fst f1,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ../cpuex2017/raytracer/min-rt.ml@105:26;105:28
	j @cfg_label_23765
@cfg_label_23765:
	fld f1,r2,$-176
	fld f2,r2,$-172
	fadd f1,f1,f2
	fst f1,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	j @cfg_label_23764
@cfg_label_23764:
	li r5,$2
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@105:35;105:36
	j @cfg_label_23763
@cfg_label_23763:
	lw r6,r2,$-168
	lw r5,r2,$-104
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:32;105:33 ../cpuex2017/raytracer/min-rt.ml@105:35;105:36
	j @cfg_label_23762
@cfg_label_23762:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fmul f1,f1,f2
	fst f1,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ../cpuex2017/raytracer/min-rt.ml@105:41;105:43
	j @cfg_label_23761
@cfg_label_23761:
	fld f1,r2,$-156
	fld f2,r2,$-152
	fadd f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1112:1;1112:61 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	j @cfg_label_23760
@cfg_label_23760:
	lw r7,r2,$-144
	lw r6,r2,$-148
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1116:11 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1111:6;1111:12 ../cpuex2017/raytracer/min-rt.ml@1111:14;1111:15 ../cpuex2017/raytracer/min-rt.ml@1112:1;1112:61
	j @cfg_label_23811
@cfg_label_23813:
@cfg_label_23812:
@cfg_label_23811:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1117:38;1117:39
	j @cfg_label_23810
@cfg_label_23810:
	lw r6,r2,$-40
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1117:30;1117:39 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1117:30;1117:35 ../cpuex2017/raytracer/min-rt.ml@1117:38;1117:39
	j @cfg_label_23809
@cfg_label_23809:
	push r4
	lw r5,r2,$-36
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8887setup_startp_constants
	sw r5,r2,$-28
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1117:4;1117:40 ../cpuex2017/raytracer/min-rt.ml@1117:4;1117:26
	j @cfg_label_23808
@cfg_label_23808:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1110:4;1117:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1117:4;1117:40
	j @cfg_label_23807
@cfg_label_23807:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1109:4;1117:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1110:4;1117:40
	j @cfg_label_23806
@cfg_label_23806:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1108:4;1117:40 ::<= ../cpuex2017/raytracer/min-rt.ml@1109:4;1117:40
	j @cfg_label_23805
@cfg_label_23805:
	lw r5,r2,$-4
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@1103:2;1118:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1108:4;1117:40
	lw r5,r2,$-308
	addi r1,r1,$308
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-308
	addi r1,r1,$308
	pop r2
	pop r6
	jr r6
@a_8890setup_startp:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_23759
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_23759
@cfg_label_23759:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_23758
@cfg_label_23758:
	lw r6,r2,$-76
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_23757
@cfg_label_23757:
	lw r7,r2,$-68
	lw r6,r2,$-72
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_23756
@cfg_label_23756:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_23755
@cfg_label_23755:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_23754
@cfg_label_23754:
	lw r6,r2,$-64
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_23753
@cfg_label_23753:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_23752
@cfg_label_23752:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_23751
@cfg_label_23751:
	li r5,$2
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_23750
@cfg_label_23750:
	lw r6,r2,$-52
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_23749
@cfg_label_23749:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_23748
@cfg_label_23748:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_23747
@cfg_label_23747:
	lw r5,r2,$-28
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_23746
@cfg_label_23746:
	li r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1123:39;1123:40
	j @cfg_label_23745
@cfg_label_23745:
	lw r6,r2,$-24
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37 ../cpuex2017/raytracer/min-rt.ml@1123:39;1123:40
	j @cfg_label_23744
@cfg_label_23744:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1123:44;1123:45
	j @cfg_label_23743
@cfg_label_23743:
	lw r6,r2,$-16
	lw r5,r2,$-20
	sub r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ../cpuex2017/raytracer/min-rt.ml@1123:44;1123:45
	j @cfg_label_23742
@cfg_label_23742:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8887setup_startp_constants
	sw r5,r2,$-4
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:46 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	j @cfg_label_23741
@cfg_label_23741:
	lw r5,r2,$-4
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1123:46 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:46
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@a_8892is_rect_outside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$112
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_23740
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_23740
@cfg_label_23740:
	fld f1,r2,$52
	fld f2,r2,$-108
	flt f2,f1
	bft @emit_label_26111
	li r5,$0
	j @emit_label_26112
@emit_label_26111:
	li r5,$1
@emit_label_26112:
	sw r5,r2,$-104
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_23739
@cfg_label_23739:
	li r5,$1
	sw r5,r2,$-100
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_23738
@cfg_label_23738:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_23687
	j @cfg_label_23686
	j @cfg_label_23688
	j @cfg_label_23689
@cfg_label_23688:
@cfg_label_23686:
	lw r5,r2,$52
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_23736
@cfg_label_23689:
@cfg_label_23687:
	fmovi f1,$-1.000000
	fst f1,r2,$-96
	j @cfg_label_23685
@cfg_label_23685:
	fld f1,r2,$-96
	fld f2,r2,$52
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1135:15;1135:22 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_23737
@cfg_label_23737:
@cfg_label_23736:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_23735
@cfg_label_23735:
	lw r6,r2,$-92
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1135:25;1135:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_23734
@cfg_label_23734:
	fld f1,r2,$-88
	fld f2,r2,$-84
	flt f1,f2
	bft @emit_label_26113
	li r5,$0
	j @emit_label_26114
@emit_label_26113:
	li r5,$1
@emit_label_26114:
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1135:8;1135:37 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23733
@cfg_label_23733:
	li r5,$1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1135:8;1135:37
	j @cfg_label_23732
@cfg_label_23732:
	lw r5,r2,$-80
	lw r6,r2,$-76
	bne r5,r6,@cfg_label_23721
	j @cfg_label_23720
	j @cfg_label_23722
	j @cfg_label_23723
@cfg_label_23723:
@cfg_label_23721:
	lw r5,r31,$12
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14 ::<= ../cpuex2017/raytracer/min-rt.ml@1139:9;1139:14
	j @cfg_label_23731
@cfg_label_23722:
@cfg_label_23720:
	fmovi f1,$0.000000
	fst f1,r2,$-72
	j @cfg_label_23719
@cfg_label_23719:
	fld f1,r2,$56
	fld f2,r2,$-72
	flt f2,f1
	bft @emit_label_26115
	li r5,$0
	j @emit_label_26116
@emit_label_26115:
	li r5,$1
@emit_label_26116:
	sw r5,r2,$-68
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_23718
@cfg_label_23718:
	li r5,$1
	sw r5,r2,$-64
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_23717
@cfg_label_23717:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_23692
	j @cfg_label_23691
	j @cfg_label_23693
	j @cfg_label_23694
@cfg_label_23693:
@cfg_label_23691:
	lw r5,r2,$56
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_23715
@cfg_label_23694:
@cfg_label_23692:
	fmovi f1,$-1.000000
	fst f1,r2,$-60
	j @cfg_label_23690
@cfg_label_23690:
	fld f1,r2,$-60
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1136:17;1136:24 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_23716
@cfg_label_23716:
@cfg_label_23715:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_23714
@cfg_label_23714:
	lw r6,r2,$-56
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1136:27;1136:38 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_23713
@cfg_label_23713:
	fld f1,r2,$-52
	fld f2,r2,$-48
	flt f1,f2
	bft @emit_label_26117
	li r5,$0
	j @emit_label_26118
@emit_label_26117:
	li r5,$1
@emit_label_26118:
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1136:10;1136:39 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23712
@cfg_label_23712:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1136:10;1136:39
	j @cfg_label_23711
@cfg_label_23711:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_23708
	j @cfg_label_23707
	j @cfg_label_23709
	j @cfg_label_23710
@cfg_label_23710:
@cfg_label_23708:
	lw r5,r31,$12
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14 ::<= ../cpuex2017/raytracer/min-rt.ml@1138:11;1138:16
	j @cfg_label_23730
@cfg_label_23709:
@cfg_label_23707:
	fmovi f1,$0.000000
	fst f1,r2,$-36
	j @cfg_label_23706
@cfg_label_23706:
	fld f1,r2,$60
	fld f2,r2,$-36
	flt f2,f1
	bft @emit_label_26119
	li r5,$0
	j @emit_label_26120
@emit_label_26119:
	li r5,$1
@emit_label_26120:
	sw r5,r2,$-32
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_23705
@cfg_label_23705:
	li r5,$1
	sw r5,r2,$-28
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_23704
@cfg_label_23704:
	lw r5,r2,$-32
	lw r6,r2,$-28
	bne r5,r6,@cfg_label_23697
	j @cfg_label_23696
	j @cfg_label_23698
	j @cfg_label_23699
@cfg_label_23698:
@cfg_label_23696:
	lw r5,r2,$60
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_23702
@cfg_label_23699:
@cfg_label_23697:
	fmovi f1,$-1.000000
	fst f1,r2,$-24
	j @cfg_label_23695
@cfg_label_23695:
	fld f1,r2,$-24
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1137:8;1137:15 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_23703
@cfg_label_23703:
@cfg_label_23702:
	li r5,$2
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_23701
@cfg_label_23701:
	lw r6,r2,$-20
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1137:18;1137:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_23700
@cfg_label_23700:
	fld f1,r2,$-16
	fld f2,r2,$-12
	flt f1,f2
	bft @emit_label_26121
	li r5,$0
	j @emit_label_26122
@emit_label_26121:
	li r5,$1
@emit_label_26122:
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23729
@cfg_label_23731:
@cfg_label_23730:
@cfg_label_23729:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1135:4;1139:14
	j @cfg_label_23728
@cfg_label_23728:
	lw r5,r2,$-8
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_23725
	j @cfg_label_23724
	j @cfg_label_23726
	j @cfg_label_23727
@cfg_label_23726:
@cfg_label_23724:
	lw r5,r2,$32
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::<= ../cpuex2017/raytracer/min-rt.ml@183:2;183:10
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@cfg_label_23727:
@cfg_label_23725:
	lw r5,r2,$32
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1134:2;1140:43 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1140:30;1140:42
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@a_8897is_plane_outside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_23684
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_23684
@cfg_label_23684:
	lw r6,r2,$-60
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:2;105:3 ../cpuex2017/raytracer/min-rt.ml@105:5;105:6
	j @cfg_label_23683
@cfg_label_23683:
	fld f1,r2,$-56
	fld f2,r2,$52
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:2;105:7 ../cpuex2017/raytracer/min-rt.ml@105:11;105:13
	j @cfg_label_23682
@cfg_label_23682:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@105:20;105:21
	j @cfg_label_23681
@cfg_label_23681:
	lw r6,r2,$-52
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:17;105:18 ../cpuex2017/raytracer/min-rt.ml@105:20;105:21
	j @cfg_label_23680
@cfg_label_23680:
	fld f1,r2,$-48
	fld f2,r2,$56
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@105:17;105:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:17;105:22 ../cpuex2017/raytracer/min-rt.ml@105:26;105:28
	j @cfg_label_23679
@cfg_label_23679:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fadd f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:13 ../cpuex2017/raytracer/min-rt.ml@105:17;105:28
	j @cfg_label_23678
@cfg_label_23678:
	li r5,$2
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@105:35;105:36
	j @cfg_label_23677
@cfg_label_23677:
	lw r6,r2,$-36
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@105:32;105:33 ../cpuex2017/raytracer/min-rt.ml@105:35;105:36
	j @cfg_label_23676
@cfg_label_23676:
	fld f1,r2,$-32
	fld f2,r2,$60
	fmul f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@105:32;105:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@105:32;105:37 ../cpuex2017/raytracer/min-rt.ml@105:41;105:43
	j @cfg_label_23675
@cfg_label_23675:
	fld f1,r2,$-28
	fld f2,r2,$-24
	fadd f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1145:10;1145:44 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@105:2;105:28 ../cpuex2017/raytracer/min-rt.ml@105:32;105:43
	j @cfg_label_23674
@cfg_label_23674:
	fmovi f1,$0.000000
	fst f1,r2,$-16
	j @cfg_label_23673
@cfg_label_23673:
	fld f1,r2,$-20
	fld f2,r2,$-16
	flt f1,f2
	bft @emit_label_26123
	li r5,$0
	j @emit_label_26124
@emit_label_26123:
	li r5,$1
@emit_label_26124:
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1146:27;1146:35 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_23672
@cfg_label_23672:
	li r5,$1
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	j @cfg_label_23671
@cfg_label_23671:
	lw r5,r2,$32
	lw r6,r2,$-12
	bne r5,r6,@cfg_label_23666
	j @cfg_label_23665
	j @cfg_label_23667
	j @cfg_label_23668
@cfg_label_23667:
@cfg_label_23665:
	lw r5,r2,$-8
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36 ::= Onot ../cpuex2017/raytracer/min-rt.ml@16:44;16:45
	j @cfg_label_23669
@cfg_label_23668:
@cfg_label_23666:
	lw r5,r2,$-8
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36 ::<= ../cpuex2017/raytracer/min-rt.ml@16:51;16:52
	j @cfg_label_23670
@cfg_label_23670:
@cfg_label_23669:
	lw r5,r2,$-4
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1145:2;1146:37 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1146:7;1146:36
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
@a_8912check_all_inside:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$152
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:17 ../cpuex2017/raytracer/min-rt.ml@1172:19;1172:22
	j @cfg_label_23664
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1172:13;1172:17 ../cpuex2017/raytracer/min-rt.ml@1172:19;1172:22
	j @cfg_label_23664
@cfg_label_23664:
	li r5,$-1
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1173:12;1173:14
	j @cfg_label_23663
@cfg_label_23663:
	lw r5,r2,$-144
	lw r6,r2,$-148
	bne r5,r6,@cfg_label_23660
	j @cfg_label_23659
	j @cfg_label_23661
	j @cfg_label_23662
@cfg_label_23661:
@cfg_label_23659:
	lw r5,r31,$16
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1174:4;1174:8
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@cfg_label_23662:
@cfg_label_23660:
	lw r6,r2,$-144
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:25 ../cpuex2017/raytracer/min-rt.ml@1176:27;1176:31
	j @cfg_label_23658
@cfg_label_23658:
	lw r5,r2,$-140
	lw r5,r5,$40
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23657
@cfg_label_23657:
	lw r5,r2,$-140
	lw r5,r5,$36
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23656
@cfg_label_23656:
	lw r5,r2,$-140
	lw r5,r5,$32
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23655
@cfg_label_23655:
	lw r5,r2,$-140
	lw r5,r5,$28
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23654
@cfg_label_23654:
	lw r5,r2,$-140
	lw r5,r5,$24
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23653
@cfg_label_23653:
	lw r5,r2,$-140
	lw r5,r5,$20
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23652
@cfg_label_23652:
	lw r5,r2,$-140
	lw r5,r5,$16
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23651
@cfg_label_23651:
	lw r5,r2,$-140
	lw r5,r5,$12
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23650
@cfg_label_23650:
	lw r5,r2,$-140
	lw r5,r5,$8
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23649
@cfg_label_23649:
	lw r5,r2,$-140
	lw r5,r5,$4
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23648
@cfg_label_23648:
	lw r5,r2,$-140
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1176:18;1176:32
	j @cfg_label_23647
@cfg_label_23647:
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_23646
@cfg_label_23646:
	lw r6,r2,$-136
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_23645
@cfg_label_23645:
	fld f1,r2,$16
	fld f2,r2,$-132
	fsub f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1158:11;1158:13 ../cpuex2017/raytracer/min-rt.ml@1158:17;1158:28
	j @cfg_label_23644
@cfg_label_23644:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_23643
@cfg_label_23643:
	lw r6,r2,$-128
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@252:2;252:7 ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_23642
@cfg_label_23642:
	fld f1,r2,$20
	fld f2,r2,$-124
	fsub f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1159:11;1159:13 ../cpuex2017/raytracer/min-rt.ml@1159:17;1159:28
	j @cfg_label_23641
@cfg_label_23641:
	li r5,$2
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_23640
@cfg_label_23640:
	lw r6,r2,$-120
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_23639
@cfg_label_23639:
	fld f1,r2,$24
	fld f2,r2,$-116
	fsub f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:28 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1160:11;1160:13 ../cpuex2017/raytracer/min-rt.ml@1160:17;1160:28
	j @cfg_label_23638
@cfg_label_23638:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1162:15;1162:16
	j @cfg_label_23637
@cfg_label_23637:
	lw r5,r2,$-56
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_23624
	j @cfg_label_23623
	j @cfg_label_23625
	j @cfg_label_23626
@cfg_label_23625:
@cfg_label_23623:
	push r4
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	lw r5,r2,$-72
	push r5
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-104
	push r5
	jal @a_8892is_rect_outside
	sw r5,r2,$-16
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1163:4;1163:19
	j @cfg_label_23634
@cfg_label_23626:
@cfg_label_23624:
	li r5,$2
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1164:20;1164:21
	j @cfg_label_23622
@cfg_label_23622:
	lw r5,r2,$-56
	lw r6,r2,$-108
	bne r5,r6,@cfg_label_23619
	j @cfg_label_23618
	j @cfg_label_23620
	j @cfg_label_23621
@cfg_label_23620:
@cfg_label_23618:
	push r4
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	lw r5,r2,$-72
	push r5
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-104
	push r5
	jal @a_8897is_plane_outside
	sw r5,r2,$-16
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ../cpuex2017/raytracer/min-rt.ml@1165:4;1165:20
	j @cfg_label_23635
@cfg_label_23621:
@cfg_label_23619:
	push r4
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	lw r5,r2,$-72
	push r5
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-104
	push r5
	jal @a_8810quadratic
	sw r5,r2,$-44
	addi r1,r1,$56
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:30 ../cpuex2017/raytracer/min-rt.ml@1151:10;1151:19
	j @cfg_label_23617
@cfg_label_23617:
	li r5,$3
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1152:25;1152:26
	j @cfg_label_23616
@cfg_label_23616:
	lw r5,r2,$-56
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_23602
	j @cfg_label_23601
	j @cfg_label_23603
	j @cfg_label_23604
@cfg_label_23604:
@cfg_label_23602:
	lw r5,r2,$-44
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47 ::<= ../cpuex2017/raytracer/min-rt.ml@1152:46;1152:47
	j @cfg_label_23615
@cfg_label_23603:
@cfg_label_23601:
	fmovi f1,$1.000000
	fst f1,r2,$-48
	j @cfg_label_23600
@cfg_label_23600:
	fld f1,r2,$-44
	fld f2,r2,$-48
	fsub f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1152:11;1152:47 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1152:32;1152:33 ../cpuex2017/raytracer/min-rt.ml@1152:37;1152:40
	j @cfg_label_23614
@cfg_label_23615:
@cfg_label_23614:
	fmovi f1,$0.000000
	fst f1,r2,$-36
	j @cfg_label_23613
@cfg_label_23613:
	fld f1,r2,$-40
	fld f2,r2,$-36
	flt f1,f2
	bft @emit_label_26125
	li r5,$0
	j @emit_label_26126
@emit_label_26125:
	li r5,$1
@emit_label_26126:
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1153:27;1153:36 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_23612
@cfg_label_23612:
	li r5,$1
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@16:33;16:34
	j @cfg_label_23611
@cfg_label_23611:
	lw r5,r2,$-32
	lw r6,r2,$-28
	bne r5,r6,@cfg_label_23606
	j @cfg_label_23605
	j @cfg_label_23607
	j @cfg_label_23608
@cfg_label_23607:
@cfg_label_23605:
	lw r5,r2,$-24
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37 ::= Onot ../cpuex2017/raytracer/min-rt.ml@16:44;16:45
	j @cfg_label_23609
@cfg_label_23608:
@cfg_label_23606:
	lw r5,r2,$-24
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37 ::<= ../cpuex2017/raytracer/min-rt.ml@16:51;16:52
	j @cfg_label_23610
@cfg_label_23610:
@cfg_label_23609:
	lw r5,r2,$-20
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1153:7;1153:37
	j @cfg_label_23636
@cfg_label_23636:
@cfg_label_23635:
@cfg_label_23634:
	li r5,$1
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1176:7;1176:41
	j @cfg_label_23633
@cfg_label_23633:
	lw r5,r2,$-16
	lw r6,r2,$-12
	bne r5,r6,@cfg_label_23630
	j @cfg_label_23629
	j @cfg_label_23631
	j @cfg_label_23632
@cfg_label_23631:
@cfg_label_23629:
	lw r5,r31,$12
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1177:6;1177:11
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@cfg_label_23632:
@cfg_label_23630:
	li r5,$1
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1179:30;1179:31
	j @cfg_label_23628
@cfg_label_23628:
	lw r6,r2,$-8
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:31 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1179:24;1179:27 ../cpuex2017/raytracer/min-rt.ml@1179:30;1179:31
	j @cfg_label_23627
@cfg_label_23627:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-4
	push r5
	jal @a_8912check_all_inside
	sw r5,r2,$-152
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1172:2;1180:4 ../cpuex2017/raytracer/min-rt.ml@1179:6;1179:22
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@a_8918shadow_check_and_group:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$172
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1192:5;1192:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1192:5;1192:14 ../cpuex2017/raytracer/min-rt.ml@1192:16;1192:24
	j @cfg_label_23599
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1192:5;1192:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1192:5;1192:14 ../cpuex2017/raytracer/min-rt.ml@1192:16;1192:24
	j @cfg_label_23599
@cfg_label_23599:
	li r5,$-1
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1192:28;1192:30
	j @cfg_label_23598
@cfg_label_23598:
	lw r5,r2,$-168
	lw r6,r2,$-164
	bne r5,r6,@cfg_label_23595
	j @cfg_label_23594
	j @cfg_label_23596
	j @cfg_label_23597
@cfg_label_23596:
@cfg_label_23594:
	lw r5,r31,$12
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1193:4;1193:9
	lw r5,r2,$-172
	addi r1,r1,$172
	pop r2
	pop r6
	jr r6
@cfg_label_23597:
@cfg_label_23595:
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1195:14;1195:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1195:14;1195:23 ../cpuex2017/raytracer/min-rt.ml@1195:25;1195:33
	j @cfg_label_23593
@cfg_label_23593:
	push r4
	lw r5,r31,$316
	push r5
	lw r5,r31,$76
	push r5
	lw r5,r31,$84
	push r5
	lw r5,r2,$-24
	push r5
	jal @a_8852solver_fast
	sw r5,r2,$-156
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1196:13;1196:60 ../cpuex2017/raytracer/min-rt.ml@1196:13;1196:24
	j @cfg_label_23592
@cfg_label_23592:
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1197:27;1197:28
	j @cfg_label_23591
@cfg_label_23591:
	lw r6,r2,$-160
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1197:14;1197:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1197:14;1197:25 ../cpuex2017/raytracer/min-rt.ml@1197:27;1197:28
	j @cfg_label_23590
@cfg_label_23590:
	li r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1198:17;1198:18
	j @cfg_label_23589
@cfg_label_23589:
	lw r6,r2,$-152
	lw r5,r2,$-156
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1198:11;1198:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1198:11;1198:13 ../cpuex2017/raytracer/min-rt.ml@1198:17;1198:18
	j @cfg_label_23588
@cfg_label_23588:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1198:11;1198:18
	j @cfg_label_23587
@cfg_label_23587:
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@cfg_label_23539
	j @cfg_label_23538
	j @cfg_label_23540
	j @cfg_label_23541
@cfg_label_23541:
@cfg_label_23539:
	lw r5,r31,$12
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51 ::<= ../cpuex2017/raytracer/min-rt.ml@1198:46;1198:51
	j @cfg_label_23586
@cfg_label_23540:
@cfg_label_23538:
	fmovi f1,$-0.200000
	fst f1,r2,$-140
	j @cfg_label_23537
@cfg_label_23537:
	fld f1,r2,$-128
	fld f2,r2,$-140
	flt f1,f2
	bft @emit_label_26127
	li r5,$0
	j @emit_label_26128
@emit_label_26127:
	li r5,$1
@emit_label_26128:
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23585
@cfg_label_23586:
@cfg_label_23585:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1198:8;1198:51
	j @cfg_label_23584
@cfg_label_23584:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_23581
	j @cfg_label_23580
	j @cfg_label_23582
	j @cfg_label_23583
@cfg_label_23583:
@cfg_label_23581:
	lw r6,r2,$-24
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1214:21;1214:28 ../cpuex2017/raytracer/min-rt.ml@1214:30;1214:33
	j @cfg_label_23579
@cfg_label_23579:
	lw r5,r2,$-20
	lw r5,r5,$24
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1214:21;1214:34
	j @cfg_label_23578
@cfg_label_23578:
	li r5,$1
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1214:9;1214:35
	j @cfg_label_23577
@cfg_label_23577:
	lw r5,r2,$-16
	lw r6,r2,$-12
	bne r5,r6,@cfg_label_23574
	j @cfg_label_23573
	j @cfg_label_23575
	j @cfg_label_23576
@cfg_label_23576:
@cfg_label_23574:
	lw r5,r31,$12
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1217:1;1217:6
	lw r5,r2,$-172
	addi r1,r1,$172
	pop r2
	pop r6
	jr r6
@cfg_label_23575:
@cfg_label_23573:
	li r5,$1
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1215:36;1215:37
	j @cfg_label_23572
@cfg_label_23572:
	lw r6,r2,$-8
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1215:25;1215:37 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1215:25;1215:33 ../cpuex2017/raytracer/min-rt.ml@1215:36;1215:37
	j @cfg_label_23571
@cfg_label_23571:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-4
	push r5
	jal @a_8918shadow_check_and_group
	sw r5,r2,$-172
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ../cpuex2017/raytracer/min-rt.ml@1215:1;1215:23
	lw r5,r2,$-172
	addi r1,r1,$172
	pop r2
	pop r6
	jr r6
@cfg_label_23582:
@cfg_label_23580:
	fmovi f1,$0.010000
	fst f1,r2,$-124
	j @cfg_label_23570
@cfg_label_23570:
	fld f1,r2,$-128
	fld f2,r2,$-124
	fadd f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1201:14;1201:25 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1201:14;1201:17 ../cpuex2017/raytracer/min-rt.ml@1201:21;1201:25
	j @cfg_label_23569
@cfg_label_23569:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1202:22;1202:23
	j @cfg_label_23568
@cfg_label_23568:
	lw r6,r2,$-120
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:20 ../cpuex2017/raytracer/min-rt.ml@1202:22;1202:23
	j @cfg_label_23567
@cfg_label_23567:
	fld f1,r2,$-116
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:24 ../cpuex2017/raytracer/min-rt.ml@1202:28;1202:29
	j @cfg_label_23566
@cfg_label_23566:
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1202:53;1202:54
	j @cfg_label_23565
@cfg_label_23565:
	lw r6,r2,$-112
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1202:33;1202:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1202:33;1202:51 ../cpuex2017/raytracer/min-rt.ml@1202:53;1202:54
	j @cfg_label_23564
@cfg_label_23564:
	fld f1,r2,$-108
	fld f2,r2,$-104
	fadd f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1202:15;1202:29 ../cpuex2017/raytracer/min-rt.ml@1202:33;1202:55
	j @cfg_label_23563
@cfg_label_23563:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1203:22;1203:23
	j @cfg_label_23562
@cfg_label_23562:
	lw r6,r2,$-100
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:20 ../cpuex2017/raytracer/min-rt.ml@1203:22;1203:23
	j @cfg_label_23561
@cfg_label_23561:
	fld f1,r2,$-96
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:24 ../cpuex2017/raytracer/min-rt.ml@1203:28;1203:29
	j @cfg_label_23560
@cfg_label_23560:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1203:53;1203:54
	j @cfg_label_23559
@cfg_label_23559:
	lw r6,r2,$-92
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1203:33;1203:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1203:33;1203:51 ../cpuex2017/raytracer/min-rt.ml@1203:53;1203:54
	j @cfg_label_23558
@cfg_label_23558:
	fld f1,r2,$-88
	fld f2,r2,$-84
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1203:15;1203:29 ../cpuex2017/raytracer/min-rt.ml@1203:33;1203:55
	j @cfg_label_23557
@cfg_label_23557:
	li r5,$2
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1204:22;1204:23
	j @cfg_label_23556
@cfg_label_23556:
	lw r6,r2,$-80
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:20 ../cpuex2017/raytracer/min-rt.ml@1204:22;1204:23
	j @cfg_label_23555
@cfg_label_23555:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:24 ../cpuex2017/raytracer/min-rt.ml@1204:28;1204:29
	j @cfg_label_23554
@cfg_label_23554:
	li r5,$2
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1204:53;1204:54
	j @cfg_label_23553
@cfg_label_23553:
	lw r6,r2,$-68
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1204:33;1204:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1204:33;1204:51 ../cpuex2017/raytracer/min-rt.ml@1204:53;1204:54
	j @cfg_label_23552
@cfg_label_23552:
	fld f1,r2,$-64
	fld f2,r2,$-60
	fadd f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1204:15;1204:29 ../cpuex2017/raytracer/min-rt.ml@1204:33;1204:55
	j @cfg_label_23551
@cfg_label_23551:
	li r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1205:26;1205:27
	j @cfg_label_23550
@cfg_label_23550:
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_8912check_all_inside
	sw r5,r2,$-40
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46 ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:25
	j @cfg_label_23549
@cfg_label_23549:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1205:9;1205:46
	j @cfg_label_23548
@cfg_label_23548:
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_23545
	j @cfg_label_23544
	j @cfg_label_23546
	j @cfg_label_23547
@cfg_label_23546:
@cfg_label_23544:
	lw r5,r31,$16
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ::<= ../cpuex2017/raytracer/min-rt.ml@1206:1;1206:5
	lw r5,r2,$-172
	addi r1,r1,$172
	pop r2
	pop r6
	jr r6
@cfg_label_23547:
@cfg_label_23545:
	li r5,$1
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1208:36;1208:37
	j @cfg_label_23543
@cfg_label_23543:
	lw r6,r2,$-32
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1208:25;1208:37 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1208:25;1208:33 ../cpuex2017/raytracer/min-rt.ml@1208:36;1208:37
	j @cfg_label_23542
@cfg_label_23542:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-28
	push r5
	jal @a_8918shadow_check_and_group
	sw r5,r2,$-172
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1192:2;1217:6 ../cpuex2017/raytracer/min-rt.ml@1208:1;1208:23
	lw r5,r2,$-172
	addi r1,r1,$172
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-172
	addi r1,r1,$172
	pop r2
	pop r6
	jr r6
@a_8921shadow_check_one_or_group:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$68
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:21 ../cpuex2017/raytracer/min-rt.ml@1222:23;1222:26
	j @cfg_label_23536
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:21 ../cpuex2017/raytracer/min-rt.ml@1222:23;1222:26
	j @cfg_label_23536
@cfg_label_23536:
	li r5,$-1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	j @cfg_label_23535
@cfg_label_23535:
	lw r5,r2,$-60
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_23532
	j @cfg_label_23531
	j @cfg_label_23533
	j @cfg_label_23534
@cfg_label_23533:
@cfg_label_23531:
	lw r5,r31,$12
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1224:4;1224:9
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_23534:
@cfg_label_23532:
	lw r6,r2,$-60
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1226:29;1226:33
	j @cfg_label_23530
@cfg_label_23530:
	li r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	j @cfg_label_23529
@cfg_label_23529:
	push r4
	lw r5,r2,$-52
	push r5
	lw r5,r2,$-56
	push r5
	jal @a_8918shadow_check_and_group
	sw r5,r2,$-48
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	j @cfg_label_23528
@cfg_label_23528:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	j @cfg_label_23527
@cfg_label_23527:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_23524
	j @cfg_label_23523
	j @cfg_label_23525
	j @cfg_label_23526
@cfg_label_23525:
@cfg_label_23523:
	lw r5,r31,$16
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1229:6;1229:10
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_23526:
@cfg_label_23524:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1231:39;1231:40
	j @cfg_label_23522
@cfg_label_23522:
	lw r6,r2,$-40
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:36 ../cpuex2017/raytracer/min-rt.ml@1231:39;1231:40
	j @cfg_label_23521
@cfg_label_23521:
	lw r6,r2,$-12
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:21 ../cpuex2017/raytracer/min-rt.ml@1222:23;1222:26
	j @cfg_label_23520
@cfg_label_23520:
	li r5,$-1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	j @cfg_label_23519
@cfg_label_23519:
	lw r5,r2,$-32
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_23516
	j @cfg_label_23515
	j @cfg_label_23517
	j @cfg_label_23518
@cfg_label_23517:
@cfg_label_23515:
	lw r5,r31,$12
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1224:4;1224:9
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_23518:
@cfg_label_23516:
	lw r6,r2,$-32
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1226:29;1226:33
	j @cfg_label_23514
@cfg_label_23514:
	li r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	j @cfg_label_23513
@cfg_label_23513:
	push r4
	lw r5,r2,$-24
	push r5
	lw r5,r2,$-28
	push r5
	jal @a_8918shadow_check_and_group
	sw r5,r2,$-20
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	j @cfg_label_23512
@cfg_label_23512:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	j @cfg_label_23511
@cfg_label_23511:
	lw r5,r2,$-20
	lw r6,r2,$-16
	bne r5,r6,@cfg_label_23508
	j @cfg_label_23507
	j @cfg_label_23509
	j @cfg_label_23510
@cfg_label_23509:
@cfg_label_23507:
	lw r5,r31,$16
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1229:6;1229:10
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_23510:
@cfg_label_23508:
	li r5,$1
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1231:39;1231:40
	j @cfg_label_23506
@cfg_label_23506:
	lw r6,r2,$-8
	lw r5,r2,$-12
	add r5,r5,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:36 ../cpuex2017/raytracer/min-rt.ml@1231:39;1231:40
	j @cfg_label_23505
@cfg_label_23505:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-4
	push r5
	jal @a_8921shadow_check_one_or_group
	sw r5,r2,$-68
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1222:2;1232:4 ../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@a_8924shadow_check_one_or_matrix:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$164
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:22 ../cpuex2017/raytracer/min-rt.ml@1237:24;1237:27
	j @cfg_label_23504
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1237:13;1237:22 ../cpuex2017/raytracer/min-rt.ml@1237:24;1237:27
	j @cfg_label_23504
@cfg_label_23504:
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1238:30;1238:31
	j @cfg_label_23503
@cfg_label_23503:
	lw r6,r2,$-160
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1238:24;1238:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1238:24;1238:28 ../cpuex2017/raytracer/min-rt.ml@1238:30;1238:31
	j @cfg_label_23502
@cfg_label_23502:
	li r5,$-1
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1239:23;1239:25
	j @cfg_label_23501
@cfg_label_23501:
	lw r5,r2,$-148
	lw r6,r2,$-156
	bne r5,r6,@cfg_label_23498
	j @cfg_label_23497
	j @cfg_label_23499
	j @cfg_label_23500
@cfg_label_23499:
@cfg_label_23497:
	lw r5,r31,$12
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1240:4;1240:9
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_23500:
@cfg_label_23498:
	li r5,$99
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1243:27;1243:29
	j @cfg_label_23496
@cfg_label_23496:
	lw r5,r2,$-148
	lw r6,r2,$-152
	bne r5,r6,@cfg_label_23455
	j @cfg_label_23454
	j @cfg_label_23456
	j @cfg_label_23457
@cfg_label_23456:
@cfg_label_23454:
	lw r5,r31,$16
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1244:1;1244:5
	j @cfg_label_23491
@cfg_label_23457:
@cfg_label_23455:
	push r4
	lw r5,r31,$316
	push r5
	lw r5,r31,$76
	push r5
	lw r5,r31,$84
	push r5
	lw r5,r2,$-148
	push r5
	jal @a_8852solver_fast
	sw r5,r2,$-144
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1246:9;1246:68 ../cpuex2017/raytracer/min-rt.ml@1246:9;1246:20
	j @cfg_label_23453
@cfg_label_23453:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1249:9;1249:10
	j @cfg_label_23452
@cfg_label_23452:
	lw r6,r2,$-140
	lw r5,r2,$-144
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1249:4;1249:10 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1249:4;1249:5 ../cpuex2017/raytracer/min-rt.ml@1249:9;1249:10
	j @cfg_label_23451
@cfg_label_23451:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1249:4;1249:10
	j @cfg_label_23450
@cfg_label_23450:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_23447
	j @cfg_label_23446
	j @cfg_label_23448
	j @cfg_label_23449
@cfg_label_23449:
@cfg_label_23447:
	lw r5,r31,$12
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1255:6;1255:11
	j @cfg_label_23495
@cfg_label_23448:
@cfg_label_23446:
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1250:32;1250:33
	j @cfg_label_23445
@cfg_label_23445:
	lw r6,r2,$-128
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1250:19;1250:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1250:19;1250:30 ../cpuex2017/raytracer/min-rt.ml@1250:32;1250:33
	j @cfg_label_23444
@cfg_label_23444:
	fmovi f1,$-0.100000
	fst f1,r2,$-120
	j @cfg_label_23443
@cfg_label_23443:
	fld f1,r2,$-124
	fld f2,r2,$-120
	flt f1,f2
	bft @emit_label_26129
	li r5,$0
	j @emit_label_26130
@emit_label_26129:
	li r5,$1
@emit_label_26130:
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1250:13;1250:41 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23442
@cfg_label_23442:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1250:13;1250:41
	j @cfg_label_23441
@cfg_label_23441:
	lw r5,r2,$-116
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_23438
	j @cfg_label_23437
	j @cfg_label_23439
	j @cfg_label_23440
@cfg_label_23440:
@cfg_label_23438:
	lw r5,r31,$12
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1254:8;1254:13
	j @cfg_label_23494
@cfg_label_23439:
@cfg_label_23437:
	li r5,$1
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1251:41;1251:42
	j @cfg_label_23436
@cfg_label_23436:
	lw r6,r2,$-108
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:21 ../cpuex2017/raytracer/min-rt.ml@1222:23;1222:26
	j @cfg_label_23435
@cfg_label_23435:
	li r5,$-1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	j @cfg_label_23434
@cfg_label_23434:
	lw r5,r2,$-100
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_23423
	j @cfg_label_23422
	j @cfg_label_23424
	j @cfg_label_23425
@cfg_label_23424:
@cfg_label_23422:
	lw r5,r31,$12
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47 ::<= ../cpuex2017/raytracer/min-rt.ml@1224:4;1224:9
	j @cfg_label_23431
@cfg_label_23425:
@cfg_label_23423:
	lw r6,r2,$-100
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1226:29;1226:33
	j @cfg_label_23421
@cfg_label_23421:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	j @cfg_label_23420
@cfg_label_23420:
	push r4
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	jal @a_8918shadow_check_and_group
	sw r5,r2,$-88
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	j @cfg_label_23419
@cfg_label_23419:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	j @cfg_label_23418
@cfg_label_23418:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_23415
	j @cfg_label_23414
	j @cfg_label_23416
	j @cfg_label_23417
@cfg_label_23416:
@cfg_label_23414:
	lw r5,r31,$16
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47 ::<= ../cpuex2017/raytracer/min-rt.ml@1229:6;1229:10
	j @cfg_label_23432
@cfg_label_23417:
@cfg_label_23415:
	li r5,$2
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	j @cfg_label_23413
@cfg_label_23413:
	push r4
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-80
	push r5
	jal @a_8921shadow_check_one_or_group
	sw r5,r2,$-76
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47 ../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
	j @cfg_label_23433
@cfg_label_23433:
@cfg_label_23432:
@cfg_label_23431:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1251:15;1251:47
	j @cfg_label_23430
@cfg_label_23430:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_23427
	j @cfg_label_23426
	j @cfg_label_23428
	j @cfg_label_23429
@cfg_label_23428:
@cfg_label_23426:
	lw r5,r31,$16
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1252:14;1252:18
	j @cfg_label_23492
@cfg_label_23429:
@cfg_label_23427:
	lw r5,r31,$12
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1253:10;1253:15
	j @cfg_label_23493
@cfg_label_23495:
@cfg_label_23494:
@cfg_label_23493:
@cfg_label_23492:
@cfg_label_23491:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1243:6;1255:11
	j @cfg_label_23490
@cfg_label_23490:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_23487
	j @cfg_label_23486
	j @cfg_label_23488
	j @cfg_label_23489
@cfg_label_23489:
@cfg_label_23487:
	li r5,$1
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1262:40;1262:41
	j @cfg_label_23485
@cfg_label_23485:
	lw r6,r2,$-8
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1262:34;1262:41 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1262:34;1262:37 ../cpuex2017/raytracer/min-rt.ml@1262:40;1262:41
	j @cfg_label_23484
@cfg_label_23484:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-4
	push r5
	jal @a_8924shadow_check_one_or_matrix
	sw r5,r2,$-164
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ../cpuex2017/raytracer/min-rt.ml@1262:6;1262:32
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_23488:
@cfg_label_23486:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1257:36;1257:37
	j @cfg_label_23483
@cfg_label_23483:
	lw r6,r2,$-60
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1222:13;1222:21 ../cpuex2017/raytracer/min-rt.ml@1222:23;1222:26
	j @cfg_label_23482
@cfg_label_23482:
	li r5,$-1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1223:12;1223:14
	j @cfg_label_23481
@cfg_label_23481:
	lw r5,r2,$-52
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_23468
	j @cfg_label_23467
	j @cfg_label_23469
	j @cfg_label_23470
@cfg_label_23469:
@cfg_label_23467:
	lw r5,r31,$12
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1224:4;1224:9
	j @cfg_label_23478
@cfg_label_23470:
@cfg_label_23468:
	lw r6,r2,$-52
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1226:20;1226:27 ../cpuex2017/raytracer/min-rt.ml@1226:29;1226:33
	j @cfg_label_23466
@cfg_label_23466:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1227:42;1227:43
	j @cfg_label_23465
@cfg_label_23465:
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal @a_8918shadow_check_and_group
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:53 ../cpuex2017/raytracer/min-rt.ml@1227:19;1227:41
	j @cfg_label_23464
@cfg_label_23464:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1228:7;1228:15
	j @cfg_label_23463
@cfg_label_23463:
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_23460
	j @cfg_label_23459
	j @cfg_label_23461
	j @cfg_label_23462
@cfg_label_23461:
@cfg_label_23459:
	lw r5,r31,$16
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1229:6;1229:10
	j @cfg_label_23479
@cfg_label_23462:
@cfg_label_23460:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1231:33;1231:40
	j @cfg_label_23458
@cfg_label_23458:
	push r4
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-32
	push r5
	jal @a_8921shadow_check_one_or_group
	sw r5,r2,$-24
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42 ../cpuex2017/raytracer/min-rt.ml@1231:6;1231:31
	j @cfg_label_23480
@cfg_label_23480:
@cfg_label_23479:
@cfg_label_23478:
	li r5,$1
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1257:10;1257:42
	j @cfg_label_23477
@cfg_label_23477:
	lw r5,r2,$-24
	lw r6,r2,$-20
	bne r5,r6,@cfg_label_23474
	j @cfg_label_23473
	j @cfg_label_23475
	j @cfg_label_23476
@cfg_label_23475:
@cfg_label_23473:
	lw r5,r31,$16
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ::<= ../cpuex2017/raytracer/min-rt.ml@1258:1;1258:5
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_23476:
@cfg_label_23474:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1260:35;1260:36
	j @cfg_label_23472
@cfg_label_23472:
	lw r6,r2,$-16
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1260:29;1260:36 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1260:29;1260:32 ../cpuex2017/raytracer/min-rt.ml@1260:35;1260:36
	j @cfg_label_23471
@cfg_label_23471:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_8924shadow_check_one_or_matrix
	sw r5,r2,$-164
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1237:2;1262:52 ../cpuex2017/raytracer/min-rt.ml@1260:1;1260:27
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@a_8927solve_each_element:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$256
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:22 ../cpuex2017/raytracer/min-rt.ml@1273:24;1273:32
	j @cfg_label_23412
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1273:13;1273:22 ../cpuex2017/raytracer/min-rt.ml@1273:24;1273:32
	j @cfg_label_23412
@cfg_label_23412:
	li r5,$-1
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1274:12;1274:14
	j @cfg_label_23411
@cfg_label_23411:
	lw r5,r2,$-24
	lw r6,r2,$-252
	bne r5,r6,@cfg_label_23408
	j @cfg_label_23407
	j @cfg_label_23409
	j @cfg_label_23410
@cfg_label_23409:
@cfg_label_23407:
	sw r3,r2,$-256
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	lw r5,r2,$-256
	addi r1,r1,$256
	pop r2
	pop r6
	jr r6
@cfg_label_23410:
@cfg_label_23408:
	push r4
	lw r5,r31,$208
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-24
	push r5
	jal @a_8829solver
	sw r5,r2,$-68
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1276:13;1276:38 ../cpuex2017/raytracer/min-rt.ml@1276:13;1276:19
	j @cfg_label_23406
@cfg_label_23406:
	li r5,$0
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@1277:13;1277:14
	j @cfg_label_23405
@cfg_label_23405:
	lw r6,r2,$-248
	lw r5,r2,$-68
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1277:7;1277:14 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1277:7;1277:9 ../cpuex2017/raytracer/min-rt.ml@1277:13;1277:14
	j @cfg_label_23404
@cfg_label_23404:
	li r5,$1
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1277:7;1277:14
	j @cfg_label_23403
@cfg_label_23403:
	lw r5,r2,$-244
	lw r6,r2,$-240
	bne r5,r6,@cfg_label_23400
	j @cfg_label_23399
	j @cfg_label_23401
	j @cfg_label_23402
@cfg_label_23402:
@cfg_label_23400:
	lw r6,r2,$-24
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:28 ../cpuex2017/raytracer/min-rt.ml@1305:30;1305:34
	j @cfg_label_23398
@cfg_label_23398:
	lw r5,r2,$-20
	lw r5,r5,$24
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1305:21;1305:35
	j @cfg_label_23397
@cfg_label_23397:
	li r5,$1
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1305:9;1305:36
	j @cfg_label_23396
@cfg_label_23396:
	lw r5,r2,$-16
	lw r6,r2,$-12
	bne r5,r6,@cfg_label_23393
	j @cfg_label_23392
	j @cfg_label_23394
	j @cfg_label_23395
@cfg_label_23395:
@cfg_label_23393:
	sw r3,r2,$-256
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4
	lw r5,r2,$-256
	addi r1,r1,$256
	pop r2
	pop r6
	jr r6
@cfg_label_23394:
@cfg_label_23392:
	li r5,$1
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1306:32;1306:33
	j @cfg_label_23391
@cfg_label_23391:
	lw r6,r2,$-8
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1306:21;1306:33 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1306:21;1306:29 ../cpuex2017/raytracer/min-rt.ml@1306:32;1306:33
	j @cfg_label_23390
@cfg_label_23390:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-4
	push r5
	jal @a_8927solve_each_element
	sw r5,r2,$-256
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ../cpuex2017/raytracer/min-rt.ml@1306:1;1306:19
	lw r5,r2,$-256
	addi r1,r1,$256
	pop r2
	pop r6
	jr r6
@cfg_label_23401:
@cfg_label_23399:
	li r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@1281:30;1281:31
	j @cfg_label_23389
@cfg_label_23389:
	lw r6,r2,$-236
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1281:17;1281:28 ../cpuex2017/raytracer/min-rt.ml@1281:30;1281:31
	j @cfg_label_23388
@cfg_label_23388:
	fmovi f1,$0.000000
	fst f1,r2,$-232
	j @cfg_label_23387
@cfg_label_23387:
	fld f1,r2,$-232
	fld f2,r2,$-204
	flt f1,f2
	bft @emit_label_26131
	li r5,$0
	j @emit_label_26132
@emit_label_26131:
	li r5,$1
@emit_label_26132:
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@1283:11;1283:24 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23386
@cfg_label_23386:
	li r5,$1
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1283:11;1283:24
	j @cfg_label_23385
@cfg_label_23385:
	lw r5,r2,$-228
	lw r6,r2,$-224
	bne r5,r6,@cfg_label_23375
	j @cfg_label_23374
	j @cfg_label_23376
	j @cfg_label_23377
@cfg_label_23377:
@cfg_label_23375:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_23384
@cfg_label_23376:
@cfg_label_23374:
	li r5,$0
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1284:22;1284:23
	j @cfg_label_23373
@cfg_label_23373:
	lw r6,r2,$-220
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1284:16;1284:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1284:16;1284:20 ../cpuex2017/raytracer/min-rt.ml@1284:22;1284:23
	j @cfg_label_23372
@cfg_label_23372:
	fld f1,r2,$-204
	fld f2,r2,$-216
	flt f1,f2
	bft @emit_label_26133
	li r5,$0
	j @emit_label_26134
@emit_label_26133:
	li r5,$1
@emit_label_26134:
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1284:6;1284:24 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23371
@cfg_label_23371:
	li r5,$1
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1284:6;1284:24
	j @cfg_label_23370
@cfg_label_23370:
	lw r5,r2,$-212
	lw r6,r2,$-208
	bne r5,r6,@cfg_label_23367
	j @cfg_label_23366
	j @cfg_label_23368
	j @cfg_label_23369
@cfg_label_23369:
@cfg_label_23367:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_23383
@cfg_label_23368:
@cfg_label_23366:
	fmovi f1,$0.010000
	fst f1,r2,$-200
	j @cfg_label_23365
@cfg_label_23365:
	fld f1,r2,$-204
	fld f2,r2,$-200
	fadd f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:24 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1286:13;1286:16 ../cpuex2017/raytracer/min-rt.ml@1286:20;1286:24
	j @cfg_label_23364
@cfg_label_23364:
	li r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1287:22;1287:23
	j @cfg_label_23363
@cfg_label_23363:
	lw r6,r2,$-196
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:20 ../cpuex2017/raytracer/min-rt.ml@1287:22;1287:23
	j @cfg_label_23362
@cfg_label_23362:
	fld f1,r2,$-192
	fld f2,r2,$-120
	fmul f1,f1,f2
	fst f1,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:24 ../cpuex2017/raytracer/min-rt.ml@1287:28;1287:29
	j @cfg_label_23361
@cfg_label_23361:
	li r5,$0
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1287:41;1287:42
	j @cfg_label_23360
@cfg_label_23360:
	lw r6,r2,$-188
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1287:33;1287:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1287:33;1287:39 ../cpuex2017/raytracer/min-rt.ml@1287:41;1287:42
	j @cfg_label_23359
@cfg_label_23359:
	fld f1,r2,$-184
	fld f2,r2,$-180
	fadd f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1287:14;1287:29 ../cpuex2017/raytracer/min-rt.ml@1287:33;1287:43
	j @cfg_label_23358
@cfg_label_23358:
	li r5,$1
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1288:22;1288:23
	j @cfg_label_23357
@cfg_label_23357:
	lw r6,r2,$-176
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:20 ../cpuex2017/raytracer/min-rt.ml@1288:22;1288:23
	j @cfg_label_23356
@cfg_label_23356:
	fld f1,r2,$-172
	fld f2,r2,$-120
	fmul f1,f1,f2
	fst f1,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:24 ../cpuex2017/raytracer/min-rt.ml@1288:28;1288:29
	j @cfg_label_23355
@cfg_label_23355:
	li r5,$1
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1288:41;1288:42
	j @cfg_label_23354
@cfg_label_23354:
	lw r6,r2,$-168
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1288:33;1288:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1288:33;1288:39 ../cpuex2017/raytracer/min-rt.ml@1288:41;1288:42
	j @cfg_label_23353
@cfg_label_23353:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fadd f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1288:14;1288:29 ../cpuex2017/raytracer/min-rt.ml@1288:33;1288:43
	j @cfg_label_23352
@cfg_label_23352:
	li r5,$2
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1289:22;1289:23
	j @cfg_label_23351
@cfg_label_23351:
	lw r6,r2,$-156
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:20 ../cpuex2017/raytracer/min-rt.ml@1289:22;1289:23
	j @cfg_label_23350
@cfg_label_23350:
	fld f1,r2,$-152
	fld f2,r2,$-120
	fmul f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:29 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:24 ../cpuex2017/raytracer/min-rt.ml@1289:28;1289:29
	j @cfg_label_23349
@cfg_label_23349:
	li r5,$2
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1289:41;1289:42
	j @cfg_label_23348
@cfg_label_23348:
	lw r6,r2,$-148
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1289:33;1289:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1289:33;1289:39 ../cpuex2017/raytracer/min-rt.ml@1289:41;1289:42
	j @cfg_label_23347
@cfg_label_23347:
	fld f1,r2,$-144
	fld f2,r2,$-140
	fadd f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:43 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1289:14;1289:29 ../cpuex2017/raytracer/min-rt.ml@1289:33;1289:43
	j @cfg_label_23346
@cfg_label_23346:
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1290:25;1290:26
	j @cfg_label_23345
@cfg_label_23345:
	push r4
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-112
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-136
	push r5
	jal @a_8912check_all_inside
	sw r5,r2,$-132
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45 ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:24
	j @cfg_label_23344
@cfg_label_23344:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1290:8;1290:45
	j @cfg_label_23343
@cfg_label_23343:
	lw r5,r2,$-132
	lw r6,r2,$-128
	bne r5,r6,@cfg_label_23340
	j @cfg_label_23339
	j @cfg_label_23341
	j @cfg_label_23342
@cfg_label_23342:
@cfg_label_23340:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14
	j @cfg_label_23382
@cfg_label_23341:
@cfg_label_23339:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1292:8;1292:9
	j @cfg_label_23338
@cfg_label_23338:
	lw r7,r2,$-120
	lw r6,r2,$-124
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1292:2;1292:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1292:2;1292:6 ../cpuex2017/raytracer/min-rt.ml@1292:8;1292:9 ../cpuex2017/raytracer/min-rt.ml@1292:14;1292:15
	j @cfg_label_23337
@cfg_label_23337:
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_23336
@cfg_label_23336:
	lw r7,r2,$-112
	lw r6,r2,$-116
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_23335
@cfg_label_23335:
	li r5,$1
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_23334
@cfg_label_23334:
	lw r7,r2,$-104
	lw r6,r2,$-108
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_23333
@cfg_label_23333:
	li r5,$2
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_23332
@cfg_label_23332:
	lw r7,r2,$-96
	lw r6,r2,$-100
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_23331
@cfg_label_23331:
	lw r5,r2,$-88
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_23330
@cfg_label_23330:
	lw r5,r2,$-80
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1293:2;1293:36 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_23329
@cfg_label_23329:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1294:25;1294:26
	j @cfg_label_23328
@cfg_label_23328:
	lw r7,r2,$-24
	lw r6,r2,$-76
	lw r5,r31,$304
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1294:2;1294:35 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1294:2;1294:23 ../cpuex2017/raytracer/min-rt.ml@1294:25;1294:26 ../cpuex2017/raytracer/min-rt.ml@1294:31;1294:35
	j @cfg_label_23327
@cfg_label_23327:
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1295:19;1295:20
	j @cfg_label_23326
@cfg_label_23326:
	lw r7,r2,$-68
	lw r6,r2,$-72
	lw r5,r31,$340
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1295:2;1295:27 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1295:2;1295:17 ../cpuex2017/raytracer/min-rt.ml@1295:19;1295:20 ../cpuex2017/raytracer/min-rt.ml@1295:25;1295:27
	j @cfg_label_23325
@cfg_label_23325:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1294:2;1295:27 ::<= ../cpuex2017/raytracer/min-rt.ml@1295:2;1295:27
	j @cfg_label_23324
@cfg_label_23324:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1293:2;1295:27 ::<= ../cpuex2017/raytracer/min-rt.ml@1294:2;1295:27
	j @cfg_label_23323
@cfg_label_23323:
	lw r5,r2,$-44
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1283:7;1300:14 ::<= ../cpuex2017/raytracer/min-rt.ml@1293:2;1295:27
	j @cfg_label_23381
@cfg_label_23384:
@cfg_label_23383:
@cfg_label_23382:
@cfg_label_23381:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1301:38;1301:39
	j @cfg_label_23380
@cfg_label_23380:
	lw r6,r2,$-40
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1301:27;1301:39 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1301:27;1301:35 ../cpuex2017/raytracer/min-rt.ml@1301:38;1301:39
	j @cfg_label_23379
@cfg_label_23379:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-36
	push r5
	jal @a_8927solve_each_element
	sw r5,r2,$-28
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1301:7;1301:57 ../cpuex2017/raytracer/min-rt.ml@1301:7;1301:25
	j @cfg_label_23378
@cfg_label_23378:
	lw r5,r2,$-28
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1273:2;1309:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1301:7;1301:57
	lw r5,r2,$-256
	addi r1,r1,$256
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-256
	addi r1,r1,$256
	pop r2
	pop r6
	jr r6
@a_8931solve_one_or_network:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$84
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:21 ../cpuex2017/raytracer/min-rt.ml@1314:23;1314:26
	j @cfg_label_23322
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:21 ../cpuex2017/raytracer/min-rt.ml@1314:23;1314:26
	j @cfg_label_23322
@cfg_label_23322:
	li r5,$-1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23321
@cfg_label_23321:
	lw r6,r2,$-80
	lw r5,r2,$-68
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:9 ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23320
@cfg_label_23320:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15
	j @cfg_label_23319
@cfg_label_23319:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_23316
	j @cfg_label_23315
	j @cfg_label_23317
	j @cfg_label_23318
@cfg_label_23318:
@cfg_label_23316:
	sw r3,r2,$-84
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12
	lw r5,r2,$-84
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
@cfg_label_23317:
@cfg_label_23315:
	lw r6,r2,$-68
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1316:29;1316:33
	j @cfg_label_23314
@cfg_label_23314:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	j @cfg_label_23313
@cfg_label_23313:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	jal @a_8927solve_each_element
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	j @cfg_label_23312
@cfg_label_23312:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1318:32;1318:33
	j @cfg_label_23311
@cfg_label_23311:
	lw r6,r2,$-56
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:29 ../cpuex2017/raytracer/min-rt.ml@1318:32;1318:33
	j @cfg_label_23310
@cfg_label_23310:
	lw r6,r2,$-28
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:21 ../cpuex2017/raytracer/min-rt.ml@1314:23;1314:26
	j @cfg_label_23309
@cfg_label_23309:
	li r5,$-1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23308
@cfg_label_23308:
	lw r6,r2,$-52
	lw r5,r2,$-40
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:9 ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23307
@cfg_label_23307:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15
	j @cfg_label_23306
@cfg_label_23306:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_23301
	j @cfg_label_23300
	j @cfg_label_23302
	j @cfg_label_23303
@cfg_label_23303:
@cfg_label_23301:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50
	j @cfg_label_23305
@cfg_label_23302:
@cfg_label_23300:
	lw r6,r2,$-40
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1316:29;1316:33
	j @cfg_label_23299
@cfg_label_23299:
	li r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	j @cfg_label_23298
@cfg_label_23298:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	jal @a_8927solve_each_element
	sw r5,r2,$-16
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	j @cfg_label_23297
@cfg_label_23297:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1318:32;1318:33
	j @cfg_label_23296
@cfg_label_23296:
	lw r6,r2,$-24
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:29 ../cpuex2017/raytracer/min-rt.ml@1318:32;1318:33
	j @cfg_label_23295
@cfg_label_23295:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_8931solve_one_or_network
	sw r5,r2,$-12
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50 ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
	j @cfg_label_23294
@cfg_label_23294:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50 ::<= ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50
	j @cfg_label_23304
@cfg_label_23305:
@cfg_label_23304:
	lw r5,r2,$-4
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1314:2;1319:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50
	lw r5,r2,$-84
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-84
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
@a_8935trace_or_matrix:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$160
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:23 ../cpuex2017/raytracer/min-rt.ml@1324:25;1324:28
	j @cfg_label_23293
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1324:13;1324:23 ../cpuex2017/raytracer/min-rt.ml@1324:25;1324:28
	j @cfg_label_23293
@cfg_label_23293:
	li r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1325:30;1325:31
	j @cfg_label_23292
@cfg_label_23292:
	lw r6,r2,$-156
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1325:24;1325:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1325:24;1325:28 ../cpuex2017/raytracer/min-rt.ml@1325:30;1325:31
	j @cfg_label_23291
@cfg_label_23291:
	li r5,$-1
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1326:23;1326:25
	j @cfg_label_23290
@cfg_label_23290:
	lw r5,r2,$-104
	lw r6,r2,$-152
	bne r5,r6,@cfg_label_23287
	j @cfg_label_23286
	j @cfg_label_23288
	j @cfg_label_23289
@cfg_label_23288:
@cfg_label_23286:
	sw r3,r2,$-160
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@cfg_label_23289:
@cfg_label_23287:
	li r5,$99
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1329:25;1329:27
	j @cfg_label_23285
@cfg_label_23285:
	lw r5,r2,$-104
	lw r6,r2,$-148
	bne r5,r6,@cfg_label_23273
	j @cfg_label_23272
	j @cfg_label_23274
	j @cfg_label_23275
@cfg_label_23275:
@cfg_label_23273:
	push r4
	lw r5,r31,$208
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-104
	push r5
	jal @a_8829solver
	sw r5,r2,$-100
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1334:15;1334:51 ../cpuex2017/raytracer/min-rt.ml@1334:15;1334:21
	j @cfg_label_23271
@cfg_label_23271:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1335:15;1335:16
	j @cfg_label_23270
@cfg_label_23270:
	lw r6,r2,$-96
	lw r5,r2,$-100
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1335:10;1335:16 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1335:10;1335:11 ../cpuex2017/raytracer/min-rt.ml@1335:15;1335:16
	j @cfg_label_23269
@cfg_label_23269:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1335:10;1335:16
	j @cfg_label_23268
@cfg_label_23268:
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_23265
	j @cfg_label_23264
	j @cfg_label_23266
	j @cfg_label_23267
@cfg_label_23267:
@cfg_label_23265:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_23284
@cfg_label_23266:
@cfg_label_23264:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1336:24;1336:25
	j @cfg_label_23263
@cfg_label_23263:
	lw r6,r2,$-84
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1336:11;1336:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1336:11;1336:22 ../cpuex2017/raytracer/min-rt.ml@1336:24;1336:25
	j @cfg_label_23262
@cfg_label_23262:
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1337:20;1337:21
	j @cfg_label_23261
@cfg_label_23261:
	lw r6,r2,$-80
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1337:14;1337:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1337:14;1337:18 ../cpuex2017/raytracer/min-rt.ml@1337:20;1337:21
	j @cfg_label_23260
@cfg_label_23260:
	fld f1,r2,$-76
	fld f2,r2,$-72
	flt f1,f2
	bft @emit_label_26135
	li r5,$0
	j @emit_label_26136
@emit_label_26135:
	li r5,$1
@emit_label_26136:
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1337:5;1337:22 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23259
@cfg_label_23259:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1337:5;1337:22
	j @cfg_label_23258
@cfg_label_23258:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_23255
	j @cfg_label_23254
	j @cfg_label_23256
	j @cfg_label_23257
@cfg_label_23257:
@cfg_label_23255:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_23283
@cfg_label_23256:
@cfg_label_23254:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1338:29;1338:30
	j @cfg_label_23253
@cfg_label_23253:
	lw r6,r2,$-60
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:21 ../cpuex2017/raytracer/min-rt.ml@1314:23;1314:26
	j @cfg_label_23252
@cfg_label_23252:
	li r5,$-1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23251
@cfg_label_23251:
	lw r6,r2,$-56
	lw r5,r2,$-44
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:9 ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23250
@cfg_label_23250:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15
	j @cfg_label_23249
@cfg_label_23249:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_23246
	j @cfg_label_23245
	j @cfg_label_23247
	j @cfg_label_23248
@cfg_label_23248:
@cfg_label_23246:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_23282
@cfg_label_23247:
@cfg_label_23245:
	lw r6,r2,$-44
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1316:29;1316:33
	j @cfg_label_23244
@cfg_label_23244:
	li r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	j @cfg_label_23243
@cfg_label_23243:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	jal @a_8927solve_each_element
	sw r5,r2,$-24
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	j @cfg_label_23242
@cfg_label_23242:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	j @cfg_label_23241
@cfg_label_23241:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-32
	push r5
	jal @a_8931solve_one_or_network
	sw r5,r2,$-20
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50 ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
	j @cfg_label_23240
@cfg_label_23240:
	lw r5,r2,$-20
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50
	j @cfg_label_23281
@cfg_label_23274:
@cfg_label_23272:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1330:31;1330:32
	j @cfg_label_23239
@cfg_label_23239:
	lw r6,r2,$-144
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1314:13;1314:21 ../cpuex2017/raytracer/min-rt.ml@1314:23;1314:26
	j @cfg_label_23238
@cfg_label_23238:
	li r5,$-1
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23237
@cfg_label_23237:
	lw r6,r2,$-140
	lw r5,r2,$-128
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:9 ../cpuex2017/raytracer/min-rt.ml@1315:13;1315:15
	j @cfg_label_23236
@cfg_label_23236:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1315:5;1315:15
	j @cfg_label_23235
@cfg_label_23235:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_23232
	j @cfg_label_23231
	j @cfg_label_23233
	j @cfg_label_23234
@cfg_label_23234:
@cfg_label_23232:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7
	j @cfg_label_23280
@cfg_label_23233:
@cfg_label_23231:
	lw r6,r2,$-128
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1316:20;1316:27 ../cpuex2017/raytracer/min-rt.ml@1316:29;1316:33
	j @cfg_label_23230
@cfg_label_23230:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1317:23;1317:24
	j @cfg_label_23229
@cfg_label_23229:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	jal @a_8927solve_each_element
	sw r5,r2,$-112
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:41 ../cpuex2017/raytracer/min-rt.ml@1317:4;1317:22
	j @cfg_label_23228
@cfg_label_23228:
	li r5,$2
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1318:26;1318:33
	j @cfg_label_23227
@cfg_label_23227:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-116
	push r5
	jal @a_8931solve_one_or_network
	sw r5,r2,$-108
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50 ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:24
	j @cfg_label_23226
@cfg_label_23226:
	lw r5,r2,$-108
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1329:4;1341:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1318:4;1318:50
	j @cfg_label_23279
@cfg_label_23284:
@cfg_label_23283:
@cfg_label_23282:
@cfg_label_23281:
@cfg_label_23280:
@cfg_label_23279:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1342:27;1342:28
	j @cfg_label_23278
@cfg_label_23278:
	lw r6,r2,$-16
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1342:21;1342:28 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1342:21;1342:24 ../cpuex2017/raytracer/min-rt.ml@1342:27;1342:28
	j @cfg_label_23277
@cfg_label_23277:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_8935trace_or_matrix
	sw r5,r2,$-4
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1342:4;1342:47 ../cpuex2017/raytracer/min-rt.ml@1342:4;1342:19
	j @cfg_label_23276
@cfg_label_23276:
	lw r5,r2,$-4
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1324:2;1343:3 ::<= ../cpuex2017/raytracer/min-rt.ml@1342:4;1342:47
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@a_8939judge_intersection:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9
	j @cfg_label_23225
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9
	j @cfg_label_23225
@cfg_label_23225:
	fmovi f1,$1000000000.000000
	fst f1,r2,$-56
	j @cfg_label_23224
@cfg_label_23224:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1351:2;1351:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1351:2;1351:6 ../cpuex2017/raytracer/min-rt.ml@1351:8;1351:9 ../cpuex2017/raytracer/min-rt.ml@1351:15;1351:27
	j @cfg_label_23223
@cfg_label_23223:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1352:18;1352:19
	j @cfg_label_23222
@cfg_label_23222:
	li r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1352:29;1352:30
	j @cfg_label_23221
@cfg_label_23221:
	lw r6,r2,$-52
	lw r5,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1352:21;1352:27 ../cpuex2017/raytracer/min-rt.ml@1352:29;1352:30
	j @cfg_label_23220
@cfg_label_23220:
	push r4
	lw r5,r2,$8
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal @a_8935trace_or_matrix
	sw r5,r2,$-16
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1352:2;1352:39 ../cpuex2017/raytracer/min-rt.ml@1352:2;1352:17
	j @cfg_label_23219
@cfg_label_23219:
	li r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1353:16;1353:17
	j @cfg_label_23218
@cfg_label_23218:
	lw r6,r2,$-40
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1353:10;1353:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1353:10;1353:14 ../cpuex2017/raytracer/min-rt.ml@1353:16;1353:17
	j @cfg_label_23217
@cfg_label_23217:
	fmovi f1,$-0.100000
	fst f1,r2,$-36
	j @cfg_label_23216
@cfg_label_23216:
	fld f1,r2,$-36
	fld f2,r2,$-24
	flt f1,f2
	bft @emit_label_26137
	li r5,$0
	j @emit_label_26138
@emit_label_26137:
	li r5,$1
@emit_label_26138:
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1355:6;1355:20 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23215
@cfg_label_23215:
	li r5,$1
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1355:6;1355:20
	j @cfg_label_23214
@cfg_label_23214:
	lw r5,r2,$-32
	lw r6,r2,$-28
	bne r5,r6,@cfg_label_23208
	j @cfg_label_23207
	j @cfg_label_23209
	j @cfg_label_23210
@cfg_label_23210:
@cfg_label_23208:
	lw r5,r31,$12
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1353:2;1357:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1357:7;1357:12
	j @cfg_label_23213
@cfg_label_23209:
@cfg_label_23207:
	fmovi f1,$100000000.000000
	fst f1,r2,$-20
	j @cfg_label_23206
@cfg_label_23206:
	fld f1,r2,$-24
	fld f2,r2,$-20
	flt f1,f2
	bft @emit_label_26139
	li r5,$0
	j @emit_label_26140
@emit_label_26139:
	li r5,$1
@emit_label_26140:
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1353:2;1357:12 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23212
@cfg_label_23213:
@cfg_label_23212:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1352:2;1357:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1353:2;1357:12
	j @cfg_label_23211
@cfg_label_23211:
	lw r5,r2,$-4
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1351:2;1357:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1352:2;1357:12
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
@a_8941solve_each_element_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$260
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:22 ../cpuex2017/raytracer/min-rt.ml@1367:24;1367:32
	j @cfg_label_23205
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1367:13;1367:22 ../cpuex2017/raytracer/min-rt.ml@1367:24;1367:32
	j @cfg_label_23205
@cfg_label_23205:
	li r5,$-1
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1368:12;1368:14
	j @cfg_label_23204
@cfg_label_23204:
	lw r5,r2,$-24
	lw r6,r2,$-256
	bne r5,r6,@cfg_label_23201
	j @cfg_label_23200
	j @cfg_label_23202
	j @cfg_label_23203
@cfg_label_23202:
@cfg_label_23200:
	sw r3,r2,$-260
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	lw r5,r2,$-260
	addi r1,r1,$260
	pop r2
	pop r6
	jr r6
@cfg_label_23203:
@cfg_label_23201:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-24
	push r5
	jal @a_8870solver_fast2
	sw r5,r2,$-72
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:37 ../cpuex2017/raytracer/min-rt.ml@1370:13;1370:25
	j @cfg_label_23199
@cfg_label_23199:
	li r5,$0
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1371:13;1371:14
	j @cfg_label_23198
@cfg_label_23198:
	lw r6,r2,$-252
	lw r5,r2,$-72
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@1371:7;1371:14 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1371:7;1371:9 ../cpuex2017/raytracer/min-rt.ml@1371:13;1371:14
	j @cfg_label_23197
@cfg_label_23197:
	li r5,$1
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1371:7;1371:14
	j @cfg_label_23196
@cfg_label_23196:
	lw r5,r2,$-248
	lw r6,r2,$-244
	bne r5,r6,@cfg_label_23193
	j @cfg_label_23192
	j @cfg_label_23194
	j @cfg_label_23195
@cfg_label_23195:
@cfg_label_23193:
	lw r6,r2,$-24
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1399:22;1399:29 ../cpuex2017/raytracer/min-rt.ml@1399:31;1399:35
	j @cfg_label_23191
@cfg_label_23191:
	lw r5,r2,$-20
	lw r5,r5,$24
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1399:22;1399:36
	j @cfg_label_23190
@cfg_label_23190:
	li r5,$1
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1399:10;1399:37
	j @cfg_label_23189
@cfg_label_23189:
	lw r5,r2,$-16
	lw r6,r2,$-12
	bne r5,r6,@cfg_label_23186
	j @cfg_label_23185
	j @cfg_label_23187
	j @cfg_label_23188
@cfg_label_23188:
@cfg_label_23186:
	sw r3,r2,$-260
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4
	lw r5,r2,$-260
	addi r1,r1,$260
	pop r2
	pop r6
	jr r6
@cfg_label_23187:
@cfg_label_23185:
	li r5,$1
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1400:38;1400:39
	j @cfg_label_23184
@cfg_label_23184:
	lw r6,r2,$-8
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1400:27;1400:39 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1400:27;1400:35 ../cpuex2017/raytracer/min-rt.ml@1400:38;1400:39
	j @cfg_label_23183
@cfg_label_23183:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-4
	push r5
	jal @a_8941solve_each_element_fast
	sw r5,r2,$-260
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ../cpuex2017/raytracer/min-rt.ml@1400:2;1400:25
	lw r5,r2,$-260
	addi r1,r1,$260
	pop r2
	pop r6
	jr r6
@cfg_label_23194:
@cfg_label_23192:
	li r5,$0
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1375:30;1375:31
	j @cfg_label_23182
@cfg_label_23182:
	lw r6,r2,$-240
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1375:17;1375:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1375:17;1375:28 ../cpuex2017/raytracer/min-rt.ml@1375:30;1375:31
	j @cfg_label_23181
@cfg_label_23181:
	fmovi f1,$0.000000
	fst f1,r2,$-236
	j @cfg_label_23180
@cfg_label_23180:
	fld f1,r2,$-236
	fld f2,r2,$-208
	flt f1,f2
	bft @emit_label_26141
	li r5,$0
	j @emit_label_26142
@emit_label_26141:
	li r5,$1
@emit_label_26142:
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@1377:11;1377:24 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23179
@cfg_label_23179:
	li r5,$1
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@1377:11;1377:24
	j @cfg_label_23178
@cfg_label_23178:
	lw r5,r2,$-232
	lw r6,r2,$-228
	bne r5,r6,@cfg_label_23168
	j @cfg_label_23167
	j @cfg_label_23169
	j @cfg_label_23170
@cfg_label_23170:
@cfg_label_23168:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_23177
@cfg_label_23169:
@cfg_label_23167:
	li r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1378:22;1378:23
	j @cfg_label_23166
@cfg_label_23166:
	lw r6,r2,$-224
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1378:16;1378:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1378:16;1378:20 ../cpuex2017/raytracer/min-rt.ml@1378:22;1378:23
	j @cfg_label_23165
@cfg_label_23165:
	fld f1,r2,$-208
	fld f2,r2,$-220
	flt f1,f2
	bft @emit_label_26143
	li r5,$0
	j @emit_label_26144
@emit_label_26143:
	li r5,$1
@emit_label_26144:
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1378:6;1378:24 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23164
@cfg_label_23164:
	li r5,$1
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1378:6;1378:24
	j @cfg_label_23163
@cfg_label_23163:
	lw r5,r2,$-216
	lw r6,r2,$-212
	bne r5,r6,@cfg_label_23160
	j @cfg_label_23159
	j @cfg_label_23161
	j @cfg_label_23162
@cfg_label_23162:
@cfg_label_23160:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_23176
@cfg_label_23161:
@cfg_label_23159:
	fmovi f1,$0.010000
	fst f1,r2,$-204
	j @cfg_label_23158
@cfg_label_23158:
	fld f1,r2,$-208
	fld f2,r2,$-204
	fadd f1,f1,f2
	fst f1,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:24 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1380:13;1380:16 ../cpuex2017/raytracer/min-rt.ml@1380:20;1380:24
	j @cfg_label_23157
@cfg_label_23157:
	li r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@1381:19;1381:20
	j @cfg_label_23156
@cfg_label_23156:
	lw r6,r2,$-200
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:17 ../cpuex2017/raytracer/min-rt.ml@1381:19;1381:20
	j @cfg_label_23155
@cfg_label_23155:
	fld f1,r2,$-196
	fld f2,r2,$-124
	fmul f1,f1,f2
	fst f1,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:21 ../cpuex2017/raytracer/min-rt.ml@1381:25;1381:26
	j @cfg_label_23154
@cfg_label_23154:
	li r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1381:43;1381:44
	j @cfg_label_23153
@cfg_label_23153:
	lw r6,r2,$-192
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:45 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:41 ../cpuex2017/raytracer/min-rt.ml@1381:43;1381:44
	j @cfg_label_23152
@cfg_label_23152:
	fld f1,r2,$-188
	fld f2,r2,$-184
	fadd f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1381:14;1381:26 ../cpuex2017/raytracer/min-rt.ml@1381:30;1381:45
	j @cfg_label_23151
@cfg_label_23151:
	li r5,$1
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1382:19;1382:20
	j @cfg_label_23150
@cfg_label_23150:
	lw r6,r2,$-180
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:17 ../cpuex2017/raytracer/min-rt.ml@1382:19;1382:20
	j @cfg_label_23149
@cfg_label_23149:
	fld f1,r2,$-176
	fld f2,r2,$-124
	fmul f1,f1,f2
	fst f1,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:21 ../cpuex2017/raytracer/min-rt.ml@1382:25;1382:26
	j @cfg_label_23148
@cfg_label_23148:
	li r5,$1
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1382:43;1382:44
	j @cfg_label_23147
@cfg_label_23147:
	lw r6,r2,$-172
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1382:30;1382:45 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1382:30;1382:41 ../cpuex2017/raytracer/min-rt.ml@1382:43;1382:44
	j @cfg_label_23146
@cfg_label_23146:
	fld f1,r2,$-168
	fld f2,r2,$-164
	fadd f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1382:14;1382:26 ../cpuex2017/raytracer/min-rt.ml@1382:30;1382:45
	j @cfg_label_23145
@cfg_label_23145:
	li r5,$2
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1383:19;1383:20
	j @cfg_label_23144
@cfg_label_23144:
	lw r6,r2,$-160
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:17 ../cpuex2017/raytracer/min-rt.ml@1383:19;1383:20
	j @cfg_label_23143
@cfg_label_23143:
	fld f1,r2,$-156
	fld f2,r2,$-124
	fmul f1,f1,f2
	fst f1,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:26 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:21 ../cpuex2017/raytracer/min-rt.ml@1383:25;1383:26
	j @cfg_label_23142
@cfg_label_23142:
	li r5,$2
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1383:43;1383:44
	j @cfg_label_23141
@cfg_label_23141:
	lw r6,r2,$-152
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1383:30;1383:45 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1383:30;1383:41 ../cpuex2017/raytracer/min-rt.ml@1383:43;1383:44
	j @cfg_label_23140
@cfg_label_23140:
	fld f1,r2,$-148
	fld f2,r2,$-144
	fadd f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:45 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1383:14;1383:26 ../cpuex2017/raytracer/min-rt.ml@1383:30;1383:45
	j @cfg_label_23139
@cfg_label_23139:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1384:25;1384:26
	j @cfg_label_23138
@cfg_label_23138:
	push r4
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-116
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-140
	push r5
	jal @a_8912check_all_inside
	sw r5,r2,$-136
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45 ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:24
	j @cfg_label_23137
@cfg_label_23137:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1384:8;1384:45
	j @cfg_label_23136
@cfg_label_23136:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_23133
	j @cfg_label_23132
	j @cfg_label_23134
	j @cfg_label_23135
@cfg_label_23135:
@cfg_label_23133:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14
	j @cfg_label_23175
@cfg_label_23134:
@cfg_label_23132:
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1386:8;1386:9
	j @cfg_label_23131
@cfg_label_23131:
	lw r7,r2,$-124
	lw r6,r2,$-128
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1386:2;1386:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1386:2;1386:6 ../cpuex2017/raytracer/min-rt.ml@1386:8;1386:9 ../cpuex2017/raytracer/min-rt.ml@1386:14;1386:15
	j @cfg_label_23130
@cfg_label_23130:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_23129
@cfg_label_23129:
	lw r7,r2,$-116
	lw r6,r2,$-120
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_23128
@cfg_label_23128:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_23127
@cfg_label_23127:
	lw r7,r2,$-108
	lw r6,r2,$-112
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_23126
@cfg_label_23126:
	li r5,$2
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_23125
@cfg_label_23125:
	lw r7,r2,$-100
	lw r6,r2,$-104
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_23124
@cfg_label_23124:
	lw r5,r2,$-92
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_23123
@cfg_label_23123:
	lw r5,r2,$-84
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1387:2;1387:36 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_23122
@cfg_label_23122:
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1388:25;1388:26
	j @cfg_label_23121
@cfg_label_23121:
	lw r7,r2,$-24
	lw r6,r2,$-80
	lw r5,r31,$304
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1388:2;1388:35 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1388:2;1388:23 ../cpuex2017/raytracer/min-rt.ml@1388:25;1388:26 ../cpuex2017/raytracer/min-rt.ml@1388:31;1388:35
	j @cfg_label_23120
@cfg_label_23120:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1389:19;1389:20
	j @cfg_label_23119
@cfg_label_23119:
	lw r7,r2,$-72
	lw r6,r2,$-76
	lw r5,r31,$340
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:27 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:17 ../cpuex2017/raytracer/min-rt.ml@1389:19;1389:20 ../cpuex2017/raytracer/min-rt.ml@1389:25;1389:27
	j @cfg_label_23118
@cfg_label_23118:
	lw r5,r2,$-68
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:27
	j @cfg_label_23117
@cfg_label_23117:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1388:2;1389:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1389:2;1389:28
	j @cfg_label_23116
@cfg_label_23116:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1387:2;1389:28 ::<= ../cpuex2017/raytracer/min-rt.ml@1388:2;1389:28
	j @cfg_label_23115
@cfg_label_23115:
	lw r5,r2,$-44
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1377:7;1394:14 ::<= ../cpuex2017/raytracer/min-rt.ml@1387:2;1389:28
	j @cfg_label_23174
@cfg_label_23177:
@cfg_label_23176:
@cfg_label_23175:
@cfg_label_23174:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1395:43;1395:44
	j @cfg_label_23173
@cfg_label_23173:
	lw r6,r2,$-40
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1395:32;1395:44 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1395:32;1395:40 ../cpuex2017/raytracer/min-rt.ml@1395:43;1395:44
	j @cfg_label_23172
@cfg_label_23172:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-36
	push r5
	jal @a_8941solve_each_element_fast
	sw r5,r2,$-28
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1395:7;1395:62 ../cpuex2017/raytracer/min-rt.ml@1395:7;1395:30
	j @cfg_label_23171
@cfg_label_23171:
	lw r5,r2,$-28
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@1366:2;1402:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1395:7;1395:62
	lw r5,r2,$-260
	addi r1,r1,$260
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-260
	addi r1,r1,$260
	pop r2
	pop r6
	jr r6
@a_8945solve_one_or_network_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$84
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:21 ../cpuex2017/raytracer/min-rt.ml@1407:23;1407:26
	j @cfg_label_23114
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:21 ../cpuex2017/raytracer/min-rt.ml@1407:23;1407:26
	j @cfg_label_23114
@cfg_label_23114:
	li r5,$-1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23113
@cfg_label_23113:
	lw r6,r2,$-80
	lw r5,r2,$-68
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:9 ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23112
@cfg_label_23112:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15
	j @cfg_label_23111
@cfg_label_23111:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_23108
	j @cfg_label_23107
	j @cfg_label_23109
	j @cfg_label_23110
@cfg_label_23110:
@cfg_label_23108:
	sw r3,r2,$-84
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12
	lw r5,r2,$-84
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
@cfg_label_23109:
@cfg_label_23107:
	lw r6,r2,$-68
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1409:29;1409:33
	j @cfg_label_23106
@cfg_label_23106:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	j @cfg_label_23105
@cfg_label_23105:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	jal @a_8941solve_each_element_fast
	sw r5,r2,$-8
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	j @cfg_label_23104
@cfg_label_23104:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1411:37;1411:38
	j @cfg_label_23103
@cfg_label_23103:
	lw r6,r2,$-56
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:34 ../cpuex2017/raytracer/min-rt.ml@1411:37;1411:38
	j @cfg_label_23102
@cfg_label_23102:
	lw r6,r2,$-28
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:21 ../cpuex2017/raytracer/min-rt.ml@1407:23;1407:26
	j @cfg_label_23101
@cfg_label_23101:
	li r5,$-1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23100
@cfg_label_23100:
	lw r6,r2,$-52
	lw r5,r2,$-40
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:9 ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23099
@cfg_label_23099:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15
	j @cfg_label_23098
@cfg_label_23098:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_23093
	j @cfg_label_23092
	j @cfg_label_23094
	j @cfg_label_23095
@cfg_label_23095:
@cfg_label_23093:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55
	j @cfg_label_23097
@cfg_label_23094:
@cfg_label_23092:
	lw r6,r2,$-40
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1409:29;1409:33
	j @cfg_label_23091
@cfg_label_23091:
	li r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	j @cfg_label_23090
@cfg_label_23090:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	jal @a_8941solve_each_element_fast
	sw r5,r2,$-16
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	j @cfg_label_23089
@cfg_label_23089:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1411:37;1411:38
	j @cfg_label_23088
@cfg_label_23088:
	lw r6,r2,$-24
	lw r5,r2,$-28
	add r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:34 ../cpuex2017/raytracer/min-rt.ml@1411:37;1411:38
	j @cfg_label_23087
@cfg_label_23087:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_8945solve_one_or_network_fast
	sw r5,r2,$-12
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55 ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
	j @cfg_label_23086
@cfg_label_23086:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55 ::<= ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55
	j @cfg_label_23096
@cfg_label_23097:
@cfg_label_23096:
	lw r5,r2,$-4
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1407:2;1412:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55
	lw r5,r2,$-84
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-84
	addi r1,r1,$84
	pop r2
	pop r6
	jr r6
@a_8949trace_or_matrix_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$160
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:23 ../cpuex2017/raytracer/min-rt.ml@1417:25;1417:28
	j @cfg_label_23085
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1417:13;1417:23 ../cpuex2017/raytracer/min-rt.ml@1417:25;1417:28
	j @cfg_label_23085
@cfg_label_23085:
	li r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1418:30;1418:31
	j @cfg_label_23084
@cfg_label_23084:
	lw r6,r2,$-156
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1418:24;1418:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1418:24;1418:28 ../cpuex2017/raytracer/min-rt.ml@1418:30;1418:31
	j @cfg_label_23083
@cfg_label_23083:
	li r5,$-1
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1419:23;1419:25
	j @cfg_label_23082
@cfg_label_23082:
	lw r5,r2,$-104
	lw r6,r2,$-152
	bne r5,r6,@cfg_label_23079
	j @cfg_label_23078
	j @cfg_label_23080
	j @cfg_label_23081
@cfg_label_23080:
@cfg_label_23078:
	sw r3,r2,$-160
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@cfg_label_23081:
@cfg_label_23079:
	li r5,$99
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1422:25;1422:27
	j @cfg_label_23077
@cfg_label_23077:
	lw r5,r2,$-104
	lw r6,r2,$-148
	bne r5,r6,@cfg_label_23065
	j @cfg_label_23064
	j @cfg_label_23066
	j @cfg_label_23067
@cfg_label_23067:
@cfg_label_23065:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-104
	push r5
	jal @a_8870solver_fast2
	sw r5,r2,$-100
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1427:15;1427:50 ../cpuex2017/raytracer/min-rt.ml@1427:15;1427:27
	j @cfg_label_23063
@cfg_label_23063:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1428:15;1428:16
	j @cfg_label_23062
@cfg_label_23062:
	lw r6,r2,$-96
	lw r5,r2,$-100
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1428:10;1428:16 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1428:10;1428:11 ../cpuex2017/raytracer/min-rt.ml@1428:15;1428:16
	j @cfg_label_23061
@cfg_label_23061:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1428:10;1428:16
	j @cfg_label_23060
@cfg_label_23060:
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_23057
	j @cfg_label_23056
	j @cfg_label_23058
	j @cfg_label_23059
@cfg_label_23059:
@cfg_label_23057:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_23076
@cfg_label_23058:
@cfg_label_23056:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1429:24;1429:25
	j @cfg_label_23055
@cfg_label_23055:
	lw r6,r2,$-84
	lw r5,r31,$352
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1429:11;1429:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1429:11;1429:22 ../cpuex2017/raytracer/min-rt.ml@1429:24;1429:25
	j @cfg_label_23054
@cfg_label_23054:
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1430:20;1430:21
	j @cfg_label_23053
@cfg_label_23053:
	lw r6,r2,$-80
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1430:14;1430:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1430:14;1430:18 ../cpuex2017/raytracer/min-rt.ml@1430:20;1430:21
	j @cfg_label_23052
@cfg_label_23052:
	fld f1,r2,$-76
	fld f2,r2,$-72
	flt f1,f2
	bft @emit_label_26145
	li r5,$0
	j @emit_label_26146
@emit_label_26145:
	li r5,$1
@emit_label_26146:
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1430:5;1430:22 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23051
@cfg_label_23051:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1430:5;1430:22
	j @cfg_label_23050
@cfg_label_23050:
	lw r5,r2,$-68
	lw r6,r2,$-64
	bne r5,r6,@cfg_label_23047
	j @cfg_label_23046
	j @cfg_label_23048
	j @cfg_label_23049
@cfg_label_23049:
@cfg_label_23047:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_23075
@cfg_label_23048:
@cfg_label_23046:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1431:34;1431:35
	j @cfg_label_23045
@cfg_label_23045:
	lw r6,r2,$-60
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:21 ../cpuex2017/raytracer/min-rt.ml@1407:23;1407:26
	j @cfg_label_23044
@cfg_label_23044:
	li r5,$-1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23043
@cfg_label_23043:
	lw r6,r2,$-56
	lw r5,r2,$-44
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:9 ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23042
@cfg_label_23042:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15
	j @cfg_label_23041
@cfg_label_23041:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_23038
	j @cfg_label_23037
	j @cfg_label_23039
	j @cfg_label_23040
@cfg_label_23040:
@cfg_label_23038:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_23074
@cfg_label_23039:
@cfg_label_23037:
	lw r6,r2,$-44
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1409:29;1409:33
	j @cfg_label_23036
@cfg_label_23036:
	li r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	j @cfg_label_23035
@cfg_label_23035:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	jal @a_8941solve_each_element_fast
	sw r5,r2,$-24
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	j @cfg_label_23034
@cfg_label_23034:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	j @cfg_label_23033
@cfg_label_23033:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-32
	push r5
	jal @a_8945solve_one_or_network_fast
	sw r5,r2,$-20
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55 ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
	j @cfg_label_23032
@cfg_label_23032:
	lw r5,r2,$-20
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55
	j @cfg_label_23073
@cfg_label_23066:
@cfg_label_23064:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1423:35;1423:36
	j @cfg_label_23031
@cfg_label_23031:
	lw r6,r2,$-144
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1407:13;1407:21 ../cpuex2017/raytracer/min-rt.ml@1407:23;1407:26
	j @cfg_label_23030
@cfg_label_23030:
	li r5,$-1
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23029
@cfg_label_23029:
	lw r6,r2,$-140
	lw r5,r2,$-128
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:9 ../cpuex2017/raytracer/min-rt.ml@1408:13;1408:15
	j @cfg_label_23028
@cfg_label_23028:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1408:5;1408:15
	j @cfg_label_23027
@cfg_label_23027:
	lw r5,r2,$-136
	lw r6,r2,$-132
	bne r5,r6,@cfg_label_23024
	j @cfg_label_23023
	j @cfg_label_23025
	j @cfg_label_23026
@cfg_label_23026:
@cfg_label_23024:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7
	j @cfg_label_23072
@cfg_label_23025:
@cfg_label_23023:
	lw r6,r2,$-128
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1409:20;1409:27 ../cpuex2017/raytracer/min-rt.ml@1409:29;1409:33
	j @cfg_label_23022
@cfg_label_23022:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1410:28;1410:29
	j @cfg_label_23021
@cfg_label_23021:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	jal @a_8941solve_each_element_fast
	sw r5,r2,$-112
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:46 ../cpuex2017/raytracer/min-rt.ml@1410:4;1410:27
	j @cfg_label_23020
@cfg_label_23020:
	li r5,$2
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1411:31;1411:38
	j @cfg_label_23019
@cfg_label_23019:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-116
	push r5
	jal @a_8945solve_one_or_network_fast
	sw r5,r2,$-108
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55 ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:29
	j @cfg_label_23018
@cfg_label_23018:
	lw r5,r2,$-108
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1422:4;1434:7 ::<= ../cpuex2017/raytracer/min-rt.ml@1411:4;1411:55
	j @cfg_label_23071
@cfg_label_23076:
@cfg_label_23075:
@cfg_label_23074:
@cfg_label_23073:
@cfg_label_23072:
@cfg_label_23071:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1435:32;1435:33
	j @cfg_label_23070
@cfg_label_23070:
	lw r6,r2,$-16
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1435:26;1435:33 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1435:26;1435:29 ../cpuex2017/raytracer/min-rt.ml@1435:32;1435:33
	j @cfg_label_23069
@cfg_label_23069:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_8949trace_or_matrix_fast
	sw r5,r2,$-4
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1435:4;1435:52 ../cpuex2017/raytracer/min-rt.ml@1435:4;1435:24
	j @cfg_label_23068
@cfg_label_23068:
	lw r5,r2,$-4
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1417:2;1436:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1435:4;1435:52
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-160
	addi r1,r1,$160
	pop r2
	pop r6
	jr r6
@a_8953judge_intersection_fast:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9
	j @cfg_label_23017
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9
	j @cfg_label_23017
@cfg_label_23017:
	fmovi f1,$1000000000.000000
	fst f1,r2,$-56
	j @cfg_label_23016
@cfg_label_23016:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1442:2;1442:6 ../cpuex2017/raytracer/min-rt.ml@1442:8;1442:9 ../cpuex2017/raytracer/min-rt.ml@1442:15;1442:27
	j @cfg_label_23015
@cfg_label_23015:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1443:23;1443:24
	j @cfg_label_23014
@cfg_label_23014:
	li r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1443:34;1443:35
	j @cfg_label_23013
@cfg_label_23013:
	lw r6,r2,$-52
	lw r5,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1443:26;1443:32 ../cpuex2017/raytracer/min-rt.ml@1443:34;1443:35
	j @cfg_label_23012
@cfg_label_23012:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	jal @a_8949trace_or_matrix_fast
	sw r5,r2,$-16
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1443:2;1443:44 ../cpuex2017/raytracer/min-rt.ml@1443:2;1443:22
	j @cfg_label_23011
@cfg_label_23011:
	li r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1444:16;1444:17
	j @cfg_label_23010
@cfg_label_23010:
	lw r6,r2,$-40
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1444:10;1444:14 ../cpuex2017/raytracer/min-rt.ml@1444:16;1444:17
	j @cfg_label_23009
@cfg_label_23009:
	fmovi f1,$-0.100000
	fst f1,r2,$-36
	j @cfg_label_23008
@cfg_label_23008:
	fld f1,r2,$-36
	fld f2,r2,$-24
	flt f1,f2
	bft @emit_label_26147
	li r5,$0
	j @emit_label_26148
@emit_label_26147:
	li r5,$1
@emit_label_26148:
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23007
@cfg_label_23007:
	li r5,$1
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1446:6;1446:20
	j @cfg_label_23006
@cfg_label_23006:
	lw r5,r2,$-32
	lw r6,r2,$-28
	bne r5,r6,@cfg_label_23000
	j @cfg_label_22999
	j @cfg_label_23001
	j @cfg_label_23002
@cfg_label_23002:
@cfg_label_23000:
	lw r5,r31,$12
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1444:2;1448:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1448:7;1448:12
	j @cfg_label_23005
@cfg_label_23001:
@cfg_label_22999:
	fmovi f1,$100000000.000000
	fst f1,r2,$-20
	j @cfg_label_22998
@cfg_label_22998:
	fld f1,r2,$-24
	fld f2,r2,$-20
	flt f1,f2
	bft @emit_label_26149
	li r5,$0
	j @emit_label_26150
@emit_label_26149:
	li r5,$1
@emit_label_26150:
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1444:2;1448:12 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_23004
@cfg_label_23005:
@cfg_label_23004:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1443:2;1448:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1444:2;1448:12
	j @cfg_label_23003
@cfg_label_23003:
	lw r5,r2,$-4
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1442:2;1448:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1443:2;1448:12
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
@a_8957get_nvector_plane:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1471:11;1471:12
	j @cfg_label_22997
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1471:11;1471:12
	j @cfg_label_22997
@cfg_label_22997:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_22996
@cfg_label_22996:
	lw r6,r2,$-76
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1471:23;1471:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_22995
@cfg_label_22995:
	fmovi f1,$-1.000000
	fst f1,r2,$-72
	j @cfg_label_22994
@cfg_label_22994:
	fld f1,r2,$-72
	fld f2,r2,$-68
	fmul f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22993
@cfg_label_22993:
	lw r7,r2,$-60
	lw r6,r2,$-64
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1471:2;1471:35 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1471:2;1471:9 ../cpuex2017/raytracer/min-rt.ml@1471:11;1471:12 ../cpuex2017/raytracer/min-rt.ml@1471:17;1471:35
	j @cfg_label_22992
@cfg_label_22992:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1472:11;1472:12
	j @cfg_label_22991
@cfg_label_22991:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_22990
@cfg_label_22990:
	lw r6,r2,$-56
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1472:23;1472:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_22989
@cfg_label_22989:
	fmovi f1,$-1.000000
	fst f1,r2,$-52
	j @cfg_label_22988
@cfg_label_22988:
	fld f1,r2,$-52
	fld f2,r2,$-48
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22987
@cfg_label_22987:
	lw r7,r2,$-40
	lw r6,r2,$-44
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1472:2;1472:35 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1472:2;1472:9 ../cpuex2017/raytracer/min-rt.ml@1472:11;1472:12 ../cpuex2017/raytracer/min-rt.ml@1472:17;1472:35
	j @cfg_label_22986
@cfg_label_22986:
	li r5,$2
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1473:11;1473:12
	j @cfg_label_22985
@cfg_label_22985:
	li r5,$2
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_22984
@cfg_label_22984:
	lw r6,r2,$-36
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1473:23;1473:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_22983
@cfg_label_22983:
	fmovi f1,$-1.000000
	fst f1,r2,$-32
	j @cfg_label_22982
@cfg_label_22982:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22981
@cfg_label_22981:
	lw r7,r2,$-20
	lw r6,r2,$-24
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1473:2;1473:35 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1473:2;1473:9 ../cpuex2017/raytracer/min-rt.ml@1473:11;1473:12 ../cpuex2017/raytracer/min-rt.ml@1473:17;1473:35
	j @cfg_label_22980
@cfg_label_22980:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1472:2;1473:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1473:2;1473:35
	j @cfg_label_22979
@cfg_label_22979:
	lw r5,r2,$-4
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1471:2;1473:35 ::<= ../cpuex2017/raytracer/min-rt.ml@1472:2;1473:35
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@a_8959get_nvector_second:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$288
	li r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@1478:31;1478:32
	j @cfg_label_22978
	li r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@1478:31;1478:32
	j @cfg_label_22978
@cfg_label_22978:
	lw r6,r2,$-284
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:29 ../cpuex2017/raytracer/min-rt.ml@1478:31;1478:32
	j @cfg_label_22977
@cfg_label_22977:
	li r5,$0
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22976
@cfg_label_22976:
	lw r6,r2,$-280
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@1478:37;1478:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22975
@cfg_label_22975:
	fld f1,r2,$-276
	fld f2,r2,$-272
	fsub f1,f1,f2
	fst f1,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1478:11;1478:33 ../cpuex2017/raytracer/min-rt.ml@1478:37;1478:48
	j @cfg_label_22974
@cfg_label_22974:
	li r5,$1
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@1479:31;1479:32
	j @cfg_label_22973
@cfg_label_22973:
	lw r6,r2,$-268
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:29 ../cpuex2017/raytracer/min-rt.ml@1479:31;1479:32
	j @cfg_label_22972
@cfg_label_22972:
	li r5,$1
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_22971
@cfg_label_22971:
	lw r6,r2,$-264
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1479:37;1479:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@252:2;252:7 ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_22970
@cfg_label_22970:
	fld f1,r2,$-260
	fld f2,r2,$-256
	fsub f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1479:11;1479:33 ../cpuex2017/raytracer/min-rt.ml@1479:37;1479:48
	j @cfg_label_22969
@cfg_label_22969:
	li r5,$2
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1480:31;1480:32
	j @cfg_label_22968
@cfg_label_22968:
	lw r6,r2,$-252
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:29 ../cpuex2017/raytracer/min-rt.ml@1480:31;1480:32
	j @cfg_label_22967
@cfg_label_22967:
	li r5,$2
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22966
@cfg_label_22966:
	lw r6,r2,$-248
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1480:37;1480:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22965
@cfg_label_22965:
	fld f1,r2,$-244
	fld f2,r2,$-240
	fsub f1,f1,f2
	fst f1,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1480:11;1480:33 ../cpuex2017/raytracer/min-rt.ml@1480:37;1480:48
	j @cfg_label_22964
@cfg_label_22964:
	li r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_22963
@cfg_label_22963:
	lw r6,r2,$-236
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@1482:17;1482:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_22962
@cfg_label_22962:
	fld f1,r2,$-76
	fld f2,r2,$-232
	fmul f1,f1,f2
	fst f1,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1482:11;1482:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1482:11;1482:13 ../cpuex2017/raytracer/min-rt.ml@1482:17;1482:28
	j @cfg_label_22961
@cfg_label_22961:
	li r5,$1
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_22960
@cfg_label_22960:
	lw r6,r2,$-228
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1483:17;1483:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_22959
@cfg_label_22959:
	fld f1,r2,$-64
	fld f2,r2,$-224
	fmul f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1483:11;1483:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1483:11;1483:13 ../cpuex2017/raytracer/min-rt.ml@1483:17;1483:28
	j @cfg_label_22958
@cfg_label_22958:
	li r5,$2
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_22957
@cfg_label_22957:
	lw r6,r2,$-220
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@1484:17;1484:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_22956
@cfg_label_22956:
	fld f1,r2,$-120
	fld f2,r2,$-216
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1484:11;1484:28 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1484:11;1484:13 ../cpuex2017/raytracer/min-rt.ml@1484:17;1484:28
	j @cfg_label_22955
@cfg_label_22955:
	li r5,$0
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1486:17;1486:18
	j @cfg_label_22954
@cfg_label_22954:
	lw r5,r2,$20
	lw r6,r2,$-212
	bne r5,r6,@cfg_label_22948
	j @cfg_label_22947
	j @cfg_label_22949
	j @cfg_label_22950
@cfg_label_22950:
@cfg_label_22948:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1491:13;1491:14
	j @cfg_label_22946
@cfg_label_22946:
	li r5,$2
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_22945
@cfg_label_22945:
	lw r6,r2,$-180
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@342:2;342:10 ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_22944
@cfg_label_22944:
	fld f1,r2,$-64
	fld f2,r2,$-176
	fmul f1,f1,f2
	fst f1,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:34 ../cpuex2017/raytracer/min-rt.ml@1491:38;1491:50
	j @cfg_label_22943
@cfg_label_22943:
	li r5,$1
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_22942
@cfg_label_22942:
	lw r6,r2,$-172
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@332:2;332:10 ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_22941
@cfg_label_22941:
	fld f1,r2,$-120
	fld f2,r2,$-168
	fmul f1,f1,f2
	fst f1,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1491:54;1491:72 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1491:54;1491:56 ../cpuex2017/raytracer/min-rt.ml@1491:60;1491:72
	j @cfg_label_22940
@cfg_label_22940:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fadd f1,f1,f2
	fst f1,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:72 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1491:32;1491:50 ../cpuex2017/raytracer/min-rt.ml@1491:54;1491:72
	j @cfg_label_22939
@cfg_label_22939:
	fmovi f1,$2.000000
	fst f1,r2,$-152
	j @cfg_label_22938
@cfg_label_22938:
	fld f1,r2,$-156
	fld f2,r2,$-152
	fdiv f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1491:25;1491:73 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_22937
@cfg_label_22937:
	fld f1,r2,$-148
	fld f2,r2,$-144
	fadd f1,f1,f2
	fst f1,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1491:19;1491:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1491:19;1491:21 ../cpuex2017/raytracer/min-rt.ml@1491:25;1491:73
	j @cfg_label_22936
@cfg_label_22936:
	lw r7,r2,$-136
	lw r6,r2,$-140
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1491:4;1491:73 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1491:4;1491:11 ../cpuex2017/raytracer/min-rt.ml@1491:13;1491:14 ../cpuex2017/raytracer/min-rt.ml@1491:19;1491:73
	j @cfg_label_22935
@cfg_label_22935:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1492:13;1492:14
	j @cfg_label_22934
@cfg_label_22934:
	li r5,$2
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_22933
@cfg_label_22933:
	lw r6,r2,$-132
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1492:38;1492:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@342:2;342:10 ../cpuex2017/raytracer/min-rt.ml@342:12;342:13
	j @cfg_label_22932
@cfg_label_22932:
	fld f1,r2,$-76
	fld f2,r2,$-128
	fmul f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:34 ../cpuex2017/raytracer/min-rt.ml@1492:38;1492:50
	j @cfg_label_22931
@cfg_label_22931:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_22930
@cfg_label_22930:
	lw r6,r2,$-124
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@322:2;322:10 ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_22929
@cfg_label_22929:
	fld f1,r2,$-120
	fld f2,r2,$-116
	fmul f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1492:54;1492:72 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1492:54;1492:56 ../cpuex2017/raytracer/min-rt.ml@1492:60;1492:72
	j @cfg_label_22928
@cfg_label_22928:
	fld f1,r2,$-112
	fld f2,r2,$-108
	fadd f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:72 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1492:32;1492:50 ../cpuex2017/raytracer/min-rt.ml@1492:54;1492:72
	j @cfg_label_22927
@cfg_label_22927:
	fmovi f1,$2.000000
	fst f1,r2,$-100
	j @cfg_label_22926
@cfg_label_22926:
	fld f1,r2,$-104
	fld f2,r2,$-100
	fdiv f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1492:25;1492:73 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_22925
@cfg_label_22925:
	fld f1,r2,$-96
	fld f2,r2,$-92
	fadd f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1492:19;1492:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1492:19;1492:21 ../cpuex2017/raytracer/min-rt.ml@1492:25;1492:73
	j @cfg_label_22924
@cfg_label_22924:
	lw r7,r2,$-84
	lw r6,r2,$-88
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1492:4;1492:73 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1492:4;1492:11 ../cpuex2017/raytracer/min-rt.ml@1492:13;1492:14 ../cpuex2017/raytracer/min-rt.ml@1492:19;1492:73
	j @cfg_label_22923
@cfg_label_22923:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1493:13;1493:14
	j @cfg_label_22922
@cfg_label_22922:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_22921
@cfg_label_22921:
	lw r6,r2,$-80
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1493:38;1493:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@332:2;332:10 ../cpuex2017/raytracer/min-rt.ml@332:12;332:13
	j @cfg_label_22920
@cfg_label_22920:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:34 ../cpuex2017/raytracer/min-rt.ml@1493:38;1493:50
	j @cfg_label_22919
@cfg_label_22919:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_22918
@cfg_label_22918:
	lw r6,r2,$-68
	lw r5,r2,$44
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1493:60;1493:72 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@322:2;322:10 ../cpuex2017/raytracer/min-rt.ml@322:12;322:13
	j @cfg_label_22917
@cfg_label_22917:
	fld f1,r2,$-64
	fld f2,r2,$-60
	fmul f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1493:54;1493:72 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1493:54;1493:56 ../cpuex2017/raytracer/min-rt.ml@1493:60;1493:72
	j @cfg_label_22916
@cfg_label_22916:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:72 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1493:32;1493:50 ../cpuex2017/raytracer/min-rt.ml@1493:54;1493:72
	j @cfg_label_22915
@cfg_label_22915:
	fmovi f1,$2.000000
	fst f1,r2,$-44
	j @cfg_label_22914
@cfg_label_22914:
	fld f1,r2,$-48
	fld f2,r2,$-44
	fdiv f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1493:25;1493:73 ::= Ofdiv lib_tortesia.ml@19:18;19:19 lib_tortesia.ml@19:23;19:26
	j @cfg_label_22913
@cfg_label_22913:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1493:19;1493:73 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1493:19;1493:21 ../cpuex2017/raytracer/min-rt.ml@1493:25;1493:73
	j @cfg_label_22912
@cfg_label_22912:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1493:4;1493:73 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1493:4;1493:11 ../cpuex2017/raytracer/min-rt.ml@1493:13;1493:14 ../cpuex2017/raytracer/min-rt.ml@1493:19;1493:73
	j @cfg_label_22911
@cfg_label_22911:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1492:4;1493:73 ::<= ../cpuex2017/raytracer/min-rt.ml@1493:4;1493:73
	j @cfg_label_22910
@cfg_label_22910:
	lw r5,r2,$-12
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1486:2;1494:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1492:4;1493:73
	j @cfg_label_22953
@cfg_label_22949:
@cfg_label_22947:
	li r5,$0
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1487:13;1487:14
	j @cfg_label_22909
@cfg_label_22909:
	lw r7,r2,$-148
	lw r6,r2,$-208
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1487:4;1487:11 ../cpuex2017/raytracer/min-rt.ml@1487:13;1487:14 ../cpuex2017/raytracer/min-rt.ml@1487:19;1487:21
	j @cfg_label_22908
@cfg_label_22908:
	li r5,$1
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1488:13;1488:14
	j @cfg_label_22907
@cfg_label_22907:
	lw r7,r2,$-96
	lw r6,r2,$-204
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1488:4;1488:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1488:4;1488:11 ../cpuex2017/raytracer/min-rt.ml@1488:13;1488:14 ../cpuex2017/raytracer/min-rt.ml@1488:19;1488:21
	j @cfg_label_22906
@cfg_label_22906:
	li r5,$2
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@1489:13;1489:14
	j @cfg_label_22905
@cfg_label_22905:
	lw r7,r2,$-40
	lw r6,r2,$-200
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1489:4;1489:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1489:4;1489:11 ../cpuex2017/raytracer/min-rt.ml@1489:13;1489:14 ../cpuex2017/raytracer/min-rt.ml@1489:19;1489:21
	j @cfg_label_22904
@cfg_label_22904:
	lw r5,r2,$-192
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1488:4;1489:21 ::<= ../cpuex2017/raytracer/min-rt.ml@1489:4;1489:21
	j @cfg_label_22903
@cfg_label_22903:
	lw r5,r2,$-184
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1486:2;1494:4 ::<= ../cpuex2017/raytracer/min-rt.ml@1488:4;1489:21
	j @cfg_label_22952
@cfg_label_22953:
@cfg_label_22952:
	push r4
	lw r5,r2,$32
	push r5
	lw r5,r31,$292
	push r5
	jal @a_8667vecunit_sgn
	sw r5,r2,$-4
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1495:2;1495:36 ../cpuex2017/raytracer/min-rt.ml@1495:2;1495:13
	j @cfg_label_22951
@cfg_label_22951:
	lw r5,r2,$-4
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@1478:2;1495:36 ::<= ../cpuex2017/raytracer/min-rt.ml@1495:2;1495:36
	lw r5,r2,$-288
	addi r1,r1,$288
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-288
	addi r1,r1,$288
	pop r2
	pop r6
	jr r6
@a_8961get_nvector:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$116
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1501:15;1501:16
	j @cfg_label_22902
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1501:15;1501:16
	j @cfg_label_22902
@cfg_label_22902:
	lw r5,r2,$12
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_22899
	j @cfg_label_22898
	j @cfg_label_22900
	j @cfg_label_22901
@cfg_label_22901:
@cfg_label_22899:
	li r5,$2
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1503:20;1503:21
	j @cfg_label_22897
@cfg_label_22897:
	lw r5,r2,$12
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_22894
	j @cfg_label_22893
	j @cfg_label_22895
	j @cfg_label_22896
@cfg_label_22895:
@cfg_label_22893:
	push r4
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8957get_nvector_plane
	sw r5,r2,$-116
	addi r1,r1,$44
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1500:2;1506:24 ../cpuex2017/raytracer/min-rt.ml@1504:4;1504:21
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@cfg_label_22896:
@cfg_label_22894:
	push r4
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8959get_nvector_second
	sw r5,r2,$-116
	addi r1,r1,$44
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1500:2;1506:24 ../cpuex2017/raytracer/min-rt.ml@1506:4;1506:22
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@cfg_label_22900:
@cfg_label_22898:
	li r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1462:34;1462:35
	j @cfg_label_22892
@cfg_label_22892:
	lw r6,r2,$-108
	lw r5,r31,$340
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1462:17;1462:32 ../cpuex2017/raytracer/min-rt.ml@1462:34;1462:35
	j @cfg_label_22891
@cfg_label_22891:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_22890
@cfg_label_22890:
	li r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@59:5;59:6
	j @cfg_label_22889
@cfg_label_22889:
	lw r7,r2,$-92
	lw r6,r2,$-104
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@59:5;59:6 ../cpuex2017/raytracer/min-rt.ml@59:11;59:15
	j @cfg_label_22888
@cfg_label_22888:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@60:5;60:6
	j @cfg_label_22887
@cfg_label_22887:
	lw r7,r2,$-92
	lw r6,r2,$-100
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@60:2;60:3 ../cpuex2017/raytracer/min-rt.ml@60:5;60:6 ../cpuex2017/raytracer/min-rt.ml@60:11;60:15
	j @cfg_label_22886
@cfg_label_22886:
	li r5,$2
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@61:5;61:6
	j @cfg_label_22885
@cfg_label_22885:
	lw r7,r2,$-92
	lw r6,r2,$-96
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@61:2;61:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@61:2;61:3 ../cpuex2017/raytracer/min-rt.ml@61:5;61:6 ../cpuex2017/raytracer/min-rt.ml@61:11;61:15
	j @cfg_label_22884
@cfg_label_22884:
	lw r5,r2,$-84
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@60:2;61:15 ::<= ../cpuex2017/raytracer/min-rt.ml@61:2;61:15
	j @cfg_label_22883
@cfg_label_22883:
	lw r5,r2,$-76
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1464:2;1464:18 ::<= ../cpuex2017/raytracer/min-rt.ml@60:2;61:15
	j @cfg_label_22882
@cfg_label_22882:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1465:20;1465:21
	j @cfg_label_22881
@cfg_label_22881:
	lw r6,r2,$-72
	lw r5,r2,$-68
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:19 ../cpuex2017/raytracer/min-rt.ml@1465:20;1465:21
	j @cfg_label_22880
@cfg_label_22880:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1465:54;1465:55
	j @cfg_label_22879
@cfg_label_22879:
	lw r6,r2,$-64
	lw r5,r2,$-68
	sub r5,r5,r6
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1465:45;1465:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1465:45;1465:53 ../cpuex2017/raytracer/min-rt.ml@1465:54;1465:55
	j @cfg_label_22878
@cfg_label_22878:
	lw r6,r2,$-60
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:56 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1465:37;1465:43 ../cpuex2017/raytracer/min-rt.ml@1465:45;1465:55
	j @cfg_label_22877
@cfg_label_22877:
	fmovi f1,$0.000000
	fst f1,r2,$-56
	j @cfg_label_22876
@cfg_label_22876:
	fld f1,r2,$-44
	fld f2,r2,$-56
	feq f1,f2
	bft @emit_label_26151
	li r5,$0
	j @emit_label_26152
@emit_label_26151:
	li r5,$1
@emit_label_26152:
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14 ::= Oeq lib_tortesia.ml@5:21;5:22 lib_tortesia.ml@5:25;5:28
	j @cfg_label_22875
@cfg_label_22875:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@24:5;24:14
	j @cfg_label_22874
@cfg_label_22874:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_22865
	j @cfg_label_22864
	j @cfg_label_22866
	j @cfg_label_22867
@cfg_label_22866:
@cfg_label_22864:
	fmovi f1,$0.000000
	fst f1,r2,$-24
	j @cfg_label_22871
@cfg_label_22867:
@cfg_label_22865:
	fmovi f1,$0.000000
	fst f1,r2,$-40
	j @cfg_label_22863
@cfg_label_22863:
	fld f1,r2,$-44
	fld f2,r2,$-40
	flt f2,f1
	bft @emit_label_26153
	li r5,$0
	j @emit_label_26154
@emit_label_26153:
	li r5,$1
@emit_label_26154:
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_22862
@cfg_label_22862:
	li r5,$1
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@25:10;25:18
	j @cfg_label_22861
@cfg_label_22861:
	lw r5,r2,$-36
	lw r6,r2,$-32
	bne r5,r6,@cfg_label_22858
	j @cfg_label_22857
	j @cfg_label_22859
	j @cfg_label_22860
@cfg_label_22859:
@cfg_label_22857:
	fmovi f1,$1.000000
	fst f1,r2,$-24
	j @cfg_label_22872
@cfg_label_22860:
@cfg_label_22858:
	fmovi f1,$-1.000000
	fst f1,r2,$-24
	j @cfg_label_22873
@cfg_label_22873:
@cfg_label_22872:
@cfg_label_22871:
	fmovi f1,$-1.000000
	fst f1,r2,$-28
	j @cfg_label_22870
@cfg_label_22870:
	fld f1,r2,$-28
	fld f2,r2,$-24
	fmul f1,f1,f2
	fst f1,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22869
@cfg_label_22869:
	lw r7,r2,$-16
	lw r6,r2,$-20
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1465:2;1465:58 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1465:2;1465:9 ../cpuex2017/raytracer/min-rt.ml@1465:11;1465:21 ../cpuex2017/raytracer/min-rt.ml@1465:26;1465:58
	j @cfg_label_22868
@cfg_label_22868:
	lw r5,r2,$-8
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1500:2;1506:24 ::<= ../cpuex2017/raytracer/min-rt.ml@1465:2;1465:58
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@a_8964utexture:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$876
	li r5,$0
	sw r5,r2,$-868
; ../cpuex2017/raytracer/min-rt.ml@1518:17;1518:18
	j @cfg_label_22856
	li r5,$0
	sw r5,r2,$-868
; ../cpuex2017/raytracer/min-rt.ml@1518:17;1518:18
	j @cfg_label_22856
@cfg_label_22856:
	li r5,$0
	sw r5,r2,$-872
; ../cpuex2017/raytracer/min-rt.ml@292:11;292:12
	j @cfg_label_22855
@cfg_label_22855:
	lw r6,r2,$-872
	lw r5,r2,$40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-864
; ../cpuex2017/raytracer/min-rt.ml@1518:23;1518:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@292:2;292:9 ../cpuex2017/raytracer/min-rt.ml@292:11;292:12
	j @cfg_label_22854
@cfg_label_22854:
	lw r7,r2,$-864
	lw r6,r2,$-868
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:36 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1518:2;1518:15 ../cpuex2017/raytracer/min-rt.ml@1518:17;1518:18 ../cpuex2017/raytracer/min-rt.ml@1518:23;1518:36
	j @cfg_label_22853
@cfg_label_22853:
	li r5,$1
	sw r5,r2,$-856
; ../cpuex2017/raytracer/min-rt.ml@1519:17;1519:18
	j @cfg_label_22852
@cfg_label_22852:
	li r5,$1
	sw r5,r2,$-860
; ../cpuex2017/raytracer/min-rt.ml@302:11;302:12
	j @cfg_label_22851
@cfg_label_22851:
	lw r6,r2,$-860
	lw r5,r2,$40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-852
; ../cpuex2017/raytracer/min-rt.ml@1519:23;1519:38 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@302:2;302:9 ../cpuex2017/raytracer/min-rt.ml@302:11;302:12
	j @cfg_label_22850
@cfg_label_22850:
	lw r7,r2,$-852
	lw r6,r2,$-856
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1519:2;1519:38 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1519:2;1519:15 ../cpuex2017/raytracer/min-rt.ml@1519:17;1519:18 ../cpuex2017/raytracer/min-rt.ml@1519:23;1519:38
	j @cfg_label_22849
@cfg_label_22849:
	li r5,$2
	sw r5,r2,$-844
; ../cpuex2017/raytracer/min-rt.ml@1520:17;1520:18
	j @cfg_label_22848
@cfg_label_22848:
	li r5,$2
	sw r5,r2,$-848
; ../cpuex2017/raytracer/min-rt.ml@312:11;312:12
	j @cfg_label_22847
@cfg_label_22847:
	lw r6,r2,$-848
	lw r5,r2,$40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-840
; ../cpuex2017/raytracer/min-rt.ml@1520:23;1520:37 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@312:2;312:9 ../cpuex2017/raytracer/min-rt.ml@312:11;312:12
	j @cfg_label_22846
@cfg_label_22846:
	lw r7,r2,$-840
	lw r6,r2,$-844
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1520:2;1520:37 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1520:2;1520:15 ../cpuex2017/raytracer/min-rt.ml@1520:17;1520:18 ../cpuex2017/raytracer/min-rt.ml@1520:23;1520:37
	j @cfg_label_22845
@cfg_label_22845:
	li r5,$1
	sw r5,r2,$-836
; ../cpuex2017/raytracer/min-rt.ml@1521:13;1521:14
	j @cfg_label_22844
@cfg_label_22844:
	lw r5,r2,$8
	lw r6,r2,$-836
	bne r5,r6,@cfg_label_22834
	j @cfg_label_22833
	j @cfg_label_22835
	j @cfg_label_22836
@cfg_label_22836:
@cfg_label_22834:
	li r5,$2
	sw r5,r2,$-660
; ../cpuex2017/raytracer/min-rt.ml@1539:18;1539:19
	j @cfg_label_22832
@cfg_label_22832:
	lw r5,r2,$8
	lw r6,r2,$-660
	bne r5,r6,@cfg_label_22829
	j @cfg_label_22828
	j @cfg_label_22830
	j @cfg_label_22831
@cfg_label_22831:
@cfg_label_22829:
	li r5,$3
	sw r5,r2,$-592
; ../cpuex2017/raytracer/min-rt.ml@1546:18;1546:19
	j @cfg_label_22827
@cfg_label_22827:
	lw r5,r2,$8
	lw r6,r2,$-592
	bne r5,r6,@cfg_label_22824
	j @cfg_label_22823
	j @cfg_label_22825
	j @cfg_label_22826
@cfg_label_22826:
@cfg_label_22824:
	li r5,$4
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@1557:18;1557:19
	j @cfg_label_22822
@cfg_label_22822:
	lw r5,r2,$8
	lw r6,r2,$-436
	bne r5,r6,@cfg_label_22819
	j @cfg_label_22818
	j @cfg_label_22820
	j @cfg_label_22821
@cfg_label_22821:
@cfg_label_22819:
	sw r3,r2,$-20
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1521:2;1585:9
	j @cfg_label_22843
@cfg_label_22820:
@cfg_label_22818:
	li r5,$0
	sw r5,r2,$-432
; ../cpuex2017/raytracer/min-rt.ml@1559:17;1559:18
	j @cfg_label_22817
@cfg_label_22817:
	lw r6,r2,$-432
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:15 ../cpuex2017/raytracer/min-rt.ml@1559:17;1559:18
	j @cfg_label_22816
@cfg_label_22816:
	li r5,$0
	sw r5,r2,$-428
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22815
@cfg_label_22815:
	lw r6,r2,$-428
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@1559:23;1559:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22814
@cfg_label_22814:
	fld f1,r2,$-424
	fld f2,r2,$-420
	fsub f1,f1,f2
	fst f1,r2,$-408
; ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:19 ../cpuex2017/raytracer/min-rt.ml@1559:23;1559:34
	j @cfg_label_22813
@cfg_label_22813:
	li r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_22812
@cfg_label_22812:
	lw r6,r2,$-416
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@1559:46;1559:57 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_22811
@cfg_label_22811:
	push r4
	lw r5,r2,$-412
	push r5
	jal sqrt
	sw r5,r2,$-404
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1559:40;1559:58 ../cpuex2017/raytracer/min-rt.ml@1559:40;1559:44
	j @cfg_label_22810
@cfg_label_22810:
	fld f1,r2,$-408
	fld f2,r2,$-404
	fmul f1,f1,f2
	fst f1,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@1559:13;1559:59 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1559:14;1559:34 ../cpuex2017/raytracer/min-rt.ml@1559:40;1559:58
	j @cfg_label_22809
@cfg_label_22809:
	li r5,$2
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@1560:17;1560:18
	j @cfg_label_22808
@cfg_label_22808:
	lw r6,r2,$-400
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:15 ../cpuex2017/raytracer/min-rt.ml@1560:17;1560:18
	j @cfg_label_22807
@cfg_label_22807:
	li r5,$2
	sw r5,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22806
@cfg_label_22806:
	lw r6,r2,$-396
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@1560:23;1560:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22805
@cfg_label_22805:
	fld f1,r2,$-392
	fld f2,r2,$-388
	fsub f1,f1,f2
	fst f1,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:19 ../cpuex2017/raytracer/min-rt.ml@1560:23;1560:34
	j @cfg_label_22804
@cfg_label_22804:
	li r5,$2
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_22803
@cfg_label_22803:
	lw r6,r2,$-384
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@1560:46;1560:57 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_22802
@cfg_label_22802:
	push r4
	lw r5,r2,$-380
	push r5
	jal sqrt
	sw r5,r2,$-372
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1560:40;1560:58 ../cpuex2017/raytracer/min-rt.ml@1560:40;1560:44
	j @cfg_label_22801
@cfg_label_22801:
	fld f1,r2,$-376
	fld f2,r2,$-372
	fmul f1,f1,f2
	fst f1,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@1560:13;1560:59 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1560:14;1560:34 ../cpuex2017/raytracer/min-rt.ml@1560:40;1560:58
	j @cfg_label_22800
@cfg_label_22800:
	fld f1,r2,$-324
	fld f2,r2,$-324
	fmul f1,f1,f2
	fst f1,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@1561:14;1561:21 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22799
@cfg_label_22799:
	fld f1,r2,$-328
	fld f2,r2,$-328
	fmul f1,f1,f2
	fst f1,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@1561:27;1561:34 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22798
@cfg_label_22798:
	fld f1,r2,$-368
	fld f2,r2,$-364
	fadd f1,f1,f2
	fst f1,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1561:13;1561:35 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1561:14;1561:21 ../cpuex2017/raytracer/min-rt.ml@1561:27;1561:34
	j @cfg_label_22797
@cfg_label_22797:
	fmovi f1,$0.000000
	fst f1,r2,$-360
	j @cfg_label_22796
@cfg_label_22796:
	fld f1,r2,$-324
	fld f2,r2,$-360
	flt f2,f1
	bft @emit_label_26155
	li r5,$0
	j @emit_label_26156
@emit_label_26155:
	li r5,$1
@emit_label_26156:
	sw r5,r2,$-356
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_22795
@cfg_label_22795:
	li r5,$1
	sw r5,r2,$-352
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_22794
@cfg_label_22794:
	lw r5,r2,$-356
	lw r6,r2,$-352
	bne r5,r6,@cfg_label_22673
	j @cfg_label_22672
	j @cfg_label_22674
	j @cfg_label_22675
@cfg_label_22674:
@cfg_label_22672:
	lw r5,r2,$-324
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_22792
@cfg_label_22675:
@cfg_label_22673:
	fmovi f1,$-1.000000
	fst f1,r2,$-348
	j @cfg_label_22671
@cfg_label_22671:
	fld f1,r2,$-348
	fld f2,r2,$-324
	fmul f1,f1,f2
	fst f1,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@1563:16;1563:23 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_22793
@cfg_label_22793:
@cfg_label_22792:
	fmovi f1,$0.000100
	fst f1,r2,$-340
	j @cfg_label_22791
@cfg_label_22791:
	fld f1,r2,$-344
	fld f2,r2,$-340
	flt f1,f2
	bft @emit_label_26157
	li r5,$0
	j @emit_label_26158
@emit_label_26157:
	li r5,$1
@emit_label_26158:
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@1563:9;1563:31 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_22790
@cfg_label_22790:
	li r5,$1
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@1563:9;1563:31
	j @cfg_label_22789
@cfg_label_22789:
	lw r5,r2,$-336
	lw r6,r2,$-332
	bne r5,r6,@cfg_label_22692
	j @cfg_label_22691
	j @cfg_label_22693
	j @cfg_label_22694
@cfg_label_22693:
@cfg_label_22691:
	fmovi f1,$15.000000
	fst f1,r2,$-256
	j @cfg_label_22787
@cfg_label_22694:
@cfg_label_22692:
	fld f1,r2,$-328
	fld f2,r2,$-324
	fdiv f1,f1,f2
	fst f1,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@1566:16;1566:24 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1566:16;1566:18 ../cpuex2017/raytracer/min-rt.ml@1566:22;1566:24
	j @cfg_label_22690
@cfg_label_22690:
	fmovi f1,$0.000000
	fst f1,r2,$-320
	j @cfg_label_22689
@cfg_label_22689:
	fld f1,r2,$-304
	fld f2,r2,$-320
	flt f2,f1
	bft @emit_label_26159
	li r5,$0
	j @emit_label_26160
@emit_label_26159:
	li r5,$1
@emit_label_26160:
	sw r5,r2,$-316
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_22688
@cfg_label_22688:
	li r5,$1
	sw r5,r2,$-312
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_22687
@cfg_label_22687:
	lw r5,r2,$-316
	lw r6,r2,$-312
	bne r5,r6,@cfg_label_22678
	j @cfg_label_22677
	j @cfg_label_22679
	j @cfg_label_22680
@cfg_label_22679:
@cfg_label_22677:
	lw r5,r2,$-304
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_22685
@cfg_label_22680:
@cfg_label_22678:
	fmovi f1,$-1.000000
	fst f1,r2,$-308
	j @cfg_label_22676
@cfg_label_22676:
	fld f1,r2,$-308
	fld f2,r2,$-304
	fmul f1,f1,f2
	fst f1,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@1566:10;1566:25 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_22686
@cfg_label_22686:
@cfg_label_22685:
	push r4
	lw r5,r2,$-300
	push r5
	jal @a_8602atan
	sw r5,r2,$-296
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:10 ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:7
	j @cfg_label_22684
@cfg_label_22684:
	fmovi f1,$30.000000
	fst f1,r2,$-292
	j @cfg_label_22683
@cfg_label_22683:
	fld f1,r2,$-296
	fld f2,r2,$-292
	fmul f1,f1,f2
	fst f1,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@1568:2;1568:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1568:3;1568:10 ../cpuex2017/raytracer/min-rt.ml@1568:15;1568:19
	j @cfg_label_22682
@cfg_label_22682:
	fmovi f1,$3.141593
	fst f1,r2,$-284
	j @cfg_label_22681
@cfg_label_22681:
	fld f1,r2,$-288
	fld f2,r2,$-284
	fdiv f1,f1,f2
	fst f1,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1563:6;1568:33 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1568:2;1568:19 ../cpuex2017/raytracer/min-rt.ml@1568:24;1568:33
	j @cfg_label_22788
@cfg_label_22788:
@cfg_label_22787:
	fmovi f1,$0.000000
	fst f1,r2,$-280
	j @cfg_label_22786
@cfg_label_22786:
	fld f1,r2,$-256
	fld f2,r2,$-280
	flt f1,f2
	bft @emit_label_26161
	li r5,$0
	j @emit_label_26162
@emit_label_26161:
	li r5,$1
@emit_label_26162:
	sw r5,r2,$-276
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_22785
@cfg_label_22785:
	li r5,$1
	sw r5,r2,$-272
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_22784
@cfg_label_22784:
	lw r5,r2,$-276
	lw r6,r2,$-272
	bne r5,r6,@cfg_label_22697
	j @cfg_label_22696
	j @cfg_label_22698
	j @cfg_label_22699
@cfg_label_22699:
@cfg_label_22697:
	lw r5,r2,$-256
	sw r5,r2,$-264
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_22783
@cfg_label_22698:
@cfg_label_22696:
	fmovi f1,$1.000000
	fst f1,r2,$-268
	j @cfg_label_22695
@cfg_label_22695:
	fld f1,r2,$-256
	fld f2,r2,$-268
	fsub f1,f1,f2
	fst f1,r2,$-264
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_22782
@cfg_label_22783:
@cfg_label_22782:
	push r4
	lw r5,r2,$-264
	push r5
	jal int_of_float
	sw r5,r2,$-260
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_22781
@cfg_label_22781:
	push r4
	lw r5,r2,$-260
	push r5
	jal float_of_int
	sw r5,r2,$-252
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1570:20;1570:28 lib_tortesia.ml@11:18;11:30
	j @cfg_label_22780
@cfg_label_22780:
	fld f1,r2,$-256
	fld f2,r2,$-252
	fsub f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1570:13;1570:29 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1570:13;1570:15 ../cpuex2017/raytracer/min-rt.ml@1570:20;1570:28
	j @cfg_label_22779
@cfg_label_22779:
	li r5,$1
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@1572:17;1572:18
	j @cfg_label_22778
@cfg_label_22778:
	lw r6,r2,$-248
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:15 ../cpuex2017/raytracer/min-rt.ml@1572:17;1572:18
	j @cfg_label_22777
@cfg_label_22777:
	li r5,$1
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_22776
@cfg_label_22776:
	lw r6,r2,$-244
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@1572:23;1572:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@252:2;252:7 ../cpuex2017/raytracer/min-rt.ml@252:9;252:10
	j @cfg_label_22775
@cfg_label_22775:
	fld f1,r2,$-240
	fld f2,r2,$-236
	fsub f1,f1,f2
	fst f1,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:19 ../cpuex2017/raytracer/min-rt.ml@1572:23;1572:34
	j @cfg_label_22774
@cfg_label_22774:
	li r5,$1
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_22773
@cfg_label_22773:
	lw r6,r2,$-232
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@1572:46;1572:57 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_22772
@cfg_label_22772:
	push r4
	lw r5,r2,$-228
	push r5
	jal sqrt
	sw r5,r2,$-220
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1572:40;1572:58 ../cpuex2017/raytracer/min-rt.ml@1572:40;1572:44
	j @cfg_label_22771
@cfg_label_22771:
	fld f1,r2,$-224
	fld f2,r2,$-220
	fmul f1,f1,f2
	fst f1,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1572:13;1572:59 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1572:14;1572:34 ../cpuex2017/raytracer/min-rt.ml@1572:40;1572:58
	j @cfg_label_22770
@cfg_label_22770:
	fmovi f1,$0.000000
	fst f1,r2,$-216
	j @cfg_label_22769
@cfg_label_22769:
	fld f1,r2,$-180
	fld f2,r2,$-216
	flt f2,f1
	bft @emit_label_26163
	li r5,$0
	j @emit_label_26164
@emit_label_26163:
	li r5,$1
@emit_label_26164:
	sw r5,r2,$-212
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_22768
@cfg_label_22768:
	li r5,$1
	sw r5,r2,$-208
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_22767
@cfg_label_22767:
	lw r5,r2,$-212
	lw r6,r2,$-208
	bne r5,r6,@cfg_label_22702
	j @cfg_label_22701
	j @cfg_label_22703
	j @cfg_label_22704
@cfg_label_22703:
@cfg_label_22701:
	lw r5,r2,$-180
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_22765
@cfg_label_22704:
@cfg_label_22702:
	fmovi f1,$-1.000000
	fst f1,r2,$-204
	j @cfg_label_22700
@cfg_label_22700:
	fld f1,r2,$-204
	fld f2,r2,$-180
	fmul f1,f1,f2
	fst f1,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@1574:16;1574:23 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_22766
@cfg_label_22766:
@cfg_label_22765:
	fmovi f1,$0.000100
	fst f1,r2,$-196
	j @cfg_label_22764
@cfg_label_22764:
	fld f1,r2,$-200
	fld f2,r2,$-196
	flt f1,f2
	bft @emit_label_26165
	li r5,$0
	j @emit_label_26166
@emit_label_26165:
	li r5,$1
@emit_label_26166:
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1574:9;1574:31 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_22763
@cfg_label_22763:
	li r5,$1
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1574:9;1574:31
	j @cfg_label_22762
@cfg_label_22762:
	lw r5,r2,$-192
	lw r6,r2,$-188
	bne r5,r6,@cfg_label_22721
	j @cfg_label_22720
	j @cfg_label_22722
	j @cfg_label_22723
@cfg_label_22722:
@cfg_label_22720:
	fmovi f1,$15.000000
	fst f1,r2,$-112
	j @cfg_label_22760
@cfg_label_22723:
@cfg_label_22721:
	fld f1,r2,$-184
	fld f2,r2,$-180
	fdiv f1,f1,f2
	fst f1,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1577:16;1577:24 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1577:16;1577:18 ../cpuex2017/raytracer/min-rt.ml@1577:22;1577:24
	j @cfg_label_22719
@cfg_label_22719:
	fmovi f1,$0.000000
	fst f1,r2,$-176
	j @cfg_label_22718
@cfg_label_22718:
	fld f1,r2,$-160
	fld f2,r2,$-176
	flt f2,f1
	bft @emit_label_26167
	li r5,$0
	j @emit_label_26168
@emit_label_26167:
	li r5,$1
@emit_label_26168:
	sw r5,r2,$-172
; lib_tortesia.ml@13:20;13:27 ::= Ogt lib_tortesia.ml@13:20;13:21 lib_tortesia.ml@13:24;13:27
	j @cfg_label_22717
@cfg_label_22717:
	li r5,$1
	sw r5,r2,$-168
; lib_tortesia.ml@13:20;13:27
	j @cfg_label_22716
@cfg_label_22716:
	lw r5,r2,$-172
	lw r6,r2,$-168
	bne r5,r6,@cfg_label_22707
	j @cfg_label_22706
	j @cfg_label_22708
	j @cfg_label_22709
@cfg_label_22708:
@cfg_label_22706:
	lw r5,r2,$-160
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25 ::<= lib_tortesia.ml@13:20;13:21
	j @cfg_label_22714
@cfg_label_22709:
@cfg_label_22707:
	fmovi f1,$-1.000000
	fst f1,r2,$-164
	j @cfg_label_22705
@cfg_label_22705:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fmul f1,f1,f2
	fst f1,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1577:10;1577:25 ::= Ofmul lib_tortesia.ml@13:42;13:45 lib_tortesia.ml@13:49;13:50
	j @cfg_label_22715
@cfg_label_22715:
@cfg_label_22714:
	push r4
	lw r5,r2,$-156
	push r5
	jal @a_8602atan
	sw r5,r2,$-152
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1578:6;1578:13 ../cpuex2017/raytracer/min-rt.ml@1578:6;1578:10
	j @cfg_label_22713
@cfg_label_22713:
	fmovi f1,$30.000000
	fst f1,r2,$-148
	j @cfg_label_22712
@cfg_label_22712:
	fld f1,r2,$-152
	fld f2,r2,$-148
	fmul f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1578:5;1578:22 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1578:6;1578:13 ../cpuex2017/raytracer/min-rt.ml@1578:18;1578:22
	j @cfg_label_22711
@cfg_label_22711:
	fmovi f1,$3.141593
	fst f1,r2,$-140
	j @cfg_label_22710
@cfg_label_22710:
	fld f1,r2,$-144
	fld f2,r2,$-140
	fdiv f1,f1,f2
	fst f1,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1574:6;1578:36 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1578:5;1578:22 ../cpuex2017/raytracer/min-rt.ml@1578:27;1578:36
	j @cfg_label_22761
@cfg_label_22761:
@cfg_label_22760:
	fmovi f1,$0.000000
	fst f1,r2,$-136
	j @cfg_label_22759
@cfg_label_22759:
	fld f1,r2,$-112
	fld f2,r2,$-136
	flt f1,f2
	bft @emit_label_26169
	li r5,$0
	j @emit_label_26170
@emit_label_26169:
	li r5,$1
@emit_label_26170:
	sw r5,r2,$-132
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_22758
@cfg_label_22758:
	li r5,$1
	sw r5,r2,$-128
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_22757
@cfg_label_22757:
	lw r5,r2,$-132
	lw r6,r2,$-128
	bne r5,r6,@cfg_label_22726
	j @cfg_label_22725
	j @cfg_label_22727
	j @cfg_label_22728
@cfg_label_22728:
@cfg_label_22726:
	lw r5,r2,$-112
	sw r5,r2,$-120
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_22756
@cfg_label_22727:
@cfg_label_22725:
	fmovi f1,$1.000000
	fst f1,r2,$-124
	j @cfg_label_22724
@cfg_label_22724:
	fld f1,r2,$-112
	fld f2,r2,$-124
	fsub f1,f1,f2
	fst f1,r2,$-120
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_22755
@cfg_label_22756:
@cfg_label_22755:
	push r4
	lw r5,r2,$-120
	push r5
	jal int_of_float
	sw r5,r2,$-116
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_22754
@cfg_label_22754:
	push r4
	lw r5,r2,$-116
	push r5
	jal float_of_int
	sw r5,r2,$-108
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1580:21;1580:29 lib_tortesia.ml@11:18;11:30
	j @cfg_label_22753
@cfg_label_22753:
	fld f1,r2,$-112
	fld f2,r2,$-108
	fsub f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1580:14;1580:30 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1580:14;1580:16 ../cpuex2017/raytracer/min-rt.ml@1580:21;1580:29
	j @cfg_label_22752
@cfg_label_22752:
	fmovi f1,$0.150000
	fst f1,r2,$-92
	j @cfg_label_22751
@cfg_label_22751:
	fmovi f1,$0.500000
	fst f1,r2,$-104
	j @cfg_label_22750
@cfg_label_22750:
	fld f1,r2,$-104
	fld f2,r2,$-100
	fsub f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:38 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:29;1581:32 ../cpuex2017/raytracer/min-rt.ml@1581:36;1581:38
	j @cfg_label_22749
@cfg_label_22749:
	fld f1,r2,$-96
	fld f2,r2,$-96
	fmul f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1581:23;1581:39 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22748
@cfg_label_22748:
	fld f1,r2,$-92
	fld f2,r2,$-88
	fsub f1,f1,f2
	fst f1,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:40 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:18 ../cpuex2017/raytracer/min-rt.ml@1581:23;1581:39
	j @cfg_label_22747
@cfg_label_22747:
	fmovi f1,$0.500000
	fst f1,r2,$-84
	j @cfg_label_22746
@cfg_label_22746:
	fld f1,r2,$-84
	fld f2,r2,$-80
	fsub f1,f1,f2
	fst f1,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:61 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:51;1581:54 ../cpuex2017/raytracer/min-rt.ml@1581:58;1581:61
	j @cfg_label_22745
@cfg_label_22745:
	fld f1,r2,$-76
	fld f2,r2,$-76
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1581:45;1581:62 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22744
@cfg_label_22744:
	fld f1,r2,$-72
	fld f2,r2,$-68
	fsub f1,f1,f2
	fst f1,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:63 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1581:14;1581:40 ../cpuex2017/raytracer/min-rt.ml@1581:45;1581:62
	j @cfg_label_22743
@cfg_label_22743:
	fmovi f1,$0.000000
	fst f1,r2,$-64
	j @cfg_label_22742
@cfg_label_22742:
	fld f1,r2,$-52
	fld f2,r2,$-64
	flt f1,f2
	bft @emit_label_26171
	li r5,$0
	j @emit_label_26172
@emit_label_26171:
	li r5,$1
@emit_label_26172:
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1582:17;1582:27 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_22741
@cfg_label_22741:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1582:17;1582:27
	j @cfg_label_22740
@cfg_label_22740:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_22730
	j @cfg_label_22729
	j @cfg_label_22731
	j @cfg_label_22732
@cfg_label_22731:
@cfg_label_22729:
	fmovi f1,$0.000000
	fst f1,r2,$-44
	j @cfg_label_22738
@cfg_label_22732:
@cfg_label_22730:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1582:14;1582:45 ::<= ../cpuex2017/raytracer/min-rt.ml@1582:24;1582:27
	j @cfg_label_22739
@cfg_label_22739:
@cfg_label_22738:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1583:19;1583:20
	j @cfg_label_22737
@cfg_label_22737:
	fmovi f1,$255.000000
	fst f1,r2,$-48
	j @cfg_label_22736
@cfg_label_22736:
	fld f1,r2,$-48
	fld f2,r2,$-44
	fmul f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:31 ../cpuex2017/raytracer/min-rt.ml@1583:35;1583:38
	j @cfg_label_22735
@cfg_label_22735:
	fmovi f1,$0.300000
	fst f1,r2,$-36
	j @cfg_label_22734
@cfg_label_22734:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fdiv f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1583:25;1583:46 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1583:26;1583:38 ../cpuex2017/raytracer/min-rt.ml@1583:43;1583:46
	j @cfg_label_22733
@cfg_label_22733:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1521:2;1585:9 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1583:4;1583:17 ../cpuex2017/raytracer/min-rt.ml@1583:19;1583:20 ../cpuex2017/raytracer/min-rt.ml@1583:25;1583:46
	j @cfg_label_22842
@cfg_label_22825:
@cfg_label_22823:
	li r5,$0
	sw r5,r2,$-588
; ../cpuex2017/raytracer/min-rt.ml@1549:18;1549:19
	j @cfg_label_22670
@cfg_label_22670:
	lw r6,r2,$-588
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-580
; ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:20 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:16 ../cpuex2017/raytracer/min-rt.ml@1549:18;1549:19
	j @cfg_label_22669
@cfg_label_22669:
	li r5,$0
	sw r5,r2,$-584
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22668
@cfg_label_22668:
	lw r6,r2,$-584
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-576
; ../cpuex2017/raytracer/min-rt.ml@1549:24;1549:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22667
@cfg_label_22667:
	fld f1,r2,$-580
	fld f2,r2,$-576
	fsub f1,f1,f2
	fst f1,r2,$-556
; ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:35 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1549:15;1549:20 ../cpuex2017/raytracer/min-rt.ml@1549:24;1549:35
	j @cfg_label_22666
@cfg_label_22666:
	li r5,$2
	sw r5,r2,$-572
; ../cpuex2017/raytracer/min-rt.ml@1550:18;1550:19
	j @cfg_label_22665
@cfg_label_22665:
	lw r6,r2,$-572
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-564
; ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:20 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:16 ../cpuex2017/raytracer/min-rt.ml@1550:18;1550:19
	j @cfg_label_22664
@cfg_label_22664:
	li r5,$2
	sw r5,r2,$-568
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22663
@cfg_label_22663:
	lw r6,r2,$-568
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-560
; ../cpuex2017/raytracer/min-rt.ml@1550:24;1550:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22662
@cfg_label_22662:
	fld f1,r2,$-564
	fld f2,r2,$-560
	fsub f1,f1,f2
	fst f1,r2,$-552
; ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:35 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1550:15;1550:20 ../cpuex2017/raytracer/min-rt.ml@1550:24;1550:35
	j @cfg_label_22661
@cfg_label_22661:
	fld f1,r2,$-556
	fld f2,r2,$-556
	fmul f1,f1,f2
	fst f1,r2,$-548
; ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:28 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22660
@cfg_label_22660:
	fld f1,r2,$-552
	fld f2,r2,$-552
	fmul f1,f1,f2
	fst f1,r2,$-544
; ../cpuex2017/raytracer/min-rt.ml@1551:32;1551:39 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22659
@cfg_label_22659:
	fld f1,r2,$-548
	fld f2,r2,$-544
	fadd f1,f1,f2
	fst f1,r2,$-540
; ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:39 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1551:21;1551:28 ../cpuex2017/raytracer/min-rt.ml@1551:32;1551:39
	j @cfg_label_22658
@cfg_label_22658:
	push r4
	lw r5,r2,$-540
	push r5
	jal sqrt
	sw r5,r2,$-536
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:40 ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:19
	j @cfg_label_22657
@cfg_label_22657:
	fmovi f1,$10.000000
	fst f1,r2,$-532
	j @cfg_label_22656
@cfg_label_22656:
	fld f1,r2,$-536
	fld f2,r2,$-532
	fdiv f1,f1,f2
	fst f1,r2,$-504
; ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:48 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1551:15;1551:40 ../cpuex2017/raytracer/min-rt.ml@1551:44;1551:48
	j @cfg_label_22655
@cfg_label_22655:
	fmovi f1,$0.000000
	fst f1,r2,$-528
	j @cfg_label_22654
@cfg_label_22654:
	fld f1,r2,$-504
	fld f2,r2,$-528
	flt f1,f2
	bft @emit_label_26173
	li r5,$0
	j @emit_label_26174
@emit_label_26173:
	li r5,$1
@emit_label_26174:
	sw r5,r2,$-524
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_22653
@cfg_label_22653:
	li r5,$1
	sw r5,r2,$-520
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_22652
@cfg_label_22652:
	lw r5,r2,$-524
	lw r6,r2,$-520
	bne r5,r6,@cfg_label_22630
	j @cfg_label_22629
	j @cfg_label_22631
	j @cfg_label_22632
@cfg_label_22632:
@cfg_label_22630:
	lw r5,r2,$-504
	sw r5,r2,$-512
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_22651
@cfg_label_22631:
@cfg_label_22629:
	fmovi f1,$1.000000
	fst f1,r2,$-516
	j @cfg_label_22628
@cfg_label_22628:
	fld f1,r2,$-504
	fld f2,r2,$-516
	fsub f1,f1,f2
	fst f1,r2,$-512
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_22650
@cfg_label_22651:
@cfg_label_22650:
	push r4
	lw r5,r2,$-512
	push r5
	jal int_of_float
	sw r5,r2,$-508
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_22649
@cfg_label_22649:
	push r4
	lw r5,r2,$-508
	push r5
	jal float_of_int
	sw r5,r2,$-500
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1552:23;1552:31 lib_tortesia.ml@11:18;11:30
	j @cfg_label_22648
@cfg_label_22648:
	fld f1,r2,$-504
	fld f2,r2,$-500
	fsub f1,f1,f2
	fst f1,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@1552:17;1552:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1552:17;1552:19 ../cpuex2017/raytracer/min-rt.ml@1552:23;1552:31
	j @cfg_label_22647
@cfg_label_22647:
	fmovi f1,$3.141593
	fst f1,r2,$-492
	j @cfg_label_22646
@cfg_label_22646:
	fld f1,r2,$-496
	fld f2,r2,$-492
	fmul f1,f1,f2
	fst f1,r2,$-488
; ../cpuex2017/raytracer/min-rt.ml@1552:16;1552:45 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1552:17;1552:31 ../cpuex2017/raytracer/min-rt.ml@1552:36;1552:45
	j @cfg_label_22645
@cfg_label_22645:
	push r4
	lw r5,r2,$-488
	push r5
	jal @a_8600cos
	sw r5,r2,$-484
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1553:22;1553:28 ../cpuex2017/raytracer/min-rt.ml@1553:22;1553:25
	j @cfg_label_22644
@cfg_label_22644:
	fld f1,r2,$-484
	fld f2,r2,$-484
	fmul f1,f1,f2
	fst f1,r2,$-464
; ../cpuex2017/raytracer/min-rt.ml@1553:16;1553:29 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22643
@cfg_label_22643:
	li r5,$1
	sw r5,r2,$-476
; ../cpuex2017/raytracer/min-rt.ml@1554:21;1554:22
	j @cfg_label_22642
@cfg_label_22642:
	fmovi f1,$255.000000
	fst f1,r2,$-480
	j @cfg_label_22641
@cfg_label_22641:
	fld f1,r2,$-464
	fld f2,r2,$-480
	fmul f1,f1,f2
	fst f1,r2,$-472
; ../cpuex2017/raytracer/min-rt.ml@1554:27;1554:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1554:27;1554:30 ../cpuex2017/raytracer/min-rt.ml@1554:34;1554:39
	j @cfg_label_22640
@cfg_label_22640:
	lw r7,r2,$-472
	lw r6,r2,$-476
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@1554:6;1554:39 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1554:6;1554:19 ../cpuex2017/raytracer/min-rt.ml@1554:21;1554:22 ../cpuex2017/raytracer/min-rt.ml@1554:27;1554:39
	j @cfg_label_22639
@cfg_label_22639:
	li r5,$2
	sw r5,r2,$-452
; ../cpuex2017/raytracer/min-rt.ml@1555:21;1555:22
	j @cfg_label_22638
@cfg_label_22638:
	fmovi f1,$1.000000
	fst f1,r2,$-468
	j @cfg_label_22637
@cfg_label_22637:
	fld f1,r2,$-468
	fld f2,r2,$-464
	fsub f1,f1,f2
	fst f1,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:38 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:31 ../cpuex2017/raytracer/min-rt.ml@1555:35;1555:38
	j @cfg_label_22636
@cfg_label_22636:
	fmovi f1,$255.000000
	fst f1,r2,$-456
	j @cfg_label_22635
@cfg_label_22635:
	fld f1,r2,$-460
	fld f2,r2,$-456
	fmul f1,f1,f2
	fst f1,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@1555:27;1555:48 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1555:28;1555:38 ../cpuex2017/raytracer/min-rt.ml@1555:43;1555:48
	j @cfg_label_22634
@cfg_label_22634:
	lw r7,r2,$-448
	lw r6,r2,$-452
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@1555:6;1555:48 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1555:6;1555:19 ../cpuex2017/raytracer/min-rt.ml@1555:21;1555:22 ../cpuex2017/raytracer/min-rt.ml@1555:27;1555:48
	j @cfg_label_22633
@cfg_label_22633:
	lw r5,r2,$-440
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1521:2;1585:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1555:6;1555:48
	j @cfg_label_22841
@cfg_label_22830:
@cfg_label_22828:
	li r5,$1
	sw r5,r2,$-656
; ../cpuex2017/raytracer/min-rt.ml@1542:29;1542:30
	j @cfg_label_22627
@cfg_label_22627:
	lw r6,r2,$-656
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-652
; ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:27 ../cpuex2017/raytracer/min-rt.ml@1542:29;1542:30
	j @cfg_label_22626
@cfg_label_22626:
	fmovi f1,$0.250000
	fst f1,r2,$-648
	j @cfg_label_22625
@cfg_label_22625:
	fld f1,r2,$-652
	fld f2,r2,$-648
	fmul f1,f1,f2
	fst f1,r2,$-644
; ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1542:26;1542:31 ../cpuex2017/raytracer/min-rt.ml@1542:35;1542:39
	j @cfg_label_22624
@cfg_label_22624:
	push r4
	lw r5,r2,$-644
	push r5
	jal @a_8598sin
	sw r5,r2,$-640
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1542:21;1542:40 ../cpuex2017/raytracer/min-rt.ml@1542:21;1542:24
	j @cfg_label_22623
@cfg_label_22623:
	fld f1,r2,$-640
	fld f2,r2,$-640
	fmul f1,f1,f2
	fst f1,r2,$-620
; ../cpuex2017/raytracer/min-rt.ml@1542:15;1542:41 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22622
@cfg_label_22622:
	li r5,$0
	sw r5,r2,$-632
; ../cpuex2017/raytracer/min-rt.ml@1543:21;1543:22
	j @cfg_label_22621
@cfg_label_22621:
	fmovi f1,$255.000000
	fst f1,r2,$-636
	j @cfg_label_22620
@cfg_label_22620:
	fld f1,r2,$-636
	fld f2,r2,$-620
	fmul f1,f1,f2
	fst f1,r2,$-628
; ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:32 ../cpuex2017/raytracer/min-rt.ml@1543:36;1543:38
	j @cfg_label_22619
@cfg_label_22619:
	lw r7,r2,$-628
	lw r6,r2,$-632
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-600
; ../cpuex2017/raytracer/min-rt.ml@1543:6;1543:38 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1543:6;1543:19 ../cpuex2017/raytracer/min-rt.ml@1543:21;1543:22 ../cpuex2017/raytracer/min-rt.ml@1543:27;1543:38
	j @cfg_label_22618
@cfg_label_22618:
	li r5,$1
	sw r5,r2,$-608
; ../cpuex2017/raytracer/min-rt.ml@1544:21;1544:22
	j @cfg_label_22617
@cfg_label_22617:
	fmovi f1,$255.000000
	fst f1,r2,$-616
	j @cfg_label_22616
@cfg_label_22616:
	fmovi f1,$1.000000
	fst f1,r2,$-624
	j @cfg_label_22615
@cfg_label_22615:
	fld f1,r2,$-624
	fld f2,r2,$-620
	fsub f1,f1,f2
	fst f1,r2,$-612
; ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:46 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:40 ../cpuex2017/raytracer/min-rt.ml@1544:44;1544:46
	j @cfg_label_22614
@cfg_label_22614:
	fld f1,r2,$-616
	fld f2,r2,$-612
	fmul f1,f1,f2
	fst f1,r2,$-604
; ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:32 ../cpuex2017/raytracer/min-rt.ml@1544:37;1544:46
	j @cfg_label_22613
@cfg_label_22613:
	lw r7,r2,$-604
	lw r6,r2,$-608
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-596
; ../cpuex2017/raytracer/min-rt.ml@1544:6;1544:47 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1544:6;1544:19 ../cpuex2017/raytracer/min-rt.ml@1544:21;1544:22 ../cpuex2017/raytracer/min-rt.ml@1544:27;1544:47
	j @cfg_label_22612
@cfg_label_22612:
	lw r5,r2,$-596
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1521:2;1585:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1544:6;1544:47
	j @cfg_label_22840
@cfg_label_22835:
@cfg_label_22833:
	li r5,$0
	sw r5,r2,$-832
; ../cpuex2017/raytracer/min-rt.ml@1524:17;1524:18
	j @cfg_label_22611
@cfg_label_22611:
	lw r6,r2,$-832
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-824
; ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:15 ../cpuex2017/raytracer/min-rt.ml@1524:17;1524:18
	j @cfg_label_22610
@cfg_label_22610:
	li r5,$0
	sw r5,r2,$-828
; ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22609
@cfg_label_22609:
	lw r6,r2,$-828
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-820
; ../cpuex2017/raytracer/min-rt.ml@1524:23;1524:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@242:2;242:7 ../cpuex2017/raytracer/min-rt.ml@242:9;242:10
	j @cfg_label_22608
@cfg_label_22608:
	fld f1,r2,$-824
	fld f2,r2,$-820
	fsub f1,f1,f2
	fst f1,r2,$-776
; ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1524:14;1524:19 ../cpuex2017/raytracer/min-rt.ml@1524:23;1524:34
	j @cfg_label_22607
@cfg_label_22607:
	fmovi f1,$0.050000
	fst f1,r2,$-816
	j @cfg_label_22606
@cfg_label_22606:
	fld f1,r2,$-776
	fld f2,r2,$-816
	fmul f1,f1,f2
	fst f1,r2,$-796
; ../cpuex2017/raytracer/min-rt.ml@1526:24;1526:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1526:24;1526:26 ../cpuex2017/raytracer/min-rt.ml@1526:30;1526:34
	j @cfg_label_22605
@cfg_label_22605:
	fmovi f1,$0.000000
	fst f1,r2,$-812
	j @cfg_label_22604
@cfg_label_22604:
	fld f1,r2,$-796
	fld f2,r2,$-812
	flt f1,f2
	bft @emit_label_26175
	li r5,$0
	j @emit_label_26176
@emit_label_26175:
	li r5,$1
@emit_label_26176:
	sw r5,r2,$-808
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_22603
@cfg_label_22603:
	li r5,$1
	sw r5,r2,$-804
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_22602
@cfg_label_22602:
	lw r5,r2,$-808
	lw r6,r2,$-804
	bne r5,r6,@cfg_label_22546
	j @cfg_label_22545
	j @cfg_label_22547
	j @cfg_label_22548
@cfg_label_22548:
@cfg_label_22546:
	lw r5,r2,$-796
	sw r5,r2,$-792
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_22601
@cfg_label_22547:
@cfg_label_22545:
	fmovi f1,$1.000000
	fst f1,r2,$-800
	j @cfg_label_22544
@cfg_label_22544:
	fld f1,r2,$-796
	fld f2,r2,$-800
	fsub f1,f1,f2
	fst f1,r2,$-792
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_22600
@cfg_label_22601:
@cfg_label_22600:
	push r4
	lw r5,r2,$-792
	push r5
	jal int_of_float
	sw r5,r2,$-788
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_22599
@cfg_label_22599:
	push r4
	lw r5,r2,$-788
	push r5
	jal float_of_int
	sw r5,r2,$-784
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1526:17;1526:35 lib_tortesia.ml@11:18;11:30
	j @cfg_label_22598
@cfg_label_22598:
	fmovi f1,$20.000000
	fst f1,r2,$-780
	j @cfg_label_22597
@cfg_label_22597:
	fld f1,r2,$-784
	fld f2,r2,$-780
	fmul f1,f1,f2
	fst f1,r2,$-772
; ../cpuex2017/raytracer/min-rt.ml@1526:16;1526:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1526:17;1526:35 ../cpuex2017/raytracer/min-rt.ml@1526:40;1526:44
	j @cfg_label_22596
@cfg_label_22596:
	fld f1,r2,$-776
	fld f2,r2,$-772
	fsub f1,f1,f2
	fst f1,r2,$-768
; ../cpuex2017/raytracer/min-rt.ml@1527:13;1527:21 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1527:13;1527:15 ../cpuex2017/raytracer/min-rt.ml@1527:19;1527:21
	j @cfg_label_22595
@cfg_label_22595:
	fmovi f1,$10.000000
	fst f1,r2,$-764
	j @cfg_label_22594
@cfg_label_22594:
	fld f1,r2,$-768
	fld f2,r2,$-764
	flt f1,f2
	bft @emit_label_26177
	li r5,$0
	j @emit_label_26178
@emit_label_26177:
	li r5,$1
@emit_label_26178:
	sw r5,r2,$-688
; ../cpuex2017/raytracer/min-rt.ml@1526:7;1527:27 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_22593
@cfg_label_22593:
	li r5,$2
	sw r5,r2,$-760
; ../cpuex2017/raytracer/min-rt.ml@1529:17;1529:18
	j @cfg_label_22592
@cfg_label_22592:
	lw r6,r2,$-760
	lw r5,r2,$52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-752
; ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:15 ../cpuex2017/raytracer/min-rt.ml@1529:17;1529:18
	j @cfg_label_22591
@cfg_label_22591:
	li r5,$2
	sw r5,r2,$-756
; ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22590
@cfg_label_22590:
	lw r6,r2,$-756
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-748
; ../cpuex2017/raytracer/min-rt.ml@1529:23;1529:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@262:2;262:7 ../cpuex2017/raytracer/min-rt.ml@262:9;262:10
	j @cfg_label_22589
@cfg_label_22589:
	fld f1,r2,$-752
	fld f2,r2,$-748
	fsub f1,f1,f2
	fst f1,r2,$-704
; ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:34 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1529:14;1529:19 ../cpuex2017/raytracer/min-rt.ml@1529:23;1529:34
	j @cfg_label_22588
@cfg_label_22588:
	fmovi f1,$0.050000
	fst f1,r2,$-744
	j @cfg_label_22587
@cfg_label_22587:
	fld f1,r2,$-704
	fld f2,r2,$-744
	fmul f1,f1,f2
	fst f1,r2,$-724
; ../cpuex2017/raytracer/min-rt.ml@1531:24;1531:34 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1531:24;1531:26 ../cpuex2017/raytracer/min-rt.ml@1531:30;1531:34
	j @cfg_label_22586
@cfg_label_22586:
	fmovi f1,$0.000000
	fst f1,r2,$-740
	j @cfg_label_22585
@cfg_label_22585:
	fld f1,r2,$-724
	fld f2,r2,$-740
	flt f1,f2
	bft @emit_label_26179
	li r5,$0
	j @emit_label_26180
@emit_label_26179:
	li r5,$1
@emit_label_26180:
	sw r5,r2,$-736
; lib_tortesia.ml@11:49;11:56 ::= Olt lib_tortesia.ml@11:49;11:50 lib_tortesia.ml@11:53;11:56
	j @cfg_label_22584
@cfg_label_22584:
	li r5,$1
	sw r5,r2,$-732
; lib_tortesia.ml@11:49;11:56
	j @cfg_label_22583
@cfg_label_22583:
	lw r5,r2,$-736
	lw r6,r2,$-732
	bne r5,r6,@cfg_label_22551
	j @cfg_label_22550
	j @cfg_label_22552
	j @cfg_label_22553
@cfg_label_22553:
@cfg_label_22551:
	lw r5,r2,$-724
	sw r5,r2,$-720
; lib_tortesia.ml@11:46;11:79 ::<= lib_tortesia.ml@11:49;11:50
	j @cfg_label_22582
@cfg_label_22552:
@cfg_label_22550:
	fmovi f1,$1.000000
	fst f1,r2,$-728
	j @cfg_label_22549
@cfg_label_22549:
	fld f1,r2,$-724
	fld f2,r2,$-728
	fsub f1,f1,f2
	fst f1,r2,$-720
; lib_tortesia.ml@11:46;11:79 ::= Ofsub lib_tortesia.ml@11:63;11:64 lib_tortesia.ml@11:68;11:71
	j @cfg_label_22581
@cfg_label_22582:
@cfg_label_22581:
	push r4
	lw r5,r2,$-720
	push r5
	jal int_of_float
	sw r5,r2,$-716
	addi r1,r1,$4
	pop r4
; lib_tortesia.ml@11:32;11:80 lib_tortesia.ml@11:32;11:44
	j @cfg_label_22580
@cfg_label_22580:
	push r4
	lw r5,r2,$-716
	push r5
	jal float_of_int
	sw r5,r2,$-712
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1531:17;1531:35 lib_tortesia.ml@11:18;11:30
	j @cfg_label_22579
@cfg_label_22579:
	fmovi f1,$20.000000
	fst f1,r2,$-708
	j @cfg_label_22578
@cfg_label_22578:
	fld f1,r2,$-712
	fld f2,r2,$-708
	fmul f1,f1,f2
	fst f1,r2,$-700
; ../cpuex2017/raytracer/min-rt.ml@1531:16;1531:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1531:17;1531:35 ../cpuex2017/raytracer/min-rt.ml@1531:40;1531:44
	j @cfg_label_22577
@cfg_label_22577:
	fld f1,r2,$-704
	fld f2,r2,$-700
	fsub f1,f1,f2
	fst f1,r2,$-696
; ../cpuex2017/raytracer/min-rt.ml@1532:14;1532:22 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1532:14;1532:16 ../cpuex2017/raytracer/min-rt.ml@1532:20;1532:22
	j @cfg_label_22576
@cfg_label_22576:
	fmovi f1,$10.000000
	fst f1,r2,$-692
	j @cfg_label_22575
@cfg_label_22575:
	fld f1,r2,$-696
	fld f2,r2,$-692
	flt f1,f2
	bft @emit_label_26181
	li r5,$0
	j @emit_label_26182
@emit_label_26181:
	li r5,$1
@emit_label_26182:
	sw r5,r2,$-676
; ../cpuex2017/raytracer/min-rt.ml@1531:7;1532:28 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_22574
@cfg_label_22574:
	li r5,$1
	sw r5,r2,$-668
; ../cpuex2017/raytracer/min-rt.ml@1534:20;1534:21
	j @cfg_label_22573
@cfg_label_22573:
	li r5,$1
	sw r5,r2,$-684
; ../cpuex2017/raytracer/min-rt.ml@1535:10;1535:15
	j @cfg_label_22572
@cfg_label_22572:
	lw r5,r2,$-688
	lw r6,r2,$-684
	bne r5,r6,@cfg_label_22565
	j @cfg_label_22564
	j @cfg_label_22566
	j @cfg_label_22567
@cfg_label_22567:
@cfg_label_22565:
	li r5,$1
	sw r5,r2,$-672
; ../cpuex2017/raytracer/min-rt.ml@1537:16;1537:21
	j @cfg_label_22563
@cfg_label_22563:
	lw r5,r2,$-676
	lw r6,r2,$-672
	bne r5,r6,@cfg_label_22560
	j @cfg_label_22559
	j @cfg_label_22561
	j @cfg_label_22562
@cfg_label_22561:
@cfg_label_22559:
	fmovi f1,$0.000000
	fst f1,r2,$-664
	j @cfg_label_22570
@cfg_label_22562:
@cfg_label_22560:
	fmovi f1,$255.000000
	fst f1,r2,$-664
	j @cfg_label_22571
@cfg_label_22566:
@cfg_label_22564:
	li r5,$1
	sw r5,r2,$-680
; ../cpuex2017/raytracer/min-rt.ml@1536:16;1536:21
	j @cfg_label_22558
@cfg_label_22558:
	lw r5,r2,$-676
	lw r6,r2,$-680
	bne r5,r6,@cfg_label_22555
	j @cfg_label_22554
	j @cfg_label_22556
	j @cfg_label_22557
@cfg_label_22556:
@cfg_label_22554:
	fmovi f1,$255.000000
	fst f1,r2,$-664
	j @cfg_label_22568
@cfg_label_22557:
@cfg_label_22555:
	fmovi f1,$0.000000
	fst f1,r2,$-664
	j @cfg_label_22569
@cfg_label_22571:
@cfg_label_22570:
@cfg_label_22569:
@cfg_label_22568:
	lw r7,r2,$-664
	lw r6,r2,$-668
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1521:2;1585:9 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1534:5;1534:18 ../cpuex2017/raytracer/min-rt.ml@1534:20;1534:21 ../cpuex2017/raytracer/min-rt.ml@1535:7;1537:42
	j @cfg_label_22839
@cfg_label_22843:
@cfg_label_22842:
@cfg_label_22841:
@cfg_label_22840:
@cfg_label_22839:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1520:2;1585:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1521:2;1585:9
	j @cfg_label_22838
@cfg_label_22838:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1519:2;1585:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1520:2;1585:9
	j @cfg_label_22837
@cfg_label_22837:
	lw r5,r2,$-4
	sw r5,r2,$-876
; ../cpuex2017/raytracer/min-rt.ml@1516:2;1585:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1519:2;1585:9
	lw r5,r2,$-876
	addi r1,r1,$876
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-876
	addi r1,r1,$876
	pop r2
	pop r6
	jr r6
@a_8967add_light:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$112
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_22543
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_22543
@cfg_label_22543:
	fld f1,r2,$8
	fld f2,r2,$-108
	flt f2,f1
	bft @emit_label_26183
	li r5,$0
	j @emit_label_26184
@emit_label_26183:
	li r5,$1
@emit_label_26184:
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1596:5;1596:18 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_22542
@cfg_label_22542:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1596:5;1596:18
	j @cfg_label_22541
@cfg_label_22541:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_22508
	j @cfg_label_22507
	j @cfg_label_22509
	j @cfg_label_22510
@cfg_label_22509:
@cfg_label_22507:
	push r4
	lw r5,r31,$280
	push r5
	lw r5,r2,$8
	push r5
	lw r5,r31,$256
	push r5
	jal @a_8678vecaccum
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1598:9 ../cpuex2017/raytracer/min-rt.ml@1597:4;1597:12
	j @cfg_label_22539
@cfg_label_22510:
@cfg_label_22508:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1598:9
	j @cfg_label_22540
@cfg_label_22540:
@cfg_label_22539:
	fmovi f1,$0.000000
	fst f1,r2,$-96
	j @cfg_label_22538
@cfg_label_22538:
	fld f1,r2,$12
	fld f2,r2,$-96
	flt f2,f1
	bft @emit_label_26185
	li r5,$0
	j @emit_label_26186
@emit_label_26185:
	li r5,$1
@emit_label_26186:
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1601:5;1601:19 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_22537
@cfg_label_22537:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1601:5;1601:19
	j @cfg_label_22536
@cfg_label_22536:
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_22531
	j @cfg_label_22530
	j @cfg_label_22532
	j @cfg_label_22533
@cfg_label_22533:
@cfg_label_22531:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1601:2;1606:11
	j @cfg_label_22535
@cfg_label_22532:
@cfg_label_22530:
	fld f1,r2,$12
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1602:20;1602:32 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22529
@cfg_label_22529:
	fld f1,r2,$-84
	fld f2,r2,$-84
	fmul f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:33 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22528
@cfg_label_22528:
	fld f1,r2,$-80
	fld f2,r2,$16
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:50 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1602:14;1602:33 ../cpuex2017/raytracer/min-rt.ml@1602:37;1602:50
	j @cfg_label_22527
@cfg_label_22527:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1603:9;1603:10
	j @cfg_label_22526
@cfg_label_22526:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1603:20;1603:21
	j @cfg_label_22525
@cfg_label_22525:
	lw r6,r2,$-76
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:18 ../cpuex2017/raytracer/min-rt.ml@1603:20;1603:21
	j @cfg_label_22524
@cfg_label_22524:
	fld f1,r2,$-72
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:22 ../cpuex2017/raytracer/min-rt.ml@1603:26;1603:29
	j @cfg_label_22523
@cfg_label_22523:
	lw r7,r2,$-64
	lw r6,r2,$-68
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1603:4;1603:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1603:4;1603:7 ../cpuex2017/raytracer/min-rt.ml@1603:9;1603:10 ../cpuex2017/raytracer/min-rt.ml@1603:15;1603:29
	j @cfg_label_22522
@cfg_label_22522:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1604:9;1604:10
	j @cfg_label_22521
@cfg_label_22521:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1604:20;1604:21
	j @cfg_label_22520
@cfg_label_22520:
	lw r6,r2,$-60
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:18 ../cpuex2017/raytracer/min-rt.ml@1604:20;1604:21
	j @cfg_label_22519
@cfg_label_22519:
	fld f1,r2,$-56
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:22 ../cpuex2017/raytracer/min-rt.ml@1604:26;1604:29
	j @cfg_label_22518
@cfg_label_22518:
	lw r7,r2,$-48
	lw r6,r2,$-52
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1604:4;1604:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1604:4;1604:7 ../cpuex2017/raytracer/min-rt.ml@1604:9;1604:10 ../cpuex2017/raytracer/min-rt.ml@1604:15;1604:29
	j @cfg_label_22517
@cfg_label_22517:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1605:9;1605:10
	j @cfg_label_22516
@cfg_label_22516:
	li r5,$2
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1605:20;1605:21
	j @cfg_label_22515
@cfg_label_22515:
	lw r6,r2,$-44
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:18 ../cpuex2017/raytracer/min-rt.ml@1605:20;1605:21
	j @cfg_label_22514
@cfg_label_22514:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:22 ../cpuex2017/raytracer/min-rt.ml@1605:26;1605:29
	j @cfg_label_22513
@cfg_label_22513:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1605:4;1605:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1605:4;1605:7 ../cpuex2017/raytracer/min-rt.ml@1605:9;1605:10 ../cpuex2017/raytracer/min-rt.ml@1605:15;1605:29
	j @cfg_label_22512
@cfg_label_22512:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1604:4;1605:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1605:4;1605:29
	j @cfg_label_22511
@cfg_label_22511:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1601:2;1606:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1604:4;1605:29
	j @cfg_label_22534
@cfg_label_22535:
@cfg_label_22534:
	lw r5,r2,$-4
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1596:2;1606:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1601:2;1606:11
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@a_8971trace_reflections:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$132
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1612:14;1612:15
	j @cfg_label_22506
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1612:14;1612:15
	j @cfg_label_22506
@cfg_label_22506:
	lw r6,r2,$-128
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1612:5;1612:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1612:5;1612:10 ../cpuex2017/raytracer/min-rt.ml@1612:14;1612:15
	j @cfg_label_22505
@cfg_label_22505:
	li r5,$1
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1612:5;1612:15
	j @cfg_label_22504
@cfg_label_22504:
	lw r5,r2,$-124
	lw r6,r2,$-120
	bne r5,r6,@cfg_label_22501
	j @cfg_label_22500
	j @cfg_label_22502
	j @cfg_label_22503
@cfg_label_22503:
@cfg_label_22501:
	sw r3,r2,$-132
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11
	lw r5,r2,$-132
	addi r1,r1,$132
	pop r2
	pop r6
	jr r6
@cfg_label_22502:
@cfg_label_22500:
	lw r6,r2,$8
	lw r5,r31,$32
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1613:16;1613:27 ../cpuex2017/raytracer/min-rt.ml@1613:29;1613:34
	j @cfg_label_22499
@cfg_label_22499:
	lw r5,r2,$-116
	lw r5,r5,$8
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27
	j @cfg_label_22498
@cfg_label_22498:
	lw r5,r2,$-116
	lw r5,r5,$4
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27
	j @cfg_label_22497
@cfg_label_22497:
	lw r5,r2,$-116
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27
	j @cfg_label_22496
@cfg_label_22496:
	lw r5,r2,$-112
	lw r5,r5,$4
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27
	j @cfg_label_22495
@cfg_label_22495:
	lw r5,r2,$-112
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1614:22;1614:27
	j @cfg_label_22494
@cfg_label_22494:
	push r4
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-36
	push r5
	jal @a_8953judge_intersection_fast
	sw r5,r2,$-104
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35 ../cpuex2017/raytracer/min-rt.ml@1617:7;1617:30
	j @cfg_label_22493
@cfg_label_22493:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1617:7;1617:35
	j @cfg_label_22492
@cfg_label_22492:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_22482
	j @cfg_label_22481
	j @cfg_label_22483
	j @cfg_label_22484
@cfg_label_22484:
@cfg_label_22482:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_22491
@cfg_label_22483:
@cfg_label_22481:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1618:46;1618:47
	j @cfg_label_22480
@cfg_label_22480:
	lw r6,r2,$-96
	lw r5,r31,$304
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:44 ../cpuex2017/raytracer/min-rt.ml@1618:46;1618:47
	j @cfg_label_22479
@cfg_label_22479:
	lw r5,r2,$-92
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:52 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:48
	j @cfg_label_22478
@cfg_label_22478:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1618:72;1618:73
	j @cfg_label_22477
@cfg_label_22477:
	lw r6,r2,$-88
	lw r5,r31,$340
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1618:55;1618:74 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1618:55;1618:70 ../cpuex2017/raytracer/min-rt.ml@1618:72;1618:73
	j @cfg_label_22476
@cfg_label_22476:
	lw r6,r2,$-80
	lw r5,r2,$-84
	add r5,r5,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:74 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1618:23;1618:52 ../cpuex2017/raytracer/min-rt.ml@1618:55;1618:74
	j @cfg_label_22475
@cfg_label_22475:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_22472
	j @cfg_label_22471
	j @cfg_label_22473
	j @cfg_label_22474
@cfg_label_22474:
@cfg_label_22472:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_22490
@cfg_label_22473:
@cfg_label_22471:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1621:43;1621:44
	j @cfg_label_22470
@cfg_label_22470:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1621:53;1621:54
	j @cfg_label_22469
@cfg_label_22469:
	lw r6,r2,$-68
	lw r5,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1621:45;1621:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1621:45;1621:51 ../cpuex2017/raytracer/min-rt.ml@1621:53;1621:54
	j @cfg_label_22468
@cfg_label_22468:
	push r4
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	jal @a_8924shadow_check_one_or_matrix
	sw r5,r2,$-56
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1621:16;1621:55 ../cpuex2017/raytracer/min-rt.ml@1621:16;1621:42
	j @cfg_label_22467
@cfg_label_22467:
	lw r5,r2,$-56
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1621:11;1621:56 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1621:16;1621:55
	j @cfg_label_22466
@cfg_label_22466:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1621:11;1621:56
	j @cfg_label_22465
@cfg_label_22465:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_22462
	j @cfg_label_22461
	j @cfg_label_22463
	j @cfg_label_22464
@cfg_label_22464:
@cfg_label_22462:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11
	j @cfg_label_22489
@cfg_label_22463:
@cfg_label_22461:
	push r4
	lw r5,r2,$-36
	push r5
	lw r5,r31,$292
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1623:18;1623:47 ../cpuex2017/raytracer/min-rt.ml@1623:18;1623:26
	j @cfg_label_22460
@cfg_label_22460:
	fld f1,r2,$-32
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:28 ../cpuex2017/raytracer/min-rt.ml@1625:32;1625:39
	j @cfg_label_22459
@cfg_label_22459:
	fld f1,r2,$-44
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1625:23;1625:39 ../cpuex2017/raytracer/min-rt.ml@1625:43;1625:44
	j @cfg_label_22458
@cfg_label_22458:
	push r4
	lw r5,r2,$-36
	push r5
	lw r5,r2,$20
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-28
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1626:33;1626:61 ../cpuex2017/raytracer/min-rt.ml@1626:33;1626:41
	j @cfg_label_22457
@cfg_label_22457:
	fld f1,r2,$-32
	fld f2,r2,$-28
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1626:24;1626:61 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1626:24;1626:29 ../cpuex2017/raytracer/min-rt.ml@1626:33;1626:61
	j @cfg_label_22456
@cfg_label_22456:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-20
	push r5
	lw r5,r2,$-24
	push r5
	jal @a_8967add_light
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1617:4;1630:11 ../cpuex2017/raytracer/min-rt.ml@1627:10;1627:19
	j @cfg_label_22488
@cfg_label_22491:
@cfg_label_22490:
@cfg_label_22489:
@cfg_label_22488:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1631:31;1631:32
	j @cfg_label_22487
@cfg_label_22487:
	lw r6,r2,$-16
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1631:23;1631:32 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1631:23;1631:28 ../cpuex2017/raytracer/min-rt.ml@1631:31;1631:32
	j @cfg_label_22486
@cfg_label_22486:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_8971trace_reflections
	sw r5,r2,$-4
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1631:4;1631:62 ../cpuex2017/raytracer/min-rt.ml@1631:4;1631:21
	j @cfg_label_22485
@cfg_label_22485:
	lw r5,r2,$-4
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1612:2;1632:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1631:4;1631:62
	lw r5,r2,$-132
	addi r1,r1,$132
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-132
	addi r1,r1,$132
	pop r2
	pop r6
	jr r6
@a_8976trace_ray:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$864
	li r5,$4
	sw r5,r2,$-860
; ../cpuex2017/raytracer/min-rt.ml@1640:13;1640:14
	j @cfg_label_22455
	li r5,$4
	sw r5,r2,$-860
; ../cpuex2017/raytracer/min-rt.ml@1640:13;1640:14
	j @cfg_label_22455
@cfg_label_22455:
	lw r6,r2,$-860
	lw r5,r2,$8
	slt r5,r6,r5
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-856
; ../cpuex2017/raytracer/min-rt.ml@1640:5;1640:14 ::= Oleq ../cpuex2017/raytracer/min-rt.ml@1640:5;1640:9 ../cpuex2017/raytracer/min-rt.ml@1640:13;1640:14
	j @cfg_label_22454
@cfg_label_22454:
	li r5,$1
	sw r5,r2,$-852
; ../cpuex2017/raytracer/min-rt.ml@1640:5;1640:14
	j @cfg_label_22453
@cfg_label_22453:
	lw r5,r2,$-856
	lw r6,r2,$-852
	bne r5,r6,@cfg_label_22450
	j @cfg_label_22449
	j @cfg_label_22451
	j @cfg_label_22452
@cfg_label_22452:
@cfg_label_22450:
	sw r3,r2,$-864
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12
	lw r5,r2,$-864
	addi r1,r1,$864
	pop r2
	pop r6
	jr r6
@cfg_label_22451:
@cfg_label_22449:
	push r4
	lw r5,r2,$16
	push r5
	jal @a_8939judge_intersection
	sw r5,r2,$-848
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32 ../cpuex2017/raytracer/min-rt.ml@1642:7;1642:25
	j @cfg_label_22448
@cfg_label_22448:
	li r5,$1
	sw r5,r2,$-844
; ../cpuex2017/raytracer/min-rt.ml@1642:7;1642:32
	j @cfg_label_22447
@cfg_label_22447:
	lw r5,r2,$-848
	lw r6,r2,$-844
	bne r5,r6,@cfg_label_22444
	j @cfg_label_22443
	j @cfg_label_22445
	j @cfg_label_22446
@cfg_label_22446:
@cfg_label_22444:
	li r5,$-1
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1705:28;1705:30
	j @cfg_label_22442
@cfg_label_22442:
	lw r7,r2,$-136
	lw r6,r2,$8
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1705:6;1705:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1705:6;1705:17 ../cpuex2017/raytracer/min-rt.ml@1705:19;1705:23 ../cpuex2017/raytracer/min-rt.ml@1705:28;1705:30
	j @cfg_label_22441
@cfg_label_22441:
	li r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1707:17;1707:18
	j @cfg_label_22440
@cfg_label_22440:
	lw r6,r2,$-132
	lw r5,r2,$8
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1707:9;1707:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1707:9;1707:13 ../cpuex2017/raytracer/min-rt.ml@1707:17;1707:18
	j @cfg_label_22439
@cfg_label_22439:
	li r5,$1
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1707:9;1707:18
	j @cfg_label_22438
@cfg_label_22438:
	lw r5,r2,$-128
	lw r6,r2,$-124
	bne r5,r6,@cfg_label_22432
	j @cfg_label_22431
	j @cfg_label_22433
	j @cfg_label_22434
@cfg_label_22434:
@cfg_label_22432:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1707:6;1719:16
	j @cfg_label_22437
@cfg_label_22433:
@cfg_label_22431:
	push r4
	lw r5,r31,$420
	push r5
	lw r5,r2,$16
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-116
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1708:16;1708:37 ../cpuex2017/raytracer/min-rt.ml@1708:16;1708:24
	j @cfg_label_22430
@cfg_label_22430:
	fmovi f1,$-1.000000
	fst f1,r2,$-120
	j @cfg_label_22429
@cfg_label_22429:
	fld f1,r2,$-120
	fld f2,r2,$-116
	fmul f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1708:10;1708:38 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22428
@cfg_label_22428:
	fmovi f1,$0.000000
	fst f1,r2,$-112
	j @cfg_label_22427
@cfg_label_22427:
	fld f1,r2,$-96
	fld f2,r2,$-112
	flt f2,f1
	bft @emit_label_26187
	li r5,$0
	j @emit_label_26188
@emit_label_26187:
	li r5,$1
@emit_label_26188:
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1710:4;1710:13 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_22426
@cfg_label_22426:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1710:4;1710:13
	j @cfg_label_22425
@cfg_label_22425:
	lw r5,r2,$-108
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_22422
	j @cfg_label_22421
	j @cfg_label_22423
	j @cfg_label_22424
@cfg_label_22424:
@cfg_label_22422:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1707:6;1719:16
	j @cfg_label_22436
@cfg_label_22423:
@cfg_label_22421:
	fld f1,r2,$-96
	fld f2,r2,$-96
	fmul f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:21 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_22420
@cfg_label_22420:
	fld f1,r2,$-100
	fld f2,r2,$-96
	fmul f1,f1,f2
	fst f1,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:27 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:21 ../cpuex2017/raytracer/min-rt.ml@1713:25;1713:27
	j @cfg_label_22419
@cfg_label_22419:
	fld f1,r2,$-92
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:37 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:27 ../cpuex2017/raytracer/min-rt.ml@1713:31;1713:37
	j @cfg_label_22418
@cfg_label_22418:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1713:47;1713:48
	j @cfg_label_22417
@cfg_label_22417:
	lw r6,r2,$-88
	lw r5,r31,$408
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1713:41;1713:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1713:41;1713:45 ../cpuex2017/raytracer/min-rt.ml@1713:47;1713:48
	j @cfg_label_22416
@cfg_label_22416:
	fld f1,r2,$-84
	fld f2,r2,$-80
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1713:14;1713:37 ../cpuex2017/raytracer/min-rt.ml@1713:41;1713:49
	j @cfg_label_22415
@cfg_label_22415:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1714:9;1714:10
	j @cfg_label_22414
@cfg_label_22414:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1714:20;1714:21
	j @cfg_label_22413
@cfg_label_22413:
	lw r6,r2,$-76
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:18 ../cpuex2017/raytracer/min-rt.ml@1714:20;1714:21
	j @cfg_label_22412
@cfg_label_22412:
	fld f1,r2,$-72
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:22 ../cpuex2017/raytracer/min-rt.ml@1714:26;1714:29
	j @cfg_label_22411
@cfg_label_22411:
	lw r7,r2,$-64
	lw r6,r2,$-68
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1714:4;1714:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1714:4;1714:7 ../cpuex2017/raytracer/min-rt.ml@1714:9;1714:10 ../cpuex2017/raytracer/min-rt.ml@1714:15;1714:29
	j @cfg_label_22410
@cfg_label_22410:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1715:9;1715:10
	j @cfg_label_22409
@cfg_label_22409:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1715:20;1715:21
	j @cfg_label_22408
@cfg_label_22408:
	lw r6,r2,$-60
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:18 ../cpuex2017/raytracer/min-rt.ml@1715:20;1715:21
	j @cfg_label_22407
@cfg_label_22407:
	fld f1,r2,$-56
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:22 ../cpuex2017/raytracer/min-rt.ml@1715:26;1715:29
	j @cfg_label_22406
@cfg_label_22406:
	lw r7,r2,$-48
	lw r6,r2,$-52
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1715:4;1715:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1715:4;1715:7 ../cpuex2017/raytracer/min-rt.ml@1715:9;1715:10 ../cpuex2017/raytracer/min-rt.ml@1715:15;1715:29
	j @cfg_label_22405
@cfg_label_22405:
	li r5,$2
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1716:9;1716:10
	j @cfg_label_22404
@cfg_label_22404:
	li r5,$2
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1716:20;1716:21
	j @cfg_label_22403
@cfg_label_22403:
	lw r6,r2,$-44
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:18 ../cpuex2017/raytracer/min-rt.ml@1716:20;1716:21
	j @cfg_label_22402
@cfg_label_22402:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fadd f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:29 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:22 ../cpuex2017/raytracer/min-rt.ml@1716:26;1716:29
	j @cfg_label_22401
@cfg_label_22401:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1716:4;1716:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1716:4;1716:7 ../cpuex2017/raytracer/min-rt.ml@1716:9;1716:10 ../cpuex2017/raytracer/min-rt.ml@1716:15;1716:29
	j @cfg_label_22400
@cfg_label_22400:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1715:4;1716:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1716:4;1716:29
	j @cfg_label_22399
@cfg_label_22399:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1707:6;1719:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1715:4;1716:29
	j @cfg_label_22435
@cfg_label_22437:
@cfg_label_22436:
@cfg_label_22435:
	lw r5,r2,$-4
	sw r5,r2,$-864
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1707:6;1719:16
	lw r5,r2,$-864
	addi r1,r1,$864
	pop r2
	pop r6
	jr r6
@cfg_label_22445:
@cfg_label_22443:
	li r5,$0
	sw r5,r2,$-840
; ../cpuex2017/raytracer/min-rt.ml@1644:42;1644:43
	j @cfg_label_22398
@cfg_label_22398:
	lw r6,r2,$-840
	lw r5,r31,$304
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-736
; ../cpuex2017/raytracer/min-rt.ml@1644:19;1644:44 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1644:19;1644:40 ../cpuex2017/raytracer/min-rt.ml@1644:42;1644:43
	j @cfg_label_22397
@cfg_label_22397:
	lw r6,r2,$-736
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-836
; ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1645:16;1645:23 ../cpuex2017/raytracer/min-rt.ml@1645:25;1645:31
	j @cfg_label_22396
@cfg_label_22396:
	lw r5,r2,$-836
	lw r5,r5,$40
	sw r5,r2,$-740
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22395
@cfg_label_22395:
	lw r5,r2,$-836
	lw r5,r5,$36
	sw r5,r2,$-744
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22394
@cfg_label_22394:
	lw r5,r2,$-836
	lw r5,r5,$32
	sw r5,r2,$-748
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22393
@cfg_label_22393:
	lw r5,r2,$-836
	lw r5,r5,$28
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22392
@cfg_label_22392:
	lw r5,r2,$-836
	lw r5,r5,$24
	sw r5,r2,$-752
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22391
@cfg_label_22391:
	lw r5,r2,$-836
	lw r5,r5,$20
	sw r5,r2,$-756
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22390
@cfg_label_22390:
	lw r5,r2,$-836
	lw r5,r5,$16
	sw r5,r2,$-760
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22389
@cfg_label_22389:
	lw r5,r2,$-836
	lw r5,r5,$12
	sw r5,r2,$-764
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22388
@cfg_label_22388:
	lw r5,r2,$-836
	lw r5,r5,$8
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22387
@cfg_label_22387:
	lw r5,r2,$-836
	lw r5,r5,$4
	sw r5,r2,$-768
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22386
@cfg_label_22386:
	lw r5,r2,$-836
	lw r5,r5,$0
	sw r5,r2,$-772
; ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1646:39;1646:42
	j @cfg_label_22385
@cfg_label_22385:
	li r5,$0
	sw r5,r2,$-832
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22384
@cfg_label_22384:
	lw r6,r2,$-832
	lw r5,r2,$-272
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-828
; ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22383
@cfg_label_22383:
	fld f1,r2,$-828
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:43 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1647:20;1647:33 ../cpuex2017/raytracer/min-rt.ml@1647:37;1647:43
	j @cfg_label_22382
@cfg_label_22382:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-740
	push r5
	lw r5,r2,$-744
	push r5
	lw r5,r2,$-748
	push r5
	lw r5,r2,$-272
	push r5
	lw r5,r2,$-752
	push r5
	lw r5,r2,$-756
	push r5
	lw r5,r2,$-760
	push r5
	lw r5,r2,$-764
	push r5
	lw r5,r2,$-280
	push r5
	lw r5,r2,$-768
	push r5
	lw r5,r2,$-772
	push r5
	jal @a_8961get_nvector
	sw r5,r2,$-144
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1649:6;1649:28 ../cpuex2017/raytracer/min-rt.ml@1649:6;1649:17
	j @cfg_label_22381
@cfg_label_22381:
	li r5,$0
	sw r5,r2,$-820
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22380
@cfg_label_22380:
	li r5,$0
	sw r5,r2,$-824
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22379
@cfg_label_22379:
	lw r6,r2,$-824
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-816
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22378
@cfg_label_22378:
	lw r7,r2,$-816
	lw r6,r2,$-820
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-780
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_22377
@cfg_label_22377:
	li r5,$1
	sw r5,r2,$-808
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_22376
@cfg_label_22376:
	li r5,$1
	sw r5,r2,$-812
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22375
@cfg_label_22375:
	lw r6,r2,$-812
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-804
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22374
@cfg_label_22374:
	lw r7,r2,$-804
	lw r6,r2,$-808
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-788
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_22373
@cfg_label_22373:
	li r5,$2
	sw r5,r2,$-796
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_22372
@cfg_label_22372:
	li r5,$2
	sw r5,r2,$-800
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22371
@cfg_label_22371:
	lw r6,r2,$-800
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-792
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22370
@cfg_label_22370:
	lw r7,r2,$-792
	lw r6,r2,$-796
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-784
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_22369
@cfg_label_22369:
	lw r5,r2,$-784
	sw r5,r2,$-776
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_22368
@cfg_label_22368:
	lw r5,r2,$-776
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1650:6;1650:38 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_22367
@cfg_label_22367:
	push r4
	lw r5,r31,$316
	push r5
	lw r5,r2,$-740
	push r5
	lw r5,r2,$-744
	push r5
	lw r5,r2,$-748
	push r5
	lw r5,r2,$-272
	push r5
	lw r5,r2,$-752
	push r5
	lw r5,r2,$-756
	push r5
	lw r5,r2,$-760
	push r5
	lw r5,r2,$-764
	push r5
	lw r5,r2,$-280
	push r5
	lw r5,r2,$-768
	push r5
	lw r5,r2,$-772
	push r5
	jal @a_8964utexture
	sw r5,r2,$-160
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1651:6;1651:37 ../cpuex2017/raytracer/min-rt.ml@1651:6;1651:14
	j @cfg_label_22366
@cfg_label_22366:
	lw r5,r2,$-736
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-728
; ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:38 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:34
	j @cfg_label_22365
@cfg_label_22365:
	li r5,$0
	sw r5,r2,$-732
; ../cpuex2017/raytracer/min-rt.ml@1654:58;1654:59
	j @cfg_label_22364
@cfg_label_22364:
	lw r6,r2,$-732
	lw r5,r31,$340
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-724
; ../cpuex2017/raytracer/min-rt.ml@1654:41;1654:60 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1654:41;1654:56 ../cpuex2017/raytracer/min-rt.ml@1654:58;1654:59
	j @cfg_label_22363
@cfg_label_22363:
	lw r6,r2,$-724
	lw r5,r2,$-728
	add r5,r5,r6
	sw r5,r2,$-720
; ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:60 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:38 ../cpuex2017/raytracer/min-rt.ml@1654:41;1654:60
	j @cfg_label_22362
@cfg_label_22362:
	lw r7,r2,$-720
	lw r6,r2,$8
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1654:6;1654:60 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1654:6;1654:17 ../cpuex2017/raytracer/min-rt.ml@1654:19;1654:23 ../cpuex2017/raytracer/min-rt.ml@1654:28;1654:60
	j @cfg_label_22361
@cfg_label_22361:
	lw r6,r2,$8
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-688
; ../cpuex2017/raytracer/min-rt.ml@1656:13;1656:39 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1656:13;1656:32 ../cpuex2017/raytracer/min-rt.ml@1656:34;1656:38
	j @cfg_label_22360
@cfg_label_22360:
	li r5,$0
	sw r5,r2,$-712
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22359
@cfg_label_22359:
	li r5,$0
	sw r5,r2,$-716
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22358
@cfg_label_22358:
	lw r6,r2,$-716
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-708
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22357
@cfg_label_22357:
	lw r7,r2,$-708
	lw r6,r2,$-712
	lw r5,r2,$-688
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-668
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_22356
@cfg_label_22356:
	li r5,$1
	sw r5,r2,$-700
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_22355
@cfg_label_22355:
	li r5,$1
	sw r5,r2,$-704
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22354
@cfg_label_22354:
	lw r6,r2,$-704
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-696
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22353
@cfg_label_22353:
	lw r7,r2,$-696
	lw r6,r2,$-700
	lw r5,r2,$-688
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-676
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_22352
@cfg_label_22352:
	li r5,$2
	sw r5,r2,$-684
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_22351
@cfg_label_22351:
	li r5,$2
	sw r5,r2,$-692
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22350
@cfg_label_22350:
	lw r6,r2,$-692
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-680
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22349
@cfg_label_22349:
	lw r7,r2,$-680
	lw r6,r2,$-684
	lw r5,r2,$-688
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-672
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_22348
@cfg_label_22348:
	lw r5,r2,$-672
	sw r5,r2,$-664
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_22347
@cfg_label_22347:
	lw r5,r2,$-664
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1656:6;1656:58 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_22346
@cfg_label_22346:
	li r5,$0
	sw r5,r2,$-660
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22345
@cfg_label_22345:
	lw r6,r2,$-660
	lw r5,r2,$-272
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-656
; ../cpuex2017/raytracer/min-rt.ml@1660:16;1660:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22344
@cfg_label_22344:
	fmovi f1,$0.500000
	fst f1,r2,$-652
	j @cfg_label_22343
@cfg_label_22343:
	fld f1,r2,$-656
	fld f2,r2,$-652
	flt f1,f2
	bft @emit_label_26189
	li r5,$0
	j @emit_label_26190
@emit_label_26189:
	li r5,$1
@emit_label_26190:
	sw r5,r2,$-648
; ../cpuex2017/raytracer/min-rt.ml@1660:9;1660:34 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_22342
@cfg_label_22342:
	li r5,$1
	sw r5,r2,$-644
; ../cpuex2017/raytracer/min-rt.ml@1660:9;1660:34
	j @cfg_label_22341
@cfg_label_22341:
	lw r5,r2,$-648
	lw r6,r2,$-644
	bne r5,r6,@cfg_label_22237
	j @cfg_label_22236
	j @cfg_label_22238
	j @cfg_label_22239
@cfg_label_22238:
@cfg_label_22236:
	lw r7,r31,$12
	lw r6,r2,$8
	lw r5,r2,$32
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1660:6;1669:8 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1661:1;1661:13 ../cpuex2017/raytracer/min-rt.ml@1661:15;1661:19 ../cpuex2017/raytracer/min-rt.ml@1661:24;1661:29
	j @cfg_label_22339
@cfg_label_22239:
@cfg_label_22237:
	lw r7,r31,$16
	lw r6,r2,$8
	lw r5,r2,$32
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-496
; ../cpuex2017/raytracer/min-rt.ml@1663:1;1663:28 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1663:1;1663:13 ../cpuex2017/raytracer/min-rt.ml@1663:15;1663:19 ../cpuex2017/raytracer/min-rt.ml@1663:24;1663:28
	j @cfg_label_22235
@cfg_label_22235:
	lw r6,r2,$8
	lw r5,r2,$36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-612
; ../cpuex2017/raytracer/min-rt.ml@1665:8;1665:22 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1665:8;1665:15 ../cpuex2017/raytracer/min-rt.ml@1665:17;1665:21
	j @cfg_label_22234
@cfg_label_22234:
	li r5,$0
	sw r5,r2,$-636
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22233
@cfg_label_22233:
	li r5,$0
	sw r5,r2,$-640
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22232
@cfg_label_22232:
	lw r6,r2,$-640
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-632
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22231
@cfg_label_22231:
	lw r7,r2,$-632
	lw r6,r2,$-636
	lw r5,r2,$-612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-592
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_22230
@cfg_label_22230:
	li r5,$1
	sw r5,r2,$-624
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_22229
@cfg_label_22229:
	li r5,$1
	sw r5,r2,$-628
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22228
@cfg_label_22228:
	lw r6,r2,$-628
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-620
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22227
@cfg_label_22227:
	lw r7,r2,$-620
	lw r6,r2,$-624
	lw r5,r2,$-612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-600
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_22226
@cfg_label_22226:
	li r5,$2
	sw r5,r2,$-608
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_22225
@cfg_label_22225:
	li r5,$2
	sw r5,r2,$-616
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22224
@cfg_label_22224:
	lw r6,r2,$-616
	lw r5,r31,$280
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-604
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22223
@cfg_label_22223:
	lw r7,r2,$-604
	lw r6,r2,$-608
	lw r5,r2,$-612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-596
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_22222
@cfg_label_22222:
	lw r5,r2,$-596
	sw r5,r2,$-588
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_22221
@cfg_label_22221:
	lw r5,r2,$-588
	sw r5,r2,$-504
; ../cpuex2017/raytracer/min-rt.ml@1665:1;1665:36 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_22220
@cfg_label_22220:
	lw r6,r2,$8
	lw r5,r2,$36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-580
; ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:24 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1666:10;1666:17 ../cpuex2017/raytracer/min-rt.ml@1666:19;1666:23
	j @cfg_label_22219
@cfg_label_22219:
	fmovi f1,$0.003906
	fst f1,r2,$-584
	j @cfg_label_22218
@cfg_label_22218:
	fld f1,r2,$-584
	fld f2,r2,$-324
	fmul f1,f1,f2
	fst f1,r2,$-576
; ../cpuex2017/raytracer/min-rt.ml@1666:26;1666:51 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1666:27;1666:39 ../cpuex2017/raytracer/min-rt.ml@1666:44;1666:51
	j @cfg_label_22217
@cfg_label_22217:
	push r4
	lw r5,r2,$-576
	push r5
	lw r5,r2,$-580
	push r5
	jal @a_8688vecscale
	sw r5,r2,$-512
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1666:1;1666:52 ../cpuex2017/raytracer/min-rt.ml@1666:1;1666:9
	j @cfg_label_22216
@cfg_label_22216:
	lw r6,r2,$8
	lw r5,r2,$48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-544
; ../cpuex2017/raytracer/min-rt.ml@1668:8;1668:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1668:8;1668:16 ../cpuex2017/raytracer/min-rt.ml@1668:18;1668:22
	j @cfg_label_22215
@cfg_label_22215:
	li r5,$0
	sw r5,r2,$-568
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22214
@cfg_label_22214:
	li r5,$0
	sw r5,r2,$-572
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22213
@cfg_label_22213:
	lw r6,r2,$-572
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-564
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22212
@cfg_label_22212:
	lw r7,r2,$-564
	lw r6,r2,$-568
	lw r5,r2,$-544
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-524
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_22211
@cfg_label_22211:
	li r5,$1
	sw r5,r2,$-556
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_22210
@cfg_label_22210:
	li r5,$1
	sw r5,r2,$-560
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22209
@cfg_label_22209:
	lw r6,r2,$-560
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-552
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22208
@cfg_label_22208:
	lw r7,r2,$-552
	lw r6,r2,$-556
	lw r5,r2,$-544
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-532
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_22207
@cfg_label_22207:
	li r5,$2
	sw r5,r2,$-540
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_22206
@cfg_label_22206:
	li r5,$2
	sw r5,r2,$-548
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22205
@cfg_label_22205:
	lw r6,r2,$-548
	lw r5,r31,$292
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-536
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22204
@cfg_label_22204:
	lw r7,r2,$-536
	lw r6,r2,$-540
	lw r5,r2,$-544
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-528
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_22203
@cfg_label_22203:
	lw r5,r2,$-528
	sw r5,r2,$-520
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_22202
@cfg_label_22202:
	lw r5,r2,$-520
	sw r5,r2,$-516
; ../cpuex2017/raytracer/min-rt.ml@1668:1;1668:31 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_22201
@cfg_label_22201:
	lw r5,r2,$-516
	sw r5,r2,$-508
; ../cpuex2017/raytracer/min-rt.ml@1667:1;1668:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1668:1;1668:31
	j @cfg_label_22200
@cfg_label_22200:
	lw r5,r2,$-508
	sw r5,r2,$-500
; ../cpuex2017/raytracer/min-rt.ml@1666:1;1668:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1667:1;1668:32
	j @cfg_label_22199
@cfg_label_22199:
	lw r5,r2,$-500
	sw r5,r2,$-492
; ../cpuex2017/raytracer/min-rt.ml@1664:1;1668:32 ::<= ../cpuex2017/raytracer/min-rt.ml@1666:1;1668:32
	j @cfg_label_22198
@cfg_label_22198:
	lw r5,r2,$-492
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1660:6;1669:8 ::<= ../cpuex2017/raytracer/min-rt.ml@1664:1;1668:32
	j @cfg_label_22340
@cfg_label_22340:
@cfg_label_22339:
	fmovi f1,$-2.000000
	fst f1,r2,$-488
	j @cfg_label_22338
@cfg_label_22338:
	push r4
	lw r5,r31,$292
	push r5
	lw r5,r2,$16
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-484
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1671:24;1671:47 ../cpuex2017/raytracer/min-rt.ml@1671:24;1671:32
	j @cfg_label_22337
@cfg_label_22337:
	fld f1,r2,$-488
	fld f2,r2,$-484
	fmul f1,f1,f2
	fst f1,r2,$-480
; ../cpuex2017/raytracer/min-rt.ml@1671:14;1671:47 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1671:16;1671:19 ../cpuex2017/raytracer/min-rt.ml@1671:24;1671:47
	j @cfg_label_22336
@cfg_label_22336:
	push r4
	lw r5,r31,$292
	push r5
	lw r5,r2,$-480
	push r5
	lw r5,r2,$16
	push r5
	jal @a_8678vecaccum
	sw r5,r2,$-192
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1673:6;1673:31 ../cpuex2017/raytracer/min-rt.ml@1673:6;1673:14
	j @cfg_label_22335
@cfg_label_22335:
	li r5,$1
	sw r5,r2,$-476
; ../cpuex2017/raytracer/min-rt.ml@282:16;282:17
	j @cfg_label_22334
@cfg_label_22334:
	lw r6,r2,$-476
	lw r5,r2,$-272
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-472
; ../cpuex2017/raytracer/min-rt.ml@1675:36;1675:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@282:2;282:14 ../cpuex2017/raytracer/min-rt.ml@282:16;282:17
	j @cfg_label_22333
@cfg_label_22333:
	fld f1,r2,$12
	fld f2,r2,$-472
	fmul f1,f1,f2
	fst f1,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1675:26;1675:32 ../cpuex2017/raytracer/min-rt.ml@1675:36;1675:49
	j @cfg_label_22332
@cfg_label_22332:
	li r5,$0
	sw r5,r2,$-464
; ../cpuex2017/raytracer/min-rt.ml@1678:41;1678:42
	j @cfg_label_22331
@cfg_label_22331:
	li r5,$0
	sw r5,r2,$-468
; ../cpuex2017/raytracer/min-rt.ml@1678:51;1678:52
	j @cfg_label_22330
@cfg_label_22330:
	lw r6,r2,$-468
	lw r5,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@1678:43;1678:53 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1678:43;1678:49 ../cpuex2017/raytracer/min-rt.ml@1678:51;1678:52
	j @cfg_label_22329
@cfg_label_22329:
	push r4
	lw r5,r2,$-460
	push r5
	lw r5,r2,$-464
	push r5
	jal @a_8924shadow_check_one_or_matrix
	sw r5,r2,$-456
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1678:14;1678:53 ../cpuex2017/raytracer/min-rt.ml@1678:14;1678:40
	j @cfg_label_22328
@cfg_label_22328:
	lw r5,r2,$-456
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-452
; ../cpuex2017/raytracer/min-rt.ml@1678:9;1678:54 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1678:14;1678:53
	j @cfg_label_22327
@cfg_label_22327:
	li r5,$1
	sw r5,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@1678:9;1678:54
	j @cfg_label_22326
@cfg_label_22326:
	lw r5,r2,$-452
	lw r6,r2,$-448
	bne r5,r6,@cfg_label_22248
	j @cfg_label_22247
	j @cfg_label_22249
	j @cfg_label_22250
@cfg_label_22250:
@cfg_label_22248:
	sw r3,r2,$-200
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1678:6;1682:13
	j @cfg_label_22325
@cfg_label_22249:
@cfg_label_22247:
	push r4
	lw r5,r31,$420
	push r5
	lw r5,r31,$292
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-440
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1679:27;1679:49 ../cpuex2017/raytracer/min-rt.ml@1679:27;1679:35
	j @cfg_label_22246
@cfg_label_22246:
	fmovi f1,$-1.000000
	fst f1,r2,$-444
	j @cfg_label_22245
@cfg_label_22245:
	fld f1,r2,$-444
	fld f2,r2,$-440
	fmul f1,f1,f2
	fst f1,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:50 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22244
@cfg_label_22244:
	fld f1,r2,$-436
	fld f2,r2,$-324
	fmul f1,f1,f2
	fst f1,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:61 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1679:21;1679:50 ../cpuex2017/raytracer/min-rt.ml@1679:54;1679:61
	j @cfg_label_22243
@cfg_label_22243:
	push r4
	lw r5,r31,$420
	push r5
	lw r5,r2,$16
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-428
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1680:28;1680:49 ../cpuex2017/raytracer/min-rt.ml@1680:28;1680:36
	j @cfg_label_22242
@cfg_label_22242:
	fmovi f1,$-1.000000
	fst f1,r2,$-432
	j @cfg_label_22241
@cfg_label_22241:
	fld f1,r2,$-432
	fld f2,r2,$-428
	fmul f1,f1,f2
	fst f1,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@1680:22;1680:50 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22240
@cfg_label_22240:
	push r4
	lw r5,r2,$-320
	push r5
	lw r5,r2,$-420
	push r5
	lw r5,r2,$-424
	push r5
	jal @a_8967add_light
	sw r5,r2,$-200
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1678:6;1682:13 ../cpuex2017/raytracer/min-rt.ml@1681:8;1681:17
	j @cfg_label_22324
@cfg_label_22325:
@cfg_label_22324:
	li r5,$0
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22323
@cfg_label_22323:
	li r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22322
@cfg_label_22322:
	lw r6,r2,$-416
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-408
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22321
@cfg_label_22321:
	lw r7,r2,$-408
	lw r6,r2,$-412
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_22320
@cfg_label_22320:
	li r5,$1
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_22319
@cfg_label_22319:
	li r5,$1
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22318
@cfg_label_22318:
	lw r6,r2,$-404
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22317
@cfg_label_22317:
	lw r7,r2,$-396
	lw r6,r2,$-400
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_22316
@cfg_label_22316:
	li r5,$2
	sw r5,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_22315
@cfg_label_22315:
	li r5,$2
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22314
@cfg_label_22314:
	lw r6,r2,$-392
	lw r5,r31,$316
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22313
@cfg_label_22313:
	lw r7,r2,$-384
	lw r6,r2,$-388
	lw r5,r31,$196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_22312
@cfg_label_22312:
	lw r5,r2,$-376
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_22311
@cfg_label_22311:
	lw r5,r2,$-368
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@1122:2;1122:22 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_22310
@cfg_label_22310:
	li r5,$0
	sw r5,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@1123:39;1123:40
	j @cfg_label_22309
@cfg_label_22309:
	lw r6,r2,$-364
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:37 ../cpuex2017/raytracer/min-rt.ml@1123:39;1123:40
	j @cfg_label_22308
@cfg_label_22308:
	li r5,$1
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@1123:44;1123:45
	j @cfg_label_22307
@cfg_label_22307:
	lw r6,r2,$-356
	lw r5,r2,$-360
	sub r5,r5,r6
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:45 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1123:28;1123:41 ../cpuex2017/raytracer/min-rt.ml@1123:44;1123:45
	j @cfg_label_22306
@cfg_label_22306:
	push r4
	lw r5,r2,$-352
	push r5
	lw r5,r31,$316
	push r5
	jal @a_8887setup_startp_constants
	sw r5,r2,$-344
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:46 ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:24
	j @cfg_label_22305
@cfg_label_22305:
	lw r5,r2,$-344
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1685:6;1685:37 ::<= ../cpuex2017/raytracer/min-rt.ml@1123:2;1123:46
	j @cfg_label_22304
@cfg_label_22304:
	li r5,$0
	sw r5,r2,$-340
; ../cpuex2017/raytracer/min-rt.ml@1686:40;1686:41
	j @cfg_label_22303
@cfg_label_22303:
	lw r6,r2,$-340
	lw r5,r31,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:42 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:38 ../cpuex2017/raytracer/min-rt.ml@1686:40;1686:41
	j @cfg_label_22302
@cfg_label_22302:
	li r5,$1
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@1686:43;1686:44
	j @cfg_label_22301
@cfg_label_22301:
	lw r6,r2,$-332
	lw r5,r2,$-336
	sub r5,r5,r6
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:44 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1686:25;1686:42 ../cpuex2017/raytracer/min-rt.ml@1686:43;1686:44
	j @cfg_label_22300
@cfg_label_22300:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$-320
	push r5
	lw r5,r2,$-324
	push r5
	lw r5,r2,$-328
	push r5
	jal @a_8971trace_reflections
	sw r5,r2,$-216
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1686:6;1686:74 ../cpuex2017/raytracer/min-rt.ml@1686:6;1686:23
	j @cfg_label_22299
@cfg_label_22299:
	fmovi f1,$0.100000
	fst f1,r2,$-316
	j @cfg_label_22298
@cfg_label_22298:
	fld f1,r2,$-316
	fld f2,r2,$12
	flt f1,f2
	bft @emit_label_26191
	li r5,$0
	j @emit_label_26192
@emit_label_26191:
	li r5,$1
@emit_label_26192:
	sw r5,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@1689:9;1689:25 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_22297
@cfg_label_22297:
	li r5,$1
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@1689:9;1689:25
	j @cfg_label_22296
@cfg_label_22296:
	lw r5,r2,$-312
	lw r6,r2,$-308
	bne r5,r6,@cfg_label_22282
	j @cfg_label_22281
	j @cfg_label_22283
	j @cfg_label_22284
@cfg_label_22284:
@cfg_label_22282:
	sw r3,r2,$-212
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1689:6;1700:16
	j @cfg_label_22295
@cfg_label_22283:
@cfg_label_22281:
	li r5,$4
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@1691:11;1691:12
	j @cfg_label_22280
@cfg_label_22280:
	lw r6,r2,$-304
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@1691:4;1691:12 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1691:4;1691:8 ../cpuex2017/raytracer/min-rt.ml@1691:11;1691:12
	j @cfg_label_22279
@cfg_label_22279:
	li r5,$1
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@1691:4;1691:12
	j @cfg_label_22278
@cfg_label_22278:
	lw r5,r2,$-300
	lw r6,r2,$-296
	bne r5,r6,@cfg_label_22255
	j @cfg_label_22254
	j @cfg_label_22256
	j @cfg_label_22257
@cfg_label_22257:
@cfg_label_22255:
	sw r3,r2,$-224
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1691:1;1693:8
	j @cfg_label_22277
@cfg_label_22256:
@cfg_label_22254:
	li r5,$1
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@1692:21;1692:22
	j @cfg_label_22253
@cfg_label_22253:
	lw r6,r2,$-292
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@1692:16;1692:22 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1692:16;1692:20 ../cpuex2017/raytracer/min-rt.ml@1692:21;1692:22
	j @cfg_label_22252
@cfg_label_22252:
	li r5,$-1
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@1692:27;1692:29
	j @cfg_label_22251
@cfg_label_22251:
	lw r7,r2,$-284
	lw r6,r2,$-288
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1691:1;1693:8 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1692:3;1692:14 ../cpuex2017/raytracer/min-rt.ml@1692:16;1692:22 ../cpuex2017/raytracer/min-rt.ml@1692:27;1692:29
	j @cfg_label_22276
@cfg_label_22277:
@cfg_label_22276:
	li r5,$2
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@1695:16;1695:17
	j @cfg_label_22275
@cfg_label_22275:
	lw r5,r2,$-280
	lw r6,r2,$-276
	bne r5,r6,@cfg_label_22269
	j @cfg_label_22268
	j @cfg_label_22270
	j @cfg_label_22271
@cfg_label_22271:
@cfg_label_22269:
	sw r3,r2,$-228
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11
	j @cfg_label_22274
@cfg_label_22270:
@cfg_label_22268:
	fmovi f1,$1.000000
	fst f1,r2,$-264
	j @cfg_label_22267
@cfg_label_22267:
	li r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22266
@cfg_label_22266:
	lw r6,r2,$-268
	lw r5,r2,$-272
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@1696:35;1696:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22265
@cfg_label_22265:
	fld f1,r2,$-264
	fld f2,r2,$-260
	fsub f1,f1,f2
	fst f1,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:48 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:31 ../cpuex2017/raytracer/min-rt.ml@1696:35;1696:48
	j @cfg_label_22264
@cfg_label_22264:
	fld f1,r2,$12
	fld f2,r2,$-256
	fmul f1,f1,f2
	fst f1,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@1696:17;1696:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1696:17;1696:23 ../cpuex2017/raytracer/min-rt.ml@1696:28;1696:48
	j @cfg_label_22263
@cfg_label_22263:
	li r5,$1
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@1697:19;1697:20
	j @cfg_label_22262
@cfg_label_22262:
	lw r6,r2,$-252
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@1697:14;1697:20 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1697:14;1697:18 ../cpuex2017/raytracer/min-rt.ml@1697:19;1697:20
	j @cfg_label_22261
@cfg_label_22261:
	li r5,$0
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@1697:58;1697:59
	j @cfg_label_22260
@cfg_label_22260:
	lw r6,r2,$-248
	lw r5,r31,$328
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@1697:52;1697:60 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1697:52;1697:56 ../cpuex2017/raytracer/min-rt.ml@1697:58;1697:59
	j @cfg_label_22259
@cfg_label_22259:
	fld f1,r2,$52
	fld f2,r2,$-244
	fadd f1,f1,f2
	fst f1,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@1697:44;1697:60 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1697:44;1697:48 ../cpuex2017/raytracer/min-rt.ml@1697:52;1697:60
	j @cfg_label_22258
@cfg_label_22258:
	push r4
	lw r5,r2,$-232
	push r5
	lw r5,r2,$48
	push r5
	lw r5,r2,$44
	push r5
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-236
	push r5
	lw r5,r2,$-240
	push r5
	jal @a_8976trace_ray
	sw r5,r2,$-228
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11 ../cpuex2017/raytracer/min-rt.ml@1697:3;1697:12
	j @cfg_label_22273
@cfg_label_22274:
@cfg_label_22273:
	lw r5,r2,$-228
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:11
	j @cfg_label_22272
@cfg_label_22272:
	lw r5,r2,$-220
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@1689:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1695:1;1698:12
	j @cfg_label_22294
@cfg_label_22295:
@cfg_label_22294:
	lw r5,r2,$-212
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@1686:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1689:6;1700:16
	j @cfg_label_22293
@cfg_label_22293:
	lw r5,r2,$-204
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1685:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1686:6;1700:16
	j @cfg_label_22292
@cfg_label_22292:
	lw r5,r2,$-196
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1675:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1685:6;1700:16
	j @cfg_label_22291
@cfg_label_22291:
	lw r5,r2,$-188
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1671:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1675:6;1700:16
	j @cfg_label_22290
@cfg_label_22290:
	lw r5,r2,$-180
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1659:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1671:6;1700:16
	j @cfg_label_22289
@cfg_label_22289:
	lw r5,r2,$-172
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1655:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1659:6;1700:16
	j @cfg_label_22288
@cfg_label_22288:
	lw r5,r2,$-164
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1654:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1655:6;1700:16
	j @cfg_label_22287
@cfg_label_22287:
	lw r5,r2,$-156
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1651:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1654:6;1700:16
	j @cfg_label_22286
@cfg_label_22286:
	lw r5,r2,$-148
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1650:6;1700:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1651:6;1700:16
	j @cfg_label_22285
@cfg_label_22285:
	lw r5,r2,$-140
	sw r5,r2,$-864
; ../cpuex2017/raytracer/min-rt.ml@1640:2;1721:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1650:6;1700:16
	lw r5,r2,$-864
	addi r1,r1,$864
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-864
	addi r1,r1,$864
	pop r2
	pop r6
	jr r6
@a_8982trace_diffuse_ray:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$152
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8953judge_intersection_fast
	sw r5,r2,$-148
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35 ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:28
	j @cfg_label_22197
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8953judge_intersection_fast
	sw r5,r2,$-148
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35 ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:28
	j @cfg_label_22197
@cfg_label_22197:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1735:5;1735:35
	j @cfg_label_22196
@cfg_label_22196:
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@cfg_label_22193
	j @cfg_label_22192
	j @cfg_label_22194
	j @cfg_label_22195
@cfg_label_22195:
@cfg_label_22193:
	sw r3,r2,$-152
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@cfg_label_22194:
@cfg_label_22192:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1736:46;1736:47
	j @cfg_label_22191
@cfg_label_22191:
	lw r6,r2,$-140
	lw r5,r31,$304
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1736:23;1736:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1736:23;1736:44 ../cpuex2017/raytracer/min-rt.ml@1736:46;1736:47
	j @cfg_label_22190
@cfg_label_22190:
	lw r6,r2,$-136
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1736:14;1736:21 ../cpuex2017/raytracer/min-rt.ml@1736:23;1736:48
	j @cfg_label_22189
@cfg_label_22189:
	lw r5,r2,$-132
	lw r5,r5,$40
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22188
@cfg_label_22188:
	lw r5,r2,$-132
	lw r5,r5,$36
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22187
@cfg_label_22187:
	lw r5,r2,$-132
	lw r5,r5,$32
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22186
@cfg_label_22186:
	lw r5,r2,$-132
	lw r5,r5,$28
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22185
@cfg_label_22185:
	lw r5,r2,$-132
	lw r5,r5,$24
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22184
@cfg_label_22184:
	lw r5,r2,$-132
	lw r5,r5,$20
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22183
@cfg_label_22183:
	lw r5,r2,$-132
	lw r5,r5,$16
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22182
@cfg_label_22182:
	lw r5,r2,$-132
	lw r5,r5,$12
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22181
@cfg_label_22181:
	lw r5,r2,$-132
	lw r5,r5,$8
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22180
@cfg_label_22180:
	lw r5,r2,$-132
	lw r5,r5,$4
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22179
@cfg_label_22179:
	lw r5,r2,$-132
	lw r5,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1737:16;1737:19
	j @cfg_label_22178
@cfg_label_22178:
	push r4
	lw r5,r2,$8
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-112
	push r5
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	lw r5,r2,$-128
	push r5
	jal @a_8961get_nvector
	sw r5,r2,$-8
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1737:4;1737:34 ../cpuex2017/raytracer/min-rt.ml@1737:4;1737:15
	j @cfg_label_22177
@cfg_label_22177:
	push r4
	lw r5,r31,$316
	push r5
	lw r5,r2,$-92
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-112
	push r5
	lw r5,r2,$-116
	push r5
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	lw r5,r2,$-128
	push r5
	jal @a_8964utexture
	sw r5,r2,$-16
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1738:4;1738:35 ../cpuex2017/raytracer/min-rt.ml@1738:4;1738:12
	j @cfg_label_22176
@cfg_label_22176:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1741:39;1741:40
	j @cfg_label_22175
@cfg_label_22175:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1741:49;1741:50
	j @cfg_label_22174
@cfg_label_22174:
	lw r6,r2,$-88
	lw r5,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1741:41;1741:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1741:41;1741:47 ../cpuex2017/raytracer/min-rt.ml@1741:49;1741:50
	j @cfg_label_22173
@cfg_label_22173:
	push r4
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	jal @a_8924shadow_check_one_or_matrix
	sw r5,r2,$-76
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1741:12;1741:51 ../cpuex2017/raytracer/min-rt.ml@1741:12;1741:38
	j @cfg_label_22172
@cfg_label_22172:
	lw r5,r2,$-76
	slti r6,r5,$0
	slti r7,r5,$1
	sub r5,r7,r6
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1741:7;1741:52 ::= Onot ../cpuex2017/raytracer/min-rt.ml@1741:12;1741:51
	j @cfg_label_22171
@cfg_label_22171:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1741:7;1741:52
	j @cfg_label_22170
@cfg_label_22170:
	lw r5,r2,$-72
	lw r6,r2,$-68
	bne r5,r6,@cfg_label_22164
	j @cfg_label_22163
	j @cfg_label_22165
	j @cfg_label_22166
@cfg_label_22166:
@cfg_label_22164:
	sw r3,r2,$-12
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1741:4;1745:11
	j @cfg_label_22169
@cfg_label_22165:
@cfg_label_22163:
	push r4
	lw r5,r31,$420
	push r5
	lw r5,r31,$292
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-60
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1742:22;1742:44 ../cpuex2017/raytracer/min-rt.ml@1742:22;1742:30
	j @cfg_label_22162
@cfg_label_22162:
	fmovi f1,$-1.000000
	fst f1,r2,$-64
	j @cfg_label_22161
@cfg_label_22161:
	fld f1,r2,$-64
	fld f2,r2,$-60
	fmul f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1742:16;1742:45 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_22160
@cfg_label_22160:
	fmovi f1,$0.000000
	fst f1,r2,$-56
	j @cfg_label_22159
@cfg_label_22159:
	fld f1,r2,$-44
	fld f2,r2,$-56
	flt f2,f1
	bft @emit_label_26193
	li r5,$0
	j @emit_label_26194
@emit_label_26193:
	li r5,$1
@emit_label_26194:
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1743:23;1743:32 ::= Ogt lib_tortesia.ml@9:20;9:21 lib_tortesia.ml@9:24;9:27
	j @cfg_label_22158
@cfg_label_22158:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1743:23;1743:32
	j @cfg_label_22157
@cfg_label_22157:
	lw r5,r2,$-52
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_22148
	j @cfg_label_22147
	j @cfg_label_22149
	j @cfg_label_22150
@cfg_label_22149:
@cfg_label_22147:
	lw r5,r2,$-44
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1743:20;1743:49 ::<= ../cpuex2017/raytracer/min-rt.ml@1743:30;1743:32
	j @cfg_label_22155
@cfg_label_22150:
@cfg_label_22148:
	fmovi f1,$0.000000
	fst f1,r2,$-40
	j @cfg_label_22156
@cfg_label_22156:
@cfg_label_22155:
	fld f1,r2,$16
	fld f2,r2,$-40
	fmul f1,f1,f2
	fst f1,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:44 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:34 ../cpuex2017/raytracer/min-rt.ml@1744:38;1744:44
	j @cfg_label_22154
@cfg_label_22154:
	li r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22153
@cfg_label_22153:
	lw r6,r2,$-32
	lw r5,r2,$-36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1744:48;1744:61 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_22152
@cfg_label_22152:
	fld f1,r2,$-28
	fld f2,r2,$-24
	fmul f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:61 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1744:28;1744:44 ../cpuex2017/raytracer/min-rt.ml@1744:48;1744:61
	j @cfg_label_22151
@cfg_label_22151:
	push r4
	lw r5,r31,$280
	push r5
	lw r5,r2,$-20
	push r5
	lw r5,r31,$268
	push r5
	jal @a_8678vecaccum
	sw r5,r2,$-12
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1741:4;1745:11 ../cpuex2017/raytracer/min-rt.ml@1744:6;1744:14
	j @cfg_label_22168
@cfg_label_22169:
@cfg_label_22168:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1738:4;1745:11 ::<= ../cpuex2017/raytracer/min-rt.ml@1741:4;1745:11
	j @cfg_label_22167
@cfg_label_22167:
	lw r5,r2,$-4
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1735:2;1746:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1738:4;1745:11
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-152
	addi r1,r1,$152
	pop r2
	pop r6
	jr r6
@a_8985iter_trace_diffuse_rays:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$104
	li r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1752:14;1752:15
	j @cfg_label_22146
	li r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1752:14;1752:15
	j @cfg_label_22146
@cfg_label_22146:
	lw r6,r2,$-100
	lw r5,r2,$20
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1752:5;1752:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1752:5;1752:10 ../cpuex2017/raytracer/min-rt.ml@1752:14;1752:15
	j @cfg_label_22145
@cfg_label_22145:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1752:5;1752:15
	j @cfg_label_22144
@cfg_label_22144:
	lw r5,r2,$-96
	lw r6,r2,$-92
	bne r5,r6,@cfg_label_22141
	j @cfg_label_22140
	j @cfg_label_22142
	j @cfg_label_22143
@cfg_label_22143:
@cfg_label_22141:
	sw r3,r2,$-104
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12
	lw r5,r2,$-104
	addi r1,r1,$104
	pop r2
	pop r6
	jr r6
@cfg_label_22142:
@cfg_label_22140:
	lw r6,r2,$20
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1753:28;1753:40 ../cpuex2017/raytracer/min-rt.ml@1753:42;1753:47
	j @cfg_label_22139
@cfg_label_22139:
	lw r5,r2,$-88
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1753:28;1753:48
	j @cfg_label_22138
@cfg_label_22138:
	push r4
	lw r5,r2,$12
	push r5
	lw r5,r2,$-84
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1753:12;1753:57 ../cpuex2017/raytracer/min-rt.ml@1753:12;1753:20
	j @cfg_label_22137
@cfg_label_22137:
	fmovi f1,$0.000000
	fst f1,r2,$-80
	j @cfg_label_22136
@cfg_label_22136:
	fld f1,r2,$-40
	fld f2,r2,$-80
	flt f1,f2
	bft @emit_label_26195
	li r5,$0
	j @emit_label_26196
@emit_label_26195:
	li r5,$1
@emit_label_26196:
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1757:7;1757:15 ::= Olt lib_tortesia.ml@7:20;7:21 lib_tortesia.ml@7:24;7:27
	j @cfg_label_22135
@cfg_label_22135:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1757:7;1757:15
	j @cfg_label_22134
@cfg_label_22134:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_22126
	j @cfg_label_22125
	j @cfg_label_22127
	j @cfg_label_22128
@cfg_label_22128:
@cfg_label_22126:
	lw r6,r2,$20
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:36 ../cpuex2017/raytracer/min-rt.ml@1760:38;1760:43
	j @cfg_label_22124
@cfg_label_22124:
	fmovi f1,$150.000000
	fst f1,r2,$-36
	j @cfg_label_22123
@cfg_label_22123:
	fld f1,r2,$-40
	fld f2,r2,$-36
	fdiv f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1760:46;1760:56 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1760:46;1760:47 ../cpuex2017/raytracer/min-rt.ml@1760:51;1760:56
	j @cfg_label_22122
@cfg_label_22122:
	lw r5,r2,$-32
	lw r5,r5,$4
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44
	j @cfg_label_22121
@cfg_label_22121:
	lw r5,r2,$-32
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1760:24;1760:44
	j @cfg_label_22120
@cfg_label_22120:
	push r4
	lw r5,r2,$-20
	push r5
	lw r5,r2,$-24
	push r5
	lw r5,r2,$-28
	push r5
	jal @a_8982trace_diffuse_ray
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1757:4;1760:57 ../cpuex2017/raytracer/min-rt.ml@1760:6;1760:23
	j @cfg_label_22133
@cfg_label_22127:
@cfg_label_22125:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1758:46;1758:47
	j @cfg_label_22119
@cfg_label_22119:
	lw r6,r2,$-68
	lw r5,r2,$20
	add r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1758:38;1758:47 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1758:38;1758:43 ../cpuex2017/raytracer/min-rt.ml@1758:46;1758:47
	j @cfg_label_22118
@cfg_label_22118:
	lw r6,r2,$-64
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:36 ../cpuex2017/raytracer/min-rt.ml@1758:38;1758:47
	j @cfg_label_22117
@cfg_label_22117:
	fmovi f1,$-150.000000
	fst f1,r2,$-60
	j @cfg_label_22116
@cfg_label_22116:
	fld f1,r2,$-40
	fld f2,r2,$-60
	fdiv f1,f1,f2
	fst f1,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1758:50;1758:61 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@1758:50;1758:51 ../cpuex2017/raytracer/min-rt.ml@1758:56;1758:61
	j @cfg_label_22115
@cfg_label_22115:
	lw r5,r2,$-56
	lw r5,r5,$4
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48
	j @cfg_label_22114
@cfg_label_22114:
	lw r5,r2,$-56
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1758:24;1758:48
	j @cfg_label_22113
@cfg_label_22113:
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$-48
	push r5
	lw r5,r2,$-52
	push r5
	jal @a_8982trace_diffuse_ray
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1757:4;1760:57 ../cpuex2017/raytracer/min-rt.ml@1758:6;1758:23
	j @cfg_label_22132
@cfg_label_22133:
@cfg_label_22132:
	li r5,$2
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1762:62;1762:63
	j @cfg_label_22131
@cfg_label_22131:
	lw r6,r2,$-16
	lw r5,r2,$20
	sub r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1762:54;1762:63 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1762:54;1762:59 ../cpuex2017/raytracer/min-rt.ml@1762:62;1762:63
	j @cfg_label_22130
@cfg_label_22130:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-4
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1762:4;1762:64 ../cpuex2017/raytracer/min-rt.ml@1762:4;1762:27
	j @cfg_label_22129
@cfg_label_22129:
	lw r5,r2,$-4
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1752:2;1763:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1762:4;1762:64
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
@a_8994trace_diffuse_ray_80percent:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$196
	li r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1779:17;1779:18
	j @cfg_label_22112
	li r5,$0
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1779:17;1779:18
	j @cfg_label_22112
@cfg_label_22112:
	lw r6,r2,$-192
	lw r5,r2,$8
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1779:5;1779:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1779:5;1779:13 ../cpuex2017/raytracer/min-rt.ml@1779:17;1779:18
	j @cfg_label_22111
@cfg_label_22111:
	li r5,$1
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1779:5;1779:18
	j @cfg_label_22110
@cfg_label_22110:
	lw r5,r2,$-188
	lw r6,r2,$-184
	bne r5,r6,@cfg_label_22046
	j @cfg_label_22045
	j @cfg_label_22047
	j @cfg_label_22048
@cfg_label_22048:
@cfg_label_22046:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1781:9
	j @cfg_label_22109
@cfg_label_22047:
@cfg_label_22045:
	li r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1780:32;1780:33
	j @cfg_label_22044
@cfg_label_22044:
	lw r6,r2,$-180
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1780:23;1780:30 ../cpuex2017/raytracer/min-rt.ml@1780:32;1780:33
	j @cfg_label_22043
@cfg_label_22043:
	push r4
	lw r5,r2,$16
	push r5
	jal @a_8890setup_startp
	sw r5,r2,$-168
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:14
	j @cfg_label_22042
@cfg_label_22042:
	li r5,$118
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	j @cfg_label_22041
@cfg_label_22041:
	push r4
	lw r5,r2,$-172
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-176
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-164
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	j @cfg_label_22040
@cfg_label_22040:
	lw r5,r2,$-164
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1781:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54
	j @cfg_label_22108
@cfg_label_22109:
@cfg_label_22108:
	li r5,$1
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1783:17;1783:18
	j @cfg_label_22107
@cfg_label_22107:
	lw r6,r2,$-160
	lw r5,r2,$8
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1783:5;1783:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1783:5;1783:13 ../cpuex2017/raytracer/min-rt.ml@1783:17;1783:18
	j @cfg_label_22106
@cfg_label_22106:
	li r5,$1
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1783:5;1783:18
	j @cfg_label_22105
@cfg_label_22105:
	lw r5,r2,$-156
	lw r6,r2,$-152
	bne r5,r6,@cfg_label_22055
	j @cfg_label_22054
	j @cfg_label_22056
	j @cfg_label_22057
@cfg_label_22057:
@cfg_label_22055:
	sw r3,r2,$-16
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1783:2;1785:9
	j @cfg_label_22104
@cfg_label_22056:
@cfg_label_22054:
	li r5,$1
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1784:32;1784:33
	j @cfg_label_22053
@cfg_label_22053:
	lw r6,r2,$-148
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1784:23;1784:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1784:23;1784:30 ../cpuex2017/raytracer/min-rt.ml@1784:32;1784:33
	j @cfg_label_22052
@cfg_label_22052:
	push r4
	lw r5,r2,$16
	push r5
	jal @a_8890setup_startp
	sw r5,r2,$-136
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:14
	j @cfg_label_22051
@cfg_label_22051:
	li r5,$118
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	j @cfg_label_22050
@cfg_label_22050:
	push r4
	lw r5,r2,$-140
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-144
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-132
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	j @cfg_label_22049
@cfg_label_22049:
	lw r5,r2,$-132
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1783:2;1785:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54
	j @cfg_label_22103
@cfg_label_22104:
@cfg_label_22103:
	li r5,$2
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1787:17;1787:18
	j @cfg_label_22102
@cfg_label_22102:
	lw r6,r2,$-128
	lw r5,r2,$8
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1787:5;1787:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1787:5;1787:13 ../cpuex2017/raytracer/min-rt.ml@1787:17;1787:18
	j @cfg_label_22101
@cfg_label_22101:
	li r5,$1
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1787:5;1787:18
	j @cfg_label_22100
@cfg_label_22100:
	lw r5,r2,$-124
	lw r6,r2,$-120
	bne r5,r6,@cfg_label_22064
	j @cfg_label_22063
	j @cfg_label_22065
	j @cfg_label_22066
@cfg_label_22066:
@cfg_label_22064:
	sw r3,r2,$-24
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1787:2;1789:9
	j @cfg_label_22099
@cfg_label_22065:
@cfg_label_22063:
	li r5,$2
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1788:32;1788:33
	j @cfg_label_22062
@cfg_label_22062:
	lw r6,r2,$-116
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1788:23;1788:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1788:23;1788:30 ../cpuex2017/raytracer/min-rt.ml@1788:32;1788:33
	j @cfg_label_22061
@cfg_label_22061:
	push r4
	lw r5,r2,$16
	push r5
	jal @a_8890setup_startp
	sw r5,r2,$-104
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:14
	j @cfg_label_22060
@cfg_label_22060:
	li r5,$118
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	j @cfg_label_22059
@cfg_label_22059:
	push r4
	lw r5,r2,$-108
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-112
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-100
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	j @cfg_label_22058
@cfg_label_22058:
	lw r5,r2,$-100
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1787:2;1789:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54
	j @cfg_label_22098
@cfg_label_22099:
@cfg_label_22098:
	li r5,$3
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1791:17;1791:18
	j @cfg_label_22097
@cfg_label_22097:
	lw r6,r2,$-96
	lw r5,r2,$8
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1791:5;1791:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1791:5;1791:13 ../cpuex2017/raytracer/min-rt.ml@1791:17;1791:18
	j @cfg_label_22096
@cfg_label_22096:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1791:5;1791:18
	j @cfg_label_22095
@cfg_label_22095:
	lw r5,r2,$-92
	lw r6,r2,$-88
	bne r5,r6,@cfg_label_22073
	j @cfg_label_22072
	j @cfg_label_22074
	j @cfg_label_22075
@cfg_label_22075:
@cfg_label_22073:
	sw r3,r2,$-32
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1791:2;1793:9
	j @cfg_label_22094
@cfg_label_22074:
@cfg_label_22072:
	li r5,$3
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1792:32;1792:33
	j @cfg_label_22071
@cfg_label_22071:
	lw r6,r2,$-84
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1792:23;1792:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1792:23;1792:30 ../cpuex2017/raytracer/min-rt.ml@1792:32;1792:33
	j @cfg_label_22070
@cfg_label_22070:
	push r4
	lw r5,r2,$16
	push r5
	jal @a_8890setup_startp
	sw r5,r2,$-72
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:14
	j @cfg_label_22069
@cfg_label_22069:
	li r5,$118
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	j @cfg_label_22068
@cfg_label_22068:
	push r4
	lw r5,r2,$-76
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-80
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-68
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	j @cfg_label_22067
@cfg_label_22067:
	lw r5,r2,$-68
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1791:2;1793:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54
	j @cfg_label_22093
@cfg_label_22094:
@cfg_label_22093:
	li r5,$4
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1795:17;1795:18
	j @cfg_label_22092
@cfg_label_22092:
	lw r6,r2,$-64
	lw r5,r2,$8
	seq r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1795:5;1795:18 ::= Oneq ../cpuex2017/raytracer/min-rt.ml@1795:5;1795:13 ../cpuex2017/raytracer/min-rt.ml@1795:17;1795:18
	j @cfg_label_22091
@cfg_label_22091:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1795:5;1795:18
	j @cfg_label_22090
@cfg_label_22090:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_22082
	j @cfg_label_22081
	j @cfg_label_22083
	j @cfg_label_22084
@cfg_label_22084:
@cfg_label_22082:
	sw r3,r2,$-28
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1795:2;1797:9
	j @cfg_label_22089
@cfg_label_22083:
@cfg_label_22081:
	li r5,$4
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1796:32;1796:33
	j @cfg_label_22080
@cfg_label_22080:
	lw r6,r2,$-52
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1796:23;1796:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1796:23;1796:30 ../cpuex2017/raytracer/min-rt.ml@1796:32;1796:33
	j @cfg_label_22079
@cfg_label_22079:
	push r4
	lw r5,r2,$16
	push r5
	jal @a_8890setup_startp
	sw r5,r2,$-40
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:14
	j @cfg_label_22078
@cfg_label_22078:
	li r5,$118
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	j @cfg_label_22077
@cfg_label_22077:
	push r4
	lw r5,r2,$-44
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-48
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-36
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	j @cfg_label_22076
@cfg_label_22076:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1795:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54
	j @cfg_label_22088
@cfg_label_22089:
@cfg_label_22088:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1791:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1795:2;1797:9
	j @cfg_label_22087
@cfg_label_22087:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1787:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1791:2;1797:9
	j @cfg_label_22086
@cfg_label_22086:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1783:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1787:2;1797:9
	j @cfg_label_22085
@cfg_label_22085:
	lw r5,r2,$-4
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@1779:2;1797:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1783:2;1797:9
	lw r5,r2,$-196
	addi r1,r1,$196
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-196
	addi r1,r1,$196
	pop r2
	pop r6
	jr r6
@a_8998calc_diffuse_using_1point:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$96
	lw r6,r2,$40
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:27 ../cpuex2017/raytracer/min-rt.ml@1810:29;1810:33
	j @cfg_label_22039
	lw r6,r2,$40
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1810:21;1810:27 ../cpuex2017/raytracer/min-rt.ml@1810:29;1810:33
	j @cfg_label_22039
@cfg_label_22039:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22038
@cfg_label_22038:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22037
@cfg_label_22037:
	lw r6,r2,$-92
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22036
@cfg_label_22036:
	lw r7,r2,$-84
	lw r6,r2,$-88
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_22035
@cfg_label_22035:
	li r5,$1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_22034
@cfg_label_22034:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22033
@cfg_label_22033:
	lw r6,r2,$-80
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_22032
@cfg_label_22032:
	lw r7,r2,$-72
	lw r6,r2,$-76
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_22031
@cfg_label_22031:
	li r5,$2
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_22030
@cfg_label_22030:
	li r5,$2
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22029
@cfg_label_22029:
	lw r6,r2,$-64
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_22028
@cfg_label_22028:
	lw r7,r2,$-56
	lw r6,r2,$-60
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_22027
@cfg_label_22027:
	lw r5,r2,$-48
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_22026
@cfg_label_22026:
	lw r5,r2,$-40
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1810:2;1810:34 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_22025
@cfg_label_22025:
	li r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@422:9;422:10
	j @cfg_label_22024
@cfg_label_22024:
	lw r6,r2,$-36
	lw r5,r2,$32
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1812:5;1812:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@422:2;422:7 ../cpuex2017/raytracer/min-rt.ml@422:9;422:10
	j @cfg_label_22023
@cfg_label_22023:
	lw r6,r2,$40
	lw r5,r2,$36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:19 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1813:4;1813:12 ../cpuex2017/raytracer/min-rt.ml@1813:14;1813:18
	j @cfg_label_22022
@cfg_label_22022:
	lw r6,r2,$40
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1814:4;1814:23 ../cpuex2017/raytracer/min-rt.ml@1814:25;1814:29
	j @cfg_label_22021
@cfg_label_22021:
	push r4
	lw r5,r2,$-24
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-32
	push r5
	jal @a_8994trace_diffuse_ray_80percent
	sw r5,r2,$-16
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1811:2;1814:30 ../cpuex2017/raytracer/min-rt.ml@1811:2;1811:29
	j @cfg_label_22020
@cfg_label_22020:
	lw r6,r2,$40
	lw r5,r2,$24
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1815:16;1815:23 ../cpuex2017/raytracer/min-rt.ml@1815:25;1815:29
	j @cfg_label_22019
@cfg_label_22019:
	push r4
	lw r5,r31,$268
	push r5
	lw r5,r2,$-20
	push r5
	lw r5,r31,$256
	push r5
	jal @a_8691vecaccumv
	sw r5,r2,$-12
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1815:2;1815:42 ../cpuex2017/raytracer/min-rt.ml@1815:2;1815:11
	j @cfg_label_22018
@cfg_label_22018:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1811:2;1815:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1815:2;1815:42
	j @cfg_label_22017
@cfg_label_22017:
	lw r5,r2,$-4
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1805:2;1815:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1811:2;1815:42
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@a_9001calc_diffuse_using_5points:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$184
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:42 ../cpuex2017/raytracer/min-rt.ml@1824:44;1824:45
	j @cfg_label_22016
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:42 ../cpuex2017/raytracer/min-rt.ml@1824:44;1824:45
	j @cfg_label_22016
@cfg_label_22016:
	lw r5,r2,$-180
	lw r5,r5,$20
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1824:38;1824:46
	j @cfg_label_22015
@cfg_label_22015:
	li r5,$1
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1825:47;1825:48
	j @cfg_label_22014
@cfg_label_22014:
	lw r6,r2,$-176
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1825:45;1825:48 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1825:45;1825:46 ../cpuex2017/raytracer/min-rt.ml@1825:47;1825:48
	j @cfg_label_22013
@cfg_label_22013:
	lw r6,r2,$-172
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1825:40;1825:43 ../cpuex2017/raytracer/min-rt.ml@1825:45;1825:48
	j @cfg_label_22012
@cfg_label_22012:
	lw r5,r2,$-168
	lw r5,r5,$20
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1825:40;1825:49
	j @cfg_label_22011
@cfg_label_22011:
	lw r6,r2,$8
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1826:42;1826:45 ../cpuex2017/raytracer/min-rt.ml@1826:47;1826:48
	j @cfg_label_22010
@cfg_label_22010:
	lw r5,r2,$-164
	lw r5,r5,$20
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1826:42;1826:49
	j @cfg_label_22009
@cfg_label_22009:
	li r5,$1
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1827:48;1827:49
	j @cfg_label_22008
@cfg_label_22008:
	lw r6,r2,$-160
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1827:46;1827:49 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1827:46;1827:47 ../cpuex2017/raytracer/min-rt.ml@1827:48;1827:49
	j @cfg_label_22007
@cfg_label_22007:
	lw r6,r2,$-156
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1827:41;1827:44 ../cpuex2017/raytracer/min-rt.ml@1827:46;1827:49
	j @cfg_label_22006
@cfg_label_22006:
	lw r5,r2,$-152
	lw r5,r5,$20
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1827:41;1827:50
	j @cfg_label_22005
@cfg_label_22005:
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1828:40;1828:44 ../cpuex2017/raytracer/min-rt.ml@1828:46;1828:47
	j @cfg_label_22004
@cfg_label_22004:
	lw r5,r2,$-148
	lw r5,r5,$20
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1828:40;1828:48
	j @cfg_label_22003
@cfg_label_22003:
	lw r6,r2,$24
	lw r5,r2,$-144
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1830:21;1830:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1830:21;1830:25 ../cpuex2017/raytracer/min-rt.ml@1830:27;1830:31
	j @cfg_label_22002
@cfg_label_22002:
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_22001
@cfg_label_22001:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_22000
@cfg_label_22000:
	lw r6,r2,$-140
	lw r5,r2,$-116
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21999
@cfg_label_21999:
	lw r7,r2,$-132
	lw r6,r2,$-136
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_21998
@cfg_label_21998:
	li r5,$1
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_21997
@cfg_label_21997:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21996
@cfg_label_21996:
	lw r6,r2,$-128
	lw r5,r2,$-116
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21995
@cfg_label_21995:
	lw r7,r2,$-120
	lw r6,r2,$-124
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_21994
@cfg_label_21994:
	li r5,$2
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_21993
@cfg_label_21993:
	li r5,$2
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21992
@cfg_label_21992:
	lw r6,r2,$-112
	lw r5,r2,$-116
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21991
@cfg_label_21991:
	lw r7,r2,$-104
	lw r6,r2,$-108
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_21990
@cfg_label_21990:
	lw r5,r2,$-96
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_21989
@cfg_label_21989:
	lw r5,r2,$-88
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1830:2;1830:32 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_21988
@cfg_label_21988:
	lw r6,r2,$24
	lw r5,r2,$-84
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1831:21;1831:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1831:21;1831:27 ../cpuex2017/raytracer/min-rt.ml@1831:29;1831:33
	j @cfg_label_21987
@cfg_label_21987:
	push r4
	lw r5,r2,$-80
	push r5
	lw r5,r31,$268
	push r5
	jal @a_8682vecadd
	sw r5,r2,$-16
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1831:2;1831:34 ../cpuex2017/raytracer/min-rt.ml@1831:2;1831:8
	j @cfg_label_21986
@cfg_label_21986:
	lw r6,r2,$24
	lw r5,r2,$-76
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1832:21;1832:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1832:21;1832:29 ../cpuex2017/raytracer/min-rt.ml@1832:31;1832:35
	j @cfg_label_21985
@cfg_label_21985:
	push r4
	lw r5,r2,$-72
	push r5
	lw r5,r31,$268
	push r5
	jal @a_8682vecadd
	sw r5,r2,$-24
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1832:2;1832:36 ../cpuex2017/raytracer/min-rt.ml@1832:2;1832:8
	j @cfg_label_21984
@cfg_label_21984:
	lw r6,r2,$24
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1833:21;1833:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1833:21;1833:28 ../cpuex2017/raytracer/min-rt.ml@1833:30;1833:34
	j @cfg_label_21983
@cfg_label_21983:
	push r4
	lw r5,r2,$-64
	push r5
	lw r5,r31,$268
	push r5
	jal @a_8682vecadd
	sw r5,r2,$-32
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1833:2;1833:35 ../cpuex2017/raytracer/min-rt.ml@1833:2;1833:8
	j @cfg_label_21982
@cfg_label_21982:
	lw r6,r2,$24
	lw r5,r2,$-60
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1834:21;1834:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1834:21;1834:27 ../cpuex2017/raytracer/min-rt.ml@1834:29;1834:33
	j @cfg_label_21981
@cfg_label_21981:
	push r4
	lw r5,r2,$-56
	push r5
	lw r5,r31,$268
	push r5
	jal @a_8682vecadd
	sw r5,r2,$-40
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1834:2;1834:34 ../cpuex2017/raytracer/min-rt.ml@1834:2;1834:8
	j @cfg_label_21980
@cfg_label_21980:
	lw r6,r2,$8
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1836:25;1836:28 ../cpuex2017/raytracer/min-rt.ml@1836:30;1836:31
	j @cfg_label_21979
@cfg_label_21979:
	lw r5,r2,$-52
	lw r5,r5,$16
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1836:25;1836:32
	j @cfg_label_21978
@cfg_label_21978:
	lw r6,r2,$24
	lw r5,r2,$-48
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1837:16;1837:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1837:16;1837:23 ../cpuex2017/raytracer/min-rt.ml@1837:25;1837:29
	j @cfg_label_21977
@cfg_label_21977:
	push r4
	lw r5,r31,$268
	push r5
	lw r5,r2,$-44
	push r5
	lw r5,r31,$256
	push r5
	jal @a_8691vecaccumv
	sw r5,r2,$-36
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1836:2;1837:42 ../cpuex2017/raytracer/min-rt.ml@1837:2;1837:11
	j @cfg_label_21976
@cfg_label_21976:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1834:2;1837:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1836:2;1837:42
	j @cfg_label_21975
@cfg_label_21975:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1833:2;1837:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1834:2;1837:42
	j @cfg_label_21974
@cfg_label_21974:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1832:2;1837:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1833:2;1837:42
	j @cfg_label_21973
@cfg_label_21973:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1831:2;1837:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1832:2;1837:42
	j @cfg_label_21972
@cfg_label_21972:
	lw r5,r2,$-4
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1824:2;1837:42 ::<= ../cpuex2017/raytracer/min-rt.ml@1831:2;1837:42
	lw r5,r2,$-184
	addi r1,r1,$184
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-184
	addi r1,r1,$184
	pop r2
	pop r6
	jr r6
@a_9007do_without_neighbors:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$56
	li r5,$4
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	j @cfg_label_21971
	li r5,$4
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	j @cfg_label_21971
@cfg_label_21971:
	lw r6,r2,$-52
	lw r5,r2,$40
	slt r5,r6,r5
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1843:5;1843:14 ::= Oleq ../cpuex2017/raytracer/min-rt.ml@1843:5;1843:9 ../cpuex2017/raytracer/min-rt.ml@1843:13;1843:14
	j @cfg_label_21970
@cfg_label_21970:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1843:5;1843:14
	j @cfg_label_21969
@cfg_label_21969:
	lw r5,r2,$-48
	lw r6,r2,$-44
	bne r5,r6,@cfg_label_21966
	j @cfg_label_21965
	j @cfg_label_21967
	j @cfg_label_21968
@cfg_label_21968:
@cfg_label_21966:
	sw r3,r2,$-56
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r5,r2,$-56
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21967:
@cfg_label_21965:
	lw r6,r2,$40
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:18 ../cpuex2017/raytracer/min-rt.ml@1846:20;1846:24
	j @cfg_label_21964
@cfg_label_21964:
	li r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	j @cfg_label_21963
@cfg_label_21963:
	lw r6,r2,$-36
	lw r5,r2,$-40
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:30 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:25 ../cpuex2017/raytracer/min-rt.ml@1846:29;1846:30
	j @cfg_label_21962
@cfg_label_21962:
	li r5,$1
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1846:7;1846:30
	j @cfg_label_21961
@cfg_label_21961:
	lw r5,r2,$-32
	lw r6,r2,$-28
	bne r5,r6,@cfg_label_21958
	j @cfg_label_21957
	j @cfg_label_21959
	j @cfg_label_21960
@cfg_label_21960:
@cfg_label_21958:
	sw r3,r2,$-56
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9
	lw r5,r2,$-56
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@cfg_label_21959:
@cfg_label_21957:
	lw r6,r2,$40
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:21 ../cpuex2017/raytracer/min-rt.ml@1848:23;1848:27
	j @cfg_label_21956
@cfg_label_21956:
	li r5,$1
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1848:9;1848:28
	j @cfg_label_21955
@cfg_label_21955:
	lw r5,r2,$-24
	lw r6,r2,$-20
	bne r5,r6,@cfg_label_21947
	j @cfg_label_21946
	j @cfg_label_21948
	j @cfg_label_21949
@cfg_label_21948:
@cfg_label_21946:
	push r4
	lw r5,r2,$40
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_8998calc_diffuse_using_1point
	sw r5,r2,$-8
	addi r1,r1,$36
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13 ../cpuex2017/raytracer/min-rt.ml@1849:1;1849:26
	j @cfg_label_21953
@cfg_label_21949:
@cfg_label_21947:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1848:6;1850:13
	j @cfg_label_21954
@cfg_label_21954:
@cfg_label_21953:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1851:41;1851:42
	j @cfg_label_21952
@cfg_label_21952:
	lw r6,r2,$-16
	lw r5,r2,$40
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:42 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1851:34;1851:38 ../cpuex2017/raytracer/min-rt.ml@1851:41;1851:42
	j @cfg_label_21951
@cfg_label_21951:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9007do_without_neighbors
	sw r5,r2,$-4
	addi r1,r1,$36
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1851:6;1851:43 ../cpuex2017/raytracer/min-rt.ml@1851:6;1851:26
	j @cfg_label_21950
@cfg_label_21950:
	lw r5,r2,$-4
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1843:2;1853:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1851:6;1851:43
	lw r5,r2,$-56
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-56
	addi r1,r1,$56
	pop r2
	pop r6
	jr r6
@a_9010neighbors_exist:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$76
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1858:10;1858:11
	j @cfg_label_21945
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1858:10;1858:11
	j @cfg_label_21945
@cfg_label_21945:
	lw r6,r2,$-72
	lw r5,r2,$12
	add r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1858:6;1858:11 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1858:6;1858:7 ../cpuex2017/raytracer/min-rt.ml@1858:10;1858:11
	j @cfg_label_21944
@cfg_label_21944:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1858:27;1858:28
	j @cfg_label_21943
@cfg_label_21943:
	lw r6,r2,$-68
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1858:15;1858:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1858:15;1858:25 ../cpuex2017/raytracer/min-rt.ml@1858:27;1858:28
	j @cfg_label_21942
@cfg_label_21942:
	lw r6,r2,$-60
	lw r5,r2,$-64
	slt r5,r5,r6
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1858:5;1858:29 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1858:6;1858:11 ../cpuex2017/raytracer/min-rt.ml@1858:15;1858:29
	j @cfg_label_21941
@cfg_label_21941:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1858:5;1858:29
	j @cfg_label_21940
@cfg_label_21940:
	lw r5,r2,$-56
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_21937
	j @cfg_label_21936
	j @cfg_label_21938
	j @cfg_label_21939
@cfg_label_21939:
@cfg_label_21937:
	lw r5,r31,$12
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1858:2;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1866:7;1866:12
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_21938:
@cfg_label_21936:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1859:11;1859:12
	j @cfg_label_21935
@cfg_label_21935:
	lw r6,r2,$-48
	lw r5,r2,$12
	slt r5,r6,r5
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1859:7;1859:12 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1859:7;1859:8 ../cpuex2017/raytracer/min-rt.ml@1859:11;1859:12
	j @cfg_label_21934
@cfg_label_21934:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1859:7;1859:12
	j @cfg_label_21933
@cfg_label_21933:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_21930
	j @cfg_label_21929
	j @cfg_label_21931
	j @cfg_label_21932
@cfg_label_21932:
@cfg_label_21930:
	lw r5,r31,$12
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1858:2;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1865:9;1865:14
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_21931:
@cfg_label_21929:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1860:14;1860:15
	j @cfg_label_21928
@cfg_label_21928:
	lw r6,r2,$-36
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1860:10;1860:15 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1860:10;1860:11 ../cpuex2017/raytracer/min-rt.ml@1860:14;1860:15
	j @cfg_label_21927
@cfg_label_21927:
	li r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1860:31;1860:32
	j @cfg_label_21926
@cfg_label_21926:
	lw r6,r2,$-32
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1860:19;1860:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1860:19;1860:29 ../cpuex2017/raytracer/min-rt.ml@1860:31;1860:32
	j @cfg_label_21925
@cfg_label_21925:
	lw r6,r2,$-24
	lw r5,r2,$-28
	slt r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1860:9;1860:33 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1860:10;1860:15 ../cpuex2017/raytracer/min-rt.ml@1860:19;1860:33
	j @cfg_label_21924
@cfg_label_21924:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1860:9;1860:33
	j @cfg_label_21923
@cfg_label_21923:
	lw r5,r2,$-20
	lw r6,r2,$-16
	bne r5,r6,@cfg_label_21920
	j @cfg_label_21919
	j @cfg_label_21921
	j @cfg_label_21922
@cfg_label_21922:
@cfg_label_21920:
	lw r5,r31,$12
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1858:2;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1864:11;1864:16
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_21921:
@cfg_label_21919:
	li r5,$0
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1861:8;1861:9
	j @cfg_label_21918
@cfg_label_21918:
	lw r6,r2,$-12
	lw r5,r2,$8
	slt r5,r6,r5
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1861:4;1861:9 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1861:4;1861:5 ../cpuex2017/raytracer/min-rt.ml@1861:8;1861:9
	j @cfg_label_21917
@cfg_label_21917:
	li r5,$1
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1861:4;1861:9
	j @cfg_label_21916
@cfg_label_21916:
	lw r5,r2,$-8
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_21913
	j @cfg_label_21912
	j @cfg_label_21914
	j @cfg_label_21915
@cfg_label_21914:
@cfg_label_21912:
	lw r5,r31,$16
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1858:2;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1862:3;1862:7
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@cfg_label_21915:
@cfg_label_21913:
	lw r5,r31,$12
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1858:2;1866:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1863:6;1863:11
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-76
	addi r1,r1,$76
	pop r2
	pop r6
	jr r6
@a_9017neighbors_are_available:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$80
	lw r6,r2,$8
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:37 ../cpuex2017/raytracer/min-rt.ml@1877:39;1877:40
	j @cfg_label_21911
	lw r6,r2,$8
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:37 ../cpuex2017/raytracer/min-rt.ml@1877:39;1877:40
	j @cfg_label_21911
@cfg_label_21911:
	lw r5,r2,$-76
	lw r5,r5,$8
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1877:34;1877:41
	j @cfg_label_21910
@cfg_label_21910:
	lw r6,r2,$24
	lw r5,r2,$-72
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1877:19;1877:46 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21909
@cfg_label_21909:
	lw r6,r2,$8
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1879:20;1879:24 ../cpuex2017/raytracer/min-rt.ml@1879:26;1879:27
	j @cfg_label_21908
@cfg_label_21908:
	lw r5,r2,$-68
	lw r5,r5,$8
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1879:20;1879:28
	j @cfg_label_21907
@cfg_label_21907:
	lw r6,r2,$24
	lw r5,r2,$-64
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1879:5;1879:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21906
@cfg_label_21906:
	lw r5,r2,$-60
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_21903
	j @cfg_label_21902
	j @cfg_label_21904
	j @cfg_label_21905
@cfg_label_21905:
@cfg_label_21903:
	lw r5,r31,$12
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1887:7;1887:12
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_21904:
@cfg_label_21902:
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1880:22;1880:26 ../cpuex2017/raytracer/min-rt.ml@1880:28;1880:29
	j @cfg_label_21901
@cfg_label_21901:
	lw r5,r2,$-56
	lw r5,r5,$8
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1880:22;1880:30
	j @cfg_label_21900
@cfg_label_21900:
	lw r6,r2,$24
	lw r5,r2,$-52
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1880:7;1880:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21899
@cfg_label_21899:
	lw r5,r2,$-48
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_21896
	j @cfg_label_21895
	j @cfg_label_21897
	j @cfg_label_21898
@cfg_label_21898:
@cfg_label_21896:
	lw r5,r31,$12
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1886:9;1886:14
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_21897:
@cfg_label_21895:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1881:31;1881:32
	j @cfg_label_21894
@cfg_label_21894:
	lw r6,r2,$-44
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1881:29;1881:32 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1881:29;1881:30 ../cpuex2017/raytracer/min-rt.ml@1881:31;1881:32
	j @cfg_label_21893
@cfg_label_21893:
	lw r6,r2,$-40
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1881:24;1881:27 ../cpuex2017/raytracer/min-rt.ml@1881:29;1881:32
	j @cfg_label_21892
@cfg_label_21892:
	lw r5,r2,$-36
	lw r5,r5,$8
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1881:24;1881:33
	j @cfg_label_21891
@cfg_label_21891:
	lw r6,r2,$24
	lw r5,r2,$-32
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1881:9;1881:38 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21890
@cfg_label_21890:
	lw r5,r2,$-28
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_21887
	j @cfg_label_21886
	j @cfg_label_21888
	j @cfg_label_21889
@cfg_label_21889:
@cfg_label_21887:
	lw r5,r31,$12
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1885:11;1885:16
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_21888:
@cfg_label_21886:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1882:26;1882:27
	j @cfg_label_21885
@cfg_label_21885:
	lw r6,r2,$-24
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1882:24;1882:27 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1882:24;1882:25 ../cpuex2017/raytracer/min-rt.ml@1882:26;1882:27
	j @cfg_label_21884
@cfg_label_21884:
	lw r6,r2,$-20
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1882:19;1882:22 ../cpuex2017/raytracer/min-rt.ml@1882:24;1882:27
	j @cfg_label_21883
@cfg_label_21883:
	lw r5,r2,$-16
	lw r5,r5,$8
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1882:19;1882:28
	j @cfg_label_21882
@cfg_label_21882:
	lw r6,r2,$24
	lw r5,r2,$-12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1882:4;1882:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21881
@cfg_label_21881:
	lw r5,r2,$-8
	lw r6,r2,$-4
	bne r5,r6,@cfg_label_21878
	j @cfg_label_21877
	j @cfg_label_21879
	j @cfg_label_21880
@cfg_label_21879:
@cfg_label_21877:
	lw r5,r31,$16
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1883:3;1883:7
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@cfg_label_21880:
@cfg_label_21878:
	lw r5,r31,$12
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1877:2;1887:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1884:6;1884:11
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-80
	addi r1,r1,$80
	pop r2
	pop r6
	jr r6
@a_9023try_exploit_neighbors:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$112
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:17 ../cpuex2017/raytracer/min-rt.ml@1895:19;1895:20
	j @cfg_label_21876
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1895:14;1895:17 ../cpuex2017/raytracer/min-rt.ml@1895:19;1895:20
	j @cfg_label_21876
@cfg_label_21876:
	li r5,$4
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1896:13;1896:14
	j @cfg_label_21875
@cfg_label_21875:
	lw r6,r2,$-108
	lw r5,r2,$28
	slt r5,r6,r5
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1896:5;1896:14 ::= Oleq ../cpuex2017/raytracer/min-rt.ml@1896:5;1896:9 ../cpuex2017/raytracer/min-rt.ml@1896:13;1896:14
	j @cfg_label_21874
@cfg_label_21874:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1896:5;1896:14
	j @cfg_label_21873
@cfg_label_21873:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_21870
	j @cfg_label_21869
	j @cfg_label_21871
	j @cfg_label_21872
@cfg_label_21872:
@cfg_label_21870:
	sw r3,r2,$-112
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@cfg_label_21871:
@cfg_label_21869:
	lw r5,r2,$-96
	lw r5,r5,$12
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1899:22;1899:27 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1899:22;1899:27
	j @cfg_label_21868
@cfg_label_21868:
	lw r5,r2,$-96
	lw r5,r5,$8
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1899:22;1899:27 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1899:22;1899:27
	j @cfg_label_21867
@cfg_label_21867:
	lw r6,r2,$28
	lw r5,r2,$-92
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1899:7;1899:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21866
@cfg_label_21866:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1899:36;1899:37
	j @cfg_label_21865
@cfg_label_21865:
	lw r6,r2,$-84
	lw r5,r2,$-88
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1899:7;1899:37 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1899:7;1899:32 ../cpuex2017/raytracer/min-rt.ml@1899:36;1899:37
	j @cfg_label_21864
@cfg_label_21864:
	li r5,$1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1899:7;1899:37
	j @cfg_label_21863
@cfg_label_21863:
	lw r5,r2,$-80
	lw r6,r2,$-76
	bne r5,r6,@cfg_label_21860
	j @cfg_label_21859
	j @cfg_label_21861
	j @cfg_label_21862
@cfg_label_21862:
@cfg_label_21860:
	sw r3,r2,$-112
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@cfg_label_21861:
@cfg_label_21859:
	push r4
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9017neighbors_are_available
	sw r5,r2,$-72
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1901:9;1901:53 ../cpuex2017/raytracer/min-rt.ml@1901:9;1901:32
	j @cfg_label_21858
@cfg_label_21858:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1901:9;1901:53
	j @cfg_label_21857
@cfg_label_21857:
	lw r5,r2,$-72
	lw r6,r2,$-68
	bne r5,r6,@cfg_label_21854
	j @cfg_label_21853
	j @cfg_label_21855
	j @cfg_label_21856
@cfg_label_21856:
@cfg_label_21854:
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:25 ../cpuex2017/raytracer/min-rt.ml@1913:27;1913:28
	j @cfg_label_21852
@cfg_label_21852:
	lw r5,r2,$-36
	lw r5,r5,$28
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21851
@cfg_label_21851:
	lw r5,r2,$-36
	lw r5,r5,$24
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21850
@cfg_label_21850:
	lw r5,r2,$-36
	lw r5,r5,$20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21849
@cfg_label_21849:
	lw r5,r2,$-36
	lw r5,r5,$16
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21848
@cfg_label_21848:
	lw r5,r2,$-36
	lw r5,r5,$12
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21847
@cfg_label_21847:
	lw r5,r2,$-36
	lw r5,r5,$8
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21846
@cfg_label_21846:
	lw r5,r2,$-36
	lw r5,r5,$4
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21845
@cfg_label_21845:
	lw r5,r2,$-36
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@1913:22;1913:29
	j @cfg_label_21844
@cfg_label_21844:
	push r4
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
	lw r5,r2,$-24
	push r5
	lw r5,r2,$-28
	push r5
	lw r5,r2,$-32
	push r5
	jal @a_9007do_without_neighbors
	sw r5,r2,$-112
	addi r1,r1,$36
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ../cpuex2017/raytracer/min-rt.ml@1913:1;1913:21
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@cfg_label_21855:
@cfg_label_21853:
	lw r6,r2,$28
	lw r5,r2,$-64
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1905:11;1905:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1905:11;1905:23 ../cpuex2017/raytracer/min-rt.ml@1905:25;1905:29
	j @cfg_label_21843
@cfg_label_21843:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1905:11;1905:30
	j @cfg_label_21842
@cfg_label_21842:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_21834
	j @cfg_label_21833
	j @cfg_label_21835
	j @cfg_label_21836
@cfg_label_21835:
@cfg_label_21833:
	push r4
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9001calc_diffuse_using_5points
	sw r5,r2,$-44
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1905:8;1907:8 ../cpuex2017/raytracer/min-rt.ml@1906:3;1906:29
	j @cfg_label_21840
@cfg_label_21836:
@cfg_label_21834:
	sw r3,r2,$-44
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1905:8;1907:8
	j @cfg_label_21841
@cfg_label_21841:
@cfg_label_21840:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1910:49;1910:50
	j @cfg_label_21839
@cfg_label_21839:
	lw r6,r2,$-52
	lw r5,r2,$28
	add r5,r5,r6
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1910:42;1910:50 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1910:42;1910:46 ../cpuex2017/raytracer/min-rt.ml@1910:49;1910:50
	j @cfg_label_21838
@cfg_label_21838:
	push r4
	lw r5,r2,$-48
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9023try_exploit_neighbors
	sw r5,r2,$-40
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1910:1;1910:51 ../cpuex2017/raytracer/min-rt.ml@1910:1;1910:22
	j @cfg_label_21837
@cfg_label_21837:
	lw r5,r2,$-40
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1895:2;1915:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1910:1;1910:51
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@a_9030write_ppm_header:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$112
	li r5,$80
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17
	j @cfg_label_21832
	li r5,$80
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1923:15;1923:17
	j @cfg_label_21832
@cfg_label_21832:
	push r4
	lw r5,r2,$-108
	push r5
	jal print_char
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:17 ../cpuex2017/raytracer/min-rt.ml@1923:4;1923:14
	j @cfg_label_21831
@cfg_label_21831:
	li r5,$51
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1924:16;1924:22
	j @cfg_label_21830
@cfg_label_21830:
	push r4
	lw r5,r2,$-104
	push r5
	jal print_char
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1924:4;1924:23 ../cpuex2017/raytracer/min-rt.ml@1924:4;1924:14
	j @cfg_label_21829
@cfg_label_21829:
	li r5,$10
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1925:15;1925:17
	j @cfg_label_21828
@cfg_label_21828:
	push r4
	lw r5,r2,$-100
	push r5
	jal print_char
	sw r5,r2,$-24
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1925:4;1925:17 ../cpuex2017/raytracer/min-rt.ml@1925:4;1925:14
	j @cfg_label_21827
@cfg_label_21827:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1926:26;1926:27
	j @cfg_label_21826
@cfg_label_21826:
	lw r6,r2,$-96
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1926:14;1926:24 ../cpuex2017/raytracer/min-rt.ml@1926:26;1926:27
	j @cfg_label_21825
@cfg_label_21825:
	push r4
	lw r5,r2,$-92
	push r5
	jal @a_8604print_int
	sw r5,r2,$-32
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1926:4;1926:28 ../cpuex2017/raytracer/min-rt.ml@1926:4;1926:13
	j @cfg_label_21824
@cfg_label_21824:
	li r5,$32
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1927:15;1927:17
	j @cfg_label_21823
@cfg_label_21823:
	push r4
	lw r5,r2,$-88
	push r5
	jal print_char
	sw r5,r2,$-40
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1927:4;1927:17 ../cpuex2017/raytracer/min-rt.ml@1927:4;1927:14
	j @cfg_label_21822
@cfg_label_21822:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1928:26;1928:27
	j @cfg_label_21821
@cfg_label_21821:
	lw r6,r2,$-84
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1928:14;1928:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1928:14;1928:24 ../cpuex2017/raytracer/min-rt.ml@1928:26;1928:27
	j @cfg_label_21820
@cfg_label_21820:
	push r4
	lw r5,r2,$-80
	push r5
	jal @a_8604print_int
	sw r5,r2,$-48
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1928:4;1928:28 ../cpuex2017/raytracer/min-rt.ml@1928:4;1928:13
	j @cfg_label_21819
@cfg_label_21819:
	li r5,$32
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1929:15;1929:17
	j @cfg_label_21818
@cfg_label_21818:
	push r4
	lw r5,r2,$-76
	push r5
	jal print_char
	sw r5,r2,$-56
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1929:4;1929:17 ../cpuex2017/raytracer/min-rt.ml@1929:4;1929:14
	j @cfg_label_21817
@cfg_label_21817:
	li r5,$255
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1930:14;1930:17
	j @cfg_label_21816
@cfg_label_21816:
	push r4
	lw r5,r2,$-72
	push r5
	jal @a_8604print_int
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1930:4;1930:17 ../cpuex2017/raytracer/min-rt.ml@1930:4;1930:13
	j @cfg_label_21815
@cfg_label_21815:
	li r5,$10
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1931:15;1931:17
	j @cfg_label_21814
@cfg_label_21814:
	push r4
	lw r5,r2,$-68
	push r5
	jal print_char
	sw r5,r2,$-60
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1931:4;1931:17 ../cpuex2017/raytracer/min-rt.ml@1931:4;1931:14
	j @cfg_label_21813
@cfg_label_21813:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1930:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1931:4;1931:17
	j @cfg_label_21812
@cfg_label_21812:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1929:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1930:4;1931:17
	j @cfg_label_21811
@cfg_label_21811:
	lw r5,r2,$-44
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1928:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1929:4;1931:17
	j @cfg_label_21810
@cfg_label_21810:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1927:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1928:4;1931:17
	j @cfg_label_21809
@cfg_label_21809:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1926:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1927:4;1931:17
	j @cfg_label_21808
@cfg_label_21808:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1925:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1926:4;1931:17
	j @cfg_label_21807
@cfg_label_21807:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1924:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1925:4;1931:17
	j @cfg_label_21806
@cfg_label_21806:
	lw r5,r2,$-4
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1923:4;1931:17 ::<= ../cpuex2017/raytracer/min-rt.ml@1924:4;1931:17
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@a_9034write_rgb:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$176
	li r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1942:26;1942:27
	j @cfg_label_21805
	li r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1942:26;1942:27
	j @cfg_label_21805
@cfg_label_21805:
	lw r6,r2,$-172
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1942:21;1942:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1942:21;1942:24 ../cpuex2017/raytracer/min-rt.ml@1942:26;1942:27
	j @cfg_label_21804
@cfg_label_21804:
	push r4
	lw r5,r2,$-168
	push r5
	jal int_of_float
	sw r5,r2,$-140
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	j @cfg_label_21803
@cfg_label_21803:
	li r5,$255
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	j @cfg_label_21802
@cfg_label_21802:
	lw r6,r2,$-164
	lw r5,r2,$-140
	slt r5,r6,r5
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:24 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:18 ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	j @cfg_label_21801
@cfg_label_21801:
	li r5,$1
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:24
	j @cfg_label_21800
@cfg_label_21800:
	lw r5,r2,$-160
	lw r6,r2,$-156
	bne r5,r6,@cfg_label_21741
	j @cfg_label_21740
	j @cfg_label_21742
	j @cfg_label_21743
@cfg_label_21742:
@cfg_label_21740:
	li r5,$255
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_21797
@cfg_label_21743:
@cfg_label_21741:
	li r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	j @cfg_label_21739
@cfg_label_21739:
	lw r6,r2,$-152
	lw r5,r2,$-140
	slt r5,r5,r6
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:48 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:44 ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	j @cfg_label_21738
@cfg_label_21738:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:48
	j @cfg_label_21737
@cfg_label_21737:
	lw r5,r2,$-148
	lw r6,r2,$-144
	bne r5,r6,@cfg_label_21734
	j @cfg_label_21733
	j @cfg_label_21735
	j @cfg_label_21736
@cfg_label_21735:
@cfg_label_21733:
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_21798
@cfg_label_21736:
@cfg_label_21734:
	lw r5,r2,$-140
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:18
	j @cfg_label_21799
@cfg_label_21799:
@cfg_label_21798:
@cfg_label_21797:
	push r4
	lw r5,r2,$-136
	push r5
	jal @a_8604print_int
	sw r5,r2,$-8
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1942:3;1942:28 ../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	j @cfg_label_21796
@cfg_label_21796:
	li r5,$32
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@1943:14;1943:16
	j @cfg_label_21795
@cfg_label_21795:
	push r4
	lw r5,r2,$-132
	push r5
	jal print_char
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1943:3;1943:16 ../cpuex2017/raytracer/min-rt.ml@1943:3;1943:13
	j @cfg_label_21794
@cfg_label_21794:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@1944:26;1944:27
	j @cfg_label_21793
@cfg_label_21793:
	lw r6,r2,$-128
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@1944:21;1944:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1944:21;1944:24 ../cpuex2017/raytracer/min-rt.ml@1944:26;1944:27
	j @cfg_label_21792
@cfg_label_21792:
	push r4
	lw r5,r2,$-124
	push r5
	jal int_of_float
	sw r5,r2,$-96
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	j @cfg_label_21791
@cfg_label_21791:
	li r5,$255
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	j @cfg_label_21790
@cfg_label_21790:
	lw r6,r2,$-120
	lw r5,r2,$-96
	slt r5,r6,r5
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:24 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:18 ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	j @cfg_label_21789
@cfg_label_21789:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:24
	j @cfg_label_21788
@cfg_label_21788:
	lw r5,r2,$-116
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_21752
	j @cfg_label_21751
	j @cfg_label_21753
	j @cfg_label_21754
@cfg_label_21753:
@cfg_label_21751:
	li r5,$255
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_21785
@cfg_label_21754:
@cfg_label_21752:
	li r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	j @cfg_label_21750
@cfg_label_21750:
	lw r6,r2,$-108
	lw r5,r2,$-96
	slt r5,r5,r6
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:48 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:44 ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	j @cfg_label_21749
@cfg_label_21749:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:48
	j @cfg_label_21748
@cfg_label_21748:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_21745
	j @cfg_label_21744
	j @cfg_label_21746
	j @cfg_label_21747
@cfg_label_21746:
@cfg_label_21744:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_21786
@cfg_label_21747:
@cfg_label_21745:
	lw r5,r2,$-96
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:18
	j @cfg_label_21787
@cfg_label_21787:
@cfg_label_21786:
@cfg_label_21785:
	push r4
	lw r5,r2,$-92
	push r5
	jal @a_8604print_int
	sw r5,r2,$-24
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1944:3;1944:28 ../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	j @cfg_label_21784
@cfg_label_21784:
	li r5,$32
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1945:14;1945:16
	j @cfg_label_21783
@cfg_label_21783:
	push r4
	lw r5,r2,$-88
	push r5
	jal print_char
	sw r5,r2,$-32
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1945:3;1945:16 ../cpuex2017/raytracer/min-rt.ml@1945:3;1945:13
	j @cfg_label_21782
@cfg_label_21782:
	li r5,$2
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1946:26;1946:27
	j @cfg_label_21781
@cfg_label_21781:
	lw r6,r2,$-84
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1946:21;1946:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1946:21;1946:24 ../cpuex2017/raytracer/min-rt.ml@1946:26;1946:27
	j @cfg_label_21780
@cfg_label_21780:
	push r4
	lw r5,r2,$-80
	push r5
	jal int_of_float
	sw r5,r2,$-52
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:25 ../cpuex2017/raytracer/min-rt.ml@1936:11;1936:23
	j @cfg_label_21779
@cfg_label_21779:
	li r5,$255
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	j @cfg_label_21778
@cfg_label_21778:
	lw r6,r2,$-76
	lw r5,r2,$-52
	slt r5,r6,r5
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:24 ::= Ogt ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:18 ../cpuex2017/raytracer/min-rt.ml@1937:21;1937:24
	j @cfg_label_21777
@cfg_label_21777:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:24
	j @cfg_label_21776
@cfg_label_21776:
	lw r5,r2,$-72
	lw r6,r2,$-68
	bne r5,r6,@cfg_label_21763
	j @cfg_label_21762
	j @cfg_label_21764
	j @cfg_label_21765
@cfg_label_21764:
@cfg_label_21762:
	li r5,$255
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_21773
@cfg_label_21765:
@cfg_label_21763:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	j @cfg_label_21761
@cfg_label_21761:
	lw r6,r2,$-64
	lw r5,r2,$-52
	slt r5,r5,r6
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:48 ::= Olt ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:44 ../cpuex2017/raytracer/min-rt.ml@1937:47;1937:48
	j @cfg_label_21760
@cfg_label_21760:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@1937:42;1937:48
	j @cfg_label_21759
@cfg_label_21759:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_21756
	j @cfg_label_21755
	j @cfg_label_21757
	j @cfg_label_21758
@cfg_label_21757:
@cfg_label_21755:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63
	j @cfg_label_21774
@cfg_label_21758:
@cfg_label_21756:
	lw r5,r2,$-52
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1937:13;1937:63 ::<= ../cpuex2017/raytracer/min-rt.ml@1937:16;1937:18
	j @cfg_label_21775
@cfg_label_21775:
@cfg_label_21774:
@cfg_label_21773:
	push r4
	lw r5,r2,$-48
	push r5
	jal @a_8604print_int
	sw r5,r2,$-40
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1946:3;1946:28 ../cpuex2017/raytracer/min-rt.ml@1938:2;1938:11
	j @cfg_label_21772
@cfg_label_21772:
	li r5,$10
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1947:14;1947:16
	j @cfg_label_21771
@cfg_label_21771:
	push r4
	lw r5,r2,$-44
	push r5
	jal print_char
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1947:3;1947:16 ../cpuex2017/raytracer/min-rt.ml@1947:3;1947:13
	j @cfg_label_21770
@cfg_label_21770:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1946:3;1947:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1947:3;1947:16
	j @cfg_label_21769
@cfg_label_21769:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1945:3;1947:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1946:3;1947:16
	j @cfg_label_21768
@cfg_label_21768:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1944:3;1947:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1945:3;1947:16
	j @cfg_label_21767
@cfg_label_21767:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1943:3;1947:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1944:3;1947:16
	j @cfg_label_21766
@cfg_label_21766:
	lw r5,r2,$-4
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1942:3;1947:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1943:3;1947:16
	lw r5,r2,$-176
	addi r1,r1,$176
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-176
	addi r1,r1,$176
	pop r2
	pop r6
	jr r6
@a_9036pretrace_diffuse_rays:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$192
	li r5,$4
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1959:13;1959:14
	j @cfg_label_21732
	li r5,$4
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@1959:13;1959:14
	j @cfg_label_21732
@cfg_label_21732:
	lw r6,r2,$-188
	lw r5,r2,$40
	slt r5,r6,r5
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@1959:5;1959:14 ::= Oleq ../cpuex2017/raytracer/min-rt.ml@1959:5;1959:9 ../cpuex2017/raytracer/min-rt.ml@1959:13;1959:14
	j @cfg_label_21731
@cfg_label_21731:
	li r5,$1
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@1959:5;1959:14
	j @cfg_label_21730
@cfg_label_21730:
	lw r5,r2,$-184
	lw r6,r2,$-180
	bne r5,r6,@cfg_label_21727
	j @cfg_label_21726
	j @cfg_label_21728
	j @cfg_label_21729
@cfg_label_21729:
@cfg_label_21727:
	sw r3,r2,$-192
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r5,r2,$-192
	addi r1,r1,$192
	pop r2
	pop r6
	jr r6
@cfg_label_21728:
@cfg_label_21726:
	lw r6,r2,$40
	lw r5,r2,$16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@1962:14;1962:39 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1871:2;1871:13 ../cpuex2017/raytracer/min-rt.ml@1871:15;1871:20
	j @cfg_label_21725
@cfg_label_21725:
	li r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@1963:14;1963:15
	j @cfg_label_21724
@cfg_label_21724:
	lw r6,r2,$-172
	lw r5,r2,$-176
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@1963:7;1963:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1963:7;1963:10 ../cpuex2017/raytracer/min-rt.ml@1963:14;1963:15
	j @cfg_label_21723
@cfg_label_21723:
	li r5,$1
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@1963:7;1963:15
	j @cfg_label_21722
@cfg_label_21722:
	lw r5,r2,$-168
	lw r6,r2,$-164
	bne r5,r6,@cfg_label_21719
	j @cfg_label_21718
	j @cfg_label_21720
	j @cfg_label_21721
@cfg_label_21721:
@cfg_label_21719:
	sw r3,r2,$-192
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9
	lw r5,r2,$-192
	addi r1,r1,$192
	pop r2
	pop r6
	jr r6
@cfg_label_21720:
@cfg_label_21718:
	lw r6,r2,$40
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@1966:9;1966:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1966:9;1966:21 ../cpuex2017/raytracer/min-rt.ml@1966:23;1966:27
	j @cfg_label_21717
@cfg_label_21717:
	li r5,$1
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1966:9;1966:28
	j @cfg_label_21716
@cfg_label_21716:
	lw r5,r2,$-160
	lw r6,r2,$-156
	bne r5,r6,@cfg_label_21708
	j @cfg_label_21707
	j @cfg_label_21709
	j @cfg_label_21710
@cfg_label_21710:
@cfg_label_21708:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1966:6;1980:16
	j @cfg_label_21715
@cfg_label_21709:
@cfg_label_21707:
	li r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@422:9;422:10
	j @cfg_label_21706
@cfg_label_21706:
	lw r6,r2,$-152
	lw r5,r2,$32
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@1967:16;1967:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@422:2;422:7 ../cpuex2017/raytracer/min-rt.ml@422:9;422:10
	j @cfg_label_21705
@cfg_label_21705:
	fmovi f1,$0.000000
	fst f1,r2,$-136
	j @cfg_label_21704
@cfg_label_21704:
	li r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@59:5;59:6
	j @cfg_label_21703
@cfg_label_21703:
	lw r7,r2,$-136
	lw r6,r2,$-148
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@59:5;59:6 ../cpuex2017/raytracer/min-rt.ml@59:11;59:15
	j @cfg_label_21702
@cfg_label_21702:
	li r5,$1
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@60:5;60:6
	j @cfg_label_21701
@cfg_label_21701:
	lw r7,r2,$-136
	lw r6,r2,$-144
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@60:2;60:3 ../cpuex2017/raytracer/min-rt.ml@60:5;60:6 ../cpuex2017/raytracer/min-rt.ml@60:11;60:15
	j @cfg_label_21700
@cfg_label_21700:
	li r5,$2
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@61:5;61:6
	j @cfg_label_21699
@cfg_label_21699:
	lw r7,r2,$-136
	lw r6,r2,$-140
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@61:2;61:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@61:2;61:3 ../cpuex2017/raytracer/min-rt.ml@61:5;61:6 ../cpuex2017/raytracer/min-rt.ml@61:11;61:15
	j @cfg_label_21698
@cfg_label_21698:
	lw r5,r2,$-128
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@60:2;61:15 ::<= ../cpuex2017/raytracer/min-rt.ml@61:2;61:15
	j @cfg_label_21697
@cfg_label_21697:
	lw r5,r2,$-120
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1968:1;1968:21 ::<= ../cpuex2017/raytracer/min-rt.ml@60:2;61:15
	j @cfg_label_21696
@cfg_label_21696:
	lw r6,r2,$-116
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@1975:3;1975:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1975:3;1975:10 ../cpuex2017/raytracer/min-rt.ml@1975:12;1975:20
	j @cfg_label_21695
@cfg_label_21695:
	lw r6,r2,$40
	lw r5,r2,$36
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@1976:3;1976:18 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1976:3;1976:11 ../cpuex2017/raytracer/min-rt.ml@1976:13;1976:17
	j @cfg_label_21694
@cfg_label_21694:
	lw r6,r2,$40
	lw r5,r2,$12
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1977:3;1977:22 ../cpuex2017/raytracer/min-rt.ml@1977:24;1977:28
	j @cfg_label_21693
@cfg_label_21693:
	push r4
	lw r5,r2,$-104
	push r5
	jal @a_8890setup_startp
	sw r5,r2,$-96
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:18 ../cpuex2017/raytracer/min-rt.ml@1768:2;1768:14
	j @cfg_label_21692
@cfg_label_21692:
	li r5,$118
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1772:51;1772:54
	j @cfg_label_21691
@cfg_label_21691:
	push r4
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-112
	push r5
	jal @a_8985iter_trace_diffuse_rays
	sw r5,r2,$-92
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54 ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:25
	j @cfg_label_21690
@cfg_label_21690:
	lw r5,r2,$-92
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1974:1;1977:29 ::<= ../cpuex2017/raytracer/min-rt.ml@1772:2;1772:54
	j @cfg_label_21689
@cfg_label_21689:
	lw r6,r2,$40
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1979:8;1979:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1979:8;1979:14 ../cpuex2017/raytracer/min-rt.ml@1979:16;1979:20
	j @cfg_label_21688
@cfg_label_21688:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_21687
@cfg_label_21687:
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21686
@cfg_label_21686:
	lw r6,r2,$-88
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21685
@cfg_label_21685:
	lw r7,r2,$-80
	lw r6,r2,$-84
	lw r5,r2,$-60
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_21684
@cfg_label_21684:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_21683
@cfg_label_21683:
	li r5,$1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21682
@cfg_label_21682:
	lw r6,r2,$-76
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21681
@cfg_label_21681:
	lw r7,r2,$-68
	lw r6,r2,$-72
	lw r5,r2,$-60
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_21680
@cfg_label_21680:
	li r5,$2
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_21679
@cfg_label_21679:
	li r5,$2
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21678
@cfg_label_21678:
	lw r6,r2,$-64
	lw r5,r31,$268
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21677
@cfg_label_21677:
	lw r7,r2,$-52
	lw r6,r2,$-56
	lw r5,r2,$-60
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_21676
@cfg_label_21676:
	lw r5,r2,$-44
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_21675
@cfg_label_21675:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1978:1;1979:33 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_21674
@cfg_label_21674:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1972:1;1979:33 ::<= ../cpuex2017/raytracer/min-rt.ml@1978:1;1979:33
	j @cfg_label_21673
@cfg_label_21673:
	lw r5,r2,$-20
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1966:6;1980:16 ::<= ../cpuex2017/raytracer/min-rt.ml@1972:1;1979:33
	j @cfg_label_21714
@cfg_label_21715:
@cfg_label_21714:
	li r5,$1
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1981:42;1981:43
	j @cfg_label_21713
@cfg_label_21713:
	lw r6,r2,$-16
	lw r5,r2,$40
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1981:35;1981:43 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@1981:35;1981:39 ../cpuex2017/raytracer/min-rt.ml@1981:42;1981:43
	j @cfg_label_21712
@cfg_label_21712:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$36
	push r5
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9036pretrace_diffuse_rays
	sw r5,r2,$-4
	addi r1,r1,$36
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1981:6;1981:44 ../cpuex2017/raytracer/min-rt.ml@1981:6;1981:27
	j @cfg_label_21711
@cfg_label_21711:
	lw r5,r2,$-4
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@1959:2;1983:9 ::<= ../cpuex2017/raytracer/min-rt.ml@1981:6;1981:44
	lw r5,r2,$-192
	addi r1,r1,$192
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-192
	addi r1,r1,$192
	pop r2
	pop r6
	jr r6
@a_9039pretrace_pixels:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$464
	li r5,$0
	sw r5,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@1989:10;1989:11
	j @cfg_label_21672
	li r5,$0
	sw r5,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@1989:10;1989:11
	j @cfg_label_21672
@cfg_label_21672:
	lw r6,r2,$-460
	lw r5,r2,$12
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-456
; ../cpuex2017/raytracer/min-rt.ml@1989:5;1989:11 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@1989:5;1989:6 ../cpuex2017/raytracer/min-rt.ml@1989:10;1989:11
	j @cfg_label_21671
@cfg_label_21671:
	li r5,$1
	sw r5,r2,$-452
; ../cpuex2017/raytracer/min-rt.ml@1989:5;1989:11
	j @cfg_label_21670
@cfg_label_21670:
	lw r5,r2,$-456
	lw r6,r2,$-452
	bne r5,r6,@cfg_label_21667
	j @cfg_label_21666
	j @cfg_label_21668
	j @cfg_label_21669
@cfg_label_21669:
@cfg_label_21667:
	sw r3,r2,$-464
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12
	lw r5,r2,$-464
	addi r1,r1,$464
	pop r2
	pop r6
	jr r6
@cfg_label_21668:
@cfg_label_21666:
	li r5,$0
	sw r5,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@1991:28;1991:29
	j @cfg_label_21665
@cfg_label_21665:
	lw r6,r2,$-448
	lw r5,r31,$220
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-432
; ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:26 ../cpuex2017/raytracer/min-rt.ml@1991:28;1991:29
	j @cfg_label_21664
@cfg_label_21664:
	li r5,$0
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@1991:66;1991:67
	j @cfg_label_21663
@cfg_label_21663:
	lw r6,r2,$-444
	lw r5,r31,$232
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@1991:52;1991:68 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1991:52;1991:64 ../cpuex2017/raytracer/min-rt.ml@1991:66;1991:67
	j @cfg_label_21662
@cfg_label_21662:
	lw r6,r2,$-440
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@1991:48;1991:68 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1991:48;1991:49 ../cpuex2017/raytracer/min-rt.ml@1991:52;1991:68
	j @cfg_label_21661
@cfg_label_21661:
	push r4
	lw r5,r2,$-436
	push r5
	jal float_of_int
	sw r5,r2,$-428
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1991:34;1991:69 ../cpuex2017/raytracer/min-rt.ml@1991:34;1991:46
	j @cfg_label_21660
@cfg_label_21660:
	fld f1,r2,$-432
	fld f2,r2,$-428
	fmul f1,f1,f2
	fst f1,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:69 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1991:16;1991:30 ../cpuex2017/raytracer/min-rt.ml@1991:34;1991:69
	j @cfg_label_21659
@cfg_label_21659:
	li r5,$0
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@1992:19;1992:20
	j @cfg_label_21658
@cfg_label_21658:
	li r5,$0
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@1992:47;1992:48
	j @cfg_label_21657
@cfg_label_21657:
	lw r6,r2,$-424
	lw r5,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:45 ../cpuex2017/raytracer/min-rt.ml@1992:47;1992:48
	j @cfg_label_21656
@cfg_label_21656:
	fld f1,r2,$-380
	fld f2,r2,$-420
	fmul f1,f1,f2
	fst f1,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:30 ../cpuex2017/raytracer/min-rt.ml@1992:34;1992:49
	j @cfg_label_21655
@cfg_label_21655:
	fld f1,r2,$-416
	fld f2,r2,$20
	fadd f1,f1,f2
	fst f1,r2,$-408
; ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:56 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:49 ../cpuex2017/raytracer/min-rt.ml@1992:53;1992:56
	j @cfg_label_21654
@cfg_label_21654:
	lw r7,r2,$-408
	lw r6,r2,$-412
	lw r5,r31,$148
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:56 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1992:4;1992:17 ../cpuex2017/raytracer/min-rt.ml@1992:19;1992:20 ../cpuex2017/raytracer/min-rt.ml@1992:25;1992:56
	j @cfg_label_21653
@cfg_label_21653:
	li r5,$1
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@1993:19;1993:20
	j @cfg_label_21652
@cfg_label_21652:
	li r5,$1
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@1993:47;1993:48
	j @cfg_label_21651
@cfg_label_21651:
	lw r6,r2,$-404
	lw r5,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@1993:34;1993:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1993:34;1993:45 ../cpuex2017/raytracer/min-rt.ml@1993:47;1993:48
	j @cfg_label_21650
@cfg_label_21650:
	fld f1,r2,$-380
	fld f2,r2,$-400
	fmul f1,f1,f2
	fst f1,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:30 ../cpuex2017/raytracer/min-rt.ml@1993:34;1993:49
	j @cfg_label_21649
@cfg_label_21649:
	fld f1,r2,$-396
	fld f2,r2,$24
	fadd f1,f1,f2
	fst f1,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:56 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:49 ../cpuex2017/raytracer/min-rt.ml@1993:53;1993:56
	j @cfg_label_21648
@cfg_label_21648:
	lw r7,r2,$-388
	lw r6,r2,$-392
	lw r5,r31,$148
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@1993:4;1993:56 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1993:4;1993:17 ../cpuex2017/raytracer/min-rt.ml@1993:19;1993:20 ../cpuex2017/raytracer/min-rt.ml@1993:25;1993:56
	j @cfg_label_21647
@cfg_label_21647:
	li r5,$2
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@1994:19;1994:20
	j @cfg_label_21646
@cfg_label_21646:
	li r5,$2
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@1994:47;1994:48
	j @cfg_label_21645
@cfg_label_21645:
	lw r6,r2,$-384
	lw r5,r31,$184
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@1994:34;1994:49 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1994:34;1994:45 ../cpuex2017/raytracer/min-rt.ml@1994:47;1994:48
	j @cfg_label_21644
@cfg_label_21644:
	fld f1,r2,$-380
	fld f2,r2,$-376
	fmul f1,f1,f2
	fst f1,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:49 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:30 ../cpuex2017/raytracer/min-rt.ml@1994:34;1994:49
	j @cfg_label_21643
@cfg_label_21643:
	fld f1,r2,$-372
	fld f2,r2,$28
	fadd f1,f1,f2
	fst f1,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:56 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:49 ../cpuex2017/raytracer/min-rt.ml@1994:53;1994:56
	j @cfg_label_21642
@cfg_label_21642:
	lw r7,r2,$-364
	lw r6,r2,$-368
	lw r5,r31,$148
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@1994:4;1994:56 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@1994:4;1994:17 ../cpuex2017/raytracer/min-rt.ml@1994:19;1994:20 ../cpuex2017/raytracer/min-rt.ml@1994:25;1994:56
	j @cfg_label_21641
@cfg_label_21641:
	push r4
	lw r5,r31,$12
	push r5
	lw r5,r31,$148
	push r5
	jal @a_8667vecunit_sgn
	sw r5,r2,$-32
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@1995:4;1995:35 ../cpuex2017/raytracer/min-rt.ml@1995:4;1995:15
	j @cfg_label_21640
@cfg_label_21640:
	fmovi f1,$0.000000
	fst f1,r2,$-348
	j @cfg_label_21639
@cfg_label_21639:
	li r5,$0
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@59:5;59:6
	j @cfg_label_21638
@cfg_label_21638:
	lw r7,r2,$-348
	lw r6,r2,$-360
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@59:2;59:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@59:2;59:3 ../cpuex2017/raytracer/min-rt.ml@59:5;59:6 ../cpuex2017/raytracer/min-rt.ml@59:11;59:15
	j @cfg_label_21637
@cfg_label_21637:
	li r5,$1
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@60:5;60:6
	j @cfg_label_21636
@cfg_label_21636:
	lw r7,r2,$-348
	lw r6,r2,$-356
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@60:2;60:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@60:2;60:3 ../cpuex2017/raytracer/min-rt.ml@60:5;60:6 ../cpuex2017/raytracer/min-rt.ml@60:11;60:15
	j @cfg_label_21635
@cfg_label_21635:
	li r5,$2
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@61:5;61:6
	j @cfg_label_21634
@cfg_label_21634:
	lw r7,r2,$-348
	lw r6,r2,$-352
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-340
; ../cpuex2017/raytracer/min-rt.ml@61:2;61:15 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@61:2;61:3 ../cpuex2017/raytracer/min-rt.ml@61:5;61:6 ../cpuex2017/raytracer/min-rt.ml@61:11;61:15
	j @cfg_label_21633
@cfg_label_21633:
	lw r5,r2,$-340
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@60:2;61:15 ::<= ../cpuex2017/raytracer/min-rt.ml@61:2;61:15
	j @cfg_label_21632
@cfg_label_21632:
	lw r5,r2,$-332
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@1996:4;1996:16 ::<= ../cpuex2017/raytracer/min-rt.ml@60:2;61:15
	j @cfg_label_21631
@cfg_label_21631:
	li r5,$0
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_21630
@cfg_label_21630:
	li r5,$0
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21629
@cfg_label_21629:
	lw r6,r2,$-328
	lw r5,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21628
@cfg_label_21628:
	lw r7,r2,$-320
	lw r6,r2,$-324
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_21627
@cfg_label_21627:
	li r5,$1
	sw r5,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_21626
@cfg_label_21626:
	li r5,$1
	sw r5,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21625
@cfg_label_21625:
	lw r6,r2,$-316
	lw r5,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21624
@cfg_label_21624:
	lw r7,r2,$-308
	lw r6,r2,$-312
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_21623
@cfg_label_21623:
	li r5,$2
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_21622
@cfg_label_21622:
	li r5,$2
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21621
@cfg_label_21621:
	lw r6,r2,$-304
	lw r5,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21620
@cfg_label_21620:
	lw r7,r2,$-296
	lw r6,r2,$-300
	lw r5,r31,$208
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_21619
@cfg_label_21619:
	lw r5,r2,$-288
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_21618
@cfg_label_21618:
	lw r5,r2,$-280
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1997:4;1997:27 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_21617
@cfg_label_21617:
	li r5,$0
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@2000:14;2000:15
	j @cfg_label_21616
@cfg_label_21616:
	fmovi f1,$1.000000
	fst f1,r2,$-268
	j @cfg_label_21615
@cfg_label_21615:
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:38 ../cpuex2017/raytracer/min-rt.ml@2000:40;2000:41
	j @cfg_label_21614
@cfg_label_21614:
	fmovi f1,$0.000000
	fst f1,r2,$-232
	j @cfg_label_21613
@cfg_label_21613:
	lw r5,r2,$-276
	lw r5,r5,$28
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21612
@cfg_label_21612:
	lw r5,r2,$-276
	lw r5,r5,$24
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21611
@cfg_label_21611:
	lw r5,r2,$-276
	lw r5,r5,$20
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21610
@cfg_label_21610:
	lw r5,r2,$-276
	lw r5,r5,$16
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21609
@cfg_label_21609:
	lw r5,r2,$-276
	lw r5,r5,$12
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21608
@cfg_label_21608:
	lw r5,r2,$-276
	lw r5,r5,$8
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21607
@cfg_label_21607:
	lw r5,r2,$-276
	lw r5,r5,$4
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21606
@cfg_label_21606:
	lw r5,r2,$-276
	lw r5,r5,$0
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2000:34;2000:42
	j @cfg_label_21605
@cfg_label_21605:
	push r4
	lw r5,r2,$-232
	push r5
	lw r5,r2,$-236
	push r5
	lw r5,r2,$-240
	push r5
	lw r5,r2,$-244
	push r5
	lw r5,r2,$-248
	push r5
	lw r5,r2,$-252
	push r5
	lw r5,r2,$-256
	push r5
	lw r5,r2,$-260
	push r5
	lw r5,r2,$-264
	push r5
	lw r5,r31,$148
	push r5
	lw r5,r2,$-268
	push r5
	lw r5,r2,$-272
	push r5
	jal @a_8976trace_ray
	sw r5,r2,$-56
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2000:4;2000:46 ../cpuex2017/raytracer/min-rt.ml@2000:4;2000:13
	j @cfg_label_21604
@cfg_label_21604:
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2001:18;2001:22 ../cpuex2017/raytracer/min-rt.ml@2001:24;2001:25
	j @cfg_label_21603
@cfg_label_21603:
	lw r5,r2,$-228
	lw r5,r5,$0
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2001:18;2001:26
	j @cfg_label_21602
@cfg_label_21602:
	li r5,$0
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_21601
@cfg_label_21601:
	li r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21600
@cfg_label_21600:
	lw r6,r2,$-224
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21599
@cfg_label_21599:
	lw r7,r2,$-216
	lw r6,r2,$-220
	lw r5,r2,$-196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_21598
@cfg_label_21598:
	li r5,$1
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_21597
@cfg_label_21597:
	li r5,$1
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21596
@cfg_label_21596:
	lw r6,r2,$-212
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21595
@cfg_label_21595:
	lw r7,r2,$-204
	lw r6,r2,$-208
	lw r5,r2,$-196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_21594
@cfg_label_21594:
	li r5,$2
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_21593
@cfg_label_21593:
	li r5,$2
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21592
@cfg_label_21592:
	lw r6,r2,$-200
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21591
@cfg_label_21591:
	lw r7,r2,$-188
	lw r6,r2,$-192
	lw r5,r2,$-196
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_21590
@cfg_label_21590:
	lw r5,r2,$-180
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_21589
@cfg_label_21589:
	lw r5,r2,$-172
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2001:4;2001:31 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_21588
@cfg_label_21588:
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2002:19;2002:23 ../cpuex2017/raytracer/min-rt.ml@2002:25;2002:26
	j @cfg_label_21587
@cfg_label_21587:
	lw r5,r2,$-168
	lw r5,r5,$24
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@2002:19;2002:27
	j @cfg_label_21586
@cfg_label_21586:
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@429:9;429:10
	j @cfg_label_21585
@cfg_label_21585:
	lw r7,r2,$16
	lw r6,r2,$-160
	lw r5,r2,$-164
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2002:4;2002:36 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@429:2;429:7 ../cpuex2017/raytracer/min-rt.ml@429:9;429:10 ../cpuex2017/raytracer/min-rt.ml@429:15;429:17
	j @cfg_label_21584
@cfg_label_21584:
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:30 ../cpuex2017/raytracer/min-rt.ml@2005:32;2005:33
	j @cfg_label_21583
@cfg_label_21583:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2005:35;2005:36
	j @cfg_label_21582
@cfg_label_21582:
	lw r5,r2,$-156
	lw r5,r5,$28
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21581
@cfg_label_21581:
	lw r5,r2,$-156
	lw r5,r5,$24
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21580
@cfg_label_21580:
	lw r5,r2,$-156
	lw r5,r5,$20
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21579
@cfg_label_21579:
	lw r5,r2,$-156
	lw r5,r5,$16
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21578
@cfg_label_21578:
	lw r5,r2,$-156
	lw r5,r5,$12
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21577
@cfg_label_21577:
	lw r5,r2,$-156
	lw r5,r5,$8
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21576
@cfg_label_21576:
	lw r5,r2,$-156
	lw r5,r5,$4
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21575
@cfg_label_21575:
	lw r5,r2,$-156
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2005:26;2005:34
	j @cfg_label_21574
@cfg_label_21574:
	push r4
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	lw r5,r2,$-128
	push r5
	lw r5,r2,$-132
	push r5
	lw r5,r2,$-136
	push r5
	lw r5,r2,$-140
	push r5
	lw r5,r2,$-144
	push r5
	lw r5,r2,$-148
	push r5
	lw r5,r2,$-152
	push r5
	jal @a_9036pretrace_diffuse_rays
	sw r5,r2,$-80
	addi r1,r1,$36
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2005:4;2005:36 ../cpuex2017/raytracer/min-rt.ml@2005:4;2005:25
	j @cfg_label_21573
@cfg_label_21573:
	li r5,$1
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2007:28;2007:29
	j @cfg_label_21572
@cfg_label_21572:
	lw r6,r2,$-116
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2007:26;2007:29 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2007:26;2007:27 ../cpuex2017/raytracer/min-rt.ml@2007:28;2007:29
	j @cfg_label_21571
@cfg_label_21571:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2007:50;2007:51
	j @cfg_label_21570
@cfg_label_21570:
	lw r6,r2,$-112
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@36:12;36:13 ../cpuex2017/raytracer/min-rt.ml@36:16;36:17
	j @cfg_label_21569
@cfg_label_21569:
	li r5,$5
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21568
@cfg_label_21568:
	lw r6,r2,$-108
	lw r5,r2,$-92
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@37:5;37:8 ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21567
@cfg_label_21567:
	li r5,$1
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13
	j @cfg_label_21566
@cfg_label_21566:
	lw r5,r2,$-104
	lw r6,r2,$-100
	bne r5,r6,@cfg_label_21551
	j @cfg_label_21550
	j @cfg_label_21552
	j @cfg_label_21553
@cfg_label_21553:
@cfg_label_21551:
	lw r5,r2,$-92
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51 ::<= ../cpuex2017/raytracer/min-rt.ml@37:5;37:8
	j @cfg_label_21565
@cfg_label_21552:
@cfg_label_21550:
	li r5,$5
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21549
@cfg_label_21549:
	lw r6,r2,$-96
	lw r5,r2,$-92
	sub r5,r5,r6
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2007:32;2007:51 ::= Osub ../cpuex2017/raytracer/min-rt.ml@37:19;37:22 ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21564
@cfg_label_21565:
@cfg_label_21564:
	push r4
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-88
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9039pretrace_pixels
	sw r5,r2,$-76
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2007:4;2007:64 ../cpuex2017/raytracer/min-rt.ml@2007:4;2007:19
	j @cfg_label_21563
@cfg_label_21563:
	lw r5,r2,$-76
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2005:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2007:4;2007:64
	j @cfg_label_21562
@cfg_label_21562:
	lw r5,r2,$-68
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2002:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2005:4;2007:64
	j @cfg_label_21561
@cfg_label_21561:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2001:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2002:4;2007:64
	j @cfg_label_21560
@cfg_label_21560:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2000:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2001:4;2007:64
	j @cfg_label_21559
@cfg_label_21559:
	lw r5,r2,$-44
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@1997:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@2000:4;2007:64
	j @cfg_label_21558
@cfg_label_21558:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@1996:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@1997:4;2007:64
	j @cfg_label_21557
@cfg_label_21557:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@1995:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@1996:4;2007:64
	j @cfg_label_21556
@cfg_label_21556:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@1994:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@1995:4;2007:64
	j @cfg_label_21555
@cfg_label_21555:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@1993:4;2007:64 ::<= ../cpuex2017/raytracer/min-rt.ml@1994:4;2007:64
	j @cfg_label_21554
@cfg_label_21554:
	lw r5,r2,$-4
	sw r5,r2,$-464
; ../cpuex2017/raytracer/min-rt.ml@1989:2;2009:12 ::<= ../cpuex2017/raytracer/min-rt.ml@1993:4;2007:64
	lw r5,r2,$-464
	addi r1,r1,$464
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-464
	addi r1,r1,$464
	pop r2
	pop r6
	jr r6
@a_9046pretrace_line:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$120
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2014:26;2014:27
	j @cfg_label_21548
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2014:26;2014:27
	j @cfg_label_21548
@cfg_label_21548:
	lw r6,r2,$-116
	lw r5,r31,$220
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:24 ../cpuex2017/raytracer/min-rt.ml@2014:26;2014:27
	j @cfg_label_21547
@cfg_label_21547:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2014:64;2014:65
	j @cfg_label_21546
@cfg_label_21546:
	lw r6,r2,$-112
	lw r5,r31,$232
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2014:50;2014:66 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2014:50;2014:62 ../cpuex2017/raytracer/min-rt.ml@2014:64;2014:65
	j @cfg_label_21545
@cfg_label_21545:
	lw r6,r2,$-108
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2014:46;2014:66 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2014:46;2014:47 ../cpuex2017/raytracer/min-rt.ml@2014:50;2014:66
	j @cfg_label_21544
@cfg_label_21544:
	push r4
	lw r5,r2,$-104
	push r5
	jal float_of_int
	sw r5,r2,$-96
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2014:32;2014:67 ../cpuex2017/raytracer/min-rt.ml@2014:32;2014:44
	j @cfg_label_21543
@cfg_label_21543:
	fld f1,r2,$-100
	fld f2,r2,$-96
	fmul f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:67 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2014:14;2014:28 ../cpuex2017/raytracer/min-rt.ml@2014:32;2014:67
	j @cfg_label_21542
@cfg_label_21542:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2017:34;2017:35
	j @cfg_label_21541
@cfg_label_21541:
	lw r6,r2,$-92
	lw r5,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:32 ../cpuex2017/raytracer/min-rt.ml@2017:34;2017:35
	j @cfg_label_21540
@cfg_label_21540:
	fld f1,r2,$-48
	fld f2,r2,$-88
	fmul f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:17 ../cpuex2017/raytracer/min-rt.ml@2017:21;2017:36
	j @cfg_label_21539
@cfg_label_21539:
	li r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2017:53;2017:54
	j @cfg_label_21538
@cfg_label_21538:
	lw r6,r2,$-84
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:51 ../cpuex2017/raytracer/min-rt.ml@2017:53;2017:54
	j @cfg_label_21537
@cfg_label_21537:
	fld f1,r2,$-80
	fld f2,r2,$-76
	fadd f1,f1,f2
	fst f1,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2017:12;2017:36 ../cpuex2017/raytracer/min-rt.ml@2017:40;2017:55
	j @cfg_label_21536
@cfg_label_21536:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2018:34;2018:35
	j @cfg_label_21535
@cfg_label_21535:
	lw r6,r2,$-72
	lw r5,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2018:21;2018:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2018:21;2018:32 ../cpuex2017/raytracer/min-rt.ml@2018:34;2018:35
	j @cfg_label_21534
@cfg_label_21534:
	fld f1,r2,$-48
	fld f2,r2,$-68
	fmul f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:17 ../cpuex2017/raytracer/min-rt.ml@2018:21;2018:36
	j @cfg_label_21533
@cfg_label_21533:
	li r5,$1
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2018:53;2018:54
	j @cfg_label_21532
@cfg_label_21532:
	lw r6,r2,$-64
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2018:40;2018:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2018:40;2018:51 ../cpuex2017/raytracer/min-rt.ml@2018:53;2018:54
	j @cfg_label_21531
@cfg_label_21531:
	fld f1,r2,$-60
	fld f2,r2,$-56
	fadd f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2018:12;2018:36 ../cpuex2017/raytracer/min-rt.ml@2018:40;2018:55
	j @cfg_label_21530
@cfg_label_21530:
	li r5,$2
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2019:34;2019:35
	j @cfg_label_21529
@cfg_label_21529:
	lw r6,r2,$-52
	lw r5,r31,$172
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2019:21;2019:36 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2019:21;2019:32 ../cpuex2017/raytracer/min-rt.ml@2019:34;2019:35
	j @cfg_label_21528
@cfg_label_21528:
	fld f1,r2,$-48
	fld f2,r2,$-44
	fmul f1,f1,f2
	fst f1,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:17 ../cpuex2017/raytracer/min-rt.ml@2019:21;2019:36
	j @cfg_label_21527
@cfg_label_21527:
	li r5,$2
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2019:53;2019:54
	j @cfg_label_21526
@cfg_label_21526:
	lw r6,r2,$-40
	lw r5,r31,$160
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2019:40;2019:55 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2019:40;2019:51 ../cpuex2017/raytracer/min-rt.ml@2019:53;2019:54
	j @cfg_label_21525
@cfg_label_21525:
	fld f1,r2,$-36
	fld f2,r2,$-32
	fadd f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:55 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2019:12;2019:36 ../cpuex2017/raytracer/min-rt.ml@2019:40;2019:55
	j @cfg_label_21524
@cfg_label_21524:
	li r5,$0
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2020:36;2020:37
	j @cfg_label_21523
@cfg_label_21523:
	lw r6,r2,$-28
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:38 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:34 ../cpuex2017/raytracer/min-rt.ml@2020:36;2020:37
	j @cfg_label_21522
@cfg_label_21522:
	li r5,$1
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2020:41;2020:42
	j @cfg_label_21521
@cfg_label_21521:
	lw r6,r2,$-20
	lw r5,r2,$-24
	sub r5,r5,r6
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:42 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2020:24;2020:38 ../cpuex2017/raytracer/min-rt.ml@2020:41;2020:42
	j @cfg_label_21520
@cfg_label_21520:
	push r4
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-16
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9039pretrace_pixels
	sw r5,r2,$-120
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2014:2;2020:64 ../cpuex2017/raytracer/min-rt.ml@2020:2;2020:17
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-120
	addi r1,r1,$120
	pop r2
	pop r6
	jr r6
@a_9050scan_pixel:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$164
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@2030:21;2030:22
	j @cfg_label_21519
	li r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@2030:21;2030:22
	j @cfg_label_21519
@cfg_label_21519:
	lw r6,r2,$-160
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@2030:9;2030:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2030:9;2030:19 ../cpuex2017/raytracer/min-rt.ml@2030:21;2030:22
	j @cfg_label_21518
@cfg_label_21518:
	lw r6,r2,$-156
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@2030:5;2030:23 ::= Olt ../cpuex2017/raytracer/min-rt.ml@2030:5;2030:6 ../cpuex2017/raytracer/min-rt.ml@2030:9;2030:23
	j @cfg_label_21517
@cfg_label_21517:
	li r5,$1
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@2030:5;2030:23
	j @cfg_label_21516
@cfg_label_21516:
	lw r5,r2,$-152
	lw r6,r2,$-148
	bne r5,r6,@cfg_label_21513
	j @cfg_label_21512
	j @cfg_label_21514
	j @cfg_label_21515
@cfg_label_21515:
@cfg_label_21513:
	sw r3,r2,$-164
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@cfg_label_21514:
@cfg_label_21512:
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2033:22;2033:25 ../cpuex2017/raytracer/min-rt.ml@2033:27;2033:28
	j @cfg_label_21511
@cfg_label_21511:
	lw r5,r2,$-144
	lw r5,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2033:22;2033:29
	j @cfg_label_21510
@cfg_label_21510:
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_21509
@cfg_label_21509:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21508
@cfg_label_21508:
	lw r6,r2,$-140
	lw r5,r2,$-116
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_21507
@cfg_label_21507:
	lw r7,r2,$-132
	lw r6,r2,$-136
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_21506
@cfg_label_21506:
	li r5,$1
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_21505
@cfg_label_21505:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21504
@cfg_label_21504:
	lw r6,r2,$-128
	lw r5,r2,$-116
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_21503
@cfg_label_21503:
	lw r7,r2,$-120
	lw r6,r2,$-124
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_21502
@cfg_label_21502:
	li r5,$2
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_21501
@cfg_label_21501:
	li r5,$2
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21500
@cfg_label_21500:
	lw r6,r2,$-112
	lw r5,r2,$-116
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_21499
@cfg_label_21499:
	lw r7,r2,$-104
	lw r6,r2,$-108
	lw r5,r31,$256
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_21498
@cfg_label_21498:
	lw r5,r2,$-96
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_21497
@cfg_label_21497:
	lw r5,r2,$-88
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2033:4;2033:30 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_21496
@cfg_label_21496:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9010neighbors_exist
	sw r5,r2,$-84
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31 ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:22
	j @cfg_label_21495
@cfg_label_21495:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2036:7;2036:31
	j @cfg_label_21494
@cfg_label_21494:
	lw r5,r2,$-84
	lw r6,r2,$-80
	bne r5,r6,@cfg_label_21483
	j @cfg_label_21482
	j @cfg_label_21484
	j @cfg_label_21485
@cfg_label_21485:
@cfg_label_21483:
	lw r6,r2,$8
	lw r5,r2,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:30 ../cpuex2017/raytracer/min-rt.ml@2039:32;2039:33
	j @cfg_label_21481
@cfg_label_21481:
	li r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2039:35;2039:36
	j @cfg_label_21480
@cfg_label_21480:
	lw r5,r2,$-72
	lw r5,r5,$28
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21479
@cfg_label_21479:
	lw r5,r2,$-72
	lw r5,r5,$24
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21478
@cfg_label_21478:
	lw r5,r2,$-72
	lw r5,r5,$20
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21477
@cfg_label_21477:
	lw r5,r2,$-72
	lw r5,r5,$16
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21476
@cfg_label_21476:
	lw r5,r2,$-72
	lw r5,r5,$12
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21475
@cfg_label_21475:
	lw r5,r2,$-72
	lw r5,r5,$8
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21474
@cfg_label_21474:
	lw r5,r2,$-72
	lw r5,r5,$4
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21473
@cfg_label_21473:
	lw r5,r2,$-72
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2039:27;2039:34
	j @cfg_label_21472
@cfg_label_21472:
	push r4
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
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	jal @a_9007do_without_neighbors
	sw r5,r2,$-16
	addi r1,r1,$36
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36 ../cpuex2017/raytracer/min-rt.ml@2039:6;2039:26
	j @cfg_label_21493
@cfg_label_21484:
@cfg_label_21482:
	li r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2037:46;2037:47
	j @cfg_label_21471
@cfg_label_21471:
	push r4
	lw r5,r2,$-76
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9023try_exploit_neighbors
	sw r5,r2,$-16
	addi r1,r1,$24
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2039:36 ../cpuex2017/raytracer/min-rt.ml@2037:6;2037:27
	j @cfg_label_21492
@cfg_label_21493:
@cfg_label_21492:
	push r4
	jal @a_9034write_rgb
	sw r5,r2,$-24
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2042:4;2042:16 ../cpuex2017/raytracer/min-rt.ml@2042:4;2042:13
	j @cfg_label_21491
@cfg_label_21491:
	li r5,$1
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2044:20;2044:21
	j @cfg_label_21490
@cfg_label_21490:
	lw r6,r2,$-32
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2044:16;2044:21 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2044:16;2044:17 ../cpuex2017/raytracer/min-rt.ml@2044:20;2044:21
	j @cfg_label_21489
@cfg_label_21489:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-28
	push r5
	jal @a_9050scan_pixel
	sw r5,r2,$-20
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2044:4;2044:38 ../cpuex2017/raytracer/min-rt.ml@2044:4;2044:14
	j @cfg_label_21488
@cfg_label_21488:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2042:4;2044:38 ::<= ../cpuex2017/raytracer/min-rt.ml@2044:4;2044:38
	j @cfg_label_21487
@cfg_label_21487:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2036:4;2044:38 ::<= ../cpuex2017/raytracer/min-rt.ml@2042:4;2044:38
	j @cfg_label_21486
@cfg_label_21486:
	lw r5,r2,$-4
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@2030:2;2045:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2036:4;2044:38
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-164
	addi r1,r1,$164
	pop r2
	pop r6
	jr r6
@a_9056scan_line:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$112
	li r5,$1
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2051:21;2051:22
	j @cfg_label_21470
	li r5,$1
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2051:21;2051:22
	j @cfg_label_21470
@cfg_label_21470:
	lw r6,r2,$-108
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:19 ../cpuex2017/raytracer/min-rt.ml@2051:21;2051:22
	j @cfg_label_21469
@cfg_label_21469:
	lw r6,r2,$-104
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2051:5;2051:23 ::= Olt ../cpuex2017/raytracer/min-rt.ml@2051:5;2051:6 ../cpuex2017/raytracer/min-rt.ml@2051:9;2051:23
	j @cfg_label_21468
@cfg_label_21468:
	li r5,$1
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@2051:5;2051:23
	j @cfg_label_21467
@cfg_label_21467:
	lw r5,r2,$-100
	lw r6,r2,$-96
	bne r5,r6,@cfg_label_21464
	j @cfg_label_21463
	j @cfg_label_21465
	j @cfg_label_21466
@cfg_label_21466:
@cfg_label_21464:
	sw r3,r2,$-112
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@cfg_label_21465:
@cfg_label_21463:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2053:23;2053:24
	j @cfg_label_21462
@cfg_label_21462:
	lw r6,r2,$-92
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:21 ../cpuex2017/raytracer/min-rt.ml@2053:23;2053:24
	j @cfg_label_21461
@cfg_label_21461:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2053:28;2053:29
	j @cfg_label_21460
@cfg_label_21460:
	lw r6,r2,$-84
	lw r5,r2,$-88
	sub r5,r5,r6
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:25 ../cpuex2017/raytracer/min-rt.ml@2053:28;2053:29
	j @cfg_label_21459
@cfg_label_21459:
	lw r6,r2,$-80
	lw r5,r2,$8
	slt r5,r5,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2053:7;2053:29 ::= Olt ../cpuex2017/raytracer/min-rt.ml@2053:7;2053:8 ../cpuex2017/raytracer/min-rt.ml@2053:11;2053:29
	j @cfg_label_21458
@cfg_label_21458:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2053:7;2053:29
	j @cfg_label_21457
@cfg_label_21457:
	lw r5,r2,$-76
	lw r6,r2,$-72
	bne r5,r6,@cfg_label_21433
	j @cfg_label_21432
	j @cfg_label_21434
	j @cfg_label_21435
@cfg_label_21435:
@cfg_label_21433:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11
	j @cfg_label_21456
@cfg_label_21434:
@cfg_label_21432:
	li r5,$1
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2054:30;2054:31
	j @cfg_label_21431
@cfg_label_21431:
	lw r6,r2,$-68
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:31 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2054:26;2054:27 ../cpuex2017/raytracer/min-rt.ml@2054:30;2054:31
	j @cfg_label_21430
@cfg_label_21430:
	push r4
	lw r5,r2,$24
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$20
	push r5
	jal @a_9046pretrace_line
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2053:4;2055:11 ../cpuex2017/raytracer/min-rt.ml@2054:6;2054:19
	j @cfg_label_21455
@cfg_label_21456:
@cfg_label_21455:
	li r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2056:15;2056:16
	j @cfg_label_21454
@cfg_label_21454:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$8
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_9050scan_pixel
	sw r5,r2,$-16
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:32 ../cpuex2017/raytracer/min-rt.ml@2056:4;2056:14
	j @cfg_label_21453
@cfg_label_21453:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2057:19;2057:20
	j @cfg_label_21452
@cfg_label_21452:
	lw r6,r2,$-56
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:20 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2057:15;2057:16 ../cpuex2017/raytracer/min-rt.ml@2057:19;2057:20
	j @cfg_label_21451
@cfg_label_21451:
	li r5,$2
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2057:55;2057:56
	j @cfg_label_21450
@cfg_label_21450:
	lw r6,r2,$-52
	lw r5,r2,$24
	add r5,r5,r6
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@36:12;36:13 ../cpuex2017/raytracer/min-rt.ml@36:16;36:17
	j @cfg_label_21449
@cfg_label_21449:
	li r5,$5
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21448
@cfg_label_21448:
	lw r6,r2,$-48
	lw r5,r2,$-32
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@37:5;37:8 ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21447
@cfg_label_21447:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13
	j @cfg_label_21446
@cfg_label_21446:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_21438
	j @cfg_label_21437
	j @cfg_label_21439
	j @cfg_label_21440
@cfg_label_21440:
@cfg_label_21438:
	lw r5,r2,$-32
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::<= ../cpuex2017/raytracer/min-rt.ml@37:5;37:8
	j @cfg_label_21445
@cfg_label_21439:
@cfg_label_21437:
	li r5,$5
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21436
@cfg_label_21436:
	lw r6,r2,$-36
	lw r5,r2,$-32
	sub r5,r5,r6
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2057:37;2057:56 ::= Osub ../cpuex2017/raytracer/min-rt.ml@37:19;37:22 ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21444
@cfg_label_21445:
@cfg_label_21444:
	push r4
	lw r5,r2,$-24
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$-28
	push r5
	jal @a_9056scan_line
	sw r5,r2,$-20
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57 ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:13
	j @cfg_label_21443
@cfg_label_21443:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:58 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:57
	j @cfg_label_21442
@cfg_label_21442:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2056:4;2057:58 ::<= ../cpuex2017/raytracer/min-rt.ml@2057:4;2057:58
	j @cfg_label_21441
@cfg_label_21441:
	lw r5,r2,$-4
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2051:2;2058:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2056:4;2057:58
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-112
	addi r1,r1,$112
	pop r2
	pop r6
	jr r6
@a_9062create_float5x3array:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$116
	li r5,$3
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26
	j @cfg_label_21429
	li r5,$3
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26
	j @cfg_label_21429
@cfg_label_21429:
	fmovi f1,$0.000000
	fst f1,r2,$-108
	j @cfg_label_21428
@cfg_label_21428:
	lw r6,r2,$-108
	lw r5,r2,$-112
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26198
@emit_label_26197:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26197
@emit_label_26198:
	mov r5,r7
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2068:12;2068:30 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2068:25;2068:26 ../cpuex2017/raytracer/min-rt.ml@2068:27;2068:30
	j @cfg_label_21427
@cfg_label_21427:
	li r5,$5
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2069:27;2069:28
	j @cfg_label_21426
@cfg_label_21426:
	lw r6,r2,$-100
	lw r5,r2,$-104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26200
@emit_label_26199:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26199
@emit_label_26200:
	mov r5,r7
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2069:14;2069:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2069:27;2069:28 ../cpuex2017/raytracer/min-rt.ml@2069:29;2069:32
	j @cfg_label_21425
@cfg_label_21425:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2070:9;2070:10
	j @cfg_label_21424
@cfg_label_21424:
	li r5,$3
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@2070:28;2070:29
	j @cfg_label_21423
@cfg_label_21423:
	fmovi f1,$0.000000
	fst f1,r2,$-92
	j @cfg_label_21422
@cfg_label_21422:
	lw r6,r2,$-92
	lw r5,r2,$-96
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26202
@emit_label_26201:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26201
@emit_label_26202:
	mov r5,r7
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2070:15;2070:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2070:28;2070:29 ../cpuex2017/raytracer/min-rt.ml@2070:30;2070:33
	j @cfg_label_21421
@cfg_label_21421:
	lw r7,r2,$-84
	lw r6,r2,$-88
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2070:2;2070:33 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2070:2;2070:7 ../cpuex2017/raytracer/min-rt.ml@2070:9;2070:10 ../cpuex2017/raytracer/min-rt.ml@2070:15;2070:33
	j @cfg_label_21420
@cfg_label_21420:
	li r5,$2
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2071:9;2071:10
	j @cfg_label_21419
@cfg_label_21419:
	li r5,$3
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2071:28;2071:29
	j @cfg_label_21418
@cfg_label_21418:
	fmovi f1,$0.000000
	fst f1,r2,$-76
	j @cfg_label_21417
@cfg_label_21417:
	lw r6,r2,$-76
	lw r5,r2,$-80
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26204
@emit_label_26203:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26203
@emit_label_26204:
	mov r5,r7
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2071:15;2071:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2071:28;2071:29 ../cpuex2017/raytracer/min-rt.ml@2071:30;2071:33
	j @cfg_label_21416
@cfg_label_21416:
	lw r7,r2,$-68
	lw r6,r2,$-72
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2071:2;2071:33 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2071:2;2071:7 ../cpuex2017/raytracer/min-rt.ml@2071:9;2071:10 ../cpuex2017/raytracer/min-rt.ml@2071:15;2071:33
	j @cfg_label_21415
@cfg_label_21415:
	li r5,$3
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2072:9;2072:10
	j @cfg_label_21414
@cfg_label_21414:
	li r5,$3
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2072:28;2072:29
	j @cfg_label_21413
@cfg_label_21413:
	fmovi f1,$0.000000
	fst f1,r2,$-60
	j @cfg_label_21412
@cfg_label_21412:
	lw r6,r2,$-60
	lw r5,r2,$-64
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26206
@emit_label_26205:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26205
@emit_label_26206:
	mov r5,r7
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2072:15;2072:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2072:28;2072:29 ../cpuex2017/raytracer/min-rt.ml@2072:30;2072:33
	j @cfg_label_21411
@cfg_label_21411:
	lw r7,r2,$-52
	lw r6,r2,$-56
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2072:2;2072:33 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2072:2;2072:7 ../cpuex2017/raytracer/min-rt.ml@2072:9;2072:10 ../cpuex2017/raytracer/min-rt.ml@2072:15;2072:33
	j @cfg_label_21410
@cfg_label_21410:
	li r5,$4
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2073:9;2073:10
	j @cfg_label_21409
@cfg_label_21409:
	li r5,$3
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2073:28;2073:29
	j @cfg_label_21408
@cfg_label_21408:
	fmovi f1,$0.000000
	fst f1,r2,$-44
	j @cfg_label_21407
@cfg_label_21407:
	lw r6,r2,$-44
	lw r5,r2,$-48
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26208
@emit_label_26207:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26207
@emit_label_26208:
	mov r5,r7
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2073:15;2073:33 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2073:28;2073:29 ../cpuex2017/raytracer/min-rt.ml@2073:30;2073:33
	j @cfg_label_21406
@cfg_label_21406:
	lw r7,r2,$-36
	lw r6,r2,$-40
	lw r5,r2,$-28
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2073:2;2073:33 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2073:2;2073:7 ../cpuex2017/raytracer/min-rt.ml@2073:9;2073:10 ../cpuex2017/raytracer/min-rt.ml@2073:15;2073:33
	j @cfg_label_21405
@cfg_label_21405:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2073:2;2074:7 ::<= ../cpuex2017/raytracer/min-rt.ml@2074:2;2074:7
	j @cfg_label_21404
@cfg_label_21404:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2072:2;2074:7 ::<= ../cpuex2017/raytracer/min-rt.ml@2073:2;2074:7
	j @cfg_label_21403
@cfg_label_21403:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2071:2;2074:7 ::<= ../cpuex2017/raytracer/min-rt.ml@2072:2;2074:7
	j @cfg_label_21402
@cfg_label_21402:
	lw r5,r2,$-4
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2068:2;2074:7 ::<= ../cpuex2017/raytracer/min-rt.ml@2071:2;2074:7
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@a_9064create_pixel:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$64
	li r5,$3
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28
	j @cfg_label_21401
	li r5,$3
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28
	j @cfg_label_21401
@cfg_label_21401:
	fmovi f1,$0.000000
	fst f1,r2,$-56
	j @cfg_label_21400
@cfg_label_21400:
	lw r6,r2,$-56
	lw r5,r2,$-60
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26210
@emit_label_26209:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26209
@emit_label_26210:
	mov r5,r7
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2080:14;2080:32 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2080:27;2080:28 ../cpuex2017/raytracer/min-rt.ml@2080:29;2080:32
	j @cfg_label_21399
@cfg_label_21399:
	push r4
	jal @a_9062create_float5x3array
	sw r5,r2,$-28
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:41 ../cpuex2017/raytracer/min-rt.ml@2081:19;2081:39
	j @cfg_label_21398
@cfg_label_21398:
	li r5,$5
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2082:28;2082:29
	j @cfg_label_21397
@cfg_label_21397:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2082:30;2082:31
	j @cfg_label_21396
@cfg_label_21396:
	lw r6,r2,$-48
	lw r5,r2,$-52
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26212
@emit_label_26211:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26211
@emit_label_26212:
	mov r5,r7
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2082:15;2082:31 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2082:28;2082:29 ../cpuex2017/raytracer/min-rt.ml@2082:30;2082:31
	j @cfg_label_21395
@cfg_label_21395:
	li r5,$5
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2083:28;2083:29
	j @cfg_label_21394
@cfg_label_21394:
	lw r6,r31,$12
	lw r5,r2,$-44
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26214
@emit_label_26213:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26213
@emit_label_26214:
	mov r5,r7
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2083:15;2083:35 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2083:28;2083:29 ../cpuex2017/raytracer/min-rt.ml@2083:30;2083:35
	j @cfg_label_21393
@cfg_label_21393:
	push r4
	jal @a_9062create_float5x3array
	sw r5,r2,$-16
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2084:15;2084:37 ../cpuex2017/raytracer/min-rt.ml@2084:15;2084:35
	j @cfg_label_21392
@cfg_label_21392:
	push r4
	jal @a_9062create_float5x3array
	sw r5,r2,$-12
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2085:15;2085:37 ../cpuex2017/raytracer/min-rt.ml@2085:15;2085:35
	j @cfg_label_21391
@cfg_label_21391:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2086:27;2086:28
	j @cfg_label_21390
@cfg_label_21390:
	li r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2086:29;2086:30
	j @cfg_label_21389
@cfg_label_21389:
	lw r6,r2,$-36
	lw r5,r2,$-40
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26216
@emit_label_26215:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26215
@emit_label_26216:
	mov r5,r7
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2086:14;2086:30 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2086:27;2086:28 ../cpuex2017/raytracer/min-rt.ml@2086:29;2086:30
	j @cfg_label_21388
@cfg_label_21388:
	push r4
	jal @a_9062create_float5x3array
	sw r5,r2,$-4
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2087:19;2087:41 ../cpuex2017/raytracer/min-rt.ml@2087:19;2087:39
	j @cfg_label_21387
@cfg_label_21387:
	sw r3,r2,$-64
	lw r5,r2,$-32
	sw r5,r3,$0
	lw r5,r2,$-28
	sw r5,r3,$4
	lw r5,r2,$-24
	sw r5,r3,$8
	lw r5,r2,$-20
	sw r5,r3,$12
	lw r5,r2,$-16
	sw r5,r3,$16
	lw r5,r2,$-12
	sw r5,r3,$20
	lw r5,r2,$-8
	sw r5,r3,$24
	lw r5,r2,$-4
	sw r5,r3,$28
	addi r3,r3,$32
; ../cpuex2017/raytracer/min-rt.ml@2080:2;2088:72
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
@a_9066init_line_elements:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$68
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	j @cfg_label_21386
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	j @cfg_label_21386
@cfg_label_21386:
	lw r6,r2,$-64
	lw r5,r2,$12
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2093:5;2093:11 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2093:5;2093:6 ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	j @cfg_label_21385
@cfg_label_21385:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2093:5;2093:11
	j @cfg_label_21384
@cfg_label_21384:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_21381
	j @cfg_label_21380
	j @cfg_label_21382
	j @cfg_label_21383
@cfg_label_21383:
@cfg_label_21381:
	lw r5,r2,$8
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2097:4;2097:8
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@cfg_label_21382:
@cfg_label_21380:
	push r4
	jal @a_9064create_pixel
	sw r5,r2,$-52
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	j @cfg_label_21379
@cfg_label_21379:
	lw r7,r2,$-52
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:8 ../cpuex2017/raytracer/min-rt.ml@2094:10;2094:11 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	j @cfg_label_21378
@cfg_label_21378:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2095:31;2095:32
	j @cfg_label_21377
@cfg_label_21377:
	lw r6,r2,$-48
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:30 ../cpuex2017/raytracer/min-rt.ml@2095:31;2095:32
	j @cfg_label_21376
@cfg_label_21376:
	li r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	j @cfg_label_21375
@cfg_label_21375:
	lw r6,r2,$-44
	lw r5,r2,$-28
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2093:5;2093:11 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2093:5;2093:6 ../cpuex2017/raytracer/min-rt.ml@2093:10;2093:11
	j @cfg_label_21374
@cfg_label_21374:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2093:5;2093:11
	j @cfg_label_21373
@cfg_label_21373:
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_21368
	j @cfg_label_21367
	j @cfg_label_21369
	j @cfg_label_21370
@cfg_label_21370:
@cfg_label_21368:
	lw r5,r2,$8
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:33 ::<= ../cpuex2017/raytracer/min-rt.ml@2097:4;2097:8
	j @cfg_label_21372
@cfg_label_21369:
@cfg_label_21367:
	push r4
	jal @a_9064create_pixel
	sw r5,r2,$-32
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:28
	j @cfg_label_21366
@cfg_label_21366:
	lw r7,r2,$-32
	lw r6,r2,$-28
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:30 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2094:4;2094:8 ../cpuex2017/raytracer/min-rt.ml@2094:10;2094:11 ../cpuex2017/raytracer/min-rt.ml@2094:16;2094:30
	j @cfg_label_21365
@cfg_label_21365:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2095:31;2095:32
	j @cfg_label_21364
@cfg_label_21364:
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:32 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2095:29;2095:30 ../cpuex2017/raytracer/min-rt.ml@2095:31;2095:32
	j @cfg_label_21363
@cfg_label_21363:
	push r4
	lw r5,r2,$-20
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9066init_line_elements
	sw r5,r2,$-12
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:33 ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:22
	j @cfg_label_21362
@cfg_label_21362:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:33 ::<= ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:33
	j @cfg_label_21371
@cfg_label_21372:
@cfg_label_21371:
	lw r5,r2,$-4
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2093:2;2097:8 ::<= ../cpuex2017/raytracer/min-rt.ml@2095:4;2095:33
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-68
	addi r1,r1,$68
	pop r2
	pop r6
	jr r6
@a_9076calc_dirvec:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$532
	li r5,$5
	sw r5,r2,$-528
; ../cpuex2017/raytracer/min-rt.ml@2130:15;2130:16
	j @cfg_label_21361
	li r5,$5
	sw r5,r2,$-528
; ../cpuex2017/raytracer/min-rt.ml@2130:15;2130:16
	j @cfg_label_21361
@cfg_label_21361:
	lw r6,r2,$-528
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-524
; ../cpuex2017/raytracer/min-rt.ml@2130:5;2130:16 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2130:5;2130:11 ../cpuex2017/raytracer/min-rt.ml@2130:15;2130:16
	j @cfg_label_21360
@cfg_label_21360:
	li r5,$1
	sw r5,r2,$-520
; ../cpuex2017/raytracer/min-rt.ml@2130:5;2130:16
	j @cfg_label_21359
@cfg_label_21359:
	lw r5,r2,$-524
	lw r6,r2,$-520
	bne r5,r6,@cfg_label_21356
	j @cfg_label_21355
	j @cfg_label_21357
	j @cfg_label_21358
@cfg_label_21358:
@cfg_label_21356:
	fld f1,r2,$16
	fld f2,r2,$16
	fmul f1,f1,f2
	fst f1,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:16 ../cpuex2017/raytracer/min-rt.ml@2121:18;2121:19
	j @cfg_label_21354
@cfg_label_21354:
	fmovi f1,$0.100000
	fst f1,r2,$-100
	j @cfg_label_21353
@cfg_label_21353:
	fld f1,r2,$-104
	fld f2,r2,$-100
	fadd f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	j @cfg_label_21352
@cfg_label_21352:
	push r4
	lw r5,r2,$-96
	push r5
	jal sqrt
	sw r5,r2,$-64
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27 ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:14
	j @cfg_label_21351
@cfg_label_21351:
	fmovi f1,$1.000000
	fst f1,r2,$-92
	j @cfg_label_21350
@cfg_label_21350:
	fld f1,r2,$-92
	fld f2,r2,$-64
	fdiv f1,f1,f2
	fst f1,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17 ../cpuex2017/raytracer/min-rt.ml@2122:21;2122:22
	j @cfg_label_21349
@cfg_label_21349:
	push r4
	lw r5,r2,$-88
	push r5
	jal @a_8602atan
	sw r5,r2,$-84
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26 ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:20
	j @cfg_label_21348
@cfg_label_21348:
	fld f1,r2,$-84
	fld f2,r2,$20
	fmul f1,f1,f2
	fst f1,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:27 ../cpuex2017/raytracer/min-rt.ml@2124:31;2124:36
	j @cfg_label_21347
@cfg_label_21347:
	push r4
	lw r5,r2,$-80
	push r5
	jal @a_8598sin
	sw r5,r2,$-76
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:5
	j @cfg_label_21346
@cfg_label_21346:
	push r4
	lw r5,r2,$-80
	push r5
	jal @a_8600cos
	sw r5,r2,$-72
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:15
	j @cfg_label_21345
@cfg_label_21345:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fdiv f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18
	j @cfg_label_21344
@cfg_label_21344:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fmul f1,f1,f2
	fst f1,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2145:13;2145:33 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2125:2;2125:7 ../cpuex2017/raytracer/min-rt.ml@2125:11;2125:12
	j @cfg_label_21343
@cfg_label_21343:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2146:26;2146:27
	j @cfg_label_21342
@cfg_label_21342:
	lw r6,r2,$-60
	lw r5,r2,$8
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2146:17;2146:27 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2146:17;2146:23 ../cpuex2017/raytracer/min-rt.ml@2146:26;2146:27
	j @cfg_label_21341
@cfg_label_21341:
	fld f1,r2,$-8
	fld f2,r2,$-8
	fmul f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:16 ../cpuex2017/raytracer/min-rt.ml@2121:18;2121:19
	j @cfg_label_21340
@cfg_label_21340:
	fmovi f1,$0.100000
	fst f1,r2,$-52
	j @cfg_label_21339
@cfg_label_21339:
	fld f1,r2,$-56
	fld f2,r2,$-52
	fadd f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:26 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2121:15;2121:19 ../cpuex2017/raytracer/min-rt.ml@2121:23;2121:26
	j @cfg_label_21338
@cfg_label_21338:
	push r4
	lw r5,r2,$-48
	push r5
	jal sqrt
	sw r5,r2,$-16
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:27 ../cpuex2017/raytracer/min-rt.ml@2121:10;2121:14
	j @cfg_label_21337
@cfg_label_21337:
	fmovi f1,$1.000000
	fst f1,r2,$-44
	j @cfg_label_21336
@cfg_label_21336:
	fld f1,r2,$-44
	fld f2,r2,$-16
	fdiv f1,f1,f2
	fst f1,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:22 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2122:14;2122:17 ../cpuex2017/raytracer/min-rt.ml@2122:21;2122:22
	j @cfg_label_21335
@cfg_label_21335:
	push r4
	lw r5,r2,$-40
	push r5
	jal @a_8602atan
	sw r5,r2,$-36
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:26 ../cpuex2017/raytracer/min-rt.ml@2123:16;2123:20
	j @cfg_label_21334
@cfg_label_21334:
	fld f1,r2,$-36
	fld f2,r2,$24
	fmul f1,f1,f2
	fst f1,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:36 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2124:20;2124:27 ../cpuex2017/raytracer/min-rt.ml@2124:31;2124:36
	j @cfg_label_21333
@cfg_label_21333:
	push r4
	lw r5,r2,$-32
	push r5
	jal @a_8598sin
	sw r5,r2,$-28
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:5
	j @cfg_label_21332
@cfg_label_21332:
	push r4
	lw r5,r2,$-32
	push r5
	jal @a_8600cos
	sw r5,r2,$-24
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:15
	j @cfg_label_21331
@cfg_label_21331:
	fld f1,r2,$-28
	fld f2,r2,$-24
	fdiv f1,f1,f2
	fst f1,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2124:15;2124:37 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2116:2;2116:8 ../cpuex2017/raytracer/min-rt.ml@2116:12;2116:18
	j @cfg_label_21330
@cfg_label_21330:
	fld f1,r2,$-20
	fld f2,r2,$-16
	fmul f1,f1,f2
	fst f1,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2146:33;2146:54 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2125:2;2125:7 ../cpuex2017/raytracer/min-rt.ml@2125:11;2125:12
	j @cfg_label_21329
@cfg_label_21329:
	push r4
	lw r5,r2,$32
	push r5
	lw r5,r2,$28
	push r5
	lw r5,r2,$24
	push r5
	lw r5,r2,$20
	push r5
	lw r5,r2,$-4
	push r5
	lw r5,r2,$-8
	push r5
	lw r5,r2,$-12
	push r5
	jal @a_9076calc_dirvec
	sw r5,r2,$-532
	addi r1,r1,$28
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ../cpuex2017/raytracer/min-rt.ml@2146:4;2146:15
	lw r5,r2,$-532
	addi r1,r1,$532
	pop r2
	pop r6
	jr r6
@cfg_label_21357:
@cfg_label_21355:
	fld f1,r2,$12
	fld f2,r2,$12
	fmul f1,f1,f2
	fst f1,r2,$-516
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:23 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_21328
@cfg_label_21328:
	fld f1,r2,$16
	fld f2,r2,$16
	fmul f1,f1,f2
	fst f1,r2,$-512
; ../cpuex2017/raytracer/min-rt.ml@2131:27;2131:33 ::= Ofmul lib_tortesia.ml@15:17;15:18 lib_tortesia.ml@15:22;15:23
	j @cfg_label_21327
@cfg_label_21327:
	fld f1,r2,$-516
	fld f2,r2,$-512
	fadd f1,f1,f2
	fst f1,r2,$-508
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:33 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:23 ../cpuex2017/raytracer/min-rt.ml@2131:27;2131:33
	j @cfg_label_21326
@cfg_label_21326:
	fmovi f1,$1.000000
	fst f1,r2,$-504
	j @cfg_label_21325
@cfg_label_21325:
	fld f1,r2,$-508
	fld f2,r2,$-504
	fadd f1,f1,f2
	fst f1,r2,$-500
; ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:40 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2131:17;2131:33 ../cpuex2017/raytracer/min-rt.ml@2131:37;2131:40
	j @cfg_label_21324
@cfg_label_21324:
	push r4
	lw r5,r2,$-500
	push r5
	jal sqrt
	sw r5,r2,$-492
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:41 ../cpuex2017/raytracer/min-rt.ml@2131:12;2131:16
	j @cfg_label_21323
@cfg_label_21323:
	fld f1,r2,$12
	fld f2,r2,$-492
	fdiv f1,f1,f2
	fst f1,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:19 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2132:13;2132:14 ../cpuex2017/raytracer/min-rt.ml@2132:18;2132:19
	j @cfg_label_21322
@cfg_label_21322:
	fld f1,r2,$16
	fld f2,r2,$-492
	fdiv f1,f1,f2
	fst f1,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:19 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2133:13;2133:14 ../cpuex2017/raytracer/min-rt.ml@2133:18;2133:19
	j @cfg_label_21321
@cfg_label_21321:
	fmovi f1,$1.000000
	fst f1,r2,$-496
	j @cfg_label_21320
@cfg_label_21320:
	fld f1,r2,$-496
	fld f2,r2,$-492
	fdiv f1,f1,f2
	fst f1,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:21 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2134:13;2134:16 ../cpuex2017/raytracer/min-rt.ml@2134:20;2134:21
	j @cfg_label_21319
@cfg_label_21319:
	lw r6,r2,$28
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2137:17;2137:24 ../cpuex2017/raytracer/min-rt.ml@2137:26;2137:34
	j @cfg_label_21318
@cfg_label_21318:
	lw r6,r2,$32
	lw r5,r2,$-208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-488
; ../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2138:18;2138:24 ../cpuex2017/raytracer/min-rt.ml@2138:26;2138:31
	j @cfg_label_21317
@cfg_label_21317:
	lw r5,r2,$-488
	lw r5,r5,$0
	sw r5,r2,$-476
; ../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2138:18;2138:32
	j @cfg_label_21316
@cfg_label_21316:
	li r5,$0
	sw r5,r2,$-484
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_21315
@cfg_label_21315:
	lw r7,r2,$-176
	lw r6,r2,$-484
	lw r5,r2,$-476
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_21314
@cfg_label_21314:
	li r5,$1
	sw r5,r2,$-480
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_21313
@cfg_label_21313:
	lw r7,r2,$-164
	lw r6,r2,$-480
	lw r5,r2,$-476
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-468
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_21312
@cfg_label_21312:
	li r5,$2
	sw r5,r2,$-472
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_21311
@cfg_label_21311:
	lw r7,r2,$-192
	lw r6,r2,$-472
	lw r5,r2,$-476
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-464
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_21310
@cfg_label_21310:
	lw r5,r2,$-464
	sw r5,r2,$-456
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_21309
@cfg_label_21309:
	lw r5,r2,$-456
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2138:4;2138:45 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_21308
@cfg_label_21308:
	li r5,$40
	sw r5,r2,$-452
; ../cpuex2017/raytracer/min-rt.ml@2139:32;2139:34
	j @cfg_label_21307
@cfg_label_21307:
	lw r6,r2,$-452
	lw r5,r2,$32
	add r5,r5,r6
	sw r5,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@2139:26;2139:34 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2139:26;2139:31 ../cpuex2017/raytracer/min-rt.ml@2139:32;2139:34
	j @cfg_label_21306
@cfg_label_21306:
	lw r6,r2,$-448
	lw r5,r2,$-208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2139:18;2139:24 ../cpuex2017/raytracer/min-rt.ml@2139:26;2139:34
	j @cfg_label_21305
@cfg_label_21305:
	lw r5,r2,$-444
	lw r5,r5,$0
	sw r5,r2,$-428
; ../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2139:18;2139:35
	j @cfg_label_21304
@cfg_label_21304:
	fmovi f1,$-1.000000
	fst f1,r2,$-440
	j @cfg_label_21303
@cfg_label_21303:
	fld f1,r2,$-440
	fld f2,r2,$-164
	fmul f1,f1,f2
	fst f1,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@2139:44;2139:51 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21302
@cfg_label_21302:
	li r5,$0
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_21301
@cfg_label_21301:
	lw r7,r2,$-176
	lw r6,r2,$-436
	lw r5,r2,$-428
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-408
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_21300
@cfg_label_21300:
	li r5,$1
	sw r5,r2,$-432
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_21299
@cfg_label_21299:
	lw r7,r2,$-192
	lw r6,r2,$-432
	lw r5,r2,$-428
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_21298
@cfg_label_21298:
	li r5,$2
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_21297
@cfg_label_21297:
	lw r7,r2,$-420
	lw r6,r2,$-424
	lw r5,r2,$-428
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_21296
@cfg_label_21296:
	lw r5,r2,$-412
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_21295
@cfg_label_21295:
	lw r5,r2,$-404
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2139:4;2139:52 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_21294
@cfg_label_21294:
	li r5,$80
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@2140:32;2140:34
	j @cfg_label_21293
@cfg_label_21293:
	lw r6,r2,$-400
	lw r5,r2,$32
	add r5,r5,r6
	sw r5,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@2140:26;2140:34 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2140:26;2140:31 ../cpuex2017/raytracer/min-rt.ml@2140:32;2140:34
	j @cfg_label_21292
@cfg_label_21292:
	lw r6,r2,$-396
	lw r5,r2,$-208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2140:18;2140:24 ../cpuex2017/raytracer/min-rt.ml@2140:26;2140:34
	j @cfg_label_21291
@cfg_label_21291:
	lw r5,r2,$-392
	lw r5,r5,$0
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2140:18;2140:35
	j @cfg_label_21290
@cfg_label_21290:
	fmovi f1,$-1.000000
	fst f1,r2,$-388
	j @cfg_label_21289
@cfg_label_21289:
	fld f1,r2,$-388
	fld f2,r2,$-176
	fmul f1,f1,f2
	fst f1,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@2140:41;2140:48 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21288
@cfg_label_21288:
	fmovi f1,$-1.000000
	fst f1,r2,$-384
	j @cfg_label_21287
@cfg_label_21287:
	fld f1,r2,$-384
	fld f2,r2,$-164
	fmul f1,f1,f2
	fst f1,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@2140:51;2140:58 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21286
@cfg_label_21286:
	li r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_21285
@cfg_label_21285:
	lw r7,r2,$-192
	lw r6,r2,$-380
	lw r5,r2,$-368
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_21284
@cfg_label_21284:
	li r5,$1
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_21283
@cfg_label_21283:
	lw r7,r2,$-372
	lw r6,r2,$-376
	lw r5,r2,$-368
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_21282
@cfg_label_21282:
	li r5,$2
	sw r5,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_21281
@cfg_label_21281:
	lw r7,r2,$-360
	lw r6,r2,$-364
	lw r5,r2,$-368
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_21280
@cfg_label_21280:
	lw r5,r2,$-352
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_21279
@cfg_label_21279:
	lw r5,r2,$-344
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2140:4;2140:59 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_21278
@cfg_label_21278:
	li r5,$1
	sw r5,r2,$-340
; ../cpuex2017/raytracer/min-rt.ml@2141:32;2141:33
	j @cfg_label_21277
@cfg_label_21277:
	lw r6,r2,$-340
	lw r5,r2,$32
	add r5,r5,r6
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@2141:26;2141:33 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2141:26;2141:31 ../cpuex2017/raytracer/min-rt.ml@2141:32;2141:33
	j @cfg_label_21276
@cfg_label_21276:
	lw r6,r2,$-336
	lw r5,r2,$-208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2141:18;2141:24 ../cpuex2017/raytracer/min-rt.ml@2141:26;2141:33
	j @cfg_label_21275
@cfg_label_21275:
	lw r5,r2,$-332
	lw r5,r5,$0
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2141:18;2141:34
	j @cfg_label_21274
@cfg_label_21274:
	fmovi f1,$-1.000000
	fst f1,r2,$-328
	j @cfg_label_21273
@cfg_label_21273:
	fld f1,r2,$-328
	fld f2,r2,$-176
	fmul f1,f1,f2
	fst f1,r2,$-312
; ../cpuex2017/raytracer/min-rt.ml@2141:37;2141:44 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21272
@cfg_label_21272:
	fmovi f1,$-1.000000
	fst f1,r2,$-324
	j @cfg_label_21271
@cfg_label_21271:
	fld f1,r2,$-324
	fld f2,r2,$-164
	fmul f1,f1,f2
	fst f1,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@2141:47;2141:54 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21270
@cfg_label_21270:
	fmovi f1,$-1.000000
	fst f1,r2,$-320
	j @cfg_label_21269
@cfg_label_21269:
	fld f1,r2,$-320
	fld f2,r2,$-192
	fmul f1,f1,f2
	fst f1,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@2141:57;2141:64 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21268
@cfg_label_21268:
	li r5,$0
	sw r5,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_21267
@cfg_label_21267:
	lw r7,r2,$-312
	lw r6,r2,$-316
	lw r5,r2,$-300
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_21266
@cfg_label_21266:
	li r5,$1
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_21265
@cfg_label_21265:
	lw r7,r2,$-304
	lw r6,r2,$-308
	lw r5,r2,$-300
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_21264
@cfg_label_21264:
	li r5,$2
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_21263
@cfg_label_21263:
	lw r7,r2,$-292
	lw r6,r2,$-296
	lw r5,r2,$-300
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_21262
@cfg_label_21262:
	lw r5,r2,$-284
	sw r5,r2,$-276
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_21261
@cfg_label_21261:
	lw r5,r2,$-276
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2141:4;2141:65 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_21260
@cfg_label_21260:
	li r5,$41
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@2142:32;2142:34
	j @cfg_label_21259
@cfg_label_21259:
	lw r6,r2,$-272
	lw r5,r2,$32
	add r5,r5,r6
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@2142:26;2142:34 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2142:26;2142:31 ../cpuex2017/raytracer/min-rt.ml@2142:32;2142:34
	j @cfg_label_21258
@cfg_label_21258:
	lw r6,r2,$-268
	lw r5,r2,$-208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2142:18;2142:24 ../cpuex2017/raytracer/min-rt.ml@2142:26;2142:34
	j @cfg_label_21257
@cfg_label_21257:
	lw r5,r2,$-264
	lw r5,r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2142:18;2142:35
	j @cfg_label_21256
@cfg_label_21256:
	fmovi f1,$-1.000000
	fst f1,r2,$-260
	j @cfg_label_21255
@cfg_label_21255:
	fld f1,r2,$-260
	fld f2,r2,$-176
	fmul f1,f1,f2
	fst f1,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@2142:38;2142:45 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21254
@cfg_label_21254:
	fmovi f1,$-1.000000
	fst f1,r2,$-256
	j @cfg_label_21253
@cfg_label_21253:
	fld f1,r2,$-256
	fld f2,r2,$-192
	fmul f1,f1,f2
	fst f1,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@2142:48;2142:55 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21252
@cfg_label_21252:
	li r5,$0
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_21251
@cfg_label_21251:
	lw r7,r2,$-248
	lw r6,r2,$-252
	lw r5,r2,$-236
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_21250
@cfg_label_21250:
	li r5,$1
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_21249
@cfg_label_21249:
	lw r7,r2,$-240
	lw r6,r2,$-244
	lw r5,r2,$-236
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_21248
@cfg_label_21248:
	li r5,$2
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_21247
@cfg_label_21247:
	lw r7,r2,$-164
	lw r6,r2,$-232
	lw r5,r2,$-236
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_21246
@cfg_label_21246:
	lw r5,r2,$-224
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_21245
@cfg_label_21245:
	lw r5,r2,$-216
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@2142:4;2142:59 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_21244
@cfg_label_21244:
	li r5,$81
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@2143:32;2143:34
	j @cfg_label_21243
@cfg_label_21243:
	lw r6,r2,$-212
	lw r5,r2,$32
	add r5,r5,r6
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@2143:26;2143:34 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2143:26;2143:31 ../cpuex2017/raytracer/min-rt.ml@2143:32;2143:34
	j @cfg_label_21242
@cfg_label_21242:
	lw r6,r2,$-204
	lw r5,r2,$-208
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2143:18;2143:24 ../cpuex2017/raytracer/min-rt.ml@2143:26;2143:34
	j @cfg_label_21241
@cfg_label_21241:
	lw r5,r2,$-200
	lw r5,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2143:18;2143:35
	j @cfg_label_21240
@cfg_label_21240:
	fmovi f1,$-1.000000
	fst f1,r2,$-196
	j @cfg_label_21239
@cfg_label_21239:
	fld f1,r2,$-196
	fld f2,r2,$-192
	fmul f1,f1,f2
	fst f1,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@2143:38;2143:45 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_21238
@cfg_label_21238:
	li r5,$0
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_21237
@cfg_label_21237:
	lw r7,r2,$-184
	lw r6,r2,$-188
	lw r5,r2,$-172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_21236
@cfg_label_21236:
	li r5,$1
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_21235
@cfg_label_21235:
	lw r7,r2,$-176
	lw r6,r2,$-180
	lw r5,r2,$-172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_21234
@cfg_label_21234:
	li r5,$2
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_21233
@cfg_label_21233:
	lw r7,r2,$-164
	lw r6,r2,$-168
	lw r5,r2,$-172
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_21232
@cfg_label_21232:
	lw r5,r2,$-156
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_21231
@cfg_label_21231:
	lw r5,r2,$-148
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@2143:4;2143:52 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_21230
@cfg_label_21230:
	lw r5,r2,$-140
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@2142:4;2143:52 ::<= ../cpuex2017/raytracer/min-rt.ml@2143:4;2143:52
	j @cfg_label_21229
@cfg_label_21229:
	lw r5,r2,$-132
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@2141:4;2143:52 ::<= ../cpuex2017/raytracer/min-rt.ml@2142:4;2143:52
	j @cfg_label_21228
@cfg_label_21228:
	lw r5,r2,$-124
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2140:4;2143:52 ::<= ../cpuex2017/raytracer/min-rt.ml@2141:4;2143:52
	j @cfg_label_21227
@cfg_label_21227:
	lw r5,r2,$-116
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2139:4;2143:52 ::<= ../cpuex2017/raytracer/min-rt.ml@2140:4;2143:52
	j @cfg_label_21226
@cfg_label_21226:
	lw r5,r2,$-108
	sw r5,r2,$-532
; ../cpuex2017/raytracer/min-rt.ml@2130:2;2146:76 ::<= ../cpuex2017/raytracer/min-rt.ml@2139:4;2143:52
	lw r5,r2,$-532
	addi r1,r1,$532
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-532
	addi r1,r1,$532
	pop r2
	pop r6
	jr r6
@a_9084calc_dirvecs:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$140
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2151:12;2151:13
	j @cfg_label_21225
	li r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2151:12;2151:13
	j @cfg_label_21225
@cfg_label_21225:
	lw r6,r2,$-136
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@2151:5;2151:13 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2151:5;2151:8 ../cpuex2017/raytracer/min-rt.ml@2151:12;2151:13
	j @cfg_label_21224
@cfg_label_21224:
	li r5,$1
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2151:5;2151:13
	j @cfg_label_21223
@cfg_label_21223:
	lw r5,r2,$-132
	lw r6,r2,$-128
	bne r5,r6,@cfg_label_21220
	j @cfg_label_21219
	j @cfg_label_21221
	j @cfg_label_21222
@cfg_label_21222:
@cfg_label_21220:
	sw r3,r2,$-140
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
@cfg_label_21221:
@cfg_label_21219:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-124
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:30 ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:26
	j @cfg_label_21218
@cfg_label_21218:
	fmovi f1,$0.200000
	fst f1,r2,$-120
	j @cfg_label_21217
@cfg_label_21217:
	fld f1,r2,$-124
	fld f2,r2,$-120
	fmul f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2153:14;2153:30 ../cpuex2017/raytracer/min-rt.ml@2153:35;2153:38
	j @cfg_label_21216
@cfg_label_21216:
	fmovi f1,$0.900000
	fst f1,r2,$-112
	j @cfg_label_21215
@cfg_label_21215:
	fld f1,r2,$-116
	fld f2,r2,$-112
	fsub f1,f1,f2
	fst f1,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:45 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2153:13;2153:38 ../cpuex2017/raytracer/min-rt.ml@2153:42;2153:45
	j @cfg_label_21214
@cfg_label_21214:
	li r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2154:16;2154:17
	j @cfg_label_21213
@cfg_label_21213:
	fmovi f1,$0.000000
	fst f1,r2,$-104
	j @cfg_label_21212
@cfg_label_21212:
	fmovi f1,$0.000000
	fst f1,r2,$-100
	j @cfg_label_21211
@cfg_label_21211:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-96
	push r5
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-108
	push r5
	jal @a_9076calc_dirvec
	sw r5,r2,$-8
	addi r1,r1,$28
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2154:4;2154:46 ../cpuex2017/raytracer/min-rt.ml@2154:4;2154:15
	j @cfg_label_21210
@cfg_label_21210:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-92
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2156:15;2156:31 ../cpuex2017/raytracer/min-rt.ml@2156:15;2156:27
	j @cfg_label_21209
@cfg_label_21209:
	fmovi f1,$0.200000
	fst f1,r2,$-88
	j @cfg_label_21208
@cfg_label_21208:
	fld f1,r2,$-92
	fld f2,r2,$-88
	fmul f1,f1,f2
	fst f1,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:39 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2156:15;2156:31 ../cpuex2017/raytracer/min-rt.ml@2156:36;2156:39
	j @cfg_label_21207
@cfg_label_21207:
	fmovi f1,$0.100000
	fst f1,r2,$-80
	j @cfg_label_21206
@cfg_label_21206:
	fld f1,r2,$-84
	fld f2,r2,$-80
	fadd f1,f1,f2
	fst f1,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:46 ::= Ofadd ../cpuex2017/raytracer/min-rt.ml@2156:14;2156:39 ../cpuex2017/raytracer/min-rt.ml@2156:43;2156:46
	j @cfg_label_21205
@cfg_label_21205:
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2157:16;2157:17
	j @cfg_label_21204
@cfg_label_21204:
	fmovi f1,$0.000000
	fst f1,r2,$-68
	j @cfg_label_21203
@cfg_label_21203:
	fmovi f1,$0.000000
	fst f1,r2,$-64
	j @cfg_label_21202
@cfg_label_21202:
	li r5,$2
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2157:51;2157:52
	j @cfg_label_21201
@cfg_label_21201:
	lw r6,r2,$-76
	lw r5,r2,$20
	add r5,r5,r6
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2157:43;2157:52 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2157:43;2157:48 ../cpuex2017/raytracer/min-rt.ml@2157:51;2157:52
	j @cfg_label_21200
@cfg_label_21200:
	push r4
	lw r5,r2,$-56
	push r5
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	lw r5,r2,$-72
	push r5
	jal @a_9076calc_dirvec
	sw r5,r2,$-16
	addi r1,r1,$28
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2157:4;2157:53 ../cpuex2017/raytracer/min-rt.ml@2157:4;2157:15
	j @cfg_label_21199
@cfg_label_21199:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2159:24;2159:25
	j @cfg_label_21198
@cfg_label_21198:
	lw r6,r2,$-52
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2159:18;2159:25 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2159:18;2159:21 ../cpuex2017/raytracer/min-rt.ml@2159:24;2159:25
	j @cfg_label_21197
@cfg_label_21197:
	li r5,$1
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2159:49;2159:50
	j @cfg_label_21196
@cfg_label_21196:
	lw r6,r2,$-48
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@36:12;36:13 ../cpuex2017/raytracer/min-rt.ml@36:16;36:17
	j @cfg_label_21195
@cfg_label_21195:
	li r5,$5
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21194
@cfg_label_21194:
	lw r6,r2,$-44
	lw r5,r2,$-28
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@37:5;37:8 ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21193
@cfg_label_21193:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13
	j @cfg_label_21192
@cfg_label_21192:
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_21185
	j @cfg_label_21184
	j @cfg_label_21186
	j @cfg_label_21187
@cfg_label_21187:
@cfg_label_21185:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50 ::<= ../cpuex2017/raytracer/min-rt.ml@37:5;37:8
	j @cfg_label_21191
@cfg_label_21186:
@cfg_label_21184:
	li r5,$5
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21183
@cfg_label_21183:
	lw r6,r2,$-32
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2159:31;2159:50 ::= Osub ../cpuex2017/raytracer/min-rt.ml@37:19;37:22 ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21190
@cfg_label_21191:
@cfg_label_21190:
	push r4
	lw r5,r2,$20
	push r5
	lw r5,r2,$-20
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-24
	push r5
	jal @a_9084calc_dirvecs
	sw r5,r2,$-12
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2159:4;2159:57 ../cpuex2017/raytracer/min-rt.ml@2159:4;2159:16
	j @cfg_label_21189
@cfg_label_21189:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2156:4;2159:57 ::<= ../cpuex2017/raytracer/min-rt.ml@2159:4;2159:57
	j @cfg_label_21188
@cfg_label_21188:
	lw r5,r2,$-4
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@2151:2;2160:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2156:4;2159:57
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-140
	addi r1,r1,$140
	pop r2
	pop r6
	jr r6
@a_9089calc_dirvec_rows:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$92
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	j @cfg_label_21182
	li r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	j @cfg_label_21182
@cfg_label_21182:
	lw r6,r2,$-88
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2165:5;2165:13 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2165:5;2165:8 ../cpuex2017/raytracer/min-rt.ml@2165:12;2165:13
	j @cfg_label_21181
@cfg_label_21181:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2165:5;2165:13
	j @cfg_label_21180
@cfg_label_21180:
	lw r5,r2,$-84
	lw r6,r2,$-80
	bne r5,r6,@cfg_label_21177
	j @cfg_label_21176
	j @cfg_label_21178
	j @cfg_label_21179
@cfg_label_21179:
@cfg_label_21177:
	sw r3,r2,$-92
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12
	lw r5,r2,$-92
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@cfg_label_21178:
@cfg_label_21176:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-76
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30 ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:26
	j @cfg_label_21175
@cfg_label_21175:
	fmovi f1,$0.200000
	fst f1,r2,$-72
	j @cfg_label_21174
@cfg_label_21174:
	fld f1,r2,$-76
	fld f2,r2,$-72
	fmul f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2166:14;2166:30 ../cpuex2017/raytracer/min-rt.ml@2166:35;2166:38
	j @cfg_label_21173
@cfg_label_21173:
	fmovi f1,$0.900000
	fst f1,r2,$-64
	j @cfg_label_21172
@cfg_label_21172:
	fld f1,r2,$-68
	fld f2,r2,$-64
	fsub f1,f1,f2
	fst f1,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:45 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2166:13;2166:38 ../cpuex2017/raytracer/min-rt.ml@2166:42;2166:45
	j @cfg_label_21171
@cfg_label_21171:
	li r5,$4
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2167:17;2167:18
	j @cfg_label_21170
@cfg_label_21170:
	push r4
	lw r5,r2,$16
	push r5
	lw r5,r2,$12
	push r5
	lw r5,r2,$-56
	push r5
	lw r5,r2,$-60
	push r5
	jal @a_9084calc_dirvecs
	sw r5,r2,$-8
	addi r1,r1,$16
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2167:4;2167:36 ../cpuex2017/raytracer/min-rt.ml@2167:4;2167:16
	j @cfg_label_21169
@cfg_label_21169:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2168:28;2168:29
	j @cfg_label_21168
@cfg_label_21168:
	lw r6,r2,$-52
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:29 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2168:22;2168:25 ../cpuex2017/raytracer/min-rt.ml@2168:28;2168:29
	j @cfg_label_21167
@cfg_label_21167:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2168:50;2168:51
	j @cfg_label_21166
@cfg_label_21166:
	lw r6,r2,$-48
	lw r5,r2,$12
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@36:12;36:17 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@36:12;36:13 ../cpuex2017/raytracer/min-rt.ml@36:16;36:17
	j @cfg_label_21165
@cfg_label_21165:
	li r5,$5
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21164
@cfg_label_21164:
	lw r6,r2,$-44
	lw r5,r2,$-28
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@37:5;37:8 ../cpuex2017/raytracer/min-rt.ml@37:12;37:13
	j @cfg_label_21163
@cfg_label_21163:
	li r5,$1
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@37:5;37:13
	j @cfg_label_21162
@cfg_label_21162:
	lw r5,r2,$-40
	lw r6,r2,$-36
	bne r5,r6,@cfg_label_21154
	j @cfg_label_21153
	j @cfg_label_21155
	j @cfg_label_21156
@cfg_label_21156:
@cfg_label_21154:
	lw r5,r2,$-28
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51 ::<= ../cpuex2017/raytracer/min-rt.ml@37:5;37:8
	j @cfg_label_21161
@cfg_label_21155:
@cfg_label_21153:
	li r5,$5
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21152
@cfg_label_21152:
	lw r6,r2,$-32
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2168:32;2168:51 ::= Osub ../cpuex2017/raytracer/min-rt.ml@37:19;37:22 ../cpuex2017/raytracer/min-rt.ml@37:25;37:26
	j @cfg_label_21160
@cfg_label_21161:
@cfg_label_21160:
	li r5,$4
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2168:62;2168:63
	j @cfg_label_21159
@cfg_label_21159:
	lw r6,r2,$-24
	lw r5,r2,$16
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:63 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2168:54;2168:59 ../cpuex2017/raytracer/min-rt.ml@2168:62;2168:63
	j @cfg_label_21158
@cfg_label_21158:
	push r4
	lw r5,r2,$-12
	push r5
	lw r5,r2,$-16
	push r5
	lw r5,r2,$-20
	push r5
	jal @a_9089calc_dirvec_rows
	sw r5,r2,$-4
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2168:4;2168:64 ../cpuex2017/raytracer/min-rt.ml@2168:4;2168:20
	j @cfg_label_21157
@cfg_label_21157:
	lw r5,r2,$-4
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2165:2;2169:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2168:4;2168:64
	lw r5,r2,$-92
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-92
	addi r1,r1,$92
	pop r2
	pop r6
	jr r6
@a_9095create_dirvec_elements:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$116
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	j @cfg_label_21151
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	j @cfg_label_21151
@cfg_label_21151:
	lw r6,r2,$-112
	lw r5,r2,$12
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:10 ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	j @cfg_label_21150
@cfg_label_21150:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:15
	j @cfg_label_21149
@cfg_label_21149:
	lw r5,r2,$-108
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_21146
	j @cfg_label_21145
	j @cfg_label_21147
	j @cfg_label_21148
@cfg_label_21148:
@cfg_label_21146:
	sw r3,r2,$-116
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@cfg_label_21147:
@cfg_label_21145:
	li r5,$3
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_21144
@cfg_label_21144:
	fmovi f1,$0.000000
	fst f1,r2,$-96
	j @cfg_label_21143
@cfg_label_21143:
	lw r6,r2,$-96
	lw r5,r2,$-100
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26218
@emit_label_26217:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26217
@emit_label_26218:
	mov r5,r7
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_21142
@cfg_label_21142:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21141
@cfg_label_21141:
	lw r6,r2,$-92
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21140
@cfg_label_21140:
	lw r6,r2,$-84
	lw r5,r2,$-88
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26220
@emit_label_26219:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26219
@emit_label_26220:
	mov r5,r7
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_21139
@cfg_label_21139:
	sw r3,r2,$-76
	lw r5,r2,$-84
	sw r5,r3,$0
	lw r5,r2,$-80
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	j @cfg_label_21138
@cfg_label_21138:
	lw r7,r2,$-76
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:5 ../cpuex2017/raytracer/min-rt.ml@2185:7;2185:12 ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	j @cfg_label_21137
@cfg_label_21137:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2186:38;2186:39
	j @cfg_label_21136
@cfg_label_21136:
	lw r6,r2,$-72
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:35 ../cpuex2017/raytracer/min-rt.ml@2186:38;2186:39
	j @cfg_label_21135
@cfg_label_21135:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	j @cfg_label_21134
@cfg_label_21134:
	lw r6,r2,$-68
	lw r5,r2,$-28
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:10 ../cpuex2017/raytracer/min-rt.ml@2184:14;2184:15
	j @cfg_label_21133
@cfg_label_21133:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:15
	j @cfg_label_21132
@cfg_label_21132:
	lw r5,r2,$-64
	lw r6,r2,$-60
	bne r5,r6,@cfg_label_21127
	j @cfg_label_21126
	j @cfg_label_21128
	j @cfg_label_21129
@cfg_label_21129:
@cfg_label_21127:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40
	j @cfg_label_21131
@cfg_label_21128:
@cfg_label_21126:
	li r5,$3
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_21125
@cfg_label_21125:
	fmovi f1,$0.000000
	fst f1,r2,$-52
	j @cfg_label_21124
@cfg_label_21124:
	lw r6,r2,$-52
	lw r5,r2,$-56
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26222
@emit_label_26221:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26221
@emit_label_26222:
	mov r5,r7
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_21123
@cfg_label_21123:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21122
@cfg_label_21122:
	lw r6,r2,$-48
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21121
@cfg_label_21121:
	lw r6,r2,$-40
	lw r5,r2,$-44
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26224
@emit_label_26223:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26223
@emit_label_26224:
	mov r5,r7
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_21120
@cfg_label_21120:
	sw r3,r2,$-32
	lw r5,r2,$-40
	sw r5,r3,$0
	lw r5,r2,$-36
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	j @cfg_label_21119
@cfg_label_21119:
	lw r7,r2,$-32
	lw r6,r2,$-28
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:5 ../cpuex2017/raytracer/min-rt.ml@2185:7;2185:12 ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	j @cfg_label_21118
@cfg_label_21118:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2186:38;2186:39
	j @cfg_label_21117
@cfg_label_21117:
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:35 ../cpuex2017/raytracer/min-rt.ml@2186:38;2186:39
	j @cfg_label_21116
@cfg_label_21116:
	push r4
	lw r5,r2,$-20
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9095create_dirvec_elements
	sw r5,r2,$-12
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40 ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:26
	j @cfg_label_21115
@cfg_label_21115:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40 ::<= ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40
	j @cfg_label_21130
@cfg_label_21131:
@cfg_label_21130:
	lw r5,r2,$-4
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2184:2;2187:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@a_9098create_dirvecs:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$132
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	j @cfg_label_21114
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	j @cfg_label_21114
@cfg_label_21114:
	lw r6,r2,$-128
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@2191:5;2191:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2191:5;2191:10 ../cpuex2017/raytracer/min-rt.ml@2191:14;2191:15
	j @cfg_label_21113
@cfg_label_21113:
	li r5,$1
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2191:5;2191:15
	j @cfg_label_21112
@cfg_label_21112:
	lw r5,r2,$-124
	lw r6,r2,$-120
	bne r5,r6,@cfg_label_21109
	j @cfg_label_21108
	j @cfg_label_21110
	j @cfg_label_21111
@cfg_label_21111:
@cfg_label_21109:
	sw r3,r2,$-132
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12
	lw r5,r2,$-132
	addi r1,r1,$132
	pop r2
	pop r6
	jr r6
@cfg_label_21110:
@cfg_label_21108:
	li r5,$120
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39
	j @cfg_label_21107
@cfg_label_21107:
	li r5,$3
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_21106
@cfg_label_21106:
	fmovi f1,$0.000000
	fst f1,r2,$-112
	j @cfg_label_21105
@cfg_label_21105:
	lw r6,r2,$-112
	lw r5,r2,$-116
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26226
@emit_label_26225:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26225
@emit_label_26226:
	mov r5,r7
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_21104
@cfg_label_21104:
	li r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21103
@cfg_label_21103:
	lw r6,r2,$-108
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21102
@cfg_label_21102:
	lw r6,r2,$-100
	lw r5,r2,$-104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26228
@emit_label_26227:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26227
@emit_label_26228:
	mov r5,r7
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_21101
@cfg_label_21101:
	sw r3,r2,$-88
	lw r5,r2,$-100
	sw r5,r3,$0
	lw r5,r2,$-96
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	j @cfg_label_21100
@cfg_label_21100:
	lw r6,r2,$-88
	lw r5,r2,$-92
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26230
@emit_label_26229:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26229
@emit_label_26230:
	mov r5,r7
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2192:36;2192:39 ../cpuex2017/raytracer/min-rt.ml@2192:41;2192:56
	j @cfg_label_21099
@cfg_label_21099:
	lw r7,r2,$-84
	lw r6,r2,$8
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:57 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2192:4;2192:11 ../cpuex2017/raytracer/min-rt.ml@2192:13;2192:18 ../cpuex2017/raytracer/min-rt.ml@2192:23;2192:57
	j @cfg_label_21098
@cfg_label_21098:
	lw r6,r2,$8
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:42 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2193:27;2193:34 ../cpuex2017/raytracer/min-rt.ml@2193:36;2193:41
	j @cfg_label_21097
@cfg_label_21097:
	li r5,$118
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2193:43;2193:46
	j @cfg_label_21096
@cfg_label_21096:
	li r5,$1
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:15
	j @cfg_label_21095
@cfg_label_21095:
	li r5,$1
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2184:5;2184:15
	j @cfg_label_21094
@cfg_label_21094:
	lw r5,r2,$-80
	lw r6,r2,$-76
	bne r5,r6,@cfg_label_21085
	j @cfg_label_21084
	j @cfg_label_21086
	j @cfg_label_21087
@cfg_label_21087:
@cfg_label_21085:
	sw r3,r2,$-16
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46
	j @cfg_label_21093
@cfg_label_21086:
@cfg_label_21084:
	li r5,$3
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_21083
@cfg_label_21083:
	fmovi f1,$0.000000
	fst f1,r2,$-68
	j @cfg_label_21082
@cfg_label_21082:
	lw r6,r2,$-68
	lw r5,r2,$-72
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26232
@emit_label_26231:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26231
@emit_label_26232:
	mov r5,r7
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_21081
@cfg_label_21081:
	li r5,$0
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21080
@cfg_label_21080:
	lw r6,r2,$-64
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_21079
@cfg_label_21079:
	lw r6,r2,$-56
	lw r5,r2,$-60
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26234
@emit_label_26233:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26233
@emit_label_26234:
	mov r5,r7
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_21078
@cfg_label_21078:
	sw r3,r2,$-44
	lw r5,r2,$-56
	sw r5,r3,$0
	lw r5,r2,$-52
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	j @cfg_label_21077
@cfg_label_21077:
	lw r7,r2,$-44
	lw r6,r2,$-48
	lw r5,r2,$-40
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:32 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2185:4;2185:5 ../cpuex2017/raytracer/min-rt.ml@2185:7;2185:12 ../cpuex2017/raytracer/min-rt.ml@2185:17;2185:32
	j @cfg_label_21076
@cfg_label_21076:
	li r5,$117
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2186:30;2186:39
	j @cfg_label_21075
@cfg_label_21075:
	push r4
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	jal @a_9095create_dirvec_elements
	sw r5,r2,$-28
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40 ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:26
	j @cfg_label_21074
@cfg_label_21074:
	lw r5,r2,$-28
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2193:4;2193:46 ::<= ../cpuex2017/raytracer/min-rt.ml@2186:4;2186:40
	j @cfg_label_21092
@cfg_label_21093:
@cfg_label_21092:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2194:26;2194:27
	j @cfg_label_21091
@cfg_label_21091:
	lw r6,r2,$-24
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:27 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2194:20;2194:25 ../cpuex2017/raytracer/min-rt.ml@2194:26;2194:27
	j @cfg_label_21090
@cfg_label_21090:
	push r4
	lw r5,r2,$-20
	push r5
	jal @a_9098create_dirvecs
	sw r5,r2,$-12
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2194:4;2194:28 ../cpuex2017/raytracer/min-rt.ml@2194:4;2194:18
	j @cfg_label_21089
@cfg_label_21089:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2193:4;2194:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2194:4;2194:28
	j @cfg_label_21088
@cfg_label_21088:
	lw r5,r2,$-4
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@2191:2;2195:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2193:4;2194:28
	lw r5,r2,$-132
	addi r1,r1,$132
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-132
	addi r1,r1,$132
	pop r2
	pop r6
	jr r6
@a_9100init_dirvec_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$116
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	j @cfg_label_21073
	li r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	j @cfg_label_21073
@cfg_label_21073:
	lw r6,r2,$-112
	lw r5,r2,$12
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:10 ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	j @cfg_label_21072
@cfg_label_21072:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:15
	j @cfg_label_21071
@cfg_label_21071:
	lw r5,r2,$-108
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_21068
	j @cfg_label_21067
	j @cfg_label_21069
	j @cfg_label_21070
@cfg_label_21070:
@cfg_label_21068:
	sw r3,r2,$-116
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@cfg_label_21069:
@cfg_label_21067:
	lw r6,r2,$12
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:33 ../cpuex2017/raytracer/min-rt.ml@2204:35;2204:40
	j @cfg_label_21066
@cfg_label_21066:
	lw r5,r2,$-100
	lw r5,r5,$4
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	j @cfg_label_21065
@cfg_label_21065:
	lw r5,r2,$-100
	lw r5,r5,$0
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	j @cfg_label_21064
@cfg_label_21064:
	li r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_21063
@cfg_label_21063:
	lw r6,r2,$-96
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_21062
@cfg_label_21062:
	li r5,$1
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_21061
@cfg_label_21061:
	lw r6,r2,$-88
	lw r5,r2,$-92
	sub r5,r5,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_21060
@cfg_label_21060:
	push r4
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-8
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_21059
@cfg_label_21059:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2205:42;2205:43
	j @cfg_label_21058
@cfg_label_21058:
	lw r6,r2,$-72
	lw r5,r2,$12
	sub r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:39 ../cpuex2017/raytracer/min-rt.ml@2205:42;2205:43
	j @cfg_label_21057
@cfg_label_21057:
	li r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	j @cfg_label_21056
@cfg_label_21056:
	lw r6,r2,$-68
	lw r5,r2,$-28
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:10 ../cpuex2017/raytracer/min-rt.ml@2203:14;2203:15
	j @cfg_label_21055
@cfg_label_21055:
	li r5,$1
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:15
	j @cfg_label_21054
@cfg_label_21054:
	lw r5,r2,$-64
	lw r6,r2,$-60
	bne r5,r6,@cfg_label_21049
	j @cfg_label_21048
	j @cfg_label_21050
	j @cfg_label_21051
@cfg_label_21051:
@cfg_label_21049:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44
	j @cfg_label_21053
@cfg_label_21050:
@cfg_label_21048:
	lw r6,r2,$-28
	lw r5,r2,$8
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:33 ../cpuex2017/raytracer/min-rt.ml@2204:35;2204:40
	j @cfg_label_21047
@cfg_label_21047:
	lw r5,r2,$-56
	lw r5,r5,$4
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	j @cfg_label_21046
@cfg_label_21046:
	lw r5,r2,$-56
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	j @cfg_label_21045
@cfg_label_21045:
	li r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_21044
@cfg_label_21044:
	lw r6,r2,$-52
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_21043
@cfg_label_21043:
	li r5,$1
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_21042
@cfg_label_21042:
	lw r6,r2,$-44
	lw r5,r2,$-48
	sub r5,r5,r6
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_21041
@cfg_label_21041:
	push r4
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	lw r5,r2,$-40
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-16
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_21040
@cfg_label_21040:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2205:42;2205:43
	j @cfg_label_21039
@cfg_label_21039:
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:39 ../cpuex2017/raytracer/min-rt.ml@2205:42;2205:43
	j @cfg_label_21038
@cfg_label_21038:
	push r4
	lw r5,r2,$-20
	push r5
	lw r5,r2,$8
	push r5
	jal @a_9100init_dirvec_constants
	sw r5,r2,$-12
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44 ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:25
	j @cfg_label_21037
@cfg_label_21037:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44 ::<= ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44
	j @cfg_label_21052
@cfg_label_21053:
@cfg_label_21052:
	lw r5,r2,$-4
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2203:2;2206:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-116
	addi r1,r1,$116
	pop r2
	pop r6
	jr r6
@a_9103init_vecset_constants:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$124
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	j @cfg_label_21036
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	j @cfg_label_21036
@cfg_label_21036:
	lw r6,r2,$-120
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2210:5;2210:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2210:5;2210:10 ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	j @cfg_label_21035
@cfg_label_21035:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@2210:5;2210:15
	j @cfg_label_21034
@cfg_label_21034:
	lw r5,r2,$-116
	lw r6,r2,$-112
	bne r5,r6,@cfg_label_21031
	j @cfg_label_21030
	j @cfg_label_21032
	j @cfg_label_21033
@cfg_label_21033:
@cfg_label_21031:
	sw r3,r2,$-124
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
@cfg_label_21032:
@cfg_label_21030:
	lw r6,r2,$8
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:33 ../cpuex2017/raytracer/min-rt.ml@2211:35;2211:40
	j @cfg_label_21029
@cfg_label_21029:
	li r5,$119
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	j @cfg_label_21028
@cfg_label_21028:
	li r5,$1
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:15
	j @cfg_label_21027
@cfg_label_21027:
	li r5,$1
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@2203:5;2203:15
	j @cfg_label_21026
@cfg_label_21026:
	lw r5,r2,$-108
	lw r6,r2,$-104
	bne r5,r6,@cfg_label_21004
	j @cfg_label_21003
	j @cfg_label_21005
	j @cfg_label_21006
@cfg_label_21006:
@cfg_label_21004:
	sw r3,r2,$-8
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45
	j @cfg_label_21025
@cfg_label_21005:
@cfg_label_21003:
	lw r6,r2,$-100
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:33 ../cpuex2017/raytracer/min-rt.ml@2204:35;2204:40
	j @cfg_label_21002
@cfg_label_21002:
	lw r5,r2,$-96
	lw r5,r5,$4
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	j @cfg_label_21001
@cfg_label_21001:
	lw r5,r2,$-96
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2204:27;2204:41
	j @cfg_label_21000
@cfg_label_21000:
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20999
@cfg_label_20999:
	lw r6,r2,$-92
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20998
@cfg_label_20998:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20997
@cfg_label_20997:
	lw r6,r2,$-84
	lw r5,r2,$-88
	sub r5,r5,r6
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20996
@cfg_label_20996:
	push r4
	lw r5,r2,$-72
	push r5
	lw r5,r2,$-76
	push r5
	lw r5,r2,$-80
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-60
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2204:4;2204:41 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_20995
@cfg_label_20995:
	li r5,$118
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2205:34;2205:43
	j @cfg_label_20994
@cfg_label_20994:
	push r4
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	jal @a_9100init_dirvec_constants
	sw r5,r2,$-56
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44 ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:25
	j @cfg_label_20993
@cfg_label_20993:
	lw r5,r2,$-56
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45 ::<= ../cpuex2017/raytracer/min-rt.ml@2205:4;2205:44
	j @cfg_label_21024
@cfg_label_21025:
@cfg_label_21024:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2212:35;2212:36
	j @cfg_label_21023
@cfg_label_21023:
	lw r6,r2,$-52
	lw r5,r2,$8
	sub r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:32 ../cpuex2017/raytracer/min-rt.ml@2212:35;2212:36
	j @cfg_label_21022
@cfg_label_21022:
	li r5,$0
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	j @cfg_label_21021
@cfg_label_21021:
	lw r6,r2,$-48
	lw r5,r2,$-28
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2210:5;2210:15 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2210:5;2210:10 ../cpuex2017/raytracer/min-rt.ml@2210:14;2210:15
	j @cfg_label_21020
@cfg_label_21020:
	li r5,$1
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2210:5;2210:15
	j @cfg_label_21019
@cfg_label_21019:
	lw r5,r2,$-44
	lw r6,r2,$-40
	bne r5,r6,@cfg_label_21014
	j @cfg_label_21013
	j @cfg_label_21015
	j @cfg_label_21016
@cfg_label_21016:
@cfg_label_21014:
	sw r3,r2,$-4
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2212:4;2212:37
	j @cfg_label_21018
@cfg_label_21015:
@cfg_label_21013:
	lw r6,r2,$-28
	lw r5,r31,$108
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2211:26;2211:33 ../cpuex2017/raytracer/min-rt.ml@2211:35;2211:40
	j @cfg_label_21012
@cfg_label_21012:
	li r5,$119
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2211:42;2211:45
	j @cfg_label_21011
@cfg_label_21011:
	push r4
	lw r5,r2,$-32
	push r5
	lw r5,r2,$-36
	push r5
	jal @a_9100init_dirvec_constants
	sw r5,r2,$-16
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:45 ../cpuex2017/raytracer/min-rt.ml@2211:4;2211:25
	j @cfg_label_21010
@cfg_label_21010:
	li r5,$1
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2212:35;2212:36
	j @cfg_label_21009
@cfg_label_21009:
	lw r6,r2,$-24
	lw r5,r2,$-28
	sub r5,r5,r6
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:36 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2212:27;2212:32 ../cpuex2017/raytracer/min-rt.ml@2212:35;2212:36
	j @cfg_label_21008
@cfg_label_21008:
	push r4
	lw r5,r2,$-20
	push r5
	jal @a_9103init_vecset_constants
	sw r5,r2,$-12
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2212:4;2212:37 ../cpuex2017/raytracer/min-rt.ml@2212:4;2212:25
	j @cfg_label_21007
@cfg_label_21007:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2212:4;2212:37 ::<= ../cpuex2017/raytracer/min-rt.ml@2212:4;2212:37
	j @cfg_label_21017
@cfg_label_21018:
@cfg_label_21017:
	lw r5,r2,$-4
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@2210:2;2213:12 ::<= ../cpuex2017/raytracer/min-rt.ml@2212:4;2212:37
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-124
	addi r1,r1,$124
	pop r2
	pop r6
	jr r6
@a_9114setup_rect_reflection:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$456
	lw r5,r2,$8
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:18
	j @cfg_label_20992
	lw r5,r2,$8
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:22 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@2237:12;2237:18
	j @cfg_label_20992
@cfg_label_20992:
	li r5,$0
	sw r5,r2,$-452
; ../cpuex2017/raytracer/min-rt.ml@2238:26;2238:27
	j @cfg_label_20991
@cfg_label_20991:
	lw r6,r2,$-452
	lw r5,r31,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2238:11;2238:24 ../cpuex2017/raytracer/min-rt.ml@2238:26;2238:27
	j @cfg_label_20990
@cfg_label_20990:
	fmovi f1,$1.000000
	fst f1,r2,$-444
	j @cfg_label_20989
@cfg_label_20989:
	li r5,$0
	sw r5,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_20988
@cfg_label_20988:
	lw r6,r2,$-448
	lw r5,r2,$40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@2239:18;2239:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_20987
@cfg_label_20987:
	fld f1,r2,$-444
	fld f2,r2,$-440
	fsub f1,f1,f2
	fst f1,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2239:11;2239:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2239:11;2239:14 ../cpuex2017/raytracer/min-rt.ml@2239:18;2239:31
	j @cfg_label_20986
@cfg_label_20986:
	li r5,$0
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@2240:23;2240:24
	j @cfg_label_20985
@cfg_label_20985:
	lw r6,r2,$-436
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-428
; ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2240:16;2240:21 ../cpuex2017/raytracer/min-rt.ml@2240:23;2240:24
	j @cfg_label_20984
@cfg_label_20984:
	fmovi f1,$-1.000000
	fst f1,r2,$-432
	j @cfg_label_20983
@cfg_label_20983:
	fld f1,r2,$-432
	fld f2,r2,$-428
	fmul f1,f1,f2
	fst f1,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2240:11;2240:25 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_20982
@cfg_label_20982:
	li r5,$1
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@2241:23;2241:24
	j @cfg_label_20981
@cfg_label_20981:
	lw r6,r2,$-424
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@2241:16;2241:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2241:16;2241:21 ../cpuex2017/raytracer/min-rt.ml@2241:23;2241:24
	j @cfg_label_20980
@cfg_label_20980:
	fmovi f1,$-1.000000
	fst f1,r2,$-420
	j @cfg_label_20979
@cfg_label_20979:
	fld f1,r2,$-420
	fld f2,r2,$-416
	fmul f1,f1,f2
	fst f1,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2241:11;2241:25 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_20978
@cfg_label_20978:
	li r5,$2
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@2242:23;2242:24
	j @cfg_label_20977
@cfg_label_20977:
	lw r6,r2,$-412
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@2242:16;2242:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2242:16;2242:21 ../cpuex2017/raytracer/min-rt.ml@2242:23;2242:24
	j @cfg_label_20976
@cfg_label_20976:
	fmovi f1,$-1.000000
	fst f1,r2,$-408
	j @cfg_label_20975
@cfg_label_20975:
	fld f1,r2,$-408
	fld f2,r2,$-404
	fmul f1,f1,f2
	fst f1,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@2242:11;2242:25 ::= Ofmul lib_tortesia.ml@17:19;17:22 lib_tortesia.ml@17:26;17:27
	j @cfg_label_20974
@cfg_label_20974:
	li r5,$1
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@2243:25;2243:26
	j @cfg_label_20973
@cfg_label_20973:
	lw r6,r2,$-400
	lw r5,r2,$-168
	add r5,r5,r6
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@2243:21;2243:26 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2243:21;2243:24 ../cpuex2017/raytracer/min-rt.ml@2243:25;2243:26
	j @cfg_label_20972
@cfg_label_20972:
	li r5,$0
	sw r5,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@2243:38;2243:39
	j @cfg_label_20971
@cfg_label_20971:
	lw r6,r2,$-396
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@2243:31;2243:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2243:31;2243:36 ../cpuex2017/raytracer/min-rt.ml@2243:38;2243:39
	j @cfg_label_20970
@cfg_label_20970:
	li r5,$3
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_20969
@cfg_label_20969:
	fmovi f1,$0.000000
	fst f1,r2,$-388
	j @cfg_label_20968
@cfg_label_20968:
	lw r6,r2,$-388
	lw r5,r2,$-392
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26236
@emit_label_26235:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26235
@emit_label_26236:
	mov r5,r7
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_20967
@cfg_label_20967:
	li r5,$0
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20966
@cfg_label_20966:
	lw r6,r2,$-384
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20965
@cfg_label_20965:
	lw r6,r2,$-332
	lw r5,r2,$-380
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26238
@emit_label_26237:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26237
@emit_label_26238:
	mov r5,r7
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_20964
@cfg_label_20964:
	sw r3,r2,$-316
	lw r5,r2,$-332
	sw r5,r3,$0
	lw r5,r2,$-328
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	j @cfg_label_20963
@cfg_label_20963:
	li r5,$0
	sw r5,r2,$-376
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_20962
@cfg_label_20962:
	lw r7,r2,$-372
	lw r6,r2,$-376
	lw r5,r2,$-332
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_20961
@cfg_label_20961:
	li r5,$1
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_20960
@cfg_label_20960:
	lw r7,r2,$-128
	lw r6,r2,$-368
	lw r5,r2,$-332
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_20959
@cfg_label_20959:
	li r5,$2
	sw r5,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_20958
@cfg_label_20958:
	lw r7,r2,$-248
	lw r6,r2,$-364
	lw r5,r2,$-332
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_20957
@cfg_label_20957:
	lw r5,r2,$-356
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_20956
@cfg_label_20956:
	lw r5,r2,$-348
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_20955
@cfg_label_20955:
	li r5,$0
	sw r5,r2,$-344
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20954
@cfg_label_20954:
	lw r6,r2,$-344
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-340
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20953
@cfg_label_20953:
	li r5,$1
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20952
@cfg_label_20952:
	lw r6,r2,$-336
	lw r5,r2,$-340
	sub r5,r5,r6
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20951
@cfg_label_20951:
	push r4
	lw r5,r2,$-324
	push r5
	lw r5,r2,$-328
	push r5
	lw r5,r2,$-332
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-308
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_20950
@cfg_label_20950:
	sw r3,r2,$-312
	lw r5,r2,$-320
	sw r5,r3,$0
	lw r5,r2,$-316
	sw r5,r3,$4
	lw r5,r2,$-68
	sw r5,r3,$8
	addi r3,r3,$12
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20949
@cfg_label_20949:
	lw r7,r2,$-312
	lw r6,r2,$-40
	lw r5,r31,$32
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2232:15;2232:20 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20948
@cfg_label_20948:
	lw r5,r2,$-304
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51 ::<= ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51
	j @cfg_label_20947
@cfg_label_20947:
	lw r5,r2,$-296
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2243:2;2243:46 ::<= ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51
	j @cfg_label_20946
@cfg_label_20946:
	li r5,$1
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@2244:21;2244:22
	j @cfg_label_20945
@cfg_label_20945:
	lw r6,r2,$-292
	lw r5,r2,$-40
	add r5,r5,r6
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@2244:18;2244:22 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2244:18;2244:20 ../cpuex2017/raytracer/min-rt.ml@2244:21;2244:22
	j @cfg_label_20944
@cfg_label_20944:
	li r5,$2
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@2244:29;2244:30
	j @cfg_label_20943
@cfg_label_20943:
	lw r6,r2,$-288
	lw r5,r2,$-168
	add r5,r5,r6
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@2244:25;2244:30 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2244:25;2244:28 ../cpuex2017/raytracer/min-rt.ml@2244:29;2244:30
	j @cfg_label_20942
@cfg_label_20942:
	li r5,$1
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@2244:45;2244:46
	j @cfg_label_20941
@cfg_label_20941:
	lw r6,r2,$-284
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@2244:38;2244:47 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2244:38;2244:43 ../cpuex2017/raytracer/min-rt.ml@2244:45;2244:46
	j @cfg_label_20940
@cfg_label_20940:
	li r5,$3
	sw r5,r2,$-280
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_20939
@cfg_label_20939:
	fmovi f1,$0.000000
	fst f1,r2,$-276
	j @cfg_label_20938
@cfg_label_20938:
	lw r6,r2,$-276
	lw r5,r2,$-280
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26240
@emit_label_26239:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26239
@emit_label_26240:
	mov r5,r7
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_20937
@cfg_label_20937:
	li r5,$0
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20936
@cfg_label_20936:
	lw r6,r2,$-272
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20935
@cfg_label_20935:
	lw r6,r2,$-216
	lw r5,r2,$-268
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26242
@emit_label_26241:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26241
@emit_label_26242:
	mov r5,r7
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_20934
@cfg_label_20934:
	sw r3,r2,$-200
	lw r5,r2,$-216
	sw r5,r3,$0
	lw r5,r2,$-212
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	j @cfg_label_20933
@cfg_label_20933:
	li r5,$0
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_20932
@cfg_label_20932:
	lw r7,r2,$-136
	lw r6,r2,$-264
	lw r5,r2,$-216
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_20931
@cfg_label_20931:
	li r5,$1
	sw r5,r2,$-260
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_20930
@cfg_label_20930:
	lw r7,r2,$-256
	lw r6,r2,$-260
	lw r5,r2,$-216
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_20929
@cfg_label_20929:
	li r5,$2
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_20928
@cfg_label_20928:
	lw r7,r2,$-248
	lw r6,r2,$-252
	lw r5,r2,$-216
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_20927
@cfg_label_20927:
	lw r5,r2,$-240
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_20926
@cfg_label_20926:
	lw r5,r2,$-232
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_20925
@cfg_label_20925:
	li r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20924
@cfg_label_20924:
	lw r6,r2,$-228
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20923
@cfg_label_20923:
	li r5,$1
	sw r5,r2,$-220
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20922
@cfg_label_20922:
	lw r6,r2,$-220
	lw r5,r2,$-224
	sub r5,r5,r6
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20921
@cfg_label_20921:
	push r4
	lw r5,r2,$-208
	push r5
	lw r5,r2,$-212
	push r5
	lw r5,r2,$-216
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-188
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_20920
@cfg_label_20920:
	sw r3,r2,$-192
	lw r5,r2,$-204
	sw r5,r3,$0
	lw r5,r2,$-200
	sw r5,r3,$4
	lw r5,r2,$-68
	sw r5,r3,$8
	addi r3,r3,$12
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20919
@cfg_label_20919:
	lw r7,r2,$-192
	lw r6,r2,$-196
	lw r5,r31,$32
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2232:15;2232:20 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20918
@cfg_label_20918:
	lw r5,r2,$-184
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51 ::<= ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51
	j @cfg_label_20917
@cfg_label_20917:
	lw r5,r2,$-176
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2244:2;2244:50 ::<= ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51
	j @cfg_label_20916
@cfg_label_20916:
	li r5,$2
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@2245:21;2245:22
	j @cfg_label_20915
@cfg_label_20915:
	lw r6,r2,$-172
	lw r5,r2,$-40
	add r5,r5,r6
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2245:18;2245:22 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2245:18;2245:20 ../cpuex2017/raytracer/min-rt.ml@2245:21;2245:22
	j @cfg_label_20914
@cfg_label_20914:
	li r5,$3
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@2245:29;2245:30
	j @cfg_label_20913
@cfg_label_20913:
	lw r6,r2,$-164
	lw r5,r2,$-168
	add r5,r5,r6
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2245:25;2245:30 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2245:25;2245:28 ../cpuex2017/raytracer/min-rt.ml@2245:29;2245:30
	j @cfg_label_20912
@cfg_label_20912:
	li r5,$2
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@2245:48;2245:49
	j @cfg_label_20911
@cfg_label_20911:
	lw r6,r2,$-160
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2245:41;2245:50 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2245:41;2245:46 ../cpuex2017/raytracer/min-rt.ml@2245:48;2245:49
	j @cfg_label_20910
@cfg_label_20910:
	li r5,$3
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_20909
@cfg_label_20909:
	fmovi f1,$0.000000
	fst f1,r2,$-152
	j @cfg_label_20908
@cfg_label_20908:
	lw r6,r2,$-152
	lw r5,r2,$-156
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26244
@emit_label_26243:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26243
@emit_label_26244:
	mov r5,r7
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_20907
@cfg_label_20907:
	li r5,$0
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20906
@cfg_label_20906:
	lw r6,r2,$-148
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20905
@cfg_label_20905:
	lw r6,r2,$-88
	lw r5,r2,$-144
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26246
@emit_label_26245:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26245
@emit_label_26246:
	mov r5,r7
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_20904
@cfg_label_20904:
	sw r3,r2,$-72
	lw r5,r2,$-88
	sw r5,r3,$0
	lw r5,r2,$-84
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	j @cfg_label_20903
@cfg_label_20903:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_20902
@cfg_label_20902:
	lw r7,r2,$-136
	lw r6,r2,$-140
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_20901
@cfg_label_20901:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_20900
@cfg_label_20900:
	lw r7,r2,$-128
	lw r6,r2,$-132
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_20899
@cfg_label_20899:
	li r5,$2
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_20898
@cfg_label_20898:
	lw r7,r2,$-120
	lw r6,r2,$-124
	lw r5,r2,$-88
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_20897
@cfg_label_20897:
	lw r5,r2,$-112
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_20896
@cfg_label_20896:
	lw r5,r2,$-104
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_20895
@cfg_label_20895:
	li r5,$0
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20894
@cfg_label_20894:
	lw r6,r2,$-100
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20893
@cfg_label_20893:
	li r5,$1
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20892
@cfg_label_20892:
	lw r6,r2,$-92
	lw r5,r2,$-96
	sub r5,r5,r6
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20891
@cfg_label_20891:
	push r4
	lw r5,r2,$-80
	push r5
	lw r5,r2,$-84
	push r5
	lw r5,r2,$-88
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-56
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_20890
@cfg_label_20890:
	sw r3,r2,$-60
	lw r5,r2,$-76
	sw r5,r3,$0
	lw r5,r2,$-72
	sw r5,r3,$4
	lw r5,r2,$-68
	sw r5,r3,$8
	addi r3,r3,$12
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20889
@cfg_label_20889:
	lw r7,r2,$-60
	lw r6,r2,$-64
	lw r5,r31,$32
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2232:15;2232:20 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20888
@cfg_label_20888:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51 ::<= ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51
	j @cfg_label_20887
@cfg_label_20887:
	lw r5,r2,$-44
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2245:2;2245:50 ::<= ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51
	j @cfg_label_20886
@cfg_label_20886:
	li r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2246:17;2246:18
	j @cfg_label_20885
@cfg_label_20885:
	li r5,$3
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2246:28;2246:29
	j @cfg_label_20884
@cfg_label_20884:
	lw r6,r2,$-36
	lw r5,r2,$-40
	add r5,r5,r6
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2246:23;2246:29 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2246:23;2246:25 ../cpuex2017/raytracer/min-rt.ml@2246:28;2246:29
	j @cfg_label_20883
@cfg_label_20883:
	lw r7,r2,$-28
	lw r6,r2,$-32
	lw r5,r31,$20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2246:2;2246:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2246:2;2246:15 ../cpuex2017/raytracer/min-rt.ml@2246:17;2246:18 ../cpuex2017/raytracer/min-rt.ml@2246:23;2246:29
	j @cfg_label_20882
@cfg_label_20882:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2245:2;2246:29 ::<= ../cpuex2017/raytracer/min-rt.ml@2246:2;2246:29
	j @cfg_label_20881
@cfg_label_20881:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2244:2;2246:29 ::<= ../cpuex2017/raytracer/min-rt.ml@2245:2;2246:29
	j @cfg_label_20880
@cfg_label_20880:
	lw r5,r2,$-4
	sw r5,r2,$-456
; ../cpuex2017/raytracer/min-rt.ml@2237:2;2246:29 ::<= ../cpuex2017/raytracer/min-rt.ml@2244:2;2246:29
	lw r5,r2,$-456
	addi r1,r1,$456
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-456
	addi r1,r1,$456
	pop r2
	pop r6
	jr r6
@a_9117setup_surface_reflection:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$252
	lw r5,r2,$8
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:18
	j @cfg_label_20879
	lw r5,r2,$8
	li r6,$0
	sll r6,r6,$1
	sll r6,r6,$1
	add r6,r6,r5
	sll r6,r6,$1
	sll r6,r6,$1
	mov r5,r6
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22 ::= Oimul[4] ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:18
	j @cfg_label_20879
@cfg_label_20879:
	li r5,$1
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@2251:25;2251:26
	j @cfg_label_20878
@cfg_label_20878:
	lw r6,r2,$-244
	lw r5,r2,$-248
	add r5,r5,r6
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:26 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2251:12;2251:22 ../cpuex2017/raytracer/min-rt.ml@2251:25;2251:26
	j @cfg_label_20877
@cfg_label_20877:
	li r5,$0
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@2252:26;2252:27
	j @cfg_label_20876
@cfg_label_20876:
	lw r6,r2,$-240
	lw r5,r31,$20
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:28 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2252:11;2252:24 ../cpuex2017/raytracer/min-rt.ml@2252:26;2252:27
	j @cfg_label_20875
@cfg_label_20875:
	fmovi f1,$1.000000
	fst f1,r2,$-232
	j @cfg_label_20874
@cfg_label_20874:
	li r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_20873
@cfg_label_20873:
	lw r6,r2,$-236
	lw r5,r2,$40
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@2253:18;2253:31 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_20872
@cfg_label_20872:
	fld f1,r2,$-232
	fld f2,r2,$-228
	fsub f1,f1,f2
	fst f1,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2253:11;2253:31 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2253:11;2253:14 ../cpuex2017/raytracer/min-rt.ml@2253:18;2253:31
	j @cfg_label_20871
@cfg_label_20871:
	push r4
	lw r5,r2,$28
	push r5
	lw r5,r31,$420
	push r5
	jal @a_8670veciprod
	sw r5,r2,$-152
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2254:10;2254:42 ../cpuex2017/raytracer/min-rt.ml@2254:10;2254:18
	j @cfg_label_20870
@cfg_label_20870:
	fmovi f1,$2.000000
	fst f1,r2,$-220
	j @cfg_label_20869
@cfg_label_20869:
	li r5,$0
	sw r5,r2,$-224
; ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_20868
@cfg_label_20868:
	lw r6,r2,$-224
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-216
; ../cpuex2017/raytracer/min-rt.ml@2257:12;2257:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@202:2;202:7 ../cpuex2017/raytracer/min-rt.ml@202:9;202:10
	j @cfg_label_20867
@cfg_label_20867:
	fld f1,r2,$-220
	fld f2,r2,$-216
	fmul f1,f1,f2
	fst f1,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:8 ../cpuex2017/raytracer/min-rt.ml@2257:12;2257:25
	j @cfg_label_20866
@cfg_label_20866:
	fld f1,r2,$-212
	fld f2,r2,$-152
	fmul f1,f1,f2
	fst f1,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:25 ../cpuex2017/raytracer/min-rt.ml@2257:29;2257:30
	j @cfg_label_20865
@cfg_label_20865:
	li r5,$0
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@2257:41;2257:42
	j @cfg_label_20864
@cfg_label_20864:
	lw r6,r2,$-208
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@2257:34;2257:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2257:34;2257:39 ../cpuex2017/raytracer/min-rt.ml@2257:41;2257:42
	j @cfg_label_20863
@cfg_label_20863:
	fld f1,r2,$-204
	fld f2,r2,$-200
	fsub f1,f1,f2
	fst f1,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:43 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2257:5;2257:30 ../cpuex2017/raytracer/min-rt.ml@2257:34;2257:43
	j @cfg_label_20862
@cfg_label_20862:
	fmovi f1,$2.000000
	fst f1,r2,$-192
	j @cfg_label_20861
@cfg_label_20861:
	li r5,$1
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_20860
@cfg_label_20860:
	lw r6,r2,$-196
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@2258:12;2258:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@212:2;212:7 ../cpuex2017/raytracer/min-rt.ml@212:9;212:10
	j @cfg_label_20859
@cfg_label_20859:
	fld f1,r2,$-192
	fld f2,r2,$-188
	fmul f1,f1,f2
	fst f1,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:8 ../cpuex2017/raytracer/min-rt.ml@2258:12;2258:25
	j @cfg_label_20858
@cfg_label_20858:
	fld f1,r2,$-184
	fld f2,r2,$-152
	fmul f1,f1,f2
	fst f1,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:25 ../cpuex2017/raytracer/min-rt.ml@2258:29;2258:30
	j @cfg_label_20857
@cfg_label_20857:
	li r5,$1
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@2258:41;2258:42
	j @cfg_label_20856
@cfg_label_20856:
	lw r6,r2,$-180
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@2258:34;2258:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2258:34;2258:39 ../cpuex2017/raytracer/min-rt.ml@2258:41;2258:42
	j @cfg_label_20855
@cfg_label_20855:
	fld f1,r2,$-176
	fld f2,r2,$-172
	fsub f1,f1,f2
	fst f1,r2,$-108
; ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:43 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2258:5;2258:30 ../cpuex2017/raytracer/min-rt.ml@2258:34;2258:43
	j @cfg_label_20854
@cfg_label_20854:
	fmovi f1,$2.000000
	fst f1,r2,$-164
	j @cfg_label_20853
@cfg_label_20853:
	li r5,$2
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_20852
@cfg_label_20852:
	lw r6,r2,$-168
	lw r5,r2,$28
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@2259:12;2259:25 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@222:2;222:7 ../cpuex2017/raytracer/min-rt.ml@222:9;222:10
	j @cfg_label_20851
@cfg_label_20851:
	fld f1,r2,$-164
	fld f2,r2,$-160
	fmul f1,f1,f2
	fst f1,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:25 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:8 ../cpuex2017/raytracer/min-rt.ml@2259:12;2259:25
	j @cfg_label_20850
@cfg_label_20850:
	fld f1,r2,$-156
	fld f2,r2,$-152
	fmul f1,f1,f2
	fst f1,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:30 ::= Ofmul ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:25 ../cpuex2017/raytracer/min-rt.ml@2259:29;2259:30
	j @cfg_label_20849
@cfg_label_20849:
	li r5,$2
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@2259:41;2259:42
	j @cfg_label_20848
@cfg_label_20848:
	lw r6,r2,$-148
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@2259:34;2259:43 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2259:34;2259:39 ../cpuex2017/raytracer/min-rt.ml@2259:41;2259:42
	j @cfg_label_20847
@cfg_label_20847:
	fld f1,r2,$-144
	fld f2,r2,$-140
	fsub f1,f1,f2
	fst f1,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:43 ::= Ofsub ../cpuex2017/raytracer/min-rt.ml@2259:5;2259:30 ../cpuex2017/raytracer/min-rt.ml@2259:34;2259:43
	j @cfg_label_20846
@cfg_label_20846:
	li r5,$3
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25
	j @cfg_label_20845
@cfg_label_20845:
	fmovi f1,$0.000000
	fst f1,r2,$-132
	j @cfg_label_20844
@cfg_label_20844:
	lw r6,r2,$-132
	lw r5,r2,$-136
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26248
@emit_label_26247:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26247
@emit_label_26248:
	mov r5,r7
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2178:11;2178:29 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2178:24;2178:25 ../cpuex2017/raytracer/min-rt.ml@2178:26;2178:29
	j @cfg_label_20843
@cfg_label_20843:
	li r5,$0
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20842
@cfg_label_20842:
	lw r6,r2,$-128
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:37 ../cpuex2017/raytracer/min-rt.ml@2179:39;2179:40
	j @cfg_label_20841
@cfg_label_20841:
	lw r6,r2,$-68
	lw r5,r2,$-124
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26250
@emit_label_26249:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26249
@emit_label_26250:
	mov r5,r7
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2179:15;2179:44 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2179:28;2179:41 ../cpuex2017/raytracer/min-rt.ml@2179:42;2179:44
	j @cfg_label_20840
@cfg_label_20840:
	sw r3,r2,$-52
	lw r5,r2,$-68
	sw r5,r3,$0
	lw r5,r2,$-64
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/min-rt.ml@2228:13;2228:28
	j @cfg_label_20839
@cfg_label_20839:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@52:5;52:6
	j @cfg_label_20838
@cfg_label_20838:
	lw r7,r2,$-116
	lw r6,r2,$-120
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@52:2;52:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@52:2;52:3 ../cpuex2017/raytracer/min-rt.ml@52:5;52:6 ../cpuex2017/raytracer/min-rt.ml@52:11;52:12
	j @cfg_label_20837
@cfg_label_20837:
	li r5,$1
	sw r5,r2,$-112
; ../cpuex2017/raytracer/min-rt.ml@53:5;53:6
	j @cfg_label_20836
@cfg_label_20836:
	lw r7,r2,$-108
	lw r6,r2,$-112
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-96
; ../cpuex2017/raytracer/min-rt.ml@53:2;53:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@53:2;53:3 ../cpuex2017/raytracer/min-rt.ml@53:5;53:6 ../cpuex2017/raytracer/min-rt.ml@53:11;53:12
	j @cfg_label_20835
@cfg_label_20835:
	li r5,$2
	sw r5,r2,$-104
; ../cpuex2017/raytracer/min-rt.ml@54:5;54:6
	j @cfg_label_20834
@cfg_label_20834:
	lw r7,r2,$-100
	lw r6,r2,$-104
	lw r5,r2,$-68
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@54:2;54:12 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@54:2;54:3 ../cpuex2017/raytracer/min-rt.ml@54:5;54:6 ../cpuex2017/raytracer/min-rt.ml@54:11;54:12
	j @cfg_label_20833
@cfg_label_20833:
	lw r5,r2,$-92
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@53:2;54:12 ::<= ../cpuex2017/raytracer/min-rt.ml@54:2;54:12
	j @cfg_label_20832
@cfg_label_20832:
	lw r5,r2,$-84
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2229:2;2229:30 ::<= ../cpuex2017/raytracer/min-rt.ml@53:2;54:12
	j @cfg_label_20831
@cfg_label_20831:
	li r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20830
@cfg_label_20830:
	lw r6,r2,$-80
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20829
@cfg_label_20829:
	li r5,$1
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20828
@cfg_label_20828:
	lw r6,r2,$-72
	lw r5,r2,$-76
	sub r5,r5,r6
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20827
@cfg_label_20827:
	push r4
	lw r5,r2,$-60
	push r5
	lw r5,r2,$-64
	push r5
	lw r5,r2,$-68
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-40
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2230:29 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_20826
@cfg_label_20826:
	sw r3,r2,$-44
	lw r5,r2,$-56
	sw r5,r3,$0
	lw r5,r2,$-52
	sw r5,r3,$4
	lw r5,r2,$-48
	sw r5,r3,$8
	addi r3,r3,$12
; ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20825
@cfg_label_20825:
	lw r7,r2,$-44
	lw r6,r2,$-24
	lw r5,r31,$32
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:13 ../cpuex2017/raytracer/min-rt.ml@2232:15;2232:20 ../cpuex2017/raytracer/min-rt.ml@2232:26;2232:50
	j @cfg_label_20824
@cfg_label_20824:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51 ::<= ../cpuex2017/raytracer/min-rt.ml@2232:2;2232:51
	j @cfg_label_20823
@cfg_label_20823:
	lw r5,r2,$-28
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2256:2;2259:44 ::<= ../cpuex2017/raytracer/min-rt.ml@2230:2;2232:51
	j @cfg_label_20822
@cfg_label_20822:
	li r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2260:17;2260:18
	j @cfg_label_20821
@cfg_label_20821:
	li r5,$1
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2260:28;2260:29
	j @cfg_label_20820
@cfg_label_20820:
	lw r6,r2,$-20
	lw r5,r2,$-24
	add r5,r5,r6
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2260:23;2260:29 ::= Oadd ../cpuex2017/raytracer/min-rt.ml@2260:23;2260:25 ../cpuex2017/raytracer/min-rt.ml@2260:28;2260:29
	j @cfg_label_20819
@cfg_label_20819:
	lw r7,r2,$-12
	lw r6,r2,$-16
	lw r5,r31,$20
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2260:2;2260:29 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2260:2;2260:15 ../cpuex2017/raytracer/min-rt.ml@2260:17;2260:18 ../cpuex2017/raytracer/min-rt.ml@2260:23;2260:29
	j @cfg_label_20818
@cfg_label_20818:
	lw r5,r2,$-4
	sw r5,r2,$-252
; ../cpuex2017/raytracer/min-rt.ml@2251:2;2260:29 ::<= ../cpuex2017/raytracer/min-rt.ml@2260:2;2260:29
	lw r5,r2,$-252
	addi r1,r1,$252
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-252
	addi r1,r1,$252
	pop r2
	pop r6
	jr r6
@a_9120setup_reflections:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$96
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2266:15;2266:16
	j @cfg_label_20817
	li r5,$0
	sw r5,r2,$-92
; ../cpuex2017/raytracer/min-rt.ml@2266:15;2266:16
	j @cfg_label_20817
@cfg_label_20817:
	lw r6,r2,$-92
	lw r5,r2,$8
	slt r5,r5,r6
	li r6,$1
	xor r5,r5,r6
	sw r5,r2,$-88
; ../cpuex2017/raytracer/min-rt.ml@2266:5;2266:16 ::= Ogeq ../cpuex2017/raytracer/min-rt.ml@2266:5;2266:11 ../cpuex2017/raytracer/min-rt.ml@2266:15;2266:16
	j @cfg_label_20816
@cfg_label_20816:
	li r5,$1
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2266:5;2266:16
	j @cfg_label_20815
@cfg_label_20815:
	lw r5,r2,$-88
	lw r6,r2,$-84
	bne r5,r6,@cfg_label_20812
	j @cfg_label_20811
	j @cfg_label_20813
	j @cfg_label_20814
@cfg_label_20814:
@cfg_label_20812:
	sw r3,r2,$-96
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@cfg_label_20813:
@cfg_label_20811:
	lw r6,r2,$8
	lw r5,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-80
; ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:30 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2267:14;2267:21 ../cpuex2017/raytracer/min-rt.ml@2267:23;2267:29
	j @cfg_label_20810
@cfg_label_20810:
	lw r5,r2,$-80
	lw r5,r5,$40
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[10] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20809
@cfg_label_20809:
	lw r5,r2,$-80
	lw r5,r5,$36
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[9] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20808
@cfg_label_20808:
	lw r5,r2,$-80
	lw r5,r5,$32
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[8] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20807
@cfg_label_20807:
	lw r5,r2,$-80
	lw r5,r5,$28
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[7] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20806
@cfg_label_20806:
	lw r5,r2,$-80
	lw r5,r5,$24
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[6] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20805
@cfg_label_20805:
	lw r5,r2,$-80
	lw r5,r5,$20
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[5] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20804
@cfg_label_20804:
	lw r5,r2,$-80
	lw r5,r5,$16
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[4] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20803
@cfg_label_20803:
	lw r5,r2,$-80
	lw r5,r5,$12
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[3] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20802
@cfg_label_20802:
	lw r5,r2,$-80
	lw r5,r5,$8
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[2] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20801
@cfg_label_20801:
	lw r5,r2,$-80
	lw r5,r5,$4
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[1] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20800
@cfg_label_20800:
	lw r5,r2,$-80
	lw r5,r5,$0
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27 ::= OGetTuple[0] ../cpuex2017/raytracer/min-rt.ml@2268:24;2268:27
	j @cfg_label_20799
@cfg_label_20799:
	li r5,$2
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2268:30;2268:31
	j @cfg_label_20798
@cfg_label_20798:
	lw r5,r2,$-36
	lw r6,r2,$-76
	bne r5,r6,@cfg_label_20795
	j @cfg_label_20794
	j @cfg_label_20796
	j @cfg_label_20797
@cfg_label_20797:
@cfg_label_20795:
	sw r3,r2,$-96
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@cfg_label_20796:
@cfg_label_20794:
	li r5,$0
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_20793
@cfg_label_20793:
	lw r6,r2,$-72
	lw r5,r2,$-16
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2269:16;2269:29 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@272:2;272:14 ../cpuex2017/raytracer/min-rt.ml@272:16;272:17
	j @cfg_label_20792
@cfg_label_20792:
	fmovi f1,$1.000000
	fst f1,r2,$-64
	j @cfg_label_20791
@cfg_label_20791:
	fld f1,r2,$-68
	fld f2,r2,$-64
	flt f1,f2
	bft @emit_label_26251
	li r5,$0
	j @emit_label_26252
@emit_label_26251:
	li r5,$1
@emit_label_26252:
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2269:9;2269:34 ::= Olt lib_tortesia.ml@3:20;3:21 lib_tortesia.ml@3:24;3:25
	j @cfg_label_20790
@cfg_label_20790:
	li r5,$1
	sw r5,r2,$-56
; ../cpuex2017/raytracer/min-rt.ml@2269:9;2269:34
	j @cfg_label_20789
@cfg_label_20789:
	lw r5,r2,$-60
	lw r6,r2,$-56
	bne r5,r6,@cfg_label_20786
	j @cfg_label_20785
	j @cfg_label_20787
	j @cfg_label_20788
@cfg_label_20788:
@cfg_label_20786:
	sw r3,r2,$-96
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@cfg_label_20787:
@cfg_label_20785:
	li r5,$1
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2272:14;2272:15
	j @cfg_label_20784
@cfg_label_20784:
	lw r5,r2,$-40
	lw r6,r2,$-52
	bne r5,r6,@cfg_label_20781
	j @cfg_label_20780
	j @cfg_label_20782
	j @cfg_label_20783
@cfg_label_20782:
@cfg_label_20780:
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
	lw r5,r2,$8
	push r5
	jal @a_9114setup_rect_reflection
	sw r5,r2,$-96
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9 ../cpuex2017/raytracer/min-rt.ml@2273:3;2273:24
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@cfg_label_20783:
@cfg_label_20781:
	li r5,$2
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2274:19;2274:20
	j @cfg_label_20779
@cfg_label_20779:
	lw r5,r2,$-40
	lw r6,r2,$-48
	bne r5,r6,@cfg_label_20776
	j @cfg_label_20775
	j @cfg_label_20777
	j @cfg_label_20778
@cfg_label_20777:
@cfg_label_20775:
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
	lw r5,r2,$8
	push r5
	jal @a_9117setup_surface_reflection
	sw r5,r2,$-96
	addi r1,r1,$48
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9 ../cpuex2017/raytracer/min-rt.ml@2275:3;2275:27
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@cfg_label_20778:
@cfg_label_20776:
	sw r3,r2,$-96
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@2266:2;2279:9
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-96
	addi r1,r1,$96
	pop r2
	pop r6
	jr r6
@a_9122rt:
	mflr r7
	push r7
	push r2
	mov r2,r1
	subi r1,r1,$460
	li r5,$0
	sw r5,r2,$-456
; ../cpuex2017/raytracer/min-rt.ml@2289:13;2289:14
	j @cfg_label_20774
	li r5,$0
	sw r5,r2,$-456
; ../cpuex2017/raytracer/min-rt.ml@2289:13;2289:14
	j @cfg_label_20774
@cfg_label_20774:
	lw r7,r2,$8
	lw r6,r2,$-456
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-8
; ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:25 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2289:1;2289:11 ../cpuex2017/raytracer/min-rt.ml@2289:13;2289:14 ../cpuex2017/raytracer/min-rt.ml@2289:19;2289:25
	j @cfg_label_20773
@cfg_label_20773:
	li r5,$1
	sw r5,r2,$-452
; ../cpuex2017/raytracer/min-rt.ml@2290:13;2290:14
	j @cfg_label_20772
@cfg_label_20772:
	lw r7,r2,$12
	lw r6,r2,$-452
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-16
; ../cpuex2017/raytracer/min-rt.ml@2290:1;2290:25 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2290:1;2290:11 ../cpuex2017/raytracer/min-rt.ml@2290:13;2290:14 ../cpuex2017/raytracer/min-rt.ml@2290:19;2290:25
	j @cfg_label_20771
@cfg_label_20771:
	li r5,$0
	sw r5,r2,$-448
; ../cpuex2017/raytracer/min-rt.ml@2291:15;2291:16
	j @cfg_label_20770
@cfg_label_20770:
	lw r5,r2,$8
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r2,$-444
; ../cpuex2017/raytracer/min-rt.ml@2291:21;2291:31 ::= Oibydiv[2] ../cpuex2017/raytracer/min-rt.ml@2291:21;2291:27
	j @cfg_label_20769
@cfg_label_20769:
	lw r7,r2,$-444
	lw r6,r2,$-448
	lw r5,r31,$232
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-24
; ../cpuex2017/raytracer/min-rt.ml@2291:1;2291:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2291:1;2291:13 ../cpuex2017/raytracer/min-rt.ml@2291:15;2291:16 ../cpuex2017/raytracer/min-rt.ml@2291:21;2291:31
	j @cfg_label_20768
@cfg_label_20768:
	li r5,$1
	sw r5,r2,$-440
; ../cpuex2017/raytracer/min-rt.ml@2292:15;2292:16
	j @cfg_label_20767
@cfg_label_20767:
	lw r5,r2,$12
	slti r6,r5,$0
	add r5,r5,r6
	sra r5,r5,$1
	sw r5,r2,$-436
; ../cpuex2017/raytracer/min-rt.ml@2292:21;2292:31 ::= Oibydiv[2] ../cpuex2017/raytracer/min-rt.ml@2292:21;2292:27
	j @cfg_label_20766
@cfg_label_20766:
	lw r7,r2,$-436
	lw r6,r2,$-440
	lw r5,r31,$232
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-32
; ../cpuex2017/raytracer/min-rt.ml@2292:1;2292:31 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2292:1;2292:13 ../cpuex2017/raytracer/min-rt.ml@2292:15;2292:16 ../cpuex2017/raytracer/min-rt.ml@2292:21;2292:31
	j @cfg_label_20765
@cfg_label_20765:
	li r5,$0
	sw r5,r2,$-424
; ../cpuex2017/raytracer/min-rt.ml@2293:13;2293:14
	j @cfg_label_20764
@cfg_label_20764:
	fmovi f1,$128.000000
	fst f1,r2,$-432
	j @cfg_label_20763
@cfg_label_20763:
	push r4
	lw r5,r2,$8
	push r5
	jal float_of_int
	sw r5,r2,$-428
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2293:28;2293:47 ../cpuex2017/raytracer/min-rt.ml@2293:28;2293:40
	j @cfg_label_20762
@cfg_label_20762:
	fld f1,r2,$-432
	fld f2,r2,$-428
	fdiv f1,f1,f2
	fst f1,r2,$-420
; ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:47 ::= Ofdiv ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:24 ../cpuex2017/raytracer/min-rt.ml@2293:28;2293:47
	j @cfg_label_20761
@cfg_label_20761:
	lw r7,r2,$-420
	lw r6,r2,$-424
	lw r5,r31,$220
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-40
; ../cpuex2017/raytracer/min-rt.ml@2293:1;2293:47 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@2293:1;2293:11 ../cpuex2017/raytracer/min-rt.ml@2293:13;2293:14 ../cpuex2017/raytracer/min-rt.ml@2293:19;2293:47
	j @cfg_label_20760
@cfg_label_20760:
	li r5,$0
	sw r5,r2,$-416
; ../cpuex2017/raytracer/min-rt.ml@2102:38;2102:39
	j @cfg_label_20759
@cfg_label_20759:
	lw r6,r2,$-416
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-412
; ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:36 ../cpuex2017/raytracer/min-rt.ml@2102:38;2102:39
	j @cfg_label_20758
@cfg_label_20758:
	push r4
	jal @a_9064create_pixel
	sw r5,r2,$-408
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	j @cfg_label_20757
@cfg_label_20757:
	lw r6,r2,$-408
	lw r5,r2,$-412
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26254
@emit_label_26253:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26253
@emit_label_26254:
	mov r5,r7
	sw r5,r2,$-392
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	j @cfg_label_20756
@cfg_label_20756:
	li r5,$0
	sw r5,r2,$-404
; ../cpuex2017/raytracer/min-rt.ml@2103:39;2103:40
	j @cfg_label_20755
@cfg_label_20755:
	lw r6,r2,$-404
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-400
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:37 ../cpuex2017/raytracer/min-rt.ml@2103:39;2103:40
	j @cfg_label_20754
@cfg_label_20754:
	li r5,$2
	sw r5,r2,$-396
; ../cpuex2017/raytracer/min-rt.ml@2103:42;2103:43
	j @cfg_label_20753
@cfg_label_20753:
	lw r6,r2,$-396
	lw r5,r2,$-400
	sub r5,r5,r6
	sw r5,r2,$-388
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41 ../cpuex2017/raytracer/min-rt.ml@2103:42;2103:43
	j @cfg_label_20752
@cfg_label_20752:
	push r4
	lw r5,r2,$-388
	push r5
	lw r5,r2,$-392
	push r5
	jal @a_9066init_line_elements
	sw r5,r2,$-112
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2294:12;2294:31 ../cpuex2017/raytracer/min-rt.ml@2103:2;2103:20
	j @cfg_label_20751
@cfg_label_20751:
	li r5,$0
	sw r5,r2,$-384
; ../cpuex2017/raytracer/min-rt.ml@2102:38;2102:39
	j @cfg_label_20750
@cfg_label_20750:
	lw r6,r2,$-384
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-380
; ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:36 ../cpuex2017/raytracer/min-rt.ml@2102:38;2102:39
	j @cfg_label_20749
@cfg_label_20749:
	push r4
	jal @a_9064create_pixel
	sw r5,r2,$-376
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	j @cfg_label_20748
@cfg_label_20748:
	lw r6,r2,$-376
	lw r5,r2,$-380
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26256
@emit_label_26255:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26255
@emit_label_26256:
	mov r5,r7
	sw r5,r2,$-360
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	j @cfg_label_20747
@cfg_label_20747:
	li r5,$0
	sw r5,r2,$-372
; ../cpuex2017/raytracer/min-rt.ml@2103:39;2103:40
	j @cfg_label_20746
@cfg_label_20746:
	lw r6,r2,$-372
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-368
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:37 ../cpuex2017/raytracer/min-rt.ml@2103:39;2103:40
	j @cfg_label_20745
@cfg_label_20745:
	li r5,$2
	sw r5,r2,$-364
; ../cpuex2017/raytracer/min-rt.ml@2103:42;2103:43
	j @cfg_label_20744
@cfg_label_20744:
	lw r6,r2,$-364
	lw r5,r2,$-368
	sub r5,r5,r6
	sw r5,r2,$-356
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41 ../cpuex2017/raytracer/min-rt.ml@2103:42;2103:43
	j @cfg_label_20743
@cfg_label_20743:
	push r4
	lw r5,r2,$-356
	push r5
	lw r5,r2,$-360
	push r5
	jal @a_9066init_line_elements
	sw r5,r2,$-108
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2295:12;2295:31 ../cpuex2017/raytracer/min-rt.ml@2103:2;2103:20
	j @cfg_label_20742
@cfg_label_20742:
	li r5,$0
	sw r5,r2,$-352
; ../cpuex2017/raytracer/min-rt.ml@2102:38;2102:39
	j @cfg_label_20741
@cfg_label_20741:
	lw r6,r2,$-352
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-348
; ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:36 ../cpuex2017/raytracer/min-rt.ml@2102:38;2102:39
	j @cfg_label_20740
@cfg_label_20740:
	push r4
	jal @a_9064create_pixel
	sw r5,r2,$-344
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:54
	j @cfg_label_20739
@cfg_label_20739:
	lw r6,r2,$-344
	lw r5,r2,$-348
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_26258
@emit_label_26257:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_26257
@emit_label_26258:
	mov r5,r7
	sw r5,r2,$-328
; ../cpuex2017/raytracer/min-rt.ml@2102:13;2102:57 ::= OArrCrt ../cpuex2017/raytracer/min-rt.ml@2102:26;2102:40 ../cpuex2017/raytracer/min-rt.ml@2102:42;2102:56
	j @cfg_label_20738
@cfg_label_20738:
	li r5,$0
	sw r5,r2,$-340
; ../cpuex2017/raytracer/min-rt.ml@2103:39;2103:40
	j @cfg_label_20737
@cfg_label_20737:
	lw r6,r2,$-340
	lw r5,r31,$244
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-336
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:37 ../cpuex2017/raytracer/min-rt.ml@2103:39;2103:40
	j @cfg_label_20736
@cfg_label_20736:
	li r5,$2
	sw r5,r2,$-332
; ../cpuex2017/raytracer/min-rt.ml@2103:42;2103:43
	j @cfg_label_20735
@cfg_label_20735:
	lw r6,r2,$-332
	lw r5,r2,$-336
	sub r5,r5,r6
	sw r5,r2,$-324
; ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:43 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2103:27;2103:41 ../cpuex2017/raytracer/min-rt.ml@2103:42;2103:43
	j @cfg_label_20734
@cfg_label_20734:
	push r4
	lw r5,r2,$-324
	push r5
	lw r5,r2,$-328
	push r5
	jal @a_9066init_line_elements
	sw r5,r2,$-104
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2296:12;2296:31 ../cpuex2017/raytracer/min-rt.ml@2103:2;2103:20
	j @cfg_label_20733
@cfg_label_20733:
	push r4
	jal @a_8768read_screen_settings
	sw r5,r2,$-252
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@710:3;710:25 ../cpuex2017/raytracer/min-rt.ml@710:3;710:23
	j @cfg_label_20732
@cfg_label_20732:
	push r4
	jal @a_8770read_light
	sw r5,r2,$-260
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@711:3;711:15 ../cpuex2017/raytracer/min-rt.ml@711:3;711:13
	j @cfg_label_20731
@cfg_label_20731:
	li r5,$0
	sw r5,r2,$-296
; ../cpuex2017/raytracer/min-rt.ml@676:14;676:15
	j @cfg_label_20730
@cfg_label_20730:
	li r5,$1
	sw r5,r2,$-320
; ../cpuex2017/raytracer/min-rt.ml@667:5;667:11
	j @cfg_label_20729
@cfg_label_20729:
	li r5,$1
	sw r5,r2,$-316
; ../cpuex2017/raytracer/min-rt.ml@667:5;667:11
	j @cfg_label_20728
@cfg_label_20728:
	lw r5,r2,$-320
	lw r6,r2,$-316
	bne r5,r6,@cfg_label_20660
	j @cfg_label_20659
	j @cfg_label_20661
	j @cfg_label_20662
@cfg_label_20662:
@cfg_label_20660:
	sw r3,r2,$-268
	addi r3,r3,$0
; ../cpuex2017/raytracer/min-rt.ml@712:3;712:21
	j @cfg_label_20727
@cfg_label_20661:
@cfg_label_20659:
	push r4
	lw r5,r2,$-296
	push r5
	jal @a_8775read_nth_object
	sw r5,r2,$-312
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24 ../cpuex2017/raytracer/min-rt.ml@668:7;668:22
	j @cfg_label_20658
@cfg_label_20658:
	li r5,$1
	sw r5,r2,$-308
; ../cpuex2017/raytracer/min-rt.ml@668:7;668:24
	j @cfg_label_20657
@cfg_label_20657:
	lw r5,r2,$-312
	lw r6,r2,$-308
	bne r5,r6,@cfg_label_20654
	j @cfg_label_20653
	j @cfg_label_20655
	j @cfg_label_20656
@cfg_label_20656:
@cfg_label_20654:
	li r5,$0
	sw r5,r2,$-300
; ../cpuex2017/raytracer/min-rt.ml@671:17;671:18
	j @cfg_label_20652
@cfg_label_20652:
	lw r7,r2,$-296
	lw r6,r2,$-300
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-268
; ../cpuex2017/raytracer/min-rt.ml@712:3;712:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@671:6;671:15 ../cpuex2017/raytracer/min-rt.ml@671:17;671:18 ../cpuex2017/raytracer/min-rt.ml@671:23;671:24
	j @cfg_label_20726
@cfg_label_20655:
@cfg_label_20653:
	li r5,$1
	sw r5,r2,$-304
; ../cpuex2017/raytracer/min-rt.ml@669:19;669:24
	j @cfg_label_20651
@cfg_label_20651:
	push r4
	lw r5,r2,$-304
	push r5
	jal @a_8777read_object
	sw r5,r2,$-268
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@712:3;712:21 ../cpuex2017/raytracer/min-rt.ml@669:6;669:17
	j @cfg_label_20725
@cfg_label_20727:
@cfg_label_20726:
@cfg_label_20725:
	li r5,$0
	sw r5,r2,$-292
; ../cpuex2017/raytracer/min-rt.ml@713:20;713:21
	j @cfg_label_20724
@cfg_label_20724:
	push r4
	lw r5,r2,$-292
	push r5
	jal @a_8785read_and_network
	sw r5,r2,$-276
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@713:3;713:21 ../cpuex2017/raytracer/min-rt.ml@713:3;713:19
	j @cfg_label_20723
@cfg_label_20723:
	li r5,$0
	sw r5,r2,$-284
; ../cpuex2017/raytracer/min-rt.ml@714:11;714:12
	j @cfg_label_20722
@cfg_label_20722:
	li r5,$0
	sw r5,r2,$-288
; ../cpuex2017/raytracer/min-rt.ml@714:33;714:34
	j @cfg_label_20721
@cfg_label_20721:
	push r4
	lw r5,r2,$-288
	push r5
	jal @a_8783read_or_network
	sw r5,r2,$-280
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@714:17;714:34 ../cpuex2017/raytracer/min-rt.ml@714:17;714:32
	j @cfg_label_20720
@cfg_label_20720:
	lw r7,r2,$-280
	lw r6,r2,$-284
	lw r5,r31,$364
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-272
; ../cpuex2017/raytracer/min-rt.ml@714:3;714:34 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@714:3;714:9 ../cpuex2017/raytracer/min-rt.ml@714:11;714:12 ../cpuex2017/raytracer/min-rt.ml@714:17;714:34
	j @cfg_label_20719
@cfg_label_20719:
	lw r5,r2,$-272
	sw r5,r2,$-264
; ../cpuex2017/raytracer/min-rt.ml@713:3;714:34 ::<= ../cpuex2017/raytracer/min-rt.ml@714:3;714:34
	j @cfg_label_20718
@cfg_label_20718:
	lw r5,r2,$-264
	sw r5,r2,$-256
; ../cpuex2017/raytracer/min-rt.ml@712:3;714:34 ::<= ../cpuex2017/raytracer/min-rt.ml@713:3;714:34
	j @cfg_label_20717
@cfg_label_20717:
	lw r5,r2,$-256
	sw r5,r2,$-248
; ../cpuex2017/raytracer/min-rt.ml@711:3;714:34 ::<= ../cpuex2017/raytracer/min-rt.ml@712:3;714:34
	j @cfg_label_20716
@cfg_label_20716:
	lw r5,r2,$-248
	sw r5,r2,$-48
; ../cpuex2017/raytracer/min-rt.ml@2297:1;2297:17 ::<= ../cpuex2017/raytracer/min-rt.ml@711:3;714:34
	j @cfg_label_20715
@cfg_label_20715:
	push r4
	jal @a_9030write_ppm_header
	sw r5,r2,$-56
	addi r1,r1,$0
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2298:1;2298:20 ../cpuex2017/raytracer/min-rt.ml@2298:1;2298:17
	j @cfg_label_20714
@cfg_label_20714:
	li r5,$4
	sw r5,r2,$-244
; ../cpuex2017/raytracer/min-rt.ml@2217:17;2217:18
	j @cfg_label_20713
@cfg_label_20713:
	push r4
	lw r5,r2,$-244
	push r5
	jal @a_9098create_dirvecs
	sw r5,r2,$-216
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2217:2;2217:18 ../cpuex2017/raytracer/min-rt.ml@2217:2;2217:16
	j @cfg_label_20712
@cfg_label_20712:
	li r5,$9
	sw r5,r2,$-240
; ../cpuex2017/raytracer/min-rt.ml@2218:19;2218:20
	j @cfg_label_20711
@cfg_label_20711:
	li r5,$0
	sw r5,r2,$-236
; ../cpuex2017/raytracer/min-rt.ml@2218:21;2218:22
	j @cfg_label_20710
@cfg_label_20710:
	li r5,$0
	sw r5,r2,$-232
; ../cpuex2017/raytracer/min-rt.ml@2218:23;2218:24
	j @cfg_label_20709
@cfg_label_20709:
	push r4
	lw r5,r2,$-232
	push r5
	lw r5,r2,$-236
	push r5
	lw r5,r2,$-240
	push r5
	jal @a_9089calc_dirvec_rows
	sw r5,r2,$-224
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2218:2;2218:24 ../cpuex2017/raytracer/min-rt.ml@2218:2;2218:18
	j @cfg_label_20708
@cfg_label_20708:
	li r5,$4
	sw r5,r2,$-228
; ../cpuex2017/raytracer/min-rt.ml@2219:24;2219:25
	j @cfg_label_20707
@cfg_label_20707:
	push r4
	lw r5,r2,$-228
	push r5
	jal @a_9103init_vecset_constants
	sw r5,r2,$-220
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2219:2;2219:25 ../cpuex2017/raytracer/min-rt.ml@2219:2;2219:23
	j @cfg_label_20706
@cfg_label_20706:
	lw r5,r2,$-220
	sw r5,r2,$-212
; ../cpuex2017/raytracer/min-rt.ml@2218:2;2219:25 ::<= ../cpuex2017/raytracer/min-rt.ml@2219:2;2219:25
	j @cfg_label_20705
@cfg_label_20705:
	lw r5,r2,$-212
	sw r5,r2,$-64
; ../cpuex2017/raytracer/min-rt.ml@2299:1;2299:15 ::<= ../cpuex2017/raytracer/min-rt.ml@2218:2;2219:25
	j @cfg_label_20704
@cfg_label_20704:
	li r5,$0
	sw r5,r2,$-204
; ../cpuex2017/raytracer/min-rt.ml@71:8;71:9
	j @cfg_label_20703
@cfg_label_20703:
	li r5,$0
	sw r5,r2,$-208
; ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_20702
@cfg_label_20702:
	lw r6,r2,$-208
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-200
; ../cpuex2017/raytracer/min-rt.ml@71:14;71:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@71:14;71:17 ../cpuex2017/raytracer/min-rt.ml@71:19;71:20
	j @cfg_label_20701
@cfg_label_20701:
	lw r7,r2,$-200
	lw r6,r2,$-204
	lw r5,r31,$84
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-164
; ../cpuex2017/raytracer/min-rt.ml@71:2;71:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@71:2;71:6 ../cpuex2017/raytracer/min-rt.ml@71:8;71:9 ../cpuex2017/raytracer/min-rt.ml@71:14;71:21
	j @cfg_label_20700
@cfg_label_20700:
	li r5,$1
	sw r5,r2,$-192
; ../cpuex2017/raytracer/min-rt.ml@72:8;72:9
	j @cfg_label_20699
@cfg_label_20699:
	li r5,$1
	sw r5,r2,$-196
; ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_20698
@cfg_label_20698:
	lw r6,r2,$-196
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-188
; ../cpuex2017/raytracer/min-rt.ml@72:14;72:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@72:14;72:17 ../cpuex2017/raytracer/min-rt.ml@72:19;72:20
	j @cfg_label_20697
@cfg_label_20697:
	lw r7,r2,$-188
	lw r6,r2,$-192
	lw r5,r31,$84
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-172
; ../cpuex2017/raytracer/min-rt.ml@72:2;72:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@72:2;72:6 ../cpuex2017/raytracer/min-rt.ml@72:8;72:9 ../cpuex2017/raytracer/min-rt.ml@72:14;72:21
	j @cfg_label_20696
@cfg_label_20696:
	li r5,$2
	sw r5,r2,$-180
; ../cpuex2017/raytracer/min-rt.ml@73:8;73:9
	j @cfg_label_20695
@cfg_label_20695:
	li r5,$2
	sw r5,r2,$-184
; ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_20694
@cfg_label_20694:
	lw r6,r2,$-184
	lw r5,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-176
; ../cpuex2017/raytracer/min-rt.ml@73:14;73:21 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@73:14;73:17 ../cpuex2017/raytracer/min-rt.ml@73:19;73:20
	j @cfg_label_20693
@cfg_label_20693:
	lw r7,r2,$-176
	lw r6,r2,$-180
	lw r5,r31,$84
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r2,$-168
; ../cpuex2017/raytracer/min-rt.ml@73:2;73:21 ::= OArrWrite ../cpuex2017/raytracer/min-rt.ml@73:2;73:6 ../cpuex2017/raytracer/min-rt.ml@73:8;73:9 ../cpuex2017/raytracer/min-rt.ml@73:14;73:21
	j @cfg_label_20692
@cfg_label_20692:
	lw r5,r2,$-168
	sw r5,r2,$-160
; ../cpuex2017/raytracer/min-rt.ml@72:2;73:21 ::<= ../cpuex2017/raytracer/min-rt.ml@73:2;73:21
	j @cfg_label_20691
@cfg_label_20691:
	lw r5,r2,$-160
	sw r5,r2,$-72
; ../cpuex2017/raytracer/min-rt.ml@2300:1;2300:34 ::<= ../cpuex2017/raytracer/min-rt.ml@72:2;73:21
	j @cfg_label_20690
@cfg_label_20690:
	li r5,$0
	sw r5,r2,$-156
; ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20689
@cfg_label_20689:
	lw r6,r2,$-156
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-152
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:47 ../cpuex2017/raytracer/min-rt.ml@1095:49;1095:50
	j @cfg_label_20688
@cfg_label_20688:
	li r5,$1
	sw r5,r2,$-148
; ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20687
@cfg_label_20687:
	lw r6,r2,$-148
	lw r5,r2,$-152
	sub r5,r5,r6
	sw r5,r2,$-144
; ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:55 ::= Osub ../cpuex2017/raytracer/min-rt.ml@1095:38;1095:51 ../cpuex2017/raytracer/min-rt.ml@1095:54;1095:55
	j @cfg_label_20686
@cfg_label_20686:
	push r4
	lw r5,r2,$-144
	push r5
	lw r5,r31,$76
	push r5
	lw r5,r31,$84
	push r5
	jal @a_8882iter_setup_dirvec_constants
	sw r5,r2,$-80
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2301:1;2301:36 ../cpuex2017/raytracer/min-rt.ml@1095:2;1095:29
	j @cfg_label_20685
@cfg_label_20685:
	li r5,$0
	sw r5,r2,$-140
; ../cpuex2017/raytracer/min-rt.ml@2302:31;2302:32
	j @cfg_label_20684
@cfg_label_20684:
	lw r6,r2,$-140
	lw r5,r31,$496
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r2,$-136
; ../cpuex2017/raytracer/min-rt.ml@2302:20;2302:33 ::= OArrRead ../cpuex2017/raytracer/min-rt.ml@2302:20;2302:29 ../cpuex2017/raytracer/min-rt.ml@2302:31;2302:32
	j @cfg_label_20683
@cfg_label_20683:
	li r5,$1
	sw r5,r2,$-132
; ../cpuex2017/raytracer/min-rt.ml@2302:36;2302:37
	j @cfg_label_20682
@cfg_label_20682:
	lw r6,r2,$-132
	lw r5,r2,$-136
	sub r5,r5,r6
	sw r5,r2,$-128
; ../cpuex2017/raytracer/min-rt.ml@2302:20;2302:37 ::= Osub ../cpuex2017/raytracer/min-rt.ml@2302:20;2302:33 ../cpuex2017/raytracer/min-rt.ml@2302:36;2302:37
	j @cfg_label_20681
@cfg_label_20681:
	push r4
	lw r5,r2,$-128
	push r5
	jal @a_9120setup_reflections
	sw r5,r2,$-88
	addi r1,r1,$4
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2302:1;2302:38 ../cpuex2017/raytracer/min-rt.ml@2302:1;2302:18
	j @cfg_label_20680
@cfg_label_20680:
	li r5,$0
	sw r5,r2,$-124
; ../cpuex2017/raytracer/min-rt.ml@2303:19;2303:20
	j @cfg_label_20679
@cfg_label_20679:
	li r5,$0
	sw r5,r2,$-120
; ../cpuex2017/raytracer/min-rt.ml@2303:21;2303:22
	j @cfg_label_20678
@cfg_label_20678:
	push r4
	lw r5,r2,$-120
	push r5
	lw r5,r2,$-124
	push r5
	lw r5,r2,$-108
	push r5
	jal @a_9046pretrace_line
	sw r5,r2,$-96
	addi r1,r1,$12
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2303:1;2303:22 ../cpuex2017/raytracer/min-rt.ml@2303:1;2303:14
	j @cfg_label_20677
@cfg_label_20677:
	li r5,$0
	sw r5,r2,$-116
; ../cpuex2017/raytracer/min-rt.ml@2304:11;2304:12
	j @cfg_label_20676
@cfg_label_20676:
	li r5,$2
	sw r5,r2,$-100
; ../cpuex2017/raytracer/min-rt.ml@2304:27;2304:28
	j @cfg_label_20675
@cfg_label_20675:
	push r4
	lw r5,r2,$-100
	push r5
	lw r5,r2,$-104
	push r5
	lw r5,r2,$-108
	push r5
	lw r5,r2,$-112
	push r5
	lw r5,r2,$-116
	push r5
	jal @a_9056scan_line
	sw r5,r2,$-92
	addi r1,r1,$20
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2304:1;2304:28 ../cpuex2017/raytracer/min-rt.ml@2304:1;2304:10
	j @cfg_label_20674
@cfg_label_20674:
	lw r5,r2,$-92
	sw r5,r2,$-84
; ../cpuex2017/raytracer/min-rt.ml@2303:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2304:1;2304:28
	j @cfg_label_20673
@cfg_label_20673:
	lw r5,r2,$-84
	sw r5,r2,$-76
; ../cpuex2017/raytracer/min-rt.ml@2302:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2303:1;2304:28
	j @cfg_label_20672
@cfg_label_20672:
	lw r5,r2,$-76
	sw r5,r2,$-68
; ../cpuex2017/raytracer/min-rt.ml@2301:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2302:1;2304:28
	j @cfg_label_20671
@cfg_label_20671:
	lw r5,r2,$-68
	sw r5,r2,$-60
; ../cpuex2017/raytracer/min-rt.ml@2300:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2301:1;2304:28
	j @cfg_label_20670
@cfg_label_20670:
	lw r5,r2,$-60
	sw r5,r2,$-52
; ../cpuex2017/raytracer/min-rt.ml@2299:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2300:1;2304:28
	j @cfg_label_20669
@cfg_label_20669:
	lw r5,r2,$-52
	sw r5,r2,$-44
; ../cpuex2017/raytracer/min-rt.ml@2298:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2299:1;2304:28
	j @cfg_label_20668
@cfg_label_20668:
	lw r5,r2,$-44
	sw r5,r2,$-36
; ../cpuex2017/raytracer/min-rt.ml@2294:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2298:1;2304:28
	j @cfg_label_20667
@cfg_label_20667:
	lw r5,r2,$-36
	sw r5,r2,$-28
; ../cpuex2017/raytracer/min-rt.ml@2293:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2294:1;2304:28
	j @cfg_label_20666
@cfg_label_20666:
	lw r5,r2,$-28
	sw r5,r2,$-20
; ../cpuex2017/raytracer/min-rt.ml@2292:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2293:1;2304:28
	j @cfg_label_20665
@cfg_label_20665:
	lw r5,r2,$-20
	sw r5,r2,$-12
; ../cpuex2017/raytracer/min-rt.ml@2291:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2292:1;2304:28
	j @cfg_label_20664
@cfg_label_20664:
	lw r5,r2,$-12
	sw r5,r2,$-4
; ../cpuex2017/raytracer/min-rt.ml@2290:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2291:1;2304:28
	j @cfg_label_20663
@cfg_label_20663:
	lw r5,r2,$-4
	sw r5,r2,$-460
; ../cpuex2017/raytracer/min-rt.ml@2289:1;2304:28 ::<= ../cpuex2017/raytracer/min-rt.ml@2290:1;2304:28
	lw r5,r2,$-460
	addi r1,r1,$460
	pop r2
	pop r6
	jr r6
	lw r5,r2,$-460
	addi r1,r1,$460
	pop r2
	pop r6
	jr r6
main:
	mflr r7
	push r7
	mov r31,r3
	addi r3,r3,$1280
	push r2
	mov r2,r1
	subi r1,r1,$4
	li r5,$0
	sw r5,r31,$1276
; lib_tortesia.ml@1:12;1:13
	j @cfg_label_20650
	li r5,$0
	sw r5,r31,$1276
; lib_tortesia.ml@1:12;1:13
	j @cfg_label_20650
@cfg_label_20650:
	li r5,$24
	sw r5,r31,$1272
; lib_tortesia.ml@21:25;21:27
	j @cfg_label_20649
@cfg_label_20649:
	fmovi f1,$0.000000
	fst f1,r31,$1268
	j @cfg_label_20648
@cfg_label_20648:
	lw r6,r31,$1268
	lw r5,r31,$1272
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25882
@emit_label_25881:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25881
@emit_label_25882:
	mov r5,r7
	sw r5,r31,$1264
; lib_tortesia.ml@21:12;21:31 ::= OArrCrt lib_tortesia.ml@21:25;21:27 lib_tortesia.ml@21:28;21:31
	j @cfg_label_20647
@cfg_label_20647:
	li r5,$24
	sw r5,r31,$1260
; lib_tortesia.ml@22:25;22:27
	j @cfg_label_20646
@cfg_label_20646:
	fmovi f1,$0.000000
	fst f1,r31,$1256
	j @cfg_label_20645
@cfg_label_20645:
	lw r6,r31,$1256
	lw r5,r31,$1260
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25884
@emit_label_25883:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25883
@emit_label_25884:
	mov r5,r7
	sw r5,r31,$1252
; lib_tortesia.ml@22:12;22:31 ::= OArrCrt lib_tortesia.ml@22:25;22:27 lib_tortesia.ml@22:28;22:31
	j @cfg_label_20644
@cfg_label_20644:
	li r5,$0
	sw r5,r31,$1248
; lib_tortesia.ml@25:7;25:8
	j @cfg_label_20643
@cfg_label_20643:
	fmovi f1,$1.000000
	fst f1,r31,$1244
	j @cfg_label_20642
@cfg_label_20642:
	lw r7,r31,$1244
	lw r6,r31,$1248
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1240
; lib_tortesia.ml@25:0;25:16 ::= OArrWrite lib_tortesia.ml@25:0;25:5 lib_tortesia.ml@25:7;25:8 lib_tortesia.ml@25:13;25:16
	j @cfg_label_20641
@cfg_label_20641:
	li r5,$1
	sw r5,r31,$1236
; lib_tortesia.ml@26:7;26:8
	j @cfg_label_20640
@cfg_label_20640:
	fmovi f1,$0.500000
	fst f1,r31,$1232
	j @cfg_label_20639
@cfg_label_20639:
	lw r7,r31,$1232
	lw r6,r31,$1236
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1228
; lib_tortesia.ml@26:0;26:16 ::= OArrWrite lib_tortesia.ml@26:0;26:5 lib_tortesia.ml@26:7;26:8 lib_tortesia.ml@26:13;26:16
	j @cfg_label_20638
@cfg_label_20638:
	li r5,$2
	sw r5,r31,$1224
; lib_tortesia.ml@27:7;27:8
	j @cfg_label_20637
@cfg_label_20637:
	fmovi f1,$0.250000
	fst f1,r31,$1220
	j @cfg_label_20636
@cfg_label_20636:
	lw r7,r31,$1220
	lw r6,r31,$1224
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1216
; lib_tortesia.ml@27:0;27:17 ::= OArrWrite lib_tortesia.ml@27:0;27:5 lib_tortesia.ml@27:7;27:8 lib_tortesia.ml@27:13;27:17
	j @cfg_label_20635
@cfg_label_20635:
	li r5,$3
	sw r5,r31,$1212
; lib_tortesia.ml@28:7;28:8
	j @cfg_label_20634
@cfg_label_20634:
	fmovi f1,$0.125000
	fst f1,r31,$1208
	j @cfg_label_20633
@cfg_label_20633:
	lw r7,r31,$1208
	lw r6,r31,$1212
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1204
; lib_tortesia.ml@28:0;28:18 ::= OArrWrite lib_tortesia.ml@28:0;28:5 lib_tortesia.ml@28:7;28:8 lib_tortesia.ml@28:13;28:18
	j @cfg_label_20632
@cfg_label_20632:
	li r5,$4
	sw r5,r31,$1200
; lib_tortesia.ml@29:7;29:8
	j @cfg_label_20631
@cfg_label_20631:
	fmovi f1,$0.062500
	fst f1,r31,$1196
	j @cfg_label_20630
@cfg_label_20630:
	lw r7,r31,$1196
	lw r6,r31,$1200
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1192
; lib_tortesia.ml@29:0;29:19 ::= OArrWrite lib_tortesia.ml@29:0;29:5 lib_tortesia.ml@29:7;29:8 lib_tortesia.ml@29:13;29:19
	j @cfg_label_20629
@cfg_label_20629:
	li r5,$5
	sw r5,r31,$1188
; lib_tortesia.ml@30:7;30:8
	j @cfg_label_20628
@cfg_label_20628:
	fmovi f1,$0.031250
	fst f1,r31,$1184
	j @cfg_label_20627
@cfg_label_20627:
	lw r7,r31,$1184
	lw r6,r31,$1188
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1180
; lib_tortesia.ml@30:0;30:20 ::= OArrWrite lib_tortesia.ml@30:0;30:5 lib_tortesia.ml@30:7;30:8 lib_tortesia.ml@30:13;30:20
	j @cfg_label_20626
@cfg_label_20626:
	li r5,$6
	sw r5,r31,$1176
; lib_tortesia.ml@31:7;31:8
	j @cfg_label_20625
@cfg_label_20625:
	fmovi f1,$0.015625
	fst f1,r31,$1172
	j @cfg_label_20624
@cfg_label_20624:
	lw r7,r31,$1172
	lw r6,r31,$1176
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1168
; lib_tortesia.ml@31:0;31:21 ::= OArrWrite lib_tortesia.ml@31:0;31:5 lib_tortesia.ml@31:7;31:8 lib_tortesia.ml@31:13;31:21
	j @cfg_label_20623
@cfg_label_20623:
	li r5,$7
	sw r5,r31,$1164
; lib_tortesia.ml@32:7;32:8
	j @cfg_label_20622
@cfg_label_20622:
	fmovi f1,$0.007812
	fst f1,r31,$1160
	j @cfg_label_20621
@cfg_label_20621:
	lw r7,r31,$1160
	lw r6,r31,$1164
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1156
; lib_tortesia.ml@32:0;32:22 ::= OArrWrite lib_tortesia.ml@32:0;32:5 lib_tortesia.ml@32:7;32:8 lib_tortesia.ml@32:13;32:22
	j @cfg_label_20620
@cfg_label_20620:
	li r5,$8
	sw r5,r31,$1152
; lib_tortesia.ml@33:7;33:8
	j @cfg_label_20619
@cfg_label_20619:
	fmovi f1,$0.003906
	fst f1,r31,$1148
	j @cfg_label_20618
@cfg_label_20618:
	lw r7,r31,$1148
	lw r6,r31,$1152
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1144
; lib_tortesia.ml@33:0;33:23 ::= OArrWrite lib_tortesia.ml@33:0;33:5 lib_tortesia.ml@33:7;33:8 lib_tortesia.ml@33:13;33:23
	j @cfg_label_20617
@cfg_label_20617:
	li r5,$9
	sw r5,r31,$1140
; lib_tortesia.ml@34:7;34:8
	j @cfg_label_20616
@cfg_label_20616:
	fmovi f1,$0.001953
	fst f1,r31,$1136
	j @cfg_label_20615
@cfg_label_20615:
	lw r7,r31,$1136
	lw r6,r31,$1140
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1132
; lib_tortesia.ml@34:0;34:24 ::= OArrWrite lib_tortesia.ml@34:0;34:5 lib_tortesia.ml@34:7;34:8 lib_tortesia.ml@34:13;34:24
	j @cfg_label_20614
@cfg_label_20614:
	li r5,$10
	sw r5,r31,$1128
; lib_tortesia.ml@35:7;35:9
	j @cfg_label_20613
@cfg_label_20613:
	fmovi f1,$0.000977
	fst f1,r31,$1124
	j @cfg_label_20612
@cfg_label_20612:
	lw r7,r31,$1124
	lw r6,r31,$1128
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1120
; lib_tortesia.ml@35:0;35:26 ::= OArrWrite lib_tortesia.ml@35:0;35:5 lib_tortesia.ml@35:7;35:9 lib_tortesia.ml@35:14;35:26
	j @cfg_label_20611
@cfg_label_20611:
	li r5,$11
	sw r5,r31,$1116
; lib_tortesia.ml@36:7;36:9
	j @cfg_label_20610
@cfg_label_20610:
	fmovi f1,$0.000488
	fst f1,r31,$1112
	j @cfg_label_20609
@cfg_label_20609:
	lw r7,r31,$1112
	lw r6,r31,$1116
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1108
; lib_tortesia.ml@36:0;36:27 ::= OArrWrite lib_tortesia.ml@36:0;36:5 lib_tortesia.ml@36:7;36:9 lib_tortesia.ml@36:14;36:27
	j @cfg_label_20608
@cfg_label_20608:
	li r5,$12
	sw r5,r31,$1104
; lib_tortesia.ml@37:7;37:9
	j @cfg_label_20607
@cfg_label_20607:
	fmovi f1,$0.000244
	fst f1,r31,$1100
	j @cfg_label_20606
@cfg_label_20606:
	lw r7,r31,$1100
	lw r6,r31,$1104
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1096
; lib_tortesia.ml@37:0;37:28 ::= OArrWrite lib_tortesia.ml@37:0;37:5 lib_tortesia.ml@37:7;37:9 lib_tortesia.ml@37:14;37:28
	j @cfg_label_20605
@cfg_label_20605:
	li r5,$13
	sw r5,r31,$1092
; lib_tortesia.ml@38:7;38:9
	j @cfg_label_20604
@cfg_label_20604:
	fmovi f1,$0.000122
	fst f1,r31,$1088
	j @cfg_label_20603
@cfg_label_20603:
	lw r7,r31,$1088
	lw r6,r31,$1092
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1084
; lib_tortesia.ml@38:0;38:29 ::= OArrWrite lib_tortesia.ml@38:0;38:5 lib_tortesia.ml@38:7;38:9 lib_tortesia.ml@38:14;38:29
	j @cfg_label_20602
@cfg_label_20602:
	li r5,$14
	sw r5,r31,$1080
; lib_tortesia.ml@39:7;39:9
	j @cfg_label_20601
@cfg_label_20601:
	fmovi f1,$0.000061
	fst f1,r31,$1076
	j @cfg_label_20600
@cfg_label_20600:
	lw r7,r31,$1076
	lw r6,r31,$1080
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1072
; lib_tortesia.ml@39:0;39:30 ::= OArrWrite lib_tortesia.ml@39:0;39:5 lib_tortesia.ml@39:7;39:9 lib_tortesia.ml@39:14;39:30
	j @cfg_label_20599
@cfg_label_20599:
	li r5,$15
	sw r5,r31,$1068
; lib_tortesia.ml@40:7;40:9
	j @cfg_label_20598
@cfg_label_20598:
	fmovi f1,$0.000031
	fst f1,r31,$1064
	j @cfg_label_20597
@cfg_label_20597:
	lw r7,r31,$1064
	lw r6,r31,$1068
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1060
; lib_tortesia.ml@40:0;40:31 ::= OArrWrite lib_tortesia.ml@40:0;40:5 lib_tortesia.ml@40:7;40:9 lib_tortesia.ml@40:14;40:31
	j @cfg_label_20596
@cfg_label_20596:
	li r5,$16
	sw r5,r31,$1056
; lib_tortesia.ml@41:7;41:9
	j @cfg_label_20595
@cfg_label_20595:
	fmovi f1,$0.000015
	fst f1,r31,$1052
	j @cfg_label_20594
@cfg_label_20594:
	lw r7,r31,$1052
	lw r6,r31,$1056
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1048
; lib_tortesia.ml@41:0;41:32 ::= OArrWrite lib_tortesia.ml@41:0;41:5 lib_tortesia.ml@41:7;41:9 lib_tortesia.ml@41:14;41:32
	j @cfg_label_20593
@cfg_label_20593:
	li r5,$17
	sw r5,r31,$1044
; lib_tortesia.ml@42:7;42:9
	j @cfg_label_20592
@cfg_label_20592:
	fmovi f1,$0.000008
	fst f1,r31,$1040
	j @cfg_label_20591
@cfg_label_20591:
	lw r7,r31,$1040
	lw r6,r31,$1044
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1036
; lib_tortesia.ml@42:0;42:33 ::= OArrWrite lib_tortesia.ml@42:0;42:5 lib_tortesia.ml@42:7;42:9 lib_tortesia.ml@42:14;42:33
	j @cfg_label_20590
@cfg_label_20590:
	li r5,$18
	sw r5,r31,$1032
; lib_tortesia.ml@43:7;43:9
	j @cfg_label_20589
@cfg_label_20589:
	fmovi f1,$0.000004
	fst f1,r31,$1028
	j @cfg_label_20588
@cfg_label_20588:
	lw r7,r31,$1028
	lw r6,r31,$1032
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1024
; lib_tortesia.ml@43:0;43:34 ::= OArrWrite lib_tortesia.ml@43:0;43:5 lib_tortesia.ml@43:7;43:9 lib_tortesia.ml@43:14;43:34
	j @cfg_label_20587
@cfg_label_20587:
	li r5,$19
	sw r5,r31,$1020
; lib_tortesia.ml@44:7;44:9
	j @cfg_label_20586
@cfg_label_20586:
	fmovi f1,$0.000002
	fst f1,r31,$1016
	j @cfg_label_20585
@cfg_label_20585:
	lw r7,r31,$1016
	lw r6,r31,$1020
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1012
; lib_tortesia.ml@44:0;44:35 ::= OArrWrite lib_tortesia.ml@44:0;44:5 lib_tortesia.ml@44:7;44:9 lib_tortesia.ml@44:14;44:35
	j @cfg_label_20584
@cfg_label_20584:
	li r5,$20
	sw r5,r31,$1008
; lib_tortesia.ml@45:7;45:9
	j @cfg_label_20583
@cfg_label_20583:
	fmovi f1,$0.000001
	fst f1,r31,$1004
	j @cfg_label_20582
@cfg_label_20582:
	lw r7,r31,$1004
	lw r6,r31,$1008
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$1000
; lib_tortesia.ml@45:0;45:36 ::= OArrWrite lib_tortesia.ml@45:0;45:5 lib_tortesia.ml@45:7;45:9 lib_tortesia.ml@45:14;45:36
	j @cfg_label_20581
@cfg_label_20581:
	li r5,$21
	sw r5,r31,$996
; lib_tortesia.ml@46:7;46:9
	j @cfg_label_20580
@cfg_label_20580:
	fmovi f1,$0.000000
	fst f1,r31,$992
	j @cfg_label_20579
@cfg_label_20579:
	lw r7,r31,$992
	lw r6,r31,$996
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$988
; lib_tortesia.ml@46:0;46:37 ::= OArrWrite lib_tortesia.ml@46:0;46:5 lib_tortesia.ml@46:7;46:9 lib_tortesia.ml@46:14;46:37
	j @cfg_label_20578
@cfg_label_20578:
	li r5,$22
	sw r5,r31,$984
; lib_tortesia.ml@47:7;47:9
	j @cfg_label_20577
@cfg_label_20577:
	fmovi f1,$0.000000
	fst f1,r31,$980
	j @cfg_label_20576
@cfg_label_20576:
	lw r7,r31,$980
	lw r6,r31,$984
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$976
; lib_tortesia.ml@47:0;47:38 ::= OArrWrite lib_tortesia.ml@47:0;47:5 lib_tortesia.ml@47:7;47:9 lib_tortesia.ml@47:14;47:38
	j @cfg_label_20575
@cfg_label_20575:
	li r5,$23
	sw r5,r31,$972
; lib_tortesia.ml@48:7;48:9
	j @cfg_label_20574
@cfg_label_20574:
	fmovi f1,$0.000000
	fst f1,r31,$968
	j @cfg_label_20573
@cfg_label_20573:
	lw r7,r31,$968
	lw r6,r31,$972
	lw r5,r31,$1264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$964
; lib_tortesia.ml@48:0;48:39 ::= OArrWrite lib_tortesia.ml@48:0;48:5 lib_tortesia.ml@48:7;48:9 lib_tortesia.ml@48:14;48:39
	j @cfg_label_20572
@cfg_label_20572:
	li r5,$0
	sw r5,r31,$960
; lib_tortesia.ml@50:7;50:8
	j @cfg_label_20571
@cfg_label_20571:
	fmovi f1,$0.785398
	fst f1,r31,$956
	j @cfg_label_20570
@cfg_label_20570:
	lw r7,r31,$956
	lw r6,r31,$960
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$952
; lib_tortesia.ml@50:0;50:39 ::= OArrWrite lib_tortesia.ml@50:0;50:5 lib_tortesia.ml@50:7;50:8 lib_tortesia.ml@50:13;50:39
	j @cfg_label_20569
@cfg_label_20569:
	li r5,$1
	sw r5,r31,$948
; lib_tortesia.ml@51:7;51:8
	j @cfg_label_20568
@cfg_label_20568:
	fmovi f1,$0.463648
	fst f1,r31,$944
	j @cfg_label_20567
@cfg_label_20567:
	lw r7,r31,$944
	lw r6,r31,$948
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$940
; lib_tortesia.ml@51:0;51:39 ::= OArrWrite lib_tortesia.ml@51:0;51:5 lib_tortesia.ml@51:7;51:8 lib_tortesia.ml@51:13;51:39
	j @cfg_label_20566
@cfg_label_20566:
	li r5,$2
	sw r5,r31,$936
; lib_tortesia.ml@52:7;52:8
	j @cfg_label_20565
@cfg_label_20565:
	fmovi f1,$0.244979
	fst f1,r31,$932
	j @cfg_label_20564
@cfg_label_20564:
	lw r7,r31,$932
	lw r6,r31,$936
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$928
; lib_tortesia.ml@52:0;52:39 ::= OArrWrite lib_tortesia.ml@52:0;52:5 lib_tortesia.ml@52:7;52:8 lib_tortesia.ml@52:13;52:39
	j @cfg_label_20563
@cfg_label_20563:
	li r5,$3
	sw r5,r31,$924
; lib_tortesia.ml@53:7;53:8
	j @cfg_label_20562
@cfg_label_20562:
	fmovi f1,$0.124355
	fst f1,r31,$920
	j @cfg_label_20561
@cfg_label_20561:
	lw r7,r31,$920
	lw r6,r31,$924
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$916
; lib_tortesia.ml@53:0;53:39 ::= OArrWrite lib_tortesia.ml@53:0;53:5 lib_tortesia.ml@53:7;53:8 lib_tortesia.ml@53:13;53:39
	j @cfg_label_20560
@cfg_label_20560:
	li r5,$4
	sw r5,r31,$912
; lib_tortesia.ml@54:7;54:8
	j @cfg_label_20559
@cfg_label_20559:
	fmovi f1,$0.062419
	fst f1,r31,$908
	j @cfg_label_20558
@cfg_label_20558:
	lw r7,r31,$908
	lw r6,r31,$912
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$904
; lib_tortesia.ml@54:0;54:39 ::= OArrWrite lib_tortesia.ml@54:0;54:5 lib_tortesia.ml@54:7;54:8 lib_tortesia.ml@54:13;54:39
	j @cfg_label_20557
@cfg_label_20557:
	li r5,$5
	sw r5,r31,$900
; lib_tortesia.ml@55:7;55:8
	j @cfg_label_20556
@cfg_label_20556:
	fmovi f1,$0.031240
	fst f1,r31,$896
	j @cfg_label_20555
@cfg_label_20555:
	lw r7,r31,$896
	lw r6,r31,$900
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$892
; lib_tortesia.ml@55:0;55:39 ::= OArrWrite lib_tortesia.ml@55:0;55:5 lib_tortesia.ml@55:7;55:8 lib_tortesia.ml@55:13;55:39
	j @cfg_label_20554
@cfg_label_20554:
	li r5,$6
	sw r5,r31,$888
; lib_tortesia.ml@56:7;56:8
	j @cfg_label_20553
@cfg_label_20553:
	fmovi f1,$0.015624
	fst f1,r31,$884
	j @cfg_label_20552
@cfg_label_20552:
	lw r7,r31,$884
	lw r6,r31,$888
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$880
; lib_tortesia.ml@56:0;56:39 ::= OArrWrite lib_tortesia.ml@56:0;56:5 lib_tortesia.ml@56:7;56:8 lib_tortesia.ml@56:13;56:39
	j @cfg_label_20551
@cfg_label_20551:
	li r5,$7
	sw r5,r31,$876
; lib_tortesia.ml@57:7;57:8
	j @cfg_label_20550
@cfg_label_20550:
	fmovi f1,$0.007812
	fst f1,r31,$872
	j @cfg_label_20549
@cfg_label_20549:
	lw r7,r31,$872
	lw r6,r31,$876
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$868
; lib_tortesia.ml@57:0;57:39 ::= OArrWrite lib_tortesia.ml@57:0;57:5 lib_tortesia.ml@57:7;57:8 lib_tortesia.ml@57:13;57:39
	j @cfg_label_20548
@cfg_label_20548:
	li r5,$8
	sw r5,r31,$864
; lib_tortesia.ml@58:7;58:8
	j @cfg_label_20547
@cfg_label_20547:
	fmovi f1,$0.003906
	fst f1,r31,$860
	j @cfg_label_20546
@cfg_label_20546:
	lw r7,r31,$860
	lw r6,r31,$864
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$856
; lib_tortesia.ml@58:0;58:39 ::= OArrWrite lib_tortesia.ml@58:0;58:5 lib_tortesia.ml@58:7;58:8 lib_tortesia.ml@58:13;58:39
	j @cfg_label_20545
@cfg_label_20545:
	li r5,$9
	sw r5,r31,$852
; lib_tortesia.ml@59:7;59:8
	j @cfg_label_20544
@cfg_label_20544:
	fmovi f1,$0.001953
	fst f1,r31,$848
	j @cfg_label_20543
@cfg_label_20543:
	lw r7,r31,$848
	lw r6,r31,$852
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$844
; lib_tortesia.ml@59:0;59:39 ::= OArrWrite lib_tortesia.ml@59:0;59:5 lib_tortesia.ml@59:7;59:8 lib_tortesia.ml@59:13;59:39
	j @cfg_label_20542
@cfg_label_20542:
	li r5,$10
	sw r5,r31,$840
; lib_tortesia.ml@60:7;60:9
	j @cfg_label_20541
@cfg_label_20541:
	fmovi f1,$0.000977
	fst f1,r31,$836
	j @cfg_label_20540
@cfg_label_20540:
	lw r7,r31,$836
	lw r6,r31,$840
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$832
; lib_tortesia.ml@60:0;60:40 ::= OArrWrite lib_tortesia.ml@60:0;60:5 lib_tortesia.ml@60:7;60:9 lib_tortesia.ml@60:14;60:40
	j @cfg_label_20539
@cfg_label_20539:
	li r5,$11
	sw r5,r31,$828
; lib_tortesia.ml@61:7;61:9
	j @cfg_label_20538
@cfg_label_20538:
	fmovi f1,$0.000488
	fst f1,r31,$824
	j @cfg_label_20537
@cfg_label_20537:
	lw r7,r31,$824
	lw r6,r31,$828
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$820
; lib_tortesia.ml@61:0;61:40 ::= OArrWrite lib_tortesia.ml@61:0;61:5 lib_tortesia.ml@61:7;61:9 lib_tortesia.ml@61:14;61:40
	j @cfg_label_20536
@cfg_label_20536:
	li r5,$12
	sw r5,r31,$816
; lib_tortesia.ml@62:7;62:9
	j @cfg_label_20535
@cfg_label_20535:
	fmovi f1,$0.000244
	fst f1,r31,$812
	j @cfg_label_20534
@cfg_label_20534:
	lw r7,r31,$812
	lw r6,r31,$816
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$808
; lib_tortesia.ml@62:0;62:40 ::= OArrWrite lib_tortesia.ml@62:0;62:5 lib_tortesia.ml@62:7;62:9 lib_tortesia.ml@62:14;62:40
	j @cfg_label_20533
@cfg_label_20533:
	li r5,$13
	sw r5,r31,$804
; lib_tortesia.ml@63:7;63:9
	j @cfg_label_20532
@cfg_label_20532:
	fmovi f1,$0.000122
	fst f1,r31,$800
	j @cfg_label_20531
@cfg_label_20531:
	lw r7,r31,$800
	lw r6,r31,$804
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$796
; lib_tortesia.ml@63:0;63:40 ::= OArrWrite lib_tortesia.ml@63:0;63:5 lib_tortesia.ml@63:7;63:9 lib_tortesia.ml@63:14;63:40
	j @cfg_label_20530
@cfg_label_20530:
	li r5,$14
	sw r5,r31,$792
; lib_tortesia.ml@64:7;64:9
	j @cfg_label_20529
@cfg_label_20529:
	fmovi f1,$0.000061
	fst f1,r31,$788
	j @cfg_label_20528
@cfg_label_20528:
	lw r7,r31,$788
	lw r6,r31,$792
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$784
; lib_tortesia.ml@64:0;64:40 ::= OArrWrite lib_tortesia.ml@64:0;64:5 lib_tortesia.ml@64:7;64:9 lib_tortesia.ml@64:14;64:40
	j @cfg_label_20527
@cfg_label_20527:
	li r5,$15
	sw r5,r31,$780
; lib_tortesia.ml@65:7;65:9
	j @cfg_label_20526
@cfg_label_20526:
	fmovi f1,$0.000031
	fst f1,r31,$776
	j @cfg_label_20525
@cfg_label_20525:
	lw r7,r31,$776
	lw r6,r31,$780
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$772
; lib_tortesia.ml@65:0;65:40 ::= OArrWrite lib_tortesia.ml@65:0;65:5 lib_tortesia.ml@65:7;65:9 lib_tortesia.ml@65:14;65:40
	j @cfg_label_20524
@cfg_label_20524:
	li r5,$16
	sw r5,r31,$768
; lib_tortesia.ml@66:7;66:9
	j @cfg_label_20523
@cfg_label_20523:
	fmovi f1,$0.000015
	fst f1,r31,$764
	j @cfg_label_20522
@cfg_label_20522:
	lw r7,r31,$764
	lw r6,r31,$768
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$760
; lib_tortesia.ml@66:0;66:40 ::= OArrWrite lib_tortesia.ml@66:0;66:5 lib_tortesia.ml@66:7;66:9 lib_tortesia.ml@66:14;66:40
	j @cfg_label_20521
@cfg_label_20521:
	li r5,$17
	sw r5,r31,$756
; lib_tortesia.ml@67:7;67:9
	j @cfg_label_20520
@cfg_label_20520:
	fmovi f1,$0.000008
	fst f1,r31,$752
	j @cfg_label_20519
@cfg_label_20519:
	lw r7,r31,$752
	lw r6,r31,$756
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$748
; lib_tortesia.ml@67:0;67:40 ::= OArrWrite lib_tortesia.ml@67:0;67:5 lib_tortesia.ml@67:7;67:9 lib_tortesia.ml@67:14;67:40
	j @cfg_label_20518
@cfg_label_20518:
	li r5,$18
	sw r5,r31,$744
; lib_tortesia.ml@68:7;68:9
	j @cfg_label_20517
@cfg_label_20517:
	fmovi f1,$0.000004
	fst f1,r31,$740
	j @cfg_label_20516
@cfg_label_20516:
	lw r7,r31,$740
	lw r6,r31,$744
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$736
; lib_tortesia.ml@68:0;68:40 ::= OArrWrite lib_tortesia.ml@68:0;68:5 lib_tortesia.ml@68:7;68:9 lib_tortesia.ml@68:14;68:40
	j @cfg_label_20515
@cfg_label_20515:
	li r5,$19
	sw r5,r31,$732
; lib_tortesia.ml@69:7;69:9
	j @cfg_label_20514
@cfg_label_20514:
	fmovi f1,$0.000002
	fst f1,r31,$728
	j @cfg_label_20513
@cfg_label_20513:
	lw r7,r31,$728
	lw r6,r31,$732
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$724
; lib_tortesia.ml@69:0;69:40 ::= OArrWrite lib_tortesia.ml@69:0;69:5 lib_tortesia.ml@69:7;69:9 lib_tortesia.ml@69:14;69:40
	j @cfg_label_20512
@cfg_label_20512:
	li r5,$20
	sw r5,r31,$720
; lib_tortesia.ml@70:7;70:9
	j @cfg_label_20511
@cfg_label_20511:
	fmovi f1,$0.000001
	fst f1,r31,$716
	j @cfg_label_20510
@cfg_label_20510:
	lw r7,r31,$716
	lw r6,r31,$720
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$712
; lib_tortesia.ml@70:0;70:40 ::= OArrWrite lib_tortesia.ml@70:0;70:5 lib_tortesia.ml@70:7;70:9 lib_tortesia.ml@70:14;70:40
	j @cfg_label_20509
@cfg_label_20509:
	li r5,$21
	sw r5,r31,$708
; lib_tortesia.ml@71:7;71:9
	j @cfg_label_20508
@cfg_label_20508:
	fmovi f1,$0.000000
	fst f1,r31,$704
	j @cfg_label_20507
@cfg_label_20507:
	lw r7,r31,$704
	lw r6,r31,$708
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$700
; lib_tortesia.ml@71:0;71:40 ::= OArrWrite lib_tortesia.ml@71:0;71:5 lib_tortesia.ml@71:7;71:9 lib_tortesia.ml@71:14;71:40
	j @cfg_label_20506
@cfg_label_20506:
	li r5,$22
	sw r5,r31,$696
; lib_tortesia.ml@72:7;72:9
	j @cfg_label_20505
@cfg_label_20505:
	fmovi f1,$0.000000
	fst f1,r31,$692
	j @cfg_label_20504
@cfg_label_20504:
	lw r7,r31,$692
	lw r6,r31,$696
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$688
; lib_tortesia.ml@72:0;72:40 ::= OArrWrite lib_tortesia.ml@72:0;72:5 lib_tortesia.ml@72:7;72:9 lib_tortesia.ml@72:14;72:40
	j @cfg_label_20503
@cfg_label_20503:
	li r5,$23
	sw r5,r31,$684
; lib_tortesia.ml@73:7;73:9
	j @cfg_label_20502
@cfg_label_20502:
	fmovi f1,$0.000000
	fst f1,r31,$680
	j @cfg_label_20501
@cfg_label_20501:
	lw r7,r31,$680
	lw r6,r31,$684
	lw r5,r31,$1252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$676
; lib_tortesia.ml@73:0;73:40 ::= OArrWrite lib_tortesia.ml@73:0;73:5 lib_tortesia.ml@73:7;73:9 lib_tortesia.ml@73:14;73:40
	j @cfg_label_20500
@cfg_label_20500:
	lw r5,r31,$676
	sw r5,r31,$672
; lib_tortesia.ml@72:0;73:40 ::<= lib_tortesia.ml@73:0;73:40
	j @cfg_label_20499
@cfg_label_20499:
	lw r5,r31,$672
	sw r5,r31,$668
; lib_tortesia.ml@71:0;73:40 ::<= lib_tortesia.ml@72:0;73:40
	j @cfg_label_20498
@cfg_label_20498:
	lw r5,r31,$668
	sw r5,r31,$664
; lib_tortesia.ml@70:0;73:40 ::<= lib_tortesia.ml@71:0;73:40
	j @cfg_label_20497
@cfg_label_20497:
	lw r5,r31,$664
	sw r5,r31,$660
; lib_tortesia.ml@69:0;73:40 ::<= lib_tortesia.ml@70:0;73:40
	j @cfg_label_20496
@cfg_label_20496:
	lw r5,r31,$660
	sw r5,r31,$656
; lib_tortesia.ml@68:0;73:40 ::<= lib_tortesia.ml@69:0;73:40
	j @cfg_label_20495
@cfg_label_20495:
	lw r5,r31,$656
	sw r5,r31,$652
; lib_tortesia.ml@67:0;73:40 ::<= lib_tortesia.ml@68:0;73:40
	j @cfg_label_20494
@cfg_label_20494:
	lw r5,r31,$652
	sw r5,r31,$648
; lib_tortesia.ml@66:0;73:40 ::<= lib_tortesia.ml@67:0;73:40
	j @cfg_label_20493
@cfg_label_20493:
	lw r5,r31,$648
	sw r5,r31,$644
; lib_tortesia.ml@65:0;73:40 ::<= lib_tortesia.ml@66:0;73:40
	j @cfg_label_20492
@cfg_label_20492:
	lw r5,r31,$644
	sw r5,r31,$640
; lib_tortesia.ml@64:0;73:40 ::<= lib_tortesia.ml@65:0;73:40
	j @cfg_label_20491
@cfg_label_20491:
	lw r5,r31,$640
	sw r5,r31,$636
; lib_tortesia.ml@63:0;73:40 ::<= lib_tortesia.ml@64:0;73:40
	j @cfg_label_20490
@cfg_label_20490:
	lw r5,r31,$636
	sw r5,r31,$632
; lib_tortesia.ml@62:0;73:40 ::<= lib_tortesia.ml@63:0;73:40
	j @cfg_label_20489
@cfg_label_20489:
	lw r5,r31,$632
	sw r5,r31,$628
; lib_tortesia.ml@61:0;73:40 ::<= lib_tortesia.ml@62:0;73:40
	j @cfg_label_20488
@cfg_label_20488:
	lw r5,r31,$628
	sw r5,r31,$624
; lib_tortesia.ml@60:0;73:40 ::<= lib_tortesia.ml@61:0;73:40
	j @cfg_label_20487
@cfg_label_20487:
	lw r5,r31,$624
	sw r5,r31,$620
; lib_tortesia.ml@59:0;73:40 ::<= lib_tortesia.ml@60:0;73:40
	j @cfg_label_20486
@cfg_label_20486:
	lw r5,r31,$620
	sw r5,r31,$616
; lib_tortesia.ml@58:0;73:40 ::<= lib_tortesia.ml@59:0;73:40
	j @cfg_label_20485
@cfg_label_20485:
	lw r5,r31,$616
	sw r5,r31,$612
; lib_tortesia.ml@57:0;73:40 ::<= lib_tortesia.ml@58:0;73:40
	j @cfg_label_20484
@cfg_label_20484:
	lw r5,r31,$612
	sw r5,r31,$608
; lib_tortesia.ml@56:0;73:40 ::<= lib_tortesia.ml@57:0;73:40
	j @cfg_label_20483
@cfg_label_20483:
	lw r5,r31,$608
	sw r5,r31,$604
; lib_tortesia.ml@55:0;73:40 ::<= lib_tortesia.ml@56:0;73:40
	j @cfg_label_20482
@cfg_label_20482:
	lw r5,r31,$604
	sw r5,r31,$600
; lib_tortesia.ml@54:0;73:40 ::<= lib_tortesia.ml@55:0;73:40
	j @cfg_label_20481
@cfg_label_20481:
	lw r5,r31,$600
	sw r5,r31,$596
; lib_tortesia.ml@53:0;73:40 ::<= lib_tortesia.ml@54:0;73:40
	j @cfg_label_20480
@cfg_label_20480:
	lw r5,r31,$596
	sw r5,r31,$592
; lib_tortesia.ml@52:0;73:40 ::<= lib_tortesia.ml@53:0;73:40
	j @cfg_label_20479
@cfg_label_20479:
	lw r5,r31,$592
	sw r5,r31,$588
; lib_tortesia.ml@51:0;73:40 ::<= lib_tortesia.ml@52:0;73:40
	j @cfg_label_20478
@cfg_label_20478:
	lw r5,r31,$588
	sw r5,r31,$584
; lib_tortesia.ml@50:0;73:40 ::<= lib_tortesia.ml@51:0;73:40
	j @cfg_label_20477
@cfg_label_20477:
	lw r5,r31,$584
	sw r5,r31,$580
; lib_tortesia.ml@48:0;73:40 ::<= lib_tortesia.ml@50:0;73:40
	j @cfg_label_20476
@cfg_label_20476:
	lw r5,r31,$580
	sw r5,r31,$576
; lib_tortesia.ml@47:0;73:40 ::<= lib_tortesia.ml@48:0;73:40
	j @cfg_label_20475
@cfg_label_20475:
	lw r5,r31,$576
	sw r5,r31,$572
; lib_tortesia.ml@46:0;73:40 ::<= lib_tortesia.ml@47:0;73:40
	j @cfg_label_20474
@cfg_label_20474:
	lw r5,r31,$572
	sw r5,r31,$568
; lib_tortesia.ml@45:0;73:40 ::<= lib_tortesia.ml@46:0;73:40
	j @cfg_label_20473
@cfg_label_20473:
	lw r5,r31,$568
	sw r5,r31,$564
; lib_tortesia.ml@44:0;73:40 ::<= lib_tortesia.ml@45:0;73:40
	j @cfg_label_20472
@cfg_label_20472:
	lw r5,r31,$564
	sw r5,r31,$560
; lib_tortesia.ml@43:0;73:40 ::<= lib_tortesia.ml@44:0;73:40
	j @cfg_label_20471
@cfg_label_20471:
	lw r5,r31,$560
	sw r5,r31,$556
; lib_tortesia.ml@42:0;73:40 ::<= lib_tortesia.ml@43:0;73:40
	j @cfg_label_20470
@cfg_label_20470:
	lw r5,r31,$556
	sw r5,r31,$552
; lib_tortesia.ml@41:0;73:40 ::<= lib_tortesia.ml@42:0;73:40
	j @cfg_label_20469
@cfg_label_20469:
	lw r5,r31,$552
	sw r5,r31,$548
; lib_tortesia.ml@40:0;73:40 ::<= lib_tortesia.ml@41:0;73:40
	j @cfg_label_20468
@cfg_label_20468:
	lw r5,r31,$548
	sw r5,r31,$544
; lib_tortesia.ml@39:0;73:40 ::<= lib_tortesia.ml@40:0;73:40
	j @cfg_label_20467
@cfg_label_20467:
	lw r5,r31,$544
	sw r5,r31,$540
; lib_tortesia.ml@38:0;73:40 ::<= lib_tortesia.ml@39:0;73:40
	j @cfg_label_20466
@cfg_label_20466:
	lw r5,r31,$540
	sw r5,r31,$536
; lib_tortesia.ml@37:0;73:40 ::<= lib_tortesia.ml@38:0;73:40
	j @cfg_label_20465
@cfg_label_20465:
	lw r5,r31,$536
	sw r5,r31,$532
; lib_tortesia.ml@36:0;73:40 ::<= lib_tortesia.ml@37:0;73:40
	j @cfg_label_20464
@cfg_label_20464:
	lw r5,r31,$532
	sw r5,r31,$528
; lib_tortesia.ml@35:0;73:40 ::<= lib_tortesia.ml@36:0;73:40
	j @cfg_label_20463
@cfg_label_20463:
	lw r5,r31,$528
	sw r5,r31,$524
; lib_tortesia.ml@34:0;73:40 ::<= lib_tortesia.ml@35:0;73:40
	j @cfg_label_20462
@cfg_label_20462:
	lw r5,r31,$524
	sw r5,r31,$520
; lib_tortesia.ml@33:0;73:40 ::<= lib_tortesia.ml@34:0;73:40
	j @cfg_label_20461
@cfg_label_20461:
	lw r5,r31,$520
	sw r5,r31,$516
; lib_tortesia.ml@32:0;73:40 ::<= lib_tortesia.ml@33:0;73:40
	j @cfg_label_20460
@cfg_label_20460:
	lw r5,r31,$516
	sw r5,r31,$512
; lib_tortesia.ml@31:0;73:40 ::<= lib_tortesia.ml@32:0;73:40
	j @cfg_label_20459
@cfg_label_20459:
	fmovi f1,$3.141593
	fst f1,r31,$508
	j @cfg_label_20458
@cfg_label_20458:
	li r5,$1
	sw r5,r31,$504
; ../cpuex2017/raytracer/globals.ml@6:29;6:30
	j @cfg_label_20457
@cfg_label_20457:
	li r5,$0
	sw r5,r31,$500
; ../cpuex2017/raytracer/globals.ml@6:31;6:32
	j @cfg_label_20456
@cfg_label_20456:
	lw r6,r31,$500
	lw r5,r31,$504
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25886
@emit_label_25885:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25885
@emit_label_25886:
	mov r5,r7
	sw r5,r31,$496
; ../cpuex2017/raytracer/globals.ml@6:16;6:32 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@6:29;6:30 ../cpuex2017/raytracer/globals.ml@6:31;6:32
	j @cfg_label_20455
@cfg_label_20455:
	li r5,$0
	sw r5,r31,$492
; ../cpuex2017/raytracer/globals.ml@10:27;10:28
	j @cfg_label_20454
@cfg_label_20454:
	fmovi f1,$0.000000
	fst f1,r31,$488
	j @cfg_label_20453
@cfg_label_20453:
	lw r6,r31,$488
	lw r5,r31,$492
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25888
@emit_label_25887:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25887
@emit_label_25888:
	mov r5,r7
	sw r5,r31,$484
; ../cpuex2017/raytracer/globals.ml@10:14;10:32 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@10:27;10:28 ../cpuex2017/raytracer/globals.ml@10:29;10:32
	j @cfg_label_20452
@cfg_label_20452:
	li r5,$60
	sw r5,r31,$480
; ../cpuex2017/raytracer/globals.ml@11:15;11:17
	j @cfg_label_20451
@cfg_label_20451:
	li r5,$0
	sw r5,r31,$476
; ../cpuex2017/raytracer/globals.ml@11:28;11:29
	j @cfg_label_20450
@cfg_label_20450:
	li r5,$0
	sw r5,r31,$472
; ../cpuex2017/raytracer/globals.ml@11:25;11:26
	j @cfg_label_20449
@cfg_label_20449:
	li r5,$0
	sw r5,r31,$468
; ../cpuex2017/raytracer/globals.ml@11:22;11:23
	j @cfg_label_20448
@cfg_label_20448:
	li r5,$0
	sw r5,r31,$464
; ../cpuex2017/raytracer/globals.ml@11:19;11:20
	j @cfg_label_20447
@cfg_label_20447:
	sw r3,r31,$460
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
	lw r5,r31,$1276
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
; ../cpuex2017/raytracer/globals.ml@11:19;11:78
	j @cfg_label_20446
@cfg_label_20446:
	lw r6,r31,$460
	lw r5,r31,$480
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25890
@emit_label_25889:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25889
@emit_label_25890:
	mov r5,r7
	sw r5,r31,$456
; ../cpuex2017/raytracer/globals.ml@10:2;11:79 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@11:15;11:17 ../cpuex2017/raytracer/globals.ml@11:19;11:78
	j @cfg_label_20445
@cfg_label_20445:
	li r5,$3
	sw r5,r31,$452
; ../cpuex2017/raytracer/globals.ml@14:26;14:27
	j @cfg_label_20444
@cfg_label_20444:
	fmovi f1,$0.000000
	fst f1,r31,$448
	j @cfg_label_20443
@cfg_label_20443:
	lw r6,r31,$448
	lw r5,r31,$452
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25892
@emit_label_25891:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25891
@emit_label_25892:
	mov r5,r7
	sw r5,r31,$444
; ../cpuex2017/raytracer/globals.ml@14:13;14:31 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@14:26;14:27 ../cpuex2017/raytracer/globals.ml@14:28;14:31
	j @cfg_label_20442
@cfg_label_20442:
	li r5,$3
	sw r5,r31,$440
; ../cpuex2017/raytracer/globals.ml@16:29;16:30
	j @cfg_label_20441
@cfg_label_20441:
	fmovi f1,$0.000000
	fst f1,r31,$436
	j @cfg_label_20440
@cfg_label_20440:
	lw r6,r31,$436
	lw r5,r31,$440
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25894
@emit_label_25893:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25893
@emit_label_25894:
	mov r5,r7
	sw r5,r31,$432
; ../cpuex2017/raytracer/globals.ml@16:16;16:34 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@16:29;16:30 ../cpuex2017/raytracer/globals.ml@16:31;16:34
	j @cfg_label_20439
@cfg_label_20439:
	li r5,$3
	sw r5,r31,$428
; ../cpuex2017/raytracer/globals.ml@18:25;18:26
	j @cfg_label_20438
@cfg_label_20438:
	fmovi f1,$0.000000
	fst f1,r31,$424
	j @cfg_label_20437
@cfg_label_20437:
	lw r6,r31,$424
	lw r5,r31,$428
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25896
@emit_label_25895:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25895
@emit_label_25896:
	mov r5,r7
	sw r5,r31,$420
; ../cpuex2017/raytracer/globals.ml@18:12;18:30 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@18:25;18:26 ../cpuex2017/raytracer/globals.ml@18:27;18:30
	j @cfg_label_20436
@cfg_label_20436:
	li r5,$1
	sw r5,r31,$416
; ../cpuex2017/raytracer/globals.ml@20:24;20:25
	j @cfg_label_20435
@cfg_label_20435:
	fmovi f1,$255.000000
	fst f1,r31,$412
	j @cfg_label_20434
@cfg_label_20434:
	lw r6,r31,$412
	lw r5,r31,$416
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25898
@emit_label_25897:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25897
@emit_label_25898:
	mov r5,r7
	sw r5,r31,$408
; ../cpuex2017/raytracer/globals.ml@20:11;20:31 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@20:24;20:25 ../cpuex2017/raytracer/globals.ml@20:26;20:31
	j @cfg_label_20433
@cfg_label_20433:
	li r5,$50
	sw r5,r31,$404
; ../cpuex2017/raytracer/globals.ml@22:27;22:29
	j @cfg_label_20432
@cfg_label_20432:
	li r5,$1
	sw r5,r31,$400
; ../cpuex2017/raytracer/globals.ml@22:44;22:45
	j @cfg_label_20431
@cfg_label_20431:
	li r5,$-1
	sw r5,r31,$396
; ../cpuex2017/raytracer/globals.ml@22:47;22:49
	j @cfg_label_20430
@cfg_label_20430:
	lw r6,r31,$396
	lw r5,r31,$400
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25900
@emit_label_25899:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25899
@emit_label_25900:
	mov r5,r7
	sw r5,r31,$392
; ../cpuex2017/raytracer/globals.ml@22:31;22:50 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@22:44;22:45 ../cpuex2017/raytracer/globals.ml@22:47;22:49
	j @cfg_label_20429
@cfg_label_20429:
	lw r6,r31,$392
	lw r5,r31,$404
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25902
@emit_label_25901:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25901
@emit_label_25902:
	mov r5,r7
	sw r5,r31,$388
; ../cpuex2017/raytracer/globals.ml@22:14;22:51 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@22:27;22:29 ../cpuex2017/raytracer/globals.ml@22:31;22:50
	j @cfg_label_20428
@cfg_label_20428:
	li r5,$1
	sw r5,r31,$384
; ../cpuex2017/raytracer/globals.ml@24:26;24:27
	j @cfg_label_20427
@cfg_label_20427:
	li r5,$1
	sw r5,r31,$380
; ../cpuex2017/raytracer/globals.ml@24:42;24:43
	j @cfg_label_20426
@cfg_label_20426:
	li r5,$0
	sw r5,r31,$376
; ../cpuex2017/raytracer/globals.ml@24:54;24:55
	j @cfg_label_20425
@cfg_label_20425:
	lw r6,r31,$376
	lw r5,r31,$388
	sll r6,r6,$2
	add r5,r5,r6
	lw r5,r5,$0
	sw r5,r31,$372
; ../cpuex2017/raytracer/globals.ml@24:45;24:56 ::= OArrRead ../cpuex2017/raytracer/globals.ml@24:45;24:52 ../cpuex2017/raytracer/globals.ml@24:54;24:55
	j @cfg_label_20424
@cfg_label_20424:
	lw r6,r31,$372
	lw r5,r31,$380
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25904
@emit_label_25903:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25903
@emit_label_25904:
	mov r5,r7
	sw r5,r31,$368
; ../cpuex2017/raytracer/globals.ml@24:29;24:57 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@24:42;24:43 ../cpuex2017/raytracer/globals.ml@24:45;24:56
	j @cfg_label_20423
@cfg_label_20423:
	lw r6,r31,$368
	lw r5,r31,$384
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25906
@emit_label_25905:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25905
@emit_label_25906:
	mov r5,r7
	sw r5,r31,$364
; ../cpuex2017/raytracer/globals.ml@24:13;24:58 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@24:26;24:27 ../cpuex2017/raytracer/globals.ml@24:29;24:57
	j @cfg_label_20422
@cfg_label_20422:
	li r5,$1
	sw r5,r31,$360
; ../cpuex2017/raytracer/globals.ml@28:31;28:32
	j @cfg_label_20421
@cfg_label_20421:
	fmovi f1,$0.000000
	fst f1,r31,$356
	j @cfg_label_20420
@cfg_label_20420:
	lw r6,r31,$356
	lw r5,r31,$360
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25908
@emit_label_25907:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25907
@emit_label_25908:
	mov r5,r7
	sw r5,r31,$352
; ../cpuex2017/raytracer/globals.ml@28:18;28:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@28:31;28:32 ../cpuex2017/raytracer/globals.ml@28:33;28:36
	j @cfg_label_20419
@cfg_label_20419:
	li r5,$1
	sw r5,r31,$348
; ../cpuex2017/raytracer/globals.ml@30:35;30:36
	j @cfg_label_20418
@cfg_label_20418:
	li r5,$0
	sw r5,r31,$344
; ../cpuex2017/raytracer/globals.ml@30:37;30:38
	j @cfg_label_20417
@cfg_label_20417:
	lw r6,r31,$344
	lw r5,r31,$348
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25910
@emit_label_25909:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25909
@emit_label_25910:
	mov r5,r7
	sw r5,r31,$340
; ../cpuex2017/raytracer/globals.ml@30:22;30:38 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@30:35;30:36 ../cpuex2017/raytracer/globals.ml@30:37;30:38
	j @cfg_label_20416
@cfg_label_20416:
	li r5,$1
	sw r5,r31,$336
; ../cpuex2017/raytracer/globals.ml@32:24;32:25
	j @cfg_label_20415
@cfg_label_20415:
	fmovi f1,$1000000000.000000
	fst f1,r31,$332
	j @cfg_label_20414
@cfg_label_20414:
	lw r6,r31,$332
	lw r5,r31,$336
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25912
@emit_label_25911:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25911
@emit_label_25912:
	mov r5,r7
	sw r5,r31,$328
; ../cpuex2017/raytracer/globals.ml@32:11;32:40 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@32:24;32:25 ../cpuex2017/raytracer/globals.ml@32:27;32:39
	j @cfg_label_20413
@cfg_label_20413:
	li r5,$3
	sw r5,r31,$324
; ../cpuex2017/raytracer/globals.ml@34:38;34:39
	j @cfg_label_20412
@cfg_label_20412:
	fmovi f1,$0.000000
	fst f1,r31,$320
	j @cfg_label_20411
@cfg_label_20411:
	lw r6,r31,$320
	lw r5,r31,$324
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25914
@emit_label_25913:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25913
@emit_label_25914:
	mov r5,r7
	sw r5,r31,$316
; ../cpuex2017/raytracer/globals.ml@34:25;34:43 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@34:38;34:39 ../cpuex2017/raytracer/globals.ml@34:40;34:43
	j @cfg_label_20410
@cfg_label_20410:
	li r5,$1
	sw r5,r31,$312
; ../cpuex2017/raytracer/globals.ml@36:41;36:42
	j @cfg_label_20409
@cfg_label_20409:
	li r5,$0
	sw r5,r31,$308
; ../cpuex2017/raytracer/globals.ml@36:43;36:44
	j @cfg_label_20408
@cfg_label_20408:
	lw r6,r31,$308
	lw r5,r31,$312
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25916
@emit_label_25915:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25915
@emit_label_25916:
	mov r5,r7
	sw r5,r31,$304
; ../cpuex2017/raytracer/globals.ml@36:28;36:44 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@36:41;36:42 ../cpuex2017/raytracer/globals.ml@36:43;36:44
	j @cfg_label_20407
@cfg_label_20407:
	li r5,$3
	sw r5,r31,$300
; ../cpuex2017/raytracer/globals.ml@38:27;38:28
	j @cfg_label_20406
@cfg_label_20406:
	fmovi f1,$0.000000
	fst f1,r31,$296
	j @cfg_label_20405
@cfg_label_20405:
	lw r6,r31,$296
	lw r5,r31,$300
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25918
@emit_label_25917:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25917
@emit_label_25918:
	mov r5,r7
	sw r5,r31,$292
; ../cpuex2017/raytracer/globals.ml@38:14;38:32 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@38:27;38:28 ../cpuex2017/raytracer/globals.ml@38:29;38:32
	j @cfg_label_20404
@cfg_label_20404:
	li r5,$3
	sw r5,r31,$288
; ../cpuex2017/raytracer/globals.ml@40:33;40:34
	j @cfg_label_20403
@cfg_label_20403:
	fmovi f1,$0.000000
	fst f1,r31,$284
	j @cfg_label_20402
@cfg_label_20402:
	lw r6,r31,$284
	lw r5,r31,$288
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25920
@emit_label_25919:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25919
@emit_label_25920:
	mov r5,r7
	sw r5,r31,$280
; ../cpuex2017/raytracer/globals.ml@40:20;40:38 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@40:33;40:34 ../cpuex2017/raytracer/globals.ml@40:35;40:38
	j @cfg_label_20401
@cfg_label_20401:
	li r5,$3
	sw r5,r31,$276
; ../cpuex2017/raytracer/globals.ml@43:31;43:32
	j @cfg_label_20400
@cfg_label_20400:
	fmovi f1,$0.000000
	fst f1,r31,$272
	j @cfg_label_20399
@cfg_label_20399:
	lw r6,r31,$272
	lw r5,r31,$276
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25922
@emit_label_25921:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25921
@emit_label_25922:
	mov r5,r7
	sw r5,r31,$268
; ../cpuex2017/raytracer/globals.ml@43:18;43:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@43:31;43:32 ../cpuex2017/raytracer/globals.ml@43:33;43:36
	j @cfg_label_20398
@cfg_label_20398:
	li r5,$3
	sw r5,r31,$264
; ../cpuex2017/raytracer/globals.ml@45:23;45:24
	j @cfg_label_20397
@cfg_label_20397:
	fmovi f1,$0.000000
	fst f1,r31,$260
	j @cfg_label_20396
@cfg_label_20396:
	lw r6,r31,$260
	lw r5,r31,$264
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25924
@emit_label_25923:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25923
@emit_label_25924:
	mov r5,r7
	sw r5,r31,$256
; ../cpuex2017/raytracer/globals.ml@45:10;45:28 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@45:23;45:24 ../cpuex2017/raytracer/globals.ml@45:25;45:28
	j @cfg_label_20395
@cfg_label_20395:
	li r5,$2
	sw r5,r31,$252
; ../cpuex2017/raytracer/globals.ml@48:30;48:31
	j @cfg_label_20394
@cfg_label_20394:
	li r5,$0
	sw r5,r31,$248
; ../cpuex2017/raytracer/globals.ml@48:32;48:33
	j @cfg_label_20393
@cfg_label_20393:
	lw r6,r31,$248
	lw r5,r31,$252
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25926
@emit_label_25925:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25925
@emit_label_25926:
	mov r5,r7
	sw r5,r31,$244
; ../cpuex2017/raytracer/globals.ml@48:17;48:33 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@48:30;48:31 ../cpuex2017/raytracer/globals.ml@48:32;48:33
	j @cfg_label_20392
@cfg_label_20392:
	li r5,$2
	sw r5,r31,$240
; ../cpuex2017/raytracer/globals.ml@50:32;50:33
	j @cfg_label_20391
@cfg_label_20391:
	li r5,$0
	sw r5,r31,$236
; ../cpuex2017/raytracer/globals.ml@50:34;50:35
	j @cfg_label_20390
@cfg_label_20390:
	lw r6,r31,$236
	lw r5,r31,$240
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25928
@emit_label_25927:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25927
@emit_label_25928:
	mov r5,r7
	sw r5,r31,$232
; ../cpuex2017/raytracer/globals.ml@50:19;50:35 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@50:32;50:33 ../cpuex2017/raytracer/globals.ml@50:34;50:35
	j @cfg_label_20389
@cfg_label_20389:
	li r5,$1
	sw r5,r31,$228
; ../cpuex2017/raytracer/globals.ml@52:30;52:31
	j @cfg_label_20388
@cfg_label_20388:
	fmovi f1,$0.000000
	fst f1,r31,$224
	j @cfg_label_20387
@cfg_label_20387:
	lw r6,r31,$224
	lw r5,r31,$228
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25930
@emit_label_25929:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25929
@emit_label_25930:
	mov r5,r7
	sw r5,r31,$220
; ../cpuex2017/raytracer/globals.ml@52:17;52:35 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@52:30;52:31 ../cpuex2017/raytracer/globals.ml@52:32;52:35
	j @cfg_label_20386
@cfg_label_20386:
	li r5,$3
	sw r5,r31,$216
; ../cpuex2017/raytracer/globals.ml@55:26;55:27
	j @cfg_label_20385
@cfg_label_20385:
	fmovi f1,$0.000000
	fst f1,r31,$212
	j @cfg_label_20384
@cfg_label_20384:
	lw r6,r31,$212
	lw r5,r31,$216
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25932
@emit_label_25931:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25931
@emit_label_25932:
	mov r5,r7
	sw r5,r31,$208
; ../cpuex2017/raytracer/globals.ml@55:13;55:31 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@55:26;55:27 ../cpuex2017/raytracer/globals.ml@55:28;55:31
	j @cfg_label_20383
@cfg_label_20383:
	li r5,$3
	sw r5,r31,$204
; ../cpuex2017/raytracer/globals.ml@57:31;57:32
	j @cfg_label_20382
@cfg_label_20382:
	fmovi f1,$0.000000
	fst f1,r31,$200
	j @cfg_label_20381
@cfg_label_20381:
	lw r6,r31,$200
	lw r5,r31,$204
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25934
@emit_label_25933:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25933
@emit_label_25934:
	mov r5,r7
	sw r5,r31,$196
; ../cpuex2017/raytracer/globals.ml@57:18;57:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@57:31;57:32 ../cpuex2017/raytracer/globals.ml@57:33;57:36
	j @cfg_label_20380
@cfg_label_20380:
	li r5,$3
	sw r5,r31,$192
; ../cpuex2017/raytracer/globals.ml@60:31;60:32
	j @cfg_label_20379
@cfg_label_20379:
	fmovi f1,$0.000000
	fst f1,r31,$188
	j @cfg_label_20378
@cfg_label_20378:
	lw r6,r31,$188
	lw r5,r31,$192
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25936
@emit_label_25935:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25935
@emit_label_25936:
	mov r5,r7
	sw r5,r31,$184
; ../cpuex2017/raytracer/globals.ml@60:18;60:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@60:31;60:32 ../cpuex2017/raytracer/globals.ml@60:33;60:36
	j @cfg_label_20377
@cfg_label_20377:
	li r5,$3
	sw r5,r31,$180
; ../cpuex2017/raytracer/globals.ml@61:31;61:32
	j @cfg_label_20376
@cfg_label_20376:
	fmovi f1,$0.000000
	fst f1,r31,$176
	j @cfg_label_20375
@cfg_label_20375:
	lw r6,r31,$176
	lw r5,r31,$180
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25938
@emit_label_25937:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25937
@emit_label_25938:
	mov r5,r7
	sw r5,r31,$172
; ../cpuex2017/raytracer/globals.ml@61:18;61:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@61:31;61:32 ../cpuex2017/raytracer/globals.ml@61:33;61:36
	j @cfg_label_20374
@cfg_label_20374:
	li r5,$3
	sw r5,r31,$168
; ../cpuex2017/raytracer/globals.ml@62:31;62:32
	j @cfg_label_20373
@cfg_label_20373:
	fmovi f1,$0.000000
	fst f1,r31,$164
	j @cfg_label_20372
@cfg_label_20372:
	lw r6,r31,$164
	lw r5,r31,$168
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25940
@emit_label_25939:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25939
@emit_label_25940:
	mov r5,r7
	sw r5,r31,$160
; ../cpuex2017/raytracer/globals.ml@62:18;62:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@62:31;62:32 ../cpuex2017/raytracer/globals.ml@62:33;62:36
	j @cfg_label_20371
@cfg_label_20371:
	li r5,$3
	sw r5,r31,$156
; ../cpuex2017/raytracer/globals.ml@65:34;65:35
	j @cfg_label_20370
@cfg_label_20370:
	fmovi f1,$0.000000
	fst f1,r31,$152
	j @cfg_label_20369
@cfg_label_20369:
	lw r6,r31,$152
	lw r5,r31,$156
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25942
@emit_label_25941:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25941
@emit_label_25942:
	mov r5,r7
	sw r5,r31,$148
; ../cpuex2017/raytracer/globals.ml@65:21;65:39 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@65:34;65:35 ../cpuex2017/raytracer/globals.ml@65:36;65:39
	j @cfg_label_20368
@cfg_label_20368:
	li r5,$0
	sw r5,r31,$144
; ../cpuex2017/raytracer/globals.ml@69:28;69:29
	j @cfg_label_20367
@cfg_label_20367:
	fmovi f1,$0.000000
	fst f1,r31,$140
	j @cfg_label_20366
@cfg_label_20366:
	lw r6,r31,$140
	lw r5,r31,$144
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25944
@emit_label_25943:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25943
@emit_label_25944:
	mov r5,r7
	sw r5,r31,$136
; ../cpuex2017/raytracer/globals.ml@69:15;69:33 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@69:28;69:29 ../cpuex2017/raytracer/globals.ml@69:30;69:33
	j @cfg_label_20365
@cfg_label_20365:
	li r5,$0
	sw r5,r31,$132
; ../cpuex2017/raytracer/globals.ml@70:29;70:30
	j @cfg_label_20364
@cfg_label_20364:
	lw r6,r31,$136
	lw r5,r31,$132
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25946
@emit_label_25945:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25945
@emit_label_25946:
	mov r5,r7
	sw r5,r31,$128
; ../cpuex2017/raytracer/globals.ml@70:16;70:37 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@70:29;70:30 ../cpuex2017/raytracer/globals.ml@70:31;70:37
	j @cfg_label_20363
@cfg_label_20363:
	li r5,$0
	sw r5,r31,$124
; ../cpuex2017/raytracer/globals.ml@71:30;71:31
	j @cfg_label_20362
@cfg_label_20362:
	sw r3,r31,$120
	lw r5,r31,$136
	sw r5,r3,$0
	lw r5,r31,$128
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/globals.ml@71:33;71:48
	j @cfg_label_20361
@cfg_label_20361:
	lw r6,r31,$120
	lw r5,r31,$124
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25948
@emit_label_25947:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25947
@emit_label_25948:
	mov r5,r7
	sw r5,r31,$116
; ../cpuex2017/raytracer/globals.ml@71:17;71:49 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@71:30;71:31 ../cpuex2017/raytracer/globals.ml@71:33;71:48
	j @cfg_label_20360
@cfg_label_20360:
	li r5,$5
	sw r5,r31,$112
; ../cpuex2017/raytracer/globals.ml@72:15;72:16
	j @cfg_label_20359
@cfg_label_20359:
	lw r6,r31,$116
	lw r5,r31,$112
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25950
@emit_label_25949:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25949
@emit_label_25950:
	mov r5,r7
	sw r5,r31,$108
; ../cpuex2017/raytracer/globals.ml@69:2;72:25 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@72:15;72:16 ../cpuex2017/raytracer/globals.ml@72:17;72:25
	j @cfg_label_20358
@cfg_label_20358:
	li r5,$0
	sw r5,r31,$104
; ../cpuex2017/raytracer/globals.ml@76:29;76:30
	j @cfg_label_20357
@cfg_label_20357:
	fmovi f1,$0.000000
	fst f1,r31,$100
	j @cfg_label_20356
@cfg_label_20356:
	lw r6,r31,$100
	lw r5,r31,$104
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25952
@emit_label_25951:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25951
@emit_label_25952:
	mov r5,r7
	sw r5,r31,$96
; ../cpuex2017/raytracer/globals.ml@76:16;76:34 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@76:29;76:30 ../cpuex2017/raytracer/globals.ml@76:31;76:34
	j @cfg_label_20355
@cfg_label_20355:
	li r5,$3
	sw r5,r31,$92
; ../cpuex2017/raytracer/globals.ml@77:24;77:25
	j @cfg_label_20354
@cfg_label_20354:
	fmovi f1,$0.000000
	fst f1,r31,$88
	j @cfg_label_20353
@cfg_label_20353:
	lw r6,r31,$88
	lw r5,r31,$92
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25954
@emit_label_25953:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25953
@emit_label_25954:
	mov r5,r7
	sw r5,r31,$84
; ../cpuex2017/raytracer/globals.ml@77:11;77:29 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@77:24;77:25 ../cpuex2017/raytracer/globals.ml@77:26;77:29
	j @cfg_label_20352
@cfg_label_20352:
	li r5,$60
	sw r5,r31,$80
; ../cpuex2017/raytracer/globals.ml@78:28;78:30
	j @cfg_label_20351
@cfg_label_20351:
	lw r6,r31,$96
	lw r5,r31,$80
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25956
@emit_label_25955:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25955
@emit_label_25956:
	mov r5,r7
	sw r5,r31,$76
; ../cpuex2017/raytracer/globals.ml@78:15;78:38 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@78:28;78:30 ../cpuex2017/raytracer/globals.ml@78:31;78:38
	j @cfg_label_20350
@cfg_label_20350:
	li r5,$0
	sw r5,r31,$72
; ../cpuex2017/raytracer/globals.ml@83:29;83:30
	j @cfg_label_20349
@cfg_label_20349:
	fmovi f1,$0.000000
	fst f1,r31,$68
	j @cfg_label_20348
@cfg_label_20348:
	lw r6,r31,$68
	lw r5,r31,$72
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25958
@emit_label_25957:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25957
@emit_label_25958:
	mov r5,r7
	sw r5,r31,$64
; ../cpuex2017/raytracer/globals.ml@83:16;83:34 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@83:29;83:30 ../cpuex2017/raytracer/globals.ml@83:31;83:34
	j @cfg_label_20347
@cfg_label_20347:
	li r5,$0
	sw r5,r31,$60
; ../cpuex2017/raytracer/globals.ml@84:30;84:31
	j @cfg_label_20346
@cfg_label_20346:
	lw r6,r31,$64
	lw r5,r31,$60
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25960
@emit_label_25959:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25959
@emit_label_25960:
	mov r5,r7
	sw r5,r31,$56
; ../cpuex2017/raytracer/globals.ml@84:17;84:39 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@84:30;84:31 ../cpuex2017/raytracer/globals.ml@84:32;84:39
	j @cfg_label_20345
@cfg_label_20345:
	sw r3,r31,$52
	lw r5,r31,$64
	sw r5,r3,$0
	lw r5,r31,$56
	sw r5,r3,$4
	addi r3,r3,$8
; ../cpuex2017/raytracer/globals.ml@85:17;85:34
	j @cfg_label_20344
@cfg_label_20344:
	li r5,$180
	sw r5,r31,$48
; ../cpuex2017/raytracer/globals.ml@86:15;86:18
	j @cfg_label_20343
@cfg_label_20343:
	fmovi f1,$0.000000
	fst f1,r31,$44
	j @cfg_label_20342
@cfg_label_20342:
	li r5,$0
	sw r5,r31,$40
; ../cpuex2017/raytracer/globals.ml@86:20;86:21
	j @cfg_label_20341
@cfg_label_20341:
	sw r3,r31,$36
	lw r5,r31,$40
	sw r5,r3,$0
	lw r5,r31,$52
	sw r5,r3,$4
	lw r5,r31,$44
	sw r5,r3,$8
	addi r3,r3,$12
; ../cpuex2017/raytracer/globals.ml@86:20;86:35
	j @cfg_label_20340
@cfg_label_20340:
	lw r6,r31,$36
	lw r5,r31,$48
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25962
@emit_label_25961:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25961
@emit_label_25962:
	mov r5,r7
	sw r5,r31,$32
; ../cpuex2017/raytracer/globals.ml@83:2;86:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@86:15;86:18 ../cpuex2017/raytracer/globals.ml@86:20;86:35
	j @cfg_label_20339
@cfg_label_20339:
	li r5,$1
	sw r5,r31,$28
; ../cpuex2017/raytracer/globals.ml@90:33;90:34
	j @cfg_label_20338
@cfg_label_20338:
	li r5,$0
	sw r5,r31,$24
; ../cpuex2017/raytracer/globals.ml@90:35;90:36
	j @cfg_label_20337
@cfg_label_20337:
	lw r6,r31,$24
	lw r5,r31,$28
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_25964
@emit_label_25963:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_25963
@emit_label_25964:
	mov r5,r7
	sw r5,r31,$20
; ../cpuex2017/raytracer/globals.ml@90:20;90:36 ::= OArrCrt ../cpuex2017/raytracer/globals.ml@90:33;90:34 ../cpuex2017/raytracer/globals.ml@90:35;90:36
	j @cfg_label_20336
@cfg_label_20336:
	li r5,$1
	sw r5,r31,$16
; ../cpuex2017/raytracer/min-rt.ml@14:23;14:24
	j @cfg_label_20335
@cfg_label_20335:
	li r5,$0
	sw r5,r31,$12
; ../cpuex2017/raytracer/min-rt.ml@15:24;15:25
	j @cfg_label_20334
@cfg_label_20334:
	li r5,$128
	sw r5,r31,$8
; ../cpuex2017/raytracer/min-rt.ml@2308:11;2308:14
	j @cfg_label_20333
@cfg_label_20333:
	li r5,$128
	sw r5,r31,$4
; ../cpuex2017/raytracer/min-rt.ml@2308:15;2308:18
	j @cfg_label_20332
@cfg_label_20332:
	push r4
	lw r5,r31,$4
	push r5
	lw r5,r31,$8
	push r5
	jal @a_9122rt
	sw r5,r31,$0
	addi r1,r1,$8
	pop r4
; ../cpuex2017/raytracer/min-rt.ml@2308:8;2308:18 ../cpuex2017/raytracer/min-rt.ml@2308:8;2308:10
	j @cfg_label_20331
@cfg_label_20331:
	li r5,$0
	sw r5,r2,$-4
; @0:-1;0:-1
	li r5,$0
	hlt
	li r5,$0
	hlt
