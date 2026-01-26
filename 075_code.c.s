.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	w8, 0
	stur	w8, [x29, #-20]
	ldursw	x8, [x29, #-20]
	lsl	x0, x8, #3
	bl	_malloc
	str	x0, [sp, #48]
	ldur	w8, [x29, #-20]
	add	w0, w8, #1
	bl	_malloc
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	strb	wzr, [x8]
	str	wzr, [sp, #28]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #28]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x0, [sp, #32]
	bl	_strlen
	str	x0, [sp, #8]
	ldr	x0, [sp, #32]
	ldr	x8, [sp, #8]
	add	x1, x8, #2
	bl	_realloc
	str	x0, [sp, #32]
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #28]
	ldrb	w8, [x8, x9]
	ldr	x9, [sp, #32]
	ldr	x8, [sp, #8]
	add	x8, x8, x9, lsl #3
	strb	w8, [x9, x8]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #8]
	strb	wzr, [x8, x9, lsl #3]
	ldr	x0, [sp, #32]
	bl	_strlen
	add	x0, x0, #1
	bl	_malloc
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #28]
	str	x0, [x8, x9, lsl #3]
	ldr	x8, [sp, #48]
	ldrsw	x9, [sp, #28]
	ldr	x0, [x8, x9, lsl #3]
	ldr	x1, [sp, #32]
	mov	x2, #-1
	bl	___strcpy_chk
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB0_1
LBB0_4:
	ldr	x0, [sp, #32]
	bl	_free
	ldur	w8, [x29, #-20]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	x0, [sp, #48]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
