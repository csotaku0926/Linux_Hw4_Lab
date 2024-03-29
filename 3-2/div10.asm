
div10:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 9a 2f 00 00    	push   0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 9b 2f 00 00 	bnd jmp *0x2f9b(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	push   $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmp 1020 <_init+0x20>
    103f:	90                   	nop

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	f2 ff 25 ad 2f 00 00 	bnd jmp *0x2fad(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <__stack_chk_fail@plt>:
    1050:	f3 0f 1e fa          	endbr64 
    1054:	f2 ff 25 75 2f 00 00 	bnd jmp *0x2f75(%rip)        # 3fd0 <__stack_chk_fail@GLIBC_2.4>
    105b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d 35 02 00 00 	lea    0x235(%rip),%rdi        # 12b4 <main>
    107f:	ff 15 53 2f 00 00    	call   *0x2f53(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt    
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 79 2f 00 00 	lea    0x2f79(%rip),%rdi        # 4010 <__TMC_END__>
    1097:	48 8d 05 72 2f 00 00 	lea    0x2f72(%rip),%rax        # 4010 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 36 2f 00 00 	mov    0x2f36(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret    
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 4010 <__TMC_END__>
    10c7:	48 8d 35 42 2f 00 00 	lea    0x2f42(%rip),%rsi        # 4010 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    %rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret    
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	80 3d 05 2f 00 00 00 	cmpb   $0x0,0x2f05(%rip)        # 4010 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d e2 2e 00 00 	cmpq   $0x0,0x2ee2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d e6 2e 00 00 	mov    0x2ee6(%rip),%rdi        # 4008 <__dso_handle>
    1122:	e8 19 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 dd 2e 00 00 01 	movb   $0x1,0x2edd(%rip)        # 4010 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret    
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret    
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>

0000000000001149 <div10>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	55                   	push   %rbp
    114e:	48 89 e5             	mov    %rsp,%rbp
    1151:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1154:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    1158:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    115c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    115f:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx
    1166:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1169:	c1 e0 02             	shl    $0x2,%eax
    116c:	01 c2                	add    %eax,%edx
    116e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1171:	01 d0                	add    %edx,%eax
    1173:	c1 e8 07             	shr    $0x7,%eax
    1176:	89 c2                	mov    %eax,%edx
    1178:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    117c:	89 10                	mov    %edx,(%rax)
    117e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    1182:	8b 00                	mov    (%rax),%eax
    1184:	8d 14 85 00 00 00 00 	lea    0x0(,%rax,4),%edx
    118b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    118f:	8b 00                	mov    (%rax),%eax
    1191:	01 d0                	add    %edx,%eax
    1193:	8d 0c 00             	lea    (%rax,%rax,1),%ecx
    1196:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1199:	29 c8                	sub    %ecx,%eax
    119b:	89 c2                	mov    %eax,%edx
    119d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11a1:	89 10                	mov    %edx,(%rax)
    11a3:	90                   	nop
    11a4:	5d                   	pop    %rbp
    11a5:	c3                   	ret    

00000000000011a6 <div10_naive>:
    11a6:	f3 0f 1e fa          	endbr64 
    11aa:	55                   	push   %rbp
    11ab:	48 89 e5             	mov    %rsp,%rbp
    11ae:	89 7d fc             	mov    %edi,-0x4(%rbp)
    11b1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    11b5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    11b9:	8b 45 fc             	mov    -0x4(%rbp),%eax
    11bc:	89 c2                	mov    %eax,%edx
    11be:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
    11c3:	48 0f af c2          	imul   %rdx,%rax
    11c7:	48 c1 e8 20          	shr    $0x20,%rax
    11cb:	89 c2                	mov    %eax,%edx
    11cd:	c1 ea 03             	shr    $0x3,%edx
    11d0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    11d4:	89 10                	mov    %edx,(%rax)
    11d6:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    11d9:	89 ca                	mov    %ecx,%edx
    11db:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
    11e0:	48 0f af c2          	imul   %rdx,%rax
    11e4:	48 c1 e8 20          	shr    $0x20,%rax
    11e8:	89 c2                	mov    %eax,%edx
    11ea:	c1 ea 03             	shr    $0x3,%edx
    11ed:	89 d0                	mov    %edx,%eax
    11ef:	c1 e0 02             	shl    $0x2,%eax
    11f2:	01 d0                	add    %edx,%eax
    11f4:	01 c0                	add    %eax,%eax
    11f6:	29 c1                	sub    %eax,%ecx
    11f8:	89 ca                	mov    %ecx,%edx
    11fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    11fe:	89 10                	mov    %edx,(%rax)
    1200:	90                   	nop
    1201:	5d                   	pop    %rbp
    1202:	c3                   	ret    

0000000000001203 <divmod_10>:
    1203:	f3 0f 1e fa          	endbr64 
    1207:	55                   	push   %rbp
    1208:	48 89 e5             	mov    %rsp,%rbp
    120b:	89 7d ec             	mov    %edi,-0x14(%rbp)
    120e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1212:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    1216:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1219:	83 c8 01             	or     $0x1,%eax
    121c:	89 c2                	mov    %eax,%edx
    121e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1221:	c1 e8 02             	shr    $0x2,%eax
    1224:	89 c1                	mov    %eax,%ecx
    1226:	89 d0                	mov    %edx,%eax
    1228:	29 c8                	sub    %ecx,%eax
    122a:	89 45 f8             	mov    %eax,-0x8(%rbp)
    122d:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1230:	c1 e8 04             	shr    $0x4,%eax
    1233:	89 c2                	mov    %eax,%edx
    1235:	8b 45 f8             	mov    -0x8(%rbp),%eax
    1238:	01 d0                	add    %edx,%eax
    123a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    123d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1240:	89 45 f8             	mov    %eax,-0x8(%rbp)
    1243:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1246:	c1 e8 08             	shr    $0x8,%eax
    1249:	89 c2                	mov    %eax,%edx
    124b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    124e:	01 d0                	add    %edx,%eax
    1250:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1253:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1256:	c1 e8 08             	shr    $0x8,%eax
    1259:	89 c2                	mov    %eax,%edx
    125b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    125e:	01 d0                	add    %edx,%eax
    1260:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1263:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1266:	c1 e8 08             	shr    $0x8,%eax
    1269:	89 c2                	mov    %eax,%edx
    126b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    126e:	01 d0                	add    %edx,%eax
    1270:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1273:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1276:	c1 e8 08             	shr    $0x8,%eax
    1279:	89 c2                	mov    %eax,%edx
    127b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    127e:	01 d0                	add    %edx,%eax
    1280:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1283:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1286:	c1 e8 03             	shr    $0x3,%eax
    1289:	89 c2                	mov    %eax,%edx
    128b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    128f:	89 10                	mov    %edx,(%rax)
    1291:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1294:	83 e0 f8             	and    $0xfffffff8,%eax
    1297:	89 c2                	mov    %eax,%edx
    1299:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    129d:	8b 00                	mov    (%rax),%eax
    129f:	01 c0                	add    %eax,%eax
    12a1:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    12a4:	8b 45 ec             	mov    -0x14(%rbp),%eax
    12a7:	29 c8                	sub    %ecx,%eax
    12a9:	89 c2                	mov    %eax,%edx
    12ab:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    12af:	89 10                	mov    %edx,(%rax)
    12b1:	90                   	nop
    12b2:	5d                   	pop    %rbp
    12b3:	c3                   	ret    

00000000000012b4 <main>:
    12b4:	f3 0f 1e fa          	endbr64 
    12b8:	55                   	push   %rbp
    12b9:	48 89 e5             	mov    %rsp,%rbp
    12bc:	48 83 ec 10          	sub    $0x10,%rsp
    12c0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    12c7:	00 00 
    12c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    12cd:	31 c0                	xor    %eax,%eax
    12cf:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
    12d3:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    12d7:	48 89 c6             	mov    %rax,%rsi
    12da:	bf 7b 00 00 00       	mov    $0x7b,%edi
    12df:	e8 65 fe ff ff       	call   1149 <div10>
    12e4:	b8 00 00 00 00       	mov    $0x0,%eax
    12e9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    12ed:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    12f4:	00 00 
    12f6:	74 05                	je     12fd <main+0x49>
    12f8:	e8 53 fd ff ff       	call   1050 <__stack_chk_fail@plt>
    12fd:	c9                   	leave  
    12fe:	c3                   	ret    

Disassembly of section .fini:

0000000000001300 <_fini>:
    1300:	f3 0f 1e fa          	endbr64 
    1304:	48 83 ec 08          	sub    $0x8,%rsp
    1308:	48 83 c4 08          	add    $0x8,%rsp
    130c:	c3                   	ret    
