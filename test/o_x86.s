BITS 32
%include "libio_linux.s"
%include "lib.s"
section .data
@const_329:
	dd -10.000000
@const_330:
	dd 10.000000
@const_331:
	dd 0.100000
inst_counter:
	dd 0x0
inst_counter_up:
	dd 0x0
section .bss
global_heap:
	resb 0x80000000
section .text
global _start
@a_157mod_:
	mov edx,[inst_counter]
	add edx,3
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,12
@cfg_label_326:
	mov edx,[inst_counter]
	add edx,17
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov ebx,dword [ebp+12]
	mov eax,dword [ebp+8]
	xor edx,edx
	div ebx
	mov dword [ebp-4],eax
; lib.ml@2:22;2:25 ::= Odiv lib.ml@2:19;2:28 lib.ml@2:19;2:28
	mov ebx,dword [ebp+12]
	mov eax,dword [ebp-4]
	mul ebx
	mov dword [ebp-8],eax
; lib.ml@2:21;2:28 ::= Omul lib.ml@2:22;2:25 lib.ml@2:19;2:28
	mov ebx,dword [ebp-8]
	mov eax,dword [ebp+8]
	sub eax,ebx
	mov dword [ebp-12],eax
; lib.ml@2:19;2:28 ::= Osub lib.ml@2:19;2:28 lib.ml@2:21;2:28
	mov eax,dword [ebp-12]
	add esp,12
	pop ebp
	ret
@a_160print_int_base:
	mov edx,[inst_counter]
	add edx,3
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,48
@cfg_label_309:
	mov edx,[inst_counter]
	add edx,5
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-4],10
; lib.ml@4:8;4:10
	mov eax,dword [ebp+8]
	mov ebx,dword [ebp-4]
	cmp eax,ebx
	jl @cfg_label_322
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_321
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_323
@cfg_label_322:
	mov edx,[inst_counter]
	add edx,5
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-8],0
; lib.ml@4:20;4:21
	mov eax,dword [ebp-8]
	mov ebx,dword [ebp+8]
	cmp eax,ebx
	jl @cfg_label_317
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_316
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_318
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_319
@cfg_label_318:
@cfg_label_316:
	mov edx,[inst_counter]
	add edx,6
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-12],esi
	add esi,0
; lib.ml@4:1;6:30
	mov eax,dword [ebp-12]
	add esp,48
	pop ebp
	ret
@cfg_label_319:
@cfg_label_317:
	mov edx,[inst_counter]
	add edx,13
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp+8]
	add eax,48
	mov dword [ebp-16],eax
; lib.ml@4:43;4:47 ::= Oiadd[48] lib.ml@4:1;6:30
	push edi
	push dword dword [ebp-16]
	call print_char
	mov dword [ebp-12],eax
	add esp,4
	pop edi
; lib.ml@4:1;6:30 lib.ml@6:2;6:12
; indir : nontail
	mov eax,dword [ebp-12]
	add esp,48
	pop ebp
	ret
@cfg_label_323:
@cfg_label_321:
	mov edx,[inst_counter]
	add edx,32
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp+8]
	xor edx,edx
	mov ebx,10
	div ebx
	mov dword [ebp-24],eax
; lib.ml@5:19;5:23 ::= Oibydiv[10] lib.ml@4:1;6:30
	push edi
	push dword dword [ebp-24]
	call @a_160print_int_base
	mov dword [ebp-32],eax
	add esp,4
	pop edi
; lib.ml@5:3;5:24 lib.ml@5:3;5:17
; dir : nontail
	mov dword [ebp-36],10
; lib.ml@6:22;6:24
	push edi
	push dword dword [ebp-36]
	push dword dword [ebp+8]
	call @a_157mod_
	mov dword [ebp-44],eax
	add esp,8
	pop edi
; lib.ml@6:15;6:24 lib.ml@6:15;6:19
; dir : nontail
	mov eax,dword [ebp-44]
	add eax,48
	mov dword [ebp-48],eax
; lib.ml@6:14;6:28 ::= Oiadd[48] lib.ml@6:15;6:24
	push edi
	push dword dword [ebp-48]
	call print_char
	mov dword [ebp-12],eax
	add esp,4
	pop edi
; lib.ml@4:1;6:30 lib.ml@6:2;6:12
; indir : nontail
	mov eax,dword [ebp-12]
	add esp,48
	pop ebp
	ret
@a_162print_int:
	mov edx,[inst_counter]
	add edx,3
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,40
@cfg_label_293:
	mov edx,[inst_counter]
	add edx,5
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-4],0
; lib.ml@9:8;9:9
	mov eax,dword [ebp+8]
	mov ebx,dword [ebp-4]
	cmp eax,ebx
	jne @cfg_label_305
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_304
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_306
@cfg_label_305:
	mov edx,[inst_counter]
	add edx,5
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-8],0
; lib.ml@10:14;10:15
	mov eax,dword [ebp+8]
	mov ebx,dword [ebp-8]
	cmp eax,ebx
	jl @cfg_label_300
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_299
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_301
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_302
@cfg_label_301:
@cfg_label_299:
	mov edx,[inst_counter]
	add edx,10
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push edi
	push dword dword [ebp+8]
	call @a_160print_int_base
	mov dword [ebp-16],eax
	add esp,4
	pop edi
; lib.ml@9:1;10:79 lib.ml@10:62;10:76
; dir : nontail
	mov eax,dword [ebp-16]
	add esp,40
	pop ebp
	ret
@cfg_label_302:
@cfg_label_300:
	mov edx,[inst_counter]
	add edx,22
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-20],45
; lib.ml@10:32;10:34
	push edi
	push dword dword [ebp-20]
	call print_char
	mov dword [ebp-28],eax
	add esp,4
	pop edi
; lib.ml@10:21;10:34 lib.ml@9:15;9:25
; indir : nontail
	mov dword [ebp-32],0
; lib.ml@10:52;10:53
	mov ebx,dword [ebp+8]
	mov eax,dword [ebp-32]
	sub eax,ebx
	mov dword [ebp-36],eax
; lib.ml@10:52;10:55 ::= Osub lib.ml@10:52;10:53 lib.ml@9:1;10:79
	push edi
	push dword dword [ebp-36]
	call @a_160print_int_base
	mov dword [ebp-16],eax
	add esp,4
	pop edi
; lib.ml@9:1;10:79 lib.ml@10:62;10:76
; dir : nontail
	mov eax,dword [ebp-16]
	add esp,40
	pop ebp
	ret
@cfg_label_306:
@cfg_label_304:
	mov edx,[inst_counter]
	add edx,11
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-40],48
; lib.ml@9:26;9:28
	push edi
	push dword dword [ebp-40]
	call print_char
	mov dword [ebp-16],eax
	add esp,4
	pop edi
; lib.ml@9:1;10:79 lib.ml@9:15;9:25
; indir : nontail
	mov eax,dword [ebp-16]
	add esp,40
	pop ebp
	ret
@a_170f:
	mov edx,[inst_counter]
	add edx,3
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,44
@cfg_label_292:
@cfg_label_280:
	mov edx,[inst_counter]
	add edx,6
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[@const_330]
	mov dword [ebp-4],eax
	mov eax,dword [ebp-4]
	mov ebx,dword [ebp+8]
	cmp eax,ebx
	jl @cfg_label_288
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_287
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_289
@cfg_label_288:
	mov edx,[inst_counter]
	add edx,6
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-8],esi
	add esi,0
; floor_check.ml@2:1;4:14
	mov eax,dword [ebp-8]
	add esp,44
	pop ebp
	ret
@cfg_label_289:
@cfg_label_287:
	mov edx,[inst_counter]
	add edx,29
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push edi
	push dword dword [ebp+8]
	call floor
	mov dword [ebp-16],eax
	add esp,4
	pop edi
; floor_check.ml@3:26;3:33 floor_check.ml@3:26;3:31
; indir : nontail
	push edi
	push dword dword [ebp-16]
	call int_of_float
	mov dword [ebp-24],eax
	add esp,4
	pop edi
; floor_check.ml@3:12;3:34 floor_check.ml@3:12;3:24
; indir : nontail
	push edi
	push dword dword [ebp-24]
	call @a_162print_int
	mov dword [ebp-32],eax
	add esp,4
	pop edi
; floor_check.ml@3:1;3:35 floor_check.ml@3:1;3:10
; dir : nontail
	mov eax,[@const_331]
	mov dword [ebp-36],eax
	fld dword [ebp+8]
	fld dword [ebp-36]
	faddp
	fstp dword [ebp-40]
; floor_check.ml@4:4;4:12 ::= Ofadd floor_check.ml@2:1;4:14 floor_check.ml@4:9;4:12
	mov eax,dword [ebp-40]
	mov dword [ebp-44],eax
; floor_check.ml@2:1;4:14 ::<= floor_check.ml@4:4;4:12
	mov eax,dword [ebp-44]
	mov dword [ebp+8],eax
; floor_check.ml@2:1;4:14 ::<= floor_check.ml@2:1;4:14
	jmp @cfg_label_280
	mov edx,[inst_counter]
	add edx,1
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	jmp @cfg_label_292
_start:
	mov edx,[inst_counter]
	add edx,20
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,12
	mov esi,global_heap
	push 104
	call print_char_err
	add esp,4
	push 98
	call print_char_err
	add esp,4
	push 32
	call print_char_err
	add esp,4
	push esi
	call print_hex_err
	add esp,4
	push 10
	call print_char_err
	add esp,4
	add esi,4
@cfg_label_278:
	mov edx,[inst_counter]
	add edx,49
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,[@const_329]
	mov dword [global_heap+0],eax
	push edi
	push dword dword [global_heap+0]
	call @a_170f
	mov dword [ebp-12],eax
	add esp,4
	pop edi
; @0:-1;0:-1 floor_check.ml@6:0;6:1
; dir : nontail
	mov eax,0
	push 104
	call print_char_err
	add esp,4
	push 97
	call print_char_err
	add esp,4
	push 32
	call print_char_err
	add esp,4
	push esi
	call print_hex_err
	add esp,4
	push 10
	call print_char_err
	add esp,4
	add esp,12
	pop ebp
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
