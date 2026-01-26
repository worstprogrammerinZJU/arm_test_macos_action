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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	s0, [sp, #40]
	str	s1, [sp, #36]
	str	s2, [sp, #32]
	ldr	s1, [sp, #40]
	ldr	s2, [sp, #40]
	ldr	s0, [sp, #36]
	ldr	s3, [sp, #36]
	fmul	s0, s0, s3
	fmov	s3, s2
	fmul	s0, s0, s3
	fadd	s0, s0, s1
	ldr	s1, [sp, #32]
	ldr	s2, [sp, #32]
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF]
	ldr	d1, [s1]
	ldr	d2, [s2]
	fcmp	d1, d2
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	s1, [sp, #40]
	ldr	s2, [sp, #40]
	ldr	s0, [sp, #32]
	ldr	s3, [sp, #32]
	fmul	s0, s0, s3
	fmov	s3, s2
	fmul	s0, s0, s3
	fadd	s0, s0, s1
	ldr	s1, [sp, #36]
	ldr	s2, [sp, #36]
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF]
	ldr	d1, [s1]
	ldr	d2, [s2]
	fcmp	d1, d2
	cset	w8, ne
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	ldr	s1, [sp, #36]
	ldr	s2, [sp, #36]
	ldr	s0, [sp, #32]
	ldr	s3, [sp, #32]
	fmul	s0, s0, s3
	fmov	s3, s2
	fmul	s0, s0, s3
	fadd	s0, s0, s1
	ldr	s1, [sp, #40]
	ldr	s2, [sp, #40]
	adrp	x8, lCPI0_0@PAGE
	ldr	q1, [x8, lCPI0_0@PAGEOFF]
	ldr	d1, [s1]
	ldr	d2, [s2]
	fcmp	d1, d2
	cset	w8, ls
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	mov	w8, #1
	str	w8, [sp, #44]
	b	LBB0_5
LBB0_4:
	str	wzr, [sp, #44]
	b	LBB0_5
LBB0_5:
	ldr	w0, [sp, #44]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
