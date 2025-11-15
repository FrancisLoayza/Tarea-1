	.file	"usuarios.c"
	.text
.Ltext0:
	.file 0 "/home/francis-loayza/Documentos/GitHub/Tarea-1/Tema4" "../Tema1/usuarios.c"
	.section	.rodata
.LC0:
	.string	"r"
	.align 8
.LC1:
	.string	"ERROR: No se pudo abrir el archivo de usuarios: %s\n"
.LC2:
	.string	","
	.text
	.globl	cargar_usuarios
	.type	cargar_usuarios, @function
cargar_usuarios:
.LFB6:
	.file 1 "../Tema1/usuarios.c"
	.loc 1 8 52
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
	.loc 1 8 52
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
	.loc 1 12 9
	movq	-568(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 13 16
	movl	$0, %eax
	jmp	.L12
.L2:
	.loc 1 16 14
	movq	$0, -560(%rbp)
	.loc 1 19 11
	jmp	.L4
.L11:
.LBB2:
	.loc 1 20 19
	leaq	-528(%rbp), %rax
	movl	$10, %esi
	movq	%rax, %rdi
	call	strchr@PLT
	movq	%rax, -544(%rbp)
	.loc 1 21 12
	cmpq	$0, -544(%rbp)
	je	.L5
	.loc 1 21 19 discriminator 1
	movq	-544(%rbp), %rax
	movb	$0, (%rax)
.L5:
	.loc 1 23 20
	leaq	-528(%rbp), %rax
	.loc 1 23 27
	movzbl	(%rax), %eax
	.loc 1 23 12
	testb	%al, %al
	je	.L14
	.loc 1 25 47
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 25 50
	addl	$1, %eax
	cltq
	.loc 1 25 15
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	realloc@PLT
	movq	%rax, -560(%rbp)
	.loc 1 27 21
	leaq	-528(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 28 12
	cmpq	$0, -536(%rbp)
	je	.L15
	.loc 1 29 21
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 29 20
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 29 24
	movq	%rax, %rcx
	.loc 1 29 9
	movq	-536(%rbp), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
	.loc 1 30 13
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 30 12
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 30 43
	movb	$0, 63(%rax)
	.loc 1 32 15
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 33 12
	cmpq	$0, -536(%rbp)
	je	.L9
	.loc 1 34 25
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 34 24
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 34 28
	leaq	64(%rax), %rcx
	.loc 1 34 13
	movq	-536(%rbp), %rax
	movl	$63, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
.L9:
	.loc 1 35 13
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 35 12
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 35 41
	movb	$0, 127(%rax)
	.loc 1 37 15
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	strtok@PLT
	movq	%rax, -536(%rbp)
	.loc 1 38 12
	cmpq	$0, -536(%rbp)
	je	.L10
	.loc 1 39 25
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 39 24
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 39 28
	leaq	128(%rax), %rcx
	.loc 1 39 13
	movq	-536(%rbp), %rax
	movl	$127, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	call	strncpy@PLT
.L10:
	.loc 1 40 13
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	cltq
	.loc 1 40 12
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-560(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 40 41
	movb	$0, 255(%rax)
	.loc 1 42 10
	movq	-576(%rbp), %rax
	movl	(%rax), %eax
	.loc 1 42 13
	leal	1(%rax), %edx
	movq	-576(%rbp), %rax
	movl	%edx, (%rax)
	jmp	.L4
.L14:
	.loc 1 23 33
	nop
	jmp	.L4
.L15:
	.loc 1 28 19
	nop
.L4:
.LBE2:
	.loc 1 19 12
	movq	-552(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 19 12 is_stmt 0 discriminator 1
	testq	%rax, %rax
	jne	.L11
	.loc 1 45 5 is_stmt 1
	movq	-552(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 46 12
	movq	-560(%rbp), %rax
.L12:
	.loc 1 47 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L13
	call	__stack_chk_fail@PLT
.L13:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	cargar_usuarios, .-cargar_usuarios
	.globl	liberar_usuarios
	.type	liberar_usuarios, @function
liberar_usuarios:
.LFB7:
	.loc 1 49 35
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	.loc 1 50 8
	cmpq	$0, -8(%rbp)
	je	.L18
	.loc 1 50 12 discriminator 1
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	free@PLT
.L18:
	.loc 1 51 1
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	liberar_usuarios, .-liberar_usuarios
	.globl	verificar_usuario
	.type	verificar_usuario, @function
verificar_usuario:
.LFB8:
	.loc 1 53 107
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -24(%rbp)
	movl	%esi, -28(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%r8, -56(%rbp)
.LBB3:
	.loc 1 54 14
	movl	$0, -4(%rbp)
	.loc 1 54 5
	jmp	.L20
.L24:
	.loc 1 55 28
	movl	-4(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 55 31
	movq	%rax, %rdx
	.loc 1 55 13
	movq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 55 12 discriminator 1
	testl	%eax, %eax
	jne	.L21
	.loc 1 56 28
	movl	-4(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 56 31
	leaq	64(%rax), %rdx
	.loc 1 56 13
	movq	-48(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	strcmp@PLT
	.loc 1 55 55 discriminator 1
	testl	%eax, %eax
	jne	.L21
	.loc 1 58 16
	cmpq	$0, -56(%rbp)
	je	.L22
	.loc 1 59 45
	movl	-4(%rbp), %eax
	cltq
	salq	$8, %rax
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 59 48
	leaq	128(%rax), %rcx
	.loc 1 59 17
	movq	-56(%rbp), %rax
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
.L22:
	.loc 1 61 20
	movl	$1, %eax
	jmp	.L23
.L21:
	.loc 1 54 29 discriminator 2
	addl	$1, -4(%rbp)
.L20:
	.loc 1 54 23 discriminator 1
	movl	-4(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jl	.L24
.LBE3:
	.loc 1 64 12
	movl	$0, %eax
.L23:
	.loc 1 65 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	verificar_usuario, .-verificar_usuario
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "../Tema1/usuarios.h"
	.file 7 "/usr/include/string.h"
	.file 8 "/usr/include/stdio.h"
	.file 9 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x56d
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x11
	.long	.LASF67
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x5
	.long	.LASF10
	.byte	0x3
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x5
	.long	.LASF11
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x4
	.long	0x96
	.uleb128 0xc
	.long	0x8c
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0x14
	.long	0x96
	.uleb128 0x15
	.long	.LASF68
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
	.uleb128 0x5
	.long	.LASF42
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xa2
	.uleb128 0x16
	.long	.LASF69
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xd
	.long	.LASF43
	.uleb128 0x4
	.long	0x23d
	.uleb128 0x4
	.long	0xa2
	.uleb128 0x9
	.long	0x96
	.long	0x25c
	.uleb128 0xa
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x235
	.uleb128 0xd
	.long	.LASF44
	.uleb128 0x4
	.long	0x261
	.uleb128 0xd
	.long	.LASF45
	.uleb128 0x4
	.long	0x26b
	.uleb128 0x9
	.long	0x96
	.long	0x285
	.uleb128 0xa
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0x9d
	.uleb128 0xc
	.long	0x285
	.uleb128 0x4
	.long	0x229
	.uleb128 0xc
	.long	0x28f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF46
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF47
	.uleb128 0x17
	.value	0x100
	.byte	0x6
	.byte	0x8
	.byte	0x9
	.long	0x2d9
	.uleb128 0x1
	.long	.LASF48
	.byte	0x6
	.byte	0x9
	.byte	0xa
	.long	0x2d9
	.byte	0
	.uleb128 0x1
	.long	.LASF49
	.byte	0x6
	.byte	0xa
	.byte	0xa
	.long	0x2d9
	.byte	0x40
	.uleb128 0x1
	.long	.LASF50
	.byte	0x6
	.byte	0xb
	.byte	0xa
	.long	0x2e9
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.long	0x96
	.long	0x2e9
	.uleb128 0xa
	.long	0x3a
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.long	0x96
	.long	0x2f9
	.uleb128 0xa
	.long	0x3a
	.byte	0x7f
	.byte	0
	.uleb128 0x5
	.long	.LASF51
	.byte	0x6
	.byte	0xc
	.byte	0x3
	.long	0x2a7
	.uleb128 0xb
	.long	.LASF52
	.byte	0x7
	.byte	0x9c
	.byte	0xc
	.long	0x66
	.long	0x320
	.uleb128 0x2
	.long	0x285
	.uleb128 0x2
	.long	0x285
	.byte	0
	.uleb128 0x18
	.long	.LASF70
	.byte	0x9
	.value	0x2af
	.byte	0xd
	.long	0x333
	.uleb128 0x2
	.long	0x48
	.byte	0
	.uleb128 0xb
	.long	.LASF53
	.byte	0x8
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0x349
	.uleb128 0x2
	.long	0x28f
	.byte	0
	.uleb128 0x6
	.long	.LASF54
	.byte	0x8
	.value	0x28e
	.byte	0xe
	.long	0x8c
	.long	0x36a
	.uleb128 0x2
	.long	0x91
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x294
	.byte	0
	.uleb128 0xb
	.long	.LASF55
	.byte	0x7
	.byte	0x90
	.byte	0xe
	.long	0x8c
	.long	0x38a
	.uleb128 0x2
	.long	0x8c
	.uleb128 0x2
	.long	0x285
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x6
	.long	.LASF56
	.byte	0x7
	.value	0x164
	.byte	0xe
	.long	0x8c
	.long	0x3a6
	.uleb128 0x2
	.long	0x91
	.uleb128 0x2
	.long	0x28a
	.byte	0
	.uleb128 0x6
	.long	.LASF57
	.byte	0x9
	.value	0x2ab
	.byte	0xe
	.long	0x48
	.long	0x3c2
	.uleb128 0x2
	.long	0x48
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0xb
	.long	.LASF58
	.byte	0x7
	.byte	0xf6
	.byte	0xe
	.long	0x8c
	.long	0x3dd
	.uleb128 0x2
	.long	0x285
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x6
	.long	.LASF59
	.byte	0x8
	.value	0x16b
	.byte	0xc
	.long	0x66
	.long	0x3f5
	.uleb128 0x2
	.long	0x285
	.uleb128 0x19
	.byte	0
	.uleb128 0x6
	.long	.LASF60
	.byte	0x8
	.value	0x108
	.byte	0xe
	.long	0x28f
	.long	0x411
	.uleb128 0x2
	.long	0x28a
	.uleb128 0x2
	.long	0x28a
	.byte	0
	.uleb128 0xf
	.long	.LASF63
	.byte	0x35
	.byte	0x5
	.long	0x66
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x496
	.uleb128 0x7
	.long	.LASF61
	.byte	0x35
	.byte	0x20
	.long	0x496
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xe
	.string	"n"
	.byte	0x35
	.byte	0x2e
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x7
	.long	.LASF48
	.byte	0x35
	.byte	0x3d
	.long	0x285
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x7
	.long	.LASF49
	.byte	0x35
	.byte	0x52
	.long	0x285
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x7
	.long	.LASF62
	.byte	0x35
	.byte	0x5f
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x10
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x8
	.string	"i"
	.byte	0x36
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x2f9
	.uleb128 0x1a
	.long	.LASF71
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c6
	.uleb128 0xe
	.string	"u"
	.byte	0x31
	.byte	0x20
	.long	0x496
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF64
	.byte	0x8
	.byte	0xa
	.long	0x496
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x55e
	.uleb128 0x7
	.long	.LASF65
	.byte	0x8
	.byte	0x26
	.long	0x285
	.uleb128 0x3
	.byte	0x91
	.sleb128 -584
	.uleb128 0xe
	.string	"n"
	.byte	0x8
	.byte	0x31
	.long	0x55e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -592
	.uleb128 0x8
	.string	"f"
	.byte	0xa
	.byte	0xb
	.long	0x28f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -568
	.uleb128 0x8
	.string	"arr"
	.byte	0x10
	.byte	0xe
	.long	0x496
	.uleb128 0x3
	.byte	0x91
	.sleb128 -576
	.uleb128 0x1b
	.long	.LASF66
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.long	0x563
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x10
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x8
	.string	"p"
	.byte	0x14
	.byte	0xf
	.long	0x8c
	.uleb128 0x3
	.byte	0x91
	.sleb128 -560
	.uleb128 0x8
	.string	"tok"
	.byte	0x1b
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x12
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
.LASF59:
	.string	"printf"
.LASF10:
	.string	"__off_t"
.LASF14:
	.string	"_IO_read_ptr"
.LASF26:
	.string	"_chain"
.LASF52:
	.string	"strcmp"
.LASF9:
	.string	"size_t"
.LASF32:
	.string	"_shortbuf"
.LASF55:
	.string	"strncpy"
.LASF20:
	.string	"_IO_buf_base"
.LASF47:
	.string	"long long unsigned int"
.LASF70:
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
.LASF67:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF13:
	.string	"_flags"
.LASF21:
	.string	"_IO_buf_end"
.LASF30:
	.string	"_cur_column"
.LASF44:
	.string	"_IO_codecvt"
.LASF63:
	.string	"verificar_usuario"
.LASF29:
	.string	"_old_offset"
.LASF34:
	.string	"_offset"
.LASF51:
	.string	"Usuario"
.LASF43:
	.string	"_IO_marker"
.LASF3:
	.string	"unsigned int"
.LASF62:
	.string	"nombre_out"
.LASF38:
	.string	"_freeres_buf"
.LASF50:
	.string	"nombre"
.LASF48:
	.string	"usuario"
.LASF64:
	.string	"cargar_usuarios"
.LASF2:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_ptr"
.LASF66:
	.string	"linea"
.LASF58:
	.string	"strchr"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"_IO_save_base"
.LASF56:
	.string	"strtok"
.LASF33:
	.string	"_lock"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF54:
	.string	"fgets"
.LASF71:
	.string	"liberar_usuarios"
.LASF49:
	.string	"clave"
.LASF65:
	.string	"ruta"
.LASF19:
	.string	"_IO_write_end"
.LASF69:
	.string	"_IO_lock_t"
.LASF68:
	.string	"_IO_FILE"
.LASF60:
	.string	"fopen"
.LASF25:
	.string	"_markers"
.LASF61:
	.string	"usuarios"
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
.LASF53:
	.string	"fclose"
.LASF11:
	.string	"__off64_t"
.LASF16:
	.string	"_IO_read_base"
.LASF24:
	.string	"_IO_save_end"
.LASF39:
	.string	"__pad5"
.LASF41:
	.string	"_unused2"
.LASF23:
	.string	"_IO_backup_base"
.LASF37:
	.string	"_freeres_list"
.LASF57:
	.string	"realloc"
.LASF36:
	.string	"_wide_data"
.LASF17:
	.string	"_IO_write_base"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"../Tema1/usuarios.c"
.LASF1:
	.string	"/home/francis-loayza/Documentos/GitHub/Tarea-1/Tema4"
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
