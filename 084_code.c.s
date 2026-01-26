.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #56]
	str	w1, [sp, #52]
	sub	x0, x29, #18
	mov	w1, #0
	mov	w2, #10
	str	w2, [sp, #16]                   ; 4-byte Folded Spill
	bl	_memset
	ldr	w2, [sp, #16]                   ; 4-byte Folded Reload
	sub	x0, x29, #28
	bl	_memset
	str	wzr, [sp, #48]
	str	wzr, [sp, #44]
	str	wzr, [sp, #40]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #40]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_13
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #40]
	ldrsb	w0, [x8, x9]
	bl	_isdigit
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_7
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_5
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #40]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	w9, [sp, #44]
	add	w10, w9, #1
	str	w10, [sp, #44]
	lsl	w10, w10, #8
	add	x8, x8, w10
	strb	w8, [x29, #-18]
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	x8, [sp, #56]
	ldrsw	x9, [sp, #40]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	w9, [sp, #44]
	add	w10, w9, #1
	str	w10, [sp, #44]
	add	x8, x8, w10, sxtw
	strb	w8, [x29, #-28]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_11
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #48]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_10
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #44]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	mov	w8, #1
	str	w8, [sp, #48]
	str	wzr, [sp, #44]
	b	LBB0_10
LBB0_10:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_11
LBB0_11:                                ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #40]
	add	w8, w8, #1
	str	w8, [sp, #40]
	b	LBB0_1
LBB0_13:
	ldr	w8, [sp, #52]
	str	w8, [sp, #36]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-18]
	bl	_atoi
	ldr	w8, [sp, #36]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	str	w8, [sp, #32]                   ; 4-byte Folded Spill
	ldur	x0, [x29, #-28]
	bl	_atoi
	ldr	w8, [sp, #32]                   ; 4-byte Folded Reload
	subs	w8, w8, w0
	str	w8, [sp, #28]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_15
	b	LBB0_14
LBB0_14:
	bl	___stack_chk_fail
LBB0_15:
	ldr	w0, [sp, #28]                   ; 4-byte Folded Reload
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
