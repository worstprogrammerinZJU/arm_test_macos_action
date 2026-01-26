.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-12]
	mov	x0, #64
	bl	_malloc
	str	x0, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_2
	b	LBB0_1
LBB0_1:
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB0_11
LBB0_2:
	mov	w8, #62
	str	w8, [sp, #20]
	ldr	x8, [sp, #24]
	strb	wzr, [x8, #63]
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:
	ldr	x9, [sp, #24]
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	add	x8, x8, w8, sxtw
	mov	w9, #48
	strb	w9, [x8]
	b	LBB0_8
LBB0_4:
	b	LBB0_5
LBB0_5:                                 ; =>This Inner Loop Header: Depth=1
	ldur	w8, [x29, #-12]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	w8, [x29, #-12]
	mov	w10, #2
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	add	w8, w8, #48
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x8
	sxtw	x8, w8
	str	x8, [x9, w8]
	ldr	x8, [sp, #24]
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	add	x8, x8, w8, sxtw
	mov	w9, #98
	strb	w9, [x8]
	ldr	x8, [sp, #24]
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	add	x8, x8, w8, sxtw
	mov	w9, #100
	strb	w9, [x8]
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #16]
	ldr	w8, [sp, #16]
	subs	w8, w8, w10
	str	w8, [sp, #12]
	ldr	w8, [sp, #12]
	add	w0, w8, #3
	bl	_malloc
	str	x0, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:
	ldr	x0, [sp, #24]
	bl	_free
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-8]
	b	LBB0_11
LBB0_10:
	ldr	x0, [sp]
	ldr	x1, [sp, #24]
	ldrsw	x8, [sp, #16]
	add	x1, x1, x8
	mov	x2, #-1
	bl	___strcpy_chk
	mov	x2, x0
	ldr	x0, [sp]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	___strcat_chk
	ldr	x0, [sp, #24]
	bl	_free
	ldr	x8, [sp]
	stur	x8, [x29, #-8]
	b	LBB0_11
LBB0_11:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"db"

.subsections_via_symbols
