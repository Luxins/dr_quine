.section	__TEXT,__text,regular,pure_instructions
.build_version	macos, 12, 0 sdk_version 13, 1
.globl	_main
.p2align	2
_main:
	.cfi_startproc
;	%bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]		; 16-bytes Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa	w29, 16
	.cfi_offset		w30, -8
	.cfi_offset		w29, -16
	mov	w8, #0
	str	w8, [sp, #4]
	stur	wzr, [x29, -4]
	bl	_printquine
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
	.cfi_endproc
_printquine:
	sub sp, sp, #32
	stp x29, x30, [sp, #16]
	add x29, sp, #16
	adrp x0, quine_str@PAGE
	add	x0, x0, quine_str@PAGEOFF
	mov	x9, sp
	mov	x8, #10
	str	x8, [x9]
	mov x8, #34
	str x8, [x9, #8]
	adrp x8, quine_str@PAGE
	add	x8, x8, quine_str@PAGEOFF
	str x8, [x9, #16]
	bl _printf
	mov x0, xzr
	ldp	x29, x30, [sp, #16]
	add	sp, sp, #32
	ret
	.section	__TEXT,__cstring,cstring_literals
quine_str:
	.asciz	".section	__TEXT,__text,regular,pure_instructions%1$c.build_version	macos, 12, 0 sdk_version 13, 1%1$c.globl	_main%1$c.p2align	2%1$c_main:%1$c	.cfi_startproc%1$c;	%%bb.0:%1$c	sub	sp, sp, #32%1$c	stp	x29, x30, [sp, #16]		; 16-bytes Folded Spill%1$c	add	x29, sp, #16%1$c	.cfi_def_cfa	w29, 16%1$c	.cfi_offset		w30, -8%1$c	.cfi_offset		w29, -16%1$c	mov	w8, #0%1$c	str	w8, [sp, #4]%1$c	stur	wzr, [x29, -4]%1$c	bl	_printquine%1$c	ldp	x29, x30, [sp, #16]%1$c	add	sp, sp, #32%1$c	ret%1$c	.cfi_endproc%1$c_printquine:%1$c	sub sp, sp, #32%1$c	stp x29, x30, [sp, #16]%1$c	add x29, sp, #16%1$c	adrp x0, quine_str@PAGE%1$c	add	x0, x0, quine_str@PAGEOFF%1$c	mov	x9, sp%1$c	mov	x8, #10%1$c	str	x8, [x9]%1$c	mov x8, #34%1$c	str x8, [x9, #8]%1$c	adrp x8, quine_str@PAGE%1$c	add	x8, x8, quine_str@PAGEOFF%1$c	str x8, [x9, #16]%1$c	bl _printf%1$c	mov x0, xzr%1$c	ldp	x29, x30, [sp, #16]%1$c	add	sp, sp, #32%1$c	ret%1$c	.section	__TEXT,__cstring,cstring_literals%1$cquine_str:%1$c	.asciz	%2$c%3$s%2$c%1$c.subsections_via_symbols%1$c; outside of the %2$cfunctions%2$c"
.subsections_via_symbols
; outside of the "functions"