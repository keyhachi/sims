BITS 32
%include "libio_linux.s"
%include "lib.s"
%include "lib_tortesia_to_x86.s"
section .bss
	resb 0x100000
global_stack:
	resb 0x100
section .data
inst_counter_up:
	dd 0x0
inst_counter:
	dd 0x0
_lr:
	dd 0
_cr:
	dd 0
_r0:
	dd 0
_r1:
	dd 0
_r2:
	dd 0
_r3:
	dd 0
_r4:
	dd 0
_r5:
	dd 0
_r6:
	dd 0
_r7:
	dd 0
_r8:
	dd 0
_r9:
	dd 0
_r10:
	dd 0
_r11:
	dd 0
_r12:
	dd 0
_r13:
	dd 0
_r14:
	dd 0
_r15:
	dd 0
_r16:
	dd 0
_r17:
	dd 0
_r18:
	dd 0
_r19:
	dd 0
_r20:
	dd 0
_r21:
	dd 0
_r22:
	dd 0
_r23:
	dd 0
_r24:
	dd 0
_r25:
	dd 0
_r26:
	dd 0
_r27:
	dd 0
_r28:
	dd 0
_r29:
	dd 0
_r30:
	dd 0
_r31:
	dd 0
f0:
	dd 0.0
f1:
	dd 0.0
f2:
	dd 0.0
f3:
	dd 0.0
f4:
	dd 0.0
f5:
	dd 0.0
f6:
	dd 0.0
f7:
	dd 0.0
f8:
	dd 0.0
f9:
	dd 0.0
f10:
	dd 0.0
f11:
	dd 0.0
f12:
	dd 0.0
f13:
	dd 0.0
f14:
	dd 0.0
f15:
	dd 0.0
f16:
	dd 0.0
f17:
	dd 0.0
f18:
	dd 0.0
f19:
	dd 0.0
f20:
	dd 0.0
f21:
	dd 0.0
f22:
	dd 0.0
f23:
	dd 0.0
f24:
	dd 0.0
f25:
	dd 0.0
f26:
	dd 0.0
f27:
	dd 0.0
f28:
	dd 0.0
f29:
	dd 0.0
f30:
	dd 0.0
f31:
	dd 0.0
float_const_145:
	dd 0.000000
float_const_147:
	dd 0.000000
float_const_149:
	dd 1.000000
float_const_151:
	dd 0.500000
float_const_153:
	dd 0.250000
float_const_155:
	dd 0.125000
float_const_157:
	dd 0.062500
float_const_159:
	dd 0.031250
float_const_161:
	dd 0.015625
float_const_163:
	dd 0.007812
float_const_165:
	dd 0.003906
float_const_167:
	dd 0.001953
float_const_169:
	dd 0.000977
float_const_171:
	dd 0.000488
float_const_173:
	dd 0.000244
float_const_175:
	dd 0.000122
float_const_177:
	dd 0.000061
float_const_179:
	dd 0.000031
float_const_181:
	dd 0.000015
float_const_183:
	dd 0.000008
float_const_185:
	dd 0.000004
float_const_187:
	dd 0.000002
float_const_189:
	dd 0.000001
float_const_191:
	dd 0.000000
float_const_193:
	dd 0.000000
float_const_195:
	dd 0.000000
float_const_197:
	dd 0.785398
float_const_199:
	dd 0.463648
float_const_201:
	dd 0.244979
float_const_203:
	dd 0.124355
float_const_205:
	dd 0.062419
float_const_207:
	dd 0.031240
float_const_209:
	dd 0.015624
float_const_211:
	dd 0.007812
float_const_213:
	dd 0.003906
float_const_215:
	dd 0.001953
float_const_217:
	dd 0.000977
float_const_219:
	dd 0.000488
float_const_221:
	dd 0.000244
float_const_223:
	dd 0.000122
float_const_225:
	dd 0.000061
float_const_227:
	dd 0.000031
float_const_229:
	dd 0.000015
float_const_231:
	dd 0.000008
float_const_233:
	dd 0.000004
float_const_235:
	dd 0.000002
float_const_237:
	dd 0.000001
float_const_239:
	dd 0.000000
float_const_241:
	dd 0.000000
float_const_243:
	dd 0.000000
section .bss
global_heap:
	resb 0x40000000
section .text
global _start
get_eip:
	mov eax,[esp]
	ret
_print_char:
	mov eax,[_r1]
	push dword [eax+0]
	call print_char
	mov [_r5],eax
	add esp,4
	jmp [_lr]
_print_int:
	mov eax,[_r1]
	push dword [eax+0]
	call print_int
	mov [_r5],eax
	jmp [_lr]
_read_char:
	mov eax,[_r1]
	push dword [eax+0]
	call read_char
	mov [_r5],eax
	add esp,4
	jmp [_lr]
_read_int:
	mov eax,[_r1]
	push dword [eax+0]
	call read_int
	mov [_r5],eax
	add esp,4
	jmp [_lr]
_read_float:
	mov eax,[_r1]
	push dword [eax+0]
	call read_float
	mov [_r5],eax
	add esp,4
	jmp [_lr]
_float_of_int:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax+0]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push dword [_r5]
	call float_of_int
	mov [f1],eax
	add esp,4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r1]
	mov [ebx-4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax-4]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	jmp eax
mov dword [_r0],0
_int_of_float:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax+0]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push dword [f1]
	call int_of_float
	mov [_r5],eax
	add esp,4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	jmp eax
mov dword [_r0],0
_sqrt:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax+0]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	fld dword [f1]
	fsqrt
	fstp dword [f2]
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f2]
	mov ebx,[_r1]
	mov [ebx-4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax-4]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	jmp eax
mov dword [_r0],0
_@a_838print_int_base:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r7]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r2]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov [_r2],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	sub eax,64
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],10
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-60],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1657
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],10
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-60],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1657
mov dword [_r0],0
_@cfg_label_1657:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-60]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov [_r5],ecx
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-56],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1656
mov dword [_r0],0
_@cfg_label_1656:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-52],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1655
mov dword [_r0],0
_@cfg_label_1655:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-56]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-52]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	cmp eax,ebx
	jne _@cfg_label_1652
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1651
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1653
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1654
mov dword [_r0],0
_@cfg_label_1654:
_@cfg_label_1652:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r6],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	sar eax,11
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-28],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1650
mov dword [_r0],0
_@cfg_label_1650:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-28]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_838print_int_base
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-8],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1649
mov dword [_r0],0
_@cfg_label_1649:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-28]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r6],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,1
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-24],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1648
mov dword [_r0],0
_@cfg_label_1648:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-24]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	sub eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-20],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1647
mov dword [_r0],0
_@cfg_label_1647:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],48
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-16],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1646
mov dword [_r0],0
_@cfg_label_1646:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-16]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-20]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-12],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1645
mov dword [_r0],0
_@cfg_label_1645:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-12]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _print_char
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1644
mov dword [_r0],0
_@cfg_label_1644:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-4]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-64],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-64]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,64
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@cfg_label_1653:
_@cfg_label_1651:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-48],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1643
mov dword [_r0],0
_@cfg_label_1643:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-48]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov [_r5],ecx
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-44],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1642
mov dword [_r0],0
_@cfg_label_1642:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-40],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1641
mov dword [_r0],0
_@cfg_label_1641:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-44]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-40]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	cmp eax,ebx
	jne _@cfg_label_1638
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1637
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1639
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1640
mov dword [_r0],0
_@cfg_label_1640:
_@cfg_label_1638:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r2]
	mov [ebx-64],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	add eax,0
	mov [_r3],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-64]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,64
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@cfg_label_1639:
_@cfg_label_1637:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],48
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-36],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1636
mov dword [_r0],0
_@cfg_label_1636:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-36]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-32],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1635
mov dword [_r0],0
_@cfg_label_1635:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-32]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _print_char
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-64],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-64]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,64
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-64]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,64
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@a_813print_int:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r7]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r2]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov [_r2],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	sub eax,44
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-40],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1634
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-40],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1634
mov dword [_r0],0
_@cfg_label_1634:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-40]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	cmp eax,ebx
	jne _@cfg_label_1631
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1630
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1632
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1633
mov dword [_r0],0
_@cfg_label_1633:
_@cfg_label_1631:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-32],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1629
mov dword [_r0],0
_@cfg_label_1629:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-32]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov [_r5],ecx
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-28],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1628
mov dword [_r0],0
_@cfg_label_1628:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-24],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1627
mov dword [_r0],0
_@cfg_label_1627:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-28]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-24]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	cmp eax,ebx
	jne _@cfg_label_1624
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1623
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1625
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1626
mov dword [_r0],0
_@cfg_label_1626:
_@cfg_label_1624:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_838print_int_base
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-44],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-44]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,44
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@cfg_label_1625:
_@cfg_label_1623:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],45
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-20],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1622
mov dword [_r0],0
_@cfg_label_1622:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-20]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _print_char
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-8],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1621
mov dword [_r0],0
_@cfg_label_1621:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-16],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1620
mov dword [_r0],0
_@cfg_label_1620:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-16]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	sub eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-12],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1619
mov dword [_r0],0
_@cfg_label_1619:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-12]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_838print_int_base
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1618
mov dword [_r0],0
_@cfg_label_1618:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-4]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-44],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-44]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,44
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@cfg_label_1632:
_@cfg_label_1630:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],48
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-36],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1617
mov dword [_r0],0
_@cfg_label_1617:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-36]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _print_char
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-44],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-44]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,44
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-44]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,44
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@a_815fib:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r7]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r2]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov [_r2],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	sub eax,40
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-36],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1616
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-36],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1616
mov dword [_r0],0
_@cfg_label_1616:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-36]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r5]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov [_r5],ecx
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r6],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	xor eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-32],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1615
mov dword [_r0],0
_@cfg_label_1615:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-28],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1614
mov dword [_r0],0
_@cfg_label_1614:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-32]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-28]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	cmp eax,ebx
	jne _@cfg_label_1611
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1610
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1612
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1613
mov dword [_r0],0
_@cfg_label_1612:
_@cfg_label_1610:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-40],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-40]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,40
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_@cfg_label_1613:
_@cfg_label_1611:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-24],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1609
mov dword [_r0],0
_@cfg_label_1609:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-24]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	sub eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-20],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1608
mov dword [_r0],0
_@cfg_label_1608:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-20]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_815fib
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-8],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1607
mov dword [_r0],0
_@cfg_label_1607:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],2
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-16],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1606
mov dword [_r0],0
_@cfg_label_1606:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-16]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax+8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	sub eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-12],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1605
mov dword [_r0],0
_@cfg_label_1605:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-12]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_815fib
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1604
mov dword [_r0],0
_@cfg_label_1604:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-4]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-8]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-40],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-40]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,40
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r2]
	mov eax,[eax-40]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,40
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r2],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r6],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp [_r6]
mov dword [_r0],0
_start:
	finit

	mov dword [_r1],global_stack
	mov dword [_r3],global_heap
push 104
call print_char_err
add esp,4
push 98
call print_char_err
add esp,4
push 32
call print_char_err
add esp,4
	push dword [_r3]
	call print_hex_err
	add esp,4
push 10
call print_char_err
add esp,4
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_lr]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r7]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov [_r31],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	add eax,772
	mov [_r3],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r2]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov [_r2],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	sub eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],24
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+768],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1603
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],24
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+768],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1603
mov dword [_r0],0
_@cfg_label_1603:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_145]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+764],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1602
mov dword [_r0],0
_@cfg_label_1602:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+764]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+768]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	shl eax,2
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r5]
	cmp eax,ebx
	je _@emit_label_1659
mov dword [_r0],0
_@emit_label_1658:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r3]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	add eax,4
	mov [_r3],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r5]
	cmp eax,ebx
	jne _@emit_label_1658
mov dword [_r0],0
_@emit_label_1659:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+760],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1601
mov dword [_r0],0
_@cfg_label_1601:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],24
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+756],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1600
mov dword [_r0],0
_@cfg_label_1600:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_147]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+752],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1599
mov dword [_r0],0
_@cfg_label_1599:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+752]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+756]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	shl eax,2
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r5]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r5]
	cmp eax,ebx
	je _@emit_label_1661
mov dword [_r0],0
_@emit_label_1660:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	mov ebx,[_r3]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	add eax,4
	mov [_r3],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r3]
	mov ebx,[_r5]
	cmp eax,ebx
	jne _@emit_label_1660
mov dword [_r0],0
_@emit_label_1661:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+748],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1598
mov dword [_r0],0
_@cfg_label_1598:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+744],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1597
mov dword [_r0],0
_@cfg_label_1597:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_149]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+740],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1596
mov dword [_r0],0
_@cfg_label_1596:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+740]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+744]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+736],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1595
mov dword [_r0],0
_@cfg_label_1595:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+732],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1594
mov dword [_r0],0
_@cfg_label_1594:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_151]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+728],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1593
mov dword [_r0],0
_@cfg_label_1593:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+728]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+732]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+724],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1592
mov dword [_r0],0
_@cfg_label_1592:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],2
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+720],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1591
mov dword [_r0],0
_@cfg_label_1591:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_153]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+716],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1590
mov dword [_r0],0
_@cfg_label_1590:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+716]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+720]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+712],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1589
mov dword [_r0],0
_@cfg_label_1589:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],3
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+708],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1588
mov dword [_r0],0
_@cfg_label_1588:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_155]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+704],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1587
mov dword [_r0],0
_@cfg_label_1587:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+704]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+708]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+700],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1586
mov dword [_r0],0
_@cfg_label_1586:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+696],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1585
mov dword [_r0],0
_@cfg_label_1585:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_157]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+692],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1584
mov dword [_r0],0
_@cfg_label_1584:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+692]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+696]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+688],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1583
mov dword [_r0],0
_@cfg_label_1583:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],5
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+684],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1582
mov dword [_r0],0
_@cfg_label_1582:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_159]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+680],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1581
mov dword [_r0],0
_@cfg_label_1581:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+680]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+684]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+676],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1580
mov dword [_r0],0
_@cfg_label_1580:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],6
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+672],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1579
mov dword [_r0],0
_@cfg_label_1579:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_161]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+668],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1578
mov dword [_r0],0
_@cfg_label_1578:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+668]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+672]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+664],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1577
mov dword [_r0],0
_@cfg_label_1577:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],7
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+660],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1576
mov dword [_r0],0
_@cfg_label_1576:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_163]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+656],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1575
mov dword [_r0],0
_@cfg_label_1575:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+656]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+660]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+652],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1574
mov dword [_r0],0
_@cfg_label_1574:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],8
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+648],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1573
mov dword [_r0],0
_@cfg_label_1573:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_165]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+644],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1572
mov dword [_r0],0
_@cfg_label_1572:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+644]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+648]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+640],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1571
mov dword [_r0],0
_@cfg_label_1571:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],9
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+636],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1570
mov dword [_r0],0
_@cfg_label_1570:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_167]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+632],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1569
mov dword [_r0],0
_@cfg_label_1569:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+632]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+636]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+628],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1568
mov dword [_r0],0
_@cfg_label_1568:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],10
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+624],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1567
mov dword [_r0],0
_@cfg_label_1567:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_169]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+620],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1566
mov dword [_r0],0
_@cfg_label_1566:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+620]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+624]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+616],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1565
mov dword [_r0],0
_@cfg_label_1565:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],11
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+612],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1564
mov dword [_r0],0
_@cfg_label_1564:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_171]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+608],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1563
mov dword [_r0],0
_@cfg_label_1563:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+608]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+612]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+604],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1562
mov dword [_r0],0
_@cfg_label_1562:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],12
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+600],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1561
mov dword [_r0],0
_@cfg_label_1561:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_173]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+596],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1560
mov dword [_r0],0
_@cfg_label_1560:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+596]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+600]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+592],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1559
mov dword [_r0],0
_@cfg_label_1559:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],13
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+588],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1558
mov dword [_r0],0
_@cfg_label_1558:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_175]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+584],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1557
mov dword [_r0],0
_@cfg_label_1557:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+584]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+588]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+580],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1556
mov dword [_r0],0
_@cfg_label_1556:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],14
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+576],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1555
mov dword [_r0],0
_@cfg_label_1555:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_177]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+572],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1554
mov dword [_r0],0
_@cfg_label_1554:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+572]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+576]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+568],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1553
mov dword [_r0],0
_@cfg_label_1553:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],15
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+564],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1552
mov dword [_r0],0
_@cfg_label_1552:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_179]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+560],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1551
mov dword [_r0],0
_@cfg_label_1551:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+560]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+564]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+556],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1550
mov dword [_r0],0
_@cfg_label_1550:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],16
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+552],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1549
mov dword [_r0],0
_@cfg_label_1549:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_181]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+548],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1548
mov dword [_r0],0
_@cfg_label_1548:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+548]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+552]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+544],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1547
mov dword [_r0],0
_@cfg_label_1547:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],17
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+540],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1546
mov dword [_r0],0
_@cfg_label_1546:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_183]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+536],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1545
mov dword [_r0],0
_@cfg_label_1545:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+536]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+540]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+532],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1544
mov dword [_r0],0
_@cfg_label_1544:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],18
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+528],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1543
mov dword [_r0],0
_@cfg_label_1543:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_185]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+524],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1542
mov dword [_r0],0
_@cfg_label_1542:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+524]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+528]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+520],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1541
mov dword [_r0],0
_@cfg_label_1541:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],19
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+516],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1540
mov dword [_r0],0
_@cfg_label_1540:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_187]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+512],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1539
mov dword [_r0],0
_@cfg_label_1539:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+512]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+516]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+508],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1538
mov dword [_r0],0
_@cfg_label_1538:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],20
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+504],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1537
mov dword [_r0],0
_@cfg_label_1537:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_189]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+500],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1536
mov dword [_r0],0
_@cfg_label_1536:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+500]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+504]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+496],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1535
mov dword [_r0],0
_@cfg_label_1535:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],21
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+492],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1534
mov dword [_r0],0
_@cfg_label_1534:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_191]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+488],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1533
mov dword [_r0],0
_@cfg_label_1533:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+488]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+492]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+484],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1532
mov dword [_r0],0
_@cfg_label_1532:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],22
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+480],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1531
mov dword [_r0],0
_@cfg_label_1531:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_193]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+476],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1530
mov dword [_r0],0
_@cfg_label_1530:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+476]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+480]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+472],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1529
mov dword [_r0],0
_@cfg_label_1529:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],23
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+468],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1528
mov dword [_r0],0
_@cfg_label_1528:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_195]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+464],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1527
mov dword [_r0],0
_@cfg_label_1527:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+464]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+468]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+760]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+460],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1526
mov dword [_r0],0
_@cfg_label_1526:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+456],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1525
mov dword [_r0],0
_@cfg_label_1525:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_197]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+452],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1524
mov dword [_r0],0
_@cfg_label_1524:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+452]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+456]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+448],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1523
mov dword [_r0],0
_@cfg_label_1523:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],1
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+444],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1522
mov dword [_r0],0
_@cfg_label_1522:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_199]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+440],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1521
mov dword [_r0],0
_@cfg_label_1521:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+440]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+444]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+436],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1520
mov dword [_r0],0
_@cfg_label_1520:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],2
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+432],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1519
mov dword [_r0],0
_@cfg_label_1519:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_201]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+428],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1518
mov dword [_r0],0
_@cfg_label_1518:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+428]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+432]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+424],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1517
mov dword [_r0],0
_@cfg_label_1517:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],3
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+420],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1516
mov dword [_r0],0
_@cfg_label_1516:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_203]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+416],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1515
mov dword [_r0],0
_@cfg_label_1515:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+416]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+420]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+412],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1514
mov dword [_r0],0
_@cfg_label_1514:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+408],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1513
mov dword [_r0],0
_@cfg_label_1513:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_205]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+404],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1512
mov dword [_r0],0
_@cfg_label_1512:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+404]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+408]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+400],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1511
mov dword [_r0],0
_@cfg_label_1511:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],5
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+396],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1510
mov dword [_r0],0
_@cfg_label_1510:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_207]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+392],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1509
mov dword [_r0],0
_@cfg_label_1509:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+392]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+396]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+388],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1508
mov dword [_r0],0
_@cfg_label_1508:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],6
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+384],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1507
mov dword [_r0],0
_@cfg_label_1507:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_209]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+380],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1506
mov dword [_r0],0
_@cfg_label_1506:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+380]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+384]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+376],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1505
mov dword [_r0],0
_@cfg_label_1505:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],7
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+372],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1504
mov dword [_r0],0
_@cfg_label_1504:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_211]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+368],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1503
mov dword [_r0],0
_@cfg_label_1503:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+368]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+372]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+364],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1502
mov dword [_r0],0
_@cfg_label_1502:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],8
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+360],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1501
mov dword [_r0],0
_@cfg_label_1501:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_213]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+356],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1500
mov dword [_r0],0
_@cfg_label_1500:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+356]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+360]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+352],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1499
mov dword [_r0],0
_@cfg_label_1499:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],9
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+348],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1498
mov dword [_r0],0
_@cfg_label_1498:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_215]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+344],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1497
mov dword [_r0],0
_@cfg_label_1497:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+344]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+348]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+340],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1496
mov dword [_r0],0
_@cfg_label_1496:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],10
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+336],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1495
mov dword [_r0],0
_@cfg_label_1495:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_217]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+332],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1494
mov dword [_r0],0
_@cfg_label_1494:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+332]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+336]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+328],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1493
mov dword [_r0],0
_@cfg_label_1493:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],11
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+324],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1492
mov dword [_r0],0
_@cfg_label_1492:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_219]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+320],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1491
mov dword [_r0],0
_@cfg_label_1491:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+320]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+324]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+316],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1490
mov dword [_r0],0
_@cfg_label_1490:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],12
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+312],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1489
mov dword [_r0],0
_@cfg_label_1489:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_221]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+308],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1488
mov dword [_r0],0
_@cfg_label_1488:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+308]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+312]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+304],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1487
mov dword [_r0],0
_@cfg_label_1487:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],13
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+300],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1486
mov dword [_r0],0
_@cfg_label_1486:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_223]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+296],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1485
mov dword [_r0],0
_@cfg_label_1485:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+296]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+300]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+292],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1484
mov dword [_r0],0
_@cfg_label_1484:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],14
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+288],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1483
mov dword [_r0],0
_@cfg_label_1483:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_225]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+284],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1482
mov dword [_r0],0
_@cfg_label_1482:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+284]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+288]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+280],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1481
mov dword [_r0],0
_@cfg_label_1481:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],15
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+276],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1480
mov dword [_r0],0
_@cfg_label_1480:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_227]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+272],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1479
mov dword [_r0],0
_@cfg_label_1479:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+272]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+276]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+268],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1478
mov dword [_r0],0
_@cfg_label_1478:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],16
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+264],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1477
mov dword [_r0],0
_@cfg_label_1477:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_229]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+260],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1476
mov dword [_r0],0
_@cfg_label_1476:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+260]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+264]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+256],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1475
mov dword [_r0],0
_@cfg_label_1475:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],17
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+252],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1474
mov dword [_r0],0
_@cfg_label_1474:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_231]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+248],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1473
mov dword [_r0],0
_@cfg_label_1473:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+248]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+252]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+244],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1472
mov dword [_r0],0
_@cfg_label_1472:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],18
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+240],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1471
mov dword [_r0],0
_@cfg_label_1471:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_233]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+236],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1470
mov dword [_r0],0
_@cfg_label_1470:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+236]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+240]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+232],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1469
mov dword [_r0],0
_@cfg_label_1469:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],19
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+228],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1468
mov dword [_r0],0
_@cfg_label_1468:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_235]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+224],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1467
mov dword [_r0],0
_@cfg_label_1467:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+224]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+228]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+220],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1466
mov dword [_r0],0
_@cfg_label_1466:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],20
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+216],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1465
mov dword [_r0],0
_@cfg_label_1465:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_237]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+212],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1464
mov dword [_r0],0
_@cfg_label_1464:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+212]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+216]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+208],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1463
mov dword [_r0],0
_@cfg_label_1463:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],21
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+204],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1462
mov dword [_r0],0
_@cfg_label_1462:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_239]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+200],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1461
mov dword [_r0],0
_@cfg_label_1461:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+200]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+204]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+196],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1460
mov dword [_r0],0
_@cfg_label_1460:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],22
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+192],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1459
mov dword [_r0],0
_@cfg_label_1459:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_241]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+188],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1458
mov dword [_r0],0
_@cfg_label_1458:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+188]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+192]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+184],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1457
mov dword [_r0],0
_@cfg_label_1457:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],23
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+180],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1456
mov dword [_r0],0
_@cfg_label_1456:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[float_const_243]
	mov [f1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[f1]
	mov ebx,[_r31]
	mov [ebx+176],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1455
mov dword [_r0],0
_@cfg_label_1455:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+176]
	mov [_r7],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+180]
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+748]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r6]
	shl eax,2
	mov [_r6],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r6]
	add eax,ebx
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r7]
	mov ebx,[_r5]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+172],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1454
mov dword [_r0],0
_@cfg_label_1454:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+172]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+168],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1453
mov dword [_r0],0
_@cfg_label_1453:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+168]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+164],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1452
mov dword [_r0],0
_@cfg_label_1452:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+164]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+160],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1451
mov dword [_r0],0
_@cfg_label_1451:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+160]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+156],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1450
mov dword [_r0],0
_@cfg_label_1450:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+156]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+152],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1449
mov dword [_r0],0
_@cfg_label_1449:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+152]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+148],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1448
mov dword [_r0],0
_@cfg_label_1448:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+148]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+144],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1447
mov dword [_r0],0
_@cfg_label_1447:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+144]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+140],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1446
mov dword [_r0],0
_@cfg_label_1446:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+140]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+136],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1445
mov dword [_r0],0
_@cfg_label_1445:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+136]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+132],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1444
mov dword [_r0],0
_@cfg_label_1444:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+132]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+128],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1443
mov dword [_r0],0
_@cfg_label_1443:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+128]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+124],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1442
mov dword [_r0],0
_@cfg_label_1442:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+124]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+120],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1441
mov dword [_r0],0
_@cfg_label_1441:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+120]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+116],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1440
mov dword [_r0],0
_@cfg_label_1440:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+116]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+112],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1439
mov dword [_r0],0
_@cfg_label_1439:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+112]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+108],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1438
mov dword [_r0],0
_@cfg_label_1438:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+108]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+104],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1437
mov dword [_r0],0
_@cfg_label_1437:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+104]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+100],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1436
mov dword [_r0],0
_@cfg_label_1436:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+100]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+96],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1435
mov dword [_r0],0
_@cfg_label_1435:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+96]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+92],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1434
mov dword [_r0],0
_@cfg_label_1434:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+92]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+88],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1433
mov dword [_r0],0
_@cfg_label_1433:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+88]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+84],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1432
mov dword [_r0],0
_@cfg_label_1432:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+84]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+80],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1431
mov dword [_r0],0
_@cfg_label_1431:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+80]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+76],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1430
mov dword [_r0],0
_@cfg_label_1430:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+76]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+72],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1429
mov dword [_r0],0
_@cfg_label_1429:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+72]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+68],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1428
mov dword [_r0],0
_@cfg_label_1428:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+68]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+64],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1427
mov dword [_r0],0
_@cfg_label_1427:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+64]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+60],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1426
mov dword [_r0],0
_@cfg_label_1426:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+60]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+56],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1425
mov dword [_r0],0
_@cfg_label_1425:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+56]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+52],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1424
mov dword [_r0],0
_@cfg_label_1424:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+52]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+48],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1423
mov dword [_r0],0
_@cfg_label_1423:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+48]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+44],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1422
mov dword [_r0],0
_@cfg_label_1422:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+44]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+40],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1421
mov dword [_r0],0
_@cfg_label_1421:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+40]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+36],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1420
mov dword [_r0],0
_@cfg_label_1420:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+36]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+32],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1419
mov dword [_r0],0
_@cfg_label_1419:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+32]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+28],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1418
mov dword [_r0],0
_@cfg_label_1418:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+28]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+24],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1417
mov dword [_r0],0
_@cfg_label_1417:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+24]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+20],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1416
mov dword [_r0],0
_@cfg_label_1416:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+20]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+16],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1415
mov dword [_r0],0
_@cfg_label_1415:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+16]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+12],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1414
mov dword [_r0],0
_@cfg_label_1414:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+12]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+8],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1413
mov dword [_r0],0
_@cfg_label_1413:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],20
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1412
mov dword [_r0],0
_@cfg_label_1412:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+4]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_815fib
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r31]
	mov [ebx+0],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp _@cfg_label_1411
mov dword [_r0],0
_@cfg_label_1411:
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r4]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r31]
	mov eax,[eax+0]
	mov [_r5],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	sub dword [_r1],4
	mov eax,dword [_r5]
	mov ebx,[_r1]
	mov [ebx],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	call get_eip
	add eax,13
	mov [_lr],eax
	jmp _@a_813print_int
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r5]
	mov ebx,[_r2]
	mov [ebx-4],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	add eax,4
	mov [_r1],eax
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[_r1]
	mov eax,[eax]
	mov dword [_r4],eax
	add dword [_r1],4
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push 104
	call print_char_err
	add esp,4
	push 97
	call print_char_err
	add esp,4
	push 32
	call print_char_err
	add esp,4
	push dword [_r3]
	call print_hex_err
	add esp,4
	push 10
	call print_char_err
	add esp,4
	push 105
	call print_char_err
	add esp,4
	push 99
	call print_char_err
	add esp,4
	push 32
	call print_char_err
	add esp,4
	mov eax,[inst_counter_up]
	push eax
	call print_hex_err
	add esp,4
	mov eax,[inst_counter]
	push eax
	call print_hex_err
	add esp,4
	push 10
	call print_char_err
	add esp,4
	mov ebx,0
	mov eax,1
	int 0x80
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [_r5],0
mov dword [_r0],0
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push 104
	call print_char_err
	add esp,4
	push 97
	call print_char_err
	add esp,4
	push 32
	call print_char_err
	add esp,4
	push dword [_r3]
	call print_hex_err
	add esp,4
	push 10
	call print_char_err
	add esp,4
	push 105
	call print_char_err
	add esp,4
	push 99
	call print_char_err
	add esp,4
	push 32
	call print_char_err
	add esp,4
	mov eax,[inst_counter_up]
	push eax
	call print_hex_err
	add esp,4
	mov eax,[inst_counter]
	push eax
	call print_hex_err
	add esp,4
	push 10
	call print_char_err
	add esp,4
	mov ebx,0
	mov eax,1
	int 0x80
mov dword [_r0],0
