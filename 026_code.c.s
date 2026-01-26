.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function func0
lCPI0_0:
	.quad	0x3fe0000000000000              ; double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	x0, [sp, #32]
	str	w1, [sp, #28]
	str	wzr, [sp, #24]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldr	w8, [sp, #24]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #20]
	ldr	w9, [sp, #28]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	ldr	s1, [x8, x9, lsl #2]
	fcmp	s0, s1
	cset	w8, pl
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	ldr	s0, [x8, x9, lsl #2]
	str	s0, [sp, #16]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	ldr	s0, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #24]
	str	s0, [x8, x9, lsl #2]
	ldr	s0, [sp, #16]
	ldr	x8, [sp, #32]
	ldrsw	x9, [sp, #20]
	str	s0, [x8, x9, lsl #2]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_3
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	add	w8, w8, #1
	str	w8, [sp, #24]
	b	LBB0_1
LBB0_10:
	ldr	w8, [sp, #28]
	mov	w9, #2
	sdiv	w8, w8, w9
	mul	w8, w8, w9
	subs	w8, w8, #1
	cset	w8, ne
	tbnz	w8, #0, LBB0_12
	b	LBB0_11
LBB0_11:
	ldr	x8, [sp, #32]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldr	w8, [sp, #28]
	mov	w9, #2
	sdiv	w8, w8, w9
	mov	x8, x8
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldrsw	x9, [x8, x9, lsl #2]
	ldr	s0, [x9]
	str	s0, [sp, #44]
	b	LBB0_13
LBB0_12:
	ldr	x8, [sp, #32]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	ldr	w8, [sp, #28]
	mov	w9, #2
	sdiv	w8, w8, w9
	mov	x8, x8
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldrsw	x9, [x8, x9, lsl #2]
	ldr	s0, [x9]
	str	s0, [sp, #40]
	ldr	x8, [sp, #32]
	str	x8, [sp, "1"]                    ; 8-byte Folded Spill
	ldr	w8, [sp, #28]
	mov	w9, #2
	sdiv	w8, w8, w9
	ldr	x8, [sp, "1"]                    ; 8-byte Folded Reload
	subs	w8, w8, #1
	ldrsw	x9, [x8, x9, lsl #2]
	ldr	s0, [x9]
	str	s0, [sp, "4"]
	ldr	s0, [sp, "4"]
	ldr	x8, [sp, "32"]
	ldrsw	x9, [sp, "1"]
	str	s0, [x8, x9, lsl #2]
	bl	lCPI0_0
	fmov	d0, d0
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF]
	fmul	d0, d0, q1
	fcvt	d0, d0
	str	s0, [sp, "4"]
	b	LBB0_13
LBB0_13:
	ldr	s0, [sp, "4"]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
