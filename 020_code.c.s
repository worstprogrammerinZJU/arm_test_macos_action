.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
                                        ; kill: def $x8 killed $xzr
	stur	xzr, [x29, #-24]
	str	wzr, [sp, #26]
	str	wzr, [sp, #24]
	add	x0, sp, #29
	mov	w1, #0
	mov	w2, #3
	bl	_memset
	ldur	x0, [x29, #-8]
	bl	_strlen
	add	w8, w0, #1
                                        ; kill: def $w8 killed $w8 killed $w0
	str	w8, [sp, #20]
	ldr	w8, [sp, #20]
	add	w0, w8, #1
	bl	_malloc
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldur	x1, [x29, #-8]
	mov	x2, #-1
	bl	___strcpy_chk
	ldr	x0, [sp, #16]
	mov	x2, #-1
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	___strcat_chk
	str	wzr, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_30
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #32
	cset	w8, ne
	tbnz	w8, #0, LBB0_25
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	add	x0, sp, #29
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #26]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_9
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_7
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	lsl	w8, w8, #1
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB0_8
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #4
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	str	w8, [sp, #24]
	ldur	x0, [x29, #-24]
	ldrsw	x1, [sp, #24]
	lsl	x1, x1, #2
	bl	_realloc
	str	x0, [sp, #24]
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	w8, [sp, #26]
	add	w2, w8, #1
	str	w2, [sp, #26]
	ldrsw	x8, [sp, #26]
	mov	w7, #4
	str	w7, [x9, x8, lsl #2]
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	add	x0, sp, #29
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_17
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #26]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_16
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	lsl	w8, w8, #1
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_15
LBB0_14:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #4
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	str	w8, [sp, #24]
	ldur	x0, [x29, #-24]
	ldrsw	x1, [sp, #24]
	lsl	x1, x1, #2
	bl	_realloc
	str	x0, [sp, #24]
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	w8, [sp, #26]
	add	w2, w8, #1
	str	w2, [sp, #26]
	ldrsw	x8, [sp, #26]
	mov	w7, #2
	str	w7, [x9, x8, lsl #2]
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	add	x0, sp, #29
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_24
	b	LBB0_28
LBB0_18:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #26]
	ldr	w9, [sp, #24]
	subs	w8, w8, w9
	cset	w8, ne
	tbnz	w8, #0, LBB0_23
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_21
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #24]
	lsl	w8, w8, #1
	str	w8, [sp, #2]                    ; 4-byte Folded Spill
	b	LBB0_22
LBB0_21:                                ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #4
	str	w8, [sp, #2]                    ; 4-byte Folded Spill
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #2]                    ; 4-byte Folded Reload
	str	w8, [sp, #24]
	ldur	x0, [x29, #-24]
	ldrsw	x1, [sp, #24]
	lsl	x1, x1, #2
	bl	_realloc
	str	x0, [sp, #24]
	b	LBB0_23
LBB0_23:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x9, [sp, #24]
	ldr	w8, [sp, #26]
	add	w2, w8, #1
	str	w2, [sp, #26]
	ldrsw	x8, [sp, #26]
	mov	w7, #1
	str	w7, [x9, x8, lsl #2]
	b	LBB0_24
LBB0_24:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	add	x0, sp, #29
	bl	___strcpy_chk
	b	LBB0_28
LBB0_25:                                ;   in Loop: Header=BB0_1 Depth=1
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	add	x0, sp, #29
	bl	_strlen
	str	x0, [sp, #32]
	ldr	x8, [sp, #32]
	subs	x8, x8, #2
	cset	w8, hs
	tbnz	w8, #0, LBB0_27
	b	LBB0_26
LBB0_26:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #12]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #32]
	add	x8, x8, x9
	strb	w8, [x8]
	ldr	x8, [sp, #32]
	strb	wzr, [x8, #31]
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_28
LBB0_28:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_29
LBB0_29:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_1
LBB0_30:
	ldr	x0, [sp, #16]
	bl	_free
	ldr	w8, [sp, #26]
	ldur	x9, [x29, #-16]
	str	w8, [x9]
	ldr	x8, [sp, #24]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" "

l_.str.1:                               ; @.str.1
	.asciz	"o"

l_.str.2:                               ; @.str.2
	.asciz	"o|"

l_.str.3:                               ; @.str.3
	.asciz	".|"

l_.str.4:                               ; @.str.4
	.space	1

.subsections_via_symbols
