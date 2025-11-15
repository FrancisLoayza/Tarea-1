
../Tema3/Main.o:     formato del fichero elf64-x86-64


Desensamblado de la sección .text:

0000000000000000 <obtener_ultimo_num_factura>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   rbp
   5:	48 89 e5             	mov    rbp,rsp
   8:	48 81 ec 30 04 00 00 	sub    rsp,0x430
   f:	48 89 bd d8 fb ff ff 	mov    QWORD PTR [rbp-0x428],rdi
  16:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  1d:	00 00 
  1f:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
  23:	31 c0                	xor    eax,eax
  25:	48 8b 85 d8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x428]
  2c:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 33 <obtener_ultimo_num_factura+0x33>
  33:	48 89 d6             	mov    rsi,rdx
  36:	48 89 c7             	mov    rdi,rax
  39:	e8 00 00 00 00       	call   3e <obtener_ultimo_num_factura+0x3e>
  3e:	48 89 85 e0 fb ff ff 	mov    QWORD PTR [rbp-0x420],rax
  45:	48 83 bd e0 fb ff ff 	cmp    QWORD PTR [rbp-0x420],0x0
  4c:	00 
  4d:	75 0a                	jne    59 <obtener_ultimo_num_factura+0x59>
  4f:	b8 00 00 00 00       	mov    eax,0x0
  54:	e9 bb 00 00 00       	jmp    114 <obtener_ultimo_num_factura+0x114>
  59:	c6 85 f0 fd ff ff 00 	mov    BYTE PTR [rbp-0x210],0x0
  60:	eb 2e                	jmp    90 <obtener_ultimo_num_factura+0x90>
  62:	48 8d 85 f0 fb ff ff 	lea    rax,[rbp-0x410]
  69:	48 89 c7             	mov    rdi,rax
  6c:	e8 00 00 00 00       	call   71 <obtener_ultimo_num_factura+0x71>
  71:	48 83 f8 01          	cmp    rax,0x1
  75:	76 19                	jbe    90 <obtener_ultimo_num_factura+0x90>
  77:	48 8d 95 f0 fb ff ff 	lea    rdx,[rbp-0x410]
  7e:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  85:	48 89 d6             	mov    rsi,rdx
  88:	48 89 c7             	mov    rdi,rax
  8b:	e8 00 00 00 00       	call   90 <obtener_ultimo_num_factura+0x90>
  90:	48 8b 95 e0 fb ff ff 	mov    rdx,QWORD PTR [rbp-0x420]
  97:	48 8d 85 f0 fb ff ff 	lea    rax,[rbp-0x410]
  9e:	be 00 02 00 00       	mov    esi,0x200
  a3:	48 89 c7             	mov    rdi,rax
  a6:	e8 00 00 00 00       	call   ab <obtener_ultimo_num_factura+0xab>
  ab:	48 85 c0             	test   rax,rax
  ae:	75 b2                	jne    62 <obtener_ultimo_num_factura+0x62>
  b0:	48 8b 85 e0 fb ff ff 	mov    rax,QWORD PTR [rbp-0x420]
  b7:	48 89 c7             	mov    rdi,rax
  ba:	e8 00 00 00 00       	call   bf <obtener_ultimo_num_factura+0xbf>
  bf:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  c6:	0f b6 00             	movzx  eax,BYTE PTR [rax]
  c9:	84 c0                	test   al,al
  cb:	75 07                	jne    d4 <obtener_ultimo_num_factura+0xd4>
  cd:	b8 00 00 00 00       	mov    eax,0x0
  d2:	eb 40                	jmp    114 <obtener_ultimo_num_factura+0x114>
  d4:	48 8d 85 f0 fd ff ff 	lea    rax,[rbp-0x210]
  db:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # e2 <obtener_ultimo_num_factura+0xe2>
  e2:	48 89 d6             	mov    rsi,rdx
  e5:	48 89 c7             	mov    rdi,rax
  e8:	e8 00 00 00 00       	call   ed <obtener_ultimo_num_factura+0xed>
  ed:	48 89 85 e8 fb ff ff 	mov    QWORD PTR [rbp-0x418],rax
  f4:	48 83 bd e8 fb ff ff 	cmp    QWORD PTR [rbp-0x418],0x0
  fb:	00 
  fc:	75 07                	jne    105 <obtener_ultimo_num_factura+0x105>
  fe:	b8 00 00 00 00       	mov    eax,0x0
 103:	eb 0f                	jmp    114 <obtener_ultimo_num_factura+0x114>
 105:	48 8b 85 e8 fb ff ff 	mov    rax,QWORD PTR [rbp-0x418]
 10c:	48 89 c7             	mov    rdi,rax
 10f:	e8 00 00 00 00       	call   114 <obtener_ultimo_num_factura+0x114>
 114:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 118:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
 11f:	00 00 
 121:	74 05                	je     128 <obtener_ultimo_num_factura+0x128>
 123:	e8 00 00 00 00       	call   128 <obtener_ultimo_num_factura+0x128>
 128:	c9                   	leave
 129:	c3                   	ret

000000000000012a <agregar_lineas_venta_a_archivo>:
 12a:	f3 0f 1e fa          	endbr64
 12e:	55                   	push   rbp
 12f:	48 89 e5             	mov    rbp,rsp
 132:	48 83 ec 40          	sub    rsp,0x40
 136:	48 89 7d e8          	mov    QWORD PTR [rbp-0x18],rdi
 13a:	89 75 e4             	mov    DWORD PTR [rbp-0x1c],esi
 13d:	48 89 55 d8          	mov    QWORD PTR [rbp-0x28],rdx
 141:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
 145:	44 89 45 e0          	mov    DWORD PTR [rbp-0x20],r8d
 149:	4c 89 4d c8          	mov    QWORD PTR [rbp-0x38],r9
 14d:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 151:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 158 <agregar_lineas_venta_a_archivo+0x2e>
 158:	48 89 d6             	mov    rsi,rdx
 15b:	48 89 c7             	mov    rdi,rax
 15e:	e8 00 00 00 00       	call   163 <agregar_lineas_venta_a_archivo+0x39>
 163:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 167:	48 83 7d f8 00       	cmp    QWORD PTR [rbp-0x8],0x0
 16c:	75 14                	jne    182 <agregar_lineas_venta_a_archivo+0x58>
 16e:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 175 <agregar_lineas_venta_a_archivo+0x4b>
 175:	48 89 c7             	mov    rdi,rax
 178:	e8 00 00 00 00       	call   17d <agregar_lineas_venta_a_archivo+0x53>
 17d:	e9 f2 00 00 00       	jmp    274 <agregar_lineas_venta_a_archivo+0x14a>
 182:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [rbp-0xc],0x0
 189:	e9 ce 00 00 00       	jmp    25c <agregar_lineas_venta_a_archivo+0x132>
 18e:	48 83 7d c8 00       	cmp    QWORD PTR [rbp-0x38],0x0
 193:	74 06                	je     19b <agregar_lineas_venta_a_archivo+0x71>
 195:	48 8b 45 c8          	mov    rax,QWORD PTR [rbp-0x38]
 199:	eb 07                	jmp    1a2 <agregar_lineas_venta_a_archivo+0x78>
 19b:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 1a2 <agregar_lineas_venta_a_archivo+0x78>
 1a2:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
 1a5:	48 63 d2             	movsxd rdx,edx
 1a8:	48 69 ca b8 00 00 00 	imul   rcx,rdx,0xb8
 1af:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
 1b3:	48 01 ca             	add    rdx,rcx
 1b6:	f2 0f 10 82 b0 00 00 	movsd  xmm0,QWORD PTR [rdx+0xb0]
 1bd:	00 
 1be:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
 1c1:	48 63 d2             	movsxd rdx,edx
 1c4:	48 69 ca b8 00 00 00 	imul   rcx,rdx,0xb8
 1cb:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
 1cf:	48 01 ca             	add    rdx,rcx
 1d2:	48 8b 8a a8 00 00 00 	mov    rcx,QWORD PTR [rdx+0xa8]
 1d9:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
 1dc:	48 63 d2             	movsxd rdx,edx
 1df:	48 69 f2 b8 00 00 00 	imul   rsi,rdx,0xb8
 1e6:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
 1ea:	48 01 f2             	add    rdx,rsi
 1ed:	44 8b 82 a0 00 00 00 	mov    r8d,DWORD PTR [rdx+0xa0]
 1f4:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
 1f7:	48 63 d2             	movsxd rdx,edx
 1fa:	48 69 f2 b8 00 00 00 	imul   rsi,rdx,0xb8
 201:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
 205:	48 01 f2             	add    rdx,rsi
 208:	4c 8d 52 20          	lea    r10,[rdx+0x20]
 20c:	8b 55 f4             	mov    edx,DWORD PTR [rbp-0xc]
 20f:	48 63 d2             	movsxd rdx,edx
 212:	48 69 f2 b8 00 00 00 	imul   rsi,rdx,0xb8
 219:	48 8b 55 d0          	mov    rdx,QWORD PTR [rbp-0x30]
 21d:	48 01 f2             	add    rdx,rsi
 220:	48 89 d6             	mov    rsi,rdx
 223:	8b 55 e4             	mov    edx,DWORD PTR [rbp-0x1c]
 226:	48 8b 7d f8          	mov    rdi,QWORD PTR [rbp-0x8]
 22a:	50                   	push   rax
 22b:	ff 75 d8             	push   QWORD PTR [rbp-0x28]
 22e:	66 0f 28 c8          	movapd xmm1,xmm0
 232:	66 48 0f 6e c1       	movq   xmm0,rcx
 237:	45 89 c1             	mov    r9d,r8d
 23a:	4d 89 d0             	mov    r8,r10
 23d:	48 89 f1             	mov    rcx,rsi
 240:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 247 <agregar_lineas_venta_a_archivo+0x11d>
 247:	48 89 c6             	mov    rsi,rax
 24a:	b8 02 00 00 00       	mov    eax,0x2
 24f:	e8 00 00 00 00       	call   254 <agregar_lineas_venta_a_archivo+0x12a>
 254:	48 83 c4 10          	add    rsp,0x10
 258:	83 45 f4 01          	add    DWORD PTR [rbp-0xc],0x1
 25c:	8b 45 f4             	mov    eax,DWORD PTR [rbp-0xc]
 25f:	3b 45 e0             	cmp    eax,DWORD PTR [rbp-0x20]
 262:	0f 8c 26 ff ff ff    	jl     18e <agregar_lineas_venta_a_archivo+0x64>
 268:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
 26c:	48 89 c7             	mov    rdi,rax
 26f:	e8 00 00 00 00       	call   274 <agregar_lineas_venta_a_archivo+0x14a>
 274:	c9                   	leave
 275:	c3                   	ret

0000000000000276 <fecha_hoy>:
 276:	f3 0f 1e fa          	endbr64
 27a:	55                   	push   rbp
 27b:	48 89 e5             	mov    rbp,rsp
 27e:	53                   	push   rbx
 27f:	48 83 ec 68          	sub    rsp,0x68
 283:	48 89 7d 98          	mov    QWORD PTR [rbp-0x68],rdi
 287:	89 75 94             	mov    DWORD PTR [rbp-0x6c],esi
 28a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 291:	00 00 
 293:	48 89 45 e8          	mov    QWORD PTR [rbp-0x18],rax
 297:	31 c0                	xor    eax,eax
 299:	bf 00 00 00 00       	mov    edi,0x0
 29e:	e8 00 00 00 00       	call   2a3 <fecha_hoy+0x2d>
 2a3:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
 2a7:	48 8d 45 a8          	lea    rax,[rbp-0x58]
 2ab:	48 89 c7             	mov    rdi,rax
 2ae:	e8 00 00 00 00       	call   2b3 <fecha_hoy+0x3d>
 2b3:	48 8b 08             	mov    rcx,QWORD PTR [rax]
 2b6:	48 8b 58 08          	mov    rbx,QWORD PTR [rax+0x8]
 2ba:	48 89 4d b0          	mov    QWORD PTR [rbp-0x50],rcx
 2be:	48 89 5d b8          	mov    QWORD PTR [rbp-0x48],rbx
 2c2:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
 2c6:	48 8b 58 18          	mov    rbx,QWORD PTR [rax+0x18]
 2ca:	48 89 4d c0          	mov    QWORD PTR [rbp-0x40],rcx
 2ce:	48 89 5d c8          	mov    QWORD PTR [rbp-0x38],rbx
 2d2:	48 8b 48 20          	mov    rcx,QWORD PTR [rax+0x20]
 2d6:	48 8b 58 28          	mov    rbx,QWORD PTR [rax+0x28]
 2da:	48 89 4d d0          	mov    QWORD PTR [rbp-0x30],rcx
 2de:	48 89 5d d8          	mov    QWORD PTR [rbp-0x28],rbx
 2e2:	48 8b 40 30          	mov    rax,QWORD PTR [rax+0x30]
 2e6:	48 89 45 e0          	mov    QWORD PTR [rbp-0x20],rax
 2ea:	8b 4d bc             	mov    ecx,DWORD PTR [rbp-0x44]
 2ed:	8b 45 c0             	mov    eax,DWORD PTR [rbp-0x40]
 2f0:	8d 78 01             	lea    edi,[rax+0x1]
 2f3:	8b 45 c4             	mov    eax,DWORD PTR [rbp-0x3c]
 2f6:	8d 90 6c 07 00 00    	lea    edx,[rax+0x76c]
 2fc:	8b 45 94             	mov    eax,DWORD PTR [rbp-0x6c]
 2ff:	48 63 f0             	movsxd rsi,eax
 302:	48 8b 45 98          	mov    rax,QWORD PTR [rbp-0x68]
 306:	41 89 c9             	mov    r9d,ecx
 309:	41 89 f8             	mov    r8d,edi
 30c:	89 d1                	mov    ecx,edx
 30e:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 315 <fecha_hoy+0x9f>
 315:	48 89 c7             	mov    rdi,rax
 318:	b8 00 00 00 00       	mov    eax,0x0
 31d:	e8 00 00 00 00       	call   322 <fecha_hoy+0xac>
 322:	90                   	nop
 323:	48 8b 45 e8          	mov    rax,QWORD PTR [rbp-0x18]
 327:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
 32e:	00 00 
 330:	74 05                	je     337 <fecha_hoy+0xc1>
 332:	e8 00 00 00 00       	call   337 <fecha_hoy+0xc1>
 337:	48 8b 5d f8          	mov    rbx,QWORD PTR [rbp-0x8]
 33b:	c9                   	leave
 33c:	c3                   	ret

000000000000033d <main>:
 33d:	f3 0f 1e fa          	endbr64
 341:	55                   	push   rbp
 342:	48 89 e5             	mov    rbp,rsp
 345:	4c 8d 9c 24 00 b0 ff 	lea    r11,[rsp-0x5000]
 34c:	ff 
 34d:	48 81 ec 00 10 00 00 	sub    rsp,0x1000
 354:	48 83 0c 24 00       	or     QWORD PTR [rsp],0x0
 359:	4c 39 dc             	cmp    rsp,r11
 35c:	75 ef                	jne    34d <main+0x10>
 35e:	48 81 ec c0 0d 00 00 	sub    rsp,0xdc0
 365:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
 36c:	00 00 
 36e:	48 89 45 f8          	mov    QWORD PTR [rbp-0x8],rax
 372:	31 c0                	xor    eax,eax
 374:	c7 85 44 a2 ff ff 00 	mov    DWORD PTR [rbp-0x5dbc],0x0
 37b:	00 00 00 
 37e:	48 8d 85 44 a2 ff ff 	lea    rax,[rbp-0x5dbc]
 385:	48 89 c6             	mov    rsi,rax
 388:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 38f <main+0x52>
 38f:	48 89 c7             	mov    rdi,rax
 392:	e8 00 00 00 00       	call   397 <main+0x5a>
 397:	48 89 85 78 a2 ff ff 	mov    QWORD PTR [rbp-0x5d88],rax
 39e:	48 83 bd 78 a2 ff ff 	cmp    QWORD PTR [rbp-0x5d88],0x0
 3a5:	00 
 3a6:	75 1e                	jne    3c6 <main+0x89>
 3a8:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 3af <main+0x72>
 3af:	48 89 c6             	mov    rsi,rax
 3b2:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 3b9 <main+0x7c>
 3b9:	48 89 c7             	mov    rdi,rax
 3bc:	b8 00 00 00 00       	mov    eax,0x0
 3c1:	e8 00 00 00 00       	call   3c6 <main+0x89>
 3c6:	c7 85 50 a2 ff ff 00 	mov    DWORD PTR [rbp-0x5db0],0x0
 3cd:	00 00 00 
 3d0:	c7 85 54 a2 ff ff 00 	mov    DWORD PTR [rbp-0x5dac],0x0
 3d7:	00 00 00 
 3da:	e9 0f 01 00 00       	jmp    4ee <main+0x1b1>
 3df:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 3e6 <main+0xa9>
 3e6:	48 89 c7             	mov    rdi,rax
 3e9:	b8 00 00 00 00       	mov    eax,0x0
 3ee:	e8 00 00 00 00       	call   3f3 <main+0xb6>
 3f3:	48 8b 15 00 00 00 00 	mov    rdx,QWORD PTR [rip+0x0]        # 3fa <main+0xbd>
 3fa:	48 8d 85 b0 fe ff ff 	lea    rax,[rbp-0x150]
 401:	be 40 00 00 00       	mov    esi,0x40
 406:	48 89 c7             	mov    rdi,rax
 409:	e8 00 00 00 00       	call   40e <main+0xd1>
 40e:	48 85 c0             	test   rax,rax
 411:	0f 84 ef 00 00 00    	je     506 <main+0x1c9>
 417:	48 8d 85 b0 fe ff ff 	lea    rax,[rbp-0x150]
 41e:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 425 <main+0xe8>
 425:	48 89 d6             	mov    rsi,rdx
 428:	48 89 c7             	mov    rdi,rax
 42b:	e8 00 00 00 00       	call   430 <main+0xf3>
 430:	c6 84 05 b0 fe ff ff 	mov    BYTE PTR [rbp+rax*1-0x150],0x0
 437:	00 
 438:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 43f <main+0x102>
 43f:	48 89 c7             	mov    rdi,rax
 442:	b8 00 00 00 00       	mov    eax,0x0
 447:	e8 00 00 00 00       	call   44c <main+0x10f>
 44c:	48 8b 15 00 00 00 00 	mov    rdx,QWORD PTR [rip+0x0]        # 453 <main+0x116>
 453:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
 45a:	be 40 00 00 00       	mov    esi,0x40
 45f:	48 89 c7             	mov    rdi,rax
 462:	e8 00 00 00 00       	call   467 <main+0x12a>
 467:	48 85 c0             	test   rax,rax
 46a:	0f 84 99 00 00 00    	je     509 <main+0x1cc>
 470:	48 8d 85 f0 fe ff ff 	lea    rax,[rbp-0x110]
 477:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 47e <main+0x141>
 47e:	48 89 d6             	mov    rsi,rdx
 481:	48 89 c7             	mov    rdi,rax
 484:	e8 00 00 00 00       	call   489 <main+0x14c>
 489:	c6 84 05 f0 fe ff ff 	mov    BYTE PTR [rbp+rax*1-0x110],0x0
 490:	00 
 491:	48 83 bd 78 a2 ff ff 	cmp    QWORD PTR [rbp-0x5d88],0x0
 498:	00 
 499:	74 3d                	je     4d8 <main+0x19b>
 49b:	8b b5 44 a2 ff ff    	mov    esi,DWORD PTR [rbp-0x5dbc]
 4a1:	48 8d bd 70 ff ff ff 	lea    rdi,[rbp-0x90]
 4a8:	48 8d 8d f0 fe ff ff 	lea    rcx,[rbp-0x110]
 4af:	48 8d 95 b0 fe ff ff 	lea    rdx,[rbp-0x150]
 4b6:	48 8b 85 78 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d88]
 4bd:	49 89 f8             	mov    r8,rdi
 4c0:	48 89 c7             	mov    rdi,rax
 4c3:	e8 00 00 00 00       	call   4c8 <main+0x18b>
 4c8:	85 c0                	test   eax,eax
 4ca:	74 0c                	je     4d8 <main+0x19b>
 4cc:	c7 85 54 a2 ff ff 01 	mov    DWORD PTR [rbp-0x5dac],0x1
 4d3:	00 00 00 
 4d6:	eb 32                	jmp    50a <main+0x1cd>
 4d8:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 4df <main+0x1a2>
 4df:	48 89 c7             	mov    rdi,rax
 4e2:	e8 00 00 00 00       	call   4e7 <main+0x1aa>
 4e7:	83 85 50 a2 ff ff 01 	add    DWORD PTR [rbp-0x5db0],0x1
 4ee:	83 bd 50 a2 ff ff 02 	cmp    DWORD PTR [rbp-0x5db0],0x2
 4f5:	7f 13                	jg     50a <main+0x1cd>
 4f7:	83 bd 54 a2 ff ff 00 	cmp    DWORD PTR [rbp-0x5dac],0x0
 4fe:	0f 84 db fe ff ff    	je     3df <main+0xa2>
 504:	eb 04                	jmp    50a <main+0x1cd>
 506:	90                   	nop
 507:	eb 01                	jmp    50a <main+0x1cd>
 509:	90                   	nop
 50a:	83 bd 54 a2 ff ff 00 	cmp    DWORD PTR [rbp-0x5dac],0x0
 511:	75 32                	jne    545 <main+0x208>
 513:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 51a <main+0x1dd>
 51a:	48 89 c7             	mov    rdi,rax
 51d:	e8 00 00 00 00       	call   522 <main+0x1e5>
 522:	48 83 bd 78 a2 ff ff 	cmp    QWORD PTR [rbp-0x5d88],0x0
 529:	00 
 52a:	74 0f                	je     53b <main+0x1fe>
 52c:	48 8b 85 78 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d88]
 533:	48 89 c7             	mov    rdi,rax
 536:	e8 00 00 00 00       	call   53b <main+0x1fe>
 53b:	b8 00 00 00 00       	mov    eax,0x0
 540:	e9 54 08 00 00       	jmp    d99 <main+0xa5c>
 545:	48 8d 85 70 ff ff ff 	lea    rax,[rbp-0x90]
 54c:	48 89 c6             	mov    rsi,rax
 54f:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 556 <main+0x219>
 556:	48 89 c7             	mov    rdi,rax
 559:	b8 00 00 00 00       	mov    eax,0x0
 55e:	e8 00 00 00 00       	call   563 <main+0x226>
 563:	c7 85 48 a2 ff ff 00 	mov    DWORD PTR [rbp-0x5db8],0x0
 56a:	00 00 00 
 56d:	48 8d 85 48 a2 ff ff 	lea    rax,[rbp-0x5db8]
 574:	48 89 c6             	mov    rsi,rax
 577:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 57e <main+0x241>
 57e:	48 89 c7             	mov    rdi,rax
 581:	e8 00 00 00 00       	call   586 <main+0x249>
 586:	48 89 85 80 a2 ff ff 	mov    QWORD PTR [rbp-0x5d80],rax
 58d:	48 83 bd 80 a2 ff ff 	cmp    QWORD PTR [rbp-0x5d80],0x0
 594:	00 
 595:	75 41                	jne    5d8 <main+0x29b>
 597:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 59e <main+0x261>
 59e:	48 89 c6             	mov    rsi,rax
 5a1:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 5a8 <main+0x26b>
 5a8:	48 89 c7             	mov    rdi,rax
 5ab:	b8 00 00 00 00       	mov    eax,0x0
 5b0:	e8 00 00 00 00       	call   5b5 <main+0x278>
 5b5:	48 83 bd 78 a2 ff ff 	cmp    QWORD PTR [rbp-0x5d88],0x0
 5bc:	00 
 5bd:	74 0f                	je     5ce <main+0x291>
 5bf:	48 8b 85 78 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d88]
 5c6:	48 89 c7             	mov    rdi,rax
 5c9:	e8 00 00 00 00       	call   5ce <main+0x291>
 5ce:	b8 00 00 00 00       	mov    eax,0x0
 5d3:	e9 c1 07 00 00       	jmp    d99 <main+0xa5c>
 5d8:	c7 85 58 a2 ff ff 00 	mov    DWORD PTR [rbp-0x5da8],0x0
 5df:	00 00 00 
 5e2:	c6 85 43 a2 ff ff 73 	mov    BYTE PTR [rbp-0x5dbd],0x73
 5e9:	e9 72 03 00 00       	jmp    960 <main+0x623>
 5ee:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 5f5 <main+0x2b8>
 5f5:	48 89 c7             	mov    rdi,rax
 5f8:	b8 00 00 00 00       	mov    eax,0x0
 5fd:	e8 00 00 00 00       	call   602 <main+0x2c5>
 602:	48 8b 15 00 00 00 00 	mov    rdx,QWORD PTR [rip+0x0]        # 609 <main+0x2cc>
 609:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 610:	be 40 00 00 00       	mov    esi,0x40
 615:	48 89 c7             	mov    rdi,rax
 618:	e8 00 00 00 00       	call   61d <main+0x2e0>
 61d:	48 85 c0             	test   rax,rax
 620:	0f 84 56 03 00 00    	je     97c <main+0x63f>
 626:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 62d:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # 634 <main+0x2f7>
 634:	48 89 d6             	mov    rsi,rdx
 637:	48 89 c7             	mov    rdi,rax
 63a:	e8 00 00 00 00       	call   63f <main+0x302>
 63f:	c6 84 05 30 ff ff ff 	mov    BYTE PTR [rbp+rax*1-0xd0],0x0
 646:	00 
 647:	8b 8d 48 a2 ff ff    	mov    ecx,DWORD PTR [rbp-0x5db8]
 64d:	48 8d 95 30 ff ff ff 	lea    rdx,[rbp-0xd0]
 654:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 65b:	89 ce                	mov    esi,ecx
 65d:	48 89 c7             	mov    rdi,rax
 660:	e8 00 00 00 00       	call   665 <main+0x328>
 665:	89 85 64 a2 ff ff    	mov    DWORD PTR [rbp-0x5d9c],eax
 66b:	83 bd 64 a2 ff ff 00 	cmp    DWORD PTR [rbp-0x5d9c],0x0
 672:	79 14                	jns    688 <main+0x34b>
 674:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 67b <main+0x33e>
 67b:	48 89 c7             	mov    rdi,rax
 67e:	e8 00 00 00 00       	call   683 <main+0x346>
 683:	e9 97 02 00 00       	jmp    91f <main+0x5e2>
 688:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 68e:	48 98                	cdqe
 690:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 697:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 69e:	48 01 d0             	add    rax,rdx
 6a1:	48 8b 90 b0 00 00 00 	mov    rdx,QWORD PTR [rax+0xb0]
 6a8:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 6ae:	48 98                	cdqe
 6b0:	48 69 c8 b8 00 00 00 	imul   rcx,rax,0xb8
 6b7:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 6be:	48 01 c8             	add    rax,rcx
 6c1:	8b 80 a0 00 00 00    	mov    eax,DWORD PTR [rax+0xa0]
 6c7:	8b 8d 64 a2 ff ff    	mov    ecx,DWORD PTR [rbp-0x5d9c]
 6cd:	48 63 c9             	movsxd rcx,ecx
 6d0:	48 69 f1 b8 00 00 00 	imul   rsi,rcx,0xb8
 6d7:	48 8b 8d 80 a2 ff ff 	mov    rcx,QWORD PTR [rbp-0x5d80]
 6de:	48 01 f1             	add    rcx,rsi
 6e1:	48 83 c1 20          	add    rcx,0x20
 6e5:	66 48 0f 6e c2       	movq   xmm0,rdx
 6ea:	89 c2                	mov    edx,eax
 6ec:	48 89 ce             	mov    rsi,rcx
 6ef:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 6f6 <main+0x3b9>
 6f6:	48 89 c7             	mov    rdi,rax
 6f9:	b8 01 00 00 00       	mov    eax,0x1
 6fe:	e8 00 00 00 00       	call   703 <main+0x3c6>
 703:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 70a <main+0x3cd>
 70a:	48 89 c7             	mov    rdi,rax
 70d:	b8 00 00 00 00       	mov    eax,0x0
 712:	e8 00 00 00 00       	call   717 <main+0x3da>
 717:	48 8d 85 4c a2 ff ff 	lea    rax,[rbp-0x5db4]
 71e:	48 89 c6             	mov    rsi,rax
 721:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 728 <main+0x3eb>
 728:	48 89 c7             	mov    rdi,rax
 72b:	b8 00 00 00 00       	mov    eax,0x0
 730:	e8 00 00 00 00       	call   735 <main+0x3f8>
 735:	83 f8 01             	cmp    eax,0x1
 738:	74 1f                	je     759 <main+0x41c>
 73a:	90                   	nop
 73b:	e8 00 00 00 00       	call   740 <main+0x403>
 740:	83 f8 0a             	cmp    eax,0xa
 743:	75 f6                	jne    73b <main+0x3fe>
 745:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 74c <main+0x40f>
 74c:	48 89 c7             	mov    rdi,rax
 74f:	e8 00 00 00 00       	call   754 <main+0x417>
 754:	e9 c6 01 00 00       	jmp    91f <main+0x5e2>
 759:	90                   	nop
 75a:	e8 00 00 00 00       	call   75f <main+0x422>
 75f:	83 f8 0a             	cmp    eax,0xa
 762:	75 f6                	jne    75a <main+0x41d>
 764:	8b 85 4c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5db4]
 76a:	85 c0                	test   eax,eax
 76c:	7f 14                	jg     782 <main+0x445>
 76e:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 775 <main+0x438>
 775:	48 89 c7             	mov    rdi,rax
 778:	e8 00 00 00 00       	call   77d <main+0x440>
 77d:	e9 9d 01 00 00       	jmp    91f <main+0x5e2>
 782:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 788:	48 98                	cdqe
 78a:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 791:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 798:	48 01 d0             	add    rax,rdx
 79b:	8b 90 a0 00 00 00    	mov    edx,DWORD PTR [rax+0xa0]
 7a1:	8b 85 4c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5db4]
 7a7:	39 c2                	cmp    edx,eax
 7a9:	7d 14                	jge    7bf <main+0x482>
 7ab:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 7b2 <main+0x475>
 7b2:	48 89 c7             	mov    rdi,rax
 7b5:	e8 00 00 00 00       	call   7ba <main+0x47d>
 7ba:	e9 60 01 00 00       	jmp    91f <main+0x5e2>
 7bf:	83 bd 58 a2 ff ff 7f 	cmp    DWORD PTR [rbp-0x5da8],0x7f
 7c6:	0f 8f 44 01 00 00    	jg     910 <main+0x5d3>
 7cc:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 7d2:	48 98                	cdqe
 7d4:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 7db:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 7e2:	48 01 d0             	add    rax,rdx
 7e5:	48 89 c1             	mov    rcx,rax
 7e8:	48 8d 95 90 a2 ff ff 	lea    rdx,[rbp-0x5d70]
 7ef:	8b 85 58 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da8]
 7f5:	48 98                	cdqe
 7f7:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 7fe:	48 01 d0             	add    rax,rdx
 801:	ba 1f 00 00 00       	mov    edx,0x1f
 806:	48 89 ce             	mov    rsi,rcx
 809:	48 89 c7             	mov    rdi,rax
 80c:	e8 00 00 00 00       	call   811 <main+0x4d4>
 811:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 817:	48 98                	cdqe
 819:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 820:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 827:	48 01 d0             	add    rax,rdx
 82a:	48 8d 48 20          	lea    rcx,[rax+0x20]
 82e:	48 8d 85 90 a2 ff ff 	lea    rax,[rbp-0x5d70]
 835:	8b 95 58 a2 ff ff    	mov    edx,DWORD PTR [rbp-0x5da8]
 83b:	48 63 d2             	movsxd rdx,edx
 83e:	48 69 d2 b8 00 00 00 	imul   rdx,rdx,0xb8
 845:	48 83 c2 20          	add    rdx,0x20
 849:	48 01 d0             	add    rax,rdx
 84c:	ba 7f 00 00 00       	mov    edx,0x7f
 851:	48 89 ce             	mov    rsi,rcx
 854:	48 89 c7             	mov    rdi,rax
 857:	e8 00 00 00 00       	call   85c <main+0x51f>
 85c:	8b 85 4c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5db4]
 862:	8b 95 58 a2 ff ff    	mov    edx,DWORD PTR [rbp-0x5da8]
 868:	48 63 d2             	movsxd rdx,edx
 86b:	48 69 d2 b8 00 00 00 	imul   rdx,rdx,0xb8
 872:	48 01 ea             	add    rdx,rbp
 875:	48 81 ea d0 5c 00 00 	sub    rdx,0x5cd0
 87c:	89 02                	mov    DWORD PTR [rdx],eax
 87e:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 884:	48 98                	cdqe
 886:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 88d:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 894:	48 01 d0             	add    rax,rdx
 897:	f2 0f 10 80 a8 00 00 	movsd  xmm0,QWORD PTR [rax+0xa8]
 89e:	00 
 89f:	8b 85 58 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da8]
 8a5:	48 98                	cdqe
 8a7:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 8ae:	48 01 e8             	add    rax,rbp
 8b1:	48 2d c8 5c 00 00    	sub    rax,0x5cc8
 8b7:	f2 0f 11 00          	movsd  QWORD PTR [rax],xmm0
 8bb:	8b 85 64 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d9c]
 8c1:	48 98                	cdqe
 8c3:	48 69 d0 b8 00 00 00 	imul   rdx,rax,0xb8
 8ca:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 8d1:	48 01 d0             	add    rax,rdx
 8d4:	f2 0f 10 80 b0 00 00 	movsd  xmm0,QWORD PTR [rax+0xb0]
 8db:	00 
 8dc:	8b 85 58 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da8]
 8e2:	48 98                	cdqe
 8e4:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 8eb:	48 01 e8             	add    rax,rbp
 8ee:	48 2d c0 5c 00 00    	sub    rax,0x5cc0
 8f4:	f2 0f 11 00          	movsd  QWORD PTR [rax],xmm0
 8f8:	83 85 58 a2 ff ff 01 	add    DWORD PTR [rbp-0x5da8],0x1
 8ff:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 906 <main+0x5c9>
 906:	48 89 c7             	mov    rdi,rax
 909:	e8 00 00 00 00       	call   90e <main+0x5d1>
 90e:	eb 0f                	jmp    91f <main+0x5e2>
 910:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 917 <main+0x5da>
 917:	48 89 c7             	mov    rdi,rax
 91a:	e8 00 00 00 00       	call   91f <main+0x5e2>
 91f:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 926 <main+0x5e9>
 926:	48 89 c7             	mov    rdi,rax
 929:	b8 00 00 00 00       	mov    eax,0x0
 92e:	e8 00 00 00 00       	call   933 <main+0x5f6>
 933:	48 8b 15 00 00 00 00 	mov    rdx,QWORD PTR [rip+0x0]        # 93a <main+0x5fd>
 93a:	48 8d 85 9c fe ff ff 	lea    rax,[rbp-0x164]
 941:	be 04 00 00 00       	mov    esi,0x4
 946:	48 89 c7             	mov    rdi,rax
 949:	e8 00 00 00 00       	call   94e <main+0x611>
 94e:	48 85 c0             	test   rax,rax
 951:	74 2c                	je     97f <main+0x642>
 953:	0f b6 85 9c fe ff ff 	movzx  eax,BYTE PTR [rbp-0x164]
 95a:	88 85 43 a2 ff ff    	mov    BYTE PTR [rbp-0x5dbd],al
 960:	80 bd 43 a2 ff ff 73 	cmp    BYTE PTR [rbp-0x5dbd],0x73
 967:	0f 84 81 fc ff ff    	je     5ee <main+0x2b1>
 96d:	80 bd 43 a2 ff ff 53 	cmp    BYTE PTR [rbp-0x5dbd],0x53
 974:	0f 84 74 fc ff ff    	je     5ee <main+0x2b1>
 97a:	eb 04                	jmp    980 <main+0x643>
 97c:	90                   	nop
 97d:	eb 01                	jmp    980 <main+0x643>
 97f:	90                   	nop
 980:	83 bd 58 a2 ff ff 00 	cmp    DWORD PTR [rbp-0x5da8],0x0
 987:	75 56                	jne    9df <main+0x6a2>
 989:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 990 <main+0x653>
 990:	48 89 c7             	mov    rdi,rax
 993:	e8 00 00 00 00       	call   998 <main+0x65b>
 998:	8b 95 48 a2 ff ff    	mov    edx,DWORD PTR [rbp-0x5db8]
 99e:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 9a5:	48 89 c6             	mov    rsi,rax
 9a8:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 9af <main+0x672>
 9af:	48 89 c7             	mov    rdi,rax
 9b2:	e8 00 00 00 00       	call   9b7 <main+0x67a>
 9b7:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 9be:	48 89 c7             	mov    rdi,rax
 9c1:	e8 00 00 00 00       	call   9c6 <main+0x689>
 9c6:	48 8b 85 78 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d88]
 9cd:	48 89 c7             	mov    rdi,rax
 9d0:	e8 00 00 00 00       	call   9d5 <main+0x698>
 9d5:	b8 00 00 00 00       	mov    eax,0x0
 9da:	e9 ba 03 00 00       	jmp    d99 <main+0xa5c>
 9df:	48 8d 85 a0 fe ff ff 	lea    rax,[rbp-0x160]
 9e6:	be 10 00 00 00       	mov    esi,0x10
 9eb:	48 89 c7             	mov    rdi,rax
 9ee:	e8 00 00 00 00       	call   9f3 <main+0x6b6>
 9f3:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # 9fa <main+0x6bd>
 9fa:	48 89 c7             	mov    rdi,rax
 9fd:	e8 00 00 00 00       	call   a02 <main+0x6c5>
 a02:	89 85 68 a2 ff ff    	mov    DWORD PTR [rbp-0x5d98],eax
 a08:	8b 85 68 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d98]
 a0e:	83 c0 01             	add    eax,0x1
 a11:	89 85 6c a2 ff ff    	mov    DWORD PTR [rbp-0x5d94],eax
 a17:	8b 95 6c a2 ff ff    	mov    edx,DWORD PTR [rbp-0x5d94]
 a1d:	48 8d 85 a0 fe ff ff 	lea    rax,[rbp-0x160]
 a24:	48 89 c6             	mov    rsi,rax
 a27:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # a2e <main+0x6f1>
 a2e:	48 89 c7             	mov    rdi,rax
 a31:	b8 00 00 00 00       	mov    eax,0x0
 a36:	e8 00 00 00 00       	call   a3b <main+0x6fe>
 a3b:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # a42 <main+0x705>
 a42:	48 89 c7             	mov    rdi,rax
 a45:	e8 00 00 00 00       	call   a4a <main+0x70d>
 a4a:	66 0f ef c0          	pxor   xmm0,xmm0
 a4e:	f2 0f 11 85 70 a2 ff 	movsd  QWORD PTR [rbp-0x5d90],xmm0
 a55:	ff 
 a56:	c7 85 5c a2 ff ff 00 	mov    DWORD PTR [rbp-0x5da4],0x0
 a5d:	00 00 00 
 a60:	e9 f0 00 00 00       	jmp    b55 <main+0x818>
 a65:	8b 85 5c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da4]
 a6b:	48 98                	cdqe
 a6d:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 a74:	48 01 e8             	add    rax,rbp
 a77:	48 2d d0 5c 00 00    	sub    rax,0x5cd0
 a7d:	8b 00                	mov    eax,DWORD PTR [rax]
 a7f:	66 0f ef c9          	pxor   xmm1,xmm1
 a83:	f2 0f 2a c8          	cvtsi2sd xmm1,eax
 a87:	8b 85 5c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da4]
 a8d:	48 98                	cdqe
 a8f:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 a96:	48 01 e8             	add    rax,rbp
 a99:	48 2d c0 5c 00 00    	sub    rax,0x5cc0
 a9f:	f2 0f 10 00          	movsd  xmm0,QWORD PTR [rax]
 aa3:	f2 0f 59 c1          	mulsd  xmm0,xmm1
 aa7:	f2 0f 11 85 88 a2 ff 	movsd  QWORD PTR [rbp-0x5d78],xmm0
 aae:	ff 
 aaf:	f2 0f 10 85 70 a2 ff 	movsd  xmm0,QWORD PTR [rbp-0x5d90]
 ab6:	ff 
 ab7:	f2 0f 58 85 88 a2 ff 	addsd  xmm0,QWORD PTR [rbp-0x5d78]
 abe:	ff 
 abf:	f2 0f 11 85 70 a2 ff 	movsd  QWORD PTR [rbp-0x5d90],xmm0
 ac6:	ff 
 ac7:	8b 85 5c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da4]
 acd:	48 98                	cdqe
 acf:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 ad6:	48 01 e8             	add    rax,rbp
 ad9:	48 2d c0 5c 00 00    	sub    rax,0x5cc0
 adf:	48 8b 10             	mov    rdx,QWORD PTR [rax]
 ae2:	8b 85 5c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da4]
 ae8:	48 98                	cdqe
 aea:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 af1:	48 01 e8             	add    rax,rbp
 af4:	48 2d d0 5c 00 00    	sub    rax,0x5cd0
 afa:	8b 00                	mov    eax,DWORD PTR [rax]
 afc:	48 8d 8d 90 a2 ff ff 	lea    rcx,[rbp-0x5d70]
 b03:	8b b5 5c a2 ff ff    	mov    esi,DWORD PTR [rbp-0x5da4]
 b09:	48 63 f6             	movsxd rsi,esi
 b0c:	48 69 f6 b8 00 00 00 	imul   rsi,rsi,0xb8
 b13:	48 83 c6 20          	add    rsi,0x20
 b17:	48 8d 3c 31          	lea    rdi,[rcx+rsi*1]
 b1b:	8b 8d 5c a2 ff ff    	mov    ecx,DWORD PTR [rbp-0x5da4]
 b21:	8d 71 01             	lea    esi,[rcx+0x1]
 b24:	f2 0f 10 85 88 a2 ff 	movsd  xmm0,QWORD PTR [rbp-0x5d78]
 b2b:	ff 
 b2c:	66 0f 28 c8          	movapd xmm1,xmm0
 b30:	66 48 0f 6e c2       	movq   xmm0,rdx
 b35:	89 c1                	mov    ecx,eax
 b37:	48 89 fa             	mov    rdx,rdi
 b3a:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # b41 <main+0x804>
 b41:	48 89 c7             	mov    rdi,rax
 b44:	b8 02 00 00 00       	mov    eax,0x2
 b49:	e8 00 00 00 00       	call   b4e <main+0x811>
 b4e:	83 85 5c a2 ff ff 01 	add    DWORD PTR [rbp-0x5da4],0x1
 b55:	8b 85 5c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da4]
 b5b:	3b 85 58 a2 ff ff    	cmp    eax,DWORD PTR [rbp-0x5da8]
 b61:	0f 8c fe fe ff ff    	jl     a65 <main+0x728>
 b67:	48 8b 85 70 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d90]
 b6e:	66 48 0f 6e c0       	movq   xmm0,rax
 b73:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # b7a <main+0x83d>
 b7a:	48 89 c7             	mov    rdi,rax
 b7d:	b8 01 00 00 00       	mov    eax,0x1
 b82:	e8 00 00 00 00       	call   b87 <main+0x84a>
 b87:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # b8e <main+0x851>
 b8e:	48 89 c7             	mov    rdi,rax
 b91:	b8 00 00 00 00       	mov    eax,0x0
 b96:	e8 00 00 00 00       	call   b9b <main+0x85e>
 b9b:	48 8b 15 00 00 00 00 	mov    rdx,QWORD PTR [rip+0x0]        # ba2 <main+0x865>
 ba2:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 ba9:	be 10 00 00 00       	mov    esi,0x10
 bae:	48 89 c7             	mov    rdi,rax
 bb1:	e8 00 00 00 00       	call   bb6 <main+0x879>
 bb6:	48 85 c0             	test   rax,rax
 bb9:	75 07                	jne    bc2 <main+0x885>
 bbb:	c6 85 30 ff ff ff 00 	mov    BYTE PTR [rbp-0xd0],0x0
 bc2:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 bc9:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # bd0 <main+0x893>
 bd0:	48 89 d6             	mov    rsi,rdx
 bd3:	48 89 c7             	mov    rdi,rax
 bd6:	e8 00 00 00 00       	call   bdb <main+0x89e>
 bdb:	c6 84 05 30 ff ff ff 	mov    BYTE PTR [rbp+rax*1-0xd0],0x0
 be2:	00 
 be3:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 bea:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # bf1 <main+0x8b4>
 bf1:	48 89 d6             	mov    rsi,rdx
 bf4:	48 89 c7             	mov    rdi,rax
 bf7:	e8 00 00 00 00       	call   bfc <main+0x8bf>
 bfc:	85 c0                	test   eax,eax
 bfe:	0f 84 90 00 00 00    	je     c94 <main+0x957>
 c04:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 c0b:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # c12 <main+0x8d5>
 c12:	48 89 d6             	mov    rsi,rdx
 c15:	48 89 c7             	mov    rdi,rax
 c18:	e8 00 00 00 00       	call   c1d <main+0x8e0>
 c1d:	85 c0                	test   eax,eax
 c1f:	74 73                	je     c94 <main+0x957>
 c21:	48 8d 85 30 ff ff ff 	lea    rax,[rbp-0xd0]
 c28:	48 8d 15 00 00 00 00 	lea    rdx,[rip+0x0]        # c2f <main+0x8f2>
 c2f:	48 89 d6             	mov    rsi,rdx
 c32:	48 89 c7             	mov    rdi,rax
 c35:	e8 00 00 00 00       	call   c3a <main+0x8fd>
 c3a:	85 c0                	test   eax,eax
 c3c:	74 56                	je     c94 <main+0x957>
 c3e:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # c45 <main+0x908>
 c45:	48 89 c7             	mov    rdi,rax
 c48:	e8 00 00 00 00       	call   c4d <main+0x910>
 c4d:	8b 95 48 a2 ff ff    	mov    edx,DWORD PTR [rbp-0x5db8]
 c53:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 c5a:	48 89 c6             	mov    rsi,rax
 c5d:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # c64 <main+0x927>
 c64:	48 89 c7             	mov    rdi,rax
 c67:	e8 00 00 00 00       	call   c6c <main+0x92f>
 c6c:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 c73:	48 89 c7             	mov    rdi,rax
 c76:	e8 00 00 00 00       	call   c7b <main+0x93e>
 c7b:	48 8b 85 78 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d88]
 c82:	48 89 c7             	mov    rdi,rax
 c85:	e8 00 00 00 00       	call   c8a <main+0x94d>
 c8a:	b8 00 00 00 00       	mov    eax,0x0
 c8f:	e9 05 01 00 00       	jmp    d99 <main+0xa5c>
 c94:	c7 85 60 a2 ff ff 00 	mov    DWORD PTR [rbp-0x5da0],0x0
 c9b:	00 00 00 
 c9e:	eb 55                	jmp    cf5 <main+0x9b8>
 ca0:	8b 85 60 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da0]
 ca6:	48 98                	cdqe
 ca8:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 caf:	48 01 e8             	add    rax,rbp
 cb2:	48 2d d0 5c 00 00    	sub    rax,0x5cd0
 cb8:	8b 10                	mov    edx,DWORD PTR [rax]
 cba:	48 8d 8d 90 a2 ff ff 	lea    rcx,[rbp-0x5d70]
 cc1:	8b 85 60 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da0]
 cc7:	48 98                	cdqe
 cc9:	48 69 c0 b8 00 00 00 	imul   rax,rax,0xb8
 cd0:	48 8d 3c 01          	lea    rdi,[rcx+rax*1]
 cd4:	8b b5 48 a2 ff ff    	mov    esi,DWORD PTR [rbp-0x5db8]
 cda:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 ce1:	89 d1                	mov    ecx,edx
 ce3:	48 89 fa             	mov    rdx,rdi
 ce6:	48 89 c7             	mov    rdi,rax
 ce9:	e8 00 00 00 00       	call   cee <main+0x9b1>
 cee:	83 85 60 a2 ff ff 01 	add    DWORD PTR [rbp-0x5da0],0x1
 cf5:	8b 85 60 a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5da0]
 cfb:	3b 85 58 a2 ff ff    	cmp    eax,DWORD PTR [rbp-0x5da8]
 d01:	7c 9d                	jl     ca0 <main+0x963>
 d03:	48 8d bd 70 ff ff ff 	lea    rdi,[rbp-0x90]
 d0a:	8b b5 58 a2 ff ff    	mov    esi,DWORD PTR [rbp-0x5da8]
 d10:	48 8d 8d 90 a2 ff ff 	lea    rcx,[rbp-0x5d70]
 d17:	48 8d 95 a0 fe ff ff 	lea    rdx,[rbp-0x160]
 d1e:	8b 85 6c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d94]
 d24:	49 89 f9             	mov    r9,rdi
 d27:	41 89 f0             	mov    r8d,esi
 d2a:	89 c6                	mov    esi,eax
 d2c:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # d33 <main+0x9f6>
 d33:	48 89 c7             	mov    rdi,rax
 d36:	e8 00 00 00 00       	call   d3b <main+0x9fe>
 d3b:	8b 95 48 a2 ff ff    	mov    edx,DWORD PTR [rbp-0x5db8]
 d41:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 d48:	48 89 c6             	mov    rsi,rax
 d4b:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # d52 <main+0xa15>
 d52:	48 89 c7             	mov    rdi,rax
 d55:	e8 00 00 00 00       	call   d5a <main+0xa1d>
 d5a:	8b 85 6c a2 ff ff    	mov    eax,DWORD PTR [rbp-0x5d94]
 d60:	89 c6                	mov    esi,eax
 d62:	48 8d 05 00 00 00 00 	lea    rax,[rip+0x0]        # d69 <main+0xa2c>
 d69:	48 89 c7             	mov    rdi,rax
 d6c:	b8 00 00 00 00       	mov    eax,0x0
 d71:	e8 00 00 00 00       	call   d76 <main+0xa39>
 d76:	48 8b 85 80 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d80]
 d7d:	48 89 c7             	mov    rdi,rax
 d80:	e8 00 00 00 00       	call   d85 <main+0xa48>
 d85:	48 8b 85 78 a2 ff ff 	mov    rax,QWORD PTR [rbp-0x5d88]
 d8c:	48 89 c7             	mov    rdi,rax
 d8f:	e8 00 00 00 00       	call   d94 <main+0xa57>
 d94:	b8 00 00 00 00       	mov    eax,0x0
 d99:	48 8b 55 f8          	mov    rdx,QWORD PTR [rbp-0x8]
 d9d:	64 48 2b 14 25 28 00 	sub    rdx,QWORD PTR fs:0x28
 da4:	00 00 
 da6:	74 05                	je     dad <main+0xa70>
 da8:	e8 00 00 00 00       	call   dad <main+0xa70>
 dad:	c9                   	leave
 dae:	c3                   	ret
