	.file	"bmi.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "Enter weight in kilograms: \0"
LC1:
	.ascii "%f\0"
LC2:
	.ascii "Enter height in meters: \0"
LC3:
	.ascii "Your BMI is: %.2f\12\0"
LC5:
	.ascii "Category: Underweight\0"
LC7:
	.ascii "Category: Normal weight\0"
LC10:
	.ascii "Category: Overweight\0"
LC11:
	.ascii "Category: Obesity\0"
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
	lea	eax, [esp+24]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
	lea	eax, [esp+20]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_scanf
	fld	DWORD PTR [esp+24]
	fld	DWORD PTR [esp+20]
	fld	DWORD PTR [esp+20]
	fmulp	st(1), st
	fdivp	st(1), st
	fstp	DWORD PTR [esp+28]
	fld	DWORD PTR [esp+28]
	fstp	QWORD PTR [esp+4]
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	fld	DWORD PTR LC4
	fld	DWORD PTR [esp+28]
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jbe	L17
	mov	DWORD PTR [esp], OFFSET FLAT:LC5
	call	_puts
	jmp	L4
L17:
	fld	DWORD PTR [esp+28]
	fld	DWORD PTR LC4
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jb	L5
	fld	DWORD PTR [esp+28]
	fld	QWORD PTR LC6
	fucompp
	fnstsw	ax
	sahf
	jbe	L5
	mov	DWORD PTR [esp], OFFSET FLAT:LC7
	call	_puts
	jmp	L4
L5:
	fld	DWORD PTR [esp+28]
	fld	DWORD PTR LC8
	fxch	st(1)
	fucompp
	fnstsw	ax
	sahf
	jb	L8
	fld	DWORD PTR [esp+28]
	fld	QWORD PTR LC9
	fucompp
	fnstsw	ax
	sahf
	jbe	L8
	mov	DWORD PTR [esp], OFFSET FLAT:LC10
	call	_puts
	jmp	L4
L8:
	mov	DWORD PTR [esp], OFFSET FLAT:LC11
	call	_puts
L4:
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.section .rdata,"dr"
	.align 4
LC4:
	.long	1100218368
	.align 8
LC6:
	.long	1717986918
	.long	1077470822
	.align 4
LC8:
	.long	1103626240
	.align 8
LC9:
	.long	1717986918
	.long	1077798502
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_puts;	.scl	2;	.type	32;	.endef
