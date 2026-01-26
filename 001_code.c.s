.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144
	.cfi_def_cfa_offset 144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #32]
	str	x1, [sp, #24]
	str	x2, [sp, #16]
	add	x0, sp, #52
	adrp	x1, l___const.func0.planets@PAGE
	add	x1, x1, l___const.func0.planets@PAGEOFF
	mov	w2, #64
	bl	_memcpy
	mov	w8, #-1
	str	w8, [sp, #12]
	str	w8, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	subs	w8, w8, #8
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldrsw	x9, [sp, #4]
	ldr	q0, [sp, #52]
	ldr	x1, [sp, #32]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	str	w8, [sp, #12]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldrsw	x9, [sp, #4]
	ldr	x0, [sp, #52]
	ldr	x1, [sp, #24]
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	str	w8, [sp, #8]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB0_1
LBB0_8:
	ldr	w8, [sp, #12]
	adds	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_9
LBB0_9:
	ldr	w8, [sp, #8]
	adds	w8, w8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_10:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	ldr	x8, [sp, #8]
	str	w8, [x8]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB0_21
LBB0_12:
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, le
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:
	ldr	w8, [sp, #12]
	str	w8, [sp, #4]
	ldr	w8, [sp, #8]
	str	w8, [sp, #12]
	ldr	w8, [sp, #4]
	str	w8, [sp, #8]
	b	LBB0_14
LBB0_14:
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	subs	w8, w8, #1
	ldr	x9, [sp, #8]
	str	w8, [x9]
	ldr	x8, [sp, #8]
	ldr	w8, [x8]
	subs	w8, w8, #0
	cset	w8, gt
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:
	ldr	x8, [sp, #8]
	str	wzr, [x8]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB0_21
LBB0_16:
	ldr	x8, [sp, #8]
	ldrsw	x0, [x8]
	lsl	x0, x0, #3
	bl	_malloc
	str	x0, [sp, #8]
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB0_17
LBB0_17:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_20
	b	LBB0_18
LBB0_18:                                ;   in Loop: Header=BB0_17 Depth=1
	ldrsw	x9, [sp, #4]
	ldr	x8, [sp, #52]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	ldr	w9, [sp, #4]
	subs	w9, w9, w8
	subs	w9, w9, #1
	add	x8, x8, w9, sxtw
	str	x8, [x9, x8, lsl #3]
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #4]
	add	w8, w8, #1
	str	w8, [sp, #4]
	b	LBB0_17
LBB0_20:
	ldr	x8, [sp, #8]
	str	x8, [sp, #8]
	b	LBB0_21
LBB0_21:
	ldur	x8, [x29, #-8]
	str	x8, [sp, #4]
	adrp	x0, ___stack_chk_guard@GOTPAGE
	ldr	x0, [x0, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x9, [x0]
	ldr	x8, [x29, #-16]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_23
	b	LBB0_22
LBB0_22:
	bl	___stack_chk_fail
LBB0_23:
	ldr	x0, [sp, #4]
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Mercury"

l_.str.1:                               ; @.str.1
	.asciz	"Venus"

l_.str.2:                               ; @.str.2
	.asciz	"Earth"

l_.str.3:                               ; @.str.3
	.asciz	"Mars"

l_.str.4:                               ; @.str.4
	.asciz	"Jupiter"

l_.str.5:                               ; @.str.5
	.asciz	"Saturn"

l_.str.6:                               ; @.str.6
	.asciz	"Uranus"

l_.str.7:                               ; @.str.7
	.asciz	"Neptune"

	.section	__DATA,__const
	.p2align	4                               ; @__const.func0.planets
l___const.func0.planets:
	.quad	l_.str
	.quad	l_.str.1
	.quad	l_.str.2
	.quad	l_.str.3
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7

.subsections_via_symbols
