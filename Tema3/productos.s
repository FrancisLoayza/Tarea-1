	.file	"productos.c"
	.text
.Ltext0:
	.file 0 "/home/francis-loayza/Documentos/GitHub/Tarea-1/Tema4" "../Tema1/productos.c"
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	","
	.text
	.globl	cargar_productos
	.type	cargar_productos, @function
cargar_productos:
.LFB6:
	.file 1 "../Tema1/productos.c"
	.loc 1 8 54
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$576, %rsp
	movq	%rdi, -568(%rbp)
	movq	%rsi, -576(%rbp)
	.loc 1 8 54
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 9 8
	movq	-576(%rbp), %rax
	movl	$0, (%rax)
	.loc 1 10 15
	movq	-568(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -552(%rbp)
	.loc 1 11 8
	cmpq	$0, -552(%rbp)
	jne	.L2
	.loc 1 11 20 discriminator 1
	movl	$0, %eax
	.loc 1 11 20 is_stmt 0
	jmp	.L18
.L2:
	.loc 1 12 15 is_stmt 1
	movq	$0, -560(%rbp)
	.loc 1 14 11
	jmp	.L4
.L17:
.LBB2:
	.loc 1 15 19
	leaq	-528(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -544(%rbp)
	.loc 1 15 43 discriminator 1
	cmpq	$0, -544(%rbp)
	je	.L5
	.loc 1 15 50 discriminator 1
	movq	-544(%rbp), %rax
	movb	$0, (%rax)
.L5:
	.loc 1 16 20
	leaq	-528(%rbp), %rax
	.loc 1 16 27
	movzbl	(%rax), %eax
	.loc 1 16 12
	testb	%al, %al
	je	.L20
	.loc 1 17 21
	leaq	-528(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 18 12
	cmpq	$0, -536(%rbp)
	je	.L21
	.loc 1 19 48
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 19 51
	addl	$1, %eax
	cltq
	.loc 1 19 15
	imulq	$184, %rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -560(%rbp)
	.loc 1 20 21
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 20 20
	imulq	$184, %rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 20 24
	movq	%rax, %rcx
	.loc 1 20 9
	movq	-536(%rbp), %rax
	movl	$31, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	.loc 1 20 69 discriminator 1
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 20 68 discriminator 1
	imulq	$184, %rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 20 106 discriminator 1
	movb	$0, 31(%rax)
	.loc 1 21 15
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 22 12
	cmpq	$0, -536(%rbp)
	je	.L9
	.loc 1 22 30 discriminator 1
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 22 29 discriminator 1
	imulq	$184, %rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 22 33 discriminator 1
	leaq	32(%rax), %rcx
	.loc 1 22 18 discriminator 1
	movq	-536(%rbp), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	jmp	.L10
.L9:
	.loc 1 22 83 discriminator 2
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 22 82 discriminator 2
	imulq	$184, %rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 22 97 discriminator 2
	movb	$0, 32(%rax)
.L10:
	.loc 1 23 15
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 24 44
	cmpq	$0, -536(%rbp)
	je	.L11
	.loc 1 24 34 discriminator 1
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	jmp	.L12
.L11:
	.loc 1 24 44 discriminator 2
	movl	$0, %eax
.L12:
	.loc 1 24 13 discriminator 4
	movq	-576(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	.loc 1 24 12 discriminator 4
	imulq	$184, %rdx, %rcx
	movq	-560(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 24 26 discriminator 4
	movl	%eax, 160(%rdx)
	.loc 1 25 15
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 26 41
	cmpq	$0, -536(%rbp)
	je	.L13
	.loc 1 26 31 discriminator 1
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	jmp	.L14
.L13:
	.loc 1 26 41 discriminator 2
	movq	.LC2(%rip), %rax
.L14:
	.loc 1 26 13 discriminator 4
	movq	-576(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	.loc 1 26 12 discriminator 4
	imulq	$184, %rdx, %rcx
	movq	-560(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 26 23 discriminator 4
	movq	%rax, 168(%rdx)
	.loc 1 27 15
	leaq	.LC1(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 28 42
	cmpq	$0, -536(%rbp)
	je	.L15
	.loc 1 28 32 discriminator 1
	movq	-536(%rbp), %rax
	movq	%rax, %rdi
	call	atof@PLT
	movq	%xmm0, %rax
	jmp	.L16
.L15:
	.loc 1 28 42 discriminator 2
	movq	.LC2(%rip), %rax
.L16:
	.loc 1 28 13 discriminator 4
	movq	-576(%rbp), %rdx
	movl	(%rdx), %edx
	movslq	%edx, %rdx
	.loc 1 28 12 discriminator 4
	imulq	$184, %rdx, %rcx
	movq	-560(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 28 24 discriminator 4
	movq	%rax, 176(%rdx)
	.loc 1 29 10
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 29 13
	leal	1(%rax), %edx
	movq	-576(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L4
.L20:
	.loc 1 16 33
	nop
	jmp	.L4
.L21:
	.loc 1 18 19
	nop
.L4:
.LBE2:
	.loc 1 14 12
	movq	-552(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 14 12 is_stmt 0 discriminator 1
	testq	%rax, %rax
	jne	.L17
	.loc 1 31 5 is_stmt 1
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 32 12
	movq	-560(%rbp), %rax
.L18:
	.loc 1 33 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cargar_productos, .-cargar_productos
	.section	.rodata
.LC3:
	.string	"w"
.LC4:
	.string	"guardar_productos: fopen"
.LC5:
	.string	"%s,%s,%d,%.2f,%.2f\n"
	.text
	.globl	guardar_productos
	.type	guardar_productos, @function
guardar_productos:
.LFB7:
	.loc 1 35 64
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, -36(%rbp)
	.loc 1 36 15
	movq	-24(%rbp), %rax
	leaq	.LC3(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 37 8
	cmpq	$0, -8(%rbp)
	jne	.L23
	.loc 1 38 9
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	.loc 1 39 9
	jmp	.L22
.L23:
.LBB3:
	.loc 1 41 14
	movl	$0, -12(%rbp)
	.loc 1 41 5
	jmp	.L25
.L26:
	.loc 1 43 81
	movl	-12(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 42 9
	movsd	176(%rax), %xmm0
	.loc 1 43 67
	movl	-12(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 42 9
	movq	168(%rax), %rdx
	.loc 1 43 50
	movl	-12(%rbp), %eax
	cltq
	imulq	$184, %rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 42 9
	movl	160(%rax), %edi
	.loc 1 43 35
	movl	-12(%rbp), %eax
	cltq
	imulq	$184, %rax, %rcx
	movq	-32(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 43 38
	leaq	32(%rax), %rcx
	.loc 1 43 20
	movl	-12(%rbp), %eax
	cltq
	imulq	$184, %rax, %rsi
	movq	-32(%rbp), %rax
	addq	%rsi, %rax
	.loc 1 43 23
	movq	%rax, %rsi
	.loc 1 42 9
	movq	-8(%rbp), %rax
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%edi, %r8d
	movq	%rsi, %rdx
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	movl	$2, %eax
	call	fprintf@PLT
	.loc 1 41 23 discriminator 3
	addl	$1, -12(%rbp)
.L25:
	.loc 1 41 19 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jl	.L26
.LBE3:
	.loc 1 45 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L22:
	.loc 1 46 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	guardar_productos, .-guardar_productos
	.globl	liberar_productos
	.type	liberar_productos, @function
liberar_productos:
.LFB8:
	.loc 1 48 37
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 49 8
	cmpq	$0, -8(%rbp)
	je	.L29
	.loc 1 49 12 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L29:
	.loc 1 50 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	liberar_productos, .-liberar_productos
	.globl	buscar_producto
	.type	buscar_producto, @function
buscar_producto:
.LFB9:
	.loc 1 52 63
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
.LBB4:
	.loc 1 53 14
	movl	$0, -4(%rbp)
	.loc 1 53 5
	jmp	.L31
.L34:
	.loc 1 53 41 discriminator 5
	movl	-4(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 53 44 discriminator 5
	movq	%rax, %rdx
	.loc 1 53 31 discriminator 5
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 53 30 discriminator 5
	testl	%eax, %eax
	jne	.L32
	.loc 1 53 74 discriminator 2
	movl	-4(%rbp), %eax
	.loc 1 53 74 is_stmt 0
	jmp	.L33
.L32:
	.loc 1 53 23 is_stmt 1 discriminator 3
	addl	$1, -4(%rbp)
.L31:
	.loc 1 53 19 discriminator 4
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L34
.LBE4:
	.loc 1 54 12
	movl	$-1, %eax
.L33:
	.loc 1 55 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	buscar_producto, .-buscar_producto
	.globl	actualizar_inventario
	.type	actualizar_inventario, @function
actualizar_inventario:
.LFB10:
	.loc 1 57 90
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movl	%ecx, -32(%rbp)
	.loc 1 58 15
	movq	-40(%rbp), %rdx
	movl	-28(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	buscar_producto
	movl	%eax, -4(%rbp)
	.loc 1 59 8
	cmpl	$0, -4(%rbp)
	jns	.L36
	.loc 1 59 25 discriminator 1
	movl	$0, %eax
	.loc 1 59 25 is_stmt 0
	jmp	.L37
.L36:
	.loc 1 60 12 is_stmt 1
	movl	-4(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 60 17
	movl	160(%rax), %eax
	.loc 1 60 8
	cmpl	%eax, -32(%rbp)
	jle	.L38
	.loc 1 60 53 discriminator 1
	movl	$0, %eax
	.loc 1 60 53 is_stmt 0
	jmp	.L37
.L38:
	.loc 1 61 8 is_stmt 1
	movl	-4(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 61 13
	movl	160(%rax), %eax
	.loc 1 61 8
	movl	-4(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rcx
	movq	-24(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 61 23
	subl	-32(%rbp), %eax
	movl	%eax, 160(%rdx)
	.loc 1 62 12
	movl	$1, %eax
.L37:
	.loc 1 63 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE10:
	.size	actualizar_inventario, .-actualizar_inventario
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	0
	.text
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "../Tema1/productos.h"
	.file 7 "/usr/include/string.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x685
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x13
	.long	.LASF76
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x8
	.long	.LASF9
	.byte	0x2
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x14
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x15
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x8
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x8
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x4
	.long	0x96
	.uleb128 0xd
	.long	0x8c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x16
	.long	0x96
	.uleb128 0x17
	.long	.LASF77
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x229
	.uleb128 0x1
	.long	.LASF13
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x8c
	.byte	0x8
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x8c
	.byte	0x10
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x8c
	.byte	0x18
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x8c
	.byte	0x20
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x8c
	.byte	0x28
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x8c
	.byte	0x30
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x8c
	.byte	0x38
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x8c
	.byte	0x40
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x8c
	.byte	0x48
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x8c
	.byte	0x50
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x8c
	.byte	0x58
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x242
	.byte	0x60
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x247
	.byte	0x68
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x24c
	.byte	0x83
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x25c
	.byte	0x88
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x266
	.byte	0x98
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x270
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x247
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x275
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0x18
	.long	.LASF78
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xe
	.long	.LASF43
	.uleb128 0x4
	.long	0x23d
	.uleb128 0x4
	.long	0xa2
	.uleb128 0xb
	.long	0x96
	.long	0x25c
	.uleb128 0xc
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x235
	.uleb128 0xe
	.long	.LASF44
	.uleb128 0x4
	.long	0x261
	.uleb128 0xe
	.long	.LASF45
	.uleb128 0x4
	.long	0x26b
	.uleb128 0xb
	.long	0x96
	.long	0x285
	.uleb128 0xc
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x9d
	.uleb128 0xd
	.long	0x285
	.uleb128 0x4
	.long	0x229
	.uleb128 0xd
	.long	0x28f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0xb
	.long	0x96
	.long	0x2b7
	.uleb128 0xc
	.long	0x3a
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.byte	0xb8
	.byte	0x6
	.byte	0x4
	.byte	0x9
	.long	0x302
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x5
	.byte	0xa
	.long	0x2a7
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0x6
	.byte	0xa
	.long	0x302
	.byte	0x20
	.uleb128 0x1
	.long	.LASF50
	.byte	0x6
	.byte	0x7
	.byte	0x9
	.long	0x66
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF51
	.byte	0x6
	.byte	0x8
	.byte	0xc
	.long	0x312
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF52
	.byte	0x6
	.byte	0x9
	.byte	0xc
	.long	0x312
	.byte	0xb0
	.byte	0
	.uleb128 0xb
	.long	0x96
	.long	0x312
	.uleb128 0xc
	.long	0x3a
	.byte	0x7f
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.long	.LASF53
	.uleb128 0x8
	.long	.LASF54
	.byte	0x6
	.byte	0xa
	.byte	0x3
	.long	0x2b7
	.uleb128 0x7
	.long	.LASF55
	.byte	0x7
	.byte	0x9c
	.byte	0xc
	.long	0x66
	.long	0x340
	.uleb128 0x2
	.long	0x285
	.uleb128 0x2
	.long	0x285
	.byte	0
	.uleb128 0x11
	.long	.LASF57
	.byte	0x9
	.value	0x2af
	.long	0x352
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0x9
	.long	.LASF56
	.byte	0x8
	.value	0x165
	.byte	0xc
	.long	0x66
	.long	0x36f
	.uleb128 0x2
	.long	0x294
	.uleb128 0x2
	.long	0x28a
	.uleb128 0x1a
	.byte	0
	.uleb128 0x11
	.long	.LASF58
	.byte	0x8
	.value	0x36e
	.long	0x381
	.uleb128 0x2
	.long	0x285
	.byte	0
	.uleb128 0x7
	.long	.LASF59
	.byte	0x8
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0x397
	.uleb128 0x2
	.long	0x28f
	.byte	0
	.uleb128 0x9
	.long	.LASF60
	.byte	0x8
	.value	0x28e
	.byte	0xe
	.long	0x8c
	.long	0x3b8
	.uleb128 0x2
	.long	0x91
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x294
	.byte	0
	.uleb128 0x7
	.long	.LASF61
	.byte	0x9
	.byte	0x66
	.byte	0xf
	.long	0x312
	.long	0x3ce
	.uleb128 0x2
	.long	0x285
	.byte	0
	.uleb128 0x7
	.long	.LASF62
	.byte	0x9
	.byte	0x69
	.byte	0xc
	.long	0x66
	.long	0x3e4
	.uleb128 0x2
	.long	0x285
	.byte	0
	.uleb128 0x7
	.long	.LASF63
	.byte	0x7
	.byte	0x90
	.byte	0xe
	.long	0x8c
	.long	0x404
	.uleb128 0x2
	.long	0x8c
	.uleb128 0x2
	.long	0x285
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x9
	.long	.LASF64
	.byte	0x9
	.value	0x2ab
	.byte	0xe
	.long	0x48
	.long	0x420
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x9
	.long	.LASF65
	.byte	0x7
	.value	0x164
	.byte	0xe
	.long	0x8c
	.long	0x43c
	.uleb128 0x2
	.long	0x91
	.uleb128 0x2
	.long	0x28a
	.byte	0
	.uleb128 0x7
	.long	.LASF66
	.byte	0x7
	.byte	0xf6
	.byte	0xe
	.long	0x8c
	.long	0x457
	.uleb128 0x2
	.long	0x285
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x9
	.long	.LASF67
	.byte	0x8
	.value	0x108
	.byte	0xe
	.long	0x28f
	.long	0x473
	.uleb128 0x2
	.long	0x28a
	.uleb128 0x2
	.long	0x28a
	.byte	0
	.uleb128 0xf
	.long	.LASF69
	.byte	0x39
	.byte	0x5
	.long	0x66
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d9
	.uleb128 0x5
	.string	"arr"
	.byte	0x39
	.byte	0x25
	.long	0x4d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x39
	.byte	0x2e
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF48
	.byte	0x39
	.byte	0x3d
	.long	0x285
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xa
	.long	.LASF68
	.byte	0x39
	.byte	0x49
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"idx"
	.byte	0x3a
	.byte	0x9
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x4
	.long	0x319
	.uleb128 0xf
	.long	.LASF70
	.byte	0x34
	.byte	0x5
	.long	0x66
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x546
	.uleb128 0x5
	.string	"arr"
	.byte	0x34
	.byte	0x1f
	.long	0x4d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"n"
	.byte	0x34
	.byte	0x28
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xa
	.long	.LASF48
	.byte	0x34
	.byte	0x37
	.long	0x285
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x10
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x6
	.string	"i"
	.byte	0x35
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x30
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x56f
	.uleb128 0x5
	.string	"p"
	.byte	0x30
	.byte	0x22
	.long	0x4d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x12
	.long	.LASF72
	.byte	0x23
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x5de
	.uleb128 0xa
	.long	.LASF73
	.byte	0x23
	.byte	0x24
	.long	0x285
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.string	"arr"
	.byte	0x23
	.byte	0x34
	.long	0x4d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.string	"n"
	.byte	0x23
	.byte	0x3d
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"f"
	.byte	0x24
	.byte	0xb
	.long	0x28f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x10
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x6
	.string	"i"
	.byte	0x29
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF74
	.byte	0x8
	.byte	0xb
	.long	0x4d9
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x676
	.uleb128 0xa
	.long	.LASF73
	.byte	0x8
	.byte	0x28
	.long	0x285
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0x5
	.string	"n"
	.byte	0x8
	.byte	0x33
	.long	0x676
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x6
	.string	"f"
	.byte	0xa
	.byte	0xb
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x6
	.string	"arr"
	.byte	0xc
	.byte	0xf
	.long	0x4d9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.long	.LASF75
	.byte	0x1
	.byte	0xd
	.byte	0xa
	.long	0x67b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x6
	.string	"p"
	.byte	0xf
	.byte	0xf
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x6
	.string	"tok"
	.byte	0x11
	.byte	0xf
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -552
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x66
	.uleb128 0x1c
	.long	0x96
	.uleb128 0x1d
	.long	0x3a
	.value	0x1ff
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 13
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF55:
	.string	"strcmp"
.LASF9:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF54:
	.string	"Producto"
.LASF72:
	.string	"guardar_productos"
.LASF63:
	.string	"strncpy"
.LASF20:
	.string	"_IO_buf_base"
.LASF48:
	.string	"codigo"
.LASF47:
	.string	"long long unsigned int"
.LASF57:
	.string	"free"
.LASF35:
	.string	"_codecvt"
.LASF46:
	.string	"long long int"
.LASF6:
	.string	"signed char"
.LASF27:
	.string	"_fileno"
.LASF15:
	.string	"_IO_read_end"
.LASF8:
	.string	"long int"
.LASF76:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF13:
	.string	"_flags"
.LASF71:
	.string	"liberar_productos"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF44:
	.string	"_IO_codecvt"
.LASF53:
	.string	"double"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_buf"
.LASF49:
	.string	"nombre"
.LASF56:
	.string	"fprintf"
.LASF2:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF75:
	.string	"linea"
.LASF66:
	.string	"strchr"
.LASF5:
	.string	"short unsigned int"
.LASF50:
	.string	"cantidad"
.LASF22:
	.string	"_IO_save_base"
.LASF65:
	.string	"strtok"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF60:
	.string	"fgets"
.LASF58:
	.string	"perror"
.LASF51:
	.string	"costo"
.LASF69:
	.string	"actualizar_inventario"
.LASF73:
	.string	"ruta"
.LASF19:
	.string	"_IO_write_end"
.LASF78:
	.string	"_IO_lock_t"
.LASF77:
	.string	"_IO_FILE"
.LASF67:
	.string	"fopen"
.LASF74:
	.string	"cargar_productos"
.LASF25:
	.string	"_markers"
.LASF61:
	.string	"atof"
.LASF62:
	.string	"atoi"
.LASF4:
	.string	"unsigned char"
.LASF7:
	.string	"short int"
.LASF45:
	.string	"_IO_wide_data"
.LASF31:
	.string	"_vtable_offset"
.LASF42:
	.string	"FILE"
.LASF12:
	.string	"char"
.LASF59:
	.string	"fclose"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF70:
	.string	"buscar_producto"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF68:
	.string	"restar_cantidad"
.LASF23:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_freeres_list"
.LASF64:
	.string	"realloc"
.LASF36:
	.string	"_wide_data"
.LASF17:
	.string	"_IO_write_base"
.LASF52:
	.string	"precio"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/francis-loayza/Documentos/GitHub/Tarea-1/Tema4"
.LASF0:
	.string	"../Tema1/productos.c"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
