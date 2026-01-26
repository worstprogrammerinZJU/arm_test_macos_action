.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ; -- Begin function func0
lCPI0_0:
	.long	0x3effffff                      ; float 0.49999997
	.long	0x3effffff                      ; float 0.49999997
	.long	0x3effffff                      ; float 0.49999997
	.long	0x3effffff                      ; float 0.49999997
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	s0, [sp, #8]
	str	s1, [sp, #4]
	str	s2, [sp]
	ldr	s0, [sp, #8]
	fmov	q0, s0
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	fcmp	q0, d0
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
	str	wzr, [sp, #12]
	b	LBB0_11
LBB0_2:
	ldr	s0, [sp, #4]
	fmov	q0, s0
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	fcmp	q0, d0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	str	wzr, [sp, #12]
	b	LBB0_11
LBB0_4:
	ldr	s0, [sp]
	fmov	q0, s0
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	fcmp	q0, d0
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:
	str	wzr, [sp, #12]
	b	LBB0_11
LBB0_6:
	ldr	s0, [sp, #8]
	ldr	s1, [sp, #4]
	fmov	q0, s0
	fmov	q1, s1
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	ldr	d1, [x8, lCPI0_0@PAGEOFF]
	fcmp	q0, q1
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	ldr	s0, [sp, #8]
	ldr	s1, [sp]
	fmov	q0, s0
	fmov	q1, s1
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	ldr	d1, [x8, lCPI0_0@PAGEOFF]
	fcmp	q0, q1
	cset	w8, eq
	tbnz	w8, #0, LBB0_9
	b	LBB0_7
LBB0_8:
	ldr	s0, [sp, #4]
	ldr	s1, [sp]
	fmov	q0, s0
	fmov	q1, s1
	adrp	x8, lCPI0_0@PAGE
	ldr	d0, [x8, lCPI0_0@PAGEOFF]
	ldr	d1, [x8, lCPI0_0@PAGEOFF]
	fcmp	q0, q1
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_10
LBB0_9:
	mov	w8, #1
	str	w8, [sp, #12]
	b	LBB0_11
LBB0_10:
	str	wzr, [sp, #12]
	b	LBB0_11
LBB0_11:
	ldr	w0, [sp, #12]
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
