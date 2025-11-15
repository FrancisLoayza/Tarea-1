
../Tema3/usuarios.o:     formato del fichero elf64-x86-64


Desensamblado de la sección .text:

0000000000000000 <cargar_usuarios>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 81 ec 40 02 00 00 	sub    rsp,0x240
   f:	48 89 bd c8 fd ff ff 	mov    QWORD PTR [rbp-0x238],rdi
  16:	48 89 b5 c0 fd ff ff 	mov    QWORD PTR [rbp-0x240],rsi
  1d:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  24:	00 00 
  26:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  2a:	31 c0                	xor    eax,eax
  2c:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
  33:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
  39:	48 8b 85 c8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x238]
  40:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 47 <cargar_usuarios+0x47>
  47:	48 89 d6             	mov    rsi,rdx
  4a:	48 89 c7             	mov    rdi,rax
  4d:	e8 00 00 00 00       	call   52 <cargar_usuarios+0x52>
  52:	48 89 85 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rax
  59:	48 83 bd d8 fd ff ff 	cmp    QWORD PTR [rbp-0x228],0x0
  60:	00 
  61:	75 28                	jne    8b <cargar_usuarios+0x8b>
  63:	48 8b 85 c8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x238]
  6a:	48 89 c6             	mov    rsi,rax
  6d:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 74 <cargar_usuarios+0x74>
  74:	48 89 c7             	mov    rdi,rax
  77:	b8 00 00 00 00       	mov    eax,0x0
  7c:	e8 00 00 00 00       	call   81 <cargar_usuarios+0x81>
  81:	b8 00 00 00 00       	mov    eax,0x0
  86:	e9 56 02 00 00       	jmp    2e1 <cargar_usuarios+0x2e1>
  8b:	48 c7 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],0x0
  92:	00 00 00 00 
  96:	e9 0c 02 00 00       	jmp    2a7 <cargar_usuarios+0x2a7>
  9b:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  a2:	be 0a 00 00 00       	mov    esi,0xa
  a7:	48 89 c7             	mov    rdi,rax
  aa:	e8 00 00 00 00       	call   af <cargar_usuarios+0xaf>
  af:	48 89 85 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rax
  b6:	48 83 bd e0 fd ff ff 	cmp    QWORD PTR [rbp-0x220],0x0
  bd:	00 
  be:	74 0a                	je     ca <cargar_usuarios+0xca>
  c0:	48 8b 85 e0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x220]
  c7:	c6 00 00             	mov    BYTE PTR [rax],0x0
  ca:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  d1:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  d4:	84 c0                	test   al,al
  d6:	0f 84 c7 01 00 00    	je     2a3 <cargar_usuarios+0x2a3>
  dc:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
  e3:	8b 00                	mov    eax,DWORD PTR [rax]
  e5:	83 c0 01             	add    eax,0x1
  e8:	48 98                	cdqe
  ea:	48 c1 e0 08          	shl    rax,0x8
  ee:	48 89 c2             	mov    rdx,rax
  f1:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
  f8:	48 89 d6             	mov    rsi,rdx
  fb:	48 89 c7             	mov    rdi,rax
  fe:	e8 00 00 00 00       	call   103 <cargar_usuarios+0x103>
 103:	48 89 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],rax
 10a:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
 111:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 118 <cargar_usuarios+0x118>
 118:	48 89 d6             	mov    rsi,rdx
 11b:	48 89 c7             	mov    rdi,rax
 11e:	e8 00 00 00 00       	call   123 <cargar_usuarios+0x123>
 123:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 12a:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 131:	00 
 132:	0f 84 6e 01 00 00    	je     2a6 <cargar_usuarios+0x2a6>
 138:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 13f:	8b 00                	mov    eax,DWORD PTR [rax]
 141:	48 98                	cdqe
 143:	48 c1 e0 08          	shl    rax,0x8
 147:	48 89 c2             	mov    rdx,rax
 14a:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 151:	48 01 d0             	add    rax,rdx
 154:	48 89 c1             	mov    rcx,rax
 157:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 15e:	ba 3f 00 00 00       	mov    edx,0x3f
 163:	48 89 c6             	mov    rsi,rax
 166:	48 89 cf             	mov    rdi,rcx
 169:	e8 00 00 00 00       	call   16e <cargar_usuarios+0x16e>
 16e:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 175:	8b 00                	mov    eax,DWORD PTR [rax]
 177:	48 98                	cdqe
 179:	48 c1 e0 08          	shl    rax,0x8
 17d:	48 89 c2             	mov    rdx,rax
 180:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 187:	48 01 d0             	add    rax,rdx
 18a:	c6 40 3f 00          	mov    BYTE PTR [rax+0x3f],0x0
 18e:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 195 <cargar_usuarios+0x195>
 195:	48 89 c6             	mov    rsi,rax
 198:	bf 00 00 00 00       	mov    edi,0x0
 19d:	e8 00 00 00 00       	call   1a2 <cargar_usuarios+0x1a2>
 1a2:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 1a9:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 1b0:	00 
 1b1:	74 37                	je     1ea <cargar_usuarios+0x1ea>
 1b3:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 1ba:	8b 00                	mov    eax,DWORD PTR [rax]
 1bc:	48 98                	cdqe
 1be:	48 c1 e0 08          	shl    rax,0x8
 1c2:	48 89 c2             	mov    rdx,rax
 1c5:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 1cc:	48 01 d0             	add    rax,rdx
 1cf:	48 8d 48 40          	lea    rcx,[rax+0x40]
 1d3:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 1da:	ba 3f 00 00 00       	mov    edx,0x3f
 1df:	48 89 c6             	mov    rsi,rax
 1e2:	48 89 cf             	mov    rdi,rcx
 1e5:	e8 00 00 00 00       	call   1ea <cargar_usuarios+0x1ea>
 1ea:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 1f1:	8b 00                	mov    eax,DWORD PTR [rax]
 1f3:	48 98                	cdqe
 1f5:	48 c1 e0 08          	shl    rax,0x8
 1f9:	48 89 c2             	mov    rdx,rax
 1fc:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 203:	48 01 d0             	add    rax,rdx
 206:	c6 40 7f 00          	mov    BYTE PTR [rax+0x7f],0x0
 20a:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 211 <cargar_usuarios+0x211>
 211:	48 89 c6             	mov    rsi,rax
 214:	bf 00 00 00 00       	mov    edi,0x0
 219:	e8 00 00 00 00       	call   21e <cargar_usuarios+0x21e>
 21e:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 225:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 22c:	00 
 22d:	74 3a                	je     269 <cargar_usuarios+0x269>
 22f:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 236:	8b 00                	mov    eax,DWORD PTR [rax]
 238:	48 98                	cdqe
 23a:	48 c1 e0 08          	shl    rax,0x8
 23e:	48 89 c2             	mov    rdx,rax
 241:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 248:	48 01 d0             	add    rax,rdx
 24b:	48 8d 88 80 00 00 00 	lea    rcx,[rax+0x80]
 252:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 259:	ba 7f 00 00 00       	mov    edx,0x7f
 25e:	48 89 c6             	mov    rsi,rax
 261:	48 89 cf             	mov    rdi,rcx
 264:	e8 00 00 00 00       	call   269 <cargar_usuarios+0x269>
 269:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 270:	8b 00                	mov    eax,DWORD PTR [rax]
 272:	48 98                	cdqe
 274:	48 c1 e0 08          	shl    rax,0x8
 278:	48 89 c2             	mov    rdx,rax
 27b:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 282:	48 01 d0             	add    rax,rdx
 285:	c6 80 ff 00 00 00 00 	mov    BYTE PTR [rax+0xff],0x0
 28c:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 293:	8b 00                	mov    eax,DWORD PTR [rax]
 295:	8d 50 01             	lea    edx,[rax+0x1]
 298:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 29f:	89 10                	mov    DWORD PTR [rax],edx
 2a1:	eb 04                	jmp    2a7 <cargar_usuarios+0x2a7>
 2a3:	90                   	nop
 2a4:	eb 01                	jmp    2a7 <cargar_usuarios+0x2a7>
 2a6:	90                   	nop
 2a7:	48 8b 95 d8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x228]
 2ae:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
 2b5:	be 00 02 00 00       	mov    esi,0x200
 2ba:	48 89 c7             	mov    rdi,rax
 2bd:	e8 00 00 00 00       	call   2c2 <cargar_usuarios+0x2c2>
 2c2:	48 85 c0             	test   rax,rax
 2c5:	0f 85 d0 fd ff ff    	jne    9b <cargar_usuarios+0x9b>
 2cb:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
 2d2:	48 89 c7             	mov    rdi,rax
 2d5:	e8 00 00 00 00       	call   2da <cargar_usuarios+0x2da>
 2da:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 2e1:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 2e5:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
 2ec:	00 00 
 2ee:	74 05                	je     2f5 <cargar_usuarios+0x2f5>
 2f0:	e8 00 00 00 00       	call   2f5 <cargar_usuarios+0x2f5>
 2f5:	c9                   	leave
 2f6:	c3                   	ret

00000000000002f7 <liberar_usuarios>:
 2f7:	f3 0f 1e fa          	endbr64
 2fb:	55                   	push   rbp
 2fc:	48 89 e5             	mov    rbp,rsp
 2ff:	48 83 ec 10          	sub    rsp,0x10
 303:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
 307:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 30c:	74 0c                	je     31a <liberar_usuarios+0x23>
 30e:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 312:	48 89 c7             	mov    rdi,rax
 315:	e8 00 00 00 00       	call   31a <liberar_usuarios+0x23>
 31a:	90                   	nop
 31b:	c9                   	leave
 31c:	c3                   	ret

000000000000031d <verificar_usuario>:
 31d:	f3 0f 1e fa          	endbr64
 321:	55                   	push   rbp
 322:	48 89 e5             	mov    rbp,rsp
 325:	48 83 ec 40          	sub    rsp,0x40
 329:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 32d:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 330:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 334:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
 338:	4c 89 45 c8          	mov    QWORD PTR [rbp-0x38],r8
 33c:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 343:	e9 93 00 00 00       	jmp    3db <verificar_usuario+0xbe>
 348:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 34b:	48 98                	cdqe
 34d:	48 c1 e0 08          	shl    rax,0x8
 351:	48 89 c2             	mov    rdx,rax
 354:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 358:	48 01 d0             	add    rax,rdx
 35b:	48 89 c2             	mov    rdx,rax
 35e:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 362:	48 89 c6             	mov    rsi,rax
 365:	48 89 d7             	mov    rdi,rdx
 368:	e8 00 00 00 00       	call   36d <verificar_usuario+0x50>
 36d:	85 c0                	test   eax,eax
 36f:	75 66                	jne    3d7 <verificar_usuario+0xba>
 371:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 374:	48 98                	cdqe
 376:	48 c1 e0 08          	shl    rax,0x8
 37a:	48 89 c2             	mov    rdx,rax
 37d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 381:	48 01 d0             	add    rax,rdx
 384:	48 8d 50 40          	lea    rdx,[rax+0x40]
 388:	48 8b 45 d0          	mov    rax,QWORD PTR [rbp-0x30]
 38c:	48 89 c6             	mov    rsi,rax
 38f:	48 89 d7             	mov    rdi,rdx
 392:	e8 00 00 00 00       	call   397 <verificar_usuario+0x7a>
 397:	85 c0                	test   eax,eax
 399:	75 3c                	jne    3d7 <verificar_usuario+0xba>
 39b:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
 3a0:	74 2e                	je     3d0 <verificar_usuario+0xb3>
 3a2:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 3a5:	48 98                	cdqe
 3a7:	48 c1 e0 08          	shl    rax,0x8
 3ab:	48 89 c2             	mov    rdx,rax
 3ae:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 3b2:	48 01 d0             	add    rax,rdx
 3b5:	48 8d 88 80 00 00 00 	lea    rcx,[rax+0x80]
 3bc:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 3c0:	ba 7f 00 00 00       	mov    edx,0x7f
 3c5:	48 89 ce             	mov    rsi,rcx
 3c8:	48 89 c7             	mov    rdi,rax
 3cb:	e8 00 00 00 00       	call   3d0 <verificar_usuario+0xb3>
 3d0:	b8 01 00 00 00       	mov    eax,0x1
 3d5:	eb 15                	jmp    3ec <verificar_usuario+0xcf>
 3d7:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 3db:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 3de:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
 3e1:	0f 8c 61 ff ff ff    	jl     348 <verificar_usuario+0x2b>
 3e7:	b8 00 00 00 00       	mov    eax,0x0
 3ec:	c9                   	leave
 3ed:	c3                   	ret
