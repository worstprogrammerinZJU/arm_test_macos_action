arm
	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ; -- Begin function func0
lCPI0_0:
	.long	0x42c80000                      ; float 100
lCPI0_3:
	.long	0x40000000                      ; float 2
lCPI0_4:
	.long	0xbf800000                      ; float -1
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
lCPI0_1:
	.long	0x80000000                      ; float -0
	.long	0x80000000                      ; float -0
	.long	0x80000000                      ; float -0
	.long	0x80000000                      ; float -0
lCPI0_2:
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
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	str	s0, [sp, #40]
	str	s1, [sp, #36]
	str	s2, [sp, #32]
	ldr	s1, [sp, #40]
	ldr	s2, [sp, #36]
	fadd	s1, s1, s2
	ldr	s2, [sp, #32]
	fcmp	s1, s2
	cset	w8, hs
	tbnz	w8, #0, LBB0_3
	b	LBB0_1
LBB0_1:
	ldr	s1, [sp, #40]
	ldr	s2, [sp, #32]
	fadd	s1, s1, s2
	ldr	s2, [sp, #36]
	fcmp	s1, s2
	cset	w8, hs
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:
	ldr	s1, [sp, #36]
	ldr	s2, [sp, #32]
	fadd	s1, s1, s2
	ldr	s2, [sp, #40]
	fcmp	s1, s2
	cset	w8, lo
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	adrp	x8, lCPI0_4@PAGE
	ldr	q1, [x8, lCPI0_4@PAGEOFF]
	str	q1, [sp, #44]
	b	LBB0_5
LBB0_4:
	ldr	s1, [sp, #40]
	ldr	s2, [sp, #36]
	fadd	s1, s1, s2
	ldr	s2, [sp, #32]
	fadd	s0, s1, s2
	adrp	x8, lCPI0_3@PAGE
	ldr	q1, [x8, lCPI0_3@PAGEOFF]
	fdiv	s0, s0, s1
	str	s0, [sp, #28]
	ldr	s0, [sp, #28]
	ldr	s1, [sp, #28]
	ldr	s2, [sp, #40]
	fsub	s1, s1, s2
	ldr	s2, [sp, #28]
	fmul	s0, s0, s1
	ldr	s1, [sp, #28]
	ldr	s2, [sp, #36]
	fsub	s1, s1, s2
	ldr	s2, [sp, #28]
	fmul	s0, s0, s1
	ldr	s1, [sp, #28]
	ldr	s2, [sp, #32]
	fsub	s1, s1, s2
	ldr	s0, [sp, #28]
	fsqrt	s0, s0
	str	s0, [sp, #24]
	ldr	q0, [sp, #24]
	ldr	s1, [sp, #24]
	fmul	s1, s1, s0
	ldr	q2, [sp, #24]
	fmov	q0, q0
	fadd	q0, q0, q1
	fadd	q0, q0, q2
	round	q0, q0, $11
	ldr	q1, [sp, #24]
	fdiv	q0, q0, q1
	str	q0, [sp, #40]
	b	LBB0_5
LBB0_5:
	ldr	s0, [sp, #40]
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
