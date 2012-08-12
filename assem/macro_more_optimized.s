	.arch armv5
	.eabi_attribute 27, 3
	.fpu vfpv3-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"macro_more_optimized.c"
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%s%d%s\000"
	.align	2
.LC2:
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	" \000"
	.align	2
.LC4:
	.ascii	",\011\000"
	.align	2
.LC5:
	.ascii	"\012\000"
	.text
	.align	2
	.global	printMatrix
	.type	printMatrix, %function
printMatrix:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	b	.L2
.L9:
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	b	.L3
.L8:
	ldr	r1, .L10
	ldrsh	r3, [fp, #-6]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-16]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	cmp	r3, #0
	bge	.L4
	ldr	r2, .L10+4
	b	.L5
.L4:
	ldr	r2, .L10+8
.L5:
	ldrsh	r3, [fp, #-6]
	mov	r3, r3, asl #3
	ldr	r0, [fp, #-16]
	add	r0, r0, r3
	ldrsh	r3, [fp, #-8]
	mov	r3, r3, asl #1
	add	r3, r0, r3
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	ip, r3, asr #16
	ldrsh	r3, [fp, #-8]
	cmp	r3, #2
	bgt	.L6
	ldr	r3, .L10+12
	b	.L7
.L6:
	ldr	r3, .L10+16
.L7:
	mov	r0, r1
	mov	r1, r2
	mov	r2, ip
	bl	printf
	ldrh	r3, [fp, #-8]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-8]	@ movhi
.L3:
	ldrsh	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L8
	ldrh	r3, [fp, #-6]	@ movhi
	add	r3, r3, #1
	strh	r3, [fp, #-6]	@ movhi
.L2:
	ldrsh	r3, [fp, #-6]
	cmp	r3, #3
	ble	.L9
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	printMatrix, .-printMatrix
	.align	2
	.global	multMatrix4
	.type	multMatrix4, %function
multMatrix4:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #8
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #16
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #24
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #10
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #18
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #26
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #12
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #20
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #28
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #6
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #14
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #22
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #30
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #10
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #8
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #16
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #14
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #24
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #5
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #10
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #10
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #18
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #14
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #26
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #6
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #10
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #12
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #20
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #14
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #28
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #7
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #6
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #10
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #14
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #22
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #14
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #30
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #8
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #18
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #8
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #20
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #16
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #22
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #24
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #9
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #18
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #10
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #20
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #18
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #22
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #26
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #10
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #18
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #12
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #20
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #20
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #22
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #28
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #11
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #16
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #6
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #18
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #14
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #20
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #22
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #22
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #30
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #12
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #24
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #26
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #8
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #28
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #16
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #30
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #24
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #13
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #24
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #26
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #10
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #28
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #18
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #30
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #26
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #14
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #24
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #4
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #26
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #12
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #28
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #20
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #30
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #28
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	mov	r3, #15
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #24
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #6
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #26
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #14
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #28
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #22
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #30
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	ldr	r2, [fp, #-20]
	add	r2, r2, #30
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r2, r2, asr #16
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #1
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrh	r2, [r2, #0]
	mov	r2, r2, asl #16
	mov	r1, r2, lsr #16
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	add	r2, r1, r2
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	strh	r2, [r3, #0]	@ movhi
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	multMatrix4, .-multMatrix4
	.section	.rodata
	.align	2
.LC6:
	.ascii	"This should never happen\000"
	.global	__aeabi_idiv
	.text
	.align	2
	.global	diagonalize
	.type	diagonalize, %function
diagonalize:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-208]
	sub	r3, fp, #72
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r3, #1
	strh	r3, [fp, #-72]	@ movhi
	mov	r3, #1
	strh	r3, [fp, #-68]	@ movhi
	mov	r3, #2
	strh	r3, [fp, #-62]	@ movhi
	sub	r3, fp, #104
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3, #0]
	add	r3, r3, #4
	mov	r3, #2
	strh	r3, [fp, #-104]	@ movhi
	mov	r3, #3
	strh	r3, [fp, #-102]	@ movhi
	mov	r3, #3
	strh	r3, [fp, #-100]	@ movhi
	mov	r3, #2
	strh	r3, [fp, #-98]	@ movhi
	mov	r3, #1
	strh	r3, [fp, #-96]	@ movhi
	mov	r3, #3
	strh	r3, [fp, #-94]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-20]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-22]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-24]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-30]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-32]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-34]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-10]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-12]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-16]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-36]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-40]	@ movhi
	ldrh	r3, [fp, #-72]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-104]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L14
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L14
	ldr	r0, .L1274+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L14:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L15
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L16
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L17
.L16:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L17:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L18
.L15:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L19
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L20
.L19:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L20:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L18:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L21
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L22
.L21:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L22:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L23
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L23
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L24
.L23:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L25
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L25
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L24
.L25:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L24
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L24
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L24:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L26
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L26
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L26:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L27
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L27:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L28
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L28
	ldr	r0, .L1274+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L28:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L29
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L30
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L31
.L30:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L31:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L32
.L29:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L33
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L34
.L33:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L34:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L32:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L35
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L36
.L35:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L36:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L37
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L37
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L38
.L37:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L39
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L39
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L38
.L39:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L38
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L38
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L38:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L40
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L40
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L40:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L41
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L41:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L42
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L43
.L42:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L44
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L43
.L44:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L45
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L43
.L45:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274
	cmp	r2, r3
	bgt	.L43
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L43:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L46
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L47
.L46:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L48
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L47
.L48:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L49
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L47
.L49:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274
	cmp	r2, r3
	bgt	.L47
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L47:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L50
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L51
.L50:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L52
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L51
.L52:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L51
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L51:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L53
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L54
.L53:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L55
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L54
.L55:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L54
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L54:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-70]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-102]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L56
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L56
	ldr	r0, .L1274+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L56:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L57
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L58
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L59
.L58:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L59:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L60
.L57:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L61
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L62
.L1275:
	.align	2
.L1274:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L61:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L62:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L60:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L63
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L64
.L63:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L64:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L65
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L65
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L66
.L65:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L67
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L67
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L66
.L67:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L66
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L66
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L66:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L68
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L68
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L68:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L69
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L69:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L70
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L70
	ldr	r0, .L1274+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L70:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L71
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L72
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L73
.L72:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L73:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L74
.L71:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L75
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L76
.L75:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L76:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L74:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L77
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L78
.L77:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L78:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L79
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L79
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L80
.L79:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L81
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L81
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L80
.L81:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L80
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L80
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L80:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L82
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L82
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L82:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L83
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L83:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L84
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L85
.L84:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L86
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L85
.L86:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L87
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L85
.L87:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274
	cmp	r2, r3
	bgt	.L85
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L85:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L88
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L89
.L88:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L90
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L89
.L90:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L91
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L89
.L91:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274
	cmp	r2, r3
	bgt	.L89
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L89:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L92
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L93
.L92:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L94
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L93
.L94:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L93
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L93:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+4
	cmp	r2, r3
	bge	.L95
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L96
.L95:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+8
	cmp	r2, r3
	bgt	.L97
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L96
.L97:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L96
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L96:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-68]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-100]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L98
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L98
	ldr	r0, .L1274+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L98:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L99
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L100
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L101
.L100:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L101:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L102
.L99:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L103
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L104
.L103:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L104:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L102:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L105
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L106
.L105:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L106:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L107
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L107
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L108
.L107:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L109
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L109
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L108
.L109:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L108
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L108
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L108:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L110
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L110
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L110:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L111
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L111:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L112
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L112
	ldr	r0, .L1276+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L112:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L113
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L114
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L115
.L114:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L115:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L116
.L113:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L117
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L118
.L117:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L118:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L116:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L119
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L120
.L119:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L120:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L121
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L121
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L122
.L121:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L123
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L123
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L122
.L123:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L122
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L122
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L122:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L124
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L124
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L124:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L125
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L125:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L126
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L127
.L126:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L128
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L127
.L128:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L129
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L127
.L129:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L127
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L127:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L130
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L131
.L130:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L132
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L131
.L132:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L133
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L131
.L133:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L131
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L131:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L134
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L135
.L134:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L136
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L135
.L136:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L135
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L135:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L137
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L138
.L137:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L139
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L138
.L139:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L138
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L138:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-66]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-98]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L140
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L140
	ldr	r0, .L1276+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L140:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L141
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L142
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L143
.L142:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L143:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L144
.L141:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L145
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L146
.L145:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L146:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L144:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L147
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L148
.L147:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L148:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L149
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L149
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L150
.L149:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L151
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L151
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L150
.L151:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L150
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L150
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L150:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L152
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L152
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L152:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L153
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L153:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L154
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L154
	ldr	r0, .L1276+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L154:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L155
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L156
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L157
.L156:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L157:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L158
.L155:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L159
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L160
.L1277:
	.align	2
.L1276:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L159:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L160:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L158:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L161
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L162
.L161:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L162:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L163
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L163
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L164
.L163:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L165
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L165
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L164
.L165:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L164
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L164
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L164:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L166
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L166
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L166:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L167
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L167:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L168
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L169
.L168:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L170
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L169
.L170:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L171
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L169
.L171:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L169
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L169:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L172
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L173
.L172:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L174
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L173
.L174:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L175
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L173
.L175:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L173
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L173:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L176
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L177
.L176:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L178
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L177
.L178:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L177
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L177:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L179
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L180
.L179:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L181
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L180
.L181:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L180
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L180:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-64]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-96]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L182
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L182
	ldr	r0, .L1276+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L182:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L183
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L184
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L185
.L184:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L185:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L186
.L183:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L187
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L188
.L187:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L188:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L186:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L189
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L190
.L189:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L190:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L191
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L191
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L192
.L191:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L193
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L193
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L192
.L193:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L192
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L192
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L192:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L194
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L194
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L194:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L195
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L195:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L196
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L196
	ldr	r0, .L1276+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L196:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L197
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L198
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L199
.L198:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L199:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L200
.L197:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L201
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L202
.L201:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L202:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L200:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L203
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L204
.L203:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L204:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L205
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L205
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L206
.L205:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L207
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L207
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L206
.L207:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L206
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L206
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L206:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L208
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L208
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L208:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L209
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L209:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278
	cmp	r2, r3
	bge	.L210
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L211
.L210:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L212
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L211
.L212:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L213
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L211
.L213:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bgt	.L211
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L211:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278
	cmp	r2, r3
	bge	.L214
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L215
.L214:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L216
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L215
.L216:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L217
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L215
.L217:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bgt	.L215
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L215:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278
	cmp	r2, r3
	bge	.L218
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L219
.L218:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L220
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L219
.L220:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+20
	cmp	r2, r3
	bgt	.L219
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L219:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278
	cmp	r2, r3
	bge	.L221
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L222
.L221:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L223
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L222
.L223:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+20
	cmp	r2, r3
	bgt	.L222
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L222:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-62]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-94]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L224
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L224
	ldr	r0, .L1278+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L224:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L225
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L226
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L227
.L226:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L227:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L228
.L225:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L229
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L230
.L229:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L230:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L228:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L231
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L232
.L231:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L232:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L233
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L233
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L234
.L233:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L235
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L235
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L234
.L235:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L234
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L234
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L234:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L236
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L236
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L236:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L237
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L237:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L238
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L238
	ldr	r0, .L1278+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L238:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L239
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L240
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L241
.L240:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L241:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L242
.L239:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L243
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L244
.L243:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L244:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L242:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L245
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L246
.L245:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L246:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L247
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L247
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L248
.L247:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L249
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L249
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L248
.L249:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L248
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L248
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L248:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L250
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L250
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L250:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L251
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L251:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278
	cmp	r2, r3
	bge	.L252
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L253
.L252:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L254
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L253
.L254:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L255
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L253
.L255:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bgt	.L253
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L253:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278
	cmp	r2, r3
	bge	.L256
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L257
.L1279:
	.align	2
.L1278:
	.word	-3317
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L256:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L258
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L257
.L258:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L259
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L257
.L259:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bgt	.L257
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L257:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bge	.L260
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L261
.L260:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L262
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L261
.L262:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+20
	cmp	r2, r3
	bgt	.L261
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L261:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bge	.L263
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L264
.L263:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L265
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L264
.L265:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+20
	cmp	r2, r3
	bgt	.L264
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L264:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-72]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-104]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L266
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L266
	ldr	r0, .L1278+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L266:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L267
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L268
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L269
.L268:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L269:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L270
.L267:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L271
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L272
.L271:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L272:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L270:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L273
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L274
.L273:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L274:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L275
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L275
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L276
.L275:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L277
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L277
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L276
.L277:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L276
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L276
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L276:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L278
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L278
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L278:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L279
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L279:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L280
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L280
	ldr	r0, .L1278+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L280:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L281
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L282
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L283
.L282:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L283:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L284
.L281:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L285
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L286
.L285:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L286:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L284:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L287
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L288
.L287:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L288:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L289
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L289
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L290
.L289:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L291
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L291
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L290
.L291:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L290
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L290
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L290:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L292
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L292
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L292:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L293
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L293:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bge	.L294
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L295
.L294:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L296
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L295
.L296:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L297
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L295
.L297:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bgt	.L295
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L295:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bge	.L298
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L299
.L298:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L300
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L299
.L300:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L301
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L299
.L301:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bgt	.L299
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L299:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bge	.L302
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L303
.L302:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L304
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L303
.L304:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1278+20
	cmp	r2, r3
	bgt	.L303
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L303:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L305
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L306
.L305:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L307
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L306
.L307:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+16
	cmp	r2, r3
	bgt	.L306
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L306:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-70]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-102]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L308
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L308
	ldr	r0, .L1280
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L308:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L309
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L310
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L311
.L310:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L311:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L312
.L309:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L313
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L314
.L313:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L314:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L312:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L315
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L316
.L315:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L316:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L317
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L317
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L318
.L317:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L319
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L319
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L318
.L319:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L318
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L318
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L318:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L320
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L320
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L320:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L321
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L321:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L322
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L322
	ldr	r0, .L1280
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L322:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L323
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L324
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L325
.L324:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L325:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L326
.L323:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L327
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L328
.L327:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L328:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L326:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L329
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L330
.L329:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L330:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L331
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L331
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L332
.L331:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L333
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L333
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L332
.L333:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L332
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L332
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L332:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L334
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L334
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L334:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L335
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L335:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L336
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L337
.L336:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L338
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L337
.L338:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L339
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L337
.L339:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L337
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L337:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L340
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L341
.L340:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L342
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L341
.L342:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L343
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L341
.L343:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L341
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L341:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L344
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L345
.L344:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L346
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L345
.L346:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+16
	cmp	r2, r3
	bgt	.L345
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L345:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L347
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L348
.L347:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L349
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L348
.L1281:
	.align	2
.L1280:
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L349:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+16
	cmp	r2, r3
	bgt	.L348
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L348:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-68]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-100]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L350
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L350
	ldr	r0, .L1280
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L350:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L351
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L352
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L353
.L352:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L353:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L354
.L351:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L355
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L356
.L355:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L356:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L354:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L357
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L358
.L357:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L358:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L359
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L359
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L360
.L359:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L361
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L361
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L360
.L361:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L360
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L360
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L360:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L362
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L362
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L362:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L363
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L363:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L364
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L364
	ldr	r0, .L1280
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L364:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L365
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L366
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L367
.L366:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L367:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L368
.L365:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L369
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L370
.L369:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L370:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L368:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L371
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L372
.L371:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L372:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L373
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L373
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L374
.L373:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L375
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L375
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L374
.L375:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L374
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L374
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L374:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L376
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L376
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L376:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L377
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L377:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L378
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L379
.L378:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L380
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L379
.L380:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L381
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L379
.L381:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L379
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L379:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L382
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L383
.L382:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L384
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L383
.L384:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L385
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L383
.L385:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L383
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L383:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L386
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L387
.L386:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L388
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L387
.L388:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+16
	cmp	r2, r3
	bgt	.L387
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L387:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+8
	cmp	r2, r3
	bge	.L389
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L390
.L389:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+12
	cmp	r2, r3
	bgt	.L391
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L390
.L391:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1280+16
	cmp	r2, r3
	bgt	.L390
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L390:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-66]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-98]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L392
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L392
	ldr	r0, .L1282+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L392:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L393
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L394
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L395
.L394:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L395:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L396
.L393:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L397
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L398
.L397:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L398:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L396:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L399
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L400
.L399:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L400:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L401
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L401
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L402
.L401:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L403
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L403
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L402
.L403:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L402
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L402
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L402:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L404
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L404
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L404:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L405
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L405:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L406
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L406
	ldr	r0, .L1282+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L406:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L407
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L408
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L409
.L408:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L409:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L410
.L407:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L411
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L412
.L411:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L412:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L410:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L413
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L414
.L413:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L414:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L415
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L415
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L416
.L415:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L417
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L417
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L416
.L417:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L416
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L416
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L416:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L418
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L418
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L418:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L419
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L419:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L420
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L421
.L420:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L422
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L421
.L422:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L423
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L421
.L423:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L421
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L421:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L424
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L425
.L424:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L426
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L425
.L426:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L427
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L425
.L427:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L425
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L425:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L428
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L429
.L428:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L430
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L429
.L430:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L429
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L429:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L431
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L432
.L431:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L433
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L432
.L433:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L432
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L432:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-64]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-96]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L434
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L434
	ldr	r0, .L1282+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L434:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L435
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L436
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L437
.L436:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L437:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L438
.L435:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L439
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L440
.L1283:
	.align	2
.L1282:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L439:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L440:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L438:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L441
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L442
.L441:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L442:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L443
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L443
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L444
.L443:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L445
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L445
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L444
.L445:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L444
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L444
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L444:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L446
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L446
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L446:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L447
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L447:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L448
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L448
	ldr	r0, .L1282+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L448:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L449
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L450
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L451
.L450:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L451:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L452
.L449:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L453
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L454
.L453:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L454:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L452:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L455
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L456
.L455:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L456:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L457
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L457
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L458
.L457:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L459
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L459
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L458
.L459:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L458
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L458
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L458:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L460
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L460
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L460:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L461
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L461:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L462
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L463
.L462:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L464
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L463
.L464:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L465
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L463
.L465:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L463
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L463:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L466
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L467
.L466:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L468
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L467
.L468:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L469
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L467
.L469:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L467
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L467:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L470
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L471
.L470:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L472
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L471
.L472:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L471
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L471:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L473
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L474
.L473:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L475
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L474
.L475:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L474
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L474:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-62]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-94]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L476
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L476
	ldr	r0, .L1282+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L476:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L477
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L478
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L479
.L478:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L479:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L480
.L477:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L481
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L482
.L481:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L482:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L480:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L483
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L484
.L483:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L484:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L485
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L485
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L486
.L485:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L487
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L487
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L486
.L487:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L486
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L486
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L486:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L488
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L488
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L488:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L489
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L489:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L490
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L490
	ldr	r0, .L1284+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L490:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L491
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L492
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L493
.L492:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L493:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L494
.L491:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L495
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L496
.L495:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L496:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L494:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L497
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L498
.L497:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L498:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L499
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L499
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L500
.L499:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L501
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L501
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L500
.L501:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L500
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L500
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L500:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L502
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L502
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L502:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L503
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L503:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L504
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L505
.L504:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L506
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L505
.L506:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L507
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L505
.L507:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284
	cmp	r2, r3
	bgt	.L505
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L505:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L508
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L509
.L508:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L510
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L509
.L510:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L511
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L509
.L511:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284
	cmp	r2, r3
	bgt	.L509
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L509:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L512
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L513
.L512:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L514
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L513
.L514:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L513
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L513:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L515
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L516
.L515:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L517
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L516
.L517:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L516
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L516:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-72]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-104]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L518
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L518
	ldr	r0, .L1284+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L518:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L519
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L520
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L521
.L520:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L521:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L522
.L519:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L523
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L524
.L523:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L524:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L522:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L525
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L526
.L525:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L526:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L527
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L527
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L528
.L527:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L529
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L529
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L528
.L529:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L528
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L528
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L528:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L530
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L530
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L530:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L531
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L531:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L532
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L532
	ldr	r0, .L1284+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L532:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L533
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L534
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L535
.L534:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L535:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L536
.L533:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L537
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L538
.L1285:
	.align	2
.L1284:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L537:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L538:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L536:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L539
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L540
.L539:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L540:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L541
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L541
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L542
.L541:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L543
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L543
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L542
.L543:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L542
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L542
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L542:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L544
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L544
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L544:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L545
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L545:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L546
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L547
.L546:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L548
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L547
.L548:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L549
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L547
.L549:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284
	cmp	r2, r3
	bgt	.L547
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L547:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L550
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L551
.L550:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L552
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L551
.L552:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L553
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L551
.L553:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284
	cmp	r2, r3
	bgt	.L551
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L551:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L554
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L555
.L554:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L556
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L555
.L556:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L555
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L555:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bge	.L557
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L558
.L557:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bgt	.L559
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L558
.L559:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L558
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L558:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-70]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-102]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L560
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L560
	ldr	r0, .L1284+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L560:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L561
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L562
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L563
.L562:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L563:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L564
.L561:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L565
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L566
.L565:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L566:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L564:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L567
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L568
.L567:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L568:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L569
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L569
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L570
.L569:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L571
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L571
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L570
.L571:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L570
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L570
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L570:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L572
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L572
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L572:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L573
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L573:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L574
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L574
	ldr	r0, .L1284+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L574:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L575
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L576
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L577
.L576:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L577:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L578
.L575:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L579
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L580
.L579:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L580:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L578:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L581
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L582
.L581:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L582:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L583
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L583
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L584
.L583:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L585
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L585
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L584
.L585:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L584
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L584
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L584:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L586
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L586
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L586:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L587
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L587:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286
	cmp	r2, r3
	bge	.L588
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L589
.L588:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L590
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L589
.L590:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L591
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L589
.L591:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+8
	cmp	r2, r3
	bgt	.L589
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L589:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286
	cmp	r2, r3
	bge	.L592
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L593
.L592:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L594
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L593
.L594:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L595
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L593
.L595:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+8
	cmp	r2, r3
	bgt	.L593
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L593:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286
	cmp	r2, r3
	bge	.L596
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L597
.L596:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L598
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L597
.L598:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bgt	.L597
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L597:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286
	cmp	r2, r3
	bge	.L599
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L600
.L599:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L601
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L600
.L601:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bgt	.L600
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L600:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-68]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-100]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L602
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L602
	ldr	r0, .L1286+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L602:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L603
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L604
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L605
.L604:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L605:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L606
.L603:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L607
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L608
.L607:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L608:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L606:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L609
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L610
.L609:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L610:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L611
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L611
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L612
.L611:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L613
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L613
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L612
.L613:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L612
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L612
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L612:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L614
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L614
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L614:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L615
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L615:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L616
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L616
	ldr	r0, .L1286+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L616:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L617
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L618
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L619
.L618:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L619:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L620
.L617:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L621
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L622
.L621:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L622:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L620:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L623
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L624
.L623:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L624:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L625
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L625
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L626
.L625:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L627
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L627
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L626
.L627:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L626
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L626
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L626:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L628
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L628
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L628:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L629
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L629:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286
	cmp	r2, r3
	bge	.L630
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L631
.L630:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L632
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L631
.L632:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L633
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L631
.L633:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+8
	cmp	r2, r3
	bgt	.L631
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L631:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286
	cmp	r2, r3
	bge	.L634
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L635
.L1287:
	.align	2
.L1286:
	.word	-3317
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L634:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L636
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L635
.L636:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L637
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L635
.L637:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+8
	cmp	r2, r3
	bgt	.L635
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L635:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+12
	cmp	r2, r3
	bge	.L638
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L639
.L638:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L640
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L639
.L640:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bgt	.L639
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L639:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+12
	cmp	r2, r3
	bge	.L641
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L642
.L641:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L643
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L642
.L643:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bgt	.L642
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L642:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-66]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-98]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L644
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L644
	ldr	r0, .L1286+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L644:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L645
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L646
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L647
.L646:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L647:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L648
.L645:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L649
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L650
.L649:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L650:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L648:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L651
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L652
.L651:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L652:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L653
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L653
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L654
.L653:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L655
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L655
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L654
.L655:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L654
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L654
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L654:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L656
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L656
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L656:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L657
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L657:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L658
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L658
	ldr	r0, .L1286+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L658:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L659
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L660
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L661
.L660:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L661:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L662
.L659:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L663
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L664
.L663:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L664:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L662:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L665
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L666
.L665:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L666:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L667
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L667
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L668
.L667:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L669
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L669
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L668
.L669:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L668
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L668
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L668:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L670
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L670
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L670:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L671
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L671:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+12
	cmp	r2, r3
	bge	.L672
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L673
.L672:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L674
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L673
.L674:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L675
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L673
.L675:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+8
	cmp	r2, r3
	bgt	.L673
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L673:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+12
	cmp	r2, r3
	bge	.L676
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L677
.L676:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L678
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L677
.L678:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L679
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L677
.L679:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+8
	cmp	r2, r3
	bgt	.L677
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L677:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+12
	cmp	r2, r3
	bge	.L680
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L681
.L680:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+16
	cmp	r2, r3
	bgt	.L682
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L681
.L682:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bgt	.L681
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L681:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L683
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L684
.L683:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L685
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L684
.L685:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+16
	cmp	r2, r3
	bgt	.L684
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L684:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-64]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-96]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L686
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L686
	ldr	r0, .L1288
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L686:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L687
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L688
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L689
.L688:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L689:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L690
.L687:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L691
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L692
.L691:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L692:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L690:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L693
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L694
.L693:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L694:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L695
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L695
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L696
.L695:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L697
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L697
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L696
.L697:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L696
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L696
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L696:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L698
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L698
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L698:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L699
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L699:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L700
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L700
	ldr	r0, .L1288
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L700:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L701
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L702
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L703
.L702:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L703:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L704
.L701:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L705
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L706
.L705:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L706:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L704:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L707
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L708
.L707:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L708:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L709
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L709
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L710
.L709:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L711
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L711
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L710
.L711:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L710
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L710
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L710:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L712
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L712
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L712:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L713
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L713:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L714
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L715
.L714:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L716
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L715
.L716:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L717
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L715
.L717:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bgt	.L715
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L715:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L718
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L719
.L718:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L720
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L719
.L720:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L721
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L719
.L721:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bgt	.L719
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L719:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L722
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L723
.L722:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L724
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L723
.L724:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+16
	cmp	r2, r3
	bgt	.L723
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L723:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L725
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L726
.L725:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L727
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L726
.L1289:
	.align	2
.L1288:
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L727:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+16
	cmp	r2, r3
	bgt	.L726
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L726:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-62]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-94]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L728
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L728
	ldr	r0, .L1288
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L728:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L729
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L730
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L731
.L730:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L731:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L732
.L729:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L733
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L734
.L733:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L734:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L732:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L735
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L736
.L735:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L736:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L737
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L737
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L738
.L737:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L739
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L739
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L738
.L739:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L738
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L738
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L738:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L740
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L740
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L740:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L741
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L741:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L742
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L742
	ldr	r0, .L1288
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L742:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L743
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L744
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L745
.L744:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L745:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L746
.L743:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L747
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L748
.L747:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L748:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L746:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L749
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L750
.L749:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L750:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L751
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L751
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L752
.L751:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L753
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L753
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L752
.L753:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L752
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L752
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L752:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L754
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L754
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L754:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L755
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L755:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L756
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L757
.L756:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L758
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L757
.L758:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L759
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L757
.L759:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bgt	.L757
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L757:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L760
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L761
.L760:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L762
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L761
.L762:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L763
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L761
.L763:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bgt	.L761
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L761:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L764
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L765
.L764:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L766
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L765
.L766:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+16
	cmp	r2, r3
	bgt	.L765
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L765:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bge	.L767
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L768
.L767:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L769
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L768
.L769:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1288+16
	cmp	r2, r3
	bgt	.L768
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L768:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-72]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-104]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L770
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L770
	ldr	r0, .L1290+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L770:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L771
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L772
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L773
.L772:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L773:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L774
.L771:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L775
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L776
.L775:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L776:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L774:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L777
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L778
.L777:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L778:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L779
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L779
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L780
.L779:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L781
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L781
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L780
.L781:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L780
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L780
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L780:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L782
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L782
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L782:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L783
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L783:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L784
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L784
	ldr	r0, .L1290+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L784:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L785
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L786
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L787
.L786:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L787:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L788
.L785:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L789
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L790
.L789:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L790:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L788:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L791
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L792
.L791:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L792:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L793
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L793
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L794
.L793:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L795
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L795
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L794
.L795:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L794
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L794
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L794:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L796
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L796
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L796:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L797
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L797:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L798
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L799
.L798:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L800
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L799
.L800:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L801
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L799
.L801:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290
	cmp	r2, r3
	bgt	.L799
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L799:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L802
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L803
.L802:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L804
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L803
.L804:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L805
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L803
.L805:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290
	cmp	r2, r3
	bgt	.L803
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L803:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L806
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L807
.L806:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L808
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L807
.L808:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L807
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L807:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L809
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L810
.L809:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L811
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L810
.L811:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L810
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L810:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-70]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-102]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L812
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L812
	ldr	r0, .L1290+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L812:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L813
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L814
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L815
.L814:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L815:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L816
.L813:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L817
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L818
.L1291:
	.align	2
.L1290:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L817:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L818:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L816:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L819
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L820
.L819:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L820:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L821
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L821
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L822
.L821:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L823
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L823
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L822
.L823:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L822
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L822
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L822:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L824
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L824
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L824:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L825
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L825:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L826
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L826
	ldr	r0, .L1290+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L826:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L827
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L828
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L829
.L828:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L829:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L830
.L827:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L831
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L832
.L831:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L832:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L830:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L833
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L834
.L833:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L834:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L835
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L835
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L836
.L835:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L837
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L837
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L836
.L837:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L836
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L836
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L836:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L838
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L838
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L838:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L839
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L839:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L840
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L841
.L840:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L842
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L841
.L842:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L843
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L841
.L843:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290
	cmp	r2, r3
	bgt	.L841
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L841:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L844
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L845
.L844:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L846
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L845
.L846:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L847
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L845
.L847:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290
	cmp	r2, r3
	bgt	.L845
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L845:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L848
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L849
.L848:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L850
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L849
.L850:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L849
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L849:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bge	.L851
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L852
.L851:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bgt	.L853
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L852
.L853:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L852
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L852:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-68]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-100]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L854
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L854
	ldr	r0, .L1290+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L854:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L855
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L856
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L857
.L856:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L857:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L858
.L855:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L859
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L860
.L859:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L860:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L858:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L861
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L862
.L861:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L862:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L863
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L863
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L864
.L863:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L865
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L865
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L864
.L865:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L864
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L864
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L864:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L866
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L866
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L866:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L867
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L867:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L868
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L868
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L868:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L869
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L870
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L871
.L870:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L871:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L872
.L869:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L873
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L874
.L873:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L874:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L872:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L875
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L876
.L875:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L876:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L877
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L877
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L878
.L877:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L879
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L879
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L878
.L879:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L878
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L878
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L878:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L880
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L880
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L880:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L881
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L881:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L882
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L883
.L882:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L884
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L883
.L884:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L885
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L883
.L885:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L883
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L883:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L886
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L887
.L886:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L888
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L887
.L888:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L889
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L887
.L889:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L887
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L887:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L890
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L891
.L890:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L892
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L891
.L892:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+12
	cmp	r2, r3
	bgt	.L891
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L891:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L893
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L894
.L893:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L895
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L894
.L895:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+12
	cmp	r2, r3
	bgt	.L894
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L894:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-66]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-98]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L896
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L896
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L896:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L897
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L898
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L899
.L898:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L899:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L900
.L897:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L901
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L902
.L901:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L902:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L900:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L903
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L904
.L903:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L904:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L905
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L905
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L906
.L905:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L907
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L907
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L906
.L907:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L906
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L906
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L906:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L908
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L908
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L908:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L909
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L909:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L910
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L910
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L910:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L911
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L912
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L913
.L912:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L913:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L914
.L911:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L915
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L916
.L1293:
	.align	2
.L1292:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L915:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L916:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L914:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L917
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L918
.L917:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L918:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L919
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L919
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L920
.L919:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L921
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L921
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L920
.L921:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L920
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L920
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L920:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L922
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L922
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L922:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L923
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L923:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L924
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L925
.L924:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L926
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L925
.L926:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L927
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L925
.L927:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L925
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L925:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L928
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L929
.L928:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L930
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L929
.L930:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L931
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L929
.L931:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L929
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L929:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L932
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L933
.L932:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L934
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L933
.L934:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+12
	cmp	r2, r3
	bgt	.L933
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L933:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bge	.L935
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L936
.L935:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+8
	cmp	r2, r3
	bgt	.L937
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L936
.L937:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1292+12
	cmp	r2, r3
	bgt	.L936
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L936:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-64]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-96]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L938
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L938
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L938:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L939
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L940
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L941
.L940:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L941:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L942
.L939:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L943
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L944
.L943:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L944:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L942:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L945
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L946
.L945:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L946:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L947
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L947
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L948
.L947:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L949
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L949
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L948
.L949:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L948
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L948
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L948:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L950
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L950
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L950:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L951
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L951:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L952
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L952
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L952:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L953
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L954
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L955
.L954:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L955:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L956
.L953:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L957
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L958
.L957:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L958:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L956:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L959
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L960
.L959:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L960:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L961
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L961
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L962
.L961:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L963
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L963
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L962
.L963:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L962
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L962
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L962:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L964
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L964
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L964:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L965
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L965:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294
	cmp	r2, r3
	bge	.L966
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L967
.L966:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L968
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L967
.L968:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L969
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L967
.L969:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L967
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L967:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294
	cmp	r2, r3
	bge	.L970
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L971
.L970:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L972
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L971
.L972:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L973
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L971
.L973:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L971
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L971:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294
	cmp	r2, r3
	bge	.L974
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L975
.L974:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L976
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L975
.L976:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+20
	cmp	r2, r3
	bgt	.L975
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L975:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294
	cmp	r2, r3
	bge	.L977
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L978
.L977:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L979
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L978
.L979:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+20
	cmp	r2, r3
	bgt	.L978
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L978:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-62]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-94]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L980
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L980
	ldr	r0, .L1294+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L980:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L981
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L982
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L983
.L982:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L983:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L984
.L981:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L985
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L986
.L985:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L986:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L984:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L987
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L988
.L987:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L988:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L989
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L989
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L990
.L989:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L991
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L991
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L990
.L991:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L990
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L990
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L990:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L992
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L992
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L992:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L993
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L993:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L994
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L994
	ldr	r0, .L1294+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L994:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L995
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L996
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L997
.L996:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L997:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L998
.L995:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L999
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1000
.L999:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1000:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L998:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1001
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1002
.L1001:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1002:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1003
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1003
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1004
.L1003:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1005
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1005
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1004
.L1005:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1004
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1004
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1004:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1006
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1006
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1006:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1007
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1007:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294
	cmp	r2, r3
	bge	.L1008
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1009
.L1008:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1010
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1009
.L1010:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1011
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1009
.L1011:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1009
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1009:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294
	cmp	r2, r3
	bge	.L1012
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1013
.L1295:
	.align	2
.L1294:
	.word	-3317
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L1012:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1014
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1013
.L1014:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1015
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1013
.L1015:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1013
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1013:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bge	.L1016
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1017
.L1016:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1018
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1017
.L1018:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+20
	cmp	r2, r3
	bgt	.L1017
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1017:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bge	.L1019
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1020
.L1019:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1021
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1020
.L1021:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+20
	cmp	r2, r3
	bgt	.L1020
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1020:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-72]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-104]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L1022
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1022
	ldr	r0, .L1294+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L1022:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1023
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1024
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1025
.L1024:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1025:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1026
.L1023:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1027
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1028
.L1027:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1028:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1026:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1029
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1030
.L1029:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1030:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1031
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1031
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L1032
.L1031:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1033
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1033
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L1032
.L1033:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1032
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1032
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1032:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1034
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1034
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1034:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1035
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1035:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1036
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L1036
	ldr	r0, .L1294+4
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L1036:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1037
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1038
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1039
.L1038:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1039:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1040
.L1037:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1041
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1042
.L1041:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1042:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1040:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1043
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1044
.L1043:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1044:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1045
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1045
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1046
.L1045:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1047
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1047
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1046
.L1047:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1046
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1046
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1046:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1048
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1048
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1048:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1049
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1049:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bge	.L1050
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1051
.L1050:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1052
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1051
.L1052:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1053
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1051
.L1053:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1051
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1051:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bge	.L1054
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1055
.L1054:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1056
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1055
.L1056:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1057
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1055
.L1057:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1055
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1055:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bge	.L1058
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1059
.L1058:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+16
	cmp	r2, r3
	bgt	.L1060
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1059
.L1060:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1294+20
	cmp	r2, r3
	bgt	.L1059
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1059:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1061
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1062
.L1061:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1063
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1062
.L1063:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1062
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1062:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-70]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-102]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L1064
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1064
	ldr	r0, .L1296
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L1064:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1065
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1066
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1067
.L1066:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1067:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1068
.L1065:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1069
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1070
.L1069:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1070:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1068:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1071
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1072
.L1071:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1072:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1073
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1073
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L1074
.L1073:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1075
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1075
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L1074
.L1075:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1074
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1074
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1074:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1076
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1076
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1076:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1077
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1077:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1078
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L1078
	ldr	r0, .L1296
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L1078:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1079
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1080
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1081
.L1080:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1081:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1082
.L1079:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1083
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1084
.L1083:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1084:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1082:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1085
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1086
.L1085:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1086:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1087
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1087
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1088
.L1087:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1089
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1089
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1088
.L1089:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1088
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1088
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1088:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1090
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1090
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1090:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1091
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1091:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1092
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1093
.L1092:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1094
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1093
.L1094:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1095
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1093
.L1095:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bgt	.L1093
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1093:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1096
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1097
.L1096:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1098
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1097
.L1098:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1099
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1097
.L1099:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bgt	.L1097
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1097:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1100
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1101
.L1100:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1102
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1101
.L1102:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1101
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1101:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1103
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1104
.L1103:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1105
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1104
.L1297:
	.align	2
.L1296:
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L1105:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1104
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1104:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-68]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-100]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L1106
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1106
	ldr	r0, .L1296
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L1106:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1107
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1108
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1109
.L1108:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1109:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1110
.L1107:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1111
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1112
.L1111:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1112:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1110:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1113
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1114
.L1113:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1114:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1115
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1115
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L1116
.L1115:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1117
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1117
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L1116
.L1117:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1116
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1116
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1116:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1118
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1118
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1118:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1119
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1119:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1120
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L1120
	ldr	r0, .L1296
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L1120:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1121
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1122
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1123
.L1122:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1123:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1124
.L1121:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1125
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1126
.L1125:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1126:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1124:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1127
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1128
.L1127:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1128:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1129
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1129
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1130
.L1129:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1131
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1131
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1130
.L1131:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1130
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1130
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1130:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1132
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1132
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1132:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1133
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1133:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1134
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1135
.L1134:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1136
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1135
.L1136:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1137
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1135
.L1137:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bgt	.L1135
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1135:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1138
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1139
.L1138:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1140
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1139
.L1140:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1141
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1139
.L1141:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bgt	.L1139
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1139:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1142
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1143
.L1142:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1144
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1143
.L1144:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1143
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1143:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bge	.L1145
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1146
.L1145:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1147
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1146
.L1147:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1146
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1146:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-66]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-98]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L1148
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1148
	ldr	r0, .L1298+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L1148:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1149
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1150
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1151
.L1150:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1151:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1152
.L1149:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1153
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1154
.L1153:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1154:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1152:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1155
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1156
.L1155:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1156:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1157
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1157
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L1158
.L1157:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1159
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1159
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L1158
.L1159:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1158
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1158
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1158:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1160
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1160
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1160:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1161
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1161:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1162
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L1162
	ldr	r0, .L1298+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L1162:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1163
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1164
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1165
.L1164:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1165:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1166
.L1163:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1167
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1168
.L1167:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1168:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1166:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1169
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1170
.L1169:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1170:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1171
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1171
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1172
.L1171:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1173
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1173
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1172
.L1173:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1172
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1172
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1172:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1174
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1174
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1174:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1175
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1175:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1176
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1177
.L1176:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1178
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1177
.L1178:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1179
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1177
.L1179:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298
	cmp	r2, r3
	bgt	.L1177
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1177:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1180
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1181
.L1180:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1182
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1181
.L1182:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1183
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1181
.L1183:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298
	cmp	r2, r3
	bgt	.L1181
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1181:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1184
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1185
.L1184:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1186
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1185
.L1186:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+12
	cmp	r2, r3
	bgt	.L1185
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1185:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1187
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1188
.L1187:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1189
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1188
.L1189:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+12
	cmp	r2, r3
	bgt	.L1188
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1188:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-64]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-96]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L1190
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1190
	ldr	r0, .L1298+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L1190:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1191
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1192
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1193
.L1192:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1193:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1194
.L1191:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1195
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1196
.L1299:
	.align	2
.L1298:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	.LC6
.L1195:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1196:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1194:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1197
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1198
.L1197:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1198:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1199
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1199
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L1200
.L1199:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1201
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1201
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L1200
.L1201:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1200
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1200
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1200:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1202
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1202
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1202:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1203
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1203:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1204
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L1204
	ldr	r0, .L1298+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L1204:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1205
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1206
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1207
.L1206:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1207:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1208
.L1205:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1209
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1210
.L1209:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1210:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1208:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1211
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1212
.L1211:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1212:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1213
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1213
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1214
.L1213:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1215
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1215
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1214
.L1215:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1214
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1214
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1214:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1216
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1216
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1216:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1217
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1217:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1218
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1219
.L1218:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1220
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1219
.L1220:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1221
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1219
.L1221:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298
	cmp	r2, r3
	bgt	.L1219
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1219:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1222
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1223
.L1222:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1224
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1223
.L1224:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1225
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1223
.L1225:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298
	cmp	r2, r3
	bgt	.L1223
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1223:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1226
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1227
.L1226:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1228
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1227
.L1228:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+12
	cmp	r2, r3
	bgt	.L1227
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1227:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+4
	cmp	r2, r3
	bge	.L1229
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1230
.L1229:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+8
	cmp	r2, r3
	bgt	.L1231
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1230
.L1231:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1298+12
	cmp	r2, r3
	bgt	.L1230
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1230:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	ldrh	r3, [fp, #-62]	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	ldrh	r3, [fp, #-94]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-22]	@ movhi
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-24]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-18]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-26]	@ movhi
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-208]
	add	r2, r2, r3
	ldrsh	r3, [fp, #-20]
	mov	r3, r3, asl #1
	add	r3, r2, r3
	ldrh	r3, [r3, #0]	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	cmp	r2, r3
	bne	.L1232
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1232
	ldr	r0, .L1298+16
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
.L1232:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1233
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1234
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1235
.L1234:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r2, r2, r3
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1235:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1236
.L1233:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1237
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1238
.L1237:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldrsh	r1, [fp, #-22]
	ldrsh	r3, [fp, #-28]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1238:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1236:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-6]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1239
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1240
.L1239:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1240:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1241
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1241
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
	b	.L1242
.L1241:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1243
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1243
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-6]	@ movhi
	b	.L1242
.L1243:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1242
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1242
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1242:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1244
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1244
	ldrh	r3, [fp, #-6]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1244:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1245
	ldrh	r3, [fp, #-6]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-6]	@ movhi
.L1245:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1246
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L1246
	ldr	r0, .L1300
	bl	puts
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
.L1246:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1247
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1248
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1249
.L1248:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1249:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1250
.L1247:
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1251
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1252
.L1251:
	ldrsh	r2, [fp, #-24]
	ldrsh	r3, [fp, #-26]
	rsb	r2, r3, r2
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1252:
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1250:
	strh	r3, [fp, #-38]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-8]	@ movhi
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1253
	ldrsh	r2, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	b	.L1254
.L1253:
	ldrsh	r2, [fp, #-26]
	ldrsh	r3, [fp, #-24]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldrsh	r1, [fp, #-28]
	ldrsh	r3, [fp, #-22]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
.L1254:
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	ble	.L1255
	ldrsh	r3, [fp, #-30]
	cmp	r3, #4096
	bgt	.L1255
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #580
	add	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
	b	.L1256
.L1255:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #2048
	bgt	.L1257
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	blt	.L1257
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	strh	r3, [fp, #-8]	@ movhi
	b	.L1256
.L1257:
	ldrsh	r3, [fp, #-30]
	cmn	r3, #2048
	bge	.L1256
	ldrsh	r3, [fp, #-30]
	cmn	r3, #4096
	blt	.L1256
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #580
	sub	r3, r3, #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1256:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1258
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1258
	ldrh	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1258:
	ldrsh	r3, [fp, #-38]
	cmp	r3, #0
	beq	.L1259
	ldrh	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-8]	@ movhi
.L1259:
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	strh	r3, [fp, #-32]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	strh	r3, [fp, #-34]	@ movhi
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+4
	cmp	r2, r3
	bge	.L1260
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1261
.L1260:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1262
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1261
.L1262:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+8
	cmp	r2, r3
	bgt	.L1263
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
	b	.L1261
.L1263:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+12
	cmp	r2, r3
	bgt	.L1261
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-10]	@ movhi
.L1261:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+4
	cmp	r2, r3
	bge	.L1264
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1265
.L1264:
	ldrsh	r3, [fp, #-30]
	cmp	r3, #0
	bge	.L1266
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1265
.L1266:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+8
	cmp	r2, r3
	bgt	.L1267
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #4096
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
	b	.L1265
.L1267:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+12
	cmp	r2, r3
	bgt	.L1265
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, #6208
	add	r3, r3, #49
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-12]	@ movhi
.L1265:
	ldrh	r3, [fp, #-32]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+4
	cmp	r2, r3
	bge	.L1268
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
	b	.L1269
.L1268:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+8
	cmp	r2, r3
	bgt	.L1270
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-14]	@ movhi
	b	.L1269
.L1270:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+16
	cmp	r2, r3
	bgt	.L1269
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-14]	@ movhi
.L1269:
	ldrh	r3, [fp, #-34]	@ movhi
	strh	r3, [fp, #-30]	@ movhi
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+4
	cmp	r2, r3
	bge	.L1271
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
	b	.L1272
.L1271:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+8
	cmp	r2, r3
	bgt	.L1273
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	strh	r3, [fp, #-16]	@ movhi
	b	.L1272
.L1273:
	ldrsh	r2, [fp, #-30]
	ldr	r3, .L1300+16
	cmp	r2, r3
	bgt	.L1272
	ldrsh	r2, [fp, #-30]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	sub	r3, r3, #2432
	sub	r3, r3, #6
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [fp, #-16]	@ movhi
.L1272:
	mov	r3, #4096
	strh	r3, [fp, #-136]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-134]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-132]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-130]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-128]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-126]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-124]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-122]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-120]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-118]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-116]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-114]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-112]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-110]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-108]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-106]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-168]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-166]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-164]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-162]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-160]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-158]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-156]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-154]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-152]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-150]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-148]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-146]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-144]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-142]	@ movhi
	mov	r3, #0
	strh	r3, [fp, #-140]	@ movhi
	mov	r3, #4096
	strh	r3, [fp, #-138]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	ldrh	r2, [fp, #-14]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #163
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-14]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #163
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-10]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-18]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r0, fp, #4
	add	r2, r0, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-16]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r1, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	ldrh	r2, [fp, #-16]
	rsb	r2, r2, #0
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r2, r2, asl #16
	mov	r2, r2, lsr #16
	mov	r1, r1, asl #2
	add	r1, r1, r3
	mvn	r3, #131
	mov	r1, r1, asl #1
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	strh	r2, [r3, #0]	@ movhi
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-20]
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mvn	r3, #131
	mov	r2, r2, asl #1
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldrh	r2, [fp, #-12]	@ movhi
	strh	r2, [r3, #0]	@ movhi
	sub	r2, fp, #168
	sub	r3, fp, #200
	mov	r0, r2
	ldr	r1, [fp, #-208]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #200
	sub	r3, fp, #136
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	multMatrix4
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L1301:
	.align	2
.L1300:
	.word	.LC6
	.word	-3317
	.word	3316
	.word	12867
	.word	6433
	.size	diagonalize, .-diagonalize
	.section	.rodata
	.align	2
.LC7:
	.ascii	"elapsed time: %lf\012\000"
	.align	2
.LC0:
	.short	512
	.short	1024
	.short	1536
	.short	512
	.short	1024
	.short	1536
	.short	512
	.short	1024
	.short	1536
	.short	512
	.short	1024
	.short	1536
	.short	512
	.short	1024
	.short	1536
	.short	2048
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	mov	r3, #0
	str	r3, [fp, #-16]
	bl	clock
	str	r0, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1303
.L1304:
	ldr	r3, .L1305+8
	sub	r1, fp, #52
	mov	r2, r3
	mov	r3, #32
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	sub	r3, fp, #52
	mov	r0, r3
	bl	diagonalize
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1303:
	ldr	r2, [fp, #-16]
	ldr	r3, .L1305+12
	cmp	r2, r3
	ble	.L1304
	ldr	r4, .L1305+16
	bl	clock
	mov	r3, r0
	fmsr	s11, r3	@ int
	fsitod	d6, s11
	ldr	r3, [fp, #-20]
	fmsr	s11, r3	@ int
	fsitod	d7, s11
	fsubd	d6, d6, d7
	fldd	d7, .L1305
	fdivd	d7, d6, d7
	mov	r0, r4
	fmrrd	r2, r3, d7
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L1306:
	.align	3
.L1305:
	.word	0
	.word	1093567616
	.word	.LC0
	.word	99999
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",%progbits
