	.cpu generic+fp+simd
	.file	"decomment.c"
	.text
	.align	2
	.global	handleNormalState
	.type	handleNormalState, %function
handleNormalState:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	cmp	w0, 47
	bne	.L2
	mov	w0, 3
	str	w0, [x29,44]
	b	.L3
.L2:
	ldr	w0, [x29,28]
	cmp	w0, 39
	bne	.L4
	ldr	w0, [x29,28]
	bl	putchar
	str	wzr, [x29,44]
	b	.L3
.L4:
	ldr	w0, [x29,28]
	cmp	w0, 34
	bne	.L5
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 1
	str	w0, [x29,44]
	b	.L3
.L5:
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 2
	str	w0, [x29,44]
.L3:
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	handleNormalState, .-handleNormalState
	.align	2
	.global	handleSlashState
	.type	handleSlashState, %function
handleSlashState:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	cmp	w0, 42
	bne	.L8
	mov	w0, 32
	bl	putchar
	mov	w0, 4
	str	w0, [x29,44]
	b	.L9
.L8:
	ldr	w0, [x29,28]
	cmp	w0, 47
	bne	.L10
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 3
	str	w0, [x29,44]
	b	.L9
.L10:
	ldr	w0, [x29,28]
	cmp	w0, 39
	bne	.L11
	mov	w0, 47
	bl	putchar
	ldr	w0, [x29,28]
	bl	putchar
	str	wzr, [x29,44]
	b	.L9
.L11:
	ldr	w0, [x29,28]
	cmp	w0, 34
	bne	.L12
	mov	w0, 47
	bl	putchar
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 1
	str	w0, [x29,44]
	b	.L9
.L12:
	mov	w0, 47
	bl	putchar
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 2
	str	w0, [x29,44]
.L9:
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1:
	.size	handleSlashState, .-handleSlashState
	.align	2
	.global	handleCommentState
	.type	handleCommentState, %function
handleCommentState:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	cmp	w0, 42
	bne	.L15
	mov	w0, 5
	str	w0, [x29,44]
	b	.L16
.L15:
	ldr	w0, [x29,28]
	cmp	w0, 10
	bne	.L17
	mov	w0, 10
	bl	putchar
	mov	w0, 4
	str	w0, [x29,44]
	b	.L16
.L17:
	mov	w0, 4
	str	w0, [x29,44]
.L16:
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE2:
	.size	handleCommentState, .-handleCommentState
	.align	2
	.global	handleEndStarState
	.type	handleEndStarState, %function
handleEndStarState:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	cmp	w0, 42
	bne	.L20
	mov	w0, 5
	str	w0, [x29,44]
	b	.L21
.L20:
	ldr	w0, [x29,28]
	cmp	w0, 47
	bne	.L22
	mov	w0, 2
	str	w0, [x29,44]
	b	.L21
.L22:
	ldr	w0, [x29,28]
	cmp	w0, 10
	bne	.L23
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 4
	str	w0, [x29,44]
	b	.L21
.L23:
	mov	w0, 4
	str	w0, [x29,44]
.L21:
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE3:
	.size	handleEndStarState, .-handleEndStarState
	.align	2
	.global	handleCQuoteState
	.type	handleCQuoteState, %function
handleCQuoteState:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	cmp	w0, 39
	bne	.L26
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 2
	str	w0, [x29,44]
	b	.L27
.L26:
	ldr	w0, [x29,28]
	cmp	w0, 92
	bne	.L28
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 6
	str	w0, [x29,44]
	b	.L27
.L28:
	ldr	w0, [x29,28]
	bl	putchar
	str	wzr, [x29,44]
.L27:
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE4:
	.size	handleCQuoteState, .-handleCQuoteState
	.align	2
	.global	handleSQuoteState
	.type	handleSQuoteState, %function
handleSQuoteState:
.LFB5:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	cmp	w0, 34
	bne	.L31
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 2
	str	w0, [x29,44]
	b	.L32
.L31:
	ldr	w0, [x29,28]
	cmp	w0, 92
	bne	.L33
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 7
	str	w0, [x29,44]
	b	.L32
.L33:
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 1
	str	w0, [x29,44]
.L32:
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE5:
	.size	handleSQuoteState, .-handleSQuoteState
	.align	2
	.global	handleSpecialCState
	.type	handleSpecialCState, %function
handleSpecialCState:
.LFB6:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	bl	putchar
	str	wzr, [x29,44]
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE6:
	.size	handleSpecialCState, .-handleSpecialCState
	.align	2
	.global	handleSpecialSState
	.type	handleSpecialSState, %function
handleSpecialSState:
.LFB7:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	w0, [x29,28]
	ldr	w0, [x29,28]
	bl	putchar
	mov	w0, 1
	str	w0, [x29,44]
	ldr	w0, [x29,44]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE7:
	.size	handleSpecialSState, .-handleSpecialSState
	.section	.rodata
	.align	3
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB8:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	mov	w0, 2
	str	w0, [x29,20]
	b	.L40
.L52:
	ldr	w0, [x29,16]
	cmp	w0, 10
	bne	.L41
	ldr	w0, [x29,28]
	add	w0, w0, 1
	str	w0, [x29,28]
.L41:
	ldr	w0, [x29,20]
	cmp	w0, 7
	bhi	.L40
	adrp	x1, .L43
	add	x1, x1, :lo12:.L43
	ldr	w2, [x1,w0,uxtw #2]
	adr	x3, .Lrtx43
	add	x2, x3, w2, sxtw #2
	br	x2
.Lrtx43:
	.section	.rodata
	.align	0
	.align	2
.L43:
	.word	(.L42 - .Lrtx43) / 4
	.word	(.L44 - .Lrtx43) / 4
	.word	(.L45 - .Lrtx43) / 4
	.word	(.L46 - .Lrtx43) / 4
	.word	(.L47 - .Lrtx43) / 4
	.word	(.L48 - .Lrtx43) / 4
	.word	(.L49 - .Lrtx43) / 4
	.word	(.L50 - .Lrtx43) / 4
	.text
.L45:
	ldr	w0, [x29,16]
	bl	handleNormalState
	str	w0, [x29,20]
	b	.L40
.L46:
	ldr	w0, [x29,16]
	bl	handleSlashState
	str	w0, [x29,20]
	ldr	w0, [x29,20]
	cmp	w0, 4
	bne	.L51
	ldr	w0, [x29,28]
	add	w0, w0, 1
	str	w0, [x29,24]
	b	.L40
.L51:
	b	.L40
.L47:
	ldr	w0, [x29,16]
	bl	handleCommentState
	str	w0, [x29,20]
	b	.L40
.L48:
	ldr	w0, [x29,16]
	bl	handleEndStarState
	str	w0, [x29,20]
	b	.L40
.L42:
	ldr	w0, [x29,16]
	bl	handleCQuoteState
	str	w0, [x29,20]
	b	.L40
.L44:
	ldr	w0, [x29,16]
	bl	handleSQuoteState
	str	w0, [x29,20]
	b	.L40
.L49:
	ldr	w0, [x29,16]
	bl	handleSpecialCState
	str	w0, [x29,20]
	b	.L40
.L50:
	ldr	w0, [x29,16]
	bl	handleSpecialSState
	str	w0, [x29,20]
	nop
.L40:
	bl	getchar
	str	w0, [x29,16]
	ldr	w0, [x29,16]
	cmn	w0, #1
	bne	.L52
	ldr	w0, [x29,20]
	cmp	w0, 3
	bne	.L53
	mov	w0, 47
	bl	putchar
.L53:
	ldr	w0, [x29,20]
	cmp	w0, 4
	beq	.L54
	ldr	w0, [x29,20]
	cmp	w0, 5
	bne	.L55
.L54:
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x0, [x0]
	adrp	x1, .LC0
	add	x1, x1, :lo12:.LC0
	ldr	w2, [x29,24]
	bl	fprintf
	mov	w0, 1
	bl	exit
.L55:
	mov	w0, 0
	bl	exit
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",%progbits
