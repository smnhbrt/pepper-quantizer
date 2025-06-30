	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	cortex-a8
	.eabi_attribute	6, 10	@ Tag_CPU_arch
	.eabi_attribute	7, 65	@ Tag_CPU_arch_profile
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 2	@ Tag_THUMB_ISA_use
	.fpu	neon
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 2	@ Tag_ABI_FP_denormal
	.eabi_attribute	23, 1	@ Tag_ABI_FP_number_model
	.eabi_attribute	34, 1	@ Tag_CPU_unaligned_access
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	28, 1	@ Tag_ABI_VFP_args
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.eabi_attribute	68, 1	@ Tag_Virtualization_use
	.file	"/root/Bela/projects/sh-quantizer/build/render.bc"
	.file	1 "/root/Bela/projects/sh-quantizer" "render.cpp"
	.file	2 "./include" "Bela.h"
	.file	3 "/usr/bin/../lib/gcc/arm-linux-gnueabihf/6.3.0/../../../../include/arm-linux-gnueabihf/c++/6.3.0/bits" "c++config.h"
	.file	4 "/usr/include/arm-linux-gnueabihf/bits" "math-finite.h"
	.file	5 "/usr/include/arm-linux-gnueabihf/bits" "mathcalls.h"
	.file	6 "/usr/include/arm-linux-gnueabihf/bits" "mathdef.h"
	.globl	setup
	.p2align	2
	.type	setup,%function
setup:                                  @ @setup
.Lfunc_begin0:
	.loc	1 167 0                 @ /root/Bela/projects/sh-quantizer/render.cpp:167:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: setup:context <- %R0
	@DEBUG_VALUE: setup:userData <- %R1
	mov	r12, r0
.Ltmp0:
	@DEBUG_VALUE: setup:context <- %R12
	.loc	1 169 14 prologue_end   @ /root/Bela/projects/sh-quantizer/render.cpp:169:14
	ldr	r0, [r12, #36]
	.loc	1 169 32 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:169:32
	cmp	r0, #0
	beq	.LBB0_2
.Ltmp1:
@ BB#1:
	@DEBUG_VALUE: setup:context <- %R12
	@DEBUG_VALUE: setup:userData <- %R1
	.loc	1 169 68 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:169:68
	ldr	r1, [r12, #20]
.Ltmp2:
	.loc	1 169 5 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:169:5
	cmp	r0, r1
	bls	.LBB0_3
.Ltmp3:
.LBB0_2:
	@DEBUG_VALUE: setup:context <- %R12
	.save	{r11, lr}
	push	{r11, lr}
.Ltmp4:
	.cfi_def_cfa_offset 8
.Ltmp5:
	.cfi_offset lr, -4
.Ltmp6:
	.cfi_offset r11, -8
	.setfp	r11, sp
	mov	r11, sp
.Ltmp7:
	.cfi_def_cfa_register r11
.Ltmp8:
	.loc	1 170 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:170:3
	movw	r0, :lower16:.L.str
	movt	r0, :upper16:.L.str
	bl	rt_printf
.Ltmp9:
	mov	r0, #0
	.loc	1 171 3                 @ /root/Bela/projects/sh-quantizer/render.cpp:171:3
	pop	{r11, pc}
.Ltmp10:
.LBB0_3:
	@DEBUG_VALUE: setup:context <- %R12
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 30 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	mov	r0, #1
	.loc	2 1546 2 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp11:
@ BB#4:                                 @ %.lr.ph.i
	@DEBUG_VALUE: setup:context <- %R12
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp12:
.LBB0_5:                                @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #0, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp13:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp14:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_5
.Ltmp15:
@ BB#6:                                 @ %_ZL7pinModeP11BelaContextiii.exit
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp16:
@ BB#7:                                 @ %.lr.ph.i38.preheader
	@DEBUG_VALUE: pinMode:f <- %R3
	mov	r3, #0
.Ltmp17:
.LBB0_8:                                @ %.lr.ph.i38
                                        @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 1     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #1, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp18:
	.loc	2 1546 46 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp19:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_8
.Ltmp20:
@ BB#9:                                 @ %_ZL7pinModeP11BelaContextiii.exit40
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp21:
@ BB#10:                                @ %.lr.ph.i35
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp22:
.LBB0_11:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #2, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp23:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp24:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_11
.Ltmp25:
@ BB#12:                                @ %_ZL7pinModeP11BelaContextiii.exit37
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp26:
@ BB#13:                                @ %.lr.ph.i32
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp27:
.LBB0_14:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #3, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp28:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp29:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_14
.Ltmp30:
@ BB#15:                                @ %_ZL7pinModeP11BelaContextiii.exit34
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp31:
@ BB#16:                                @ %.lr.ph.i29
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp32:
.LBB0_17:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #4, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp33:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp34:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_17
.Ltmp35:
@ BB#18:                                @ %_ZL7pinModeP11BelaContextiii.exit31
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp36:
@ BB#19:                                @ %.lr.ph.i26
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp37:
.LBB0_20:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #5, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp38:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp39:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_20
.Ltmp40:
@ BB#21:                                @ %_ZL7pinModeP11BelaContextiii.exit28
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp41:
@ BB#22:                                @ %.lr.ph.i23
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp42:
.LBB0_23:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #6, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp43:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp44:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_23
.Ltmp45:
@ BB#24:                                @ %_ZL7pinModeP11BelaContextiii.exit25
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp46:
@ BB#25:                                @ %.lr.ph.i20
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp47:
.LBB0_26:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #7, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp48:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp49:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_26
.Ltmp50:
@ BB#27:                                @ %_ZL7pinModeP11BelaContextiii.exit22
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
	beq	.LBB0_32
.Ltmp51:
@ BB#28:                                @ %.lr.ph.i17
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1550 13 is_stmt 1     @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp52:
.LBB0_29:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #8, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp53:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp54:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_29
.Ltmp55:
@ BB#30:                                @ %_ZL7pinModeP11BelaContextiii.exit19
	@DEBUG_VALUE: pinMode:f <- %R3
	@DEBUG_VALUE: pinMode:frame <- 0
	@DEBUG_VALUE: pinMode:mode <- 1
	@DEBUG_VALUE: pinMode:f <- 0
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r1, #0
.Ltmp56:
	.loc	1 190 1 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:190:1
	bxeq	lr
.Ltmp57:
	.loc	2 1550 13               @ ./include/Bela.h:1550:13
	ldr	r2, [r12, #16]
	mov	r3, #0
.Ltmp58:
.LBB0_31:                               @ =>This Inner Loop Header: Depth=1
	.loc	2 1550 24 is_stmt 0     @ ./include/Bela.h:1550:24
	ldr	r1, [r2, r3, lsl #2]
	bfc	r1, #9, #1
	str	r1, [r2, r3, lsl #2]
.Ltmp59:
	.loc	2 1546 46 is_stmt 1 discriminator 2 @ ./include/Bela.h:1546:46
	add	r3, r3, #1
.Ltmp60:
	@DEBUG_VALUE: pinMode:f <- %R3
	.loc	2 1546 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1546:30
	ldr	r1, [r12, #52]
	.loc	2 1546 2 discriminator 1 @ ./include/Bela.h:1546:2
	cmp	r3, r1
	blo	.LBB0_31
.Ltmp61:
.LBB0_32:                               @ %_ZL7pinModeP11BelaContextiii.exit16
	.loc	1 190 1 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:190:1
	bx	lr
.Ltmp62:
.Lfunc_end0:
	.size	setup, .Lfunc_end0-setup
	.cfi_endproc
	.file	7 "/usr/include" "stdint.h"
	.fnend

	.globl	_Z17circular_distancefff
	.p2align	2
	.type	_Z17circular_distancefff,%function
_Z17circular_distancefff:               @ @_Z17circular_distancefff
.Lfunc_begin1:
	.loc	1 226 0                 @ /root/Bela/projects/sh-quantizer/render.cpp:226:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: circular_distance:a <- %S0
	@DEBUG_VALUE: circular_distance:b <- %S1
	@DEBUG_VALUE: circular_distance:max_value <- %S2
	vmov.f32	s4, s1
.Ltmp63:
	@DEBUG_VALUE: circular_distance:b <- %S4
                                        @ kill: %S0<def> %S0<kill> %D0<def>
.Ltmp64:
                                        @ kill: %S2<def> %S2<kill> %D1<def>
.Ltmp65:
	.loc	1 227 28 prologue_end   @ /root/Bela/projects/sh-quantizer/render.cpp:227:28
	vsub.f32	d16, d0, d2
	.loc	1 227 20 is_stmt 0 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:227:20
	vabs.f32	d16, d16
.Ltmp66:
	@DEBUG_VALUE: circular_distance:direct <- undef
	.loc	1 228 28 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:228:28
	vsub.f32	d17, d1, d16
.Ltmp67:
	@DEBUG_VALUE: circular_distance:wrap <- undef
	.loc	1 229 12                @ /root/Bela/projects/sh-quantizer/render.cpp:229:12
	vmin.f32	d0, d16, d17
	.loc	1 229 5 is_stmt 0 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:229:5
                                        @ kill: %S0<def> %S0<kill> %D0<kill>
	bx	lr
.Ltmp68:
.Lfunc_end1:
	.size	_Z17circular_distancefff, .Lfunc_end1-_Z17circular_distancefff
	.cfi_endproc
	.fnend

	.globl	_Z21binary_search_closestPKfif
	.p2align	2
	.type	_Z21binary_search_closestPKfif,%function
_Z21binary_search_closestPKfif:         @ @_Z21binary_search_closestPKfif
.Lfunc_begin2:
	.loc	1 232 0 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:232:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r11, lr}
	push	{r4, r5, r11, lr}
.Ltmp69:
	.cfi_def_cfa_offset 16
.Ltmp70:
	.cfi_offset lr, -4
.Ltmp71:
	.cfi_offset r11, -8
.Ltmp72:
	.cfi_offset r5, -12
.Ltmp73:
	.cfi_offset r4, -16
	.setfp	r11, sp, #8
	add	r11, sp, #8
.Ltmp74:
	.cfi_def_cfa r11, 8
	.vsave	{d8}
	vpush	{d8}
.Ltmp75:
	.cfi_offset d8, -24
	@DEBUG_VALUE: binary_search_closest:arr <- %R0
	@DEBUG_VALUE: binary_search_closest:size <- %R1
	@DEBUG_VALUE: binary_search_closest:target <- %S0
	vmov.f64	d8, d0
.Ltmp76:
	@DEBUG_VALUE: binary_search_closest:target <- %S16
	mov	r5, r1
.Ltmp77:
	@DEBUG_VALUE: binary_search_closest:size <- %R5
	mov	r4, r0
.Ltmp78:
	@DEBUG_VALUE: binary_search_closest:low <- 0
	@DEBUG_VALUE: binary_search_closest:arr <- %R4
	mov	r0, #0
.Ltmp79:
	.loc	1 237 5 prologue_end discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:237:5
	cmp	r5, #2
	blt	.LBB2_8
.Ltmp80:
@ BB#1:                                 @ %.lr.ph.lr.ph
	@DEBUG_VALUE: binary_search_closest:arr <- %R4
	@DEBUG_VALUE: binary_search_closest:size <- %R5
	@DEBUG_VALUE: binary_search_closest:target <- %S16
	.loc	1 240 24                @ /root/Bela/projects/sh-quantizer/render.cpp:240:24
	vmov.f32	d1, #1.200000e+01
	vmov.f32	s0, s16
	vmov.f32	s1, s2
	bl	__fmodf_finite
.Ltmp81:
	.loc	1 234 21                @ /root/Bela/projects/sh-quantizer/render.cpp:234:21
	sub	r1, r5, #1
.Ltmp82:
	@DEBUG_VALUE: binary_search_closest:high <- %R1
	mov	r0, #0
.Ltmp83:
.LBB2_2:                                @ %.lr.ph
                                        @ =>This Loop Header: Depth=1
                                        @     Child Loop BB2_3 Depth 2
	mov	r2, r1
.LBB2_3:                                @   Parent Loop BB2_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp84:
	.loc	1 238 20                @ /root/Bela/projects/sh-quantizer/render.cpp:238:20
	add	r1, r0, r2
	.loc	1 238 28 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:238:28
	add	r1, r1, r1, lsr #31
	asr	r1, r1, #1
.Ltmp85:
	@DEBUG_VALUE: binary_search_closest:mid <- %R1
	.loc	1 240 13 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:240:13
	add	r3, r4, r1, lsl #2
	vldr	s2, [r3]
.Ltmp86:
	.loc	1 240 13 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:240:13
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	bge	.LBB2_5
.Ltmp87:
@ BB#4:                                 @   in Loop: Header=BB2_3 Depth=2
	@DEBUG_VALUE: binary_search_closest:mid <- %R1
	.loc	1 241 23 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:241:23
	add	r0, r1, #1
.Ltmp88:
	@DEBUG_VALUE: binary_search_closest:low <- %R0
	.loc	1 237 5 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:237:5
	cmp	r0, r2
	blt	.LBB2_3
	b	.LBB2_6
.Ltmp89:
.LBB2_5:                                @ %.outer.loopexit
                                        @   in Loop: Header=BB2_2 Depth=1
	@DEBUG_VALUE: binary_search_closest:mid <- %R1
	cmp	r0, r1
	blt	.LBB2_2
.Ltmp90:
.LBB2_6:                                @ %.outer._crit_edge
	@DEBUG_VALUE: binary_search_closest:mid <- %R1
	.loc	1 248 9                 @ /root/Bela/projects/sh-quantizer/render.cpp:248:9
	cmp	r0, #1
	blt	.LBB2_8
.Ltmp91:
@ BB#7:
	@DEBUG_VALUE: binary_search_closest:mid <- %R1
	.loc	1 249 54                @ /root/Bela/projects/sh-quantizer/render.cpp:249:54
	sub	r1, r0, #1
.Ltmp92:
	@DEBUG_VALUE: binary_search_closest:best_idx <- %R1
	.loc	1 227 28                @ /root/Bela/projects/sh-quantizer/render.cpp:227:28
	vdup.32	d16, d8[0]
.Ltmp93:
	.loc	1 249 46                @ /root/Bela/projects/sh-quantizer/render.cpp:249:46
	add	r2, r4, r1, lsl #2
.Ltmp94:
	@DEBUG_VALUE: circular_distance:max_value <- 1.200000e+01
	vldr	d17, [r2]
.Ltmp95:
	@DEBUG_VALUE: circular_distance:a <- %S16
	@DEBUG_VALUE: circular_distance:max_value <- 1.200000e+01
	.loc	1 227 28                @ /root/Bela/projects/sh-quantizer/render.cpp:227:28
	vsub.f32	d16, d16, d17
	.loc	1 228 28                @ /root/Bela/projects/sh-quantizer/render.cpp:228:28
	vmov.f32	d17, #1.200000e+01
	.loc	1 227 20 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:227:20
	vabs.f32	d16, d16
	.loc	1 228 28                @ /root/Bela/projects/sh-quantizer/render.cpp:228:28
	vsub.f32	d17, d17, d16
	.loc	1 229 19                @ /root/Bela/projects/sh-quantizer/render.cpp:229:19
	vcgt.f32	d0, d17, d16
	.loc	1 229 12 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:229:12
	vbsl	d0, d16, d17
.Ltmp96:
	.loc	1 252 13 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:252:13
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, fpscr
	movlt	r0, r1
.Ltmp97:
.LBB2_8:                                @ %.outer._crit_edge.thread
	.loc	1 257 5                 @ /root/Bela/projects/sh-quantizer/render.cpp:257:5
	vpop	{d8}
	pop	{r4, r5, r11, pc}
.Ltmp98:
.Lfunc_end2:
	.size	_Z21binary_search_closestPKfif, .Lfunc_end2-_Z21binary_search_closestPKfif
	.cfi_endproc
	.fnend

	.globl	render
	.p2align	4
	.type	render,%function
render:                                 @ @render
.Lfunc_begin3:
	.loc	1 261 0                 @ /root/Bela/projects/sh-quantizer/render.cpp:261:0
	.fnstart
	.cfi_startproc
@ BB#0:
	.save	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
	push	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
.Ltmp99:
	.cfi_def_cfa_offset 36
.Ltmp100:
	.cfi_offset lr, -4
.Ltmp101:
	.cfi_offset r11, -8
.Ltmp102:
	.cfi_offset r10, -12
.Ltmp103:
	.cfi_offset r9, -16
.Ltmp104:
	.cfi_offset r8, -20
.Ltmp105:
	.cfi_offset r7, -24
.Ltmp106:
	.cfi_offset r6, -28
.Ltmp107:
	.cfi_offset r5, -32
.Ltmp108:
	.cfi_offset r4, -36
	.setfp	r11, sp, #28
	add	r11, sp, #28
.Ltmp109:
	.cfi_def_cfa r11, 8
	.pad	#4
	sub	sp, sp, #4
	.vsave	{d8, d9, d10, d11, d12, d13, d14, d15}
	vpush	{d8, d9, d10, d11, d12, d13, d14, d15}
.Ltmp110:
	.cfi_offset d15, -48
.Ltmp111:
	.cfi_offset d14, -56
.Ltmp112:
	.cfi_offset d13, -64
.Ltmp113:
	.cfi_offset d12, -72
.Ltmp114:
	.cfi_offset d11, -80
.Ltmp115:
	.cfi_offset d10, -88
.Ltmp116:
	.cfi_offset d9, -96
.Ltmp117:
	.cfi_offset d8, -104
	.pad	#48
	sub	sp, sp, #48
	@DEBUG_VALUE: render:context <- %R0
	@DEBUG_VALUE: render:userData <- %R1
	mov	r4, r0
.Ltmp118:
	@DEBUG_VALUE: n <- 0
	@DEBUG_VALUE: render:context <- %R4
	.loc	1 268 39 prologue_end discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:39
	ldr	r0, [r4, #36]
	.loc	1 268 2 is_stmt 0 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:2
	cmp	r0, #0
	beq	.LBB3_165
.Ltmp119:
@ BB#1:                                 @ %.lr.ph192
	@DEBUG_VALUE: render:context <- %R4
	@DEBUG_VALUE: render:userData <- %R1
	.loc	1 329 12 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:329:12
	movw	r0, :lower16:.L_MergedGlobals.4
.Ltmp120:
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vmov.i32	q7, #0x0
.Ltmp121:
	.loc	1 329 12                @ /root/Bela/projects/sh-quantizer/render.cpp:329:12
	movt	r0, :upper16:.L_MergedGlobals.4
.Ltmp122:
	.loc	1 357 35                @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	vmov.i32	q6, #0x4
.Ltmp123:
	.loc	1 194 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:7
	movw	r7, :lower16:.L_MergedGlobals.5
.Ltmp124:
	.loc	1 311 35                @ /root/Bela/projects/sh-quantizer/render.cpp:311:35
	movw	r5, :lower16:.L_MergedGlobals
.Ltmp125:
	.loc	1 329 12                @ /root/Bela/projects/sh-quantizer/render.cpp:329:12
	add	r0, r0, #36
.Ltmp126:
	.loc	1 375 25                @ /root/Bela/projects/sh-quantizer/render.cpp:375:25
	vldr	d11, .LCPI3_5
	str	r0, [sp, #28]           @ 4-byte Spill
	mov	r0, #0
	mov	r9, #0
	mov	r1, #4
.Ltmp127:
	.loc	1 194 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:7
	movt	r7, :upper16:.L_MergedGlobals.5
.Ltmp128:
	.loc	1 311 35                @ /root/Bela/projects/sh-quantizer/render.cpp:311:35
	movt	r5, :upper16:.L_MergedGlobals
	mov	r10, #0
	str	r0, [sp, #44]           @ 4-byte Spill
.Ltmp129:
.LBB3_2:                                @ =>This Loop Header: Depth=1
                                        @     Child Loop BB3_15 Depth 2
                                        @     Child Loop BB3_17 Depth 2
                                        @     Child Loop BB3_29 Depth 2
                                        @     Child Loop BB3_31 Depth 2
                                        @     Child Loop BB3_43 Depth 2
                                        @     Child Loop BB3_45 Depth 2
                                        @     Child Loop BB3_57 Depth 2
                                        @     Child Loop BB3_59 Depth 2
                                        @     Child Loop BB3_68 Depth 2
                                        @     Child Loop BB3_70 Depth 2
                                        @     Child Loop BB3_77 Depth 2
                                        @     Child Loop BB3_79 Depth 2
                                        @     Child Loop BB3_97 Depth 2
                                        @     Child Loop BB3_100 Depth 2
                                        @     Child Loop BB3_107 Depth 2
                                        @     Child Loop BB3_109 Depth 2
                                        @     Child Loop BB3_112 Depth 2
                                        @       Child Loop BB3_113 Depth 3
                                        @     Child Loop BB3_135 Depth 2
                                        @     Child Loop BB3_138 Depth 2
                                        @     Child Loop BB3_144 Depth 2
                                        @     Child Loop BB3_147 Depth 2
                                        @     Child Loop BB3_158 Depth 2
                                        @     Child Loop BB3_161 Depth 2
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	str	r1, [sp, #40]           @ 4-byte Spill
.Ltmp130:
	.loc	2 1527 13               @ ./include/Bela.h:1527:13
	ldr	r0, [r4, #16]
.Ltmp131:
	.loc	2 1515 12               @ ./include/Bela.h:1515:12
	ldr	r1, [r0, r10, lsl #2]
.Ltmp132:
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: debounce:changed <- 0
	.loc	1 194 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:7
	ldrb	r2, [r7]
.Ltmp133:
	.loc	1 194 6 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:194:6
	cmp	r2, #0
	beq	.LBB3_6
.Ltmp134:
@ BB#3:                                 @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	.loc	1 209 7 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:209:7
	cmp	r1, #0
	blt	.LBB3_8
.Ltmp135:
@ BB#4:                                 @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	.loc	1 214 11                @ /root/Bela/projects/sh-quantizer/render.cpp:214:11
	ldr	r1, [r7, #20]
	add	r1, r1, #1
	str	r1, [r7, #20]
.Ltmp136:
	.loc	1 215 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	ldr	r1, [r7, #20]
.Ltmp137:
	.loc	1 215 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	cmp	r1, #4
	blt	.LBB3_9
.Ltmp138:
@ BB#5:                                 @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	mov	r6, #0
.Ltmp139:
	.loc	1 217 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:217:14
	strb	r6, [r7]
	.loc	1 218 12                @ /root/Bela/projects/sh-quantizer/render.cpp:218:12
	str	r6, [r7, #20]
	b	.LBB3_12
.Ltmp140:
.LBB3_6:                                @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	.loc	1 195 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:195:7
	cmp	r1, #0
	blt	.LBB3_10
.Ltmp141:
@ BB#7:                                 @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	mov	r6, #0
.Ltmp142:
	.loc	1 424 94 discriminator 4 @ /root/Bela/projects/sh-quantizer/render.cpp:424:94
	mov	r1, #0
.Ltmp143:
	.loc	1 206 11                @ /root/Bela/projects/sh-quantizer/render.cpp:206:11
	str	r6, [r7, #20]
	b	.LBB3_13
.Ltmp144:
.LBB3_8:                                @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	mov	r1, #0
	mov	r6, #1
.Ltmp145:
	.loc	1 211 11                @ /root/Bela/projects/sh-quantizer/render.cpp:211:11
	str	r1, [r7, #20]
	b	.LBB3_13
.Ltmp146:
.LBB3_9:                                @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	mov	r1, #0
	mov	r6, #1
	b	.LBB3_13
.Ltmp147:
.LBB3_10:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	.loc	1 197 11                @ /root/Bela/projects/sh-quantizer/render.cpp:197:11
	ldr	r1, [r7, #20]
	mov	r6, #0
	add	r1, r1, #1
	str	r1, [r7, #20]
.Ltmp148:
	.loc	1 198 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	ldr	r1, [r7, #20]
.Ltmp149:
	.loc	1 198 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	cmp	r1, #4
.Ltmp150:
	.loc	1 424 94 is_stmt 1 discriminator 4 @ /root/Bela/projects/sh-quantizer/render.cpp:424:94
	mov	r1, #0
	blt	.LBB3_13
.Ltmp151:
@ BB#11:                                @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	mov	r6, #1
.Ltmp152:
	.loc	1 200 14                @ /root/Bela/projects/sh-quantizer/render.cpp:200:14
	strb	r6, [r7]
.Ltmp153:
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 201 12                @ /root/Bela/projects/sh-quantizer/render.cpp:201:12
	str	r9, [r7, #20]
.Ltmp154:
.LBB3_12:                               @ %_ZL8debouncebPVbPVi.exit
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	@DEBUG_VALUE: debounce:changed <- 1
	mov	r1, #1
.Ltmp155:
.LBB3_13:                               @ %_ZL8debouncebPVbPVi.exit
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	@DEBUG_VALUE: digitalWrite:channel <- 1
	@DEBUG_VALUE: digitalWrite:context <- %R4
	str	r1, [sp, #36]           @ 4-byte Spill
	.loc	1 272 18                @ /root/Bela/projects/sh-quantizer/render.cpp:272:18
	strb	r1, [r7, #1]
.Ltmp156:
	.loc	2 1523 30 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r10
	bls	.LBB3_18
.Ltmp157:
@ BB#14:                                @ %.lr.ph.i132
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: digitalWrite:context <- %R4
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	.loc	1 273 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:273:3
	mov	r2, r10
.Ltmp158:
	.loc	2 1524 6                @ ./include/Bela.h:1524:6
	cmp	r6, #0
	beq	.LBB3_16
.Ltmp159:
.LBB3_15:                               @ %.lr.ph.split.i
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1525 24               @ ./include/Bela.h:1525:24
	ldr	r1, [r0, r2, lsl #2]
	orr	r1, r1, #131072
	str	r1, [r0, r2, lsl #2]
.Ltmp160:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r2, r2, #1
.Ltmp161:
	@DEBUG_VALUE: digitalWrite:f <- %R2
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r2, r1
	blo	.LBB3_15
	b	.LBB3_18
.Ltmp162:
.LBB3_16:                               @ %.lr.ph.split.us.i.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: digitalWrite:context <- %R4
	@DEBUG_VALUE: debounce:pressed <- %R7
	@DEBUG_VALUE: digitalWrite:frame <- %R10
	.loc	1 273 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:273:3
	mov	r2, r10
.Ltmp163:
.LBB3_17:                               @ %.lr.ph.split.us.i
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1527 24               @ ./include/Bela.h:1527:24
	ldr	r1, [r0, r2, lsl #2]
	bfc	r1, #17, #1
	str	r1, [r0, r2, lsl #2]
.Ltmp164:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r2, r2, #1
.Ltmp165:
	@DEBUG_VALUE: digitalWrite:f <- %R2
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r2, r1
	blo	.LBB3_17
.Ltmp166:
.LBB3_18:                               @ %_ZL12digitalWriteP11BelaContextiii.exit
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	2 1515 12 is_stmt 1     @ ./include/Bela.h:1515:12
	ldr	r2, [r0, r10, lsl #2]
.Ltmp167:
	@DEBUG_VALUE: debounce:changed <- 0
	.loc	1 194 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:7
	ldrb	r3, [r7, #2]
.Ltmp168:
	.loc	2 1515 56               @ ./include/Bela.h:1515:56
	and	r2, r2, #1073741824
.Ltmp169:
	.loc	1 194 6                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:6
	cmp	r3, #0
	beq	.LBB3_21
@ BB#19:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp170:
	.loc	1 209 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:209:7
	cmp	r2, #0
	beq	.LBB3_23
@ BB#20:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp171:
	.loc	1 211 11                @ /root/Bela/projects/sh-quantizer/render.cpp:211:11
	str	r9, [r7, #24]
	mov	r2, #1
	b	.LBB3_27
.Ltmp172:
.LBB3_21:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 195 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:195:7
	cmp	r2, #0
	beq	.LBB3_25
@ BB#22:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp173:
	.loc	1 197 11                @ /root/Bela/projects/sh-quantizer/render.cpp:197:11
	ldr	r2, [r7, #24]
	add	r2, r2, #1
	str	r2, [r7, #24]
.Ltmp174:
	.loc	1 198 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	ldr	r3, [r7, #24]
	mov	r2, #0
.Ltmp175:
	.loc	1 198 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	cmp	r3, #4
	movge	r2, #1
.Ltmp176:
	.loc	1 200 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:200:14
	strbge	r2, [r7, #2]
.Ltmp177:
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 201 12                @ /root/Bela/projects/sh-quantizer/render.cpp:201:12
	strge	r9, [r7, #24]
	b	.LBB3_27
.Ltmp178:
.LBB3_23:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 214 11                @ /root/Bela/projects/sh-quantizer/render.cpp:214:11
	ldr	r2, [r7, #24]
	add	r2, r2, #1
	str	r2, [r7, #24]
.Ltmp179:
	.loc	1 215 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	ldr	r3, [r7, #24]
	mov	r2, #1
.Ltmp180:
	.loc	1 215 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	cmp	r3, #4
	blt	.LBB3_27
@ BB#24:                                @   in Loop: Header=BB3_2 Depth=1
	mov	r2, #0
.Ltmp181:
	.loc	1 217 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:217:14
	strb	r2, [r7, #2]
	b	.LBB3_26
.LBB3_25:                               @   in Loop: Header=BB3_2 Depth=1
	mov	r2, #0
.LBB3_26:                               @ %_ZL8debouncebPVbPVi.exit173
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 218 12                @ /root/Bela/projects/sh-quantizer/render.cpp:218:12
	str	r2, [r7, #24]
.Ltmp182:
.LBB3_27:                               @ %_ZL8debouncebPVbPVi.exit173
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: digitalWrite:channel <- 4
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r10
	bls	.LBB3_32
@ BB#28:                                @ %.lr.ph.i166
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp183:
	.loc	2 1524 6                @ ./include/Bela.h:1524:6
	cmp	r2, #0
.Ltmp184:
	.loc	1 277 3                 @ /root/Bela/projects/sh-quantizer/render.cpp:277:3
	mov	r2, r10
	beq	.LBB3_30
.LBB3_29:                               @ %.lr.ph.split.i170
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp185:
	.loc	2 1525 24               @ ./include/Bela.h:1525:24
	ldr	r1, [r0, r2, lsl #2]
	orr	r1, r1, #1048576
	str	r1, [r0, r2, lsl #2]
.Ltmp186:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r2, r2, #1
.Ltmp187:
	@DEBUG_VALUE: digitalWrite:f <- %R2
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r2, r1
.Ltmp188:
	@DEBUG_VALUE: digitalWrite:context <- %R4
	blo	.LBB3_29
	b	.LBB3_32
.Ltmp189:
.LBB3_30:                               @ %.lr.ph.split.us.i168.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 277 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:277:3
	mov	r2, r10
.LBB3_31:                               @ %.lr.ph.split.us.i168
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp190:
	.loc	2 1527 24               @ ./include/Bela.h:1527:24
	ldr	r1, [r0, r2, lsl #2]
	bfc	r1, #20, #1
	str	r1, [r0, r2, lsl #2]
.Ltmp191:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r2, r2, #1
.Ltmp192:
	@DEBUG_VALUE: digitalWrite:f <- %R2
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r2, r1
	blo	.LBB3_31
.Ltmp193:
.LBB3_32:                               @ %_ZL12digitalWriteP11BelaContextiii.exit171
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	2 1515 12 is_stmt 1     @ ./include/Bela.h:1515:12
	ldr	r2, [r0, r10, lsl #2]
.Ltmp194:
	@DEBUG_VALUE: debounce:changed <- 0
	.loc	1 194 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:7
	ldrb	r3, [r7, #3]
.Ltmp195:
	.loc	2 1515 56               @ ./include/Bela.h:1515:56
	and	r2, r2, #536870912
.Ltmp196:
	.loc	1 194 6                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:6
	cmp	r3, #0
	beq	.LBB3_35
@ BB#33:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp197:
	.loc	1 209 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:209:7
	cmp	r2, #0
	beq	.LBB3_37
@ BB#34:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp198:
	.loc	1 211 11                @ /root/Bela/projects/sh-quantizer/render.cpp:211:11
	str	r9, [r7, #28]
	mov	r2, #1
	b	.LBB3_41
.Ltmp199:
.LBB3_35:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 195 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:195:7
	cmp	r2, #0
	beq	.LBB3_39
@ BB#36:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp200:
	.loc	1 197 11                @ /root/Bela/projects/sh-quantizer/render.cpp:197:11
	ldr	r2, [r7, #28]
	add	r2, r2, #1
	str	r2, [r7, #28]
.Ltmp201:
	.loc	1 198 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	ldr	r3, [r7, #28]
	mov	r2, #0
.Ltmp202:
	.loc	1 198 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	cmp	r3, #4
	movge	r2, #1
.Ltmp203:
	.loc	1 200 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:200:14
	strbge	r2, [r7, #3]
.Ltmp204:
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 201 12                @ /root/Bela/projects/sh-quantizer/render.cpp:201:12
	strge	r9, [r7, #28]
	b	.LBB3_41
.Ltmp205:
.LBB3_37:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 214 11                @ /root/Bela/projects/sh-quantizer/render.cpp:214:11
	ldr	r2, [r7, #28]
	add	r2, r2, #1
	str	r2, [r7, #28]
.Ltmp206:
	.loc	1 215 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	ldr	r3, [r7, #28]
	mov	r2, #1
.Ltmp207:
	.loc	1 215 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	cmp	r3, #4
	blt	.LBB3_41
@ BB#38:                                @   in Loop: Header=BB3_2 Depth=1
	mov	r2, #0
.Ltmp208:
	.loc	1 217 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:217:14
	strb	r2, [r7, #3]
	b	.LBB3_40
.LBB3_39:                               @   in Loop: Header=BB3_2 Depth=1
	mov	r2, #0
.LBB3_40:                               @ %_ZL8debouncebPVbPVi.exit164
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 218 12                @ /root/Bela/projects/sh-quantizer/render.cpp:218:12
	str	r2, [r7, #28]
.Ltmp209:
.LBB3_41:                               @ %_ZL8debouncebPVbPVi.exit164
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: digitalWrite:channel <- 5
	str	r6, [sp, #32]           @ 4-byte Spill
.Ltmp210:
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r10
	bls	.LBB3_46
.Ltmp211:
@ BB#42:                                @ %.lr.ph.i157
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 281 3                 @ /root/Bela/projects/sh-quantizer/render.cpp:281:3
	mov	r3, r10
.Ltmp212:
	.loc	2 1524 6                @ ./include/Bela.h:1524:6
	cmp	r2, #0
	beq	.LBB3_44
.LBB3_43:                               @ %.lr.ph.split.i161
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp213:
	.loc	2 1525 24               @ ./include/Bela.h:1525:24
	ldr	r1, [r0, r3, lsl #2]
	orr	r1, r1, #2097152
	str	r1, [r0, r3, lsl #2]
.Ltmp214:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r3, r3, #1
.Ltmp215:
	@DEBUG_VALUE: digitalWrite:f <- %R3
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r3, r1
.Ltmp216:
	@DEBUG_VALUE: digitalWrite:context <- %R4
	blo	.LBB3_43
	b	.LBB3_46
.Ltmp217:
.LBB3_44:                               @ %.lr.ph.split.us.i159.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 281 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:281:3
	mov	r3, r10
.LBB3_45:                               @ %.lr.ph.split.us.i159
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp218:
	.loc	2 1527 24               @ ./include/Bela.h:1527:24
	ldr	r1, [r0, r3, lsl #2]
	bfc	r1, #21, #1
	str	r1, [r0, r3, lsl #2]
.Ltmp219:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r3, r3, #1
.Ltmp220:
	@DEBUG_VALUE: digitalWrite:f <- %R3
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r3, r1
	blo	.LBB3_45
.Ltmp221:
.LBB3_46:                               @ %_ZL12digitalWriteP11BelaContextiii.exit162
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	2 1515 12 is_stmt 1     @ ./include/Bela.h:1515:12
	ldr	r3, [r0, r10, lsl #2]
.Ltmp222:
	@DEBUG_VALUE: debounce:changed <- 0
	.loc	1 194 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:7
	ldrb	r6, [r7, #4]
.Ltmp223:
	.loc	2 1515 56               @ ./include/Bela.h:1515:56
	and	r3, r3, #268435456
.Ltmp224:
	.loc	1 194 6                 @ /root/Bela/projects/sh-quantizer/render.cpp:194:6
	cmp	r6, #0
	beq	.LBB3_49
@ BB#47:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp225:
	.loc	1 209 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:209:7
	cmp	r3, #0
	beq	.LBB3_51
@ BB#48:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp226:
	.loc	1 211 11                @ /root/Bela/projects/sh-quantizer/render.cpp:211:11
	str	r9, [r7, #32]
	mov	r3, #1
	b	.LBB3_55
.Ltmp227:
.LBB3_49:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 195 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:195:7
	cmp	r3, #0
	beq	.LBB3_53
@ BB#50:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp228:
	.loc	1 197 11                @ /root/Bela/projects/sh-quantizer/render.cpp:197:11
	ldr	r3, [r7, #32]
	add	r3, r3, #1
	str	r3, [r7, #32]
.Ltmp229:
	.loc	1 198 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	ldr	r6, [r7, #32]
	mov	r3, #0
.Ltmp230:
	.loc	1 198 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:198:8
	cmp	r6, #4
	movge	r3, #1
.Ltmp231:
	.loc	1 200 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:200:14
	strbge	r3, [r7, #4]
.Ltmp232:
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 201 12                @ /root/Bela/projects/sh-quantizer/render.cpp:201:12
	strge	r9, [r7, #32]
	b	.LBB3_55
.Ltmp233:
.LBB3_51:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 214 11                @ /root/Bela/projects/sh-quantizer/render.cpp:214:11
	ldr	r3, [r7, #32]
	add	r3, r3, #1
	str	r3, [r7, #32]
.Ltmp234:
	.loc	1 215 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	ldr	r6, [r7, #32]
	mov	r3, #1
.Ltmp235:
	.loc	1 215 8 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:215:8
	cmp	r6, #4
	blt	.LBB3_55
@ BB#52:                                @   in Loop: Header=BB3_2 Depth=1
	mov	r3, #0
.Ltmp236:
	.loc	1 217 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:217:14
	strb	r3, [r7, #4]
	b	.LBB3_54
.LBB3_53:                               @   in Loop: Header=BB3_2 Depth=1
	mov	r3, #0
.LBB3_54:                               @ %_ZL8debouncebPVbPVi.exit155
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: debounce:changed <- 1
	.loc	1 218 12                @ /root/Bela/projects/sh-quantizer/render.cpp:218:12
	str	r3, [r7, #32]
.Ltmp237:
.LBB3_55:                               @ %_ZL8debouncebPVbPVi.exit155
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: digitalWrite:channel <- 8
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r10
	bls	.LBB3_60
.Ltmp238:
@ BB#56:                                @ %.lr.ph.i148
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 285 3                 @ /root/Bela/projects/sh-quantizer/render.cpp:285:3
	mov	r6, r10
.Ltmp239:
	.loc	2 1524 6                @ ./include/Bela.h:1524:6
	cmp	r3, #0
	beq	.LBB3_58
.LBB3_57:                               @ %.lr.ph.split.i152
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp240:
	.loc	2 1525 24               @ ./include/Bela.h:1525:24
	ldr	r1, [r0, r6, lsl #2]
	orr	r1, r1, #16777216
	str	r1, [r0, r6, lsl #2]
.Ltmp241:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r6, r6, #1
.Ltmp242:
	@DEBUG_VALUE: digitalWrite:f <- %R6
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r6, r1
.Ltmp243:
	@DEBUG_VALUE: digitalWrite:context <- %R4
	blo	.LBB3_57
	b	.LBB3_60
.Ltmp244:
.LBB3_58:                               @ %.lr.ph.split.us.i150.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 285 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:285:3
	mov	r6, r10
.LBB3_59:                               @ %.lr.ph.split.us.i150
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp245:
	.loc	2 1527 24               @ ./include/Bela.h:1527:24
	ldr	r1, [r0, r6, lsl #2]
	bfc	r1, #24, #1
	str	r1, [r0, r6, lsl #2]
.Ltmp246:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r6, r6, #1
.Ltmp247:
	@DEBUG_VALUE: digitalWrite:f <- %R6
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r6, r1
	blo	.LBB3_59
.Ltmp248:
.LBB3_60:                               @ %_ZL12digitalWriteP11BelaContextiii.exit153
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 303 7 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:303:7
	cmp	r2, #0
	beq	.LBB3_65
@ BB#61:                                @   in Loop: Header=BB3_2 Depth=1
	ldrb	r2, [r7, #5]
.Ltmp249:
	.loc	1 304 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:304:8
	cmp	r2, #0
	bne	.LBB3_66
@ BB#62:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp250:
	.loc	1 305 23                @ /root/Bela/projects/sh-quantizer/render.cpp:305:23
	ldrb	r2, [r5]
	.loc	1 305 19 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:305:19
	eor	r2, r2, #1
	strb	r2, [r5]
	mov	r2, #1
	strb	r2, [r7, #5]
	b	.LBB3_66
.Ltmp251:
	.p2align	3
@ BB#63:
.LCPI3_5:
	.long	1431655765              @ double 0.083333333333333329
	.long	1068848469
	.p2align	4
@ BB#64:
.LCPI3_6:
	.long	0                       @ 0x0
	.long	1                       @ 0x1
	.long	2                       @ 0x2
	.long	3                       @ 0x3
.LBB3_65:                               @   in Loop: Header=BB3_2 Depth=1
	strb	r9, [r7, #5]
.LBB3_66:                               @   in Loop: Header=BB3_2 Depth=1
.Ltmp252:
	@DEBUG_VALUE: digitalWrite:channel <- 6
	.loc	2 1523 2 is_stmt 1 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r10
	bls	.LBB3_71
.Ltmp253:
@ BB#67:                                @ %.lr.ph.i141
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 311 35                @ /root/Bela/projects/sh-quantizer/render.cpp:311:35
	ldrb	r1, [r5]
	.loc	1 311 3 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:311:3
	mov	r2, r10
.Ltmp254:
	.loc	2 1524 6 is_stmt 1      @ ./include/Bela.h:1524:6
	cmp	r1, #0
	beq	.LBB3_69
.LBB3_68:                               @ %.lr.ph.split.i145
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp255:
	.loc	2 1525 24               @ ./include/Bela.h:1525:24
	ldr	r1, [r0, r2, lsl #2]
	orr	r1, r1, #4194304
	str	r1, [r0, r2, lsl #2]
.Ltmp256:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r2, r2, #1
.Ltmp257:
	@DEBUG_VALUE: digitalWrite:f <- %R2
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r2, r1
.Ltmp258:
	@DEBUG_VALUE: digitalWrite:context <- %R4
	blo	.LBB3_68
	b	.LBB3_71
.Ltmp259:
.LBB3_69:                               @ %.lr.ph.split.us.i143.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 311 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:311:3
	mov	r2, r10
.LBB3_70:                               @ %.lr.ph.split.us.i143
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp260:
	.loc	2 1527 24               @ ./include/Bela.h:1527:24
	ldr	r1, [r0, r2, lsl #2]
	bfc	r1, #22, #1
	str	r1, [r0, r2, lsl #2]
.Ltmp261:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r2, r2, #1
.Ltmp262:
	@DEBUG_VALUE: digitalWrite:f <- %R2
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r1, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r2, r1
	blo	.LBB3_70
.Ltmp263:
.LBB3_71:                               @ %_ZL12digitalWriteP11BelaContextiii.exit146
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 314 7 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:314:7
	cmp	r3, #0
	beq	.LBB3_74
@ BB#72:                                @   in Loop: Header=BB3_2 Depth=1
	ldrb	r2, [r7, #6]
.Ltmp264:
	.loc	1 315 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:315:8
	cmp	r2, #0
	bne	.LBB3_75
@ BB#73:                                @   in Loop: Header=BB3_2 Depth=1
.Ltmp265:
	.loc	1 316 18                @ /root/Bela/projects/sh-quantizer/render.cpp:316:18
	ldrb	r2, [r7, #7]
	.loc	1 316 14 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:316:14
	eor	r2, r2, #1
	strb	r2, [r7, #7]
	mov	r2, #1
	strb	r2, [r7, #6]
	b	.LBB3_75
.Ltmp266:
.LBB3_74:                               @   in Loop: Header=BB3_2 Depth=1
	strb	r9, [r7, #6]
.LBB3_75:                               @   in Loop: Header=BB3_2 Depth=1
.Ltmp267:
	@DEBUG_VALUE: digitalWrite:channel <- 7
	.loc	2 1523 2 is_stmt 1 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r10
	bls	.LBB3_80
.Ltmp268:
@ BB#76:                                @ %.lr.ph.i134
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 322 35                @ /root/Bela/projects/sh-quantizer/render.cpp:322:35
	ldrb	r1, [r7, #7]
.Ltmp269:
	.loc	2 1524 6                @ ./include/Bela.h:1524:6
	cmp	r1, #0
.Ltmp270:
	.loc	1 322 3                 @ /root/Bela/projects/sh-quantizer/render.cpp:322:3
	mov	r1, r10
	beq	.LBB3_78
.LBB3_77:                               @ %.lr.ph.split.i138
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp271:
	.loc	2 1525 24               @ ./include/Bela.h:1525:24
	ldr	r2, [r0, r1, lsl #2]
	orr	r2, r2, #8388608
	str	r2, [r0, r1, lsl #2]
.Ltmp272:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r1, r1, #1
.Ltmp273:
	@DEBUG_VALUE: digitalWrite:f <- %R1
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r2, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r2
.Ltmp274:
	@DEBUG_VALUE: digitalWrite:context <- %R4
	blo	.LBB3_77
	b	.LBB3_80
.Ltmp275:
.LBB3_78:                               @ %.lr.ph.split.us.i136.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 322 3 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:322:3
	mov	r1, r10
.LBB3_79:                               @ %.lr.ph.split.us.i136
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp276:
	.loc	2 1527 24               @ ./include/Bela.h:1527:24
	ldr	r2, [r0, r1, lsl #2]
	bfc	r2, #23, #1
	str	r2, [r0, r1, lsl #2]
.Ltmp277:
	.loc	2 1523 46 discriminator 2 @ ./include/Bela.h:1523:46
	add	r1, r1, #1
.Ltmp278:
	@DEBUG_VALUE: digitalWrite:f <- %R1
	.loc	2 1523 30 is_stmt 0 discriminator 1 @ ./include/Bela.h:1523:30
	ldr	r2, [r4, #52]
	.loc	2 1523 2 discriminator 1 @ ./include/Bela.h:1523:2
	cmp	r1, r2
	blo	.LBB3_79
.Ltmp279:
.LBB3_80:                               @ %_ZL12digitalWriteP11BelaContextiii.exit139
                                        @   in Loop: Header=BB3_2 Depth=1
	ldr	r1, [r4, #40]
.Ltmp280:
	.file	8 "./include" "Utilities.h"
	.loc	8 73 44 is_stmt 1       @ ./include/Utilities.h:73:44
	vmov.f32	d16, #6.000000e+00
	ldr	r0, [r4, #8]
.Ltmp281:
	.loc	2 1477 33               @ ./include/Bela.h:1477:33
	mul	r1, r1, r10
	add	r0, r0, r1, lsl #2
.Ltmp282:
	@DEBUG_VALUE: map:out_max <- 6.000000e+00
	@DEBUG_VALUE: map:out_min <- 0.000000e+00
	@DEBUG_VALUE: map:in_max <- 1.000000e+00
	@DEBUG_VALUE: map:in_min <- 0.000000e+00
	.loc	2 1477 9 is_stmt 0      @ ./include/Bela.h:1477:9
	vldr	s0, [r0, #16]
.Ltmp283:
	.loc	8 73 44 is_stmt 1       @ ./include/Utilities.h:73:44
	vmul.f32	d16, d0, d16
.Ltmp284:
	.loc	1 326 17                @ /root/Bela/projects/sh-quantizer/render.cpp:326:17
	vcvt.s32.f32	d0, d16
	vmov	r1, s0
.Ltmp285:
	@DEBUG_VALUE: render:in4_map <- %R1
	.loc	1 327 3                 @ /root/Bela/projects/sh-quantizer/render.cpp:327:3
	cmp	r1, #5
	bhi	.LBB3_84
.Ltmp286:
@ BB#81:                                @ %_ZL12digitalWriteP11BelaContextiii.exit139
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: render:in4_map <- %R1
	adr	r2, .LJTI3_0
	lsl	r1, r1, #2
.Ltmp287:
	ldr	pc, [r1, r2]
@ BB#82:
	.p2align	2
.LJTI3_0:
	.long	.LBB3_83
	.long	.LBB3_85
	.long	.LBB3_86
	.long	.LBB3_87
	.long	.LBB3_88
	.long	.LBB3_89
.LBB3_83:                               @   in Loop: Header=BB3_2 Depth=1
	mov	r6, #12
.Ltmp288:
	.loc	1 329 12                @ /root/Bela/projects/sh-quantizer/render.cpp:329:12
	ldr	r1, [sp, #28]           @ 4-byte Reload
	b	.LBB3_91
.Ltmp289:
.LBB3_84:                               @ %_ZL12digitalWriteP11BelaContextiii.exit139._crit_edge
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: render:in4_map <- %R1
	.loc	1 361 24 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:361:24
	ldr	r6, [r7, #40]
	b	.LBB3_92
.Ltmp290:
.LBB3_85:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 329 12                @ /root/Bela/projects/sh-quantizer/render.cpp:329:12
	movw	r1, :lower16:.L_MergedGlobals.4
	mov	r6, #9
	movt	r1, :upper16:.L_MergedGlobals.4
	b	.LBB3_91
.LBB3_86:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 337 12                @ /root/Bela/projects/sh-quantizer/render.cpp:337:12
	add	r1, r5, #40
	mov	r6, #7
	b	.LBB3_91
.LBB3_87:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 341 12                @ /root/Bela/projects/sh-quantizer/render.cpp:341:12
	add	r1, r5, #68
	mov	r6, #7
	b	.LBB3_91
.LBB3_88:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 345 12                @ /root/Bela/projects/sh-quantizer/render.cpp:345:12
	add	r1, r5, #8
	b	.LBB3_90
.LBB3_89:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 349 12                @ /root/Bela/projects/sh-quantizer/render.cpp:349:12
	add	r1, r5, #24
.LBB3_90:                               @   in Loop: Header=BB3_2 Depth=1
	mov	r6, #4
.LBB3_91:                               @   in Loop: Header=BB3_2 Depth=1
	str	r1, [r7, #36]
	.loc	1 350 16                @ /root/Bela/projects/sh-quantizer/render.cpp:350:16
	str	r6, [r7, #40]
.Ltmp291:
.LBB3_92:                               @   in Loop: Header=BB3_2 Depth=1
	.loc	1 354 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:354:7
	ldrb	r1, [r7, #7]
	mov	r8, r5
.Ltmp292:
	.loc	1 354 7 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:354:7
	cmp	r1, #0
	beq	.LBB3_101
@ BB#93:                                @ %.preheader175
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp293:
	@DEBUG_VALUE: binary_search_closest:size <- %R6
	.loc	1 355 4 is_stmt 1 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:355:4
	cmp	r6, #1
	blt	.LBB3_110
.Ltmp294:
@ BB#94:                                @ %.lr.ph.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: binary_search_closest:size <- %R6
	.loc	1 357 35                @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	vmov	s0, r6
	mov	r2, #0
.Ltmp295:
	.loc	1 397 49                @ /root/Bela/projects/sh-quantizer/render.cpp:397:49
	vmov.f64	d17, #1.200000e+01
.Ltmp296:
	.loc	1 357 35                @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	cmp	r6, #3
	vcvt.f64.s32	d16, s0
	.loc	1 357 33 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:357:33
	vdiv.f64	d16, d17, d16
	bls	.LBB3_99
.Ltmp297:
@ BB#95:                                @ %min.iters.checked337
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: binary_search_closest:size <- %R6
	.loc	1 357 35                @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	mov	r1, r6
	bfc	r1, #0, #2
	cmp	r1, #0
	beq	.LBB3_99
.Ltmp298:
@ BB#96:                                @ %vector.ph341
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: binary_search_closest:size <- %R6
	vmov.f64	d17, d16
	adr	r2, .LCPI3_6
	vld1.64	{d0, d1}, [r2:128]
.Ltmp299:
	.loc	1 355 37 is_stmt 1 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:355:37
	mov	r2, r1
.Ltmp300:
.LBB3_97:                               @ %vector.body333
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	1 357 49                @ /root/Bela/projects/sh-quantizer/render.cpp:357:49
	vcvt.f64.s32	d18, s3
	.loc	1 357 35 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	subs	r2, r2, #4
	.loc	1 357 49                @ /root/Bela/projects/sh-quantizer/render.cpp:357:49
	vcvt.f64.s32	d19, s2
	.loc	1 357 47                @ /root/Bela/projects/sh-quantizer/render.cpp:357:47
	vmul.f64	d18, d17, d18
	.loc	1 357 49                @ /root/Bela/projects/sh-quantizer/render.cpp:357:49
	vcvt.f64.s32	d20, s1
	.loc	1 357 47                @ /root/Bela/projects/sh-quantizer/render.cpp:357:47
	vmul.f64	d19, d16, d19
	.loc	1 357 27                @ /root/Bela/projects/sh-quantizer/render.cpp:357:27
	vcvt.f32.f64	s7, d18
	.loc	1 357 49                @ /root/Bela/projects/sh-quantizer/render.cpp:357:49
	vcvt.f64.s32	d21, s0
	.loc	1 357 47                @ /root/Bela/projects/sh-quantizer/render.cpp:357:47
	vmul.f64	d20, d17, d20
	.loc	1 357 5                 @ /root/Bela/projects/sh-quantizer/render.cpp:357:5
	vmov.32	r3, d0[0]
	.loc	1 357 35                @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	vadd.i32	q0, q0, q6
	.loc	1 357 27                @ /root/Bela/projects/sh-quantizer/render.cpp:357:27
	vcvt.f32.f64	s6, d19
	.loc	1 357 47                @ /root/Bela/projects/sh-quantizer/render.cpp:357:47
	vmul.f64	d21, d16, d21
	.loc	1 357 27                @ /root/Bela/projects/sh-quantizer/render.cpp:357:27
	vcvt.f32.f64	s5, d20
	.loc	1 357 5                 @ /root/Bela/projects/sh-quantizer/render.cpp:357:5
	add	r3, r7, r3, lsl #2
	add	r3, r3, #48
	.loc	1 357 27                @ /root/Bela/projects/sh-quantizer/render.cpp:357:27
	vcvt.f32.f64	s4, d21
	.loc	1 357 25                @ /root/Bela/projects/sh-quantizer/render.cpp:357:25
	vst1.32	{d2, d3}, [r3]
	.loc	1 357 35                @ /root/Bela/projects/sh-quantizer/render.cpp:357:35
	bne	.LBB3_97
@ BB#98:                                @ %middle.block334
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r2, r1
	cmp	r6, r1
	beq	.LBB3_110
.LBB3_99:                               @ %.lr.ph.preheader388
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 357 49                @ /root/Bela/projects/sh-quantizer/render.cpp:357:49
	add	r1, r7, r2, lsl #2
	add	r1, r1, #48
.LBB3_100:                              @ %.lr.ph
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	vmov	s0, r2
.Ltmp301:
	.loc	1 355 37 is_stmt 1 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:355:37
	add	r2, r2, #1
.Ltmp302:
	@DEBUG_VALUE: i <- %R2
	.loc	1 355 4 is_stmt 0 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:355:4
	cmp	r2, r6
.Ltmp303:
	.loc	1 357 49 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:357:49
	vcvt.f64.s32	d18, s0
	.loc	1 357 47 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:357:47
	vmul.f64	d18, d16, d18
	.loc	1 357 27                @ /root/Bela/projects/sh-quantizer/render.cpp:357:27
	vcvt.f32.f64	s0, d18
	.loc	1 357 25                @ /root/Bela/projects/sh-quantizer/render.cpp:357:25
	vstmia	r1!, {s0}
	blt	.LBB3_100
	b	.LBB3_110
.Ltmp304:
.LBB3_101:                              @ %.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 361 4 is_stmt 1 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:361:4
	cmp	r6, #1
	blt	.LBB3_110
@ BB#102:                               @ %.lr.ph188
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp305:
	.loc	1 363 27                @ /root/Bela/projects/sh-quantizer/render.cpp:363:27
	ldr	r3, [r7, #36]
	mov	r2, #0
.Ltmp306:
	.loc	1 361 4 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:361:4
	cmp	r6, #3
	bls	.LBB3_109
@ BB#103:                               @ %min.iters.checked315
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r12, r6
	bfc	r12, #0, #2
	cmp	r12, #0
	beq	.LBB3_109
@ BB#104:                               @ %vector.memcheck
                                        @   in Loop: Header=BB3_2 Depth=1
	add	r5, r7, #48
	add	r1, r3, r6, lsl #2
	cmp	r1, r5
	bls	.LBB3_106
@ BB#105:                               @ %vector.memcheck
                                        @   in Loop: Header=BB3_2 Depth=1
	add	r1, r5, r6, lsl #2
	cmp	r3, r1
	blo	.LBB3_109
.LBB3_106:                              @ %vector.body311.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 361 37 is_stmt 0 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:361:37
	mov	r2, r12
	mov	r1, r3
.LBB3_107:                              @ %vector.body311
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp307:
	.loc	1 363 27 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:363:27
	vld1.32	{d16, d17}, [r1]!
.Ltmp308:
	.loc	1 361 4 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:361:4
	subs	r2, r2, #4
.Ltmp309:
	.loc	1 363 25                @ /root/Bela/projects/sh-quantizer/render.cpp:363:25
	vst1.32	{d16, d17}, [r5]!
.Ltmp310:
	.loc	1 361 4 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:361:4
	bne	.LBB3_107
@ BB#108:                               @ %middle.block312
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r2, r12
	cmp	r6, r12
	beq	.LBB3_110
.LBB3_109:                              @ %scalar.ph313
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
.Ltmp311:
	.loc	1 363 27                @ /root/Bela/projects/sh-quantizer/render.cpp:363:27
	ldr	r1, [r3, r2, lsl #2]
	.loc	1 363 25 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:363:25
	add	r5, r7, r2, lsl #2
.Ltmp312:
	.loc	1 361 37 is_stmt 1 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:361:37
	add	r2, r2, #1
.Ltmp313:
	@DEBUG_VALUE: i <- %R2
	.loc	1 363 25                @ /root/Bela/projects/sh-quantizer/render.cpp:363:25
	str	r1, [r5, #48]
.Ltmp314:
	.loc	1 361 4 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:361:4
	cmp	r2, r6
	blt	.LBB3_109
.Ltmp315:
.LBB3_110:                              @ %.loopexit
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	2 1477 9                @ ./include/Bela.h:1477:9
	vldr	s0, [r0]
.Ltmp316:
	.loc	1 374 12                @ /root/Bela/projects/sh-quantizer/render.cpp:374:12
	vldr	s2, .LCPI3_7
	vmul.f32	d10, d0, d1
	.loc	1 375 18                @ /root/Bela/projects/sh-quantizer/render.cpp:375:18
	vcvt.f64.f32	d8, s20
	.loc	1 375 25 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:375:25
	vmul.f64	d0, d8, d11
	.loc	1 375 12                @ /root/Bela/projects/sh-quantizer/render.cpp:375:12
	bl	floor
.Ltmp317:
	.loc	1 420 19 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:420:19
	vcvt.f32.f64	s18, d0
	mov	r9, #0
	mov	r5, r8
.Ltmp318:
	.loc	1 237 5 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:237:5
	cmp	r6, #2
.Ltmp319:
	.loc	1 376 23                @ /root/Bela/projects/sh-quantizer/render.cpp:376:23
	vcvt.f64.f32	d16, s18
	.loc	1 376 30 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:376:30
	vmov.f64	d17, #-1.200000e+01
	vmul.f64	d16, d16, d17
	.loc	1 376 21                @ /root/Bela/projects/sh-quantizer/render.cpp:376:21
	vadd.f64	d16, d8, d16
.Ltmp320:
	.loc	1 427 15 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:427:15
	vcvt.f32.f64	s16, d16
.Ltmp321:
	@DEBUG_VALUE: binary_search_closest:low <- 0
	@DEBUG_VALUE: best_interval_index <- -1
	@DEBUG_VALUE: binary_search_closest:target <- %S16
	@DEBUG_VALUE: circular_distance:a <- %S16
	@DEBUG_VALUE: circular_distance:a <- %S16
	.loc	1 374 10                @ /root/Bela/projects/sh-quantizer/render.cpp:374:10
	vstr	s20, [r7, #8]
	.loc	1 375 10                @ /root/Bela/projects/sh-quantizer/render.cpp:375:10
	vstr	s18, [r7, #12]
	.loc	1 376 12                @ /root/Bela/projects/sh-quantizer/render.cpp:376:12
	vstr	s16, [r7, #16]
	blt	.LBB3_118
.Ltmp322:
@ BB#111:                               @ %.lr.ph.lr.ph.i
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: circular_distance:a <- %S16
	@DEBUG_VALUE: circular_distance:a <- %S16
	@DEBUG_VALUE: binary_search_closest:target <- %S16
	.loc	1 240 24                @ /root/Bela/projects/sh-quantizer/render.cpp:240:24
	vmov.f32	d1, #1.200000e+01
	vmov.f32	s0, s16
	vmov.f32	s1, s2
	bl	__fmodf_finite
.Ltmp323:
	.loc	1 234 21                @ /root/Bela/projects/sh-quantizer/render.cpp:234:21
	sub	r0, r6, #1
	mov	r9, #0
.Ltmp324:
.LBB3_112:                              @ %.lr.ph.i131
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Loop Header: Depth=2
                                        @       Child Loop BB3_113 Depth 3
	.loc	1 381 25                @ /root/Bela/projects/sh-quantizer/render.cpp:381:25
	mov	r1, r0
.LBB3_113:                              @   Parent Loop BB3_2 Depth=1
                                        @     Parent Loop BB3_112 Depth=2
                                        @ =>    This Inner Loop Header: Depth=3
.Ltmp325:
	.loc	1 238 20                @ /root/Bela/projects/sh-quantizer/render.cpp:238:20
	add	r0, r9, r1
	.loc	1 238 28 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:238:28
	add	r0, r0, r0, lsr #31
	asr	r0, r0, #1
.Ltmp326:
	@DEBUG_VALUE: binary_search_closest:mid <- %R0
	.loc	1 240 13 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:240:13
	add	r2, r7, r0, lsl #2
	vldr	s2, [r2, #48]
.Ltmp327:
	.loc	1 240 13 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:240:13
	vcmpe.f32	s2, s0
	vmrs	APSR_nzcv, fpscr
	bge	.LBB3_115
.Ltmp328:
@ BB#114:                               @   in Loop: Header=BB3_113 Depth=3
	@DEBUG_VALUE: binary_search_closest:mid <- %R0
	.loc	1 241 23 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:241:23
	add	r9, r0, #1
.Ltmp329:
	@DEBUG_VALUE: binary_search_closest:low <- %R9
	.loc	1 237 5 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:237:5
	cmp	r9, r1
	blt	.LBB3_113
	b	.LBB3_116
.Ltmp330:
.LBB3_115:                              @ %.outer.loopexit.i
                                        @   in Loop: Header=BB3_112 Depth=2
	@DEBUG_VALUE: binary_search_closest:mid <- %R0
	cmp	r9, r0
	blt	.LBB3_112
.Ltmp331:
.LBB3_116:                              @ %.outer._crit_edge.i
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: binary_search_closest:mid <- %R0
	.loc	1 248 9                 @ /root/Bela/projects/sh-quantizer/render.cpp:248:9
	cmp	r9, #1
	blt	.LBB3_118
.Ltmp332:
@ BB#117:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: binary_search_closest:mid <- %R0
	@DEBUG_VALUE: circular_distance:max_value <- 1.200000e+01
	.loc	1 249 54                @ /root/Bela/projects/sh-quantizer/render.cpp:249:54
	sub	r0, r9, #1
.Ltmp333:
	@DEBUG_VALUE: binary_search_closest:best_idx <- %R0
	.loc	1 227 28                @ /root/Bela/projects/sh-quantizer/render.cpp:227:28
	vdup.32	d16, d8[0]
.Ltmp334:
	.loc	1 249 46                @ /root/Bela/projects/sh-quantizer/render.cpp:249:46
	add	r1, r7, r0, lsl #2
.Ltmp335:
	@DEBUG_VALUE: circular_distance:max_value <- 1.200000e+01
	vldr	d17, [r1, #48]
.Ltmp336:
	.loc	1 227 28                @ /root/Bela/projects/sh-quantizer/render.cpp:227:28
	vsub.f32	d16, d16, d17
.Ltmp337:
	.loc	1 240 24                @ /root/Bela/projects/sh-quantizer/render.cpp:240:24
	vmov.f32	d17, #1.200000e+01
.Ltmp338:
	.loc	1 227 20 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:227:20
	vabs.f32	d16, d16
	.loc	1 228 28                @ /root/Bela/projects/sh-quantizer/render.cpp:228:28
	vsub.f32	d17, d17, d16
	.loc	1 229 19                @ /root/Bela/projects/sh-quantizer/render.cpp:229:19
	vcgt.f32	d0, d17, d16
	.loc	1 229 12 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:229:12
	vbsl	d0, d16, d17
.Ltmp339:
	.loc	1 252 13 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:252:13
	vcmpe.f32	s0, s1
	vmrs	APSR_nzcv, fpscr
	movlt	r9, r0
.Ltmp340:
.LBB3_118:                              @ %_Z21binary_search_closestPKfif.exit
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 383 28                @ /root/Bela/projects/sh-quantizer/render.cpp:383:28
	add	r1, r7, r9, lsl #2
.Ltmp341:
	.loc	1 424 76 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:424:76
	ldrb	r0, [r5]
.Ltmp342:
	.loc	1 427 64                @ /root/Bela/projects/sh-quantizer/render.cpp:427:64
	vldr	s20, [r1, #48]
.Ltmp343:
	@DEBUG_VALUE: closest_interval <- %S20
	.loc	1 386 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:386:7
	cmp	r0, #0
	beq	.LBB3_121
.Ltmp344:
@ BB#119:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 390 40                @ /root/Bela/projects/sh-quantizer/render.cpp:390:40
	sub	r0, r9, #1
	.loc	1 390 45 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:390:45
	mov	r1, r6
.Ltmp345:
	.loc	1 424 39 is_stmt 1 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:424:39
	ldr	r5, [r5, #4]
.Ltmp346:
	@DEBUG_VALUE: out_temp <- %R5
	.loc	1 390 45                @ /root/Bela/projects/sh-quantizer/render.cpp:390:45
	bl	__aeabi_idivmod
	.loc	1 390 58 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:390:58
	add	r0, r1, r6
	.loc	1 390 72                @ /root/Bela/projects/sh-quantizer/render.cpp:390:72
	mov	r1, r6
	bl	__aeabi_idivmod
.Ltmp347:
	@DEBUG_VALUE: update <- 0
	.loc	1 394 62 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:394:62
	add	r0, r7, r1, lsl #2
	.loc	1 394 95 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:394:95
	vmov.f64	d17, #2.500000e-01
	.loc	1 391 44 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:391:44
	mov	r1, r6
	.loc	1 394 62                @ /root/Bela/projects/sh-quantizer/render.cpp:394:62
	vldr	s0, [r0, #48]
	.loc	1 391 39                @ /root/Bela/projects/sh-quantizer/render.cpp:391:39
	add	r0, r9, #1
	.loc	1 394 23                @ /root/Bela/projects/sh-quantizer/render.cpp:394:23
	vcvt.f64.f32	d15, s20
	.loc	1 394 60 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:394:60
	vsub.f32	d0, d0, d10
	.loc	1 394 42                @ /root/Bela/projects/sh-quantizer/render.cpp:394:42
	vcvt.f64.f32	d16, s0
	.loc	1 394 95                @ /root/Bela/projects/sh-quantizer/render.cpp:394:95
	vmul.f64	d16, d16, d17
	.loc	1 394 40                @ /root/Bela/projects/sh-quantizer/render.cpp:394:40
	vadd.f64	d14, d15, d16
	.loc	1 391 44 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:391:44
	bl	__aeabi_idivmod
	.loc	1 395 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:395:8
	cmp	r1, #0
	beq	.LBB3_123
.Ltmp348:
@ BB#120:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 399 44                @ /root/Bela/projects/sh-quantizer/render.cpp:399:44
	add	r0, r7, r1, lsl #2
	vldr	s0, [r0, #48]
	.loc	1 399 70 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:399:70
	vsub.f32	d0, d0, d10
	.loc	1 399 43                @ /root/Bela/projects/sh-quantizer/render.cpp:399:43
	vcvt.f64.f32	d16, s0
	b	.LBB3_124
.Ltmp349:
.LBB3_121:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 420 19 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:420:19
	vcvt.s32.f32	d0, d9
	.loc	1 420 34 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:420:34
	ldr	r0, [r7, #36]
	add	r0, r0, r9, lsl #2
	.loc	1 420 19                @ /root/Bela/projects/sh-quantizer/render.cpp:420:19
	vmov	r1, s0
	.loc	1 420 27                @ /root/Bela/projects/sh-quantizer/render.cpp:420:27
	add	r1, r1, r1, lsl #1
	lsl	r1, r1, #2
	.loc	1 420 15                @ /root/Bela/projects/sh-quantizer/render.cpp:420:15
	vmov	s0, r1
	vcvt.f32.s32	d16, d0
	.loc	1 420 34                @ /root/Bela/projects/sh-quantizer/render.cpp:420:34
	vldr	s0, [r0]
.Ltmp350:
	.loc	1 424 90 is_stmt 1 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:424:90
	ldr	r0, [sp, #36]           @ 4-byte Reload
	cmp	r0, #0
.Ltmp351:
	.loc	1 420 32                @ /root/Bela/projects/sh-quantizer/render.cpp:420:32
	vadd.f32	d16, d16, d0
	ldrne	r0, [sp, #32]           @ 4-byte Reload
	cmpne	r0, #0
	beq	.LBB3_149
.Ltmp352:
@ BB#122:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 420 15 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:420:15
	vcvt.s32.f32	d0, d16
	mov	r5, r8
	vmov	r1, s0
.Ltmp353:
	@DEBUG_VALUE: out_temp <- %R1
	b	.LBB3_130
.Ltmp354:
.LBB3_123:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 397 49 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:397:49
	vmov.f64	d16, #1.200000e+01
	vsub.f64	d16, d16, d15
.Ltmp355:
.LBB3_124:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 394 95                @ /root/Bela/projects/sh-quantizer/render.cpp:394:95
	vmov.f64	d17, #2.500000e-01
	.loc	1 402 8                 @ /root/Bela/projects/sh-quantizer/render.cpp:402:8
	cmp	r9, #0
.Ltmp356:
	.loc	1 397 75                @ /root/Bela/projects/sh-quantizer/render.cpp:397:75
	vmul.f64	d16, d16, d17
	.loc	1 397 41 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:397:41
	vadd.f64	d16, d16, d15
.Ltmp357:
	.loc	1 394 23 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:394:23
	vcvt.f32.f64	s2, d14
.Ltmp358:
	@DEBUG_VALUE: best_interval_lo <- %S2
	.loc	1 397 24                @ /root/Bela/projects/sh-quantizer/render.cpp:397:24
	vcvt.f32.f64	s0, d16
.Ltmp359:
	.loc	1 408 40                @ /root/Bela/projects/sh-quantizer/render.cpp:408:40
	vcmpe.f32	s16, s2
	beq	.LBB3_126
.Ltmp360:
@ BB#125:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: best_interval_lo <- %S2
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vmov.i32	q7, #0x0
.Ltmp361:
	.loc	1 408 40                @ /root/Bela/projects/sh-quantizer/render.cpp:408:40
	vmrs	APSR_nzcv, fpscr
	bge	.LBB3_127
	b	.LBB3_149
.Ltmp362:
.LBB3_126:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: best_interval_lo <- %S2
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vmov.i32	q7, #0x0
.Ltmp363:
	.loc	1 404 40                @ /root/Bela/projects/sh-quantizer/render.cpp:404:40
	vmrs	APSR_nzcv, fpscr
	bge	.LBB3_128
.Ltmp364:
.LBB3_127:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: best_interval_lo <- %S2
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	vcmpe.f32	s16, s0
	vmrs	APSR_nzcv, fpscr
	bgt	.LBB3_149
.Ltmp365:
.LBB3_128:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: best_interval_lo <- %S2
	@DEBUG_VALUE: out_temp <- %R5
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 415 20                @ /root/Bela/projects/sh-quantizer/render.cpp:415:20
	vcvt.s32.f32	d0, d9
	.loc	1 415 35 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:415:35
	ldr	r1, [r7, #36]
.Ltmp366:
	.loc	1 424 54 is_stmt 1 discriminator 2 @ /root/Bela/projects/sh-quantizer/render.cpp:424:54
	ldr	r0, [r7, #44]
.Ltmp367:
	.loc	1 415 35                @ /root/Bela/projects/sh-quantizer/render.cpp:415:35
	add	r1, r1, r9, lsl #2
	.loc	1 415 20 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:415:20
	vmov	r2, s0
	.loc	1 415 28                @ /root/Bela/projects/sh-quantizer/render.cpp:415:28
	add	r2, r2, r2, lsl #1
	lsl	r2, r2, #2
	.loc	1 415 16                @ /root/Bela/projects/sh-quantizer/render.cpp:415:16
	vmov	s0, r2
	vcvt.f32.s32	d16, d0
	.loc	1 415 35                @ /root/Bela/projects/sh-quantizer/render.cpp:415:35
	vldr	s0, [r1]
	.loc	1 415 33                @ /root/Bela/projects/sh-quantizer/render.cpp:415:33
	vadd.f32	d16, d16, d0
	.loc	1 415 16                @ /root/Bela/projects/sh-quantizer/render.cpp:415:16
	vcvt.s32.f32	d0, d16
	vmov	r1, s0
.Ltmp368:
	@DEBUG_VALUE: out_temp <- %R1
	.loc	1 424 49 is_stmt 1 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:424:49
	cmp	r1, r5
	beq	.LBB3_150
.Ltmp369:
@ BB#129:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: best_interval_lo <- %S2
	@DEBUG_VALUE: out_temp <- %R1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	mov	r5, r8
	cmp	r0, #0
	bne	.LBB3_151
.Ltmp370:
.LBB3_130:                              @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: out_temp <- %R1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 427 15                @ /root/Bela/projects/sh-quantizer/render.cpp:427:15
	vcvt.f64.f32	d16, s16
	.loc	1 426 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:426:4
	movw	r0, :lower16:.L.str.1
	movt	r0, :upper16:.L.str.1
	.loc	1 425 13                @ /root/Bela/projects/sh-quantizer/render.cpp:425:13
	str	r1, [r5, #4]
	.loc	1 426 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:426:4
	str	r9, [sp, #8]
	vmov	r2, r3, d16
	.loc	1 427 25                @ /root/Bela/projects/sh-quantizer/render.cpp:427:25
	vcvt.f64.f32	d16, s20
	.loc	1 426 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:426:4
	vstr	d16, [sp, #16]
	vstr	d16, [sp]
	bl	rt_printf
.Ltmp371:
	.loc	1 430 19                @ /root/Bela/projects/sh-quantizer/render.cpp:430:19
	ldr	r0, [r5, #4]
	vmov	s0, r0
.Ltmp372:
	.loc	2 1501 30 discriminator 1 @ ./include/Bela.h:1501:30
	ldr	r0, [r4, #36]
.Ltmp373:
	@DEBUG_VALUE: analogWrite:channel <- 0
	.loc	1 430 19                @ /root/Bela/projects/sh-quantizer/render.cpp:430:19
	vcvt.f32.s32	d0, d0
.Ltmp374:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r0, r10
.Ltmp375:
	@DEBUG_VALUE: analogWrite:context <- %R4
	.loc	1 430 13                @ /root/Bela/projects/sh-quantizer/render.cpp:430:13
	vcvt.f64.f32	d16, s0
	.loc	1 430 29 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:430:29
	vmul.f64	d16, d16, d11
	.loc	1 430 13                @ /root/Bela/projects/sh-quantizer/render.cpp:430:13
	vcvt.f32.f64	s0, d16
.Ltmp376:
	@DEBUG_VALUE: render:out0_v <- %S0
	bls	.LBB3_162
.Ltmp377:
@ BB#131:                               @ %.lr.ph.i128
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: render:out0_v <- %S0
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 431 38 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:431:38
	vldr	s2, .LCPI3_3
.Ltmp378:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	sub	r12, r0, r10
.Ltmp379:
	.loc	1 431 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:431:4
	ldr	lr, [r4, #12]
	mov	r6, r10
	.loc	1 431 38 is_stmt 0      @ /root/Bela/projects/sh-quantizer/render.cpp:431:38
	vmul.f32	d0, d0, d1
.Ltmp380:
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: analogWrite:value <- %S0
	.loc	1 431 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:431:4
	ldr	r3, [r4, #44]
	mov	r9, #0
.Ltmp381:
	.loc	2 1501 2 is_stmt 1 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r12, #4
	blo	.LBB3_137
.Ltmp382:
@ BB#132:                               @ %min.iters.checked289
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:value <- %S0
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	mov	r1, r12
	mov	r6, r10
	bfc	r1, #0, #2
	cmp	r1, #0
	beq	.LBB3_137
.Ltmp383:
@ BB#133:                               @ %vector.scevcheck295
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:value <- %S0
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	mov	r6, r10
	cmp	r3, #1
	bne	.LBB3_137
.Ltmp384:
@ BB#134:                               @ %vector.ph296
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:value <- %S0
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	ldr	r2, [sp, #44]           @ 4-byte Reload
	vdup.32	q8, d0[0]
	add	r6, r10, r1
	add	r5, lr, r10, lsl #2
	add	r2, r0, r2
	bfc	r2, #0, #2
.Ltmp385:
.LBB3_135:                              @ %vector.body285
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vst1.32	{d16, d17}, [r5]!
.Ltmp386:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	subs	r2, r2, #4
	bne	.LBB3_135
@ BB#136:                               @ %middle.block286
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r5, r8
	cmp	r12, r1
	beq	.LBB3_139
.LBB3_137:                              @ %scalar.ph287.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp387:
	.loc	2 1488 27               @ ./include/Bela.h:1488:27
	mul	r2, r6, r3
	sub	r1, r0, r6
	lsl	r3, r3, #2
	add	r2, lr, r2, lsl #2
.LBB3_138:                              @ %scalar.ph287
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1488 67 is_stmt 0     @ ./include/Bela.h:1488:67
	vstr	s0, [r2]
.Ltmp388:
	.loc	2 1501 2 is_stmt 1 discriminator 1 @ ./include/Bela.h:1501:2
	add	r2, r2, r3
	subs	r1, r1, #1
	bne	.LBB3_138
.Ltmp389:
.LBB3_139:                              @ %_ZL11analogWriteP11BelaContextiif.exit130
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 436 14                @ /root/Bela/projects/sh-quantizer/render.cpp:436:14
	mov	r1, #64
.Ltmp390:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r0, r10
.Ltmp391:
	.loc	1 436 14                @ /root/Bela/projects/sh-quantizer/render.cpp:436:14
	str	r1, [r7, #44]
.Ltmp392:
	@DEBUG_VALUE: analogWrite:value <- 1.000000e+00
	@DEBUG_VALUE: analogWrite:channel <- 4
	bls	.LBB3_163
@ BB#140:                               @ %.lr.ph.i121
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp393:
	@DEBUG_VALUE: analogWrite:context <- %R4
	.loc	1 437 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:437:4
	ldr	lr, [r4, #12]
.Ltmp394:
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vmov.f32	q8, #1.000000e+00
.Ltmp395:
	.loc	1 437 4                 @ /root/Bela/projects/sh-quantizer/render.cpp:437:4
	ldr	r2, [r4, #44]
	mov	r6, r10
.Ltmp396:
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	mov	r3, #1065353216
.Ltmp397:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r12, #4
	blo	.LBB3_146
.Ltmp398:
@ BB#141:                               @ %min.iters.checked265
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	mov	r1, r12
	mov	r6, r10
	bfc	r1, #0, #2
	cmp	r1, #0
	beq	.LBB3_146
.Ltmp399:
@ BB#142:                               @ %vector.scevcheck271
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	mov	r6, r10
	cmp	r2, #1
	bne	.LBB3_146
.Ltmp400:
@ BB#143:                               @ %vector.body261.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	ldr	r3, [sp, #40]           @ 4-byte Reload
	add	r6, r10, r1
	add	r5, lr, r3, lsl #2
	ldr	r3, [sp, #44]           @ 4-byte Reload
	add	r3, r0, r3
	bfc	r3, #0, #2
.Ltmp401:
.LBB3_144:                              @ %vector.body261
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vst1.32	{d16, d17}, [r5]!
.Ltmp402:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	subs	r3, r3, #4
	bne	.LBB3_144
@ BB#145:                               @ %middle.block262
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r5, r8
.Ltmp403:
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	mov	r3, #1065353216
.Ltmp404:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r12, r1
	beq	.LBB3_163
.LBB3_146:                              @ %scalar.ph263.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp405:
	.loc	2 1488 27               @ ./include/Bela.h:1488:27
	mul	r1, r6, r2
	sub	r0, r0, r6
	lsl	r2, r2, #2
	add	r1, lr, r1, lsl #2
	add	r1, r1, #16
.LBB3_147:                              @ %scalar.ph263
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1488 67 is_stmt 0     @ ./include/Bela.h:1488:67
	str	r3, [r1], r2
.Ltmp406:
	.loc	2 1501 2 is_stmt 1 discriminator 1 @ ./include/Bela.h:1501:2
	subs	r0, r0, #1
	bne	.LBB3_147
	b	.LBB3_163
.Ltmp407:
	.p2align	2
@ BB#148:
.LCPI3_7:
	.long	1124289153              @ float 131.291031
.LBB3_149:                              @ %_ZL11analogWriteP11BelaContextiif.exit123thread-pre-split
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp408:
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 441 7                 @ /root/Bela/projects/sh-quantizer/render.cpp:441:7
	ldr	r0, [r7, #44]
.Ltmp409:
.LBB3_150:                              @ %_ZL11analogWriteP11BelaContextiif.exit123
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	mov	r5, r8
.Ltmp410:
.LBB3_151:                              @ %_ZL11analogWriteP11BelaContextiif.exit123
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	mov	r9, #0
.Ltmp411:
	.loc	1 441 7 is_stmt 0       @ /root/Bela/projects/sh-quantizer/render.cpp:441:7
	cmp	r0, #0
	beq	.LBB3_164
.Ltmp412:
@ BB#152:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	.loc	1 442 14 is_stmt 1      @ /root/Bela/projects/sh-quantizer/render.cpp:442:14
	subs	r0, r0, #1
	str	r0, [r7, #44]
	bne	.LBB3_164
.Ltmp413:
@ BB#153:                               @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: analogWrite:channel <- 4
	@DEBUG_VALUE: analogWrite:value <- 0.000000e+00
	@DEBUG_VALUE: analogWrite:context <- %R4
	.loc	2 1501 30 discriminator 1 @ ./include/Bela.h:1501:30
	ldr	r0, [r4, #36]
	.loc	2 1501 2 is_stmt 0 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r0, r10
	bls	.LBB3_164
.Ltmp414:
@ BB#154:                               @ %.lr.ph.i
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	.loc	1 444 5 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:444:5
	ldr	r12, [r4, #12]
.Ltmp415:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	sub	r3, r0, r10
.Ltmp416:
	.loc	1 444 5                 @ /root/Bela/projects/sh-quantizer/render.cpp:444:5
	ldr	r1, [r4, #44]
	mov	r6, r10
.Ltmp417:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	cmp	r3, #4
	blo	.LBB3_160
.Ltmp418:
@ BB#155:                               @ %min.iters.checked
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	mov	lr, r3
	mov	r6, r10
	bfc	lr, #0, #2
	cmp	lr, #0
	beq	.LBB3_160
.Ltmp419:
@ BB#156:                               @ %vector.scevcheck
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	mov	r6, r10
	cmp	r1, #1
	bne	.LBB3_160
.Ltmp420:
@ BB#157:                               @ %vector.body.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	ldr	r5, [sp, #44]           @ 4-byte Reload
	add	r6, r10, lr
	ldr	r2, [sp, #40]           @ 4-byte Reload
	add	r5, r0, r5
	add	r2, r12, r2, lsl #2
	bfc	r5, #0, #2
.Ltmp421:
.LBB3_158:                              @ %vector.body
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1488 67               @ ./include/Bela.h:1488:67
	vst1.32	{d14, d15}, [r2]!
.Ltmp422:
	.loc	2 1501 2 discriminator 1 @ ./include/Bela.h:1501:2
	subs	r5, r5, #4
	bne	.LBB3_158
@ BB#159:                               @ %middle.block
                                        @   in Loop: Header=BB3_2 Depth=1
	mov	r5, r8
	cmp	r3, lr
	beq	.LBB3_164
.LBB3_160:                              @ %scalar.ph.preheader
                                        @   in Loop: Header=BB3_2 Depth=1
.Ltmp423:
	.loc	2 1488 27               @ ./include/Bela.h:1488:27
	mul	r2, r6, r1
	sub	r0, r0, r6
	lsl	r1, r1, #2
	add	r2, r12, r2, lsl #2
	add	r2, r2, #16
.LBB3_161:                              @ %scalar.ph
                                        @   Parent Loop BB3_2 Depth=1
                                        @ =>  This Inner Loop Header: Depth=2
	.loc	2 1488 67 is_stmt 0     @ ./include/Bela.h:1488:67
	str	r9, [r2], r1
.Ltmp424:
	.loc	2 1501 2 is_stmt 1 discriminator 1 @ ./include/Bela.h:1501:2
	subs	r0, r0, #1
	bne	.LBB3_161
	b	.LBB3_164
.Ltmp425:
.LBB3_162:                              @ %_ZL11analogWriteP11BelaContextiif.exit130.thread
                                        @   in Loop: Header=BB3_2 Depth=1
	@DEBUG_VALUE: render:out0_v <- %S0
	@DEBUG_VALUE: analogWrite:context <- %R4
	@DEBUG_VALUE: closest_interval <- %S20
	@DEBUG_VALUE: best_interval_index <- %R9
	.loc	1 436 14                @ /root/Bela/projects/sh-quantizer/render.cpp:436:14
	mov	r0, #64
	mov	r9, #0
.Ltmp426:
	str	r0, [r7, #44]
.Ltmp427:
	@DEBUG_VALUE: analogWrite:value <- 1.000000e+00
	@DEBUG_VALUE: analogWrite:channel <- 4
.LBB3_163:                              @ %.thread
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 442 14                @ /root/Bela/projects/sh-quantizer/render.cpp:442:14
	mov	r0, #63
	str	r0, [r7, #44]
.Ltmp428:
.LBB3_164:                              @ %_ZL11analogWriteP11BelaContextiif.exit
                                        @   in Loop: Header=BB3_2 Depth=1
	.loc	1 268 2 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:2
	ldr	r0, [sp, #44]           @ 4-byte Reload
	.loc	1 268 54 is_stmt 0 discriminator 3 @ /root/Bela/projects/sh-quantizer/render.cpp:268:54
	add	r10, r10, #1
.Ltmp429:
	@DEBUG_VALUE: n <- %R10
	ldr	r1, [sp, #40]           @ 4-byte Reload
	.loc	1 268 2 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:2
	sub	r0, r0, #1
	.loc	1 268 39 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:39
	str	r0, [sp, #44]           @ 4-byte Spill
	.loc	1 268 2 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:2
	add	r1, r1, #1
	.loc	1 268 39 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:39
	ldr	r0, [r4, #36]
	.loc	1 268 2 discriminator 1 @ /root/Bela/projects/sh-quantizer/render.cpp:268:2
	cmp	r10, r0
	blo	.LBB3_2
.Ltmp430:
.LBB3_165:                              @ %._crit_edge
	.loc	1 449 1 is_stmt 1       @ /root/Bela/projects/sh-quantizer/render.cpp:449:1
	sub	sp, r11, #96
	vpop	{d8, d9, d10, d11, d12, d13, d14, d15}
	add	sp, sp, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
.Ltmp431:
	.p2align	2
@ BB#166:
.LCPI3_3:
	.long	1045220557              @ float 0.200000003
.Lfunc_end3:
	.size	render, .Lfunc_end3-render
	.cfi_endproc
	.fnend

	.globl	cleanup
	.p2align	2
	.type	cleanup,%function
cleanup:                                @ @cleanup
.Lfunc_begin4:
	.loc	1 452 0                 @ /root/Bela/projects/sh-quantizer/render.cpp:452:0
	.fnstart
	.cfi_startproc
@ BB#0:
	@DEBUG_VALUE: cleanup:context <- %R0
	@DEBUG_VALUE: cleanup:userData <- %R1
	.loc	1 454 1 prologue_end    @ /root/Bela/projects/sh-quantizer/render.cpp:454:1
	bx	lr
.Ltmp432:
.Lfunc_end4:
	.size	cleanup, .Lfunc_end4-cleanup
	.cfi_endproc
	.fnend

	.type	.L.str,%object          @ @.str
	.section	.rodata.str1.1,"aMS",%progbits,1
.L.str:
	.asciz	"Error: this example needs analog enabled, with 4 or 8 channels\n"
	.size	.L.str, 64

	.type	.L.str.1,%object        @ @.str.1
.L.str.1:
	.asciz	"Trigged! out_temp = %d, interval= %f, closest_interval = %f, best_interval_index = %d, threshold = %f\n"
	.size	.L.str.1, 103

	.type	.L_MergedGlobals,%object @ @_MergedGlobals
	.data
	.p2align	4
.L_MergedGlobals:
	.byte	1                       @ 0x1
	.zero	3
	.long	4294967295              @ 0xffffffff
	.long	0                       @ float 0
	.long	1077936128              @ float 3
	.long	1088421888              @ float 7
	.long	1092616192              @ float 10
	.long	0                       @ float 0
	.long	1082130432              @ float 4
	.long	1088421888              @ float 7
	.long	1093664768              @ float 11
	.long	0                       @ float 0
	.long	1073741824              @ float 2
	.long	1082130432              @ float 4
	.long	1084227584              @ float 5
	.long	1088421888              @ float 7
	.long	1091567616              @ float 9
	.long	1093664768              @ float 11
	.long	0                       @ float 0
	.long	1073741824              @ float 2
	.long	1077936128              @ float 3
	.long	1084227584              @ float 5
	.long	1088421888              @ float 7
	.long	1090519040              @ float 8
	.long	1092616192              @ float 10
	.size	.L_MergedGlobals, 96

	.type	.L_MergedGlobals.4,%object @ @_MergedGlobals.4
	.p2align	4
.L_MergedGlobals.4:
	.long	0                       @ float 0
	.long	1065353216              @ float 1
	.long	1077936128              @ float 3
	.long	1082130432              @ float 4
	.long	1086324736              @ float 6
	.long	1088421888              @ float 7
	.long	1091567616              @ float 9
	.long	1092616192              @ float 10
	.long	1093664768              @ float 11
	.long	0                       @ float 0
	.long	1065353216              @ float 1
	.long	1073741824              @ float 2
	.long	1077936128              @ float 3
	.long	1082130432              @ float 4
	.long	1084227584              @ float 5
	.long	1086324736              @ float 6
	.long	1088421888              @ float 7
	.long	1090519040              @ float 8
	.long	1091567616              @ float 9
	.long	1092616192              @ float 10
	.long	1093664768              @ float 11
	.size	.L_MergedGlobals.4, 84

	.type	.L_MergedGlobals.5,%object @ @_MergedGlobals.5
	.local	.L_MergedGlobals.5
	.comm	.L_MergedGlobals.5,96,16
	.section	.debug_str,"MS",%progbits,1
.Linfo_string0:
	.asciz	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)" @ string offset=0
.Linfo_string1:
	.asciz	"/root/Bela/projects/sh-quantizer/build/render.cpp" @ string offset=45
.Linfo_string2:
	.asciz	"/root/Bela"            @ string offset=95
.Linfo_string3:
	.asciz	"in0"                   @ string offset=106
.Linfo_string4:
	.asciz	"float"                 @ string offset=110
.Linfo_string5:
	.asciz	"in0_v"                 @ string offset=116
.Linfo_string6:
	.asciz	"in0_st"                @ string offset=122
.Linfo_string7:
	.asciz	"octave"                @ string offset=129
.Linfo_string8:
	.asciz	"interval"              @ string offset=136
.Linfo_string9:
	.asciz	"in4"                   @ string offset=145
.Linfo_string10:
	.asciz	"gNScales"              @ string offset=149
.Linfo_string11:
	.asciz	"int"                   @ string offset=158
.Linfo_string12:
	.asciz	"gB0Pressed"            @ string offset=162
.Linfo_string13:
	.asciz	"bool"                  @ string offset=173
.Linfo_string14:
	.asciz	"gB0Count"              @ string offset=178
.Linfo_string15:
	.asciz	"gB0JustPressed"        @ string offset=187
.Linfo_string16:
	.asciz	"gB1Pressed"            @ string offset=202
.Linfo_string17:
	.asciz	"gB1Count"              @ string offset=213
.Linfo_string18:
	.asciz	"gB1JustPressed"        @ string offset=222
.Linfo_string19:
	.asciz	"gB2Pressed"            @ string offset=237
.Linfo_string20:
	.asciz	"gB2Count"              @ string offset=248
.Linfo_string21:
	.asciz	"gB2JustPressed"        @ string offset=257
.Linfo_string22:
	.asciz	"gB3Pressed"            @ string offset=272
.Linfo_string23:
	.asciz	"gB3Count"              @ string offset=283
.Linfo_string24:
	.asciz	"gB3JustPressed"        @ string offset=292
.Linfo_string25:
	.asciz	"gAutoTrigModeChanged"  @ string offset=307
.Linfo_string26:
	.asciz	"gAutoTrigMode"         @ string offset=328
.Linfo_string27:
	.asciz	"gArpModeChanged"       @ string offset=342
.Linfo_string28:
	.asciz	"gArpMode"              @ string offset=358
.Linfo_string29:
	.asciz	"gChromaticScale"       @ string offset=367
.Linfo_string30:
	.asciz	"sizetype"              @ string offset=383
.Linfo_string31:
	.asciz	"gScale"                @ string offset=392
.Linfo_string32:
	.asciz	"gChromaticScaleSize"   @ string offset=399
.Linfo_string33:
	.asciz	"gScaleSize"            @ string offset=419
.Linfo_string34:
	.asciz	"gDiminishedScale"      @ string offset=430
.Linfo_string35:
	.asciz	"gDiminishedScaleSize"  @ string offset=447
.Linfo_string36:
	.asciz	"gMajorScale"           @ string offset=468
.Linfo_string37:
	.asciz	"gMajorScaleSize"       @ string offset=480
.Linfo_string38:
	.asciz	"gMinorScale"           @ string offset=496
.Linfo_string39:
	.asciz	"gMinorScaleSize"       @ string offset=508
.Linfo_string40:
	.asciz	"gMinorSeventh"         @ string offset=524
.Linfo_string41:
	.asciz	"gMinorSeventhSize"     @ string offset=538
.Linfo_string42:
	.asciz	"gMajorSeventh"         @ string offset=556
.Linfo_string43:
	.asciz	"gMajorSeventhSize"     @ string offset=570
.Linfo_string44:
	.asciz	"gScaleThresholds"      @ string offset=588
.Linfo_string45:
	.asciz	"gAnalogIn0ToVolt"      @ string offset=605
.Linfo_string46:
	.asciz	"gOut0_st"              @ string offset=622
.Linfo_string47:
	.asciz	"gTrigOut0"             @ string offset=631
.Linfo_string48:
	.asciz	"gVoltsToAnalogOut"     @ string offset=641
.Linfo_string49:
	.asciz	"INPUT"                 @ string offset=659
.Linfo_string50:
	.asciz	"OUTPUT"                @ string offset=665
.Linfo_string51:
	.asciz	"std"                   @ string offset=672
.Linfo_string52:
	.asciz	"__acos_finite"         @ string offset=676
.Linfo_string53:
	.asciz	"acos"                  @ string offset=690
.Linfo_string54:
	.asciz	"double"                @ string offset=695
.Linfo_string55:
	.asciz	"__asin_finite"         @ string offset=702
.Linfo_string56:
	.asciz	"asin"                  @ string offset=716
.Linfo_string57:
	.asciz	"atan"                  @ string offset=721
.Linfo_string58:
	.asciz	"__atan2_finite"        @ string offset=726
.Linfo_string59:
	.asciz	"atan2"                 @ string offset=741
.Linfo_string60:
	.asciz	"ceil"                  @ string offset=747
.Linfo_string61:
	.asciz	"cos"                   @ string offset=752
.Linfo_string62:
	.asciz	"__cosh_finite"         @ string offset=756
.Linfo_string63:
	.asciz	"cosh"                  @ string offset=770
.Linfo_string64:
	.asciz	"__exp_finite"          @ string offset=775
.Linfo_string65:
	.asciz	"exp"                   @ string offset=788
.Linfo_string66:
	.asciz	"fabs"                  @ string offset=792
.Linfo_string67:
	.asciz	"floor"                 @ string offset=797
.Linfo_string68:
	.asciz	"__fmod_finite"         @ string offset=803
.Linfo_string69:
	.asciz	"fmod"                  @ string offset=817
.Linfo_string70:
	.asciz	"frexp"                 @ string offset=822
.Linfo_string71:
	.asciz	"ldexp"                 @ string offset=828
.Linfo_string72:
	.asciz	"__log_finite"          @ string offset=834
.Linfo_string73:
	.asciz	"log"                   @ string offset=847
.Linfo_string74:
	.asciz	"__log10_finite"        @ string offset=851
.Linfo_string75:
	.asciz	"log10"                 @ string offset=866
.Linfo_string76:
	.asciz	"modf"                  @ string offset=872
.Linfo_string77:
	.asciz	"__pow_finite"          @ string offset=877
.Linfo_string78:
	.asciz	"pow"                   @ string offset=890
.Linfo_string79:
	.asciz	"sin"                   @ string offset=894
.Linfo_string80:
	.asciz	"__sinh_finite"         @ string offset=898
.Linfo_string81:
	.asciz	"sinh"                  @ string offset=912
.Linfo_string82:
	.asciz	"__sqrt_finite"         @ string offset=917
.Linfo_string83:
	.asciz	"sqrt"                  @ string offset=931
.Linfo_string84:
	.asciz	"tan"                   @ string offset=936
.Linfo_string85:
	.asciz	"tanh"                  @ string offset=940
.Linfo_string86:
	.asciz	"double_t"              @ string offset=945
.Linfo_string87:
	.asciz	"float_t"               @ string offset=954
.Linfo_string88:
	.asciz	"__acosh_finite"        @ string offset=962
.Linfo_string89:
	.asciz	"acosh"                 @ string offset=977
.Linfo_string90:
	.asciz	"__acoshf_finite"       @ string offset=983
.Linfo_string91:
	.asciz	"acoshf"                @ string offset=999
.Linfo_string92:
	.asciz	"acoshl"                @ string offset=1006
.Linfo_string93:
	.asciz	"long double"           @ string offset=1013
.Linfo_string94:
	.asciz	"asinh"                 @ string offset=1025
.Linfo_string95:
	.asciz	"asinhf"                @ string offset=1031
.Linfo_string96:
	.asciz	"asinhl"                @ string offset=1038
.Linfo_string97:
	.asciz	"__atanh_finite"        @ string offset=1045
.Linfo_string98:
	.asciz	"atanh"                 @ string offset=1060
.Linfo_string99:
	.asciz	"__atanhf_finite"       @ string offset=1066
.Linfo_string100:
	.asciz	"atanhf"                @ string offset=1082
.Linfo_string101:
	.asciz	"atanhl"                @ string offset=1089
.Linfo_string102:
	.asciz	"cbrt"                  @ string offset=1096
.Linfo_string103:
	.asciz	"cbrtf"                 @ string offset=1101
.Linfo_string104:
	.asciz	"cbrtl"                 @ string offset=1107
.Linfo_string105:
	.asciz	"copysign"              @ string offset=1113
.Linfo_string106:
	.asciz	"copysignf"             @ string offset=1122
.Linfo_string107:
	.asciz	"copysignl"             @ string offset=1132
.Linfo_string108:
	.asciz	"erf"                   @ string offset=1142
.Linfo_string109:
	.asciz	"erff"                  @ string offset=1146
.Linfo_string110:
	.asciz	"erfl"                  @ string offset=1151
.Linfo_string111:
	.asciz	"erfc"                  @ string offset=1156
.Linfo_string112:
	.asciz	"erfcf"                 @ string offset=1161
.Linfo_string113:
	.asciz	"erfcl"                 @ string offset=1167
.Linfo_string114:
	.asciz	"__exp2_finite"         @ string offset=1173
.Linfo_string115:
	.asciz	"exp2"                  @ string offset=1187
.Linfo_string116:
	.asciz	"__exp2f_finite"        @ string offset=1192
.Linfo_string117:
	.asciz	"exp2f"                 @ string offset=1207
.Linfo_string118:
	.asciz	"exp2l"                 @ string offset=1213
.Linfo_string119:
	.asciz	"expm1"                 @ string offset=1219
.Linfo_string120:
	.asciz	"expm1f"                @ string offset=1225
.Linfo_string121:
	.asciz	"expm1l"                @ string offset=1232
.Linfo_string122:
	.asciz	"fdim"                  @ string offset=1239
.Linfo_string123:
	.asciz	"fdimf"                 @ string offset=1244
.Linfo_string124:
	.asciz	"fdiml"                 @ string offset=1250
.Linfo_string125:
	.asciz	"fma"                   @ string offset=1256
.Linfo_string126:
	.asciz	"fmaf"                  @ string offset=1260
.Linfo_string127:
	.asciz	"fmal"                  @ string offset=1265
.Linfo_string128:
	.asciz	"fmax"                  @ string offset=1270
.Linfo_string129:
	.asciz	"fmaxf"                 @ string offset=1275
.Linfo_string130:
	.asciz	"fmaxl"                 @ string offset=1281
.Linfo_string131:
	.asciz	"fmin"                  @ string offset=1287
.Linfo_string132:
	.asciz	"fminf"                 @ string offset=1292
.Linfo_string133:
	.asciz	"fminl"                 @ string offset=1298
.Linfo_string134:
	.asciz	"__hypot_finite"        @ string offset=1304
.Linfo_string135:
	.asciz	"hypot"                 @ string offset=1319
.Linfo_string136:
	.asciz	"__hypotf_finite"       @ string offset=1325
.Linfo_string137:
	.asciz	"hypotf"                @ string offset=1341
.Linfo_string138:
	.asciz	"hypotl"                @ string offset=1348
.Linfo_string139:
	.asciz	"ilogb"                 @ string offset=1355
.Linfo_string140:
	.asciz	"ilogbf"                @ string offset=1361
.Linfo_string141:
	.asciz	"ilogbl"                @ string offset=1368
.Linfo_string142:
	.asciz	"lgamma"                @ string offset=1375
.Linfo_string143:
	.asciz	"lgammaf"               @ string offset=1382
.Linfo_string144:
	.asciz	"lgammal"               @ string offset=1390
.Linfo_string145:
	.asciz	"llrint"                @ string offset=1398
.Linfo_string146:
	.asciz	"long long int"         @ string offset=1405
.Linfo_string147:
	.asciz	"llrintf"               @ string offset=1419
.Linfo_string148:
	.asciz	"llrintl"               @ string offset=1427
.Linfo_string149:
	.asciz	"llround"               @ string offset=1435
.Linfo_string150:
	.asciz	"llroundf"              @ string offset=1443
.Linfo_string151:
	.asciz	"llroundl"              @ string offset=1452
.Linfo_string152:
	.asciz	"log1p"                 @ string offset=1461
.Linfo_string153:
	.asciz	"log1pf"                @ string offset=1467
.Linfo_string154:
	.asciz	"log1pl"                @ string offset=1474
.Linfo_string155:
	.asciz	"__log2_finite"         @ string offset=1481
.Linfo_string156:
	.asciz	"log2"                  @ string offset=1495
.Linfo_string157:
	.asciz	"__log2f_finite"        @ string offset=1500
.Linfo_string158:
	.asciz	"log2f"                 @ string offset=1515
.Linfo_string159:
	.asciz	"log2l"                 @ string offset=1521
.Linfo_string160:
	.asciz	"logb"                  @ string offset=1527
.Linfo_string161:
	.asciz	"logbf"                 @ string offset=1532
.Linfo_string162:
	.asciz	"logbl"                 @ string offset=1538
.Linfo_string163:
	.asciz	"lrint"                 @ string offset=1544
.Linfo_string164:
	.asciz	"long int"              @ string offset=1550
.Linfo_string165:
	.asciz	"lrintf"                @ string offset=1559
.Linfo_string166:
	.asciz	"lrintl"                @ string offset=1566
.Linfo_string167:
	.asciz	"lround"                @ string offset=1573
.Linfo_string168:
	.asciz	"lroundf"               @ string offset=1580
.Linfo_string169:
	.asciz	"lroundl"               @ string offset=1588
.Linfo_string170:
	.asciz	"nan"                   @ string offset=1596
.Linfo_string171:
	.asciz	"char"                  @ string offset=1600
.Linfo_string172:
	.asciz	"nanf"                  @ string offset=1605
.Linfo_string173:
	.asciz	"nanl"                  @ string offset=1610
.Linfo_string174:
	.asciz	"nearbyint"             @ string offset=1615
.Linfo_string175:
	.asciz	"nearbyintf"            @ string offset=1625
.Linfo_string176:
	.asciz	"nearbyintl"            @ string offset=1636
.Linfo_string177:
	.asciz	"nextafter"             @ string offset=1647
.Linfo_string178:
	.asciz	"nextafterf"            @ string offset=1657
.Linfo_string179:
	.asciz	"nextafterl"            @ string offset=1668
.Linfo_string180:
	.asciz	"nexttoward"            @ string offset=1679
.Linfo_string181:
	.asciz	"nexttowardf"           @ string offset=1690
.Linfo_string182:
	.asciz	"nexttowardl"           @ string offset=1702
.Linfo_string183:
	.asciz	"__remainder_finite"    @ string offset=1714
.Linfo_string184:
	.asciz	"remainder"             @ string offset=1733
.Linfo_string185:
	.asciz	"__remainderf_finite"   @ string offset=1743
.Linfo_string186:
	.asciz	"remainderf"            @ string offset=1763
.Linfo_string187:
	.asciz	"remainderl"            @ string offset=1774
.Linfo_string188:
	.asciz	"remquo"                @ string offset=1785
.Linfo_string189:
	.asciz	"remquof"               @ string offset=1792
.Linfo_string190:
	.asciz	"remquol"               @ string offset=1800
.Linfo_string191:
	.asciz	"rint"                  @ string offset=1808
.Linfo_string192:
	.asciz	"rintf"                 @ string offset=1813
.Linfo_string193:
	.asciz	"rintl"                 @ string offset=1819
.Linfo_string194:
	.asciz	"round"                 @ string offset=1825
.Linfo_string195:
	.asciz	"roundf"                @ string offset=1831
.Linfo_string196:
	.asciz	"roundl"                @ string offset=1838
.Linfo_string197:
	.asciz	"scalbln"               @ string offset=1845
.Linfo_string198:
	.asciz	"scalblnf"              @ string offset=1853
.Linfo_string199:
	.asciz	"scalblnl"              @ string offset=1862
.Linfo_string200:
	.asciz	"scalbn"                @ string offset=1871
.Linfo_string201:
	.asciz	"scalbnf"               @ string offset=1878
.Linfo_string202:
	.asciz	"scalbnl"               @ string offset=1886
.Linfo_string203:
	.asciz	"tgamma"                @ string offset=1894
.Linfo_string204:
	.asciz	"tgammaf"               @ string offset=1901
.Linfo_string205:
	.asciz	"tgammal"               @ string offset=1909
.Linfo_string206:
	.asciz	"trunc"                 @ string offset=1917
.Linfo_string207:
	.asciz	"truncf"                @ string offset=1923
.Linfo_string208:
	.asciz	"truncl"                @ string offset=1930
.Linfo_string209:
	.asciz	"_ZL7pinModeP11BelaContextiii" @ string offset=1937
.Linfo_string210:
	.asciz	"pinMode"               @ string offset=1966
.Linfo_string211:
	.asciz	"context"               @ string offset=1974
.Linfo_string212:
	.asciz	"audioIn"               @ string offset=1982
.Linfo_string213:
	.asciz	"audioOut"              @ string offset=1990
.Linfo_string214:
	.asciz	"analogIn"              @ string offset=1999
.Linfo_string215:
	.asciz	"analogOut"             @ string offset=2008
.Linfo_string216:
	.asciz	"digital"               @ string offset=2018
.Linfo_string217:
	.asciz	"unsigned int"          @ string offset=2026
.Linfo_string218:
	.asciz	"uint32_t"              @ string offset=2039
.Linfo_string219:
	.asciz	"audioFrames"           @ string offset=2048
.Linfo_string220:
	.asciz	"audioInChannels"       @ string offset=2060
.Linfo_string221:
	.asciz	"audioOutChannels"      @ string offset=2076
.Linfo_string222:
	.asciz	"audioSampleRate"       @ string offset=2093
.Linfo_string223:
	.asciz	"analogFrames"          @ string offset=2109
.Linfo_string224:
	.asciz	"analogInChannels"      @ string offset=2122
.Linfo_string225:
	.asciz	"analogOutChannels"     @ string offset=2139
.Linfo_string226:
	.asciz	"analogSampleRate"      @ string offset=2157
.Linfo_string227:
	.asciz	"digitalFrames"         @ string offset=2174
.Linfo_string228:
	.asciz	"digitalChannels"       @ string offset=2188
.Linfo_string229:
	.asciz	"digitalSampleRate"     @ string offset=2204
.Linfo_string230:
	.asciz	"audioFramesElapsed"    @ string offset=2222
.Linfo_string231:
	.asciz	"long long unsigned int" @ string offset=2241
.Linfo_string232:
	.asciz	"uint64_t"              @ string offset=2264
.Linfo_string233:
	.asciz	"multiplexerChannels"   @ string offset=2273
.Linfo_string234:
	.asciz	"multiplexerStartingChannel" @ string offset=2293
.Linfo_string235:
	.asciz	"multiplexerAnalogIn"   @ string offset=2320
.Linfo_string236:
	.asciz	"audioExpanderEnabled"  @ string offset=2340
.Linfo_string237:
	.asciz	"flags"                 @ string offset=2361
.Linfo_string238:
	.asciz	"projectName"           @ string offset=2367
.Linfo_string239:
	.asciz	"underrunCount"         @ string offset=2379
.Linfo_string240:
	.asciz	"BelaContext"           @ string offset=2393
.Linfo_string241:
	.asciz	"frame"                 @ string offset=2405
.Linfo_string242:
	.asciz	"channel"               @ string offset=2411
.Linfo_string243:
	.asciz	"mode"                  @ string offset=2419
.Linfo_string244:
	.asciz	"f"                     @ string offset=2424
.Linfo_string245:
	.asciz	"_Z17circular_distancefff" @ string offset=2426
.Linfo_string246:
	.asciz	"circular_distance"     @ string offset=2451
.Linfo_string247:
	.asciz	"a"                     @ string offset=2469
.Linfo_string248:
	.asciz	"b"                     @ string offset=2471
.Linfo_string249:
	.asciz	"max_value"             @ string offset=2473
.Linfo_string250:
	.asciz	"direct"                @ string offset=2483
.Linfo_string251:
	.asciz	"wrap"                  @ string offset=2490
.Linfo_string252:
	.asciz	"_ZL15analogWriteOnceP11BelaContextiif" @ string offset=2495
.Linfo_string253:
	.asciz	"analogWriteOnce"       @ string offset=2533
.Linfo_string254:
	.asciz	"value"                 @ string offset=2549
.Linfo_string255:
	.asciz	"_ZL11analogWriteP11BelaContextiif" @ string offset=2555
.Linfo_string256:
	.asciz	"analogWrite"           @ string offset=2589
.Linfo_string257:
	.asciz	"_ZL8debouncebPVbPVi"   @ string offset=2601
.Linfo_string258:
	.asciz	"debounce"              @ string offset=2621
.Linfo_string259:
	.asciz	"status"                @ string offset=2630
.Linfo_string260:
	.asciz	"pressed"               @ string offset=2637
.Linfo_string261:
	.asciz	"count"                 @ string offset=2645
.Linfo_string262:
	.asciz	"changed"               @ string offset=2651
.Linfo_string263:
	.asciz	"_ZL12digitalWriteP11BelaContextiii" @ string offset=2659
.Linfo_string264:
	.asciz	"digitalWrite"          @ string offset=2694
.Linfo_string265:
	.asciz	"_ZL11digitalReadP11BelaContextii" @ string offset=2707
.Linfo_string266:
	.asciz	"digitalRead"           @ string offset=2740
.Linfo_string267:
	.asciz	"_ZL3mapfffff"          @ string offset=2752
.Linfo_string268:
	.asciz	"map"                   @ string offset=2765
.Linfo_string269:
	.asciz	"x"                     @ string offset=2769
.Linfo_string270:
	.asciz	"in_min"                @ string offset=2771
.Linfo_string271:
	.asciz	"in_max"                @ string offset=2778
.Linfo_string272:
	.asciz	"out_min"               @ string offset=2785
.Linfo_string273:
	.asciz	"out_max"               @ string offset=2793
.Linfo_string274:
	.asciz	"_ZL10analogReadP11BelaContextii" @ string offset=2801
.Linfo_string275:
	.asciz	"analogRead"            @ string offset=2833
.Linfo_string276:
	.asciz	"_Z21binary_search_closestPKfif" @ string offset=2844
.Linfo_string277:
	.asciz	"binary_search_closest" @ string offset=2875
.Linfo_string278:
	.asciz	"arr"                   @ string offset=2897
.Linfo_string279:
	.asciz	"size"                  @ string offset=2901
.Linfo_string280:
	.asciz	"target"                @ string offset=2906
.Linfo_string281:
	.asciz	"low"                   @ string offset=2913
.Linfo_string282:
	.asciz	"mid"                   @ string offset=2917
.Linfo_string283:
	.asciz	"best_idx"              @ string offset=2921
.Linfo_string284:
	.asciz	"high"                  @ string offset=2930
.Linfo_string285:
	.asciz	"d1"                    @ string offset=2935
.Linfo_string286:
	.asciz	"d2"                    @ string offset=2938
.Linfo_string287:
	.asciz	"setup"                 @ string offset=2941
.Linfo_string288:
	.asciz	"render"                @ string offset=2947
.Linfo_string289:
	.asciz	"cleanup"               @ string offset=2954
.Linfo_string290:
	.asciz	"userData"              @ string offset=2962
.Linfo_string291:
	.asciz	"n"                     @ string offset=2971
.Linfo_string292:
	.asciz	"in4_map"               @ string offset=2973
.Linfo_string293:
	.asciz	"i"                     @ string offset=2981
.Linfo_string294:
	.asciz	"best_interval_index"   @ string offset=2983
.Linfo_string295:
	.asciz	"closest_interval"      @ string offset=3003
.Linfo_string296:
	.asciz	"out_temp"              @ string offset=3020
.Linfo_string297:
	.asciz	"update"                @ string offset=3029
.Linfo_string298:
	.asciz	"best_interval_lo"      @ string offset=3036
.Linfo_string299:
	.asciz	"out0_v"                @ string offset=3053
.Linfo_string300:
	.asciz	"best_interval_hi"      @ string offset=3060
.Linfo_string301:
	.asciz	"indexlo"               @ string offset=3077
.Linfo_string302:
	.asciz	"indexhi"               @ string offset=3085
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp0-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Ltmp9-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	92                      @ DW_OP_reg12
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	92                      @ DW_OP_reg12
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp2-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp17-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp19-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp19-.Lfunc_begin0
	.long	.Ltmp22-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp20-.Lfunc_begin0
	.long	.Ltmp24-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp24-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp25-.Lfunc_begin0
	.long	.Ltmp29-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp29-.Lfunc_begin0
	.long	.Ltmp32-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp30-.Lfunc_begin0
	.long	.Ltmp34-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp34-.Lfunc_begin0
	.long	.Ltmp37-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp35-.Lfunc_begin0
	.long	.Ltmp39-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp39-.Lfunc_begin0
	.long	.Ltmp42-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp40-.Lfunc_begin0
	.long	.Ltmp44-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp44-.Lfunc_begin0
	.long	.Ltmp47-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp45-.Lfunc_begin0
	.long	.Ltmp49-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp49-.Lfunc_begin0
	.long	.Ltmp52-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp50-.Lfunc_begin0
	.long	.Ltmp54-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp54-.Lfunc_begin0
	.long	.Ltmp58-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Ltmp55-.Lfunc_begin0
	.long	.Ltmp60-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp60-.Lfunc_begin0
	.long	.Ltmp61-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp64-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp63-.Lfunc_begin0
	.short	8                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_constu
	.byte	16                      @ 32
	.byte	32                      @ DW_OP_shr
	.byte	37                      @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp63-.Lfunc_begin0
	.long	.Lfunc_end1-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	130                     @ 258
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin1-.Lfunc_begin0
	.long	.Ltmp65-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	129                     @ 257
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp78-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp78-.Lfunc_begin0
	.long	.Ltmp83-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp77-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp77-.Lfunc_begin0
	.long	.Ltmp83-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	0
	.long	0
.Ldebug_loc17:
	.long	.Lfunc_begin2-.Lfunc_begin0
	.long	.Ltmp76-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp76-.Lfunc_begin0
	.long	.Ltmp83-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Ltmp78-.Lfunc_begin0
	.long	.Ltmp88-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	17                      @ DW_OP_consts
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp88-.Lfunc_begin0
	.long	.Ltmp89-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc19:
	.long	.Ltmp82-.Lfunc_begin0
	.long	.Ltmp83-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Ltmp85-.Lfunc_begin0
	.long	.Ltmp92-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc21:
	.long	.Ltmp92-.Lfunc_begin0
	.long	.Ltmp97-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Ltmp94-.Lfunc_begin0
	.long	.Lfunc_end2-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1094713344
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	138                     @ 
	.byte	4                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp118-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	.Ltmp118-.Lfunc_begin0
	.long	.Ltmp129-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Lfunc_begin3-.Lfunc_begin0
	.long	.Ltmp127-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc25:
	.long	.Ltmp118-.Lfunc_begin0
	.long	.Ltmp429-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp429-.Lfunc_begin0
	.long	.Ltmp430-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	90                      @ DW_OP_reg10
	.long	0
	.long	0
.Ldebug_loc26:
	.long	.Ltmp129-.Lfunc_begin0
	.long	.Ltmp159-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	90                      @ DW_OP_reg10
	.long	.Ltmp162-.Lfunc_begin0
	.long	.Ltmp163-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	90                      @ DW_OP_reg10
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Ltmp132-.Lfunc_begin0
	.long	.Ltmp159-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	87                      @ DW_OP_reg7
	.long	.Ltmp162-.Lfunc_begin0
	.long	.Ltmp163-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	87                      @ DW_OP_reg7
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Ltmp132-.Lfunc_begin0
	.long	.Ltmp153-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp153-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	1                       @ 1
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc29:
	.long	.Ltmp155-.Lfunc_begin0
	.long	.Ltmp159-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	.Ltmp162-.Lfunc_begin0
	.long	.Ltmp163-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Ltmp161-.Lfunc_begin0
	.long	.Ltmp162-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp165-.Lfunc_begin0
	.long	.Ltmp166-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc31:
	.long	.Ltmp167-.Lfunc_begin0
	.long	.Ltmp177-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp177-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	1                       @ 1
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Ltmp187-.Lfunc_begin0
	.long	.Ltmp189-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp192-.Lfunc_begin0
	.long	.Ltmp193-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc33:
	.long	.Ltmp188-.Lfunc_begin0
	.long	.Ltmp189-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc34:
	.long	.Ltmp194-.Lfunc_begin0
	.long	.Ltmp204-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp204-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	1                       @ 1
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc35:
	.long	.Ltmp215-.Lfunc_begin0
	.long	.Ltmp217-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	.Ltmp220-.Lfunc_begin0
	.long	.Ltmp221-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	83                      @ DW_OP_reg3
	.long	0
	.long	0
.Ldebug_loc36:
	.long	.Ltmp216-.Lfunc_begin0
	.long	.Ltmp217-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc37:
	.long	.Ltmp222-.Lfunc_begin0
	.long	.Ltmp232-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp232-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	1                       @ 1
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc38:
	.long	.Ltmp242-.Lfunc_begin0
	.long	.Ltmp244-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	.Ltmp247-.Lfunc_begin0
	.long	.Ltmp248-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc39:
	.long	.Ltmp243-.Lfunc_begin0
	.long	.Ltmp244-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc40:
	.long	.Ltmp257-.Lfunc_begin0
	.long	.Ltmp259-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	.Ltmp262-.Lfunc_begin0
	.long	.Ltmp263-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc41:
	.long	.Ltmp258-.Lfunc_begin0
	.long	.Ltmp259-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc42:
	.long	.Ltmp273-.Lfunc_begin0
	.long	.Ltmp275-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp278-.Lfunc_begin0
	.long	.Ltmp279-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc43:
	.long	.Ltmp274-.Lfunc_begin0
	.long	.Ltmp275-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc44:
	.long	.Ltmp282-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1086324736
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	134                     @ 
	.byte	4                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc45:
	.long	.Ltmp282-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc46:
	.long	.Ltmp282-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1065353216
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	252                     @ 
	.byte	3                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc47:
	.long	.Ltmp282-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc48:
	.long	.Ltmp285-.Lfunc_begin0
	.long	.Ltmp287-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp289-.Lfunc_begin0
	.long	.Ltmp290-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc49:
	.long	.Ltmp293-.Lfunc_begin0
	.long	.Ltmp300-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	86                      @ DW_OP_reg6
	.long	0
	.long	0
.Ldebug_loc50:
	.long	.Ltmp302-.Lfunc_begin0
	.long	.Ltmp304-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc51:
	.long	.Ltmp313-.Lfunc_begin0
	.long	.Ltmp315-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	82                      @ DW_OP_reg2
	.long	0
	.long	0
.Ldebug_loc52:
	.long	.Ltmp321-.Lfunc_begin0
	.long	.Ltmp329-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	17                      @ DW_OP_consts
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp329-.Lfunc_begin0
	.long	.Ltmp330-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	89                      @ DW_OP_reg9
	.long	0
	.long	0
.Ldebug_loc53:
	.long	.Ltmp321-.Lfunc_begin0
	.long	.Ltmp340-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	17                      @ DW_OP_consts
	.byte	127                     @ -1
	.byte	159                     @ DW_OP_stack_value
	.long	.Ltmp340-.Lfunc_begin0
	.long	.Ltmp381-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	89                      @ DW_OP_reg9
	.long	.Ltmp408-.Lfunc_begin0
	.long	.Ltmp411-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	89                      @ DW_OP_reg9
	.long	.Ltmp425-.Lfunc_begin0
	.long	.Ltmp426-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	89                      @ DW_OP_reg9
	.long	0
	.long	0
.Ldebug_loc54:
	.long	.Ltmp321-.Lfunc_begin0
	.long	.Ltmp324-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc55:
	.long	.Ltmp321-.Lfunc_begin0
	.long	.Ltmp324-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	136                     @ 264
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc56:
	.long	.Ltmp326-.Lfunc_begin0
	.long	.Ltmp333-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc57:
	.long	.Ltmp333-.Lfunc_begin0
	.long	.Ltmp340-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	80                      @ DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc58:
	.long	.Ltmp335-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1094713344
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	138                     @ 
	.byte	4                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc59:
	.long	.Ltmp343-.Lfunc_begin0
	.long	.Ltmp385-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	138                     @ 266
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp408-.Lfunc_begin0
	.long	.Ltmp421-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	138                     @ 266
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp425-.Lfunc_begin0
	.long	.Ltmp427-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	138                     @ 266
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc60:
	.long	.Ltmp346-.Lfunc_begin0
	.long	.Ltmp349-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	.Ltmp353-.Lfunc_begin0
	.long	.Ltmp354-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	.Ltmp354-.Lfunc_begin0
	.long	.Ltmp368-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	85                      @ DW_OP_reg5
	.long	.Ltmp368-.Lfunc_begin0
	.long	.Ltmp371-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	81                      @ DW_OP_reg1
	.long	0
	.long	0
.Ldebug_loc61:
	.long	.Ltmp358-.Lfunc_begin0
	.long	.Ltmp370-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	129                     @ 257
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc62:
	.long	.Ltmp375-.Lfunc_begin0
	.long	.Ltmp385-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	.Ltmp425-.Lfunc_begin0
	.long	.Ltmp427-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc63:
	.long	.Ltmp376-.Lfunc_begin0
	.long	.Ltmp380-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	.Ltmp425-.Lfunc_begin0
	.long	.Ltmp427-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc64:
	.long	.Ltmp380-.Lfunc_begin0
	.long	.Ltmp385-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	.Ltmp393-.Lfunc_begin0
	.long	.Ltmp401-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
.Ldebug_loc65:
	.long	.Ltmp380-.Lfunc_begin0
	.long	.Ltmp385-.Lfunc_begin0
	.short	5                       @ Loc expr size
	.byte	144                     @ super-register DW_OP_regx
	.byte	128                     @ 256
	.byte	2                       @ DW_OP_piece
	.byte	147                     @ 4
	.byte	4                       @ 
	.long	0
	.long	0
.Ldebug_loc66:
	.long	.Ltmp392-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	7                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	128                     @ 1065353216
	.byte	128                     @ DW_OP_stack_value
	.byte	128                     @ 
	.byte	252                     @ 
	.byte	3                       @ 
	.byte	159                     @ 
	.long	0
	.long	0
.Ldebug_loc67:
	.long	.Ltmp413-.Lfunc_begin0
	.long	.Lfunc_end3-.Lfunc_begin0
	.short	3                       @ Loc expr size
	.byte	16                      @ DW_OP_constu
	.byte	0                       @ 0
	.byte	159                     @ DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc68:
	.long	.Ltmp413-.Lfunc_begin0
	.long	.Ltmp421-.Lfunc_begin0
	.short	1                       @ Loc expr size
	.byte	84                      @ DW_OP_reg4
	.long	0
	.long	0
	.section	.debug_abbrev,"",%progbits
.Lsection_abbrev:
	.byte	1                       @ Abbreviation Code
	.byte	17                      @ DW_TAG_compile_unit
	.byte	1                       @ DW_CHILDREN_yes
	.byte	37                      @ DW_AT_producer
	.byte	14                      @ DW_FORM_strp
	.byte	19                      @ DW_AT_language
	.byte	5                       @ DW_FORM_data2
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	16                      @ DW_AT_stmt_list
	.byte	23                      @ DW_FORM_sec_offset
	.byte	27                      @ DW_AT_comp_dir
	.byte	14                      @ DW_FORM_strp
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	2                       @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	3                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	4                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	5                       @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	6                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	7                       @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	8                       @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	9                       @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	10                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	11                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	12                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	13                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	14                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	15                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	16                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	28                      @ DW_AT_const_value
	.byte	15                      @ DW_FORM_udata
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	17                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.ascii	"\266B"                 @ DW_AT_GNU_discriminator
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	18                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	19                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	20                      @ Abbreviation Code
	.byte	38                      @ DW_TAG_const_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	21                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	22                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	23                      @ Abbreviation Code
	.byte	1                       @ DW_TAG_array_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	24                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	25                      @ Abbreviation Code
	.byte	36                      @ DW_TAG_base_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	62                      @ DW_AT_encoding
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	26                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	27                      @ Abbreviation Code
	.byte	4                       @ DW_TAG_enumeration_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	11                      @ DW_FORM_data1
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	28                      @ Abbreviation Code
	.byte	40                      @ DW_TAG_enumerator
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	28                      @ DW_AT_const_value
	.byte	13                      @ DW_FORM_sdata
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	29                      @ Abbreviation Code
	.byte	57                      @ DW_TAG_namespace
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	30                      @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	31                      @ Abbreviation Code
	.byte	8                       @ DW_TAG_imported_declaration
	.byte	0                       @ DW_CHILDREN_no
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	24                      @ DW_AT_import
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	32                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	33                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	34                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	35                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	36                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	37                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	60                      @ DW_AT_declaration
	.byte	25                      @ DW_FORM_flag_present
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	38                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	39                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	40                      @ Abbreviation Code
	.byte	22                      @ DW_TAG_typedef
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	41                      @ Abbreviation Code
	.byte	19                      @ DW_TAG_structure_type
	.byte	1                       @ DW_CHILDREN_yes
	.byte	11                      @ DW_AT_byte_size
	.byte	5                       @ DW_FORM_data2
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	42                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	43                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	56                      @ DW_AT_data_member_location
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	44                      @ Abbreviation Code
	.byte	13                      @ DW_TAG_member
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	56                      @ DW_AT_data_member_location
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	45                      @ Abbreviation Code
	.byte	33                      @ DW_TAG_subrange_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	55                      @ DW_AT_count
	.byte	5                       @ DW_FORM_data2
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	46                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	47                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	23                      @ DW_FORM_sec_offset
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	48                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	85                      @ DW_AT_ranges
	.byte	23                      @ DW_FORM_sec_offset
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	49                      @ Abbreviation Code
	.byte	29                      @ DW_TAG_inlined_subroutine
	.byte	1                       @ DW_CHILDREN_yes
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	88                      @ DW_AT_call_file
	.byte	11                      @ DW_FORM_data1
	.byte	89                      @ DW_AT_call_line
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	50                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	17                      @ DW_AT_low_pc
	.byte	1                       @ DW_FORM_addr
	.byte	18                      @ DW_AT_high_pc
	.byte	6                       @ DW_FORM_data4
	.byte	64                      @ DW_AT_frame_base
	.byte	24                      @ DW_FORM_exprloc
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	51                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	49                      @ DW_AT_abstract_origin
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	52                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	63                      @ DW_AT_external
	.byte	25                      @ DW_FORM_flag_present
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	53                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	54                      @ Abbreviation Code
	.byte	52                      @ DW_TAG_variable
	.byte	0                       @ DW_CHILDREN_no
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	55                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	11                      @ DW_FORM_data1
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	56                      @ Abbreviation Code
	.byte	53                      @ DW_TAG_volatile_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	57                      @ Abbreviation Code
	.byte	46                      @ DW_TAG_subprogram
	.byte	1                       @ DW_CHILDREN_yes
	.byte	110                     @ DW_AT_linkage_name
	.byte	14                      @ DW_FORM_strp
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	32                      @ DW_AT_inline
	.byte	11                      @ DW_FORM_data1
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	58                      @ Abbreviation Code
	.byte	11                      @ DW_TAG_lexical_block
	.byte	1                       @ DW_CHILDREN_yes
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	59                      @ Abbreviation Code
	.byte	5                       @ DW_TAG_formal_parameter
	.byte	0                       @ DW_CHILDREN_no
	.byte	2                       @ DW_AT_location
	.byte	24                      @ DW_FORM_exprloc
	.byte	3                       @ DW_AT_name
	.byte	14                      @ DW_FORM_strp
	.byte	58                      @ DW_AT_decl_file
	.byte	11                      @ DW_FORM_data1
	.byte	59                      @ DW_AT_decl_line
	.byte	5                       @ DW_FORM_data2
	.byte	73                      @ DW_AT_type
	.byte	19                      @ DW_FORM_ref4
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	60                      @ Abbreviation Code
	.byte	15                      @ DW_TAG_pointer_type
	.byte	0                       @ DW_CHILDREN_no
	.byte	0                       @ EOM(1)
	.byte	0                       @ EOM(2)
	.byte	0                       @ EOM(3)
	.section	.debug_info,"",%progbits
.Lsection_info:
.Lcu_begin0:
	.long	7326                    @ Length of Unit
	.short	4                       @ DWARF version number
	.long	.Lsection_abbrev        @ Offset Into Abbrev. Section
	.byte	4                       @ Address Size (in bytes)
	.byte	1                       @ Abbrev [1] 0xb:0x1c97 DW_TAG_compile_unit
	.long	.Linfo_string0          @ DW_AT_producer
	.short	4                       @ DW_AT_language
	.long	.Linfo_string1          @ DW_AT_name
	.long	.Lline_table_start0     @ DW_AT_stmt_list
	.long	.Linfo_string2          @ DW_AT_comp_dir
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	2                       @ Abbrev [2] 0x26:0x442 DW_TAG_subprogram
	.long	.Lfunc_begin3           @ DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string288        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	3                       @ Abbrev [3] 0x38:0xc DW_TAG_variable
	.long	.Linfo_string3          @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	3                       @ Abbrev [3] 0x44:0xc DW_TAG_variable
	.long	.Linfo_string5          @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	4                       @ Abbrev [4] 0x50:0x15 DW_TAG_variable
	.long	.Linfo_string6          @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	8
	.byte	34
	.byte	4                       @ Abbrev [4] 0x65:0x15 DW_TAG_variable
	.long	.Linfo_string7          @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	12
	.byte	34
	.byte	4                       @ Abbrev [4] 0x7a:0x15 DW_TAG_variable
	.long	.Linfo_string8          @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	16
	.byte	34
	.byte	3                       @ Abbrev [3] 0x8f:0xc DW_TAG_variable
	.long	.Linfo_string9          @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.short	263                     @ DW_AT_decl_line
	.byte	5                       @ Abbrev [5] 0x9b:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc23           @ DW_AT_location
	.long	.Linfo_string211        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	5                       @ Abbrev [5] 0xab:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc24           @ DW_AT_location
	.long	.Linfo_string290        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	7328                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xbb:0x10 DW_TAG_variable
	.long	.Ldebug_loc48           @ DW_AT_location
	.long	.Linfo_string292        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	264                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0xcb:0x10 DW_TAG_variable
	.long	.Ldebug_loc63           @ DW_AT_location
	.long	.Linfo_string299        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	265                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0xdb:0xc DW_TAG_variable
	.long	.Linfo_string259        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	266                     @ DW_AT_decl_line
	.long	1179                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0xe7:0x380 DW_TAG_lexical_block
	.long	.Ltmp118                @ DW_AT_low_pc
	.long	.Ltmp430-.Ltmp118       @ DW_AT_high_pc
	.byte	6                       @ Abbrev [6] 0xf0:0x10 DW_TAG_variable
	.long	.Ldebug_loc25           @ DW_AT_location
	.long	.Linfo_string291        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	268                     @ DW_AT_decl_line
	.long	5978                    @ DW_AT_type
	.byte	8                       @ Abbrev [8] 0x100:0x366 DW_TAG_lexical_block
	.long	.Ltmp119                @ DW_AT_low_pc
	.long	.Ltmp428-.Ltmp119       @ DW_AT_high_pc
	.byte	6                       @ Abbrev [6] 0x109:0x10 DW_TAG_variable
	.long	.Ldebug_loc53           @ DW_AT_location
	.long	.Linfo_string294        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	380                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x119:0x10 DW_TAG_variable
	.long	.Ldebug_loc59           @ DW_AT_location
	.long	.Linfo_string295        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	383                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x129:0x10 DW_TAG_variable
	.long	.Ldebug_loc60           @ DW_AT_location
	.long	.Linfo_string296        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	384                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	9                       @ Abbrev [9] 0x139:0x31 DW_TAG_inlined_subroutine
	.long	6749                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges4         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	444                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x145:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc68           @ DW_AT_location
	.long	6762                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x14e:0x6 DW_TAG_formal_parameter
	.byte	4                       @ DW_AT_const_value
	.long	6786                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x154:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc67           @ DW_AT_location
	.long	6798                    @ DW_AT_abstract_origin
	.byte	12                      @ Abbrev [12] 0x15d:0xc DW_TAG_inlined_subroutine
	.long	6687                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges5         @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.short	1502                    @ DW_AT_call_line
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x16a:0x16 DW_TAG_lexical_block
	.long	.Ldebug_ranges6         @ DW_AT_ranges
	.byte	6                       @ Abbrev [6] 0x16f:0x10 DW_TAG_variable
	.long	.Ldebug_loc50           @ DW_AT_location
	.long	.Linfo_string293        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	355                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	13                      @ Abbrev [13] 0x180:0x16 DW_TAG_lexical_block
	.long	.Ldebug_ranges7         @ DW_AT_ranges
	.byte	6                       @ Abbrev [6] 0x185:0x10 DW_TAG_variable
	.long	.Ldebug_loc51           @ DW_AT_location
	.long	.Linfo_string293        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	361                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x196:0x1f DW_TAG_inlined_subroutine
	.long	6823                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges8         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	272                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x1a2:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc27           @ DW_AT_location
	.long	6850                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x1ab:0x9 DW_TAG_variable
	.long	.Ldebug_loc28           @ DW_AT_location
	.long	6872                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x1b5:0x25 DW_TAG_inlined_subroutine
	.long	6909                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges9         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	322                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x1c1:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc43           @ DW_AT_location
	.long	6922                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x1ca:0x6 DW_TAG_formal_parameter
	.byte	7                       @ DW_AT_const_value
	.long	6946                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x1d0:0x9 DW_TAG_variable
	.long	.Ldebug_loc42           @ DW_AT_location
	.long	6970                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x1da:0x10 DW_TAG_inlined_subroutine
	.long	6983                    @ DW_AT_abstract_origin
	.long	.Ltmp131                @ DW_AT_low_pc
	.long	.Ltmp132-.Ltmp131       @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.short	271                     @ DW_AT_call_line
	.byte	9                       @ Abbrev [9] 0x1ea:0x31 DW_TAG_inlined_subroutine
	.long	6749                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges10        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	437                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x1f6:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc64           @ DW_AT_location
	.long	6762                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x1ff:0x6 DW_TAG_formal_parameter
	.byte	4                       @ DW_AT_const_value
	.long	6786                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x205:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc66           @ DW_AT_location
	.long	6798                    @ DW_AT_abstract_origin
	.byte	12                      @ Abbrev [12] 0x20e:0xc DW_TAG_inlined_subroutine
	.long	6687                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges11        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.short	1502                    @ DW_AT_call_line
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x21b:0x31 DW_TAG_inlined_subroutine
	.long	6749                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges12        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	431                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x227:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc62           @ DW_AT_location
	.long	6762                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x230:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	6786                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x236:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc65           @ DW_AT_location
	.long	6798                    @ DW_AT_abstract_origin
	.byte	12                      @ Abbrev [12] 0x23f:0xc DW_TAG_inlined_subroutine
	.long	6687                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges13        @ DW_AT_ranges
	.byte	2                       @ DW_AT_call_file
	.short	1502                    @ DW_AT_call_line
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x24c:0x2e DW_TAG_inlined_subroutine
	.long	6909                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges14        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	273                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x258:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc29           @ DW_AT_location
	.long	6922                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x261:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc26           @ DW_AT_location
	.long	6934                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x26a:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	6946                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x270:0x9 DW_TAG_variable
	.long	.Ldebug_loc30           @ DW_AT_location
	.long	6970                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x27a:0xc DW_TAG_inlined_subroutine
	.long	6983                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges15        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	275                     @ DW_AT_call_line
	.byte	9                       @ Abbrev [9] 0x286:0x16 DW_TAG_inlined_subroutine
	.long	6823                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges16        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	276                     @ DW_AT_call_line
	.byte	14                      @ Abbrev [14] 0x292:0x9 DW_TAG_variable
	.long	.Ldebug_loc31           @ DW_AT_location
	.long	6872                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x29c:0x25 DW_TAG_inlined_subroutine
	.long	6909                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges17        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	277                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x2a8:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc33           @ DW_AT_location
	.long	6922                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x2b1:0x6 DW_TAG_formal_parameter
	.byte	4                       @ DW_AT_const_value
	.long	6946                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x2b7:0x9 DW_TAG_variable
	.long	.Ldebug_loc32           @ DW_AT_location
	.long	6970                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x2c1:0xc DW_TAG_inlined_subroutine
	.long	6983                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges18        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	279                     @ DW_AT_call_line
	.byte	9                       @ Abbrev [9] 0x2cd:0x16 DW_TAG_inlined_subroutine
	.long	6823                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges19        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	280                     @ DW_AT_call_line
	.byte	14                      @ Abbrev [14] 0x2d9:0x9 DW_TAG_variable
	.long	.Ldebug_loc34           @ DW_AT_location
	.long	6872                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x2e3:0x25 DW_TAG_inlined_subroutine
	.long	6909                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges20        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	281                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x2ef:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc36           @ DW_AT_location
	.long	6922                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x2f8:0x6 DW_TAG_formal_parameter
	.byte	5                       @ DW_AT_const_value
	.long	6946                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x2fe:0x9 DW_TAG_variable
	.long	.Ldebug_loc35           @ DW_AT_location
	.long	6970                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	12                      @ Abbrev [12] 0x308:0xc DW_TAG_inlined_subroutine
	.long	6983                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges21        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	283                     @ DW_AT_call_line
	.byte	9                       @ Abbrev [9] 0x314:0x16 DW_TAG_inlined_subroutine
	.long	6823                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges22        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	284                     @ DW_AT_call_line
	.byte	14                      @ Abbrev [14] 0x320:0x9 DW_TAG_variable
	.long	.Ldebug_loc37           @ DW_AT_location
	.long	6872                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x32a:0x25 DW_TAG_inlined_subroutine
	.long	6909                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges23        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	285                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x336:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc39           @ DW_AT_location
	.long	6922                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x33f:0x6 DW_TAG_formal_parameter
	.byte	8                       @ DW_AT_const_value
	.long	6946                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x345:0x9 DW_TAG_variable
	.long	.Ldebug_loc38           @ DW_AT_location
	.long	6970                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x34f:0x25 DW_TAG_inlined_subroutine
	.long	6909                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges24        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	311                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x35b:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc41           @ DW_AT_location
	.long	6922                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x364:0x6 DW_TAG_formal_parameter
	.byte	6                       @ DW_AT_const_value
	.long	6946                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x36a:0x9 DW_TAG_variable
	.long	.Ldebug_loc40           @ DW_AT_location
	.long	6970                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	9                       @ Abbrev [9] 0x374:0x31 DW_TAG_inlined_subroutine
	.long	7037                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges25        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	326                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x380:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc47           @ DW_AT_location
	.long	7064                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x389:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc46           @ DW_AT_location
	.long	7075                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x392:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc45           @ DW_AT_location
	.long	7086                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x39b:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc44           @ DW_AT_location
	.long	7097                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x3a5:0x10 DW_TAG_inlined_subroutine
	.long	7109                    @ DW_AT_abstract_origin
	.long	.Ltmp281                @ DW_AT_low_pc
	.long	.Ltmp283-.Ltmp281       @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.short	325                     @ DW_AT_call_line
	.byte	13                      @ Abbrev [13] 0x3b5:0x47 DW_TAG_lexical_block
	.long	.Ldebug_ranges26        @ DW_AT_ranges
	.byte	16                      @ Abbrev [16] 0x3ba:0xd DW_TAG_variable
	.byte	0                       @ DW_AT_const_value
	.long	.Linfo_string297        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	392                     @ DW_AT_decl_line
	.long	1179                    @ DW_AT_type
	.byte	6                       @ Abbrev [6] 0x3c7:0x10 DW_TAG_variable
	.long	.Ldebug_loc61           @ DW_AT_location
	.long	.Linfo_string298        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	389                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x3d7:0xc DW_TAG_variable
	.long	.Linfo_string300        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	389                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x3e3:0xc DW_TAG_variable
	.long	.Linfo_string301        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	390                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x3ef:0xc DW_TAG_variable
	.long	.Linfo_string302        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	391                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	15                      @ Abbrev [15] 0x3fc:0x10 DW_TAG_inlined_subroutine
	.long	7109                    @ DW_AT_abstract_origin
	.long	.Ltmp315                @ DW_AT_low_pc
	.long	.Ltmp316-.Ltmp315       @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.short	370                     @ DW_AT_call_line
	.byte	9                       @ Abbrev [9] 0x40c:0x59 DW_TAG_inlined_subroutine
	.long	7163                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges27        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.short	381                     @ DW_AT_call_line
	.byte	10                      @ Abbrev [10] 0x418:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc49           @ DW_AT_location
	.long	7190                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x421:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc54           @ DW_AT_location
	.long	7201                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x42a:0x9 DW_TAG_variable
	.long	.Ldebug_loc52           @ DW_AT_location
	.long	7212                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x433:0x9 DW_TAG_variable
	.long	.Ldebug_loc56           @ DW_AT_location
	.long	7223                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x43c:0x9 DW_TAG_variable
	.long	.Ldebug_loc57           @ DW_AT_location
	.long	7234                    @ DW_AT_abstract_origin
	.byte	17                      @ Abbrev [17] 0x445:0x1f DW_TAG_inlined_subroutine
	.long	6494                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges28        @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	249                     @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	10                      @ Abbrev [10] 0x451:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc55           @ DW_AT_location
	.long	6510                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x45a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc58           @ DW_AT_location
	.long	6532                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x468:0x7 DW_TAG_base_type
	.long	.Linfo_string4          @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	19                      @ Abbrev [19] 0x46f:0xc DW_TAG_variable
	.long	.Linfo_string10         @ DW_AT_name
	.long	1147                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.byte	6                       @ DW_AT_const_value
	.byte	20                      @ Abbrev [20] 0x47b:0x5 DW_TAG_const_type
	.long	1152                    @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x480:0x7 DW_TAG_base_type
	.long	.Linfo_string11         @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	21                      @ Abbrev [21] 0x487:0x14 DW_TAG_variable
	.long	.Linfo_string12         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	153                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	0
	.byte	34
	.byte	18                      @ Abbrev [18] 0x49b:0x7 DW_TAG_base_type
	.long	.Linfo_string13         @ DW_AT_name
	.byte	2                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	21                      @ Abbrev [21] 0x4a2:0x14 DW_TAG_variable
	.long	.Linfo_string14         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	161                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	20
	.byte	34
	.byte	21                      @ Abbrev [21] 0x4b6:0x14 DW_TAG_variable
	.long	.Linfo_string15         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	157                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	1
	.byte	34
	.byte	21                      @ Abbrev [21] 0x4ca:0x14 DW_TAG_variable
	.long	.Linfo_string16         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	154                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	2
	.byte	34
	.byte	21                      @ Abbrev [21] 0x4de:0x14 DW_TAG_variable
	.long	.Linfo_string17         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	162                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	24
	.byte	34
	.byte	22                      @ Abbrev [22] 0x4f2:0xb DW_TAG_variable
	.long	.Linfo_string18         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x4fd:0x14 DW_TAG_variable
	.long	.Linfo_string19         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	155                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	3
	.byte	34
	.byte	21                      @ Abbrev [21] 0x511:0x14 DW_TAG_variable
	.long	.Linfo_string20         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	28
	.byte	34
	.byte	22                      @ Abbrev [22] 0x525:0xb DW_TAG_variable
	.long	.Linfo_string21         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	159                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x530:0x14 DW_TAG_variable
	.long	.Linfo_string22         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	156                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	4
	.byte	34
	.byte	21                      @ Abbrev [21] 0x544:0x14 DW_TAG_variable
	.long	.Linfo_string23         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	164                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	32
	.byte	34
	.byte	22                      @ Abbrev [22] 0x558:0xb DW_TAG_variable
	.long	.Linfo_string24         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	160                     @ DW_AT_decl_line
	.byte	22                      @ Abbrev [22] 0x563:0xb DW_TAG_variable
	.long	.Linfo_string25         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	138                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x56e:0x14 DW_TAG_variable
	.long	.Linfo_string26         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	137                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	0
	.byte	34
	.byte	22                      @ Abbrev [22] 0x582:0xb DW_TAG_variable
	.long	.Linfo_string27         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	141                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x58d:0x14 DW_TAG_variable
	.long	.Linfo_string28         @ DW_AT_name
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	140                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	7
	.byte	34
	.byte	21                      @ Abbrev [21] 0x5a1:0x14 DW_TAG_variable
	.long	.Linfo_string29         @ DW_AT_name
	.long	1461                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	118                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.4
	.byte	16
	.byte	36
	.byte	34
	.byte	23                      @ Abbrev [23] 0x5b5:0xc DW_TAG_array_type
	.long	1128                    @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x5ba:0x6 DW_TAG_subrange_type
	.long	1473                    @ DW_AT_type
	.byte	12                      @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	25                      @ Abbrev [25] 0x5c1:0x7 DW_TAG_base_type
	.long	.Linfo_string30         @ DW_AT_name
	.byte	8                       @ DW_AT_byte_size
	.byte	7                       @ DW_AT_encoding
	.byte	21                      @ Abbrev [21] 0x5c8:0x14 DW_TAG_variable
	.long	.Linfo_string31         @ DW_AT_name
	.long	1500                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	143                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	36
	.byte	34
	.byte	26                      @ Abbrev [26] 0x5dc:0x5 DW_TAG_pointer_type
	.long	1128                    @ DW_AT_type
	.byte	22                      @ Abbrev [22] 0x5e1:0xb DW_TAG_variable
	.long	.Linfo_string32         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	117                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x5ec:0x14 DW_TAG_variable
	.long	.Linfo_string33         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	145                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	40
	.byte	34
	.byte	21                      @ Abbrev [21] 0x600:0x14 DW_TAG_variable
	.long	.Linfo_string34         @ DW_AT_name
	.long	1556                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	121                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.4
	.byte	16
	.byte	0
	.byte	34
	.byte	23                      @ Abbrev [23] 0x614:0xc DW_TAG_array_type
	.long	1128                    @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x619:0x6 DW_TAG_subrange_type
	.long	1473                    @ DW_AT_type
	.byte	9                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x620:0xb DW_TAG_variable
	.long	.Linfo_string35         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	120                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x62b:0x14 DW_TAG_variable
	.long	.Linfo_string36         @ DW_AT_name
	.long	1599                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	124                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	40
	.byte	34
	.byte	23                      @ Abbrev [23] 0x63f:0xc DW_TAG_array_type
	.long	1128                    @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x644:0x6 DW_TAG_subrange_type
	.long	1473                    @ DW_AT_type
	.byte	7                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x64b:0xb DW_TAG_variable
	.long	.Linfo_string37         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	123                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x656:0x14 DW_TAG_variable
	.long	.Linfo_string38         @ DW_AT_name
	.long	1599                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	127                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	68
	.byte	34
	.byte	22                      @ Abbrev [22] 0x66a:0xb DW_TAG_variable
	.long	.Linfo_string39         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	126                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x675:0x14 DW_TAG_variable
	.long	.Linfo_string40         @ DW_AT_name
	.long	1673                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	130                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	8
	.byte	34
	.byte	23                      @ Abbrev [23] 0x689:0xc DW_TAG_array_type
	.long	1128                    @ DW_AT_type
	.byte	24                      @ Abbrev [24] 0x68e:0x6 DW_TAG_subrange_type
	.long	1473                    @ DW_AT_type
	.byte	4                       @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	22                      @ Abbrev [22] 0x695:0xb DW_TAG_variable
	.long	.Linfo_string41         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	129                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x6a0:0x14 DW_TAG_variable
	.long	.Linfo_string42         @ DW_AT_name
	.long	1673                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	133                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	24
	.byte	34
	.byte	22                      @ Abbrev [22] 0x6b4:0xb DW_TAG_variable
	.long	.Linfo_string43         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	132                     @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x6bf:0x14 DW_TAG_variable
	.long	.Linfo_string44         @ DW_AT_name
	.long	1461                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	48
	.byte	34
	.byte	22                      @ Abbrev [22] 0x6d3:0xb DW_TAG_variable
	.long	.Linfo_string45         @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.byte	21                      @ Abbrev [21] 0x6de:0x14 DW_TAG_variable
	.long	.Linfo_string46         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals
	.byte	16
	.byte	4
	.byte	34
	.byte	21                      @ Abbrev [21] 0x6f2:0x14 DW_TAG_variable
	.long	.Linfo_string47         @ DW_AT_name
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_location
	.byte	3
	.long	.L_MergedGlobals.5
	.byte	16
	.byte	44
	.byte	34
	.byte	22                      @ Abbrev [22] 0x706:0xb DW_TAG_variable
	.long	.Linfo_string48         @ DW_AT_name
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_decl_file
	.byte	74                      @ DW_AT_decl_line
	.byte	27                      @ Abbrev [27] 0x711:0x12 DW_TAG_enumeration_type
	.byte	4                       @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.short	1154                    @ DW_AT_decl_line
	.byte	28                      @ Abbrev [28] 0x716:0x6 DW_TAG_enumerator
	.long	.Linfo_string49         @ DW_AT_name
	.byte	0                       @ DW_AT_const_value
	.byte	28                      @ Abbrev [28] 0x71c:0x6 DW_TAG_enumerator
	.long	.Linfo_string50         @ DW_AT_name
	.byte	1                       @ DW_AT_const_value
	.byte	0                       @ End Of Children Mark
	.byte	29                      @ Abbrev [29] 0x723:0x408 DW_TAG_namespace
	.long	.Linfo_string51         @ DW_AT_name
	.byte	3                       @ DW_AT_decl_file
	.byte	199                     @ DW_AT_decl_line
	.byte	30                      @ Abbrev [30] 0x72a:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	2859                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x731:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	125                     @ DW_AT_decl_line
	.long	2887                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x738:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	144                     @ DW_AT_decl_line
	.long	2908                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x73f:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	163                     @ DW_AT_decl_line
	.long	2925                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x746:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	2951                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x74d:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	203                     @ DW_AT_decl_line
	.long	2968                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x754:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	222                     @ DW_AT_decl_line
	.long	2985                    @ DW_AT_import
	.byte	30                      @ Abbrev [30] 0x75b:0x7 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.byte	241                     @ DW_AT_decl_line
	.long	3006                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x762:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	3027                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x76a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	279                     @ DW_AT_decl_line
	.long	3044                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x772:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	298                     @ DW_AT_decl_line
	.long	3061                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x77a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	3087                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x782:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	338                     @ DW_AT_decl_line
	.long	3114                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x78a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	3136                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x792:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	3158                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x79a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	395                     @ DW_AT_decl_line
	.long	3180                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7a2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	407                     @ DW_AT_decl_line
	.long	3207                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7aa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	444                     @ DW_AT_decl_line
	.long	3234                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7b2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	463                     @ DW_AT_decl_line
	.long	3251                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7ba:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	482                     @ DW_AT_decl_line
	.long	3273                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7c2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	501                     @ DW_AT_decl_line
	.long	3295                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7ca:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	520                     @ DW_AT_decl_line
	.long	3312                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7d2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1101                    @ DW_AT_decl_line
	.long	3329                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7da:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1102                    @ DW_AT_decl_line
	.long	3340                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7e2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1105                    @ DW_AT_decl_line
	.long	3351                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7ea:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1106                    @ DW_AT_decl_line
	.long	3372                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7f2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1107                    @ DW_AT_decl_line
	.long	3393                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x7fa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1109                    @ DW_AT_decl_line
	.long	3421                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x802:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1110                    @ DW_AT_decl_line
	.long	3438                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x80a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1111                    @ DW_AT_decl_line
	.long	3455                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x812:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1113                    @ DW_AT_decl_line
	.long	3472                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x81a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1114                    @ DW_AT_decl_line
	.long	3493                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x822:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1115                    @ DW_AT_decl_line
	.long	3514                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x82a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1117                    @ DW_AT_decl_line
	.long	3535                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x832:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1118                    @ DW_AT_decl_line
	.long	3552                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x83a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1119                    @ DW_AT_decl_line
	.long	3569                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x842:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1121                    @ DW_AT_decl_line
	.long	3586                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x84a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1122                    @ DW_AT_decl_line
	.long	3608                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x852:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1123                    @ DW_AT_decl_line
	.long	3630                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x85a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1125                    @ DW_AT_decl_line
	.long	3652                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x862:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1126                    @ DW_AT_decl_line
	.long	3670                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x86a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1127                    @ DW_AT_decl_line
	.long	3688                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x872:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1129                    @ DW_AT_decl_line
	.long	3706                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x87a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1130                    @ DW_AT_decl_line
	.long	3724                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x882:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1131                    @ DW_AT_decl_line
	.long	3742                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x88a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1133                    @ DW_AT_decl_line
	.long	3760                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x892:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1134                    @ DW_AT_decl_line
	.long	3781                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x89a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1135                    @ DW_AT_decl_line
	.long	3802                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8a2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1137                    @ DW_AT_decl_line
	.long	3823                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8aa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1138                    @ DW_AT_decl_line
	.long	3840                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8b2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1139                    @ DW_AT_decl_line
	.long	3857                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8ba:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1141                    @ DW_AT_decl_line
	.long	3874                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8c2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1142                    @ DW_AT_decl_line
	.long	3897                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8ca:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1143                    @ DW_AT_decl_line
	.long	3920                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8d2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1145                    @ DW_AT_decl_line
	.long	3943                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8da:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1146                    @ DW_AT_decl_line
	.long	3971                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8e2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1147                    @ DW_AT_decl_line
	.long	3999                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8ea:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1149                    @ DW_AT_decl_line
	.long	4027                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8f2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1150                    @ DW_AT_decl_line
	.long	4050                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x8fa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1151                    @ DW_AT_decl_line
	.long	4073                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x902:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1153                    @ DW_AT_decl_line
	.long	4096                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x90a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1154                    @ DW_AT_decl_line
	.long	4119                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x912:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1155                    @ DW_AT_decl_line
	.long	4142                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x91a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1157                    @ DW_AT_decl_line
	.long	4165                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x922:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1158                    @ DW_AT_decl_line
	.long	4191                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x92a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1159                    @ DW_AT_decl_line
	.long	4217                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x932:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1161                    @ DW_AT_decl_line
	.long	4243                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x93a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1162                    @ DW_AT_decl_line
	.long	4261                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x942:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1163                    @ DW_AT_decl_line
	.long	4279                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x94a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1165                    @ DW_AT_decl_line
	.long	4297                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x952:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1166                    @ DW_AT_decl_line
	.long	4315                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x95a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1167                    @ DW_AT_decl_line
	.long	4333                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x962:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1169                    @ DW_AT_decl_line
	.long	4351                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x96a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1170                    @ DW_AT_decl_line
	.long	4376                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x972:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1171                    @ DW_AT_decl_line
	.long	4394                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x97a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1173                    @ DW_AT_decl_line
	.long	4412                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x982:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1174                    @ DW_AT_decl_line
	.long	4430                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x98a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1175                    @ DW_AT_decl_line
	.long	4448                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x992:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1177                    @ DW_AT_decl_line
	.long	4466                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x99a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1178                    @ DW_AT_decl_line
	.long	4483                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9a2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1179                    @ DW_AT_decl_line
	.long	4500                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9aa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1181                    @ DW_AT_decl_line
	.long	4517                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9b2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1182                    @ DW_AT_decl_line
	.long	4539                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9ba:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1183                    @ DW_AT_decl_line
	.long	4561                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9c2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1185                    @ DW_AT_decl_line
	.long	4583                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9ca:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1186                    @ DW_AT_decl_line
	.long	4600                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9d2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1187                    @ DW_AT_decl_line
	.long	4617                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9da:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1189                    @ DW_AT_decl_line
	.long	4634                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9e2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1190                    @ DW_AT_decl_line
	.long	4659                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9ea:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1191                    @ DW_AT_decl_line
	.long	4677                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9f2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1193                    @ DW_AT_decl_line
	.long	4695                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0x9fa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1194                    @ DW_AT_decl_line
	.long	4713                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa02:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1195                    @ DW_AT_decl_line
	.long	4731                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa0a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1197                    @ DW_AT_decl_line
	.long	4749                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa12:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1198                    @ DW_AT_decl_line
	.long	4783                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa1a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1199                    @ DW_AT_decl_line
	.long	4800                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa22:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1201                    @ DW_AT_decl_line
	.long	4817                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa2a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1202                    @ DW_AT_decl_line
	.long	4835                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa32:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1203                    @ DW_AT_decl_line
	.long	4853                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa3a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1205                    @ DW_AT_decl_line
	.long	4871                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa42:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1206                    @ DW_AT_decl_line
	.long	4894                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa4a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1207                    @ DW_AT_decl_line
	.long	4917                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa52:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1209                    @ DW_AT_decl_line
	.long	4940                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa5a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1210                    @ DW_AT_decl_line
	.long	4963                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa62:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1211                    @ DW_AT_decl_line
	.long	4986                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa6a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1213                    @ DW_AT_decl_line
	.long	5009                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa72:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1214                    @ DW_AT_decl_line
	.long	5036                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa7a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1215                    @ DW_AT_decl_line
	.long	5063                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa82:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1217                    @ DW_AT_decl_line
	.long	5090                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa8a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1218                    @ DW_AT_decl_line
	.long	5118                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa92:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1219                    @ DW_AT_decl_line
	.long	5146                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xa9a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1221                    @ DW_AT_decl_line
	.long	5174                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xaa2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1222                    @ DW_AT_decl_line
	.long	5192                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xaaa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1223                    @ DW_AT_decl_line
	.long	5210                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xab2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1225                    @ DW_AT_decl_line
	.long	5228                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xaba:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1226                    @ DW_AT_decl_line
	.long	5246                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xac2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1227                    @ DW_AT_decl_line
	.long	5264                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xaca:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1229                    @ DW_AT_decl_line
	.long	5282                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xad2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1230                    @ DW_AT_decl_line
	.long	5305                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xada:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1231                    @ DW_AT_decl_line
	.long	5328                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xae2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1233                    @ DW_AT_decl_line
	.long	5351                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xaea:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1234                    @ DW_AT_decl_line
	.long	5374                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xaf2:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1235                    @ DW_AT_decl_line
	.long	5397                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xafa:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1237                    @ DW_AT_decl_line
	.long	5420                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xb02:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1238                    @ DW_AT_decl_line
	.long	5438                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xb0a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1239                    @ DW_AT_decl_line
	.long	5456                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xb12:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1241                    @ DW_AT_decl_line
	.long	5474                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xb1a:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1242                    @ DW_AT_decl_line
	.long	5492                    @ DW_AT_import
	.byte	31                      @ Abbrev [31] 0xb22:0x8 DW_TAG_imported_declaration
	.byte	3                       @ DW_AT_decl_file
	.short	1243                    @ DW_AT_decl_line
	.long	5510                    @ DW_AT_import
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xb2b:0x15 DW_TAG_subprogram
	.long	.Linfo_string52         @ DW_AT_linkage_name
	.long	.Linfo_string53         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	24                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xb3a:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xb40:0x7 DW_TAG_base_type
	.long	.Linfo_string54         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	32                      @ Abbrev [32] 0xb47:0x15 DW_TAG_subprogram
	.long	.Linfo_string55         @ DW_AT_linkage_name
	.long	.Linfo_string56         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	52                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xb56:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xb5c:0x11 DW_TAG_subprogram
	.long	.Linfo_string57         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xb67:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xb6d:0x1a DW_TAG_subprogram
	.long	.Linfo_string58         @ DW_AT_linkage_name
	.long	.Linfo_string59         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xb7c:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xb81:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xb87:0x11 DW_TAG_subprogram
	.long	.Linfo_string60         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	178                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xb92:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xb98:0x11 DW_TAG_subprogram
	.long	.Linfo_string61         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	63                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xba3:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xba9:0x15 DW_TAG_subprogram
	.long	.Linfo_string62         @ DW_AT_linkage_name
	.long	.Linfo_string63         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	95                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xbb8:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xbbe:0x15 DW_TAG_subprogram
	.long	.Linfo_string64         @ DW_AT_linkage_name
	.long	.Linfo_string65         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	108                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xbcd:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xbd3:0x11 DW_TAG_subprogram
	.long	.Linfo_string66         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	181                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xbde:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xbe4:0x11 DW_TAG_subprogram
	.long	.Linfo_string67         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	184                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xbef:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xbf5:0x1a DW_TAG_subprogram
	.long	.Linfo_string68         @ DW_AT_linkage_name
	.long	.Linfo_string69         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	158                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc04:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xc09:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xc0f:0x16 DW_TAG_subprogram
	.long	.Linfo_string70         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	103                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc1a:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xc1f:0x5 DW_TAG_formal_parameter
	.long	3109                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc25:0x5 DW_TAG_pointer_type
	.long	1152                    @ DW_AT_type
	.byte	34                      @ Abbrev [34] 0xc2a:0x16 DW_TAG_subprogram
	.long	.Linfo_string71         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	106                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc35:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xc3a:0x5 DW_TAG_formal_parameter
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xc40:0x16 DW_TAG_subprogram
	.long	.Linfo_string72         @ DW_AT_linkage_name
	.long	.Linfo_string73         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	363                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc50:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xc56:0x16 DW_TAG_subprogram
	.long	.Linfo_string74         @ DW_AT_linkage_name
	.long	.Linfo_string75         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	376                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc66:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xc6c:0x16 DW_TAG_subprogram
	.long	.Linfo_string76         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	115                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc77:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xc7c:0x5 DW_TAG_formal_parameter
	.long	3202                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0xc82:0x5 DW_TAG_pointer_type
	.long	2880                    @ DW_AT_type
	.byte	35                      @ Abbrev [35] 0xc87:0x1b DW_TAG_subprogram
	.long	.Linfo_string77         @ DW_AT_linkage_name
	.long	.Linfo_string78         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	402                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xc97:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xc9c:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xca2:0x11 DW_TAG_subprogram
	.long	.Linfo_string79         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	65                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xcad:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xcb3:0x16 DW_TAG_subprogram
	.long	.Linfo_string80         @ DW_AT_linkage_name
	.long	.Linfo_string81         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	452                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xcc3:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0xcc9:0x16 DW_TAG_subprogram
	.long	.Linfo_string82         @ DW_AT_linkage_name
	.long	.Linfo_string83         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	465                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xcd9:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xcdf:0x11 DW_TAG_subprogram
	.long	.Linfo_string84         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	67                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xcea:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xcf0:0x11 DW_TAG_subprogram
	.long	.Linfo_string85         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	76                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xcfb:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	36                      @ Abbrev [36] 0xd01:0xb DW_TAG_typedef
	.long	2880                    @ DW_AT_type
	.long	.Linfo_string86         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	28                      @ DW_AT_decl_line
	.byte	36                      @ Abbrev [36] 0xd0c:0xb DW_TAG_typedef
	.long	1128                    @ DW_AT_type
	.long	.Linfo_string87         @ DW_AT_name
	.byte	6                       @ DW_AT_decl_file
	.byte	26                      @ DW_AT_decl_line
	.byte	32                      @ Abbrev [32] 0xd17:0x15 DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_linkage_name
	.long	.Linfo_string89         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	38                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd26:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xd2c:0x15 DW_TAG_subprogram
	.long	.Linfo_string90         @ DW_AT_linkage_name
	.long	.Linfo_string91         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	41                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd3b:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xd41:0x15 DW_TAG_subprogram
	.long	.Linfo_string88         @ DW_AT_linkage_name
	.long	.Linfo_string92         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	44                      @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd50:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0xd56:0x7 DW_TAG_base_type
	.long	.Linfo_string93         @ DW_AT_name
	.byte	4                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	34                      @ Abbrev [34] 0xd5d:0x11 DW_TAG_subprogram
	.long	.Linfo_string94         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd68:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xd6e:0x11 DW_TAG_subprogram
	.long	.Linfo_string95         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd79:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xd7f:0x11 DW_TAG_subprogram
	.long	.Linfo_string96         @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	90                      @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd8a:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xd90:0x15 DW_TAG_subprogram
	.long	.Linfo_string97         @ DW_AT_linkage_name
	.long	.Linfo_string98         @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	81                      @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xd9f:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xda5:0x15 DW_TAG_subprogram
	.long	.Linfo_string99         @ DW_AT_linkage_name
	.long	.Linfo_string100        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	84                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xdb4:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xdba:0x15 DW_TAG_subprogram
	.long	.Linfo_string97         @ DW_AT_linkage_name
	.long	.Linfo_string101        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	87                      @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xdc9:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xdcf:0x11 DW_TAG_subprogram
	.long	.Linfo_string102        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xdda:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xde0:0x11 DW_TAG_subprogram
	.long	.Linfo_string103        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xdeb:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xdf1:0x11 DW_TAG_subprogram
	.long	.Linfo_string104        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	169                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xdfc:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xe02:0x16 DW_TAG_subprogram
	.long	.Linfo_string105        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe0d:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xe12:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xe18:0x16 DW_TAG_subprogram
	.long	.Linfo_string106        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe23:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xe28:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xe2e:0x16 DW_TAG_subprogram
	.long	.Linfo_string107        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	221                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe39:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xe3e:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xe44:0x12 DW_TAG_subprogram
	.long	.Linfo_string108        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe50:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xe56:0x12 DW_TAG_subprogram
	.long	.Linfo_string109        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe62:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xe68:0x12 DW_TAG_subprogram
	.long	.Linfo_string110        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	259                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe74:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xe7a:0x12 DW_TAG_subprogram
	.long	.Linfo_string111        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe86:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xe8c:0x12 DW_TAG_subprogram
	.long	.Linfo_string112        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xe98:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xe9e:0x12 DW_TAG_subprogram
	.long	.Linfo_string113        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	260                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xeaa:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xeb0:0x15 DW_TAG_subprogram
	.long	.Linfo_string114        @ DW_AT_linkage_name
	.long	.Linfo_string115        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	146                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xebf:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xec5:0x15 DW_TAG_subprogram
	.long	.Linfo_string116        @ DW_AT_linkage_name
	.long	.Linfo_string117        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	147                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xed4:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0xeda:0x15 DW_TAG_subprogram
	.long	.Linfo_string114        @ DW_AT_linkage_name
	.long	.Linfo_string118        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	150                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xee9:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xeef:0x11 DW_TAG_subprogram
	.long	.Linfo_string119        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xefa:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xf00:0x11 DW_TAG_subprogram
	.long	.Linfo_string120        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf0b:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0xf11:0x11 DW_TAG_subprogram
	.long	.Linfo_string121        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	128                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf1c:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xf22:0x17 DW_TAG_subprogram
	.long	.Linfo_string122        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf2e:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf33:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xf39:0x17 DW_TAG_subprogram
	.long	.Linfo_string123        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf45:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf4a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xf50:0x17 DW_TAG_subprogram
	.long	.Linfo_string124        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	354                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf5c:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf61:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xf67:0x1c DW_TAG_subprogram
	.long	.Linfo_string125        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf73:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf78:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf7d:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xf83:0x1c DW_TAG_subprogram
	.long	.Linfo_string126        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xf8f:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf94:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xf99:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xf9f:0x1c DW_TAG_subprogram
	.long	.Linfo_string127        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	373                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xfab:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xfb0:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xfb5:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xfbb:0x17 DW_TAG_subprogram
	.long	.Linfo_string128        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xfc7:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xfcc:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xfd2:0x17 DW_TAG_subprogram
	.long	.Linfo_string129        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xfde:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xfe3:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0xfe9:0x17 DW_TAG_subprogram
	.long	.Linfo_string130        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	357                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0xff5:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0xffa:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1000:0x17 DW_TAG_subprogram
	.long	.Linfo_string131        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x100c:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1011:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1017:0x17 DW_TAG_subprogram
	.long	.Linfo_string132        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1023:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1028:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x102e:0x17 DW_TAG_subprogram
	.long	.Linfo_string133        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x103a:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x103f:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x1045:0x1a DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_linkage_name
	.long	.Linfo_string135        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	174                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1054:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1059:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x105f:0x1a DW_TAG_subprogram
	.long	.Linfo_string136        @ DW_AT_linkage_name
	.long	.Linfo_string137        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	177                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x106e:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1073:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	32                      @ Abbrev [32] 0x1079:0x1a DW_TAG_subprogram
	.long	.Linfo_string134        @ DW_AT_linkage_name
	.long	.Linfo_string138        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.byte	180                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1088:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x108d:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1093:0x12 DW_TAG_subprogram
	.long	.Linfo_string139        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x109f:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x10a5:0x12 DW_TAG_subprogram
	.long	.Linfo_string140        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x10b1:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x10b7:0x12 DW_TAG_subprogram
	.long	.Linfo_string141        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	313                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x10c3:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x10c9:0x12 DW_TAG_subprogram
	.long	.Linfo_string142        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	308                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x10d5:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x10db:0x12 DW_TAG_subprogram
	.long	.Linfo_string143        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	319                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x10e7:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x10ed:0x12 DW_TAG_subprogram
	.long	.Linfo_string144        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	329                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x10f9:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x10ff:0x12 DW_TAG_subprogram
	.long	.Linfo_string145        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	4369                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x110b:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x1111:0x7 DW_TAG_base_type
	.long	.Linfo_string146        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	37                      @ Abbrev [37] 0x1118:0x12 DW_TAG_subprogram
	.long	.Linfo_string147        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	4369                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1124:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x112a:0x12 DW_TAG_subprogram
	.long	.Linfo_string148        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.long	4369                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1136:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x113c:0x12 DW_TAG_subprogram
	.long	.Linfo_string149        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	4369                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1148:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x114e:0x12 DW_TAG_subprogram
	.long	.Linfo_string150        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	4369                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x115a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1160:0x12 DW_TAG_subprogram
	.long	.Linfo_string151        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	350                     @ DW_AT_decl_line
	.long	4369                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x116c:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x1172:0x11 DW_TAG_subprogram
	.long	.Linfo_string152        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x117d:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x1183:0x11 DW_TAG_subprogram
	.long	.Linfo_string153        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x118e:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x1194:0x11 DW_TAG_subprogram
	.long	.Linfo_string154        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	131                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x119f:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x11a5:0x16 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_linkage_name
	.long	.Linfo_string156        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	390                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x11b5:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x11bb:0x16 DW_TAG_subprogram
	.long	.Linfo_string157        @ DW_AT_linkage_name
	.long	.Linfo_string158        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	391                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x11cb:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x11d1:0x16 DW_TAG_subprogram
	.long	.Linfo_string155        @ DW_AT_linkage_name
	.long	.Linfo_string159        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	394                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x11e1:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x11e7:0x11 DW_TAG_subprogram
	.long	.Linfo_string160        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x11f2:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x11f8:0x11 DW_TAG_subprogram
	.long	.Linfo_string161        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1203:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x1209:0x11 DW_TAG_subprogram
	.long	.Linfo_string162        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	134                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1214:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x121a:0x12 DW_TAG_subprogram
	.long	.Linfo_string163        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1226:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	18                      @ Abbrev [18] 0x122c:0x7 DW_TAG_base_type
	.long	.Linfo_string164        @ DW_AT_name
	.byte	5                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	37                      @ Abbrev [37] 0x1233:0x12 DW_TAG_subprogram
	.long	.Linfo_string165        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x123f:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1245:0x12 DW_TAG_subprogram
	.long	.Linfo_string166        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	342                     @ DW_AT_decl_line
	.long	4652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1251:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1257:0x12 DW_TAG_subprogram
	.long	.Linfo_string167        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1263:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1269:0x12 DW_TAG_subprogram
	.long	.Linfo_string168        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1275:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x127b:0x12 DW_TAG_subprogram
	.long	.Linfo_string169        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	348                     @ DW_AT_decl_line
	.long	4652                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1287:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x128d:0x11 DW_TAG_subprogram
	.long	.Linfo_string170        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1298:0x5 DW_TAG_formal_parameter
	.long	4766                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x129e:0x5 DW_TAG_pointer_type
	.long	4771                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x12a3:0x5 DW_TAG_const_type
	.long	4776                    @ DW_AT_type
	.byte	18                      @ Abbrev [18] 0x12a8:0x7 DW_TAG_base_type
	.long	.Linfo_string171        @ DW_AT_name
	.byte	8                       @ DW_AT_encoding
	.byte	1                       @ DW_AT_byte_size
	.byte	34                      @ Abbrev [34] 0x12af:0x11 DW_TAG_subprogram
	.long	.Linfo_string172        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x12ba:0x5 DW_TAG_formal_parameter
	.long	4766                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	34                      @ Abbrev [34] 0x12c0:0x11 DW_TAG_subprogram
	.long	.Linfo_string173        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x12cb:0x5 DW_TAG_formal_parameter
	.long	4766                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x12d1:0x12 DW_TAG_subprogram
	.long	.Linfo_string174        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x12dd:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x12e3:0x12 DW_TAG_subprogram
	.long	.Linfo_string175        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x12ef:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x12f5:0x12 DW_TAG_subprogram
	.long	.Linfo_string176        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1301:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1307:0x17 DW_TAG_subprogram
	.long	.Linfo_string177        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1313:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1318:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x131e:0x17 DW_TAG_subprogram
	.long	.Linfo_string178        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x132a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x132f:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1335:0x17 DW_TAG_subprogram
	.long	.Linfo_string179        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	292                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1341:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1346:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x134c:0x17 DW_TAG_subprogram
	.long	.Linfo_string180        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1358:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x135d:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1363:0x17 DW_TAG_subprogram
	.long	.Linfo_string181        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x136f:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1374:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x137a:0x17 DW_TAG_subprogram
	.long	.Linfo_string182        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	294                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1386:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x138b:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x1391:0x1b DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_linkage_name
	.long	.Linfo_string184        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	418                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x13a1:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x13a6:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x13ac:0x1b DW_TAG_subprogram
	.long	.Linfo_string185        @ DW_AT_linkage_name
	.long	.Linfo_string186        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	421                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x13bc:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x13c1:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	35                      @ Abbrev [35] 0x13c7:0x1b DW_TAG_subprogram
	.long	.Linfo_string183        @ DW_AT_linkage_name
	.long	.Linfo_string187        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	424                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x13d7:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x13dc:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x13e2:0x1c DW_TAG_subprogram
	.long	.Linfo_string188        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x13ee:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x13f3:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x13f8:0x5 DW_TAG_formal_parameter
	.long	3109                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x13fe:0x1c DW_TAG_subprogram
	.long	.Linfo_string189        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x140a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x140f:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1414:0x5 DW_TAG_formal_parameter
	.long	3109                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x141a:0x1c DW_TAG_subprogram
	.long	.Linfo_string190        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	335                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1426:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x142b:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1430:0x5 DW_TAG_formal_parameter
	.long	3109                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1436:0x12 DW_TAG_subprogram
	.long	.Linfo_string191        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1442:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1448:0x12 DW_TAG_subprogram
	.long	.Linfo_string192        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1454:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x145a:0x12 DW_TAG_subprogram
	.long	.Linfo_string193        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	289                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1466:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x146c:0x12 DW_TAG_subprogram
	.long	.Linfo_string194        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1478:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x147e:0x12 DW_TAG_subprogram
	.long	.Linfo_string195        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x148a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1490:0x12 DW_TAG_subprogram
	.long	.Linfo_string196        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x149c:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x14a2:0x17 DW_TAG_subprogram
	.long	.Linfo_string197        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x14ae:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x14b3:0x5 DW_TAG_formal_parameter
	.long	4652                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x14b9:0x17 DW_TAG_subprogram
	.long	.Linfo_string198        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x14c5:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x14ca:0x5 DW_TAG_formal_parameter
	.long	4652                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x14d0:0x17 DW_TAG_subprogram
	.long	.Linfo_string199        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	318                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x14dc:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x14e1:0x5 DW_TAG_formal_parameter
	.long	4652                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x14e7:0x17 DW_TAG_subprogram
	.long	.Linfo_string200        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x14f3:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x14f8:0x5 DW_TAG_formal_parameter
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x14fe:0x17 DW_TAG_subprogram
	.long	.Linfo_string201        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x150a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x150f:0x5 DW_TAG_formal_parameter
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1515:0x17 DW_TAG_subprogram
	.long	.Linfo_string202        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	309                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1521:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	33                      @ Abbrev [33] 0x1526:0x5 DW_TAG_formal_parameter
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x152c:0x12 DW_TAG_subprogram
	.long	.Linfo_string203        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	480                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1538:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x153e:0x12 DW_TAG_subprogram
	.long	.Linfo_string204        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	487                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x154a:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1550:0x12 DW_TAG_subprogram
	.long	.Linfo_string205        @ DW_AT_name
	.byte	4                       @ DW_AT_decl_file
	.short	495                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x155c:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1562:0x12 DW_TAG_subprogram
	.long	.Linfo_string206        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	2880                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x156e:0x5 DW_TAG_formal_parameter
	.long	2880                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1574:0x12 DW_TAG_subprogram
	.long	.Linfo_string207        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1580:0x5 DW_TAG_formal_parameter
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	37                      @ Abbrev [37] 0x1586:0x12 DW_TAG_subprogram
	.long	.Linfo_string208        @ DW_AT_name
	.byte	5                       @ DW_AT_decl_file
	.short	330                     @ DW_AT_decl_line
	.long	3414                    @ DW_AT_type
                                        @ DW_AT_declaration
                                        @ DW_AT_external
	.byte	33                      @ Abbrev [33] 0x1592:0x5 DW_TAG_formal_parameter
	.long	3414                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0x1598:0x4a DW_TAG_subprogram
	.long	.Linfo_string209        @ DW_AT_linkage_name
	.long	.Linfo_string210        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1544                    @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	39                      @ Abbrev [39] 0x15a5:0xc DW_TAG_formal_parameter
	.long	.Linfo_string211        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1544                    @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x15b1:0xc DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1544                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x15bd:0xc DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1544                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x15c9:0xc DW_TAG_formal_parameter
	.long	.Linfo_string243        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1544                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x15d5:0xc DW_TAG_variable
	.long	.Linfo_string244        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1545                    @ DW_AT_decl_line
	.long	5978                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	26                      @ Abbrev [26] 0x15e2:0x5 DW_TAG_pointer_type
	.long	5607                    @ DW_AT_type
	.byte	40                      @ Abbrev [40] 0x15e7:0xc DW_TAG_typedef
	.long	5619                    @ DW_AT_type
	.long	.Linfo_string240        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	419                     @ DW_AT_decl_line
	.byte	41                      @ Abbrev [41] 0x15f3:0x13e DW_TAG_structure_type
	.short	352                     @ DW_AT_byte_size
	.byte	2                       @ DW_AT_decl_file
	.byte	229                     @ DW_AT_decl_line
	.byte	42                      @ Abbrev [42] 0x15f8:0xc DW_TAG_member
	.long	.Linfo_string212        @ DW_AT_name
	.long	5937                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.byte	247                     @ DW_AT_decl_line
	.byte	0                       @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1604:0xd DW_TAG_member
	.long	.Linfo_string213        @ DW_AT_name
	.long	5952                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	262                     @ DW_AT_decl_line
	.byte	4                       @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1611:0xd DW_TAG_member
	.long	.Linfo_string214        @ DW_AT_name
	.long	5937                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	281                     @ DW_AT_decl_line
	.byte	8                       @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x161e:0xd DW_TAG_member
	.long	.Linfo_string215        @ DW_AT_name
	.long	5952                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	296                     @ DW_AT_decl_line
	.byte	12                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x162b:0xd DW_TAG_member
	.long	.Linfo_string216        @ DW_AT_name
	.long	5957                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	306                     @ DW_AT_decl_line
	.byte	16                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1638:0xd DW_TAG_member
	.long	.Linfo_string219        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	320                     @ DW_AT_decl_line
	.byte	20                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1645:0xd DW_TAG_member
	.long	.Linfo_string220        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	322                     @ DW_AT_decl_line
	.byte	24                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1652:0xd DW_TAG_member
	.long	.Linfo_string221        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	324                     @ DW_AT_decl_line
	.byte	28                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x165f:0xd DW_TAG_member
	.long	.Linfo_string222        @ DW_AT_name
	.long	5947                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	326                     @ DW_AT_decl_line
	.byte	32                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x166c:0xd DW_TAG_member
	.long	.Linfo_string223        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	339                     @ DW_AT_decl_line
	.byte	36                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1679:0xd DW_TAG_member
	.long	.Linfo_string224        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	344                     @ DW_AT_decl_line
	.byte	40                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1686:0xd DW_TAG_member
	.long	.Linfo_string225        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	349                     @ DW_AT_decl_line
	.byte	44                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1693:0xd DW_TAG_member
	.long	.Linfo_string226        @ DW_AT_name
	.long	5947                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	360                     @ DW_AT_decl_line
	.byte	48                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16a0:0xd DW_TAG_member
	.long	.Linfo_string227        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	363                     @ DW_AT_decl_line
	.byte	52                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16ad:0xd DW_TAG_member
	.long	.Linfo_string228        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	367                     @ DW_AT_decl_line
	.byte	56                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16ba:0xd DW_TAG_member
	.long	.Linfo_string229        @ DW_AT_name
	.long	5947                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	369                     @ DW_AT_decl_line
	.byte	60                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16c7:0xd DW_TAG_member
	.long	.Linfo_string230        @ DW_AT_name
	.long	5990                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	377                     @ DW_AT_decl_line
	.byte	64                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16d4:0xd DW_TAG_member
	.long	.Linfo_string233        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	383                     @ DW_AT_decl_line
	.byte	72                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16e1:0xd DW_TAG_member
	.long	.Linfo_string234        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	389                     @ DW_AT_decl_line
	.byte	76                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16ee:0xd DW_TAG_member
	.long	.Linfo_string235        @ DW_AT_name
	.long	5937                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	396                     @ DW_AT_decl_line
	.byte	80                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x16fb:0xd DW_TAG_member
	.long	.Linfo_string236        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	402                     @ DW_AT_decl_line
	.byte	84                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1708:0xd DW_TAG_member
	.long	.Linfo_string237        @ DW_AT_name
	.long	5985                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	412                     @ DW_AT_decl_line
	.byte	88                      @ DW_AT_data_member_location
	.byte	43                      @ Abbrev [43] 0x1715:0xd DW_TAG_member
	.long	.Linfo_string238        @ DW_AT_name
	.long	6013                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	415                     @ DW_AT_decl_line
	.byte	92                      @ DW_AT_data_member_location
	.byte	44                      @ Abbrev [44] 0x1722:0xe DW_TAG_member
	.long	.Linfo_string239        @ DW_AT_name
	.long	6026                    @ DW_AT_type
	.byte	2                       @ DW_AT_decl_file
	.short	418                     @ DW_AT_decl_line
	.short	348                     @ DW_AT_data_member_location
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1731:0x5 DW_TAG_const_type
	.long	5942                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x1736:0x5 DW_TAG_pointer_type
	.long	5947                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x173b:0x5 DW_TAG_const_type
	.long	1128                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x1740:0x5 DW_TAG_const_type
	.long	1500                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x1745:0x5 DW_TAG_const_type
	.long	5962                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x174a:0x5 DW_TAG_pointer_type
	.long	5967                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x174f:0xb DW_TAG_typedef
	.long	5978                    @ DW_AT_type
	.long	.Linfo_string218        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	51                      @ DW_AT_decl_line
	.byte	18                      @ Abbrev [18] 0x175a:0x7 DW_TAG_base_type
	.long	.Linfo_string217        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	4                       @ DW_AT_byte_size
	.byte	20                      @ Abbrev [20] 0x1761:0x5 DW_TAG_const_type
	.long	5967                    @ DW_AT_type
	.byte	20                      @ Abbrev [20] 0x1766:0x5 DW_TAG_const_type
	.long	5995                    @ DW_AT_type
	.byte	36                      @ Abbrev [36] 0x176b:0xb DW_TAG_typedef
	.long	6006                    @ DW_AT_type
	.long	.Linfo_string232        @ DW_AT_name
	.byte	7                       @ DW_AT_decl_file
	.byte	58                      @ DW_AT_decl_line
	.byte	18                      @ Abbrev [18] 0x1776:0x7 DW_TAG_base_type
	.long	.Linfo_string231        @ DW_AT_name
	.byte	7                       @ DW_AT_encoding
	.byte	8                       @ DW_AT_byte_size
	.byte	23                      @ Abbrev [23] 0x177d:0xd DW_TAG_array_type
	.long	4776                    @ DW_AT_type
	.byte	45                      @ Abbrev [45] 0x1782:0x7 DW_TAG_subrange_type
	.long	1473                    @ DW_AT_type
	.short	256                     @ DW_AT_count
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x178a:0x5 DW_TAG_const_type
	.long	5978                    @ DW_AT_type
	.byte	46                      @ Abbrev [46] 0x178f:0x19a DW_TAG_subprogram
	.long	.Lfunc_begin0           @ DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	.Linfo_string287        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	166                     @ DW_AT_decl_line
	.long	1179                    @ DW_AT_type
                                        @ DW_AT_external
	.byte	47                      @ Abbrev [47] 0x17a4:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0            @ DW_AT_location
	.long	.Linfo_string211        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	166                     @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	47                      @ Abbrev [47] 0x17b3:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1            @ DW_AT_location
	.long	.Linfo_string290        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	166                     @ DW_AT_decl_line
	.long	7328                    @ DW_AT_type
	.byte	48                      @ Abbrev [48] 0x17c2:0x21 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges0         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	178                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x17cd:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x17d3:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x17d9:0x9 DW_TAG_variable
	.long	.Ldebug_loc2            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	48                      @ Abbrev [48] 0x17e3:0x21 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges1         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	179                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x17ee:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x17f4:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x17fa:0x9 DW_TAG_variable
	.long	.Ldebug_loc3            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x1804:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp20                 @ DW_AT_low_pc
	.long	.Ltmp25-.Ltmp20         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	180                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x1813:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x1819:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x181f:0x9 DW_TAG_variable
	.long	.Ldebug_loc4            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x1829:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp25                 @ DW_AT_low_pc
	.long	.Ltmp30-.Ltmp25         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	181                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x1838:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x183e:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x1844:0x9 DW_TAG_variable
	.long	.Ldebug_loc5            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x184e:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp30                 @ DW_AT_low_pc
	.long	.Ltmp35-.Ltmp30         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	182                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x185d:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x1863:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x1869:0x9 DW_TAG_variable
	.long	.Ldebug_loc6            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x1873:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp35                 @ DW_AT_low_pc
	.long	.Ltmp40-.Ltmp35         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	183                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x1882:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x1888:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x188e:0x9 DW_TAG_variable
	.long	.Ldebug_loc7            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x1898:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp40                 @ DW_AT_low_pc
	.long	.Ltmp45-.Ltmp40         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	184                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x18a7:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x18ad:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x18b3:0x9 DW_TAG_variable
	.long	.Ldebug_loc8            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x18bd:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp45                 @ DW_AT_low_pc
	.long	.Ltmp50-.Ltmp45         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	185                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x18cc:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x18d2:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x18d8:0x9 DW_TAG_variable
	.long	.Ldebug_loc9            @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	49                      @ Abbrev [49] 0x18e2:0x25 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ltmp50                 @ DW_AT_low_pc
	.long	.Ltmp55-.Ltmp50         @ DW_AT_high_pc
	.byte	1                       @ DW_AT_call_file
	.byte	186                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x18f1:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x18f7:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x18fd:0x9 DW_TAG_variable
	.long	.Ldebug_loc10           @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	48                      @ Abbrev [48] 0x1907:0x21 DW_TAG_inlined_subroutine
	.long	5528                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges2         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	187                     @ DW_AT_call_line
	.byte	11                      @ Abbrev [11] 0x1912:0x6 DW_TAG_formal_parameter
	.byte	0                       @ DW_AT_const_value
	.long	5553                    @ DW_AT_abstract_origin
	.byte	11                      @ Abbrev [11] 0x1918:0x6 DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_const_value
	.long	5577                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x191e:0x9 DW_TAG_variable
	.long	.Ldebug_loc11           @ DW_AT_location
	.long	5589                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	50                      @ Abbrev [50] 0x1929:0x35 DW_TAG_subprogram
	.long	.Lfunc_begin1           @ DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	6494                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x1938:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc12           @ DW_AT_location
	.long	6510                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x1941:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc13           @ DW_AT_location
	.long	6521                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x194a:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc14           @ DW_AT_location
	.long	6532                    @ DW_AT_abstract_origin
	.byte	51                      @ Abbrev [51] 0x1953:0x5 DW_TAG_variable
	.long	6543                    @ DW_AT_abstract_origin
	.byte	51                      @ Abbrev [51] 0x1958:0x5 DW_TAG_variable
	.long	6554                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x195e:0x48 DW_TAG_subprogram
	.long	.Linfo_string245        @ DW_AT_linkage_name
	.long	.Linfo_string246        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	226                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_inline
	.byte	53                      @ Abbrev [53] 0x196e:0xb DW_TAG_formal_parameter
	.long	.Linfo_string247        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	226                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1979:0xb DW_TAG_formal_parameter
	.long	.Linfo_string248        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	226                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1984:0xb DW_TAG_formal_parameter
	.long	.Linfo_string249        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	226                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x198f:0xb DW_TAG_variable
	.long	.Linfo_string250        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	227                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x199a:0xb DW_TAG_variable
	.long	.Linfo_string251        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	228                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	50                      @ Abbrev [50] 0x19a6:0x79 DW_TAG_subprogram
	.long	.Lfunc_begin2           @ DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	91
	.long	7163                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x19b5:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc15           @ DW_AT_location
	.long	7179                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x19be:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc16           @ DW_AT_location
	.long	7190                    @ DW_AT_abstract_origin
	.byte	10                      @ Abbrev [10] 0x19c7:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc17           @ DW_AT_location
	.long	7201                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x19d0:0x9 DW_TAG_variable
	.long	.Ldebug_loc18           @ DW_AT_location
	.long	7212                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x19d9:0x9 DW_TAG_variable
	.long	.Ldebug_loc19           @ DW_AT_location
	.long	7245                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x19e2:0x9 DW_TAG_variable
	.long	.Ldebug_loc20           @ DW_AT_location
	.long	7223                    @ DW_AT_abstract_origin
	.byte	14                      @ Abbrev [14] 0x19eb:0x9 DW_TAG_variable
	.long	.Ldebug_loc21           @ DW_AT_location
	.long	7234                    @ DW_AT_abstract_origin
	.byte	8                       @ Abbrev [8] 0x19f4:0x2a DW_TAG_lexical_block
	.long	.Ltmp91                 @ DW_AT_low_pc
	.long	.Ltmp97-.Ltmp91         @ DW_AT_high_pc
	.byte	51                      @ Abbrev [51] 0x19fd:0x5 DW_TAG_variable
	.long	7257                    @ DW_AT_abstract_origin
	.byte	51                      @ Abbrev [51] 0x1a02:0x5 DW_TAG_variable
	.long	7268                    @ DW_AT_abstract_origin
	.byte	17                      @ Abbrev [17] 0x1a07:0x16 DW_TAG_inlined_subroutine
	.long	6494                    @ DW_AT_abstract_origin
	.long	.Ldebug_ranges3         @ DW_AT_ranges
	.byte	1                       @ DW_AT_call_file
	.byte	249                     @ DW_AT_call_line
	.byte	1                       @ DW_AT_GNU_discriminator
	.byte	10                      @ Abbrev [10] 0x1a13:0x9 DW_TAG_formal_parameter
	.long	.Ldebug_loc22           @ DW_AT_location
	.long	6532                    @ DW_AT_abstract_origin
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0x1a1f:0x3e DW_TAG_subprogram
	.long	.Linfo_string252        @ DW_AT_linkage_name
	.long	.Linfo_string253        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1487                    @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	39                      @ Abbrev [39] 0x1a2c:0xc DW_TAG_formal_parameter
	.long	.Linfo_string211        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1487                    @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1a38:0xc DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1487                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1a44:0xc DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1487                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1a50:0xc DW_TAG_formal_parameter
	.long	.Linfo_string254        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1487                    @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	38                      @ Abbrev [38] 0x1a5d:0x4a DW_TAG_subprogram
	.long	.Linfo_string255        @ DW_AT_linkage_name
	.long	.Linfo_string256        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1499                    @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	39                      @ Abbrev [39] 0x1a6a:0xc DW_TAG_formal_parameter
	.long	.Linfo_string211        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1499                    @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1a76:0xc DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1499                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1a82:0xc DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1499                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1a8e:0xc DW_TAG_formal_parameter
	.long	.Linfo_string254        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1499                    @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x1a9a:0xc DW_TAG_variable
	.long	.Linfo_string244        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1500                    @ DW_AT_decl_line
	.long	5978                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	55                      @ Abbrev [55] 0x1aa7:0x3d DW_TAG_subprogram
	.long	.Linfo_string257        @ DW_AT_linkage_name
	.long	.Linfo_string258        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.long	1179                    @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	53                      @ Abbrev [53] 0x1ab7:0xb DW_TAG_formal_parameter
	.long	.Linfo_string259        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.long	6884                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1ac2:0xb DW_TAG_formal_parameter
	.long	.Linfo_string260        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.long	6889                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1acd:0xb DW_TAG_formal_parameter
	.long	.Linfo_string261        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	192                     @ DW_AT_decl_line
	.long	6899                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1ad8:0xb DW_TAG_variable
	.long	.Linfo_string262        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	193                     @ DW_AT_decl_line
	.long	1179                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	20                      @ Abbrev [20] 0x1ae4:0x5 DW_TAG_const_type
	.long	1179                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x1ae9:0x5 DW_TAG_pointer_type
	.long	6894                    @ DW_AT_type
	.byte	56                      @ Abbrev [56] 0x1aee:0x5 DW_TAG_volatile_type
	.long	1179                    @ DW_AT_type
	.byte	26                      @ Abbrev [26] 0x1af3:0x5 DW_TAG_pointer_type
	.long	6904                    @ DW_AT_type
	.byte	56                      @ Abbrev [56] 0x1af8:0x5 DW_TAG_volatile_type
	.long	1152                    @ DW_AT_type
	.byte	38                      @ Abbrev [38] 0x1afd:0x4a DW_TAG_subprogram
	.long	.Linfo_string263        @ DW_AT_linkage_name
	.long	.Linfo_string264        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1521                    @ DW_AT_decl_line
	.byte	1                       @ DW_AT_inline
	.byte	39                      @ Abbrev [39] 0x1b0a:0xc DW_TAG_formal_parameter
	.long	.Linfo_string211        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1521                    @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1b16:0xc DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1521                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1b22:0xc DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1521                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1b2e:0xc DW_TAG_formal_parameter
	.long	.Linfo_string254        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1521                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	7                       @ Abbrev [7] 0x1b3a:0xc DW_TAG_variable
	.long	.Linfo_string244        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1522                    @ DW_AT_decl_line
	.long	5978                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	57                      @ Abbrev [57] 0x1b47:0x36 DW_TAG_subprogram
	.long	.Linfo_string265        @ DW_AT_linkage_name
	.long	.Linfo_string266        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1514                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	39                      @ Abbrev [39] 0x1b58:0xc DW_TAG_formal_parameter
	.long	.Linfo_string211        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1514                    @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1b64:0xc DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1514                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1b70:0xc DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1514                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	55                      @ Abbrev [55] 0x1b7d:0x48 DW_TAG_subprogram
	.long	.Linfo_string267        @ DW_AT_linkage_name
	.long	.Linfo_string268        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	53                      @ Abbrev [53] 0x1b8d:0xb DW_TAG_formal_parameter
	.long	.Linfo_string269        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1b98:0xb DW_TAG_formal_parameter
	.long	.Linfo_string270        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1ba3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string271        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1bae:0xb DW_TAG_formal_parameter
	.long	.Linfo_string272        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1bb9:0xb DW_TAG_formal_parameter
	.long	.Linfo_string273        @ DW_AT_name
	.byte	8                       @ DW_AT_decl_file
	.byte	71                      @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	57                      @ Abbrev [57] 0x1bc5:0x36 DW_TAG_subprogram
	.long	.Linfo_string274        @ DW_AT_linkage_name
	.long	.Linfo_string275        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1476                    @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	1                       @ DW_AT_inline
	.byte	39                      @ Abbrev [39] 0x1bd6:0xc DW_TAG_formal_parameter
	.long	.Linfo_string211        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1476                    @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1be2:0xc DW_TAG_formal_parameter
	.long	.Linfo_string241        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1476                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	39                      @ Abbrev [39] 0x1bee:0xc DW_TAG_formal_parameter
	.long	.Linfo_string242        @ DW_AT_name
	.byte	2                       @ DW_AT_decl_file
	.short	1476                    @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	52                      @ Abbrev [52] 0x1bfb:0x76 DW_TAG_subprogram
	.long	.Linfo_string276        @ DW_AT_linkage_name
	.long	.Linfo_string277        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	232                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
                                        @ DW_AT_external
	.byte	1                       @ DW_AT_inline
	.byte	53                      @ Abbrev [53] 0x1c0b:0xb DW_TAG_formal_parameter
	.long	.Linfo_string278        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	232                     @ DW_AT_decl_line
	.long	5942                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1c16:0xb DW_TAG_formal_parameter
	.long	.Linfo_string279        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	232                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	53                      @ Abbrev [53] 0x1c21:0xb DW_TAG_formal_parameter
	.long	.Linfo_string280        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	232                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1c2c:0xb DW_TAG_variable
	.long	.Linfo_string281        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	233                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1c37:0xb DW_TAG_variable
	.long	.Linfo_string282        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	235                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1c42:0xb DW_TAG_variable
	.long	.Linfo_string283        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	246                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1c4d:0xb DW_TAG_variable
	.long	.Linfo_string284        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	234                     @ DW_AT_decl_line
	.long	1152                    @ DW_AT_type
	.byte	58                      @ Abbrev [58] 0x1c58:0x18 DW_TAG_lexical_block
	.byte	54                      @ Abbrev [54] 0x1c59:0xb DW_TAG_variable
	.long	.Linfo_string285        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	249                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	54                      @ Abbrev [54] 0x1c64:0xb DW_TAG_variable
	.long	.Linfo_string286        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.byte	250                     @ DW_AT_decl_line
	.long	1128                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	0                       @ End Of Children Mark
	.byte	2                       @ Abbrev [2] 0x1c71:0x2f DW_TAG_subprogram
	.long	.Lfunc_begin4           @ DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 @ DW_AT_high_pc
	.byte	1                       @ DW_AT_frame_base
	.byte	93
	.long	.Linfo_string289        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	451                     @ DW_AT_decl_line
                                        @ DW_AT_external
	.byte	59                      @ Abbrev [59] 0x1c83:0xe DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	80
	.long	.Linfo_string211        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	451                     @ DW_AT_decl_line
	.long	5602                    @ DW_AT_type
	.byte	59                      @ Abbrev [59] 0x1c91:0xe DW_TAG_formal_parameter
	.byte	1                       @ DW_AT_location
	.byte	81
	.long	.Linfo_string290        @ DW_AT_name
	.byte	1                       @ DW_AT_decl_file
	.short	451                     @ DW_AT_decl_line
	.long	7328                    @ DW_AT_type
	.byte	0                       @ End Of Children Mark
	.byte	60                      @ Abbrev [60] 0x1ca0:0x1 DW_TAG_pointer_type
	.byte	0                       @ End Of Children Mark
	.section	.debug_ranges,"",%progbits
.Ldebug_range:
.Ldebug_ranges0:
	.long	.Ltmp10-.Lfunc_begin0
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp11-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.long	.Ltmp15-.Lfunc_begin0
	.long	.Ltmp20-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp55-.Lfunc_begin0
	.long	.Ltmp56-.Lfunc_begin0
	.long	.Ltmp57-.Lfunc_begin0
	.long	.Ltmp61-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp92-.Lfunc_begin0
	.long	.Ltmp93-.Lfunc_begin0
	.long	.Ltmp95-.Lfunc_begin0
	.long	.Ltmp96-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges4:
	.long	.Ltmp120-.Lfunc_begin0
	.long	.Ltmp121-.Lfunc_begin0
	.long	.Ltmp360-.Lfunc_begin0
	.long	.Ltmp361-.Lfunc_begin0
	.long	.Ltmp362-.Lfunc_begin0
	.long	.Ltmp363-.Lfunc_begin0
	.long	.Ltmp413-.Lfunc_begin0
	.long	.Ltmp414-.Lfunc_begin0
	.long	.Ltmp415-.Lfunc_begin0
	.long	.Ltmp416-.Lfunc_begin0
	.long	.Ltmp417-.Lfunc_begin0
	.long	.Ltmp425-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges5:
	.long	.Ltmp120-.Lfunc_begin0
	.long	.Ltmp121-.Lfunc_begin0
	.long	.Ltmp360-.Lfunc_begin0
	.long	.Ltmp361-.Lfunc_begin0
	.long	.Ltmp362-.Lfunc_begin0
	.long	.Ltmp363-.Lfunc_begin0
	.long	.Ltmp421-.Lfunc_begin0
	.long	.Ltmp422-.Lfunc_begin0
	.long	.Ltmp423-.Lfunc_begin0
	.long	.Ltmp424-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges6:
	.long	.Ltmp122-.Lfunc_begin0
	.long	.Ltmp123-.Lfunc_begin0
	.long	.Ltmp293-.Lfunc_begin0
	.long	.Ltmp295-.Lfunc_begin0
	.long	.Ltmp296-.Lfunc_begin0
	.long	.Ltmp304-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges7:
	.long	.Ltmp289-.Lfunc_begin0
	.long	.Ltmp290-.Lfunc_begin0
	.long	.Ltmp304-.Lfunc_begin0
	.long	.Ltmp315-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges8:
	.long	.Ltmp123-.Lfunc_begin0
	.long	.Ltmp124-.Lfunc_begin0
	.long	.Ltmp127-.Lfunc_begin0
	.long	.Ltmp128-.Lfunc_begin0
	.long	.Ltmp132-.Lfunc_begin0
	.long	.Ltmp141-.Lfunc_begin0
	.long	.Ltmp143-.Lfunc_begin0
	.long	.Ltmp150-.Lfunc_begin0
	.long	.Ltmp152-.Lfunc_begin0
	.long	.Ltmp154-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges9:
	.long	.Ltmp130-.Lfunc_begin0
	.long	.Ltmp131-.Lfunc_begin0
	.long	.Ltmp267-.Lfunc_begin0
	.long	.Ltmp268-.Lfunc_begin0
	.long	.Ltmp269-.Lfunc_begin0
	.long	.Ltmp270-.Lfunc_begin0
	.long	.Ltmp271-.Lfunc_begin0
	.long	.Ltmp275-.Lfunc_begin0
	.long	.Ltmp276-.Lfunc_begin0
	.long	.Ltmp279-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges10:
	.long	.Ltmp372-.Lfunc_begin0
	.long	.Ltmp373-.Lfunc_begin0
	.long	.Ltmp390-.Lfunc_begin0
	.long	.Ltmp391-.Lfunc_begin0
	.long	.Ltmp394-.Lfunc_begin0
	.long	.Ltmp395-.Lfunc_begin0
	.long	.Ltmp396-.Lfunc_begin0
	.long	.Ltmp407-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges11:
	.long	.Ltmp394-.Lfunc_begin0
	.long	.Ltmp395-.Lfunc_begin0
	.long	.Ltmp396-.Lfunc_begin0
	.long	.Ltmp397-.Lfunc_begin0
	.long	.Ltmp401-.Lfunc_begin0
	.long	.Ltmp402-.Lfunc_begin0
	.long	.Ltmp403-.Lfunc_begin0
	.long	.Ltmp404-.Lfunc_begin0
	.long	.Ltmp405-.Lfunc_begin0
	.long	.Ltmp406-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges12:
	.long	.Ltmp374-.Lfunc_begin0
	.long	.Ltmp375-.Lfunc_begin0
	.long	.Ltmp378-.Lfunc_begin0
	.long	.Ltmp379-.Lfunc_begin0
	.long	.Ltmp381-.Lfunc_begin0
	.long	.Ltmp389-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges13:
	.long	.Ltmp385-.Lfunc_begin0
	.long	.Ltmp386-.Lfunc_begin0
	.long	.Ltmp387-.Lfunc_begin0
	.long	.Ltmp388-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges14:
	.long	.Ltmp156-.Lfunc_begin0
	.long	.Ltmp157-.Lfunc_begin0
	.long	.Ltmp158-.Lfunc_begin0
	.long	.Ltmp162-.Lfunc_begin0
	.long	.Ltmp163-.Lfunc_begin0
	.long	.Ltmp166-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges15:
	.long	.Ltmp166-.Lfunc_begin0
	.long	.Ltmp167-.Lfunc_begin0
	.long	.Ltmp168-.Lfunc_begin0
	.long	.Ltmp169-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges16:
	.long	.Ltmp167-.Lfunc_begin0
	.long	.Ltmp168-.Lfunc_begin0
	.long	.Ltmp169-.Lfunc_begin0
	.long	.Ltmp182-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges17:
	.long	.Ltmp182-.Lfunc_begin0
	.long	.Ltmp184-.Lfunc_begin0
	.long	.Ltmp185-.Lfunc_begin0
	.long	.Ltmp189-.Lfunc_begin0
	.long	.Ltmp190-.Lfunc_begin0
	.long	.Ltmp193-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges18:
	.long	.Ltmp193-.Lfunc_begin0
	.long	.Ltmp194-.Lfunc_begin0
	.long	.Ltmp195-.Lfunc_begin0
	.long	.Ltmp196-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges19:
	.long	.Ltmp194-.Lfunc_begin0
	.long	.Ltmp195-.Lfunc_begin0
	.long	.Ltmp196-.Lfunc_begin0
	.long	.Ltmp209-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges20:
	.long	.Ltmp210-.Lfunc_begin0
	.long	.Ltmp211-.Lfunc_begin0
	.long	.Ltmp212-.Lfunc_begin0
	.long	.Ltmp217-.Lfunc_begin0
	.long	.Ltmp218-.Lfunc_begin0
	.long	.Ltmp221-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges21:
	.long	.Ltmp221-.Lfunc_begin0
	.long	.Ltmp222-.Lfunc_begin0
	.long	.Ltmp223-.Lfunc_begin0
	.long	.Ltmp224-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges22:
	.long	.Ltmp222-.Lfunc_begin0
	.long	.Ltmp223-.Lfunc_begin0
	.long	.Ltmp224-.Lfunc_begin0
	.long	.Ltmp237-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges23:
	.long	.Ltmp237-.Lfunc_begin0
	.long	.Ltmp238-.Lfunc_begin0
	.long	.Ltmp239-.Lfunc_begin0
	.long	.Ltmp244-.Lfunc_begin0
	.long	.Ltmp245-.Lfunc_begin0
	.long	.Ltmp248-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges24:
	.long	.Ltmp252-.Lfunc_begin0
	.long	.Ltmp253-.Lfunc_begin0
	.long	.Ltmp254-.Lfunc_begin0
	.long	.Ltmp259-.Lfunc_begin0
	.long	.Ltmp260-.Lfunc_begin0
	.long	.Ltmp263-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges25:
	.long	.Ltmp280-.Lfunc_begin0
	.long	.Ltmp281-.Lfunc_begin0
	.long	.Ltmp283-.Lfunc_begin0
	.long	.Ltmp284-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges26:
	.long	.Ltmp295-.Lfunc_begin0
	.long	.Ltmp296-.Lfunc_begin0
	.long	.Ltmp344-.Lfunc_begin0
	.long	.Ltmp345-.Lfunc_begin0
	.long	.Ltmp346-.Lfunc_begin0
	.long	.Ltmp349-.Lfunc_begin0
	.long	.Ltmp354-.Lfunc_begin0
	.long	.Ltmp360-.Lfunc_begin0
	.long	.Ltmp361-.Lfunc_begin0
	.long	.Ltmp362-.Lfunc_begin0
	.long	.Ltmp363-.Lfunc_begin0
	.long	.Ltmp366-.Lfunc_begin0
	.long	.Ltmp367-.Lfunc_begin0
	.long	.Ltmp368-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges27:
	.long	.Ltmp318-.Lfunc_begin0
	.long	.Ltmp319-.Lfunc_begin0
	.long	.Ltmp322-.Lfunc_begin0
	.long	.Ltmp324-.Lfunc_begin0
	.long	.Ltmp325-.Lfunc_begin0
	.long	.Ltmp340-.Lfunc_begin0
	.long	0
	.long	0
.Ldebug_ranges28:
	.long	.Ltmp333-.Lfunc_begin0
	.long	.Ltmp334-.Lfunc_begin0
	.long	.Ltmp336-.Lfunc_begin0
	.long	.Ltmp337-.Lfunc_begin0
	.long	.Ltmp338-.Lfunc_begin0
	.long	.Ltmp339-.Lfunc_begin0
	.long	0
	.long	0
	.section	.debug_macinfo,"",%progbits
.Ldebug_macinfo:
.Lcu_macro_begin0:
	.byte	0                       @ End Of Macro List Mark
	.section	.debug_pubnames,"",%progbits
	.long	.LpubNames_end0-.LpubNames_begin0 @ Length of Public Names Info
.LpubNames_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	7330                    @ Compilation Unit Length
	.long	1611                    @ DIE offset
	.asciz	"gMajorScaleSize"       @ External Name
	.long	1348                    @ DIE offset
	.asciz	"gB3Count"              @ External Name
	.long	6823                    @ DIE offset
	.asciz	"debounce"              @ External Name
	.long	1747                    @ DIE offset
	.asciz	"gAnalogIn0ToVolt"      @ External Name
	.long	1827                    @ DIE offset
	.asciz	"std"                   @ External Name
	.long	5528                    @ DIE offset
	.asciz	"pinMode"               @ External Name
	.long	1480                    @ DIE offset
	.asciz	"gScale"                @ External Name
	.long	1135                    @ DIE offset
	.asciz	"gNScales"              @ External Name
	.long	1277                    @ DIE offset
	.asciz	"gB2Pressed"            @ External Name
	.long	1642                    @ DIE offset
	.asciz	"gMinorScaleSize"       @ External Name
	.long	1206                    @ DIE offset
	.asciz	"gB0JustPressed"        @ External Name
	.long	7163                    @ DIE offset
	.asciz	"binary_search_closest" @ External Name
	.long	6983                    @ DIE offset
	.asciz	"digitalRead"           @ External Name
	.long	1696                    @ DIE offset
	.asciz	"gMajorSeventh"         @ External Name
	.long	6749                    @ DIE offset
	.asciz	"analogWrite"           @ External Name
	.long	6494                    @ DIE offset
	.asciz	"circular_distance"     @ External Name
	.long	38                      @ DIE offset
	.asciz	"render"                @ External Name
	.long	7037                    @ DIE offset
	.asciz	"map"                   @ External Name
	.long	1186                    @ DIE offset
	.asciz	"gB0Count"              @ External Name
	.long	6687                    @ DIE offset
	.asciz	"analogWriteOnce"       @ External Name
	.long	1379                    @ DIE offset
	.asciz	"gAutoTrigModeChanged"  @ External Name
	.long	7281                    @ DIE offset
	.asciz	"cleanup"               @ External Name
	.long	1441                    @ DIE offset
	.asciz	"gChromaticScale"       @ External Name
	.long	1653                    @ DIE offset
	.asciz	"gMinorSeventh"         @ External Name
	.long	1536                    @ DIE offset
	.asciz	"gDiminishedScale"      @ External Name
	.long	1226                    @ DIE offset
	.asciz	"gB1Pressed"            @ External Name
	.long	6031                    @ DIE offset
	.asciz	"setup"                 @ External Name
	.long	1758                    @ DIE offset
	.asciz	"gOut0_st"              @ External Name
	.long	101                     @ DIE offset
	.asciz	"render::octave"        @ External Name
	.long	1368                    @ DIE offset
	.asciz	"gB3JustPressed"        @ External Name
	.long	1246                    @ DIE offset
	.asciz	"gB1Count"              @ External Name
	.long	1579                    @ DIE offset
	.asciz	"gMajorScale"           @ External Name
	.long	6909                    @ DIE offset
	.asciz	"digitalWrite"          @ External Name
	.long	1516                    @ DIE offset
	.asciz	"gScaleSize"            @ External Name
	.long	1798                    @ DIE offset
	.asciz	"gVoltsToAnalogOut"     @ External Name
	.long	1421                    @ DIE offset
	.asciz	"gArpMode"              @ External Name
	.long	1159                    @ DIE offset
	.asciz	"gB0Pressed"            @ External Name
	.long	68                      @ DIE offset
	.asciz	"render::in0_v"         @ External Name
	.long	1622                    @ DIE offset
	.asciz	"gMinorScale"           @ External Name
	.long	1317                    @ DIE offset
	.asciz	"gB2JustPressed"        @ External Name
	.long	1716                    @ DIE offset
	.asciz	"gMajorSeventhSize"     @ External Name
	.long	56                      @ DIE offset
	.asciz	"render::in0"           @ External Name
	.long	143                     @ DIE offset
	.asciz	"render::in4"           @ External Name
	.long	80                      @ DIE offset
	.asciz	"render::in0_st"        @ External Name
	.long	1297                    @ DIE offset
	.asciz	"gB2Count"              @ External Name
	.long	1778                    @ DIE offset
	.asciz	"gTrigOut0"             @ External Name
	.long	1505                    @ DIE offset
	.asciz	"gChromaticScaleSize"   @ External Name
	.long	1568                    @ DIE offset
	.asciz	"gDiminishedScaleSize"  @ External Name
	.long	1685                    @ DIE offset
	.asciz	"gMinorSeventhSize"     @ External Name
	.long	7109                    @ DIE offset
	.asciz	"analogRead"            @ External Name
	.long	1727                    @ DIE offset
	.asciz	"gScaleThresholds"      @ External Name
	.long	1328                    @ DIE offset
	.asciz	"gB3Pressed"            @ External Name
	.long	1266                    @ DIE offset
	.asciz	"gB1JustPressed"        @ External Name
	.long	122                     @ DIE offset
	.asciz	"render::interval"      @ External Name
	.long	1410                    @ DIE offset
	.asciz	"gArpModeChanged"       @ External Name
	.long	1390                    @ DIE offset
	.asciz	"gAutoTrigMode"         @ External Name
	.long	0                       @ End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",%progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 @ Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       @ DWARF Version
	.long	.Lcu_begin0             @ Offset of Compilation Unit Info
	.long	7330                    @ Compilation Unit Length
	.long	5978                    @ DIE offset
	.asciz	"unsigned int"          @ External Name
	.long	3340                    @ DIE offset
	.asciz	"float_t"               @ External Name
	.long	3414                    @ DIE offset
	.asciz	"long double"           @ External Name
	.long	4369                    @ DIE offset
	.asciz	"long long int"         @ External Name
	.long	1179                    @ DIE offset
	.asciz	"bool"                  @ External Name
	.long	1152                    @ DIE offset
	.asciz	"int"                   @ External Name
	.long	3329                    @ DIE offset
	.asciz	"double_t"              @ External Name
	.long	6006                    @ DIE offset
	.asciz	"long long unsigned int" @ External Name
	.long	1128                    @ DIE offset
	.asciz	"float"                 @ External Name
	.long	5967                    @ DIE offset
	.asciz	"uint32_t"              @ External Name
	.long	5607                    @ DIE offset
	.asciz	"BelaContext"           @ External Name
	.long	4652                    @ DIE offset
	.asciz	"long int"              @ External Name
	.long	2880                    @ DIE offset
	.asciz	"double"                @ External Name
	.long	5995                    @ DIE offset
	.asciz	"uint64_t"              @ External Name
	.long	4776                    @ DIE offset
	.asciz	"char"                  @ External Name
	.long	0                       @ End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

_ZL13gAutoTrigMode = .L_MergedGlobals
	.size	_ZL13gAutoTrigMode, 1
_ZL8gOut0_st = .L_MergedGlobals+4
	.size	_ZL8gOut0_st, 4
_ZL13gMinorSeventh = .L_MergedGlobals+8
	.size	_ZL13gMinorSeventh, 16
_ZL13gMajorSeventh = .L_MergedGlobals+24
	.size	_ZL13gMajorSeventh, 16
_ZL11gMajorScale = .L_MergedGlobals+40
	.size	_ZL11gMajorScale, 28
_ZL11gMinorScale = .L_MergedGlobals+68
	.size	_ZL11gMinorScale, 28
_ZL16gDiminishedScale = .L_MergedGlobals.4
	.size	_ZL16gDiminishedScale, 36
_ZL15gChromaticScale = .L_MergedGlobals.4+36
	.size	_ZL15gChromaticScale, 48
_ZL10gB0Pressed = .L_MergedGlobals.5
	.size	_ZL10gB0Pressed, 1
_ZL14gB0JustPressed = .L_MergedGlobals.5+1
	.size	_ZL14gB0JustPressed, 1
_ZL10gB1Pressed = .L_MergedGlobals.5+2
	.size	_ZL10gB1Pressed, 1
_ZL10gB2Pressed = .L_MergedGlobals.5+3
	.size	_ZL10gB2Pressed, 1
_ZL10gB3Pressed = .L_MergedGlobals.5+4
	.size	_ZL10gB3Pressed, 1
_ZL20gAutoTrigModeChanged = .L_MergedGlobals.5+5
	.size	_ZL20gAutoTrigModeChanged, 1
_ZL15gArpModeChanged = .L_MergedGlobals.5+6
	.size	_ZL15gArpModeChanged, 1
_ZL8gArpMode = .L_MergedGlobals.5+7
	.size	_ZL8gArpMode, 1
_ZZ6renderE6in0_st = .L_MergedGlobals.5+8
	.size	_ZZ6renderE6in0_st, 4
_ZZ6renderE6octave = .L_MergedGlobals.5+12
	.size	_ZZ6renderE6octave, 4
_ZZ6renderE8interval = .L_MergedGlobals.5+16
	.size	_ZZ6renderE8interval, 4
_ZL8gB0Count = .L_MergedGlobals.5+20
	.size	_ZL8gB0Count, 4
_ZL8gB1Count = .L_MergedGlobals.5+24
	.size	_ZL8gB1Count, 4
_ZL8gB2Count = .L_MergedGlobals.5+28
	.size	_ZL8gB2Count, 4
_ZL8gB3Count = .L_MergedGlobals.5+32
	.size	_ZL8gB3Count, 4
_ZL6gScale = .L_MergedGlobals.5+36
	.size	_ZL6gScale, 4
_ZL10gScaleSize = .L_MergedGlobals.5+40
	.size	_ZL10gScaleSize, 4
_ZL9gTrigOut0 = .L_MergedGlobals.5+44
	.size	_ZL9gTrigOut0, 4
_ZL16gScaleThresholds = .L_MergedGlobals.5+48
	.size	_ZL16gScaleThresholds, 48
	.ident	"clang version 3.9.1-9 (tags/RELEASE_391/rc2)"
	.section	".note.GNU-stack","",%progbits
	.eabi_attribute	30, 2	@ Tag_ABI_optimization_goals
	.section	.debug_line,"",%progbits
.Lline_table_start0:
