.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	str	w1, [sp, #24]
	ldur	w0, [x29, #-4]
	bl	_abs
	mov	w8, #10
	sdiv	w9, w0, w8
	mul	w9, w9, w8
	subs	w8, w0, w9
	stur	w8, [x29, #-12]                 ; 4-byte Folded Spill
	ldr	w0, [sp, #24]
	bl	_abs
	ldr	w8, [sp, #24]
	sdiv	w9, w0, w8
	mul	w8, w8, w9
	add	w0, w8, #16
	ldur	w8, [x29, #-12]                 ; 4-byte Folded Reload
	mul	w0, w8, w0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
