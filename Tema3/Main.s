	.file	"Main.c"
	.text
.Ltext0:
	.file 0 "/home/francis-loayza/Documentos/GitHub/Tarea-1/Tema4" "../Tema1/Main.c"
	.section	.rodata
.LC0:
	.string	"r"
.LC1:
	.string	","
	.text
	.globl	obtener_ultimo_num_factura
	.type	obtener_ultimo_num_factura, @function
obtener_ultimo_num_factura:
.LFB6:
	.file 1 "../Tema1/Main.c"
	.loc 1 24 50
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$1072, %rsp
	movq	%rdi, -1064(%rbp)
	.loc 1 24 50
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 25 15
	movq	-1064(%rbp), %rax
	leaq	.LC0(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -1056(%rbp)
	.loc 1 26 8
	cmpq	$0, -1056(%rbp)
	jne	.L2
	.loc 1 26 20 discriminator 1
	movl	$0, %eax
	.loc 1 26 20 is_stmt 0
	jmp	.L9
.L2:
	.loc 1 29 15 is_stmt 1
	movb	$0, -528(%rbp)
	.loc 1 30 11
	jmp	.L5
.L6:
	.loc 1 31 13
	leaq	-1040(%rbp), %rax
	movq	%rax, %rdi
	call	strlen@PLT
	.loc 1 31 12 discriminator 1
	cmpq	$1, %rax
	jbe	.L5
	.loc 1 32 13
	leaq	-1040(%rbp), %rdx
	leaq	-528(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcpy@PLT
.L5:
	.loc 1 30 12
	movq	-1056(%rbp), %rdx
	leaq	-1040(%rbp), %rax
	movl	$512, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 30 12 is_stmt 0 discriminator 1
	testq	%rax, %rax
	jne	.L6
	.loc 1 35 5 is_stmt 1
	movq	-1056(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
	.loc 1 36 16
	leaq	-528(%rbp), %rax
	.loc 1 36 24
	movzbl	(%rax), %eax
	.loc 1 36 8
	testb	%al, %al
	jne	.L7
	.loc 1 36 37 discriminator 1
	movl	$0, %eax
	.loc 1 36 37 is_stmt 0
	jmp	.L9
.L7:
	.loc 1 38 17 is_stmt 1
	leaq	-528(%rbp), %rax
	leaq	.LC1(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strtok@PLT
	movq	%rax, -1048(%rbp)
	.loc 1 39 8
	cmpq	$0, -1048(%rbp)
	jne	.L8
	.loc 1 39 22 discriminator 1
	movl	$0, %eax
	.loc 1 39 22 is_stmt 0
	jmp	.L9
.L8:
	.loc 1 40 12 is_stmt 1
	movq	-1048(%rbp), %rax
	movq	%rax, %rdi
	call	atoi@PLT
.L9:
	.loc 1 41 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L10
	call	__stack_chk_fail@PLT
.L10:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	obtener_ultimo_num_factura, .-obtener_ultimo_num_factura
	.section	.rodata
.LC2:
	.string	"a"
	.align 8
.LC3:
	.string	"No se puede abrir ventas.txt para anexar"
.LC4:
	.string	""
.LC5:
	.string	"%d,%s,%s,%d,%.2f,%.2f,%s,%s\n"
	.text
	.globl	agregar_lineas_venta_a_archivo
	.type	agregar_lineas_venta_a_archivo, @function
agregar_lineas_venta_a_archivo:
.LFB7:
	.loc 1 43 138
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
	movl	%r8d, -32(%rbp)
	movq	%r9, -56(%rbp)
	.loc 1 44 15
	movq	-24(%rbp), %rax
	leaq	.LC2(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	fopen@PLT
	movq	%rax, -8(%rbp)
	.loc 1 45 8
	cmpq	$0, -8(%rbp)
	jne	.L12
	.loc 1 46 9
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	perror@PLT
	.loc 1 47 9
	jmp	.L11
.L12:
.LBB2:
	.loc 1 49 14
	movl	$0, -12(%rbp)
	.loc 1 49 5
	jmp	.L14
.L17:
	.loc 1 50 9
	cmpq	$0, -56(%rbp)
	je	.L15
	.loc 1 50 9 is_stmt 0 discriminator 1
	movq	-56(%rbp), %rax
	jmp	.L16
.L15:
	.loc 1 50 9 discriminator 2
	leaq	.LC4(%rip), %rax
.L16:
	.loc 1 56 22 is_stmt 1
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 50 9
	movsd	176(%rdx), %xmm0
	.loc 1 55 22
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rcx
	movq	-48(%rbp), %rdx
	addq	%rcx, %rdx
	.loc 1 50 9
	movq	168(%rdx), %rcx
	.loc 1 54 22
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rsi
	movq	-48(%rbp), %rdx
	addq	%rsi, %rdx
	.loc 1 50 9
	movl	160(%rdx), %r8d
	.loc 1 53 22
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rsi
	movq	-48(%rbp), %rdx
	addq	%rsi, %rdx
	.loc 1 53 25
	leaq	32(%rdx), %r10
	.loc 1 52 22
	movl	-12(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rsi
	movq	-48(%rbp), %rdx
	addq	%rsi, %rdx
	.loc 1 52 25
	movq	%rdx, %rsi
	.loc 1 50 9
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rdi
	pushq	%rax
	pushq	-40(%rbp)
	movapd	%xmm0, %xmm1
	movq	%rcx, %xmm0
	movl	%r8d, %r9d
	movq	%r10, %r8
	movq	%rsi, %rcx
	leaq	.LC5(%rip), %rax
	movq	%rax, %rsi
	movl	$2, %eax
	call	fprintf@PLT
	addq	$16, %rsp
	.loc 1 49 23 discriminator 2
	addl	$1, -12(%rbp)
.L14:
	.loc 1 49 19 discriminator 1
	movl	-12(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jl	.L17
.LBE2:
	.loc 1 60 5
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	fclose@PLT
.L11:
	.loc 1 61 1
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	agregar_lineas_venta_a_archivo, .-agregar_lineas_venta_a_archivo
	.section	.rodata
.LC6:
	.string	"%04d-%02d-%02d"
	.text
	.globl	fecha_hoy
	.type	fecha_hoy, @function
fecha_hoy:
.LFB8:
	.loc 1 63 36
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$104, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -104(%rbp)
	movl	%esi, -108(%rbp)
	.loc 1 63 36
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	.loc 1 64 16
	movl	$0, %edi
	call	time@PLT
	.loc 1 64 12 discriminator 1
	movq	%rax, -88(%rbp)
	.loc 1 65 21
	leaq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	localtime@PLT
	.loc 1 65 15 discriminator 1
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movq	32(%rax), %rcx
	movq	40(%rax), %rbx
	movq	%rcx, -48(%rbp)
	movq	%rbx, -40(%rbp)
	movq	48(%rax), %rax
	movq	%rax, -32(%rbp)
	.loc 1 66 5
	movl	-68(%rbp), %ecx
	.loc 1 66 61
	movl	-64(%rbp), %eax
	.loc 1 66 5
	leal	1(%rax), %edi
	.loc 1 66 44
	movl	-60(%rbp), %eax
	.loc 1 66 5
	leal	1900(%rax), %edx
	movl	-108(%rbp), %eax
	movslq	%eax, %rsi
	movq	-104(%rbp), %rax
	movl	%ecx, %r9d
	movl	%edi, %r8d
	movl	%edx, %ecx
	leaq	.LC6(%rip), %rdx
	movq	%rax, %rdi
	movl	$0, %eax
	call	snprintf@PLT
	.loc 1 67 1
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	fecha_hoy, .-fecha_hoy
	.section	.rodata
.LC7:
	.string	"vendedores.txt"
.LC8:
	.string	"No se pudo leer %s.\n"
.LC9:
	.string	"Usuario: "
.LC10:
	.string	"\n"
.LC11:
	.string	"Clave: "
.LC12:
	.string	"Usuario/clave incorrectos."
.LC13:
	.string	"Super\303\263 intentos permitidos."
.LC14:
	.string	"Bienvenido %s\n"
.LC15:
	.string	"producto.txt"
	.align 8
.LC16:
	.string	"\nIngrese c\303\263digo de producto: "
.LC17:
	.string	"Producto no encontrado."
	.align 8
.LC18:
	.string	"Producto: %s | Disponible: %d | Precio: %.2f\n"
.LC19:
	.string	"Cantidad a vender: "
.LC20:
	.string	"%d"
.LC21:
	.string	"Cantidad inv\303\241lida."
.LC22:
	.string	"Cantidad debe ser > 0."
.LC23:
	.string	"No hay suficiente inventario."
.LC24:
	.string	"Agregado al carrito."
.LC25:
	.string	"Carrito lleno."
	.align 8
.LC26:
	.string	"\302\277Termina de registrar productos? (s/n): "
.LC27:
	.string	"No se registraron productos."
.LC28:
	.string	"ventas.txt"
	.align 8
.LC29:
	.string	"\n---- ENCABEZADO ----\nFecha: %s\nFactura #: %d\n"
.LC30:
	.string	"Detalle:"
	.align 8
.LC32:
	.string	"%d) %s | Cant: %d | P.unit: %.2f | Total: %.2f\n"
.LC33:
	.string	"TOTAL: %.2f\n"
.LC34:
	.string	"Confirma la venta? (si/no): "
.LC35:
	.string	"si"
.LC36:
	.string	"s"
.LC37:
	.string	"S"
.LC38:
	.string	"Venta cancelada."
	.align 8
.LC39:
	.string	"Venta registrada con \303\251xito. Factura #%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB9:
	.loc 1 69 12
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	-20480(%rsp), %r11
.LPSRL0:
	subq	$4096, %rsp
	orq	$0, (%rsp)
	cmpq	%r11, %rsp
	jne	.LPSRL0
	subq	$3520, %rsp
	.loc 1 69 12
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	.loc 1 70 9
	movl	$0, -23996(%rbp)
	.loc 1 71 25
	leaq	-23996(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	call	cargar_usuarios@PLT
	movq	%rax, -23944(%rbp)
	.loc 1 72 8
	cmpq	$0, -23944(%rbp)
	jne	.L21
	.loc 1 73 9
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
.L21:
	.loc 1 76 9
	movl	$0, -23984(%rbp)
	.loc 1 78 9
	movl	$0, -23980(%rbp)
	.loc 1 80 11
	jmp	.L22
.L27:
	.loc 1 81 9
	leaq	.LC9(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 82 14
	movq	stdin(%rip), %rdx
	leaq	-336(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 82 12 discriminator 1
	testq	%rax, %rax
	je	.L56
	.loc 1 83 23
	leaq	-336(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 83 53 discriminator 1
	movb	$0, -336(%rbp,%rax)
	.loc 1 85 9
	leaq	.LC11(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 86 14
	movq	stdin(%rip), %rdx
	leaq	-272(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 86 12 discriminator 1
	testq	%rax, %rax
	je	.L57
	.loc 1 87 21
	leaq	-272(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 87 49 discriminator 1
	movb	$0, -272(%rbp,%rax)
	.loc 1 89 12
	cmpq	$0, -23944(%rbp)
	je	.L26
	.loc 1 89 25 discriminator 1
	movl	-23996(%rbp), %esi
	leaq	-144(%rbp), %rdi
	leaq	-272(%rbp), %rcx
	leaq	-336(%rbp), %rdx
	movq	-23944(%rbp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	call	verificar_usuario@PLT
	.loc 1 89 22 discriminator 1
	testl	%eax, %eax
	je	.L26
	.loc 1 90 21
	movl	$1, -23980(%rbp)
	.loc 1 91 13
	jmp	.L24
.L26:
	.loc 1 93 13
	leaq	.LC12(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 94 21
	addl	$1, -23984(%rbp)
.L22:
	.loc 1 80 25
	cmpl	$2, -23984(%rbp)
	jg	.L24
	.loc 1 80 25 is_stmt 0 discriminator 1
	cmpl	$0, -23980(%rbp)
	je	.L27
	jmp	.L24
.L56:
	.loc 1 82 66 is_stmt 1
	nop
	jmp	.L24
.L57:
	.loc 1 86 62
	nop
.L24:
	.loc 1 98 8
	cmpl	$0, -23980(%rbp)
	jne	.L28
	.loc 1 99 9
	leaq	.LC13(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 100 12
	cmpq	$0, -23944(%rbp)
	je	.L29
	.loc 1 100 23 discriminator 1
	movq	-23944(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_usuarios@PLT
.L29:
	.loc 1 101 16
	movl	$0, %eax
	jmp	.L54
.L28:
	.loc 1 104 5
	leaq	-144(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC14(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 106 9
	movl	$0, -23992(%rbp)
	.loc 1 107 27
	leaq	-23992(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	cargar_productos@PLT
	movq	%rax, -23936(%rbp)
	.loc 1 108 8
	cmpq	$0, -23936(%rbp)
	jne	.L31
	.loc 1 109 9
	leaq	.LC15(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 110 12
	cmpq	$0, -23944(%rbp)
	je	.L32
	.loc 1 110 23 discriminator 1
	movq	-23944(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_usuarios@PLT
.L32:
	.loc 1 111 16
	movl	$0, %eax
	jmp	.L54
.L31:
	.loc 1 115 9
	movl	$0, -23976(%rbp)
	.loc 1 116 10
	movb	$115, -23997(%rbp)
	.loc 1 119 11
	jmp	.L33
.L46:
.LBB3:
	.loc 1 123 9
	leaq	.LC16(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 124 14
	movq	stdin(%rip), %rdx
	leaq	-208(%rbp), %rax
	movl	$64, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 124 12 discriminator 1
	testq	%rax, %rax
	je	.L58
	.loc 1 125 16
	leaq	-208(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 125 39 discriminator 1
	movb	$0, -208(%rbp,%rax)
	.loc 1 127 19
	movl	-23992(%rbp), %ecx
	leaq	-208(%rbp), %rdx
	movq	-23936(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	buscar_producto@PLT
	movl	%eax, -23964(%rbp)
	.loc 1 128 12
	cmpl	$0, -23964(%rbp)
	jns	.L36
	.loc 1 129 13
	leaq	.LC17(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L36:
	.loc 1 132 77
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-23936(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 131 13
	movq	176(%rax), %rdx
	.loc 1 132 52
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rcx
	movq	-23936(%rbp), %rax
	addq	%rcx, %rax
	.loc 1 131 13
	movl	160(%rax), %eax
	.loc 1 132 29
	movl	-23964(%rbp), %ecx
	movslq	%ecx, %rcx
	imulq	$184, %rcx, %rsi
	movq	-23936(%rbp), %rcx
	addq	%rsi, %rcx
	.loc 1 132 34
	addq	$32, %rcx
	.loc 1 131 13
	movq	%rdx, %xmm0
	movl	%eax, %edx
	movq	%rcx, %rsi
	leaq	.LC18(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 134 13
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 135 17
	leaq	-23988(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC20(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	.loc 1 135 16 discriminator 1
	cmpl	$1, %eax
	je	.L60
	.loc 1 136 23
	nop
.L39:
	.loc 1 136 24 discriminator 1
	call	getchar@PLT
	.loc 1 136 34 discriminator 1
	cmpl	$10, %eax
	jne	.L39
	.loc 1 137 17
	leaq	.LC21(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L60:
	.loc 1 139 23
	nop
.L40:
	.loc 1 139 24 discriminator 1
	call	getchar@PLT
	.loc 1 139 34 discriminator 1
	cmpl	$10, %eax
	jne	.L40
	.loc 1 141 30
	movl	-23988(%rbp), %eax
	.loc 1 141 20
	testl	%eax, %eax
	jg	.L41
	.loc 1 142 21
	leaq	.LC22(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L41:
	.loc 1 143 48
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-23936(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 143 53
	movl	160(%rax), %edx
	.loc 1 143 37
	movl	-23988(%rbp), %eax
	.loc 1 143 27
	cmpl	%eax, %edx
	jge	.L42
	.loc 1 144 21
	leaq	.LC23(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L42:
	.loc 1 146 24
	cmpl	$127, -23976(%rbp)
	jg	.L43
	.loc 1 147 69
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-23936(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 147 74
	movq	%rax, %rcx
	.loc 1 147 51
	leaq	-23920(%rbp), %rdx
	movl	-23976(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rdx, %rax
	.loc 1 147 25
	movl	$31, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	.loc 1 148 69
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-23936(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 148 74
	leaq	32(%rax), %rcx
	.loc 1 148 51
	leaq	-23920(%rbp), %rax
	movl	-23976(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rdx
	addq	$32, %rdx
	addq	%rdx, %rax
	.loc 1 148 25
	movl	$127, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	strncpy@PLT
	.loc 1 149 53
	movl	-23988(%rbp), %eax
	movl	-23976(%rbp), %edx
	movslq	%edx, %rdx
	imulq	$184, %rdx, %rdx
	addq	%rbp, %rdx
	subq	$23760, %rdx
	movl	%eax, (%rdx)
	.loc 1 150 61
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-23936(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 150 66
	movsd	168(%rax), %xmm0
	.loc 1 150 50
	movl	-23976(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23752, %rax
	movsd	%xmm0, (%rax)
	.loc 1 151 62
	movl	-23964(%rbp), %eax
	cltq
	imulq	$184, %rax, %rdx
	movq	-23936(%rbp), %rax
	addq	%rdx, %rax
	.loc 1 151 67
	movsd	176(%rax), %xmm0
	.loc 1 151 51
	movl	-23976(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23744, %rax
	movsd	%xmm0, (%rax)
	.loc 1 152 34
	addl	$1, -23976(%rbp)
	.loc 1 154 25
	leaq	.LC24(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	jmp	.L37
.L43:
	.loc 1 156 25
	leaq	.LC25(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L37:
	.loc 1 162 9
	leaq	.LC26(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 163 14
	movq	stdin(%rip), %rdx
	leaq	-356(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 163 12 discriminator 1
	testq	%rax, %rax
	je	.L59
	.loc 1 164 16
	movzbl	-356(%rbp), %eax
	movb	%al, -23997(%rbp)
.L33:
.LBE3:
	.loc 1 119 26
	cmpb	$115, -23997(%rbp)
	je	.L46
	.loc 1 119 26 is_stmt 0 discriminator 1
	cmpb	$83, -23997(%rbp)
	je	.L46
	jmp	.L45
.L58:
.LBB4:
	.loc 1 124 52 is_stmt 1
	nop
	jmp	.L45
.L59:
	.loc 1 163 60
	nop
.L45:
.LBE4:
	.loc 1 167 8
	cmpl	$0, -23976(%rbp)
	jne	.L47
	.loc 1 168 9
	leaq	.LC27(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 169 9
	movl	-23992(%rbp), %edx
	movq	-23936(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	guardar_productos@PLT
	.loc 1 170 9
	movq	-23936(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_productos@PLT
	.loc 1 171 9
	movq	-23944(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_usuarios@PLT
	.loc 1 172 16
	movl	$0, %eax
	jmp	.L54
.L47:
	.loc 1 176 5
	leaq	-352(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	fecha_hoy
	.loc 1 177 18
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	obtener_ultimo_num_factura
	movl	%eax, -23960(%rbp)
	.loc 1 178 9
	movl	-23960(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -23956(%rbp)
	.loc 1 180 5
	movl	-23956(%rbp), %edx
	leaq	-352(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC29(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 181 5
	leaq	.LC30(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 183 12
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -23952(%rbp)
.LBB5:
	.loc 1 185 14
	movl	$0, -23972(%rbp)
	.loc 1 185 5
	jmp	.L48
.L49:
.LBB6:
	.loc 1 186 32
	movl	-23972(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23760, %rax
	movl	(%rax), %eax
	.loc 1 186 42
	pxor	%xmm1, %xmm1
	cvtsi2sdl	%eax, %xmm1
	.loc 1 186 54
	movl	-23972(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23744, %rax
	movsd	(%rax), %xmm0
	.loc 1 186 16
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -23928(%rbp)
	.loc 1 187 21
	movsd	-23952(%rbp), %xmm0
	addsd	-23928(%rbp), %xmm0
	movsd	%xmm0, -23952(%rbp)
	.loc 1 188 9
	movl	-23972(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23744, %rax
	movq	(%rax), %rdx
	movl	-23972(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23760, %rax
	movl	(%rax), %eax
	.loc 1 189 31
	leaq	-23920(%rbp), %rcx
	movl	-23972(%rbp), %esi
	movslq	%esi, %rsi
	imulq	$184, %rsi, %rsi
	addq	$32, %rsi
	leaq	(%rcx,%rsi), %rdi
	.loc 1 188 9
	movl	-23972(%rbp), %ecx
	leal	1(%rcx), %esi
	movsd	-23928(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rdx, %xmm0
	movl	%eax, %ecx
	movq	%rdi, %rdx
	leaq	.LC32(%rip), %rax
	movq	%rax, %rdi
	movl	$2, %eax
	call	printf@PLT
.LBE6:
	.loc 1 185 31 discriminator 3
	addl	$1, -23972(%rbp)
.L48:
	.loc 1 185 19 discriminator 1
	movl	-23972(%rbp), %eax
	cmpl	-23976(%rbp), %eax
	jl	.L49
.LBE5:
	.loc 1 192 5
	movq	-23952(%rbp), %rax
	movq	%rax, %xmm0
	leaq	.LC33(%rip), %rax
	movq	%rax, %rdi
	movl	$1, %eax
	call	printf@PLT
	.loc 1 195 5
	leaq	.LC34(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 196 10
	movq	stdin(%rip), %rdx
	leaq	-208(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	fgets@PLT
	.loc 1 196 8 discriminator 1
	testq	%rax, %rax
	jne	.L50
	.loc 1 196 52 discriminator 1
	movb	$0, -208(%rbp)
.L50:
	.loc 1 197 10
	leaq	-208(%rbp), %rax
	leaq	.LC10(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcspn@PLT
	.loc 1 197 31 discriminator 1
	movb	$0, -208(%rbp,%rax)
	.loc 1 199 9
	leaq	-208(%rbp), %rax
	leaq	.LC35(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 199 8 discriminator 1
	testl	%eax, %eax
	je	.L51
	.loc 1 199 36 discriminator 1
	leaq	-208(%rbp), %rax
	leaq	.LC36(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 199 33 discriminator 1
	testl	%eax, %eax
	je	.L51
	.loc 1 199 62 discriminator 2
	leaq	-208(%rbp), %rax
	leaq	.LC37(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	.loc 1 199 59 discriminator 1
	testl	%eax, %eax
	je	.L51
	.loc 1 200 9
	leaq	.LC38(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	.loc 1 201 9
	movl	-23992(%rbp), %edx
	movq	-23936(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	guardar_productos@PLT
	.loc 1 202 9
	movq	-23936(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_productos@PLT
	.loc 1 203 9
	movq	-23944(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_usuarios@PLT
	.loc 1 204 16
	movl	$0, %eax
	jmp	.L54
.L51:
.LBB7:
	.loc 1 207 14
	movl	$0, -23968(%rbp)
	.loc 1 207 5
	jmp	.L52
.L53:
	.loc 1 208 9
	movl	-23968(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	addq	%rbp, %rax
	subq	$23760, %rax
	movl	(%rax), %edx
	.loc 1 208 64
	leaq	-23920(%rbp), %rcx
	movl	-23968(%rbp), %eax
	cltq
	imulq	$184, %rax, %rax
	leaq	(%rcx,%rax), %rdi
	.loc 1 208 9
	movl	-23992(%rbp), %esi
	movq	-23936(%rbp), %rax
	movl	%edx, %ecx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	call	actualizar_inventario@PLT
	.loc 1 207 31 discriminator 3
	addl	$1, -23968(%rbp)
.L52:
	.loc 1 207 19 discriminator 1
	movl	-23968(%rbp), %eax
	cmpl	-23976(%rbp), %eax
	jl	.L53
.LBE7:
	.loc 1 211 5
	leaq	-144(%rbp), %rdi
	movl	-23976(%rbp), %esi
	leaq	-23920(%rbp), %rcx
	leaq	-352(%rbp), %rdx
	movl	-23956(%rbp), %eax
	movq	%rdi, %r9
	movl	%esi, %r8d
	movl	%eax, %esi
	leaq	.LC28(%rip), %rax
	movq	%rax, %rdi
	call	agregar_lineas_venta_a_archivo
	.loc 1 213 5
	movl	-23992(%rbp), %edx
	movq	-23936(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC15(%rip), %rax
	movq	%rax, %rdi
	call	guardar_productos@PLT
	.loc 1 215 5
	movl	-23956(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC39(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	.loc 1 217 5
	movq	-23936(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_productos@PLT
	.loc 1 218 5
	movq	-23944(%rbp), %rax
	movq	%rax, %rdi
	call	liberar_usuarios@PLT
	.loc 1 220 12
	movl	$0, %eax
.L54:
	.loc 1 221 1
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L55
	call	__stack_chk_fail@PLT
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
	.file 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
	.file 8 "../Tema1/usuarios.h"
	.file 9 "../Tema1/productos.h"
	.file 10 "/usr/include/string.h"
	.file 11 "/usr/include/stdio.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xad1
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x16
	.long	.LASF123
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
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF2
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x17
	.byte	0x8
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.long	.LASF4
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.long	.LASF7
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
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
	.uleb128 0x8
	.long	.LASF12
	.byte	0x3
	.byte	0xa0
	.byte	0x1a
	.long	0x6d
	.uleb128 0x4
	.long	0xa2
	.uleb128 0xe
	.long	0x98
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.long	.LASF13
	.uleb128 0x13
	.long	0xa2
	.uleb128 0x9
	.long	0xa2
	.long	0xbe
	.uleb128 0xa
	.long	0x3a
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.long	.LASF50
	.byte	0xd8
	.byte	0x4
	.byte	0x31
	.byte	0x8
	.long	0x245
	.uleb128 0x1
	.long	.LASF14
	.byte	0x4
	.byte	0x33
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF15
	.byte	0x4
	.byte	0x36
	.byte	0x9
	.long	0x98
	.byte	0x8
	.uleb128 0x1
	.long	.LASF16
	.byte	0x4
	.byte	0x37
	.byte	0x9
	.long	0x98
	.byte	0x10
	.uleb128 0x1
	.long	.LASF17
	.byte	0x4
	.byte	0x38
	.byte	0x9
	.long	0x98
	.byte	0x18
	.uleb128 0x1
	.long	.LASF18
	.byte	0x4
	.byte	0x39
	.byte	0x9
	.long	0x98
	.byte	0x20
	.uleb128 0x1
	.long	.LASF19
	.byte	0x4
	.byte	0x3a
	.byte	0x9
	.long	0x98
	.byte	0x28
	.uleb128 0x1
	.long	.LASF20
	.byte	0x4
	.byte	0x3b
	.byte	0x9
	.long	0x98
	.byte	0x30
	.uleb128 0x1
	.long	.LASF21
	.byte	0x4
	.byte	0x3c
	.byte	0x9
	.long	0x98
	.byte	0x38
	.uleb128 0x1
	.long	.LASF22
	.byte	0x4
	.byte	0x3d
	.byte	0x9
	.long	0x98
	.byte	0x40
	.uleb128 0x1
	.long	.LASF23
	.byte	0x4
	.byte	0x40
	.byte	0x9
	.long	0x98
	.byte	0x48
	.uleb128 0x1
	.long	.LASF24
	.byte	0x4
	.byte	0x41
	.byte	0x9
	.long	0x98
	.byte	0x50
	.uleb128 0x1
	.long	.LASF25
	.byte	0x4
	.byte	0x42
	.byte	0x9
	.long	0x98
	.byte	0x58
	.uleb128 0x1
	.long	.LASF26
	.byte	0x4
	.byte	0x44
	.byte	0x16
	.long	0x25e
	.byte	0x60
	.uleb128 0x1
	.long	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x14
	.long	0x263
	.byte	0x68
	.uleb128 0x1
	.long	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0x7
	.long	0x66
	.byte	0x70
	.uleb128 0x1
	.long	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x7
	.long	0x66
	.byte	0x74
	.uleb128 0x1
	.long	.LASF30
	.byte	0x4
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0x1
	.long	.LASF31
	.byte	0x4
	.byte	0x4d
	.byte	0x12
	.long	0x51
	.byte	0x80
	.uleb128 0x1
	.long	.LASF32
	.byte	0x4
	.byte	0x4e
	.byte	0xf
	.long	0x58
	.byte	0x82
	.uleb128 0x1
	.long	.LASF33
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.long	0x268
	.byte	0x83
	.uleb128 0x1
	.long	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0xf
	.long	0x278
	.byte	0x88
	.uleb128 0x1
	.long	.LASF35
	.byte	0x4
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0x1
	.long	.LASF36
	.byte	0x4
	.byte	0x5b
	.byte	0x17
	.long	0x282
	.byte	0x98
	.uleb128 0x1
	.long	.LASF37
	.byte	0x4
	.byte	0x5c
	.byte	0x19
	.long	0x28c
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF38
	.byte	0x4
	.byte	0x5d
	.byte	0x14
	.long	0x263
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF39
	.byte	0x4
	.byte	0x5e
	.byte	0x9
	.long	0x48
	.byte	0xb0
	.uleb128 0x1
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x1
	.long	.LASF41
	.byte	0x4
	.byte	0x60
	.byte	0x7
	.long	0x66
	.byte	0xc0
	.uleb128 0x1
	.long	.LASF42
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.long	0x291
	.byte	0xc4
	.byte	0
	.uleb128 0x8
	.long	.LASF43
	.byte	0x5
	.byte	0x7
	.byte	0x19
	.long	0xbe
	.uleb128 0x1a
	.long	.LASF124
	.byte	0x4
	.byte	0x2b
	.byte	0xe
	.uleb128 0xf
	.long	.LASF44
	.uleb128 0x4
	.long	0x259
	.uleb128 0x4
	.long	0xbe
	.uleb128 0x9
	.long	0xa2
	.long	0x278
	.uleb128 0xa
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x251
	.uleb128 0xf
	.long	.LASF45
	.uleb128 0x4
	.long	0x27d
	.uleb128 0xf
	.long	.LASF46
	.uleb128 0x4
	.long	0x287
	.uleb128 0x9
	.long	0xa2
	.long	0x2a1
	.uleb128 0xa
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.long	0xa9
	.uleb128 0xe
	.long	0x2a1
	.uleb128 0x1b
	.long	.LASF125
	.byte	0xb
	.byte	0x95
	.byte	0xe
	.long	0x2b7
	.uleb128 0x4
	.long	0x245
	.uleb128 0xe
	.long	0x2b7
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x8
	.long	.LASF48
	.byte	0x6
	.byte	0xa
	.byte	0x12
	.long	0x8c
	.uleb128 0x13
	.long	0x2c8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.long	.LASF49
	.uleb128 0x9
	.long	0xa2
	.long	0x2f0
	.uleb128 0xa
	.long	0x3a
	.byte	0x1f
	.byte	0
	.uleb128 0x1c
	.string	"tm"
	.byte	0x38
	.byte	0x7
	.byte	0x7
	.byte	0x8
	.long	0x38c
	.uleb128 0x1
	.long	.LASF51
	.byte	0x7
	.byte	0x9
	.byte	0x7
	.long	0x66
	.byte	0
	.uleb128 0x1
	.long	.LASF52
	.byte	0x7
	.byte	0xa
	.byte	0x7
	.long	0x66
	.byte	0x4
	.uleb128 0x1
	.long	.LASF53
	.byte	0x7
	.byte	0xb
	.byte	0x7
	.long	0x66
	.byte	0x8
	.uleb128 0x1
	.long	.LASF54
	.byte	0x7
	.byte	0xc
	.byte	0x7
	.long	0x66
	.byte	0xc
	.uleb128 0x1
	.long	.LASF55
	.byte	0x7
	.byte	0xd
	.byte	0x7
	.long	0x66
	.byte	0x10
	.uleb128 0x1
	.long	.LASF56
	.byte	0x7
	.byte	0xe
	.byte	0x7
	.long	0x66
	.byte	0x14
	.uleb128 0x1
	.long	.LASF57
	.byte	0x7
	.byte	0xf
	.byte	0x7
	.long	0x66
	.byte	0x18
	.uleb128 0x1
	.long	.LASF58
	.byte	0x7
	.byte	0x10
	.byte	0x7
	.long	0x66
	.byte	0x1c
	.uleb128 0x1
	.long	.LASF59
	.byte	0x7
	.byte	0x11
	.byte	0x7
	.long	0x66
	.byte	0x20
	.uleb128 0x1
	.long	.LASF60
	.byte	0x7
	.byte	0x14
	.byte	0xc
	.long	0x6d
	.byte	0x28
	.uleb128 0x1
	.long	.LASF61
	.byte	0x7
	.byte	0x15
	.byte	0xf
	.long	0x2a1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.value	0x100
	.byte	0x8
	.byte	0x8
	.byte	0x9
	.long	0x3be
	.uleb128 0x1
	.long	.LASF62
	.byte	0x8
	.byte	0x9
	.byte	0xa
	.long	0x3be
	.byte	0
	.uleb128 0x1
	.long	.LASF63
	.byte	0x8
	.byte	0xa
	.byte	0xa
	.long	0x3be
	.byte	0x40
	.uleb128 0x1
	.long	.LASF64
	.byte	0x8
	.byte	0xb
	.byte	0xa
	.long	0x3ce
	.byte	0x80
	.byte	0
	.uleb128 0x9
	.long	0xa2
	.long	0x3ce
	.uleb128 0xa
	.long	0x3a
	.byte	0x3f
	.byte	0
	.uleb128 0x9
	.long	0xa2
	.long	0x3de
	.uleb128 0xa
	.long	0x3a
	.byte	0x7f
	.byte	0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x8
	.byte	0xc
	.byte	0x3
	.long	0x38c
	.uleb128 0x14
	.byte	0xb8
	.byte	0x9
	.byte	0x4
	.long	0x434
	.uleb128 0x1
	.long	.LASF66
	.byte	0x9
	.byte	0x5
	.byte	0xa
	.long	0x2e0
	.byte	0
	.uleb128 0x1
	.long	.LASF64
	.byte	0x9
	.byte	0x6
	.byte	0xa
	.long	0x3ce
	.byte	0x20
	.uleb128 0x1
	.long	.LASF67
	.byte	0x9
	.byte	0x7
	.byte	0x9
	.long	0x66
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF68
	.byte	0x9
	.byte	0x8
	.byte	0xc
	.long	0x434
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x9
	.byte	0x9
	.byte	0xc
	.long	0x434
	.byte	0xb0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.long	.LASF70
	.uleb128 0x8
	.long	.LASF71
	.byte	0x9
	.byte	0xa
	.byte	0x3
	.long	0x3ea
	.uleb128 0x14
	.byte	0xb8
	.byte	0x1
	.byte	0x10
	.long	0x491
	.uleb128 0x1
	.long	.LASF66
	.byte	0x1
	.byte	0x11
	.byte	0xa
	.long	0x2e0
	.byte	0
	.uleb128 0x1
	.long	.LASF64
	.byte	0x1
	.byte	0x12
	.byte	0xa
	.long	0x3ce
	.byte	0x20
	.uleb128 0x1
	.long	.LASF67
	.byte	0x1
	.byte	0x13
	.byte	0x9
	.long	0x66
	.byte	0xa0
	.uleb128 0x1
	.long	.LASF68
	.byte	0x1
	.byte	0x14
	.byte	0xc
	.long	0x434
	.byte	0xa8
	.uleb128 0x1
	.long	.LASF69
	.byte	0x1
	.byte	0x15
	.byte	0xc
	.long	0x434
	.byte	0xb0
	.byte	0
	.uleb128 0x8
	.long	.LASF72
	.byte	0x1
	.byte	0x16
	.byte	0x3
	.long	0x447
	.uleb128 0x5
	.long	.LASF73
	.byte	0x9
	.byte	0x10
	.byte	0x5
	.long	0x66
	.long	0x4c2
	.uleb128 0x2
	.long	0x4c2
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x4
	.long	0x43b
	.uleb128 0x5
	.long	.LASF74
	.byte	0xa
	.byte	0x9c
	.byte	0xc
	.long	0x66
	.long	0x4e2
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0x10
	.long	.LASF75
	.byte	0x9
	.byte	0xe
	.long	0x4f3
	.uleb128 0x2
	.long	0x4c2
	.byte	0
	.uleb128 0x10
	.long	.LASF76
	.byte	0x9
	.byte	0xd
	.long	0x50e
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x4c2
	.uleb128 0x2
	.long	0x66
	.byte	0
	.uleb128 0x5
	.long	.LASF77
	.byte	0xa
	.byte	0x90
	.byte	0xe
	.long	0x98
	.long	0x52e
	.uleb128 0x2
	.long	0x98
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x2e
	.byte	0
	.uleb128 0x1e
	.long	.LASF126
	.byte	0xb
	.value	0x246
	.byte	0xc
	.long	0x66
	.uleb128 0x1f
	.long	.LASF127
	.byte	0xb
	.value	0x1d2
	.byte	0xc
	.long	.LASF128
	.long	0x66
	.long	0x557
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.long	.LASF78
	.byte	0x9
	.byte	0xf
	.byte	0x5
	.long	0x66
	.long	0x577
	.uleb128 0x2
	.long	0x4c2
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0x5
	.long	.LASF79
	.byte	0x9
	.byte	0xc
	.byte	0xb
	.long	0x4c2
	.long	0x592
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x592
	.byte	0
	.uleb128 0x4
	.long	0x66
	.uleb128 0x10
	.long	.LASF80
	.byte	0x8
	.byte	0x12
	.long	0x5a8
	.uleb128 0x2
	.long	0x5a8
	.byte	0
	.uleb128 0x4
	.long	0x3de
	.uleb128 0x5
	.long	.LASF81
	.byte	0x8
	.byte	0x15
	.byte	0x5
	.long	0x66
	.long	0x5d7
	.uleb128 0x2
	.long	0x5a8
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x98
	.byte	0
	.uleb128 0xb
	.long	.LASF82
	.byte	0xa
	.value	0x125
	.byte	0xf
	.long	0x2e
	.long	0x5f3
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0xb
	.long	.LASF83
	.byte	0xb
	.value	0x16b
	.byte	0xc
	.long	0x66
	.long	0x60b
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.long	.LASF84
	.byte	0x8
	.byte	0xf
	.byte	0xa
	.long	0x5a8
	.long	0x626
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0x2
	.long	0x592
	.byte	0
	.uleb128 0xb
	.long	.LASF85
	.byte	0xb
	.value	0x181
	.byte	0xc
	.long	0x66
	.long	0x648
	.uleb128 0x2
	.long	0x98
	.uleb128 0x2
	.long	0x2e
	.uleb128 0x2
	.long	0x2a1
	.uleb128 0xd
	.byte	0
	.uleb128 0x5
	.long	.LASF86
	.byte	0xc
	.byte	0x89
	.byte	0x13
	.long	0x65e
	.long	0x65e
	.uleb128 0x2
	.long	0x663
	.byte	0
	.uleb128 0x4
	.long	0x2f0
	.uleb128 0x4
	.long	0x2d4
	.uleb128 0x5
	.long	.LASF87
	.byte	0xc
	.byte	0x4c
	.byte	0xf
	.long	0x2c8
	.long	0x67e
	.uleb128 0x2
	.long	0x67e
	.byte	0
	.uleb128 0x4
	.long	0x2c8
	.uleb128 0xb
	.long	.LASF88
	.byte	0xb
	.value	0x165
	.byte	0xc
	.long	0x66
	.long	0x6a0
	.uleb128 0x2
	.long	0x2bc
	.uleb128 0x2
	.long	0x2a6
	.uleb128 0xd
	.byte	0
	.uleb128 0x20
	.long	.LASF89
	.byte	0xb
	.value	0x36e
	.byte	0xd
	.long	0x6b3
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0x5
	.long	.LASF90
	.byte	0xd
	.byte	0x69
	.byte	0xc
	.long	0x66
	.long	0x6c9
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0xb
	.long	.LASF91
	.byte	0xa
	.value	0x164
	.byte	0xe
	.long	0x98
	.long	0x6e5
	.uleb128 0x2
	.long	0x9d
	.uleb128 0x2
	.long	0x2a6
	.byte	0
	.uleb128 0x5
	.long	.LASF92
	.byte	0xb
	.byte	0xb8
	.byte	0xc
	.long	0x66
	.long	0x6fb
	.uleb128 0x2
	.long	0x2b7
	.byte	0
	.uleb128 0xb
	.long	.LASF93
	.byte	0xb
	.value	0x28e
	.byte	0xe
	.long	0x98
	.long	0x71c
	.uleb128 0x2
	.long	0x9d
	.uleb128 0x2
	.long	0x66
	.uleb128 0x2
	.long	0x2bc
	.byte	0
	.uleb128 0x5
	.long	.LASF94
	.byte	0xa
	.byte	0x8d
	.byte	0xe
	.long	0x98
	.long	0x737
	.uleb128 0x2
	.long	0x98
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0xb
	.long	.LASF95
	.byte	0xa
	.value	0x197
	.byte	0xf
	.long	0x2e
	.long	0x74e
	.uleb128 0x2
	.long	0x2a1
	.byte	0
	.uleb128 0xb
	.long	.LASF96
	.byte	0xb
	.value	0x108
	.byte	0xe
	.long	0x2b7
	.long	0x76a
	.uleb128 0x2
	.long	0x2a6
	.uleb128 0x2
	.long	0x2a6
	.byte	0
	.uleb128 0x21
	.long	.LASF115
	.byte	0x1
	.byte	0x45
	.byte	0x5
	.long	0x66
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x946
	.uleb128 0x3
	.long	.LASF97
	.byte	0x46
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24012
	.uleb128 0x3
	.long	.LASF98
	.byte	0x47
	.byte	0xe
	.long	0x5a8
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23960
	.uleb128 0x3
	.long	.LASF99
	.byte	0x4c
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24000
	.uleb128 0x3
	.long	.LASF100
	.byte	0x4d
	.byte	0xa
	.long	0x3be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -352
	.uleb128 0x3
	.long	.LASF101
	.byte	0x4d
	.byte	0x1d
	.long	0x3be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x3
	.long	.LASF102
	.byte	0x4d
	.byte	0x2e
	.long	0x3ce
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x3
	.long	.LASF103
	.byte	0x4e
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23996
	.uleb128 0x3
	.long	.LASF104
	.byte	0x6a
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24008
	.uleb128 0x3
	.long	.LASF105
	.byte	0x6b
	.byte	0xf
	.long	0x4c2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23952
	.uleb128 0x3
	.long	.LASF106
	.byte	0x72
	.byte	0xf
	.long	0x946
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23936
	.uleb128 0x3
	.long	.LASF107
	.byte	0x73
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23992
	.uleb128 0x3
	.long	.LASF108
	.byte	0x74
	.byte	0xa
	.long	0xa2
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24013
	.uleb128 0x3
	.long	.LASF109
	.byte	0x75
	.byte	0xa
	.long	0xae
	.uleb128 0x3
	.byte	0x91
	.sleb128 -372
	.uleb128 0x3
	.long	.LASF110
	.byte	0xaf
	.byte	0xa
	.long	0x956
	.uleb128 0x3
	.byte	0x91
	.sleb128 -368
	.uleb128 0x3
	.long	.LASF111
	.byte	0xb1
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23976
	.uleb128 0x3
	.long	.LASF112
	.byte	0xb2
	.byte	0x9
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23972
	.uleb128 0x3
	.long	.LASF113
	.byte	0xb7
	.byte	0xc
	.long	0x434
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23968
	.uleb128 0x3
	.long	.LASF114
	.byte	0xc2
	.byte	0xa
	.long	0x956
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x22
	.long	.LLRL0
	.long	0x8df
	.uleb128 0x3
	.long	.LASF66
	.byte	0x78
	.byte	0xe
	.long	0x3be
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x3
	.long	.LASF67
	.byte	0x79
	.byte	0xd
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -24004
	.uleb128 0x7
	.string	"idx"
	.byte	0x7f
	.byte	0xd
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23980
	.byte	0
	.uleb128 0x23
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.long	0x925
	.uleb128 0x7
	.string	"i"
	.byte	0xb9
	.byte	0xe
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23988
	.uleb128 0x11
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x7
	.string	"tot"
	.byte	0xba
	.byte	0x10
	.long	0x434
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23944
	.byte	0
	.byte	0
	.uleb128 0x11
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x7
	.string	"i"
	.byte	0xcf
	.byte	0xe
	.long	0x66
	.uleb128 0x4
	.byte	0x91
	.sleb128 -23984
	.byte	0
	.byte	0
	.uleb128 0x9
	.long	0x491
	.long	0x956
	.uleb128 0xa
	.long	0x3a
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.long	0xa2
	.long	0x966
	.uleb128 0xa
	.long	0x3a
	.byte	0xf
	.byte	0
	.uleb128 0x15
	.long	.LASF116
	.byte	0x3f
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x9bc
	.uleb128 0x12
	.string	"out"
	.byte	0x3f
	.byte	0x16
	.long	0x98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x12
	.string	"len"
	.byte	0x3f
	.byte	0x1f
	.long	0x66
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x7
	.string	"t"
	.byte	0x40
	.byte	0xc
	.long	0x2c8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x7
	.string	"tm"
	.byte	0x41
	.byte	0xf
	.long	0x2f0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x15
	.long	.LASF117
	.byte	0x2b
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0xa56
	.uleb128 0xc
	.long	.LASF118
	.byte	0x2b
	.byte	0x31
	.long	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0xc
	.long	.LASF112
	.byte	0x2b
	.byte	0x3b
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0xc
	.long	.LASF110
	.byte	0x2b
	.byte	0x54
	.long	0x2a1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0xc
	.long	.LASF119
	.byte	0x2b
	.byte	0x66
	.long	0xa56
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x12
	.string	"m"
	.byte	0x2b
	.byte	0x71
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0xc
	.long	.LASF120
	.byte	0x2b
	.byte	0x80
	.long	0x2a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x7
	.string	"f"
	.byte	0x2c
	.byte	0xb
	.long	0x2b7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x7
	.string	"i"
	.byte	0x31
	.byte	0xe
	.long	0x66
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x4
	.long	0x491
	.uleb128 0x24
	.long	.LASF129
	.byte	0x1
	.byte	0x18
	.byte	0x5
	.long	0x66
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0xac7
	.uleb128 0xc
	.long	.LASF118
	.byte	0x18
	.byte	0x2c
	.long	0x2a1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1080
	.uleb128 0x7
	.string	"f"
	.byte	0x19
	.byte	0xb
	.long	0x2b7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1072
	.uleb128 0x3
	.long	.LASF121
	.byte	0x1b
	.byte	0xa
	.long	0xac7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1056
	.uleb128 0x3
	.long	.LASF122
	.byte	0x1c
	.byte	0xa
	.long	0xac7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -544
	.uleb128 0x7
	.string	"tok"
	.byte	0x26
	.byte	0xb
	.long	0x98
	.uleb128 0x3
	.byte	0x91
	.sleb128 -1064
	.byte	0
	.uleb128 0x25
	.long	0xa2
	.uleb128 0x26
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
	.uleb128 0x34
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 9
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB3-.Ltext0
	.uleb128 .LBE3-.Ltext0
	.byte	0x4
	.uleb128 .LBB4-.Ltext0
	.uleb128 .LBE4-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF117:
	.string	"agregar_lineas_venta_a_archivo"
.LASF72:
	.string	"ItemVenta"
.LASF33:
	.string	"_shortbuf"
.LASF124:
	.string	"_IO_lock_t"
.LASF114:
	.string	"conf"
.LASF95:
	.string	"strlen"
.LASF58:
	.string	"tm_yday"
.LASF22:
	.string	"_IO_buf_end"
.LASF75:
	.string	"liberar_productos"
.LASF97:
	.string	"nusuarios"
.LASF63:
	.string	"clave"
.LASF20:
	.string	"_IO_write_end"
.LASF3:
	.string	"unsigned int"
.LASF38:
	.string	"_freeres_list"
.LASF109:
	.string	"seguir_str"
.LASF14:
	.string	"_flags"
.LASF107:
	.string	"carrito_n"
.LASF69:
	.string	"precio"
.LASF26:
	.string	"_markers"
.LASF54:
	.string	"tm_mday"
.LASF128:
	.string	"__isoc99_scanf"
.LASF123:
	.string	"GNU C17 13.3.0 -mtune=generic -march=x86-64 -g -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF66:
	.string	"codigo"
.LASF94:
	.string	"strcpy"
.LASF55:
	.string	"tm_mon"
.LASF25:
	.string	"_IO_save_end"
.LASF45:
	.string	"_IO_codecvt"
.LASF82:
	.string	"strcspn"
.LASF79:
	.string	"cargar_productos"
.LASF121:
	.string	"linea"
.LASF49:
	.string	"long long unsigned int"
.LASF77:
	.string	"strncpy"
.LASF78:
	.string	"buscar_producto"
.LASF24:
	.string	"_IO_backup_base"
.LASF35:
	.string	"_offset"
.LASF87:
	.string	"time"
.LASF88:
	.string	"fprintf"
.LASF28:
	.string	"_fileno"
.LASF81:
	.string	"verificar_usuario"
.LASF112:
	.string	"num_factura"
.LASF73:
	.string	"actualizar_inventario"
.LASF9:
	.string	"size_t"
.LASF17:
	.string	"_IO_read_base"
.LASF118:
	.string	"ruta"
.LASF125:
	.string	"stdin"
.LASF103:
	.string	"logeado"
.LASF13:
	.string	"char"
.LASF41:
	.string	"_mode"
.LASF44:
	.string	"_IO_marker"
.LASF56:
	.string	"tm_year"
.LASF15:
	.string	"_IO_read_ptr"
.LASF74:
	.string	"strcmp"
.LASF48:
	.string	"time_t"
.LASF86:
	.string	"localtime"
.LASF122:
	.string	"ultima"
.LASF126:
	.string	"getchar"
.LASF111:
	.string	"ultimo"
.LASF18:
	.string	"_IO_write_base"
.LASF47:
	.string	"long long int"
.LASF89:
	.string	"perror"
.LASF83:
	.string	"printf"
.LASF23:
	.string	"_IO_save_base"
.LASF85:
	.string	"snprintf"
.LASF39:
	.string	"_freeres_buf"
.LASF40:
	.string	"__pad5"
.LASF100:
	.string	"usuario_input"
.LASF96:
	.string	"fopen"
.LASF32:
	.string	"_vtable_offset"
.LASF119:
	.string	"items"
.LASF93:
	.string	"fgets"
.LASF76:
	.string	"guardar_productos"
.LASF64:
	.string	"nombre"
.LASF129:
	.string	"obtener_ultimo_num_factura"
.LASF16:
	.string	"_IO_read_end"
.LASF127:
	.string	"scanf"
.LASF7:
	.string	"short int"
.LASF8:
	.string	"long int"
.LASF80:
	.string	"liberar_usuarios"
.LASF46:
	.string	"_IO_wide_data"
.LASF92:
	.string	"fclose"
.LASF120:
	.string	"vendedor"
.LASF113:
	.string	"total_venta"
.LASF71:
	.string	"Producto"
.LASF108:
	.string	"seguir"
.LASF106:
	.string	"carrito"
.LASF37:
	.string	"_wide_data"
.LASF105:
	.string	"productos"
.LASF62:
	.string	"usuario"
.LASF34:
	.string	"_lock"
.LASF2:
	.string	"long unsigned int"
.LASF84:
	.string	"cargar_usuarios"
.LASF30:
	.string	"_old_offset"
.LASF50:
	.string	"_IO_FILE"
.LASF52:
	.string	"tm_min"
.LASF61:
	.string	"tm_zone"
.LASF68:
	.string	"costo"
.LASF4:
	.string	"unsigned char"
.LASF116:
	.string	"fecha_hoy"
.LASF99:
	.string	"intentos"
.LASF101:
	.string	"clave_input"
.LASF19:
	.string	"_IO_write_ptr"
.LASF110:
	.string	"fecha"
.LASF91:
	.string	"strtok"
.LASF12:
	.string	"__time_t"
.LASF36:
	.string	"_codecvt"
.LASF57:
	.string	"tm_wday"
.LASF67:
	.string	"cantidad"
.LASF10:
	.string	"__off_t"
.LASF53:
	.string	"tm_hour"
.LASF6:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF51:
	.string	"tm_sec"
.LASF115:
	.string	"main"
.LASF90:
	.string	"atoi"
.LASF59:
	.string	"tm_isdst"
.LASF98:
	.string	"usuarios"
.LASF65:
	.string	"Usuario"
.LASF70:
	.string	"double"
.LASF60:
	.string	"tm_gmtoff"
.LASF27:
	.string	"_chain"
.LASF43:
	.string	"FILE"
.LASF29:
	.string	"_flags2"
.LASF31:
	.string	"_cur_column"
.LASF11:
	.string	"__off64_t"
.LASF104:
	.string	"nproductos"
.LASF42:
	.string	"_unused2"
.LASF21:
	.string	"_IO_buf_base"
.LASF102:
	.string	"nombre_logeado"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"../Tema1/Main.c"
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
