.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	.cfi_def_cfa_offset 128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldursw	x8, [x29, #-4]
	lsl	x0, x8, #2
	bl	_malloc
	stur	x0, [x29, #-16]
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	mov	x10, x8
	ldrsw	x8, [x29, #-4]
	lsl	x0, x8, #3
	str	x10, [sp, #8]
	bl	_malloc
	stur	x0, [x29, #-24]
	ldur	w8, [x29, #-4]
	add	w8, w8, #1
	mov	x10, x8
	ldrsw	x8, [x29, #-4]
	lsl	x0, x8, #3
	str	x10, [sp, #16]
	bl	_malloc
	stur	x0, [x29, #-32]
	stur	wzr, [x29, #-36]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-36]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w0, #3
	mov	w1, #4
	bl	_calloc
	ldr	x8, [sp, #8]
	ldrsw	x9, [x29, #-36]
	str	x0, [x8, x9, lsl #3]
	bl	_calloc
	ldr	x8, [sp, #16]
	ldrsw	x9, [x29, #-36]
	str	x0, [x8, x9, lsl #3]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	w8, [x29, #-36]
	add	w8, w8, #1
	stur	w8, [x29, #-36]
	b	LBB0_1
LBB0_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	wzr, [x8, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	wzr, [x8, #4]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	wzr, [x8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	wzr, [x8]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	str	wzr, [x8]
	ldr	w8, [sp, #12]
	mov	w10, #1
	str	w10, [sp, #48]
	b	LBB0_5
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_7 Depth 2
	ldr	w8, [sp, #48]
	ldur	w9, [x29, #-4]
	subs	w8, w8, w9
	cset	w8, gt
	tbnz	w8, #0, LBB0_12
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	mov	w8, #3
	str	w8, [sp, #52]
	b	LBB0_7
LBB0_7:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #52]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #48]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrsw	x9, [sp, #52]
	ldr	w8, [x8, x9, lsl #2]
	subs	w8, w8, #1
	mov	x9, x8
	ldr	x8, [sp, #16]
	subs	x8, x8, #1
	ldrsw	x10, [x8, x9, lsl #2]
	ldr	w8, [x8, x10, lsl #2]
	add	w8, w8, #1
	str	w8, [x8, x10, lsl #2]
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_7 Depth=2
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	LBB0_7
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #8]
	ldrsw	x9, [sp, #48]
	ldr	x8, [x8, x9, lsl #3]
	ldr	x9, [sp, #16]
	ldr	w10, [sp, #48]
	subs	w10, w10, #1
	ldrsw	x11, [x9, w10, sxtw #3]
	ldr	w8, [x8, x11, lsl #2]
	str	w8, [x9, x11, lsl #2]
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #48]
	add	w8, w8, #1
	str	w8, [sp, #48]
	b	LBB0_5
LBB0_12:
	mov	w8, #1
	str	w8, [sp, #44]
	b	LBB0_13
LBB0_13:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_15 Depth 2
                                        ;       Child Loop BB0_17 Depth 3
                                        ;       Child Loop BB0_22 Depth 3
                                        ;     Child Loop BB0_29 Depth 2
                                        ;       Child Loop BB0_31 Depth 3
	ldr	w8, [sp, #44]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_38
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_13 Depth=1
	mov	w8, #1
	str	w8, [sp, #40]
	b	LBB0_15
LBB0_15:                                ;   Parent Loop BB0_13 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_17 Depth 3
                                        ;       Child Loop BB0_22 Depth 3
	ldr	w8, [sp, #40]
	subs	w8, w8, #3
	cset	w8, gt
	tbnz	w8, #0, LBB0_28
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_15 Depth=2
	str	wzr, [sp, #36]
	b	LBB0_17
LBB0_17:                                ;   Parent Loop BB0_13 Depth=1
                                        ;     Parent Loop BB0_15 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	w8, [sp, #36]
	subs	w8, w8, #3
	cset	w8, ge
	tbnz	w8, #0, LBB0_20
	b	LBB0_18
LBB0_18:                                ;   in Loop: Header=BB0_17 Depth=3
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #40]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	ldrsw	x9, [sp, #36]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #40]
	subs	w9, w9, #1
	ldrsw	x10, [x8, w9, sxtw #3]
	ldr	w8, [x8, x10, lsl #2]
	add	w8, w8, #1
	str	w8, [x8, x10, lsl #2]
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_17 Depth=3
	ldr	w8, [sp, #36]
	add	w8, w8, #1
	str	w8, [sp, #36]
	b	LBB0_17
LBB0_20:                                ;   in Loop: Header=BB0_13 Depth=1
	mov	w8, #0
	str	w8, [sp, #48]
	b	LBB0_26
LBB0_21:                                ;   in Loop: Header=BB0_13 Depth=1
	b	LBB0_27
LBB0_22:                                ;   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_28
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_13 Depth=1
	str	wzr, [sp, #44]
	b	LBB0_24
LBB0_24:                                ;   Parent Loop BB0_13 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_31 Depth 3
	mov	w8, #2
	subs	w8, w8, #1
	cset	w8, ge
	tbnz	w8, #0, LBB0_34
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_24 Depth=3
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #44]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #44]
	add	x8, x8, x9, lsl #2
	ldr	w8, [x8]
	add	w8, w8, #1
	str	w8, [x8]
	b	LBB0_36
LBB0_26:                                ;   in Loop: Header=BB0_24 Depth=3
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB0_24
LBB0_27:                                ;   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #40]
	subs	w8, w8, #1
	cset	w8, lt
	tbnz	w8, #0, LBB0_30
	b	LBB0_29
LBB0_28:                                ;   in Loop: Header=BB0_27 Depth=3
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #40]
	ldr	x8, [x8, x9, lsl #3]
	ldrsw	x9, [sp, #44]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x8, [sp, #16]
	ldr	w9, [sp, #40]
	subs	w9, w9, #1
	ldrsw	x10, [x8, w9, sxtw #3]
	ldr	w8, [x8, x10, lsl #2]
	add	w8, w8, #1
	str	w8, [x8, x10, lsl #2]
	b	LBB0_31
LBB0_29:                                ;   in Loop: Header=BB0_27 Depth=3
	ldr	w8, [sp, #44]
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB0_27
LBB0_30:                                ;   in Loop: Header=BB0_24 Depth=1
	b	LBB0_33
LBB0_31:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	LBB0_24
LBB0_32:                                ;   in Loop: Header=BB0_13 Depth=1
	b	LBB0_35
LBB0_33:                                ;   in Loop: Header=BB0_13 Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #1
	add	w8, w8, #1
	str	w8, [sp, #44]
	b	LBB0_13
LBB0_34:
	ldr	x8, [sp, #8]
	ldursw	x9, [x29, #-4]
	ldr	w8, [x8, x9, lsl #3]
	str	w8, [sp, #56]
	str	wzr, [sp, #52]
	b	LBB0_35
LBB0_35:                                ; =>This Inner Loop Header: Depth=1
	mov	w8, #0
	str	w8, [sp, #52]
	ldr	w8, [sp, #52]
	subs	w8, w8, #3
	cset	w8, gt
	tbnz	w8, #0, LBB0_42
	b	LBB0_36
LBB0_36:                                 ;   in Loop: Header=BB0_35 Depth=1
	ldr	x8, [sp, #8]
	ldr	w9, [sp, #52]
	subs	w9, w9, #1
	ldr	x8, [x8, w9, sxtw #3]
	bl	_free
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #52]
	ldr	x0, [x8, x9, lsl #3]
	bl	_free
	b	LBB0_37
LBB0_37:                                ;   in Loop: Header=BB0_35 Depth=1
	ldr	w8, [sp, #52]
	add	w8, w8, #1
	str	w8, [sp, #52]
	b	LBB0_35
LBB0_38:
	ldr	x8, [sp, #8]
	bl	_free
	ldr	x0, [sp, #16]
	bl	_free
	ldr	x0, [sp, #16]
	bl	_free
	ldr	w0, [sp, #56]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
