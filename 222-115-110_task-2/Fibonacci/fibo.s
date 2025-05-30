	.file	"fibo.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter the number of terms: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "Fibonacci Series: \0"
LC3:
	.ascii "%d \0"
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
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+44], 0
	mov	DWORD PTR [esp+40], 1
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	mov	DWORD PTR [esp+36], 1
	jmp	L2
L3:
	mov	eax, DWORD PTR [esp+44]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	mov	edx, DWORD PTR [esp+44]
	mov	eax, DWORD PTR [esp+40]
	add	eax, edx
	mov	DWORD PTR [esp+32], eax
	mov	eax, DWORD PTR [esp+40]
	mov	DWORD PTR [esp+44], eax
	mov	eax, DWORD PTR [esp+32]
	mov	DWORD PTR [esp+40], eax
	add	DWORD PTR [esp+36], 1
L2:
	mov	eax, DWORD PTR [esp+28]
	cmp	DWORD PTR [esp+36], eax
	jle	L3
	mov	DWORD PTR [esp], 10
	call	_putchar
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
