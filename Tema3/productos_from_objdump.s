
../Tema3/productos.o:     formato del fichero elf64-x86-64


Desensamblado de la sección .text:

0000000000000000 <cargar_productos>:
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
  40:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 47 <cargar_productos+0x47>
  47:	48 89 d6             	mov    rsi,rdx
  4a:	48 89 c7             	mov    rdi,rax
  4d:	e8 00 00 00 00       	call   52 <cargar_productos+0x52>
  52:	48 89 85 d8 fd ff ff 	mov    QWORD PTR [rbp-0x228],rax
  59:	48 83 bd d8 fd ff ff 	cmp    QWORD PTR [rbp-0x228],0x0
  60:	00 
  61:	75 0a                	jne    6d <cargar_productos+0x6d>
  63:	b8 00 00 00 00       	mov    eax,0x0
  68:	e9 00 03 00 00       	jmp    36d <cargar_productos+0x36d>
  6d:	48 c7 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],0x0
  74:	00 00 00 00 
  78:	e9 b6 02 00 00       	jmp    333 <cargar_productos+0x333>
  7d:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  84:	be 0a 00 00 00       	mov    esi,0xa
  89:	48 89 c7             	mov    rdi,rax
  8c:	e8 00 00 00 00       	call   91 <cargar_productos+0x91>
  91:	48 89 85 e0 fd ff ff 	mov    QWORD PTR [rbp-0x220],rax
  98:	48 83 bd e0 fd ff ff 	cmp    QWORD PTR [rbp-0x220],0x0
  9f:	00 
  a0:	74 0a                	je     ac <cargar_productos+0xac>
  a2:	48 8b 85 e0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x220]
  a9:	c6 00 00             	mov    BYTE PTR [rax],0x0
  ac:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  b3:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  b6:	84 c0                	test   al,al
  b8:	0f 84 71 02 00 00    	je     32f <cargar_productos+0x32f>
  be:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  c5:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # cc <cargar_productos+0xcc>
  cc:	48 89 d6             	mov    rsi,rdx
  cf:	48 89 c7             	mov    rdi,rax
  d2:	e8 00 00 00 00       	call   d7 <cargar_productos+0xd7>
  d7:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
  de:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
  e5:	00 
  e6:	0f 84 46 02 00 00    	je     332 <cargar_productos+0x332>
  ec:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
  f3:	8b 00                	mov    eax,DWORD PTR [rax]
  f5:	83 c0 01             	add    eax,0x1
  f8:	48 98                	cdqe
  fa:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 101:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 108:	48 89 d6             	mov    rsi,rdx
 10b:	48 89 c7             	mov    rdi,rax
 10e:	e8 00 00 00 00       	call   113 <cargar_productos+0x113>
 113:	48 89 85 d0 fd ff ff 	mov    QWORD PTR [rbp-0x230],rax
 11a:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 121:	8b 00                	mov    eax,DWORD PTR [rax]
 123:	48 98                	cdqe
 125:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 12c:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 133:	48 01 d0             	add    rax,rdx
 136:	48 89 c1             	mov    rcx,rax
 139:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 140:	ba 1f 00 00 00       	mov    edx,0x1f
 145:	48 89 c6             	mov    rsi,rax
 148:	48 89 cf             	mov    rdi,rcx
 14b:	e8 00 00 00 00       	call   150 <cargar_productos+0x150>
 150:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 157:	8b 00                	mov    eax,DWORD PTR [rax]
 159:	48 98                	cdqe
 15b:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 162:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 169:	48 01 d0             	add    rax,rdx
 16c:	c6 40 1f 00          	mov    BYTE PTR [rax+0x1f],0x0
 170:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 177 <cargar_productos+0x177>
 177:	48 89 c6             	mov    rsi,rax
 17a:	bf 00 00 00 00       	mov    edi,0x0
 17f:	e8 00 00 00 00       	call   184 <cargar_productos+0x184>
 184:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 18b:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 192:	00 
 193:	74 39                	je     1ce <cargar_productos+0x1ce>
 195:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 19c:	8b 00                	mov    eax,DWORD PTR [rax]
 19e:	48 98                	cdqe
 1a0:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 1a7:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 1ae:	48 01 d0             	add    rax,rdx
 1b1:	48 8d 48 20          	lea    rcx,[rax+0x20]
 1b5:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 1bc:	ba 7f 00 00 00       	mov    edx,0x7f
 1c1:	48 89 c6             	mov    rsi,rax
 1c4:	48 89 cf             	mov    rdi,rcx
 1c7:	e8 00 00 00 00       	call   1cc <cargar_productos+0x1cc>
 1cc:	eb 20                	jmp    1ee <cargar_productos+0x1ee>
 1ce:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 1d5:	8b 00                	mov    eax,DWORD PTR [rax]
 1d7:	48 98                	cdqe
 1d9:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 1e0:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 1e7:	48 01 d0             	add    rax,rdx
 1ea:	c6 40 20 00          	mov    BYTE PTR [rax+0x20],0x0
 1ee:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 1f5 <cargar_productos+0x1f5>
 1f5:	48 89 c6             	mov    rsi,rax
 1f8:	bf 00 00 00 00       	mov    edi,0x0
 1fd:	e8 00 00 00 00       	call   202 <cargar_productos+0x202>
 202:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 209:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 210:	00 
 211:	74 11                	je     224 <cargar_productos+0x224>
 213:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 21a:	48 89 c7             	mov    rdi,rax
 21d:	e8 00 00 00 00       	call   222 <cargar_productos+0x222>
 222:	eb 05                	jmp    229 <cargar_productos+0x229>
 224:	b8 00 00 00 00       	mov    eax,0x0
 229:	48 8b 95 c0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x240]
 230:	8b 12                	mov    edx,DWORD PTR [rdx]
 232:	48 63 d2             	movsxd rdx,edx
 235:	48 69 ca b8 00 00 00 	imul   rcx,rdx,0xb8
 23c:	48 8b 95 d0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x230]
 243:	48 01 ca             	add    rdx,rcx
 246:	89 82 a0 00 00 00    	mov    DWORD PTR [rdx+0xa0],eax
 24c:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 253 <cargar_productos+0x253>
 253:	48 89 c6             	mov    rsi,rax
 256:	bf 00 00 00 00       	mov    edi,0x0
 25b:	e8 00 00 00 00       	call   260 <cargar_productos+0x260>
 260:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 267:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 26e:	00 
 26f:	74 16                	je     287 <cargar_productos+0x287>
 271:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 278:	48 89 c7             	mov    rdi,rax
 27b:	e8 00 00 00 00       	call   280 <cargar_productos+0x280>
 280:	66 48 0f 7e c0       	movq   rax,xmm0
 285:	eb 07                	jmp    28e <cargar_productos+0x28e>
 287:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 28e <cargar_productos+0x28e>
 28e:	48 8b 95 c0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x240]
 295:	8b 12                	mov    edx,DWORD PTR [rdx]
 297:	48 63 d2             	movsxd rdx,edx
 29a:	48 69 ca b8 00 00 00 	imul   rcx,rdx,0xb8
 2a1:	48 8b 95 d0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x230]
 2a8:	48 01 ca             	add    rdx,rcx
 2ab:	48 89 82 a8 00 00 00 	mov    QWORD PTR [rdx+0xa8],rax
 2b2:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 2b9 <cargar_productos+0x2b9>
 2b9:	48 89 c6             	mov    rsi,rax
 2bc:	bf 00 00 00 00       	mov    edi,0x0
 2c1:	e8 00 00 00 00       	call   2c6 <cargar_productos+0x2c6>
 2c6:	48 89 85 e8 fd ff ff 	mov    QWORD PTR [rbp-0x218],rax
 2cd:	48 83 bd e8 fd ff ff 	cmp    QWORD PTR [rbp-0x218],0x0
 2d4:	00 
 2d5:	74 16                	je     2ed <cargar_productos+0x2ed>
 2d7:	48 8b 85 e8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x218]
 2de:	48 89 c7             	mov    rdi,rax
 2e1:	e8 00 00 00 00       	call   2e6 <cargar_productos+0x2e6>
 2e6:	66 48 0f 7e c0       	movq   rax,xmm0
 2eb:	eb 07                	jmp    2f4 <cargar_productos+0x2f4>
 2ed:	48 8b 05 00 00 00 00 	mov    rax,QWORD PTR [rip+0x0]        # 2f4 <cargar_productos+0x2f4>
 2f4:	48 8b 95 c0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x240]
 2fb:	8b 12                	mov    edx,DWORD PTR [rdx]
 2fd:	48 63 d2             	movsxd rdx,edx
 300:	48 69 ca b8 00 00 00 	imul   rcx,rdx,0xb8
 307:	48 8b 95 d0 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x230]
 30e:	48 01 ca             	add    rdx,rcx
 311:	48 89 82 b0 00 00 00 	mov    QWORD PTR [rdx+0xb0],rax
 318:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 31f:	8b 00                	mov    eax,DWORD PTR [rax]
 321:	8d 50 01             	lea    edx,[rax+0x1]
 324:	48 8b 85 c0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x240]
 32b:	89 10                	mov    DWORD PTR [rax],edx
 32d:	eb 04                	jmp    333 <cargar_productos+0x333>
 32f:	90                   	nop
 330:	eb 01                	jmp    333 <cargar_productos+0x333>
 332:	90                   	nop
 333:	48 8b 95 d8 fd ff ff 	mov    rdx,QWORD PTR [rbp-0x228]
 33a:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
 341:	be 00 02 00 00       	mov    esi,0x200
 346:	48 89 c7             	mov    rdi,rax
 349:	e8 00 00 00 00       	call   34e <cargar_productos+0x34e>
 34e:	48 85 c0             	test   rax,rax
 351:	0f 85 26 fd ff ff    	jne    7d <cargar_productos+0x7d>
 357:	48 8b 85 d8 fd ff ff 	mov    rax,QWORD PTR [rbp-0x228]
 35e:	48 89 c7             	mov    rdi,rax
 361:	e8 00 00 00 00       	call   366 <cargar_productos+0x366>
 366:	48 8b 85 d0 fd ff ff 	mov    rax,QWORD PTR [rbp-0x230]
 36d:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 371:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
 378:	00 00 
 37a:	74 05                	je     381 <cargar_productos+0x381>
 37c:	e8 00 00 00 00       	call   381 <cargar_productos+0x381>
 381:	c9                   	leave
 382:	c3                   	ret

0000000000000383 <guardar_productos>:
 383:	f3 0f 1e fa          	endbr64
 387:	55                   	push   rbp
 388:	48 89 e5             	mov    rbp,rsp
 38b:	48 83 ec 30          	sub    rsp,0x30
 38f:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 393:	48 89 75 e0          	mov    QWORD PTR [rbp-0x20],rsi
 397:	89 55 dc             	mov    DWORD PTR [rbp-0x24],edx
 39a:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 39e:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 3a5 <guardar_productos+0x22>
 3a5:	48 89 d6             	mov    rsi,rdx
 3a8:	48 89 c7             	mov    rdi,rax
 3ab:	e8 00 00 00 00       	call   3b0 <guardar_productos+0x2d>
 3b0:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 3b4:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 3b9:	75 14                	jne    3cf <guardar_productos+0x4c>
 3bb:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 3c2 <guardar_productos+0x3f>
 3c2:	48 89 c7             	mov    rdi,rax
 3c5:	e8 00 00 00 00       	call   3ca <guardar_productos+0x47>
 3ca:	e9 ca 00 00 00       	jmp    499 <guardar_productos+0x116>
 3cf:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
 3d6:	e9 a6 00 00 00       	jmp    481 <guardar_productos+0xfe>
 3db:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 3de:	48 98                	cdqe
 3e0:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 3e7:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 3eb:	48 01 d0             	add    rax,rdx
 3ee:	f2 0f 10 80 b0 00 00 	movsd  xmm0,QWORD PTR [rax+0xb0]
 3f5:	00 
 3f6:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 3f9:	48 98                	cdqe
 3fb:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 402:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 406:	48 01 d0             	add    rax,rdx
 409:	48 8b 90 a8 00 00 00 	mov    rdx,QWORD PTR [rax+0xa8]
 410:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 413:	48 98                	cdqe
 415:	48 69 c8 b8 00 00 00 	imul   rcx,rax,0xb8
 41c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 420:	48 01 c8             	add    rax,rcx
 423:	8b b8 a0 00 00 00    	mov    edi,DWORD PTR [rax+0xa0]
 429:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 42c:	48 98                	cdqe
 42e:	48 69 c8 b8 00 00 00 	imul   rcx,rax,0xb8
 435:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 439:	48 01 c8             	add    rax,rcx
 43c:	48 8d 48 20          	lea    rcx,[rax+0x20]
 440:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 443:	48 98                	cdqe
 445:	48 69 f0 b8 00 00 00 	imul   rsi,rax,0xb8
 44c:	48 8b 45 e0          	mov    rax,QWORD PTR [rbp-0x20]
 450:	48 01 f0             	add    rax,rsi
 453:	48 89 c6             	mov    rsi,rax
 456:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 45a:	66 0f 28 c8          	movapd xmm1,xmm0
 45e:	66 48 0f 6e c2       	movq   xmm0,rdx
 463:	41 89 f8             	mov    r8d,edi
 466:	48 89 f2             	mov    rdx,rsi
 469:	48 8d 35 00 00 00 00 	lea    rsi,[rip+0x0]        # 470 <guardar_productos+0xed>
 470:	48 89 c7             	mov    rdi,rax
 473:	b8 02 00 00 00       	mov    eax,0x2
 478:	e8 00 00 00 00       	call   47d <guardar_productos+0xfa>
 47d:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
 481:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 484:	3b 45 dc             	cmp    eax,DWORD PTR [rbp-0x24]
 487:	0f 8c 4e ff ff ff    	jl     3db <guardar_productos+0x58>
 48d:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 491:	48 89 c7             	mov    rdi,rax
 494:	e8 00 00 00 00       	call   499 <guardar_productos+0x116>
 499:	c9                   	leave
 49a:	c3                   	ret

000000000000049b <liberar_productos>:
 49b:	f3 0f 1e fa          	endbr64
 49f:	55                   	push   rbp
 4a0:	48 89 e5             	mov    rbp,rsp
 4a3:	48 83 ec 10          	sub    rsp,0x10
 4a7:	48 89 7d f8          	mov    QWORD PTR [rbp-0x8],rdi
 4ab:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 4b0:	74 0c                	je     4be <liberar_productos+0x23>
 4b2:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 4b6:	48 89 c7             	mov    rdi,rax
 4b9:	e8 00 00 00 00       	call   4be <liberar_productos+0x23>
 4be:	90                   	nop
 4bf:	c9                   	leave
 4c0:	c3                   	ret

00000000000004c1 <buscar_producto>:
 4c1:	f3 0f 1e fa          	endbr64
 4c5:	55                   	push   rbp
 4c6:	48 89 e5             	mov    rbp,rsp
 4c9:	48 83 ec 30          	sub    rsp,0x30
 4cd:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 4d1:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 4d4:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 4d8:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [rbp-0x4],0x0
 4df:	eb 32                	jmp    513 <buscar_producto+0x52>
 4e1:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 4e4:	48 98                	cdqe
 4e6:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 4ed:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 4f1:	48 01 d0             	add    rax,rdx
 4f4:	48 89 c2             	mov    rdx,rax
 4f7:	48 8b 45 d8          	mov    rax,QWORD PTR [rbp-0x28]
 4fb:	48 89 c6             	mov    rsi,rax
 4fe:	48 89 d7             	mov    rdi,rdx
 501:	e8 00 00 00 00       	call   506 <buscar_producto+0x45>
 506:	85 c0                	test   eax,eax
 508:	75 05                	jne    50f <buscar_producto+0x4e>
 50a:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 50d:	eb 11                	jmp    520 <buscar_producto+0x5f>
 50f:	83 45 fc 01          	add    DWORD PTR [rbp-0x4],0x1
 513:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 516:	3b 45 e4             	cmp    eax,DWORD PTR [rbp-0x1c]
 519:	7c c6                	jl     4e1 <buscar_producto+0x20>
 51b:	b8 ff ff ff ff       	mov    eax,0xffffffff
 520:	c9                   	leave
 521:	c3                   	ret

0000000000000522 <actualizar_inventario>:
 522:	f3 0f 1e fa          	endbr64
 526:	55                   	push   rbp
 527:	48 89 e5             	mov    rbp,rsp
 52a:	48 83 ec 30          	sub    rsp,0x30
 52e:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 532:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 535:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 539:	89 4d e0             	mov    DWORD PTR [rbp-0x20],ecx
 53c:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
 540:	8b 4d e4             	mov    ecx,DWORD PTR [rbp-0x1c]
 543:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 547:	89 ce                	mov    esi,ecx
 549:	48 89 c7             	mov    rdi,rax
 54c:	e8 00 00 00 00       	call   551 <actualizar_inventario+0x2f>
 551:	89 45 fc             	mov    DWORD PTR [rbp-0x4],eax
 554:	83 7d fc 00          	cmp    DWORD PTR [rbp-0x4],0x0
 558:	79 07                	jns    561 <actualizar_inventario+0x3f>
 55a:	b8 00 00 00 00       	mov    eax,0x0
 55f:	eb 60                	jmp    5c1 <actualizar_inventario+0x9f>
 561:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 564:	48 98                	cdqe
 566:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 56d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 571:	48 01 d0             	add    rax,rdx
 574:	8b 80 a0 00 00 00    	mov    eax,DWORD PTR [rax+0xa0]
 57a:	39 45 e0             	cmp    DWORD PTR [rbp-0x20],eax
 57d:	7e 07                	jle    586 <actualizar_inventario+0x64>
 57f:	b8 00 00 00 00       	mov    eax,0x0
 584:	eb 3b                	jmp    5c1 <actualizar_inventario+0x9f>
 586:	8b 45 fc             	mov    eax,DWORD PTR [rbp-0x4]
 589:	48 98                	cdqe
 58b:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 592:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 596:	48 01 d0             	add    rax,rdx
 599:	8b 80 a0 00 00 00    	mov    eax,DWORD PTR [rax+0xa0]
 59f:	8b 55 fc             	mov    edx,DWORD PTR [rbp-0x4]
 5a2:	48 63 d2             	movsxd rdx,edx
 5a5:	48 69 ca b8 00 00 00 	imul   rcx,rdx,0xb8
 5ac:	48 8b 55 e8          	mov    rdx,QWORD PTR [rbp-0x18]
 5b0:	48 01 ca             	add    rdx,rcx
 5b3:	2b 45 e0             	sub    eax,DWORD PTR [rbp-0x20]
 5b6:	89 82 a0 00 00 00    	mov    DWORD PTR [rdx+0xa0],eax
 5bc:	b8 01 00 00 00       	mov    eax,0x1
 5c1:	c9                   	leave
 5c2:	c3                   	ret
