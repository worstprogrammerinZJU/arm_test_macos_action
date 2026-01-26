arm
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
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x0, [x29, #-8]
	bl	_strlen
	mov	x8, x0
	stur	w8, [x29, #-36]
	ldur	w8, [x29, #-36]
	add	w0, w8, #1
	lsl	w0, w0, #0
	bl	_malloc
	str	x0, [sp, #32]
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	b	LBB0_1
LBB0_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_3 Depth 2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_11
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	strb	wzr, [sp, #15]
	b	LBB0_3
LBB0_3:                                 ;   Parent Loop BB0_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #16]
	ldrsb	w8, [x8]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	ldrsb	w8, [x8, x9]
	ldr	x9, [sp, #16]
	ldrsb	w9, [x9]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	strb	w8, [sp, #15]
	b	LBB0_7
LBB0_6:                                 ;   in Loop: Header=BB0_3 Depth=2
	ldr	x8, [sp, #16]
	add	x8, x8, #1
	str	x8, [sp, #16]
	b	LBB0_3
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldrb	w8, [sp, #15]
	tbz	w8, #0, LBB0_9
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #24]
	add	x8, x8, x9
	adrp	x9, l_.str.1@PAGE
	add	x9, x9, l_.str.1@PAGEOFF
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	ands	w8, w8, #0x1
	csel	x1, x8, x9, x8, x8
	bl	___strcpy_chk
	ldur	x0, [x29, #-32]
	ldrb	w3, [sp, #15]
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	test	w3, w3, #0x1
	csel	x2, x8, x1, x8
	bl	___strcpy_chk
	ldr	x0, [sp, #32]
	bl	_free
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"True"

l_.str.1:                               ; @.str.1
	.asciz	"False"

.subsections_via_symbols
