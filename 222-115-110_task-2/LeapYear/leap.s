	.file	"leap.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter a year: \0"
LC1:
	.ascii "%d\0"
LC2:
	.ascii "%d is a leap year.\12\0"
LC3:
	.ascii "%d is not a leap year.\12\0"
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
	sub	esp, 32
	call	___main
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_printf
	lea	eax, [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	eax, DWORD PTR [esp+28]
	and	eax, 3
	test	eax, eax
	jne	L2
	mov	ecx, DWORD PTR [esp+28]
	mov	edx, 1374389535
	mov	eax, ecx
	imul	edx
	sar	edx, 5
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	imul	eax, eax, 100
	sub	ecx, eax
	mov	eax, ecx
	test	eax, eax
	jne	L3
L2:
	mov	ecx, DWORD PTR [esp+28]
	mov	edx, 1374389535
	mov	eax, ecx
	imul	edx
	sar	edx, 7
	mov	eax, ecx
	sar	eax, 31
	sub	edx, eax
	mov	eax, edx
	imul	eax, eax, 400
	sub	ecx, eax
	mov	eax, ecx
	test	eax, eax
	jne	L4
L3:
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	jmp	L5
L4:
	mov	eax, DWORD PTR [esp+28]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
L5:
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
