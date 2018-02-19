
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


@a_1107f:
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
@cfg_label_2228:
@cfg_label_2227:
@cfg_label_2226:
@cfg_label_2225:
@cfg_label_2177:
	addi r14,r10,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@109:2;111:42
	slt r5,r14,r11
	bne r0,r5,@cfg_label_2221
	j @cfg_label_2220
	j @cfg_label_2222
	j @cfg_label_2223
@cfg_label_2222:
@cfg_label_2220:
	mov r5,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2223:
@cfg_label_2221:
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
	bne r0,r5,@cfg_label_2214
	j @cfg_label_2213
	j @cfg_label_2215
@cfg_label_2214:
	slt r5,r14,r13
	bne r0,r5,@cfg_label_2210
	j @cfg_label_2209
	j @cfg_label_2211
	j @cfg_label_2212
@cfg_label_2211:
@cfg_label_2209:
	mov r5,r10
;lib_sinint.ml@109:2;111:42::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2212:
@cfg_label_2210:
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
	bne r0,r5,@cfg_label_2203
	j @cfg_label_2202
	j @cfg_label_2204
	j @cfg_label_2205
@cfg_label_2204:
@cfg_label_2202:
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
	j @cfg_label_2177
	j @cfg_label_2226
@cfg_label_2205:
@cfg_label_2203:
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
	j @cfg_label_2177
	j @cfg_label_2225
@cfg_label_2215:
@cfg_label_2213:
	addi r10,r13,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@110:10;110:19
	slt r5,r10,r11
	bne r0,r5,@cfg_label_2192
	j @cfg_label_2191
	j @cfg_label_2193
	j @cfg_label_2194
@cfg_label_2193:
@cfg_label_2191:
	mov r5,r13
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@109:2;111:42
	addi r1,r1,$16
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2194:
@cfg_label_2192:
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
	bne r0,r5,@cfg_label_2185
	j @cfg_label_2184
	j @cfg_label_2186
	j @cfg_label_2187
@cfg_label_2186:
@cfg_label_2184:
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
	j @cfg_label_2177
	j @cfg_label_2228
@cfg_label_2187:
@cfg_label_2185:
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
	j @cfg_label_2177
	j @cfg_label_2227
@a_946divten:
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
@cfg_label_2136:
	li r10,$0
;lib_sinint.ml@113:9;113:10
	bne r8,r10,@cfg_label_2173
	j @cfg_label_2172
	j @cfg_label_2174
	j @cfg_label_2175
@cfg_label_2174:
@cfg_label_2172:
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
@cfg_label_2175:
@cfg_label_2173:
	li r10,$0
;lib_sinint.ml@114:10;114:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2168
	j @cfg_label_2167
	j @cfg_label_2169
@cfg_label_2168:
	li r9,$0
;lib_sinint.ml@115:12;115:13
	sub r20,r0,r8
;lib_sinint.ml@115:15;115:17::=Ominuslib_sinint.ml@108:1;115:25
	addi r10,r9,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@115:12;115:13
	slt r5,r10,r20
	bne r0,r5,@cfg_label_2158
	j @cfg_label_2157
	j @cfg_label_2159
	j @cfg_label_2160
@cfg_label_2159:
@cfg_label_2157:
	mov r21,r9
;lib_sinint.ml@115:12;115:13::<=lib_sinint.ml@115:10;115:23
	j @cfg_label_2161
@cfg_label_2160:
@cfg_label_2158:
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
	bne r0,r5,@cfg_label_2151
	j @cfg_label_2150
	j @cfg_label_2152
	j @cfg_label_2153
@cfg_label_2152:
@cfg_label_2150:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r8
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r11,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	mov r12,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	jal @a_1107f
	mov r21,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@115:10;115:23lib_sinint.ml@111:22;111:23
	j @cfg_label_2162
@cfg_label_2153:
@cfg_label_2151:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r9
;lib_sinint.ml@115:12;115:13::<=lib_sinint.ml@115:12;115:13
	mov r11,r8
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r12,r20
;lib_sinint.ml@115:15;115:17::<=lib_sinint.ml@115:15;115:17
	jal @a_1107f
	mov r21,r5
	addi r1,r1,$12
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@115:10;115:23lib_sinint.ml@111:22;111:23
@cfg_label_2162:
@cfg_label_2161:
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
@cfg_label_2169:
@cfg_label_2167:
	li r9,$0
;lib_sinint.ml@114:19;114:20
	addi r10,r9,$1
;lib_sinint.ml@109:5;109:8::=Oiadd[1]lib_sinint.ml@114:19;114:20
	slt r5,r10,r8
	bne r0,r5,@cfg_label_2145
	j @cfg_label_2144
	j @cfg_label_2146
	j @cfg_label_2147
@cfg_label_2146:
@cfg_label_2144:
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
@cfg_label_2147:
@cfg_label_2145:
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
	bne r0,r5,@cfg_label_2138
	j @cfg_label_2137
	j @cfg_label_2139
	j @cfg_label_2140
@cfg_label_2139:
@cfg_label_2137:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r20
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r11,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	mov r12,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	jal @a_1107f
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
@cfg_label_2140:
@cfg_label_2138:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$12
	mov r10,r9
;lib_sinint.ml@114:19;114:20::<=lib_sinint.ml@114:19;114:20
	mov r11,r20
;lib_sinint.ml@110:10;110:19::<=lib_sinint.ml@110:10;110:19
	mov r12,r8
;lib_sinint.ml@108:1;115:25::<=lib_sinint.ml@108:1;115:25
	jal @a_1107f
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
@a_1060print_int_base:
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
@cfg_label_2101:
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2132
	j @cfg_label_2131
	j @cfg_label_2133
@cfg_label_2132:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_2127
	j @cfg_label_2126
	j @cfg_label_2128
	j @cfg_label_2129
@cfg_label_2128:
@cfg_label_2126:
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
@cfg_label_2129:
@cfg_label_2127:
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
@cfg_label_2133:
@cfg_label_2131:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@121:2;124:29::<=lib_sinint.ml@121:2;124:29
	jal @a_946divten
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;lib_sinint.ml@122:13;122:21lib_sinint.ml@122:13;122:19
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r9,r10
	bne r0,r5,@cfg_label_2114
	j @cfg_label_2113
	j @cfg_label_2115
@cfg_label_2114:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r9
	bne r0,r5,@cfg_label_2109
	j @cfg_label_2108
	j @cfg_label_2110
	j @cfg_label_2111
@cfg_label_2110:
@cfg_label_2108:
;lib_sinint.ml@123:4;123:21
	j @cfg_label_2121
@cfg_label_2111:
@cfg_label_2109:
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
	j @cfg_label_2122
@cfg_label_2115:
@cfg_label_2113:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@122:13;122:21::<=lib_sinint.ml@122:13;122:21
	jal @a_946divten
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
	jal @a_1060print_int_base
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
	j @cfg_label_2120
@cfg_label_2122:
@cfg_label_2121:
@cfg_label_2120:
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
@a_948print_int:
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
@cfg_label_2053:
	li r10,$0
;lib_sinint.ml@126:8;126:9
	bne r8,r10,@cfg_label_2097
	j @cfg_label_2096
	j @cfg_label_2098
@cfg_label_2097:
	li r10,$0
;lib_sinint.ml@127:14;127:15
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2092
	j @cfg_label_2091
	j @cfg_label_2093
@cfg_label_2092:
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
	bne r0,r5,@cfg_label_2083
	j @cfg_label_2082
	j @cfg_label_2084
@cfg_label_2083:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r9
	bne r0,r5,@cfg_label_2078
	j @cfg_label_2077
	j @cfg_label_2079
	j @cfg_label_2080
@cfg_label_2079:
@cfg_label_2077:
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
@cfg_label_2080:
@cfg_label_2078:
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
@cfg_label_2084:
@cfg_label_2082:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r9
;lib_sinint.ml@127:52;127:55::<=lib_sinint.ml@127:52;127:55
	jal @a_946divten
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
	jal @a_1060print_int_base
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
@cfg_label_2093:
@cfg_label_2091:
	li r10,$10
;lib_sinint.ml@121:9;121:11
	slt r5,r8,r10
	bne r0,r5,@cfg_label_2067
	j @cfg_label_2066
	j @cfg_label_2068
@cfg_label_2067:
	li r10,$0
;lib_sinint.ml@121:21;121:22
	slt r5,r10,r8
	bne r0,r5,@cfg_label_2062
	j @cfg_label_2061
	j @cfg_label_2063
	j @cfg_label_2064
@cfg_label_2063:
@cfg_label_2061:
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
@cfg_label_2064:
@cfg_label_2062:
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
@cfg_label_2068:
@cfg_label_2066:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;lib_sinint.ml@118:1;127:79::<=lib_sinint.ml@118:1;127:79
	jal @a_946divten
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
	jal @a_1060print_int_base
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
@cfg_label_2098:
@cfg_label_2096:
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
@cls_1744:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$8
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r10,r10
	lw r9,r4,$0
	lw r20,r4,$4
	lw r19,r4,$8
	lw r17,r4,$12
	lw r16,r4,$16
	lw r15,r4,$20
	lw r14,r4,$24
	lw r13,r4,$28
	lw r12,r4,$32
	lw r11,r4,$36
@cfg_label_2026:
	mov r6,r3
	sw r9,r3,$0
	sw r20,r3,$4
	sw r19,r3,$8
	sw r17,r3,$12
	sw r16,r3,$16
	sw r15,r3,$20
	sw r14,r3,$24
	sw r13,r3,$28
	sw r12,r3,$32
	sw r11,r3,$36
	addi r3,r3,$40
	sw r6,r3,$4
	li r5,@cls_1744
	sw r5,r3,$0
	mov r8,r3
	addi r3,r3,$8
;./test/closure_buggy.ml@24:4;25:31./test/closure_buggy.ml@24:4;25:31
	add r18,r9,r20
;./test/closure_buggy.ml@24:12;24:19::=Oadd./test/closure_buggy.ml@24:12;24:14./test/closure_buggy.ml@24:17;24:19
	add r9,r18,r19
;./test/closure_buggy.ml@24:12;24:24::=Oadd./test/closure_buggy.ml@24:12;24:19./test/closure_buggy.ml@24:22;24:24
	add r18,r9,r17
;./test/closure_buggy.ml@24:12;24:29::=Oadd./test/closure_buggy.ml@24:12;24:24./test/closure_buggy.ml@24:27;24:29
	add r17,r18,r16
;./test/closure_buggy.ml@24:12;24:34::=Oadd./test/closure_buggy.ml@24:12;24:29./test/closure_buggy.ml@24:32;24:34
	add r16,r17,r15
;./test/closure_buggy.ml@24:12;24:39::=Oadd./test/closure_buggy.ml@24:12;24:34./test/closure_buggy.ml@24:37;24:39
	add r17,r16,r14
;./test/closure_buggy.ml@24:12;24:44::=Oadd./test/closure_buggy.ml@24:12;24:39./test/closure_buggy.ml@24:42;24:44
	add r15,r17,r13
;./test/closure_buggy.ml@24:12;24:49::=Oadd./test/closure_buggy.ml@24:12;24:44./test/closure_buggy.ml@24:47;24:49
	add r17,r15,r12
;./test/closure_buggy.ml@24:12;24:54::=Oadd./test/closure_buggy.ml@24:12;24:49./test/closure_buggy.ml@24:52;24:54
	add r15,r17,r11
;./test/closure_buggy.ml@24:12;24:60::=Oadd./test/closure_buggy.ml@24:12;24:54./test/closure_buggy.ml@24:57;24:60
	li r17,$0
;./test/closure_buggy.ml@25:11;25:12
	slt r5,r17,r10
	bne r0,r5,@cfg_label_2039
	j @cfg_label_2038
	j @cfg_label_2040
@cfg_label_2039:
	mov r9,r15
;./test/closure_buggy.ml@24:12;24:60::<=./test/closure_buggy.ml@24:4;25:31
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$8
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2040:
@cfg_label_2038:
	sub r15,r0,r10
;./test/closure_buggy.ml@25:28;25:30::=Ominus./test/closure_buggy.ml@24:4;25:31
	add r10,r16,r14
;./test/closure_buggy.ml@24:12;24:44::=Oadd./test/closure_buggy.ml@24:12;24:39./test/closure_buggy.ml@24:42;24:44
	add r14,r10,r13
;./test/closure_buggy.ml@24:12;24:49::=Oadd./test/closure_buggy.ml@24:12;24:44./test/closure_buggy.ml@24:47;24:49
	add r13,r14,r12
;./test/closure_buggy.ml@24:12;24:54::=Oadd./test/closure_buggy.ml@24:12;24:49./test/closure_buggy.ml@24:52;24:54
	add r10,r13,r11
;./test/closure_buggy.ml@24:12;24:60::=Oadd./test/closure_buggy.ml@24:12;24:54./test/closure_buggy.ml@24:57;24:60
	li r11,$0
;./test/closure_buggy.ml@25:11;25:12
	slt r5,r11,r15
	bne r0,r5,@cfg_label_2029
	j @cfg_label_2028
	j @cfg_label_2030
@cfg_label_2029:
	mov r9,r10
;./test/closure_buggy.ml@24:12;24:60::<=./test/closure_buggy.ml@24:4;25:31
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$8
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2030:
@cfg_label_2028:
	sub r20,r0,r15
;./test/closure_buggy.ml@25:28;25:30::=Ominus./test/closure_buggy.ml@25:28;25:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;./test/closure_buggy.ml@25:28;25:30::<=./test/closure_buggy.ml@25:28;25:30
	lw r4,r8,$4
	lw r8,r8,$0
	jalr r8
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@24:4;25:31./test/closure_buggy.ml@24:4;25:31
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$8
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_956h:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$48
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r10,r10
@cfg_label_1998:
	lw r11,r10,$36
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[9]./test/closure_buggy.ml@22:2;26:5
	lw r12,r10,$32
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[8]./test/closure_buggy.ml@22:2;26:5
	lw r13,r10,$28
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[7]./test/closure_buggy.ml@22:2;26:5
	lw r14,r10,$24
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[6]./test/closure_buggy.ml@22:2;26:5
	lw r15,r10,$20
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[5]./test/closure_buggy.ml@22:2;26:5
	lw r16,r10,$16
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[4]./test/closure_buggy.ml@22:2;26:5
	lw r17,r10,$12
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[3]./test/closure_buggy.ml@22:2;26:5
	lw r18,r10,$8
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[2]./test/closure_buggy.ml@22:2;26:5
	lw r9,r10,$4
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[1]./test/closure_buggy.ml@22:2;26:5
	lw r19,r10,$0
;./test/closure_buggy.ml@22:41;22:42::=OGetTuple[0]./test/closure_buggy.ml@22:2;26:5
	mov r6,r3
	sw r19,r3,$0
	sw r9,r3,$4
	sw r18,r3,$8
	sw r17,r3,$12
	sw r16,r3,$16
	sw r15,r3,$20
	sw r14,r3,$24
	sw r13,r3,$28
	sw r12,r3,$32
	sw r11,r3,$36
	addi r3,r3,$40
	sw r6,r3,$4
	li r5,@cls_1744
	sw r5,r3,$0
	mov r8,r3
	addi r3,r3,$8
;./test/closure_buggy.ml@24:4;25:31./test/closure_buggy.ml@24:4;25:31
	li r10,$1
;./test/closure_buggy.ml@26:4;26:5
	add r20,r19,r9
;./test/closure_buggy.ml@24:12;24:19::=Oadd./test/closure_buggy.ml@22:41;22:42./test/closure_buggy.ml@22:41;22:42
	add r19,r20,r18
;./test/closure_buggy.ml@24:12;24:24::=Oadd./test/closure_buggy.ml@24:12;24:19./test/closure_buggy.ml@22:41;22:42
	add r18,r19,r17
;./test/closure_buggy.ml@24:12;24:29::=Oadd./test/closure_buggy.ml@24:12;24:24./test/closure_buggy.ml@22:41;22:42
	add r17,r18,r16
;./test/closure_buggy.ml@24:12;24:34::=Oadd./test/closure_buggy.ml@24:12;24:29./test/closure_buggy.ml@22:41;22:42
	add r16,r17,r15
;./test/closure_buggy.ml@24:12;24:39::=Oadd./test/closure_buggy.ml@24:12;24:34./test/closure_buggy.ml@22:41;22:42
	add r15,r16,r14
;./test/closure_buggy.ml@24:12;24:44::=Oadd./test/closure_buggy.ml@24:12;24:39./test/closure_buggy.ml@22:41;22:42
	add r14,r15,r13
;./test/closure_buggy.ml@24:12;24:49::=Oadd./test/closure_buggy.ml@24:12;24:44./test/closure_buggy.ml@22:41;22:42
	add r13,r14,r12
;./test/closure_buggy.ml@24:12;24:54::=Oadd./test/closure_buggy.ml@24:12;24:49./test/closure_buggy.ml@22:41;22:42
	add r12,r13,r11
;./test/closure_buggy.ml@24:12;24:60::=Oadd./test/closure_buggy.ml@24:12;24:54./test/closure_buggy.ml@22:41;22:42
	li r11,$0
;./test/closure_buggy.ml@25:11;25:12
	slt r5,r11,r10
	bne r0,r5,@cfg_label_2001
	j @cfg_label_2000
	j @cfg_label_2002
@cfg_label_2001:
	mov r9,r12
;./test/closure_buggy.ml@24:12;24:60::<=./test/closure_buggy.ml@22:2;26:5
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$48
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_2002:
@cfg_label_2000:
	li r20,$-1
;./test/closure_buggy.ml@25:28;25:30
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;./test/closure_buggy.ml@25:28;25:30::<=./test/closure_buggy.ml@25:28;25:30
	lw r4,r8,$4
	lw r8,r8,$0
	jalr r8
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@22:2;26:5./test/closure_buggy.ml@24:4;25:31
	mov r5,r9
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$48
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_1012f:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r10,r10
@cfg_label_1966:
	li r11,$0
;./test/closure_buggy.ml@17:9;17:10
	bne r10,r11,@cfg_label_1994
	j @cfg_label_1993
	j @cfg_label_1995
	j @cfg_label_1996
@cfg_label_1995:
@cfg_label_1993:
	li r5,$0
;./test/closure_buggy.ml@17:2;18:15
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1996:
@cfg_label_1994:
	subi r12,r10,$1
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@17:2;18:15
	li r10,$0
;./test/closure_buggy.ml@17:9;17:10
	bne r12,r10,@cfg_label_1986
	j @cfg_label_1985
	j @cfg_label_1987
	j @cfg_label_1988
@cfg_label_1987:
@cfg_label_1985:
	li r10,$0
;./test/closure_buggy.ml@18:6;18:15
	j @cfg_label_1989
@cfg_label_1988:
@cfg_label_1986:
	subi r11,r12,$1
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@18:9;18:14
	li r10,$0
;./test/closure_buggy.ml@17:9;17:10
	bne r11,r10,@cfg_label_1978
	j @cfg_label_1977
	j @cfg_label_1979
	j @cfg_label_1980
@cfg_label_1979:
@cfg_label_1977:
	li r11,$0
;./test/closure_buggy.ml@18:6;18:15
	j @cfg_label_1981
@cfg_label_1980:
@cfg_label_1978:
	subi r10,r11,$1
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@18:9;18:14
	li r11,$0
;./test/closure_buggy.ml@17:9;17:10
	bne r10,r11,@cfg_label_1970
	j @cfg_label_1969
	j @cfg_label_1971
	j @cfg_label_1972
@cfg_label_1971:
@cfg_label_1969:
	li r10,$0
;./test/closure_buggy.ml@18:6;18:15
	j @cfg_label_1973
@cfg_label_1972:
@cfg_label_1970:
	subi r8,r10,$1
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@18:9;18:14
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;./test/closure_buggy.ml@18:9;18:14::<=./test/closure_buggy.ml@18:9;18:14
	jal @a_1012f
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@18:6;18:15./test/closure_buggy.ml@18:6;18:7
	addi r10,r9,$10
;./test/closure_buggy.ml@18:6;18:15::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
@cfg_label_1973:
	addi r11,r10,$10
;./test/closure_buggy.ml@18:6;18:15::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
@cfg_label_1981:
	addi r10,r11,$10
;./test/closure_buggy.ml@18:6;18:15::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
@cfg_label_1989:
	addi r5,r10,$10
;./test/closure_buggy.ml@17:2;18:15::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@a_1026f:
	mflr r7
	subi r1,r1,$4
	sw r7,r1,$0
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$24
	subi r1,r1,$4
	sw r20,r1,$0
	subi r1,r1,$4
	sw r9,r1,$0
	subi r1,r1,$4
	sw r8,r1,$0
	mov r8,r10
@cfg_label_1954:
	li r10,$0
;./test/closure_buggy.ml@6:9;6:10
	slt r5,r8,r10
	bne r0,r5,@cfg_label_1962
	j @cfg_label_1961
	j @cfg_label_1963
@cfg_label_1962:
;./test/closure_buggy.ml@6:2;9:17
	mov r5,r8
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
	lw r2,r1,$0
	addi r1,r1,$4
	lw r6,r1,$0
	addi r1,r1,$4
	jr r6
@cfg_label_1963:
@cfg_label_1961:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r8
;./test/closure_buggy.ml@6:2;9:17::<=./test/closure_buggy.ml@6:2;9:17
	jal @a_948print_int
	mov r9,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@7:3;7:14./test/closure_buggy.ml@7:3;7:12
	li r11,$1
;./test/closure_buggy.ml@8:24;8:25
	mov r6,r3
	addi r3,r3,$0
	sw r6,r3,$4
	li r5,@a_1026f
	sw r5,r3,$0
	mov r12,r3
	addi r3,r3,$8
;./test/closure_buggy.ml@6:2;9:17./test/closure_buggy.ml@6:2;9:17
	mov r7,r3
	sll r5,r11,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_2236
@emit_label_2235:
	sw r12,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_2235
@emit_label_2236:
	mov r10,r7
;./test/closure_buggy.ml@8:11;8:27::=OArrCrt./test/closure_buggy.ml@8:24;8:25./test/closure_buggy.ml@6:2;9:17
	lw r9,r10,$0
;./test/closure_buggy.ml@9:3;9:8::=OiArrRead[0]./test/closure_buggy.ml@8:11;8:27
	subi r20,r8,$1
;./test/closure_buggy.ml@9:10;9:15::=Oibysub[1]./test/closure_buggy.ml@6:2;9:17
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	mov r10,r20
;./test/closure_buggy.ml@9:10;9:15::<=./test/closure_buggy.ml@9:10;9:15
	lw r4,r9,$4
	lw r9,r9,$0
	jalr r9
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@6:2;9:17./test/closure_buggy.ml@9:3;9:8
	mov r5,r8
	lw r8,r1,$0
	addi r1,r1,$4
	lw r9,r1,$0
	addi r1,r1,$4
	lw r20,r1,$0
	addi r1,r1,$4
	addi r1,r1,$24
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
	addi r3,r3,$740
	subi r1,r1,$4
	sw r2,r1,$0
	mov r2,r1
	subi r1,r1,$760
@cfg_label_1747:
	li r5,$24
	sw r5,r31,$736
;lib_sinint.ml@1:25;1:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$732
;lib_sinint.ml@1:28;1:31
	lw r5,r31,$736
	lw r6,r31,$732
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_2230
@emit_label_2229:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_2229
@emit_label_2230:
	mov r5,r7
	sw r5,r31,$728
;lib_sinint.ml@1:12;1:31::=OArrCrtlib_sinint.ml@1:25;1:27lib_sinint.ml@1:28;1:31
	li r5,$24
	sw r5,r31,$724
;lib_sinint.ml@2:25;2:27
	fmovi f1,$0.00000000000000000000
	fst f1,r31,$720
;lib_sinint.ml@2:28;2:31
	lw r5,r31,$724
	lw r6,r31,$720
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_2232
@emit_label_2231:
	sw r6,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_2231
@emit_label_2232:
	mov r5,r7
	sw r5,r31,$716
;lib_sinint.ml@2:12;2:31::=OArrCrtlib_sinint.ml@2:25;2:27lib_sinint.ml@2:28;2:31
	li r5,$0
	sw r5,r31,$712
;lib_sinint.ml@5:7;5:8
	fmovi f1,$1.00000000000000000000
	fst f1,r31,$708
;lib_sinint.ml@5:13;5:16
	lw r5,r31,$728
	lw r6,r31,$712
	lw r7,r31,$708
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$704
;lib_sinint.ml@5:0;5:16::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@5:7;5:8lib_sinint.ml@5:13;5:16
	li r5,$1
	sw r5,r31,$700
;lib_sinint.ml@6:7;6:8
	fmovi f1,$0.50000000000000000000
	fst f1,r31,$696
;lib_sinint.ml@6:13;6:16
	lw r5,r31,$728
	lw r6,r31,$700
	lw r7,r31,$696
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$692
;lib_sinint.ml@6:0;6:16::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@6:7;6:8lib_sinint.ml@6:13;6:16
	li r5,$2
	sw r5,r31,$688
;lib_sinint.ml@7:7;7:8
	fmovi f1,$0.25000000000000000000
	fst f1,r31,$684
;lib_sinint.ml@7:13;7:17
	lw r5,r31,$728
	lw r6,r31,$688
	lw r7,r31,$684
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$680
;lib_sinint.ml@7:0;7:17::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@7:7;7:8lib_sinint.ml@7:13;7:17
	li r5,$3
	sw r5,r31,$676
;lib_sinint.ml@8:7;8:8
	fmovi f1,$0.12500000000000000000
	fst f1,r31,$672
;lib_sinint.ml@8:13;8:18
	lw r5,r31,$728
	lw r6,r31,$676
	lw r7,r31,$672
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$668
;lib_sinint.ml@8:0;8:18::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@8:7;8:8lib_sinint.ml@8:13;8:18
	li r5,$4
	sw r5,r31,$664
;lib_sinint.ml@9:7;9:8
	fmovi f1,$0.06250000000000000000
	fst f1,r31,$660
;lib_sinint.ml@9:13;9:19
	lw r5,r31,$728
	lw r6,r31,$664
	lw r7,r31,$660
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$656
;lib_sinint.ml@9:0;9:19::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@9:7;9:8lib_sinint.ml@9:13;9:19
	li r5,$5
	sw r5,r31,$652
;lib_sinint.ml@10:7;10:8
	fmovi f1,$0.03125000000000000000
	fst f1,r31,$648
;lib_sinint.ml@10:13;10:20
	lw r5,r31,$728
	lw r6,r31,$652
	lw r7,r31,$648
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$644
;lib_sinint.ml@10:0;10:20::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@10:7;10:8lib_sinint.ml@10:13;10:20
	li r5,$6
	sw r5,r31,$640
;lib_sinint.ml@11:7;11:8
	fmovi f1,$0.01562500000000000000
	fst f1,r31,$636
;lib_sinint.ml@11:13;11:21
	lw r5,r31,$728
	lw r6,r31,$640
	lw r7,r31,$636
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$632
;lib_sinint.ml@11:0;11:21::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@11:7;11:8lib_sinint.ml@11:13;11:21
	li r5,$7
	sw r5,r31,$628
;lib_sinint.ml@12:7;12:8
	fmovi f1,$0.00781250000000000000
	fst f1,r31,$624
;lib_sinint.ml@12:13;12:22
	lw r5,r31,$728
	lw r6,r31,$628
	lw r7,r31,$624
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$620
;lib_sinint.ml@12:0;12:22::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@12:7;12:8lib_sinint.ml@12:13;12:22
	li r5,$8
	sw r5,r31,$616
;lib_sinint.ml@13:7;13:8
	fmovi f1,$0.00390625000000000000
	fst f1,r31,$612
;lib_sinint.ml@13:13;13:23
	lw r5,r31,$728
	lw r6,r31,$616
	lw r7,r31,$612
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$608
;lib_sinint.ml@13:0;13:23::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@13:7;13:8lib_sinint.ml@13:13;13:23
	li r5,$9
	sw r5,r31,$604
;lib_sinint.ml@14:7;14:8
	fmovi f1,$0.00195312500000000000
	fst f1,r31,$600
;lib_sinint.ml@14:13;14:24
	lw r5,r31,$728
	lw r6,r31,$604
	lw r7,r31,$600
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$596
;lib_sinint.ml@14:0;14:24::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@14:7;14:8lib_sinint.ml@14:13;14:24
	li r5,$10
	sw r5,r31,$592
;lib_sinint.ml@15:7;15:9
	fmovi f1,$0.00097656250000000000
	fst f1,r31,$588
;lib_sinint.ml@15:14;15:26
	lw r5,r31,$728
	lw r6,r31,$592
	lw r7,r31,$588
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$584
;lib_sinint.ml@15:0;15:26::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@15:7;15:9lib_sinint.ml@15:14;15:26
	li r5,$11
	sw r5,r31,$580
;lib_sinint.ml@16:7;16:9
	fmovi f1,$0.00048828125000000000
	fst f1,r31,$576
;lib_sinint.ml@16:14;16:27
	lw r5,r31,$728
	lw r6,r31,$580
	lw r7,r31,$576
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$572
;lib_sinint.ml@16:0;16:27::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@16:7;16:9lib_sinint.ml@16:14;16:27
	li r5,$12
	sw r5,r31,$568
;lib_sinint.ml@17:7;17:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$564
;lib_sinint.ml@17:14;17:28
	lw r5,r31,$728
	lw r6,r31,$568
	lw r7,r31,$564
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$560
;lib_sinint.ml@17:0;17:28::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@17:7;17:9lib_sinint.ml@17:14;17:28
	li r5,$13
	sw r5,r31,$556
;lib_sinint.ml@18:7;18:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$552
;lib_sinint.ml@18:14;18:29
	lw r5,r31,$728
	lw r6,r31,$556
	lw r7,r31,$552
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$548
;lib_sinint.ml@18:0;18:29::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@18:7;18:9lib_sinint.ml@18:14;18:29
	li r5,$14
	sw r5,r31,$544
;lib_sinint.ml@19:7;19:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$540
;lib_sinint.ml@19:14;19:30
	lw r5,r31,$728
	lw r6,r31,$544
	lw r7,r31,$540
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$536
;lib_sinint.ml@19:0;19:30::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@19:7;19:9lib_sinint.ml@19:14;19:30
	li r5,$15
	sw r5,r31,$532
;lib_sinint.ml@20:7;20:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$528
;lib_sinint.ml@20:14;20:31
	lw r5,r31,$728
	lw r6,r31,$532
	lw r7,r31,$528
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$524
;lib_sinint.ml@20:0;20:31::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@20:7;20:9lib_sinint.ml@20:14;20:31
	li r5,$16
	sw r5,r31,$520
;lib_sinint.ml@21:7;21:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$516
;lib_sinint.ml@21:14;21:32
	lw r5,r31,$728
	lw r6,r31,$520
	lw r7,r31,$516
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$512
;lib_sinint.ml@21:0;21:32::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@21:7;21:9lib_sinint.ml@21:14;21:32
	li r5,$17
	sw r5,r31,$508
;lib_sinint.ml@22:7;22:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$504
;lib_sinint.ml@22:14;22:33
	lw r5,r31,$728
	lw r6,r31,$508
	lw r7,r31,$504
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$500
;lib_sinint.ml@22:0;22:33::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@22:7;22:9lib_sinint.ml@22:14;22:33
	li r5,$18
	sw r5,r31,$496
;lib_sinint.ml@23:7;23:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$492
;lib_sinint.ml@23:14;23:34
	lw r5,r31,$728
	lw r6,r31,$496
	lw r7,r31,$492
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$488
;lib_sinint.ml@23:0;23:34::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@23:7;23:9lib_sinint.ml@23:14;23:34
	li r5,$19
	sw r5,r31,$484
;lib_sinint.ml@24:7;24:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$480
;lib_sinint.ml@24:14;24:35
	lw r5,r31,$728
	lw r6,r31,$484
	lw r7,r31,$480
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$476
;lib_sinint.ml@24:0;24:35::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@24:7;24:9lib_sinint.ml@24:14;24:35
	li r5,$20
	sw r5,r31,$472
;lib_sinint.ml@25:7;25:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$468
;lib_sinint.ml@25:14;25:36
	lw r5,r31,$728
	lw r6,r31,$472
	lw r7,r31,$468
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$464
;lib_sinint.ml@25:0;25:36::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@25:7;25:9lib_sinint.ml@25:14;25:36
	li r5,$21
	sw r5,r31,$460
;lib_sinint.ml@26:7;26:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$456
;lib_sinint.ml@26:14;26:37
	lw r5,r31,$728
	lw r6,r31,$460
	lw r7,r31,$456
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$452
;lib_sinint.ml@26:0;26:37::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@26:7;26:9lib_sinint.ml@26:14;26:37
	li r5,$22
	sw r5,r31,$448
;lib_sinint.ml@27:7;27:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$444
;lib_sinint.ml@27:14;27:38
	lw r5,r31,$728
	lw r6,r31,$448
	lw r7,r31,$444
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$440
;lib_sinint.ml@27:0;27:38::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@27:7;27:9lib_sinint.ml@27:14;27:38
	li r5,$23
	sw r5,r31,$436
;lib_sinint.ml@28:7;28:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$432
;lib_sinint.ml@28:14;28:39
	lw r5,r31,$728
	lw r6,r31,$436
	lw r7,r31,$432
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$428
;lib_sinint.ml@28:0;28:39::=OArrWritelib_sinint.ml@1:12;1:31lib_sinint.ml@28:7;28:9lib_sinint.ml@28:14;28:39
	li r5,$0
	sw r5,r31,$424
;lib_sinint.ml@30:7;30:8
	fmovi f1,$0.78539818525314331055
	fst f1,r31,$420
;lib_sinint.ml@30:13;30:39
	lw r5,r31,$716
	lw r6,r31,$424
	lw r7,r31,$420
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$416
;lib_sinint.ml@30:0;30:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@30:7;30:8lib_sinint.ml@30:13;30:39
	li r5,$1
	sw r5,r31,$412
;lib_sinint.ml@31:7;31:8
	fmovi f1,$0.46364760398864746094
	fst f1,r31,$408
;lib_sinint.ml@31:13;31:39
	lw r5,r31,$716
	lw r6,r31,$412
	lw r7,r31,$408
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$404
;lib_sinint.ml@31:0;31:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@31:7;31:8lib_sinint.ml@31:13;31:39
	li r5,$2
	sw r5,r31,$400
;lib_sinint.ml@32:7;32:8
	fmovi f1,$0.24497866630554199219
	fst f1,r31,$396
;lib_sinint.ml@32:13;32:39
	lw r5,r31,$716
	lw r6,r31,$400
	lw r7,r31,$396
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$392
;lib_sinint.ml@32:0;32:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@32:7;32:8lib_sinint.ml@32:13;32:39
	li r5,$3
	sw r5,r31,$388
;lib_sinint.ml@33:7;33:8
	fmovi f1,$0.12435499578714370728
	fst f1,r31,$384
;lib_sinint.ml@33:13;33:39
	lw r5,r31,$716
	lw r6,r31,$388
	lw r7,r31,$384
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$380
;lib_sinint.ml@33:0;33:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@33:7;33:8lib_sinint.ml@33:13;33:39
	li r5,$4
	sw r5,r31,$376
;lib_sinint.ml@34:7;34:8
	fmovi f1,$0.06241881102323532104
	fst f1,r31,$372
;lib_sinint.ml@34:13;34:39
	lw r5,r31,$716
	lw r6,r31,$376
	lw r7,r31,$372
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$368
;lib_sinint.ml@34:0;34:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@34:7;34:8lib_sinint.ml@34:13;34:39
	li r5,$5
	sw r5,r31,$364
;lib_sinint.ml@35:7;35:8
	fmovi f1,$0.03123983368277549744
	fst f1,r31,$360
;lib_sinint.ml@35:13;35:39
	lw r5,r31,$716
	lw r6,r31,$364
	lw r7,r31,$360
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$356
;lib_sinint.ml@35:0;35:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@35:7;35:8lib_sinint.ml@35:13;35:39
	li r5,$6
	sw r5,r31,$352
;lib_sinint.ml@36:7;36:8
	fmovi f1,$0.01562372874468564987
	fst f1,r31,$348
;lib_sinint.ml@36:13;36:39
	lw r5,r31,$716
	lw r6,r31,$352
	lw r7,r31,$348
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$344
;lib_sinint.ml@36:0;36:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@36:7;36:8lib_sinint.ml@36:13;36:39
	li r5,$7
	sw r5,r31,$340
;lib_sinint.ml@37:7;37:8
	fmovi f1,$0.00781234120950102806
	fst f1,r31,$336
;lib_sinint.ml@37:13;37:39
	lw r5,r31,$716
	lw r6,r31,$340
	lw r7,r31,$336
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$332
;lib_sinint.ml@37:0;37:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@37:7;37:8lib_sinint.ml@37:13;37:39
	li r5,$8
	sw r5,r31,$328
;lib_sinint.ml@38:7;38:8
	fmovi f1,$0.00390623020939528942
	fst f1,r31,$324
;lib_sinint.ml@38:13;38:39
	lw r5,r31,$716
	lw r6,r31,$328
	lw r7,r31,$324
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$320
;lib_sinint.ml@38:0;38:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@38:7;38:8lib_sinint.ml@38:13;38:39
	li r5,$9
	sw r5,r31,$316
;lib_sinint.ml@39:7;39:8
	fmovi f1,$0.00195312255527824163
	fst f1,r31,$312
;lib_sinint.ml@39:13;39:39
	lw r5,r31,$716
	lw r6,r31,$316
	lw r7,r31,$312
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$308
;lib_sinint.ml@39:0;39:39::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@39:7;39:8lib_sinint.ml@39:13;39:39
	li r5,$10
	sw r5,r31,$304
;lib_sinint.ml@40:7;40:9
	fmovi f1,$0.00097656220896169543
	fst f1,r31,$300
;lib_sinint.ml@40:14;40:40
	lw r5,r31,$716
	lw r6,r31,$304
	lw r7,r31,$300
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$296
;lib_sinint.ml@40:0;40:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@40:7;40:9lib_sinint.ml@40:14;40:40
	li r5,$11
	sw r5,r31,$292
;lib_sinint.ml@41:7;41:9
	fmovi f1,$0.00048828122089616954
	fst f1,r31,$288
;lib_sinint.ml@41:14;41:40
	lw r5,r31,$716
	lw r6,r31,$292
	lw r7,r31,$288
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$284
;lib_sinint.ml@41:0;41:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@41:7;41:9lib_sinint.ml@41:14;41:40
	li r5,$12
	sw r5,r31,$280
;lib_sinint.ml@42:7;42:9
	fmovi f1,$0.00024414062500000000
	fst f1,r31,$276
;lib_sinint.ml@42:14;42:40
	lw r5,r31,$716
	lw r6,r31,$280
	lw r7,r31,$276
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$272
;lib_sinint.ml@42:0;42:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@42:7;42:9lib_sinint.ml@42:14;42:40
	li r5,$13
	sw r5,r31,$268
;lib_sinint.ml@43:7;43:9
	fmovi f1,$0.00012207031250000000
	fst f1,r31,$264
;lib_sinint.ml@43:14;43:40
	lw r5,r31,$716
	lw r6,r31,$268
	lw r7,r31,$264
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$260
;lib_sinint.ml@43:0;43:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@43:7;43:9lib_sinint.ml@43:14;43:40
	li r5,$14
	sw r5,r31,$256
;lib_sinint.ml@44:7;44:9
	fmovi f1,$0.00006103515625000000
	fst f1,r31,$252
;lib_sinint.ml@44:14;44:40
	lw r5,r31,$716
	lw r6,r31,$256
	lw r7,r31,$252
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$248
;lib_sinint.ml@44:0;44:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@44:7;44:9lib_sinint.ml@44:14;44:40
	li r5,$15
	sw r5,r31,$244
;lib_sinint.ml@45:7;45:9
	fmovi f1,$0.00003051757812500000
	fst f1,r31,$240
;lib_sinint.ml@45:14;45:40
	lw r5,r31,$716
	lw r6,r31,$244
	lw r7,r31,$240
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$236
;lib_sinint.ml@45:0;45:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@45:7;45:9lib_sinint.ml@45:14;45:40
	li r5,$16
	sw r5,r31,$232
;lib_sinint.ml@46:7;46:9
	fmovi f1,$0.00001525878906250000
	fst f1,r31,$228
;lib_sinint.ml@46:14;46:40
	lw r5,r31,$716
	lw r6,r31,$232
	lw r7,r31,$228
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$224
;lib_sinint.ml@46:0;46:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@46:7;46:9lib_sinint.ml@46:14;46:40
	li r5,$17
	sw r5,r31,$220
;lib_sinint.ml@47:7;47:9
	fmovi f1,$0.00000762939453125000
	fst f1,r31,$216
;lib_sinint.ml@47:14;47:40
	lw r5,r31,$716
	lw r6,r31,$220
	lw r7,r31,$216
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$212
;lib_sinint.ml@47:0;47:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@47:7;47:9lib_sinint.ml@47:14;47:40
	li r5,$18
	sw r5,r31,$208
;lib_sinint.ml@48:7;48:9
	fmovi f1,$0.00000381469726562500
	fst f1,r31,$204
;lib_sinint.ml@48:14;48:40
	lw r5,r31,$716
	lw r6,r31,$208
	lw r7,r31,$204
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$200
;lib_sinint.ml@48:0;48:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@48:7;48:9lib_sinint.ml@48:14;48:40
	li r5,$19
	sw r5,r31,$196
;lib_sinint.ml@49:7;49:9
	fmovi f1,$0.00000190734863281250
	fst f1,r31,$192
;lib_sinint.ml@49:14;49:40
	lw r5,r31,$716
	lw r6,r31,$196
	lw r7,r31,$192
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$188
;lib_sinint.ml@49:0;49:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@49:7;49:9lib_sinint.ml@49:14;49:40
	li r5,$20
	sw r5,r31,$184
;lib_sinint.ml@50:7;50:9
	fmovi f1,$0.00000095367431640625
	fst f1,r31,$180
;lib_sinint.ml@50:14;50:40
	lw r5,r31,$716
	lw r6,r31,$184
	lw r7,r31,$180
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$176
;lib_sinint.ml@50:0;50:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@50:7;50:9lib_sinint.ml@50:14;50:40
	li r5,$21
	sw r5,r31,$172
;lib_sinint.ml@51:7;51:9
	fmovi f1,$0.00000047683715820312
	fst f1,r31,$168
;lib_sinint.ml@51:14;51:40
	lw r5,r31,$716
	lw r6,r31,$172
	lw r7,r31,$168
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$164
;lib_sinint.ml@51:0;51:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@51:7;51:9lib_sinint.ml@51:14;51:40
	li r5,$22
	sw r5,r31,$160
;lib_sinint.ml@52:7;52:9
	fmovi f1,$0.00000023841857910156
	fst f1,r31,$156
;lib_sinint.ml@52:14;52:40
	lw r5,r31,$716
	lw r6,r31,$160
	lw r7,r31,$156
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$152
;lib_sinint.ml@52:0;52:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@52:7;52:9lib_sinint.ml@52:14;52:40
	li r5,$23
	sw r5,r31,$148
;lib_sinint.ml@53:7;53:9
	fmovi f1,$0.00000011920928955078
	fst f1,r31,$144
;lib_sinint.ml@53:14;53:40
	lw r5,r31,$716
	lw r6,r31,$148
	lw r7,r31,$144
	sll r6,r6,$2
	add r5,r5,r6
	sw r7,r5,$0
	sw r5,r31,$140
;lib_sinint.ml@53:0;53:40::=OArrWritelib_sinint.ml@2:12;2:31lib_sinint.ml@53:7;53:9lib_sinint.ml@53:14;53:40
	li r5,$789
	sw r5,r31,$136
;./test/closure_buggy.ml@3:19;3:22
	lw r5,r31,$136
	addi r5,r5,$123
	sw r5,r31,$132
;./test/closure_buggy.ml@3:11;3:22::=Oiadd[123]./test/closure_buggy.ml@3:19;3:22
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$132
;./test/closure_buggy.ml@3:11;3:22::<=./test/closure_buggy.ml@3:11;3:22
	jal @a_948print_int
	sw r5,r31,$128
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@1:1;3:23./test/closure_buggy.ml@3:0;3:9
	li r5,$9
	sw r5,r31,$24
;./test/closure_buggy.ml@10:2;10:3
	li r5,$0
	sw r5,r31,$20
;./test/closure_buggy.ml@6:9;6:10
	lw r5,r31,$24
	lw r6,r31,$20
	slt r5,r5,r6
	bne r0,r5,@cfg_label_1755
	j @cfg_label_1754
	j @cfg_label_1756
@cfg_label_1755:
;./test/closure_buggy.ml@5:1;10:3
	j @cfg_label_1800
@cfg_label_1756:
@cfg_label_1754:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$24
;./test/closure_buggy.ml@10:2;10:3::<=./test/closure_buggy.ml@10:2;10:3
	jal @a_948print_int
	sw r5,r31,$16
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@7:3;7:14./test/closure_buggy.ml@3:0;3:9
	li r5,$1
	sw r5,r31,$12
;./test/closure_buggy.ml@8:24;8:25
	mov r6,r3
	addi r3,r3,$0
	sw r6,r3,$4
	li r5,@a_1026f
	sw r5,r3,$0
	mov r10,r3
	addi r3,r3,$8
;./test/closure_buggy.ml@6:2;9:17./test/closure_buggy.ml@6:2;9:17
	lw r5,r31,$12
	mov r7,r3
	sll r5,r5,$2
	add r5,r3,r5
	beq r3,r5,@emit_label_2234
@emit_label_2233:
	sw r10,r3,$0
	addi r3,r3,$4
	bne r3,r5,@emit_label_2233
@emit_label_2234:
	mov r5,r7
	sw r5,r31,$8
;./test/closure_buggy.ml@8:11;8:27::=OArrCrt./test/closure_buggy.ml@8:24;8:25./test/closure_buggy.ml@6:2;9:17
	lw r5,r31,$8
	lw r5,r5,$0
	sw r5,r31,$4
;./test/closure_buggy.ml@9:3;9:8::=OiArrRead[0]./test/closure_buggy.ml@8:11;8:27
	lw r5,r31,$24
	subi r5,r5,$1
	sw r5,r31,$0
;./test/closure_buggy.ml@9:10;9:15::=Oibysub[1]./test/closure_buggy.ml@10:2;10:3
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$0
;./test/closure_buggy.ml@9:10;9:15::<=./test/closure_buggy.ml@9:10;9:15
	lw r5,r31,$4
	lw r4,r5,$4
	lw r5,r5,$0
	jalr r5
	sw r5,r31,$124
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@5:1;10:3./test/closure_buggy.ml@9:3;9:8
	j @cfg_label_1799
@cfg_label_1800:
@cfg_label_1799:
	li r5,$123
	sw r5,r31,$68
;./test/closure_buggy.ml@19:13;19:16
	li r5,$0
	sw r5,r31,$64
;./test/closure_buggy.ml@17:9;17:10
	lw r5,r31,$68
	lw r6,r31,$64
	bne r5,r6,@cfg_label_1779
	j @cfg_label_1778
	j @cfg_label_1780
	j @cfg_label_1781
@cfg_label_1780:
@cfg_label_1778:
	li r5,$0
	sw r5,r31,$60
;./test/closure_buggy.ml@19:11;19:16
	j @cfg_label_1782
@cfg_label_1781:
@cfg_label_1779:
	lw r5,r31,$68
	subi r5,r5,$1
	sw r5,r31,$56
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@19:13;19:16
	li r5,$0
	sw r5,r31,$52
;./test/closure_buggy.ml@17:9;17:10
	lw r5,r31,$56
	lw r6,r31,$52
	bne r5,r6,@cfg_label_1771
	j @cfg_label_1770
	j @cfg_label_1772
	j @cfg_label_1773
@cfg_label_1772:
@cfg_label_1770:
	li r5,$0
	sw r5,r31,$48
;./test/closure_buggy.ml@18:6;18:15
	j @cfg_label_1774
@cfg_label_1773:
@cfg_label_1771:
	lw r5,r31,$56
	subi r5,r5,$1
	sw r5,r31,$44
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@18:9;18:14
	li r5,$0
	sw r5,r31,$40
;./test/closure_buggy.ml@17:9;17:10
	lw r5,r31,$44
	lw r6,r31,$40
	bne r5,r6,@cfg_label_1763
	j @cfg_label_1762
	j @cfg_label_1764
	j @cfg_label_1765
@cfg_label_1764:
@cfg_label_1762:
	li r5,$0
	sw r5,r31,$36
;./test/closure_buggy.ml@18:6;18:15
	j @cfg_label_1766
@cfg_label_1765:
@cfg_label_1763:
	lw r5,r31,$44
	subi r5,r5,$1
	sw r5,r31,$32
;./test/closure_buggy.ml@18:9;18:14::=Oibysub[1]./test/closure_buggy.ml@18:9;18:14
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$32
;./test/closure_buggy.ml@18:9;18:14::<=./test/closure_buggy.ml@18:9;18:14
	jal @a_1012f
	sw r5,r31,$28
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@18:6;18:15./test/closure_buggy.ml@18:6;18:7
	lw r5,r31,$28
	addi r5,r5,$10
	sw r5,r31,$36
;./test/closure_buggy.ml@18:6;18:15::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
@cfg_label_1766:
	lw r5,r31,$36
	addi r5,r5,$10
	sw r5,r31,$48
;./test/closure_buggy.ml@18:6;18:15::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
@cfg_label_1774:
	lw r5,r31,$48
	addi r5,r5,$10
	sw r5,r31,$60
;./test/closure_buggy.ml@19:11;19:16::=Oiadd[10]./test/closure_buggy.ml@18:6;18:15
@cfg_label_1782:
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$60
;./test/closure_buggy.ml@19:11;19:16::<=./test/closure_buggy.ml@19:11;19:16
	jal @a_948print_int
	sw r5,r31,$120
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@15:1;19:17./test/closure_buggy.ml@3:0;3:9
	li r5,$10
	sw r5,r31,$116
;./test/closure_buggy.ml@27:32;27:34
	li r5,$9
	sw r5,r31,$112
;./test/closure_buggy.ml@27:30;27:31
	li r5,$8
	sw r5,r31,$108
;./test/closure_buggy.ml@27:28;27:29
	li r5,$7
	sw r5,r31,$104
;./test/closure_buggy.ml@27:26;27:27
	li r5,$6
	sw r5,r31,$100
;./test/closure_buggy.ml@27:24;27:25
	li r5,$5
	sw r5,r31,$96
;./test/closure_buggy.ml@27:22;27:23
	li r5,$4
	sw r5,r31,$92
;./test/closure_buggy.ml@27:20;27:21
	li r5,$3
	sw r5,r31,$88
;./test/closure_buggy.ml@27:18;27:19
	li r5,$2
	sw r5,r31,$84
;./test/closure_buggy.ml@27:16;27:17
	li r5,$1
	sw r5,r31,$80
;./test/closure_buggy.ml@27:14;27:15
	mov r6,r3
	lw r5,r31,$80
	sw r5,r3,$0
	lw r5,r31,$84
	sw r5,r3,$4
	lw r5,r31,$88
	sw r5,r3,$8
	lw r5,r31,$92
	sw r5,r3,$12
	lw r5,r31,$96
	sw r5,r3,$16
	lw r5,r31,$100
	sw r5,r3,$20
	lw r5,r31,$104
	sw r5,r3,$24
	lw r5,r31,$108
	sw r5,r3,$28
	lw r5,r31,$112
	sw r5,r3,$32
	lw r5,r31,$116
	sw r5,r3,$36
	addi r3,r3,$40
	sw r6,r31,$76
;./test/closure_buggy.ml@27:14;27:34
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$76
;./test/closure_buggy.ml@27:14;27:34::<=./test/closure_buggy.ml@27:14;27:34
	jal @a_956h
	sw r5,r31,$72
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;./test/closure_buggy.ml@27:11;27:35./test/closure_buggy.ml@27:11;27:12
	subi r1,r1,$4
	sw r4,r1,$0
	subi r1,r1,$4
	lw r10,r31,$72
;./test/closure_buggy.ml@27:11;27:35::<=./test/closure_buggy.ml@27:11;27:35
	jal @a_948print_int
	mov r8,r5
	addi r1,r1,$4
	lw r4,r1,$0
	addi r1,r1,$4
;@0:-1;0:-1./test/closure_buggy.ml@3:0;3:9
	hlt 
