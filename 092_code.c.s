arm
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ; -- Begin function func0
lCPI0_0:
	.quad	0x3f1a36e2eb1c432d              ; double 1.0E-4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	w1, [sp, #20]
	str	xzr, [sp, #8]
	str	wzr, [sp, #4]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #4]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_9
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d0, s0
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #4]
	ldr	s0, [x8, x9, lsl #2]
	fcvt	d1, s0
	fmov	d2, d1
	fcmp	d0, d1
	cset	w8, pl
	and	w10, w8, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q4, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q2, q2, q1
	fadd	q2, q2, q3
	fcmp	d0, d1
	cset	w8, eq
	and	w11, w8, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, eq
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, ne
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, lt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, ge
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, gt
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
	fcmp	d1, d0
	cset	w11, le
	and	w11, w11, #0x1
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF, lCPI0_1@PAGE]
	ldr	q2, [x8, lCPI0_0@PAGEOFF, lCPI0_2@PAGE]
	ldr	q3, [x8, lCPI0_0@PAGEOFF, lCPI0_3@PAGE]
	fmul	q1, q1, q2
	fadd	q1, q1, q3
