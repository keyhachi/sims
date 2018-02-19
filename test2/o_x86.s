BITS 32
%include "libio_linux.s"
%include "lib.s"
section .data
inst_counter:
	dd 0x0
inst_counter_up:
	dd 0x0
section .bss
global_heap:
	resb 0x80000000
section .text
global _start
@a_171mod_:
	mov edx,[inst_counter]
	add edx,23
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,12
	mov ebx,dword [ebp+12]
	mov eax,dword [ebp+8]
	xor edx,edx
	div ebx
	mov dword [ebp-8],eax
; lib.ml@2:22;2:25 ::= Odiv lib.ml@2:22;2:23 lib.ml@2:24;2:25
	mov ebx,dword [ebp+12]
	mov eax,dword [ebp-8]
	mul ebx
	mov dword [ebp-4],eax
; lib.ml@2:21;2:28 ::= Omul lib.ml@2:22;2:25 lib.ml@2:27;2:28
	mov ebx,dword [ebp-4]
	mov eax,dword [ebp+8]
	sub eax,ebx
	mov dword [ebp-12],eax
; lib.ml@2:19;2:28 ::= Osub lib.ml@2:19;2:20 lib.ml@2:21;2:28
	mov eax,dword [ebp-12]
	add esp,12
	pop ebp
	pop ebx
	add esp,8
	push ebx
	ret
@a_174print_int_base:
	mov edx,[inst_counter]
	add edx,16
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,64
	mov dword [ebp-60],10
; lib.ml@4:8;4:10
	mov ebx,dword [ebp-60]
	mov eax,dword [ebp+8]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov eax,ecx
	mov dword [ebp-56],eax
; lib.ml@4:4;4:10 ::= Olt lib.ml@4:4;4:5 lib.ml@4:8;4:10
	mov dword [ebp-52],1
; lib.ml@4:4;4:10
	mov eax,dword [ebp-56]
	mov ebx,dword [ebp-52]
	cmp eax,ebx
	jne @virtual_label_314
	mov edx,[inst_counter]
	add edx,13
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-48],0
; lib.ml@4:20;4:21
	mov ebx,dword [ebp+8]
	mov eax,dword [ebp-48]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov eax,ecx
	mov dword [ebp-44],eax
; lib.ml@4:20;4:25 ::= Olt lib.ml@4:20;4:21 lib.ml@4:24;4:25
	mov dword [ebp-40],1
; lib.ml@4:20;4:25
	mov eax,dword [ebp-44]
	mov ebx,dword [ebp-40]
	cmp eax,ebx
	jne @virtual_label_316
	mov edx,[inst_counter]
	add edx,18
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-36],48
; lib.ml@4:45;4:47
	mov ebx,dword [ebp-36]
	mov eax,dword [ebp+8]
	add eax,ebx
	mov dword [ebp-32],eax
; lib.ml@4:43;4:47 ::= Oadd lib.ml@4:43;4:44 lib.ml@4:45;4:47
	push edi
	push dword dword [ebp-32]
	call print_char
	mov dword [ebp-64],eax
	add esp,4
	pop edi
; lib.ml@4:1;6:30 lib.ml@4:31;4:41
; indir : nontail
	mov eax,dword [ebp-64]
	add esp,64
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@virtual_label_316:
	mov edx,[inst_counter]
	add edx,2
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-64],esi
	add esi,0
; lib.ml@4:1;6:30
@virtual_label_317:
	mov edx,[inst_counter]
	add edx,7
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp-64]
	add esp,64
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@virtual_label_314:
	mov edx,[inst_counter]
	add edx,30
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp+8]
	xor edx,edx
	mov ebx,10
	div ebx
	mov dword [ebp-28],eax
; lib.ml@5:19;5:23 ::= Oibydiv[10] lib.ml@5:19;5:20
	push edi
	push dword dword [ebp-28]
	call @a_174print_int_base
	mov dword [ebp-8],eax
	pop edi
; lib.ml@5:3;5:24 lib.ml@5:3;5:17
; dir : nontail
	mov dword [ebp-24],10
; lib.ml@6:22;6:24
	push edi
	push dword dword [ebp-24]
	push dword dword [ebp+8]
	call @a_171mod_
	mov dword [ebp-20],eax
	pop edi
; lib.ml@6:15;6:24 lib.ml@6:15;6:19
; dir : nontail
	mov dword [ebp-16],48
; lib.ml@6:26;6:28
	mov ebx,dword [ebp-16]
	mov eax,dword [ebp-20]
	add eax,ebx
	mov dword [ebp-12],eax
; lib.ml@6:14;6:28 ::= Oadd lib.ml@6:15;6:24 lib.ml@6:26;6:28
	push edi
	push dword dword [ebp-12]
	call print_char
	mov dword [ebp-4],eax
	add esp,4
	pop edi
; lib.ml@6:2;6:29 lib.ml@6:2;6:12
; indir : nontail
	mov eax,dword [ebp-4]
	mov dword [ebp-64],eax
; lib.ml@4:1;6:30 ::<= lib.ml@6:2;6:29
@virtual_label_315:
	mov edx,[inst_counter]
	add edx,7
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp-64]
	add esp,64
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@a_176print_int:
	mov edx,[inst_counter]
	add edx,8
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,44
	mov dword [ebp-40],0
; lib.ml@9:8;9:9
	mov eax,dword [ebp+8]
	mov ebx,dword [ebp-40]
	cmp eax,ebx
	jne @virtual_label_310
	mov edx,[inst_counter]
	add edx,14
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-36],48
; lib.ml@9:26;9:28
	push edi
	push dword dword [ebp-36]
	call print_char
	mov dword [ebp-44],eax
	add esp,4
	pop edi
; lib.ml@9:1;10:79 lib.ml@9:15;9:25
; indir : nontail
	mov eax,dword [ebp-44]
	add esp,44
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@virtual_label_310:
	mov edx,[inst_counter]
	add edx,13
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-32],0
; lib.ml@10:14;10:15
	mov ebx,dword [ebp-32]
	mov eax,dword [ebp+8]
	xor ecx,ecx
	cmp eax,ebx
	setl cl
	mov eax,ecx
	mov dword [ebp-28],eax
; lib.ml@10:10;10:15 ::= Olt lib.ml@10:10;10:11 lib.ml@10:14;10:15
	mov dword [ebp-24],1
; lib.ml@10:10;10:15
	mov eax,dword [ebp-28]
	mov ebx,dword [ebp-24]
	cmp eax,ebx
	jne @virtual_label_312
	mov edx,[inst_counter]
	add edx,26
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-20],45
; lib.ml@10:32;10:34
	push edi
	push dword dword [ebp-20]
	call print_char
	mov dword [ebp-8],eax
	add esp,4
	pop edi
; lib.ml@10:21;10:34 lib.ml@10:21;10:31
; indir : nontail
	mov dword [ebp-16],0
; lib.ml@10:52;10:53
	mov ebx,dword [ebp+8]
	mov eax,dword [ebp-16]
	sub eax,ebx
	mov dword [ebp-12],eax
; lib.ml@10:52;10:55 ::= Osub lib.ml@10:52;10:53 lib.ml@10:54;10:55
	push edi
	push dword dword [ebp-12]
	call @a_174print_int_base
	mov dword [ebp-4],eax
	pop edi
; lib.ml@10:36;10:56 lib.ml@10:36;10:50
; dir : nontail
	mov eax,dword [ebp-4]
	mov dword [ebp-44],eax
; lib.ml@9:1;10:79 ::<= lib.ml@10:36;10:56
	mov eax,dword [ebp-44]
	add esp,44
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@virtual_label_312:
	mov edx,[inst_counter]
	add edx,5
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push edi
	push dword dword [ebp+8]
	call @a_174print_int_base
	mov dword [ebp-44],eax
	pop edi
; lib.ml@9:1;10:79 lib.ml@10:62;10:76
; dir : nontail
@virtual_label_313:
@virtual_label_311:
	mov edx,[inst_counter]
	add edx,7
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp-44]
	add esp,44
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@a_184fib:
	mov edx,[inst_counter]
	add edx,16
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,40
	mov dword [ebp-36],1
; fib.ml@1:24;1:25
	mov ebx,dword [ebp-36]
	mov eax,dword [ebp+8]
	xor ecx,ecx
	cmp eax,ebx
	setle cl
	mov eax,ecx
	mov dword [ebp-32],eax
; fib.ml@1:19;1:25 ::= Oleq fib.ml@1:19;1:20 fib.ml@1:24;1:25
	mov dword [ebp-28],1
; fib.ml@1:19;1:25
	mov eax,dword [ebp-32]
	mov ebx,dword [ebp-28]
	cmp eax,ebx
	jne @virtual_label_308
	mov edx,[inst_counter]
	add edx,8
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-40],1
; fib.ml@1:16;1:59
	mov eax,dword [ebp-40]
	add esp,40
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
@virtual_label_308:
	mov edx,[inst_counter]
	add edx,24
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov dword [ebp-24],1
; fib.ml@1:45;1:46
	mov ebx,dword [ebp-24]
	mov eax,dword [ebp+8]
	sub eax,ebx
	mov dword [ebp-20],eax
; fib.ml@1:43;1:46 ::= Osub fib.ml@1:43;1:44 fib.ml@1:45;1:46
	push edi
	push dword dword [ebp-20]
	call @a_184fib
	mov dword [ebp-8],eax
	pop edi
; fib.ml@1:38;1:47 fib.ml@1:38;1:41
; dir : nontail
	mov dword [ebp-16],2
; fib.ml@1:57;1:58
	mov ebx,dword [ebp-16]
	mov eax,dword [ebp+8]
	sub eax,ebx
	mov dword [ebp-12],eax
; fib.ml@1:55;1:58 ::= Osub fib.ml@1:55;1:56 fib.ml@1:57;1:58
	push edi
	push dword dword [ebp-12]
	call @a_184fib
	mov dword [ebp-4],eax
	pop edi
; fib.ml@1:50;1:59 fib.ml@1:50;1:53
; dir : nontail
	mov ebx,dword [ebp-4]
	mov eax,dword [ebp-8]
	add eax,ebx
	mov dword [ebp-40],eax
; fib.ml@1:16;1:59 ::= Oadd fib.ml@1:38;1:47 fib.ml@1:50;1:59
@virtual_label_309:
	mov edx,[inst_counter]
	add edx,7
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	mov eax,dword [ebp-40]
	add esp,40
	pop ebp
	pop ebx
	add esp,4
	push ebx
	ret
_start:
	mov edx,[inst_counter]
	add edx,75
	mov [inst_counter],edx
	setb dl
	and edx,1
	add dword [inst_counter_up],edx
	push ebp
	mov ebp,esp
	sub esp,4
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
	add esi,8
	mov dword [global_heap+4],20
; fib.ml@3:16;3:18
	push edi
	push dword dword [global_heap+4]
	call @a_184fib
	mov dword [global_heap+0],eax
	pop edi
; fib.ml@3:12;3:18 fib.ml@3:12;3:15
; dir : nontail
	push edi
	push dword dword [global_heap+0]
	call @a_176print_int
	mov dword [ebp-4],eax
	pop edi
; @0:-1;0:-1 fib.ml@3:1;3:10
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
	add esp,4
	pop ebp
	pop ebx
	add esp,0
	push ebx
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
