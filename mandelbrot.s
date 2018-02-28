
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


@a_1231f:
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
@cfg_label_2252:
@cfg_label_2251:
@cfg_label_2250:
@cfg_label_2249:
@cfg_label_2201:
	addi r13,r10,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@109:2;111:42
	slt r5,r13,r11
	bne r0,r5,@cfg_label_2245
@cfg_label_2246:
	mov r9,r10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2247:
@cfg_label_2245:
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
	bne r0,r5,@cfg_label_2238
	j @cfg_label_2237
@cfg_label_2238:
@cfg_label_2240:
	slt r5,r13,r9
	bne r0,r5,@cfg_label_2234
@cfg_label_2235:
	mov r9,r10
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2236:
@cfg_label_2234:
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
	bne r0,r5,@cfg_label_2227
@cfg_label_2228:
	mov r10,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	mov r11,r9
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_2201
@cfg_label_2227:
@cfg_label_2229:
	mov r11,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_2201
@cfg_label_2237:
@cfg_label_2239:
	addi r10,r9,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@110:10;110:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_2216
@cfg_label_2217:
	lw r6,r1,$0
	addi r1,r1,$4
	addi r1,r1,$12
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2218:
@cfg_label_2216:
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
	bne r0,r5,@cfg_label_2209
@cfg_label_2210:
	mov r10,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_2201
@cfg_label_2209:
@cfg_label_2211:
	mov r10,r9
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	mov r11,r13
;lib/lib_sinint.ml@109:2;111:42::<=lib/lib_sinint.ml@109:2;111:42
	j @cfg_label_2201
@a_1019divten:
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
@cfg_label_2160:
	li r10,$0
;lib/lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_2197
@cfg_label_2198:
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
@cfg_label_2199:
@cfg_label_2197:
	li r10,$0
;lib/lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2192
	j @cfg_label_2191
@cfg_label_2192:
@cfg_label_2194:
	li r20,$0
;lib/lib_sinint.ml@115:12;115:13
	sub r21,r0,r8
;lib/lib_sinint.ml@115:15;115:17::=Ominuslib/lib_sinint.ml@108:1;115:25
	addi r10,r20,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@115:12;115:13
	slt r5,r10,r21
	bne r0,r5,@cfg_label_2182
@cfg_label_2183:
	mov r22,r20
;lib/lib_sinint.ml@115:12;115:13::<=lib/lib_sinint.ml@115:10;115:23
	j @cfg_label_2187
@cfg_label_2182:
@cfg_label_2184:
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
	bne r0,r5,@cfg_label_2175
@cfg_label_2176:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r8
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r11,r21
;lib/lib_sinint.ml@115:15;115:17::<=lib/lib_sinint.ml@115:15;115:17
	mov r12,r21
;lib/lib_sinint.ml@115:15;115:17::<=lib/lib_sinint.ml@115:15;115:17
	jal @a_1231f
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@115:10;115:23lib/lib_sinint.ml@111:22;111:23
	j @cfg_label_2186
@cfg_label_2175:
@cfg_label_2177:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib/lib_sinint.ml@115:12;115:13::<=lib/lib_sinint.ml@115:12;115:13
	mov r11,r8
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r12,r21
;lib/lib_sinint.ml@115:15;115:17::<=lib/lib_sinint.ml@115:15;115:17
	jal @a_1231f
	mov r22,r9
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@115:10;115:23lib/lib_sinint.ml@111:22;111:23
@cfg_label_2186:
@cfg_label_2187:
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
@cfg_label_2193:
@cfg_label_2191:
	li r20,$0
;lib/lib_sinint.ml@114:19;114:20
	addi r10,r20,$1
;lib/lib_sinint.ml@109:5;109:8::=Oiadd[1]lib/lib_sinint.ml@114:19;114:20
	slt r5,r10,r8
	bne r0,r5,@cfg_label_2169
@cfg_label_2170:
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
@cfg_label_2171:
@cfg_label_2169:
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
	bne r0,r5,@cfg_label_2162
@cfg_label_2163:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r21
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r11,r8
;lib/lib_sinint.ml@108:1;115:25::<=lib/lib_sinint.ml@108:1;115:25
	mov r12,r8
;lib/lib_sinint.ml@108:1;115:25::<=lib/lib_sinint.ml@108:1;115:25
	jal @a_1231f
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
@cfg_label_2164:
@cfg_label_2162:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib/lib_sinint.ml@114:19;114:20::<=lib/lib_sinint.ml@114:19;114:20
	mov r11,r21
;lib/lib_sinint.ml@110:10;110:19::<=lib/lib_sinint.ml@110:10;110:19
	mov r12,r8
;lib/lib_sinint.ml@108:1;115:25::<=lib/lib_sinint.ml@108:1;115:25
	jal @a_1231f
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
@a_1184print_int_base:
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
@cfg_label_2125:
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2156
	j @cfg_label_2155
@cfg_label_2156:
@cfg_label_2158:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_2151
@cfg_label_2152:
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
@cfg_label_2153:
@cfg_label_2151:
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
@cfg_label_2157:
@cfg_label_2155:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_sinint.ml@121:2;124:29::<=lib/lib_sinint.ml@121:2;124:29
	jal @a_1019divten
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib/lib_sinint.ml@122:13;122:21lib/lib_sinint.ml@122:13;122:19
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r20,r10
	bne r0,r5,@cfg_label_2138
	j @cfg_label_2137
@cfg_label_2138:
@cfg_label_2140:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r20
	bne r0,r5,@cfg_label_2133
@cfg_label_2134:
;lib/lib_sinint.ml@123:4;123:21
	j @cfg_label_2145
@cfg_label_2133:
@cfg_label_2135:
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
	j @cfg_label_2144
@cfg_label_2137:
@cfg_label_2139:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@122:13;122:21::<=lib/lib_sinint.ml@122:13;122:21
	jal @a_1019divten
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
	jal @a_1184print_int_base
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
@cfg_label_2145:
@cfg_label_2144:
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
@a_1021print_int:
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
@cfg_label_2077:
	li r10,$0
;lib/lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_2121
	j @cfg_label_2120
@cfg_label_2121:
@cfg_label_2123:
	li r10,$0
;lib/lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2116
	j @cfg_label_2115
@cfg_label_2116:
@cfg_label_2118:
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
	bne r0,r5,@cfg_label_2107
	j @cfg_label_2106
@cfg_label_2107:
@cfg_label_2109:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r20
	bne r0,r5,@cfg_label_2102
@cfg_label_2103:
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
@cfg_label_2104:
@cfg_label_2102:
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
@cfg_label_2108:
@cfg_label_2106:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;lib/lib_sinint.ml@127:52;127:55::<=lib/lib_sinint.ml@127:52;127:55
	jal @a_1019divten
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
	jal @a_1184print_int_base
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
@cfg_label_2117:
@cfg_label_2115:
	li r10,$10
;lib/lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2091
	j @cfg_label_2090
@cfg_label_2091:
@cfg_label_2093:
	li r10,$0
;lib/lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_2086
@cfg_label_2087:
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
@cfg_label_2088:
@cfg_label_2086:
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
@cfg_label_2092:
@cfg_label_2090:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib/lib_sinint.ml@118:1;127:79::<=lib/lib_sinint.ml@118:1;127:79
	jal @a_1019divten
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
	jal @a_1184print_int_base
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
@cfg_label_2122:
@cfg_label_2120:
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
@a_1069iloop:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$32
	subi r1,r1,$12
	sw r6,r1,$0
	sw r20,r1,$4
	sw r8,r1,$8
	mov r10,r10
	fmov f10,f10
	fmov f11,f11
	fmov f12,f12
	fmov f13,f13
	fmov f14,f14
	fmov f15,f15
@cfg_label_2076:
@cfg_label_2041:
	li r11,$0
;test/mandelbrot_edit.ml@18:25;18:26
	bne r10,r11,@cfg_label_2072
	j @cfg_label_2071
@cfg_label_2072:
@cfg_label_2074:
	fsub f16,f12,f13
;test/mandelbrot_edit.ml@19:27;19:37::=Ofsubtest/mandelbrot_edit.ml@18:18;26:51test/mandelbrot_edit.ml@18:18;26:51
	fadd f12,f16,f14
;test/mandelbrot_edit.ml@19:27;19:43::=Ofaddtest/mandelbrot_edit.ml@19:27;19:37test/mandelbrot_edit.ml@18:18;26:51
	fadd f13,f10,f10
;test/mandelbrot_edit.ml@20:27;20:33::=Ofaddtest/mandelbrot_edit.ml@18:18;26:51test/mandelbrot_edit.ml@18:18;26:51
	fmul f10,f13,f11
;test/mandelbrot_edit.ml@20:27;20:39::=Ofmultest/mandelbrot_edit.ml@20:27;20:33test/mandelbrot_edit.ml@18:18;26:51
	fadd f13,f10,f15
;test/mandelbrot_edit.ml@20:27;20:45::=Ofaddtest/mandelbrot_edit.ml@20:27;20:39test/mandelbrot_edit.ml@18:18;26:51
	fmul f17,f12,f12
;test/mandelbrot_edit.ml@23:28;23:36::=Ofmultest/mandelbrot_edit.ml@19:27;19:43test/mandelbrot_edit.ml@19:27;19:43
	fmul f16,f13,f13
;test/mandelbrot_edit.ml@24:28;24:36::=Ofmultest/mandelbrot_edit.ml@20:27;20:45test/mandelbrot_edit.ml@20:27;20:45
	fmovi f10,$4.00000000000000000000
;test/mandelbrot_edit.ml@25:28;25:38
	fadd f11,f17,f16
;test/mandelbrot_edit.ml@25:41;25:51::=Ofaddtest/mandelbrot_edit.ml@23:28;23:36test/mandelbrot_edit.ml@24:28;24:36
	flt f10,f11
	bft @emit_label_2257
	li r11,$0
	j @emit_label_2258
@emit_label_2257:
	li r11,$1
@emit_label_2258:
;test/mandelbrot_edit.ml@25:21;25:52::=Olttest/mandelbrot_edit.ml@25:28;25:38test/mandelbrot_edit.ml@25:41;25:51
	li r12,$1
;test/mandelbrot_edit.ml@25:21;25:52
	bne r11,r12,@cfg_label_2057
	j @cfg_label_2056
@cfg_label_2057:
@cfg_label_2059:
	subi r11,r10,$1
;test/mandelbrot_edit.ml@26:25;26:30::=Oibysub[1]test/mandelbrot_edit.ml@18:18;26:51
	mov r10,r11
;test/mandelbrot_edit.ml@18:18;26:51::<=test/mandelbrot_edit.ml@18:18;26:51
	fmov f10,f12
;test/mandelbrot_edit.ml@18:18;26:51::<=test/mandelbrot_edit.ml@18:18;26:51
	fmov f11,f13
;test/mandelbrot_edit.ml@18:18;26:51::<=test/mandelbrot_edit.ml@18:18;26:51
	fmov f12,f17
;test/mandelbrot_edit.ml@18:18;26:51::<=test/mandelbrot_edit.ml@18:18;26:51
	fmov f13,f16
;test/mandelbrot_edit.ml@18:18;26:51::<=test/mandelbrot_edit.ml@18:18;26:51
	j @cfg_label_2041
@cfg_label_2056:
@cfg_label_2058:
	li r20,$48
;test/mandelbrot_edit.ml@25:69;25:71
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;test/mandelbrot_edit.ml@25:69;25:71::<=test/mandelbrot_edit.ml@25:69;25:71
	jal @a_1021print_int
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@25:59;25:71test/mandelbrot_edit.ml@18:33;18:42
	li r20,$32
;test/mandelbrot_edit.ml@25:84;25:86
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;test/mandelbrot_edit.ml@25:84;25:86::<=test/mandelbrot_edit.ml@25:84;25:86
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@18:18;26:51test/mandelbrot_edit.ml@18:47;18:57
	mov r9,r8
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2073:
@cfg_label_2071:
	li r20,$49
;test/mandelbrot_edit.ml@18:43;18:45
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;test/mandelbrot_edit.ml@18:43;18:45::<=test/mandelbrot_edit.ml@18:43;18:45
	jal @a_1021print_int
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@18:33;18:45test/mandelbrot_edit.ml@18:33;18:42
	li r20,$32
;test/mandelbrot_edit.ml@18:58;18:60
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;test/mandelbrot_edit.ml@18:58;18:60::<=test/mandelbrot_edit.ml@18:58;18:60
	jal print_char
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@18:18;26:51test/mandelbrot_edit.ml@18:47;18:57
	mov r9,r8
	lw r6,r1,$0
	lw r20,r1,$4
	lw r8,r1,$8
	addi r1,r1,$12
	addi r1,r1,$32
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@a_1049xloop:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$60
	subi r1,r1,$44
	sw r6,r1,$0
	fst f20,r1,$4
	fst f9,r1,$8
	fst f8,r1,$12
	fst f7,r1,$16
	sw r22,r1,$20
	sw r21,r1,$24
	fst f6,r1,$28
	fst f4,r1,$32
	sw r20,r1,$36
	sw r8,r1,$40
	mov r20,r10
	mov r8,r11
@cfg_label_2040:
@cfg_label_2013:
	li r10,$40
;test/mandelbrot_edit.ml@14:12;14:14
	slt r5,r20,r10
	bne r0,r5,@cfg_label_2036
@cfg_label_2037:
;test/mandelbrot_edit.ml@14:4;28:20
	lw r6,r1,$0
	fld f20,r1,$4
	fld f9,r1,$8
	fld f8,r1,$12
	fld f7,r1,$16
	lw r22,r1,$20
	lw r21,r1,$24
	fld f6,r1,$28
	fld f4,r1,$32
	lw r20,r1,$36
	lw r8,r1,$40
	addi r1,r1,$44
	addi r1,r1,$60
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2038:
@cfg_label_2036:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;test/mandelbrot_edit.ml@14:4;28:20::<=test/mandelbrot_edit.ml@14:4;28:20
	jal float_of_int
	fmov f4,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@15:30;15:44test/mandelbrot_edit.ml@15:30;15:42
	fadd f11,f4,f4
;test/mandelbrot_edit.ml@15:25;15:45::=Ofaddtest/mandelbrot_edit.ml@15:30;15:44test/mandelbrot_edit.ml@15:30;15:44
	fmovi f12,$40.00000000000000000000
;test/mandelbrot_edit.ml@15:49;15:53
	fdiv f10,f11,f12
;test/mandelbrot_edit.ml@15:25;15:53::=Ofdivtest/mandelbrot_edit.ml@15:25;15:45test/mandelbrot_edit.ml@15:49;15:53
	fmovi f11,$1.50000000000000000000
;test/mandelbrot_edit.ml@15:57;15:60
	fsub f4,f10,f11
;test/mandelbrot_edit.ml@15:25;15:60::=Ofsubtest/mandelbrot_edit.ml@15:25;15:53test/mandelbrot_edit.ml@15:57;15:60
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;test/mandelbrot_edit.ml@14:4;28:20::<=test/mandelbrot_edit.ml@14:4;28:20
	jal float_of_int
	fmov f6,f5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@16:30;16:44test/mandelbrot_edit.ml@15:30;15:42
	fadd f11,f6,f6
;test/mandelbrot_edit.ml@16:25;16:45::=Ofaddtest/mandelbrot_edit.ml@16:30;16:44test/mandelbrot_edit.ml@16:30;16:44
	fmovi f12,$40.00000000000000000000
;test/mandelbrot_edit.ml@16:49;16:53
	fdiv f10,f11,f12
;test/mandelbrot_edit.ml@16:25;16:53::=Ofdivtest/mandelbrot_edit.ml@16:25;16:45test/mandelbrot_edit.ml@16:49;16:53
	fmovi f11,$1.00000000000000000000
;test/mandelbrot_edit.ml@16:57;16:60
	fsub f6,f10,f11
;test/mandelbrot_edit.ml@16:25;16:60::=Ofsubtest/mandelbrot_edit.ml@16:25;16:53test/mandelbrot_edit.ml@16:57;16:60
	li r22,$1000
;test/mandelbrot_edit.ml@27:22;27:26
	fmovi f7,$0.00000000000000000000
;test/mandelbrot_edit.ml@27:27;27:30
	fmovi f8,$0.00000000000000000000
;test/mandelbrot_edit.ml@27:31;27:34
	fmovi f9,$0.00000000000000000000
;test/mandelbrot_edit.ml@27:35;27:38
	fmovi f20,$0.00000000000000000000
;test/mandelbrot_edit.ml@27:39;27:42
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$28
	mov r10,r22
;test/mandelbrot_edit.ml@27:22;27:26::<=test/mandelbrot_edit.ml@27:22;27:26
	fmov f10,f7
;test/mandelbrot_edit.ml@27:27;27:30::<=test/mandelbrot_edit.ml@27:27;27:30
	fmov f11,f8
;test/mandelbrot_edit.ml@27:31;27:34::<=test/mandelbrot_edit.ml@27:31;27:34
	fmov f12,f9
;test/mandelbrot_edit.ml@27:35;27:38::<=test/mandelbrot_edit.ml@27:35;27:38
	fmov f13,f20
;test/mandelbrot_edit.ml@27:39;27:42::<=test/mandelbrot_edit.ml@27:39;27:42
	fmov f14,f4
;test/mandelbrot_edit.ml@15:25;15:60::<=test/mandelbrot_edit.ml@15:25;15:60
	fmov f15,f6
;test/mandelbrot_edit.ml@16:25;16:60::<=test/mandelbrot_edit.ml@16:25;16:60
	jal @a_1069iloop
	mov r21,r9
	addi r1,r1,$28
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@27:16;27:48test/mandelbrot_edit.ml@27:16;27:21
	addi r10,r20,$1
;test/mandelbrot_edit.ml@28:12;28:17::=Oiadd[1]test/mandelbrot_edit.ml@14:4;28:20
	mov r20,r10
;test/mandelbrot_edit.ml@14:4;28:20::<=test/mandelbrot_edit.ml@14:4;28:20
	j @cfg_label_2013
@a_1043yloop:
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$16
	sw r6,r1,$0
	sw r21,r1,$4
	sw r20,r1,$8
	sw r8,r1,$12
	mov r8,r10
@cfg_label_2012:
@cfg_label_2000:
	li r10,$40
;test/mandelbrot_edit.ml@12:9;12:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2008
@cfg_label_2009:
;test/mandelbrot_edit.ml@12:1;31:15
	lw r6,r1,$0
	lw r21,r1,$4
	lw r20,r1,$8
	lw r8,r1,$12
	addi r1,r1,$16
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2010:
@cfg_label_2008:
	li r21,$0
;test/mandelbrot_edit.ml@29:9;29:10
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$8
	mov r10,r21
;test/mandelbrot_edit.ml@29:9;29:10::<=test/mandelbrot_edit.ml@29:9;29:10
	mov r11,r8
;test/mandelbrot_edit.ml@12:1;31:15::<=test/mandelbrot_edit.ml@12:1;31:15
	jal @a_1049xloop
	mov r20,r9
	addi r1,r1,$8
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@29:3;29:12test/mandelbrot_edit.ml@29:3;29:8
	li r21,$10
;test/mandelbrot_edit.ml@30:12;30:14
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r21
;test/mandelbrot_edit.ml@30:12;30:14::<=test/mandelbrot_edit.ml@30:12;30:14
	jal print_char
	mov r20,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@30:1;30:14test/mandelbrot_edit.ml@30:1;30:11
	addi r10,r8,$1
;test/mandelbrot_edit.ml@31:9;31:14::=Oiadd[1]test/mandelbrot_edit.ml@12:1;31:15
	mov r8,r10
;test/mandelbrot_edit.ml@12:1;31:15::<=test/mandelbrot_edit.ml@12:1;31:15
	j @cfg_label_2000
main:
	mov r31,r3
	addi r3,r3,$676
	mflr r6
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$688
	subi r1,r1,$4
	sw r6,r1,$0
@cfg_label_1830:
	li r5,$24
	sw r5,r31,$672
;lib/lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$668
;lib/lib_sinint.ml@1:28;1:31
	lw r5,r31,$672
	lw r6,r31,$668
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_2254
@emit_label_2253:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_2253
@emit_label_2254:
	mov r5,r7
	sw r5,r31,$664
;lib/lib_sinint.ml@1:12;1:31::=OArrCrtlib/lib_sinint.ml@1:25;1:27lib/lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$660
;lib/lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$656
;lib/lib_sinint.ml@2:28;2:31
	lw r5,r31,$660
	lw r6,r31,$656
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_2256
@emit_label_2255:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_2255
@emit_label_2256:
	mov r5,r7
	sw r5,r31,$652
;lib/lib_sinint.ml@2:12;2:31::=OArrCrtlib/lib_sinint.ml@2:25;2:27lib/lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$648
;lib/lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$644
;lib/lib_sinint.ml@5:13;5:16
	lw r5,r31,$664
	lw r6,r31,$648
	lw r7,r31,$644
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$640
;lib/lib_sinint.ml@5:0;5:16::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@5:7;5:8lib/lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$636
;lib/lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$632
;lib/lib_sinint.ml@6:13;6:16
	lw r5,r31,$664
	lw r6,r31,$636
	lw r7,r31,$632
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$628
;lib/lib_sinint.ml@6:0;6:16::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@6:7;6:8lib/lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$624
;lib/lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$620
;lib/lib_sinint.ml@7:13;7:17
	lw r5,r31,$664
	lw r6,r31,$624
	lw r7,r31,$620
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$616
;lib/lib_sinint.ml@7:0;7:17::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@7:7;7:8lib/lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$612
;lib/lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$608
;lib/lib_sinint.ml@8:13;8:18
	lw r5,r31,$664
	lw r6,r31,$612
	lw r7,r31,$608
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$604
;lib/lib_sinint.ml@8:0;8:18::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@8:7;8:8lib/lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$600
;lib/lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$596
;lib/lib_sinint.ml@9:13;9:19
	lw r5,r31,$664
	lw r6,r31,$600
	lw r7,r31,$596
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$592
;lib/lib_sinint.ml@9:0;9:19::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@9:7;9:8lib/lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$588
;lib/lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$584
;lib/lib_sinint.ml@10:13;10:20
	lw r5,r31,$664
	lw r6,r31,$588
	lw r7,r31,$584
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$580
;lib/lib_sinint.ml@10:0;10:20::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@10:7;10:8lib/lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$576
;lib/lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$572
;lib/lib_sinint.ml@11:13;11:21
	lw r5,r31,$664
	lw r6,r31,$576
	lw r7,r31,$572
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$568
;lib/lib_sinint.ml@11:0;11:21::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@11:7;11:8lib/lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$564
;lib/lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$560
;lib/lib_sinint.ml@12:13;12:22
	lw r5,r31,$664
	lw r6,r31,$564
	lw r7,r31,$560
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$556
;lib/lib_sinint.ml@12:0;12:22::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@12:7;12:8lib/lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$552
;lib/lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$548
;lib/lib_sinint.ml@13:13;13:23
	lw r5,r31,$664
	lw r6,r31,$552
	lw r7,r31,$548
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$544
;lib/lib_sinint.ml@13:0;13:23::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@13:7;13:8lib/lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$540
;lib/lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$536
;lib/lib_sinint.ml@14:13;14:24
	lw r5,r31,$664
	lw r6,r31,$540
	lw r7,r31,$536
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$532
;lib/lib_sinint.ml@14:0;14:24::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@14:7;14:8lib/lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$528
;lib/lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$524
;lib/lib_sinint.ml@15:14;15:26
	lw r5,r31,$664
	lw r6,r31,$528
	lw r7,r31,$524
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$520
;lib/lib_sinint.ml@15:0;15:26::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@15:7;15:9lib/lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$516
;lib/lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$512
;lib/lib_sinint.ml@16:14;16:27
	lw r5,r31,$664
	lw r6,r31,$516
	lw r7,r31,$512
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$508
;lib/lib_sinint.ml@16:0;16:27::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@16:7;16:9lib/lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$504
;lib/lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$500
;lib/lib_sinint.ml@17:14;17:28
	lw r5,r31,$664
	lw r6,r31,$504
	lw r7,r31,$500
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$496
;lib/lib_sinint.ml@17:0;17:28::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@17:7;17:9lib/lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$492
;lib/lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$488
;lib/lib_sinint.ml@18:14;18:29
	lw r5,r31,$664
	lw r6,r31,$492
	lw r7,r31,$488
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$484
;lib/lib_sinint.ml@18:0;18:29::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@18:7;18:9lib/lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$480
;lib/lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$476
;lib/lib_sinint.ml@19:14;19:30
	lw r5,r31,$664
	lw r6,r31,$480
	lw r7,r31,$476
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$472
;lib/lib_sinint.ml@19:0;19:30::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@19:7;19:9lib/lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$468
;lib/lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$464
;lib/lib_sinint.ml@20:14;20:31
	lw r5,r31,$664
	lw r6,r31,$468
	lw r7,r31,$464
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$460
;lib/lib_sinint.ml@20:0;20:31::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@20:7;20:9lib/lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$456
;lib/lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$452
;lib/lib_sinint.ml@21:14;21:32
	lw r5,r31,$664
	lw r6,r31,$456
	lw r7,r31,$452
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$448
;lib/lib_sinint.ml@21:0;21:32::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@21:7;21:9lib/lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$444
;lib/lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$440
;lib/lib_sinint.ml@22:14;22:33
	lw r5,r31,$664
	lw r6,r31,$444
	lw r7,r31,$440
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$436
;lib/lib_sinint.ml@22:0;22:33::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@22:7;22:9lib/lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$432
;lib/lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$428
;lib/lib_sinint.ml@23:14;23:34
	lw r5,r31,$664
	lw r6,r31,$432
	lw r7,r31,$428
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$424
;lib/lib_sinint.ml@23:0;23:34::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@23:7;23:9lib/lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$420
;lib/lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$416
;lib/lib_sinint.ml@24:14;24:35
	lw r5,r31,$664
	lw r6,r31,$420
	lw r7,r31,$416
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$412
;lib/lib_sinint.ml@24:0;24:35::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@24:7;24:9lib/lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$408
;lib/lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$404
;lib/lib_sinint.ml@25:14;25:36
	lw r5,r31,$664
	lw r6,r31,$408
	lw r7,r31,$404
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$400
;lib/lib_sinint.ml@25:0;25:36::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@25:7;25:9lib/lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$396
;lib/lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$392
;lib/lib_sinint.ml@26:14;26:37
	lw r5,r31,$664
	lw r6,r31,$396
	lw r7,r31,$392
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$388
;lib/lib_sinint.ml@26:0;26:37::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@26:7;26:9lib/lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$384
;lib/lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$380
;lib/lib_sinint.ml@27:14;27:38
	lw r5,r31,$664
	lw r6,r31,$384
	lw r7,r31,$380
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$376
;lib/lib_sinint.ml@27:0;27:38::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@27:7;27:9lib/lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$372
;lib/lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$368
;lib/lib_sinint.ml@28:14;28:39
	lw r5,r31,$664
	lw r6,r31,$372
	lw r7,r31,$368
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$364
;lib/lib_sinint.ml@28:0;28:39::=OArrWritelib/lib_sinint.ml@1:12;1:31lib/lib_sinint.ml@28:7;28:9lib/lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$360
;lib/lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$356
;lib/lib_sinint.ml@30:13;30:39
	lw r5,r31,$652
	lw r6,r31,$360
	lw r7,r31,$356
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$352
;lib/lib_sinint.ml@30:0;30:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@30:7;30:8lib/lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$348
;lib/lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$344
;lib/lib_sinint.ml@31:13;31:39
	lw r5,r31,$652
	lw r6,r31,$348
	lw r7,r31,$344
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$340
;lib/lib_sinint.ml@31:0;31:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@31:7;31:8lib/lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$336
;lib/lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$332
;lib/lib_sinint.ml@32:13;32:39
	lw r5,r31,$652
	lw r6,r31,$336
	lw r7,r31,$332
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$328
;lib/lib_sinint.ml@32:0;32:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@32:7;32:8lib/lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$324
;lib/lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$320
;lib/lib_sinint.ml@33:13;33:39
	lw r5,r31,$652
	lw r6,r31,$324
	lw r7,r31,$320
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$316
;lib/lib_sinint.ml@33:0;33:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@33:7;33:8lib/lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$312
;lib/lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$308
;lib/lib_sinint.ml@34:13;34:39
	lw r5,r31,$652
	lw r6,r31,$312
	lw r7,r31,$308
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$304
;lib/lib_sinint.ml@34:0;34:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@34:7;34:8lib/lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$300
;lib/lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$296
;lib/lib_sinint.ml@35:13;35:39
	lw r5,r31,$652
	lw r6,r31,$300
	lw r7,r31,$296
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$292
;lib/lib_sinint.ml@35:0;35:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@35:7;35:8lib/lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$288
;lib/lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$284
;lib/lib_sinint.ml@36:13;36:39
	lw r5,r31,$652
	lw r6,r31,$288
	lw r7,r31,$284
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$280
;lib/lib_sinint.ml@36:0;36:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@36:7;36:8lib/lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$276
;lib/lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$272
;lib/lib_sinint.ml@37:13;37:39
	lw r5,r31,$652
	lw r6,r31,$276
	lw r7,r31,$272
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$268
;lib/lib_sinint.ml@37:0;37:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@37:7;37:8lib/lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$264
;lib/lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$260
;lib/lib_sinint.ml@38:13;38:39
	lw r5,r31,$652
	lw r6,r31,$264
	lw r7,r31,$260
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$256
;lib/lib_sinint.ml@38:0;38:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@38:7;38:8lib/lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$252
;lib/lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$248
;lib/lib_sinint.ml@39:13;39:39
	lw r5,r31,$652
	lw r6,r31,$252
	lw r7,r31,$248
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$244
;lib/lib_sinint.ml@39:0;39:39::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@39:7;39:8lib/lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$240
;lib/lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$236
;lib/lib_sinint.ml@40:14;40:40
	lw r5,r31,$652
	lw r6,r31,$240
	lw r7,r31,$236
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$232
;lib/lib_sinint.ml@40:0;40:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@40:7;40:9lib/lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$228
;lib/lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$224
;lib/lib_sinint.ml@41:14;41:40
	lw r5,r31,$652
	lw r6,r31,$228
	lw r7,r31,$224
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$220
;lib/lib_sinint.ml@41:0;41:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@41:7;41:9lib/lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$216
;lib/lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$212
;lib/lib_sinint.ml@42:14;42:40
	lw r5,r31,$652
	lw r6,r31,$216
	lw r7,r31,$212
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$208
;lib/lib_sinint.ml@42:0;42:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@42:7;42:9lib/lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$204
;lib/lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$200
;lib/lib_sinint.ml@43:14;43:40
	lw r5,r31,$652
	lw r6,r31,$204
	lw r7,r31,$200
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$196
;lib/lib_sinint.ml@43:0;43:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@43:7;43:9lib/lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$192
;lib/lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$188
;lib/lib_sinint.ml@44:14;44:40
	lw r5,r31,$652
	lw r6,r31,$192
	lw r7,r31,$188
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$184
;lib/lib_sinint.ml@44:0;44:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@44:7;44:9lib/lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$180
;lib/lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$176
;lib/lib_sinint.ml@45:14;45:40
	lw r5,r31,$652
	lw r6,r31,$180
	lw r7,r31,$176
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$172
;lib/lib_sinint.ml@45:0;45:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@45:7;45:9lib/lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$168
;lib/lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$164
;lib/lib_sinint.ml@46:14;46:40
	lw r5,r31,$652
	lw r6,r31,$168
	lw r7,r31,$164
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$160
;lib/lib_sinint.ml@46:0;46:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@46:7;46:9lib/lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$156
;lib/lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$152
;lib/lib_sinint.ml@47:14;47:40
	lw r5,r31,$652
	lw r6,r31,$156
	lw r7,r31,$152
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$148
;lib/lib_sinint.ml@47:0;47:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@47:7;47:9lib/lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$144
;lib/lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$140
;lib/lib_sinint.ml@48:14;48:40
	lw r5,r31,$652
	lw r6,r31,$144
	lw r7,r31,$140
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$136
;lib/lib_sinint.ml@48:0;48:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@48:7;48:9lib/lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$132
;lib/lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$128
;lib/lib_sinint.ml@49:14;49:40
	lw r5,r31,$652
	lw r6,r31,$132
	lw r7,r31,$128
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$124
;lib/lib_sinint.ml@49:0;49:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@49:7;49:9lib/lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$120
;lib/lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$116
;lib/lib_sinint.ml@50:14;50:40
	lw r5,r31,$652
	lw r6,r31,$120
	lw r7,r31,$116
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$112
;lib/lib_sinint.ml@50:0;50:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@50:7;50:9lib/lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$108
;lib/lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$104
;lib/lib_sinint.ml@51:14;51:40
	lw r5,r31,$652
	lw r6,r31,$108
	lw r7,r31,$104
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$100
;lib/lib_sinint.ml@51:0;51:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@51:7;51:9lib/lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$96
;lib/lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$92
;lib/lib_sinint.ml@52:14;52:40
	lw r5,r31,$652
	lw r6,r31,$96
	lw r7,r31,$92
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$88
;lib/lib_sinint.ml@52:0;52:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@52:7;52:9lib/lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$84
;lib/lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$80
;lib/lib_sinint.ml@53:14;53:40
	lw r5,r31,$652
	lw r6,r31,$84
	lw r7,r31,$80
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$76
;lib/lib_sinint.ml@53:0;53:40::=OArrWritelib/lib_sinint.ml@2:12;2:31lib/lib_sinint.ml@53:7;53:9lib/lib_sinint.ml@53:14;53:40
	li r5,$80
	sw r5,r31,$72
;test/mandelbrot_edit.ml@1:11;1:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$72
;test/mandelbrot_edit.ml@1:11;1:13::<=test/mandelbrot_edit.ml@1:11;1:13
	jal print_char
	sw r9,r31,$68
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@1:0;1:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$52
	sw r5,r31,$64
;test/mandelbrot_edit.ml@2:11;2:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$64
;test/mandelbrot_edit.ml@2:11;2:13::<=test/mandelbrot_edit.ml@2:11;2:13
	jal print_char
	sw r9,r31,$60
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@2:0;2:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$10
	sw r5,r31,$56
;test/mandelbrot_edit.ml@3:11;3:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$56
;test/mandelbrot_edit.ml@3:11;3:13::<=test/mandelbrot_edit.ml@3:11;3:13
	jal print_char
	sw r9,r31,$52
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@3:0;3:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$52
	sw r5,r31,$48
;test/mandelbrot_edit.ml@4:11;4:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$48
;test/mandelbrot_edit.ml@4:11;4:13::<=test/mandelbrot_edit.ml@4:11;4:13
	jal print_char
	sw r9,r31,$44
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@4:0;4:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$48
	sw r5,r31,$40
;test/mandelbrot_edit.ml@5:11;5:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$40
;test/mandelbrot_edit.ml@5:11;5:13::<=test/mandelbrot_edit.ml@5:11;5:13
	jal print_char
	sw r9,r31,$36
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@5:0;5:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$32
	sw r5,r31,$32
;test/mandelbrot_edit.ml@6:11;6:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$32
;test/mandelbrot_edit.ml@6:11;6:13::<=test/mandelbrot_edit.ml@6:11;6:13
	jal print_char
	sw r9,r31,$28
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@6:0;6:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$52
	sw r5,r31,$24
;test/mandelbrot_edit.ml@7:11;7:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$24
;test/mandelbrot_edit.ml@7:11;7:13::<=test/mandelbrot_edit.ml@7:11;7:13
	jal print_char
	sw r9,r31,$20
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@7:0;7:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$48
	sw r5,r31,$16
;test/mandelbrot_edit.ml@8:11;8:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$16
;test/mandelbrot_edit.ml@8:11;8:13::<=test/mandelbrot_edit.ml@8:11;8:13
	jal print_char
	sw r9,r31,$12
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@8:0;8:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$10
	sw r5,r31,$8
;test/mandelbrot_edit.ml@9:11;9:13
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$8
;test/mandelbrot_edit.ml@9:11;9:13::<=test/mandelbrot_edit.ml@9:11;9:13
	jal print_char
	sw r9,r31,$4
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;test/mandelbrot_edit.ml@9:0;9:13test/mandelbrot_edit.ml@1:0;1:10
	li r5,$0
	sw r5,r31,$0
;test/mandelbrot_edit.ml@32:6;32:7
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$0
;test/mandelbrot_edit.ml@32:6;32:7::<=test/mandelbrot_edit.ml@32:6;32:7
	jal @a_1043yloop
	mov r8,r9
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;@0:-1;0:-1test/mandelbrot_edit.ml@32:0;32:5
	hlt 
