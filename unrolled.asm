
unrolled:     file format elf64-x86-64


Disassembly of section .init:

0000000000400428 <_init>:
  400428:	48 83 ec 08          	sub    $0x8,%rsp
  40042c:	e8 7b 00 00 00       	callq  4004ac <call_gmon_start>
  400431:	e8 0a 01 00 00       	callq  400540 <frame_dummy>
  400436:	e8 05 03 00 00       	callq  400740 <__do_global_ctors_aux>
  40043b:	48 83 c4 08          	add    $0x8,%rsp
  40043f:	c3                   	retq   

Disassembly of section .plt:

0000000000400440 <__printf_chk@plt-0x10>:
  400440:	ff 35 aa 0b 20 00    	pushq  0x200baa(%rip)        # 600ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 ac 0b 20 00    	jmpq   *0x200bac(%rip)        # 600ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400450 <__printf_chk@plt>:
  400450:	ff 25 aa 0b 20 00    	jmpq   *0x200baa(%rip)        # 601000 <_GLOBAL_OFFSET_TABLE_+0x18>
  400456:	68 00 00 00 00       	pushq  $0x0
  40045b:	e9 e0 ff ff ff       	jmpq   400440 <_init+0x18>

0000000000400460 <__libc_start_main@plt>:
  400460:	ff 25 a2 0b 20 00    	jmpq   *0x200ba2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x20>
  400466:	68 01 00 00 00       	pushq  $0x1
  40046b:	e9 d0 ff ff ff       	jmpq   400440 <_init+0x18>

0000000000400470 <strtoll@plt>:
  400470:	ff 25 9a 0b 20 00    	jmpq   *0x200b9a(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x28>
  400476:	68 02 00 00 00       	pushq  $0x2
  40047b:	e9 c0 ff ff ff       	jmpq   400440 <_init+0x18>

Disassembly of section .text:

0000000000400480 <_start>:
  400480:	31 ed                	xor    %ebp,%ebp
  400482:	49 89 d1             	mov    %rdx,%r9
  400485:	5e                   	pop    %rsi
  400486:	48 89 e2             	mov    %rsp,%rdx
  400489:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40048d:	50                   	push   %rax
  40048e:	54                   	push   %rsp
  40048f:	49 c7 c0 a0 06 40 00 	mov    $0x4006a0,%r8
  400496:	48 c7 c1 b0 06 40 00 	mov    $0x4006b0,%rcx
  40049d:	48 c7 c7 70 05 40 00 	mov    $0x400570,%rdi
  4004a4:	e8 b7 ff ff ff       	callq  400460 <__libc_start_main@plt>
  4004a9:	f4                   	hlt    
  4004aa:	90                   	nop
  4004ab:	90                   	nop

00000000004004ac <call_gmon_start>:
  4004ac:	48 83 ec 08          	sub    $0x8,%rsp
  4004b0:	48 8b 05 29 0b 20 00 	mov    0x200b29(%rip),%rax        # 600fe0 <_DYNAMIC+0x190>
  4004b7:	48 85 c0             	test   %rax,%rax
  4004ba:	74 02                	je     4004be <call_gmon_start+0x12>
  4004bc:	ff d0                	callq  *%rax
  4004be:	48 83 c4 08          	add    $0x8,%rsp
  4004c2:	c3                   	retq   
  4004c3:	90                   	nop
  4004c4:	90                   	nop
  4004c5:	90                   	nop
  4004c6:	90                   	nop
  4004c7:	90                   	nop
  4004c8:	90                   	nop
  4004c9:	90                   	nop
  4004ca:	90                   	nop
  4004cb:	90                   	nop
  4004cc:	90                   	nop
  4004cd:	90                   	nop
  4004ce:	90                   	nop
  4004cf:	90                   	nop

00000000004004d0 <__do_global_dtors_aux>:
  4004d0:	55                   	push   %rbp
  4004d1:	48 89 e5             	mov    %rsp,%rbp
  4004d4:	53                   	push   %rbx
  4004d5:	48 83 ec 08          	sub    $0x8,%rsp
  4004d9:	80 3d 48 0b 20 00 00 	cmpb   $0x0,0x200b48(%rip)        # 601028 <__bss_start>
  4004e0:	75 4b                	jne    40052d <__do_global_dtors_aux+0x5d>
  4004e2:	bb 40 0e 60 00       	mov    $0x600e40,%ebx
  4004e7:	48 8b 05 42 0b 20 00 	mov    0x200b42(%rip),%rax        # 601030 <dtor_idx.7426>
  4004ee:	48 81 eb 38 0e 60 00 	sub    $0x600e38,%rbx
  4004f5:	48 c1 fb 03          	sar    $0x3,%rbx
  4004f9:	48 83 eb 01          	sub    $0x1,%rbx
  4004fd:	48 39 d8             	cmp    %rbx,%rax
  400500:	73 24                	jae    400526 <__do_global_dtors_aux+0x56>
  400502:	eb 04                	jmp    400508 <__do_global_dtors_aux+0x38>
  400504:	90                   	nop
  400505:	90                   	nop
  400506:	90                   	nop
  400507:	90                   	nop
  400508:	48 83 c0 01          	add    $0x1,%rax
  40050c:	48 89 05 1d 0b 20 00 	mov    %rax,0x200b1d(%rip)        # 601030 <dtor_idx.7426>
  400513:	ff 14 c5 38 0e 60 00 	callq  *0x600e38(,%rax,8)
  40051a:	48 8b 05 0f 0b 20 00 	mov    0x200b0f(%rip),%rax        # 601030 <dtor_idx.7426>
  400521:	48 39 d8             	cmp    %rbx,%rax
  400524:	72 e2                	jb     400508 <__do_global_dtors_aux+0x38>
  400526:	c6 05 fb 0a 20 00 01 	movb   $0x1,0x200afb(%rip)        # 601028 <__bss_start>
  40052d:	48 83 c4 08          	add    $0x8,%rsp
  400531:	5b                   	pop    %rbx
  400532:	c9                   	leaveq 
  400533:	c3                   	retq   
  400534:	eb 0a                	jmp    400540 <frame_dummy>
  400536:	90                   	nop
  400537:	90                   	nop
  400538:	90                   	nop
  400539:	90                   	nop
  40053a:	90                   	nop
  40053b:	90                   	nop
  40053c:	90                   	nop
  40053d:	90                   	nop
  40053e:	90                   	nop
  40053f:	90                   	nop

0000000000400540 <frame_dummy>:
  400540:	55                   	push   %rbp
  400541:	48 83 3d ff 08 20 00 	cmpq   $0x0,0x2008ff(%rip)        # 600e48 <__JCR_END__>
  400548:	00 
  400549:	48 89 e5             	mov    %rsp,%rbp
  40054c:	74 12                	je     400560 <frame_dummy+0x20>
  40054e:	b8 00 00 00 00       	mov    $0x0,%eax
  400553:	48 85 c0             	test   %rax,%rax
  400556:	74 08                	je     400560 <frame_dummy+0x20>
  400558:	bf 48 0e 60 00       	mov    $0x600e48,%edi
  40055d:	c9                   	leaveq 
  40055e:	ff e0                	jmpq   *%rax
  400560:	c9                   	leaveq 
  400561:	c3                   	retq   
  400562:	90                   	nop
  400563:	90                   	nop
  400564:	90                   	nop
  400565:	90                   	nop
  400566:	90                   	nop
  400567:	90                   	nop
  400568:	90                   	nop
  400569:	90                   	nop
  40056a:	90                   	nop
  40056b:	90                   	nop
  40056c:	90                   	nop
  40056d:	90                   	nop
  40056e:	90                   	nop
  40056f:	90                   	nop

0000000000400570 <main>:
  400570:	53                   	push   %rbx
  400571:	48 89 f0             	mov    %rsi,%rax
  400574:	ba 0a 00 00 00       	mov    $0xa,%edx
  400579:	48 83 ec 10          	sub    $0x10,%rsp
  40057d:	48 8b 78 08          	mov    0x8(%rax),%rdi
  400581:	48 8d 74 24 08       	lea    0x8(%rsp),%rsi
  400586:	e8 e5 fe ff ff       	callq  400470 <strtoll@plt>
  40058b:	be 8c 07 40 00       	mov    $0x40078c,%esi
  400590:	48 89 c2             	mov    %rax,%rdx
  400593:	48 89 c3             	mov    %rax,%rbx
  400596:	bf 01 00 00 00       	mov    $0x1,%edi
  40059b:	31 c0                	xor    %eax,%eax
  40059d:	e8 ae fe ff ff       	callq  400450 <__printf_chk@plt>
  4005a2:	48 85 db             	test   %rbx,%rbx
  4005a5:	48 ba ff ff ff ff ff 	movabs $0x7fffffffffffffff,%rdx
  4005ac:	ff ff 7f 
  4005af:	0f 8e ca 00 00 00    	jle    40067f <main+0x10f>
  4005b5:	48 8d 4b 01          	lea    0x1(%rbx),%rcx
  4005b9:	b8 02 00 00 00       	mov    $0x2,%eax
  4005be:	48 83 eb 01          	sub    $0x1,%rbx
  4005c2:	83 e3 07             	and    $0x7,%ebx
  4005c5:	48 83 ea 01          	sub    $0x1,%rdx
  4005c9:	48 39 c8             	cmp    %rcx,%rax
  4005cc:	0f 84 ad 00 00 00    	je     40067f <main+0x10f>
  4005d2:	48 85 db             	test   %rbx,%rbx
  4005d5:	74 6b                	je     400642 <main+0xd2>
  4005d7:	48 83 fb 01          	cmp    $0x1,%rbx
  4005db:	74 59                	je     400636 <main+0xc6>
  4005dd:	48 83 fb 02          	cmp    $0x2,%rbx
  4005e1:	74 4c                	je     40062f <main+0xbf>
  4005e3:	48 83 fb 03          	cmp    $0x3,%rbx
  4005e7:	74 3f                	je     400628 <main+0xb8>
  4005e9:	48 83 fb 04          	cmp    $0x4,%rbx
  4005ed:	eb 01                	jmp    4005f0 <main+0x80>
  4005ef:	90                   	nop
  4005f0:	74 2f                	je     400621 <main+0xb1>
  4005f2:	48 83 fb 05          	cmp    $0x5,%rbx
  4005f6:	74 22                	je     40061a <main+0xaa>
  4005f8:	48 83 fb 06          	cmp    $0x6,%rbx
  4005fc:	48 be fc ff ff ff ff 	movabs $0x7ffffffffffffffc,%rsi
  400603:	ff ff 7f 
  400606:	bb 03 00 00 00       	mov    $0x3,%ebx
  40060b:	48 0f 45 d6          	cmovne %rsi,%rdx
  40060f:	48 0f 45 c3          	cmovne %rbx,%rax
  400613:	48 29 c2             	sub    %rax,%rdx
  400616:	48 83 c0 01          	add    $0x1,%rax
  40061a:	48 29 c2             	sub    %rax,%rdx
  40061d:	48 83 c0 01          	add    $0x1,%rax
  400621:	48 29 c2             	sub    %rax,%rdx
  400624:	48 83 c0 01          	add    $0x1,%rax
  400628:	48 29 c2             	sub    %rax,%rdx
  40062b:	48 83 c0 01          	add    $0x1,%rax
  40062f:	48 29 c2             	sub    %rax,%rdx
  400632:	48 83 c0 01          	add    $0x1,%rax
  400636:	48 29 c2             	sub    %rax,%rdx
  400639:	48 83 c0 01          	add    $0x1,%rax
  40063d:	48 39 c8             	cmp    %rcx,%rax
  400640:	74 3d                	je     40067f <main+0x10f>
  400642:	4c 8d 58 01          	lea    0x1(%rax),%r11
  400646:	48 29 c2             	sub    %rax,%rdx
  400649:	4c 8d 50 02          	lea    0x2(%rax),%r10
  40064d:	4c 8d 48 03          	lea    0x3(%rax),%r9
  400651:	4c 8d 40 04          	lea    0x4(%rax),%r8
  400655:	48 8d 78 05          	lea    0x5(%rax),%rdi
  400659:	4c 29 da             	sub    %r11,%rdx
  40065c:	48 8d 70 06          	lea    0x6(%rax),%rsi
  400660:	48 8d 58 07          	lea    0x7(%rax),%rbx
  400664:	4c 29 d2             	sub    %r10,%rdx
  400667:	48 83 c0 08          	add    $0x8,%rax
  40066b:	4c 29 ca             	sub    %r9,%rdx
  40066e:	4c 29 c2             	sub    %r8,%rdx
  400671:	48 29 fa             	sub    %rdi,%rdx
  400674:	48 29 f2             	sub    %rsi,%rdx
  400677:	48 29 da             	sub    %rbx,%rdx
  40067a:	48 39 c8             	cmp    %rcx,%rax
  40067d:	75 c3                	jne    400642 <main+0xd2>
  40067f:	be 8c 07 40 00       	mov    $0x40078c,%esi
  400684:	bf 01 00 00 00       	mov    $0x1,%edi
  400689:	31 c0                	xor    %eax,%eax
  40068b:	e8 c0 fd ff ff       	callq  400450 <__printf_chk@plt>
  400690:	31 c0                	xor    %eax,%eax
  400692:	48 83 c4 10          	add    $0x10,%rsp
  400696:	5b                   	pop    %rbx
  400697:	c3                   	retq   
  400698:	90                   	nop
  400699:	90                   	nop
  40069a:	90                   	nop
  40069b:	90                   	nop
  40069c:	90                   	nop
  40069d:	90                   	nop
  40069e:	90                   	nop
  40069f:	90                   	nop

00000000004006a0 <__libc_csu_fini>:
  4006a0:	f3 c3                	repz retq 
  4006a2:	eb 0c                	jmp    4006b0 <__libc_csu_init>
  4006a4:	90                   	nop
  4006a5:	90                   	nop
  4006a6:	90                   	nop
  4006a7:	90                   	nop
  4006a8:	90                   	nop
  4006a9:	90                   	nop
  4006aa:	90                   	nop
  4006ab:	90                   	nop
  4006ac:	90                   	nop
  4006ad:	90                   	nop
  4006ae:	90                   	nop
  4006af:	90                   	nop

00000000004006b0 <__libc_csu_init>:
  4006b0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4006b5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4006ba:	48 8d 2d 63 07 20 00 	lea    0x200763(%rip),%rbp        # 600e24 <__init_array_end>
  4006c1:	4c 8d 25 5c 07 20 00 	lea    0x20075c(%rip),%r12        # 600e24 <__init_array_end>
  4006c8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4006cd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4006d2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4006d7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4006dc:	48 83 ec 38          	sub    $0x38,%rsp
  4006e0:	4c 29 e5             	sub    %r12,%rbp
  4006e3:	41 89 fd             	mov    %edi,%r13d
  4006e6:	49 89 f6             	mov    %rsi,%r14
  4006e9:	48 c1 fd 03          	sar    $0x3,%rbp
  4006ed:	49 89 d7             	mov    %rdx,%r15
  4006f0:	e8 33 fd ff ff       	callq  400428 <_init>
  4006f5:	48 85 ed             	test   %rbp,%rbp
  4006f8:	74 1c                	je     400716 <__libc_csu_init+0x66>
  4006fa:	31 db                	xor    %ebx,%ebx
  4006fc:	eb 02                	jmp    400700 <__libc_csu_init+0x50>
  4006fe:	90                   	nop
  4006ff:	90                   	nop
  400700:	4c 89 fa             	mov    %r15,%rdx
  400703:	4c 89 f6             	mov    %r14,%rsi
  400706:	44 89 ef             	mov    %r13d,%edi
  400709:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40070d:	48 83 c3 01          	add    $0x1,%rbx
  400711:	48 39 eb             	cmp    %rbp,%rbx
  400714:	72 ea                	jb     400700 <__libc_csu_init+0x50>
  400716:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40071b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  400720:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  400725:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40072a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40072f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  400734:	48 83 c4 38          	add    $0x38,%rsp
  400738:	c3                   	retq   
  400739:	90                   	nop
  40073a:	90                   	nop
  40073b:	90                   	nop
  40073c:	90                   	nop
  40073d:	90                   	nop
  40073e:	90                   	nop
  40073f:	90                   	nop

0000000000400740 <__do_global_ctors_aux>:
  400740:	55                   	push   %rbp
  400741:	48 89 e5             	mov    %rsp,%rbp
  400744:	53                   	push   %rbx
  400745:	48 83 ec 08          	sub    $0x8,%rsp
  400749:	48 8b 05 d8 06 20 00 	mov    0x2006d8(%rip),%rax        # 600e28 <__CTOR_LIST__>
  400750:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  400754:	74 19                	je     40076f <__do_global_ctors_aux+0x2f>
  400756:	bb 28 0e 60 00       	mov    $0x600e28,%ebx
  40075b:	eb 03                	jmp    400760 <__do_global_ctors_aux+0x20>
  40075d:	90                   	nop
  40075e:	90                   	nop
  40075f:	90                   	nop
  400760:	48 83 eb 08          	sub    $0x8,%rbx
  400764:	ff d0                	callq  *%rax
  400766:	48 8b 03             	mov    (%rbx),%rax
  400769:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40076d:	75 f1                	jne    400760 <__do_global_ctors_aux+0x20>
  40076f:	48 83 c4 08          	add    $0x8,%rsp
  400773:	5b                   	pop    %rbx
  400774:	c9                   	leaveq 
  400775:	c3                   	retq   
  400776:	90                   	nop
  400777:	90                   	nop

Disassembly of section .fini:

0000000000400778 <_fini>:
  400778:	48 83 ec 08          	sub    $0x8,%rsp
  40077c:	e8 4f fd ff ff       	callq  4004d0 <__do_global_dtors_aux>
  400781:	48 83 c4 08          	add    $0x8,%rsp
  400785:	c3                   	retq   
