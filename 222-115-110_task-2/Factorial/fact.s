	.file	"fact.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter a positive integer: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Factorial of %d = %llu\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	and	esp, -16
	sub	esp, 48
	.cfi_offset 3, -12
	call	___main
	mov	DWORD PTR [esp+32], 1
	mov	DWORD PTR [esp+36], 0
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	DWORD PTR [esp+44], 1
	jmp	L2
L3:
	mov	eax, DWORD PTR [esp+44]
	cdq
	mov	ecx, DWORD PTR [esp+36]
	mov	ebx, ecx
	imul	ebx, eax
	mov	ecx, DWORD PTR [esp+32]
	imul	ecx, edx
	add	ecx, ebx
	mul	DWORD PTR [esp+32]
	add	ecx, edx
	mov	edx, ecx
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	mov	DWORD PTR [esp+32], eax
	mov	DWORD PTR [esp+36], edx
	add	DWORD PTR [esp+44], 1
L2:
	mov	eax, DWORD PTR [esp+28]
	cmp	DWORD PTR [esp+44], eax
	jle	L3
	mov	ecx, DWORD PTR [esp+28]
	mov	eax, DWORD PTR [esp+32]
	mov	edx, DWORD PTR [esp+36]
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+4], ecx
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	mov	eax, 0
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
