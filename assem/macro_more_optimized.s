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
	str	r3, [fp, #-8]
	str	r3, [fp, #-12]
	b	.L2
.L9:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L3
.L8:
	ldr	r1, .L10
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, r2, asl #2]
	cmp	r3, #0
	bge	.L4
	ldr	r2, .L10+4
	b	.L5
.L4:
	ldr	r2, .L10+8
.L5:
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #4
	ldr	r0, [fp, #-16]
	add	r3, r0, r3
	ldr	r0, [fp, #-12]
	ldr	ip, [r3, r0, asl #2]
	ldr	r3, [fp, #-12]
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
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L8
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
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
	mov	fp, sp						
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	str	r3, [fp, #-12]
	mov	r3, r2
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #0]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]							
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #16] 							
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #32] 
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1]					
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #48]					
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1] 
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #1
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #4]						
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1]						
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]			
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #20]						
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1]	
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]						
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #36						
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	ldr	r1, [r2, r1]						
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #52]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #2
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #8]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #24]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #40]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #56]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #3
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #12]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #28]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #44]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #60]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #4
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #0]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #16]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #32]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #48]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #5
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #20]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #36]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #52]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #6
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #8]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #24]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #40]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #56]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #7
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #12]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #28]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #44]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #60]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #8
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #0]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #16]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #40]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #32]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #44]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #48]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #9
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #20]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #40]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #36]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #44]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #52]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #10
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #8]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #24]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #40]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #40]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #44]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #56]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #11
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #12]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #28]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #40]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #44]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #44]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #60]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #12
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #48]
	ldr	r2, [fp, #-20]
	ldr	r2, [r2, #0]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #52]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #16]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #56]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #32]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #60]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #48]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #13
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #48]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #52]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #20]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #56]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #36]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #60]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #52]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #14
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #48]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #8]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #52]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #24]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #56]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #40]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #60]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #56]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	r3, #15
	str	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #48]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #12]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #52]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #28]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #56]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #44]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	ldr r3, [r3, #60]
	ldr	r2, [fp, #-20]
	ldr r2, [r2, #60]
	mul	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldr	r1, [r2, #0]
	ldr	r2, [fp, #-8]
	mov	r2, r2, asr #12
	add	r2, r1, r2
	str	r2, [r3, #0]
	mov	sp, fp
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
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #400
	str	r0, [fp, #-400]
	sub	r2, fp, #140
	mov	r3, #64
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	mov	r3, #1
	str	r3, [fp, #-140]
	str	r3, [fp, #-132]
	mov	r3, #2
	str	r3, [fp, #-120]
	sub	r2, fp, #204
	mov	r3, #64
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
	bl	memset
	mov	r3, #2
	str	r3, [fp, #-204]
	mov	r3, #3
	str	r3, [fp, #-200]
	str	r3, [fp, #-196]
	mov	r3, #2
	str	r3, [fp, #-192]
	mov	r3, #1
	str	r3, [fp, #-188]
	mov	r3, #3
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-32]
	str	r3, [fp, #-36]
	str	r3, [fp, #-40]
	str	r3, [fp, #-44]
	str	r3, [fp, #-48]
	str	r3, [fp, #-52]
	str	r3, [fp, #-56]
	str	r3, [fp, #-8]
	str	r3, [fp, #-12]
	str	r3, [fp, #-60]
	str	r3, [fp, #-64]
	str	r3, [fp, #-16]
	str	r3, [fp, #-20]
	str	r3, [fp, #-24]
	str	r3, [fp, #-28]
	str	r3, [fp, #-68]
	str	r3, [fp, #-72]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L14
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L14
	ldr	r0, .L1274+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L14:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L15
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L16
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L17
.L16:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L17:
	b	.L18
.L15:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L19
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L20
.L19:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L20:
.L18:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L21
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L22
.L21:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L22:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L23
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L23
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L24
.L23:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L25
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L25
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L24
.L25:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L24
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L24
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L24:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L26
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L26:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L27:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L28
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L28
	ldr	r0, .L1274+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L28:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L29
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L30
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L31
.L30:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L31:
	b	.L32
.L29:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L33
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L34
.L33:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L34:
.L32:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L35
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L36
.L35:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L36:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L37
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L37
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L38
.L37:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L39
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L39
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L38
.L39:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L38
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L38
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L38:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L40
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L40:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L41:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L42
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L43
.L42:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L44
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L43
.L44:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L45
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L43
.L45:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L43
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L43:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L46
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L47
.L46:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L48
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L47
.L48:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L49
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L47
.L49:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L47
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L47:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L50
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L51
.L50:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L52
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L51
.L52:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+24
	cmp	r2, r3
	bgt	.L51
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L51:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L53
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L54
.L53:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L55
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L54
.L55:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+24
	cmp	r2, r3
	bgt	.L54
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L54:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1274
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1274
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1274
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1274
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1274+4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1274+4
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1274+4
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1274+4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L56
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L56
	ldr	r0, .L1274+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L56:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L57
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L58
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L59
.L58:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L59:
	b	.L60
.L57:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L61
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L62
.L61:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L62:
.L60:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L63
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L64
.L63:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L64:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L65
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L65
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L66
.L65:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L67
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L67
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L66
.L67:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L66
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L66
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L66:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L68
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L68
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L68:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L69:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L70
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L70
	ldr	r0, .L1274+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L70:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L71
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L72
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L73
.L72:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L73:
	b	.L74
.L71:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L75
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L76
.L75:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L76:
.L74:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L77
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L78
.L1275:
	.align	2
.L1274:
	.word	-328
	.word	-264
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
.L77:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L78:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L79
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L79
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L80
.L79:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L81
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L81
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L80
.L81:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L80
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L80
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L80:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L82
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L82:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L83
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L83:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L84
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L85
.L84:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L86
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L85
.L86:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L87
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L85
.L87:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L85
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L85:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L88
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L89
.L88:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L90
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L89
.L90:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L91
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L89
.L91:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L89
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L89:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L92
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L93
.L92:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L94
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L93
.L94:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+24
	cmp	r2, r3
	bgt	.L93
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L93:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L95
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L96
.L95:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L97
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L96
.L97:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+24
	cmp	r2, r3
	bgt	.L96
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L96:
mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1274
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1274
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1274
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1274
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1274+4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1274+4
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1274+4
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1274+4
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-196]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L98
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L98
	ldr	r0, .L1274+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L98:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L99
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L100
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L101
.L100:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L101:
	b	.L102
.L99:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L103
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L104
.L103:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L104:
.L102:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L105
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L106
.L105:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L106:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L107
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L107
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L108
.L107:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L109
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L109
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L108
.L109:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L108
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L108
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L108:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L110
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L110
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L110:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L111:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L112
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L112
	ldr	r0, .L1274+8
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L112:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L113
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L114
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L115
.L114:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L115:
	b	.L116
.L113:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L117
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L118
.L117:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L118:
.L116:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L119
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L120
.L119:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L120:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L121
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L121
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L122
.L121:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L123
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L123
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L122
.L123:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L122
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L122
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L122:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L124
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L124
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L124:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L125:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L126
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L127
.L126:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L128
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L127
.L128:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L129
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L127
.L129:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L127
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L127:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L130
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L131
.L130:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L132
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L131
.L132:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L133
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L131
.L133:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+12
	cmp	r2, r3
	bgt	.L131
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L131:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+16
	cmp	r2, r3
	bge	.L134
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L135
.L134:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+20
	cmp	r2, r3
	bgt	.L136
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L135
.L136:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1274+24
	cmp	r2, r3
	bgt	.L135
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L135:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L137
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L138
.L137:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L139
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L138
.L139:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L138
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L138:
mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r1, .L1276+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1276+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1276+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1276+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1276+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1276+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1276+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1276+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-128]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-192]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L140
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L140
	ldr	r0, .L1276+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L140:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L141
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L142
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L143
.L142:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L143:
	b	.L144
.L141:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L145
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L146
.L145:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L146:
.L144:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L147
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L148
.L147:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L148:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L149
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L149
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L150
.L149:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L151
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L151
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L150
.L151:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L150
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L150
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L150:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L152
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L152
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L152:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L153
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L153:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L154
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L154
	ldr	r0, .L1276+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L154:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L155
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L156
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L157
.L156:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L157:
	b	.L158
.L155:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L159
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L160
.L159:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L160:
.L158:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L161
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L162
.L161:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L162:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L163
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L163
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L164
.L163:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L165
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L165
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L164
.L165:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L164
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L164
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L164:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L166
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L166
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L166:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L167
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L167:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L168
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L169
.L168:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L170
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L169
.L170:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L171
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L169
.L171:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L169
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L169:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L172
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L173
.L172:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L174
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L173
.L174:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L175
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L173
.L175:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L173
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L173:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L176
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L177
.L176:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L178
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L177
.L178:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L177
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L177:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L179
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L180
.L179:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L181
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L180
.L1277:
	.align	2
.L1276:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
.L181:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L180
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L180:
mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1276+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1276+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1276+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1276+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1276+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1276+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1276+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1276+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-124]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-188]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L182
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L182
	ldr	r0, .L1276+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L182:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L183
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L184
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L185
.L184:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L185:
	b	.L186
.L183:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L187
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L188
.L187:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L188:
.L186:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L189
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L190
.L189:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L190:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L191
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L191
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L192
.L191:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L193
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L193
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L192
.L193:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L192
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L192
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L192:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L194
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L194
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L194:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L195
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L195:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L196
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L196
	ldr	r0, .L1276+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L196:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L197
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L198
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L199
.L198:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L199:
	b	.L200
.L197:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L201
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L202
.L201:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L202:
.L200:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L203
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L204
.L203:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L204:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L205
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L205
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L206
.L205:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L207
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L207
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L206
.L207:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L206
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L206
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L206:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L208
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L208
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L208:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L209
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L209:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L210
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L211
.L210:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L212
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L211
.L212:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L213
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L211
.L213:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L211
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L211:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L214
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L215
.L214:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L216
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L215
.L216:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L217
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L215
.L217:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276
	cmp	r2, r3
	bgt	.L215
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L215:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L218
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L219
.L218:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L220
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L219
.L220:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L219
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L219:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+4
	cmp	r2, r3
	bge	.L221
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L222
.L221:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+8
	cmp	r2, r3
	bgt	.L223
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L222
.L223:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1276+12
	cmp	r2, r3
	bgt	.L222
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L222:
mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1276+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1276+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1276+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1276+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1276+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1276+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1276+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1276+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-184]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L224
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L224
	ldr	r0, .L1276+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L224:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L225
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L226
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L227
.L226:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L227:
	b	.L228
.L225:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L229
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L230
.L229:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L230:
.L228:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L231
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L232
.L231:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L232:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L233
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L233
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L234
.L233:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L235
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L235
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L234
.L235:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L234
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L234
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L234:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L236
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L236:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L237
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L237:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L238
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L238
	ldr	r0, .L1278
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L238:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L239
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L240
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L241
.L240:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L241:
	b	.L242
.L239:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L243
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L244
.L243:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L244:
.L242:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L245
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L246
.L245:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L246:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L247
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L247
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L248
.L247:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L249
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L249
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L248
.L249:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L248
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L248
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L248:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L250
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L250
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L250:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L251
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L251:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L252
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L253
.L252:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L254
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L253
.L254:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L255
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L253
.L255:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+4
	cmp	r2, r3
	bgt	.L253
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L253:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L256
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L257
.L256:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L258
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L257
.L258:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L259
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L257
.L259:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+4
	cmp	r2, r3
	bgt	.L257
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L257:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L260
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L261
.L260:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L262
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L261
.L262:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L261
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L261:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L263
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L264
.L263:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L265
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L264
.L265:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L264
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L264:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1278+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1278+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1278+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1278+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1278+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1278+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1278+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1278+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L266
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L266
	ldr	r0, .L1278
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L266:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L267
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L268
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L269
.L268:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L269:
	b	.L270
.L267:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L271
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L272
.L271:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L272:
.L270:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L273
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L274
.L273:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L274:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L275
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L275
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L276
.L275:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L277
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L277
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L276
.L277:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L276
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L276
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L276:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L278
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L278
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L278:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L279
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L279:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L280
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L280
	ldr	r0, .L1278
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L280:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L281
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L282
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L283
.L282:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L283:
	b	.L284
.L281:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L285
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L286
.L285:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L286:
.L284:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L287
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L288
.L287:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L288:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L289
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L289
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L290
.L289:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L291
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L291
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L290
.L291:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L290
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L290
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L290:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L292
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L292
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L292:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L293
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L293:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L294
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L295
.L294:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L296
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L295
.L296:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L297
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L295
.L297:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+4
	cmp	r2, r3
	bgt	.L295
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L295:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L298
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L299
.L1279:
	.align	2
.L1278:
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
.L298:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L300
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L299
.L300:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L301
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L299
.L301:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+4
	cmp	r2, r3
	bgt	.L299
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L299:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L302
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L303
.L302:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L304
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L303
.L304:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L303
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L303:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L305
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L306
.L305:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L307
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L306
.L307:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L306
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L306:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	
	ldr	r2, [fp, #-32]
	ldr	r1, .L1278+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1278+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1278+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1278+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1278+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1278+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1278+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1278+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L308
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L308
	ldr	r0, .L1278
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L308:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L309
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L310
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L311
.L310:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L311:
	b	.L312
.L309:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L313
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L314
.L313:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L314:
.L312:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L315
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L316
.L315:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L316:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L317
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L317
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L318
.L317:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L319
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L319
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L318
.L319:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L318
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L318
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L318:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L320
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L320
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L320:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L321
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L321:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L322
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L322
	ldr	r0, .L1278
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L322:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L323
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L324
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L325
.L324:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L325:
	b	.L326
.L323:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L327
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L328
.L327:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L328:
.L326:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L329
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L330
.L329:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L330:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L331
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L331
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L332
.L331:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L333
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L333
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L332
.L333:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L332
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L332
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L332:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L334
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L334
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L334:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L335
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L335:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L336
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L337
.L336:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L338
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L337
.L338:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L339
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L337
.L339:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+4
	cmp	r2, r3
	bgt	.L337
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L337:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L340
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L341
.L340:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L342
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L341
.L342:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L343
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L341
.L343:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+4
	cmp	r2, r3
	bgt	.L341
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L341:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L344
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L345
.L344:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L346
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L345
.L346:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L345
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L345:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+8
	cmp	r2, r3
	bge	.L347
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L348
.L347:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+12
	cmp	r2, r3
	bgt	.L349
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L348
.L349:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1278+16
	cmp	r2, r3
	bgt	.L348
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L348:
mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1278+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1278+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1278+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1278+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1278+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1278+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1280+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1280+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-196]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L350
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L350
	ldr	r0, .L1280+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L350:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L351
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L352
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L353
.L352:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L353:
	b	.L354
.L351:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L355
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L356
.L355:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L356:
.L354:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L357
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L358
.L357:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L358:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L359
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L359
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L360
.L359:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L361
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L361
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L360
.L361:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L360
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L360
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L360:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L362
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L362
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L362:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L363
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L363:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L364
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L364
	ldr	r0, .L1280+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L364:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L365
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L366
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L367
.L366:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L367:
	b	.L368
.L365:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L369
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L370
.L369:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L370:
.L368:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L371
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L372
.L371:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L372:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L373
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L373
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L374
.L373:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L375
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L375
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L374
.L375:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L374
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L374
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L374:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L376
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L376
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L376:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L377
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L377:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L378
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L379
.L378:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L380
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L379
.L380:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L381
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L379
.L381:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280
	cmp	r2, r3
	bgt	.L379
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L379:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L382
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L383
.L382:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L384
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L383
.L384:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L385
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L383
.L385:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280
	cmp	r2, r3
	bgt	.L383
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L383:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L386
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L387
.L386:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L388
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L387
.L388:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L387
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L387:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L389
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L390
.L389:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L391
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L390
.L391:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L390
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L390:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1280+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1280+8
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1280+8
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1280+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1280+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1280+12
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1280+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1280+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-128]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-192]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L392
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L392
	ldr	r0, .L1280+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L392:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L393
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L394
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L395
.L394:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L395:
	b	.L396
.L393:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L397
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L398
.L397:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L398:
.L396:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L399
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L400
.L399:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L400:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L401
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L401
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L402
.L401:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L403
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L403
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L402
.L1281:
	.align	2
.L1280:
	.word	12867
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
	.word	-3317
	.word	3316
.L403:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L402
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L402
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L402:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L404
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L404
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L404:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L405
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L405:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L406
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L406
	ldr	r0, .L1280+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L406:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L407
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L408
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L409
.L408:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L409:
	b	.L410
.L407:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L411
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L412
.L411:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L412:
.L410:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L413
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L414
.L413:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L414:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L415
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L415
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L416
.L415:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L417
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L417
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L416
.L417:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L416
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L416
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L416:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L418
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L418
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L418:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L419
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L419:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L420
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L421
.L420:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L422
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L421
.L422:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L423
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L421
.L423:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280
	cmp	r2, r3
	bgt	.L421
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L421:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L424
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L425
.L424:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L426
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L425
.L426:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L427
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L425
.L427:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280
	cmp	r2, r3
	bgt	.L425
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L425:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L428
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L429
.L428:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L430
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L429
.L430:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L429
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L429:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L431
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L432
.L431:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L433
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L432
.L433:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+4
	cmp	r2, r3
	bgt	.L432
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L432:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1280+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1280+8
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1280+8
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1280+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1280+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1280+12
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1280+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1280+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-124]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-188]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L434
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L434
	ldr	r0, .L1280+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L434:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L435
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L436
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L437
.L436:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L437:
	b	.L438
.L435:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L439
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L440
.L439:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L440:
.L438:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L441
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L442
.L441:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L442:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L443
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L443
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L444
.L443:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L445
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L445
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L444
.L445:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L444
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L444
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L444:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L446
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L446
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L446:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L447
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L447:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L448
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L448
	ldr	r0, .L1280+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L448:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L449
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L450
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L451
.L450:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L451:
	b	.L452
.L449:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L453
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L454
.L453:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L454:
.L452:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L455
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L456
.L455:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L456:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L457
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L457
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L458
.L457:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L459
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L459
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L458
.L459:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L458
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L458
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L458:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L460
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L460
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L460:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L461
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L461:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+20
	cmp	r2, r3
	bge	.L462
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L463
.L462:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L464
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L463
.L464:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1280+24
	cmp	r2, r3
	bgt	.L465
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L463
.L465:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L463
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L463:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L466
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L467
.L466:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L468
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L467
.L468:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L469
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L467
.L469:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L467
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L467:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L470
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L471
.L470:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L472
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L471
.L472:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L471
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L471:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L473
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L474
.L473:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L475
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L474
.L475:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L474
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L474:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1282+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1282+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1282+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1282+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1282+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1282+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1282+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1282+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-184]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L476
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L476
	ldr	r0, .L1282+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L476:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L477
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L478
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L479
.L478:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L479:
	b	.L480
.L477:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L481
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L482
.L481:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L482:
.L480:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L483
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L484
.L483:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L484:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L485
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L485
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L486
.L485:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L487
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L487
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L486
.L487:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L486
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L486
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L486:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L488
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L488
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L488:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L489
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L489:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L490
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L490
	ldr	r0, .L1282+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L490:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L491
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L492
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L493
.L492:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L493:
	b	.L494
.L491:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L495
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L496
.L495:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L496:
.L494:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L497
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L498
.L497:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L498:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L499
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L499
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L500
.L499:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L501
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L501
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L500
.L501:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L500
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L500
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L500:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L502
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L502
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L502:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L503
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L503:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L504
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L505
.L504:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L506
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L505
.L506:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L507
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L505
.L507:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L505
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L505:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L508
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L509
.L508:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L510
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L509
.L510:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L511
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L509
.L511:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L509
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L509:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L512
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L513
.L512:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L514
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L513
.L514:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L513
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L513:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L515
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L516
.L515:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L517
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L516
.L1283:
	.align	2
.L1282:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
.L517:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L516
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L516:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1282+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1282+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1282+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1282+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1282+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1282+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1282+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1282+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L518
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L518
	ldr	r0, .L1282+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L518:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L519
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L520
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L521
.L520:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L521:
	b	.L522
.L519:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L523
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L524
.L523:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L524:
.L522:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L525
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L526
.L525:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L526:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L527
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L527
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L528
.L527:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L529
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L529
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L528
.L529:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L528
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L528
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L528:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L530
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L530
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L530:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L531
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L531:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L532
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L532
	ldr	r0, .L1282+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L532:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L533
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L534
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L535
.L534:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L535:
	b	.L536
.L533:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L537
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L538
.L537:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L538:
.L536:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L539
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L540
.L539:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L540:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L541
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L541
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L542
.L541:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L543
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L543
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L542
.L543:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L542
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L542
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L542:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L544
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L544
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L544:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L545
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L545:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L546
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L547
.L546:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L548
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L547
.L548:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L549
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L547
.L549:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L547
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L547:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L550
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L551
.L550:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L552
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L551
.L552:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L553
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L551
.L553:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282
	cmp	r2, r3
	bgt	.L551
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L551:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L554
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L555
.L554:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L556
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L555
.L556:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L555
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L555:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+4
	cmp	r2, r3
	bge	.L557
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L558
.L557:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+8
	cmp	r2, r3
	bgt	.L559
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L558
.L559:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1282+12
	cmp	r2, r3
	bgt	.L558
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L558:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1282+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1282+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1282+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1282+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1282+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1282+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1282+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1282+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L560
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L560
	ldr	r0, .L1282+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L560:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L561
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L562
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L563
.L562:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L563:
	b	.L564
.L561:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L565
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L566
.L565:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L566:
.L564:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L567
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L568
.L567:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L568:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L569
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L569
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L570
.L569:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L571
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L571
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L570
.L571:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L570
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L570
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L570:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L572
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L572
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L572:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L573
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L573:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L574
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L574
	ldr	r0, .L1284
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L574:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L575
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L576
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L577
.L576:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L577:
	b	.L578
.L575:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L579
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L580
.L579:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L580:
.L578:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L581
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L582
.L581:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L582:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L583
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L583
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L584
.L583:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L585
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L585
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L584
.L585:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L584
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L584
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L584:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L586
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L586
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L586:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L587
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L587:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L588
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L589
.L588:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L590
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L589
.L590:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L591
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L589
.L591:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bgt	.L589
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L589:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L592
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L593
.L592:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L594
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L593
.L594:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L595
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L593
.L595:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bgt	.L593
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L593:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L596
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L597
.L596:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L598
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L597
.L598:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+16
	cmp	r2, r3
	bgt	.L597
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L597:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L599
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L600
.L599:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L601
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L600
.L601:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+16
	cmp	r2, r3
	bgt	.L600
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L600:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1284+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1284+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1284+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1284+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1284+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1284+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1284+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1284+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-196]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L602
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L602
	ldr	r0, .L1284
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L602:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L603
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L604
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L605
.L604:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L605:
	b	.L606
.L603:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L607
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L608
.L607:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L608:
.L606:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L609
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L610
.L609:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L610:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L611
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L611
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L612
.L611:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L613
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L613
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L612
.L613:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L612
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L612
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L612:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L614
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L614
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L614:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L615
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L615:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L616
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L616
	ldr	r0, .L1284
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L616:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L617
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L618
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L619
.L618:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L619:
	b	.L620
.L617:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L621
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L622
.L621:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L622:
.L620:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L623
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L624
.L623:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L624:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L625
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L625
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L626
.L625:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L627
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L627
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L626
.L627:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L626
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L626
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L626:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L628
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L628
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L628:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L629
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L629:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L630
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L631
.L630:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L632
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L631
.L632:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L633
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L631
.L633:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bgt	.L631
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L631:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L634
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L635
.L1285:
	.align	2
.L1284:
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
.L634:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L636
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L635
.L636:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L637
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L635
.L637:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bgt	.L635
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L635:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L638
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L639
.L638:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L640
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L639
.L640:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+16
	cmp	r2, r3
	bgt	.L639
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L639:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L641
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L642
.L641:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L643
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L642
.L643:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+16
	cmp	r2, r3
	bgt	.L642
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L642:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1284+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1284+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1284+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1284+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1284+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1284+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1284+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1284+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-128]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-192]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L644
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L644
	ldr	r0, .L1284
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L644:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L645
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L646
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L647
.L646:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L647:
	b	.L648
.L645:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L649
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L650
.L649:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L650:
.L648:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L651
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L652
.L651:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L652:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L653
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L653
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L654
.L653:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L655
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L655
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L654
.L655:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L654
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L654
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L654:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L656
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L656
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L656:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L657
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L657:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L658
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L658
	ldr	r0, .L1284
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L658:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L659
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L660
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L661
.L660:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L661:
	b	.L662
.L659:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L663
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L664
.L663:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L664:
.L662:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L665
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L666
.L665:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L666:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L667
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L667
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L668
.L667:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L669
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L669
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L668
.L669:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L668
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L668
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L668:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L670
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L670
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L670:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L671
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L671:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L672
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L673
.L672:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L674
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L673
.L674:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L675
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L673
.L675:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bgt	.L673
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L673:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L676
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L677
.L676:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L678
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L677
.L678:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L679
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L677
.L679:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+4
	cmp	r2, r3
	bgt	.L677
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L677:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L680
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L681
.L680:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L682
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L681
.L682:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+16
	cmp	r2, r3
	bgt	.L681
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L681:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+8
	cmp	r2, r3
	bge	.L683
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L684
.L683:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+12
	cmp	r2, r3
	bgt	.L685
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L684
.L685:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1284+16
	cmp	r2, r3
	bgt	.L684
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L684:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1284+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1284+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1284+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1284+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1284+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1284+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1286+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1286+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-124]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-188]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L686
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L686
	ldr	r0, .L1286+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L686:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L687
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L688
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L689
.L688:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L689:
	b	.L690
.L687:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L691
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L692
.L691:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L692:
.L690:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L693
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L694
.L693:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L694:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L695
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L695
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L696
.L695:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L697
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L697
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L696
.L697:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L696
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L696
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L696:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L698
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L698
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L698:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L699
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L699:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L700
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L700
	ldr	r0, .L1286+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L700:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L701
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L702
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L703
.L702:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L703:
	b	.L704
.L701:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L705
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L706
.L705:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L706:
.L704:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L707
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L708
.L707:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L708:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L709
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L709
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L710
.L709:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L711
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L711
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L710
.L711:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L710
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L710
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L710:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L712
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L712
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L712:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L713
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L713:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L714
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L715
.L714:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L716
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L715
.L716:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L717
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L715
.L717:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286
	cmp	r2, r3
	bgt	.L715
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L715:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L718
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L719
.L718:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L720
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L719
.L720:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L721
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L719
.L721:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286
	cmp	r2, r3
	bgt	.L719
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L719:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L722
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L723
.L722:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L724
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L723
.L724:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+4
	cmp	r2, r3
	bgt	.L723
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L723:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L725
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L726
.L725:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L727
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L726
.L727:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+4
	cmp	r2, r3
	bgt	.L726
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L726:
	mov	r3, #4096
	str	r3, [fp, #-268]
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	mov	r3, #4096
	str	r3, [fp, #-248]
	mov	r3, #0
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	mov	r3, #4096
	str	r3, [fp, #-228]
	mov	r3, #0
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	mov	r3, #4096
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	mov	r3, #0
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	mov	r3, #4096
	str	r3, [fp, #-312]
	mov	r3, #0
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	mov	r3, #4096
	str	r3, [fp, #-292]
	mov	r3, #0
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1286+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1286+8
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1286+8
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1286+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1286+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1286+12
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1286+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1286+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-184]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L728
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L728
	ldr	r0, .L1286+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L728:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L729
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L730
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L731
.L730:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L731:
	b	.L732
.L729:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L733
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L734
.L733:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L734:
.L732:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L735
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L736
.L735:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L736:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L737
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L737
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L738
.L737:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L739
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L739
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L738
.L1287:
	.align	2
.L1286:
	.word	12867
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
	.word	-3317
	.word	3316
.L739:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L738
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L738
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L738:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L740
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L740
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L740:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L741
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L741:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L742
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L742
	ldr	r0, .L1286+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L742:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L743
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L744
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L745
.L744:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L745:
	b	.L746
.L743:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L747
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L748
.L747:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L748:
.L746:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L749
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L750
.L749:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L750:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L751
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L751
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L752
.L751:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L753
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L753
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L752
.L753:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L752
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L752
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L752:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L754
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L754
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L754:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L755
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L755:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L756
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L757
.L756:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L758
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L757
.L758:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L759
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L757
.L759:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286
	cmp	r2, r3
	bgt	.L757
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L757:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L760
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L761
.L760:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L762
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L761
.L762:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L763
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L761
.L763:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286
	cmp	r2, r3
	bgt	.L761
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L761:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L764
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L765
.L764:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L766
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L765
.L766:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+4
	cmp	r2, r3
	bgt	.L765
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L765:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L767
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L768
.L767:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L769
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L768
.L769:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+4
	cmp	r2, r3
	bgt	.L768
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L768:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1286+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1286+8
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1286+8
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1286+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1286+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1286+12
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1286+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1286+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L770
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L770
	ldr	r0, .L1286+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L770:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L771
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L772
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L773
.L772:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L773:
	b	.L774
.L771:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L775
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L776
.L775:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L776:
.L774:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L777
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L778
.L777:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L778:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L779
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L779
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L780
.L779:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L781
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L781
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L780
.L781:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L780
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L780
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L780:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L782
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L782
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L782:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L783
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L783:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L784
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L784
	ldr	r0, .L1286+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L784:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L785
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L786
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L787
.L786:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L787:
	b	.L788
.L785:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L789
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L790
.L789:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L790:
.L788:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L791
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L792
.L791:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L792:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L793
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L793
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L794
.L793:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L795
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L795
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L794
.L795:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L794
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L794
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L794:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L796
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L796
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L796:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L797
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L797:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+20
	cmp	r2, r3
	bge	.L798
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L799
.L798:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L800
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L799
.L800:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1286+24
	cmp	r2, r3
	bgt	.L801
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L799
.L801:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288
	cmp	r2, r3
	bgt	.L799
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L799:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L802
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L803
.L802:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L804
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L803
.L804:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L805
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L803
.L805:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288
	cmp	r2, r3
	bgt	.L803
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L803:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L806
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L807
.L806:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L808
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L807
.L808:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L807
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L807:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L809
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L810
.L809:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L811
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L810
.L811:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L810
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L810:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1288+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1288+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1288+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1288+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1288+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1288+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1288+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1288+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L812
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L812
	ldr	r0, .L1288+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L812:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L813
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L814
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L815
.L814:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L815:
	b	.L816
.L813:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L817
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L818
.L817:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L818:
.L816:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L819
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L820
.L819:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L820:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L821
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L821
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L822
.L821:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L823
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L823
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L822
.L823:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L822
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L822
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L822:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L824
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L824
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L824:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L825
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L825:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L826
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L826
	ldr	r0, .L1288+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L826:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L827
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L828
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L829
.L828:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L829:
	b	.L830
.L827:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L831
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L832
.L831:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L832:
.L830:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L833
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L834
.L833:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L834:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L835
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L835
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L836
.L835:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L837
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L837
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L836
.L837:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L836
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L836
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L836:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L838
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L838
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L838:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L839
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L839:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L840
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L841
.L840:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L842
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L841
.L842:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L843
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L841
.L843:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288
	cmp	r2, r3
	bgt	.L841
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L841:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L844
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L845
.L844:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L846
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L845
.L846:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L847
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L845
.L847:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288
	cmp	r2, r3
	bgt	.L845
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L845:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L848
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L849
.L848:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L850
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L849
.L850:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L849
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L849:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L851
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L852
.L851:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L853
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L852
.L1289:
	.align	2
.L1288:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
.L853:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L852
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L852:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1288+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1288+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1288+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1288+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1288+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1288+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1288+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1288+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-196]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L854
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L854
	ldr	r0, .L1288+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L854:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L855
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L856
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L857
.L856:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L857:
	b	.L858
.L855:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L859
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L860
.L859:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L860:
.L858:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L861
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L862
.L861:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L862:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L863
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L863
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L864
.L863:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L865
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L865
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L864
.L865:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L864
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L864
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L864:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L866
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L866
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L866:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L867
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L867:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L868
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L868
	ldr	r0, .L1288+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L868:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L869
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L870
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L871
.L870:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L871:
	b	.L872
.L869:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L873
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L874
.L873:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L874:
.L872:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L875
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L876
.L875:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L876:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L877
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L877
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L878
.L877:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L879
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L879
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L878
.L879:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L878
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L878
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L878:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L880
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L880
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L880:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L881
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L881:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L882
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L883
.L882:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L884
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L883
.L884:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L885
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L883
.L885:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288
	cmp	r2, r3
	bgt	.L883
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L883:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L886
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L887
.L886:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L888
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L887
.L888:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L889
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L887
.L889:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288
	cmp	r2, r3
	bgt	.L887
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L887:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L890
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L891
.L890:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L892
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L891
.L892:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L891
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L891:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+4
	cmp	r2, r3
	bge	.L893
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L894
.L893:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+8
	cmp	r2, r3
	bgt	.L895
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L894
.L895:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1288+12
	cmp	r2, r3
	bgt	.L894
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L894:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1288+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1288+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1288+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1288+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1288+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1288+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1288+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1288+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-128]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-192]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L896
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L896
	ldr	r0, .L1288+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L896:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L897
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L898
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L899
.L898:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L899:
	b	.L900
.L897:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L901
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L902
.L901:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L902:
.L900:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L903
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L904
.L903:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L904:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L905
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L905
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L906
.L905:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L907
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L907
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L906
.L907:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L906
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L906
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L906:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L908
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L908
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L908:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L909
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L909:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L910
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L910
	ldr	r0, .L1290
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L910:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L911
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L912
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L913
.L912:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L913:
	b	.L914
.L911:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L915
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L916
.L915:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L916:
.L914:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L917
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L918
.L917:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L918:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L919
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L919
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L920
.L919:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L921
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L921
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L920
.L921:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L920
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L920
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L920:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L922
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L922
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L922:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L923
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L923:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L924
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L925
.L924:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L926
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L925
.L926:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L927
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L925
.L927:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bgt	.L925
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L925:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L928
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L929
.L928:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L930
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L929
.L930:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L931
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L929
.L931:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bgt	.L929
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L929:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L932
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L933
.L932:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L934
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L933
.L934:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+16
	cmp	r2, r3
	bgt	.L933
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L933:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L935
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L936
.L935:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L937
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L936
.L937:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+16
	cmp	r2, r3
	bgt	.L936
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L936:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]

	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1290+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1290+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1290+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1290+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1290+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1290+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1290+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1290+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-124]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-188]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L938
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L938
	ldr	r0, .L1290
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L938:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L939
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L940
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L941
.L940:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L941:
	b	.L942
.L939:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L943
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L944
.L943:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L944:
.L942:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L945
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L946
.L945:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L946:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L947
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L947
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L948
.L947:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L949
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L949
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L948
.L949:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L948
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L948
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L948:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L950
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L950
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L950:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L951
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L951:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L952
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L952
	ldr	r0, .L1290
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L952:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L953
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L954
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L955
.L954:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L955:
	b	.L956
.L953:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L957
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L958
.L957:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L958:
.L956:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L959
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L960
.L959:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L960:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L961
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L961
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L962
.L961:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L963
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L963
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L962
.L963:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L962
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L962
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L962:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L964
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L964
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L964:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L965
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L965:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L966
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L967
.L966:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L968
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L967
.L968:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L969
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L967
.L969:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bgt	.L967
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L967:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L970
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L971
.L1291:
	.align	2
.L1290:
	.word	.LC6
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
.L970:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L972
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L971
.L972:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L973
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L971
.L973:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bgt	.L971
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L971:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L974
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L975
.L974:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L976
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L975
.L976:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+16
	cmp	r2, r3
	bgt	.L975
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L975:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L977
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L978
.L977:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L979
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L978
.L979:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+16
	cmp	r2, r3
	bgt	.L978
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L978:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]

	
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1290+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1290+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1290+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1290+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1290+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1290+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1290+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1290+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-184]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L980
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L980
	ldr	r0, .L1290
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L980:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L981
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L982
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L983
.L982:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L983:
	b	.L984
.L981:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L985
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L986
.L985:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L986:
.L984:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L987
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L988
.L987:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L988:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L989
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L989
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L990
.L989:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L991
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L991
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L990
.L991:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L990
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L990
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L990:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L992
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L992
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L992:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L993
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L993:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L994
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L994
	ldr	r0, .L1290
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L994:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L995
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L996
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L997
.L996:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L997:
	b	.L998
.L995:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L999
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1000
.L999:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1000:
.L998:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1001
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1002
.L1001:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1002:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1003
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1003
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1004
.L1003:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1005
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1005
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1004
.L1005:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1004
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1004
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1004:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1006
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1006
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1006:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1007
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1007:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L1008
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1009
.L1008:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1010
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1009
.L1010:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L1011
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1009
.L1011:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bgt	.L1009
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1009:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L1012
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1013
.L1012:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1014
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1013
.L1014:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L1015
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1013
.L1015:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+4
	cmp	r2, r3
	bgt	.L1013
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1013:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L1016
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1017
.L1016:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L1018
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1017
.L1018:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+16
	cmp	r2, r3
	bgt	.L1017
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1017:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+8
	cmp	r2, r3
	bge	.L1019
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1020
.L1019:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+12
	cmp	r2, r3
	bgt	.L1021
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1020
.L1021:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1290+16
	cmp	r2, r3
	bgt	.L1020
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1020:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1290+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1290+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1290+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1290+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1290+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1290+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1292+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1292+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L1022
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1022
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L1022:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1023
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1024
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1025
.L1024:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1025:
	b	.L1026
.L1023:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1027
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1028
.L1027:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1028:
.L1026:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1029
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1030
.L1029:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1030:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1031
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1031
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L1032
.L1031:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1033
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1033
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L1032
.L1033:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1032
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1032
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L1032:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1034
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1034
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L1034:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1035
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L1035:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1036
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L1036
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L1036:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1037
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1038
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1039
.L1038:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1039:
	b	.L1040
.L1037:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1041
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1042
.L1041:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1042:
.L1040:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1043
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1044
.L1043:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1044:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1045
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1045
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1046
.L1045:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1047
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1047
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1046
.L1047:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1046
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1046
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1046:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1048
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1048
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1048:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1049
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1049:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1050
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1051
.L1050:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1052
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1051
.L1052:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1053
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1051
.L1053:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L1051
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1051:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1054
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1055
.L1054:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1056
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1055
.L1056:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1057
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1055
.L1057:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L1055
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1055:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1058
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1059
.L1058:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1060
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1059
.L1060:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bgt	.L1059
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1059:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1061
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1062
.L1061:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1063
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1062
.L1063:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bgt	.L1062
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1062:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1292+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1292+8
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1292+8
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1292+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1292+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1292+12
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1292+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1292+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L1064
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1064
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L1064:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1065
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1066
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1067
.L1066:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1067:
	b	.L1068
.L1065:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1069
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1070
.L1069:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1070:
.L1068:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1071
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1072
.L1071:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1072:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1073
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1073
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L1074
.L1073:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1075
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1075
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L1074
.L1293:
	.align	2
.L1292:
	.word	12867
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
	.word	-3317
	.word	3316
.L1075:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1074
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1074
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L1074:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1076
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1076
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L1076:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1077
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L1077:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1078
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L1078
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L1078:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1079
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1080
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1081
.L1080:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1081:
	b	.L1082
.L1079:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1083
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1084
.L1083:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1084:
.L1082:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1085
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1086
.L1085:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1086:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1087
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1087
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1088
.L1087:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1089
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1089
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1088
.L1089:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1088
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1088
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1088:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1090
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1090
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1090:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1091
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1091:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1092
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1093
.L1092:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1094
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1093
.L1094:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1095
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1093
.L1095:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L1093
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1093:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1096
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1097
.L1096:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1098
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1097
.L1098:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1099
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1097
.L1099:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292
	cmp	r2, r3
	bgt	.L1097
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1097:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1100
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1101
.L1100:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1102
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1101
.L1102:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bgt	.L1101
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1101:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1103
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1104
.L1103:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1105
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1104
.L1105:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+4
	cmp	r2, r3
	bgt	.L1104
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1104:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-268]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1292+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1292+8
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1292+8
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1292+8
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1292+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1292+12
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1292+12
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1292+12
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-196]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L1106
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1106
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L1106:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1107
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1108
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1109
.L1108:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1109:
	b	.L1110
.L1107:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1111
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1112
.L1111:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1112:
.L1110:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1113
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1114
.L1113:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1114:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1115
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1115
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L1116
.L1115:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1117
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1117
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L1116
.L1117:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1116
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1116
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L1116:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1118
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1118
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L1118:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1119
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L1119:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1120
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L1120
	ldr	r0, .L1292+16
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L1120:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1121
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1122
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1123
.L1122:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1123:
	b	.L1124
.L1121:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1125
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1126
.L1125:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1126:
.L1124:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1127
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1128
.L1127:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1128:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1129
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1129
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1130
.L1129:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1131
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1131
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1130
.L1131:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1130
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1130
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1130:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1132
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1132
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1132:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1133
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1133:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+20
	cmp	r2, r3
	bge	.L1134
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1135
.L1134:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1136
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1135
.L1136:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1292+24
	cmp	r2, r3
	bgt	.L1137
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1135
.L1137:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294
	cmp	r2, r3
	bgt	.L1135
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1135:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1138
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1139
.L1138:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1140
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1139
.L1140:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1141
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1139
.L1141:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294
	cmp	r2, r3
	bgt	.L1139
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1139:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1142
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1143
.L1142:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1144
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1143
.L1144:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bgt	.L1143
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1143:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1145
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1146
.L1145:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1147
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1146
.L1147:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bgt	.L1146
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1146:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1294+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1294+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1294+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1294+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1294+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1294+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1294+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1294+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-128]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-192]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L1148
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1148
	ldr	r0, .L1294+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L1148:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1149
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1150
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1151
.L1150:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1151:
	b	.L1152
.L1149:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1153
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1154
.L1153:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1154:
.L1152:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1155
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1156
.L1155:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1156:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1157
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1157
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L1158
.L1157:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1159
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1159
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L1158
.L1159:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1158
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1158
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L1158:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1160
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1160
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L1160:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1161
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L1161:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1162
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L1162
	ldr	r0, .L1294+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L1162:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1163
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1164
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1165
.L1164:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1165:
	b	.L1166
.L1163:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1167
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1168
.L1167:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1168:
.L1166:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1169
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1170
.L1169:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1170:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1171
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1171
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1172
.L1171:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1173
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1173
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1172
.L1173:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1172
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1172
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1172:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1174
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1174
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1174:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1175
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1175:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1176
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1177
.L1176:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1178
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1177
.L1178:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1179
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1177
.L1179:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294
	cmp	r2, r3
	bgt	.L1177
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1177:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1180
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1181
.L1180:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1182
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1181
.L1182:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1183
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1181
.L1183:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294
	cmp	r2, r3
	bgt	.L1181
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1181:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1184
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1185
.L1184:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1186
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1185
.L1186:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bgt	.L1185
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1185:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1187
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1188
.L1187:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1189
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1188
.L1295:
	.align	2
.L1294:
	.word	12867
	.word	-3317
	.word	3316
	.word	6433
	.word	-328
	.word	-264
	.word	.LC6
.L1189:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bgt	.L1188
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1188:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1294+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1294+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1294+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1294+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1294+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1294+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1294+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1294+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-124]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-188]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L1190
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1190
	ldr	r0, .L1294+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L1190:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1191
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1192
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1193
.L1192:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1193:
	b	.L1194
.L1191:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1195
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1196
.L1195:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1196:
.L1194:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1197
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1198
.L1197:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1198:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1199
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1199
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L1200
.L1199:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1201
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1201
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L1200
.L1201:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1200
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1200
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L1200:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1202
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1202
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L1202:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1203
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L1203:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1204
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L1204
	ldr	r0, .L1294+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L1204:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1205
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1206
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1207
.L1206:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1207:
	b	.L1208
.L1205:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1209
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1210
.L1209:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1210:
.L1208:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1211
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1212
.L1211:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1212:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1213
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1213
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1214
.L1213:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1215
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1215
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1214
.L1215:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1214
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1214
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1214:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1216
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1216
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1216:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1217
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1217:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1218
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1219
.L1218:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1220
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1219
.L1220:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1221
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1219
.L1221:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294
	cmp	r2, r3
	bgt	.L1219
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1219:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1222
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1223
.L1222:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1224
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1223
.L1224:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1225
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1223
.L1225:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294
	cmp	r2, r3
	bgt	.L1223
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1223:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1226
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1227
.L1226:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1228
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1227
.L1228:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bgt	.L1227
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1227:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+4
	cmp	r2, r3
	bge	.L1229
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1230
.L1229:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+8
	cmp	r2, r3
	bgt	.L1231
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1230
.L1231:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1294+12
	cmp	r2, r3
	bgt	.L1230
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1230:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1294+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1294+16
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1294+16
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1294+16
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1294+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1294+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1294+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1294+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	ldr	r3, [fp, #-120]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-184]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-400]
	add	r3, r2, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, r2, asl #2]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L1232
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1232
	ldr	r0, .L1294+24
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-8]
.L1232:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1233
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1234
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1235
.L1234:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1235:
	b	.L1236
.L1233:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1237
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1238
.L1237:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	rsb	r2, r3, #0
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-52]
	rsb	r3, r3, r1
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1238:
.L1236:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1239
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1240
.L1239:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1240:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1241
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1241
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-8]
	b	.L1242
.L1241:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1243
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1243
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-8]
	b	.L1242
.L1243:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1242
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1242
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-8]
.L1242:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1244
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1244
	ldr	r3, [fp, #-8]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-8]
.L1244:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1245
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-8]
.L1245:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	bne	.L1246
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L1246
	ldr	r0, .L1296
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-12]
.L1246:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	cmp	r3, #0
	blt	.L1247
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1248
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1249
.L1248:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1249:
	b	.L1250
.L1247:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	cmp	r3, #0
	blt	.L1251
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
	b	.L1252
.L1251:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r2, r3, r2
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	rsb	r3, r3, #0
	cmp	r2, r3
	movle	r3, #0
	movgt	r3, #1
.L1252:
.L1250:
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1253
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L1254
.L1253:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	rsb	r3, r3, r2
	mov	r2, r3, asl #12
	ldr	r1, [fp, #-52]
	ldr	r3, [fp, #-40]
	add	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
.L1254:
	str	r3, [fp, #-56]
	cmp	r3, #2048
	ble	.L1255
	ldr	r3, [fp, #-56]
	cmp	r3, #4096
	bgt	.L1255
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	add	r3, r3, #580
	add	r3, r3, #2
	str	r3, [fp, #-12]
	b	.L1256
.L1255:
	ldr	r3, [fp, #-56]
	cmp	r3, #2048
	bgt	.L1257
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	blt	.L1257
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r2, r3, asl #3
	rsb	r3, r3, r2
	mov	r3, r3, asr #12
	str	r3, [fp, #-12]
	b	.L1256
.L1257:
	ldr	r3, [fp, #-56]
	cmn	r3, #2048
	bge	.L1256
	ldr	r3, [fp, #-56]
	cmn	r3, #4096
	blt	.L1256
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r1, r3, asl #5
	add	r3, r3, r1
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	mov	r3, r3, asr #12
	sub	r3, r3, #580
	sub	r3, r3, #2
	str	r3, [fp, #-12]
.L1256:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1258
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1258
	ldr	r3, [fp, #-12]
	add	r3, r3, #12864
	add	r3, r3, #4
	str	r3, [fp, #-12]
.L1258:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1259
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #6400
	add	r3, r3, #34
	str	r3, [fp, #-12]
.L1259:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bge	.L1260
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
	b	.L1261
.L1260:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1262
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1261
.L1262:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bgt	.L1263
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-16]
	b	.L1261
.L1263:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1261
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-16]
.L1261:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bge	.L1264
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	add	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
	b	.L1265
.L1264:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1266
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1265
.L1266:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bgt	.L1267
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	rsb	r3, r3, #4096
	str	r3, [fp, #-20]
	b	.L1265
.L1267:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+12
	cmp	r2, r3
	bgt	.L1265
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	rsb	r3, r3, #6208
	add	r3, r3, #49
	str	r3, [fp, #-20]
.L1265:
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bge	.L1268
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-24]
	b	.L1269
.L1268:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bgt	.L1270
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-24]
	b	.L1269
.L1270:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1269
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-24]
.L1269:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+4
	cmp	r2, r3
	bge	.L1271
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	sub	r3, r3, #2432
	sub	r3, r3, #6
	str	r3, [fp, #-28]
	b	.L1272
.L1271:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+8
	cmp	r2, r3
	bgt	.L1273
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asr #12
	str	r3, [fp, #-28]
	b	.L1272
.L1273:
	ldr	r2, [fp, #-56]
	ldr	r3, .L1296+16
	cmp	r2, r3
	bgt	.L1272
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #5
	add	r3, r3, r2
	mov	r3, r3, asl #5
	mov	r3, r3, asr #12
	add	r3, r3, #2432
	add	r3, r3, #6
	str	r3, [fp, #-28]
.L1272:
	mov	r3, #0
	str	r3, [fp, #-264]
	str	r3, [fp, #-260]
	str	r3, [fp, #-256]
	str	r3, [fp, #-252]
	str	r3, [fp, #-244]
	str	r3, [fp, #-240]
	str	r3, [fp, #-236]
	str	r3, [fp, #-232]
	str	r3, [fp, #-224]
	str	r3, [fp, #-220]
	str	r3, [fp, #-216]
	str	r3, [fp, #-212]
	str	r3, [fp, #-328]
	str	r3, [fp, #-324]
	str	r3, [fp, #-320]
	str	r3, [fp, #-316]
	str	r3, [fp, #-308]
	str	r3, [fp, #-304]
	str	r3, [fp, #-300]
	str	r3, [fp, #-296]
	str	r3, [fp, #-288]
	str	r3, [fp, #-284]
	str	r3, [fp, #-280]
	str	r3, [fp, #-276]
	mov	r3, #4096
	str	r3, [fp, #-268]
	str	r3, [fp, #-248]
	str	r3, [fp, #-228]
	str	r3, [fp, #-208]
	str	r3, [fp, #-332]
	str	r3, [fp, #-312]
	str	r3, [fp, #-292]
	str	r3, [fp, #-272]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1296+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-32]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r1, r1, r3
	ldr	r3, .L1296+20
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, .L1296+20
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1296+20
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-16]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-32]
	ldr	r1, .L1296+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #4
	add	r3, r0, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl #2
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, .L1296+24
	mov	r2, r2, asl #2
	sub	r1, fp, #4
	add	r2, r1, r2
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	rsb	r2, r3, #0
	ldr	r3, [fp, #-36]
	mov	r1, r3, asl #2
	ldr	r3, [fp, #-32]
	add	r1, r1, r3
	ldr	r3, .L1296+24
	mov	r1, r1, asl #2
	sub	r0, fp, #4
	add	r1, r0, r1
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r1, .L1296+24
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #4
	add	r3, r2, r3
	add	r3, r3, r1
	ldr	r2, [fp, #-20]
	str	r2, [r3, #0]
	sub	r2, fp, #332
	sub	r3, fp, #396
	mov	r0, r2
	ldr	r1, [fp, #-400]
	mov	r2, r3
	bl	multMatrix4
	sub	r2, fp, #396
	sub	r3, fp, #268
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [fp, #-400]
	bl	multMatrix4
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
.L1297:
	.align	2
.L1296:
	.word	.LC6
	.word	-3317
	.word	3316
	.word	12867
	.word	6433
	.word	-328
	.word	-264
	.size	diagonalize, .-diagonalize
	.section	.rodata
	.align	2
.LC7:
	.ascii	"elapsed time: %lf\012\000"
	.align	2
.LC0:
	.word	512
	.word	1024
	.word	1536
	.word	512
	.word	1024
	.word	1536
	.word	512
	.word	1024
	.word	1536
	.word	512
	.word	1024
	.word	1536
	.word	512
	.word	1024
	.word	1536
	.word	2048
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #76
	mov	r3, #0
	str	r3, [fp, #-16]
	bl	clock
	str	r0, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1299
.L1300:
	ldr	r3, .L1301+8
	sub	ip, fp, #84
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r3, fp, #84
	mov	r0, r3
	bl	diagonalize
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1299:
	ldr	r2, [fp, #-16]
	ldr	r3, .L1301+12
	cmp	r2, r3
	ble	.L1300
	ldr	r4, .L1301+16
	bl	clock
	mov	r3, r0
	fmsr	s11, r3	@ int
	fsitod	d6, s11
	ldr	r3, [fp, #-20]
	fmsr	s11, r3	@ int
	fsitod	d7, s11
	fsubd	d6, d6, d7
	fldd	d7, .L1301
	fdivd	d7, d6, d7
	mov	r0, r4
	fmrrd	r2, r3, d7
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L1302:
	.align	3
.L1301:
	.word	0
	.word	1093567616
	.word	.LC0
	.word	99999
	.word	.LC7
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 4.6.1-9ubuntu3) 4.6.1"
	.section	.note.GNU-stack,"",%progbits
