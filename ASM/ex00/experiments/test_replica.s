.section	__TEXT,__text,regular,pure_instructions
.build_version	macos, 12, 0 sdk_version 13, 1
.globl	_main
.p2align	2

_main:
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]		; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa	w29, 16
	.cfi_offset		w30, -8
	.cfi_offset		w29, -16
	mov	w8, #0
	str	w8, [sp, #4]
	stur wzr, [x29, -4]
	adrp x0, l_.str@PAGE
	add x0, x0, l_.str@PAGEOFF
	bl _printf
	ldr w0, [sp, #4]		; 4-byte Reload
	ldp x29, x30, [sp, #16]	; 4-byte Folded Reload
	add sp, sp, #32
	ret
	.cfi_endproc

.zerofill	__DATA,__bss,_main.c,1,0
	.section	__TEXT,__cstring,cstring_literals
l_.str:
	.asciz	"hello"

.subsections_via_symbols