.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	stur	x2, [x29, #-24]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	stur	x8, [x29, #-32]
                                        ; kill: def $x8 killed $xzr
	str	xzr, [sp, #56]
	str	wzr, [sp, #52]
	str	wzr, [sp, #48]
	str	wzr, [sp, #44]
	ldur	x0, [x29, #-8]
	bl	_strlen
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	add	x0, x8, #1
	bl	_malloc
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [sp, #20]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w8, hi
	tbnz	w8, #0, LBB0_13
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	ldrsb	w0, [x8, x9]
	bl	_isspace
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_7
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	ldur	w9, [x29, #-12]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #44]
	subs	w9, w9, w10
	add	x9, x8, w9, sxtw
	strb	wzr, [x9]
	ldr	x0, [sp, #56]
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	lsl	w1, w8, #3
	bl	_realloc
	ldr	x8, [sp, #24]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	str	x0, [sp, #48]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #48]
	str	x0, [x8, x9, lsl #3]
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #48]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #24]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #44]
	str	wzr, [sp, #52]
	b	LBB0_11
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #24]
	ldr	w9, [sp, #20]
	ldr	w10, [sp, #44]
	subs	w9, w9, w10
	add	x9, x9, w9, sxtw
	strb	w8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-8]
	ldrsw	x10, [sp, #20]
	ldursb	w1, [x9, x10]
	bl	_strchr
	subs	x8, x0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #20]
	ldzbl	w0, [x8, x9]
	bl	_isalpha
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_1
LBB0_13:
	ldr	x0, [sp, #24]
	bl	_free
	ldr	w8, [sp, #48]
	ldur	x9, [x29, #-24]
	str	w8, [x9]
	ldr	x0, [sp, #56]
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"aeiouAEIOU"

.subsections_via_symbols
