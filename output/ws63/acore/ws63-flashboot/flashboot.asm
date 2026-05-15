
flashboot.elf:     file format elf32-littleriscv


Disassembly of section .text.entry:

00a28300 <_start>:
  a28300:	0040006f          	j	a28304 <Reset_Handler>

00a28304 <Reset_Handler>:
  a28304:	00000293          	li	t0,0
  a28308:	3a029073          	csrw	pmpcfg0,t0
  a2830c:	00000293          	li	t0,0
  a28310:	3a129073          	csrw	pmpcfg1,t0
  a28314:	00000293          	li	t0,0
  a28318:	3a229073          	csrw	pmpcfg2,t0
  a2831c:	00000293          	li	t0,0
  a28320:	3a329073          	csrw	pmpcfg3,t0
  a28324:	00000293          	li	t0,0
  a28328:	7d929073          	csrw	0x7d9,t0
  a2832c:	fffdd297          	auipc	t0,0xfffdd
  a28330:	7dc28293          	addi	t0,t0,2012 # a05b08 <__bss_end__>
  a28334:	00050313          	mv	t1,a0
  a28338:	00032e03          	lw	t3,0(t1)
  a2833c:	01c2a023          	sw	t3,0(t0)
  a28340:	00009297          	auipc	t0,0x9
  a28344:	47c28293          	addi	t0,t0,1148 # a317bc <trap_vector>
  a28348:	00128293          	addi	t0,t0,1
  a2834c:	30529073          	csrw	mtvec,t0
  a28350:	30005073          	csrwi	mstatus,0
  a28354:	30405073          	csrwi	mie,0
  a28358:	0000c197          	auipc	gp,0xc
  a2835c:	77018193          	addi	gp,gp,1904 # a34ac8 <_gp_>
  a28360:	fffdd117          	auipc	sp,0xfffdd
  a28364:	9a010113          	addi	sp,sp,-1632 # a04d00 <__stack_top__>
  a28368:	fffdb297          	auipc	t0,0xfffdb
  a2836c:	d9828293          	addi	t0,t0,-616 # a03100 <g_system_stack_begin>
  a28370:	fffdd317          	auipc	t1,0xfffdd
  a28374:	19030313          	addi	t1,t1,400 # a05500 <g_flash_cmd_funcs>
  a28378:	00628c63          	beq	t0,t1,a28390 <end_set_stack_loop>
  a2837c:	efbeb3b7          	lui	t2,0xefbeb
  a28380:	dde38393          	addi	t2,t2,-546 # efbeadde <_gp_+0xef1b6316>

00a28384 <set_stack_loop>:
  a28384:	0072a023          	sw	t2,0(t0)
  a28388:	00428293          	addi	t0,t0,4
  a2838c:	fe62cce3          	blt	t0,t1,a28384 <set_stack_loop>

00a28390 <end_set_stack_loop>:
  a28390:	00000093          	li	ra,0
  a28394:	00000213          	li	tp,0
  a28398:	00000413          	li	s0,0
  a2839c:	00000493          	li	s1,0
  a283a0:	00000513          	li	a0,0
  a283a4:	00000593          	li	a1,0
  a283a8:	00000613          	li	a2,0
  a283ac:	00000693          	li	a3,0
  a283b0:	00000713          	li	a4,0
  a283b4:	00000793          	li	a5,0
  a283b8:	00000813          	li	a6,0
  a283bc:	00000893          	li	a7,0
  a283c0:	00000913          	li	s2,0
  a283c4:	00000993          	li	s3,0
  a283c8:	00000a13          	li	s4,0
  a283cc:	00000a93          	li	s5,0
  a283d0:	00000b13          	li	s6,0
  a283d4:	00000b93          	li	s7,0
  a283d8:	00000c13          	li	s8,0
  a283dc:	00000c93          	li	s9,0
  a283e0:	00000d13          	li	s10,0
  a283e4:	00000d93          	li	s11,0
  a283e8:	00000e13          	li	t3,0
  a283ec:	00000e93          	li	t4,0
  a283f0:	00000f13          	li	t5,0
  a283f4:	00000f93          	li	t6,0
  a283f8:	fffdd297          	auipc	t0,0xfffdd
  a283fc:	10828293          	addi	t0,t0,264 # a05500 <g_flash_cmd_funcs>
  a28400:	fffdd317          	auipc	t1,0xfffdd
  a28404:	70830313          	addi	t1,t1,1800 # a05b08 <__bss_end__>
  a28408:	00628a63          	beq	t0,t1,a2841c <end_clear_bss_loop>
  a2840c:	00000393          	li	t2,0

00a28410 <clear_bss_loop>:
  a28410:	0072a023          	sw	t2,0(t0)
  a28414:	00428293          	addi	t0,t0,4
  a28418:	fe62cce3          	blt	t0,t1,a28410 <clear_bss_loop>

00a2841c <end_clear_bss_loop>:
  a2841c:	25d0006f          	j	a28e78 <start_fastboot>

00a28420 <g_ram_exception_table>:
  a28420:	00a316c0 00a2d37c 00a2d37c 00a2d37c     ....|...|...|...
  a28430:	00a2d37c 00a2d37c 00a2d37c 00a2d37c     |...|...|...|...
  a28440:	00a2d37c 00a2d37c 00a2d37c 00a2d37c     |...|...|...|...
  a28450:	00a2d390 00a2d37c 00a2d37c 00a2d37c     ....|...|...|...
  a28460:	00a2d37c 00a2d37c 00a2d37c 00a2d37c     |...|...|...|...
  a28470:	00a2d37c 00a2d37c 00a2d37c 00a2d37c     |...|...|...|...
  a28480:	00a2d37c 00a2d37c 00a2cf58 00a2cf58     |...|...X...X...
  a28490:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a284a0:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a284b0:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a284c0:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a284d0:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a284e0:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a284f0:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a28500:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a28510:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a28520:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a28530:	00a2cf58 00a2cf58 00a2cf58 00a2cf58     X...X...X...X...
  a28540:	00a2cf58 00a2cf58                       X...X...

Disassembly of section .text:

00a28550 <exc_syscall>:
  a28550:	8082                	ret

00a28552 <handle_syscall>:
  a28552:	0411                	addi	s0,s0,4
  a28554:	c022                	sw	s0,0(sp)
  a28556:	3fed                	jal	ra,a28550 <exc_syscall>
  a28558:	42d2                	lw	t0,20(sp)
  a2855a:	34129073          	csrw	mepc,t0
  a2855e:	5d82                	lw	s11,32(sp)
  a28560:	5d12                	lw	s10,36(sp)
  a28562:	5ca2                	lw	s9,40(sp)
  a28564:	5c32                	lw	s8,44(sp)
  a28566:	5bc2                	lw	s7,48(sp)
  a28568:	5b52                	lw	s6,52(sp)
  a2856a:	5ae2                	lw	s5,56(sp)
  a2856c:	5a72                	lw	s4,60(sp)
  a2856e:	4986                	lw	s3,64(sp)
  a28570:	4916                	lw	s2,68(sp)
  a28572:	44a6                	lw	s1,72(sp)
  a28574:	4436                	lw	s0,76(sp)
  a28576:	4fc6                	lw	t6,80(sp)
  a28578:	4f56                	lw	t5,84(sp)
  a2857a:	4ee6                	lw	t4,88(sp)
  a2857c:	4e76                	lw	t3,92(sp)
  a2857e:	5886                	lw	a7,96(sp)
  a28580:	5816                	lw	a6,100(sp)
  a28582:	57a6                	lw	a5,104(sp)
  a28584:	5736                	lw	a4,108(sp)
  a28586:	56c6                	lw	a3,112(sp)
  a28588:	5656                	lw	a2,116(sp)
  a2858a:	55e6                	lw	a1,120(sp)
  a2858c:	5576                	lw	a0,124(sp)
  a2858e:	438a                	lw	t2,128(sp)
  a28590:	431a                	lw	t1,132(sp)
  a28592:	42aa                	lw	t0,136(sp)
  a28594:	40ba                	lw	ra,140(sp)
  a28596:	6149                	addi	sp,sp,144
  a28598:	30200073          	mret

00a2859c <__udivdi3>:
  a2859c:	4701                	li	a4,0
  a2859e:	a039                	j	a285ac <__udivmoddi4>

00a285a0 <__umoddi3>:
  a285a0:	8118                	push	{ra},-32
  a285a2:	0038                	addi	a4,sp,8
  a285a4:	2021                	jal	ra,a285ac <__udivmoddi4>
  a285a6:	4522                	lw	a0,8(sp)
  a285a8:	45b2                	lw	a1,12(sp)
  a285aa:	8114                	popret	{ra},32

00a285ac <__udivmoddi4>:
  a285ac:	88b6                	mv	a7,a3
  a285ae:	8832                	mv	a6,a2
  a285b0:	87aa                	mv	a5,a0
  a285b2:	8e2e                	mv	t3,a1
  a285b4:	eedd                	bnez	a3,a28672 <__udivmoddi4+0xc6>
  a285b6:	12c5f163          	bgeu	a1,a2,a286d8 <__udivmoddi4+0x12c>
  a285ba:	66c1                	lui	a3,0x10
  a285bc:	1cd66a63          	bltu	a2,a3,a28790 <__udivmoddi4+0x1e4>
  a285c0:	010006b7          	lui	a3,0x1000
  a285c4:	3ad66563          	bltu	a2,a3,a2896e <__udivmoddi4+0x3c2>
  a285c8:	01865313          	srli	t1,a2,0x18
  a285cc:	48e1                	li	a7,24
  a285ce:	0000c697          	auipc	a3,0xc
  a285d2:	cee6a683          	lw	a3,-786(a3) # a342bc <_GLOBAL_OFFSET_TABLE_+0x4>
  a285d6:	969a                	add	a3,a3,t1
  a285d8:	2294                	lbu	a3,0(a3)
  a285da:	02000313          	li	t1,32
  a285de:	98b6                	add	a7,a7,a3
  a285e0:	41130333          	sub	t1,t1,a7
  a285e4:	00030c63          	beqz	t1,a285fc <__udivmoddi4+0x50>
  a285e8:	006595b3          	sll	a1,a1,t1
  a285ec:	011558b3          	srl	a7,a0,a7
  a285f0:	00661833          	sll	a6,a2,t1
  a285f4:	00b8ee33          	or	t3,a7,a1
  a285f8:	006517b3          	sll	a5,a0,t1
  a285fc:	01085e93          	srli	t4,a6,0x10
  a28600:	03de5f33          	divu	t5,t3,t4
  a28604:	01081613          	slli	a2,a6,0x10
  a28608:	8241                	srli	a2,a2,0x10
  a2860a:	0107d693          	srli	a3,a5,0x10
  a2860e:	03de75b3          	remu	a1,t3,t4
  a28612:	03e60fb3          	mul	t6,a2,t5
  a28616:	20b6a69b          	orshf	a3,a3,a1,sll,16
  a2861a:	01f6fa63          	bgeu	a3,t6,a2862e <__udivmoddi4+0x82>
  a2861e:	96c2                	add	a3,a3,a6
  a28620:	ffff0593          	addi	a1,t5,-1
  a28624:	0106e463          	bltu	a3,a6,a2862c <__udivmoddi4+0x80>
  a28628:	37f6e563          	bltu	a3,t6,a28992 <__udivmoddi4+0x3e6>
  a2862c:	8f2e                	mv	t5,a1
  a2862e:	41f685b3          	sub	a1,a3,t6
  a28632:	03d5d533          	divu	a0,a1,t4
  a28636:	01079693          	slli	a3,a5,0x10
  a2863a:	82c1                	srli	a3,a3,0x10
  a2863c:	03d5f5b3          	remu	a1,a1,t4
  a28640:	02a60633          	mul	a2,a2,a0
  a28644:	20b6a79b          	orshf	a5,a3,a1,sll,16
  a28648:	00c7fa63          	bgeu	a5,a2,a2865c <__udivmoddi4+0xb0>
  a2864c:	97c2                	add	a5,a5,a6
  a2864e:	fff50693          	addi	a3,a0,-1
  a28652:	0107e463          	bltu	a5,a6,a2865a <__udivmoddi4+0xae>
  a28656:	32c7eb63          	bltu	a5,a2,a2898c <__udivmoddi4+0x3e0>
  a2865a:	8536                	mv	a0,a3
  a2865c:	8f91                	sub	a5,a5,a2
  a2865e:	21e5251b          	orshf	a0,a0,t5,sll,16
  a28662:	4581                	li	a1,0
  a28664:	c711                	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a28666:	0067d7b3          	srl	a5,a5,t1
  a2866a:	c31c                	sw	a5,0(a4)
  a2866c:	00072223          	sw	zero,4(a4)
  a28670:	8082                	ret
  a28672:	00d5f963          	bgeu	a1,a3,a28684 <__udivmoddi4+0xd8>
  a28676:	12070f63          	beqz	a4,a287b4 <__udivmoddi4+0x208>
  a2867a:	c308                	sw	a0,0(a4)
  a2867c:	c34c                	sw	a1,4(a4)
  a2867e:	4501                	li	a0,0
  a28680:	4581                	li	a1,0
  a28682:	8082                	ret
  a28684:	67c1                	lui	a5,0x10
  a28686:	0ef6ed63          	bltu	a3,a5,a28780 <__udivmoddi4+0x1d4>
  a2868a:	010007b7          	lui	a5,0x1000
  a2868e:	2cf6ea63          	bltu	a3,a5,a28962 <__udivmoddi4+0x3b6>
  a28692:	0186d893          	srli	a7,a3,0x18
  a28696:	4861                	li	a6,24
  a28698:	0000c797          	auipc	a5,0xc
  a2869c:	c247a783          	lw	a5,-988(a5) # a342bc <_GLOBAL_OFFSET_TABLE_+0x4>
  a286a0:	97c6                	add	a5,a5,a7
  a286a2:	0007c303          	lbu	t1,0(a5)
  a286a6:	02000e93          	li	t4,32
  a286aa:	9342                	add	t1,t1,a6
  a286ac:	406e8eb3          	sub	t4,t4,t1
  a286b0:	180e9563          	bnez	t4,a2883a <__udivmoddi4+0x28e>
  a286b4:	00b6e463          	bltu	a3,a1,a286bc <__udivmoddi4+0x110>
  a286b8:	2ec56363          	bltu	a0,a2,a2899e <__udivmoddi4+0x3f2>
  a286bc:	40c50633          	sub	a2,a0,a2
  a286c0:	00c53533          	sltu	a0,a0,a2
  a286c4:	8d95                	sub	a1,a1,a3
  a286c6:	40a58e33          	sub	t3,a1,a0
  a286ca:	4505                	li	a0,1
  a286cc:	4581                	li	a1,0
  a286ce:	d34d                	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a286d0:	c310                	sw	a2,0(a4)
  a286d2:	01c72223          	sw	t3,4(a4)
  a286d6:	8082                	ret
  a286d8:	e601                	bnez	a2,a286e0 <__udivmoddi4+0x134>
  a286da:	4685                	li	a3,1
  a286dc:	02c6d833          	divu	a6,a3,a2
  a286e0:	66c1                	lui	a3,0x10
  a286e2:	0cd86063          	bltu	a6,a3,a287a2 <__udivmoddi4+0x1f6>
  a286e6:	010006b7          	lui	a3,0x1000
  a286ea:	26d86863          	bltu	a6,a3,a2895a <__udivmoddi4+0x3ae>
  a286ee:	01885613          	srli	a2,a6,0x18
  a286f2:	48e1                	li	a7,24
  a286f4:	0000c697          	auipc	a3,0xc
  a286f8:	bc86a683          	lw	a3,-1080(a3) # a342bc <_GLOBAL_OFFSET_TABLE_+0x4>
  a286fc:	96b2                	add	a3,a3,a2
  a286fe:	2290                	lbu	a2,0(a3)
  a28700:	02000313          	li	t1,32
  a28704:	9646                	add	a2,a2,a7
  a28706:	40c30333          	sub	t1,t1,a2
  a2870a:	0a031863          	bnez	t1,a287ba <__udivmoddi4+0x20e>
  a2870e:	01081e93          	slli	t4,a6,0x10
  a28712:	410586b3          	sub	a3,a1,a6
  a28716:	01085f13          	srli	t5,a6,0x10
  a2871a:	010ede93          	srli	t4,t4,0x10
  a2871e:	4585                	li	a1,1
  a28720:	0107d893          	srli	a7,a5,0x10
  a28724:	03e6de33          	divu	t3,a3,t5
  a28728:	03e6f6b3          	remu	a3,a3,t5
  a2872c:	03de0633          	mul	a2,t3,t4
  a28730:	20d8a69b          	orshf	a3,a7,a3,sll,16
  a28734:	00c6fa63          	bgeu	a3,a2,a28748 <__udivmoddi4+0x19c>
  a28738:	96c2                	add	a3,a3,a6
  a2873a:	fffe0513          	addi	a0,t3,-1
  a2873e:	0106e463          	bltu	a3,a6,a28746 <__udivmoddi4+0x19a>
  a28742:	24c6eb63          	bltu	a3,a2,a28998 <__udivmoddi4+0x3ec>
  a28746:	8e2a                	mv	t3,a0
  a28748:	40c68633          	sub	a2,a3,a2
  a2874c:	03e65533          	divu	a0,a2,t5
  a28750:	01079693          	slli	a3,a5,0x10
  a28754:	82c1                	srli	a3,a3,0x10
  a28756:	03e67633          	remu	a2,a2,t5
  a2875a:	03d508b3          	mul	a7,a0,t4
  a2875e:	20c6a79b          	orshf	a5,a3,a2,sll,16
  a28762:	0117fa63          	bgeu	a5,a7,a28776 <__udivmoddi4+0x1ca>
  a28766:	97c2                	add	a5,a5,a6
  a28768:	fff50693          	addi	a3,a0,-1
  a2876c:	0107e463          	bltu	a5,a6,a28774 <__udivmoddi4+0x1c8>
  a28770:	2117eb63          	bltu	a5,a7,a28986 <__udivmoddi4+0x3da>
  a28774:	8536                	mv	a0,a3
  a28776:	411787b3          	sub	a5,a5,a7
  a2877a:	21c5251b          	orshf	a0,a0,t3,sll,16
  a2877e:	b5dd                	j	a28664 <__udivmoddi4+0xb8>
  a28780:	0ff00793          	li	a5,255
  a28784:	1ed7f363          	bgeu	a5,a3,a2896a <__udivmoddi4+0x3be>
  a28788:	0086d893          	srli	a7,a3,0x8
  a2878c:	4821                	li	a6,8
  a2878e:	b729                	j	a28698 <__udivmoddi4+0xec>
  a28790:	8332                	mv	t1,a2
  a28792:	0ff00693          	li	a3,255
  a28796:	e2c6fce3          	bgeu	a3,a2,a285ce <__udivmoddi4+0x22>
  a2879a:	00865313          	srli	t1,a2,0x8
  a2879e:	48a1                	li	a7,8
  a287a0:	b53d                	j	a285ce <__udivmoddi4+0x22>
  a287a2:	8642                	mv	a2,a6
  a287a4:	0ff00693          	li	a3,255
  a287a8:	f506f6e3          	bgeu	a3,a6,a286f4 <__udivmoddi4+0x148>
  a287ac:	00885613          	srli	a2,a6,0x8
  a287b0:	48a1                	li	a7,8
  a287b2:	b789                	j	a286f4 <__udivmoddi4+0x148>
  a287b4:	4581                	li	a1,0
  a287b6:	4501                	li	a0,0
  a287b8:	8082                	ret
  a287ba:	00681833          	sll	a6,a6,t1
  a287be:	00c5d8b3          	srl	a7,a1,a2
  a287c2:	01085f13          	srli	t5,a6,0x10
  a287c6:	03e8dfb3          	divu	t6,a7,t5
  a287ca:	01081e93          	slli	t4,a6,0x10
  a287ce:	006595b3          	sll	a1,a1,t1
  a287d2:	00c55633          	srl	a2,a0,a2
  a287d6:	010ede93          	srli	t4,t4,0x10
  a287da:	8e4d                	or	a2,a2,a1
  a287dc:	01065e13          	srli	t3,a2,0x10
  a287e0:	006517b3          	sll	a5,a0,t1
  a287e4:	03e8f8b3          	remu	a7,a7,t5
  a287e8:	03fe85b3          	mul	a1,t4,t6
  a287ec:	211e251b          	orshf	a0,t3,a7,sll,16
  a287f0:	00b57b63          	bgeu	a0,a1,a28806 <__udivmoddi4+0x25a>
  a287f4:	9542                	add	a0,a0,a6
  a287f6:	ffff8693          	addi	a3,t6,-1
  a287fa:	19056463          	bltu	a0,a6,a28982 <__udivmoddi4+0x3d6>
  a287fe:	18b57263          	bgeu	a0,a1,a28982 <__udivmoddi4+0x3d6>
  a28802:	1ff9                	addi	t6,t6,-2
  a28804:	9542                	add	a0,a0,a6
  a28806:	8d0d                	sub	a0,a0,a1
  a28808:	03e558b3          	divu	a7,a0,t5
  a2880c:	9e21                	uxth	a2
  a2880e:	03e57533          	remu	a0,a0,t5
  a28812:	031e86b3          	mul	a3,t4,a7
  a28816:	20a6259b          	orshf	a1,a2,a0,sll,16
  a2881a:	00d5fb63          	bgeu	a1,a3,a28830 <__udivmoddi4+0x284>
  a2881e:	95c2                	add	a1,a1,a6
  a28820:	fff88613          	addi	a2,a7,-1
  a28824:	1505eb63          	bltu	a1,a6,a2897a <__udivmoddi4+0x3ce>
  a28828:	14d5f963          	bgeu	a1,a3,a2897a <__udivmoddi4+0x3ce>
  a2882c:	18f9                	addi	a7,a7,-2
  a2882e:	95c2                	add	a1,a1,a6
  a28830:	40d586b3          	sub	a3,a1,a3
  a28834:	21f8a59b          	orshf	a1,a7,t6,sll,16
  a28838:	b5e5                	j	a28720 <__udivmoddi4+0x174>
  a2883a:	00665833          	srl	a6,a2,t1
  a2883e:	01d696b3          	sll	a3,a3,t4
  a28842:	00d866b3          	or	a3,a6,a3
  a28846:	0065d7b3          	srl	a5,a1,t1
  a2884a:	0106de13          	srli	t3,a3,0x10
  a2884e:	03c7dfb3          	divu	t6,a5,t3
  a28852:	01069893          	slli	a7,a3,0x10
  a28856:	0108d893          	srli	a7,a7,0x10
  a2885a:	00655833          	srl	a6,a0,t1
  a2885e:	01d51f33          	sll	t5,a0,t4
  a28862:	01d595b3          	sll	a1,a1,t4
  a28866:	00b865b3          	or	a1,a6,a1
  a2886a:	0105d813          	srli	a6,a1,0x10
  a2886e:	01d61633          	sll	a2,a2,t4
  a28872:	03c7f7b3          	remu	a5,a5,t3
  a28876:	03f88533          	mul	a0,a7,t6
  a2887a:	20f8279b          	orshf	a5,a6,a5,sll,16
  a2887e:	00a7fb63          	bgeu	a5,a0,a28894 <__udivmoddi4+0x2e8>
  a28882:	97b6                	add	a5,a5,a3
  a28884:	ffff8813          	addi	a6,t6,-1
  a28888:	0ed7eb63          	bltu	a5,a3,a2897e <__udivmoddi4+0x3d2>
  a2888c:	0ea7f963          	bgeu	a5,a0,a2897e <__udivmoddi4+0x3d2>
  a28890:	1ff9                	addi	t6,t6,-2
  a28892:	97b6                	add	a5,a5,a3
  a28894:	8f89                	sub	a5,a5,a0
  a28896:	03c7d533          	divu	a0,a5,t3
  a2889a:	9da1                	uxth	a1
  a2889c:	03c7f7b3          	remu	a5,a5,t3
  a288a0:	02a888b3          	mul	a7,a7,a0
  a288a4:	20f5a59b          	orshf	a1,a1,a5,sll,16
  a288a8:	0115fb63          	bgeu	a1,a7,a288be <__udivmoddi4+0x312>
  a288ac:	95b6                	add	a1,a1,a3
  a288ae:	fff50793          	addi	a5,a0,-1
  a288b2:	0cd5e263          	bltu	a1,a3,a28976 <__udivmoddi4+0x3ca>
  a288b6:	0d15f063          	bgeu	a1,a7,a28976 <__udivmoddi4+0x3ca>
  a288ba:	1579                	addi	a0,a0,-2
  a288bc:	95b6                	add	a1,a1,a3
  a288be:	63c1                	lui	t2,0x10
  a288c0:	21f5251b          	orshf	a0,a0,t6,sll,16
  a288c4:	fff38793          	addi	a5,t2,-1 # ffff <ccause+0xf03d>
  a288c8:	00f57833          	and	a6,a0,a5
  a288cc:	01055e13          	srli	t3,a0,0x10
  a288d0:	8ff1                	and	a5,a5,a2
  a288d2:	01065f93          	srli	t6,a2,0x10
  a288d6:	02fe02b3          	mul	t0,t3,a5
  a288da:	411588b3          	sub	a7,a1,a7
  a288de:	03f805b3          	mul	a1,a6,t6
  a288e2:	02f80833          	mul	a6,a6,a5
  a288e6:	9596                	add	a1,a1,t0
  a288e8:	6105859b          	addshf	a1,a1,a6,srl,16
  a288ec:	03fe0e33          	mul	t3,t3,t6
  a288f0:	0055f363          	bgeu	a1,t0,a288f6 <__udivmoddi4+0x34a>
  a288f4:	9e1e                	add	t3,t3,t2
  a288f6:	67c1                	lui	a5,0x10
  a288f8:	17fd                	addi	a5,a5,-1 # ffff <ccause+0xf03d>
  a288fa:	00f5ffb3          	and	t6,a1,a5
  a288fe:	00f877b3          	and	a5,a6,a5
  a28902:	60be081b          	addshf	a6,t3,a1,srl,16
  a28906:	21f7879b          	addshf	a5,a5,t6,sll,16
  a2890a:	0308ed63          	bltu	a7,a6,a28944 <__udivmoddi4+0x398>
  a2890e:	03088963          	beq	a7,a6,a28940 <__udivmoddi4+0x394>
  a28912:	4581                	li	a1,0
  a28914:	d4070ee3          	beqz	a4,a28670 <__udivmoddi4+0xc4>
  a28918:	40ff07b3          	sub	a5,t5,a5
  a2891c:	00ff3f33          	sltu	t5,t5,a5
  a28920:	410888b3          	sub	a7,a7,a6
  a28924:	41e888b3          	sub	a7,a7,t5
  a28928:	00689333          	sll	t1,a7,t1
  a2892c:	01d7d7b3          	srl	a5,a5,t4
  a28930:	00f367b3          	or	a5,t1,a5
  a28934:	01d8d8b3          	srl	a7,a7,t4
  a28938:	c31c                	sw	a5,0(a4)
  a2893a:	01172223          	sw	a7,4(a4)
  a2893e:	8082                	ret
  a28940:	fcff79e3          	bgeu	t5,a5,a28912 <__udivmoddi4+0x366>
  a28944:	40c78633          	sub	a2,a5,a2
  a28948:	00c7b7b3          	sltu	a5,a5,a2
  a2894c:	40d80833          	sub	a6,a6,a3
  a28950:	40f80833          	sub	a6,a6,a5
  a28954:	157d                	addi	a0,a0,-1
  a28956:	87b2                	mv	a5,a2
  a28958:	bf6d                	j	a28912 <__udivmoddi4+0x366>
  a2895a:	01085613          	srli	a2,a6,0x10
  a2895e:	48c1                	li	a7,16
  a28960:	bb51                	j	a286f4 <__udivmoddi4+0x148>
  a28962:	0106d893          	srli	a7,a3,0x10
  a28966:	4841                	li	a6,16
  a28968:	bb05                	j	a28698 <__udivmoddi4+0xec>
  a2896a:	4801                	li	a6,0
  a2896c:	b335                	j	a28698 <__udivmoddi4+0xec>
  a2896e:	01065313          	srli	t1,a2,0x10
  a28972:	48c1                	li	a7,16
  a28974:	b9a9                	j	a285ce <__udivmoddi4+0x22>
  a28976:	853e                	mv	a0,a5
  a28978:	b799                	j	a288be <__udivmoddi4+0x312>
  a2897a:	88b2                	mv	a7,a2
  a2897c:	bd55                	j	a28830 <__udivmoddi4+0x284>
  a2897e:	8fc2                	mv	t6,a6
  a28980:	bf11                	j	a28894 <__udivmoddi4+0x2e8>
  a28982:	8fb6                	mv	t6,a3
  a28984:	b549                	j	a28806 <__udivmoddi4+0x25a>
  a28986:	1579                	addi	a0,a0,-2
  a28988:	97c2                	add	a5,a5,a6
  a2898a:	b3f5                	j	a28776 <__udivmoddi4+0x1ca>
  a2898c:	1579                	addi	a0,a0,-2
  a2898e:	97c2                	add	a5,a5,a6
  a28990:	b1f1                	j	a2865c <__udivmoddi4+0xb0>
  a28992:	1f79                	addi	t5,t5,-2
  a28994:	96c2                	add	a3,a3,a6
  a28996:	b961                	j	a2862e <__udivmoddi4+0x82>
  a28998:	1e79                	addi	t3,t3,-2
  a2899a:	96c2                	add	a3,a3,a6
  a2899c:	b375                	j	a28748 <__udivmoddi4+0x19c>
  a2899e:	862a                	mv	a2,a0
  a289a0:	4501                	li	a0,0
  a289a2:	b32d                	j	a286cc <__udivmoddi4+0x120>

00a289a4 <memset>:
  a289a4:	ca59                	beqz	a2,a28a3a <memset+0x96>
  a289a6:	0ff5f793          	andi	a5,a1,255
  a289aa:	a11c                	sb	a5,0(a0)
  a289ac:	00c50733          	add	a4,a0,a2
  a289b0:	fef70fa3          	sb	a5,-1(a4)
  a289b4:	032661bb          	bltui	a2,3,a28a3a <memset+0x96>
  a289b8:	b11c                	sb	a5,1(a0)
  a289ba:	a13c                	sb	a5,2(a0)
  a289bc:	fef70f23          	sb	a5,-2(a4)
  a289c0:	fef70ea3          	sb	a5,-3(a4)
  a289c4:	07166dbb          	bltui	a2,7,a28a3a <memset+0x96>
  a289c8:	b13c                	sb	a5,3(a0)
  a289ca:	fef70e23          	sb	a5,-4(a4)
  a289ce:	46a1                	li	a3,8
  a289d0:	06c6f563          	bgeu	a3,a2,a28a3a <memset+0x96>
  a289d4:	40a007b3          	neg	a5,a0
  a289d8:	8b8d                	andi	a5,a5,3
  a289da:	00f50733          	add	a4,a0,a5
  a289de:	8e1d                	sub	a2,a2,a5
  a289e0:	0ff5f593          	andi	a1,a1,255
  a289e4:	0101 0101 079f      	l.li	a5,0x1010101
  a289ea:	02f585b3          	mul	a1,a1,a5
  a289ee:	9a71                	andi	a2,a2,-4
  a289f0:	00c707b3          	add	a5,a4,a2
  a289f4:	c30c                	sw	a1,0(a4)
  a289f6:	feb7ae23          	sw	a1,-4(a5)
  a289fa:	04c6f063          	bgeu	a3,a2,a28a3a <memset+0x96>
  a289fe:	c34c                	sw	a1,4(a4)
  a28a00:	c70c                	sw	a1,8(a4)
  a28a02:	feb7aa23          	sw	a1,-12(a5)
  a28a06:	feb7ac23          	sw	a1,-8(a5)
  a28a0a:	19066c3b          	bltui	a2,25,a28a3a <memset+0x96>
  a28a0e:	c74c                	sw	a1,12(a4)
  a28a10:	cb0c                	sw	a1,16(a4)
  a28a12:	cb4c                	sw	a1,20(a4)
  a28a14:	cf0c                	sw	a1,24(a4)
  a28a16:	feb7a223          	sw	a1,-28(a5)
  a28a1a:	feb7a423          	sw	a1,-24(a5)
  a28a1e:	feb7a623          	sw	a1,-20(a5)
  a28a22:	feb7a823          	sw	a1,-16(a5)
  a28a26:	00477793          	andi	a5,a4,4
  a28a2a:	07e1                	addi	a5,a5,24
  a28a2c:	97ba                	add	a5,a5,a4
  a28a2e:	46fd                	li	a3,31
  a28a30:	9732                	add	a4,a4,a2
  a28a32:	40f70633          	sub	a2,a4,a5
  a28a36:	00c6e363          	bltu	a3,a2,a28a3c <memset+0x98>
  a28a3a:	8082                	ret
  a28a3c:	c38c                	sw	a1,0(a5)
  a28a3e:	c3cc                	sw	a1,4(a5)
  a28a40:	c78c                	sw	a1,8(a5)
  a28a42:	c7cc                	sw	a1,12(a5)
  a28a44:	cb8c                	sw	a1,16(a5)
  a28a46:	cbcc                	sw	a1,20(a5)
  a28a48:	cf8c                	sw	a1,24(a5)
  a28a4a:	cfcc                	sw	a1,28(a5)
  a28a4c:	02078793          	addi	a5,a5,32
  a28a50:	b7cd                	j	a28a32 <memset+0x8e>

00a28a52 <memcpy>:
  a28a52:	87aa                	mv	a5,a0
  a28a54:	0035f713          	andi	a4,a1,3
  a28a58:	c319                	beqz	a4,a28a5e <memcpy+0xc>
  a28a5a:	16061963          	bnez	a2,a28bcc <memcpy+0x17a>
  a28a5e:	0037f813          	andi	a6,a5,3
  a28a62:	473d                	li	a4,15
  a28a64:	18080e63          	beqz	a6,a28c00 <memcpy+0x1ae>
  a28a68:	20166abb          	bltui	a2,32,a28ad2 <memcpy+0x80>
  a28a6c:	2194                	lbu	a3,0(a1)
  a28a6e:	4198                	lw	a4,0(a1)
  a28a70:	027807bb          	beqi	a6,2,a28c4e <memcpy+0x1fc>
  a28a74:	488d                	li	a7,3
  a28a76:	23180563          	beq	a6,a7,a28ca0 <memcpy+0x24e>
  a28a7a:	a394                	sb	a3,0(a5)
  a28a7c:	3194                	lbu	a3,1(a1)
  a28a7e:	1675                	addi	a2,a2,-3
  a28a80:	058d                	addi	a1,a1,3
  a28a82:	b394                	sb	a3,1(a5)
  a28a84:	fff5c683          	lbu	a3,-1(a1)
  a28a88:	078d                	addi	a5,a5,3
  a28a8a:	4e41                	li	t3,16
  a28a8c:	fed78fa3          	sb	a3,-1(a5)
  a28a90:	0015a303          	lw	t1,1(a1)
  a28a94:	0055a883          	lw	a7,5(a1)
  a28a98:	1641                	addi	a2,a2,-16
  a28a9a:	00831813          	slli	a6,t1,0x8
  a28a9e:	70e8271b          	orshf	a4,a6,a4,srl,24
  a28aa2:	0095a803          	lw	a6,9(a1)
  a28aa6:	c398                	sw	a4,0(a5)
  a28aa8:	00889693          	slli	a3,a7,0x8
  a28aac:	00881713          	slli	a4,a6,0x8
  a28ab0:	7117271b          	orshf	a4,a4,a7,srl,24
  a28ab4:	c798                	sw	a4,8(a5)
  a28ab6:	00d5a703          	lw	a4,13(a1)
  a28aba:	7066a69b          	orshf	a3,a3,t1,srl,24
  a28abe:	c3d4                	sw	a3,4(a5)
  a28ac0:	00871693          	slli	a3,a4,0x8
  a28ac4:	7106a69b          	orshf	a3,a3,a6,srl,24
  a28ac8:	c7d4                	sw	a3,12(a5)
  a28aca:	05c1                	addi	a1,a1,16
  a28acc:	07c1                	addi	a5,a5,16
  a28ace:	fcce61e3          	bltu	t3,a2,a28a90 <memcpy+0x3e>
  a28ad2:	01067713          	andi	a4,a2,16
  a28ad6:	c351                	beqz	a4,a28b5a <memcpy+0x108>
  a28ad8:	2198                	lbu	a4,0(a1)
  a28ada:	07c1                	addi	a5,a5,16
  a28adc:	05c1                	addi	a1,a1,16
  a28ade:	fee78823          	sb	a4,-16(a5)
  a28ae2:	ff15c703          	lbu	a4,-15(a1)
  a28ae6:	fee788a3          	sb	a4,-15(a5)
  a28aea:	ff25c703          	lbu	a4,-14(a1)
  a28aee:	fee78923          	sb	a4,-14(a5)
  a28af2:	ff35c703          	lbu	a4,-13(a1)
  a28af6:	fee789a3          	sb	a4,-13(a5)
  a28afa:	ff45c703          	lbu	a4,-12(a1)
  a28afe:	fee78a23          	sb	a4,-12(a5)
  a28b02:	ff55c703          	lbu	a4,-11(a1)
  a28b06:	fee78aa3          	sb	a4,-11(a5)
  a28b0a:	ff65c703          	lbu	a4,-10(a1)
  a28b0e:	fee78b23          	sb	a4,-10(a5)
  a28b12:	ff75c703          	lbu	a4,-9(a1)
  a28b16:	fee78ba3          	sb	a4,-9(a5)
  a28b1a:	ff85c703          	lbu	a4,-8(a1)
  a28b1e:	fee78c23          	sb	a4,-8(a5)
  a28b22:	ff95c703          	lbu	a4,-7(a1)
  a28b26:	fee78ca3          	sb	a4,-7(a5)
  a28b2a:	ffa5c703          	lbu	a4,-6(a1)
  a28b2e:	fee78d23          	sb	a4,-6(a5)
  a28b32:	ffb5c703          	lbu	a4,-5(a1)
  a28b36:	fee78da3          	sb	a4,-5(a5)
  a28b3a:	ffc5c703          	lbu	a4,-4(a1)
  a28b3e:	fee78e23          	sb	a4,-4(a5)
  a28b42:	ffd5c703          	lbu	a4,-3(a1)
  a28b46:	fee78ea3          	sb	a4,-3(a5)
  a28b4a:	ffe5c703          	lbu	a4,-2(a1)
  a28b4e:	fee78f23          	sb	a4,-2(a5)
  a28b52:	fff5c703          	lbu	a4,-1(a1)
  a28b56:	fee78fa3          	sb	a4,-1(a5)
  a28b5a:	00867713          	andi	a4,a2,8
  a28b5e:	c331                	beqz	a4,a28ba2 <memcpy+0x150>
  a28b60:	2198                	lbu	a4,0(a1)
  a28b62:	07a1                	addi	a5,a5,8
  a28b64:	05a1                	addi	a1,a1,8
  a28b66:	fee78c23          	sb	a4,-8(a5)
  a28b6a:	ff95c703          	lbu	a4,-7(a1)
  a28b6e:	fee78ca3          	sb	a4,-7(a5)
  a28b72:	ffa5c703          	lbu	a4,-6(a1)
  a28b76:	fee78d23          	sb	a4,-6(a5)
  a28b7a:	ffb5c703          	lbu	a4,-5(a1)
  a28b7e:	fee78da3          	sb	a4,-5(a5)
  a28b82:	ffc5c703          	lbu	a4,-4(a1)
  a28b86:	fee78e23          	sb	a4,-4(a5)
  a28b8a:	ffd5c703          	lbu	a4,-3(a1)
  a28b8e:	fee78ea3          	sb	a4,-3(a5)
  a28b92:	ffe5c703          	lbu	a4,-2(a1)
  a28b96:	fee78f23          	sb	a4,-2(a5)
  a28b9a:	fff5c703          	lbu	a4,-1(a1)
  a28b9e:	fee78fa3          	sb	a4,-1(a5)
  a28ba2:	00467713          	andi	a4,a2,4
  a28ba6:	c359                	beqz	a4,a28c2c <memcpy+0x1da>
  a28ba8:	2198                	lbu	a4,0(a1)
  a28baa:	0791                	addi	a5,a5,4
  a28bac:	0591                	addi	a1,a1,4
  a28bae:	fee78e23          	sb	a4,-4(a5)
  a28bb2:	ffd5c703          	lbu	a4,-3(a1)
  a28bb6:	fee78ea3          	sb	a4,-3(a5)
  a28bba:	ffe5c703          	lbu	a4,-2(a1)
  a28bbe:	fee78f23          	sb	a4,-2(a5)
  a28bc2:	fff5c703          	lbu	a4,-1(a1)
  a28bc6:	fee78fa3          	sb	a4,-1(a5)
  a28bca:	a08d                	j	a28c2c <memcpy+0x1da>
  a28bcc:	0585                	addi	a1,a1,1
  a28bce:	fff5c703          	lbu	a4,-1(a1)
  a28bd2:	0785                	addi	a5,a5,1
  a28bd4:	167d                	addi	a2,a2,-1
  a28bd6:	fee78fa3          	sb	a4,-1(a5)
  a28bda:	bdad                	j	a28a54 <memcpy+0x2>
  a28bdc:	4194                	lw	a3,0(a1)
  a28bde:	07c1                	addi	a5,a5,16
  a28be0:	05c1                	addi	a1,a1,16
  a28be2:	fed7a823          	sw	a3,-16(a5)
  a28be6:	ff45a683          	lw	a3,-12(a1)
  a28bea:	1641                	addi	a2,a2,-16
  a28bec:	fed7aa23          	sw	a3,-12(a5)
  a28bf0:	ff85a683          	lw	a3,-8(a1)
  a28bf4:	fed7ac23          	sw	a3,-8(a5)
  a28bf8:	ffc5a683          	lw	a3,-4(a1)
  a28bfc:	fed7ae23          	sw	a3,-4(a5)
  a28c00:	fcc76ee3          	bltu	a4,a2,a28bdc <memcpy+0x18a>
  a28c04:	00867713          	andi	a4,a2,8
  a28c08:	cb11                	beqz	a4,a28c1c <memcpy+0x1ca>
  a28c0a:	4198                	lw	a4,0(a1)
  a28c0c:	07a1                	addi	a5,a5,8
  a28c0e:	05a1                	addi	a1,a1,8
  a28c10:	fee7ac23          	sw	a4,-8(a5)
  a28c14:	ffc5a703          	lw	a4,-4(a1)
  a28c18:	fee7ae23          	sw	a4,-4(a5)
  a28c1c:	00467713          	andi	a4,a2,4
  a28c20:	c711                	beqz	a4,a28c2c <memcpy+0x1da>
  a28c22:	4198                	lw	a4,0(a1)
  a28c24:	0791                	addi	a5,a5,4
  a28c26:	0591                	addi	a1,a1,4
  a28c28:	fee7ae23          	sw	a4,-4(a5)
  a28c2c:	00267713          	andi	a4,a2,2
  a28c30:	cb11                	beqz	a4,a28c44 <memcpy+0x1f2>
  a28c32:	2198                	lbu	a4,0(a1)
  a28c34:	0789                	addi	a5,a5,2
  a28c36:	0589                	addi	a1,a1,2
  a28c38:	fee78f23          	sb	a4,-2(a5)
  a28c3c:	fff5c703          	lbu	a4,-1(a1)
  a28c40:	fee78fa3          	sb	a4,-1(a5)
  a28c44:	8a05                	andi	a2,a2,1
  a28c46:	c219                	beqz	a2,a28c4c <memcpy+0x1fa>
  a28c48:	2198                	lbu	a4,0(a1)
  a28c4a:	a398                	sb	a4,0(a5)
  a28c4c:	8082                	ret
  a28c4e:	a394                	sb	a3,0(a5)
  a28c50:	3194                	lbu	a3,1(a1)
  a28c52:	1679                	addi	a2,a2,-2
  a28c54:	0589                	addi	a1,a1,2
  a28c56:	b394                	sb	a3,1(a5)
  a28c58:	4e45                	li	t3,17
  a28c5a:	0789                	addi	a5,a5,2
  a28c5c:	0025a303          	lw	t1,2(a1)
  a28c60:	0065a883          	lw	a7,6(a1)
  a28c64:	1641                	addi	a2,a2,-16
  a28c66:	01031813          	slli	a6,t1,0x10
  a28c6a:	60e8271b          	orshf	a4,a6,a4,srl,16
  a28c6e:	00a5a803          	lw	a6,10(a1)
  a28c72:	c398                	sw	a4,0(a5)
  a28c74:	01089693          	slli	a3,a7,0x10
  a28c78:	01081713          	slli	a4,a6,0x10
  a28c7c:	6117271b          	orshf	a4,a4,a7,srl,16
  a28c80:	c798                	sw	a4,8(a5)
  a28c82:	00e5a703          	lw	a4,14(a1)
  a28c86:	6066a69b          	orshf	a3,a3,t1,srl,16
  a28c8a:	c3d4                	sw	a3,4(a5)
  a28c8c:	01071693          	slli	a3,a4,0x10
  a28c90:	6106a69b          	orshf	a3,a3,a6,srl,16
  a28c94:	c7d4                	sw	a3,12(a5)
  a28c96:	05c1                	addi	a1,a1,16
  a28c98:	07c1                	addi	a5,a5,16
  a28c9a:	fcce61e3          	bltu	t3,a2,a28c5c <memcpy+0x20a>
  a28c9e:	bd15                	j	a28ad2 <memcpy+0x80>
  a28ca0:	a394                	sb	a3,0(a5)
  a28ca2:	0585                	addi	a1,a1,1
  a28ca4:	167d                	addi	a2,a2,-1
  a28ca6:	0785                	addi	a5,a5,1
  a28ca8:	4e49                	li	t3,18
  a28caa:	0035a303          	lw	t1,3(a1)
  a28cae:	0075a883          	lw	a7,7(a1)
  a28cb2:	1641                	addi	a2,a2,-16
  a28cb4:	01831813          	slli	a6,t1,0x18
  a28cb8:	50e8271b          	orshf	a4,a6,a4,srl,8
  a28cbc:	00b5a803          	lw	a6,11(a1)
  a28cc0:	c398                	sw	a4,0(a5)
  a28cc2:	01889693          	slli	a3,a7,0x18
  a28cc6:	01881713          	slli	a4,a6,0x18
  a28cca:	5117271b          	orshf	a4,a4,a7,srl,8
  a28cce:	c798                	sw	a4,8(a5)
  a28cd0:	00f5a703          	lw	a4,15(a1)
  a28cd4:	5066a69b          	orshf	a3,a3,t1,srl,8
  a28cd8:	c3d4                	sw	a3,4(a5)
  a28cda:	01871693          	slli	a3,a4,0x18
  a28cde:	5106a69b          	orshf	a3,a3,a6,srl,8
  a28ce2:	c7d4                	sw	a3,12(a5)
  a28ce4:	05c1                	addi	a1,a1,16
  a28ce6:	07c1                	addi	a5,a5,16
  a28ce8:	fcce61e3          	bltu	t3,a2,a28caa <memcpy+0x258>
  a28cec:	b3dd                	j	a28ad2 <memcpy+0x80>

00a28cee <memcmp>:
  a28cee:	962a                	add	a2,a2,a0
  a28cf0:	00c50c63          	beq	a0,a2,a28d08 <memcmp+0x1a>
  a28cf4:	211c                	lbu	a5,0(a0)
  a28cf6:	2198                	lbu	a4,0(a1)
  a28cf8:	00e78563          	beq	a5,a4,a28d02 <memcmp+0x14>
  a28cfc:	40e78533          	sub	a0,a5,a4
  a28d00:	8082                	ret
  a28d02:	0505                	addi	a0,a0,1
  a28d04:	0585                	addi	a1,a1,1
  a28d06:	b7ed                	j	a28cf0 <memcmp+0x2>
  a28d08:	4501                	li	a0,0
  a28d0a:	8082                	ret

00a28d0c <strlen>:
  a28d0c:	87aa                	mv	a5,a0
  a28d0e:	0037f713          	andi	a4,a5,3
  a28d12:	e31d                	bnez	a4,a28d38 <strlen+0x2c>
  a28d14:	fefe feff 059f      	l.li	a1,0xfefefeff
  a28d1a:	8080 8080 061f      	l.li	a2,0x80808080
  a28d20:	4394                	lw	a3,0(a5)
  a28d22:	00b68733          	add	a4,a3,a1
  a28d26:	fff6c693          	not	a3,a3
  a28d2a:	8f75                	and	a4,a4,a3
  a28d2c:	8f71                	and	a4,a4,a2
  a28d2e:	cf01                	beqz	a4,a28d46 <strlen+0x3a>
  a28d30:	2398                	lbu	a4,0(a5)
  a28d32:	c709                	beqz	a4,a28d3c <strlen+0x30>
  a28d34:	0785                	addi	a5,a5,1
  a28d36:	bfed                	j	a28d30 <strlen+0x24>
  a28d38:	2398                	lbu	a4,0(a5)
  a28d3a:	e701                	bnez	a4,a28d42 <strlen+0x36>
  a28d3c:	40a78533          	sub	a0,a5,a0
  a28d40:	8082                	ret
  a28d42:	0785                	addi	a5,a5,1
  a28d44:	b7e9                	j	a28d0e <strlen+0x2>
  a28d46:	0791                	addi	a5,a5,4
  a28d48:	bfe1                	j	a28d20 <strlen+0x14>

00a28d4a <memmove>:
  a28d4a:	882a                	mv	a6,a0
  a28d4c:	872e                	mv	a4,a1
  a28d4e:	87b2                	mv	a5,a2
  a28d50:	02b50f63          	beq	a0,a1,a28d8e <memmove+0x44>
  a28d54:	56f9                	li	a3,-2
  a28d56:	02d606b3          	mul	a3,a2,a3
  a28d5a:	40a588b3          	sub	a7,a1,a0
  a28d5e:	40c888b3          	sub	a7,a7,a2
  a28d62:	0116e363          	bltu	a3,a7,a28d68 <memmove+0x1e>
  a28d66:	b1f5                	j	a28a52 <memcpy>
  a28d68:	00a5c6b3          	xor	a3,a1,a0
  a28d6c:	8a8d                	andi	a3,a3,3
  a28d6e:	04b57863          	bgeu	a0,a1,a28dbe <memmove+0x74>
  a28d72:	c6a1                	beqz	a3,a28dba <memmove+0x70>
  a28d74:	86aa                	mv	a3,a0
  a28d76:	97b6                	add	a5,a5,a3
  a28d78:	00f68a63          	beq	a3,a5,a28d8c <memmove+0x42>
  a28d7c:	0705                	addi	a4,a4,1
  a28d7e:	fff74603          	lbu	a2,-1(a4)
  a28d82:	0685                	addi	a3,a3,1
  a28d84:	fec68fa3          	sb	a2,-1(a3)
  a28d88:	bfc5                	j	a28d78 <memmove+0x2e>
  a28d8a:	e781                	bnez	a5,a28d92 <memmove+0x48>
  a28d8c:	8742                	mv	a4,a6
  a28d8e:	853a                	mv	a0,a4
  a28d90:	8082                	ret
  a28d92:	0705                	addi	a4,a4,1
  a28d94:	fff74603          	lbu	a2,-1(a4)
  a28d98:	0685                	addi	a3,a3,1
  a28d9a:	17fd                	addi	a5,a5,-1
  a28d9c:	fec68fa3          	sb	a2,-1(a3)
  a28da0:	0036f613          	andi	a2,a3,3
  a28da4:	f27d                	bnez	a2,a28d8a <memmove+0x40>
  a28da6:	460d                	li	a2,3
  a28da8:	fcf677e3          	bgeu	a2,a5,a28d76 <memmove+0x2c>
  a28dac:	430c                	lw	a1,0(a4)
  a28dae:	17f1                	addi	a5,a5,-4
  a28db0:	0691                	addi	a3,a3,4
  a28db2:	feb6ae23          	sw	a1,-4(a3)
  a28db6:	0711                	addi	a4,a4,4
  a28db8:	bfc5                	j	a28da8 <memmove+0x5e>
  a28dba:	86aa                	mv	a3,a0
  a28dbc:	b7d5                	j	a28da0 <memmove+0x56>
  a28dbe:	ee81                	bnez	a3,a28dd6 <memmove+0x8c>
  a28dc0:	962a                	add	a2,a2,a0
  a28dc2:	00f586b3          	add	a3,a1,a5
  a28dc6:	00367593          	andi	a1,a2,3
  a28dca:	40e687b3          	sub	a5,a3,a4
  a28dce:	ed89                	bnez	a1,a28de8 <memmove+0x9e>
  a28dd0:	468d                	li	a3,3
  a28dd2:	02f6e363          	bltu	a3,a5,a28df8 <memmove+0xae>
  a28dd6:	dbdd                	beqz	a5,a28d8c <memmove+0x42>
  a28dd8:	17fd                	addi	a5,a5,-1
  a28dda:	00f706b3          	add	a3,a4,a5
  a28dde:	2290                	lbu	a2,0(a3)
  a28de0:	00f806b3          	add	a3,a6,a5
  a28de4:	a290                	sb	a2,0(a3)
  a28de6:	bfc5                	j	a28dd6 <memmove+0x8c>
  a28de8:	167d                	addi	a2,a2,-1
  a28dea:	fad701e3          	beq	a4,a3,a28d8c <memmove+0x42>
  a28dee:	fff6c783          	lbu	a5,-1(a3)
  a28df2:	16fd                	addi	a3,a3,-1
  a28df4:	a21c                	sb	a5,0(a2)
  a28df6:	bfc1                	j	a28dc6 <memmove+0x7c>
  a28df8:	17f1                	addi	a5,a5,-4
  a28dfa:	00f70633          	add	a2,a4,a5
  a28dfe:	420c                	lw	a1,0(a2)
  a28e00:	00f80633          	add	a2,a6,a5
  a28e04:	c20c                	sw	a1,0(a2)
  a28e06:	b7f1                	j	a28dd2 <memmove+0x88>

00a28e08 <reset>:
  a28e08:	8018                	push	{ra},-16
  a28e0a:	739030ef          	jal	ra,a2cd42 <update_reset_count>
  a28e0e:	400027b7          	lui	a5,0x40002
  a28e12:	4711                	li	a4,4
  a28e14:	10e79823          	sh	a4,272(a5) # 40002110 <_gp_+0x3f5cd648>
  a28e18:	a001                	j	a28e18 <reset+0x10>

00a28e1a <boot_fail>:
  a28e1a:	a001                	j	a28e1a <boot_fail>

00a28e1c <boot_regist_flash_cmd>:
  a28e1c:	8018                	push	{ra},-16
  a28e1e:	862a                	mv	a2,a0
  a28e20:	46d1                	li	a3,20
  a28e22:	45d1                	li	a1,20
  a28e24:	00a0 5500 051f      	l.li	a0,0xa05500
  a28e2a:	61f070ef          	jal	ra,a30c48 <memcpy_s>
  a28e2e:	c501                	beqz	a0,a28e36 <boot_regist_flash_cmd+0x1a>
  a28e30:	80000537          	lui	a0,0x80000
  a28e34:	0511                	addi	a0,a0,4 # 80000004 <_gp_+0x7f5cb53c>
  a28e36:	8014                	popret	{ra},16

00a28e38 <jump_to_execute_addr>:
  a28e38:	8018                	push	{ra},-16
  a28e3a:	9502                	jalr	a0
  a28e3c:	8010                	pop	{ra},16
  a28e3e:	bff1                	j	a28e1a <boot_fail>

00a28e40 <ws63_set_try_fix_cnt>:
  a28e40:	40000737          	lui	a4,0x40000
  a28e44:	471c                	lw	a5,8(a4)
  a28e46:	893d                	andi	a0,a0,15
  a28e48:	9bc1                	andi	a5,a5,-16
  a28e4a:	8fc9                	or	a5,a5,a0
  a28e4c:	c71c                	sw	a5,8(a4)
  a28e4e:	8082                	ret

00a28e50 <sfc_flash_erase>:
  a28e50:	ffe007b7          	lui	a5,0xffe00
  a28e54:	953e                	add	a0,a0,a5
  a28e56:	26d0306f          	j	a2c8c2 <uapi_sfc_reg_erase>

00a28e5a <sfc_flash_write>:
  a28e5a:	87b2                	mv	a5,a2
  a28e5c:	862e                	mv	a2,a1
  a28e5e:	85be                	mv	a1,a5
  a28e60:	1650306f          	j	a2c7c4 <uapi_sfc_reg_write>

00a28e64 <sfc_flash_read>:
  a28e64:	87b2                	mv	a5,a2
  a28e66:	862e                	mv	a2,a1
  a28e68:	85be                	mv	a1,a5
  a28e6a:	0870306f          	j	a2c6f0 <uapi_sfc_reg_read>

00a28e6e <sfc_flash_init>:
  a28e6e:	00a3 2000 051f      	l.li	a0,0xa32000
  a28e74:	7d20306f          	j	a2c646 <uapi_sfc_init>

00a28e78 <start_fastboot>:
  a28e78:	8b58                	push	{ra,s0-s3},-208
  a28e7a:	d602                	sw	zero,44(sp)
  a28e7c:	d802                	sw	zero,48(sp)
  a28e7e:	da02                	sw	zero,52(sp)
  a28e80:	40003637          	lui	a2,0x40003
  a28e84:	23862783          	lw	a5,568(a2) # 40003238 <_gp_+0x3f5ce770>
  a28e88:	0037d693          	srli	a3,a5,0x3
  a28e8c:	0027d713          	srli	a4,a5,0x2
  a28e90:	8a85                	andi	a3,a3,1
  a28e92:	8b05                	andi	a4,a4,1
  a28e94:	00e68a63          	beq	a3,a4,a28ea8 <start_fastboot+0x30>
  a28e98:	0047f713          	andi	a4,a5,4
  a28e9c:	e711                	bnez	a4,a28ea8 <start_fastboot+0x30>
  a28e9e:	9bf9                	andi	a5,a5,-2
  a28ea0:	0027e793          	ori	a5,a5,2
  a28ea4:	22f62c23          	sw	a5,568(a2)
  a28ea8:	40003737          	lui	a4,0x40003
  a28eac:	40872783          	lw	a5,1032(a4) # 40003408 <_gp_+0x3f5ce940>
  a28eb0:	0387e793          	ori	a5,a5,56
  a28eb4:	40f72423          	sw	a5,1032(a4)
  a28eb8:	405030ef          	jal	ra,a2cabc <boot_clock_adapt>
  a28ebc:	451d                	li	a0,7
  a28ebe:	155010ef          	jal	ra,a2a812 <uapi_watchdog_init>
  a28ec2:	4501                	li	a0,0
  a28ec4:	1a1010ef          	jal	ra,a2a864 <uapi_watchdog_enable>
  a28ec8:	0001 c200 079f      	l.li	a5,0x1c200
  a28ece:	dc3e                	sw	a5,56(sp)
  a28ed0:	10800793          	li	a5,264
  a28ed4:	de3e                	sw	a5,60(sp)
  a28ed6:	0004 0102 079f      	l.li	a5,0x40102
  a28edc:	c0be                	sw	a5,64(sp)
  a28ede:	418010ef          	jal	ra,a2a2f6 <uapi_tcxo_init>
  a28ee2:	4631                	li	a2,12
  a28ee4:	182c                	addi	a1,sp,56
  a28ee6:	0808                	addi	a0,sp,16
  a28ee8:	36ad                	jal	ra,a28a52 <memcpy>
  a28eea:	4581                	li	a1,0
  a28eec:	0808                	addi	a0,sp,16
  a28eee:	5c5030ef          	jal	ra,a2ccb2 <hiburn_uart_init>
  a28ef2:	4a1030ef          	jal	ra,a2cb92 <serial_set_mute>
  a28ef6:	00a3 200c 051f      	l.li	a0,0xa3200c
  a28efc:	557030ef          	jal	ra,a2cc52 <boot_msg0>
  a28f00:	673040ef          	jal	ra,a2dd72 <uapi_partition_init>
  a28f04:	22a030ef          	jal	ra,a2c12e <pmp_enable>
  a28f08:	34f030ef          	jal	ra,a2ca56 <malloc_port_init>
  a28f0c:	00a3 2028 051f      	l.li	a0,0xa32028
  a28f12:	541030ef          	jal	ra,a2cc52 <boot_msg0>
  a28f16:	00a2 8e6e 079f      	l.li	a5,0xa28e6e
  a28f1c:	c2be                	sw	a5,68(sp)
  a28f1e:	00a2 8e64 079f      	l.li	a5,0xa28e64
  a28f24:	c4be                	sw	a5,72(sp)
  a28f26:	00a2 8e5a 079f      	l.li	a5,0xa28e5a
  a28f2c:	c6be                	sw	a5,76(sp)
  a28f2e:	00c8                	addi	a0,sp,68
  a28f30:	00a2 8e50 079f      	l.li	a5,0xa28e50
  a28f36:	c8be                	sw	a5,80(sp)
  a28f38:	ca82                	sw	zero,84(sp)
  a28f3a:	35cd                	jal	ra,a28e1c <boot_regist_flash_cmd>
  a28f3c:	3f0d                	jal	ra,a28e6e <sfc_flash_init>
  a28f3e:	c62a                	sw	a0,12(sp)
  a28f40:	20050263          	beqz	a0,a29144 <start_fastboot+0x2cc>
  a28f44:	45b030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a28f48:	45b2                	lw	a1,12(sp)
  a28f4a:	00a3 2044 051f      	l.li	a0,0xa32044
  a28f50:	515030ef          	jal	ra,a2cc64 <boot_msg1>
  a28f54:	43f030ef          	jal	ra,a2cb92 <serial_set_mute>
  a28f58:	3a9030ef          	jal	ra,a2cb00 <switch_flash_clock_to_pll>
  a28f5c:	3d1030ef          	jal	ra,a2cb2c <config_sfc_ctrl_ds>
  a28f60:	4f4030ef          	jal	ra,a2c454 <sfc_port_fix_sr>
  a28f64:	cd01                	beqz	a0,a28f7c <start_fastboot+0x104>
  a28f66:	c62a                	sw	a0,12(sp)
  a28f68:	437030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a28f6c:	45b2                	lw	a1,12(sp)
  a28f6e:	00a3 2070 051f      	l.li	a0,0xa32070
  a28f74:	4f1030ef          	jal	ra,a2cc64 <boot_msg1>
  a28f78:	41b030ef          	jal	ra,a2cb92 <serial_set_mute>
  a28f7c:	400037b7          	lui	a5,0x40003
  a28f80:	2387a783          	lw	a5,568(a5) # 40003238 <_gp_+0x3f5ce770>
  a28f84:	0027f693          	andi	a3,a5,2
  a28f88:	0087f713          	andi	a4,a5,8
  a28f8c:	1c068263          	beqz	a3,a29150 <start_fastboot+0x2d8>
  a28f90:	8b85                	andi	a5,a5,1
  a28f92:	03300593          	li	a1,51
  a28f96:	c391                	beqz	a5,a28f9a <start_fastboot+0x122>
  a28f98:	45e1                	li	a1,24
  a28f9a:	03300613          	li	a2,51
  a28f9e:	c311                	beqz	a4,a28fa2 <start_fastboot+0x12a>
  a28fa0:	4661                	li	a2,24
  a28fa2:	00a3 2084 051f      	l.li	a0,0xa32084
  a28fa8:	4d9030ef          	jal	ra,a2cc80 <boot_msg2>
  a28fac:	291030ef          	jal	ra,a2ca3c <set_efuse_period>
  a28fb0:	195010ef          	jal	ra,a2a944 <uapi_efuse_init>
  a28fb4:	77a040ef          	jal	ra,a2d72e <ws63_upg_init>
  a28fb8:	182c                	addi	a1,sp,56
  a28fba:	02100513          	li	a0,33
  a28fbe:	d402                	sw	zero,40(sp)
  a28fc0:	631040ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a28fc4:	e509                	bnez	a0,a28fce <start_fastboot+0x156>
  a28fc6:	03814783          	lbu	a5,56(sp)
  a28fca:	18078d63          	beqz	a5,a29164 <start_fastboot+0x2ec>
  a28fce:	10500593          	li	a1,261
  a28fd2:	00a3 20b8 051f      	l.li	a0,0xa320b8
  a28fd8:	48d030ef          	jal	ra,a2cc64 <boot_msg1>
  a28fdc:	106c                	addi	a1,sp,44
  a28fde:	02000513          	li	a0,32
  a28fe2:	60f040ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a28fe6:	c919                	beqz	a0,a28ffc <start_fastboot+0x184>
  a28fe8:	3b7030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a28fec:	00a3 216c 051f      	l.li	a0,0xa3216c
  a28ff2:	461030ef          	jal	ra,a2cc52 <boot_msg0>
  a28ff6:	39d030ef          	jal	ra,a2cb92 <serial_set_mute>
  a28ffa:	3539                	jal	ra,a28e08 <reset>
  a28ffc:	5442                	lw	s0,48(sp)
  a28ffe:	002007b7          	lui	a5,0x200
  a29002:	10078993          	addi	s3,a5,256 # 200100 <__heap_size+0x1e2b08>
  a29006:	99a2                	add	s3,s3,s0
  a29008:	c282                	sw	zero,68(sp)
  a2900a:	c482                	sw	zero,72(sp)
  a2900c:	c682                	sw	zero,76(sp)
  a2900e:	c882                	sw	zero,80(sp)
  a29010:	5952                	lw	s2,52(sp)
  a29012:	0489a703          	lw	a4,72(s3)
  a29016:	00f404b3          	add	s1,s0,a5
  a2901a:	30078793          	addi	a5,a5,768
  a2901e:	943e                	add	s0,s0,a5
  a29020:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a29026:	9926                	add	s2,s2,s1
  a29028:	1cf71c63          	bne	a4,a5,a29200 <start_fastboot+0x388>
  a2902c:	00a3 2188 051f      	l.li	a0,0xa32188
  a29032:	421030ef          	jal	ra,a2cc52 <boot_msg0>
  a29036:	00a2 8080 059f      	l.li	a1,0xa28080
  a2903c:	8626                	mv	a2,s1
  a2903e:	4519                	li	a0,6
  a29040:	2321                	jal	ra,a29548 <verify_image_head>
  a29042:	85aa                	mv	a1,a0
  a29044:	26050c63          	beqz	a0,a292bc <start_fastboot+0x444>
  a29048:	00a3 2210 051f      	l.li	a0,0xa32210
  a2904e:	417030ef          	jal	ra,a2cc64 <boot_msg1>
  a29052:	34d030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a29056:	00a3 2364 051f      	l.li	a0,0xa32364
  a2905c:	3f7030ef          	jal	ra,a2cc52 <boot_msg0>
  a29060:	333030ef          	jal	ra,a2cb92 <serial_set_mute>
  a29064:	400007b7          	lui	a5,0x40000
  a29068:	4788                	lw	a0,8(a5)
  a2906a:	893d                	andi	a0,a0,15
  a2906c:	478d                	li	a5,3
  a2906e:	26f57163          	bgeu	a0,a5,a292d0 <start_fastboot+0x458>
  a29072:	0505                	addi	a0,a0,1
  a29074:	33f1                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29076:	3b49                	jal	ra,a28e08 <reset>
  a29078:	4501                	li	a0,0
  a2907a:	4b5030ef          	jal	ra,a2cd2e <set_reset_count>
  a2907e:	4501                	li	a0,0
  a29080:	33c1                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a29082:	4671                	li	a2,28
  a29084:	4581                	li	a1,0
  a29086:	00c8                	addi	a0,sp,68
  a29088:	3a31                	jal	ra,a289a4 <memset>
  a2908a:	00c8                	addi	a0,sp,68
  a2908c:	29d040ef          	jal	ra,a2db28 <mfg_get_ftm_run_region>
  a29090:	c939                	beqz	a0,a290e6 <start_fastboot+0x26e>
  a29092:	47a6                	lw	a5,72(sp)
  a29094:	cba9                	beqz	a5,a290e6 <start_fastboot+0x26e>
  a29096:	4394                	lw	a3,0(a5)
  a29098:	4b7c f333 071f      	l.li	a4,0x4b7cf333
  a2909e:	04e69463          	bne	a3,a4,a290e6 <start_fastboot+0x26e>
  a290a2:	4794                	lw	a3,8(a5)
  a290a4:	10000713          	li	a4,256
  a290a8:	02e69f63          	bne	a3,a4,a290e6 <start_fastboot+0x26e>
  a290ac:	4766                	lw	a4,88(sp)
  a290ae:	ef05                	bnez	a4,a290e6 <start_fastboot+0x26e>
  a290b0:	46f6                	lw	a3,92(sp)
  a290b2:	8f45 ba2f 071f      	l.li	a4,0x8f45ba2f
  a290b8:	02e69763          	bne	a3,a4,a290e6 <start_fastboot+0x26e>
  a290bc:	1247a683          	lw	a3,292(a5) # 40000124 <_gp_+0x3f5cb65c>
  a290c0:	4746                	lw	a4,80(sp)
  a290c2:	30068693          	addi	a3,a3,768
  a290c6:	02d71063          	bne	a4,a3,a290e6 <start_fastboot+0x26e>
  a290ca:	00c4d693          	srli	a3,s1,0xc
  a290ce:	94ba                	add	s1,s1,a4
  a290d0:	44008737          	lui	a4,0x44008
  a290d4:	80d72023          	sw	a3,-2048(a4) # 44007800 <_gp_+0x435d2d38>
  a290d8:	80b1                	srli	s1,s1,0xc
  a290da:	83b1                	srli	a5,a5,0xc
  a290dc:	82972023          	sw	s1,-2016(a4)
  a290e0:	8f95                	sub	a5,a5,a3
  a290e2:	84f72023          	sw	a5,-1984(a4)
  a290e6:	400007b7          	lui	a5,0x40000
  a290ea:	53d8                	lw	a4,36(a5)
  a290ec:	0207a223          	sw	zero,36(a5) # 40000024 <_gp_+0x3f5cb55c>
  a290f0:	5a5a 5a5a 079f      	l.li	a5,0x5a5a5a5a
  a290f6:	04f71263          	bne	a4,a5,a2913a <start_fastboot+0x2c2>
  a290fa:	2a5030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a290fe:	01b010ef          	jal	ra,a2a918 <uapi_watchdog_kick>
  a29102:	00a3 22d4 051f      	l.li	a0,0xa322d4
  a29108:	34b030ef          	jal	ra,a2cc52 <boot_msg0>
  a2910c:	182c                	addi	a1,sp,56
  a2910e:	4509                	li	a0,2
  a29110:	dc02                	sw	zero,56(sp)
  a29112:	de02                	sw	zero,60(sp)
  a29114:	c082                	sw	zero,64(sp)
  a29116:	c282                	sw	zero,68(sp)
  a29118:	c482                	sw	zero,72(sp)
  a2911a:	c682                	sw	zero,76(sp)
  a2911c:	4d5040ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a29120:	84aa                	mv	s1,a0
  a29122:	00cc                	addi	a1,sp,68
  a29124:	4505                	li	a0,1
  a29126:	4cb040ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2912a:	8d45                	or	a0,a0,s1
  a2912c:	20050363          	beqz	a0,a29332 <start_fastboot+0x4ba>
  a29130:	00a3 22f0 051f      	l.li	a0,0xa322f0
  a29136:	31d030ef          	jal	ra,a2cc52 <boot_msg0>
  a2913a:	7de010ef          	jal	ra,a2a918 <uapi_watchdog_kick>
  a2913e:	8522                	mv	a0,s0
  a29140:	39e5                	jal	ra,a28e38 <jump_to_execute_addr>
  a29142:	8b54                	popret	{ra,s0-s3},208
  a29144:	00a3 205c 051f      	l.li	a0,0xa3205c
  a2914a:	309030ef          	jal	ra,a2cc52 <boot_msg0>
  a2914e:	b529                	j	a28f58 <start_fastboot+0xe0>
  a29150:	03300593          	li	a1,51
  a29154:	c311                	beqz	a4,a29158 <start_fastboot+0x2e0>
  a29156:	45e1                	li	a1,24
  a29158:	00a3 20a0 051f      	l.li	a0,0xa320a0
  a2915e:	307030ef          	jal	ra,a2cc64 <boot_msg1>
  a29162:	b5a9                	j	a28fac <start_fastboot+0x134>
  a29164:	1028                	addi	a0,sp,40
  a29166:	388040ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2916a:	5522                	lw	a0,40(sp)
  a2916c:	06c00593          	li	a1,108
  a29170:	00d0                	addi	a2,sp,68
  a29172:	416040ef          	jal	ra,a2d588 <upg_flash_read>
  a29176:	85aa                	mv	a1,a0
  a29178:	c509                	beqz	a0,a29182 <start_fastboot+0x30a>
  a2917a:	00a3 20d8 051f      	l.li	a0,0xa320d8
  a29180:	bda1                	j	a28fd8 <start_fastboot+0x160>
  a29182:	4716                	lw	a4,68(sp)
  a29184:	55aa 55aa 079f      	l.li	a5,0x55aa55aa
  a2918a:	00f71a63          	bne	a4,a5,a2919e <start_fastboot+0x326>
  a2918e:	573a                	lw	a4,172(sp)
  a29190:	aa55 aa55 079f      	l.li	a5,0xaa55aa55
  a29196:	00f71463          	bne	a4,a5,a2919e <start_fastboot+0x326>
  a2919a:	57aa                	lw	a5,168(sp)
  a2919c:	e799                	bnez	a5,a291aa <start_fastboot+0x332>
  a2919e:	00a3 20f0 051f      	l.li	a0,0xa320f0
  a291a4:	2af030ef          	jal	ra,a2cc52 <boot_msg0>
  a291a8:	bd15                	j	a28fdc <start_fastboot+0x164>
  a291aa:	1f5030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a291ae:	00a3 2108 051f      	l.li	a0,0xa32108
  a291b4:	29f030ef          	jal	ra,a2cc52 <boot_msg0>
  a291b8:	43b050ef          	jal	ra,a2edf2 <uapi_upg_start>
  a291bc:	800037b7          	lui	a5,0x80003
  a291c0:	04778693          	addi	a3,a5,71 # 80003047 <_gp_+0x7f5ce57f>
  a291c4:	00a32737          	lui	a4,0xa32
  a291c8:	02d50463          	beq	a0,a3,a291f0 <start_fastboot+0x378>
  a291cc:	04078793          	addi	a5,a5,64
  a291d0:	02f50063          	beq	a0,a5,a291f0 <start_fastboot+0x378>
  a291d4:	cd11                	beqz	a0,a291f0 <start_fastboot+0x378>
  a291d6:	11870513          	addi	a0,a4,280 # a32118 <sfc_cfg+0x118>
  a291da:	279030ef          	jal	ra,a2cc52 <boot_msg0>
  a291de:	00a3 2134 051f      	l.li	a0,0xa32134
  a291e4:	26f030ef          	jal	ra,a2cc52 <boot_msg0>
  a291e8:	1ab030ef          	jal	ra,a2cb92 <serial_set_mute>
  a291ec:	3931                	jal	ra,a28e08 <reset>
  a291ee:	b3fd                	j	a28fdc <start_fastboot+0x164>
  a291f0:	11870513          	addi	a0,a4,280
  a291f4:	25f030ef          	jal	ra,a2cc52 <boot_msg0>
  a291f8:	00a3 2150 051f      	l.li	a0,0xa32150
  a291fe:	b7dd                	j	a291e4 <start_fastboot+0x36c>
  a29200:	012467b3          	or	a5,s0,s2
  a29204:	0ff7f793          	andi	a5,a5,255
  a29208:	cf89                	beqz	a5,a29222 <start_fastboot+0x3aa>
  a2920a:	195030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a2920e:	864a                	mv	a2,s2
  a29210:	85a6                	mv	a1,s1
  a29212:	00a3 21a0 051f      	l.li	a0,0xa321a0
  a29218:	269030ef          	jal	ra,a2cc80 <boot_msg2>
  a2921c:	177030ef          	jal	ra,a2cb92 <serial_set_mute>
  a29220:	36e5                	jal	ra,a28e08 <reset>
  a29222:	00a3 21bc 051f      	l.li	a0,0xa321bc
  a29228:	22b030ef          	jal	ra,a2cc52 <boot_msg0>
  a2922c:	04c98793          	addi	a5,s3,76
  a29230:	c4be                	sw	a5,72(sp)
  a29232:	47f1                	li	a5,28
  a29234:	c6be                	sw	a5,76(sp)
  a29236:	4641                	li	a2,16
  a29238:	4785                	li	a5,1
  a2923a:	00cc                	addi	a1,sp,68
  a2923c:	0808                	addi	a0,sp,16
  a2923e:	04f10823          	sb	a5,80(sp)
  a29242:	811ff0ef          	jal	ra,a28a52 <memcpy>
  a29246:	0808                	addi	a0,sp,16
  a29248:	1f1000ef          	jal	ra,a29c38 <drv_rom_cipher_config_odrk1>
  a2924c:	cd09                	beqz	a0,a29266 <start_fastboot+0x3ee>
  a2924e:	c62a                	sw	a0,12(sp)
  a29250:	14f030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a29254:	45b2                	lw	a1,12(sp)
  a29256:	00a3 21d4 051f      	l.li	a0,0xa321d4
  a2925c:	209030ef          	jal	ra,a2cc64 <boot_msg1>
  a29260:	133030ef          	jal	ra,a2cb92 <serial_set_mute>
  a29264:	3655                	jal	ra,a28e08 <reset>
  a29266:	4741                	li	a4,16
  a29268:	06c98693          	addi	a3,s3,108
  a2926c:	864a                	mv	a2,s2
  a2926e:	85a2                	mv	a1,s0
  a29270:	4501                	li	a0,0
  a29272:	22b000ef          	jal	ra,a29c9c <drv_rom_cipher_fapc_config>
  a29276:	cd09                	beqz	a0,a29290 <start_fastboot+0x418>
  a29278:	c62a                	sw	a0,12(sp)
  a2927a:	125030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a2927e:	45b2                	lw	a1,12(sp)
  a29280:	00a3 21e8 051f      	l.li	a0,0xa321e8
  a29286:	1df030ef          	jal	ra,a2cc64 <boot_msg1>
  a2928a:	109030ef          	jal	ra,a2cb92 <serial_set_mute>
  a2928e:	3ead                	jal	ra,a28e08 <reset>
  a29290:	4685                	li	a3,1
  a29292:	00a00637          	lui	a2,0xa00
  a29296:	85ca                	mv	a1,s2
  a29298:	4505                	li	a0,1
  a2929a:	249000ef          	jal	ra,a29ce2 <drv_rom_cipher_fapc_bypass_config>
  a2929e:	d8050ce3          	beqz	a0,a29036 <start_fastboot+0x1be>
  a292a2:	c62a                	sw	a0,12(sp)
  a292a4:	0fb030ef          	jal	ra,a2cb9e <serial_cancel_mute>
  a292a8:	45b2                	lw	a1,12(sp)
  a292aa:	00a3 21fc 051f      	l.li	a0,0xa321fc
  a292b0:	1b5030ef          	jal	ra,a2cc64 <boot_msg1>
  a292b4:	0df030ef          	jal	ra,a2cb92 <serial_set_mute>
  a292b8:	3e81                	jal	ra,a28e08 <reset>
  a292ba:	bbb5                	j	a29036 <start_fastboot+0x1be>
  a292bc:	85a2                	mv	a1,s0
  a292be:	8526                	mv	a0,s1
  a292c0:	2195                	jal	ra,a29724 <verify_image_body>
  a292c2:	85aa                	mv	a1,a0
  a292c4:	da050ae3          	beqz	a0,a29078 <start_fastboot+0x200>
  a292c8:	00a3 2230 051f      	l.li	a0,0xa32230
  a292ce:	b341                	j	a2904e <start_fastboot+0x1d6>
  a292d0:	4799                	li	a5,6
  a292d2:	daf572e3          	bgeu	a0,a5,a29076 <start_fastboot+0x1fe>
  a292d6:	0505                	addi	a0,a0,1
  a292d8:	36a5                	jal	ra,a28e40 <ws63_set_try_fix_cnt>
  a292da:	00c8                	addi	a0,sp,68
  a292dc:	c282                	sw	zero,68(sp)
  a292de:	549040ef          	jal	ra,a2e026 <upg_get_package_header>
  a292e2:	85aa                	mv	a1,a0
  a292e4:	e119                	bnez	a0,a292ea <start_fastboot+0x472>
  a292e6:	4516                	lw	a0,68(sp)
  a292e8:	e519                	bnez	a0,a292f6 <start_fastboot+0x47e>
  a292ea:	00a3 2250 051f      	l.li	a0,0xa32250
  a292f0:	175030ef          	jal	ra,a2cc64 <boot_msg1>
  a292f4:	b349                	j	a29076 <start_fastboot+0x1fe>
  a292f6:	4f0050ef          	jal	ra,a2e7e6 <uapi_upg_verify_file>
  a292fa:	85aa                	mv	a1,a0
  a292fc:	c509                	beqz	a0,a29306 <start_fastboot+0x48e>
  a292fe:	00a3 226c 051f      	l.li	a0,0xa3226c
  a29304:	b7f5                	j	a292f0 <start_fastboot+0x478>
  a29306:	5b2050ef          	jal	ra,a2e8b8 <uapi_upg_reset_upgrade_flag>
  a2930a:	85aa                	mv	a1,a0
  a2930c:	c509                	beqz	a0,a29316 <start_fastboot+0x49e>
  a2930e:	00a3 2284 051f      	l.li	a0,0xa32284
  a29314:	bff1                	j	a292f0 <start_fastboot+0x478>
  a29316:	618050ef          	jal	ra,a2e92e <uapi_upg_request_upgrade>
  a2931a:	85aa                	mv	a1,a0
  a2931c:	c509                	beqz	a0,a29326 <start_fastboot+0x4ae>
  a2931e:	00a3 22a4 051f      	l.li	a0,0xa322a4
  a29324:	b7f1                	j	a292f0 <start_fastboot+0x478>
  a29326:	00a3 22c0 051f      	l.li	a0,0xa322c0
  a2932c:	127030ef          	jal	ra,a2cc52 <boot_msg0>
  a29330:	b399                	j	a29076 <start_fastboot+0x1fe>
  a29332:	45b6                	lw	a1,76(sp)
  a29334:	4526                	lw	a0,72(sp)
  a29336:	58c030ef          	jal	ra,a2c8c2 <uapi_sfc_reg_erase>
  a2933a:	85aa                	mv	a1,a0
  a2933c:	c511                	beqz	a0,a29348 <start_fastboot+0x4d0>
  a2933e:	00a3 2314 051f      	l.li	a0,0xa32314
  a29344:	121030ef          	jal	ra,a2cc64 <boot_msg1>
  a29348:	57f2                	lw	a5,60(sp)
  a2934a:	4606                	lw	a2,64(sp)
  a2934c:	4526                	lw	a0,72(sp)
  a2934e:	002005b7          	lui	a1,0x200
  a29352:	95be                	add	a1,a1,a5
  a29354:	470030ef          	jal	ra,a2c7c4 <uapi_sfc_reg_write>
  a29358:	85aa                	mv	a1,a0
  a2935a:	c511                	beqz	a0,a29366 <start_fastboot+0x4ee>
  a2935c:	00a3 2334 051f      	l.li	a0,0xa32334
  a29362:	103030ef          	jal	ra,a2cc64 <boot_msg1>
  a29366:	00a3 2354 051f      	l.li	a0,0xa32354
  a2936c:	0e7030ef          	jal	ra,a2cc52 <boot_msg0>
  a29370:	023030ef          	jal	ra,a2cb92 <serial_set_mute>
  a29374:	b3d9                	j	a2913a <start_fastboot+0x2c2>

00a29376 <check_image_id>:
  a29376:	00a326b7          	lui	a3,0xa32
  a2937a:	41c68713          	addi	a4,a3,1052 # a3241c <g_verify_table>
  a2937e:	4781                	li	a5,0
  a29380:	41c68693          	addi	a3,a3,1052
  a29384:	4839                	li	a6,14
  a29386:	00074883          	lbu	a7,0(a4)
  a2938a:	02a89463          	bne	a7,a0,a293b2 <check_image_id+0x3c>
  a2938e:	00174883          	lbu	a7,1(a4)
  a29392:	02b89063          	bne	a7,a1,a293b2 <check_image_id+0x3c>
  a29396:	0cf697db          	muliadd	a5,a3,a5,12
  a2939a:	43dc                	lw	a5,4(a5)
  a2939c:	4501                	li	a0,0
  a2939e:	02c78063          	beq	a5,a2,a293be <check_image_id+0x48>
  a293a2:	8018                	push	{ra},-16
  a293a4:	00a3 239c 051f      	l.li	a0,0xa3239c
  a293aa:	0a9030ef          	jal	ra,a2cc52 <boot_msg0>
  a293ae:	557d                	li	a0,-1
  a293b0:	8014                	popret	{ra},16
  a293b2:	0785                	addi	a5,a5,1
  a293b4:	0731                	addi	a4,a4,12
  a293b6:	fd0798e3          	bne	a5,a6,a29386 <check_image_id+0x10>
  a293ba:	4781                	li	a5,0
  a293bc:	b7c5                	j	a2939c <check_image_id+0x26>
  a293be:	8082                	ret

00a293c0 <check_verify_enable>:
  a293c0:	8118                	push	{ra},-32
  a293c2:	57fd                	li	a5,-1
  a293c4:	4605                	li	a2,1
  a293c6:	00f10593          	addi	a1,sp,15
  a293ca:	451d                	li	a0,7
  a293cc:	00f107a3          	sb	a5,15(sp)
  a293d0:	65e030ef          	jal	ra,a2ca2e <efuse_read_item>
  a293d4:	c901                	beqz	a0,a293e4 <check_verify_enable+0x24>
  a293d6:	00a3 23e0 051f      	l.li	a0,0xa323e0
  a293dc:	077030ef          	jal	ra,a2cc52 <boot_msg0>
  a293e0:	557d                	li	a0,-1
  a293e2:	8114                	popret	{ra},32
  a293e4:	00f14783          	lbu	a5,15(sp)
  a293e8:	4501                	li	a0,0
  a293ea:	ffe5                	bnez	a5,a293e2 <check_verify_enable+0x22>
  a293ec:	80000537          	lui	a0,0x80000
  a293f0:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb53a>
  a293f2:	bfc5                	j	a293e2 <check_verify_enable+0x22>

00a293f4 <check_msid>:
  a293f4:	8138                	push	{ra,s0-s1},-32
  a293f6:	842a                	mv	s0,a0
  a293f8:	84ae                	mv	s1,a1
  a293fa:	4611                	li	a2,4
  a293fc:	006c                	addi	a1,sp,12
  a293fe:	4519                	li	a0,6
  a29400:	c602                	sw	zero,12(sp)
  a29402:	62c030ef          	jal	ra,a2ca2e <efuse_read_item>
  a29406:	c901                	beqz	a0,a29416 <check_msid+0x22>
  a29408:	00a3 23ac 051f      	l.li	a0,0xa323ac
  a2940e:	045030ef          	jal	ra,a2cc52 <boot_msg0>
  a29412:	557d                	li	a0,-1
  a29414:	8134                	popret	{ra,s0-s1},32
  a29416:	47b2                	lw	a5,12(sp)
  a29418:	4501                	li	a0,0
  a2941a:	8c3d                	xor	s0,s0,a5
  a2941c:	8c65                	and	s0,s0,s1
  a2941e:	d87d                	beqz	s0,a29414 <check_msid+0x20>
  a29420:	00a3 23cc 051f      	l.li	a0,0xa323cc
  a29426:	b7e5                	j	a2940e <check_msid+0x1a>

00a29428 <secure_authenticate.constprop.2>:
  a29428:	8448                	push	{ra,s0-s2},-80
  a2942a:	02010913          	addi	s2,sp,32
  a2942e:	84aa                	mv	s1,a0
  a29430:	8436                	mv	s0,a3
  a29432:	852e                	mv	a0,a1
  a29434:	02000693          	li	a3,32
  a29438:	85b2                	mv	a1,a2
  a2943a:	864a                	mv	a2,s2
  a2943c:	c402                	sw	zero,8(sp)
  a2943e:	c602                	sw	zero,12(sp)
  a29440:	c802                	sw	zero,16(sp)
  a29442:	c002                	sw	zero,0(sp)
  a29444:	c202                	sw	zero,4(sp)
  a29446:	ca02                	sw	zero,20(sp)
  a29448:	cc02                	sw	zero,24(sp)
  a2944a:	ce02                	sw	zero,28(sp)
  a2944c:	61f000ef          	jal	ra,a2a26a <drv_rom_cipher_sha256>
  a29450:	c909                	beqz	a0,a29462 <secure_authenticate.constprop.2+0x3a>
  a29452:	00a3 24c4 051f      	l.li	a0,0xa324c4
  a29458:	7fa030ef          	jal	ra,a2cc52 <boot_msg0>
  a2945c:	57fd                	li	a5,-1
  a2945e:	853e                	mv	a0,a5
  a29460:	8444                	popret	{ra,s0-s2},80
  a29462:	02000793          	li	a5,32
  a29466:	c426                	sw	s1,8(sp)
  a29468:	ca22                	sw	s0,20(sp)
  a2946a:	02048493          	addi	s1,s1,32
  a2946e:	02040413          	addi	s0,s0,32
  a29472:	0850                	addi	a2,sp,20
  a29474:	858a                	mv	a1,sp
  a29476:	0028                	addi	a0,sp,8
  a29478:	c83e                	sw	a5,16(sp)
  a2947a:	c03e                	sw	a5,0(sp)
  a2947c:	ce3e                	sw	a5,28(sp)
  a2947e:	c626                	sw	s1,12(sp)
  a29480:	c24a                	sw	s2,4(sp)
  a29482:	cc22                	sw	s0,24(sp)
  a29484:	5df000ef          	jal	ra,a2a262 <drv_rom_cipher_pke_bp256r_verify>
  a29488:	4781                	li	a5,0
  a2948a:	d971                	beqz	a0,a2945e <secure_authenticate.constprop.2+0x36>
  a2948c:	00a3 24f4 051f      	l.li	a0,0xa324f4
  a29492:	b7d9                	j	a29458 <secure_authenticate.constprop.2+0x30>

00a29494 <check_die_id.constprop.3>:
  a29494:	8138                	push	{ra,s0-s1},-32
  a29496:	84aa                	mv	s1,a0
  a29498:	4641                	li	a2,16
  a2949a:	858a                	mv	a1,sp
  a2949c:	4505                	li	a0,1
  a2949e:	c002                	sw	zero,0(sp)
  a294a0:	c202                	sw	zero,4(sp)
  a294a2:	c402                	sw	zero,8(sp)
  a294a4:	c602                	sw	zero,12(sp)
  a294a6:	588030ef          	jal	ra,a2ca2e <efuse_read_item>
  a294aa:	c909                	beqz	a0,a294bc <check_die_id.constprop.3+0x28>
  a294ac:	00a3 2368 051f      	l.li	a0,0xa32368
  a294b2:	7a0030ef          	jal	ra,a2cc52 <boot_msg0>
  a294b6:	547d                	li	s0,-1
  a294b8:	8522                	mv	a0,s0
  a294ba:	8134                	popret	{ra,s0-s1},32
  a294bc:	842a                	mv	s0,a0
  a294be:	4641                	li	a2,16
  a294c0:	85a6                	mv	a1,s1
  a294c2:	850a                	mv	a0,sp
  a294c4:	82bff0ef          	jal	ra,a28cee <memcmp>
  a294c8:	d965                	beqz	a0,a294b8 <check_die_id.constprop.3+0x24>
  a294ca:	00a3 2388 051f      	l.li	a0,0xa32388
  a294d0:	b7cd                	j	a294b2 <check_die_id.constprop.3+0x1e>

00a294d2 <check_version>:
  a294d2:	8138                	push	{ra,s0-s1},-32
  a294d4:	00a32737          	lui	a4,0xa32
  a294d8:	84b2                	mv	s1,a2
  a294da:	41c70693          	addi	a3,a4,1052 # a3241c <g_verify_table>
  a294de:	842e                	mv	s0,a1
  a294e0:	c602                	sw	zero,12(sp)
  a294e2:	4781                	li	a5,0
  a294e4:	41c70713          	addi	a4,a4,1052
  a294e8:	4639                	li	a2,14
  a294ea:	228c                	lbu	a1,0(a3)
  a294ec:	02a59463          	bne	a1,a0,a29514 <check_version+0x42>
  a294f0:	0cf717db          	muliadd	a5,a4,a5,12
  a294f4:	2788                	lbu	a0,8(a5)
  a294f6:	006c                	addi	a1,sp,12
  a294f8:	4611                	li	a2,4
  a294fa:	534030ef          	jal	ra,a2ca2e <efuse_read_item>
  a294fe:	87aa                	mv	a5,a0
  a29500:	009475b3          	and	a1,s0,s1
  a29504:	c115                	beqz	a0,a29528 <check_version+0x56>
  a29506:	00a3 23ac 051f      	l.li	a0,0xa323ac
  a2950c:	746030ef          	jal	ra,a2cc52 <boot_msg0>
  a29510:	557d                	li	a0,-1
  a29512:	8134                	popret	{ra,s0-s1},32
  a29514:	0785                	addi	a5,a5,1
  a29516:	06b1                	addi	a3,a3,12
  a29518:	fcc799e3          	bne	a5,a2,a294ea <check_version+0x18>
  a2951c:	4501                	li	a0,0
  a2951e:	bfe1                	j	a294f6 <check_version+0x24>
  a29520:	fff58713          	addi	a4,a1,-1 # 1fffff <__heap_size+0x1e2a07>
  a29524:	8df9                	and	a1,a1,a4
  a29526:	0785                	addi	a5,a5,1
  a29528:	fde5                	bnez	a1,a29520 <check_version+0x4e>
  a2952a:	4632                	lw	a2,12(sp)
  a2952c:	8e65                	and	a2,a2,s1
  a2952e:	ea01                	bnez	a2,a2953e <check_version+0x6c>
  a29530:	4501                	li	a0,0
  a29532:	feb7f0e3          	bgeu	a5,a1,a29512 <check_version+0x40>
  a29536:	00a3 2404 051f      	l.li	a0,0xa32404
  a2953c:	bfc1                	j	a2950c <check_version+0x3a>
  a2953e:	fff60713          	addi	a4,a2,-1 # 9fffff <__heap_size+0x9e2a07>
  a29542:	8e79                	and	a2,a2,a4
  a29544:	0585                	addi	a1,a1,1
  a29546:	b7e5                	j	a2952e <check_version+0x5c>

00a29548 <verify_image_head>:
  a29548:	8048                	push	{ra,s0-s2},-16
  a2954a:	1c060963          	beqz	a2,a2971c <verify_image_head+0x1d4>
  a2954e:	f0000793          	li	a5,-256
  a29552:	1cf60563          	beq	a2,a5,a2971c <verify_image_head+0x1d4>
  a29556:	8432                	mv	s0,a2
  a29558:	892e                	mv	s2,a1
  a2955a:	84aa                	mv	s1,a0
  a2955c:	3595                	jal	ra,a293c0 <check_verify_enable>
  a2955e:	800007b7          	lui	a5,0x80000
  a29562:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb53a>
  a29564:	02f51563          	bne	a0,a5,a2958e <verify_image_head+0x46>
  a29568:	00a3 25ac 051f      	l.li	a0,0xa325ac
  a2956e:	6e4030ef          	jal	ra,a2cc52 <boot_msg0>
  a29572:	35b9                	jal	ra,a293c0 <check_verify_enable>
  a29574:	800007b7          	lui	a5,0x80000
  a29578:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb53a>
  a2957a:	0ef51e63          	bne	a0,a5,a29676 <verify_image_head+0x12e>
  a2957e:	00a3 271c 051f      	l.li	a0,0xa3271c
  a29584:	6ce030ef          	jal	ra,a2cc52 <boot_msg0>
  a29588:	4401                	li	s0,0
  a2958a:	8522                	mv	a0,s0
  a2958c:	8044                	popret	{ra,s0-s2},16
  a2958e:	ff05183b          	bnei	a0,-1,a295ae <verify_image_head+0x66>
  a29592:	00a3 25dc 051f      	l.li	a0,0xa325dc
  a29598:	6ba030ef          	jal	ra,a2cc52 <boot_msg0>
  a2959c:	8000 15c0 041f      	l.li	s0,0x800015c0
  a295a2:	00a3 2700 051f      	l.li	a0,0xa32700
  a295a8:	6aa030ef          	jal	ra,a2cc52 <boot_msg0>
  a295ac:	bff9                	j	a2958a <verify_image_head+0x42>
  a295ae:	c491                	beqz	s1,a295ba <verify_image_head+0x72>
  a295b0:	ffe48793          	addi	a5,s1,-2
  a295b4:	9f81                	uxtb	a5
  a295b6:	0207f8bb          	bgeui	a5,2,a295d8 <verify_image_head+0x90>
  a295ba:	00a0 5514 079f      	l.li	a5,0xa05514
  a295c0:	439c                	lw	a5,0(a5)
  a295c2:	050785bb          	beqi	a5,5,a295d8 <verify_image_head+0x90>
  a295c6:	00a3 2608 051f      	l.li	a0,0xa32608
  a295cc:	686030ef          	jal	ra,a2cc52 <boot_msg0>
  a295d0:	8000 15c1 041f      	l.li	s0,0x800015c1
  a295d6:	b7f1                	j	a295a2 <verify_image_head+0x5a>
  a295d8:	4010                	lw	a2,0(s0)
  a295da:	4581                	li	a1,0
  a295dc:	8526                	mv	a0,s1
  a295de:	3b61                	jal	ra,a29376 <check_image_id>
  a295e0:	c911                	beqz	a0,a295f4 <verify_image_head+0xac>
  a295e2:	00a3 2638 051f      	l.li	a0,0xa32638
  a295e8:	66a030ef          	jal	ra,a2cc52 <boot_msg0>
  a295ec:	8000 15c2 041f      	l.li	s0,0x800015c2
  a295f2:	bf45                	j	a295a2 <verify_image_head+0x5a>
  a295f4:	0c040693          	addi	a3,s0,192
  a295f8:	0c000613          	li	a2,192
  a295fc:	85a2                	mv	a1,s0
  a295fe:	854a                	mv	a0,s2
  a29600:	3525                	jal	ra,a29428 <secure_authenticate.constprop.2>
  a29602:	c911                	beqz	a0,a29616 <verify_image_head+0xce>
  a29604:	00a3 2660 051f      	l.li	a0,0xa32660
  a2960a:	648030ef          	jal	ra,a2cc52 <boot_msg0>
  a2960e:	8000 15c3 041f      	l.li	s0,0x800015c3
  a29614:	b779                	j	a295a2 <verify_image_head+0x5a>
  a29616:	cc99                	beqz	s1,a29634 <verify_image_head+0xec>
  a29618:	5410                	lw	a2,40(s0)
  a2961a:	504c                	lw	a1,36(s0)
  a2961c:	8526                	mv	a0,s1
  a2961e:	3d55                	jal	ra,a294d2 <check_version>
  a29620:	c911                	beqz	a0,a29634 <verify_image_head+0xec>
  a29622:	00a3 268c 051f      	l.li	a0,0xa3268c
  a29628:	62a030ef          	jal	ra,a2cc52 <boot_msg0>
  a2962c:	8000 15c4 041f      	l.li	s0,0x800015c4
  a29632:	bf85                	j	a295a2 <verify_image_head+0x5a>
  a29634:	580c                	lw	a1,48(s0)
  a29636:	5448                	lw	a0,44(s0)
  a29638:	3b75                	jal	ra,a293f4 <check_msid>
  a2963a:	c911                	beqz	a0,a2964e <verify_image_head+0x106>
  a2963c:	00a3 26b8 051f      	l.li	a0,0xa326b8
  a29642:	610030ef          	jal	ra,a2cc52 <boot_msg0>
  a29646:	8000 15c5 041f      	l.li	s0,0x800015c5
  a2964c:	bf99                	j	a295a2 <verify_image_head+0x5a>
  a2964e:	5858                	lw	a4,52(s0)
  a29650:	2a13 c812 079f      	l.li	a5,0x2a13c812
  a29656:	f0f71ee3          	bne	a4,a5,a29572 <verify_image_head+0x2a>
  a2965a:	03840513          	addi	a0,s0,56
  a2965e:	3d1d                	jal	ra,a29494 <check_die_id.constprop.3>
  a29660:	f00509e3          	beqz	a0,a29572 <verify_image_head+0x2a>
  a29664:	00a3 26dc 051f      	l.li	a0,0xa326dc
  a2966a:	5e8030ef          	jal	ra,a2cc52 <boot_msg0>
  a2966e:	8000 15c6 041f      	l.li	s0,0x800015c6
  a29674:	b73d                	j	a295a2 <verify_image_head+0x5a>
  a29676:	ff05173b          	bnei	a0,-1,a29692 <verify_image_head+0x14a>
  a2967a:	00a3 274c 051f      	l.li	a0,0xa3274c
  a29680:	5d2030ef          	jal	ra,a2cc52 <boot_msg0>
  a29684:	8000 15c0 041f      	l.li	s0,0x800015c0
  a2968a:	00a3 281c 051f      	l.li	a0,0xa3281c
  a29690:	bf21                	j	a295a8 <verify_image_head+0x60>
  a29692:	10042603          	lw	a2,256(s0)
  a29696:	4585                	li	a1,1
  a29698:	8526                	mv	a0,s1
  a2969a:	10040913          	addi	s2,s0,256
  a2969e:	39e1                	jal	ra,a29376 <check_image_id>
  a296a0:	c911                	beqz	a0,a296b4 <verify_image_head+0x16c>
  a296a2:	00a3 2778 051f      	l.li	a0,0xa32778
  a296a8:	5aa030ef          	jal	ra,a2cc52 <boot_msg0>
  a296ac:	8000 15c2 041f      	l.li	s0,0x800015c2
  a296b2:	bfe1                	j	a2968a <verify_image_head+0x142>
  a296b4:	28040693          	addi	a3,s0,640
  a296b8:	18000613          	li	a2,384
  a296bc:	85ca                	mv	a1,s2
  a296be:	08040513          	addi	a0,s0,128
  a296c2:	339d                	jal	ra,a29428 <secure_authenticate.constprop.2>
  a296c4:	c911                	beqz	a0,a296d8 <verify_image_head+0x190>
  a296c6:	00a3 27a0 051f      	l.li	a0,0xa327a0
  a296cc:	586030ef          	jal	ra,a2cc52 <boot_msg0>
  a296d0:	8000 15c3 041f      	l.li	s0,0x800015c3
  a296d6:	bf55                	j	a2968a <verify_image_head+0x142>
  a296d8:	c08d                	beqz	s1,a296fa <verify_image_head+0x1b2>
  a296da:	01492603          	lw	a2,20(s2)
  a296de:	01092583          	lw	a1,16(s2)
  a296e2:	8526                	mv	a0,s1
  a296e4:	33fd                	jal	ra,a294d2 <check_version>
  a296e6:	c911                	beqz	a0,a296fa <verify_image_head+0x1b2>
  a296e8:	00a3 27cc 051f      	l.li	a0,0xa327cc
  a296ee:	564030ef          	jal	ra,a2cc52 <boot_msg0>
  a296f2:	8000 15c4 041f      	l.li	s0,0x800015c4
  a296f8:	bf49                	j	a2968a <verify_image_head+0x142>
  a296fa:	01c92583          	lw	a1,28(s2)
  a296fe:	01892503          	lw	a0,24(s2)
  a29702:	39cd                	jal	ra,a293f4 <check_msid>
  a29704:	842a                	mv	s0,a0
  a29706:	e80502e3          	beqz	a0,a2958a <verify_image_head+0x42>
  a2970a:	00a3 27f8 051f      	l.li	a0,0xa327f8
  a29710:	542030ef          	jal	ra,a2cc52 <boot_msg0>
  a29714:	8000 15c5 041f      	l.li	s0,0x800015c5
  a2971a:	bf85                	j	a2968a <verify_image_head+0x142>
  a2971c:	8000 15ca 041f      	l.li	s0,0x800015ca
  a29722:	b5a5                	j	a2958a <verify_image_head+0x42>

00a29724 <verify_image_body>:
  a29724:	8248                	push	{ra,s0-s2},-48
  a29726:	f0000793          	li	a5,-256
  a2972a:	06f50763          	beq	a0,a5,a29798 <verify_image_body+0x74>
  a2972e:	c5ad                	beqz	a1,a29798 <verify_image_body+0x74>
  a29730:	84ae                	mv	s1,a1
  a29732:	842a                	mv	s0,a0
  a29734:	02000613          	li	a2,32
  a29738:	4581                	li	a1,0
  a2973a:	10050913          	addi	s2,a0,256
  a2973e:	850a                	mv	a0,sp
  a29740:	a64ff0ef          	jal	ra,a289a4 <memset>
  a29744:	12442583          	lw	a1,292(s0)
  a29748:	02000693          	li	a3,32
  a2974c:	860a                	mv	a2,sp
  a2974e:	8526                	mv	a0,s1
  a29750:	31b000ef          	jal	ra,a2a26a <drv_rom_cipher_sha256>
  a29754:	c105                	beqz	a0,a29774 <verify_image_body+0x50>
  a29756:	00a3 2530 051f      	l.li	a0,0xa32530
  a2975c:	4f6030ef          	jal	ra,a2cc52 <boot_msg0>
  a29760:	8000 15c7 041f      	l.li	s0,0x800015c7
  a29766:	00a3 258c 051f      	l.li	a0,0xa3258c
  a2976c:	4e6030ef          	jal	ra,a2cc52 <boot_msg0>
  a29770:	8522                	mv	a0,s0
  a29772:	8244                	popret	{ra,s0-s2},48
  a29774:	12840593          	addi	a1,s0,296
  a29778:	02000613          	li	a2,32
  a2977c:	850a                	mv	a0,sp
  a2977e:	d70ff0ef          	jal	ra,a28cee <memcmp>
  a29782:	4401                	li	s0,0
  a29784:	d575                	beqz	a0,a29770 <verify_image_body+0x4c>
  a29786:	00a3 2560 051f      	l.li	a0,0xa32560
  a2978c:	4c6030ef          	jal	ra,a2cc52 <boot_msg0>
  a29790:	8000 15c8 041f      	l.li	s0,0x800015c8
  a29796:	bfc1                	j	a29766 <verify_image_body+0x42>
  a29798:	8000 15ca 041f      	l.li	s0,0x800015ca
  a2979e:	bfc9                	j	a29770 <verify_image_body+0x4c>

00a297a0 <non_os_enter_critical>:
  a297a0:	8038                	push	{ra,s0-s1},-16
  a297a2:	300024f3          	csrr	s1,mstatus
  a297a6:	300477f3          	csrrci	a5,mstatus,8
  a297aa:	00a05437          	lui	s0,0xa05
  a297ae:	52440793          	addi	a5,s0,1316 # a05524 <g_non_os_critical_nesting>
  a297b2:	239e                	lhu	a5,0(a5)
  a297b4:	52440413          	addi	s0,s0,1316
  a297b8:	9fa1                	uxth	a5
  a297ba:	eb89                	bnez	a5,a297cc <non_os_enter_critical+0x2c>
  a297bc:	00a0 551c 079f      	l.li	a5,0xa0551c
  a297c2:	439c                	lw	a5,0(a5)
  a297c4:	c781                	beqz	a5,a297cc <non_os_enter_critical+0x2c>
  a297c6:	8586                	mv	a1,ra
  a297c8:	4501                	li	a0,0
  a297ca:	9782                	jalr	a5
  a297cc:	00a0 5518 079f      	l.li	a5,0xa05518
  a297d2:	439c                	lw	a5,0(a5)
  a297d4:	c789                	beqz	a5,a297de <non_os_enter_critical+0x3e>
  a297d6:	8586                	mv	a1,ra
  a297d8:	2012                	lhu	a2,0(s0)
  a297da:	4501                	li	a0,0
  a297dc:	9782                	jalr	a5
  a297de:	201e                	lhu	a5,0(s0)
  a297e0:	9fa1                	uxth	a5
  a297e2:	eb89                	bnez	a5,a297f4 <non_os_enter_critical+0x54>
  a297e4:	808d                	srli	s1,s1,0x3
  a297e6:	0014c493          	xori	s1,s1,1
  a297ea:	8885                	andi	s1,s1,1
  a297ec:	00a0 5520 079f      	l.li	a5,0xa05520
  a297f2:	c384                	sw	s1,0(a5)
  a297f4:	201e                	lhu	a5,0(s0)
  a297f6:	0785                	addi	a5,a5,1
  a297f8:	9fa1                	uxth	a5
  a297fa:	a01e                	sh	a5,0(s0)
  a297fc:	201e                	lhu	a5,0(s0)
  a297fe:	9fa1                	uxth	a5
  a29800:	eb81                	bnez	a5,a29810 <non_os_enter_critical+0x70>
  a29802:	06300593          	li	a1,99
  a29806:	03100513          	li	a0,49
  a2980a:	8030                	pop	{ra,s0-s1},16
  a2980c:	44e0406f          	j	a2dc5a <panic>
  a29810:	0ff0000f          	fence
  a29814:	0ff0000f          	fence
  a29818:	8034                	popret	{ra,s0-s1},16

00a2981a <non_os_exit_critical>:
  a2981a:	8038                	push	{ra,s0-s1},-16
  a2981c:	00a05437          	lui	s0,0xa05
  a29820:	52440793          	addi	a5,s0,1316 # a05524 <g_non_os_critical_nesting>
  a29824:	239e                	lhu	a5,0(a5)
  a29826:	9fa1                	uxth	a5
  a29828:	eb81                	bnez	a5,a29838 <non_os_exit_critical+0x1e>
  a2982a:	06f00593          	li	a1,111
  a2982e:	03100513          	li	a0,49
  a29832:	8030                	pop	{ra,s0-s1},16
  a29834:	4260406f          	j	a2dc5a <panic>
  a29838:	52440413          	addi	s0,s0,1316
  a2983c:	201e                	lhu	a5,0(s0)
  a2983e:	8486                	mv	s1,ra
  a29840:	17fd                	addi	a5,a5,-1
  a29842:	9fa1                	uxth	a5
  a29844:	a01e                	sh	a5,0(s0)
  a29846:	00a0 5518 079f      	l.li	a5,0xa05518
  a2984c:	439c                	lw	a5,0(a5)
  a2984e:	c789                	beqz	a5,a29858 <non_os_exit_critical+0x3e>
  a29850:	8586                	mv	a1,ra
  a29852:	2012                	lhu	a2,0(s0)
  a29854:	4505                	li	a0,1
  a29856:	9782                	jalr	a5
  a29858:	201e                	lhu	a5,0(s0)
  a2985a:	9fa1                	uxth	a5
  a2985c:	e785                	bnez	a5,a29884 <non_os_exit_critical+0x6a>
  a2985e:	00a0 551c 079f      	l.li	a5,0xa0551c
  a29864:	439c                	lw	a5,0(a5)
  a29866:	c781                	beqz	a5,a2986e <non_os_exit_critical+0x54>
  a29868:	85a6                	mv	a1,s1
  a2986a:	4505                	li	a0,1
  a2986c:	9782                	jalr	a5
  a2986e:	00a0 5520 079f      	l.li	a5,0xa05520
  a29874:	439c                	lw	a5,0(a5)
  a29876:	e399                	bnez	a5,a2987c <non_os_exit_critical+0x62>
  a29878:	300467f3          	csrrsi	a5,mstatus,8
  a2987c:	0ff0000f          	fence
  a29880:	0ff0000f          	fence
  a29884:	8034                	popret	{ra,s0-s1},16

00a29886 <malloc_register_funcs>:
  a29886:	8018                	push	{ra},-16
  a29888:	862a                	mv	a2,a0
  a2988a:	46b1                	li	a3,12
  a2988c:	45b1                	li	a1,12
  a2988e:	00a0 5528 051f      	l.li	a0,0xa05528
  a29894:	3b4070ef          	jal	ra,a30c48 <memcpy_s>
  a29898:	4501                	li	a0,0
  a2989a:	8014                	popret	{ra},16

00a2989c <rom_malloc_init>:
  a2989c:	8038                	push	{ra,s0-s1},-16
  a2989e:	842e                	mv	s0,a1
  a298a0:	46e1                	li	a3,24
  a298a2:	4601                	li	a2,0
  a298a4:	45e1                	li	a1,24
  a298a6:	84aa                	mv	s1,a0
  a298a8:	41c070ef          	jal	ra,a30cc4 <memset_s>
  a298ac:	ff840793          	addi	a5,s0,-8
  a298b0:	00a0 5534 071f      	l.li	a4,0xa05534
  a298b6:	01b48513          	addi	a0,s1,27
  a298ba:	9bf1                	andi	a5,a5,-4
  a298bc:	9971                	andi	a0,a0,-4
  a298be:	cb1c                	sw	a5,16(a4)
  a298c0:	17e1                	addi	a5,a5,-8
  a298c2:	8f89                	sub	a5,a5,a0
  a298c4:	c748                	sw	a0,12(a4)
  a298c6:	9fa1                	uxth	a5
  a298c8:	a15e                	sh	a5,4(a0)
  a298ca:	c71c                	sw	a5,8(a4)
  a298cc:	679d                	lui	a5,0x7
  a298ce:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a298d2:	a17e                	sh	a5,6(a0)
  a298d4:	00052023          	sw	zero,0(a0)
  a298d8:	8034                	popret	{ra,s0-s1},16

00a298da <malloc_init>:
  a298da:	b7c9                	j	a2989c <rom_malloc_init>

00a298dc <rom_malloc>:
  a298dc:	00a056b7          	lui	a3,0xa05
  a298e0:	53468793          	addi	a5,a3,1332 # a05534 <g_st_dfx>
  a298e4:	47dc                	lw	a5,12(a5)
  a298e6:	53468693          	addi	a3,a3,1332
  a298ea:	e399                	bnez	a5,a298f0 <rom_malloc+0x14>
  a298ec:	4501                	li	a0,0
  a298ee:	8082                	ret
  a298f0:	dd75                	beqz	a0,a298ec <rom_malloc+0x10>
  a298f2:	23f2                	lhu	a2,6(a5)
  a298f4:	671d                	lui	a4,0x7
  a298f6:	07470813          	addi	a6,a4,116 # 7074 <ccause+0x60b2>
  a298fa:	01060663          	beq	a2,a6,a29906 <rom_malloc+0x2a>
  a298fe:	c6c70713          	addi	a4,a4,-916
  a29902:	fee615e3          	bne	a2,a4,a298ec <rom_malloc+0x10>
  a29906:	050d                	addi	a0,a0,3
  a29908:	9971                	andi	a0,a0,-4
  a2990a:	671d                	lui	a4,0x7
  a2990c:	9d21                	uxth	a0
  a2990e:	4881                	li	a7,0
  a29910:	07470613          	addi	a2,a4,116 # 7074 <ccause+0x60b2>
  a29914:	00850813          	addi	a6,a0,8
  a29918:	c6c70313          	addi	t1,a4,-916
  a2991c:	0067de03          	lhu	t3,6(a5)
  a29920:	23da                	lhu	a4,4(a5)
  a29922:	04ce1263          	bne	t3,a2,a29966 <rom_malloc+0x8a>
  a29926:	02e87563          	bgeu	a6,a4,a29950 <rom_malloc+0x74>
  a2992a:	8f09                	sub	a4,a4,a0
  a2992c:	983e                	add	a6,a6,a5
  a2992e:	1761                	addi	a4,a4,-8
  a29930:	00e81223          	sh	a4,4(a6)
  a29934:	00c81323          	sh	a2,6(a6)
  a29938:	671d                	lui	a4,0x7
  a2993a:	c6c70713          	addi	a4,a4,-916 # 6c6c <ccause+0x5caa>
  a2993e:	c38c                	sw	a1,0(a5)
  a29940:	a3fa                	sh	a4,6(a5)
  a29942:	4298                	lw	a4,0(a3)
  a29944:	a3ca                	sh	a0,4(a5)
  a29946:	953a                	add	a0,a0,a4
  a29948:	c288                	sw	a0,0(a3)
  a2994a:	00878513          	addi	a0,a5,8
  a2994e:	8082                	ret
  a29950:	00a76b63          	bltu	a4,a0,a29966 <rom_malloc+0x8a>
  a29954:	661d                	lui	a2,0x7
  a29956:	c6c60613          	addi	a2,a2,-916 # 6c6c <ccause+0x5caa>
  a2995a:	c38c                	sw	a1,0(a5)
  a2995c:	a3f2                	sh	a2,6(a5)
  a2995e:	4290                	lw	a2,0(a3)
  a29960:	9732                	add	a4,a4,a2
  a29962:	c298                	sw	a4,0(a3)
  a29964:	b7dd                	j	a2994a <rom_malloc+0x6e>
  a29966:	0721                	addi	a4,a4,8
  a29968:	97ba                	add	a5,a5,a4
  a2996a:	4a98                	lw	a4,16(a3)
  a2996c:	00e7ef63          	bltu	a5,a4,a2998a <rom_malloc+0xae>
  a29970:	f6089ee3          	bnez	a7,a298ec <rom_malloc+0x10>
  a29974:	46d8                	lw	a4,12(a3)
  a29976:	235e                	lhu	a5,4(a4)
  a29978:	0106ae03          	lw	t3,16(a3)
  a2997c:	07a1                	addi	a5,a5,8
  a2997e:	00f708b3          	add	a7,a4,a5
  a29982:	01c8ea63          	bltu	a7,t3,a29996 <rom_malloc+0xba>
  a29986:	46dc                	lw	a5,12(a3)
  a29988:	4885                	li	a7,1
  a2998a:	23fa                	lhu	a4,6(a5)
  a2998c:	f86708e3          	beq	a4,t1,a2991c <rom_malloc+0x40>
  a29990:	f8c706e3          	beq	a4,a2,a2991c <rom_malloc+0x40>
  a29994:	bfa1                	j	a298ec <rom_malloc+0x10>
  a29996:	00675e03          	lhu	t3,6(a4)
  a2999a:	00ce1b63          	bne	t3,a2,a299b0 <rom_malloc+0xd4>
  a2999e:	0068de03          	lhu	t3,6(a7)
  a299a2:	00ce1763          	bne	t3,a2,a299b0 <rom_malloc+0xd4>
  a299a6:	0048d883          	lhu	a7,4(a7)
  a299aa:	97c6                	add	a5,a5,a7
  a299ac:	a35e                	sh	a5,4(a4)
  a299ae:	88ba                	mv	a7,a4
  a299b0:	8746                	mv	a4,a7
  a299b2:	b7d1                	j	a29976 <rom_malloc+0x9a>

00a299b4 <malloc>:
  a299b4:	8018                	push	{ra},-16
  a299b6:	8586                	mv	a1,ra
  a299b8:	8010                	pop	{ra},16
  a299ba:	b70d                	j	a298dc <rom_malloc>

00a299bc <rom_free>:
  a299bc:	c50d                	beqz	a0,a299e6 <rom_free+0x2a>
  a299be:	ffe55703          	lhu	a4,-2(a0)
  a299c2:	0000 6c6c 079f      	l.li	a5,0x6c6c
  a299c8:	00f71f63          	bne	a4,a5,a299e6 <rom_free+0x2a>
  a299cc:	679d                	lui	a5,0x7
  a299ce:	07478793          	addi	a5,a5,116 # 7074 <ccause+0x60b2>
  a299d2:	fef51f23          	sh	a5,-2(a0)
  a299d6:	00a0 5534 071f      	l.li	a4,0xa05534
  a299dc:	ffc55683          	lhu	a3,-4(a0)
  a299e0:	435c                	lw	a5,4(a4)
  a299e2:	97b6                	add	a5,a5,a3
  a299e4:	c35c                	sw	a5,4(a4)
  a299e6:	4501                	li	a0,0
  a299e8:	8082                	ret

00a299ea <free>:
  a299ea:	bfc9                	j	a299bc <rom_free>

00a299ec <osal_irq_lock>:
  a299ec:	8018                	push	{ra},-16
  a299ee:	3b4d                	jal	ra,a297a0 <non_os_enter_critical>
  a299f0:	4501                	li	a0,0
  a299f2:	8014                	popret	{ra},16

00a299f4 <osal_irq_restore>:
  a299f4:	b51d                	j	a2981a <non_os_exit_critical>

00a299f6 <uapi_pmp_config>:
  a299f6:	8168                	push	{ra,s0-s4},-48
  a299f8:	842a                	mv	s0,a0
  a299fa:	84ae                	mv	s1,a1
  a299fc:	097020ef          	jal	ra,a2c292 <pmp_port_register_hal_funcs>
  a29a00:	246010ef          	jal	ra,a2ac46 <hal_pmp_get_funcs>
  a29a04:	89aa                	mv	s3,a0
  a29a06:	4901                	li	s2,0
  a29a08:	4a05                	li	s4,1
  a29a0a:	00991663          	bne	s2,s1,a29a16 <uapi_pmp_config+0x20>
  a29a0e:	0ff0000f          	fence
  a29a12:	4501                	li	a0,0
  a29a14:	8164                	popret	{ra,s0-s4},48
  a29a16:	4058                	lw	a4,4(s0)
  a29a18:	3454                	lbu	a3,13(s0)
  a29a1a:	00042803          	lw	a6,0(s0)
  a29a1e:	00842883          	lw	a7,8(s0)
  a29a22:	245c                	lbu	a5,12(s0)
  a29a24:	246c                	lbu	a1,14(s0)
  a29a26:	3468                	lbu	a0,15(s0)
  a29a28:	00275613          	srli	a2,a4,0x2
  a29a2c:	01468763          	beq	a3,s4,a29a3a <uapi_pmp_config+0x44>
  a29a30:	177d                	addi	a4,a4,-1
  a29a32:	4317071b          	addshf	a4,a4,a7,srl,1
  a29a36:	00275613          	srli	a2,a4,0x2
  a29a3a:	0077f713          	andi	a4,a5,7
  a29a3e:	00d14783          	lbu	a5,13(sp)
  a29a42:	8a8d                	andi	a3,a3,3
  a29a44:	00a10623          	sb	a0,12(sp)
  a29a48:	0e07f793          	andi	a5,a5,224
  a29a4c:	8fd9                	or	a5,a5,a4
  a29a4e:	06d7a79b          	orshf	a5,a5,a3,sll,3
  a29a52:	07f7f793          	andi	a5,a5,127
  a29a56:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a29a5a:	c242                	sw	a6,4(sp)
  a29a5c:	c432                	sw	a2,8(sp)
  a29a5e:	00f106a3          	sb	a5,13(sp)
  a29a62:	0009a783          	lw	a5,0(s3)
  a29a66:	0048                	addi	a0,sp,4
  a29a68:	0441                	addi	s0,s0,16
  a29a6a:	9782                	jalr	a5
  a29a6c:	f545                	bnez	a0,a29a14 <uapi_pmp_config+0x1e>
  a29a6e:	0905                	addi	s2,s2,1
  a29a70:	bf69                	j	a29a0a <uapi_pmp_config+0x14>

00a29a72 <drv_rom_hash>:
  a29a72:	8e78                	push	{ra,s0-s5},-256
  a29a74:	892a                	mv	s2,a0
  a29a76:	8aae                	mv	s5,a1
  a29a78:	84b2                	mv	s1,a2
  a29a7a:	4581                	li	a1,0
  a29a7c:	04000613          	li	a2,64
  a29a80:	1008                	addi	a0,sp,32
  a29a82:	c63a                	sw	a4,12(sp)
  a29a84:	8a36                	mv	s4,a3
  a29a86:	843e                	mv	s0,a5
  a29a88:	f1dfe0ef          	jal	ra,a289a4 <memset>
  a29a8c:	08000613          	li	a2,128
  a29a90:	4581                	li	a1,0
  a29a92:	1088                	addi	a0,sp,96
  a29a94:	f11fe0ef          	jal	ra,a289a4 <memset>
  a29a98:	ce02                	sw	zero,28(sp)
  a29a9a:	4732                	lw	a4,12(sp)
  a29a9c:	000a9463          	bnez	s5,a29aa4 <drv_rom_hash+0x32>
  a29aa0:	557d                	li	a0,-1
  a29aa2:	8e74                	popret	{ra,s0-s5},256
  a29aa4:	fe0a0ee3          	beqz	s4,a29aa0 <drv_rom_hash+0x2e>
  a29aa8:	010007b7          	lui	a5,0x1000
  a29aac:	fef4fae3          	bgeu	s1,a5,a29aa0 <drv_rom_hash+0x2e>
  a29ab0:	20f71c3b          	bnei	a4,32,a29aa0 <drv_rom_hash+0x2e>
  a29ab4:	0216 9100 079f      	l.li	a5,0x2169100
  a29aba:	0cf90963          	beq	s2,a5,a29b8c <drv_rom_hash+0x11a>
  a29abe:	00a3 283c 061f      	l.li	a2,0xa3283c
  a29ac4:	85ca                	mv	a1,s2
  a29ac6:	8522                	mv	a0,s0
  a29ac8:	77a000ef          	jal	ra,a2a242 <hal_cipher_hash_config>
  a29acc:	f979                	bnez	a0,a29aa2 <drv_rom_hash+0x30>
  a29ace:	03f4f913          	andi	s2,s1,63
  a29ad2:	412489b3          	sub	s3,s1,s2
  a29ad6:	0a099f63          	bnez	s3,a29b94 <drv_rom_hash+0x122>
  a29ada:	08000693          	li	a3,128
  a29ade:	4601                	li	a2,0
  a29ae0:	08000593          	li	a1,128
  a29ae4:	1088                	addi	a0,sp,96
  a29ae6:	1de070ef          	jal	ra,a30cc4 <memset_s>
  a29aea:	86ca                	mv	a3,s2
  a29aec:	013a8633          	add	a2,s5,s3
  a29af0:	08000593          	li	a1,128
  a29af4:	1088                	addi	a0,sp,96
  a29af6:	152070ef          	jal	ra,a30c48 <memcpy_s>
  a29afa:	f15d                	bnez	a0,a29aa0 <drv_rom_hash+0x2e>
  a29afc:	119c                	addi	a5,sp,224
  a29afe:	97ca                	add	a5,a5,s2
  a29b00:	f8000713          	li	a4,-128
  a29b04:	f8e78023          	sb	a4,-128(a5) # ffff80 <_gp_+0x5cb4b8>
  a29b08:	04000993          	li	s3,64
  a29b0c:	3809623b          	bltui	s2,56,a29b14 <drv_rom_hash+0xa2>
  a29b10:	08000993          	li	s3,128
  a29b14:	00349713          	slli	a4,s1,0x3
  a29b18:	01b49613          	slli	a2,s1,0x1b
  a29b1c:	0000 ff00 079f      	l.li	a5,0xff00
  a29b22:	50e7c79b          	andshf	a5,a5,a4,srl,8
  a29b26:	70e6261b          	orshf	a2,a2,a4,srl,24
  a29b2a:	8e5d                	or	a2,a2,a5
  a29b2c:	00ff07b7          	lui	a5,0xff0
  a29b30:	1697c49b          	andshf	s1,a5,s1,sll,11
  a29b34:	8e45                	or	a2,a2,s1
  a29b36:	ffc98513          	addi	a0,s3,-4
  a29b3a:	109c                	addi	a5,sp,96
  a29b3c:	ce32                	sw	a2,28(sp)
  a29b3e:	4691                	li	a3,4
  a29b40:	0870                	addi	a2,sp,28
  a29b42:	4591                	li	a1,4
  a29b44:	953e                	add	a0,a0,a5
  a29b46:	102070ef          	jal	ra,a30c48 <memcpy_s>
  a29b4a:	f939                	bnez	a0,a29aa0 <drv_rom_hash+0x2e>
  a29b4c:	4695                	li	a3,5
  a29b4e:	864e                	mv	a2,s3
  a29b50:	108c                	addi	a1,sp,96
  a29b52:	8522                	mv	a0,s0
  a29b54:	6f6000ef          	jal	ra,a2a24a <hal_cipher_hash_add_in_node>
  a29b58:	f529                	bnez	a0,a29aa2 <drv_rom_hash+0x30>
  a29b5a:	4581                	li	a1,0
  a29b5c:	8522                	mv	a0,s0
  a29b5e:	6f4000ef          	jal	ra,a2a252 <hal_cipher_hash_start>
  a29b62:	f121                	bnez	a0,a29aa2 <drv_rom_hash+0x30>
  a29b64:	04000613          	li	a2,64
  a29b68:	100c                	addi	a1,sp,32
  a29b6a:	8522                	mv	a0,s0
  a29b6c:	6ee000ef          	jal	ra,a2a25a <hal_cipher_hash_wait_done>
  a29b70:	f90d                	bnez	a0,a29aa2 <drv_rom_hash+0x30>
  a29b72:	02000693          	li	a3,32
  a29b76:	1010                	addi	a2,sp,32
  a29b78:	02000593          	li	a1,32
  a29b7c:	8552                	mv	a0,s4
  a29b7e:	0ca070ef          	jal	ra,a30c48 <memcpy_s>
  a29b82:	00a03533          	snez	a0,a0
  a29b86:	40a00533          	neg	a0,a0
  a29b8a:	bf21                	j	a29aa2 <drv_rom_hash+0x30>
  a29b8c:	00a3 285c 061f      	l.li	a2,0xa3285c
  a29b92:	bf0d                	j	a29ac4 <drv_rom_hash+0x52>
  a29b94:	4695                	li	a3,5
  a29b96:	864e                	mv	a2,s3
  a29b98:	85d6                	mv	a1,s5
  a29b9a:	8522                	mv	a0,s0
  a29b9c:	257d                	jal	ra,a2a24a <hal_cipher_hash_add_in_node>
  a29b9e:	f00512e3          	bnez	a0,a29aa2 <drv_rom_hash+0x30>
  a29ba2:	4581                	li	a1,0
  a29ba4:	8522                	mv	a0,s0
  a29ba6:	2575                	jal	ra,a2a252 <hal_cipher_hash_start>
  a29ba8:	ee051de3          	bnez	a0,a29aa2 <drv_rom_hash+0x30>
  a29bac:	4601                	li	a2,0
  a29bae:	4581                	li	a1,0
  a29bb0:	8522                	mv	a0,s0
  a29bb2:	2565                	jal	ra,a2a25a <hal_cipher_hash_wait_done>
  a29bb4:	f20503e3          	beqz	a0,a29ada <drv_rom_hash+0x68>
  a29bb8:	b5ed                	j	a29aa2 <drv_rom_hash+0x30>

00a29bba <drv_rom_cipher_create_keyslot>:
  a29bba:	8248                	push	{ra,s0-s2},-48
  a29bbc:	8432                	mv	s0,a2
  a29bbe:	84aa                	mv	s1,a0
  a29bc0:	4639                	li	a2,14
  a29bc2:	892e                	mv	s2,a1
  a29bc4:	01210513          	addi	a0,sp,18
  a29bc8:	4581                	li	a1,0
  a29bca:	ddbfe0ef          	jal	ra,a289a4 <memset>
  a29bce:	02000793          	li	a5,32
  a29bd2:	00f10823          	sb	a5,16(sp)
  a29bd6:	4581                	li	a1,0
  a29bd8:	4785                	li	a5,1
  a29bda:	0048                	addi	a0,sp,4
  a29bdc:	c622                	sw	s0,12(sp)
  a29bde:	00f108a3          	sb	a5,17(sp)
  a29be2:	00f10923          	sb	a5,18(sp)
  a29be6:	00f10b23          	sb	a5,22(sp)
  a29bea:	00f10c23          	sb	a5,24(sp)
  a29bee:	24f9                	jal	ra,a29ebc <drv_keyslot_create>
  a29bf0:	842a                	mv	s0,a0
  a29bf2:	ed0d                	bnez	a0,a29c2c <drv_rom_cipher_create_keyslot+0x72>
  a29bf4:	0028                	addi	a0,sp,8
  a29bf6:	2e91                	jal	ra,a29f4a <drv_klad_create>
  a29bf8:	842a                	mv	s0,a0
  a29bfa:	e91d                	bnez	a0,a29c30 <drv_rom_cipher_create_keyslot+0x76>
  a29bfc:	4612                	lw	a2,4(sp)
  a29bfe:	4522                	lw	a0,8(sp)
  a29c00:	4581                	li	a1,0
  a29c02:	2e4d                	jal	ra,a29fb4 <drv_klad_attach>
  a29c04:	842a                	mv	s0,a0
  a29c06:	e10d                	bnez	a0,a29c28 <drv_rom_cipher_create_keyslot+0x6e>
  a29c08:	4522                	lw	a0,8(sp)
  a29c0a:	006c                	addi	a1,sp,12
  a29c0c:	21a1                	jal	ra,a2a054 <drv_klad_set_attr>
  a29c0e:	842a                	mv	s0,a0
  a29c10:	e901                	bnez	a0,a29c20 <drv_rom_cipher_create_keyslot+0x66>
  a29c12:	4522                	lw	a0,8(sp)
  a29c14:	85ca                	mv	a1,s2
  a29c16:	2155                	jal	ra,a2a0ba <drv_klad_set_effective_key>
  a29c18:	842a                	mv	s0,a0
  a29c1a:	e119                	bnez	a0,a29c20 <drv_rom_cipher_create_keyslot+0x66>
  a29c1c:	4792                	lw	a5,4(sp)
  a29c1e:	c09c                	sw	a5,0(s1)
  a29c20:	4612                	lw	a2,4(sp)
  a29c22:	4522                	lw	a0,8(sp)
  a29c24:	4581                	li	a1,0
  a29c26:	2ec5                	jal	ra,a2a016 <drv_klad_detach>
  a29c28:	4522                	lw	a0,8(sp)
  a29c2a:	2e99                	jal	ra,a29f80 <drv_klad_destroy>
  a29c2c:	8522                	mv	a0,s0
  a29c2e:	8244                	popret	{ra,s0-s2},48
  a29c30:	4088                	lw	a0,0(s1)
  a29c32:	24c5                	jal	ra,a29f12 <drv_keyslot_destroy>
  a29c34:	bfe5                	j	a29c2c <drv_rom_cipher_create_keyslot+0x72>

00a29c36 <drv_rom_cipher_destroy_keyslot>:
  a29c36:	acf1                	j	a29f12 <drv_keyslot_destroy>

00a29c38 <drv_rom_cipher_config_odrk1>:
  a29c38:	8238                	push	{ra,s0-s1},-48
  a29c3a:	4639                	li	a2,14
  a29c3c:	4581                	li	a1,0
  a29c3e:	84aa                	mv	s1,a0
  a29c40:	01210513          	addi	a0,sp,18
  a29c44:	d61fe0ef          	jal	ra,a289a4 <memset>
  a29c48:	0300 000d 079f      	l.li	a5,0x300000d
  a29c4e:	c63e                	sw	a5,12(sp)
  a29c50:	02000793          	li	a5,32
  a29c54:	00f10823          	sb	a5,16(sp)
  a29c58:	0028                	addi	a0,sp,8
  a29c5a:	4785                	li	a5,1
  a29c5c:	00f108a3          	sb	a5,17(sp)
  a29c60:	00f10b23          	sb	a5,22(sp)
  a29c64:	00f10c23          	sb	a5,24(sp)
  a29c68:	24cd                	jal	ra,a29f4a <drv_klad_create>
  a29c6a:	842a                	mv	s0,a0
  a29c6c:	e515                	bnez	a0,a29c98 <drv_rom_cipher_config_odrk1+0x60>
  a29c6e:	4522                	lw	a0,8(sp)
  a29c70:	4601                	li	a2,0
  a29c72:	4589                	li	a1,2
  a29c74:	2681                	jal	ra,a29fb4 <drv_klad_attach>
  a29c76:	842a                	mv	s0,a0
  a29c78:	ed11                	bnez	a0,a29c94 <drv_rom_cipher_config_odrk1+0x5c>
  a29c7a:	4522                	lw	a0,8(sp)
  a29c7c:	006c                	addi	a1,sp,12
  a29c7e:	2ed9                	jal	ra,a2a054 <drv_klad_set_attr>
  a29c80:	842a                	mv	s0,a0
  a29c82:	e509                	bnez	a0,a29c8c <drv_rom_cipher_config_odrk1+0x54>
  a29c84:	4522                	lw	a0,8(sp)
  a29c86:	85a6                	mv	a1,s1
  a29c88:	290d                	jal	ra,a2a0ba <drv_klad_set_effective_key>
  a29c8a:	842a                	mv	s0,a0
  a29c8c:	4522                	lw	a0,8(sp)
  a29c8e:	4601                	li	a2,0
  a29c90:	4589                	li	a1,2
  a29c92:	2651                	jal	ra,a2a016 <drv_klad_detach>
  a29c94:	4522                	lw	a0,8(sp)
  a29c96:	24ed                	jal	ra,a29f80 <drv_klad_destroy>
  a29c98:	8522                	mv	a0,s0
  a29c9a:	8234                	popret	{ra,s0-s1},48

00a29c9c <drv_rom_cipher_fapc_config>:
  a29c9c:	8348                	push	{ra,s0-s2},-64
  a29c9e:	842e                	mv	s0,a1
  a29ca0:	8932                	mv	s2,a2
  a29ca2:	84aa                	mv	s1,a0
  a29ca4:	4661                	li	a2,24
  a29ca6:	4581                	li	a1,0
  a29ca8:	0828                	addi	a0,sp,24
  a29caa:	c636                	sw	a3,12(sp)
  a29cac:	c43a                	sw	a4,8(sp)
  a29cae:	cf7fe0ef          	jal	ra,a289a4 <memset>
  a29cb2:	4789                	li	a5,2
  a29cb4:	46b2                	lw	a3,12(sp)
  a29cb6:	d43e                	sw	a5,40(sp)
  a29cb8:	10100793          	li	a5,257
  a29cbc:	c822                	sw	s0,16(sp)
  a29cbe:	ca4a                	sw	s2,20(sp)
  a29cc0:	ce22                	sw	s0,28(sp)
  a29cc2:	02f11623          	sh	a5,44(sp)
  a29cc6:	557d                	li	a0,-1
  a29cc8:	ce81                	beqz	a3,a29ce0 <drv_rom_cipher_fapc_config+0x44>
  a29cca:	4722                	lw	a4,8(sp)
  a29ccc:	1007153b          	bnei	a4,16,a29ce0 <drv_rom_cipher_fapc_config+0x44>
  a29cd0:	4641                	li	a2,16
  a29cd2:	85b6                	mv	a1,a3
  a29cd4:	4501                	li	a0,0
  a29cd6:	2971                	jal	ra,a2a172 <drv_fapc_set_iv>
  a29cd8:	e501                	bnez	a0,a29ce0 <drv_rom_cipher_fapc_config+0x44>
  a29cda:	080c                	addi	a1,sp,16
  a29cdc:	8526                	mv	a0,s1
  a29cde:	2155                	jal	ra,a2a182 <drv_fapc_set_config>
  a29ce0:	8344                	popret	{ra,s0-s2},64

00a29ce2 <drv_rom_cipher_fapc_bypass_config>:
  a29ce2:	a325                	j	a2a20a <drv_fapc_set_bypass_config>

00a29ce4 <inner_symc_crypto>:
  a29ce4:	8168                	push	{ra,s0-s4},-48
  a29ce6:	03014803          	lbu	a6,48(sp)
  a29cea:	104618bb          	bnei	a2,16,a29e0c <inner_symc_crypto+0x128>
  a29cee:	01620737          	lui	a4,0x1620
  a29cf2:	00080463          	beqz	a6,a29cfa <inner_symc_crypto+0x16>
  a29cf6:	11620737          	lui	a4,0x11620
  a29cfa:	1ff57513          	andi	a0,a0,511
  a29cfe:	e0077713          	andi	a4,a4,-512
  a29d02:	8f49                	or	a4,a4,a0
  a29d04:	441044b7          	lui	s1,0x44104
  a29d08:	8946                	mv	s2,a7
  a29d0a:	8a3e                	mv	s4,a5
  a29d0c:	842e                	mv	s0,a1
  a29d0e:	10e4a823          	sw	a4,272(s1) # 44104110 <_gp_+0x436cf648>
  a29d12:	0ff0000f          	fence
  a29d16:	1004a223          	sw	zero,260(s1)
  a29d1a:	0ff0000f          	fence
  a29d1e:	00a0 55ac 099f      	l.li	s3,0xa055ac
  a29d24:	0009a703          	lw	a4,0(s3)
  a29d28:	00a0 554c 051f      	l.li	a0,0xa0554c
  a29d2e:	0716                	slli	a4,a4,0x5
  a29d30:	00e50633          	add	a2,a0,a4
  a29d34:	420c                	lw	a1,0(a2)
  a29d36:	0741                	addi	a4,a4,16 # 11620010 <_gp_+0x10beb548>
  a29d38:	01162223          	sw	a7,4(a2)
  a29d3c:	0035e593          	ori	a1,a1,3
  a29d40:	dff5f593          	andi	a1,a1,-513
  a29d44:	c20c                	sw	a1,0(a2)
  a29d46:	c614                	sw	a3,8(a2)
  a29d48:	00062623          	sw	zero,12(a2)
  a29d4c:	46c1                	li	a3,16
  a29d4e:	8622                	mv	a2,s0
  a29d50:	45c1                	li	a1,16
  a29d52:	953a                	add	a0,a0,a4
  a29d54:	6f5060ef          	jal	ra,a30c48 <memcpy_s>
  a29d58:	0009a703          	lw	a4,0(s3)
  a29d5c:	00a0 558c 069f      	l.li	a3,0xa0558c
  a29d62:	08e6869b          	addshf	a3,a3,a4,sll,4
  a29d66:	0705                	addi	a4,a4,1
  a29d68:	8b05                	andi	a4,a4,1
  a29d6a:	00e9a023          	sw	a4,0(s3)
  a29d6e:	0126a223          	sw	s2,4(a3)
  a29d72:	0146a423          	sw	s4,8(a3)
  a29d76:	0006a623          	sw	zero,12(a3)
  a29d7a:	4410d6b7          	lui	a3,0x4410d
  a29d7e:	5a9c                	lw	a5,48(a3)
  a29d80:	00178713          	addi	a4,a5,1 # ff0001 <_gp_+0x5bb539>
  a29d84:	8b05                	andi	a4,a4,1
  a29d86:	f007f793          	andi	a5,a5,-256
  a29d8a:	8fd9                	or	a5,a5,a4
  a29d8c:	da9c                	sw	a5,48(a3)
  a29d8e:	0ff0000f          	fence
  a29d92:	1304a783          	lw	a5,304(s1)
  a29d96:	00178713          	addi	a4,a5,1
  a29d9a:	8b05                	andi	a4,a4,1
  a29d9c:	f007f793          	andi	a5,a5,-256
  a29da0:	8fd9                	or	a5,a5,a4
  a29da2:	12f4a823          	sw	a5,304(s1)
  a29da6:	0ff0000f          	fence
  a29daa:	0000 2710 049f      	l.li	s1,0x2710
  a29db0:	4410c937          	lui	s2,0x4410c
  a29db4:	79c1                	lui	s3,0xffff0
  a29db6:	00092783          	lw	a5,0(s2) # 4410c000 <_gp_+0x436d7538>
  a29dba:	0027f713          	andi	a4,a5,2
  a29dbe:	0137f7b3          	and	a5,a5,s3
  a29dc2:	8fd9                	or	a5,a5,a4
  a29dc4:	cf0d                	beqz	a4,a29dfe <inner_symc_crypto+0x11a>
  a29dc6:	00f92023          	sw	a5,0(s2)
  a29dca:	0ff0000f          	fence
  a29dce:	441097b7          	lui	a5,0x44109
  a29dd2:	0807a703          	lw	a4,128(a5) # 44109080 <_gp_+0x436d45b8>
  a29dd6:	46c1                	li	a3,16
  a29dd8:	860a                	mv	a2,sp
  a29dda:	c03a                	sw	a4,0(sp)
  a29ddc:	0847a703          	lw	a4,132(a5)
  a29de0:	45c1                	li	a1,16
  a29de2:	8522                	mv	a0,s0
  a29de4:	c23a                	sw	a4,4(sp)
  a29de6:	0887a703          	lw	a4,136(a5)
  a29dea:	c43a                	sw	a4,8(sp)
  a29dec:	08c7a783          	lw	a5,140(a5)
  a29df0:	c63e                	sw	a5,12(sp)
  a29df2:	657060ef          	jal	ra,a30c48 <memcpy_s>
  a29df6:	cd01                	beqz	a0,a29e0e <inner_symc_crypto+0x12a>
  a29df8:	04000513          	li	a0,64
  a29dfc:	a809                	j	a29e0e <inner_symc_crypto+0x12a>
  a29dfe:	4505                	li	a0,1
  a29e00:	14fd                	addi	s1,s1,-1
  a29e02:	236d                	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a29e04:	f8cd                	bnez	s1,a29db6 <inner_symc_crypto+0xd2>
  a29e06:	0b400513          	li	a0,180
  a29e0a:	a011                	j	a29e0e <inner_symc_crypto+0x12a>
  a29e0c:	557d                	li	a0,-1
  a29e0e:	8164                	popret	{ra,s0-s4},48

00a29e10 <drv_rom_cipher_symc_init>:
  a29e10:	441007b7          	lui	a5,0x44100
  a29e14:	4741                	li	a4,16
  a29e16:	d398                	sw	a4,32(a5)
  a29e18:	0ff0000f          	fence
  a29e1c:	441047b7          	lui	a5,0x44104
  a29e20:	00a0 554c 071f      	l.li	a4,0xa0554c
  a29e26:	12e7a223          	sw	a4,292(a5) # 44104124 <_gp_+0x436cf65c>
  a29e2a:	0ff0000f          	fence
  a29e2e:	4689                	li	a3,2
  a29e30:	12d7a623          	sw	a3,300(a5)
  a29e34:	0ff0000f          	fence
  a29e38:	4410d737          	lui	a4,0x4410d
  a29e3c:	00a0 558c 061f      	l.li	a2,0xa0558c
  a29e42:	d350                	sw	a2,36(a4)
  a29e44:	0ff0000f          	fence
  a29e48:	d714                	sw	a3,40(a4)
  a29e4a:	0ff0000f          	fence
  a29e4e:	8000 aa00 071f      	l.li	a4,0x8000aa00
  a29e54:	10e7a023          	sw	a4,256(a5)
  a29e58:	0ff0000f          	fence
  a29e5c:	4501                	li	a0,0
  a29e5e:	8082                	ret

00a29e60 <drv_rom_cipher_symc_deinit>:
  a29e60:	441007b7          	lui	a5,0x44100
  a29e64:	0207a023          	sw	zero,32(a5) # 44100020 <_gp_+0x436cb558>
  a29e68:	0ff0000f          	fence
  a29e6c:	4501                	li	a0,0
  a29e6e:	8082                	ret

00a29e70 <drv_rom_cipher_symc_decrypt>:
  a29e70:	8118                	push	{ra},-32
  a29e72:	4305                	li	t1,1
  a29e74:	c01a                	sw	t1,0(sp)
  a29e76:	35bd                	jal	ra,a29ce4 <inner_symc_crypto>
  a29e78:	8114                	popret	{ra},32

00a29e7a <crypto_get_cpu_type>:
  a29e7a:	00a0 55b0 079f      	l.li	a5,0xa055b0
  a29e80:	01c7a303          	lw	t1,28(a5)
  a29e84:	00030363          	beqz	t1,a29e8a <crypto_get_cpu_type+0x10>
  a29e88:	8302                	jr	t1
  a29e8a:	4505                	li	a0,1
  a29e8c:	8082                	ret

00a29e8e <crypto_sm_support>:
  a29e8e:	4505                	li	a0,1
  a29e90:	8082                	ret

00a29e92 <crypto_get_value_by_index>:
  a29e92:	57fd                	li	a5,-1
  a29e94:	c105                	beqz	a0,a29eb4 <crypto_get_value_by_index+0x22>
  a29e96:	ce99                	beqz	a3,a29eb4 <crypto_get_value_by_index+0x22>
  a29e98:	4781                	li	a5,0
  a29e9a:	00b79463          	bne	a5,a1,a29ea2 <crypto_get_value_by_index+0x10>
  a29e9e:	57fd                	li	a5,-1
  a29ea0:	a811                	j	a29eb4 <crypto_get_value_by_index+0x22>
  a29ea2:	872a                	mv	a4,a0
  a29ea4:	0521                	addi	a0,a0,8
  a29ea6:	ff852803          	lw	a6,-8(a0)
  a29eaa:	00c81763          	bne	a6,a2,a29eb8 <crypto_get_value_by_index+0x26>
  a29eae:	435c                	lw	a5,4(a4)
  a29eb0:	c29c                	sw	a5,0(a3)
  a29eb2:	4781                	li	a5,0
  a29eb4:	853e                	mv	a0,a5
  a29eb6:	8082                	ret
  a29eb8:	0785                	addi	a5,a5,1
  a29eba:	b7c5                	j	a29e9a <crypto_get_value_by_index+0x8>

00a29ebc <drv_keyslot_create>:
  a29ebc:	8158                	push	{ra,s0-s3},-48
  a29ebe:	57fd                	li	a5,-1
  a29ec0:	c63e                	sw	a5,12(sp)
  a29ec2:	e119                	bnez	a0,a29ec8 <drv_keyslot_create+0xc>
  a29ec4:	557d                	li	a0,-1
  a29ec6:	8154                	popret	{ra,s0-s3},48
  a29ec8:	0205933b          	bnei	a1,2,a29ed4 <drv_keyslot_create+0x18>
  a29ecc:	00052023          	sw	zero,0(a0)
  a29ed0:	4501                	li	a0,0
  a29ed2:	bfd5                	j	a29ec6 <drv_keyslot_create+0xa>
  a29ed4:	c195                	beqz	a1,a29ef8 <drv_keyslot_create+0x3c>
  a29ed6:	01f59bbb          	bnei	a1,1,a29ec4 <drv_keyslot_create+0x8>
  a29eda:	4989                	li	s3,2
  a29edc:	842e                	mv	s0,a1
  a29ede:	892a                	mv	s2,a0
  a29ee0:	4481                	li	s1,0
  a29ee2:	85a2                	mv	a1,s0
  a29ee4:	8526                	mv	a0,s1
  a29ee6:	13a010ef          	jal	ra,a2b020 <hal_keyslot_lock>
  a29eea:	c62a                	sw	a0,12(sp)
  a29eec:	47b2                	lw	a5,12(sp)
  a29eee:	c799                	beqz	a5,a29efc <drv_keyslot_create+0x40>
  a29ef0:	0485                	addi	s1,s1,1
  a29ef2:	fe9998e3          	bne	s3,s1,a29ee2 <drv_keyslot_create+0x26>
  a29ef6:	b7f9                	j	a29ec4 <drv_keyslot_create+0x8>
  a29ef8:	49a1                	li	s3,8
  a29efa:	b7cd                	j	a29edc <drv_keyslot_create+0x20>
  a29efc:	fd34f4e3          	bgeu	s1,s3,a29ec4 <drv_keyslot_create+0x8>
  a29f00:	550005b7          	lui	a1,0x55000
  a29f04:	2085a59b          	orshf	a1,a1,s0,sll,16
  a29f08:	8ccd                	or	s1,s1,a1
  a29f0a:	00992023          	sw	s1,0(s2)
  a29f0e:	4532                	lw	a0,12(sp)
  a29f10:	bf5d                	j	a29ec6 <drv_keyslot_create+0xa>

00a29f12 <drv_keyslot_destroy>:
  a29f12:	c515                	beqz	a0,a29f3e <drv_keyslot_destroy+0x2c>
  a29f14:	01855793          	srli	a5,a0,0x18
  a29f18:	550797bb          	bnei	a5,85,a29f36 <drv_keyslot_destroy+0x24>
  a29f1c:	01055793          	srli	a5,a0,0x10
  a29f20:	0ff7f793          	andi	a5,a5,255
  a29f24:	4705                	li	a4,1
  a29f26:	00f76863          	bltu	a4,a5,a29f36 <drv_keyslot_destroy+0x24>
  a29f2a:	01051693          	slli	a3,a0,0x10
  a29f2e:	82c1                	srli	a3,a3,0x10
  a29f30:	e789                	bnez	a5,a29f3a <drv_keyslot_destroy+0x28>
  a29f32:	0806e33b          	bltui	a3,8,a29f3e <drv_keyslot_destroy+0x2c>
  a29f36:	557d                	li	a0,-1
  a29f38:	8082                	ret
  a29f3a:	fed76ee3          	bltu	a4,a3,a29f36 <drv_keyslot_destroy+0x24>
  a29f3e:	01055593          	srli	a1,a0,0x10
  a29f42:	9d81                	uxtb	a1
  a29f44:	9d21                	uxth	a0
  a29f46:	1760106f          	j	a2b0bc <hal_keyslot_unlock>

00a29f4a <drv_klad_create>:
  a29f4a:	e119                	bnez	a0,a29f50 <drv_klad_create+0x6>
  a29f4c:	557d                	li	a0,-1
  a29f4e:	8082                	ret
  a29f50:	8038                	push	{ra,s0-s1},-16
  a29f52:	842a                	mv	s0,a0
  a29f54:	00a05537          	lui	a0,0xa05
  a29f58:	5d450493          	addi	s1,a0,1492 # a055d4 <g_klad_ctx>
  a29f5c:	02400693          	li	a3,36
  a29f60:	4601                	li	a2,0
  a29f62:	02400593          	li	a1,36
  a29f66:	5d450513          	addi	a0,a0,1492
  a29f6a:	55b060ef          	jal	ra,a30cc4 <memset_s>
  a29f6e:	4785                	li	a5,1
  a29f70:	02f48023          	sb	a5,32(s1)
  a29f74:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f7a:	c01c                	sw	a5,0(s0)
  a29f7c:	4501                	li	a0,0
  a29f7e:	8034                	popret	{ra,s0-s1},16

00a29f80 <drv_klad_destroy>:
  a29f80:	8028                	push	{ra,s0},-16
  a29f82:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29f88:	547d                	li	s0,-1
  a29f8a:	02f51363          	bne	a0,a5,a29fb0 <drv_klad_destroy+0x30>
  a29f8e:	00a05537          	lui	a0,0xa05
  a29f92:	5d450793          	addi	a5,a0,1492 # a055d4 <g_klad_ctx>
  a29f96:	0207c783          	lbu	a5,32(a5)
  a29f9a:	4401                	li	s0,0
  a29f9c:	cb91                	beqz	a5,a29fb0 <drv_klad_destroy+0x30>
  a29f9e:	02400693          	li	a3,36
  a29fa2:	4601                	li	a2,0
  a29fa4:	02400593          	li	a1,36
  a29fa8:	5d450513          	addi	a0,a0,1492
  a29fac:	519060ef          	jal	ra,a30cc4 <memset_s>
  a29fb0:	8522                	mv	a0,s0
  a29fb2:	8024                	popret	{ra,s0},16

00a29fb4 <drv_klad_attach>:
  a29fb4:	8148                	push	{ra,s0-s2},-32
  a29fb6:	57fd                	li	a5,-1
  a29fb8:	c63e                	sw	a5,12(sp)
  a29fba:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a29fc0:	04f51963          	bne	a0,a5,a2a012 <drv_klad_attach+0x5e>
  a29fc4:	00a05437          	lui	s0,0xa05
  a29fc8:	5d440793          	addi	a5,s0,1492 # a055d4 <g_klad_ctx>
  a29fcc:	0207c783          	lbu	a5,32(a5)
  a29fd0:	5d440413          	addi	s0,s0,1492
  a29fd4:	557d                	li	a0,-1
  a29fd6:	c385                	beqz	a5,a29ff6 <drv_klad_attach+0x42>
  a29fd8:	84ae                	mv	s1,a1
  a29fda:	8932                	mv	s2,a2
  a29fdc:	0ff67593          	andi	a1,a2,255
  a29fe0:	0204863b          	beqi	s1,2,a29ff8 <drv_klad_attach+0x44>
  a29fe4:	85b2                	mv	a1,a2
  a29fe6:	8526                	mv	a0,s1
  a29fe8:	382010ef          	jal	ra,a2b36a <hal_klad_set_key_addr>
  a29fec:	c62a                	sw	a0,12(sp)
  a29fee:	47b2                	lw	a5,12(sp)
  a29ff0:	458d                	li	a1,3
  a29ff2:	c399                	beqz	a5,a29ff8 <drv_klad_attach+0x44>
  a29ff4:	4532                	lw	a0,12(sp)
  a29ff6:	8144                	popret	{ra,s0-s2},32
  a29ff8:	8526                	mv	a0,s1
  a29ffa:	2e6010ef          	jal	ra,a2b2e0 <hal_klad_set_key_dest_cfg>
  a29ffe:	c62a                	sw	a0,12(sp)
  a2a000:	47b2                	lw	a5,12(sp)
  a2a002:	fbed                	bnez	a5,a29ff4 <drv_klad_attach+0x40>
  a2a004:	4785                	li	a5,1
  a2a006:	01242e23          	sw	s2,28(s0)
  a2a00a:	a044                	sb	s1,4(s0)
  a2a00c:	02f400a3          	sb	a5,33(s0)
  a2a010:	b7d5                	j	a29ff4 <drv_klad_attach+0x40>
  a2a012:	557d                	li	a0,-1
  a2a014:	b7cd                	j	a29ff6 <drv_klad_attach+0x42>

00a2a016 <drv_klad_detach>:
  a2a016:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a2a01c:	02f51a63          	bne	a0,a5,a2a050 <drv_klad_detach+0x3a>
  a2a020:	00a0 55d4 079f      	l.li	a5,0xa055d4
  a2a026:	0207c703          	lbu	a4,32(a5)
  a2a02a:	557d                	li	a0,-1
  a2a02c:	c31d                	beqz	a4,a2a052 <drv_klad_detach+0x3c>
  a2a02e:	23d8                	lbu	a4,4(a5)
  a2a030:	02b71163          	bne	a4,a1,a2a052 <drv_klad_detach+0x3c>
  a2a034:	4fd8                	lw	a4,28(a5)
  a2a036:	00c71e63          	bne	a4,a2,a2a052 <drv_klad_detach+0x3c>
  a2a03a:	0217c703          	lbu	a4,33(a5)
  a2a03e:	4501                	li	a0,0
  a2a040:	cb09                	beqz	a4,a2a052 <drv_klad_detach+0x3c>
  a2a042:	020780a3          	sb	zero,33(a5)
  a2a046:	0007ae23          	sw	zero,28(a5)
  a2a04a:	00078223          	sb	zero,4(a5)
  a2a04e:	8082                	ret
  a2a050:	557d                	li	a0,-1
  a2a052:	8082                	ret

00a2a054 <drv_klad_set_attr>:
  a2a054:	8138                	push	{ra,s0-s1},-32
  a2a056:	57fd                	li	a5,-1
  a2a058:	c63e                	sw	a5,12(sp)
  a2a05a:	e199                	bnez	a1,a2a060 <drv_klad_set_attr+0xc>
  a2a05c:	557d                	li	a0,-1
  a2a05e:	8134                	popret	{ra,s0-s1},32
  a2a060:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a2a066:	fef51be3          	bne	a0,a5,a2a05c <drv_klad_set_attr+0x8>
  a2a06a:	00a0 55d4 049f      	l.li	s1,0xa055d4
  a2a070:	0204c783          	lbu	a5,32(s1)
  a2a074:	d7e5                	beqz	a5,a2a05c <drv_klad_set_attr+0x8>
  a2a076:	862e                	mv	a2,a1
  a2a078:	842e                	mv	s0,a1
  a2a07a:	46d1                	li	a3,20
  a2a07c:	45d1                	li	a1,20
  a2a07e:	00848513          	addi	a0,s1,8
  a2a082:	3c7060ef          	jal	ra,a30c48 <memcpy_s>
  a2a086:	c62a                	sw	a0,12(sp)
  a2a088:	47b2                	lw	a5,12(sp)
  a2a08a:	fbe9                	bnez	a5,a2a05c <drv_klad_set_attr+0x8>
  a2a08c:	2050                	lbu	a2,4(s0)
  a2a08e:	304c                	lbu	a1,5(s0)
  a2a090:	2068                	lbu	a0,6(s0)
  a2a092:	1e4010ef          	jal	ra,a2b276 <hal_klad_set_key_crypto_cfg>
  a2a096:	c62a                	sw	a0,12(sp)
  a2a098:	47b2                	lw	a5,12(sp)
  a2a09a:	c399                	beqz	a5,a2a0a0 <drv_klad_set_attr+0x4c>
  a2a09c:	4532                	lw	a0,12(sp)
  a2a09e:	b7c1                	j	a2a05e <drv_klad_set_attr+0xa>
  a2a0a0:	00740513          	addi	a0,s0,7
  a2a0a4:	274010ef          	jal	ra,a2b318 <hal_klad_set_key_secure_cfg>
  a2a0a8:	c62a                	sw	a0,12(sp)
  a2a0aa:	47b2                	lw	a5,12(sp)
  a2a0ac:	fbe5                	bnez	a5,a2a09c <drv_klad_set_attr+0x48>
  a2a0ae:	401c                	lw	a5,0(s0)
  a2a0b0:	c09c                	sw	a5,0(s1)
  a2a0b2:	4785                	li	a5,1
  a2a0b4:	02f48123          	sb	a5,34(s1)
  a2a0b8:	b7d5                	j	a2a09c <drv_klad_set_attr+0x48>

00a2a0ba <drv_klad_set_effective_key>:
  a2a0ba:	8238                	push	{ra,s0-s1},-48
  a2a0bc:	57fd                	li	a5,-1
  a2a0be:	c43e                	sw	a5,8(sp)
  a2a0c0:	c602                	sw	zero,12(sp)
  a2a0c2:	c802                	sw	zero,16(sp)
  a2a0c4:	ca02                	sw	zero,20(sp)
  a2a0c6:	cc02                	sw	zero,24(sp)
  a2a0c8:	ce02                	sw	zero,28(sp)
  a2a0ca:	e199                	bnez	a1,a2a0d0 <drv_klad_set_effective_key+0x16>
  a2a0cc:	557d                	li	a0,-1
  a2a0ce:	a895                	j	a2a142 <drv_klad_set_effective_key+0x88>
  a2a0d0:	41dc                	lw	a5,4(a1)
  a2a0d2:	dfed                	beqz	a5,a2a0cc <drv_klad_set_effective_key+0x12>
  a2a0d4:	219c                	lbu	a5,0(a1)
  a2a0d6:	842e                	mv	s0,a1
  a2a0d8:	84aa                	mv	s1,a0
  a2a0da:	01078e3b          	beqi	a5,1,a2a112 <drv_klad_set_effective_key+0x58>
  a2a0de:	2d3c 4b5a 079f      	l.li	a5,0x2d3c4b5a
  a2a0e4:	fef494e3          	bne	s1,a5,a2a0cc <drv_klad_set_effective_key+0x12>
  a2a0e8:	00a054b7          	lui	s1,0xa05
  a2a0ec:	5d448793          	addi	a5,s1,1492 # a055d4 <g_klad_ctx>
  a2a0f0:	0207c703          	lbu	a4,32(a5)
  a2a0f4:	5d448493          	addi	s1,s1,1492
  a2a0f8:	db71                	beqz	a4,a2a0cc <drv_klad_set_effective_key+0x12>
  a2a0fa:	0227c783          	lbu	a5,34(a5)
  a2a0fe:	d7f9                	beqz	a5,a2a0cc <drv_klad_set_effective_key+0x12>
  a2a100:	203c                	lbu	a5,2(s0)
  a2a102:	010782bb          	beqi	a5,1,a2a10c <drv_klad_set_effective_key+0x52>
  a2a106:	cb91                	beqz	a5,a2a11a <drv_klad_set_effective_key+0x60>
  a2a108:	02f7913b          	bnei	a5,2,a2a0cc <drv_klad_set_effective_key+0x12>
  a2a10c:	00f108a3          	sb	a5,17(sp)
  a2a110:	a039                	j	a2a11e <drv_klad_set_effective_key+0x64>
  a2a112:	4505                	li	a0,1
  a2a114:	3bad                	jal	ra,a29e8e <crypto_sm_support>
  a2a116:	f561                	bnez	a0,a2a0de <drv_klad_set_effective_key+0x24>
  a2a118:	bf55                	j	a2a0cc <drv_klad_set_effective_key+0x12>
  a2a11a:	000108a3          	sb	zero,17(sp)
  a2a11e:	409c                	lw	a5,0(s1)
  a2a120:	c63e                	sw	a5,12(sp)
  a2a122:	201c                	lbu	a5,0(s0)
  a2a124:	00f10823          	sb	a5,16(sp)
  a2a128:	405c                	lw	a5,4(s0)
  a2a12a:	ca3e                	sw	a5,20(sp)
  a2a12c:	441c                	lw	a5,8(s0)
  a2a12e:	cc3e                	sw	a5,24(sp)
  a2a130:	245c                	lbu	a5,12(s0)
  a2a132:	00f10e23          	sb	a5,28(sp)
  a2a136:	0aa010ef          	jal	ra,a2b1e0 <hal_klad_lock>
  a2a13a:	c42a                	sw	a0,8(sp)
  a2a13c:	47a2                	lw	a5,8(sp)
  a2a13e:	c399                	beqz	a5,a2a144 <drv_klad_set_effective_key+0x8a>
  a2a140:	4522                	lw	a0,8(sp)
  a2a142:	8234                	popret	{ra,s0-s1},48
  a2a144:	4d5000ef          	jal	ra,a2ae18 <hal_rkp_lock>
  a2a148:	c42a                	sw	a0,8(sp)
  a2a14a:	47a2                	lw	a5,8(sp)
  a2a14c:	e385                	bnez	a5,a2a16c <drv_klad_set_effective_key+0xb2>
  a2a14e:	0068                	addi	a0,sp,12
  a2a150:	55b000ef          	jal	ra,a2aeaa <hal_rkp_kdf_hard_calculation>
  a2a154:	c42a                	sw	a0,8(sp)
  a2a156:	47a2                	lw	a5,8(sp)
  a2a158:	eb81                	bnez	a5,a2a168 <drv_klad_set_effective_key+0xae>
  a2a15a:	20d0                	lbu	a2,4(s1)
  a2a15c:	4532                	lw	a0,12(sp)
  a2a15e:	85a2                	mv	a1,s0
  a2a160:	23c010ef          	jal	ra,a2b39c <hal_klad_start_com_route>
  a2a164:	c42a                	sw	a0,8(sp)
  a2a166:	47a2                	lw	a5,8(sp)
  a2a168:	4f3000ef          	jal	ra,a2ae5a <hal_rkp_unlock>
  a2a16c:	0ce010ef          	jal	ra,a2b23a <hal_klad_unlock>
  a2a170:	bfc1                	j	a2a140 <drv_klad_set_effective_key+0x86>

00a2a172 <drv_fapc_set_iv>:
  a2a172:	8118                	push	{ra},-32
  a2a174:	57fd                	li	a5,-1
  a2a176:	c63e                	sw	a5,12(sp)
  a2a178:	376010ef          	jal	ra,a2b4ee <hal_fapc_set_region_iv>
  a2a17c:	c62a                	sw	a0,12(sp)
  a2a17e:	4532                	lw	a0,12(sp)
  a2a180:	8114                	popret	{ra},32

00a2a182 <drv_fapc_set_config>:
  a2a182:	8148                	push	{ra,s0-s2},-32
  a2a184:	57fd                	li	a5,-1
  a2a186:	c63e                	sw	a5,12(sp)
  a2a188:	0015b793          	seqz	a5,a1
  a2a18c:	40f007b3          	neg	a5,a5
  a2a190:	c63e                	sw	a5,12(sp)
  a2a192:	47b2                	lw	a5,12(sp)
  a2a194:	c399                	beqz	a5,a2a19a <drv_fapc_set_config+0x18>
  a2a196:	4532                	lw	a0,12(sp)
  a2a198:	8144                	popret	{ra,s0-s2},32
  a2a19a:	4d84                	lw	s1,24(a1)
  a2a19c:	41d0                	lw	a2,4(a1)
  a2a19e:	842e                	mv	s0,a1
  a2a1a0:	418c                	lw	a1,0(a1)
  a2a1a2:	892a                	mv	s2,a0
  a2a1a4:	2be010ef          	jal	ra,a2b462 <hal_fapc_set_region_addr>
  a2a1a8:	c62a                	sw	a0,12(sp)
  a2a1aa:	47b2                	lw	a5,12(sp)
  a2a1ac:	f7ed                	bnez	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1ae:	4850                	lw	a2,20(s0)
  a2a1b0:	480c                	lw	a1,16(s0)
  a2a1b2:	854a                	mv	a0,s2
  a2a1b4:	2d0010ef          	jal	ra,a2b484 <hal_fapc_set_region_permission>
  a2a1b8:	c62a                	sw	a0,12(sp)
  a2a1ba:	47b2                	lw	a5,12(sp)
  a2a1bc:	ffe9                	bnez	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1be:	030494bb          	bnei	s1,3,a2a1d0 <drv_fapc_set_config+0x4e>
  a2a1c2:	440c                	lw	a1,8(s0)
  a2a1c4:	854a                	mv	a0,s2
  a2a1c6:	2c2010ef          	jal	ra,a2b488 <hal_fapc_set_region_mac_addr>
  a2a1ca:	c62a                	sw	a0,12(sp)
  a2a1cc:	47b2                	lw	a5,12(sp)
  a2a1ce:	f7e1                	bnez	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1d0:	85a6                	mv	a1,s1
  a2a1d2:	854a                	mv	a0,s2
  a2a1d4:	2b8010ef          	jal	ra,a2b48c <hal_fapc_set_region_mode>
  a2a1d8:	c62a                	sw	a0,12(sp)
  a2a1da:	47b2                	lw	a5,12(sp)
  a2a1dc:	ffcd                	bnez	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1de:	2c4c                	lbu	a1,28(s0)
  a2a1e0:	854a                	mv	a0,s2
  a2a1e2:	2e4010ef          	jal	ra,a2b4c6 <hal_fapc_region_enable>
  a2a1e6:	c62a                	sw	a0,12(sp)
  a2a1e8:	47b2                	lw	a5,12(sp)
  a2a1ea:	f7d5                	bnez	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1ec:	444c                	lw	a1,12(s0)
  a2a1ee:	854a                	mv	a0,s2
  a2a1f0:	346010ef          	jal	ra,a2b536 <hal_fapc_set_region_iv_start_addr>
  a2a1f4:	c62a                	sw	a0,12(sp)
  a2a1f6:	47b2                	lw	a5,12(sp)
  a2a1f8:	ffd9                	bnez	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1fa:	3c5c                	lbu	a5,29(s0)
  a2a1fc:	dfc9                	beqz	a5,a2a196 <drv_fapc_set_config+0x14>
  a2a1fe:	854a                	mv	a0,s2
  a2a200:	2ca010ef          	jal	ra,a2b4ca <hal_fapc_region_lock>
  a2a204:	c62a                	sw	a0,12(sp)
  a2a206:	47b2                	lw	a5,12(sp)
  a2a208:	b779                	j	a2a196 <drv_fapc_set_config+0x14>

00a2a20a <drv_fapc_set_bypass_config>:
  a2a20a:	8228                	push	{ra,s0},-48
  a2a20c:	57fd                	li	a5,-1
  a2a20e:	c636                	sw	a3,12(sp)
  a2a210:	ce3e                	sw	a5,28(sp)
  a2a212:	842a                	mv	s0,a0
  a2a214:	24e010ef          	jal	ra,a2b462 <hal_fapc_set_region_addr>
  a2a218:	ce2a                	sw	a0,28(sp)
  a2a21a:	47f2                	lw	a5,28(sp)
  a2a21c:	46b2                	lw	a3,12(sp)
  a2a21e:	c399                	beqz	a5,a2a224 <drv_fapc_set_bypass_config+0x1a>
  a2a220:	4572                	lw	a0,28(sp)
  a2a222:	8224                	popret	{ra,s0},48
  a2a224:	def5                	beqz	a3,a2a220 <drv_fapc_set_bypass_config+0x16>
  a2a226:	8522                	mv	a0,s0
  a2a228:	2a2010ef          	jal	ra,a2b4ca <hal_fapc_region_lock>
  a2a22c:	ce2a                	sw	a0,28(sp)
  a2a22e:	47f2                	lw	a5,28(sp)
  a2a230:	bfc5                	j	a2a220 <drv_fapc_set_bypass_config+0x16>

00a2a232 <hal_hash_lock>:
  a2a232:	0010 2fd4 031f      	l.li	t1,0x102fd4
  a2a238:	8302                	jr	t1

00a2a23a <hal_hash_unlock>:
  a2a23a:	0010 2d8a 031f      	l.li	t1,0x102d8a
  a2a240:	8302                	jr	t1

00a2a242 <hal_cipher_hash_config>:
  a2a242:	0010 2daa 031f      	l.li	t1,0x102daa
  a2a248:	8302                	jr	t1

00a2a24a <hal_cipher_hash_add_in_node>:
  a2a24a:	0010 2eb4 031f      	l.li	t1,0x102eb4
  a2a250:	8302                	jr	t1

00a2a252 <hal_cipher_hash_start>:
  a2a252:	0010 2f28 031f      	l.li	t1,0x102f28
  a2a258:	8302                	jr	t1

00a2a25a <hal_cipher_hash_wait_done>:
  a2a25a:	0010 30fc 031f      	l.li	t1,0x1030fc
  a2a260:	8302                	jr	t1

00a2a262 <drv_rom_cipher_pke_bp256r_verify>:
  a2a262:	0010 262a 031f      	l.li	t1,0x10262a
  a2a268:	8302                	jr	t1

00a2a26a <drv_rom_cipher_sha256>:
  a2a26a:	8128                	push	{ra,s0},-32
  a2a26c:	842a                	mv	s0,a0
  a2a26e:	4505                	li	a0,1
  a2a270:	c62e                	sw	a1,12(sp)
  a2a272:	c432                	sw	a2,8(sp)
  a2a274:	c236                	sw	a3,4(sp)
  a2a276:	3f75                	jal	ra,a2a232 <hal_hash_lock>
  a2a278:	4622                	lw	a2,8(sp)
  a2a27a:	45b2                	lw	a1,12(sp)
  a2a27c:	4712                	lw	a4,4(sp)
  a2a27e:	86b2                	mv	a3,a2
  a2a280:	4785                	li	a5,1
  a2a282:	862e                	mv	a2,a1
  a2a284:	0116 9100 051f      	l.li	a0,0x1169100
  a2a28a:	85a2                	mv	a1,s0
  a2a28c:	fe6ff0ef          	jal	ra,a29a72 <drv_rom_hash>
  a2a290:	842a                	mv	s0,a0
  a2a292:	4505                	li	a0,1
  a2a294:	375d                	jal	ra,a2a23a <hal_hash_unlock>
  a2a296:	8522                	mv	a0,s0
  a2a298:	8124                	popret	{ra,s0},32

00a2a29a <uapi_systick_get_count>:
  a2a29a:	8048                	push	{ra,s0-s2},-16
  a2a29c:	f50ff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a2a0:	00a0 55f8 079f      	l.li	a5,0xa055f8
  a2a2a6:	239c                	lbu	a5,0(a5)
  a2a2a8:	eb81                	bnez	a5,a2a2b8 <uapi_systick_get_count+0x1e>
  a2a2aa:	f4aff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a2ae:	4401                	li	s0,0
  a2a2b0:	4481                	li	s1,0
  a2a2b2:	8522                	mv	a0,s0
  a2a2b4:	85a6                	mv	a1,s1
  a2a2b6:	8044                	popret	{ra,s0-s2},16
  a2a2b8:	892a                	mv	s2,a0
  a2a2ba:	771010ef          	jal	ra,a2c22a <hal_systick_get_count>
  a2a2be:	842a                	mv	s0,a0
  a2a2c0:	854a                	mv	a0,s2
  a2a2c2:	84ae                	mv	s1,a1
  a2a2c4:	f30ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a2c8:	b7ed                	j	a2a2b2 <uapi_systick_get_count+0x18>

00a2a2ca <uapi_systick_get_us>:
  a2a2ca:	8128                	push	{ra,s0},-32
  a2a2cc:	37f9                	jal	ra,a2a29a <uapi_systick_get_count>
  a2a2ce:	842a                	mv	s0,a0
  a2a2d0:	c62e                	sw	a1,12(sp)
  a2a2d2:	769010ef          	jal	ra,a2c23a <systick_clock_get>
  a2a2d6:	45b2                	lw	a1,12(sp)
  a2a2d8:	000f 4240 079f      	l.li	a5,0xf4240
  a2a2de:	02f43733          	mulhu	a4,s0,a5
  a2a2e2:	862a                	mv	a2,a0
  a2a2e4:	4681                	li	a3,0
  a2a2e6:	02f585b3          	mul	a1,a1,a5
  a2a2ea:	02f40533          	mul	a0,s0,a5
  a2a2ee:	95ba                	add	a1,a1,a4
  a2a2f0:	aacfe0ef          	jal	ra,a2859c <__udivdi3>
  a2a2f4:	8124                	popret	{ra,s0},32

00a2a2f6 <uapi_tcxo_init>:
  a2a2f6:	8048                	push	{ra,s0-s2},-16
  a2a2f8:	ef4ff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a2fc:	00a0 55f9 091f      	l.li	s2,0xa055f9
  a2a302:	00094783          	lbu	a5,0(s2)
  a2a306:	c791                	beqz	a5,a2a312 <uapi_tcxo_init+0x1c>
  a2a308:	eecff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a30c:	4401                	li	s0,0
  a2a30e:	8522                	mv	a0,s0
  a2a310:	8044                	popret	{ra,s0-s2},16
  a2a312:	84aa                	mv	s1,a0
  a2a314:	23e010ef          	jal	ra,a2b552 <hal_tcxo_init>
  a2a318:	842a                	mv	s0,a0
  a2a31a:	c509                	beqz	a0,a2a324 <uapi_tcxo_init+0x2e>
  a2a31c:	8526                	mv	a0,s1
  a2a31e:	ed6ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a322:	b7f5                	j	a2a30e <uapi_tcxo_init+0x18>
  a2a324:	4785                	li	a5,1
  a2a326:	00f90023          	sb	a5,0(s2)
  a2a32a:	bfcd                	j	a2a31c <uapi_tcxo_init+0x26>

00a2a32c <uapi_tcxo_get_count>:
  a2a32c:	8048                	push	{ra,s0-s2},-16
  a2a32e:	ebeff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a332:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a338:	239c                	lbu	a5,0(a5)
  a2a33a:	eb81                	bnez	a5,a2a34a <uapi_tcxo_get_count+0x1e>
  a2a33c:	eb8ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a340:	4401                	li	s0,0
  a2a342:	4481                	li	s1,0
  a2a344:	8522                	mv	a0,s0
  a2a346:	85a6                	mv	a1,s1
  a2a348:	8044                	popret	{ra,s0-s2},16
  a2a34a:	892a                	mv	s2,a0
  a2a34c:	232010ef          	jal	ra,a2b57e <hal_tcxo_get>
  a2a350:	842a                	mv	s0,a0
  a2a352:	854a                	mv	a0,s2
  a2a354:	84ae                	mv	s1,a1
  a2a356:	e9eff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a35a:	b7ed                	j	a2a344 <uapi_tcxo_get_count+0x18>

00a2a35c <uapi_tcxo_delay_ms>:
  a2a35c:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a362:	239c                	lbu	a5,0(a5)
  a2a364:	c3b1                	beqz	a5,a2a3a8 <uapi_tcxo_delay_ms+0x4c>
  a2a366:	8048                	push	{ra,s0-s2},-16
  a2a368:	842a                	mv	s0,a0
  a2a36a:	6e3010ef          	jal	ra,a2c24c <tcxo_porting_ticks_per_usec_get>
  a2a36e:	3e800793          	li	a5,1000
  a2a372:	02f405b3          	mul	a1,s0,a5
  a2a376:	02f43433          	mulhu	s0,s0,a5
  a2a37a:	02a584b3          	mul	s1,a1,a0
  a2a37e:	02a40433          	mul	s0,s0,a0
  a2a382:	02a5b5b3          	mulhu	a1,a1,a0
  a2a386:	942e                	add	s0,s0,a1
  a2a388:	3755                	jal	ra,a2a32c <uapi_tcxo_get_count>
  a2a38a:	00a48933          	add	s2,s1,a0
  a2a38e:	009934b3          	sltu	s1,s2,s1
  a2a392:	95a2                	add	a1,a1,s0
  a2a394:	94ae                	add	s1,s1,a1
  a2a396:	3f59                	jal	ra,a2a32c <uapi_tcxo_get_count>
  a2a398:	fe95efe3          	bltu	a1,s1,a2a396 <uapi_tcxo_delay_ms+0x3a>
  a2a39c:	00b49463          	bne	s1,a1,a2a3a4 <uapi_tcxo_delay_ms+0x48>
  a2a3a0:	ff256be3          	bltu	a0,s2,a2a396 <uapi_tcxo_delay_ms+0x3a>
  a2a3a4:	4501                	li	a0,0
  a2a3a6:	8044                	popret	{ra,s0-s2},16
  a2a3a8:	557d                	li	a0,-1
  a2a3aa:	8082                	ret

00a2a3ac <uapi_tcxo_delay_us>:
  a2a3ac:	00a0 55f9 079f      	l.li	a5,0xa055f9
  a2a3b2:	239c                	lbu	a5,0(a5)
  a2a3b4:	cb8d                	beqz	a5,a2a3e6 <uapi_tcxo_delay_us+0x3a>
  a2a3b6:	8048                	push	{ra,s0-s2},-16
  a2a3b8:	842a                	mv	s0,a0
  a2a3ba:	693010ef          	jal	ra,a2c24c <tcxo_porting_ticks_per_usec_get>
  a2a3be:	02a404b3          	mul	s1,s0,a0
  a2a3c2:	02a43433          	mulhu	s0,s0,a0
  a2a3c6:	379d                	jal	ra,a2a32c <uapi_tcxo_get_count>
  a2a3c8:	00a48933          	add	s2,s1,a0
  a2a3cc:	009934b3          	sltu	s1,s2,s1
  a2a3d0:	942e                	add	s0,s0,a1
  a2a3d2:	9426                	add	s0,s0,s1
  a2a3d4:	3fa1                	jal	ra,a2a32c <uapi_tcxo_get_count>
  a2a3d6:	fe85efe3          	bltu	a1,s0,a2a3d4 <uapi_tcxo_delay_us+0x28>
  a2a3da:	00b41463          	bne	s0,a1,a2a3e2 <uapi_tcxo_delay_us+0x36>
  a2a3de:	ff256be3          	bltu	a0,s2,a2a3d4 <uapi_tcxo_delay_us+0x28>
  a2a3e2:	4501                	li	a0,0
  a2a3e4:	8044                	popret	{ra,s0-s2},16
  a2a3e6:	557d                	li	a0,-1
  a2a3e8:	8082                	ret

00a2a3ea <uart_rx_buffer_report>:
  a2a3ea:	8038                	push	{ra,s0-s1},-16
  a2a3ec:	00a05737          	lui	a4,0xa05
  a2a3f0:	60070793          	addi	a5,a4,1536 # a05600 <g_uart_rx_state_array>
  a2a3f4:	18a797db          	muliadd	a5,a5,a0,24
  a2a3f8:	4394                	lw	a3,0(a5)
  a2a3fa:	862e                	mv	a2,a1
  a2a3fc:	842a                	mv	s0,a0
  a2a3fe:	2bce                	lhu	a1,20(a5)
  a2a400:	60070493          	addi	s1,a4,1536
  a2a404:	c299                	beqz	a3,a2a40a <uart_rx_buffer_report+0x20>
  a2a406:	47c8                	lw	a0,12(a5)
  a2a408:	9682                	jalr	a3
  a2a40a:	1884945b          	muliadd	s0,s1,s0,24
  a2a40e:	00041a23          	sh	zero,20(s0)
  a2a412:	8034                	popret	{ra,s0-s1},16

00a2a414 <uapi_uart_param_check>:
  a2a414:	0305763b          	bgeui	a0,3,a2a42c <uapi_uart_param_check+0x18>
  a2a418:	c991                	beqz	a1,a2a42c <uapi_uart_param_check+0x18>
  a2a41a:	ca09                	beqz	a2,a2a42c <uapi_uart_param_check+0x18>
  a2a41c:	00a0 55fc 079f      	l.li	a5,0xa055fc
  a2a422:	953e                	add	a0,a0,a5
  a2a424:	211c                	lbu	a5,0(a0)
  a2a426:	c799                	beqz	a5,a2a434 <uapi_uart_param_check+0x20>
  a2a428:	4501                	li	a0,0
  a2a42a:	8082                	ret
  a2a42c:	80000537          	lui	a0,0x80000
  a2a430:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2a432:	8082                	ret
  a2a434:	8000 1040 051f      	l.li	a0,0x80001040
  a2a43a:	8082                	ret

00a2a43c <uart_helper_invoke_current_fragment_callback>:
  a2a43c:	00a0 5648 079f      	l.li	a5,0xa05648
  a2a442:	4ca7955b          	muliadd	a0,a5,a0,76
  a2a446:	411c                	lw	a5,0(a0)
  a2a448:	0087a303          	lw	t1,8(a5)
  a2a44c:	00030663          	beqz	t1,a2a458 <uart_helper_invoke_current_fragment_callback+0x1c>
  a2a450:	43d0                	lw	a2,4(a5)
  a2a452:	47cc                	lw	a1,12(a5)
  a2a454:	4388                	lw	a0,0(a5)
  a2a456:	8302                	jr	t1
  a2a458:	8082                	ret

00a2a45a <uart_helper_move_to_next_fragment>:
  a2a45a:	04c00793          	li	a5,76
  a2a45e:	02f507b3          	mul	a5,a0,a5
  a2a462:	00a056b7          	lui	a3,0xa05
  a2a466:	64868713          	addi	a4,a3,1608 # a05648 <g_uart_tx_state_array>
  a2a46a:	64868693          	addi	a3,a3,1608
  a2a46e:	00f705b3          	add	a1,a4,a5
  a2a472:	4190                	lw	a2,0(a1)
  a2a474:	07b1                	addi	a5,a5,12
  a2a476:	97ba                	add	a5,a5,a4
  a2a478:	0641                	addi	a2,a2,16
  a2a47a:	04078713          	addi	a4,a5,64
  a2a47e:	00e67b63          	bgeu	a2,a4,a2a494 <uart_helper_move_to_next_fragment+0x3a>
  a2a482:	c190                	sw	a2,0(a1)
  a2a484:	4ca6955b          	muliadd	a0,a3,a0,76
  a2a488:	251e                	lhu	a5,8(a0)
  a2a48a:	00051523          	sh	zero,10(a0)
  a2a48e:	17fd                	addi	a5,a5,-1
  a2a490:	a51e                	sh	a5,8(a0)
  a2a492:	8082                	ret
  a2a494:	c19c                	sw	a5,0(a1)
  a2a496:	b7fd                	j	a2a484 <uart_helper_move_to_next_fragment+0x2a>

00a2a498 <uart_helper_send_next_char>:
  a2a498:	8038                	push	{ra,s0-s1},-16
  a2a49a:	00a0 5648 041f      	l.li	s0,0xa05648
  a2a4a0:	4ca4145b          	muliadd	s0,s0,a0,76
  a2a4a4:	4004                	lw	s1,0(s0)
  a2a4a6:	243e                	lhu	a5,10(s0)
  a2a4a8:	4605                	li	a2,1
  a2a4aa:	408c                	lw	a1,0(s1)
  a2a4ac:	95be                	add	a1,a1,a5
  a2a4ae:	18a010ef          	jal	ra,a2b638 <hal_uart_write>
  a2a4b2:	242a                	lhu	a0,10(s0)
  a2a4b4:	0505                	addi	a0,a0,1
  a2a4b6:	9d21                	uxth	a0
  a2a4b8:	a42a                	sh	a0,10(s0)
  a2a4ba:	44dc                	lw	a5,12(s1)
  a2a4bc:	00f53533          	sltu	a0,a0,a5
  a2a4c0:	00154513          	xori	a0,a0,1
  a2a4c4:	8034                	popret	{ra,s0-s1},16

00a2a4c6 <uart_error_isr>:
  a2a4c6:	8148                	push	{ra,s0-s2},-32
  a2a4c8:	842a                	mv	s0,a0
  a2a4ca:	00f10613          	addi	a2,sp,15
  a2a4ce:	45a5                	li	a1,9
  a2a4d0:	00a0 5600 049f      	l.li	s1,0xa05600
  a2a4d6:	00010723          	sb	zero,14(sp)
  a2a4da:	000107a3          	sb	zero,15(sp)
  a2a4de:	1884995b          	muliadd	s2,s1,s0,24
  a2a4e2:	17a010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a4e6:	00f14783          	lbu	a5,15(sp)
  a2a4ea:	cb99                	beqz	a5,a2a500 <uart_error_isr+0x3a>
  a2a4ec:	188494db          	muliadd	s1,s1,s0,24
  a2a4f0:	28de                	lhu	a5,20(s1)
  a2a4f2:	c791                	beqz	a5,a2a4fe <uart_error_isr+0x38>
  a2a4f4:	409c                	lw	a5,0(s1)
  a2a4f6:	c781                	beqz	a5,a2a4fe <uart_error_isr+0x38>
  a2a4f8:	4585                	li	a1,1
  a2a4fa:	8522                	mv	a0,s0
  a2a4fc:	35fd                	jal	ra,a2a3ea <uart_rx_buffer_report>
  a2a4fe:	8144                	popret	{ra,s0-s2},32
  a2a500:	4605                	li	a2,1
  a2a502:	00e10593          	addi	a1,sp,14
  a2a506:	8522                	mv	a0,s0
  a2a508:	142010ef          	jal	ra,a2b64a <hal_uart_read>
  a2a50c:	01495683          	lhu	a3,20(s2)
  a2a510:	00c92783          	lw	a5,12(s2)
  a2a514:	00e14703          	lbu	a4,14(sp)
  a2a518:	97b6                	add	a5,a5,a3
  a2a51a:	a398                	sb	a4,0(a5)
  a2a51c:	01495783          	lhu	a5,20(s2)
  a2a520:	01095703          	lhu	a4,16(s2)
  a2a524:	0785                	addi	a5,a5,1
  a2a526:	9fa1                	uxth	a5
  a2a528:	00f91a23          	sh	a5,20(s2)
  a2a52c:	00e7e563          	bltu	a5,a4,a2a536 <uart_error_isr+0x70>
  a2a530:	4585                	li	a1,1
  a2a532:	8522                	mv	a0,s0
  a2a534:	3d5d                	jal	ra,a2a3ea <uart_rx_buffer_report>
  a2a536:	00f10613          	addi	a2,sp,15
  a2a53a:	45a5                	li	a1,9
  a2a53c:	8522                	mv	a0,s0
  a2a53e:	11e010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a542:	b755                	j	a2a4e6 <uart_error_isr+0x20>

00a2a544 <uart_evt_callback>:
  a2a544:	8158                	push	{ra,s0-s3},-48
  a2a546:	15fd                	addi	a1,a1,-1 # 54ffffff <_gp_+0x545cb537>
  a2a548:	0ff5f793          	andi	a5,a1,255
  a2a54c:	0567f3bb          	bgeui	a5,5,a2a6da <uart_evt_callback+0x196>
  a2a550:	00a335b7          	lui	a1,0xa33
  a2a554:	87c58593          	addi	a1,a1,-1924 # a3287c <g_sm3_ival+0x20>
  a2a558:	04f5859b          	addshf	a1,a1,a5,sll,2
  a2a55c:	419c                	lw	a5,0(a1)
  a2a55e:	842a                	mv	s0,a0
  a2a560:	8782                	jr	a5
  a2a562:	00a0 5648 049f      	l.li	s1,0xa05648
  a2a568:	000107a3          	sb	zero,15(sp)
  a2a56c:	4ca494db          	muliadd	s1,s1,a0,76
  a2a570:	249e                	lhu	a5,8(s1)
  a2a572:	eb81                	bnez	a5,a2a582 <uart_evt_callback+0x3e>
  a2a574:	4601                	li	a2,0
  a2a576:	4589                	li	a1,2
  a2a578:	8522                	mv	a0,s0
  a2a57a:	0e2010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a57e:	4501                	li	a0,0
  a2a580:	8154                	popret	{ra,s0-s3},48
  a2a582:	00f10613          	addi	a2,sp,15
  a2a586:	459d                	li	a1,7
  a2a588:	8522                	mv	a0,s0
  a2a58a:	0d2010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a58e:	00f14783          	lbu	a5,15(sp)
  a2a592:	f7f5                	bnez	a5,a2a57e <uart_evt_callback+0x3a>
  a2a594:	8522                	mv	a0,s0
  a2a596:	3709                	jal	ra,a2a498 <uart_helper_send_next_char>
  a2a598:	d56d                	beqz	a0,a2a582 <uart_evt_callback+0x3e>
  a2a59a:	8522                	mv	a0,s0
  a2a59c:	3545                	jal	ra,a2a43c <uart_helper_invoke_current_fragment_callback>
  a2a59e:	8522                	mv	a0,s0
  a2a5a0:	3d6d                	jal	ra,a2a45a <uart_helper_move_to_next_fragment>
  a2a5a2:	b7f9                	j	a2a570 <uart_evt_callback+0x2c>
  a2a5a4:	00f10613          	addi	a2,sp,15
  a2a5a8:	45a5                	li	a1,9
  a2a5aa:	00a0 5600 049f      	l.li	s1,0xa05600
  a2a5b0:	00010723          	sb	zero,14(sp)
  a2a5b4:	000107a3          	sb	zero,15(sp)
  a2a5b8:	4981                	li	s3,0
  a2a5ba:	0a2010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a5be:	1884995b          	muliadd	s2,s1,s0,24
  a2a5c2:	00f14783          	lbu	a5,15(sp)
  a2a5c6:	cf81                	beqz	a5,a2a5de <uart_evt_callback+0x9a>
  a2a5c8:	188497db          	muliadd	a5,s1,s0,24
  a2a5cc:	2bda                	lhu	a4,20(a5)
  a2a5ce:	db45                	beqz	a4,a2a57e <uart_evt_callback+0x3a>
  a2a5d0:	2bf8                	lbu	a4,22(a5)
  a2a5d2:	8b09                	andi	a4,a4,2
  a2a5d4:	d74d                	beqz	a4,a2a57e <uart_evt_callback+0x3a>
  a2a5d6:	2bbe                	lhu	a5,18(a5)
  a2a5d8:	faf9e3e3          	bltu	s3,a5,a2a57e <uart_evt_callback+0x3a>
  a2a5dc:	a071                	j	a2a668 <uart_evt_callback+0x124>
  a2a5de:	4605                	li	a2,1
  a2a5e0:	00e10593          	addi	a1,sp,14
  a2a5e4:	8522                	mv	a0,s0
  a2a5e6:	064010ef          	jal	ra,a2b64a <hal_uart_read>
  a2a5ea:	00092783          	lw	a5,0(s2)
  a2a5ee:	0985                	addi	s3,s3,1 # ffff0001 <_gp_+0xff5bb539>
  a2a5f0:	09c2                	slli	s3,s3,0x10
  a2a5f2:	0109d993          	srli	s3,s3,0x10
  a2a5f6:	eb81                	bnez	a5,a2a606 <uart_evt_callback+0xc2>
  a2a5f8:	00f10613          	addi	a2,sp,15
  a2a5fc:	45a5                	li	a1,9
  a2a5fe:	8522                	mv	a0,s0
  a2a600:	05c010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a604:	bf7d                	j	a2a5c2 <uart_evt_callback+0x7e>
  a2a606:	01495683          	lhu	a3,20(s2)
  a2a60a:	00c92783          	lw	a5,12(s2)
  a2a60e:	00e14703          	lbu	a4,14(sp)
  a2a612:	97b6                	add	a5,a5,a3
  a2a614:	a398                	sb	a4,0(a5)
  a2a616:	01495783          	lhu	a5,20(s2)
  a2a61a:	01095703          	lhu	a4,16(s2)
  a2a61e:	0785                	addi	a5,a5,1
  a2a620:	9fa1                	uxth	a5
  a2a622:	00f91a23          	sh	a5,20(s2)
  a2a626:	fce7e9e3          	bltu	a5,a4,a2a5f8 <uart_evt_callback+0xb4>
  a2a62a:	4581                	li	a1,0
  a2a62c:	8522                	mv	a0,s0
  a2a62e:	3b75                	jal	ra,a2a3ea <uart_rx_buffer_report>
  a2a630:	b7e1                	j	a2a5f8 <uart_evt_callback+0xb4>
  a2a632:	00f10613          	addi	a2,sp,15
  a2a636:	45a5                	li	a1,9
  a2a638:	00a0 5600 049f      	l.li	s1,0xa05600
  a2a63e:	00010723          	sb	zero,14(sp)
  a2a642:	000107a3          	sb	zero,15(sp)
  a2a646:	4981                	li	s3,0
  a2a648:	014010ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a64c:	1884995b          	muliadd	s2,s1,s0,24
  a2a650:	00f14783          	lbu	a5,15(sp)
  a2a654:	cf91                	beqz	a5,a2a670 <uart_evt_callback+0x12c>
  a2a656:	188497db          	muliadd	a5,s1,s0,24
  a2a65a:	2bda                	lhu	a4,20(a5)
  a2a65c:	f20701e3          	beqz	a4,a2a57e <uart_evt_callback+0x3a>
  a2a660:	2bf8                	lbu	a4,22(a5)
  a2a662:	00177693          	andi	a3,a4,1
  a2a666:	d6b5                	beqz	a3,a2a5d2 <uart_evt_callback+0x8e>
  a2a668:	4581                	li	a1,0
  a2a66a:	8522                	mv	a0,s0
  a2a66c:	3bbd                	jal	ra,a2a3ea <uart_rx_buffer_report>
  a2a66e:	bf01                	j	a2a57e <uart_evt_callback+0x3a>
  a2a670:	4605                	li	a2,1
  a2a672:	00e10593          	addi	a1,sp,14
  a2a676:	8522                	mv	a0,s0
  a2a678:	7d3000ef          	jal	ra,a2b64a <hal_uart_read>
  a2a67c:	00092783          	lw	a5,0(s2)
  a2a680:	0985                	addi	s3,s3,1
  a2a682:	09c2                	slli	s3,s3,0x10
  a2a684:	0109d993          	srli	s3,s3,0x10
  a2a688:	eb81                	bnez	a5,a2a698 <uart_evt_callback+0x154>
  a2a68a:	00f10613          	addi	a2,sp,15
  a2a68e:	45a5                	li	a1,9
  a2a690:	8522                	mv	a0,s0
  a2a692:	7cb000ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a696:	bf6d                	j	a2a650 <uart_evt_callback+0x10c>
  a2a698:	01495683          	lhu	a3,20(s2)
  a2a69c:	00c92783          	lw	a5,12(s2)
  a2a6a0:	00e14703          	lbu	a4,14(sp)
  a2a6a4:	97b6                	add	a5,a5,a3
  a2a6a6:	a398                	sb	a4,0(a5)
  a2a6a8:	01495783          	lhu	a5,20(s2)
  a2a6ac:	01095703          	lhu	a4,16(s2)
  a2a6b0:	0785                	addi	a5,a5,1
  a2a6b2:	9fa1                	uxth	a5
  a2a6b4:	00f91a23          	sh	a5,20(s2)
  a2a6b8:	fce7e9e3          	bltu	a5,a4,a2a68a <uart_evt_callback+0x146>
  a2a6bc:	4581                	li	a1,0
  a2a6be:	8522                	mv	a0,s0
  a2a6c0:	332d                	jal	ra,a2a3ea <uart_rx_buffer_report>
  a2a6c2:	b7e1                	j	a2a68a <uart_evt_callback+0x146>
  a2a6c4:	00a0 5600 079f      	l.li	a5,0xa05600
  a2a6ca:	18a797db          	muliadd	a5,a5,a0,24
  a2a6ce:	43dc                	lw	a5,4(a5)
  a2a6d0:	c781                	beqz	a5,a2a6d8 <uart_evt_callback+0x194>
  a2a6d2:	4581                	li	a1,0
  a2a6d4:	4501                	li	a0,0
  a2a6d6:	9782                	jalr	a5
  a2a6d8:	8522                	mv	a0,s0
  a2a6da:	33f5                	jal	ra,a2a4c6 <uart_error_isr>
  a2a6dc:	b54d                	j	a2a57e <uart_evt_callback+0x3a>
  a2a6de:	00a0 5600 079f      	l.li	a5,0xa05600
  a2a6e4:	18a797db          	muliadd	a5,a5,a0,24
  a2a6e8:	479c                	lw	a5,8(a5)
  a2a6ea:	b7dd                	j	a2a6d0 <uart_evt_callback+0x18c>

00a2a6ec <uapi_uart_init>:
  a2a6ec:	8158                	push	{ra,s0-s3},-48
  a2a6ee:	4789                	li	a5,2
  a2a6f0:	0aa7ed63          	bltu	a5,a0,a2a7aa <uapi_uart_init+0xbe>
  a2a6f4:	c9dd                	beqz	a1,a2a7aa <uapi_uart_init+0xbe>
  a2a6f6:	0015c883          	lbu	a7,1(a1)
  a2a6fa:	07200813          	li	a6,114
  a2a6fe:	0b186663          	bltu	a6,a7,a2a7aa <uapi_uart_init+0xbe>
  a2a702:	0005c883          	lbu	a7,0(a1)
  a2a706:	0b186263          	bltu	a6,a7,a2a7aa <uapi_uart_init+0xbe>
  a2a70a:	c245                	beqz	a2,a2a7aa <uapi_uart_init+0xbe>
  a2a70c:	00464803          	lbu	a6,4(a2)
  a2a710:	042876bb          	bgeui	a6,4,a2a7aa <uapi_uart_init+0xbe>
  a2a714:	00664803          	lbu	a6,6(a2)
  a2a718:	0907e963          	bltu	a5,a6,a2a7aa <uapi_uart_init+0xbe>
  a2a71c:	325c                	lbu	a5,5(a2)
  a2a71e:	0227f33b          	bgeui	a5,2,a2a7aa <uapi_uart_init+0xbe>
  a2a722:	00a05937          	lui	s2,0xa05
  a2a726:	5fc90793          	addi	a5,s2,1532 # a055fc <g_uart_inited>
  a2a72a:	97aa                	add	a5,a5,a0
  a2a72c:	239c                	lbu	a5,0(a5)
  a2a72e:	84aa                	mv	s1,a0
  a2a730:	5fc90913          	addi	s2,s2,1532
  a2a734:	4401                	li	s0,0
  a2a736:	eba5                	bnez	a5,a2a7a6 <uapi_uart_init+0xba>
  a2a738:	89ba                	mv	s3,a4
  a2a73a:	c636                	sw	a3,12(sp)
  a2a73c:	8432                	mv	s0,a2
  a2a73e:	c42e                	sw	a1,8(sp)
  a2a740:	29d010ef          	jal	ra,a2c1dc <uart_port_config_pinmux>
  a2a744:	06098763          	beqz	s3,a2a7b2 <uapi_uart_init+0xc6>
  a2a748:	0009a683          	lw	a3,0(s3)
  a2a74c:	c2bd                	beqz	a3,a2a7b2 <uapi_uart_init+0xc6>
  a2a74e:	0049a703          	lw	a4,4(s3)
  a2a752:	c325                	beqz	a4,a2a7b2 <uapi_uart_init+0xc6>
  a2a754:	04c00513          	li	a0,76
  a2a758:	02a48533          	mul	a0,s1,a0
  a2a75c:	00a0 5600 071f      	l.li	a4,0xa05600
  a2a762:	1897175b          	muliadd	a4,a4,s1,24
  a2a766:	c754                	sw	a3,12(a4)
  a2a768:	0049a683          	lw	a3,4(s3)
  a2a76c:	47b2                	lw	a5,12(sp)
  a2a76e:	4622                	lw	a2,8(sp)
  a2a770:	ab16                	sh	a3,16(a4)
  a2a772:	00a0 5648 071f      	l.li	a4,0xa05648
  a2a778:	86a2                	mv	a3,s0
  a2a77a:	00c50593          	addi	a1,a0,12
  a2a77e:	95ba                	add	a1,a1,a4
  a2a780:	972a                	add	a4,a4,a0
  a2a782:	c30c                	sw	a1,0(a4)
  a2a784:	c34c                	sw	a1,4(a4)
  a2a786:	8526                	mv	a0,s1
  a2a788:	4711                	li	a4,4
  a2a78a:	00a2 a544 059f      	l.li	a1,0xa2a544
  a2a790:	66b000ef          	jal	ra,a2b5fa <hal_uart_init>
  a2a794:	842a                	mv	s0,a0
  a2a796:	e901                	bnez	a0,a2a7a6 <uapi_uart_init+0xba>
  a2a798:	9926                	add	s2,s2,s1
  a2a79a:	4785                	li	a5,1
  a2a79c:	8526                	mv	a0,s1
  a2a79e:	00f90023          	sb	a5,0(s2)
  a2a7a2:	24b010ef          	jal	ra,a2c1ec <uart_port_register_irq>
  a2a7a6:	8522                	mv	a0,s0
  a2a7a8:	8154                	popret	{ra,s0-s3},48
  a2a7aa:	80000437          	lui	s0,0x80000
  a2a7ae:	0405                	addi	s0,s0,1 # 80000001 <_gp_+0x7f5cb539>
  a2a7b0:	bfdd                	j	a2a7a6 <uapi_uart_init+0xba>
  a2a7b2:	8000 1044 041f      	l.li	s0,0x80001044
  a2a7b8:	b7fd                	j	a2a7a6 <uapi_uart_init+0xba>

00a2a7ba <uapi_uart_write>:
  a2a7ba:	8178                	push	{ra,s0-s5},-48
  a2a7bc:	84aa                	mv	s1,a0
  a2a7be:	8a2e                	mv	s4,a1
  a2a7c0:	89b2                	mv	s3,a2
  a2a7c2:	000107a3          	sb	zero,15(sp)
  a2a7c6:	c4fff0ef          	jal	ra,a2a414 <uapi_uart_param_check>
  a2a7ca:	892a                	mv	s2,a0
  a2a7cc:	ed19                	bnez	a0,a2a7ea <uapi_uart_write+0x30>
  a2a7ce:	8526                	mv	a0,s1
  a2a7d0:	251010ef          	jal	ra,a2c220 <uart_porting_lock>
  a2a7d4:	8aaa                	mv	s5,a0
  a2a7d6:	99d2                	add	s3,s3,s4
  a2a7d8:	8452                	mv	s0,s4
  a2a7da:	41440933          	sub	s2,s0,s4
  a2a7de:	00899863          	bne	s3,s0,a2a7ee <uapi_uart_write+0x34>
  a2a7e2:	85d6                	mv	a1,s5
  a2a7e4:	8526                	mv	a0,s1
  a2a7e6:	23f010ef          	jal	ra,a2c224 <uart_porting_unlock>
  a2a7ea:	854a                	mv	a0,s2
  a2a7ec:	8174                	popret	{ra,s0-s5},48
  a2a7ee:	00f10613          	addi	a2,sp,15
  a2a7f2:	459d                	li	a1,7
  a2a7f4:	8526                	mv	a0,s1
  a2a7f6:	667000ef          	jal	ra,a2b65c <hal_uart_ctrl>
  a2a7fa:	00f14783          	lbu	a5,15(sp)
  a2a7fe:	f3e5                	bnez	a5,a2a7de <uapi_uart_write+0x24>
  a2a800:	85a2                	mv	a1,s0
  a2a802:	00140913          	addi	s2,s0,1
  a2a806:	4605                	li	a2,1
  a2a808:	8526                	mv	a0,s1
  a2a80a:	62f000ef          	jal	ra,a2b638 <hal_uart_write>
  a2a80e:	844a                	mv	s0,s2
  a2a810:	b7e9                	j	a2a7da <uapi_uart_write+0x20>

00a2a812 <uapi_watchdog_init>:
  a2a812:	8058                	push	{ra,s0-s3},-32
  a2a814:	89aa                	mv	s3,a0
  a2a816:	24b010ef          	jal	ra,a2c260 <watchdog_port_register_hal_funcs>
  a2a81a:	257010ef          	jal	ra,a2c270 <watchdog_port_register_irq>
  a2a81e:	9ceff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a822:	84aa                	mv	s1,a0
  a2a824:	286010ef          	jal	ra,a2baaa <hal_watchdog_get_funcs>
  a2a828:	411c                	lw	a5,0(a0)
  a2a82a:	00a0 572c 091f      	l.li	s2,0xa0572c
  a2a830:	00a92023          	sw	a0,0(s2)
  a2a834:	9782                	jalr	a5
  a2a836:	c519                	beqz	a0,a2a844 <uapi_watchdog_init+0x32>
  a2a838:	842a                	mv	s0,a0
  a2a83a:	8526                	mv	a0,s1
  a2a83c:	9b8ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a840:	8522                	mv	a0,s0
  a2a842:	8054                	popret	{ra,s0-s3},32
  a2a844:	00092783          	lw	a5,0(s2)
  a2a848:	854e                	mv	a0,s3
  a2a84a:	479c                	lw	a5,8(a5)
  a2a84c:	9782                	jalr	a5
  a2a84e:	842a                	mv	s0,a0
  a2a850:	8526                	mv	a0,s1
  a2a852:	9a2ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a856:	f46d                	bnez	s0,a2a840 <uapi_watchdog_init+0x2e>
  a2a858:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a85e:	4705                	li	a4,1
  a2a860:	a398                	sb	a4,0(a5)
  a2a862:	bff9                	j	a2a840 <uapi_watchdog_init+0x2e>

00a2a864 <uapi_watchdog_enable>:
  a2a864:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a86a:	239c                	lbu	a5,0(a5)
  a2a86c:	cb9d                	beqz	a5,a2a8a2 <uapi_watchdog_enable+0x3e>
  a2a86e:	8048                	push	{ra,s0-s2},-16
  a2a870:	4485                	li	s1,1
  a2a872:	57fd                	li	a5,-1
  a2a874:	02a4e563          	bltu	s1,a0,a2a89e <uapi_watchdog_enable+0x3a>
  a2a878:	842a                	mv	s0,a0
  a2a87a:	972ff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a87e:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a884:	439c                	lw	a5,0(a5)
  a2a886:	892a                	mv	s2,a0
  a2a888:	8522                	mv	a0,s0
  a2a88a:	4b9c                	lw	a5,16(a5)
  a2a88c:	9782                	jalr	a5
  a2a88e:	854a                	mv	a0,s2
  a2a890:	964ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a894:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a89a:	a384                	sb	s1,0(a5)
  a2a89c:	4781                	li	a5,0
  a2a89e:	853e                	mv	a0,a5
  a2a8a0:	8044                	popret	{ra,s0-s2},16
  a2a8a2:	57fd                	li	a5,-1
  a2a8a4:	853e                	mv	a0,a5
  a2a8a6:	8082                	ret

00a2a8a8 <uapi_watchdog_disable>:
  a2a8a8:	00a0 5731 079f      	l.li	a5,0xa05731
  a2a8ae:	239c                	lbu	a5,0(a5)
  a2a8b0:	e399                	bnez	a5,a2a8b6 <uapi_watchdog_disable+0xe>
  a2a8b2:	557d                	li	a0,-1
  a2a8b4:	8082                	ret
  a2a8b6:	8118                	push	{ra},-32
  a2a8b8:	934ff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a8bc:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a8c2:	439c                	lw	a5,0(a5)
  a2a8c4:	c62a                	sw	a0,12(sp)
  a2a8c6:	4bdc                	lw	a5,20(a5)
  a2a8c8:	9782                	jalr	a5
  a2a8ca:	4532                	lw	a0,12(sp)
  a2a8cc:	928ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a8d0:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a8d6:	00078023          	sb	zero,0(a5)
  a2a8da:	4501                	li	a0,0
  a2a8dc:	8114                	popret	{ra},32

00a2a8de <uapi_watchdog_deinit>:
  a2a8de:	00a057b7          	lui	a5,0xa05
  a2a8e2:	7317c703          	lbu	a4,1841(a5) # a05731 <g_watchdog_inited>
  a2a8e6:	c71d                	beqz	a4,a2a914 <uapi_watchdog_deinit+0x36>
  a2a8e8:	8028                	push	{ra,s0},-16
  a2a8ea:	73178413          	addi	s0,a5,1841
  a2a8ee:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a8f4:	239c                	lbu	a5,0(a5)
  a2a8f6:	c391                	beqz	a5,a2a8fa <uapi_watchdog_deinit+0x1c>
  a2a8f8:	3f45                	jal	ra,a2a8a8 <uapi_watchdog_disable>
  a2a8fa:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a900:	439c                	lw	a5,0(a5)
  a2a902:	c399                	beqz	a5,a2a908 <uapi_watchdog_deinit+0x2a>
  a2a904:	43dc                	lw	a5,4(a5)
  a2a906:	9782                	jalr	a5
  a2a908:	165010ef          	jal	ra,a2c26c <watchdog_port_unregister_hal_funcs>
  a2a90c:	4501                	li	a0,0
  a2a90e:	00040023          	sb	zero,0(s0)
  a2a912:	8024                	popret	{ra,s0},16
  a2a914:	4501                	li	a0,0
  a2a916:	8082                	ret

00a2a918 <uapi_watchdog_kick>:
  a2a918:	00a0 5730 079f      	l.li	a5,0xa05730
  a2a91e:	239c                	lbu	a5,0(a5)
  a2a920:	e399                	bnez	a5,a2a926 <uapi_watchdog_kick+0xe>
  a2a922:	557d                	li	a0,-1
  a2a924:	8082                	ret
  a2a926:	8118                	push	{ra},-32
  a2a928:	8c4ff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a92c:	00a0 572c 079f      	l.li	a5,0xa0572c
  a2a932:	439c                	lw	a5,0(a5)
  a2a934:	c62a                	sw	a0,12(sp)
  a2a936:	4f9c                	lw	a5,24(a5)
  a2a938:	9782                	jalr	a5
  a2a93a:	4532                	lw	a0,12(sp)
  a2a93c:	8b8ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a940:	4501                	li	a0,0
  a2a942:	8114                	popret	{ra},32

00a2a944 <uapi_efuse_init>:
  a2a944:	8018                	push	{ra},-16
  a2a946:	0d2020ef          	jal	ra,a2ca18 <efuse_port_register_hal_funcs>
  a2a94a:	28c1                	jal	ra,a2aa1a <hal_efuse_get_funcs>
  a2a94c:	00052303          	lw	t1,0(a0)
  a2a950:	8010                	pop	{ra},16
  a2a952:	8302                	jr	t1

00a2a954 <uapi_efuse_read_bit>:
  a2a954:	8168                	push	{ra,s0-s4},-48
  a2a956:	000107a3          	sb	zero,15(sp)
  a2a95a:	547d                	li	s0,-1
  a2a95c:	0ff00793          	li	a5,255
  a2a960:	02b7ee63          	bltu	a5,a1,a2a99c <uapi_efuse_read_bit+0x48>
  a2a964:	cd05                	beqz	a0,a2a99c <uapi_efuse_read_bit+0x48>
  a2a966:	08067dbb          	bgeui	a2,8,a2a99c <uapi_efuse_read_bit+0x48>
  a2a96a:	842e                	mv	s0,a1
  a2a96c:	8932                	mv	s2,a2
  a2a96e:	84aa                	mv	s1,a0
  a2a970:	206d                	jal	ra,a2aa1a <hal_efuse_get_funcs>
  a2a972:	8a2a                	mv	s4,a0
  a2a974:	878ff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a978:	010a2783          	lw	a5,16(s4)
  a2a97c:	89aa                	mv	s3,a0
  a2a97e:	00f10593          	addi	a1,sp,15
  a2a982:	8522                	mv	a0,s0
  a2a984:	9782                	jalr	a5
  a2a986:	842a                	mv	s0,a0
  a2a988:	ed01                	bnez	a0,a2a9a0 <uapi_efuse_read_bit+0x4c>
  a2a98a:	00f14783          	lbu	a5,15(sp)
  a2a98e:	854e                	mv	a0,s3
  a2a990:	4127d633          	sra	a2,a5,s2
  a2a994:	8a05                	andi	a2,a2,1
  a2a996:	a090                	sb	a2,0(s1)
  a2a998:	85cff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a99c:	8522                	mv	a0,s0
  a2a99e:	8164                	popret	{ra,s0-s4},48
  a2a9a0:	854e                	mv	a0,s3
  a2a9a2:	852ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a9a6:	547d                	li	s0,-1
  a2a9a8:	bfd5                	j	a2a99c <uapi_efuse_read_bit+0x48>

00a2a9aa <uapi_efuse_read_buffer>:
  a2a9aa:	8088                	push	{ra,s0-s6},-32
  a2a9ac:	547d                	li	s0,-1
  a2a9ae:	c231                	beqz	a2,a2a9f2 <uapi_efuse_read_buffer+0x48>
  a2a9b0:	0ff00793          	li	a5,255
  a2a9b4:	02b7ef63          	bltu	a5,a1,a2a9f2 <uapi_efuse_read_buffer+0x48>
  a2a9b8:	00c587b3          	add	a5,a1,a2
  a2a9bc:	10000713          	li	a4,256
  a2a9c0:	02f76963          	bltu	a4,a5,a2a9f2 <uapi_efuse_read_buffer+0x48>
  a2a9c4:	c51d                	beqz	a0,a2a9f2 <uapi_efuse_read_buffer+0x48>
  a2a9c6:	8932                	mv	s2,a2
  a2a9c8:	89ae                	mv	s3,a1
  a2a9ca:	8a2a                	mv	s4,a0
  a2a9cc:	20b9                	jal	ra,a2aa1a <hal_efuse_get_funcs>
  a2a9ce:	8b2a                	mv	s6,a0
  a2a9d0:	81cff0ef          	jal	ra,a299ec <osal_irq_lock>
  a2a9d4:	8aaa                	mv	s5,a0
  a2a9d6:	4481                	li	s1,0
  a2a9d8:	010b2783          	lw	a5,16(s6)
  a2a9dc:	009a05b3          	add	a1,s4,s1
  a2a9e0:	00998533          	add	a0,s3,s1
  a2a9e4:	9782                	jalr	a5
  a2a9e6:	842a                	mv	s0,a0
  a2a9e8:	c519                	beqz	a0,a2a9f6 <uapi_efuse_read_buffer+0x4c>
  a2a9ea:	8556                	mv	a0,s5
  a2a9ec:	808ff0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2a9f0:	547d                	li	s0,-1
  a2a9f2:	8522                	mv	a0,s0
  a2a9f4:	8084                	popret	{ra,s0-s6},32
  a2a9f6:	0485                	addi	s1,s1,1
  a2a9f8:	ff24e0e3          	bltu	s1,s2,a2a9d8 <uapi_efuse_read_buffer+0x2e>
  a2a9fc:	8556                	mv	a0,s5
  a2a9fe:	ff7fe0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2aa02:	bfc5                	j	a2a9f2 <uapi_efuse_read_buffer+0x48>

00a2aa04 <hal_efuse_register_funcs>:
  a2aa04:	c519                	beqz	a0,a2aa12 <hal_efuse_register_funcs+0xe>
  a2aa06:	00a0 5734 079f      	l.li	a5,0xa05734
  a2aa0c:	c388                	sw	a0,0(a5)
  a2aa0e:	4501                	li	a0,0
  a2aa10:	8082                	ret
  a2aa12:	80000537          	lui	a0,0x80000
  a2aa16:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2aa18:	8082                	ret

00a2aa1a <hal_efuse_get_funcs>:
  a2aa1a:	00a0 5734 079f      	l.li	a5,0xa05734
  a2aa20:	4388                	lw	a0,0(a5)
  a2aa22:	8082                	ret

00a2aa24 <hal_efuse_deinit>:
  a2aa24:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa2a:	00078023          	sb	zero,0(a5)
  a2aa2e:	8082                	ret

00a2aa30 <hal_efuse_get_writeread_addr>:
  a2aa30:	8038                	push	{ra,s0-s1},-16
  a2aa32:	84aa                	mv	s1,a0
  a2aa34:	7f1010ef          	jal	ra,a2ca24 <hal_efuse_get_region>
  a2aa38:	842a                	mv	s0,a0
  a2aa3a:	8526                	mv	a0,s1
  a2aa3c:	7ef010ef          	jal	ra,a2ca2a <hal_efuse_get_byte_offset>
  a2aa40:	00a3 424c 079f      	l.li	a5,0xa3424c
  a2aa46:	0487879b          	addshf	a5,a5,s0,sll,2
  a2aa4a:	439c                	lw	a5,0(a5)
  a2aa4c:	8105                	srli	a0,a0,0x1
  a2aa4e:	9d21                	uxth	a0
  a2aa50:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2aa54:	8034                	popret	{ra,s0-s1},16

00a2aa56 <hal_efuse_init>:
  a2aa56:	8018                	push	{ra},-16
  a2aa58:	4501                	li	a0,0
  a2aa5a:	2255                	jal	ra,a2abfe <hal_efuse_regs_init>
  a2aa5c:	00a057b7          	lui	a5,0xa05
  a2aa60:	7407a703          	lw	a4,1856(a5) # a05740 <g_efuse_regs>
  a2aa64:	00a3 40e0 069f      	l.li	a3,0xa340e0
  a2aa6a:	2294                	lbu	a3,0(a3)
  a2aa6c:	435c                	lw	a5,4(a4)
  a2aa6e:	4501                	li	a0,0
  a2aa70:	f007f793          	andi	a5,a5,-256
  a2aa74:	8fd5                	or	a5,a5,a3
  a2aa76:	c35c                	sw	a5,4(a4)
  a2aa78:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa7e:	4705                	li	a4,1
  a2aa80:	a398                	sb	a4,0(a5)
  a2aa82:	8014                	popret	{ra},16

00a2aa84 <hal_efuse_read_byte>:
  a2aa84:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aa8a:	239c                	lbu	a5,0(a5)
  a2aa8c:	c7a1                	beqz	a5,a2aad4 <hal_efuse_read_byte+0x50>
  a2aa8e:	8048                	push	{ra,s0-s2},-16
  a2aa90:	842a                	mv	s0,a0
  a2aa92:	0ff00793          	li	a5,255
  a2aa96:	04a7e363          	bltu	a5,a0,a2aadc <hal_efuse_read_byte+0x58>
  a2aa9a:	c1a9                	beqz	a1,a2aadc <hal_efuse_read_byte+0x58>
  a2aa9c:	84ae                	mv	s1,a1
  a2aa9e:	3f49                	jal	ra,a2aa30 <hal_efuse_get_writeread_addr>
  a2aaa0:	892a                	mv	s2,a0
  a2aaa2:	8522                	mv	a0,s0
  a2aaa4:	781010ef          	jal	ra,a2ca24 <hal_efuse_get_region>
  a2aaa8:	00a0 5740 079f      	l.li	a5,0xa05740
  a2aaae:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2aab2:	4118                	lw	a4,0(a0)
  a2aab4:	76c1                	lui	a3,0xffff0
  a2aab6:	8805                	andi	s0,s0,1
  a2aab8:	431c                	lw	a5,0(a4)
  a2aaba:	8ff5                	and	a5,a5,a3
  a2aabc:	0000 5a5a 069f      	l.li	a3,0x5a5a
  a2aac2:	8fd5                	or	a5,a5,a3
  a2aac4:	c31c                	sw	a5,0(a4)
  a2aac6:	00092783          	lw	a5,0(s2)
  a2aaca:	c011                	beqz	s0,a2aace <hal_efuse_read_byte+0x4a>
  a2aacc:	83a1                	srli	a5,a5,0x8
  a2aace:	a09c                	sb	a5,0(s1)
  a2aad0:	4501                	li	a0,0
  a2aad2:	8044                	popret	{ra,s0-s2},16
  a2aad4:	8000 1391 051f      	l.li	a0,0x80001391
  a2aada:	8082                	ret
  a2aadc:	80000537          	lui	a0,0x80000
  a2aae0:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2aae2:	bfc5                	j	a2aad2 <hal_efuse_read_byte+0x4e>

00a2aae4 <hal_efuse_get_die_id>:
  a2aae4:	00a0 5738 079f      	l.li	a5,0xa05738
  a2aaea:	239c                	lbu	a5,0(a5)
  a2aaec:	ef99                	bnez	a5,a2ab0a <hal_efuse_get_die_id+0x26>
  a2aaee:	8000 1391 051f      	l.li	a0,0x80001391
  a2aaf4:	8082                	ret
  a2aaf6:	008905b3          	add	a1,s2,s0
  a2aafa:	8522                	mv	a0,s0
  a2aafc:	3761                	jal	ra,a2aa84 <hal_efuse_read_byte>
  a2aafe:	e919                	bnez	a0,a2ab14 <hal_efuse_get_die_id+0x30>
  a2ab00:	0405                	addi	s0,s0,1
  a2ab02:	fe946ae3          	bltu	s0,s1,a2aaf6 <hal_efuse_get_die_id+0x12>
  a2ab06:	4501                	li	a0,0
  a2ab08:	8044                	popret	{ra,s0-s2},16
  a2ab0a:	8048                	push	{ra,s0-s2},-16
  a2ab0c:	892a                	mv	s2,a0
  a2ab0e:	84ae                	mv	s1,a1
  a2ab10:	4401                	li	s0,0
  a2ab12:	bfc5                	j	a2ab02 <hal_efuse_get_die_id+0x1e>
  a2ab14:	557d                	li	a0,-1
  a2ab16:	bfcd                	j	a2ab08 <hal_efuse_get_die_id+0x24>

00a2ab18 <hal_efuse_write_operation>:
  a2ab18:	00a0 5738 079f      	l.li	a5,0xa05738
  a2ab1e:	239c                	lbu	a5,0(a5)
  a2ab20:	c3c1                	beqz	a5,a2aba0 <hal_efuse_write_operation+0x88>
  a2ab22:	8058                	push	{ra,s0-s3},-32
  a2ab24:	842a                	mv	s0,a0
  a2ab26:	0ff00793          	li	a5,255
  a2ab2a:	06a7ef63          	bltu	a5,a0,a2aba8 <hal_efuse_write_operation+0x90>
  a2ab2e:	00a054b7          	lui	s1,0xa05
  a2ab32:	892e                	mv	s2,a1
  a2ab34:	74048993          	addi	s3,s1,1856 # a05740 <g_efuse_regs>
  a2ab38:	6ed010ef          	jal	ra,a2ca24 <hal_efuse_get_region>
  a2ab3c:	04a9851b          	addshf	a0,s3,a0,sll,2
  a2ab40:	4118                	lw	a4,0(a0)
  a2ab42:	76c1                	lui	a3,0xffff0
  a2ab44:	8522                	mv	a0,s0
  a2ab46:	431c                	lw	a5,0(a4)
  a2ab48:	74048493          	addi	s1,s1,1856
  a2ab4c:	8ff5                	and	a5,a5,a3
  a2ab4e:	0000 a5a5 069f      	l.li	a3,0xa5a5
  a2ab54:	8fd5                	or	a5,a5,a3
  a2ab56:	c31c                	sw	a5,0(a4)
  a2ab58:	6cd010ef          	jal	ra,a2ca24 <hal_efuse_get_region>
  a2ab5c:	04a9851b          	addshf	a0,s3,a0,sll,2
  a2ab60:	4118                	lw	a4,0(a0)
  a2ab62:	06400513          	li	a0,100
  a2ab66:	475c                	lw	a5,12(a4)
  a2ab68:	0017e793          	ori	a5,a5,1
  a2ab6c:	c75c                	sw	a5,12(a4)
  a2ab6e:	83fff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2ab72:	8522                	mv	a0,s0
  a2ab74:	3d75                	jal	ra,a2aa30 <hal_efuse_get_writeread_addr>
  a2ab76:	00147793          	andi	a5,s0,1
  a2ab7a:	c391                	beqz	a5,a2ab7e <hal_efuse_write_operation+0x66>
  a2ab7c:	0922                	slli	s2,s2,0x8
  a2ab7e:	01252023          	sw	s2,0(a0)
  a2ab82:	8522                	mv	a0,s0
  a2ab84:	6a1010ef          	jal	ra,a2ca24 <hal_efuse_get_region>
  a2ab88:	04a4849b          	addshf	s1,s1,a0,sll,2
  a2ab8c:	4098                	lw	a4,0(s1)
  a2ab8e:	06400513          	li	a0,100
  a2ab92:	475c                	lw	a5,12(a4)
  a2ab94:	9bf9                	andi	a5,a5,-2
  a2ab96:	c75c                	sw	a5,12(a4)
  a2ab98:	815ff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2ab9c:	4501                	li	a0,0
  a2ab9e:	8054                	popret	{ra,s0-s3},32
  a2aba0:	8000 1391 051f      	l.li	a0,0x80001391
  a2aba6:	8082                	ret
  a2aba8:	80000537          	lui	a0,0x80000
  a2abac:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2abae:	bfc5                	j	a2ab9e <hal_efuse_write_operation+0x86>

00a2abb0 <hal_efuse_write_buffer_operation>:
  a2abb0:	00a0 5738 079f      	l.li	a5,0xa05738
  a2abb6:	239c                	lbu	a5,0(a5)
  a2abb8:	c795                	beqz	a5,a2abe4 <hal_efuse_write_buffer_operation+0x34>
  a2abba:	8058                	push	{ra,s0-s3},-32
  a2abbc:	89b2                	mv	s3,a2
  a2abbe:	842e                	mv	s0,a1
  a2abc0:	84ae                	mv	s1,a1
  a2abc2:	40b50933          	sub	s2,a0,a1
  a2abc6:	408487b3          	sub	a5,s1,s0
  a2abca:	0137e463          	bltu	a5,s3,a2abd2 <hal_efuse_write_buffer_operation+0x22>
  a2abce:	4501                	li	a0,0
  a2abd0:	8054                	popret	{ra,s0-s3},32
  a2abd2:	208c                	lbu	a1,0(s1)
  a2abd4:	00990533          	add	a0,s2,s1
  a2abd8:	4601                	li	a2,0
  a2abda:	3f3d                	jal	ra,a2ab18 <hal_efuse_write_operation>
  a2abdc:	0485                	addi	s1,s1,1
  a2abde:	d565                	beqz	a0,a2abc6 <hal_efuse_write_buffer_operation+0x16>
  a2abe0:	557d                	li	a0,-1
  a2abe2:	b7fd                	j	a2abd0 <hal_efuse_write_buffer_operation+0x20>
  a2abe4:	8000 1391 051f      	l.li	a0,0x80001391
  a2abea:	8082                	ret

00a2abec <hal_efuse_set_clock_period>:
  a2abec:	00a3 40e0 079f      	l.li	a5,0xa340e0
  a2abf2:	c388                	sw	a0,0(a5)
  a2abf4:	8082                	ret

00a2abf6 <hal_efuse_funcs_get>:
  a2abf6:	00a3 40e4 051f      	l.li	a0,0xa340e4
  a2abfc:	8082                	ret

00a2abfe <hal_efuse_regs_init>:
  a2abfe:	02a04763          	bgtz	a0,a2ac2c <hal_efuse_regs_init+0x2e>
  a2ac02:	050a                	slli	a0,a0,0x2
  a2ac04:	00a3 4244 071f      	l.li	a4,0xa34244
  a2ac0a:	00a0 5740 079f      	l.li	a5,0xa05740
  a2ac10:	97aa                	add	a5,a5,a0
  a2ac12:	953a                	add	a0,a0,a4
  a2ac14:	4118                	lw	a4,0(a0)
  a2ac16:	4501                	li	a0,0
  a2ac18:	c398                	sw	a4,0(a5)
  a2ac1a:	00a347b7          	lui	a5,0xa34
  a2ac1e:	2487a703          	lw	a4,584(a5) # a34248 <g_efuse_boot_done_addr>
  a2ac22:	00a0 573c 079f      	l.li	a5,0xa0573c
  a2ac28:	c398                	sw	a4,0(a5)
  a2ac2a:	8082                	ret
  a2ac2c:	557d                	li	a0,-1
  a2ac2e:	8082                	ret

00a2ac30 <hal_pmp_register_funcs>:
  a2ac30:	c519                	beqz	a0,a2ac3e <hal_pmp_register_funcs+0xe>
  a2ac32:	00a0 5744 079f      	l.li	a5,0xa05744
  a2ac38:	c388                	sw	a0,0(a5)
  a2ac3a:	4501                	li	a0,0
  a2ac3c:	8082                	ret
  a2ac3e:	80000537          	lui	a0,0x80000
  a2ac42:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2ac44:	8082                	ret

00a2ac46 <hal_pmp_get_funcs>:
  a2ac46:	00a0 5744 079f      	l.li	a5,0xa05744
  a2ac4c:	4388                	lw	a0,0(a5)
  a2ac4e:	8082                	ret

00a2ac50 <hal_pmp_riscv31_config>:
  a2ac50:	8048                	push	{ra,s0-s2},-16
  a2ac52:	00052903          	lw	s2,0(a0)
  a2ac56:	10097fbb          	bgeui	s2,16,a2ac94 <hal_pmp_riscv31_config+0x44>
  a2ac5a:	414c                	lw	a1,4(a0)
  a2ac5c:	2500                	lbu	s0,8(a0)
  a2ac5e:	84aa                	mv	s1,a0
  a2ac60:	854a                	mv	a0,s2
  a2ac62:	2089                	jal	ra,a2aca4 <hal_pmp_riscv31_regs_set_pmpaddr>
  a2ac64:	85a2                	mv	a1,s0
  a2ac66:	854a                	mv	a0,s2
  a2ac68:	28e9                	jal	ra,a2ad42 <hal_pmp_riscv31_regs_set_memxattr>
  a2ac6a:	4480                	lw	s0,8(s1)
  a2ac6c:	854a                	mv	a0,s2
  a2ac6e:	8021                	srli	s0,s0,0x8
  a2ac70:	881d                	andi	s0,s0,7
  a2ac72:	85a2                	mv	a1,s0
  a2ac74:	2a39                	jal	ra,a2ad92 <hal_pmp_riscv31_regs_set_pmpxcfg>
  a2ac76:	449c                	lw	a5,8(s1)
  a2ac78:	854a                	mv	a0,s2
  a2ac7a:	0087d713          	srli	a4,a5,0x8
  a2ac7e:	8b61                	andi	a4,a4,24
  a2ac80:	83a1                	srli	a5,a5,0x8
  a2ac82:	0807f593          	andi	a1,a5,128
  a2ac86:	8c59                	or	s0,s0,a4
  a2ac88:	8dc1                	or	a1,a1,s0
  a2ac8a:	2221                	jal	ra,a2ad92 <hal_pmp_riscv31_regs_set_pmpxcfg>
  a2ac8c:	0ff0000f          	fence
  a2ac90:	4501                	li	a0,0
  a2ac92:	8044                	popret	{ra,s0-s2},16
  a2ac94:	80000537          	lui	a0,0x80000
  a2ac98:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2ac9a:	bfe5                	j	a2ac92 <hal_pmp_riscv31_config+0x42>

00a2ac9c <hal_pmp_riscv31_funcs_get>:
  a2ac9c:	00a3 4110 051f      	l.li	a0,0xa34110
  a2aca2:	8082                	ret

00a2aca4 <hal_pmp_riscv31_regs_set_pmpaddr>:
  a2aca4:	e501                	bnez	a0,a2acac <hal_pmp_riscv31_regs_set_pmpaddr+0x8>
  a2aca6:	3b059073          	csrw	pmpaddr0,a1
  a2acaa:	8082                	ret
  a2acac:	010512bb          	bnei	a0,1,a2acb6 <hal_pmp_riscv31_regs_set_pmpaddr+0x12>
  a2acb0:	3b159073          	csrw	pmpaddr1,a1
  a2acb4:	8082                	ret
  a2acb6:	020512bb          	bnei	a0,2,a2acc0 <hal_pmp_riscv31_regs_set_pmpaddr+0x1c>
  a2acba:	3b259073          	csrw	pmpaddr2,a1
  a2acbe:	8082                	ret
  a2acc0:	030512bb          	bnei	a0,3,a2acca <hal_pmp_riscv31_regs_set_pmpaddr+0x26>
  a2acc4:	3b359073          	csrw	pmpaddr3,a1
  a2acc8:	8082                	ret
  a2acca:	040512bb          	bnei	a0,4,a2acd4 <hal_pmp_riscv31_regs_set_pmpaddr+0x30>
  a2acce:	3b459073          	csrw	pmpaddr4,a1
  a2acd2:	8082                	ret
  a2acd4:	050512bb          	bnei	a0,5,a2acde <hal_pmp_riscv31_regs_set_pmpaddr+0x3a>
  a2acd8:	3b559073          	csrw	pmpaddr5,a1
  a2acdc:	8082                	ret
  a2acde:	060512bb          	bnei	a0,6,a2ace8 <hal_pmp_riscv31_regs_set_pmpaddr+0x44>
  a2ace2:	3b659073          	csrw	pmpaddr6,a1
  a2ace6:	8082                	ret
  a2ace8:	070512bb          	bnei	a0,7,a2acf2 <hal_pmp_riscv31_regs_set_pmpaddr+0x4e>
  a2acec:	3b759073          	csrw	pmpaddr7,a1
  a2acf0:	8082                	ret
  a2acf2:	080512bb          	bnei	a0,8,a2acfc <hal_pmp_riscv31_regs_set_pmpaddr+0x58>
  a2acf6:	3b859073          	csrw	pmpaddr8,a1
  a2acfa:	8082                	ret
  a2acfc:	090512bb          	bnei	a0,9,a2ad06 <hal_pmp_riscv31_regs_set_pmpaddr+0x62>
  a2ad00:	3b959073          	csrw	pmpaddr9,a1
  a2ad04:	8082                	ret
  a2ad06:	0a0512bb          	bnei	a0,10,a2ad10 <hal_pmp_riscv31_regs_set_pmpaddr+0x6c>
  a2ad0a:	3ba59073          	csrw	pmpaddr10,a1
  a2ad0e:	8082                	ret
  a2ad10:	0b0512bb          	bnei	a0,11,a2ad1a <hal_pmp_riscv31_regs_set_pmpaddr+0x76>
  a2ad14:	3bb59073          	csrw	pmpaddr11,a1
  a2ad18:	8082                	ret
  a2ad1a:	0c0512bb          	bnei	a0,12,a2ad24 <hal_pmp_riscv31_regs_set_pmpaddr+0x80>
  a2ad1e:	3bc59073          	csrw	pmpaddr12,a1
  a2ad22:	8082                	ret
  a2ad24:	0d0512bb          	bnei	a0,13,a2ad2e <hal_pmp_riscv31_regs_set_pmpaddr+0x8a>
  a2ad28:	3bd59073          	csrw	pmpaddr13,a1
  a2ad2c:	8082                	ret
  a2ad2e:	0e0512bb          	bnei	a0,14,a2ad38 <hal_pmp_riscv31_regs_set_pmpaddr+0x94>
  a2ad32:	3be59073          	csrw	pmpaddr14,a1
  a2ad36:	8082                	ret
  a2ad38:	0f05123b          	bnei	a0,15,a2ad40 <hal_pmp_riscv31_regs_set_pmpaddr+0x9c>
  a2ad3c:	3bf59073          	csrw	pmpaddr15,a1
  a2ad40:	8082                	ret

00a2ad42 <hal_pmp_riscv31_regs_set_memxattr>:
  a2ad42:	0ff57713          	andi	a4,a0,255
  a2ad46:	080579bb          	bgeui	a0,8,a2ad6c <hal_pmp_riscv31_regs_set_memxattr+0x2a>
  a2ad4a:	7d8027f3          	csrr	a5,0x7d8
  a2ad4e:	070a                	slli	a4,a4,0x2
  a2ad50:	9f01                	uxtb	a4
  a2ad52:	46bd                	li	a3,15
  a2ad54:	00e696b3          	sll	a3,a3,a4
  a2ad58:	fff6c693          	not	a3,a3
  a2ad5c:	8efd                	and	a3,a3,a5
  a2ad5e:	00e59733          	sll	a4,a1,a4
  a2ad62:	8f55                	or	a4,a4,a3
  a2ad64:	82ba                	mv	t0,a4
  a2ad66:	7d829073          	csrw	0x7d8,t0
  a2ad6a:	8082                	ret
  a2ad6c:	7d902673          	csrr	a2,0x7d9
  a2ad70:	ff870793          	addi	a5,a4,-8
  a2ad74:	078a                	slli	a5,a5,0x2
  a2ad76:	9f81                	uxtb	a5
  a2ad78:	46bd                	li	a3,15
  a2ad7a:	00f696b3          	sll	a3,a3,a5
  a2ad7e:	fff6c693          	not	a3,a3
  a2ad82:	8ef1                	and	a3,a3,a2
  a2ad84:	00f597b3          	sll	a5,a1,a5
  a2ad88:	8fd5                	or	a5,a5,a3
  a2ad8a:	82be                	mv	t0,a5
  a2ad8c:	7d929073          	csrw	0x7d9,t0
  a2ad90:	8082                	ret

00a2ad92 <hal_pmp_riscv31_regs_set_pmpxcfg>:
  a2ad92:	00255793          	srli	a5,a0,0x2
  a2ad96:	1141                	addi	sp,sp,-16
  a2ad98:	01078a3b          	beqi	a5,1,a2adc0 <hal_pmp_riscv31_regs_set_pmpxcfg+0x2e>
  a2ad9c:	c799                	beqz	a5,a2adaa <hal_pmp_riscv31_regs_set_pmpxcfg+0x18>
  a2ad9e:	02078ebb          	beqi	a5,2,a2add8 <hal_pmp_riscv31_regs_set_pmpxcfg+0x46>
  a2ada2:	031783bb          	beqi	a5,3,a2adf0 <hal_pmp_riscv31_regs_set_pmpxcfg+0x5e>
  a2ada6:	0141                	addi	sp,sp,16
  a2ada8:	8082                	ret
  a2adaa:	3a0027f3          	csrr	a5,pmpcfg0
  a2adae:	c63e                	sw	a5,12(sp)
  a2adb0:	081c                	addi	a5,sp,16
  a2adb2:	953e                	add	a0,a0,a5
  a2adb4:	feb50e23          	sb	a1,-4(a0)
  a2adb8:	47b2                	lw	a5,12(sp)
  a2adba:	3a079073          	csrw	pmpcfg0,a5
  a2adbe:	b7e5                	j	a2ada6 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2adc0:	3a1027f3          	csrr	a5,pmpcfg1
  a2adc4:	c63e                	sw	a5,12(sp)
  a2adc6:	890d                	andi	a0,a0,3
  a2adc8:	081c                	addi	a5,sp,16
  a2adca:	953e                	add	a0,a0,a5
  a2adcc:	feb50e23          	sb	a1,-4(a0)
  a2add0:	47b2                	lw	a5,12(sp)
  a2add2:	3a179073          	csrw	pmpcfg1,a5
  a2add6:	bfc1                	j	a2ada6 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2add8:	3a2027f3          	csrr	a5,pmpcfg2
  a2addc:	c63e                	sw	a5,12(sp)
  a2adde:	890d                	andi	a0,a0,3
  a2ade0:	081c                	addi	a5,sp,16
  a2ade2:	953e                	add	a0,a0,a5
  a2ade4:	feb50e23          	sb	a1,-4(a0)
  a2ade8:	47b2                	lw	a5,12(sp)
  a2adea:	3a279073          	csrw	pmpcfg2,a5
  a2adee:	bf65                	j	a2ada6 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>
  a2adf0:	3a3027f3          	csrr	a5,pmpcfg3
  a2adf4:	c63e                	sw	a5,12(sp)
  a2adf6:	890d                	andi	a0,a0,3
  a2adf8:	081c                	addi	a5,sp,16
  a2adfa:	953e                	add	a0,a0,a5
  a2adfc:	feb50e23          	sb	a1,-4(a0)
  a2ae00:	47b2                	lw	a5,12(sp)
  a2ae02:	3a379073          	csrw	pmpcfg3,a5
  a2ae06:	b745                	j	a2ada6 <hal_pmp_riscv31_regs_set_pmpxcfg+0x14>

00a2ae08 <hal_reboot_chip>:
  a2ae08:	8018                	push	{ra},-16
  a2ae0a:	be3fe0ef          	jal	ra,a299ec <osal_irq_lock>
  a2ae0e:	68b020ef          	jal	ra,a2dc98 <set_cpu_utils_system_boot_magic>
  a2ae12:	47f010ef          	jal	ra,a2ca90 <reboot_port_reboot_chip>
  a2ae16:	a001                	j	a2ae16 <hal_reboot_chip+0xe>

00a2ae18 <hal_rkp_lock>:
  a2ae18:	8048                	push	{ra,s0-s2},-16
  a2ae1a:	860ff0ef          	jal	ra,a29e7a <crypto_get_cpu_type>
  a2ae1e:	c509                	beqz	a0,a2ae28 <hal_rkp_lock+0x10>
  a2ae20:	01050cbb          	beqi	a0,1,a2ae52 <hal_rkp_lock+0x3a>
  a2ae24:	557d                	li	a0,-1
  a2ae26:	8044                	popret	{ra,s0-s2},16
  a2ae28:	4489                	li	s1,2
  a2ae2a:	000f 4240 041f      	l.li	s0,0xf4240
  a2ae30:	44112937          	lui	s2,0x44112
  a2ae34:	00992023          	sw	s1,0(s2) # 44112000 <_gp_+0x436dd538>
  a2ae38:	0ff0000f          	fence
  a2ae3c:	00092783          	lw	a5,0(s2)
  a2ae40:	8b9d                	andi	a5,a5,7
  a2ae42:	00978a63          	beq	a5,s1,a2ae56 <hal_rkp_lock+0x3e>
  a2ae46:	4505                	li	a0,1
  a2ae48:	147d                	addi	s0,s0,-1
  a2ae4a:	d62ff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2ae4e:	f07d                	bnez	s0,a2ae34 <hal_rkp_lock+0x1c>
  a2ae50:	bfd1                	j	a2ae24 <hal_rkp_lock+0xc>
  a2ae52:	4485                	li	s1,1
  a2ae54:	bfd9                	j	a2ae2a <hal_rkp_lock+0x12>
  a2ae56:	4501                	li	a0,0
  a2ae58:	b7f9                	j	a2ae26 <hal_rkp_lock+0xe>

00a2ae5a <hal_rkp_unlock>:
  a2ae5a:	441127b7          	lui	a5,0x44112
  a2ae5e:	0007a023          	sw	zero,0(a5) # 44112000 <_gp_+0x436dd538>
  a2ae62:	0ff0000f          	fence
  a2ae66:	4501                	li	a0,0
  a2ae68:	8082                	ret

00a2ae6a <hal_rkp_kdf_wait_done>:
  a2ae6a:	8138                	push	{ra,s0-s1},-32
  a2ae6c:	57fd                	li	a5,-1
  a2ae6e:	c63e                	sw	a5,12(sp)
  a2ae70:	000f 4240 041f      	l.li	s0,0xf4240
  a2ae76:	441124b7          	lui	s1,0x44112
  a2ae7a:	40dc                	lw	a5,4(s1)
  a2ae7c:	8b85                	andi	a5,a5,1
  a2ae7e:	ef91                	bnez	a5,a2ae9a <hal_rkp_kdf_wait_done+0x30>
  a2ae80:	4785                	li	a5,1
  a2ae82:	c89c                	sw	a5,16(s1)
  a2ae84:	0ff0000f          	fence
  a2ae88:	c602                	sw	zero,12(sp)
  a2ae8a:	441127b7          	lui	a5,0x44112
  a2ae8e:	479c                	lw	a5,8(a5)
  a2ae90:	c399                	beqz	a5,a2ae96 <hal_rkp_kdf_wait_done+0x2c>
  a2ae92:	57fd                	li	a5,-1
  a2ae94:	c63e                	sw	a5,12(sp)
  a2ae96:	4532                	lw	a0,12(sp)
  a2ae98:	8134                	popret	{ra,s0-s1},32
  a2ae9a:	4505                	li	a0,1
  a2ae9c:	147d                	addi	s0,s0,-1
  a2ae9e:	d0eff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2aea2:	fc61                	bnez	s0,a2ae7a <hal_rkp_kdf_wait_done+0x10>
  a2aea4:	57fd                	li	a5,-1
  a2aea6:	c63e                	sw	a5,12(sp)
  a2aea8:	b7cd                	j	a2ae8a <hal_rkp_kdf_wait_done+0x20>

00a2aeaa <hal_rkp_kdf_hard_calculation>:
  a2aeaa:	8238                	push	{ra,s0-s1},-48
  a2aeac:	57fd                	li	a5,-1
  a2aeae:	c63e                	sw	a5,12(sp)
  a2aeb0:	c802                	sw	zero,16(sp)
  a2aeb2:	ca02                	sw	zero,20(sp)
  a2aeb4:	cc02                	sw	zero,24(sp)
  a2aeb6:	ce02                	sw	zero,28(sp)
  a2aeb8:	0e050863          	beqz	a0,a2afa8 <hal_rkp_kdf_hard_calculation+0xfe>
  a2aebc:	4504                	lw	s1,8(a0)
  a2aebe:	c485                	beqz	s1,a2aee6 <hal_rkp_kdf_hard_calculation+0x3c>
  a2aec0:	4558                	lw	a4,12(a0)
  a2aec2:	1c07193b          	bnei	a4,28,a2aee6 <hal_rkp_kdf_hard_calculation+0x3c>
  a2aec6:	2158                	lbu	a4,4(a0)
  a2aec8:	020777bb          	bgeui	a4,2,a2aee6 <hal_rkp_kdf_hard_calculation+0x3c>
  a2aecc:	4110                	lw	a2,0(a0)
  a2aece:	842a                	mv	s0,a0
  a2aed0:	0814                	addi	a3,sp,16
  a2aed2:	458d                	li	a1,3
  a2aed4:	00a3 413c 051f      	l.li	a0,0xa3413c
  a2aeda:	fb9fe0ef          	jal	ra,a29e92 <crypto_get_value_by_index>
  a2aede:	c62a                	sw	a0,12(sp)
  a2aee0:	47b2                	lw	a5,12(sp)
  a2aee2:	c781                	beqz	a5,a2aeea <hal_rkp_kdf_hard_calculation+0x40>
  a2aee4:	47b2                	lw	a5,12(sp)
  a2aee6:	853e                	mv	a0,a5
  a2aee8:	8234                	popret	{ra,s0-s1},48
  a2aeea:	4010                	lw	a2,0(s0)
  a2aeec:	0874                	addi	a3,sp,28
  a2aeee:	458d                	li	a1,3
  a2aef0:	00a3 4154 051f      	l.li	a0,0xa34154
  a2aef6:	f9dfe0ef          	jal	ra,a29e92 <crypto_get_value_by_index>
  a2aefa:	c62a                	sw	a0,12(sp)
  a2aefc:	47b2                	lw	a5,12(sp)
  a2aefe:	f3fd                	bnez	a5,a2aee4 <hal_rkp_kdf_hard_calculation+0x3a>
  a2af00:	2050                	lbu	a2,4(s0)
  a2af02:	0854                	addi	a3,sp,20
  a2af04:	4589                	li	a1,2
  a2af06:	00a3 4114 051f      	l.li	a0,0xa34114
  a2af0c:	f87fe0ef          	jal	ra,a29e92 <crypto_get_value_by_index>
  a2af10:	c62a                	sw	a0,12(sp)
  a2af12:	47b2                	lw	a5,12(sp)
  a2af14:	fbe1                	bnez	a5,a2aee4 <hal_rkp_kdf_hard_calculation+0x3a>
  a2af16:	3050                	lbu	a2,5(s0)
  a2af18:	0834                	addi	a3,sp,24
  a2af1a:	458d                	li	a1,3
  a2af1c:	00a3 4124 051f      	l.li	a0,0xa34124
  a2af22:	f71fe0ef          	jal	ra,a29e92 <crypto_get_value_by_index>
  a2af26:	c62a                	sw	a0,12(sp)
  a2af28:	47b2                	lw	a5,12(sp)
  a2af2a:	ffcd                	bnez	a5,a2aee4 <hal_rkp_kdf_hard_calculation+0x3a>
  a2af2c:	44112737          	lui	a4,0x44112
  a2af30:	281c                	lbu	a5,16(s0)
  a2af32:	4672                	lw	a2,28(sp)
  a2af34:	36072683          	lw	a3,864(a4) # 44112360 <_gp_+0x436dd898>
  a2af38:	00c797b3          	sll	a5,a5,a2
  a2af3c:	8fd5                	or	a5,a5,a3
  a2af3e:	36f72023          	sw	a5,864(a4)
  a2af42:	0ff0000f          	fence
  a2af46:	4701                	li	a4,0
  a2af48:	87a6                	mv	a5,s1
  a2af4a:	1104 48d0 061f      	l.li	a2,0x110448d0
  a2af50:	4454                	lw	a3,12(s0)
  a2af52:	8289                	srli	a3,a3,0x2
  a2af54:	04d76063          	bltu	a4,a3,a2af94 <hal_rkp_kdf_hard_calculation+0xea>
  a2af58:	44112637          	lui	a2,0x44112
  a2af5c:	425c                	lw	a5,4(a2)
  a2af5e:	4762                	lw	a4,24(sp)
  a2af60:	76d1                	lui	a3,0xffff4
  a2af62:	16fd                	addi	a3,a3,-1 # ffff3fff <_gp_+0xff5bf537>
  a2af64:	8b0d                	andi	a4,a4,3
  a2af66:	8ff5                	and	a5,a5,a3
  a2af68:	1ce7a79b          	orshf	a5,a5,a4,sll,14
  a2af6c:	4752                	lw	a4,20(sp)
  a2af6e:	9bc5                	andi	a5,a5,-15
  a2af70:	8b1d                	andi	a4,a4,7
  a2af72:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2af76:	4742                	lw	a4,16(sp)
  a2af78:	e0f7f793          	andi	a5,a5,-497
  a2af7c:	8b7d                	andi	a4,a4,31
  a2af7e:	08e7a79b          	orshf	a5,a5,a4,sll,4
  a2af82:	0017e793          	ori	a5,a5,1
  a2af86:	c25c                	sw	a5,4(a2)
  a2af88:	0ff0000f          	fence
  a2af8c:	3df9                	jal	ra,a2ae6a <hal_rkp_kdf_wait_done>
  a2af8e:	c62a                	sw	a0,12(sp)
  a2af90:	47b2                	lw	a5,12(sp)
  a2af92:	bf89                	j	a2aee4 <hal_rkp_kdf_hard_calculation+0x3a>
  a2af94:	438c                	lw	a1,0(a5)
  a2af96:	00c706b3          	add	a3,a4,a2
  a2af9a:	068a                	slli	a3,a3,0x2
  a2af9c:	c28c                	sw	a1,0(a3)
  a2af9e:	0ff0000f          	fence
  a2afa2:	0705                	addi	a4,a4,1
  a2afa4:	0791                	addi	a5,a5,4 # 44112004 <_gp_+0x436dd53c>
  a2afa6:	b76d                	j	a2af50 <hal_rkp_kdf_hard_calculation+0xa6>
  a2afa8:	57fd                	li	a5,-1
  a2afaa:	bf35                	j	a2aee6 <hal_rkp_kdf_hard_calculation+0x3c>

00a2afac <inner_kslot_chn_is_locked>:
  a2afac:	44114737          	lui	a4,0x44114
  a2afb0:	b3072783          	lw	a5,-1232(a4) # 44113b30 <_gp_+0x436df068>
  a2afb4:	76e1                	lui	a3,0xffff8
  a2afb6:	16fd                	addi	a3,a3,-1 # ffff7fff <_gp_+0xff5c3537>
  a2afb8:	8985                	andi	a1,a1,1
  a2afba:	8ff5                	and	a5,a5,a3
  a2afbc:	1eb7a79b          	orshf	a5,a5,a1,sll,15
  a2afc0:	3ff57513          	andi	a0,a0,1023
  a2afc4:	c007f793          	andi	a5,a5,-1024
  a2afc8:	8fc9                	or	a5,a5,a0
  a2afca:	b2f72823          	sw	a5,-1232(a4)
  a2afce:	0ff0000f          	fence
  a2afd2:	b3472503          	lw	a0,-1228(a4)
  a2afd6:	891d                	andi	a0,a0,7
  a2afd8:	c211                	beqz	a2,a2afdc <inner_kslot_chn_is_locked+0x30>
  a2afda:	c208                	sw	a0,0(a2)
  a2afdc:	00a03533          	snez	a0,a0
  a2afe0:	8082                	ret

00a2afe2 <inner_chk_kslot_busy>:
  a2afe2:	8028                	push	{ra,s0},-16
  a2afe4:	842a                	mv	s0,a0
  a2afe6:	e95fe0ef          	jal	ra,a29e7a <crypto_get_cpu_type>
  a2afea:	c911                	beqz	a0,a2affe <inner_chk_kslot_busy+0x1c>
  a2afec:	0105173b          	bnei	a0,1,a2b008 <inner_chk_kslot_busy+0x26>
  a2aff0:	441147b7          	lui	a5,0x44114
  a2aff4:	b147a783          	lw	a5,-1260(a5) # 44113b14 <_gp_+0x436df04c>
  a2aff8:	c01c                	sw	a5,0(s0)
  a2affa:	4501                	li	a0,0
  a2affc:	8024                	popret	{ra,s0},16
  a2affe:	441147b7          	lui	a5,0x44114
  a2b002:	b107a783          	lw	a5,-1264(a5) # 44113b10 <_gp_+0x436df048>
  a2b006:	bfcd                	j	a2aff8 <inner_chk_kslot_busy+0x16>
  a2b008:	4505                	li	a0,1
  a2b00a:	bfcd                	j	a2affc <inner_chk_kslot_busy+0x1a>

00a2b00c <inner_kslot_is_busy>:
  a2b00c:	8118                	push	{ra},-32
  a2b00e:	0068                	addi	a0,sp,12
  a2b010:	c602                	sw	zero,12(sp)
  a2b012:	3fc1                	jal	ra,a2afe2 <inner_chk_kslot_busy>
  a2b014:	4785                	li	a5,1
  a2b016:	e119                	bnez	a0,a2b01c <inner_kslot_is_busy+0x10>
  a2b018:	47b2                	lw	a5,12(sp)
  a2b01a:	8b85                	andi	a5,a5,1
  a2b01c:	853e                	mv	a0,a5
  a2b01e:	8114                	popret	{ra},32

00a2b020 <hal_keyslot_lock>:
  a2b020:	8248                	push	{ra,s0-s2},-48
  a2b022:	57fd                	li	a5,-1
  a2b024:	c62e                	sw	a1,12(sp)
  a2b026:	84aa                	mv	s1,a0
  a2b028:	cc3e                	sw	a5,24(sp)
  a2b02a:	e51fe0ef          	jal	ra,a29e7a <crypto_get_cpu_type>
  a2b02e:	45b2                	lw	a1,12(sp)
  a2b030:	ce02                	sw	zero,28(sp)
  a2b032:	892a                	mv	s2,a0
  a2b034:	c591                	beqz	a1,a2b040 <hal_keyslot_lock+0x20>
  a2b036:	0105863b          	beqi	a1,1,a2b04e <hal_keyslot_lock+0x2e>
  a2b03a:	4401                	li	s0,0
  a2b03c:	57fd                	li	a5,-1
  a2b03e:	a019                	j	a2b044 <hal_keyslot_lock+0x24>
  a2b040:	4401                	li	s0,0
  a2b042:	4781                	li	a5,0
  a2b044:	cc3e                	sw	a5,24(sp)
  a2b046:	47e2                	lw	a5,24(sp)
  a2b048:	c789                	beqz	a5,a2b052 <hal_keyslot_lock+0x32>
  a2b04a:	4562                	lw	a0,24(sp)
  a2b04c:	8244                	popret	{ra,s0-s2},48
  a2b04e:	4405                	li	s0,1
  a2b050:	bfcd                	j	a2b042 <hal_keyslot_lock+0x22>
  a2b052:	4601                	li	a2,0
  a2b054:	85a2                	mv	a1,s0
  a2b056:	8526                	mv	a0,s1
  a2b058:	3f91                	jal	ra,a2afac <inner_kslot_chn_is_locked>
  a2b05a:	c119                	beqz	a0,a2b060 <hal_keyslot_lock+0x40>
  a2b05c:	557d                	li	a0,-1
  a2b05e:	b7fd                	j	a2b04c <hal_keyslot_lock+0x2c>
  a2b060:	3775                	jal	ra,a2b00c <inner_kslot_is_busy>
  a2b062:	fd6d                	bnez	a0,a2b05c <hal_keyslot_lock+0x3c>
  a2b064:	04091763          	bnez	s2,a2b0b2 <hal_keyslot_lock+0x92>
  a2b068:	4909                	li	s2,2
  a2b06a:	0000 1b00 071f      	l.li	a4,0x1b00
  a2b070:	441127b7          	lui	a5,0x44112
  a2b074:	973e                	add	a4,a4,a5
  a2b076:	431c                	lw	a5,0(a4)
  a2b078:	76e1                	lui	a3,0xffff8
  a2b07a:	16fd                	addi	a3,a3,-1 # ffff7fff <_gp_+0xff5c3537>
  a2b07c:	8ff5                	and	a5,a5,a3
  a2b07e:	1e87a79b          	orshf	a5,a5,s0,sll,15
  a2b082:	3ff4f693          	andi	a3,s1,1023
  a2b086:	c007f793          	andi	a5,a5,-1024
  a2b08a:	8fd5                	or	a5,a5,a3
  a2b08c:	001006b7          	lui	a3,0x100
  a2b090:	8fd5                	or	a5,a5,a3
  a2b092:	c31c                	sw	a5,0(a4)
  a2b094:	0ff0000f          	fence
  a2b098:	0870                	addi	a2,sp,28
  a2b09a:	85a2                	mv	a1,s0
  a2b09c:	8526                	mv	a0,s1
  a2b09e:	3739                	jal	ra,a2afac <inner_kslot_chn_is_locked>
  a2b0a0:	dd55                	beqz	a0,a2b05c <hal_keyslot_lock+0x3c>
  a2b0a2:	4572                	lw	a0,28(sp)
  a2b0a4:	41250533          	sub	a0,a0,s2
  a2b0a8:	00a03533          	snez	a0,a0
  a2b0ac:	40a00533          	neg	a0,a0
  a2b0b0:	bf71                	j	a2b04c <hal_keyslot_lock+0x2c>
  a2b0b2:	4905                	li	s2,1
  a2b0b4:	0000 1b04 071f      	l.li	a4,0x1b04
  a2b0ba:	bf5d                	j	a2b070 <hal_keyslot_lock+0x50>

00a2b0bc <hal_keyslot_unlock>:
  a2b0bc:	8248                	push	{ra,s0-s2},-48
  a2b0be:	57fd                	li	a5,-1
  a2b0c0:	c62e                	sw	a1,12(sp)
  a2b0c2:	842a                	mv	s0,a0
  a2b0c4:	cc3e                	sw	a5,24(sp)
  a2b0c6:	db5fe0ef          	jal	ra,a29e7a <crypto_get_cpu_type>
  a2b0ca:	45b2                	lw	a1,12(sp)
  a2b0cc:	892a                	mv	s2,a0
  a2b0ce:	c591                	beqz	a1,a2b0da <hal_keyslot_unlock+0x1e>
  a2b0d0:	010586bb          	beqi	a1,1,a2b0ea <hal_keyslot_unlock+0x2e>
  a2b0d4:	4481                	li	s1,0
  a2b0d6:	57fd                	li	a5,-1
  a2b0d8:	a019                	j	a2b0de <hal_keyslot_unlock+0x22>
  a2b0da:	4481                	li	s1,0
  a2b0dc:	4781                	li	a5,0
  a2b0de:	cc3e                	sw	a5,24(sp)
  a2b0e0:	47e2                	lw	a5,24(sp)
  a2b0e2:	c791                	beqz	a5,a2b0ee <hal_keyslot_unlock+0x32>
  a2b0e4:	47e2                	lw	a5,24(sp)
  a2b0e6:	853e                	mv	a0,a5
  a2b0e8:	8244                	popret	{ra,s0-s2},48
  a2b0ea:	4485                	li	s1,1
  a2b0ec:	bfc5                	j	a2b0dc <hal_keyslot_unlock+0x20>
  a2b0ee:	3f39                	jal	ra,a2b00c <inner_kslot_is_busy>
  a2b0f0:	57fd                	li	a5,-1
  a2b0f2:	f975                	bnez	a0,a2b0e6 <hal_keyslot_unlock+0x2a>
  a2b0f4:	4601                	li	a2,0
  a2b0f6:	85a6                	mv	a1,s1
  a2b0f8:	8522                	mv	a0,s0
  a2b0fa:	3d4d                	jal	ra,a2afac <inner_kslot_chn_is_locked>
  a2b0fc:	4781                	li	a5,0
  a2b0fe:	d565                	beqz	a0,a2b0e6 <hal_keyslot_unlock+0x2a>
  a2b100:	06090363          	beqz	s2,a2b166 <hal_keyslot_unlock+0xaa>
  a2b104:	011917bb          	bnei	s2,1,a2b162 <hal_keyslot_unlock+0xa6>
  a2b108:	0000 1b04 079f      	l.li	a5,0x1b04
  a2b10e:	44112737          	lui	a4,0x44112
  a2b112:	97ba                	add	a5,a5,a4
  a2b114:	4388                	lw	a0,0(a5)
  a2b116:	7761                	lui	a4,0xffff8
  a2b118:	177d                	addi	a4,a4,-1 # ffff7fff <_gp_+0xff5c3537>
  a2b11a:	8d79                	and	a0,a0,a4
  a2b11c:	1e95251b          	orshf	a0,a0,s1,sll,15
  a2b120:	3ff47413          	andi	s0,s0,1023
  a2b124:	c0057513          	andi	a0,a0,-1024
  a2b128:	8d41                	or	a0,a0,s0
  a2b12a:	ffef ffff 071f      	l.li	a4,0xffefffff
  a2b130:	8d79                	and	a0,a0,a4
  a2b132:	c388                	sw	a0,0(a5)
  a2b134:	0ff0000f          	fence
  a2b138:	000f 4240 041f      	l.li	s0,0xf4240
  a2b13e:	35f9                	jal	ra,a2b00c <inner_kslot_is_busy>
  a2b140:	c51d                	beqz	a0,a2b16e <hal_keyslot_unlock+0xb2>
  a2b142:	4505                	li	a0,1
  a2b144:	147d                	addi	s0,s0,-1
  a2b146:	a66ff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2b14a:	f875                	bnez	s0,a2b13e <hal_keyslot_unlock+0x82>
  a2b14c:	57fd                	li	a5,-1
  a2b14e:	cc3e                	sw	a5,24(sp)
  a2b150:	47e2                	lw	a5,24(sp)
  a2b152:	fbc9                	bnez	a5,a2b0e4 <hal_keyslot_unlock+0x28>
  a2b154:	0868                	addi	a0,sp,28
  a2b156:	ce02                	sw	zero,28(sp)
  a2b158:	3569                	jal	ra,a2afe2 <inner_chk_kslot_busy>
  a2b15a:	e501                	bnez	a0,a2b162 <hal_keyslot_unlock+0xa6>
  a2b15c:	47f2                	lw	a5,28(sp)
  a2b15e:	8b89                	andi	a5,a5,2
  a2b160:	d3d9                	beqz	a5,a2b0e6 <hal_keyslot_unlock+0x2a>
  a2b162:	57fd                	li	a5,-1
  a2b164:	b749                	j	a2b0e6 <hal_keyslot_unlock+0x2a>
  a2b166:	0000 1b00 079f      	l.li	a5,0x1b00
  a2b16c:	b74d                	j	a2b10e <hal_keyslot_unlock+0x52>
  a2b16e:	4781                	li	a5,0
  a2b170:	bff9                	j	a2b14e <hal_keyslot_unlock+0x92>

00a2b172 <inner_klad_set_key_odd>:
  a2b172:	441137b7          	lui	a5,0x44113
  a2b176:	4b98                	lw	a4,16(a5)
  a2b178:	ffe77793          	andi	a5,a4,-2
  a2b17c:	c119                	beqz	a0,a2b182 <inner_klad_set_key_odd+0x10>
  a2b17e:	00176793          	ori	a5,a4,1
  a2b182:	44113737          	lui	a4,0x44113
  a2b186:	cb1c                	sw	a5,16(a4)
  a2b188:	0ff0000f          	fence
  a2b18c:	8082                	ret

00a2b18e <inner_klad_wait_com_route_done>:
  a2b18e:	8138                	push	{ra,s0-s1},-32
  a2b190:	57fd                	li	a5,-1
  a2b192:	c23e                	sw	a5,4(sp)
  a2b194:	000f 4240 041f      	l.li	s0,0xf4240
  a2b19a:	441134b7          	lui	s1,0x44113
  a2b19e:	0844a783          	lw	a5,132(s1) # 44113084 <_gp_+0x436de5bc>
  a2b1a2:	8b85                	andi	a5,a5,1
  a2b1a4:	eb85                	bnez	a5,a2b1d4 <inner_klad_wait_com_route_done+0x46>
  a2b1a6:	40fc                	lw	a5,68(s1)
  a2b1a8:	0017e793          	ori	a5,a5,1
  a2b1ac:	c43e                	sw	a5,8(sp)
  a2b1ae:	c0fc                	sw	a5,68(s1)
  a2b1b0:	0ff0000f          	fence
  a2b1b4:	c202                	sw	zero,4(sp)
  a2b1b6:	44113737          	lui	a4,0x44113
  a2b1ba:	08872783          	lw	a5,136(a4) # 44113088 <_gp_+0x436de5c0>
  a2b1be:	5f1c                	lw	a5,56(a4)
  a2b1c0:	5f58                	lw	a4,60(a4)
  a2b1c2:	8fd9                	or	a5,a5,a4
  a2b1c4:	00f037b3          	snez	a5,a5
  a2b1c8:	40f007b3          	neg	a5,a5
  a2b1cc:	c23e                	sw	a5,4(sp)
  a2b1ce:	4792                	lw	a5,4(sp)
  a2b1d0:	4512                	lw	a0,4(sp)
  a2b1d2:	8134                	popret	{ra,s0-s1},32
  a2b1d4:	4505                	li	a0,1
  a2b1d6:	147d                	addi	s0,s0,-1
  a2b1d8:	9d4ff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2b1dc:	f069                	bnez	s0,a2b19e <inner_klad_wait_com_route_done+0x10>
  a2b1de:	bfe1                	j	a2b1b6 <inner_klad_wait_com_route_done+0x28>

00a2b1e0 <hal_klad_lock>:
  a2b1e0:	8158                	push	{ra,s0-s3},-48
  a2b1e2:	57fd                	li	a5,-1
  a2b1e4:	c63e                	sw	a5,12(sp)
  a2b1e6:	0000 2710 041f      	l.li	s0,0x2710
  a2b1ec:	4905                	li	s2,1
  a2b1ee:	441134b7          	lui	s1,0x44113
  a2b1f2:	4991                	li	s3,4
  a2b1f4:	c87fe0ef          	jal	ra,a29e7a <crypto_get_cpu_type>
  a2b1f8:	57fd                	li	a5,-1
  a2b1fa:	03251463          	bne	a0,s2,a2b222 <hal_klad_lock+0x42>
  a2b1fe:	0724aa23          	sw	s2,116(s1) # 44113074 <_gp_+0x436de5ac>
  a2b202:	0ff0000f          	fence
  a2b206:	5cf8                	lw	a4,124(s1)
  a2b208:	57fd                	li	a5,-1
  a2b20a:	8b31                	andi	a4,a4,12
  a2b20c:	01370b63          	beq	a4,s3,a2b222 <hal_klad_lock+0x42>
  a2b210:	0804a783          	lw	a5,128(s1)
  a2b214:	9f81                	uxtb	a5
  a2b216:	f5678793          	addi	a5,a5,-170 # 44112f56 <_gp_+0x436de48e>
  a2b21a:	00f037b3          	snez	a5,a5
  a2b21e:	40f007b3          	neg	a5,a5
  a2b222:	c63e                	sw	a5,12(sp)
  a2b224:	47b2                	lw	a5,12(sp)
  a2b226:	cb81                	beqz	a5,a2b236 <hal_klad_lock+0x56>
  a2b228:	4505                	li	a0,1
  a2b22a:	147d                	addi	s0,s0,-1
  a2b22c:	980ff0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2b230:	f071                	bnez	s0,a2b1f4 <hal_klad_lock+0x14>
  a2b232:	557d                	li	a0,-1
  a2b234:	8154                	popret	{ra,s0-s3},48
  a2b236:	4501                	li	a0,0
  a2b238:	bff5                	j	a2b234 <hal_klad_lock+0x54>

00a2b23a <hal_klad_unlock>:
  a2b23a:	8018                	push	{ra},-16
  a2b23c:	c3ffe0ef          	jal	ra,a29e7a <crypto_get_cpu_type>
  a2b240:	01051cbb          	bnei	a0,1,a2b272 <hal_klad_unlock+0x38>
  a2b244:	44113737          	lui	a4,0x44113
  a2b248:	08072683          	lw	a3,128(a4) # 44113080 <_gp_+0x436de5b8>
  a2b24c:	0aa00613          	li	a2,170
  a2b250:	4781                	li	a5,0
  a2b252:	9e81                	uxtb	a3
  a2b254:	00c69d63          	bne	a3,a2,a2b26e <hal_klad_unlock+0x34>
  a2b258:	df28                	sw	a0,120(a4)
  a2b25a:	0ff0000f          	fence
  a2b25e:	5f7c                	lw	a5,124(a4)
  a2b260:	0307f793          	andi	a5,a5,48
  a2b264:	17c1                	addi	a5,a5,-16
  a2b266:	0017b793          	seqz	a5,a5
  a2b26a:	40f007b3          	neg	a5,a5
  a2b26e:	853e                	mv	a0,a5
  a2b270:	8014                	popret	{ra},16
  a2b272:	57fd                	li	a5,-1
  a2b274:	bfed                	j	a2b26e <hal_klad_unlock+0x34>

00a2b276 <hal_klad_set_key_crypto_cfg>:
  a2b276:	0a000793          	li	a5,160
  a2b27a:	02f60563          	beq	a2,a5,a2b2a4 <hal_klad_set_key_crypto_cfg+0x2e>
  a2b27e:	00c7e963          	bltu	a5,a2,a2b290 <hal_klad_set_key_crypto_cfg+0x1a>
  a2b282:	05000693          	li	a3,80
  a2b286:	200615bb          	bnei	a2,32,a2b29c <hal_klad_set_key_crypto_cfg+0x26>
  a2b28a:	02000693          	li	a3,32
  a2b28e:	a829                	j	a2b2a8 <hal_klad_set_key_crypto_cfg+0x32>
  a2b290:	0a100793          	li	a5,161
  a2b294:	04f60363          	beq	a2,a5,a2b2da <hal_klad_set_key_crypto_cfg+0x64>
  a2b298:	0a200693          	li	a3,162
  a2b29c:	00d60663          	beq	a2,a3,a2b2a8 <hal_klad_set_key_crypto_cfg+0x32>
  a2b2a0:	557d                	li	a0,-1
  a2b2a2:	8082                	ret
  a2b2a4:	0a000693          	li	a3,160
  a2b2a8:	44113637          	lui	a2,0x44113
  a2b2ac:	4a58                	lw	a4,20(a2)
  a2b2ae:	7781                	lui	a5,0xfffe0
  a2b2b0:	17fd                	addi	a5,a5,-1 # fffdffff <_gp_+0xff5ab537>
  a2b2b2:	8ff9                	and	a5,a5,a4
  a2b2b4:	8985                	andi	a1,a1,1
  a2b2b6:	22b7a59b          	orshf	a1,a5,a1,sll,17
  a2b2ba:	77c1                	lui	a5,0xffff0
  a2b2bc:	17fd                	addi	a5,a5,-1 # fffeffff <_gp_+0xff5bb537>
  a2b2be:	8905                	andi	a0,a0,1
  a2b2c0:	8fed                	and	a5,a5,a1
  a2b2c2:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a2b2c6:	757d                	lui	a0,0xfffff
  a2b2c8:	053d                	addi	a0,a0,15 # fffff00f <_gp_+0xff5ca547>
  a2b2ca:	8fe9                	and	a5,a5,a0
  a2b2cc:	08d7a79b          	orshf	a5,a5,a3,sll,4
  a2b2d0:	ca5c                	sw	a5,20(a2)
  a2b2d2:	0ff0000f          	fence
  a2b2d6:	4501                	li	a0,0
  a2b2d8:	8082                	ret
  a2b2da:	0a100693          	li	a3,161
  a2b2de:	b7e9                	j	a2b2a8 <hal_klad_set_key_crypto_cfg+0x32>

00a2b2e0 <hal_klad_set_key_dest_cfg>:
  a2b2e0:	0205633b          	bltui	a0,2,a2b2ec <hal_klad_set_key_dest_cfg+0xc>
  a2b2e4:	02050bbb          	beqi	a0,2,a2b312 <hal_klad_set_key_dest_cfg+0x32>
  a2b2e8:	557d                	li	a0,-1
  a2b2ea:	8082                	ret
  a2b2ec:	4705                	li	a4,1
  a2b2ee:	441137b7          	lui	a5,0x44113
  a2b2f2:	4bdc                	lw	a5,20(a5)
  a2b2f4:	9be1                	andi	a5,a5,-8
  a2b2f6:	8fd9                	or	a5,a5,a4
  a2b2f8:	0205133b          	bnei	a0,2,a2b304 <hal_klad_set_key_dest_cfg+0x24>
  a2b2fc:	fff3 ffff 071f      	l.li	a4,0xfff3ffff
  a2b302:	8ff9                	and	a5,a5,a4
  a2b304:	44113737          	lui	a4,0x44113
  a2b308:	cb5c                	sw	a5,20(a4)
  a2b30a:	0ff0000f          	fence
  a2b30e:	4501                	li	a0,0
  a2b310:	8082                	ret
  a2b312:	471d                	li	a4,7
  a2b314:	dde9                	beqz	a1,a2b2ee <hal_klad_set_key_dest_cfg+0xe>
  a2b316:	bfc9                	j	a2b2e8 <hal_klad_set_key_dest_cfg+0x8>

00a2b318 <hal_klad_set_key_secure_cfg>:
  a2b318:	c539                	beqz	a0,a2b366 <hal_klad_set_key_secure_cfg+0x4e>
  a2b31a:	441136b7          	lui	a3,0x44113
  a2b31e:	4e9c                	lw	a5,24(a3)
  a2b320:	3118                	lbu	a4,1(a0)
  a2b322:	fdf7f793          	andi	a5,a5,-33
  a2b326:	8b05                	andi	a4,a4,1
  a2b328:	0ae7a79b          	orshf	a5,a5,a4,sll,5
  a2b32c:	2138                	lbu	a4,2(a0)
  a2b32e:	9bbd                	andi	a5,a5,-17
  a2b330:	8b05                	andi	a4,a4,1
  a2b332:	08e7a79b          	orshf	a5,a5,a4,sll,4
  a2b336:	3138                	lbu	a4,3(a0)
  a2b338:	9bdd                	andi	a5,a5,-9
  a2b33a:	8b05                	andi	a4,a4,1
  a2b33c:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2b340:	2158                	lbu	a4,4(a0)
  a2b342:	9bed                	andi	a5,a5,-5
  a2b344:	8b05                	andi	a4,a4,1
  a2b346:	04e7a79b          	orshf	a5,a5,a4,sll,2
  a2b34a:	3158                	lbu	a4,5(a0)
  a2b34c:	9bf5                	andi	a5,a5,-3
  a2b34e:	8b05                	andi	a4,a4,1
  a2b350:	02e7a79b          	orshf	a5,a5,a4,sll,1
  a2b354:	2118                	lbu	a4,0(a0)
  a2b356:	9bf9                	andi	a5,a5,-2
  a2b358:	8b05                	andi	a4,a4,1
  a2b35a:	8fd9                	or	a5,a5,a4
  a2b35c:	ce9c                	sw	a5,24(a3)
  a2b35e:	0ff0000f          	fence
  a2b362:	4501                	li	a0,0
  a2b364:	8082                	ret
  a2b366:	557d                	li	a0,-1
  a2b368:	8082                	ret

00a2b36a <hal_klad_set_key_addr>:
  a2b36a:	e105                	bnez	a0,a2b38a <hal_klad_set_key_addr+0x20>
  a2b36c:	44113737          	lui	a4,0x44113
  a2b370:	4b1c                	lw	a5,16(a4)
  a2b372:	0586                	slli	a1,a1,0x1
  a2b374:	3fe5f593          	andi	a1,a1,1022
  a2b378:	c007f793          	andi	a5,a5,-1024
  a2b37c:	8ddd                	or	a1,a1,a5
  a2b37e:	cb0c                	sw	a1,16(a4)
  a2b380:	0ff0000f          	fence
  a2b384:	4781                	li	a5,0
  a2b386:	853e                	mv	a0,a5
  a2b388:	8082                	ret
  a2b38a:	57fd                	li	a5,-1
  a2b38c:	01f51ebb          	bnei	a0,1,a2b386 <hal_klad_set_key_addr+0x1c>
  a2b390:	44113737          	lui	a4,0x44113
  a2b394:	4b1c                	lw	a5,16(a4)
  a2b396:	3ff5f593          	andi	a1,a1,1023
  a2b39a:	bff9                	j	a2b378 <hal_klad_set_key_addr+0xe>

00a2b39c <hal_klad_start_com_route>:
  a2b39c:	8148                	push	{ra,s0-s2},-32
  a2b39e:	57fd                	li	a5,-1
  a2b3a0:	c23e                	sw	a5,4(sp)
  a2b3a2:	c402                	sw	zero,8(sp)
  a2b3a4:	c602                	sw	zero,12(sp)
  a2b3a6:	cdc5                	beqz	a1,a2b45e <hal_klad_start_com_route+0xc2>
  a2b3a8:	41d8                	lw	a4,4(a1)
  a2b3aa:	cf19                	beqz	a4,a2b3c8 <hal_klad_start_com_route+0x2c>
  a2b3ac:	8932                	mv	s2,a2
  a2b3ae:	84ae                	mv	s1,a1
  a2b3b0:	862a                	mv	a2,a0
  a2b3b2:	0074                	addi	a3,sp,12
  a2b3b4:	458d                	li	a1,3
  a2b3b6:	00a3 4184 051f      	l.li	a0,0xa34184
  a2b3bc:	ad7fe0ef          	jal	ra,a29e92 <crypto_get_value_by_index>
  a2b3c0:	c22a                	sw	a0,4(sp)
  a2b3c2:	4792                	lw	a5,4(sp)
  a2b3c4:	c781                	beqz	a5,a2b3cc <hal_klad_start_com_route+0x30>
  a2b3c6:	4792                	lw	a5,4(sp)
  a2b3c8:	853e                	mv	a0,a5
  a2b3ca:	8144                	popret	{ra,s0-s2},32
  a2b3cc:	20b0                	lbu	a2,2(s1)
  a2b3ce:	0034                	addi	a3,sp,8
  a2b3d0:	458d                	li	a1,3
  a2b3d2:	00a3 416c 051f      	l.li	a0,0xa3416c
  a2b3d8:	abbfe0ef          	jal	ra,a29e92 <crypto_get_value_by_index>
  a2b3dc:	c22a                	sw	a0,4(sp)
  a2b3de:	4792                	lw	a5,4(sp)
  a2b3e0:	f3fd                	bnez	a5,a2b3c6 <hal_klad_start_com_route+0x2a>
  a2b3e2:	20bc                	lbu	a5,2(s1)
  a2b3e4:	4501                	li	a0,0
  a2b3e6:	e391                	bnez	a5,a2b3ea <hal_klad_start_com_route+0x4e>
  a2b3e8:	3088                	lbu	a0,1(s1)
  a2b3ea:	00091463          	bnez	s2,a2b3f2 <hal_klad_start_com_route+0x56>
  a2b3ee:	d85ff0ef          	jal	ra,a2b172 <inner_klad_set_key_odd>
  a2b3f2:	4422                	lw	s0,8(sp)
  a2b3f4:	47b2                	lw	a5,12(sp)
  a2b3f6:	880d                	andi	s0,s0,3
  a2b3f8:	041a                	slli	s0,s0,0x6
  a2b3fa:	8bfd                	andi	a5,a5,31
  a2b3fc:	00146413          	ori	s0,s0,1
  a2b400:	10f4241b          	orshf	s0,s0,a5,sll,8
  a2b404:	441137b7          	lui	a5,0x44113
  a2b408:	0887a223          	sw	s0,132(a5) # 44113084 <_gp_+0x436de5bc>
  a2b40c:	0ff0000f          	fence
  a2b410:	d7fff0ef          	jal	ra,a2b18e <inner_klad_wait_com_route_done>
  a2b414:	c22a                	sw	a0,4(sp)
  a2b416:	4792                	lw	a5,4(sp)
  a2b418:	f7dd                	bnez	a5,a2b3c6 <hal_klad_start_com_route+0x2a>
  a2b41a:	20bc                	lbu	a5,2(s1)
  a2b41c:	d7cd                	beqz	a5,a2b3c6 <hal_klad_start_com_route+0x2a>
  a2b41e:	00091563          	bnez	s2,a2b428 <hal_klad_start_com_route+0x8c>
  a2b422:	4505                	li	a0,1
  a2b424:	d4fff0ef          	jal	ra,a2b172 <inner_klad_set_key_odd>
  a2b428:	47a2                	lw	a5,8(sp)
  a2b42a:	f3f47413          	andi	s0,s0,-193
  a2b42e:	ffff e0ff 071f      	l.li	a4,0xffffe0ff
  a2b434:	8b8d                	andi	a5,a5,3
  a2b436:	0cf4241b          	orshf	s0,s0,a5,sll,6
  a2b43a:	47b2                	lw	a5,12(sp)
  a2b43c:	8c79                	and	s0,s0,a4
  a2b43e:	8bfd                	andi	a5,a5,31
  a2b440:	10f4241b          	orshf	s0,s0,a5,sll,8
  a2b444:	00146413          	ori	s0,s0,1
  a2b448:	441137b7          	lui	a5,0x44113
  a2b44c:	0887a223          	sw	s0,132(a5) # 44113084 <_gp_+0x436de5bc>
  a2b450:	0ff0000f          	fence
  a2b454:	d3bff0ef          	jal	ra,a2b18e <inner_klad_wait_com_route_done>
  a2b458:	c22a                	sw	a0,4(sp)
  a2b45a:	4792                	lw	a5,4(sp)
  a2b45c:	b7ad                	j	a2b3c6 <hal_klad_start_com_route+0x2a>
  a2b45e:	57fd                	li	a5,-1
  a2b460:	b7a5                	j	a2b3c8 <hal_klad_start_com_route+0x2c>

00a2b462 <hal_fapc_set_region_addr>:
  a2b462:	040577bb          	bgeui	a0,4,a2b480 <hal_fapc_set_region_addr+0x1e>
  a2b466:	1200 0400 079f      	l.li	a5,0x12000400
  a2b46c:	953e                	add	a0,a0,a5
  a2b46e:	050a                	slli	a0,a0,0x2
  a2b470:	c10c                	sw	a1,0(a0)
  a2b472:	0ff0000f          	fence
  a2b476:	c130                	sw	a2,64(a0)
  a2b478:	0ff0000f          	fence
  a2b47c:	4501                	li	a0,0
  a2b47e:	8082                	ret
  a2b480:	557d                	li	a0,-1
  a2b482:	8082                	ret

00a2b484 <hal_fapc_set_region_permission>:
  a2b484:	4501                	li	a0,0
  a2b486:	8082                	ret

00a2b488 <hal_fapc_set_region_mac_addr>:
  a2b488:	4501                	li	a0,0
  a2b48a:	8082                	ret

00a2b48c <hal_fapc_set_region_mode>:
  a2b48c:	0405733b          	bgeui	a0,4,a2b498 <hal_fapc_set_region_mode+0xc>
  a2b490:	c591                	beqz	a1,a2b49c <hal_fapc_set_region_mode+0x10>
  a2b492:	4709                	li	a4,2
  a2b494:	020582bb          	beqi	a1,2,a2b49e <hal_fapc_set_region_mode+0x12>
  a2b498:	557d                	li	a0,-1
  a2b49a:	8082                	ret
  a2b49c:	4701                	li	a4,0
  a2b49e:	480016b7          	lui	a3,0x48001
  a2b4a2:	1806a603          	lw	a2,384(a3) # 48001180 <_gp_+0x475cc6b8>
  a2b4a6:	0506                	slli	a0,a0,0x1
  a2b4a8:	478d                	li	a5,3
  a2b4aa:	00a797b3          	sll	a5,a5,a0
  a2b4ae:	fff7c793          	not	a5,a5
  a2b4b2:	8ff1                	and	a5,a5,a2
  a2b4b4:	00a71733          	sll	a4,a4,a0
  a2b4b8:	8fd9                	or	a5,a5,a4
  a2b4ba:	18f6a023          	sw	a5,384(a3)
  a2b4be:	0ff0000f          	fence
  a2b4c2:	4501                	li	a0,0
  a2b4c4:	8082                	ret

00a2b4c6 <hal_fapc_region_enable>:
  a2b4c6:	4501                	li	a0,0
  a2b4c8:	8082                	ret

00a2b4ca <hal_fapc_region_lock>:
  a2b4ca:	0405783b          	bgeui	a0,4,a2b4ea <hal_fapc_region_lock+0x20>
  a2b4ce:	48001737          	lui	a4,0x48001
  a2b4d2:	22072683          	lw	a3,544(a4) # 48001220 <_gp_+0x475cc758>
  a2b4d6:	4785                	li	a5,1
  a2b4d8:	00a79533          	sll	a0,a5,a0
  a2b4dc:	8d55                	or	a0,a0,a3
  a2b4de:	22a72023          	sw	a0,544(a4)
  a2b4e2:	0ff0000f          	fence
  a2b4e6:	4501                	li	a0,0
  a2b4e8:	8082                	ret
  a2b4ea:	557d                	li	a0,-1
  a2b4ec:	8082                	ret

00a2b4ee <hal_fapc_set_region_iv>:
  a2b4ee:	e131                	bnez	a0,a2b532 <hal_fapc_set_region_iv+0x44>
  a2b4f0:	557d                	li	a0,-1
  a2b4f2:	c1a9                	beqz	a1,a2b534 <hal_fapc_set_region_iv+0x46>
  a2b4f4:	1016103b          	bnei	a2,16,a2b534 <hal_fapc_set_region_iv+0x46>
  a2b4f8:	4198                	lw	a4,0(a1)
  a2b4fa:	480017b7          	lui	a5,0x48001
  a2b4fe:	62e7a023          	sw	a4,1568(a5) # 48001620 <_gp_+0x475ccb58>
  a2b502:	0ff0000f          	fence
  a2b506:	41d8                	lw	a4,4(a1)
  a2b508:	62e7a223          	sw	a4,1572(a5)
  a2b50c:	0ff0000f          	fence
  a2b510:	4598                	lw	a4,8(a1)
  a2b512:	62e7a423          	sw	a4,1576(a5)
  a2b516:	0ff0000f          	fence
  a2b51a:	45d8                	lw	a4,12(a1)
  a2b51c:	62e7a623          	sw	a4,1580(a5)
  a2b520:	0ff0000f          	fence
  a2b524:	4705                	li	a4,1
  a2b526:	60e7a023          	sw	a4,1536(a5)
  a2b52a:	0ff0000f          	fence
  a2b52e:	4501                	li	a0,0
  a2b530:	8082                	ret
  a2b532:	557d                	li	a0,-1
  a2b534:	8082                	ret

00a2b536 <hal_fapc_set_region_iv_start_addr>:
  a2b536:	0405763b          	bgeui	a0,4,a2b54e <hal_fapc_set_region_iv_start_addr+0x18>
  a2b53a:	1200 0590 079f      	l.li	a5,0x12000590
  a2b540:	953e                	add	a0,a0,a5
  a2b542:	050a                	slli	a0,a0,0x2
  a2b544:	c10c                	sw	a1,0(a0)
  a2b546:	0ff0000f          	fence
  a2b54a:	4501                	li	a0,0
  a2b54c:	8082                	ret
  a2b54e:	557d                	li	a0,-1
  a2b550:	8082                	ret

00a2b552 <hal_tcxo_init>:
  a2b552:	8018                	push	{ra},-16
  a2b554:	28a9                	jal	ra,a2b5ae <hal_tcxo_v150_regs_init>
  a2b556:	e105                	bnez	a0,a2b576 <hal_tcxo_init+0x24>
  a2b558:	00a05737          	lui	a4,0xa05
  a2b55c:	74872683          	lw	a3,1864(a4) # a05748 <g_tcxo_regs>
  a2b560:	429c                	lw	a5,0(a3)
  a2b562:	0047e793          	ori	a5,a5,4
  a2b566:	c29c                	sw	a5,0(a3)
  a2b568:	74872703          	lw	a4,1864(a4)
  a2b56c:	431c                	lw	a5,0(a4)
  a2b56e:	0027e793          	ori	a5,a5,2
  a2b572:	c31c                	sw	a5,0(a4)
  a2b574:	8014                	popret	{ra},16
  a2b576:	8000 1180 051f      	l.li	a0,0x80001180
  a2b57c:	bfe5                	j	a2b574 <hal_tcxo_init+0x22>

00a2b57e <hal_tcxo_get>:
  a2b57e:	00a057b7          	lui	a5,0xa05
  a2b582:	7487a683          	lw	a3,1864(a5) # a05748 <g_tcxo_regs>
  a2b586:	4605                	li	a2,1
  a2b588:	4298                	lw	a4,0(a3)
  a2b58a:	00176713          	ori	a4,a4,1
  a2b58e:	c298                	sw	a4,0(a3)
  a2b590:	56fd                	li	a3,-1
  a2b592:	873e                	mv	a4,a5
  a2b594:	74872783          	lw	a5,1864(a4)
  a2b598:	439c                	lw	a5,0(a5)
  a2b59a:	8391                	srli	a5,a5,0x4
  a2b59c:	8b85                	andi	a5,a5,1
  a2b59e:	00c78763          	beq	a5,a2,a2b5ac <hal_tcxo_get+0x2e>
  a2b5a2:	16fd                	addi	a3,a3,-1
  a2b5a4:	fae5                	bnez	a3,a2b594 <hal_tcxo_get+0x16>
  a2b5a6:	4501                	li	a0,0
  a2b5a8:	4581                	li	a1,0
  a2b5aa:	8082                	ret
  a2b5ac:	a00d                	j	a2b5ce <hal_tcxo_reg_count_get>

00a2b5ae <hal_tcxo_v150_regs_init>:
  a2b5ae:	8018                	push	{ra},-16
  a2b5b0:	495000ef          	jal	ra,a2c244 <tcxo_porting_base_addr_get>
  a2b5b4:	c909                	beqz	a0,a2b5c6 <hal_tcxo_v150_regs_init+0x18>
  a2b5b6:	48f000ef          	jal	ra,a2c244 <tcxo_porting_base_addr_get>
  a2b5ba:	00a0 5748 079f      	l.li	a5,0xa05748
  a2b5c0:	c388                	sw	a0,0(a5)
  a2b5c2:	4501                	li	a0,0
  a2b5c4:	8014                	popret	{ra},16
  a2b5c6:	8000 1180 051f      	l.li	a0,0x80001180
  a2b5cc:	bfe5                	j	a2b5c4 <hal_tcxo_v150_regs_init+0x16>

00a2b5ce <hal_tcxo_reg_count_get>:
  a2b5ce:	00a0 5748 079f      	l.li	a5,0xa05748
  a2b5d4:	439c                	lw	a5,0(a5)
  a2b5d6:	478c                	lw	a1,8(a5)
  a2b5d8:	43c8                	lw	a0,4(a5)
  a2b5da:	8082                	ret

00a2b5dc <hal_uart_register_funcs>:
  a2b5dc:	030575bb          	bgeui	a0,3,a2b5f2 <hal_uart_register_funcs+0x16>
  a2b5e0:	c989                	beqz	a1,a2b5f2 <hal_uart_register_funcs+0x16>
  a2b5e2:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b5e8:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b5ec:	c10c                	sw	a1,0(a0)
  a2b5ee:	4501                	li	a0,0
  a2b5f0:	8082                	ret
  a2b5f2:	80000537          	lui	a0,0x80000
  a2b5f6:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2b5f8:	8082                	ret

00a2b5fa <hal_uart_init>:
  a2b5fa:	8228                	push	{ra,s0},-48
  a2b5fc:	842a                	mv	s0,a0
  a2b5fe:	ce2e                	sw	a1,28(sp)
  a2b600:	cc32                	sw	a2,24(sp)
  a2b602:	ca36                	sw	a3,20(sp)
  a2b604:	c83a                	sw	a4,16(sp)
  a2b606:	c63e                	sw	a5,12(sp)
  a2b608:	3af000ef          	jal	ra,a2c1b6 <uart_port_register_hal_funcs>
  a2b60c:	00a0 574c 051f      	l.li	a0,0xa0574c
  a2b612:	0485051b          	addshf	a0,a0,s0,sll,2
  a2b616:	4108                	lw	a0,0(a0)
  a2b618:	cd01                	beqz	a0,a2b630 <hal_uart_init+0x36>
  a2b61a:	46d2                	lw	a3,20(sp)
  a2b61c:	ca91                	beqz	a3,a2b630 <hal_uart_init+0x36>
  a2b61e:	00052303          	lw	t1,0(a0)
  a2b622:	47b2                	lw	a5,12(sp)
  a2b624:	4742                	lw	a4,16(sp)
  a2b626:	4662                	lw	a2,24(sp)
  a2b628:	45f2                	lw	a1,28(sp)
  a2b62a:	8522                	mv	a0,s0
  a2b62c:	8220                	pop	{ra,s0},48
  a2b62e:	8302                	jr	t1
  a2b630:	8000 1047 051f      	l.li	a0,0x80001047
  a2b636:	8224                	popret	{ra,s0},48

00a2b638 <hal_uart_write>:
  a2b638:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b63e:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b642:	439c                	lw	a5,0(a5)
  a2b644:	00c7a303          	lw	t1,12(a5)
  a2b648:	8302                	jr	t1

00a2b64a <hal_uart_read>:
  a2b64a:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b650:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b654:	439c                	lw	a5,0(a5)
  a2b656:	0107a303          	lw	t1,16(a5)
  a2b65a:	8302                	jr	t1

00a2b65c <hal_uart_ctrl>:
  a2b65c:	00a0 574c 079f      	l.li	a5,0xa0574c
  a2b662:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b666:	439c                	lw	a5,0(a5)
  a2b668:	c781                	beqz	a5,a2b670 <hal_uart_ctrl+0x14>
  a2b66a:	0087a303          	lw	t1,8(a5)
  a2b66e:	8302                	jr	t1
  a2b670:	8000 1047 051f      	l.li	a0,0x80001047
  a2b676:	8082                	ret

00a2b678 <hal_uart_v151_ctrl_get_rxfifo_passnum>:
  a2b678:	c609                	beqz	a2,a2b682 <hal_uart_v151_ctrl_get_rxfifo_passnum+0xa>
  a2b67a:	57fd                	li	a5,-1
  a2b67c:	c21c                	sw	a5,0(a2)
  a2b67e:	4501                	li	a0,0
  a2b680:	8082                	ret
  a2b682:	80000537          	lui	a0,0x80000
  a2b686:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2b688:	8082                	ret

00a2b68a <hal_uart_v151_get_uart_rxfifo_threshold>:
  a2b68a:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b690:	953e                	add	a0,a0,a5
  a2b692:	2114                	lbu	a3,0(a0)
  a2b694:	03e00713          	li	a4,62
  a2b698:	0306f3bb          	bgeui	a3,3,a2b6a6 <hal_uart_v151_get_uart_rxfifo_threshold+0x1c>
  a2b69c:	00a3 28c8 079f      	l.li	a5,0xa328c8
  a2b6a2:	97b6                	add	a5,a5,a3
  a2b6a4:	2398                	lbu	a4,0(a5)
  a2b6a6:	c218                	sw	a4,0(a2)
  a2b6a8:	4501                	li	a0,0
  a2b6aa:	8082                	ret

00a2b6ac <hal_uart_v151_deinit>:
  a2b6ac:	00a0 5758 079f      	l.li	a5,0xa05758
  a2b6b2:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6b6:	00052023          	sw	zero,0(a0)
  a2b6ba:	4501                	li	a0,0
  a2b6bc:	8082                	ret

00a2b6be <hal_uart_set_diven>:
  a2b6be:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6c4:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6c8:	4118                	lw	a4,0(a0)
  a2b6ca:	8985                	andi	a1,a1,1
  a2b6cc:	471c                	lw	a5,8(a4)
  a2b6ce:	9bf9                	andi	a5,a5,-2
  a2b6d0:	8fcd                	or	a5,a5,a1
  a2b6d2:	c71c                	sw	a5,8(a4)
  a2b6d4:	8082                	ret

00a2b6d6 <hal_uart_is_tx_fifo_full>:
  a2b6d6:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6dc:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6e0:	411c                	lw	a5,0(a0)
  a2b6e2:	4501                	li	a0,0
  a2b6e4:	43fc                	lw	a5,68(a5)
  a2b6e6:	8b85                	andi	a5,a5,1
  a2b6e8:	a21c                	sb	a5,0(a2)
  a2b6ea:	8082                	ret

00a2b6ec <hal_uart_is_tx_fifo_empty>:
  a2b6ec:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b6f2:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b6f6:	411c                	lw	a5,0(a0)
  a2b6f8:	4501                	li	a0,0
  a2b6fa:	43fc                	lw	a5,68(a5)
  a2b6fc:	8385                	srli	a5,a5,0x1
  a2b6fe:	8b85                	andi	a5,a5,1
  a2b700:	a21c                	sb	a5,0(a2)
  a2b702:	8082                	ret

00a2b704 <hal_uart_is_busy>:
  a2b704:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b70a:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b70e:	411c                	lw	a5,0(a0)
  a2b710:	4501                	li	a0,0
  a2b712:	43fc                	lw	a5,68(a5)
  a2b714:	9f81                	uxtb	a5
  a2b716:	8385                	srli	a5,a5,0x1
  a2b718:	0017c793          	xori	a5,a5,1
  a2b71c:	8b85                	andi	a5,a5,1
  a2b71e:	a21c                	sb	a5,0(a2)
  a2b720:	8082                	ret

00a2b722 <hal_uart_is_rx_fifo_empty>:
  a2b722:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b728:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b72c:	411c                	lw	a5,0(a0)
  a2b72e:	4501                	li	a0,0
  a2b730:	43fc                	lw	a5,68(a5)
  a2b732:	838d                	srli	a5,a5,0x3
  a2b734:	8b85                	andi	a5,a5,1
  a2b736:	a21c                	sb	a5,0(a2)
  a2b738:	8082                	ret

00a2b73a <hal_uart_v151_write>:
  a2b73a:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b740:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b744:	e219                	bnez	a2,a2b74a <hal_uart_v151_write+0x10>
  a2b746:	4501                	li	a0,0
  a2b748:	8082                	ret
  a2b74a:	4118                	lw	a4,0(a0)
  a2b74c:	437c                	lw	a5,68(a4)
  a2b74e:	8b85                	andi	a5,a5,1
  a2b750:	fbf5                	bnez	a5,a2b744 <hal_uart_v151_write+0xa>
  a2b752:	0585                	addi	a1,a1,1
  a2b754:	fff5c783          	lbu	a5,-1(a1)
  a2b758:	167d                	addi	a2,a2,-1 # 44112fff <_gp_+0x436de537>
  a2b75a:	9e21                	uxth	a2
  a2b75c:	c35c                	sw	a5,4(a4)
  a2b75e:	b7dd                	j	a2b744 <hal_uart_v151_write+0xa>

00a2b760 <hal_uart_v151_read>:
  a2b760:	00a0 5768 071f      	l.li	a4,0xa05768
  a2b766:	4781                	li	a5,0
  a2b768:	04a7051b          	addshf	a0,a4,a0,sll,2
  a2b76c:	00c7c463          	blt	a5,a2,a2b774 <hal_uart_v151_read+0x14>
  a2b770:	853e                	mv	a0,a5
  a2b772:	8082                	ret
  a2b774:	4114                	lw	a3,0(a0)
  a2b776:	42f8                	lw	a4,68(a3)
  a2b778:	8b21                	andi	a4,a4,8
  a2b77a:	fb7d                	bnez	a4,a2b770 <hal_uart_v151_read+0x10>
  a2b77c:	42d4                	lw	a3,4(a3)
  a2b77e:	00f58733          	add	a4,a1,a5
  a2b782:	0785                	addi	a5,a5,1
  a2b784:	a314                	sb	a3,0(a4)
  a2b786:	b7dd                	j	a2b76c <hal_uart_v151_read+0xc>

00a2b788 <hal_uart_v151_ctrl>:
  a2b788:	00a3 28cc 079f      	l.li	a5,0xa328cc
  a2b78e:	04b7879b          	addshf	a5,a5,a1,sll,2
  a2b792:	0007a303          	lw	t1,0(a5)
  a2b796:	00030363          	beqz	t1,a2b79c <hal_uart_v151_ctrl+0x14>
  a2b79a:	8302                	jr	t1
  a2b79c:	8000 1047 051f      	l.li	a0,0x80001047
  a2b7a2:	8082                	ret

00a2b7a4 <hal_uart_init_fifo>:
  a2b7a4:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b7aa:	04a7879b          	addshf	a5,a5,a0,sll,2
  a2b7ae:	4398                	lw	a4,0(a5)
  a2b7b0:	0035f693          	andi	a3,a1,3
  a2b7b4:	535c                	lw	a5,36(a4)
  a2b7b6:	9bcd                	andi	a5,a5,-13
  a2b7b8:	04d7a79b          	orshf	a5,a5,a3,sll,2
  a2b7bc:	9bf1                	andi	a5,a5,-4
  a2b7be:	00367693          	andi	a3,a2,3
  a2b7c2:	8fd5                	or	a5,a5,a3
  a2b7c4:	0107e793          	ori	a5,a5,16
  a2b7c8:	d35c                	sw	a5,36(a4)
  a2b7ca:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b7d0:	97aa                	add	a5,a5,a0
  a2b7d2:	a38c                	sb	a1,0(a5)
  a2b7d4:	00a0 5778 079f      	l.li	a5,0xa05778
  a2b7da:	953e                	add	a0,a0,a5
  a2b7dc:	a110                	sb	a2,0(a0)
  a2b7de:	8082                	ret

00a2b7e0 <hal_uart_v151_ctrl_set_txfifo_int_level>:
  a2b7e0:	0406633b          	bltui	a2,4,a2b7ec <hal_uart_v151_ctrl_set_txfifo_int_level+0xc>
  a2b7e4:	80000537          	lui	a0,0x80000
  a2b7e8:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2b7ea:	8082                	ret
  a2b7ec:	8018                	push	{ra},-16
  a2b7ee:	00a0 5774 079f      	l.li	a5,0xa05774
  a2b7f4:	97aa                	add	a5,a5,a0
  a2b7f6:	238c                	lbu	a1,0(a5)
  a2b7f8:	9e01                	uxtb	a2
  a2b7fa:	376d                	jal	ra,a2b7a4 <hal_uart_init_fifo>
  a2b7fc:	4501                	li	a0,0
  a2b7fe:	8014                	popret	{ra},16

00a2b800 <hal_uart_v151_ctrl_set_rxfifo_int_level>:
  a2b800:	0406633b          	bltui	a2,4,a2b80c <hal_uart_v151_ctrl_set_rxfifo_int_level+0xc>
  a2b804:	80000537          	lui	a0,0x80000
  a2b808:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2b80a:	8082                	ret
  a2b80c:	8018                	push	{ra},-16
  a2b80e:	00a0 5778 079f      	l.li	a5,0xa05778
  a2b814:	97aa                	add	a5,a5,a0
  a2b816:	85b2                	mv	a1,a2
  a2b818:	2390                	lbu	a2,0(a5)
  a2b81a:	9d81                	uxtb	a1
  a2b81c:	3761                	jal	ra,a2b7a4 <hal_uart_init_fifo>
  a2b81e:	4501                	li	a0,0
  a2b820:	8014                	popret	{ra},16

00a2b822 <hal_uart_set_baud_rate>:
  a2b822:	c1b1                	beqz	a1,a2b866 <hal_uart_set_baud_rate+0x44>
  a2b824:	8048                	push	{ra,s0-s2},-16
  a2b826:	0592                	slli	a1,a1,0x4
  a2b828:	02b67433          	remu	s0,a2,a1
  a2b82c:	892a                	mv	s2,a0
  a2b82e:	02b654b3          	divu	s1,a2,a1
  a2b832:	041a                	slli	s0,s0,0x6
  a2b834:	02b45433          	divu	s0,s0,a1
  a2b838:	4585                	li	a1,1
  a2b83a:	e85ff0ef          	jal	ra,a2b6be <hal_uart_set_diven>
  a2b83e:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b844:	0527879b          	addshf	a5,a5,s2,sll,2
  a2b848:	439c                	lw	a5,0(a5)
  a2b84a:	0ff4f713          	andi	a4,s1,255
  a2b84e:	9ca1                	uxth	s1
  a2b850:	cb98                	sw	a4,16(a5)
  a2b852:	80a1                	srli	s1,s1,0x8
  a2b854:	c7c4                	sw	s1,12(a5)
  a2b856:	4581                	li	a1,0
  a2b858:	854a                	mv	a0,s2
  a2b85a:	03f47413          	andi	s0,s0,63
  a2b85e:	cbc0                	sw	s0,20(a5)
  a2b860:	8040                	pop	{ra,s0-s2},16
  a2b862:	e5dff06f          	j	a2b6be <hal_uart_set_diven>
  a2b866:	8082                	ret

00a2b868 <hal_uart_set_data_bits>:
  a2b868:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b86e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b872:	4118                	lw	a4,0(a0)
  a2b874:	898d                	andi	a1,a1,3
  a2b876:	471c                	lw	a5,8(a4)
  a2b878:	9bcd                	andi	a5,a5,-13
  a2b87a:	04b7a79b          	orshf	a5,a5,a1,sll,2
  a2b87e:	c71c                	sw	a5,8(a4)
  a2b880:	8082                	ret

00a2b882 <hal_uart_set_stop_bits>:
  a2b882:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b888:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b88c:	4118                	lw	a4,0(a0)
  a2b88e:	8985                	andi	a1,a1,1
  a2b890:	471c                	lw	a5,8(a4)
  a2b892:	f7f7f793          	andi	a5,a5,-129
  a2b896:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a2b89a:	c71c                	sw	a5,8(a4)
  a2b89c:	8082                	ret

00a2b89e <hal_uart_auto_flow_ctl_en>:
  a2b89e:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b8a4:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b8a8:	4118                	lw	a4,0(a0)
  a2b8aa:	8985                	andi	a1,a1,1
  a2b8ac:	575c                	lw	a5,44(a4)
  a2b8ae:	9be9                	andi	a5,a5,-6
  a2b8b0:	8fcd                	or	a5,a5,a1
  a2b8b2:	04b7a59b          	orshf	a1,a5,a1,sll,2
  a2b8b6:	d74c                	sw	a1,44(a4)
  a2b8b8:	8082                	ret

00a2b8ba <hal_uart_enable_interrupt>:
  a2b8ba:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b8c0:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b8c4:	4114                	lw	a3,0(a0)
  a2b8c6:	4e9c                	lw	a5,24(a3)
  a2b8c8:	0e05f73b          	bgeui	a1,14,a2b8e4 <hal_uart_enable_interrupt+0x2a>
  a2b8cc:	00a33737          	lui	a4,0xa33
  a2b8d0:	89070713          	addi	a4,a4,-1904 # a32890 <g_sm3_ival+0x34>
  a2b8d4:	04b7059b          	addshf	a1,a4,a1,sll,2
  a2b8d8:	4198                	lw	a4,0(a1)
  a2b8da:	8702                	jr	a4
  a2b8dc:	8a05                	andi	a2,a2,1
  a2b8de:	9bdd                	andi	a5,a5,-9
  a2b8e0:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2b8e4:	ce9c                	sw	a5,24(a3)
  a2b8e6:	8082                	ret
  a2b8e8:	8a05                	andi	a2,a2,1
  a2b8ea:	9bed                	andi	a5,a5,-5
  a2b8ec:	04c7a79b          	orshf	a5,a5,a2,sll,2
  a2b8f0:	bfd5                	j	a2b8e4 <hal_uart_enable_interrupt+0x2a>
  a2b8f2:	8a05                	andi	a2,a2,1
  a2b8f4:	9bf9                	andi	a5,a5,-2
  a2b8f6:	8fd1                	or	a5,a5,a2
  a2b8f8:	b7f5                	j	a2b8e4 <hal_uart_enable_interrupt+0x2a>
  a2b8fa:	8a05                	andi	a2,a2,1
  a2b8fc:	9bf5                	andi	a5,a5,-3
  a2b8fe:	02c7a79b          	orshf	a5,a5,a2,sll,1
  a2b902:	b7cd                	j	a2b8e4 <hal_uart_enable_interrupt+0x2a>

00a2b904 <hal_uart_en_para_err_int>:
  a2b904:	8018                	push	{ra},-16
  a2b906:	00c03633          	snez	a2,a2
  a2b90a:	45b5                	li	a1,13
  a2b90c:	377d                	jal	ra,a2b8ba <hal_uart_enable_interrupt>
  a2b90e:	4501                	li	a0,0
  a2b910:	8014                	popret	{ra},16

00a2b912 <hal_uart_en_idle_int>:
  a2b912:	8018                	push	{ra},-16
  a2b914:	00c03633          	snez	a2,a2
  a2b918:	45b1                	li	a1,12
  a2b91a:	3745                	jal	ra,a2b8ba <hal_uart_enable_interrupt>
  a2b91c:	4501                	li	a0,0
  a2b91e:	8014                	popret	{ra},16

00a2b920 <hal_uart_en_rx_int>:
  a2b920:	8018                	push	{ra},-16
  a2b922:	00c03633          	snez	a2,a2
  a2b926:	4591                	li	a1,4
  a2b928:	3f49                	jal	ra,a2b8ba <hal_uart_enable_interrupt>
  a2b92a:	4501                	li	a0,0
  a2b92c:	8014                	popret	{ra},16

00a2b92e <hal_uart_en_tx_int>:
  a2b92e:	8018                	push	{ra},-16
  a2b930:	00c03633          	snez	a2,a2
  a2b934:	4589                	li	a1,2
  a2b936:	3751                	jal	ra,a2b8ba <hal_uart_enable_interrupt>
  a2b938:	4501                	li	a0,0
  a2b93a:	8014                	popret	{ra},16

00a2b93c <hal_uart_check_en>:
  a2b93c:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b942:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b946:	4118                	lw	a4,0(a0)
  a2b948:	8985                	andi	a1,a1,1
  a2b94a:	471c                	lw	a5,8(a4)
  a2b94c:	fdf7f793          	andi	a5,a5,-33
  a2b950:	0ab7a79b          	orshf	a5,a5,a1,sll,5
  a2b954:	c71c                	sw	a5,8(a4)
  a2b956:	8082                	ret

00a2b958 <hal_uart_parity_en>:
  a2b958:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b95e:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b962:	4118                	lw	a4,0(a0)
  a2b964:	8985                	andi	a1,a1,1
  a2b966:	471c                	lw	a5,8(a4)
  a2b968:	9bbd                	andi	a5,a5,-17
  a2b96a:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a2b96e:	c71c                	sw	a5,8(a4)
  a2b970:	8082                	ret

00a2b972 <hal_uart_set_parity>:
  a2b972:	8028                	push	{ra,s0},-16
  a2b974:	842a                	mv	s0,a0
  a2b976:	0105873b          	beqi	a1,1,a2b992 <hal_uart_set_parity+0x20>
  a2b97a:	c581                	beqz	a1,a2b982 <hal_uart_set_parity+0x10>
  a2b97c:	020582bb          	beqi	a1,2,a2b986 <hal_uart_set_parity+0x14>
  a2b980:	8024                	popret	{ra,s0},16
  a2b982:	8020                	pop	{ra,s0},16
  a2b984:	bf65                	j	a2b93c <hal_uart_check_en>
  a2b986:	4585                	li	a1,1
  a2b988:	3f55                	jal	ra,a2b93c <hal_uart_check_en>
  a2b98a:	4585                	li	a1,1
  a2b98c:	8522                	mv	a0,s0
  a2b98e:	8020                	pop	{ra,s0},16
  a2b990:	b7e1                	j	a2b958 <hal_uart_parity_en>
  a2b992:	376d                	jal	ra,a2b93c <hal_uart_check_en>
  a2b994:	4581                	li	a1,0
  a2b996:	bfdd                	j	a2b98c <hal_uart_set_parity+0x1a>

00a2b998 <hal_uart_v151_ctrl_set_attr>:
  a2b998:	8138                	push	{ra,s0-s1},-32
  a2b99a:	224c                	lbu	a1,4(a2)
  a2b99c:	84b2                	mv	s1,a2
  a2b99e:	842a                	mv	s0,a0
  a2b9a0:	ec9ff0ef          	jal	ra,a2b868 <hal_uart_set_data_bits>
  a2b9a4:	30cc                	lbu	a1,5(s1)
  a2b9a6:	8522                	mv	a0,s0
  a2b9a8:	3de9                	jal	ra,a2b882 <hal_uart_set_stop_bits>
  a2b9aa:	20ec                	lbu	a1,6(s1)
  a2b9ac:	8522                	mv	a0,s0
  a2b9ae:	37d1                	jal	ra,a2b972 <hal_uart_set_parity>
  a2b9b0:	408c                	lw	a1,0(s1)
  a2b9b2:	8522                	mv	a0,s0
  a2b9b4:	c62e                	sw	a1,12(sp)
  a2b9b6:	01d000ef          	jal	ra,a2c1d2 <uart_port_get_clock_value>
  a2b9ba:	45b2                	lw	a1,12(sp)
  a2b9bc:	862a                	mv	a2,a0
  a2b9be:	8522                	mv	a0,s0
  a2b9c0:	e63ff0ef          	jal	ra,a2b822 <hal_uart_set_baud_rate>
  a2b9c4:	4501                	li	a0,0
  a2b9c6:	8134                	popret	{ra,s0-s1},32

00a2b9c8 <hal_uart_tx_pause_en>:
  a2b9c8:	00a0 5768 079f      	l.li	a5,0xa05768
  a2b9ce:	04a7851b          	addshf	a0,a5,a0,sll,2
  a2b9d2:	4118                	lw	a4,0(a0)
  a2b9d4:	8985                	andi	a1,a1,1
  a2b9d6:	4b3c                	lw	a5,80(a4)
  a2b9d8:	9bf9                	andi	a5,a5,-2
  a2b9da:	8fcd                	or	a5,a5,a1
  a2b9dc:	cb3c                	sw	a5,80(a4)
  a2b9de:	8082                	ret

00a2b9e0 <hal_uart_v151_init>:
  a2b9e0:	8168                	push	{ra,s0-s4},-48
  a2b9e2:	84b6                	mv	s1,a3
  a2b9e4:	00251913          	slli	s2,a0,0x2
  a2b9e8:	00a3 2920 069f      	l.li	a3,0xa32920
  a2b9ee:	8a2e                	mv	s4,a1
  a2b9f0:	012685b3          	add	a1,a3,s2
  a2b9f4:	418c                	lw	a1,0(a1)
  a2b9f6:	4294                	lw	a3,0(a3)
  a2b9f8:	89ba                	mv	s3,a4
  a2b9fa:	00a0 5768 071f      	l.li	a4,0xa05768
  a2ba00:	01270633          	add	a2,a4,s2
  a2ba04:	c20c                	sw	a1,0(a2)
  a2ba06:	c314                	sw	a3,0(a4)
  a2ba08:	20cc                	lbu	a1,4(s1)
  a2ba0a:	00a0 5764 071f      	l.li	a4,0xa05764
  a2ba10:	972a                	add	a4,a4,a0
  a2ba12:	c63e                	sw	a5,12(sp)
  a2ba14:	00070023          	sb	zero,0(a4)
  a2ba18:	842a                	mv	s0,a0
  a2ba1a:	e4fff0ef          	jal	ra,a2b868 <hal_uart_set_data_bits>
  a2ba1e:	30cc                	lbu	a1,5(s1)
  a2ba20:	8522                	mv	a0,s0
  a2ba22:	e61ff0ef          	jal	ra,a2b882 <hal_uart_set_stop_bits>
  a2ba26:	20ec                	lbu	a1,6(s1)
  a2ba28:	8522                	mv	a0,s0
  a2ba2a:	37a1                	jal	ra,a2b972 <hal_uart_set_parity>
  a2ba2c:	4581                	li	a1,0
  a2ba2e:	8522                	mv	a0,s0
  a2ba30:	3f61                	jal	ra,a2b9c8 <hal_uart_tx_pause_en>
  a2ba32:	408c                	lw	a1,0(s1)
  a2ba34:	8522                	mv	a0,s0
  a2ba36:	c42e                	sw	a1,8(sp)
  a2ba38:	79a000ef          	jal	ra,a2c1d2 <uart_port_get_clock_value>
  a2ba3c:	45a2                	lw	a1,8(sp)
  a2ba3e:	862a                	mv	a2,a0
  a2ba40:	8522                	mv	a0,s0
  a2ba42:	de1ff0ef          	jal	ra,a2b822 <hal_uart_set_baud_rate>
  a2ba46:	4529                	li	a0,10
  a2ba48:	965fe0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2ba4c:	47b2                	lw	a5,12(sp)
  a2ba4e:	c78d                	beqz	a5,a2ba78 <hal_uart_v151_init+0x98>
  a2ba50:	3390                	lbu	a2,1(a5)
  a2ba52:	33ac                	lbu	a1,3(a5)
  a2ba54:	8522                	mv	a0,s0
  a2ba56:	d4fff0ef          	jal	ra,a2b7a4 <hal_uart_init_fifo>
  a2ba5a:	00a0 5758 079f      	l.li	a5,0xa05758
  a2ba60:	97ca                	add	a5,a5,s2
  a2ba62:	0147a023          	sw	s4,0(a5)
  a2ba66:	4585                	li	a1,1
  a2ba68:	030981bb          	beqi	s3,3,a2ba6e <hal_uart_v151_init+0x8e>
  a2ba6c:	4581                	li	a1,0
  a2ba6e:	8522                	mv	a0,s0
  a2ba70:	e2fff0ef          	jal	ra,a2b89e <hal_uart_auto_flow_ctl_en>
  a2ba74:	4501                	li	a0,0
  a2ba76:	8164                	popret	{ra,s0-s4},48
  a2ba78:	4605                	li	a2,1
  a2ba7a:	4585                	li	a1,1
  a2ba7c:	bfe1                	j	a2ba54 <hal_uart_v151_init+0x74>

00a2ba7e <hal_uart_v151_funcs_get>:
  a2ba7e:	00a3 419c 051f      	l.li	a0,0xa3419c
  a2ba84:	8082                	ret

00a2ba86 <hal_watchdog_register_funcs>:
  a2ba86:	c519                	beqz	a0,a2ba94 <hal_watchdog_register_funcs+0xe>
  a2ba88:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2ba8e:	c388                	sw	a0,0(a5)
  a2ba90:	4501                	li	a0,0
  a2ba92:	8082                	ret
  a2ba94:	80000537          	lui	a0,0x80000
  a2ba98:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2ba9a:	8082                	ret

00a2ba9c <hal_watchdog_unregister_funcs>:
  a2ba9c:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2baa2:	0007a023          	sw	zero,0(a5)
  a2baa6:	4501                	li	a0,0
  a2baa8:	8082                	ret

00a2baaa <hal_watchdog_get_funcs>:
  a2baaa:	00a0 577c 079f      	l.li	a5,0xa0577c
  a2bab0:	4388                	lw	a0,0(a5)
  a2bab2:	8082                	ret

00a2bab4 <hal_watchdog_regs_init>:
  a2bab4:	00a347b7          	lui	a5,0xa34
  a2bab8:	2347a783          	lw	a5,564(a5) # a34234 <g_watchdog_base_addr>
  a2babc:	c799                	beqz	a5,a2baca <hal_watchdog_regs_init+0x16>
  a2babe:	00a0 5780 071f      	l.li	a4,0xa05780
  a2bac4:	c31c                	sw	a5,0(a4)
  a2bac6:	4501                	li	a0,0
  a2bac8:	8082                	ret
  a2baca:	8000 1200 051f      	l.li	a0,0x80001200
  a2bad0:	8082                	ret

00a2bad2 <hal_watchdog_regs_deinit>:
  a2bad2:	00a0 5780 079f      	l.li	a5,0xa05780
  a2bad8:	0007a023          	sw	zero,0(a5)
  a2badc:	8082                	ret

00a2bade <hal_watchdog_v151_kick>:
  a2bade:	00a057b7          	lui	a5,0xa05
  a2bae2:	7807a783          	lw	a5,1920(a5) # a05780 <g_watchdog_regs>
  a2bae6:	5a5a 5a5a 071f      	l.li	a4,0x5a5a5a5a
  a2baec:	c798                	sw	a4,8(a5)
  a2baee:	8082                	ret

00a2baf0 <hal_watchdog_v151_get_attr>:
  a2baf0:	00a0 5788 079f      	l.li	a5,0xa05788
  a2baf6:	4388                	lw	a0,0(a5)
  a2baf8:	8082                	ret

00a2bafa <hal_register_watchdog_v151_callback>:
  a2bafa:	00a0 5784 079f      	l.li	a5,0xa05784
  a2bb00:	c388                	sw	a0,0(a5)
  a2bb02:	8082                	ret

00a2bb04 <hal_watchdog_v151_deinit>:
  a2bb04:	b7f9                	j	a2bad2 <hal_watchdog_regs_deinit>

00a2bb06 <hal_watchdog_v151_init>:
  a2bb06:	b77d                	j	a2bab4 <hal_watchdog_regs_init>

00a2bb08 <hal_watchdog_v151_get_left_time>:
  a2bb08:	8038                	push	{ra,s0-s1},-16
  a2bb0a:	00a057b7          	lui	a5,0xa05
  a2bb0e:	7807a683          	lw	a3,1920(a5) # a05780 <g_watchdog_regs>
  a2bb12:	7d100493          	li	s1,2001
  a2bb16:	843e                	mv	s0,a5
  a2bb18:	5698                	lw	a4,40(a3)
  a2bb1a:	00176713          	ori	a4,a4,1
  a2bb1e:	d698                	sw	a4,40(a3)
  a2bb20:	78042703          	lw	a4,1920(s0)
  a2bb24:	571c                	lw	a5,40(a4)
  a2bb26:	8385                	srli	a5,a5,0x1
  a2bb28:	8b85                	andi	a5,a5,1
  a2bb2a:	cf99                	beqz	a5,a2bb48 <hal_watchdog_v151_get_left_time+0x40>
  a2bb2c:	4b40                	lw	s0,20(a4)
  a2bb2e:	75a000ef          	jal	ra,a2c288 <watchdog_port_get_clock>
  a2bb32:	3e800793          	li	a5,1000
  a2bb36:	862a                	mv	a2,a0
  a2bb38:	02f435b3          	mulhu	a1,s0,a5
  a2bb3c:	4681                	li	a3,0
  a2bb3e:	02f40533          	mul	a0,s0,a5
  a2bb42:	a5bfc0ef          	jal	ra,a2859c <__udivdi3>
  a2bb46:	8034                	popret	{ra,s0-s1},16
  a2bb48:	14fd                	addi	s1,s1,-1
  a2bb4a:	c489                	beqz	s1,a2bb54 <hal_watchdog_v151_get_left_time+0x4c>
  a2bb4c:	4505                	li	a0,1
  a2bb4e:	85ffe0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2bb52:	b7f9                	j	a2bb20 <hal_watchdog_v151_get_left_time+0x18>
  a2bb54:	4501                	li	a0,0
  a2bb56:	bfc5                	j	a2bb46 <hal_watchdog_v151_get_left_time+0x3e>

00a2bb58 <hal_watchdog_v151_clear_interrupt>:
  a2bb58:	00a057b7          	lui	a5,0xa05
  a2bb5c:	7807a703          	lw	a4,1920(a5) # a05780 <g_watchdog_regs>
  a2bb60:	475c                	lw	a5,12(a4)
  a2bb62:	0017e793          	ori	a5,a5,1
  a2bb66:	c75c                	sw	a5,12(a4)
  a2bb68:	8082                	ret

00a2bb6a <hal_watchdog_v151_disable>:
  a2bb6a:	8018                	push	{ra},-16
  a2bb6c:	37f5                	jal	ra,a2bb58 <hal_watchdog_v151_clear_interrupt>
  a2bb6e:	00a057b7          	lui	a5,0xa05
  a2bb72:	7807a703          	lw	a4,1920(a5) # a05780 <g_watchdog_regs>
  a2bb76:	4b1c                	lw	a5,16(a4)
  a2bb78:	9bf9                	andi	a5,a5,-2
  a2bb7a:	cb1c                	sw	a5,16(a4)
  a2bb7c:	8014                	popret	{ra},16

00a2bb7e <hal_watchdog_v151_set_attr>:
  a2bb7e:	8048                	push	{ra,s0-s2},-16
  a2bb80:	84aa                	mv	s1,a0
  a2bb82:	706000ef          	jal	ra,a2c288 <watchdog_port_get_clock>
  a2bb86:	e489                	bnez	s1,a2bb90 <hal_watchdog_v151_set_attr+0x12>
  a2bb88:	80000537          	lui	a0,0x80000
  a2bb8c:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2bb8e:	8044                	popret	{ra,s0-s2},16
  a2bb90:	02950433          	mul	s0,a0,s1
  a2bb94:	02945933          	divu	s2,s0,s1
  a2bb98:	6f0000ef          	jal	ra,a2c288 <watchdog_port_get_clock>
  a2bb9c:	fea916e3          	bne	s2,a0,a2bb88 <hal_watchdog_v151_set_attr+0xa>
  a2bba0:	fff46a3b          	bltui	s0,255,a2bb88 <hal_watchdog_v151_set_attr+0xa>
  a2bba4:	00a0 5788 079f      	l.li	a5,0xa05788
  a2bbaa:	00a05937          	lui	s2,0xa05
  a2bbae:	c384                	sw	s1,0(a5)
  a2bbb0:	78092783          	lw	a5,1920(s2) # a05780 <g_watchdog_regs>
  a2bbb4:	5a5a 5a5a 049f      	l.li	s1,0x5a5a5a5a
  a2bbba:	f0047413          	andi	s0,s0,-256
  a2bbbe:	c384                	sw	s1,0(a5)
  a2bbc0:	376d                	jal	ra,a2bb6a <hal_watchdog_v151_disable>
  a2bbc2:	78092783          	lw	a5,1920(s2)
  a2bbc6:	4b98                	lw	a4,16(a5)
  a2bbc8:	00476713          	ori	a4,a4,4
  a2bbcc:	cb98                	sw	a4,16(a5)
  a2bbce:	4b98                	lw	a4,16(a5)
  a2bbd0:	fbf77713          	andi	a4,a4,-65
  a2bbd4:	cb98                	sw	a4,16(a5)
  a2bbd6:	4b98                	lw	a4,16(a5)
  a2bbd8:	03876713          	ori	a4,a4,56
  a2bbdc:	cb98                	sw	a4,16(a5)
  a2bbde:	43c8                	lw	a0,4(a5)
  a2bbe0:	0ff57513          	andi	a0,a0,255
  a2bbe4:	8c49                	or	s0,s0,a0
  a2bbe6:	c3c0                	sw	s0,4(a5)
  a2bbe8:	c784                	sw	s1,8(a5)
  a2bbea:	4501                	li	a0,0
  a2bbec:	b74d                	j	a2bb8e <hal_watchdog_v151_set_attr+0x10>

00a2bbee <hal_watchdog_v151_enable>:
  a2bbee:	8128                	push	{ra,s0},-32
  a2bbf0:	c62a                	sw	a0,12(sp)
  a2bbf2:	3fa5                	jal	ra,a2bb6a <hal_watchdog_v151_disable>
  a2bbf4:	4532                	lw	a0,12(sp)
  a2bbf6:	00a05437          	lui	s0,0xa05
  a2bbfa:	e10d                	bnez	a0,a2bc1c <hal_watchdog_v151_enable+0x2e>
  a2bbfc:	78042703          	lw	a4,1920(s0) # a05780 <g_watchdog_regs>
  a2bc00:	4b1c                	lw	a5,16(a4)
  a2bc02:	f7f7f793          	andi	a5,a5,-129
  a2bc06:	cb1c                	sw	a5,16(a4)
  a2bc08:	3f81                	jal	ra,a2bb58 <hal_watchdog_v151_clear_interrupt>
  a2bc0a:	78042703          	lw	a4,1920(s0)
  a2bc0e:	4b1c                	lw	a5,16(a4)
  a2bc10:	0017e793          	ori	a5,a5,1
  a2bc14:	cb1c                	sw	a5,16(a4)
  a2bc16:	8120                	pop	{ra,s0},32
  a2bc18:	ec7ff06f          	j	a2bade <hal_watchdog_v151_kick>
  a2bc1c:	01f51b3b          	bnei	a0,1,a2bc08 <hal_watchdog_v151_enable+0x1a>
  a2bc20:	78042703          	lw	a4,1920(s0)
  a2bc24:	4b1c                	lw	a5,16(a4)
  a2bc26:	0807e793          	ori	a5,a5,128
  a2bc2a:	bff1                	j	a2bc06 <hal_watchdog_v151_enable+0x18>

00a2bc2c <hal_watchdog_v151_funcs_get>:
  a2bc2c:	00a3 41b4 051f      	l.li	a0,0xa341b4
  a2bc32:	8082                	ret

00a2bc34 <hal_sfc_regs_init>:
  a2bc34:	8058                	push	{ra,s0-s3},-32
  a2bc36:	2569                	jal	ra,a2c2c0 <sfc_port_get_sfc_global_conf_base_addr>
  a2bc38:	00a0 579c 099f      	l.li	s3,0xa0579c
  a2bc3e:	00a9a023          	sw	a0,0(s3)
  a2bc42:	00a0 5790 091f      	l.li	s2,0xa05790
  a2bc48:	2541                	jal	ra,a2c2c8 <sfc_port_get_sfc_bus_regs_base_addr>
  a2bc4a:	00a92023          	sw	a0,0(s2)
  a2bc4e:	00a0 578c 049f      	l.li	s1,0xa0578c
  a2bc54:	2db5                	jal	ra,a2c2d0 <sfc_port_get_sfc_bus_dma_regs_base_addr>
  a2bc56:	c088                	sw	a0,0(s1)
  a2bc58:	00a0 5798 041f      	l.li	s0,0xa05798
  a2bc5e:	2dad                	jal	ra,a2c2d8 <sfc_port_get_sfc_cmd_regs_base_addr>
  a2bc60:	c008                	sw	a0,0(s0)
  a2bc62:	2dbd                	jal	ra,a2c2e0 <sfc_port_get_sfc_cmd_databuf_base_addr>
  a2bc64:	00a0 5794 079f      	l.li	a5,0xa05794
  a2bc6a:	c388                	sw	a0,0(a5)
  a2bc6c:	0009a783          	lw	a5,0(s3)
  a2bc70:	cb99                	beqz	a5,a2bc86 <hal_sfc_regs_init+0x52>
  a2bc72:	00092783          	lw	a5,0(s2)
  a2bc76:	cb81                	beqz	a5,a2bc86 <hal_sfc_regs_init+0x52>
  a2bc78:	409c                	lw	a5,0(s1)
  a2bc7a:	c791                	beqz	a5,a2bc86 <hal_sfc_regs_init+0x52>
  a2bc7c:	401c                	lw	a5,0(s0)
  a2bc7e:	c781                	beqz	a5,a2bc86 <hal_sfc_regs_init+0x52>
  a2bc80:	c119                	beqz	a0,a2bc86 <hal_sfc_regs_init+0x52>
  a2bc82:	4501                	li	a0,0
  a2bc84:	8054                	popret	{ra,s0-s3},32
  a2bc86:	8000 1343 051f      	l.li	a0,0x80001343
  a2bc8c:	bfe5                	j	a2bc84 <hal_sfc_regs_init+0x50>

00a2bc8e <hal_sfc_regs_set_cmd_addr>:
  a2bc8e:	00a057b7          	lui	a5,0xa05
  a2bc92:	7987a683          	lw	a3,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2bc96:	3fff ffff 071f      	l.li	a4,0x3fffffff
  a2bc9c:	8d79                	and	a0,a0,a4
  a2bc9e:	46dc                	lw	a5,12(a3)
  a2bca0:	c0000737          	lui	a4,0xc0000
  a2bca4:	8ff9                	and	a5,a5,a4
  a2bca6:	8fc9                	or	a5,a5,a0
  a2bca8:	c6dc                	sw	a5,12(a3)
  a2bcaa:	8082                	ret

00a2bcac <hal_sfc_regs_wait_ready.constprop.3>:
  a2bcac:	8158                	push	{ra,s0-s3},-48
  a2bcae:	2591                	jal	ra,a2c2f2 <sfc_port_get_delay_times>
  a2bcb0:	84aa                	mv	s1,a0
  a2bcb2:	2d1d                	jal	ra,a2c2e8 <sfc_port_get_delay_once_time>
  a2bcb4:	4792                	lw	a5,4(sp)
  a2bcb6:	ffff c7ff 071f      	l.li	a4,0xffffc7ff
  a2bcbc:	892a                	mv	s2,a0
  a2bcbe:	8077f793          	andi	a5,a5,-2041
  a2bcc2:	0287e793          	ori	a5,a5,40
  a2bcc6:	8ff9                	and	a5,a5,a4
  a2bcc8:	c23e                	sw	a5,4(sp)
  a2bcca:	4785                	li	a5,1
  a2bccc:	c43e                	sw	a5,8(sp)
  a2bcce:	c602                	sw	zero,12(sp)
  a2bcd0:	4401                	li	s0,0
  a2bcd2:	00a059b7          	lui	s3,0xa05
  a2bcd6:	0048                	addi	a0,sp,4
  a2bcd8:	26bd                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2bcda:	4601                	li	a2,0
  a2bcdc:	4585                	li	a1,1
  a2bcde:	4505                	li	a0,1
  a2bce0:	2e79                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2bce2:	26e9                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2bce4:	7949a783          	lw	a5,1940(s3) # a05794 <g_sfc_cmd_databuf>
  a2bce8:	439c                	lw	a5,0(a5)
  a2bcea:	8b85                	andi	a5,a5,1
  a2bcec:	cf91                	beqz	a5,a2bd08 <hal_sfc_regs_wait_ready.constprop.3+0x5c>
  a2bcee:	854a                	mv	a0,s2
  a2bcf0:	ebcfe0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2bcf4:	00140793          	addi	a5,s0,1
  a2bcf8:	00946663          	bltu	s0,s1,a2bd04 <hal_sfc_regs_wait_ready.constprop.3+0x58>
  a2bcfc:	8000 1344 051f      	l.li	a0,0x80001344
  a2bd02:	8154                	popret	{ra,s0-s3},48
  a2bd04:	843e                	mv	s0,a5
  a2bd06:	bfc1                	j	a2bcd6 <hal_sfc_regs_wait_ready.constprop.3+0x2a>
  a2bd08:	4501                	li	a0,0
  a2bd0a:	bfe5                	j	a2bd02 <hal_sfc_regs_wait_ready.constprop.3+0x56>

00a2bd0c <hal_sfc_execute_type_cmd>:
  a2bd0c:	8148                	push	{ra,s0-s2},-32
  a2bd0e:	219c                	lbu	a5,0(a1)
  a2bd10:	842a                	mv	s0,a0
  a2bd12:	892e                	mv	s2,a1
  a2bd14:	078e                	slli	a5,a5,0x3
  a2bd16:	0017e793          	ori	a5,a5,1
  a2bd1a:	c23e                	sw	a5,4(sp)
  a2bd1c:	fff50793          	addi	a5,a0,-1
  a2bd20:	c43e                	sw	a5,8(sp)
  a2bd22:	c602                	sw	zero,12(sp)
  a2bd24:	f89ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2bd28:	84aa                	mv	s1,a0
  a2bd2a:	e50d                	bnez	a0,a2bd54 <hal_sfc_execute_type_cmd+0x48>
  a2bd2c:	0048                	addi	a0,sp,4
  a2bd2e:	2e21                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2bd30:	4785                	li	a5,1
  a2bd32:	c002                	sw	zero,0(sp)
  a2bd34:	0287e263          	bltu	a5,s0,a2bd58 <hal_sfc_execute_type_cmd+0x4c>
  a2bd38:	00a057b7          	lui	a5,0xa05
  a2bd3c:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2bd40:	4702                	lw	a4,0(sp)
  a2bd42:	00243593          	sltiu	a1,s0,2
  a2bd46:	4601                	li	a2,0
  a2bd48:	c398                	sw	a4,0(a5)
  a2bd4a:	0015c593          	xori	a1,a1,1
  a2bd4e:	4501                	li	a0,0
  a2bd50:	263d                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2bd52:	2ea9                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2bd54:	8526                	mv	a0,s1
  a2bd56:	8144                	popret	{ra,s0-s2},32
  a2bd58:	00f906b3          	add	a3,s2,a5
  a2bd5c:	2294                	lbu	a3,0(a3)
  a2bd5e:	00f10733          	add	a4,sp,a5
  a2bd62:	0785                	addi	a5,a5,1
  a2bd64:	fed70fa3          	sb	a3,-1(a4) # bfffffff <_gp_+0xbf5cb537>
  a2bd68:	b7f1                	j	a2bd34 <hal_sfc_execute_type_cmd+0x28>

00a2bd6a <hal_sfc_write_enable>:
  a2bd6a:	8118                	push	{ra},-32
  a2bd6c:	f41ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2bd70:	4799                	li	a5,6
  a2bd72:	006c                	addi	a1,sp,12
  a2bd74:	4505                	li	a0,1
  a2bd76:	00f10623          	sb	a5,12(sp)
  a2bd7a:	f93ff0ef          	jal	ra,a2bd0c <hal_sfc_execute_type_cmd>
  a2bd7e:	e119                	bnez	a0,a2bd84 <hal_sfc_write_enable+0x1a>
  a2bd80:	f2dff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2bd84:	8114                	popret	{ra},32

00a2bd86 <hal_sfc_reg_write_once>:
  a2bd86:	8648                	push	{ra,s0-s2},-112
  a2bd88:	c636                	sw	a3,12(sp)
  a2bd8a:	892a                	mv	s2,a0
  a2bd8c:	84ae                	mv	s1,a1
  a2bd8e:	8432                	mv	s0,a2
  a2bd90:	3fe9                	jal	ra,a2bd6a <hal_sfc_write_enable>
  a2bd92:	87aa                	mv	a5,a0
  a2bd94:	46b2                	lw	a3,12(sp)
  a2bd96:	e939                	bnez	a0,a2bdec <hal_sfc_reg_write_once+0x66>
  a2bd98:	ca36                	sw	a3,20(sp)
  a2bd9a:	0848                	addi	a0,sp,20
  a2bd9c:	82b9                	srli	a3,a3,0xe
  a2bd9e:	ce36                	sw	a3,28(sp)
  a2bda0:	cc22                	sw	s0,24(sp)
  a2bda2:	2455                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2bda4:	854a                	mv	a0,s2
  a2bda6:	ee9ff0ef          	jal	ra,a2bc8e <hal_sfc_regs_set_cmd_addr>
  a2bdaa:	86a2                	mv	a3,s0
  a2bdac:	8626                	mv	a2,s1
  a2bdae:	04000593          	li	a1,64
  a2bdb2:	1008                	addi	a0,sp,32
  a2bdb4:	695040ef          	jal	ra,a30c48 <memcpy_s>
  a2bdb8:	57fd                	li	a5,-1
  a2bdba:	e90d                	bnez	a0,a2bdec <hal_sfc_reg_write_once+0x66>
  a2bdbc:	00347613          	andi	a2,s0,3
  a2bdc0:	00c03633          	snez	a2,a2
  a2bdc4:	4486061b          	addshf	a2,a2,s0,srl,2
  a2bdc8:	9e21                	uxth	a2
  a2bdca:	101c                	addi	a5,sp,32
  a2bdcc:	4701                	li	a4,0
  a2bdce:	00a055b7          	lui	a1,0xa05
  a2bdd2:	01071693          	slli	a3,a4,0x10
  a2bdd6:	82c1                	srli	a3,a3,0x10
  a2bdd8:	00c6ec63          	bltu	a3,a2,a2bdf0 <hal_sfc_reg_write_once+0x6a>
  a2bddc:	4605                	li	a2,1
  a2bdde:	4585                	li	a1,1
  a2bde0:	4501                	li	a0,0
  a2bde2:	2c71                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2bde4:	24e1                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2bde6:	ec7ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2bdea:	87aa                	mv	a5,a0
  a2bdec:	853e                	mv	a0,a5
  a2bdee:	8644                	popret	{ra,s0-s2},112
  a2bdf0:	7945a683          	lw	a3,1940(a1) # a05794 <g_sfc_cmd_databuf>
  a2bdf4:	4388                	lw	a0,0(a5)
  a2bdf6:	0791                	addi	a5,a5,4
  a2bdf8:	04e6869b          	addshf	a3,a3,a4,sll,2
  a2bdfc:	c288                	sw	a0,0(a3)
  a2bdfe:	0705                	addi	a4,a4,1
  a2be00:	bfc9                	j	a2bdd2 <hal_sfc_reg_write_once+0x4c>

00a2be02 <hal_sfc_get_flash_id>:
  a2be02:	8128                	push	{ra,s0},-32
  a2be04:	842a                	mv	s0,a0
  a2be06:	e2fff0ef          	jal	ra,a2bc34 <hal_sfc_regs_init>
  a2be0a:	ea3ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2be0e:	e91d                	bnez	a0,a2be44 <hal_sfc_get_flash_id+0x42>
  a2be10:	4631                	li	a2,12
  a2be12:	00a3 1658 059f      	l.li	a1,0xa31658
  a2be18:	0048                	addi	a0,sp,4
  a2be1a:	c39fc0ef          	jal	ra,a28a52 <memcpy>
  a2be1e:	0048                	addi	a0,sp,4
  a2be20:	241d                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2be22:	4601                	li	a2,0
  a2be24:	4585                	li	a1,1
  a2be26:	4505                	li	a0,1
  a2be28:	2c99                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2be2a:	2449                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2be2c:	00a057b7          	lui	a5,0xa05
  a2be30:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2be34:	00ff ffff 071f      	l.li	a4,0xffffff
  a2be3a:	439c                	lw	a5,0(a5)
  a2be3c:	8ff9                	and	a5,a5,a4
  a2be3e:	c01c                	sw	a5,0(s0)
  a2be40:	e6dff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2be44:	8124                	popret	{ra,s0},32

00a2be46 <hal_sfc_init>:
  a2be46:	67c1                	lui	a5,0x10
  a2be48:	0cf66c63          	bltu	a2,a5,a2bf20 <hal_sfc_init+0xda>
  a2be4c:	8198                	push	{ra,s0-s7},-64
  a2be4e:	4940                	lw	s0,20(a0)
  a2be50:	84b2                	mv	s1,a2
  a2be52:	89ae                	mv	s3,a1
  a2be54:	892a                	mv	s2,a0
  a2be56:	4a05                	li	s4,1
  a2be58:	00a05ab7          	lui	s5,0xa05
  a2be5c:	e025                	bnez	s0,a2bebc <hal_sfc_init+0x76>
  a2be5e:	00a057b7          	lui	a5,0xa05
  a2be62:	7907a683          	lw	a3,1936(a5) # a05790 <g_sfc_bus_regs>
  a2be66:	0109d993          	srli	s3,s3,0x10
  a2be6a:	00f4d613          	srli	a2,s1,0xf
  a2be6e:	4e9c                	lw	a5,24(a3)
  a2be70:	4701                	li	a4,0
  a2be72:	01079593          	slli	a1,a5,0x10
  a2be76:	81c1                	srli	a1,a1,0x10
  a2be78:	2135a59b          	orshf	a1,a1,s3,sll,16
  a2be7c:	ce8c                	sw	a1,24(a3)
  a2be7e:	00167793          	andi	a5,a2,1
  a2be82:	cfc1                	beqz	a5,a2bf1a <hal_sfc_init+0xd4>
  a2be84:	4a9c                	lw	a5,16(a3)
  a2be86:	ffff f0ff 061f      	l.li	a2,0xfffff0ff
  a2be8c:	8b3d                	andi	a4,a4,15
  a2be8e:	8ff1                	and	a5,a5,a2
  a2be90:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a2be94:	ca9c                	sw	a5,16(a3)
  a2be96:	00492503          	lw	a0,4(s2)
  a2be9a:	240d                	jal	ra,a2c0bc <hal_sfc_regs_set_bus_read>
  a2be9c:	00c92503          	lw	a0,12(s2)
  a2bea0:	7f857793          	andi	a5,a0,2040
  a2bea4:	c391                	beqz	a5,a2bea8 <hal_sfc_init+0x62>
  a2bea6:	2c89                	jal	ra,a2c0f8 <hal_sfc_regs_set_bus_write>
  a2bea8:	00a057b7          	lui	a5,0xa05
  a2beac:	79c7a783          	lw	a5,1948(a5) # a0579c <g_sfc_global_conf_regs>
  a2beb0:	4705                	li	a4,1
  a2beb2:	cb98                	sw	a4,16(a5)
  a2beb4:	df9ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2beb8:	4501                	li	a0,0
  a2beba:	a00d                	j	a2bedc <hal_sfc_init+0x96>
  a2bebc:	201c                	lbu	a5,0(s0)
  a2bebe:	03478063          	beq	a5,s4,a2bede <hal_sfc_init+0x98>
  a2bec2:	c799                	beqz	a5,a2bed0 <hal_sfc_init+0x8a>
  a2bec4:	02e786bb          	beqi	a5,2,a2be5e <hal_sfc_init+0x18>
  a2bec8:	8000 1345 051f      	l.li	a0,0x80001345
  a2bece:	a039                	j	a2bedc <hal_sfc_init+0x96>
  a2bed0:	3008                	lbu	a0,1(s0)
  a2bed2:	00240593          	addi	a1,s0,2
  a2bed6:	e37ff0ef          	jal	ra,a2bd0c <hal_sfc_execute_type_cmd>
  a2beda:	cd15                	beqz	a0,a2bf16 <hal_sfc_init+0xd0>
  a2bedc:	8194                	popret	{ra,s0-s7},64
  a2bede:	2038                	lbu	a4,2(s0)
  a2bee0:	00344b83          	lbu	s7,3(s0)
  a2bee4:	00444b03          	lbu	s6,4(s0)
  a2bee8:	070e                	slli	a4,a4,0x3
  a2beea:	00176713          	ori	a4,a4,1
  a2beee:	c23a                	sw	a4,4(sp)
  a2bef0:	c452                	sw	s4,8(sp)
  a2bef2:	c602                	sw	zero,12(sp)
  a2bef4:	db9ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2bef8:	0048                	addi	a0,sp,4
  a2befa:	22b1                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2befc:	4601                	li	a2,0
  a2befe:	4585                	li	a1,1
  a2bf00:	4505                	li	a0,1
  a2bf02:	2ab5                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2bf04:	2265                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2bf06:	794aa783          	lw	a5,1940(s5) # a05794 <g_sfc_cmd_databuf>
  a2bf0a:	439c                	lw	a5,0(a5)
  a2bf0c:	0177d7b3          	srl	a5,a5,s7
  a2bf10:	8b85                	andi	a5,a5,1
  a2bf12:	fb679be3          	bne	a5,s6,a2bec8 <hal_sfc_init+0x82>
  a2bf16:	0419                	addi	s0,s0,6
  a2bf18:	b791                	j	a2be5c <hal_sfc_init+0x16>
  a2bf1a:	8205                	srli	a2,a2,0x1
  a2bf1c:	0705                	addi	a4,a4,1
  a2bf1e:	b785                	j	a2be7e <hal_sfc_init+0x38>
  a2bf20:	80000537          	lui	a0,0x80000
  a2bf24:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2bf26:	8082                	ret

00a2bf28 <hal_sfc_reg_read>:
  a2bf28:	8588                	push	{ra,s0-s6},-112
  a2bf2a:	89aa                	mv	s3,a0
  a2bf2c:	8a2e                	mv	s4,a1
  a2bf2e:	84b2                	mv	s1,a2
  a2bf30:	04000413          	li	s0,64
  a2bf34:	00e6da93          	srli	s5,a3,0xe
  a2bf38:	8936                	mv	s2,a3
  a2bf3a:	00a05b37          	lui	s6,0xa05
  a2bf3e:	e099                	bnez	s1,a2bf44 <hal_sfc_reg_read+0x1c>
  a2bf40:	4501                	li	a0,0
  a2bf42:	a8a1                	j	a2bf9a <hal_sfc_reg_read+0x72>
  a2bf44:	d69ff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2bf48:	e929                	bnez	a0,a2bf9a <hal_sfc_reg_read+0x72>
  a2bf4a:	0084f363          	bgeu	s1,s0,a2bf50 <hal_sfc_reg_read+0x28>
  a2bf4e:	8426                	mv	s0,s1
  a2bf50:	0048                	addi	a0,sp,4
  a2bf52:	c24a                	sw	s2,4(sp)
  a2bf54:	c422                	sw	s0,8(sp)
  a2bf56:	c656                	sw	s5,12(sp)
  a2bf58:	20fd                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2bf5a:	854e                	mv	a0,s3
  a2bf5c:	d33ff0ef          	jal	ra,a2bc8e <hal_sfc_regs_set_cmd_addr>
  a2bf60:	4605                	li	a2,1
  a2bf62:	4505                	li	a0,1
  a2bf64:	4585                	li	a1,1
  a2bf66:	2a21                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2bf68:	2291                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2bf6a:	00347793          	andi	a5,s0,3
  a2bf6e:	00f037b3          	snez	a5,a5
  a2bf72:	794b2503          	lw	a0,1940(s6) # a05794 <g_sfc_cmd_databuf>
  a2bf76:	4487879b          	addshf	a5,a5,s0,srl,2
  a2bf7a:	0814                	addi	a3,sp,16
  a2bf7c:	9fa1                	uxth	a5
  a2bf7e:	4701                	li	a4,0
  a2bf80:	8636                	mv	a2,a3
  a2bf82:	01071593          	slli	a1,a4,0x10
  a2bf86:	81c1                	srli	a1,a1,0x10
  a2bf88:	00f5ea63          	bltu	a1,a5,a2bf9c <hal_sfc_reg_read+0x74>
  a2bf8c:	86a2                	mv	a3,s0
  a2bf8e:	85a2                	mv	a1,s0
  a2bf90:	8552                	mv	a0,s4
  a2bf92:	4b7040ef          	jal	ra,a30c48 <memcpy_s>
  a2bf96:	c919                	beqz	a0,a2bfac <hal_sfc_reg_read+0x84>
  a2bf98:	557d                	li	a0,-1
  a2bf9a:	8584                	popret	{ra,s0-s6},112
  a2bf9c:	04e5059b          	addshf	a1,a0,a4,sll,2
  a2bfa0:	418c                	lw	a1,0(a1)
  a2bfa2:	0705                	addi	a4,a4,1
  a2bfa4:	0691                	addi	a3,a3,4
  a2bfa6:	feb6ae23          	sw	a1,-4(a3)
  a2bfaa:	bfe1                	j	a2bf82 <hal_sfc_reg_read+0x5a>
  a2bfac:	99a2                	add	s3,s3,s0
  a2bfae:	9a22                	add	s4,s4,s0
  a2bfb0:	8c81                	sub	s1,s1,s0
  a2bfb2:	b771                	j	a2bf3e <hal_sfc_reg_read+0x16>

00a2bfb4 <hal_sfc_reg_write>:
  a2bfb4:	8088                	push	{ra,s0-s6},-32
  a2bfb6:	03f57793          	andi	a5,a0,63
  a2bfba:	04000413          	li	s0,64
  a2bfbe:	8c1d                	sub	s0,s0,a5
  a2bfc0:	89aa                	mv	s3,a0
  a2bfc2:	892e                	mv	s2,a1
  a2bfc4:	84b2                	mv	s1,a2
  a2bfc6:	8ab6                	mv	s5,a3
  a2bfc8:	00867363          	bgeu	a2,s0,a2bfce <hal_sfc_reg_write+0x1a>
  a2bfcc:	8432                	mv	s0,a2
  a2bfce:	86d6                	mv	a3,s5
  a2bfd0:	8622                	mv	a2,s0
  a2bfd2:	85ca                	mv	a1,s2
  a2bfd4:	854e                	mv	a0,s3
  a2bfd6:	db1ff0ef          	jal	ra,a2bd86 <hal_sfc_reg_write_once>
  a2bfda:	8a2a                	mv	s4,a0
  a2bfdc:	e905                	bnez	a0,a2c00c <hal_sfc_reg_write+0x58>
  a2bfde:	8c81                	sub	s1,s1,s0
  a2bfe0:	c495                	beqz	s1,a2c00c <hal_sfc_reg_write+0x58>
  a2bfe2:	9922                	add	s2,s2,s0
  a2bfe4:	04000b13          	li	s6,64
  a2bfe8:	944e                	add	s0,s0,s3
  a2bfea:	89a6                	mv	s3,s1
  a2bfec:	009b7463          	bgeu	s6,s1,a2bff4 <hal_sfc_reg_write+0x40>
  a2bff0:	04000993          	li	s3,64
  a2bff4:	86d6                	mv	a3,s5
  a2bff6:	864e                	mv	a2,s3
  a2bff8:	85ca                	mv	a1,s2
  a2bffa:	8522                	mv	a0,s0
  a2bffc:	d8bff0ef          	jal	ra,a2bd86 <hal_sfc_reg_write_once>
  a2c000:	e901                	bnez	a0,a2c010 <hal_sfc_reg_write+0x5c>
  a2c002:	413484b3          	sub	s1,s1,s3
  a2c006:	994e                	add	s2,s2,s3
  a2c008:	944e                	add	s0,s0,s3
  a2c00a:	f0e5                	bnez	s1,a2bfea <hal_sfc_reg_write+0x36>
  a2c00c:	8552                	mv	a0,s4
  a2c00e:	8084                	popret	{ra,s0-s6},32
  a2c010:	8a2a                	mv	s4,a0
  a2c012:	bfed                	j	a2c00c <hal_sfc_reg_write+0x58>

00a2c014 <hal_sfc_reg_erase>:
  a2c014:	8238                	push	{ra,s0-s1},-48
  a2c016:	c62e                	sw	a1,12(sp)
  a2c018:	84aa                	mv	s1,a0
  a2c01a:	8432                	mv	s0,a2
  a2c01c:	d4fff0ef          	jal	ra,a2bd6a <hal_sfc_write_enable>
  a2c020:	45b2                	lw	a1,12(sp)
  a2c022:	e10d                	bnez	a0,a2c044 <hal_sfc_reg_erase+0x30>
  a2c024:	0848                	addi	a0,sp,20
  a2c026:	ca2e                	sw	a1,20(sp)
  a2c028:	cc02                	sw	zero,24(sp)
  a2c02a:	ce02                	sw	zero,28(sp)
  a2c02c:	2829                	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2c02e:	8526                	mv	a0,s1
  a2c030:	c5fff0ef          	jal	ra,a2bc8e <hal_sfc_regs_set_cmd_addr>
  a2c034:	00144613          	xori	a2,s0,1
  a2c038:	4581                	li	a1,0
  a2c03a:	4501                	li	a0,0
  a2c03c:	2089                	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2c03e:	20bd                	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2c040:	c6dff0ef          	jal	ra,a2bcac <hal_sfc_regs_wait_ready.constprop.3>
  a2c044:	8234                	popret	{ra,s0-s1},48

00a2c046 <hal_sfc_regs_set_opt>:
  a2c046:	00a057b7          	lui	a5,0xa05
  a2c04a:	7987a603          	lw	a2,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2c04e:	411c                	lw	a5,0(a0)
  a2c050:	450c                	lw	a1,8(a0)
  a2c052:	4618                	lw	a4,8(a2)
  a2c054:	0037d693          	srli	a3,a5,0x3
  a2c058:	9e81                	uxtb	a3
  a2c05a:	f0077713          	andi	a4,a4,-256
  a2c05e:	8f55                	or	a4,a4,a3
  a2c060:	4154                	lw	a3,4(a0)
  a2c062:	83ad                	srli	a5,a5,0xb
  a2c064:	8b9d                	andi	a5,a5,7
  a2c066:	899d                	andi	a1,a1,7
  a2c068:	07c6                	slli	a5,a5,0x11
  a2c06a:	16fd                	addi	a3,a3,-1
  a2c06c:	03f6f693          	andi	a3,a3,63
  a2c070:	08b7a79b          	orshf	a5,a5,a1,sll,4
  a2c074:	12d7a79b          	orshf	a5,a5,a3,sll,9
  a2c078:	c618                	sw	a4,8(a2)
  a2c07a:	c21c                	sw	a5,0(a2)
  a2c07c:	8082                	ret

00a2c07e <hal_sfc_regs_set_opt_attr>:
  a2c07e:	00a057b7          	lui	a5,0xa05
  a2c082:	7987a703          	lw	a4,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2c086:	8905                	andi	a0,a0,1
  a2c088:	8985                	andi	a1,a1,1
  a2c08a:	431c                	lw	a5,0(a4)
  a2c08c:	8a05                	andi	a2,a2,1
  a2c08e:	eff7f793          	andi	a5,a5,-257
  a2c092:	10a7a79b          	orshf	a5,a5,a0,sll,8
  a2c096:	f7f7f793          	andi	a5,a5,-129
  a2c09a:	0eb7a79b          	orshf	a5,a5,a1,sll,7
  a2c09e:	9bdd                	andi	a5,a5,-9
  a2c0a0:	06c7a79b          	orshf	a5,a5,a2,sll,3
  a2c0a4:	0037e793          	ori	a5,a5,3
  a2c0a8:	c31c                	sw	a5,0(a4)
  a2c0aa:	8082                	ret

00a2c0ac <hal_sfc_regs_wait_config>:
  a2c0ac:	00a057b7          	lui	a5,0xa05
  a2c0b0:	7987a703          	lw	a4,1944(a5) # a05798 <g_sfc_cmd_regs>
  a2c0b4:	431c                	lw	a5,0(a4)
  a2c0b6:	8b85                	andi	a5,a5,1
  a2c0b8:	fff5                	bnez	a5,a2c0b4 <hal_sfc_regs_wait_config+0x8>
  a2c0ba:	8082                	ret

00a2c0bc <hal_sfc_regs_set_bus_read>:
  a2c0bc:	00a057b7          	lui	a5,0xa05
  a2c0c0:	7907a603          	lw	a2,1936(a5) # a05790 <g_sfc_bus_regs>
  a2c0c4:	80000737          	lui	a4,0x80000
  a2c0c8:	ffff 00ff 069f      	l.li	a3,0xffff00ff
  a2c0ce:	421c                	lw	a5,0(a2)
  a2c0d0:	8fd9                	or	a5,a5,a4
  a2c0d2:	00355713          	srli	a4,a0,0x3
  a2c0d6:	9f01                	uxtb	a4
  a2c0d8:	8ff5                	and	a5,a5,a3
  a2c0da:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a2c0de:	00b55693          	srli	a3,a0,0xb
  a2c0e2:	8a9d                	andi	a3,a3,7
  a2c0e4:	812d                	srli	a0,a0,0xb
  a2c0e6:	fc07f793          	andi	a5,a5,-64
  a2c0ea:	03857713          	andi	a4,a0,56
  a2c0ee:	00d7e533          	or	a0,a5,a3
  a2c0f2:	8d59                	or	a0,a0,a4
  a2c0f4:	c208                	sw	a0,0(a2)
  a2c0f6:	8082                	ret

00a2c0f8 <hal_sfc_regs_set_bus_write>:
  a2c0f8:	00a057b7          	lui	a5,0xa05
  a2c0fc:	7907a683          	lw	a3,1936(a5) # a05790 <g_sfc_bus_regs>
  a2c100:	00355713          	srli	a4,a0,0x3
  a2c104:	c03f ffff 061f      	l.li	a2,0xc03fffff
  a2c10a:	429c                	lw	a5,0(a3)
  a2c10c:	9f01                	uxtb	a4
  a2c10e:	812d                	srli	a0,a0,0xb
  a2c110:	8ff1                	and	a5,a5,a2
  a2c112:	2ce7a79b          	orshf	a5,a5,a4,sll,22
  a2c116:	fff8 ffff 071f      	l.li	a4,0xfff8ffff
  a2c11c:	8ff9                	and	a5,a5,a4
  a2c11e:	891d                	andi	a0,a0,7
  a2c120:	20a7a79b          	orshf	a5,a5,a0,sll,16
  a2c124:	40000737          	lui	a4,0x40000
  a2c128:	8fd9                	or	a5,a5,a4
  a2c12a:	c29c                	sw	a5,0(a3)
  a2c12c:	8082                	ret

00a2c12e <pmp_enable>:
  a2c12e:	8148                	push	{ra,s0-s2},-32
  a2c130:	004c                	addi	a1,sp,4
  a2c132:	02000513          	li	a0,32
  a2c136:	c202                	sw	zero,4(sp)
  a2c138:	c402                	sw	zero,8(sp)
  a2c13a:	c602                	sw	zero,12(sp)
  a2c13c:	4b5010ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2c140:	4722                	lw	a4,8(sp)
  a2c142:	00a34437          	lui	s0,0xa34
  a2c146:	00200937          	lui	s2,0x200
  a2c14a:	974a                	add	a4,a4,s2
  a2c14c:	1d840493          	addi	s1,s0,472 # a341d8 <g_region_attr>
  a2c150:	004c                	addi	a1,sp,4
  a2c152:	02100513          	li	a0,33
  a2c156:	d0d8                	sw	a4,36(s1)
  a2c158:	499010ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2c15c:	47a2                	lw	a5,8(sp)
  a2c15e:	4595                	li	a1,5
  a2c160:	1d840513          	addi	a0,s0,472
  a2c164:	97ca                	add	a5,a5,s2
  a2c166:	d8dc                	sw	a5,52(s1)
  a2c168:	88ffd0ef          	jal	ra,a299f6 <uapi_pmp_config>
  a2c16c:	8144                	popret	{ra,s0-s2},32

00a2c16e <print_str_inner>:
  a2c16e:	8028                	push	{ra,s0},-16
  a2c170:	00a05437          	lui	s0,0xa05
  a2c174:	872e                	mv	a4,a1
  a2c176:	86aa                	mv	a3,a0
  a2c178:	07f00613          	li	a2,127
  a2c17c:	08000593          	li	a1,128
  a2c180:	7a440513          	addi	a0,s0,1956 # a057a4 <str_buf.3002>
  a2c184:	482050ef          	jal	ra,a31606 <vsnprintf_s>
  a2c188:	7a440793          	addi	a5,s0,1956
  a2c18c:	862a                	mv	a2,a0
  a2c18e:	ff0513bb          	bnei	a0,-1,a2c19c <print_str_inner+0x2e>
  a2c192:	2398                	lbu	a4,0(a5)
  a2c194:	07f00613          	li	a2,127
  a2c198:	e311                	bnez	a4,a2c19c <print_str_inner+0x2e>
  a2c19a:	8024                	popret	{ra,s0},16
  a2c19c:	97b2                	add	a5,a5,a2
  a2c19e:	00078023          	sb	zero,0(a5)
  a2c1a2:	00a0 57a0 079f      	l.li	a5,0xa057a0
  a2c1a8:	2388                	lbu	a0,0(a5)
  a2c1aa:	4681                	li	a3,0
  a2c1ac:	7a440593          	addi	a1,s0,1956
  a2c1b0:	8020                	pop	{ra,s0},16
  a2c1b2:	e08fe06f          	j	a2a7ba <uapi_uart_write>

00a2c1b6 <uart_port_register_hal_funcs>:
  a2c1b6:	8028                	push	{ra,s0},-16
  a2c1b8:	842a                	mv	s0,a0
  a2c1ba:	8c5ff0ef          	jal	ra,a2ba7e <hal_uart_v151_funcs_get>
  a2c1be:	85aa                	mv	a1,a0
  a2c1c0:	8522                	mv	a0,s0
  a2c1c2:	8020                	pop	{ra,s0},16
  a2c1c4:	c18ff06f          	j	a2b5dc <hal_uart_register_funcs>

00a2c1c8 <uart_port_set_clock_value>:
  a2c1c8:	00a3 4228 079f      	l.li	a5,0xa34228
  a2c1ce:	c38c                	sw	a1,0(a5)
  a2c1d0:	8082                	ret

00a2c1d2 <uart_port_get_clock_value>:
  a2c1d2:	00a3 4228 079f      	l.li	a5,0xa34228
  a2c1d8:	4388                	lw	a0,0(a5)
  a2c1da:	8082                	ret

00a2c1dc <uart_port_config_pinmux>:
  a2c1dc:	020513bb          	bnei	a0,2,a2c1ea <uart_port_config_pinmux+0xe>
  a2c1e0:	4400d7b7          	lui	a5,0x4400d
  a2c1e4:	4705                	li	a4,1
  a2c1e6:	db98                	sw	a4,48(a5)
  a2c1e8:	dbd8                	sw	a4,52(a5)
  a2c1ea:	8082                	ret

00a2c1ec <uart_port_register_irq>:
  a2c1ec:	8082                	ret

00a2c1ee <uart_port_unregister_irq>:
  a2c1ee:	8082                	ret

00a2c1f0 <print_str>:
  a2c1f0:	7139                	addi	sp,sp,-64
  a2c1f2:	ce06                	sw	ra,28(sp)
  a2c1f4:	cc22                	sw	s0,24(sp)
  a2c1f6:	d22e                	sw	a1,36(sp)
  a2c1f8:	d432                	sw	a2,40(sp)
  a2c1fa:	d636                	sw	a3,44(sp)
  a2c1fc:	d83a                	sw	a4,48(sp)
  a2c1fe:	da3e                	sw	a5,52(sp)
  a2c200:	dc42                	sw	a6,56(sp)
  a2c202:	de46                	sw	a7,60(sp)
  a2c204:	c911                	beqz	a0,a2c218 <print_str+0x28>
  a2c206:	842a                	mv	s0,a0
  a2c208:	b05fc0ef          	jal	ra,a28d0c <strlen>
  a2c20c:	c511                	beqz	a0,a2c218 <print_str+0x28>
  a2c20e:	104c                	addi	a1,sp,36
  a2c210:	8522                	mv	a0,s0
  a2c212:	c62e                	sw	a1,12(sp)
  a2c214:	f5bff0ef          	jal	ra,a2c16e <print_str_inner>
  a2c218:	40f2                	lw	ra,28(sp)
  a2c21a:	4462                	lw	s0,24(sp)
  a2c21c:	6121                	addi	sp,sp,64
  a2c21e:	8082                	ret

00a2c220 <uart_porting_lock>:
  a2c220:	fccfd06f          	j	a299ec <osal_irq_lock>

00a2c224 <uart_porting_unlock>:
  a2c224:	852e                	mv	a0,a1
  a2c226:	fcefd06f          	j	a299f4 <osal_irq_restore>

00a2c22a <hal_systick_get_count>:
  a2c22a:	400057b7          	lui	a5,0x40005
  a2c22e:	4fd8                	lw	a4,28(a5)
  a2c230:	4f98                	lw	a4,24(a5)
  a2c232:	4fc8                	lw	a0,28(a5)
  a2c234:	4f8c                	lw	a1,24(a5)
  a2c236:	9da1                	uxth	a1
  a2c238:	8082                	ret

00a2c23a <systick_clock_get>:
  a2c23a:	00a3 422c 079f      	l.li	a5,0xa3422c
  a2c240:	4388                	lw	a0,0(a5)
  a2c242:	8082                	ret

00a2c244 <tcxo_porting_base_addr_get>:
  a2c244:	4400 04c0 051f      	l.li	a0,0x440004c0
  a2c24a:	8082                	ret

00a2c24c <tcxo_porting_ticks_per_usec_get>:
  a2c24c:	00a3 4230 079f      	l.li	a5,0xa34230
  a2c252:	4388                	lw	a0,0(a5)
  a2c254:	8082                	ret

00a2c256 <tcxo_porting_ticks_per_usec_set>:
  a2c256:	00a3 4230 079f      	l.li	a5,0xa34230
  a2c25c:	c388                	sw	a0,0(a5)
  a2c25e:	8082                	ret

00a2c260 <watchdog_port_register_hal_funcs>:
  a2c260:	8018                	push	{ra},-16
  a2c262:	9cbff0ef          	jal	ra,a2bc2c <hal_watchdog_v151_funcs_get>
  a2c266:	8010                	pop	{ra},16
  a2c268:	81fff06f          	j	a2ba86 <hal_watchdog_register_funcs>

00a2c26c <watchdog_port_unregister_hal_funcs>:
  a2c26c:	831ff06f          	j	a2ba9c <hal_watchdog_unregister_funcs>

00a2c270 <watchdog_port_register_irq>:
  a2c270:	8082                	ret

00a2c272 <watchdog_port_set_clock>:
  a2c272:	8028                	push	{ra,s0},-16
  a2c274:	842a                	mv	s0,a0
  a2c276:	f76fd0ef          	jal	ra,a299ec <osal_irq_lock>
  a2c27a:	00a3 4238 079f      	l.li	a5,0xa34238
  a2c280:	c380                	sw	s0,0(a5)
  a2c282:	8020                	pop	{ra,s0},16
  a2c284:	f70fd06f          	j	a299f4 <osal_irq_restore>

00a2c288 <watchdog_port_get_clock>:
  a2c288:	00a3 4238 079f      	l.li	a5,0xa34238
  a2c28e:	4388                	lw	a0,0(a5)
  a2c290:	8082                	ret

00a2c292 <pmp_port_register_hal_funcs>:
  a2c292:	8018                	push	{ra},-16
  a2c294:	a09fe0ef          	jal	ra,a2ac9c <hal_pmp_riscv31_funcs_get>
  a2c298:	8010                	pop	{ra},16
  a2c29a:	997fe06f          	j	a2ac30 <hal_pmp_register_funcs>

00a2c29e <sfc_port_get_flash_spi_infos>:
  a2c29e:	00a3 29a0 051f      	l.li	a0,0xa329a0
  a2c2a4:	8082                	ret

00a2c2a6 <sfc_port_get_flash_num>:
  a2c2a6:	4505                	li	a0,1
  a2c2a8:	8082                	ret

00a2c2aa <sfc_port_get_unknown_flash_info>:
  a2c2aa:	00a3 29bc 051f      	l.li	a0,0xa329bc
  a2c2b0:	8082                	ret

00a2c2b2 <sfc_port_get_sfc_start_addr>:
  a2c2b2:	00200537          	lui	a0,0x200
  a2c2b6:	8082                	ret

00a2c2b8 <sfc_port_get_sfc_end_addr>:
  a2c2b8:	009f ffff 051f      	l.li	a0,0x9fffff
  a2c2be:	8082                	ret

00a2c2c0 <sfc_port_get_sfc_global_conf_base_addr>:
  a2c2c0:	4800 0100 051f      	l.li	a0,0x48000100
  a2c2c6:	8082                	ret

00a2c2c8 <sfc_port_get_sfc_bus_regs_base_addr>:
  a2c2c8:	4800 0200 051f      	l.li	a0,0x48000200
  a2c2ce:	8082                	ret

00a2c2d0 <sfc_port_get_sfc_bus_dma_regs_base_addr>:
  a2c2d0:	4800 0240 051f      	l.li	a0,0x48000240
  a2c2d6:	8082                	ret

00a2c2d8 <sfc_port_get_sfc_cmd_regs_base_addr>:
  a2c2d8:	4800 0300 051f      	l.li	a0,0x48000300
  a2c2de:	8082                	ret

00a2c2e0 <sfc_port_get_sfc_cmd_databuf_base_addr>:
  a2c2e0:	4800 0400 051f      	l.li	a0,0x48000400
  a2c2e6:	8082                	ret

00a2c2e8 <sfc_port_get_delay_once_time>:
  a2c2e8:	00a3 423c 079f      	l.li	a5,0xa3423c
  a2c2ee:	4388                	lw	a0,0(a5)
  a2c2f0:	8082                	ret

00a2c2f2 <sfc_port_get_delay_times>:
  a2c2f2:	00a3 4240 079f      	l.li	a5,0xa34240
  a2c2f8:	4388                	lw	a0,0(a5)
  a2c2fa:	8082                	ret

00a2c2fc <sfc_port_lock_init>:
  a2c2fc:	8082                	ret

00a2c2fe <sfc_port_lock>:
  a2c2fe:	4501                	li	a0,0
  a2c300:	8082                	ret

00a2c302 <sfc_port_unlock>:
  a2c302:	8082                	ret

00a2c304 <hal_sfc_regs_wait_ready.constprop.0>:
  a2c304:	8158                	push	{ra,s0-s3},-48
  a2c306:	fedff0ef          	jal	ra,a2c2f2 <sfc_port_get_delay_times>
  a2c30a:	84aa                	mv	s1,a0
  a2c30c:	fddff0ef          	jal	ra,a2c2e8 <sfc_port_get_delay_once_time>
  a2c310:	02800793          	li	a5,40
  a2c314:	c23e                	sw	a5,4(sp)
  a2c316:	4785                	li	a5,1
  a2c318:	892a                	mv	s2,a0
  a2c31a:	c602                	sw	zero,12(sp)
  a2c31c:	c43e                	sw	a5,8(sp)
  a2c31e:	4401                	li	s0,0
  a2c320:	00a059b7          	lui	s3,0xa05
  a2c324:	0048                	addi	a0,sp,4
  a2c326:	d21ff0ef          	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2c32a:	4601                	li	a2,0
  a2c32c:	4585                	li	a1,1
  a2c32e:	4505                	li	a0,1
  a2c330:	d4fff0ef          	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2c334:	d79ff0ef          	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2c338:	7949a783          	lw	a5,1940(s3) # a05794 <g_sfc_cmd_databuf>
  a2c33c:	439c                	lw	a5,0(a5)
  a2c33e:	8b85                	andi	a5,a5,1
  a2c340:	cf91                	beqz	a5,a2c35c <hal_sfc_regs_wait_ready.constprop.0+0x58>
  a2c342:	854a                	mv	a0,s2
  a2c344:	868fe0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2c348:	00140793          	addi	a5,s0,1
  a2c34c:	00946663          	bltu	s0,s1,a2c358 <hal_sfc_regs_wait_ready.constprop.0+0x54>
  a2c350:	8000 1344 051f      	l.li	a0,0x80001344
  a2c356:	8154                	popret	{ra,s0-s3},48
  a2c358:	843e                	mv	s0,a5
  a2c35a:	b7e9                	j	a2c324 <hal_sfc_regs_wait_ready.constprop.0+0x20>
  a2c35c:	4501                	li	a0,0
  a2c35e:	bfe5                	j	a2c356 <hal_sfc_regs_wait_ready.constprop.0+0x52>

00a2c360 <sfc_port_write_sr>:
  a2c360:	8148                	push	{ra,s0-s2},-32
  a2c362:	892a                	mv	s2,a0
  a2c364:	842e                	mv	s0,a1
  a2c366:	84b2                	mv	s1,a2
  a2c368:	f9dff0ef          	jal	ra,a2c304 <hal_sfc_regs_wait_ready.constprop.0>
  a2c36c:	4792                	lw	a5,4(sp)
  a2c36e:	4719                	li	a4,6
  a2c370:	9be1                	andi	a5,a5,-8
  a2c372:	0017e793          	ori	a5,a5,1
  a2c376:	c23e                	sw	a5,4(sp)
  a2c378:	00090463          	beqz	s2,a2c380 <sfc_port_write_sr+0x20>
  a2c37c:	05000713          	li	a4,80
  a2c380:	4792                	lw	a5,4(sp)
  a2c382:	0048                	addi	a0,sp,4
  a2c384:	c402                	sw	zero,8(sp)
  a2c386:	8077f793          	andi	a5,a5,-2041
  a2c38a:	06e7a79b          	orshf	a5,a5,a4,sll,3
  a2c38e:	7ff7f793          	andi	a5,a5,2047
  a2c392:	c23e                	sw	a5,4(sp)
  a2c394:	c602                	sw	zero,12(sp)
  a2c396:	cb1ff0ef          	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2c39a:	4601                	li	a2,0
  a2c39c:	4581                	li	a1,0
  a2c39e:	4501                	li	a0,0
  a2c3a0:	cdfff0ef          	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2c3a4:	d09ff0ef          	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2c3a8:	4785                	li	a5,1
  a2c3aa:	c43e                	sw	a5,8(sp)
  a2c3ac:	00a057b7          	lui	a5,0xa05
  a2c3b0:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2c3b4:	040e                	slli	s0,s0,0x3
  a2c3b6:	00146413          	ori	s0,s0,1
  a2c3ba:	c222                	sw	s0,4(sp)
  a2c3bc:	c602                	sw	zero,12(sp)
  a2c3be:	c384                	sw	s1,0(a5)
  a2c3c0:	0048                	addi	a0,sp,4
  a2c3c2:	c85ff0ef          	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2c3c6:	4601                	li	a2,0
  a2c3c8:	4585                	li	a1,1
  a2c3ca:	4501                	li	a0,0
  a2c3cc:	cb3ff0ef          	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2c3d0:	cddff0ef          	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2c3d4:	8144                	popret	{ra,s0-s2},32

00a2c3d6 <sfc_port_read_sr>:
  a2c3d6:	8118                	push	{ra},-32
  a2c3d8:	9d01                	uxtb	a0
  a2c3da:	4785                	li	a5,1
  a2c3dc:	050e                	slli	a0,a0,0x3
  a2c3de:	c43e                	sw	a5,8(sp)
  a2c3e0:	c602                	sw	zero,12(sp)
  a2c3e2:	c22a                	sw	a0,4(sp)
  a2c3e4:	f21ff0ef          	jal	ra,a2c304 <hal_sfc_regs_wait_ready.constprop.0>
  a2c3e8:	0048                	addi	a0,sp,4
  a2c3ea:	c5dff0ef          	jal	ra,a2c046 <hal_sfc_regs_set_opt>
  a2c3ee:	4601                	li	a2,0
  a2c3f0:	4585                	li	a1,1
  a2c3f2:	4505                	li	a0,1
  a2c3f4:	c8bff0ef          	jal	ra,a2c07e <hal_sfc_regs_set_opt_attr>
  a2c3f8:	cb5ff0ef          	jal	ra,a2c0ac <hal_sfc_regs_wait_config>
  a2c3fc:	00a057b7          	lui	a5,0xa05
  a2c400:	7947a783          	lw	a5,1940(a5) # a05794 <g_sfc_cmd_databuf>
  a2c404:	4388                	lw	a0,0(a5)
  a2c406:	8114                	popret	{ra},32

00a2c408 <sfc_port_write_lock>:
  a2c408:	000207b7          	lui	a5,0x20
  a2c40c:	02f56563          	bltu	a0,a5,a2c436 <sfc_port_write_lock+0x2e>
  a2c410:	004007b7          	lui	a5,0x400
  a2c414:	02b7e163          	bltu	a5,a1,a2c436 <sfc_port_write_lock+0x2e>
  a2c418:	8018                	push	{ra},-16
  a2c41a:	02800613          	li	a2,40
  a2c41e:	4585                	li	a1,1
  a2c420:	4505                	li	a0,1
  a2c422:	f3fff0ef          	jal	ra,a2c360 <sfc_port_write_sr>
  a2c426:	4609                	li	a2,2
  a2c428:	03100593          	li	a1,49
  a2c42c:	4505                	li	a0,1
  a2c42e:	f33ff0ef          	jal	ra,a2c360 <sfc_port_write_sr>
  a2c432:	4501                	li	a0,0
  a2c434:	8014                	popret	{ra},16
  a2c436:	4501                	li	a0,0
  a2c438:	8082                	ret

00a2c43a <sfc_port_write_unlock>:
  a2c43a:	8018                	push	{ra},-16
  a2c43c:	4671                	li	a2,28
  a2c43e:	4585                	li	a1,1
  a2c440:	4505                	li	a0,1
  a2c442:	f1fff0ef          	jal	ra,a2c360 <sfc_port_write_sr>
  a2c446:	4609                	li	a2,2
  a2c448:	03100593          	li	a1,49
  a2c44c:	4505                	li	a0,1
  a2c44e:	8010                	pop	{ra},16
  a2c450:	f11ff06f          	j	a2c360 <sfc_port_write_sr>

00a2c454 <sfc_port_fix_sr>:
  a2c454:	8118                	push	{ra},-32
  a2c456:	0068                	addi	a0,sp,12
  a2c458:	c602                	sw	zero,12(sp)
  a2c45a:	9a9ff0ef          	jal	ra,a2be02 <hal_sfc_get_flash_id>
  a2c45e:	e901                	bnez	a0,a2c46e <sfc_port_fix_sr+0x1a>
  a2c460:	4732                	lw	a4,12(sp)
  a2c462:	0016 40c8 079f      	l.li	a5,0x1640c8
  a2c468:	00f71463          	bne	a4,a5,a2c470 <sfc_port_fix_sr+0x1c>
  a2c46c:	2079                	jal	ra,a2c4fa <sfc_port_fix_sr_gd25q32>
  a2c46e:	8114                	popret	{ra},32
  a2c470:	80000537          	lui	a0,0x80000
  a2c474:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb53a>
  a2c476:	bfe5                	j	a2c46e <sfc_port_fix_sr+0x1a>

00a2c478 <sfc_port_gd25q32_read_sr>:
  a2c478:	8078                	push	{ra,s0-s5},-32
  a2c47a:	892a                	mv	s2,a0
  a2c47c:	448d                	li	s1,3
  a2c47e:	4995                	li	s3,5
  a2c480:	03500a13          	li	s4,53
  a2c484:	00a33ab7          	lui	s5,0xa33
  a2c488:	854a                	mv	a0,s2
  a2c48a:	f4dff0ef          	jal	ra,a2c3d6 <sfc_port_read_sr>
  a2c48e:	0ff57413          	andi	s0,a0,255
  a2c492:	03391f63          	bne	s2,s3,a2c4d0 <sfc_port_gd25q32_read_sr+0x58>
  a2c496:	09c47413          	andi	s0,s0,156
  a2c49a:	1411                	addi	s0,s0,-28
  a2c49c:	00143413          	seqz	s0,s0
  a2c4a0:	4585                	li	a1,1
  a2c4a2:	46f1                	li	a3,28
  a2c4a4:	e419                	bnez	s0,a2c4b2 <sfc_port_gd25q32_read_sr+0x3a>
  a2c4a6:	0ff57613          	andi	a2,a0,255
  a2c4aa:	a00a8513          	addi	a0,s5,-1536 # a32a00 <g_flash_spi_unknown_info+0x44>
  a2c4ae:	d43ff0ef          	jal	ra,a2c1f0 <print_str>
  a2c4b2:	e7bfd0ef          	jal	ra,a2a32c <uapi_tcxo_get_count>
  a2c4b6:	06400613          	li	a2,100
  a2c4ba:	4681                	li	a3,0
  a2c4bc:	8e4fc0ef          	jal	ra,a285a0 <__umoddi3>
  a2c4c0:	0505                	addi	a0,a0,1
  a2c4c2:	eebfd0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2c4c6:	c805                	beqz	s0,a2c4f6 <sfc_port_gd25q32_read_sr+0x7e>
  a2c4c8:	14fd                	addi	s1,s1,-1
  a2c4ca:	fcdd                	bnez	s1,a2c488 <sfc_port_gd25q32_read_sr+0x10>
  a2c4cc:	4501                	li	a0,0
  a2c4ce:	8074                	popret	{ra,s0-s5},32
  a2c4d0:	01491a63          	bne	s2,s4,a2c4e4 <sfc_port_gd25q32_read_sr+0x6c>
  a2c4d4:	04347413          	andi	s0,s0,67
  a2c4d8:	1479                	addi	s0,s0,-2
  a2c4da:	00143413          	seqz	s0,s0
  a2c4de:	4589                	li	a1,2
  a2c4e0:	4689                	li	a3,2
  a2c4e2:	b7c9                	j	a2c4a4 <sfc_port_gd25q32_read_sr+0x2c>
  a2c4e4:	06147413          	andi	s0,s0,97
  a2c4e8:	1401                	addi	s0,s0,-32
  a2c4ea:	00143413          	seqz	s0,s0
  a2c4ee:	458d                	li	a1,3
  a2c4f0:	02000693          	li	a3,32
  a2c4f4:	bf45                	j	a2c4a4 <sfc_port_gd25q32_read_sr+0x2c>
  a2c4f6:	557d                	li	a0,-1
  a2c4f8:	bfd9                	j	a2c4ce <sfc_port_gd25q32_read_sr+0x56>

00a2c4fa <sfc_port_fix_sr_gd25q32>:
  a2c4fa:	8068                	push	{ra,s0-s4},-32
  a2c4fc:	4481                	li	s1,0
  a2c4fe:	498d                	li	s3,3
  a2c500:	4515                	li	a0,5
  a2c502:	f77ff0ef          	jal	ra,a2c478 <sfc_port_gd25q32_read_sr>
  a2c506:	8a2a                	mv	s4,a0
  a2c508:	03500513          	li	a0,53
  a2c50c:	f6dff0ef          	jal	ra,a2c478 <sfc_port_gd25q32_read_sr>
  a2c510:	892a                	mv	s2,a0
  a2c512:	4555                	li	a0,21
  a2c514:	f65ff0ef          	jal	ra,a2c478 <sfc_port_gd25q32_read_sr>
  a2c518:	842a                	mv	s0,a0
  a2c51a:	040a1763          	bnez	s4,a2c568 <sfc_port_fix_sr_gd25q32+0x6e>
  a2c51e:	02090863          	beqz	s2,a2c54e <sfc_port_fix_sr_gd25q32+0x54>
  a2c522:	4609                	li	a2,2
  a2c524:	03100593          	li	a1,49
  a2c528:	4501                	li	a0,0
  a2c52a:	e37ff0ef          	jal	ra,a2c360 <sfc_port_write_sr>
  a2c52e:	c419                	beqz	s0,a2c53c <sfc_port_fix_sr_gd25q32+0x42>
  a2c530:	02000613          	li	a2,32
  a2c534:	45c5                	li	a1,17
  a2c536:	4501                	li	a0,0
  a2c538:	e29ff0ef          	jal	ra,a2c360 <sfc_port_write_sr>
  a2c53c:	03c00513          	li	a0,60
  a2c540:	0485                	addi	s1,s1,1
  a2c542:	e1bfd0ef          	jal	ra,a2a35c <uapi_tcxo_delay_ms>
  a2c546:	fb349de3          	bne	s1,s3,a2c500 <sfc_port_fix_sr_gd25q32+0x6>
  a2c54a:	547d                	li	s0,-1
  a2c54c:	a801                	j	a2c55c <sfc_port_fix_sr_gd25q32+0x62>
  a2c54e:	f16d                	bnez	a0,a2c530 <sfc_port_fix_sr_gd25q32+0x36>
  a2c550:	e881                	bnez	s1,a2c560 <sfc_port_fix_sr_gd25q32+0x66>
  a2c552:	00a3 29d8 051f      	l.li	a0,0xa329d8
  a2c558:	6fa000ef          	jal	ra,a2cc52 <boot_msg0>
  a2c55c:	8522                	mv	a0,s0
  a2c55e:	8064                	popret	{ra,s0-s4},32
  a2c560:	00a3 29f0 051f      	l.li	a0,0xa329f0
  a2c566:	bfcd                	j	a2c558 <sfc_port_fix_sr_gd25q32+0x5e>
  a2c568:	4671                	li	a2,28
  a2c56a:	4585                	li	a1,1
  a2c56c:	4501                	li	a0,0
  a2c56e:	df3ff0ef          	jal	ra,a2c360 <sfc_port_write_sr>
  a2c572:	fa090ee3          	beqz	s2,a2c52e <sfc_port_fix_sr_gd25q32+0x34>
  a2c576:	b775                	j	a2c522 <sfc_port_fix_sr_gd25q32+0x28>

00a2c578 <build_flash_ctrl>:
  a2c578:	455c                	lw	a5,12(a0)
  a2c57a:	04b7859b          	addshf	a1,a5,a1,sll,2
  a2c57e:	4194                	lw	a3,0(a1)
  a2c580:	491c                	lw	a5,16(a0)
  a2c582:	04c7861b          	addshf	a2,a5,a2,sll,2
  a2c586:	0076f793          	andi	a5,a3,7
  a2c58a:	4218                	lw	a4,0(a2)
  a2c58c:	01079bbb          	bnei	a5,1,a2c5ba <build_flash_ctrl+0x42>
  a2c590:	8b1d                	andi	a4,a4,7
  a2c592:	02f71463          	bne	a4,a5,a2c5ba <build_flash_ctrl+0x42>
  a2c596:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c59c:	c3d4                	sw	a3,4(a5)
  a2c59e:	4214                	lw	a3,0(a2)
  a2c5a0:	c7d4                	sw	a3,12(a5)
  a2c5a2:	4954                	lw	a3,20(a0)
  a2c5a4:	cb94                	sw	a3,16(a5)
  a2c5a6:	4154                	lw	a3,4(a0)
  a2c5a8:	c394                	sw	a3,0(a5)
  a2c5aa:	4514                	lw	a3,8(a0)
  a2c5ac:	00d77b63          	bgeu	a4,a3,a2c5c2 <build_flash_ctrl+0x4a>
  a2c5b0:	4d18                	lw	a4,24(a0)
  a2c5b2:	c794                	sw	a3,8(a5)
  a2c5b4:	4501                	li	a0,0
  a2c5b6:	cbd8                	sw	a4,20(a5)
  a2c5b8:	8082                	ret
  a2c5ba:	8000 1346 051f      	l.li	a0,0x80001346
  a2c5c0:	8082                	ret
  a2c5c2:	8000 1349 051f      	l.li	a0,0x80001349
  a2c5c8:	8082                	ret

00a2c5ca <check_opt_param>:
  a2c5ca:	00a0 583c 079f      	l.li	a5,0xa0583c
  a2c5d0:	239c                	lbu	a5,0(a5)
  a2c5d2:	cf99                	beqz	a5,a2c5f0 <check_opt_param+0x26>
  a2c5d4:	00a0 5824 071f      	l.li	a4,0xa05824
  a2c5da:	4318                	lw	a4,0(a4)
  a2c5dc:	00b507b3          	add	a5,a0,a1
  a2c5e0:	00f76c63          	bltu	a4,a5,a2c5f8 <check_opt_param+0x2e>
  a2c5e4:	00f57a63          	bgeu	a0,a5,a2c5f8 <check_opt_param+0x2e>
  a2c5e8:	00b7e863          	bltu	a5,a1,a2c5f8 <check_opt_param+0x2e>
  a2c5ec:	4501                	li	a0,0
  a2c5ee:	8082                	ret
  a2c5f0:	8000 1340 051f      	l.li	a0,0x80001340
  a2c5f6:	8082                	ret
  a2c5f8:	80000537          	lui	a0,0x80000
  a2c5fc:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2c5fe:	8082                	ret

00a2c600 <check_init_param>:
  a2c600:	8078                	push	{ra,s0-s5},-32
  a2c602:	00452a83          	lw	s5,4(a0)
  a2c606:	00a06937          	lui	s2,0xa06
  a2c60a:	89aa                	mv	s3,a0
  a2c60c:	82492403          	lw	s0,-2012(s2) # a05824 <g_flash_ctrl>
  a2c610:	00852a03          	lw	s4,8(a0)
  a2c614:	c9fff0ef          	jal	ra,a2c2b2 <sfc_port_get_sfc_start_addr>
  a2c618:	00aaf663          	bgeu	s5,a0,a2c624 <check_init_param+0x24>
  a2c61c:	8000 1342 051f      	l.li	a0,0x80001342
  a2c622:	8074                	popret	{ra,s0-s5},32
  a2c624:	82490913          	addi	s2,s2,-2012
  a2c628:	008a7363          	bgeu	s4,s0,a2c62e <check_init_param+0x2e>
  a2c62c:	8452                	mv	s0,s4
  a2c62e:	0049a483          	lw	s1,4(s3)
  a2c632:	14fd                	addi	s1,s1,-1
  a2c634:	94a2                	add	s1,s1,s0
  a2c636:	c83ff0ef          	jal	ra,a2c2b8 <sfc_port_get_sfc_end_addr>
  a2c63a:	fe9561e3          	bltu	a0,s1,a2c61c <check_init_param+0x1c>
  a2c63e:	00892023          	sw	s0,0(s2)
  a2c642:	4501                	li	a0,0
  a2c644:	bff9                	j	a2c622 <check_init_param+0x22>

00a2c646 <uapi_sfc_init>:
  a2c646:	00a067b7          	lui	a5,0xa06
  a2c64a:	83c7c703          	lbu	a4,-1988(a5) # a0583c <g_sfc_inited>
  a2c64e:	ef59                	bnez	a4,a2c6ec <uapi_sfc_init+0xa6>
  a2c650:	8258                	push	{ra,s0-s3},-64
  a2c652:	842a                	mv	s0,a0
  a2c654:	83c78913          	addi	s2,a5,-1988
  a2c658:	ca5ff0ef          	jal	ra,a2c2fc <sfc_port_lock_init>
  a2c65c:	0868                	addi	a0,sp,28
  a2c65e:	fa4ff0ef          	jal	ra,a2be02 <hal_sfc_get_flash_id>
  a2c662:	e151                	bnez	a0,a2c6e6 <uapi_sfc_init+0xa0>
  a2c664:	200c                	lbu	a1,0(s0)
  a2c666:	3010                	lbu	a2,1(s0)
  a2c668:	49f2                	lw	s3,28(sp)
  a2c66a:	c62e                	sw	a1,12(sp)
  a2c66c:	c432                	sw	a2,8(sp)
  a2c66e:	c31ff0ef          	jal	ra,a2c29e <sfc_port_get_flash_spi_infos>
  a2c672:	84aa                	mv	s1,a0
  a2c674:	c33ff0ef          	jal	ra,a2c2a6 <sfc_port_get_flash_num>
  a2c678:	4622                	lw	a2,8(sp)
  a2c67a:	45b2                	lw	a1,12(sp)
  a2c67c:	86aa                	mv	a3,a0
  a2c67e:	87a6                	mv	a5,s1
  a2c680:	4701                	li	a4,0
  a2c682:	04e69963          	bne	a3,a4,a2c6d4 <uapi_sfc_init+0x8e>
  a2c686:	c25ff0ef          	jal	ra,a2c2aa <sfc_port_get_unknown_flash_info>
  a2c68a:	4605                	li	a2,1
  a2c68c:	4581                	li	a1,0
  a2c68e:	eebff0ef          	jal	ra,a2c578 <build_flash_ctrl>
  a2c692:	e931                	bnez	a0,a2c6e6 <uapi_sfc_init+0xa0>
  a2c694:	00a0 583d 079f      	l.li	a5,0xa0583d
  a2c69a:	4705                	li	a4,1
  a2c69c:	a398                	sb	a4,0(a5)
  a2c69e:	8522                	mv	a0,s0
  a2c6a0:	f61ff0ef          	jal	ra,a2c600 <check_init_param>
  a2c6a4:	e129                	bnez	a0,a2c6e6 <uapi_sfc_init+0xa0>
  a2c6a6:	00a06537          	lui	a0,0xa06
  a2c6aa:	82452603          	lw	a2,-2012(a0) # a05824 <g_flash_ctrl>
  a2c6ae:	404c                	lw	a1,4(s0)
  a2c6b0:	82450513          	addi	a0,a0,-2012
  a2c6b4:	f92ff0ef          	jal	ra,a2be46 <hal_sfc_init>
  a2c6b8:	e51d                	bnez	a0,a2c6e6 <uapi_sfc_init+0xa0>
  a2c6ba:	4785                	li	a5,1
  a2c6bc:	00f90023          	sb	a5,0(s2)
  a2c6c0:	00a0 583d 079f      	l.li	a5,0xa0583d
  a2c6c6:	239c                	lbu	a5,0(a5)
  a2c6c8:	4501                	li	a0,0
  a2c6ca:	cf91                	beqz	a5,a2c6e6 <uapi_sfc_init+0xa0>
  a2c6cc:	8000 1341 051f      	l.li	a0,0x80001341
  a2c6d2:	a811                	j	a2c6e6 <uapi_sfc_init+0xa0>
  a2c6d4:	853e                	mv	a0,a5
  a2c6d6:	07f1                	addi	a5,a5,28
  a2c6d8:	fe47a803          	lw	a6,-28(a5)
  a2c6dc:	01099663          	bne	s3,a6,a2c6e8 <uapi_sfc_init+0xa2>
  a2c6e0:	e99ff0ef          	jal	ra,a2c578 <build_flash_ctrl>
  a2c6e4:	dd4d                	beqz	a0,a2c69e <uapi_sfc_init+0x58>
  a2c6e6:	8254                	popret	{ra,s0-s3},64
  a2c6e8:	0705                	addi	a4,a4,1 # 40000001 <_gp_+0x3f5cb539>
  a2c6ea:	bf61                	j	a2c682 <uapi_sfc_init+0x3c>
  a2c6ec:	4501                	li	a0,0
  a2c6ee:	8082                	ret

00a2c6f0 <uapi_sfc_reg_read>:
  a2c6f0:	8188                	push	{ra,s0-s6},-48
  a2c6f2:	8a2e                	mv	s4,a1
  a2c6f4:	85b2                	mv	a1,a2
  a2c6f6:	892a                	mv	s2,a0
  a2c6f8:	84b2                	mv	s1,a2
  a2c6fa:	ed1ff0ef          	jal	ra,a2c5ca <check_opt_param>
  a2c6fe:	e13d                	bnez	a0,a2c764 <uapi_sfc_reg_read+0x74>
  a2c700:	bffff0ef          	jal	ra,a2c2fe <sfc_port_lock>
  a2c704:	00397b13          	andi	s6,s2,3
  a2c708:	8aaa                	mv	s5,a0
  a2c70a:	060b0263          	beqz	s6,a2c76e <uapi_sfc_reg_read+0x7e>
  a2c70e:	4791                	li	a5,4
  a2c710:	416787b3          	sub	a5,a5,s6
  a2c714:	41690933          	sub	s2,s2,s6
  a2c718:	0ff4f993          	andi	s3,s1,255
  a2c71c:	00f4e763          	bltu	s1,a5,a2c72a <uapi_sfc_reg_read+0x3a>
  a2c720:	4991                	li	s3,4
  a2c722:	416989b3          	sub	s3,s3,s6
  a2c726:	0ff9f993          	andi	s3,s3,255
  a2c72a:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c730:	43d4                	lw	a3,4(a5)
  a2c732:	4611                	li	a2,4
  a2c734:	006c                	addi	a1,sp,12
  a2c736:	854a                	mv	a0,s2
  a2c738:	c602                	sw	zero,12(sp)
  a2c73a:	feeff0ef          	jal	ra,a2bf28 <hal_sfc_reg_read>
  a2c73e:	842a                	mv	s0,a0
  a2c740:	ed11                	bnez	a0,a2c75c <uapi_sfc_reg_read+0x6c>
  a2c742:	007c                	addi	a5,sp,12
  a2c744:	86ce                	mv	a3,s3
  a2c746:	01678633          	add	a2,a5,s6
  a2c74a:	85ce                	mv	a1,s3
  a2c74c:	8552                	mv	a0,s4
  a2c74e:	4fa040ef          	jal	ra,a30c48 <memcpy_s>
  a2c752:	c911                	beqz	a0,a2c766 <uapi_sfc_reg_read+0x76>
  a2c754:	80000537          	lui	a0,0x80000
  a2c758:	00450413          	addi	s0,a0,4 # 80000004 <_gp_+0x7f5cb53c>
  a2c75c:	8556                	mv	a0,s5
  a2c75e:	ba5ff0ef          	jal	ra,a2c302 <sfc_port_unlock>
  a2c762:	8522                	mv	a0,s0
  a2c764:	8184                	popret	{ra,s0-s6},48
  a2c766:	0911                	addi	s2,s2,4
  a2c768:	9a4e                	add	s4,s4,s3
  a2c76a:	413484b3          	sub	s1,s1,s3
  a2c76e:	ffc4f993          	andi	s3,s1,-4
  a2c772:	02098163          	beqz	s3,a2c794 <uapi_sfc_reg_read+0xa4>
  a2c776:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c77c:	43d4                	lw	a3,4(a5)
  a2c77e:	864e                	mv	a2,s3
  a2c780:	85d2                	mv	a1,s4
  a2c782:	854a                	mv	a0,s2
  a2c784:	fa4ff0ef          	jal	ra,a2bf28 <hal_sfc_reg_read>
  a2c788:	842a                	mv	s0,a0
  a2c78a:	f969                	bnez	a0,a2c75c <uapi_sfc_reg_read+0x6c>
  a2c78c:	9a4e                	add	s4,s4,s3
  a2c78e:	994e                	add	s2,s2,s3
  a2c790:	413484b3          	sub	s1,s1,s3
  a2c794:	4401                	li	s0,0
  a2c796:	d0f9                	beqz	s1,a2c75c <uapi_sfc_reg_read+0x6c>
  a2c798:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c79e:	43d4                	lw	a3,4(a5)
  a2c7a0:	4611                	li	a2,4
  a2c7a2:	006c                	addi	a1,sp,12
  a2c7a4:	854a                	mv	a0,s2
  a2c7a6:	c602                	sw	zero,12(sp)
  a2c7a8:	f80ff0ef          	jal	ra,a2bf28 <hal_sfc_reg_read>
  a2c7ac:	842a                	mv	s0,a0
  a2c7ae:	86a6                	mv	a3,s1
  a2c7b0:	0070                	addi	a2,sp,12
  a2c7b2:	85a6                	mv	a1,s1
  a2c7b4:	8552                	mv	a0,s4
  a2c7b6:	492040ef          	jal	ra,a30c48 <memcpy_s>
  a2c7ba:	d14d                	beqz	a0,a2c75c <uapi_sfc_reg_read+0x6c>
  a2c7bc:	80000437          	lui	s0,0x80000
  a2c7c0:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb53c>
  a2c7c2:	bf69                	j	a2c75c <uapi_sfc_reg_read+0x6c>

00a2c7c4 <uapi_sfc_reg_write>:
  a2c7c4:	8198                	push	{ra,s0-s7},-64
  a2c7c6:	8a2e                	mv	s4,a1
  a2c7c8:	85b2                	mv	a1,a2
  a2c7ca:	84aa                	mv	s1,a0
  a2c7cc:	8932                	mv	s2,a2
  a2c7ce:	dfdff0ef          	jal	ra,a2c5ca <check_opt_param>
  a2c7d2:	842a                	mv	s0,a0
  a2c7d4:	e571                	bnez	a0,a2c8a0 <uapi_sfc_reg_write+0xdc>
  a2c7d6:	012485b3          	add	a1,s1,s2
  a2c7da:	8526                	mv	a0,s1
  a2c7dc:	c2dff0ef          	jal	ra,a2c408 <sfc_port_write_lock>
  a2c7e0:	0034fa93          	andi	s5,s1,3
  a2c7e4:	8b2a                	mv	s6,a0
  a2c7e6:	060a8863          	beqz	s5,a2c856 <uapi_sfc_reg_write+0x92>
  a2c7ea:	4791                	li	a5,4
  a2c7ec:	415787b3          	sub	a5,a5,s5
  a2c7f0:	415484b3          	sub	s1,s1,s5
  a2c7f4:	0ff97993          	andi	s3,s2,255
  a2c7f8:	00f96763          	bltu	s2,a5,a2c806 <uapi_sfc_reg_write+0x42>
  a2c7fc:	4991                	li	s3,4
  a2c7fe:	415989b3          	sub	s3,s3,s5
  a2c802:	0ff9f993          	andi	s3,s3,255
  a2c806:	00a0 5824 0b9f      	l.li	s7,0xa05824
  a2c80c:	004ba683          	lw	a3,4(s7)
  a2c810:	4611                	li	a2,4
  a2c812:	006c                	addi	a1,sp,12
  a2c814:	8526                	mv	a0,s1
  a2c816:	f12ff0ef          	jal	ra,a2bf28 <hal_sfc_reg_read>
  a2c81a:	842a                	mv	s0,a0
  a2c81c:	ed09                	bnez	a0,a2c836 <uapi_sfc_reg_write+0x72>
  a2c81e:	007c                	addi	a5,sp,12
  a2c820:	86ce                	mv	a3,s3
  a2c822:	8652                	mv	a2,s4
  a2c824:	85ce                	mv	a1,s3
  a2c826:	01578533          	add	a0,a5,s5
  a2c82a:	41e040ef          	jal	ra,a30c48 <memcpy_s>
  a2c82e:	c901                	beqz	a0,a2c83e <uapi_sfc_reg_write+0x7a>
  a2c830:	80000437          	lui	s0,0x80000
  a2c834:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb53c>
  a2c836:	855a                	mv	a0,s6
  a2c838:	c03ff0ef          	jal	ra,a2c43a <sfc_port_write_unlock>
  a2c83c:	a095                	j	a2c8a0 <uapi_sfc_reg_write+0xdc>
  a2c83e:	00cba683          	lw	a3,12(s7)
  a2c842:	8526                	mv	a0,s1
  a2c844:	4611                	li	a2,4
  a2c846:	006c                	addi	a1,sp,12
  a2c848:	f6cff0ef          	jal	ra,a2bfb4 <hal_sfc_reg_write>
  a2c84c:	842a                	mv	s0,a0
  a2c84e:	0491                	addi	s1,s1,4
  a2c850:	9a4e                	add	s4,s4,s3
  a2c852:	41390933          	sub	s2,s2,s3
  a2c856:	ffc97993          	andi	s3,s2,-4
  a2c85a:	fc71                	bnez	s0,a2c836 <uapi_sfc_reg_write+0x72>
  a2c85c:	02098063          	beqz	s3,a2c87c <uapi_sfc_reg_write+0xb8>
  a2c860:	00a0 5824 079f      	l.li	a5,0xa05824
  a2c866:	47d4                	lw	a3,12(a5)
  a2c868:	85d2                	mv	a1,s4
  a2c86a:	8526                	mv	a0,s1
  a2c86c:	864e                	mv	a2,s3
  a2c86e:	f46ff0ef          	jal	ra,a2bfb4 <hal_sfc_reg_write>
  a2c872:	9a4e                	add	s4,s4,s3
  a2c874:	94ce                	add	s1,s1,s3
  a2c876:	41390933          	sub	s2,s2,s3
  a2c87a:	e131                	bnez	a0,a2c8be <uapi_sfc_reg_write+0xfa>
  a2c87c:	fa090de3          	beqz	s2,a2c836 <uapi_sfc_reg_write+0x72>
  a2c880:	00a0 5824 041f      	l.li	s0,0xa05824
  a2c886:	4054                	lw	a3,4(s0)
  a2c888:	4611                	li	a2,4
  a2c88a:	006c                	addi	a1,sp,12
  a2c88c:	8526                	mv	a0,s1
  a2c88e:	e9aff0ef          	jal	ra,a2bf28 <hal_sfc_reg_read>
  a2c892:	c909                	beqz	a0,a2c8a4 <uapi_sfc_reg_write+0xe0>
  a2c894:	855a                	mv	a0,s6
  a2c896:	80000437          	lui	s0,0x80000
  a2c89a:	ba1ff0ef          	jal	ra,a2c43a <sfc_port_write_unlock>
  a2c89e:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb53c>
  a2c8a0:	8522                	mv	a0,s0
  a2c8a2:	8194                	popret	{ra,s0-s7},64
  a2c8a4:	86ca                	mv	a3,s2
  a2c8a6:	8652                	mv	a2,s4
  a2c8a8:	4591                	li	a1,4
  a2c8aa:	0068                	addi	a0,sp,12
  a2c8ac:	39c040ef          	jal	ra,a30c48 <memcpy_s>
  a2c8b0:	f175                	bnez	a0,a2c894 <uapi_sfc_reg_write+0xd0>
  a2c8b2:	4454                	lw	a3,12(s0)
  a2c8b4:	4611                	li	a2,4
  a2c8b6:	006c                	addi	a1,sp,12
  a2c8b8:	8526                	mv	a0,s1
  a2c8ba:	efaff0ef          	jal	ra,a2bfb4 <hal_sfc_reg_write>
  a2c8be:	842a                	mv	s0,a0
  a2c8c0:	bf9d                	j	a2c836 <uapi_sfc_reg_write+0x72>

00a2c8c2 <uapi_sfc_reg_erase>:
  a2c8c2:	80a8                	push	{ra,s0-s8},-48
  a2c8c4:	892a                	mv	s2,a0
  a2c8c6:	842e                	mv	s0,a1
  a2c8c8:	d03ff0ef          	jal	ra,a2c5ca <check_opt_param>
  a2c8cc:	e921                	bnez	a0,a2c91c <uapi_sfc_reg_erase+0x5a>
  a2c8ce:	008905b3          	add	a1,s2,s0
  a2c8d2:	77fd                	lui	a5,0xfffff
  a2c8d4:	01459713          	slli	a4,a1,0x14
  a2c8d8:	00f974b3          	and	s1,s2,a5
  a2c8dc:	cf41                	beqz	a4,a2c974 <uapi_sfc_reg_erase+0xb2>
  a2c8de:	8fed                	and	a5,a5,a1
  a2c8e0:	6705                	lui	a4,0x1
  a2c8e2:	80000537          	lui	a0,0x80000
  a2c8e6:	97ba                	add	a5,a5,a4
  a2c8e8:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2c8ea:	02991963          	bne	s2,s1,a2c91c <uapi_sfc_reg_erase+0x5a>
  a2c8ee:	02f59763          	bne	a1,a5,a2c91c <uapi_sfc_reg_erase+0x5a>
  a2c8f2:	8526                	mv	a0,s1
  a2c8f4:	40958a33          	sub	s4,a1,s1
  a2c8f8:	6b11                	lui	s6,0x4
  a2c8fa:	b0fff0ef          	jal	ra,a2c408 <sfc_port_write_lock>
  a2c8fe:	8c2a                	mv	s8,a0
  a2c900:	4901                	li	s2,0
  a2c902:	4981                	li	s3,0
  a2c904:	4a81                	li	s5,0
  a2c906:	00a0 5824 0b9f      	l.li	s7,0xa05824
  a2c90c:	1b7d                	addi	s6,s6,-1 # 3fff <ccause+0x303d>
  a2c90e:	040a1d63          	bnez	s4,a2c968 <uapi_sfc_reg_erase+0xa6>
  a2c912:	4401                	li	s0,0
  a2c914:	8562                	mv	a0,s8
  a2c916:	b25ff0ef          	jal	ra,a2c43a <sfc_port_write_unlock>
  a2c91a:	8522                	mv	a0,s0
  a2c91c:	80a4                	popret	{ra,s0-s8},48
  a2c91e:	010ba703          	lw	a4,16(s7)
  a2c922:	04f7071b          	addshf	a4,a4,a5,sll,2
  a2c926:	00072903          	lw	s2,0(a4) # 1000 <ccause+0x3e>
  a2c92a:	00e95993          	srli	s3,s2,0xe
  a2c92e:	8ace                	mv	s5,s3
  a2c930:	013a6663          	bltu	s4,s3,a2c93c <uapi_sfc_reg_erase+0x7a>
  a2c934:	fff98713          	addi	a4,s3,-1
  a2c938:	8f65                	and	a4,a4,s1
  a2c93a:	cb01                	beqz	a4,a2c94a <uapi_sfc_reg_erase+0x88>
  a2c93c:	0785                	addi	a5,a5,1 # fffff001 <_gp_+0xff5ca539>
  a2c93e:	008ba703          	lw	a4,8(s7)
  a2c942:	fce7eee3          	bltu	a5,a4,a2c91e <uapi_sfc_reg_erase+0x5c>
  a2c946:	02e78363          	beq	a5,a4,a2c96c <uapi_sfc_reg_erase+0xaa>
  a2c94a:	01697933          	and	s2,s2,s6
  a2c94e:	1d39291b          	orshf	s2,s2,s3,sll,14
  a2c952:	4601                	li	a2,0
  a2c954:	85ca                	mv	a1,s2
  a2c956:	8526                	mv	a0,s1
  a2c958:	ebcff0ef          	jal	ra,a2c014 <hal_sfc_reg_erase>
  a2c95c:	842a                	mv	s0,a0
  a2c95e:	f95d                	bnez	a0,a2c914 <uapi_sfc_reg_erase+0x52>
  a2c960:	415a0a33          	sub	s4,s4,s5
  a2c964:	94d6                	add	s1,s1,s5
  a2c966:	b765                	j	a2c90e <uapi_sfc_reg_erase+0x4c>
  a2c968:	4785                	li	a5,1
  a2c96a:	bfd1                	j	a2c93e <uapi_sfc_reg_erase+0x7c>
  a2c96c:	8000 1347 041f      	l.li	s0,0x80001347
  a2c972:	b74d                	j	a2c914 <uapi_sfc_reg_erase+0x52>
  a2c974:	f6990fe3          	beq	s2,s1,a2c8f2 <uapi_sfc_reg_erase+0x30>
  a2c978:	80000537          	lui	a0,0x80000
  a2c97c:	0505                	addi	a0,a0,1 # 80000001 <_gp_+0x7f5cb539>
  a2c97e:	bf79                	j	a2c91c <uapi_sfc_reg_erase+0x5a>

00a2c980 <efuse_read_item.part.1>:
  a2c980:	8188                	push	{ra,s0-s6},-48
  a2c982:	00a3 2a28 079f      	l.li	a5,0xa32a28
  a2c988:	06a7955b          	muliadd	a0,a5,a0,6
  a2c98c:	2126                	lhu	s1,2(a0)
  a2c98e:	00748a13          	addi	s4,s1,7
  a2c992:	003a5a13          	srli	s4,s4,0x3
  a2c996:	07466f63          	bltu	a2,s4,a2ca14 <efuse_read_item.part.1+0x94>
  a2c99a:	00055903          	lhu	s2,0(a0)
  a2c99e:	86b2                	mv	a3,a2
  a2c9a0:	89ae                	mv	s3,a1
  a2c9a2:	4601                	li	a2,0
  a2c9a4:	85b6                	mv	a1,a3
  a2c9a6:	854e                	mv	a0,s3
  a2c9a8:	31c040ef          	jal	ra,a30cc4 <memset_s>
  a2c9ac:	009967b3          	or	a5,s2,s1
  a2c9b0:	8b9d                	andi	a5,a5,7
  a2c9b2:	844a                	mv	s0,s2
  a2c9b4:	cb91                	beqz	a5,a2c9c8 <efuse_read_item.part.1+0x48>
  a2c9b6:	6a41                	lui	s4,0x10
  a2c9b8:	94ca                	add	s1,s1,s2
  a2c9ba:	4aa1                	li	s5,8
  a2c9bc:	1a7d                	addi	s4,s4,-1 # ffff <ccause+0xf03d>
  a2c9be:	4b05                	li	s6,1
  a2c9c0:	00944b63          	blt	s0,s1,a2c9d6 <efuse_read_item.part.1+0x56>
  a2c9c4:	4501                	li	a0,0
  a2c9c6:	a039                	j	a2c9d4 <efuse_read_item.part.1+0x54>
  a2c9c8:	8652                	mv	a2,s4
  a2c9ca:	00395593          	srli	a1,s2,0x3
  a2c9ce:	854e                	mv	a0,s3
  a2c9d0:	fdbfd0ef          	jal	ra,a2a9aa <uapi_efuse_read_buffer>
  a2c9d4:	8184                	popret	{ra,s0-s6},48
  a2c9d6:	00747613          	andi	a2,s0,7
  a2c9da:	00345593          	srli	a1,s0,0x3
  a2c9de:	00f10513          	addi	a0,sp,15
  a2c9e2:	f73fd0ef          	jal	ra,a2a954 <uapi_efuse_read_bit>
  a2c9e6:	f57d                	bnez	a0,a2c9d4 <efuse_read_item.part.1+0x54>
  a2c9e8:	00f14783          	lbu	a5,15(sp)
  a2c9ec:	c38d                	beqz	a5,a2ca0e <efuse_read_item.part.1+0x8e>
  a2c9ee:	412407b3          	sub	a5,s0,s2
  a2c9f2:	0357c733          	div	a4,a5,s5
  a2c9f6:	0357e7b3          	rem	a5,a5,s5
  a2c9fa:	01477733          	and	a4,a4,s4
  a2c9fe:	974e                	add	a4,a4,s3
  a2ca00:	2314                	lbu	a3,0(a4)
  a2ca02:	0147f7b3          	and	a5,a5,s4
  a2ca06:	00fb17b3          	sll	a5,s6,a5
  a2ca0a:	8fd5                	or	a5,a5,a3
  a2ca0c:	a31c                	sb	a5,0(a4)
  a2ca0e:	0405                	addi	s0,s0,1
  a2ca10:	9c21                	uxth	s0
  a2ca12:	b77d                	j	a2c9c0 <efuse_read_item.part.1+0x40>
  a2ca14:	557d                	li	a0,-1
  a2ca16:	bf7d                	j	a2c9d4 <efuse_read_item.part.1+0x54>

00a2ca18 <efuse_port_register_hal_funcs>:
  a2ca18:	8018                	push	{ra},-16
  a2ca1a:	9dcfe0ef          	jal	ra,a2abf6 <hal_efuse_funcs_get>
  a2ca1e:	8010                	pop	{ra},16
  a2ca20:	fe5fd06f          	j	a2aa04 <hal_efuse_register_funcs>

00a2ca24 <hal_efuse_get_region>:
  a2ca24:	8121                	srli	a0,a0,0x8
  a2ca26:	9d01                	uxtb	a0
  a2ca28:	8082                	ret

00a2ca2a <hal_efuse_get_byte_offset>:
  a2ca2a:	9d01                	uxtb	a0
  a2ca2c:	8082                	ret

00a2ca2e <efuse_read_item>:
  a2ca2e:	c589                	beqz	a1,a2ca38 <efuse_read_item+0xa>
  a2ca30:	1305723b          	bgeui	a0,19,a2ca38 <efuse_read_item+0xa>
  a2ca34:	f4dff06f          	j	a2c980 <efuse_read_item.part.1>
  a2ca38:	557d                	li	a0,-1
  a2ca3a:	8082                	ret

00a2ca3c <set_efuse_period>:
  a2ca3c:	8018                	push	{ra},-16
  a2ca3e:	2895                	jal	ra,a2cab2 <get_tcxo_freq>
  a2ca40:	010513bb          	bnei	a0,1,a2ca4e <set_efuse_period+0x12>
  a2ca44:	02900513          	li	a0,41
  a2ca48:	8010                	pop	{ra},16
  a2ca4a:	9a2fe06f          	j	a2abec <hal_efuse_set_clock_period>
  a2ca4e:	4565                	li	a0,25
  a2ca50:	bfe5                	j	a2ca48 <set_efuse_period+0xc>

00a2ca52 <malloc_port>:
  a2ca52:	f63fc06f          	j	a299b4 <malloc>

00a2ca56 <malloc_port_init>:
  a2ca56:	8118                	push	{ra},-32
  a2ca58:	00a2 98da 079f      	l.li	a5,0xa298da
  a2ca5e:	c23e                	sw	a5,4(sp)
  a2ca60:	00a2 99ea 079f      	l.li	a5,0xa299ea
  a2ca66:	c63e                	sw	a5,12(sp)
  a2ca68:	0048                	addi	a0,sp,4
  a2ca6a:	00a2 ca52 079f      	l.li	a5,0xa2ca52
  a2ca70:	c43e                	sw	a5,8(sp)
  a2ca72:	e15fc0ef          	jal	ra,a29886 <malloc_register_funcs>
  a2ca76:	00a06537          	lui	a0,0xa06
  a2ca7a:	0001 0000 079f      	l.li	a5,0x10000
  a2ca80:	b0850593          	addi	a1,a0,-1272 # a05b08 <__bss_end__>
  a2ca84:	95be                	add	a1,a1,a5
  a2ca86:	b0850513          	addi	a0,a0,-1272
  a2ca8a:	e51fc0ef          	jal	ra,a298da <malloc_init>
  a2ca8e:	8114                	popret	{ra},32

00a2ca90 <reboot_port_reboot_chip>:
  a2ca90:	8018                	push	{ra},-16
  a2ca92:	e4dfd0ef          	jal	ra,a2a8de <uapi_watchdog_deinit>
  a2ca96:	0000 0bb8 051f      	l.li	a0,0xbb8
  a2ca9c:	911fd0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2caa0:	40002737          	lui	a4,0x40002
  a2caa4:	11072783          	lw	a5,272(a4) # 40002110 <_gp_+0x3f5cd648>
  a2caa8:	0047e793          	ori	a5,a5,4
  a2caac:	10f72823          	sw	a5,272(a4)
  a2cab0:	8014                	popret	{ra},16

00a2cab2 <get_tcxo_freq>:
  a2cab2:	400007b7          	lui	a5,0x40000
  a2cab6:	4bc8                	lw	a0,20(a5)
  a2cab8:	8905                	andi	a0,a0,1
  a2caba:	8082                	ret

00a2cabc <boot_clock_adapt>:
  a2cabc:	8028                	push	{ra,s0},-16
  a2cabe:	ff5ff0ef          	jal	ra,a2cab2 <get_tcxo_freq>
  a2cac2:	010518bb          	bnei	a0,1,a2cae4 <boot_clock_adapt+0x28>
  a2cac6:	016e3437          	lui	s0,0x16e3
  a2caca:	60040593          	addi	a1,s0,1536 # 16e3600 <_gp_+0xcaeb38>
  a2cace:	4501                	li	a0,0
  a2cad0:	ef8ff0ef          	jal	ra,a2c1c8 <uart_port_set_clock_value>
  a2cad4:	4561                	li	a0,24
  a2cad6:	f80ff0ef          	jal	ra,a2c256 <tcxo_porting_ticks_per_usec_set>
  a2cada:	60040513          	addi	a0,s0,1536
  a2cade:	8020                	pop	{ra,s0},16
  a2cae0:	f92ff06f          	j	a2c272 <watchdog_port_set_clock>
  a2cae4:	02626437          	lui	s0,0x2626
  a2cae8:	a0040593          	addi	a1,s0,-1536 # 2625a00 <_gp_+0x1bf0f38>
  a2caec:	4501                	li	a0,0
  a2caee:	edaff0ef          	jal	ra,a2c1c8 <uart_port_set_clock_value>
  a2caf2:	02800513          	li	a0,40
  a2caf6:	f60ff0ef          	jal	ra,a2c256 <tcxo_porting_ticks_per_usec_set>
  a2cafa:	a0040513          	addi	a0,s0,-1536
  a2cafe:	b7c5                	j	a2cade <boot_clock_adapt+0x22>

00a2cb00 <switch_flash_clock_to_pll>:
  a2cb00:	8028                	push	{ra,s0},-16
  a2cb02:	40003437          	lui	s0,0x40003
  a2cb06:	4785                	li	a5,1
  a2cb08:	4af42223          	sw	a5,1188(s0) # 400034a4 <_gp_+0x3f5ce9dc>
  a2cb0c:	4505                	li	a0,1
  a2cb0e:	89ffd0ef          	jal	ra,a2a3ac <uapi_tcxo_delay_us>
  a2cb12:	478d                	li	a5,3
  a2cb14:	4af42223          	sw	a5,1188(s0)
  a2cb18:	44001737          	lui	a4,0x44001
  a2cb1c:	13472783          	lw	a5,308(a4) # 44001134 <_gp_+0x435cc66c>
  a2cb20:	000406b7          	lui	a3,0x40
  a2cb24:	8fd5                	or	a5,a5,a3
  a2cb26:	12f72a23          	sw	a5,308(a4)
  a2cb2a:	8024                	popret	{ra,s0},16

00a2cb2c <config_sfc_ctrl_ds>:
  a2cb2c:	4400e7b7          	lui	a5,0x4400e
  a2cb30:	8687a703          	lw	a4,-1944(a5) # 4400d868 <_gp_+0x435d8da0>
  a2cb34:	f8f77713          	andi	a4,a4,-113
  a2cb38:	03076713          	ori	a4,a4,48
  a2cb3c:	86e7a423          	sw	a4,-1944(a5)
  a2cb40:	86c7a703          	lw	a4,-1940(a5)
  a2cb44:	f8f77713          	andi	a4,a4,-113
  a2cb48:	02076713          	ori	a4,a4,32
  a2cb4c:	86e7a623          	sw	a4,-1940(a5)
  a2cb50:	8707a703          	lw	a4,-1936(a5)
  a2cb54:	f8f77713          	andi	a4,a4,-113
  a2cb58:	02076713          	ori	a4,a4,32
  a2cb5c:	86e7a823          	sw	a4,-1936(a5)
  a2cb60:	8747a703          	lw	a4,-1932(a5)
  a2cb64:	f8f77713          	andi	a4,a4,-113
  a2cb68:	02076713          	ori	a4,a4,32
  a2cb6c:	86e7aa23          	sw	a4,-1932(a5)
  a2cb70:	8787a703          	lw	a4,-1928(a5)
  a2cb74:	f8f77713          	andi	a4,a4,-113
  a2cb78:	02076713          	ori	a4,a4,32
  a2cb7c:	86e7ac23          	sw	a4,-1928(a5)
  a2cb80:	87c7a703          	lw	a4,-1924(a5)
  a2cb84:	f8f77713          	andi	a4,a4,-113
  a2cb88:	02076713          	ori	a4,a4,32
  a2cb8c:	86e7ae23          	sw	a4,-1924(a5)
  a2cb90:	8082                	ret

00a2cb92 <serial_set_mute>:
  a2cb92:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cb98:	4705                	li	a4,1
  a2cb9a:	a398                	sb	a4,0(a5)
  a2cb9c:	8082                	ret

00a2cb9e <serial_cancel_mute>:
  a2cb9e:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cba4:	00078023          	sb	zero,0(a5)
  a2cba8:	8082                	ret

00a2cbaa <serial_putc>:
  a2cbaa:	8118                	push	{ra},-32
  a2cbac:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cbb2:	239c                	lbu	a5,0(a5)
  a2cbb4:	00a107a3          	sb	a0,15(sp)
  a2cbb8:	eb81                	bnez	a5,a2cbc8 <serial_putc+0x1e>
  a2cbba:	4689                	li	a3,2
  a2cbbc:	4605                	li	a2,1
  a2cbbe:	00f10593          	addi	a1,sp,15
  a2cbc2:	4501                	li	a0,0
  a2cbc4:	bf7fd0ef          	jal	ra,a2a7ba <uapi_uart_write>
  a2cbc8:	8114                	popret	{ra},32

00a2cbca <serial_puts>:
  a2cbca:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cbd0:	239c                	lbu	a5,0(a5)
  a2cbd2:	ef89                	bnez	a5,a2cbec <serial_puts+0x22>
  a2cbd4:	8118                	push	{ra},-32
  a2cbd6:	c62a                	sw	a0,12(sp)
  a2cbd8:	934fc0ef          	jal	ra,a28d0c <strlen>
  a2cbdc:	45b2                	lw	a1,12(sp)
  a2cbde:	862a                	mv	a2,a0
  a2cbe0:	7d000693          	li	a3,2000
  a2cbe4:	4501                	li	a0,0
  a2cbe6:	8110                	pop	{ra},32
  a2cbe8:	bd3fd06f          	j	a2a7ba <uapi_uart_write>
  a2cbec:	8082                	ret

00a2cbee <serial_puthex>:
  a2cbee:	00a0 583f 079f      	l.li	a5,0xa0583f
  a2cbf4:	239c                	lbu	a5,0(a5)
  a2cbf6:	efa9                	bnez	a5,a2cc50 <serial_puthex+0x62>
  a2cbf8:	8098                	push	{ra,s0-s7},-48
  a2cbfa:	84aa                	mv	s1,a0
  a2cbfc:	00a3 2aa0 051f      	l.li	a0,0xa32aa0
  a2cc02:	8a2e                	mv	s4,a1
  a2cc04:	4401                	li	s0,0
  a2cc06:	fc5ff0ef          	jal	ra,a2cbca <serial_puts>
  a2cc0a:	4901                	li	s2,0
  a2cc0c:	4aa5                	li	s5,9
  a2cc0e:	4b1d                	li	s6,7
  a2cc10:	03000b93          	li	s7,48
  a2cc14:	49a1                	li	s3,8
  a2cc16:	01c4d713          	srli	a4,s1,0x1c
  a2cc1a:	0ff77793          	andi	a5,a4,255
  a2cc1e:	03078513          	addi	a0,a5,48
  a2cc22:	00eaf463          	bgeu	s5,a4,a2cc2a <serial_puthex+0x3c>
  a2cc26:	03778513          	addi	a0,a5,55
  a2cc2a:	0492                	slli	s1,s1,0x4
  a2cc2c:	000a0563          	beqz	s4,a2cc36 <serial_puthex+0x48>
  a2cc30:	f7bff0ef          	jal	ra,a2cbaa <serial_putc>
  a2cc34:	a811                	j	a2cc48 <serial_puthex+0x5a>
  a2cc36:	fe091de3          	bnez	s2,a2cc30 <serial_puthex+0x42>
  a2cc3a:	ff640be3          	beq	s0,s6,a2cc30 <serial_puthex+0x42>
  a2cc3e:	01750563          	beq	a0,s7,a2cc48 <serial_puthex+0x5a>
  a2cc42:	f69ff0ef          	jal	ra,a2cbaa <serial_putc>
  a2cc46:	4905                	li	s2,1
  a2cc48:	0405                	addi	s0,s0,1
  a2cc4a:	fd3416e3          	bne	s0,s3,a2cc16 <serial_puthex+0x28>
  a2cc4e:	8094                	popret	{ra,s0-s7},48
  a2cc50:	8082                	ret

00a2cc52 <boot_msg0>:
  a2cc52:	8018                	push	{ra},-16
  a2cc54:	f77ff0ef          	jal	ra,a2cbca <serial_puts>
  a2cc58:	00a3 34d4 051f      	l.li	a0,0xa334d4
  a2cc5e:	8010                	pop	{ra},16
  a2cc60:	f6bff06f          	j	a2cbca <serial_puts>

00a2cc64 <boot_msg1>:
  a2cc64:	8028                	push	{ra,s0},-16
  a2cc66:	842e                	mv	s0,a1
  a2cc68:	f63ff0ef          	jal	ra,a2cbca <serial_puts>
  a2cc6c:	8522                	mv	a0,s0
  a2cc6e:	4581                	li	a1,0
  a2cc70:	f7fff0ef          	jal	ra,a2cbee <serial_puthex>
  a2cc74:	00a3 34d4 051f      	l.li	a0,0xa334d4
  a2cc7a:	8020                	pop	{ra,s0},16
  a2cc7c:	f4fff06f          	j	a2cbca <serial_puts>

00a2cc80 <boot_msg2>:
  a2cc80:	8128                	push	{ra,s0},-32
  a2cc82:	842e                	mv	s0,a1
  a2cc84:	c632                	sw	a2,12(sp)
  a2cc86:	f45ff0ef          	jal	ra,a2cbca <serial_puts>
  a2cc8a:	4581                	li	a1,0
  a2cc8c:	8522                	mv	a0,s0
  a2cc8e:	f61ff0ef          	jal	ra,a2cbee <serial_puthex>
  a2cc92:	00a3 2a9c 051f      	l.li	a0,0xa32a9c
  a2cc98:	f33ff0ef          	jal	ra,a2cbca <serial_puts>
  a2cc9c:	4632                	lw	a2,12(sp)
  a2cc9e:	4581                	li	a1,0
  a2cca0:	8532                	mv	a0,a2
  a2cca2:	f4dff0ef          	jal	ra,a2cbee <serial_puthex>
  a2cca6:	00a3 34d4 051f      	l.li	a0,0xa334d4
  a2ccac:	8120                	pop	{ra,s0},32
  a2ccae:	f1dff06f          	j	a2cbca <serial_puts>

00a2ccb2 <hiburn_uart_init>:
  a2ccb2:	8228                	push	{ra,s0},-48
  a2ccb4:	00a3 4250 079f      	l.li	a5,0xa34250
  a2ccba:	00078023          	sb	zero,0(a5)
  a2ccbe:	02900793          	li	a5,41
  a2ccc2:	00f10623          	sb	a5,12(sp)
  a2ccc6:	07300793          	li	a5,115
  a2ccca:	00f107a3          	sb	a5,15(sp)
  a2ccce:	00f10723          	sb	a5,14(sp)
  a2ccd2:	411c                	lw	a5,0(a0)
  a2ccd4:	02a00713          	li	a4,42
  a2ccd8:	00e106a3          	sb	a4,13(sp)
  a2ccdc:	c83e                	sw	a5,16(sp)
  a2ccde:	215c                	lbu	a5,4(a0)
  a2cce0:	2178                	lbu	a4,6(a0)
  a2cce2:	00010423          	sb	zero,8(sp)
  a2cce6:	17ed                	addi	a5,a5,-5
  a2cce8:	00f10a23          	sb	a5,20(sp)
  a2ccec:	fff70793          	addi	a5,a4,-1
  a2ccf0:	9f81                	uxtb	a5
  a2ccf2:	0207fdbb          	bgeui	a5,2,a2cd28 <hiburn_uart_init+0x76>
  a2ccf6:	00e10b23          	sb	a4,22(sp)
  a2ccfa:	315c                	lbu	a5,5(a0)
  a2ccfc:	4405                	li	s0,1
  a2ccfe:	0838                	addi	a4,sp,24
  a2cd00:	17fd                	addi	a5,a5,-1
  a2cd02:	00f10aa3          	sb	a5,21(sp)
  a2cd06:	4681                	li	a3,0
  a2cd08:	003c                	addi	a5,sp,8
  a2cd0a:	0810                	addi	a2,sp,16
  a2cd0c:	006c                	addi	a1,sp,12
  a2cd0e:	4501                	li	a0,0
  a2cd10:	cc3e                	sw	a5,24(sp)
  a2cd12:	ce22                	sw	s0,28(sp)
  a2cd14:	9d9fd0ef          	jal	ra,a2a6ec <uapi_uart_init>
  a2cd18:	4501                	li	a0,0
  a2cd1a:	cd4ff0ef          	jal	ra,a2c1ee <uart_port_unregister_irq>
  a2cd1e:	00a0 583e 079f      	l.li	a5,0xa0583e
  a2cd24:	a380                	sb	s0,0(a5)
  a2cd26:	8224                	popret	{ra,s0},48
  a2cd28:	00010b23          	sb	zero,22(sp)
  a2cd2c:	b7f9                	j	a2ccfa <hiburn_uart_init+0x48>

00a2cd2e <set_reset_count>:
  a2cd2e:	40000737          	lui	a4,0x40000
  a2cd32:	471c                	lw	a5,8(a4)
  a2cd34:	893d                	andi	a0,a0,15
  a2cd36:	f0f7f793          	andi	a5,a5,-241
  a2cd3a:	08a7a79b          	orshf	a5,a5,a0,sll,4
  a2cd3e:	c71c                	sw	a5,8(a4)
  a2cd40:	8082                	ret

00a2cd42 <update_reset_count>:
  a2cd42:	8038                	push	{ra,s0-s1},-16
  a2cd44:	400007b7          	lui	a5,0x40000
  a2cd48:	4780                	lw	s0,8(a5)
  a2cd4a:	00a3 2aa4 051f      	l.li	a0,0xa32aa4
  a2cd50:	8011                	srli	s0,s0,0x4
  a2cd52:	883d                	andi	s0,s0,15
  a2cd54:	00140493          	addi	s1,s0,1
  a2cd58:	85a6                	mv	a1,s1
  a2cd5a:	f0bff0ef          	jal	ra,a2cc64 <boot_msg1>
  a2cd5e:	06400513          	li	a0,100
  a2cd62:	dfafd0ef          	jal	ra,a2a35c <uapi_tcxo_delay_ms>
  a2cd66:	0f04033b          	beqi	s0,15,a2cd72 <update_reset_count+0x30>
  a2cd6a:	8526                	mv	a0,s1
  a2cd6c:	8030                	pop	{ra,s0-s1},16
  a2cd6e:	fc1ff06f          	j	a2cd2e <set_reset_count>
  a2cd72:	b37fd0ef          	jal	ra,a2a8a8 <uapi_watchdog_disable>
  a2cd76:	10500073          	wfi
  a2cd7a:	a001                	j	a2cd7a <update_reset_count+0x38>

00a2cd7c <interrupt0_handler>:
  a2cd7c:	8028                	push	{ra,s0},-16
  a2cd7e:	040007b7          	lui	a5,0x4000
  a2cd82:	3047b7f3          	csrrc	a5,mie,a5
  a2cd86:	00a06437          	lui	s0,0xa06
  a2cd8a:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cd8e:	431c                	lw	a5,0(a4)
  a2cd90:	84040413          	addi	s0,s0,-1984
  a2cd94:	0785                	addi	a5,a5,1 # 4000001 <_gp_+0x35cb539>
  a2cd96:	c31c                	sw	a5,0(a4)
  a2cd98:	22c9                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cd9a:	5538                	lw	a4,104(a0)
  a2cd9c:	00a2 d37c 079f      	l.li	a5,0xa2d37c
  a2cda2:	00f70563          	beq	a4,a5,a2cdac <interrupt0_handler+0x30>
  a2cda6:	2a55                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cda8:	553c                	lw	a5,104(a0)
  a2cdaa:	9782                	jalr	a5
  a2cdac:	040007b7          	lui	a5,0x4000
  a2cdb0:	3047a7f3          	csrrs	a5,mie,a5
  a2cdb4:	401c                	lw	a5,0(s0)
  a2cdb6:	17fd                	addi	a5,a5,-1 # 3ffffff <_gp_+0x35cb537>
  a2cdb8:	c01c                	sw	a5,0(s0)
  a2cdba:	8024                	popret	{ra,s0},16

00a2cdbc <interrupt1_handler>:
  a2cdbc:	8028                	push	{ra,s0},-16
  a2cdbe:	080007b7          	lui	a5,0x8000
  a2cdc2:	3047b7f3          	csrrc	a5,mie,a5
  a2cdc6:	00a06437          	lui	s0,0xa06
  a2cdca:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cdce:	431c                	lw	a5,0(a4)
  a2cdd0:	84040413          	addi	s0,s0,-1984
  a2cdd4:	0785                	addi	a5,a5,1 # 8000001 <_gp_+0x75cb539>
  a2cdd6:	c31c                	sw	a5,0(a4)
  a2cdd8:	2249                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cdda:	5578                	lw	a4,108(a0)
  a2cddc:	00a2 d37c 079f      	l.li	a5,0xa2d37c
  a2cde2:	00f70563          	beq	a4,a5,a2cdec <interrupt1_handler+0x30>
  a2cde6:	2a95                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cde8:	557c                	lw	a5,108(a0)
  a2cdea:	9782                	jalr	a5
  a2cdec:	080007b7          	lui	a5,0x8000
  a2cdf0:	3047a7f3          	csrrs	a5,mie,a5
  a2cdf4:	401c                	lw	a5,0(s0)
  a2cdf6:	17fd                	addi	a5,a5,-1 # 7ffffff <_gp_+0x75cb537>
  a2cdf8:	c01c                	sw	a5,0(s0)
  a2cdfa:	8024                	popret	{ra,s0},16

00a2cdfc <interrupt2_handler>:
  a2cdfc:	8028                	push	{ra,s0},-16
  a2cdfe:	100007b7          	lui	a5,0x10000
  a2ce02:	3047b7f3          	csrrc	a5,mie,a5
  a2ce06:	00a06437          	lui	s0,0xa06
  a2ce0a:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2ce0e:	431c                	lw	a5,0(a4)
  a2ce10:	84040413          	addi	s0,s0,-1984
  a2ce14:	0785                	addi	a5,a5,1 # 10000001 <_gp_+0xf5cb539>
  a2ce16:	c31c                	sw	a5,0(a4)
  a2ce18:	2289                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2ce1a:	5938                	lw	a4,112(a0)
  a2ce1c:	00a2 d37c 079f      	l.li	a5,0xa2d37c
  a2ce22:	00f70563          	beq	a4,a5,a2ce2c <interrupt2_handler+0x30>
  a2ce26:	2a15                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2ce28:	593c                	lw	a5,112(a0)
  a2ce2a:	9782                	jalr	a5
  a2ce2c:	100007b7          	lui	a5,0x10000
  a2ce30:	3047a7f3          	csrrs	a5,mie,a5
  a2ce34:	401c                	lw	a5,0(s0)
  a2ce36:	17fd                	addi	a5,a5,-1 # fffffff <_gp_+0xf5cb537>
  a2ce38:	c01c                	sw	a5,0(s0)
  a2ce3a:	8024                	popret	{ra,s0},16

00a2ce3c <interrupt3_handler>:
  a2ce3c:	8028                	push	{ra,s0},-16
  a2ce3e:	200007b7          	lui	a5,0x20000
  a2ce42:	3047b7f3          	csrrc	a5,mie,a5
  a2ce46:	00a06437          	lui	s0,0xa06
  a2ce4a:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2ce4e:	431c                	lw	a5,0(a4)
  a2ce50:	84040413          	addi	s0,s0,-1984
  a2ce54:	0785                	addi	a5,a5,1 # 20000001 <_gp_+0x1f5cb539>
  a2ce56:	c31c                	sw	a5,0(a4)
  a2ce58:	2209                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2ce5a:	5978                	lw	a4,116(a0)
  a2ce5c:	00a2 d37c 079f      	l.li	a5,0xa2d37c
  a2ce62:	00f70563          	beq	a4,a5,a2ce6c <interrupt3_handler+0x30>
  a2ce66:	28d5                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2ce68:	597c                	lw	a5,116(a0)
  a2ce6a:	9782                	jalr	a5
  a2ce6c:	200007b7          	lui	a5,0x20000
  a2ce70:	3047a7f3          	csrrs	a5,mie,a5
  a2ce74:	401c                	lw	a5,0(s0)
  a2ce76:	17fd                	addi	a5,a5,-1 # 1fffffff <_gp_+0x1f5cb537>
  a2ce78:	c01c                	sw	a5,0(s0)
  a2ce7a:	8024                	popret	{ra,s0},16

00a2ce7c <interrupt4_handler>:
  a2ce7c:	8028                	push	{ra,s0},-16
  a2ce7e:	400007b7          	lui	a5,0x40000
  a2ce82:	3047b7f3          	csrrc	a5,mie,a5
  a2ce86:	00a06437          	lui	s0,0xa06
  a2ce8a:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2ce8e:	431c                	lw	a5,0(a4)
  a2ce90:	84040413          	addi	s0,s0,-1984
  a2ce94:	0785                	addi	a5,a5,1 # 40000001 <_gp_+0x3f5cb539>
  a2ce96:	c31c                	sw	a5,0(a4)
  a2ce98:	20c9                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2ce9a:	5d38                	lw	a4,120(a0)
  a2ce9c:	00a2 d37c 079f      	l.li	a5,0xa2d37c
  a2cea2:	00f70563          	beq	a4,a5,a2ceac <interrupt4_handler+0x30>
  a2cea6:	2855                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cea8:	5d3c                	lw	a5,120(a0)
  a2ceaa:	9782                	jalr	a5
  a2ceac:	400007b7          	lui	a5,0x40000
  a2ceb0:	3047a7f3          	csrrs	a5,mie,a5
  a2ceb4:	401c                	lw	a5,0(s0)
  a2ceb6:	17fd                	addi	a5,a5,-1 # 3fffffff <_gp_+0x3f5cb537>
  a2ceb8:	c01c                	sw	a5,0(s0)
  a2ceba:	8024                	popret	{ra,s0},16

00a2cebc <interrupt5_handler>:
  a2cebc:	8028                	push	{ra,s0},-16
  a2cebe:	800007b7          	lui	a5,0x80000
  a2cec2:	3047b7f3          	csrrc	a5,mie,a5
  a2cec6:	00a06437          	lui	s0,0xa06
  a2ceca:	84040713          	addi	a4,s0,-1984 # a05840 <g_interrupt_running>
  a2cece:	431c                	lw	a5,0(a4)
  a2ced0:	84040413          	addi	s0,s0,-1984
  a2ced4:	0785                	addi	a5,a5,1 # 80000001 <_gp_+0x7f5cb539>
  a2ced6:	c31c                	sw	a5,0(a4)
  a2ced8:	2049                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2ceda:	5d78                	lw	a4,124(a0)
  a2cedc:	00a2 d37c 079f      	l.li	a5,0xa2d37c
  a2cee2:	00f70563          	beq	a4,a5,a2ceec <interrupt5_handler+0x30>
  a2cee6:	2895                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cee8:	5d7c                	lw	a5,124(a0)
  a2ceea:	9782                	jalr	a5
  a2ceec:	800007b7          	lui	a5,0x80000
  a2cef0:	3047a7f3          	csrrs	a5,mie,a5
  a2cef4:	401c                	lw	a5,0(s0)
  a2cef6:	17fd                	addi	a5,a5,-1 # 7fffffff <_gp_+0x7f5cb537>
  a2cef8:	c01c                	sw	a5,0(s0)
  a2cefa:	8024                	popret	{ra,s0},16

00a2cefc <local_interrupt_handler>:
  a2cefc:	8038                	push	{ra,s0-s1},-16
  a2cefe:	7db040ef          	jal	ra,a31ed8 <global_interrupt_lock>
  a2cf02:	00a064b7          	lui	s1,0xa06
  a2cf06:	84048713          	addi	a4,s1,-1984 # a05840 <g_interrupt_running>
  a2cf0a:	431c                	lw	a5,0(a4)
  a2cf0c:	0785                	addi	a5,a5,1
  a2cf0e:	c31c                	sw	a5,0(a4)
  a2cf10:	7e1040ef          	jal	ra,a31ef0 <global_interrupt_restore>
  a2cf14:	34202473          	csrr	s0,mcause
  a2cf18:	2089                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cf1a:	6785                	lui	a5,0x1
  a2cf1c:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a2cf1e:	8c7d                	and	s0,s0,a5
  a2cf20:	040a                	slli	s0,s0,0x2
  a2cf22:	9522                	add	a0,a0,s0
  a2cf24:	4118                	lw	a4,0(a0)
  a2cf26:	00a2 cf58 079f      	l.li	a5,0xa2cf58
  a2cf2c:	84048493          	addi	s1,s1,-1984
  a2cf30:	00f70663          	beq	a4,a5,a2cf3c <local_interrupt_handler+0x40>
  a2cf34:	201d                	jal	ra,a2cf5a <isr_get_ramexceptiontable_addr>
  a2cf36:	9522                	add	a0,a0,s0
  a2cf38:	411c                	lw	a5,0(a0)
  a2cf3a:	9782                	jalr	a5
  a2cf3c:	79d040ef          	jal	ra,a31ed8 <global_interrupt_lock>
  a2cf40:	409c                	lw	a5,0(s1)
  a2cf42:	17fd                	addi	a5,a5,-1
  a2cf44:	c09c                	sw	a5,0(s1)
  a2cf46:	8030                	pop	{ra,s0-s1},16
  a2cf48:	7a90406f          	j	a31ef0 <global_interrupt_restore>

00a2cf4c <interrupt_number_get>:
  a2cf4c:	34202573          	csrr	a0,mcause
  a2cf50:	6785                	lui	a5,0x1
  a2cf52:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a2cf54:	8d7d                	and	a0,a0,a5
  a2cf56:	8082                	ret

00a2cf58 <b_sub_monitor_handler>:
  a2cf58:	a001                	j	a2cf58 <b_sub_monitor_handler>

00a2cf5a <isr_get_ramexceptiontable_addr>:
  a2cf5a:	00a2 8420 051f      	l.li	a0,0xa28420
  a2cf60:	8082                	ret

00a2cf62 <do_hard_fault_handler>:
  a2cf62:	c13d                	beqz	a0,a2cfc8 <do_hard_fault_handler+0x66>
  a2cf64:	8048                	push	{ra,s0-s2},-16
  a2cf66:	00452903          	lw	s2,4(a0)
  a2cf6a:	842a                	mv	s0,a0
  a2cf6c:	00a3 2afc 051f      	l.li	a0,0xa32afc
  a2cf72:	85ca                	mv	a1,s2
  a2cf74:	a7cff0ef          	jal	ra,a2c1f0 <print_str>
  a2cf78:	800007b7          	lui	a5,0x80000
  a2cf7c:	07b1                	addi	a5,a5,12 # 8000000c <_gp_+0x7f5cb544>
  a2cf7e:	04f91263          	bne	s2,a5,a2cfc2 <do_hard_fault_handler+0x60>
  a2cf82:	00a3 2b10 051f      	l.li	a0,0xa32b10
  a2cf88:	6489                	lui	s1,0x2
  a2cf8a:	a66ff0ef          	jal	ra,a2c1f0 <print_str>
  a2cf8e:	04a1                	addi	s1,s1,8 # 2008 <ccause+0x1046>
  a2cf90:	8526                	mv	a0,s1
  a2cf92:	427000ef          	jal	ra,a2dbb8 <cpu_utils_set_system_status_by_cause>
  a2cf96:	4c5c                	lw	a5,28(s0)
  a2cf98:	8522                	mv	a0,s0
  a2cf9a:	07c1                	addi	a5,a5,16
  a2cf9c:	cc5c                	sw	a5,28(s0)
  a2cf9e:	585000ef          	jal	ra,a2dd22 <set_exception_info_riscv>
  a2cfa2:	00a0 5858 079f      	l.li	a5,0xa05858
  a2cfa8:	439c                	lw	a5,0(a5)
  a2cfaa:	c781                	beqz	a5,a2cfb2 <do_hard_fault_handler+0x50>
  a2cfac:	85a2                	mv	a1,s0
  a2cfae:	854a                	mv	a0,s2
  a2cfb0:	9782                	jalr	a5
  a2cfb2:	85a6                	mv	a1,s1
  a2cfb4:	4509                	li	a0,2
  a2cfb6:	40b000ef          	jal	ra,a2dbc0 <cpu_utils_reset_chip_with_log>
  a2cfba:	4501                	li	a0,0
  a2cfbc:	8040                	pop	{ra,s0-s2},16
  a2cfbe:	8a7fd06f          	j	a2a864 <uapi_watchdog_enable>
  a2cfc2:	6489                	lui	s1,0x2
  a2cfc4:	0491                	addi	s1,s1,4 # 2004 <ccause+0x1042>
  a2cfc6:	b7e9                	j	a2cf90 <do_hard_fault_handler+0x2e>
  a2cfc8:	8082                	ret

00a2cfca <exc_info_display.part.2>:
  a2cfca:	8028                	push	{ra,s0},-16
  a2cfcc:	842a                	mv	s0,a0
  a2cfce:	00a3 2d6c 051f      	l.li	a0,0xa32d6c
  a2cfd4:	a1cff0ef          	jal	ra,a2c1f0 <print_str>
  a2cfd8:	202e                	lhu	a1,2(s0)
  a2cfda:	00a3 2da4 051f      	l.li	a0,0xa32da4
  a2cfe0:	a10ff0ef          	jal	ra,a2c1f0 <print_str>
  a2cfe4:	481c                	lw	a5,16(s0)
  a2cfe6:	00a3 2dbc 051f      	l.li	a0,0xa32dbc
  a2cfec:	4bcc                	lw	a1,20(a5)
  a2cfee:	a02ff0ef          	jal	ra,a2c1f0 <print_str>
  a2cff2:	481c                	lw	a5,16(s0)
  a2cff4:	00a3 2dd4 051f      	l.li	a0,0xa32dd4
  a2cffa:	4b8c                	lw	a1,16(a5)
  a2cffc:	9f4ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d000:	481c                	lw	a5,16(s0)
  a2d002:	00a3 2dec 051f      	l.li	a0,0xa32dec
  a2d008:	478c                	lw	a1,8(a5)
  a2d00a:	9e6ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d00e:	481c                	lw	a5,16(s0)
  a2d010:	00a3 2e04 051f      	l.li	a0,0xa32e04
  a2d016:	43cc                	lw	a1,4(a5)
  a2d018:	9d8ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d01c:	481c                	lw	a5,16(s0)
  a2d01e:	00a3 2e1c 051f      	l.li	a0,0xa32e1c
  a2d024:	438c                	lw	a1,0(a5)
  a2d026:	9caff0ef          	jal	ra,a2c1f0 <print_str>
  a2d02a:	481c                	lw	a5,16(s0)
  a2d02c:	00a3 2e34 051f      	l.li	a0,0xa32e34
  a2d032:	08c7a583          	lw	a1,140(a5)
  a2d036:	9baff0ef          	jal	ra,a2c1f0 <print_str>
  a2d03a:	481c                	lw	a5,16(s0)
  a2d03c:	00a3 2e4c 051f      	l.li	a0,0xa32e4c
  a2d042:	4fcc                	lw	a1,28(a5)
  a2d044:	9acff0ef          	jal	ra,a2c1f0 <print_str>
  a2d048:	481c                	lw	a5,16(s0)
  a2d04a:	00a3 2e64 051f      	l.li	a0,0xa32e64
  a2d050:	47cc                	lw	a1,12(a5)
  a2d052:	99eff0ef          	jal	ra,a2c1f0 <print_str>
  a2d056:	481c                	lw	a5,16(s0)
  a2d058:	00a3 2e7c 051f      	l.li	a0,0xa32e7c
  a2d05e:	4f8c                	lw	a1,24(a5)
  a2d060:	990ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d064:	481c                	lw	a5,16(s0)
  a2d066:	00a3 2e94 051f      	l.li	a0,0xa32e94
  a2d06c:	0887a583          	lw	a1,136(a5)
  a2d070:	980ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d074:	481c                	lw	a5,16(s0)
  a2d076:	00a3 2eac 051f      	l.li	a0,0xa32eac
  a2d07c:	0847a583          	lw	a1,132(a5)
  a2d080:	970ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d084:	481c                	lw	a5,16(s0)
  a2d086:	00a3 2ec4 051f      	l.li	a0,0xa32ec4
  a2d08c:	0807a583          	lw	a1,128(a5)
  a2d090:	960ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d094:	481c                	lw	a5,16(s0)
  a2d096:	00a3 2edc 051f      	l.li	a0,0xa32edc
  a2d09c:	47ec                	lw	a1,76(a5)
  a2d09e:	952ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0a2:	481c                	lw	a5,16(s0)
  a2d0a4:	00a3 2ef4 051f      	l.li	a0,0xa32ef4
  a2d0aa:	47ac                	lw	a1,72(a5)
  a2d0ac:	944ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0b0:	481c                	lw	a5,16(s0)
  a2d0b2:	00a3 2f0c 051f      	l.li	a0,0xa32f0c
  a2d0b8:	5fec                	lw	a1,124(a5)
  a2d0ba:	936ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0be:	481c                	lw	a5,16(s0)
  a2d0c0:	00a3 2f24 051f      	l.li	a0,0xa32f24
  a2d0c6:	5fac                	lw	a1,120(a5)
  a2d0c8:	928ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0cc:	481c                	lw	a5,16(s0)
  a2d0ce:	00a3 2f3c 051f      	l.li	a0,0xa32f3c
  a2d0d4:	5bec                	lw	a1,116(a5)
  a2d0d6:	91aff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0da:	481c                	lw	a5,16(s0)
  a2d0dc:	00a3 2f54 051f      	l.li	a0,0xa32f54
  a2d0e2:	5bac                	lw	a1,112(a5)
  a2d0e4:	90cff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0e8:	481c                	lw	a5,16(s0)
  a2d0ea:	00a3 2f6c 051f      	l.li	a0,0xa32f6c
  a2d0f0:	57ec                	lw	a1,108(a5)
  a2d0f2:	8feff0ef          	jal	ra,a2c1f0 <print_str>
  a2d0f6:	481c                	lw	a5,16(s0)
  a2d0f8:	00a3 2f84 051f      	l.li	a0,0xa32f84
  a2d0fe:	57ac                	lw	a1,104(a5)
  a2d100:	8f0ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d104:	481c                	lw	a5,16(s0)
  a2d106:	00a3 2f9c 051f      	l.li	a0,0xa32f9c
  a2d10c:	53ec                	lw	a1,100(a5)
  a2d10e:	8e2ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d112:	481c                	lw	a5,16(s0)
  a2d114:	00a3 2fb4 051f      	l.li	a0,0xa32fb4
  a2d11a:	53ac                	lw	a1,96(a5)
  a2d11c:	8d4ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d120:	481c                	lw	a5,16(s0)
  a2d122:	00a3 2fcc 051f      	l.li	a0,0xa32fcc
  a2d128:	43ec                	lw	a1,68(a5)
  a2d12a:	8c6ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d12e:	481c                	lw	a5,16(s0)
  a2d130:	00a3 2fe4 051f      	l.li	a0,0xa32fe4
  a2d136:	43ac                	lw	a1,64(a5)
  a2d138:	8b8ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d13c:	481c                	lw	a5,16(s0)
  a2d13e:	00a3 2ffc 051f      	l.li	a0,0xa32ffc
  a2d144:	5fcc                	lw	a1,60(a5)
  a2d146:	8aaff0ef          	jal	ra,a2c1f0 <print_str>
  a2d14a:	481c                	lw	a5,16(s0)
  a2d14c:	00a3 3014 051f      	l.li	a0,0xa33014
  a2d152:	5f8c                	lw	a1,56(a5)
  a2d154:	89cff0ef          	jal	ra,a2c1f0 <print_str>
  a2d158:	481c                	lw	a5,16(s0)
  a2d15a:	00a3 302c 051f      	l.li	a0,0xa3302c
  a2d160:	5bcc                	lw	a1,52(a5)
  a2d162:	88eff0ef          	jal	ra,a2c1f0 <print_str>
  a2d166:	481c                	lw	a5,16(s0)
  a2d168:	00a3 3044 051f      	l.li	a0,0xa33044
  a2d16e:	5b8c                	lw	a1,48(a5)
  a2d170:	880ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d174:	481c                	lw	a5,16(s0)
  a2d176:	00a3 305c 051f      	l.li	a0,0xa3305c
  a2d17c:	57cc                	lw	a1,44(a5)
  a2d17e:	872ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d182:	481c                	lw	a5,16(s0)
  a2d184:	00a3 3074 051f      	l.li	a0,0xa33074
  a2d18a:	578c                	lw	a1,40(a5)
  a2d18c:	864ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d190:	481c                	lw	a5,16(s0)
  a2d192:	00a3 308c 051f      	l.li	a0,0xa3308c
  a2d198:	53cc                	lw	a1,36(a5)
  a2d19a:	856ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d19e:	481c                	lw	a5,16(s0)
  a2d1a0:	00a3 30a4 051f      	l.li	a0,0xa330a4
  a2d1a6:	538c                	lw	a1,32(a5)
  a2d1a8:	848ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d1ac:	481c                	lw	a5,16(s0)
  a2d1ae:	00a3 30bc 051f      	l.li	a0,0xa330bc
  a2d1b4:	4fec                	lw	a1,92(a5)
  a2d1b6:	83aff0ef          	jal	ra,a2c1f0 <print_str>
  a2d1ba:	481c                	lw	a5,16(s0)
  a2d1bc:	00a3 30d4 051f      	l.li	a0,0xa330d4
  a2d1c2:	4fac                	lw	a1,88(a5)
  a2d1c4:	82cff0ef          	jal	ra,a2c1f0 <print_str>
  a2d1c8:	481c                	lw	a5,16(s0)
  a2d1ca:	00a3 30ec 051f      	l.li	a0,0xa330ec
  a2d1d0:	4bec                	lw	a1,84(a5)
  a2d1d2:	81eff0ef          	jal	ra,a2c1f0 <print_str>
  a2d1d6:	481c                	lw	a5,16(s0)
  a2d1d8:	00a3 3104 051f      	l.li	a0,0xa33104
  a2d1de:	4bac                	lw	a1,80(a5)
  a2d1e0:	810ff0ef          	jal	ra,a2c1f0 <print_str>
  a2d1e4:	00a3 311c 051f      	l.li	a0,0xa3311c
  a2d1ea:	8020                	pop	{ra,s0},16
  a2d1ec:	804ff06f          	j	a2c1f0 <print_str>

00a2d1f0 <do_process_exception>:
  a2d1f0:	4154                	lw	a3,4(a0)
  a2d1f2:	00a067b7          	lui	a5,0xa06
  a2d1f6:	84478713          	addi	a4,a5,-1980 # a05844 <g_exc_info>
  a2d1fa:	cb08                	sw	a0,16(a4)
  a2d1fc:	84478513          	addi	a0,a5,-1980
  a2d200:	a336                	sh	a3,2(a4)
  a2d202:	dc9ff06f          	j	a2cfca <exc_info_display.part.2>

00a2d206 <do_trap_unknown>:
  a2d206:	8028                	push	{ra,s0},-16
  a2d208:	842a                	mv	s0,a0
  a2d20a:	00a3 2d4c 051f      	l.li	a0,0xa32d4c
  a2d210:	fe1fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d214:	8522                	mv	a0,s0
  a2d216:	8020                	pop	{ra,s0},16
  a2d218:	fd9ff06f          	j	a2d1f0 <do_process_exception>

00a2d21c <do_trap_insn_misaligned>:
  a2d21c:	8028                	push	{ra,s0},-16
  a2d21e:	842a                	mv	s0,a0
  a2d220:	00a3 2c7c 051f      	l.li	a0,0xa32c7c
  a2d226:	fcbfe0ef          	jal	ra,a2c1f0 <print_str>
  a2d22a:	8522                	mv	a0,s0
  a2d22c:	8020                	pop	{ra,s0},16
  a2d22e:	fc3ff06f          	j	a2d1f0 <do_process_exception>

00a2d232 <do_trap_insn_fault>:
  a2d232:	8028                	push	{ra,s0},-16
  a2d234:	842a                	mv	s0,a0
  a2d236:	00a3 2c30 051f      	l.li	a0,0xa32c30
  a2d23c:	fb5fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d240:	8522                	mv	a0,s0
  a2d242:	8020                	pop	{ra,s0},16
  a2d244:	fadff06f          	j	a2d1f0 <do_process_exception>

00a2d248 <do_trap_insn_illegal>:
  a2d248:	8028                	push	{ra,s0},-16
  a2d24a:	842a                	mv	s0,a0
  a2d24c:	00a3 2c58 051f      	l.li	a0,0xa32c58
  a2d252:	f9ffe0ef          	jal	ra,a2c1f0 <print_str>
  a2d256:	8522                	mv	a0,s0
  a2d258:	8020                	pop	{ra,s0},16
  a2d25a:	f97ff06f          	j	a2d1f0 <do_process_exception>

00a2d25e <do_trap_load_misaligned>:
  a2d25e:	8028                	push	{ra,s0},-16
  a2d260:	842a                	mv	s0,a0
  a2d262:	00a3 2cc8 051f      	l.li	a0,0xa32cc8
  a2d268:	f89fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d26c:	8522                	mv	a0,s0
  a2d26e:	8020                	pop	{ra,s0},16
  a2d270:	f81ff06f          	j	a2d1f0 <do_process_exception>

00a2d274 <do_trap_load_fault>:
  a2d274:	8028                	push	{ra,s0},-16
  a2d276:	842a                	mv	s0,a0
  a2d278:	00a3 2ca8 051f      	l.li	a0,0xa32ca8
  a2d27e:	f73fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d282:	8522                	mv	a0,s0
  a2d284:	8020                	pop	{ra,s0},16
  a2d286:	f6bff06f          	j	a2d1f0 <do_process_exception>

00a2d28a <do_trap_store_misaligned>:
  a2d28a:	8028                	push	{ra,s0},-16
  a2d28c:	842a                	mv	s0,a0
  a2d28e:	00a3 2d1c 051f      	l.li	a0,0xa32d1c
  a2d294:	f5dfe0ef          	jal	ra,a2c1f0 <print_str>
  a2d298:	8522                	mv	a0,s0
  a2d29a:	8020                	pop	{ra,s0},16
  a2d29c:	f55ff06f          	j	a2d1f0 <do_process_exception>

00a2d2a0 <do_trap_store_fault>:
  a2d2a0:	8028                	push	{ra,s0},-16
  a2d2a2:	842a                	mv	s0,a0
  a2d2a4:	00a3 2cf0 051f      	l.li	a0,0xa32cf0
  a2d2aa:	f47fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d2ae:	8522                	mv	a0,s0
  a2d2b0:	8020                	pop	{ra,s0},16
  a2d2b2:	f3fff06f          	j	a2d1f0 <do_process_exception>

00a2d2b6 <do_trap_ecall_u>:
  a2d2b6:	8028                	push	{ra,s0},-16
  a2d2b8:	842a                	mv	s0,a0
  a2d2ba:	00a3 2c04 051f      	l.li	a0,0xa32c04
  a2d2c0:	f31fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d2c4:	8522                	mv	a0,s0
  a2d2c6:	8020                	pop	{ra,s0},16
  a2d2c8:	f29ff06f          	j	a2d1f0 <do_process_exception>

00a2d2cc <do_trap_ecall_s>:
  a2d2cc:	8028                	push	{ra,s0},-16
  a2d2ce:	842a                	mv	s0,a0
  a2d2d0:	00a3 2bd8 051f      	l.li	a0,0xa32bd8
  a2d2d6:	f1bfe0ef          	jal	ra,a2c1f0 <print_str>
  a2d2da:	8522                	mv	a0,s0
  a2d2dc:	8020                	pop	{ra,s0},16
  a2d2de:	f13ff06f          	j	a2d1f0 <do_process_exception>

00a2d2e2 <do_trap_ecall_m>:
  a2d2e2:	8028                	push	{ra,s0},-16
  a2d2e4:	842a                	mv	s0,a0
  a2d2e6:	00a3 2bac 051f      	l.li	a0,0xa32bac
  a2d2ec:	f05fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d2f0:	8522                	mv	a0,s0
  a2d2f2:	8020                	pop	{ra,s0},16
  a2d2f4:	efdff06f          	j	a2d1f0 <do_process_exception>

00a2d2f8 <do_trap_break>:
  a2d2f8:	8028                	push	{ra,s0},-16
  a2d2fa:	842a                	mv	s0,a0
  a2d2fc:	00a3 2b98 051f      	l.li	a0,0xa32b98
  a2d302:	eeffe0ef          	jal	ra,a2c1f0 <print_str>
  a2d306:	8522                	mv	a0,s0
  a2d308:	8020                	pop	{ra,s0},16
  a2d30a:	ee7ff06f          	j	a2d1f0 <do_process_exception>

00a2d30e <do_insn_page_fault>:
  a2d30e:	8028                	push	{ra,s0},-16
  a2d310:	842a                	mv	s0,a0
  a2d312:	00a3 2b20 051f      	l.li	a0,0xa32b20
  a2d318:	ed9fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d31c:	8522                	mv	a0,s0
  a2d31e:	8020                	pop	{ra,s0},16
  a2d320:	ed1ff06f          	j	a2d1f0 <do_process_exception>

00a2d324 <do_load_page_fault>:
  a2d324:	8028                	push	{ra,s0},-16
  a2d326:	842a                	mv	s0,a0
  a2d328:	00a3 2b40 051f      	l.li	a0,0xa32b40
  a2d32e:	ec3fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d332:	8522                	mv	a0,s0
  a2d334:	8020                	pop	{ra,s0},16
  a2d336:	ebbff06f          	j	a2d1f0 <do_process_exception>

00a2d33a <do_store_page_fault>:
  a2d33a:	8028                	push	{ra,s0},-16
  a2d33c:	842a                	mv	s0,a0
  a2d33e:	00a3 2b78 051f      	l.li	a0,0xa32b78
  a2d344:	eadfe0ef          	jal	ra,a2c1f0 <print_str>
  a2d348:	8522                	mv	a0,s0
  a2d34a:	8020                	pop	{ra,s0},16
  a2d34c:	ea5ff06f          	j	a2d1f0 <do_process_exception>

00a2d350 <do_hard_fault>:
  a2d350:	8028                	push	{ra,s0},-16
  a2d352:	842a                	mv	s0,a0
  a2d354:	00a3 2ae4 051f      	l.li	a0,0xa32ae4
  a2d35a:	e97fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d35e:	8522                	mv	a0,s0
  a2d360:	8020                	pop	{ra,s0},16
  a2d362:	e8fff06f          	j	a2d1f0 <do_process_exception>

00a2d366 <do_lockup>:
  a2d366:	8028                	push	{ra,s0},-16
  a2d368:	842a                	mv	s0,a0
  a2d36a:	00a3 2b60 051f      	l.li	a0,0xa32b60
  a2d370:	e81fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d374:	8522                	mv	a0,s0
  a2d376:	8020                	pop	{ra,s0},16
  a2d378:	e79ff06f          	j	a2d1f0 <do_process_exception>

00a2d37c <default_handler>:
  a2d37c:	8018                	push	{ra},-16
  a2d37e:	bcfff0ef          	jal	ra,a2cf4c <interrupt_number_get>
  a2d382:	85aa                	mv	a1,a0
  a2d384:	00a3 2ab8 051f      	l.li	a0,0xa32ab8
  a2d38a:	e67fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d38e:	a001                	j	a2d38e <default_handler+0x12>

00a2d390 <nmi_handler>:
  a2d390:	8018                	push	{ra},-16
  a2d392:	bbbff0ef          	jal	ra,a2cf4c <interrupt_number_get>
  a2d396:	85aa                	mv	a1,a0
  a2d398:	00a3 3158 051f      	l.li	a0,0xa33158
  a2d39e:	e53fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d3a2:	a001                	j	a2d3a2 <nmi_handler+0x12>

00a2d3a4 <partition_get_addr>:
  a2d3a4:	0020 0380 051f      	l.li	a0,0x200380
  a2d3aa:	8082                	ret

00a2d3ac <partition_get_path_map>:
  a2d3ac:	00a0 585c 079f      	l.li	a5,0xa0585c
  a2d3b2:	c11c                	sw	a5,0(a0)
  a2d3b4:	4501                	li	a0,0
  a2d3b6:	8082                	ret

00a2d3b8 <upg_progress_callbck>:
  a2d3b8:	8128                	push	{ra,s0},-32
  a2d3ba:	842a                	mv	s0,a0
  a2d3bc:	00a3 32b0 051f      	l.li	a0,0xa332b0
  a2d3c2:	809ff0ef          	jal	ra,a2cbca <serial_puts>
  a2d3c6:	640413bb          	bnei	s0,100,a2d3d4 <upg_progress_callbck+0x1c>
  a2d3ca:	00a3 32c8 051f      	l.li	a0,0xa332c8
  a2d3d0:	ffaff0ef          	jal	ra,a2cbca <serial_puts>
  a2d3d4:	47a9                	li	a5,10
  a2d3d6:	02f45733          	divu	a4,s0,a5
  a2d3da:	0068                	addi	a0,sp,12
  a2d3dc:	00010723          	sb	zero,14(sp)
  a2d3e0:	02f77733          	remu	a4,a4,a5
  a2d3e4:	02f477b3          	remu	a5,s0,a5
  a2d3e8:	03070713          	addi	a4,a4,48 # 40000030 <_gp_+0x3f5cb568>
  a2d3ec:	00e10623          	sb	a4,12(sp)
  a2d3f0:	03078793          	addi	a5,a5,48
  a2d3f4:	00f106a3          	sb	a5,13(sp)
  a2d3f8:	fd2ff0ef          	jal	ra,a2cbca <serial_puts>
  a2d3fc:	00a3 32cc 051f      	l.li	a0,0xa332cc
  a2d402:	fc8ff0ef          	jal	ra,a2cbca <serial_puts>
  a2d406:	640413bb          	bnei	s0,100,a2d414 <upg_progress_callbck+0x5c>
  a2d40a:	00a3 3364 051f      	l.li	a0,0xa33364
  a2d410:	fbaff0ef          	jal	ra,a2cbca <serial_puts>
  a2d414:	8124                	popret	{ra,s0},32

00a2d416 <check_verify_enable>:
  a2d416:	8118                	push	{ra},-32
  a2d418:	57fd                	li	a5,-1
  a2d41a:	4605                	li	a2,1
  a2d41c:	00f10593          	addi	a1,sp,15
  a2d420:	451d                	li	a0,7
  a2d422:	00f107a3          	sb	a5,15(sp)
  a2d426:	e08ff0ef          	jal	ra,a2ca2e <efuse_read_item>
  a2d42a:	c909                	beqz	a0,a2d43c <check_verify_enable+0x26>
  a2d42c:	85aa                	mv	a1,a0
  a2d42e:	00a3 31b4 051f      	l.li	a0,0xa331b4
  a2d434:	dbdfe0ef          	jal	ra,a2c1f0 <print_str>
  a2d438:	557d                	li	a0,-1
  a2d43a:	8114                	popret	{ra},32
  a2d43c:	00f14783          	lbu	a5,15(sp)
  a2d440:	4501                	li	a0,0
  a2d442:	ffe5                	bnez	a5,a2d43a <check_verify_enable+0x24>
  a2d444:	80000537          	lui	a0,0x80000
  a2d448:	0509                	addi	a0,a0,2 # 80000002 <_gp_+0x7f5cb53a>
  a2d44a:	bfc5                	j	a2d43a <check_verify_enable+0x24>

00a2d44c <check_fota_msid>:
  a2d44c:	8138                	push	{ra,s0-s1},-32
  a2d44e:	842a                	mv	s0,a0
  a2d450:	84ae                	mv	s1,a1
  a2d452:	4611                	li	a2,4
  a2d454:	0f800593          	li	a1,248
  a2d458:	0068                	addi	a0,sp,12
  a2d45a:	c602                	sw	zero,12(sp)
  a2d45c:	d4efd0ef          	jal	ra,a2a9aa <uapi_efuse_read_buffer>
  a2d460:	c519                	beqz	a0,a2d46e <check_fota_msid+0x22>
  a2d462:	85aa                	mv	a1,a0
  a2d464:	00a3 3180 051f      	l.li	a0,0xa33180
  a2d46a:	d87fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d46e:	47b2                	lw	a5,12(sp)
  a2d470:	8c3d                	xor	s0,s0,a5
  a2d472:	8c65                	and	s0,s0,s1
  a2d474:	c411                	beqz	s0,a2d480 <check_fota_msid+0x34>
  a2d476:	00a3 31a0 051f      	l.li	a0,0xa331a0
  a2d47c:	d75fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d480:	4501                	li	a0,0
  a2d482:	8134                	popret	{ra,s0-s1},32

00a2d484 <ws63_upg_putc>:
  a2d484:	f26ff06f          	j	a2cbaa <serial_putc>

00a2d488 <upg_free_port>:
  a2d488:	8038                	push	{ra,s0-s1},-16
  a2d48a:	84aa                	mv	s1,a0
  a2d48c:	24d040ef          	jal	ra,a31ed8 <global_interrupt_lock>
  a2d490:	842a                	mv	s0,a0
  a2d492:	8526                	mv	a0,s1
  a2d494:	d56fc0ef          	jal	ra,a299ea <free>
  a2d498:	8522                	mv	a0,s0
  a2d49a:	8030                	pop	{ra,s0-s1},16
  a2d49c:	2550406f          	j	a31ef0 <global_interrupt_restore>

00a2d4a0 <upg_malloc_port>:
  a2d4a0:	8038                	push	{ra,s0-s1},-16
  a2d4a2:	842a                	mv	s0,a0
  a2d4a4:	235040ef          	jal	ra,a31ed8 <global_interrupt_lock>
  a2d4a8:	84aa                	mv	s1,a0
  a2d4aa:	8522                	mv	a0,s0
  a2d4ac:	d08fc0ef          	jal	ra,a299b4 <malloc>
  a2d4b0:	842a                	mv	s0,a0
  a2d4b2:	8526                	mv	a0,s1
  a2d4b4:	23d040ef          	jal	ra,a31ef0 <global_interrupt_restore>
  a2d4b8:	8522                	mv	a0,s0
  a2d4ba:	8034                	popret	{ra,s0-s1},16

00a2d4bc <upg_get_ids_map>:
  a2d4bc:	00a3 4254 079f      	l.li	a5,0xa34254
  a2d4c2:	c11c                	sw	a5,0(a0)
  a2d4c4:	450d                	li	a0,3
  a2d4c6:	8082                	ret

00a2d4c8 <upg_img_in_set>:
  a2d4c8:	00a3 427c 079f      	l.li	a5,0xa3427c
  a2d4ce:	43d4                	lw	a3,4(a5)
  a2d4d0:	ce89                	beqz	a3,a2d4ea <upg_img_in_set+0x22>
  a2d4d2:	4398                	lw	a4,0(a5)
  a2d4d4:	4781                	li	a5,0
  a2d4d6:	0711                	addi	a4,a4,4
  a2d4d8:	ffc72603          	lw	a2,-4(a4)
  a2d4dc:	00a60763          	beq	a2,a0,a2d4ea <upg_img_in_set+0x22>
  a2d4e0:	0785                	addi	a5,a5,1
  a2d4e2:	fef69ae3          	bne	a3,a5,a2d4d6 <upg_img_in_set+0xe>
  a2d4e6:	4501                	li	a0,0
  a2d4e8:	8082                	ret
  a2d4ea:	4505                	li	a0,1
  a2d4ec:	8082                	ret

00a2d4ee <upg_get_upgrade_flag_flash_start_addr>:
  a2d4ee:	8128                	push	{ra,s0},-32
  a2d4f0:	842a                	mv	s0,a0
  a2d4f2:	004c                	addi	a1,sp,4
  a2d4f4:	02100513          	li	a0,33
  a2d4f8:	0f9000ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2d4fc:	e519                	bnez	a0,a2d50a <upg_get_upgrade_flag_flash_start_addr+0x1c>
  a2d4fe:	4732                	lw	a4,12(sp)
  a2d500:	47a2                	lw	a5,8(sp)
  a2d502:	97ba                	add	a5,a5,a4
  a2d504:	777d                	lui	a4,0xfffff
  a2d506:	97ba                	add	a5,a5,a4
  a2d508:	c01c                	sw	a5,0(s0)
  a2d50a:	8124                	popret	{ra,s0},32

00a2d50c <upg_get_progress_status_start_addr>:
  a2d50c:	8138                	push	{ra,s0-s1},-32
  a2d50e:	84aa                	mv	s1,a0
  a2d510:	842e                	mv	s0,a1
  a2d512:	02100513          	li	a0,33
  a2d516:	004c                	addi	a1,sp,4
  a2d518:	0d9000ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2d51c:	e909                	bnez	a0,a2d52e <upg_get_progress_status_start_addr+0x22>
  a2d51e:	4732                	lw	a4,12(sp)
  a2d520:	47a2                	lw	a5,8(sp)
  a2d522:	97ba                	add	a5,a5,a4
  a2d524:	7775                	lui	a4,0xffffd
  a2d526:	97ba                	add	a5,a5,a4
  a2d528:	c09c                	sw	a5,0(s1)
  a2d52a:	678d                	lui	a5,0x3
  a2d52c:	c01c                	sw	a5,0(s0)
  a2d52e:	8134                	popret	{ra,s0-s1},32

00a2d530 <upg_get_fota_partiton_area_addr>:
  a2d530:	8138                	push	{ra,s0-s1},-32
  a2d532:	84aa                	mv	s1,a0
  a2d534:	842e                	mv	s0,a1
  a2d536:	02100513          	li	a0,33
  a2d53a:	004c                	addi	a1,sp,4
  a2d53c:	0b5000ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2d540:	e509                	bnez	a0,a2d54a <upg_get_fota_partiton_area_addr+0x1a>
  a2d542:	47a2                	lw	a5,8(sp)
  a2d544:	c09c                	sw	a5,0(s1)
  a2d546:	47b2                	lw	a5,12(sp)
  a2d548:	c01c                	sw	a5,0(s0)
  a2d54a:	8134                	popret	{ra,s0-s1},32

00a2d54c <upg_reboot>:
  a2d54c:	8018                	push	{ra},-16
  a2d54e:	1f400513          	li	a0,500
  a2d552:	e0bfc0ef          	jal	ra,a2a35c <uapi_tcxo_delay_ms>
  a2d556:	8010                	pop	{ra},16
  a2d558:	8b1fd06f          	j	a2ae08 <hal_reboot_chip>

00a2d55c <upg_progress_callback_register>:
  a2d55c:	8018                	push	{ra},-16
  a2d55e:	00a2 d3b8 051f      	l.li	a0,0xa2d3b8
  a2d564:	485010ef          	jal	ra,a2f1e8 <uapi_upg_register_progress_callback>
  a2d568:	c519                	beqz	a0,a2d576 <upg_progress_callback_register+0x1a>
  a2d56a:	00a3 3288 051f      	l.li	a0,0xa33288
  a2d570:	8010                	pop	{ra},16
  a2d572:	c7ffe06f          	j	a2c1f0 <print_str>
  a2d576:	8014                	popret	{ra},16

00a2d578 <upg_watchdog_kick>:
  a2d578:	ba0fd06f          	j	a2a918 <uapi_watchdog_kick>

00a2d57c <upg_get_flash_base_addr>:
  a2d57c:	00200537          	lui	a0,0x200
  a2d580:	8082                	ret

00a2d582 <upg_get_flash_size>:
  a2d582:	00800537          	lui	a0,0x800
  a2d586:	8082                	ret

00a2d588 <upg_flash_read>:
  a2d588:	87b2                	mv	a5,a2
  a2d58a:	862e                	mv	a2,a1
  a2d58c:	85be                	mv	a1,a5
  a2d58e:	962ff06f          	j	a2c6f0 <uapi_sfc_reg_read>

00a2d592 <upg_flash_erase>:
  a2d592:	8098                	push	{ra,s0-s7},-48
  a2d594:	00b50a33          	add	s4,a0,a1
  a2d598:	014a1793          	slli	a5,s4,0x14
  a2d59c:	84aa                	mv	s1,a0
  a2d59e:	89d2                	mv	s3,s4
  a2d5a0:	c791                	beqz	a5,a2d5ac <upg_flash_erase+0x1a>
  a2d5a2:	79fd                	lui	s3,0xfffff
  a2d5a4:	013a79b3          	and	s3,s4,s3
  a2d5a8:	6785                	lui	a5,0x1
  a2d5aa:	99be                	add	s3,s3,a5
  a2d5ac:	6505                	lui	a0,0x1
  a2d5ae:	0c3000ef          	jal	ra,a2de70 <upg_malloc>
  a2d5b2:	8aaa                	mv	s5,a0
  a2d5b4:	c909                	beqz	a0,a2d5c6 <upg_flash_erase+0x34>
  a2d5b6:	6505                	lui	a0,0x1
  a2d5b8:	0b9000ef          	jal	ra,a2de70 <upg_malloc>
  a2d5bc:	8b2a                	mv	s6,a0
  a2d5be:	e901                	bnez	a0,a2d5ce <upg_flash_erase+0x3c>
  a2d5c0:	8556                	mv	a0,s5
  a2d5c2:	0c9000ef          	jal	ra,a2de8a <upg_free>
  a2d5c6:	80000437          	lui	s0,0x80000
  a2d5ca:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb53d>
  a2d5cc:	a881                	j	a2d61c <upg_flash_erase+0x8a>
  a2d5ce:	797d                	lui	s2,0xfffff
  a2d5d0:	0124f933          	and	s2,s1,s2
  a2d5d4:	412484b3          	sub	s1,s1,s2
  a2d5d8:	e48d                	bnez	s1,a2d602 <upg_flash_erase+0x70>
  a2d5da:	41498bb3          	sub	s7,s3,s4
  a2d5de:	040b9163          	bnez	s7,a2d620 <upg_flash_erase+0x8e>
  a2d5e2:	412985b3          	sub	a1,s3,s2
  a2d5e6:	854a                	mv	a0,s2
  a2d5e8:	adaff0ef          	jal	ra,a2c8c2 <uapi_sfc_reg_erase>
  a2d5ec:	842a                	mv	s0,a0
  a2d5ee:	e10d                	bnez	a0,a2d610 <upg_flash_erase+0x7e>
  a2d5f0:	e0a1                	bnez	s1,a2d630 <upg_flash_erase+0x9e>
  a2d5f2:	000b8f63          	beqz	s7,a2d610 <upg_flash_erase+0x7e>
  a2d5f6:	865e                	mv	a2,s7
  a2d5f8:	85da                	mv	a1,s6
  a2d5fa:	8552                	mv	a0,s4
  a2d5fc:	9c8ff0ef          	jal	ra,a2c7c4 <uapi_sfc_reg_write>
  a2d600:	a835                	j	a2d63c <upg_flash_erase+0xaa>
  a2d602:	8626                	mv	a2,s1
  a2d604:	85d6                	mv	a1,s5
  a2d606:	854a                	mv	a0,s2
  a2d608:	8e8ff0ef          	jal	ra,a2c6f0 <uapi_sfc_reg_read>
  a2d60c:	842a                	mv	s0,a0
  a2d60e:	d571                	beqz	a0,a2d5da <upg_flash_erase+0x48>
  a2d610:	8556                	mv	a0,s5
  a2d612:	079000ef          	jal	ra,a2de8a <upg_free>
  a2d616:	855a                	mv	a0,s6
  a2d618:	073000ef          	jal	ra,a2de8a <upg_free>
  a2d61c:	8522                	mv	a0,s0
  a2d61e:	8094                	popret	{ra,s0-s7},48
  a2d620:	865e                	mv	a2,s7
  a2d622:	85da                	mv	a1,s6
  a2d624:	8552                	mv	a0,s4
  a2d626:	8caff0ef          	jal	ra,a2c6f0 <uapi_sfc_reg_read>
  a2d62a:	842a                	mv	s0,a0
  a2d62c:	f175                	bnez	a0,a2d610 <upg_flash_erase+0x7e>
  a2d62e:	bf55                	j	a2d5e2 <upg_flash_erase+0x50>
  a2d630:	8626                	mv	a2,s1
  a2d632:	85d6                	mv	a1,s5
  a2d634:	854a                	mv	a0,s2
  a2d636:	98eff0ef          	jal	ra,a2c7c4 <uapi_sfc_reg_write>
  a2d63a:	dd45                	beqz	a0,a2d5f2 <upg_flash_erase+0x60>
  a2d63c:	842a                	mv	s0,a0
  a2d63e:	bfc9                	j	a2d610 <upg_flash_erase+0x7e>

00a2d640 <upg_flash_write>:
  a2d640:	8048                	push	{ra,s0-s2},-16
  a2d642:	842a                	mv	s0,a0
  a2d644:	84ae                	mv	s1,a1
  a2d646:	8932                	mv	s2,a2
  a2d648:	e699                	bnez	a3,a2d656 <upg_flash_write+0x16>
  a2d64a:	8626                	mv	a2,s1
  a2d64c:	85ca                	mv	a1,s2
  a2d64e:	8522                	mv	a0,s0
  a2d650:	8040                	pop	{ra,s0-s2},16
  a2d652:	972ff06f          	j	a2c7c4 <uapi_sfc_reg_write>
  a2d656:	f3dff0ef          	jal	ra,a2d592 <upg_flash_erase>
  a2d65a:	d965                	beqz	a0,a2d64a <upg_flash_write+0xa>
  a2d65c:	8044                	popret	{ra,s0-s2},16

00a2d65e <upg_get_root_public_key>:
  a2d65e:	8528                	push	{ra,s0},-96
  a2d660:	004c                	addi	a1,sp,4
  a2d662:	450d                	li	a0,3
  a2d664:	78c000ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2d668:	4781                	li	a5,0
  a2d66a:	e915                	bnez	a0,a2d69e <upg_get_root_public_key+0x40>
  a2d66c:	47a2                	lw	a5,8(sp)
  a2d66e:	02000613          	li	a2,32
  a2d672:	4581                	li	a1,0
  a2d674:	00200437          	lui	s0,0x200
  a2d678:	0808                	addi	a0,sp,16
  a2d67a:	943e                	add	s0,s0,a5
  a2d67c:	b28fb0ef          	jal	ra,a289a4 <memset>
  a2d680:	02000613          	li	a2,32
  a2d684:	4581                	li	a1,0
  a2d686:	1808                	addi	a0,sp,48
  a2d688:	b1cfb0ef          	jal	ra,a289a4 <memset>
  a2d68c:	d8bff0ef          	jal	ra,a2d416 <check_verify_enable>
  a2d690:	800007b7          	lui	a5,0x80000
  a2d694:	0789                	addi	a5,a5,2 # 80000002 <_gp_+0x7f5cb53a>
  a2d696:	00f51663          	bne	a0,a5,a2d6a2 <upg_get_root_public_key+0x44>
  a2d69a:	04040793          	addi	a5,s0,64 # 200040 <__heap_size+0x1e2a48>
  a2d69e:	853e                	mv	a0,a5
  a2d6a0:	8524                	popret	{ra,s0},96
  a2d6a2:	4781                	li	a5,0
  a2d6a4:	fff50ebb          	beqi	a0,-1,a2d69e <upg_get_root_public_key+0x40>
  a2d6a8:	400c                	lw	a1,0(s0)
  a2d6aa:	4ba5 c31e 079f      	l.li	a5,0x4ba5c31e
  a2d6b0:	00f58963          	beq	a1,a5,a2d6c2 <upg_get_root_public_key+0x64>
  a2d6b4:	00a3 31e4 051f      	l.li	a0,0xa331e4
  a2d6ba:	b37fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d6be:	4781                	li	a5,0
  a2d6c0:	bff9                	j	a2d69e <upg_get_root_public_key+0x40>
  a2d6c2:	08000593          	li	a1,128
  a2d6c6:	02000693          	li	a3,32
  a2d6ca:	0810                	addi	a2,sp,16
  a2d6cc:	8522                	mv	a0,s0
  a2d6ce:	657000ef          	jal	ra,a2e524 <calc_hash>
  a2d6d2:	85aa                	mv	a1,a0
  a2d6d4:	c509                	beqz	a0,a2d6de <upg_get_root_public_key+0x80>
  a2d6d6:	00a3 3204 051f      	l.li	a0,0xa33204
  a2d6dc:	bff9                	j	a2d6ba <upg_get_root_public_key+0x5c>
  a2d6de:	180c                	addi	a1,sp,48
  a2d6e0:	02000613          	li	a2,32
  a2d6e4:	4515                	li	a0,5
  a2d6e6:	b48ff0ef          	jal	ra,a2ca2e <efuse_read_item>
  a2d6ea:	85aa                	mv	a1,a0
  a2d6ec:	c509                	beqz	a0,a2d6f6 <upg_get_root_public_key+0x98>
  a2d6ee:	00a3 3238 051f      	l.li	a0,0xa33238
  a2d6f4:	b7d9                	j	a2d6ba <upg_get_root_public_key+0x5c>
  a2d6f6:	02000613          	li	a2,32
  a2d6fa:	080c                	addi	a1,sp,16
  a2d6fc:	1808                	addi	a0,sp,48
  a2d6fe:	df0fb0ef          	jal	ra,a28cee <memcmp>
  a2d702:	dd41                	beqz	a0,a2d69a <upg_get_root_public_key+0x3c>
  a2d704:	00a3 3264 051f      	l.li	a0,0xa33264
  a2d70a:	ae7fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d70e:	bf45                	j	a2d6be <upg_get_root_public_key+0x60>

00a2d710 <upg_check_fota_information>:
  a2d710:	8028                	push	{ra,s0},-16
  a2d712:	842a                	mv	s0,a0
  a2d714:	590c                	lw	a1,48(a0)
  a2d716:	5548                	lw	a0,44(a0)
  a2d718:	d35ff0ef          	jal	ra,a2d44c <check_fota_msid>
  a2d71c:	e901                	bnez	a0,a2d72c <upg_check_fota_information+0x1c>
  a2d71e:	11c42583          	lw	a1,284(s0)
  a2d722:	11842503          	lw	a0,280(s0)
  a2d726:	8020                	pop	{ra,s0},16
  a2d728:	d25ff06f          	j	a2d44c <check_fota_msid>
  a2d72c:	8024                	popret	{ra,s0},16

00a2d72e <ws63_upg_init>:
  a2d72e:	8128                	push	{ra,s0},-32
  a2d730:	00a2 d4a0 079f      	l.li	a5,0xa2d4a0
  a2d736:	c23e                	sw	a5,4(sp)
  a2d738:	00a2 d488 079f      	l.li	a5,0xa2d488
  a2d73e:	c43e                	sw	a5,8(sp)
  a2d740:	0048                	addi	a0,sp,4
  a2d742:	00a2 d484 079f      	l.li	a5,0xa2d484
  a2d748:	c63e                	sw	a5,12(sp)
  a2d74a:	4b1000ef          	jal	ra,a2e3fa <uapi_upg_init>
  a2d74e:	842a                	mv	s0,a0
  a2d750:	c901                	beqz	a0,a2d760 <ws63_upg_init+0x32>
  a2d752:	00a3 32d0 051f      	l.li	a0,0xa332d0
  a2d758:	a99fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d75c:	8522                	mv	a0,s0
  a2d75e:	8124                	popret	{ra,s0},32
  a2d760:	dfdff0ef          	jal	ra,a2d55c <upg_progress_callback_register>
  a2d764:	00a3 32e8 051f      	l.li	a0,0xa332e8
  a2d76a:	ce8ff0ef          	jal	ra,a2cc52 <boot_msg0>
  a2d76e:	b7fd                	j	a2d75c <ws63_upg_init+0x2e>

00a2d770 <upg_erase_whole_image>:
  a2d770:	8118                	push	{ra},-32
  a2d772:	4148                	lw	a0,4(a0)
  a2d774:	004c                	addi	a1,sp,4
  a2d776:	7ae000ef          	jal	ra,a2df24 <upg_get_image_info>
  a2d77a:	e509                	bnez	a0,a2d784 <upg_erase_whole_image+0x14>
  a2d77c:	45b2                	lw	a1,12(sp)
  a2d77e:	4522                	lw	a0,8(sp)
  a2d780:	e13ff0ef          	jal	ra,a2d592 <upg_flash_erase>
  a2d784:	8114                	popret	{ra},32

00a2d786 <upg_get_specific_verify_key_alg>:
  a2d786:	8018                	push	{ra},-16
  a2d788:	c8fff0ef          	jal	ra,a2d416 <check_verify_enable>
  a2d78c:	c119                	beqz	a0,a2d792 <upg_get_specific_verify_key_alg+0xc>
  a2d78e:	557d                	li	a0,-1
  a2d790:	8014                	popret	{ra},16
  a2d792:	2a13 c812 051f      	l.li	a0,0x2a13c812
  a2d798:	bfe5                	j	a2d790 <upg_get_specific_verify_key_alg+0xa>

00a2d79a <upg_cryto_init>:
  a2d79a:	8148                	push	{ra,s0-s2},-32
  a2d79c:	47f1                	li	a5,28
  a2d79e:	5178                	lw	a4,100(a0)
  a2d7a0:	06c50913          	addi	s2,a0,108 # 106c <ccause+0xaa>
  a2d7a4:	c43e                	sw	a5,8(sp)
  a2d7a6:	4785                	li	a5,1
  a2d7a8:	00f10623          	sb	a5,12(sp)
  a2d7ac:	00010023          	sb	zero,0(sp)
  a2d7b0:	000100a3          	sb	zero,1(sp)
  a2d7b4:	00010123          	sb	zero,2(sp)
  a2d7b8:	c24a                	sw	s2,4(sp)
  a2d7ba:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d7c0:	4401                	li	s0,0
  a2d7c2:	02f71d63          	bne	a4,a5,a2d7fc <upg_cryto_init+0x62>
  a2d7c6:	00a0 585c 049f      	l.li	s1,0xa0585c
  a2d7cc:	030007b7          	lui	a5,0x3000
  a2d7d0:	00d78713          	addi	a4,a5,13 # 300000d <_gp_+0x25cb545>
  a2d7d4:	842a                	mv	s0,a0
  a2d7d6:	07cd                	addi	a5,a5,19
  a2d7d8:	46f1                	li	a3,28
  a2d7da:	864a                	mv	a2,s2
  a2d7dc:	45f1                	li	a1,28
  a2d7de:	03c48513          	addi	a0,s1,60
  a2d7e2:	d8d8                	sw	a4,52(s1)
  a2d7e4:	c09c                	sw	a5,0(s1)
  a2d7e6:	462030ef          	jal	ra,a30c48 <memcpy_s>
  a2d7ea:	c919                	beqz	a0,a2d800 <upg_cryto_init+0x66>
  a2d7ec:	00a3 32f8 051f      	l.li	a0,0xa332f8
  a2d7f2:	80000437          	lui	s0,0x80000
  a2d7f6:	9fbfe0ef          	jal	ra,a2c1f0 <print_str>
  a2d7fa:	0411                	addi	s0,s0,4 # 80000004 <_gp_+0x7f5cb53c>
  a2d7fc:	8522                	mv	a0,s0
  a2d7fe:	8144                	popret	{ra,s0-s2},32
  a2d800:	46f1                	li	a3,28
  a2d802:	864a                	mv	a2,s2
  a2d804:	45f1                	li	a1,28
  a2d806:	00848513          	addi	a0,s1,8
  a2d80a:	43e030ef          	jal	ra,a30c48 <memcpy_s>
  a2d80e:	c509                	beqz	a0,a2d818 <upg_cryto_init+0x7e>
  a2d810:	00a3 3330 051f      	l.li	a0,0xa33330
  a2d816:	bff1                	j	a2d7f2 <upg_cryto_init+0x58>
  a2d818:	08c40413          	addi	s0,s0,140
  a2d81c:	46c1                	li	a3,16
  a2d81e:	8622                	mv	a2,s0
  a2d820:	45c1                	li	a1,16
  a2d822:	05848513          	addi	a0,s1,88
  a2d826:	422030ef          	jal	ra,a30c48 <memcpy_s>
  a2d82a:	c509                	beqz	a0,a2d834 <upg_cryto_init+0x9a>
  a2d82c:	00a3 3368 051f      	l.li	a0,0xa33368
  a2d832:	b7c1                	j	a2d7f2 <upg_cryto_init+0x58>
  a2d834:	46c1                	li	a3,16
  a2d836:	8622                	mv	a2,s0
  a2d838:	45c1                	li	a1,16
  a2d83a:	02448513          	addi	a0,s1,36
  a2d83e:	40a030ef          	jal	ra,a30c48 <memcpy_s>
  a2d842:	c509                	beqz	a0,a2d84c <upg_cryto_init+0xb2>
  a2d844:	00a3 339c 051f      	l.li	a0,0xa3339c
  a2d84a:	b765                	j	a2d7f2 <upg_cryto_init+0x58>
  a2d84c:	dc4fc0ef          	jal	ra,a29e10 <drv_rom_cipher_symc_init>
  a2d850:	842a                	mv	s0,a0
  a2d852:	c901                	beqz	a0,a2d862 <upg_cryto_init+0xc8>
  a2d854:	85aa                	mv	a1,a0
  a2d856:	00a3 33d0 051f      	l.li	a0,0xa333d0
  a2d85c:	995fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d860:	bf71                	j	a2d7fc <upg_cryto_init+0x62>
  a2d862:	58d0                	lw	a2,52(s1)
  a2d864:	858a                	mv	a1,sp
  a2d866:	03848513          	addi	a0,s1,56
  a2d86a:	b50fc0ef          	jal	ra,a29bba <drv_rom_cipher_create_keyslot>
  a2d86e:	842a                	mv	s0,a0
  a2d870:	c911                	beqz	a0,a2d884 <upg_cryto_init+0xea>
  a2d872:	85aa                	mv	a1,a0
  a2d874:	00a3 3404 051f      	l.li	a0,0xa33404
  a2d87a:	977fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d87e:	de2fc0ef          	jal	ra,a29e60 <drv_rom_cipher_symc_deinit>
  a2d882:	bfad                	j	a2d7fc <upg_cryto_init+0x62>
  a2d884:	4090                	lw	a2,0(s1)
  a2d886:	858a                	mv	a1,sp
  a2d888:	00448513          	addi	a0,s1,4
  a2d88c:	b2efc0ef          	jal	ra,a29bba <drv_rom_cipher_create_keyslot>
  a2d890:	842a                	mv	s0,a0
  a2d892:	d52d                	beqz	a0,a2d7fc <upg_cryto_init+0x62>
  a2d894:	85aa                	mv	a1,a0
  a2d896:	00a3 3448 051f      	l.li	a0,0xa33448
  a2d89c:	955fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d8a0:	5c88                	lw	a0,56(s1)
  a2d8a2:	b94fc0ef          	jal	ra,a29c36 <drv_rom_cipher_destroy_keyslot>
  a2d8a6:	bfe1                	j	a2d87e <upg_cryto_init+0xe4>

00a2d8a8 <upg_cryto_deinit>:
  a2d8a8:	5178                	lw	a4,100(a0)
  a2d8aa:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d8b0:	00f70463          	beq	a4,a5,a2d8b8 <upg_cryto_deinit+0x10>
  a2d8b4:	4501                	li	a0,0
  a2d8b6:	8082                	ret
  a2d8b8:	8038                	push	{ra,s0-s1},-16
  a2d8ba:	00a0 585c 049f      	l.li	s1,0xa0585c
  a2d8c0:	5c88                	lw	a0,56(s1)
  a2d8c2:	b74fc0ef          	jal	ra,a29c36 <drv_rom_cipher_destroy_keyslot>
  a2d8c6:	842a                	mv	s0,a0
  a2d8c8:	40c8                	lw	a0,4(s1)
  a2d8ca:	b6cfc0ef          	jal	ra,a29c36 <drv_rom_cipher_destroy_keyslot>
  a2d8ce:	8c49                	or	s0,s0,a0
  a2d8d0:	d90fc0ef          	jal	ra,a29e60 <drv_rom_cipher_symc_deinit>
  a2d8d4:	8d41                	or	a0,a0,s0
  a2d8d6:	8034                	popret	{ra,s0-s1},16

00a2d8d8 <upg_process_cryto_info>:
  a2d8d8:	219c                	lbu	a5,0(a1)
  a2d8da:	e789                	bnez	a5,a2d8e4 <upg_process_cryto_info+0xc>
  a2d8dc:	00052023          	sw	zero,0(a0)
  a2d8e0:	4501                	li	a0,0
  a2d8e2:	8082                	ret
  a2d8e4:	30000793          	li	a5,768
  a2d8e8:	c11c                	sw	a5,0(a0)
  a2d8ea:	00058023          	sb	zero,0(a1)
  a2d8ee:	bfcd                	j	a2d8e0 <upg_process_cryto_info+0x8>

00a2d8f0 <upg_decry_fota_pkt>:
  a2d8f0:	8028                	push	{ra,s0},-16
  a2d8f2:	5278                	lw	a4,100(a2)
  a2d8f4:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d8fa:	4401                	li	s0,0
  a2d8fc:	02f71863          	bne	a4,a5,a2d92c <upg_decry_fota_pkt+0x3c>
  a2d900:	87aa                	mv	a5,a0
  a2d902:	00a0 585c 051f      	l.li	a0,0xa0585c
  a2d908:	88ae                	mv	a7,a1
  a2d90a:	02450593          	addi	a1,a0,36
  a2d90e:	4148                	lw	a0,4(a0)
  a2d910:	4801                	li	a6,0
  a2d912:	86be                	mv	a3,a5
  a2d914:	4701                	li	a4,0
  a2d916:	4641                	li	a2,16
  a2d918:	d58fc0ef          	jal	ra,a29e70 <drv_rom_cipher_symc_decrypt>
  a2d91c:	842a                	mv	s0,a0
  a2d91e:	c519                	beqz	a0,a2d92c <upg_decry_fota_pkt+0x3c>
  a2d920:	85aa                	mv	a1,a0
  a2d922:	00a3 348c 051f      	l.li	a0,0xa3348c
  a2d928:	8c9fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d92c:	8522                	mv	a0,s0
  a2d92e:	8024                	popret	{ra,s0},16

00a2d930 <upg_encry_fota_pkt>:
  a2d930:	8028                	push	{ra,s0},-16
  a2d932:	5278                	lw	a4,100(a2)
  a2d934:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2d93a:	4401                	li	s0,0
  a2d93c:	02f71863          	bne	a4,a5,a2d96c <upg_encry_fota_pkt+0x3c>
  a2d940:	87aa                	mv	a5,a0
  a2d942:	00a0 585c 051f      	l.li	a0,0xa0585c
  a2d948:	88ae                	mv	a7,a1
  a2d94a:	05850593          	addi	a1,a0,88
  a2d94e:	5d08                	lw	a0,56(a0)
  a2d950:	4801                	li	a6,0
  a2d952:	86be                	mv	a3,a5
  a2d954:	4701                	li	a4,0
  a2d956:	4641                	li	a2,16
  a2d958:	d18fc0ef          	jal	ra,a29e70 <drv_rom_cipher_symc_decrypt>
  a2d95c:	842a                	mv	s0,a0
  a2d95e:	c519                	beqz	a0,a2d96c <upg_encry_fota_pkt+0x3c>
  a2d960:	85aa                	mv	a1,a0
  a2d962:	00a3 34d8 051f      	l.li	a0,0xa334d8
  a2d968:	889fe0ef          	jal	ra,a2c1f0 <print_str>
  a2d96c:	8522                	mv	a0,s0
  a2d96e:	8024                	popret	{ra,s0},16

00a2d970 <mfg_malloc>:
  a2d970:	8038                	push	{ra,s0-s1},-16
  a2d972:	842a                	mv	s0,a0
  a2d974:	564040ef          	jal	ra,a31ed8 <global_interrupt_lock>
  a2d978:	84aa                	mv	s1,a0
  a2d97a:	8522                	mv	a0,s0
  a2d97c:	838fc0ef          	jal	ra,a299b4 <malloc>
  a2d980:	842a                	mv	s0,a0
  a2d982:	8526                	mv	a0,s1
  a2d984:	56c040ef          	jal	ra,a31ef0 <global_interrupt_restore>
  a2d988:	8522                	mv	a0,s0
  a2d98a:	8034                	popret	{ra,s0-s1},16

00a2d98c <mfg_free>:
  a2d98c:	8038                	push	{ra,s0-s1},-16
  a2d98e:	84aa                	mv	s1,a0
  a2d990:	548040ef          	jal	ra,a31ed8 <global_interrupt_lock>
  a2d994:	842a                	mv	s0,a0
  a2d996:	8526                	mv	a0,s1
  a2d998:	852fc0ef          	jal	ra,a299ea <free>
  a2d99c:	8522                	mv	a0,s0
  a2d99e:	8030                	pop	{ra,s0-s1},16
  a2d9a0:	5500406f          	j	a31ef0 <global_interrupt_restore>

00a2d9a4 <mfg_flash_read>:
  a2d9a4:	8138                	push	{ra,s0-s1},-32
  a2d9a6:	84aa                	mv	s1,a0
  a2d9a8:	842e                	mv	s0,a1
  a2d9aa:	46b1                	li	a3,12
  a2d9ac:	45b1                	li	a1,12
  a2d9ae:	4601                	li	a2,0
  a2d9b0:	0048                	addi	a0,sp,4
  a2d9b2:	312030ef          	jal	ra,a30cc4 <memset_s>
  a2d9b6:	004c                	addi	a1,sp,4
  a2d9b8:	02100513          	li	a0,33
  a2d9bc:	2915                	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2d9be:	e505                	bnez	a0,a2d9e6 <mfg_flash_read+0x42>
  a2d9c0:	4532                	lw	a0,12(sp)
  a2d9c2:	47a2                	lw	a5,8(sp)
  a2d9c4:	004006b7          	lui	a3,0x400
  a2d9c8:	97aa                	add	a5,a5,a0
  a2d9ca:	7579                	lui	a0,0xffffe
  a2d9cc:	97aa                	add	a5,a5,a0
  a2d9ce:	557d                	li	a0,-1
  a2d9d0:	00f6eb63          	bltu	a3,a5,a2d9e6 <mfg_flash_read+0x42>
  a2d9d4:	00878733          	add	a4,a5,s0
  a2d9d8:	00e6e763          	bltu	a3,a4,a2d9e6 <mfg_flash_read+0x42>
  a2d9dc:	8622                	mv	a2,s0
  a2d9de:	85a6                	mv	a1,s1
  a2d9e0:	853e                	mv	a0,a5
  a2d9e2:	d0ffe0ef          	jal	ra,a2c6f0 <uapi_sfc_reg_read>
  a2d9e6:	8134                	popret	{ra,s0-s1},32

00a2d9e8 <mfg_flash_write_info>:
  a2d9e8:	80c8                	push	{ra,s0-s10},-48
  a2d9ea:	8baa                	mv	s7,a0
  a2d9ec:	8aae                	mv	s5,a1
  a2d9ee:	89b2                	mv	s3,a2
  a2d9f0:	ea99                	bnez	a3,a2da06 <mfg_flash_write_info+0x1e>
  a2d9f2:	854e                	mv	a0,s3
  a2d9f4:	f7dff0ef          	jal	ra,a2d970 <mfg_malloc>
  a2d9f8:	84aa                	mv	s1,a0
  a2d9fa:	e955                	bnez	a0,a2daae <mfg_flash_write_info+0xc6>
  a2d9fc:	80000437          	lui	s0,0x80000
  a2da00:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb53d>
  a2da02:	8522                	mv	a0,s0
  a2da04:	80c4                	popret	{ra,s0-s10},48
  a2da06:	00c58a33          	add	s4,a1,a2
  a2da0a:	014a1793          	slli	a5,s4,0x14
  a2da0e:	8952                	mv	s2,s4
  a2da10:	c791                	beqz	a5,a2da1c <mfg_flash_write_info+0x34>
  a2da12:	797d                	lui	s2,0xfffff
  a2da14:	012a7933          	and	s2,s4,s2
  a2da18:	6785                	lui	a5,0x1
  a2da1a:	993e                	add	s2,s2,a5
  a2da1c:	6505                	lui	a0,0x1
  a2da1e:	f53ff0ef          	jal	ra,a2d970 <mfg_malloc>
  a2da22:	8b2a                	mv	s6,a0
  a2da24:	dd61                	beqz	a0,a2d9fc <mfg_flash_write_info+0x14>
  a2da26:	6505                	lui	a0,0x1
  a2da28:	f49ff0ef          	jal	ra,a2d970 <mfg_malloc>
  a2da2c:	8c2a                	mv	s8,a0
  a2da2e:	e509                	bnez	a0,a2da38 <mfg_flash_write_info+0x50>
  a2da30:	855a                	mv	a0,s6
  a2da32:	f5bff0ef          	jal	ra,a2d98c <mfg_free>
  a2da36:	b7d9                	j	a2d9fc <mfg_flash_write_info+0x14>
  a2da38:	74fd                	lui	s1,0xfffff
  a2da3a:	009af4b3          	and	s1,s5,s1
  a2da3e:	409a8d33          	sub	s10,s5,s1
  a2da42:	020d1763          	bnez	s10,a2da70 <mfg_flash_write_info+0x88>
  a2da46:	41490cb3          	sub	s9,s2,s4
  a2da4a:	040c9263          	bnez	s9,a2da8e <mfg_flash_write_info+0xa6>
  a2da4e:	409905b3          	sub	a1,s2,s1
  a2da52:	8526                	mv	a0,s1
  a2da54:	e6ffe0ef          	jal	ra,a2c8c2 <uapi_sfc_reg_erase>
  a2da58:	842a                	mv	s0,a0
  a2da5a:	e115                	bnez	a0,a2da7e <mfg_flash_write_info+0x96>
  a2da5c:	040d1163          	bnez	s10,a2da9e <mfg_flash_write_info+0xb6>
  a2da60:	000c8f63          	beqz	s9,a2da7e <mfg_flash_write_info+0x96>
  a2da64:	4681                	li	a3,0
  a2da66:	8666                	mv	a2,s9
  a2da68:	85d2                	mv	a1,s4
  a2da6a:	8562                	mv	a0,s8
  a2da6c:	3fb5                	jal	ra,a2d9e8 <mfg_flash_write_info>
  a2da6e:	a835                	j	a2daaa <mfg_flash_write_info+0xc2>
  a2da70:	866a                	mv	a2,s10
  a2da72:	85da                	mv	a1,s6
  a2da74:	8526                	mv	a0,s1
  a2da76:	c7bfe0ef          	jal	ra,a2c6f0 <uapi_sfc_reg_read>
  a2da7a:	842a                	mv	s0,a0
  a2da7c:	d569                	beqz	a0,a2da46 <mfg_flash_write_info+0x5e>
  a2da7e:	855a                	mv	a0,s6
  a2da80:	f0dff0ef          	jal	ra,a2d98c <mfg_free>
  a2da84:	8562                	mv	a0,s8
  a2da86:	f07ff0ef          	jal	ra,a2d98c <mfg_free>
  a2da8a:	d425                	beqz	s0,a2d9f2 <mfg_flash_write_info+0xa>
  a2da8c:	bf9d                	j	a2da02 <mfg_flash_write_info+0x1a>
  a2da8e:	8666                	mv	a2,s9
  a2da90:	85e2                	mv	a1,s8
  a2da92:	8552                	mv	a0,s4
  a2da94:	c5dfe0ef          	jal	ra,a2c6f0 <uapi_sfc_reg_read>
  a2da98:	842a                	mv	s0,a0
  a2da9a:	f175                	bnez	a0,a2da7e <mfg_flash_write_info+0x96>
  a2da9c:	bf4d                	j	a2da4e <mfg_flash_write_info+0x66>
  a2da9e:	4681                	li	a3,0
  a2daa0:	866a                	mv	a2,s10
  a2daa2:	85a6                	mv	a1,s1
  a2daa4:	855a                	mv	a0,s6
  a2daa6:	3789                	jal	ra,a2d9e8 <mfg_flash_write_info>
  a2daa8:	dd45                	beqz	a0,a2da60 <mfg_flash_write_info+0x78>
  a2daaa:	842a                	mv	s0,a0
  a2daac:	bfc9                	j	a2da7e <mfg_flash_write_info+0x96>
  a2daae:	864e                	mv	a2,s3
  a2dab0:	85de                	mv	a1,s7
  a2dab2:	8556                	mv	a0,s5
  a2dab4:	d11fe0ef          	jal	ra,a2c7c4 <uapi_sfc_reg_write>
  a2dab8:	842a                	mv	s0,a0
  a2daba:	e10d                	bnez	a0,a2dadc <mfg_flash_write_info+0xf4>
  a2dabc:	00200637          	lui	a2,0x200
  a2dac0:	86ce                	mv	a3,s3
  a2dac2:	9656                	add	a2,a2,s5
  a2dac4:	85ce                	mv	a1,s3
  a2dac6:	8526                	mv	a0,s1
  a2dac8:	180030ef          	jal	ra,a30c48 <memcpy_s>
  a2dacc:	842a                	mv	s0,a0
  a2dace:	e519                	bnez	a0,a2dadc <mfg_flash_write_info+0xf4>
  a2dad0:	864e                	mv	a2,s3
  a2dad2:	85de                	mv	a1,s7
  a2dad4:	8526                	mv	a0,s1
  a2dad6:	a18fb0ef          	jal	ra,a28cee <memcmp>
  a2dada:	842a                	mv	s0,a0
  a2dadc:	8526                	mv	a0,s1
  a2dade:	eafff0ef          	jal	ra,a2d98c <mfg_free>
  a2dae2:	b705                	j	a2da02 <mfg_flash_write_info+0x1a>

00a2dae4 <mfg_flash_write>:
  a2dae4:	8138                	push	{ra,s0-s1},-32
  a2dae6:	84aa                	mv	s1,a0
  a2dae8:	842e                	mv	s0,a1
  a2daea:	46b1                	li	a3,12
  a2daec:	45b1                	li	a1,12
  a2daee:	4601                	li	a2,0
  a2daf0:	0048                	addi	a0,sp,4
  a2daf2:	1d2030ef          	jal	ra,a30cc4 <memset_s>
  a2daf6:	004c                	addi	a1,sp,4
  a2daf8:	02100513          	li	a0,33
  a2dafc:	2cd5                	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2dafe:	e505                	bnez	a0,a2db26 <mfg_flash_write+0x42>
  a2db00:	47b2                	lw	a5,12(sp)
  a2db02:	45a2                	lw	a1,8(sp)
  a2db04:	00400737          	lui	a4,0x400
  a2db08:	557d                	li	a0,-1
  a2db0a:	95be                	add	a1,a1,a5
  a2db0c:	77f9                	lui	a5,0xffffe
  a2db0e:	95be                	add	a1,a1,a5
  a2db10:	00b76b63          	bltu	a4,a1,a2db26 <mfg_flash_write+0x42>
  a2db14:	008587b3          	add	a5,a1,s0
  a2db18:	00f76763          	bltu	a4,a5,a2db26 <mfg_flash_write+0x42>
  a2db1c:	4685                	li	a3,1
  a2db1e:	8622                	mv	a2,s0
  a2db20:	8526                	mv	a0,s1
  a2db22:	ec7ff0ef          	jal	ra,a2d9e8 <mfg_flash_write_info>
  a2db26:	8134                	popret	{ra,s0-s1},32

00a2db28 <mfg_get_ftm_run_region>:
  a2db28:	8328                	push	{ra,s0},-64
  a2db2a:	c402                	sw	zero,8(sp)
  a2db2c:	c602                	sw	zero,12(sp)
  a2db2e:	c802                	sw	zero,16(sp)
  a2db30:	c92d                	beqz	a0,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2db32:	842a                	mv	s0,a0
  a2db34:	002c                	addi	a1,sp,8
  a2db36:	02100513          	li	a0,33
  a2db3a:	2c5d                	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2db3c:	e13d                	bnez	a0,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2db3e:	45f1                	li	a1,28
  a2db40:	8522                	mv	a0,s0
  a2db42:	e63ff0ef          	jal	ra,a2d9a4 <mfg_flash_read>
  a2db46:	ed31                	bnez	a0,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2db48:	4732                	lw	a4,12(sp)
  a2db4a:	4c14                	lw	a3,24(s0)
  a2db4c:	002007b7          	lui	a5,0x200
  a2db50:	8f45 ba2f 061f      	l.li	a2,0x8f45ba2f
  a2db56:	97ba                	add	a5,a5,a4
  a2db58:	04c68763          	beq	a3,a2,a2dba6 <mfg_get_ftm_run_region+0x7e>
  a2db5c:	438c                	lw	a1,0(a5)
  a2db5e:	4b7c f333 069f      	l.li	a3,0x4b7cf333
  a2db64:	04d59163          	bne	a1,a3,a2dba6 <mfg_get_ftm_run_region+0x7e>
  a2db68:	478c                	lw	a1,8(a5)
  a2db6a:	10000693          	li	a3,256
  a2db6e:	02d59c63          	bne	a1,a3,a2dba6 <mfg_get_ftm_run_region+0x7e>
  a2db72:	1247a683          	lw	a3,292(a5) # 200124 <__heap_size+0x1e2b2c>
  a2db76:	4585                	li	a1,1
  a2db78:	cc3e                	sw	a5,24(sp)
  a2db7a:	30068693          	addi	a3,a3,768 # 400300 <__heap_size+0x3e2d08>
  a2db7e:	ce3e                	sw	a5,28(sp)
  a2db80:	ca2e                	sw	a1,20(sp)
  a2db82:	d036                	sw	a3,32(sp)
  a2db84:	d236                	sw	a3,36(sp)
  a2db86:	d402                	sw	zero,40(sp)
  a2db88:	d632                	sw	a2,44(sp)
  a2db8a:	004007b7          	lui	a5,0x400
  a2db8e:	00e7ea63          	bltu	a5,a4,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2db92:	9736                	add	a4,a4,a3
  a2db94:	00e7e763          	bltu	a5,a4,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2db98:	45f1                	li	a1,28
  a2db9a:	0848                	addi	a0,sp,20
  a2db9c:	f49ff0ef          	jal	ra,a2dae4 <mfg_flash_write>
  a2dba0:	c119                	beqz	a0,a2dba6 <mfg_get_ftm_run_region+0x7e>
  a2dba2:	4501                	li	a0,0
  a2dba4:	a809                	j	a2dbb6 <mfg_get_ftm_run_region+0x8e>
  a2dba6:	45f1                	li	a1,28
  a2dba8:	8522                	mv	a0,s0
  a2dbaa:	dfbff0ef          	jal	ra,a2d9a4 <mfg_flash_read>
  a2dbae:	f975                	bnez	a0,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2dbb0:	4008                	lw	a0,0(s0)
  a2dbb2:	02f57c3b          	bgeui	a0,2,a2dba2 <mfg_get_ftm_run_region+0x7a>
  a2dbb6:	8324                	popret	{ra,s0},64

00a2dbb8 <cpu_utils_set_system_status_by_cause>:
  a2dbb8:	8018                	push	{ra},-16
  a2dbba:	223d                	jal	ra,a2dce8 <set_cpu_utils_reset_cause>
  a2dbbc:	8010                	pop	{ra},16
  a2dbbe:	a8e9                	j	a2dc98 <set_cpu_utils_system_boot_magic>

00a2dbc0 <cpu_utils_reset_chip_with_log>:
  a2dbc0:	8118                	push	{ra},-32
  a2dbc2:	4501                	li	a0,0
  a2dbc4:	c62e                	sw	a1,12(sp)
  a2dbc6:	2a15                	jal	ra,a2dcfa <set_update_reset_cause_on_boot>
  a2dbc8:	45b2                	lw	a1,12(sp)
  a2dbca:	852e                	mv	a0,a1
  a2dbcc:	fedff0ef          	jal	ra,a2dbb8 <cpu_utils_set_system_status_by_cause>
  a2dbd0:	8110                	pop	{ra},32
  a2dbd2:	a36fd06f          	j	a2ae08 <hal_reboot_chip>

00a2dbd6 <panic_deal>:
  a2dbd6:	8458                	push	{ra,s0-s3},-96
  a2dbd8:	86b2                	mv	a3,a2
  a2dbda:	892a                	mv	s2,a0
  a2dbdc:	84ae                	mv	s1,a1
  a2dbde:	8432                	mv	s0,a2
  a2dbe0:	862e                	mv	a2,a1
  a2dbe2:	85aa                	mv	a1,a0
  a2dbe4:	00a3 3524 051f      	l.li	a0,0xa33524
  a2dbea:	e06fe0ef          	jal	ra,a2c1f0 <print_str>
  a2dbee:	dfffb0ef          	jal	ra,a299ec <osal_irq_lock>
  a2dbf2:	00a0 58c4 079f      	l.li	a5,0xa058c4
  a2dbf8:	2398                	lbu	a4,0(a5)
  a2dbfa:	89aa                	mv	s3,a0
  a2dbfc:	e321                	bnez	a4,a2dc3c <panic_deal+0x66>
  a2dbfe:	4705                	li	a4,1
  a2dc00:	a398                	sb	a4,0(a5)
  a2dc02:	03210023          	sb	s2,32(sp)
  a2dc06:	d226                	sw	s1,36(sp)
  a2dc08:	ec2fc0ef          	jal	ra,a2a2ca <uapi_systick_get_us>
  a2dc0c:	d42a                	sw	a0,40(sp)
  a2dc0e:	1008                	addi	a0,sp,32
  a2dc10:	d622                	sw	s0,44(sp)
  a2dc12:	28d5                	jal	ra,a2dd06 <set_last_panic>
  a2dc14:	02000613          	li	a2,32
  a2dc18:	4581                	li	a1,0
  a2dc1a:	1008                	addi	a0,sp,32
  a2dc1c:	c802                	sw	zero,16(sp)
  a2dc1e:	ca02                	sw	zero,20(sp)
  a2dc20:	cc02                	sw	zero,24(sp)
  a2dc22:	ce02                	sw	zero,28(sp)
  a2dc24:	d81fa0ef          	jal	ra,a289a4 <memset>
  a2dc28:	da22                	sw	s0,52(sp)
  a2dc2a:	341027f3          	csrr	a5,mepc
  a2dc2e:	dc3e                	sw	a5,56(sp)
  a2dc30:	878a                	mv	a5,sp
  a2dc32:	0068                	addi	a0,sp,12
  a2dc34:	c63e                	sw	a5,12(sp)
  a2dc36:	2221                	jal	ra,a2dd3e <set_exception_info>
  a2dc38:	1008                	addi	a0,sp,32
  a2dc3a:	2215                	jal	ra,a2dd5e <set_exception_stack_frame>
  a2dc3c:	00a0 58c8 079f      	l.li	a5,0xa058c8
  a2dc42:	439c                	lw	a5,0(a5)
  a2dc44:	c391                	beqz	a5,a2dc48 <panic_deal+0x72>
  a2dc46:	9782                	jalr	a5
  a2dc48:	6589                	lui	a1,0x2
  a2dc4a:	058d                	addi	a1,a1,3 # 2003 <ccause+0x1041>
  a2dc4c:	4509                	li	a0,2
  a2dc4e:	f73ff0ef          	jal	ra,a2dbc0 <cpu_utils_reset_chip_with_log>
  a2dc52:	854e                	mv	a0,s3
  a2dc54:	da1fb0ef          	jal	ra,a299f4 <osal_irq_restore>
  a2dc58:	8454                	popret	{ra,s0-s3},96

00a2dc5a <panic>:
  a2dc5a:	00a3 4284 079f      	l.li	a5,0xa34284
  a2dc60:	0007a303          	lw	t1,0(a5) # 400000 <__heap_size+0x3e2a08>
  a2dc64:	00030563          	beqz	t1,a2dc6e <panic+0x14>
  a2dc68:	ffb08613          	addi	a2,ra,-5
  a2dc6c:	8302                	jr	t1
  a2dc6e:	8118                	push	{ra},-32
  a2dc70:	4785                	li	a5,1
  a2dc72:	00f107a3          	sb	a5,15(sp)
  a2dc76:	00f14783          	lbu	a5,15(sp)
  a2dc7a:	9f81                	uxtb	a5
  a2dc7c:	ffed                	bnez	a5,a2dc76 <panic+0x1c>
  a2dc7e:	8114                	popret	{ra},32

00a2dc80 <duplicate_preserve_mem>:
  a2dc80:	0fc00693          	li	a3,252
  a2dc84:	00a3 42c8 061f      	l.li	a2,0xa342c8
  a2dc8a:	0fc00593          	li	a1,252
  a2dc8e:	00a0 58cc 051f      	l.li	a0,0xa058cc
  a2dc94:	7b50206f          	j	a30c48 <memcpy_s>

00a2dc98 <set_cpu_utils_system_boot_magic>:
  a2dc98:	00a34737          	lui	a4,0xa34
  a2dc9c:	2c870793          	addi	a5,a4,712 # a342c8 <g_preserve_data_lib>
  a2dca0:	0d87d783          	lhu	a5,216(a5)
  a2dca4:	6689                	lui	a3,0x2
  a2dca6:	04068613          	addi	a2,a3,64 # 2040 <ccause+0x107e>
  a2dcaa:	2c870713          	addi	a4,a4,712
  a2dcae:	02c78963          	beq	a5,a2,a2dce0 <set_cpu_utils_system_boot_magic+0x48>
  a2dcb2:	00f66c63          	bltu	a2,a5,a2dcca <set_cpu_utils_system_boot_magic+0x32>
  a2dcb6:	c78d                	beqz	a5,a2dce0 <set_cpu_utils_system_boot_magic+0x48>
  a2dcb8:	0685                	addi	a3,a3,1
  a2dcba:	02d78363          	beq	a5,a3,a2dce0 <set_cpu_utils_system_boot_magic+0x48>
  a2dcbe:	dead beaf 079f      	l.li	a5,0xdeadbeaf
  a2dcc4:	0ef72423          	sw	a5,232(a4)
  a2dcc8:	8082                	ret
  a2dcca:	66a1                	lui	a3,0x8
  a2dccc:	0685                	addi	a3,a3,1 # 8001 <ccause+0x703f>
  a2dcce:	00d78963          	beq	a5,a3,a2dce0 <set_cpu_utils_system_boot_magic+0x48>
  a2dcd2:	0000 f0f0 069f      	l.li	a3,0xf0f0
  a2dcd8:	00d78463          	beq	a5,a3,a2dce0 <set_cpu_utils_system_boot_magic+0x48>
  a2dcdc:	6691                	lui	a3,0x4
  a2dcde:	bfe9                	j	a2dcb8 <set_cpu_utils_system_boot_magic+0x20>
  a2dce0:	dead dead 079f      	l.li	a5,0xdeaddead
  a2dce6:	bff9                	j	a2dcc4 <set_cpu_utils_system_boot_magic+0x2c>

00a2dce8 <set_cpu_utils_reset_cause>:
  a2dce8:	00a3 42c8 079f      	l.li	a5,0xa342c8
  a2dcee:	0c078d23          	sb	zero,218(a5)
  a2dcf2:	0ca79c23          	sh	a0,216(a5)
  a2dcf6:	f8bff06f          	j	a2dc80 <duplicate_preserve_mem>

00a2dcfa <set_update_reset_cause_on_boot>:
  a2dcfa:	00a3 42c8 079f      	l.li	a5,0xa342c8
  a2dd00:	0ca78d23          	sb	a0,218(a5)
  a2dd04:	8082                	ret

00a2dd06 <set_last_panic>:
  a2dd06:	8018                	push	{ra},-16
  a2dd08:	862a                	mv	a2,a0
  a2dd0a:	00a3 42c8 051f      	l.li	a0,0xa342c8
  a2dd10:	46c1                	li	a3,16
  a2dd12:	45c1                	li	a1,16
  a2dd14:	0a450513          	addi	a0,a0,164 # 10a4 <ccause+0xe2>
  a2dd18:	731020ef          	jal	ra,a30c48 <memcpy_s>
  a2dd1c:	8010                	pop	{ra},16
  a2dd1e:	f63ff06f          	j	a2dc80 <duplicate_preserve_mem>

00a2dd22 <set_exception_info_riscv>:
  a2dd22:	8018                	push	{ra},-16
  a2dd24:	862a                	mv	a2,a0
  a2dd26:	09000693          	li	a3,144
  a2dd2a:	09000593          	li	a1,144
  a2dd2e:	00a3 42c8 051f      	l.li	a0,0xa342c8
  a2dd34:	715020ef          	jal	ra,a30c48 <memcpy_s>
  a2dd38:	8010                	pop	{ra},16
  a2dd3a:	f47ff06f          	j	a2dc80 <duplicate_preserve_mem>

00a2dd3e <set_exception_info>:
  a2dd3e:	cd19                	beqz	a0,a2dd5c <set_exception_info+0x1e>
  a2dd40:	8018                	push	{ra},-16
  a2dd42:	862a                	mv	a2,a0
  a2dd44:	00a3 42c8 051f      	l.li	a0,0xa342c8
  a2dd4a:	46d1                	li	a3,20
  a2dd4c:	45d1                	li	a1,20
  a2dd4e:	09050513          	addi	a0,a0,144
  a2dd52:	6f7020ef          	jal	ra,a30c48 <memcpy_s>
  a2dd56:	8010                	pop	{ra},16
  a2dd58:	f29ff06f          	j	a2dc80 <duplicate_preserve_mem>
  a2dd5c:	8082                	ret

00a2dd5e <set_exception_stack_frame>:
  a2dd5e:	4958                	lw	a4,20(a0)
  a2dd60:	00a3 42c8 079f      	l.li	a5,0xa342c8
  a2dd66:	08e7a623          	sw	a4,140(a5)
  a2dd6a:	4d18                	lw	a4,24(a0)
  a2dd6c:	cbd8                	sw	a4,20(a5)
  a2dd6e:	f13ff06f          	j	a2dc80 <duplicate_preserve_mem>

00a2dd72 <uapi_partition_init>:
  a2dd72:	8048                	push	{ra,s0-s2},-16
  a2dd74:	e30ff0ef          	jal	ra,a2d3a4 <partition_get_addr>
  a2dd78:	4118                	lw	a4,0(a0)
  a2dd7a:	4b87 a54b 079f      	l.li	a5,0x4b87a54b
  a2dd80:	06f71563          	bne	a4,a5,a2ddea <uapi_partition_init+0x78>
  a2dd84:	842a                	mv	s0,a0
  a2dd86:	e1eff0ef          	jal	ra,a2d3a4 <partition_get_addr>
  a2dd8a:	892a                	mv	s2,a0
  a2dd8c:	2446                	lhu	s1,12(s0)
  a2dd8e:	e16ff0ef          	jal	ra,a2d3a4 <partition_get_addr>
  a2dd92:	4014                	lw	a3,0(s0)
  a2dd94:	00a06737          	lui	a4,0xa06
  a2dd98:	9c870793          	addi	a5,a4,-1592 # a059c8 <g_partition_info>
  a2dd9c:	c394                	sw	a3,0(a5)
  a2dd9e:	4054                	lw	a3,4(s0)
  a2dda0:	9c870313          	addi	t1,a4,-1592
  a2dda4:	c3d4                	sw	a3,4(a5)
  a2dda6:	4414                	lw	a3,8(s0)
  a2dda8:	c794                	sw	a3,8(a5)
  a2ddaa:	2474                	lbu	a3,14(s0)
  a2ddac:	c7d4                	sw	a3,12(a5)
  a2ddae:	1006ef3b          	bltui	a3,16,a2ddea <uapi_partition_init+0x78>
  a2ddb2:	9c870713          	addi	a4,a4,-1592
  a2ddb6:	4781                	li	a5,0
  a2ddb8:	94ca                	add	s1,s1,s2
  a2ddba:	4841                	li	a6,16
  a2ddbc:	06f4861b          	addshf	a2,s1,a5,sll,3
  a2ddc0:	4214                	lw	a3,0(a2)
  a2ddc2:	00178593          	addi	a1,a5,1
  a2ddc6:	97aa                	add	a5,a5,a0
  a2ddc8:	cb14                	sw	a3,16(a4)
  a2ddca:	08b3069b          	addshf	a3,t1,a1,sll,4
  a2ddce:	00462883          	lw	a7,4(a2) # 200004 <__heap_size+0x1e2a0c>
  a2ddd2:	2690                	lbu	a2,8(a3)
  a2ddd4:	0741                	addi	a4,a4,16
  a2ddd6:	1116261b          	orshf	a2,a2,a7,sll,8
  a2ddda:	c690                	sw	a2,8(a3)
  a2dddc:	37fc                	lbu	a5,15(a5)
  a2ddde:	a69c                	sb	a5,8(a3)
  a2dde0:	87ae                	mv	a5,a1
  a2dde2:	fd059de3          	bne	a1,a6,a2ddbc <uapi_partition_init+0x4a>
  a2dde6:	4501                	li	a0,0
  a2dde8:	8044                	popret	{ra,s0-s2},16
  a2ddea:	80003537          	lui	a0,0x80003
  a2ddee:	bfed                	j	a2dde8 <uapi_partition_init+0x76>

00a2ddf0 <uapi_partition_get_info>:
  a2ddf0:	c1bd                	beqz	a1,a2de56 <uapi_partition_get_info+0x66>
  a2ddf2:	00a06737          	lui	a4,0xa06
  a2ddf6:	9c870793          	addi	a5,a4,-1592 # a059c8 <g_partition_info>
  a2ddfa:	47d0                	lw	a2,12(a5)
  a2ddfc:	9c870713          	addi	a4,a4,-1592
  a2de00:	4781                	li	a5,0
  a2de02:	02c7e863          	bltu	a5,a2,a2de32 <uapi_partition_get_info+0x42>
  a2de06:	8138                	push	{ra,s0-s1},-32
  a2de08:	84aa                	mv	s1,a0
  a2de0a:	0068                	addi	a0,sp,12
  a2de0c:	842e                	mv	s0,a1
  a2de0e:	c602                	sw	zero,12(sp)
  a2de10:	d9cff0ef          	jal	ra,a2d3ac <partition_get_path_map>
  a2de14:	c919                	beqz	a0,a2de2a <uapi_partition_get_info+0x3a>
  a2de16:	47b2                	lw	a5,12(sp)
  a2de18:	cb89                	beqz	a5,a2de2a <uapi_partition_get_info+0x3a>
  a2de1a:	4701                	li	a4,0
  a2de1c:	86be                	mv	a3,a5
  a2de1e:	4290                	lw	a2,0(a3)
  a2de20:	07a1                	addi	a5,a5,8
  a2de22:	02c49163          	bne	s1,a2,a2de44 <uapi_partition_get_info+0x54>
  a2de26:	42dc                	lw	a5,4(a3)
  a2de28:	e395                	bnez	a5,a2de4c <uapi_partition_get_info+0x5c>
  a2de2a:	8000 3003 051f      	l.li	a0,0x80003003
  a2de30:	8134                	popret	{ra,s0-s1},32
  a2de32:	0785                	addi	a5,a5,1
  a2de34:	08f7069b          	addshf	a3,a4,a5,sll,4
  a2de38:	0086c803          	lbu	a6,8(a3) # 4008 <ccause+0x3046>
  a2de3c:	02a80163          	beq	a6,a0,a2de5e <uapi_partition_get_info+0x6e>
  a2de40:	9f81                	uxtb	a5
  a2de42:	b7c1                	j	a2de02 <uapi_partition_get_info+0x12>
  a2de44:	0705                	addi	a4,a4,1
  a2de46:	fce51be3          	bne	a0,a4,a2de1c <uapi_partition_get_info+0x2c>
  a2de4a:	b7c5                	j	a2de2a <uapi_partition_get_info+0x3a>
  a2de4c:	4705                	li	a4,1
  a2de4e:	a018                	sb	a4,0(s0)
  a2de50:	c05c                	sw	a5,4(s0)
  a2de52:	4501                	li	a0,0
  a2de54:	bff1                	j	a2de30 <uapi_partition_get_info+0x40>
  a2de56:	8000 3002 051f      	l.li	a0,0x80003002
  a2de5c:	8082                	ret
  a2de5e:	00058023          	sb	zero,0(a1)
  a2de62:	429c                	lw	a5,0(a3)
  a2de64:	4501                	li	a0,0
  a2de66:	c1dc                	sw	a5,4(a1)
  a2de68:	469c                	lw	a5,8(a3)
  a2de6a:	83a1                	srli	a5,a5,0x8
  a2de6c:	c59c                	sw	a5,8(a1)
  a2de6e:	8082                	ret

00a2de70 <upg_malloc>:
  a2de70:	8028                	push	{ra,s0},-16
  a2de72:	842a                	mv	s0,a0
  a2de74:	2b8d                	jal	ra,a2e3e6 <upg_get_func_list>
  a2de76:	411c                	lw	a5,0(a0)
  a2de78:	c799                	beqz	a5,a2de86 <upg_malloc+0x16>
  a2de7a:	23b5                	jal	ra,a2e3e6 <upg_get_func_list>
  a2de7c:	00052303          	lw	t1,0(a0) # 80003000 <_gp_+0x7f5ce538>
  a2de80:	8522                	mv	a0,s0
  a2de82:	8020                	pop	{ra,s0},16
  a2de84:	8302                	jr	t1
  a2de86:	4501                	li	a0,0
  a2de88:	8024                	popret	{ra,s0},16

00a2de8a <upg_free>:
  a2de8a:	c51d                	beqz	a0,a2deb8 <upg_free+0x2e>
  a2de8c:	8038                	push	{ra,s0-s1},-16
  a2de8e:	842a                	mv	s0,a0
  a2de90:	eecff0ef          	jal	ra,a2d57c <upg_get_flash_base_addr>
  a2de94:	84aa                	mv	s1,a0
  a2de96:	eecff0ef          	jal	ra,a2d582 <upg_get_flash_size>
  a2de9a:	00946563          	bltu	s0,s1,a2dea4 <upg_free+0x1a>
  a2de9e:	94aa                	add	s1,s1,a0
  a2dea0:	00946b63          	bltu	s0,s1,a2deb6 <upg_free+0x2c>
  a2dea4:	2389                	jal	ra,a2e3e6 <upg_get_func_list>
  a2dea6:	415c                	lw	a5,4(a0)
  a2dea8:	c799                	beqz	a5,a2deb6 <upg_free+0x2c>
  a2deaa:	2b35                	jal	ra,a2e3e6 <upg_get_func_list>
  a2deac:	00452303          	lw	t1,4(a0)
  a2deb0:	8522                	mv	a0,s0
  a2deb2:	8030                	pop	{ra,s0-s1},16
  a2deb4:	8302                	jr	t1
  a2deb6:	8034                	popret	{ra,s0-s1},16
  a2deb8:	8082                	ret

00a2deba <upg_get_ctx>:
  a2deba:	00a0 5ad8 051f      	l.li	a0,0xa05ad8
  a2dec0:	8082                	ret

00a2dec2 <upg_alloc_and_get_upgrade_flag>:
  a2dec2:	8138                	push	{ra,s0-s1},-32
  a2dec4:	84aa                	mv	s1,a0
  a2dec6:	0068                	addi	a0,sp,12
  a2dec8:	c602                	sw	zero,12(sp)
  a2deca:	e24ff0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2dece:	c909                	beqz	a0,a2dee0 <upg_alloc_and_get_upgrade_flag+0x1e>
  a2ded0:	842a                	mv	s0,a0
  a2ded2:	00a3 354c 051f      	l.li	a0,0xa3354c
  a2ded8:	b18fe0ef          	jal	ra,a2c1f0 <print_str>
  a2dedc:	8522                	mv	a0,s0
  a2dede:	8134                	popret	{ra,s0-s1},32
  a2dee0:	06c00513          	li	a0,108
  a2dee4:	f8dff0ef          	jal	ra,a2de70 <upg_malloc>
  a2dee8:	c088                	sw	a0,0(s1)
  a2deea:	862a                	mv	a2,a0
  a2deec:	e911                	bnez	a0,a2df00 <upg_alloc_and_get_upgrade_flag+0x3e>
  a2deee:	00a3 3580 051f      	l.li	a0,0xa33580
  a2def4:	80000437          	lui	s0,0x80000
  a2def8:	af8fe0ef          	jal	ra,a2c1f0 <print_str>
  a2defc:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb53d>
  a2defe:	bff9                	j	a2dedc <upg_alloc_and_get_upgrade_flag+0x1a>
  a2df00:	4532                	lw	a0,12(sp)
  a2df02:	06c00593          	li	a1,108
  a2df06:	e82ff0ef          	jal	ra,a2d588 <upg_flash_read>
  a2df0a:	842a                	mv	s0,a0
  a2df0c:	d961                	beqz	a0,a2dedc <upg_alloc_and_get_upgrade_flag+0x1a>
  a2df0e:	00a3 35b8 051f      	l.li	a0,0xa335b8
  a2df14:	adcfe0ef          	jal	ra,a2c1f0 <print_str>
  a2df18:	4088                	lw	a0,0(s1)
  a2df1a:	f71ff0ef          	jal	ra,a2de8a <upg_free>
  a2df1e:	0004a023          	sw	zero,0(s1) # fffff000 <_gp_+0xff5ca538>
  a2df22:	bf6d                	j	a2dedc <upg_alloc_and_get_upgrade_flag+0x1a>

00a2df24 <upg_get_image_info>:
  a2df24:	cd9d                	beqz	a1,a2df62 <upg_get_image_info+0x3e>
  a2df26:	8228                	push	{ra,s0},-48
  a2df28:	842a                	mv	s0,a0
  a2df2a:	0868                	addi	a0,sp,28
  a2df2c:	c62e                	sw	a1,12(sp)
  a2df2e:	ce02                	sw	zero,28(sp)
  a2df30:	d8cff0ef          	jal	ra,a2d4bc <upg_get_ids_map>
  a2df34:	45b2                	lw	a1,12(sp)
  a2df36:	e509                	bnez	a0,a2df40 <upg_get_image_info+0x1c>
  a2df38:	8000 3002 051f      	l.li	a0,0x80003002
  a2df3e:	8224                	popret	{ra,s0},48
  a2df40:	47f2                	lw	a5,28(sp)
  a2df42:	dbfd                	beqz	a5,a2df38 <upg_get_image_info+0x14>
  a2df44:	4701                	li	a4,0
  a2df46:	86be                	mv	a3,a5
  a2df48:	07a1                	addi	a5,a5,8
  a2df4a:	ff87a603          	lw	a2,-8(a5)
  a2df4e:	00c41663          	bne	s0,a2,a2df5a <upg_get_image_info+0x36>
  a2df52:	22c8                	lbu	a0,4(a3)
  a2df54:	e9dff0ef          	jal	ra,a2ddf0 <uapi_partition_get_info>
  a2df58:	b7dd                	j	a2df3e <upg_get_image_info+0x1a>
  a2df5a:	0705                	addi	a4,a4,1
  a2df5c:	fee515e3          	bne	a0,a4,a2df46 <upg_get_image_info+0x22>
  a2df60:	bfe1                	j	a2df38 <upg_get_image_info+0x14>
  a2df62:	8000 3002 051f      	l.li	a0,0x80003002
  a2df68:	8082                	ret

00a2df6a <upg_read_fota_pkg_data>:
  a2df6a:	8158                	push	{ra,s0-s3},-48
  a2df6c:	842a                	mv	s0,a0
  a2df6e:	89ae                	mv	s3,a1
  a2df70:	0028                	addi	a0,sp,8
  a2df72:	006c                	addi	a1,sp,12
  a2df74:	8932                	mv	s2,a2
  a2df76:	c402                	sw	zero,8(sp)
  a2df78:	c602                	sw	zero,12(sp)
  a2df7a:	db6ff0ef          	jal	ra,a2d530 <upg_get_fota_partiton_area_addr>
  a2df7e:	e51d                	bnez	a0,a2dfac <upg_read_fota_pkg_data+0x42>
  a2df80:	47b2                	lw	a5,12(sp)
  a2df82:	02f47663          	bgeu	s0,a5,a2dfae <upg_read_fota_pkg_data+0x44>
  a2df86:	00092483          	lw	s1,0(s2) # fffff000 <_gp_+0xff5ca538>
  a2df8a:	c095                	beqz	s1,a2dfae <upg_read_fota_pkg_data+0x44>
  a2df8c:	00848733          	add	a4,s1,s0
  a2df90:	00e7f463          	bgeu	a5,a4,a2df98 <upg_read_fota_pkg_data+0x2e>
  a2df94:	408784b3          	sub	s1,a5,s0
  a2df98:	4522                	lw	a0,8(sp)
  a2df9a:	864e                	mv	a2,s3
  a2df9c:	85a6                	mv	a1,s1
  a2df9e:	9522                	add	a0,a0,s0
  a2dfa0:	c42a                	sw	a0,8(sp)
  a2dfa2:	de6ff0ef          	jal	ra,a2d588 <upg_flash_read>
  a2dfa6:	e119                	bnez	a0,a2dfac <upg_read_fota_pkg_data+0x42>
  a2dfa8:	00992023          	sw	s1,0(s2)
  a2dfac:	8154                	popret	{ra,s0-s3},48
  a2dfae:	8000 3042 051f      	l.li	a0,0x80003042
  a2dfb4:	bfe5                	j	a2dfac <upg_read_fota_pkg_data+0x42>

00a2dfb6 <uapi_upg_get_storage_size>:
  a2dfb6:	8128                	push	{ra,s0},-32
  a2dfb8:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2dfbe:	239c                	lbu	a5,0(a5)
  a2dfc0:	4401                	li	s0,0
  a2dfc2:	cb99                	beqz	a5,a2dfd8 <uapi_upg_get_storage_size+0x22>
  a2dfc4:	006c                	addi	a1,sp,12
  a2dfc6:	0028                	addi	a0,sp,8
  a2dfc8:	c402                	sw	zero,8(sp)
  a2dfca:	c602                	sw	zero,12(sp)
  a2dfcc:	d64ff0ef          	jal	ra,a2d530 <upg_get_fota_partiton_area_addr>
  a2dfd0:	e501                	bnez	a0,a2dfd8 <uapi_upg_get_storage_size+0x22>
  a2dfd2:	47b2                	lw	a5,12(sp)
  a2dfd4:	7475                	lui	s0,0xffffd
  a2dfd6:	943e                	add	s0,s0,a5
  a2dfd8:	8522                	mv	a0,s0
  a2dfda:	8124                	popret	{ra,s0},32

00a2dfdc <upg_get_partition_info>:
  a2dfdc:	8138                	push	{ra,s0-s1},-32
  a2dfde:	c202                	sw	zero,4(sp)
  a2dfe0:	c402                	sw	zero,8(sp)
  a2dfe2:	c602                	sw	zero,12(sp)
  a2dfe4:	4b87 a52d 079f      	l.li	a5,0x4b87a52d
  a2dfea:	84ae                	mv	s1,a1
  a2dfec:	8432                	mv	s0,a2
  a2dfee:	02f51163          	bne	a0,a5,a2e010 <upg_get_partition_info+0x34>
  a2dff2:	002007b7          	lui	a5,0x200
  a2dff6:	c43e                	sw	a5,8(sp)
  a2dff8:	78000793          	li	a5,1920
  a2dffc:	c63e                	sw	a5,12(sp)
  a2dffe:	00414783          	lbu	a5,4(sp)
  a2e002:	ef81                	bnez	a5,a2e01a <upg_get_partition_info+0x3e>
  a2e004:	47a2                	lw	a5,8(sp)
  a2e006:	c09c                	sw	a5,0(s1)
  a2e008:	47b2                	lw	a5,12(sp)
  a2e00a:	c01c                	sw	a5,0(s0)
  a2e00c:	4501                	li	a0,0
  a2e00e:	a029                	j	a2e018 <upg_get_partition_info+0x3c>
  a2e010:	004c                	addi	a1,sp,4
  a2e012:	f13ff0ef          	jal	ra,a2df24 <upg_get_image_info>
  a2e016:	d565                	beqz	a0,a2dffe <upg_get_partition_info+0x22>
  a2e018:	8134                	popret	{ra,s0-s1},32
  a2e01a:	0004a023          	sw	zero,0(s1)
  a2e01e:	f99ff0ef          	jal	ra,a2dfb6 <uapi_upg_get_storage_size>
  a2e022:	c008                	sw	a0,0(s0)
  a2e024:	b7e5                	j	a2e00c <upg_get_partition_info+0x30>

00a2e026 <upg_get_package_header>:
  a2e026:	8138                	push	{ra,s0-s1},-32
  a2e028:	84aa                	mv	s1,a0
  a2e02a:	006c                	addi	a1,sp,12
  a2e02c:	0028                	addi	a0,sp,8
  a2e02e:	c402                	sw	zero,8(sp)
  a2e030:	c602                	sw	zero,12(sp)
  a2e032:	cfeff0ef          	jal	ra,a2d530 <upg_get_fota_partiton_area_addr>
  a2e036:	842a                	mv	s0,a0
  a2e038:	e511                	bnez	a0,a2e044 <upg_get_package_header+0x1e>
  a2e03a:	d42ff0ef          	jal	ra,a2d57c <upg_get_flash_base_addr>
  a2e03e:	47a2                	lw	a5,8(sp)
  a2e040:	953e                	add	a0,a0,a5
  a2e042:	c088                	sw	a0,0(s1)
  a2e044:	8522                	mv	a0,s0
  a2e046:	8134                	popret	{ra,s0-s1},32

00a2e048 <upg_get_pkg_image_hash_table>:
  a2e048:	8148                	push	{ra,s0-s2},-32
  a2e04a:	12052403          	lw	s0,288(a0)
  a2e04e:	892e                	mv	s2,a1
  a2e050:	e019                	bnez	s0,a2e056 <upg_get_pkg_image_hash_table+0xe>
  a2e052:	20000413          	li	s0,512
  a2e056:	006c                	addi	a1,sp,12
  a2e058:	0028                	addi	a0,sp,8
  a2e05a:	c402                	sw	zero,8(sp)
  a2e05c:	c602                	sw	zero,12(sp)
  a2e05e:	cd2ff0ef          	jal	ra,a2d530 <upg_get_fota_partiton_area_addr>
  a2e062:	84aa                	mv	s1,a0
  a2e064:	e911                	bnez	a0,a2e078 <upg_get_pkg_image_hash_table+0x30>
  a2e066:	47a2                	lw	a5,8(sp)
  a2e068:	97a2                	add	a5,a5,s0
  a2e06a:	c43e                	sw	a5,8(sp)
  a2e06c:	d10ff0ef          	jal	ra,a2d57c <upg_get_flash_base_addr>
  a2e070:	47a2                	lw	a5,8(sp)
  a2e072:	953e                	add	a0,a0,a5
  a2e074:	00a92023          	sw	a0,0(s2)
  a2e078:	8526                	mv	a0,s1
  a2e07a:	8144                	popret	{ra,s0-s2},32

00a2e07c <upg_get_pkg_image_header>:
  a2e07c:	8148                	push	{ra,s0-s2},-32
  a2e07e:	892a                	mv	s2,a0
  a2e080:	84ae                	mv	s1,a1
  a2e082:	0028                	addi	a0,sp,8
  a2e084:	006c                	addi	a1,sp,12
  a2e086:	c402                	sw	zero,8(sp)
  a2e088:	c602                	sw	zero,12(sp)
  a2e08a:	ca6ff0ef          	jal	ra,a2d530 <upg_get_fota_partiton_area_addr>
  a2e08e:	842a                	mv	s0,a0
  a2e090:	e919                	bnez	a0,a2e0a6 <upg_get_pkg_image_header+0x2a>
  a2e092:	47a2                	lw	a5,8(sp)
  a2e094:	00492703          	lw	a4,4(s2)
  a2e098:	97ba                	add	a5,a5,a4
  a2e09a:	c43e                	sw	a5,8(sp)
  a2e09c:	ce0ff0ef          	jal	ra,a2d57c <upg_get_flash_base_addr>
  a2e0a0:	47a2                	lw	a5,8(sp)
  a2e0a2:	953e                	add	a0,a0,a5
  a2e0a4:	c088                	sw	a0,0(s1)
  a2e0a6:	8522                	mv	a0,s0
  a2e0a8:	8144                	popret	{ra,s0-s2},32

00a2e0aa <upg_get_pkg_image_data>:
  a2e0aa:	8178                	push	{ra,s0-s5},-48
  a2e0ac:	4544                	lw	s1,12(a0)
  a2e0ae:	8aaa                	mv	s5,a0
  a2e0b0:	842e                	mv	s0,a1
  a2e0b2:	0028                	addi	a0,sp,8
  a2e0b4:	006c                	addi	a1,sp,12
  a2e0b6:	89b2                	mv	s3,a2
  a2e0b8:	8a36                	mv	s4,a3
  a2e0ba:	c402                	sw	zero,8(sp)
  a2e0bc:	c602                	sw	zero,12(sp)
  a2e0be:	c72ff0ef          	jal	ra,a2d530 <upg_get_fota_partiton_area_addr>
  a2e0c2:	892a                	mv	s2,a0
  a2e0c4:	e121                	bnez	a0,a2e104 <upg_get_pkg_image_data+0x5a>
  a2e0c6:	00f48793          	addi	a5,s1,15
  a2e0ca:	9bc1                	andi	a5,a5,-16
  a2e0cc:	02f47e63          	bgeu	s0,a5,a2e108 <upg_get_pkg_image_data+0x5e>
  a2e0d0:	020a0c63          	beqz	s4,a2e108 <upg_get_pkg_image_data+0x5e>
  a2e0d4:	02098a63          	beqz	s3,a2e108 <upg_get_pkg_image_data+0x5e>
  a2e0d8:	0009a483          	lw	s1,0(s3) # fffff000 <_gp_+0xff5ca538>
  a2e0dc:	c495                	beqz	s1,a2e108 <upg_get_pkg_image_data+0x5e>
  a2e0de:	00848733          	add	a4,s1,s0
  a2e0e2:	00e7f463          	bgeu	a5,a4,a2e0ea <upg_get_pkg_image_data+0x40>
  a2e0e6:	408784b3          	sub	s1,a5,s0
  a2e0ea:	47a2                	lw	a5,8(sp)
  a2e0ec:	008aa503          	lw	a0,8(s5)
  a2e0f0:	953e                	add	a0,a0,a5
  a2e0f2:	942a                	add	s0,s0,a0
  a2e0f4:	c42a                	sw	a0,8(sp)
  a2e0f6:	c86ff0ef          	jal	ra,a2d57c <upg_get_flash_base_addr>
  a2e0fa:	9522                	add	a0,a0,s0
  a2e0fc:	00aa2023          	sw	a0,0(s4)
  a2e100:	0099a023          	sw	s1,0(s3)
  a2e104:	854a                	mv	a0,s2
  a2e106:	8174                	popret	{ra,s0-s5},48
  a2e108:	8000 3042 091f      	l.li	s2,0x80003042
  a2e10e:	bfdd                	j	a2e104 <upg_get_pkg_image_data+0x5a>

00a2e110 <upg_copy_pkg_image_data>:
  a2e110:	455c                	lw	a5,12(a0)
  a2e112:	07bd                	addi	a5,a5,15 # 20000f <__heap_size+0x1e2a17>
  a2e114:	9bc1                	andi	a5,a5,-16
  a2e116:	02f5fb63          	bgeu	a1,a5,a2e14c <upg_copy_pkg_image_data+0x3c>
  a2e11a:	ca8d                	beqz	a3,a2e14c <upg_copy_pkg_image_data+0x3c>
  a2e11c:	ca05                	beqz	a2,a2e14c <upg_copy_pkg_image_data+0x3c>
  a2e11e:	00062803          	lw	a6,0(a2)
  a2e122:	02080563          	beqz	a6,a2e14c <upg_copy_pkg_image_data+0x3c>
  a2e126:	8128                	push	{ra,s0},-32
  a2e128:	872e                	mv	a4,a1
  a2e12a:	95c2                	add	a1,a1,a6
  a2e12c:	00b7f463          	bgeu	a5,a1,a2e134 <upg_copy_pkg_image_data+0x24>
  a2e130:	40e78833          	sub	a6,a5,a4
  a2e134:	4508                	lw	a0,8(a0)
  a2e136:	8432                	mv	s0,a2
  a2e138:	85b6                	mv	a1,a3
  a2e13a:	0070                	addi	a2,sp,12
  a2e13c:	953a                	add	a0,a0,a4
  a2e13e:	c642                	sw	a6,12(sp)
  a2e140:	e2bff0ef          	jal	ra,a2df6a <upg_read_fota_pkg_data>
  a2e144:	e119                	bnez	a0,a2e14a <upg_copy_pkg_image_data+0x3a>
  a2e146:	47b2                	lw	a5,12(sp)
  a2e148:	c01c                	sw	a5,0(s0)
  a2e14a:	8124                	popret	{ra,s0},32
  a2e14c:	8000 3042 051f      	l.li	a0,0x80003042
  a2e152:	8082                	ret

00a2e154 <upg_set_firmware_update_status>:
  a2e154:	8168                	push	{ra,s0-s4},-48
  a2e156:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e15c:	02f59163          	bne	a1,a5,a2e17e <upg_set_firmware_update_status+0x2a>
  a2e160:	04c50513          	addi	a0,a0,76
  a2e164:	211c                	lbu	a5,0(a0)
  a2e166:	efb5                	bnez	a5,a2e1e2 <upg_set_firmware_update_status+0x8e>
  a2e168:	311c                	lbu	a5,1(a0)
  a2e16a:	00150913          	addi	s2,a0,1
  a2e16e:	ebe1                	bnez	a5,a2e23e <upg_set_firmware_update_status+0xea>
  a2e170:	213c                	lbu	a5,2(a0)
  a2e172:	00250913          	addi	s2,a0,2
  a2e176:	e7f1                	bnez	a5,a2e242 <upg_set_firmware_update_status+0xee>
  a2e178:	4401                	li	s0,0
  a2e17a:	8522                	mv	a0,s0
  a2e17c:	8164                	popret	{ra,s0-s4},48
  a2e17e:	02b5555b          	muliadd	a0,a0,a1,3
  a2e182:	0541                	addi	a0,a0,16
  a2e184:	b7c5                	j	a2e164 <upg_set_firmware_update_status+0x10>
  a2e186:	0441                	addi	s0,s0,16 # ffffd010 <_gp_+0xff5c8548>
  a2e188:	029455db          	muliadd	a1,s0,s1,3
  a2e18c:	00b98433          	add	s0,s3,a1
  a2e190:	a8a5                	j	a2e208 <upg_set_firmware_update_status+0xb4>
  a2e192:	010a14bb          	bnei	s4,1,a2e1a4 <upg_set_firmware_update_status+0x50>
  a2e196:	00094783          	lbu	a5,0(s2)
  a2e19a:	0ff797bb          	bnei	a5,15,a2e178 <upg_set_firmware_update_status+0x24>
  a2e19e:	00090023          	sb	zero,0(s2)
  a2e1a2:	a8b5                	j	a2e21e <upg_set_firmware_update_status+0xca>
  a2e1a4:	02fa153b          	bnei	s4,2,a2e178 <upg_set_firmware_update_status+0x24>
  a2e1a8:	448d                	li	s1,3
  a2e1aa:	413484b3          	sub	s1,s1,s3
  a2e1ae:	86a6                	mv	a3,s1
  a2e1b0:	4601                	li	a2,0
  a2e1b2:	85a6                	mv	a1,s1
  a2e1b4:	854a                	mv	a0,s2
  a2e1b6:	30f020ef          	jal	ra,a30cc4 <memset_s>
  a2e1ba:	a09d                	j	a2e220 <upg_set_firmware_update_status+0xcc>
  a2e1bc:	02e99f3b          	bnei	s3,2,a2e178 <upg_set_firmware_update_status+0x24>
  a2e1c0:	00094783          	lbu	a5,0(s2)
  a2e1c4:	fbd5                	bnez	a5,a2e178 <upg_set_firmware_update_status+0x24>
  a2e1c6:	00a3 366c 051f      	l.li	a0,0xa3366c
  a2e1cc:	824fe0ef          	jal	ra,a2c1f0 <print_str>
  a2e1d0:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e1d6:	4735                	li	a4,13
  a2e1d8:	b3d8                	sb	a4,5(a5)
  a2e1da:	8000 3067 041f      	l.li	s0,0x80003067
  a2e1e0:	bf69                	j	a2e17a <upg_set_firmware_update_status+0x26>
  a2e1e2:	892a                	mv	s2,a0
  a2e1e4:	4981                	li	s3,0
  a2e1e6:	0068                	addi	a0,sp,12
  a2e1e8:	8a32                	mv	s4,a2
  a2e1ea:	84ae                	mv	s1,a1
  a2e1ec:	c602                	sw	zero,12(sp)
  a2e1ee:	b00ff0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2e1f2:	842a                	mv	s0,a0
  a2e1f4:	f159                	bnez	a0,a2e17a <upg_set_firmware_update_status+0x26>
  a2e1f6:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e1fc:	4432                	lw	s0,12(sp)
  a2e1fe:	f8f494e3          	bne	s1,a5,a2e186 <upg_set_firmware_update_status+0x32>
  a2e202:	04c40413          	addi	s0,s0,76
  a2e206:	944e                	add	s0,s0,s3
  a2e208:	f80a15e3          	bnez	s4,a2e192 <upg_set_firmware_update_status+0x3e>
  a2e20c:	00094703          	lbu	a4,0(s2)
  a2e210:	0ff00793          	li	a5,255
  a2e214:	f6f712e3          	bne	a4,a5,a2e178 <upg_set_firmware_update_status+0x24>
  a2e218:	47bd                	li	a5,15
  a2e21a:	00f90023          	sb	a5,0(s2)
  a2e21e:	4485                	li	s1,1
  a2e220:	8522                	mv	a0,s0
  a2e222:	4681                	li	a3,0
  a2e224:	864a                	mv	a2,s2
  a2e226:	85a6                	mv	a1,s1
  a2e228:	c18ff0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e22c:	842a                	mv	s0,a0
  a2e22e:	d559                	beqz	a0,a2e1bc <upg_set_firmware_update_status+0x68>
  a2e230:	85aa                	mv	a1,a0
  a2e232:	00a3 3634 051f      	l.li	a0,0xa33634
  a2e238:	fb9fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e23c:	bf3d                	j	a2e17a <upg_set_firmware_update_status+0x26>
  a2e23e:	4985                	li	s3,1
  a2e240:	b75d                	j	a2e1e6 <upg_set_firmware_update_status+0x92>
  a2e242:	4989                	li	s3,2
  a2e244:	b74d                	j	a2e1e6 <upg_set_firmware_update_status+0x92>

00a2e246 <upg_get_image_update_status>:
  a2e246:	8128                	push	{ra,s0},-32
  a2e248:	00a3 1ef8 079f      	l.li	a5,0xa31ef8
  a2e24e:	239a                	lhu	a4,0(a5)
  a2e250:	23bc                	lbu	a5,2(a5)
  a2e252:	00011423          	sh	zero,8(sp)
  a2e256:	00010523          	sb	zero,10(sp)
  a2e25a:	00f10723          	sb	a5,14(sp)
  a2e25e:	00e11623          	sh	a4,12(sp)
  a2e262:	cb9e 063c 079f      	l.li	a5,0xcb9e063c
  a2e268:	04c50413          	addi	s0,a0,76
  a2e26c:	00f60563          	beq	a2,a5,a2e276 <upg_get_image_update_status+0x30>
  a2e270:	02b5545b          	muliadd	s0,a0,a1,3
  a2e274:	0441                	addi	s0,s0,16
  a2e276:	460d                	li	a2,3
  a2e278:	002c                	addi	a1,sp,8
  a2e27a:	8522                	mv	a0,s0
  a2e27c:	a73fa0ef          	jal	ra,a28cee <memcmp>
  a2e280:	478d                	li	a5,3
  a2e282:	cd0d                	beqz	a0,a2e2bc <upg_get_image_update_status+0x76>
  a2e284:	460d                	li	a2,3
  a2e286:	006c                	addi	a1,sp,12
  a2e288:	8522                	mv	a0,s0
  a2e28a:	a65fa0ef          	jal	ra,a28cee <memcmp>
  a2e28e:	4781                	li	a5,0
  a2e290:	c515                	beqz	a0,a2e2bc <upg_get_image_update_status+0x76>
  a2e292:	201c                	lbu	a5,0(s0)
  a2e294:	4501                	li	a0,0
  a2e296:	eb81                	bnez	a5,a2e2a6 <upg_get_image_update_status+0x60>
  a2e298:	301c                	lbu	a5,1(s0)
  a2e29a:	4505                	li	a0,1
  a2e29c:	e789                	bnez	a5,a2e2a6 <upg_get_image_update_status+0x60>
  a2e29e:	2028                	lbu	a0,2(s0)
  a2e2a0:	00153513          	seqz	a0,a0
  a2e2a4:	0509                	addi	a0,a0,2
  a2e2a6:	942a                	add	s0,s0,a0
  a2e2a8:	2018                	lbu	a4,0(s0)
  a2e2aa:	4785                	li	a5,1
  a2e2ac:	0f07043b          	beqi	a4,15,a2e2bc <upg_get_image_update_status+0x76>
  a2e2b0:	0ff00693          	li	a3,255
  a2e2b4:	4789                	li	a5,2
  a2e2b6:	00d70363          	beq	a4,a3,a2e2bc <upg_get_image_update_status+0x76>
  a2e2ba:	4791                	li	a5,4
  a2e2bc:	853e                	mv	a0,a5
  a2e2be:	8124                	popret	{ra,s0},32

00a2e2c0 <upg_flash_erase_metadata_pages>:
  a2e2c0:	4501                	li	a0,0
  a2e2c2:	8082                	ret

00a2e2c4 <upg_set_temporary_result>:
  a2e2c4:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e2ca:	b3c8                	sb	a0,5(a5)
  a2e2cc:	8082                	ret

00a2e2ce <upg_set_update_result>:
  a2e2ce:	8118                	push	{ra},-32
  a2e2d0:	c62a                	sw	a0,12(sp)
  a2e2d2:	0028                	addi	a0,sp,8
  a2e2d4:	c402                	sw	zero,8(sp)
  a2e2d6:	a18ff0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2e2da:	e909                	bnez	a0,a2e2ec <upg_set_update_result+0x1e>
  a2e2dc:	4522                	lw	a0,8(sp)
  a2e2de:	4681                	li	a3,0
  a2e2e0:	0070                	addi	a2,sp,12
  a2e2e2:	4591                	li	a1,4
  a2e2e4:	05050513          	addi	a0,a0,80
  a2e2e8:	b58ff0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e2ec:	8114                	popret	{ra},32

00a2e2ee <upg_check_image_update_complete>:
  a2e2ee:	8158                	push	{ra,s0-s3},-48
  a2e2f0:	842a                	mv	s0,a0
  a2e2f2:	89ae                	mv	s3,a1
  a2e2f4:	00011623          	sh	zero,12(sp)
  a2e2f8:	00010723          	sb	zero,14(sp)
  a2e2fc:	01050913          	addi	s2,a0,16
  a2e300:	4481                	li	s1,0
  a2e302:	445c                	lw	a5,12(s0)
  a2e304:	00f4ea63          	bltu	s1,a5,a2e318 <upg_check_image_update_complete+0x2a>
  a2e308:	4505                	li	a0,1
  a2e30a:	01378f63          	beq	a5,s3,a2e328 <upg_check_image_update_complete+0x3a>
  a2e30e:	04c44783          	lbu	a5,76(s0)
  a2e312:	0f07953b          	bnei	a5,15,a2e326 <upg_check_image_update_complete+0x38>
  a2e316:	a809                	j	a2e328 <upg_check_image_update_complete+0x3a>
  a2e318:	854a                	mv	a0,s2
  a2e31a:	460d                	li	a2,3
  a2e31c:	006c                	addi	a1,sp,12
  a2e31e:	9d1fa0ef          	jal	ra,a28cee <memcmp>
  a2e322:	090d                	addi	s2,s2,3
  a2e324:	c119                	beqz	a0,a2e32a <upg_check_image_update_complete+0x3c>
  a2e326:	4501                	li	a0,0
  a2e328:	8154                	popret	{ra,s0-s3},48
  a2e32a:	0485                	addi	s1,s1,1
  a2e32c:	bfd9                	j	a2e302 <upg_check_image_update_complete+0x14>

00a2e32e <upg_set_complete_flag>:
  a2e32e:	8848                	push	{ra,s0-s2},-144
  a2e330:	84aa                	mv	s1,a0
  a2e332:	0068                	addi	a0,sp,12
  a2e334:	842e                	mv	s0,a1
  a2e336:	8932                	mv	s2,a2
  a2e338:	c602                	sw	zero,12(sp)
  a2e33a:	9b4ff0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2e33e:	ed09                	bnez	a0,a2e358 <upg_set_complete_flag+0x2a>
  a2e340:	4532                	lw	a0,12(sp)
  a2e342:	0850                	addi	a2,sp,20
  a2e344:	06c00593          	li	a1,108
  a2e348:	a40ff0ef          	jal	ra,a2d588 <upg_flash_read>
  a2e34c:	c519                	beqz	a0,a2e35a <upg_set_complete_flag+0x2c>
  a2e34e:	00a3 35f0 051f      	l.li	a0,0xa335f0
  a2e354:	e9dfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e358:	8844                	popret	{ra,s0-s2},144
  a2e35a:	00090c63          	beqz	s2,a2e372 <upg_set_complete_flag+0x44>
  a2e35e:	57e6                	lw	a5,120(sp)
  a2e360:	cb89                	beqz	a5,a2e372 <upg_set_complete_flag+0x44>
  a2e362:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e368:	33c8                	lbu	a0,5(a5)
  a2e36a:	f65ff0ef          	jal	ra,a2e2ce <upg_set_update_result>
  a2e36e:	4581                	li	a1,0
  a2e370:	a821                	j	a2e388 <upg_set_complete_flag+0x5a>
  a2e372:	85a6                	mv	a1,s1
  a2e374:	0848                	addi	a0,sp,20
  a2e376:	f79ff0ef          	jal	ra,a2e2ee <upg_check_image_update_complete>
  a2e37a:	e81d                	bnez	s0,a2e3b0 <upg_set_complete_flag+0x82>
  a2e37c:	e91d                	bnez	a0,a2e3b2 <upg_set_complete_flag+0x84>
  a2e37e:	57e6                	lw	a5,120(sp)
  a2e380:	65c1                	lui	a1,0x10
  a2e382:	15fd                	addi	a1,a1,-1 # ffff <ccause+0xf03d>
  a2e384:	04b78d63          	beq	a5,a1,a2e3de <upg_set_complete_flag+0xb0>
  a2e388:	c82e                	sw	a1,16(sp)
  a2e38a:	5a5a 5a5a 079f      	l.li	a5,0x5a5a5a5a
  a2e390:	4432                	lw	s0,12(sp)
  a2e392:	fcf583e3          	beq	a1,a5,a2e358 <upg_set_complete_flag+0x2a>
  a2e396:	00a3 3614 051f      	l.li	a0,0xa33614
  a2e39c:	e55fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e3a0:	4681                	li	a3,0
  a2e3a2:	0810                	addi	a2,sp,16
  a2e3a4:	4591                	li	a1,4
  a2e3a6:	06440513          	addi	a0,s0,100
  a2e3aa:	a96ff0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e3ae:	b76d                	j	a2e358 <upg_set_complete_flag+0x2a>
  a2e3b0:	c911                	beqz	a0,a2e3c4 <upg_set_complete_flag+0x96>
  a2e3b2:	57e6                	lw	a5,120(sp)
  a2e3b4:	cb81                	beqz	a5,a2e3c4 <upg_set_complete_flag+0x96>
  a2e3b6:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e3bc:	f455                	bnez	s0,a2e368 <upg_set_complete_flag+0x3a>
  a2e3be:	000782a3          	sb	zero,5(a5)
  a2e3c2:	b75d                	j	a2e368 <upg_set_complete_flag+0x3a>
  a2e3c4:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e3ca:	33dc                	lbu	a5,5(a5)
  a2e3cc:	5a5a 5a5a 059f      	l.li	a1,0x5a5a5a5a
  a2e3d2:	0de79dbb          	bnei	a5,13,a2e388 <upg_set_complete_flag+0x5a>
  a2e3d6:	57e6                	lw	a5,120(sp)
  a2e3d8:	dbc5                	beqz	a5,a2e388 <upg_set_complete_flag+0x5a>
  a2e3da:	4535                	li	a0,13
  a2e3dc:	b779                	j	a2e36a <upg_set_complete_flag+0x3c>
  a2e3de:	5a5a 5a5a 059f      	l.li	a1,0x5a5a5a5a
  a2e3e4:	b755                	j	a2e388 <upg_set_complete_flag+0x5a>

00a2e3e6 <upg_get_func_list>:
  a2e3e6:	00a0 5ad8 051f      	l.li	a0,0xa05ad8
  a2e3ec:	0521                	addi	a0,a0,8
  a2e3ee:	8082                	ret

00a2e3f0 <upg_is_inited>:
  a2e3f0:	00a0 5ad8 079f      	l.li	a5,0xa05ad8
  a2e3f6:	2388                	lbu	a0,0(a5)
  a2e3f8:	8082                	ret

00a2e3fa <uapi_upg_init>:
  a2e3fa:	8138                	push	{ra,s0-s1},-32
  a2e3fc:	00a06437          	lui	s0,0xa06
  a2e400:	ad844783          	lbu	a5,-1320(s0) # a05ad8 <g_upg_ctx>
  a2e404:	e7c9                	bnez	a5,a2e48e <uapi_upg_init+0x94>
  a2e406:	ad840413          	addi	s0,s0,-1320
  a2e40a:	c519                	beqz	a0,a2e418 <uapi_upg_init+0x1e>
  a2e40c:	411c                	lw	a5,0(a0)
  a2e40e:	c41c                	sw	a5,8(s0)
  a2e410:	415c                	lw	a5,4(a0)
  a2e412:	c45c                	sw	a5,12(s0)
  a2e414:	451c                	lw	a5,8(a0)
  a2e416:	c81c                	sw	a5,16(s0)
  a2e418:	47b9                	li	a5,14
  a2e41a:	b05c                	sb	a5,5(s0)
  a2e41c:	0068                	addi	a0,sp,12
  a2e41e:	4785                	li	a5,1
  a2e420:	00042a23          	sw	zero,20(s0)
  a2e424:	a01c                	sb	a5,0(s0)
  a2e426:	000103a3          	sb	zero,7(sp)
  a2e42a:	c402                	sw	zero,8(sp)
  a2e42c:	c602                	sw	zero,12(sp)
  a2e42e:	a95ff0ef          	jal	ra,a2dec2 <upg_alloc_and_get_upgrade_flag>
  a2e432:	448d                	li	s1,3
  a2e434:	e931                	bnez	a0,a2e488 <uapi_upg_init+0x8e>
  a2e436:	47b2                	lw	a5,12(sp)
  a2e438:	55aa 55aa 071f      	l.li	a4,0x55aa55aa
  a2e43e:	4394                	lw	a3,0(a5)
  a2e440:	04e69063          	bne	a3,a4,a2e480 <uapi_upg_init+0x86>
  a2e444:	57b4                	lw	a3,104(a5)
  a2e446:	aa55 aa55 071f      	l.li	a4,0xaa55aa55
  a2e44c:	02e69a63          	bne	a3,a4,a2e480 <uapi_upg_init+0x86>
  a2e450:	53f8                	lw	a4,100(a5)
  a2e452:	4489                	li	s1,2
  a2e454:	e71d                	bnez	a4,a2e482 <uapi_upg_init+0x88>
  a2e456:	04f7c703          	lbu	a4,79(a5)
  a2e45a:	c31d                	beqz	a4,a2e480 <uapi_upg_init+0x86>
  a2e45c:	0028                	addi	a0,sp,8
  a2e45e:	4ba4                	lw	s1,80(a5)
  a2e460:	88eff0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2e464:	ed11                	bnez	a0,a2e480 <uapi_upg_init+0x86>
  a2e466:	4522                	lw	a0,8(sp)
  a2e468:	4681                	li	a3,0
  a2e46a:	00710613          	addi	a2,sp,7
  a2e46e:	04f50513          	addi	a0,a0,79
  a2e472:	4585                	li	a1,1
  a2e474:	c42a                	sw	a0,8(sp)
  a2e476:	9caff0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e47a:	009034b3          	snez	s1,s1
  a2e47e:	c111                	beqz	a0,a2e482 <uapi_upg_init+0x88>
  a2e480:	448d                	li	s1,3
  a2e482:	4532                	lw	a0,12(sp)
  a2e484:	a07ff0ef          	jal	ra,a2de8a <upg_free>
  a2e488:	a044                	sb	s1,4(s0)
  a2e48a:	4501                	li	a0,0
  a2e48c:	8134                	popret	{ra,s0-s1},32
  a2e48e:	8000 3041 051f      	l.li	a0,0x80003041
  a2e494:	bfe5                	j	a2e48c <uapi_upg_init+0x92>

00a2e496 <hash_operation.isra.1.constprop.8>:
  a2e496:	8028                	push	{ra,s0},-16
  a2e498:	4108                	lw	a0,0(a0)
  a2e49a:	02000693          	li	a3,32
  a2e49e:	dcdfb0ef          	jal	ra,a2a26a <drv_rom_cipher_sha256>
  a2e4a2:	842a                	mv	s0,a0
  a2e4a4:	c519                	beqz	a0,a2e4b2 <hash_operation.isra.1.constprop.8+0x1c>
  a2e4a6:	85aa                	mv	a1,a0
  a2e4a8:	00a3 368c 051f      	l.li	a0,0xa3368c
  a2e4ae:	d43fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e4b2:	8522                	mv	a0,s0
  a2e4b4:	8024                	popret	{ra,s0},16

00a2e4b6 <verify_hash_cmp>:
  a2e4b6:	8018                	push	{ra},-16
  a2e4b8:	837fa0ef          	jal	ra,a28cee <memcmp>
  a2e4bc:	c901                	beqz	a0,a2e4cc <verify_hash_cmp+0x16>
  a2e4be:	00a3 39e0 051f      	l.li	a0,0xa339e0
  a2e4c4:	d2dfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e4c8:	557d                	li	a0,-1
  a2e4ca:	8014                	popret	{ra},16
  a2e4cc:	4501                	li	a0,0
  a2e4ce:	bff5                	j	a2e4ca <verify_hash_cmp+0x14>

00a2e4d0 <upg_verify_hash>:
  a2e4d0:	8548                	push	{ra,s0-s2},-96
  a2e4d2:	892a                	mv	s2,a0
  a2e4d4:	84ae                	mv	s1,a1
  a2e4d6:	8432                	mv	s0,a2
  a2e4d8:	4581                	li	a1,0
  a2e4da:	02000613          	li	a2,32
  a2e4de:	1808                	addi	a0,sp,48
  a2e4e0:	c636                	sw	a3,12(sp)
  a2e4e2:	cc2fa0ef          	jal	ra,a289a4 <memset>
  a2e4e6:	4785                	li	a5,1
  a2e4e8:	1810                	addi	a2,sp,48
  a2e4ea:	85a6                	mv	a1,s1
  a2e4ec:	1028                	addi	a0,sp,40
  a2e4ee:	d44a                	sw	s2,40(sp)
  a2e4f0:	02f10623          	sb	a5,44(sp)
  a2e4f4:	fa3ff0ef          	jal	ra,a2e496 <hash_operation.isra.1.constprop.8>
  a2e4f8:	46b2                	lw	a3,12(sp)
  a2e4fa:	c909                	beqz	a0,a2e50c <upg_verify_hash+0x3c>
  a2e4fc:	85aa                	mv	a1,a0
  a2e4fe:	00a3 394c 051f      	l.li	a0,0xa3394c
  a2e504:	cedfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e508:	557d                	li	a0,-1
  a2e50a:	8544                	popret	{ra,s0-s2},96
  a2e50c:	8636                	mv	a2,a3
  a2e50e:	180c                	addi	a1,sp,48
  a2e510:	8522                	mv	a0,s0
  a2e512:	fa5ff0ef          	jal	ra,a2e4b6 <verify_hash_cmp>
  a2e516:	d975                	beqz	a0,a2e50a <upg_verify_hash+0x3a>
  a2e518:	00a3 39e0 051f      	l.li	a0,0xa339e0
  a2e51e:	cd3fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e522:	b7dd                	j	a2e508 <upg_verify_hash+0x38>

00a2e524 <calc_hash>:
  a2e524:	2006823b          	beqi	a3,32,a2e52c <calc_hash+0x8>
  a2e528:	557d                	li	a0,-1
  a2e52a:	8082                	ret
  a2e52c:	8218                	push	{ra},-48
  a2e52e:	cc2a                	sw	a0,24(sp)
  a2e530:	4785                	li	a5,1
  a2e532:	0828                	addi	a0,sp,24
  a2e534:	00f10e23          	sb	a5,28(sp)
  a2e538:	f5fff0ef          	jal	ra,a2e496 <hash_operation.isra.1.constprop.8>
  a2e53c:	8214                	popret	{ra},48

00a2e53e <secure_authenticate>:
  a2e53e:	8748                	push	{ra,s0-s2},-128
  a2e540:	57fd                	li	a5,-1
  a2e542:	c63e                	sw	a5,12(sp)
  a2e544:	c149                	beqz	a0,a2e5c6 <secure_authenticate+0x88>
  a2e546:	c5bd                	beqz	a1,a2e5b4 <secure_authenticate+0x76>
  a2e548:	c635                	beqz	a2,a2e5b4 <secure_authenticate+0x76>
  a2e54a:	0884                	addi	s1,sp,80
  a2e54c:	cc2a                	sw	a0,24(sp)
  a2e54e:	d232                	sw	a2,36(sp)
  a2e550:	02050513          	addi	a0,a0,32
  a2e554:	02060613          	addi	a2,a2,32
  a2e558:	842e                	mv	s0,a1
  a2e55a:	02000913          	li	s2,32
  a2e55e:	ce2a                	sw	a0,28(sp)
  a2e560:	d432                	sw	a2,40(sp)
  a2e562:	02000693          	li	a3,32
  a2e566:	05a00613          	li	a2,90
  a2e56a:	02000593          	li	a1,32
  a2e56e:	8526                	mv	a0,s1
  a2e570:	d04a                	sw	s2,32(sp)
  a2e572:	d64a                	sw	s2,44(sp)
  a2e574:	750020ef          	jal	ra,a30cc4 <memset_s>
  a2e578:	405c                	lw	a5,4(s0)
  a2e57a:	400c                	lw	a1,0(s0)
  a2e57c:	8626                	mv	a2,s1
  a2e57e:	c4be                	sw	a5,72(sp)
  a2e580:	00a8                	addi	a0,sp,72
  a2e582:	4785                	li	a5,1
  a2e584:	ca26                	sw	s1,20(sp)
  a2e586:	c84a                	sw	s2,16(sp)
  a2e588:	04f10623          	sb	a5,76(sp)
  a2e58c:	f0bff0ef          	jal	ra,a2e496 <hash_operation.isra.1.constprop.8>
  a2e590:	842a                	mv	s0,a0
  a2e592:	c11d                	beqz	a0,a2e5b8 <secure_authenticate+0x7a>
  a2e594:	85aa                	mv	a1,a0
  a2e596:	00a3 36cc 051f      	l.li	a0,0xa336cc
  a2e59c:	c55fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e5a0:	c622                	sw	s0,12(sp)
  a2e5a2:	47b2                	lw	a5,12(sp)
  a2e5a4:	c799                	beqz	a5,a2e5b2 <secure_authenticate+0x74>
  a2e5a6:	45b2                	lw	a1,12(sp)
  a2e5a8:	00a3 36f0 051f      	l.li	a0,0xa336f0
  a2e5ae:	c43fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e5b2:	47b2                	lw	a5,12(sp)
  a2e5b4:	853e                	mv	a0,a5
  a2e5b6:	8744                	popret	{ra,s0-s2},128
  a2e5b8:	1050                	addi	a2,sp,36
  a2e5ba:	080c                	addi	a1,sp,16
  a2e5bc:	0828                	addi	a0,sp,24
  a2e5be:	ca5fb0ef          	jal	ra,a2a262 <drv_rom_cipher_pke_bp256r_verify>
  a2e5c2:	842a                	mv	s0,a0
  a2e5c4:	bff1                	j	a2e5a0 <secure_authenticate+0x62>
  a2e5c6:	57fd                	li	a5,-1
  a2e5c8:	b7f5                	j	a2e5b4 <secure_authenticate+0x76>

00a2e5ca <verify_fota_info>:
  a2e5ca:	8248                	push	{ra,s0-s2},-48
  a2e5cc:	84aa                	mv	s1,a0
  a2e5ce:	842e                	mv	s0,a1
  a2e5d0:	8932                	mv	s2,a2
  a2e5d2:	9b4ff0ef          	jal	ra,a2d786 <upg_get_specific_verify_key_alg>
  a2e5d6:	ff0501bb          	beqi	a0,-1,a2e5dc <verify_fota_info+0x12>
  a2e5da:	84aa                	mv	s1,a0
  a2e5dc:	2a13d7b7          	lui	a5,0x2a13d
  a2e5e0:	85678713          	addi	a4,a5,-1962 # 2a13c856 <_gp_+0x29707d8e>
  a2e5e4:	0c040613          	addi	a2,s0,192
  a2e5e8:	00e48a63          	beq	s1,a4,a2e5fc <verify_fota_info+0x32>
  a2e5ec:	86778713          	addi	a4,a5,-1945
  a2e5f0:	00e48663          	beq	s1,a4,a2e5fc <verify_fota_info+0x32>
  a2e5f4:	87878793          	addi	a5,a5,-1928
  a2e5f8:	02f49463          	bne	s1,a5,a2e620 <verify_fota_info+0x56>
  a2e5fc:	445c                	lw	a5,12(s0)
  a2e5fe:	200798bb          	bnei	a5,32,a2e620 <verify_fota_info+0x56>
  a2e602:	00a3 3988 051f      	l.li	a0,0xa33988
  a2e608:	c632                	sw	a2,12(sp)
  a2e60a:	be7fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e60e:	4632                	lw	a2,12(sp)
  a2e610:	02000693          	li	a3,32
  a2e614:	0c000593          	li	a1,192
  a2e618:	8522                	mv	a0,s0
  a2e61a:	eb7ff0ef          	jal	ra,a2e4d0 <upg_verify_hash>
  a2e61e:	8244                	popret	{ra,s0-s2},48
  a2e620:	00a3 39b4 051f      	l.li	a0,0xa339b4
  a2e626:	c632                	sw	a2,12(sp)
  a2e628:	bc9fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e62c:	4632                	lw	a2,12(sp)
  a2e62e:	0c000793          	li	a5,192
  a2e632:	082c                	addi	a1,sp,24
  a2e634:	854a                	mv	a0,s2
  a2e636:	ce22                	sw	s0,28(sp)
  a2e638:	cc3e                	sw	a5,24(sp)
  a2e63a:	f05ff0ef          	jal	ra,a2e53e <secure_authenticate>
  a2e63e:	b7c5                	j	a2e61e <verify_fota_info+0x54>

00a2e640 <uapi_upg_verify_file_head>:
  a2e640:	8248                	push	{ra,s0-s2},-48
  a2e642:	84aa                	mv	s1,a0
  a2e644:	dadff0ef          	jal	ra,a2e3f0 <upg_is_inited>
  a2e648:	10050163          	beqz	a0,a2e74a <uapi_upg_verify_file_head+0x10a>
  a2e64c:	812ff0ef          	jal	ra,a2d65e <upg_get_root_public_key>
  a2e650:	892a                	mv	s2,a0
  a2e652:	10050063          	beqz	a0,a2e752 <uapi_upg_verify_file_head+0x112>
  a2e656:	409c                	lw	a5,0(s1)
  a2e658:	cb8d 154e 071f      	l.li	a4,0xcb8d154e
  a2e65e:	06e79663          	bne	a5,a4,a2e6ca <uapi_upg_verify_file_head+0x8a>
  a2e662:	1004a703          	lw	a4,256(s1)
  a2e666:	06f71263          	bne	a4,a5,a2e6ca <uapi_upg_verify_file_head+0x8a>
  a2e66a:	4c80                	lw	s0,24(s1)
  a2e66c:	91aff0ef          	jal	ra,a2d786 <upg_get_specific_verify_key_alg>
  a2e670:	ff0501bb          	beqi	a0,-1,a2e676 <uapi_upg_verify_file_head+0x36>
  a2e674:	842a                	mv	s0,a0
  a2e676:	2a13d7b7          	lui	a5,0x2a13d
  a2e67a:	85678713          	addi	a4,a5,-1962 # 2a13c856 <_gp_+0x29707d8e>
  a2e67e:	0c048613          	addi	a2,s1,192
  a2e682:	00e40a63          	beq	s0,a4,a2e696 <uapi_upg_verify_file_head+0x56>
  a2e686:	86778713          	addi	a4,a5,-1945
  a2e68a:	00e40663          	beq	s0,a4,a2e696 <uapi_upg_verify_file_head+0x56>
  a2e68e:	87878793          	addi	a5,a5,-1928
  a2e692:	04f41463          	bne	s0,a5,a2e6da <uapi_upg_verify_file_head+0x9a>
  a2e696:	44dc                	lw	a5,12(s1)
  a2e698:	201790bb          	bnei	a5,32,a2e6da <uapi_upg_verify_file_head+0x9a>
  a2e69c:	00a3 37dc 051f      	l.li	a0,0xa337dc
  a2e6a2:	c632                	sw	a2,12(sp)
  a2e6a4:	b4dfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e6a8:	4632                	lw	a2,12(sp)
  a2e6aa:	02000693          	li	a3,32
  a2e6ae:	0c000593          	li	a1,192
  a2e6b2:	8526                	mv	a0,s1
  a2e6b4:	e1dff0ef          	jal	ra,a2e4d0 <upg_verify_hash>
  a2e6b8:	842a                	mv	s0,a0
  a2e6ba:	c121                	beqz	a0,a2e6fa <uapi_upg_verify_file_head+0xba>
  a2e6bc:	85aa                	mv	a1,a0
  a2e6be:	00a3 383c 051f      	l.li	a0,0xa3383c
  a2e6c4:	b2dfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e6c8:	a039                	j	a2e6d6 <uapi_upg_verify_file_head+0x96>
  a2e6ca:	00a3 37b8 051f      	l.li	a0,0xa337b8
  a2e6d0:	b21fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e6d4:	547d                	li	s0,-1
  a2e6d6:	8522                	mv	a0,s0
  a2e6d8:	8244                	popret	{ra,s0-s2},48
  a2e6da:	00a3 380c 051f      	l.li	a0,0xa3380c
  a2e6e0:	c632                	sw	a2,12(sp)
  a2e6e2:	b0ffd0ef          	jal	ra,a2c1f0 <print_str>
  a2e6e6:	4632                	lw	a2,12(sp)
  a2e6e8:	0c000793          	li	a5,192
  a2e6ec:	082c                	addi	a1,sp,24
  a2e6ee:	854a                	mv	a0,s2
  a2e6f0:	ce26                	sw	s1,28(sp)
  a2e6f2:	cc3e                	sw	a5,24(sp)
  a2e6f4:	e4bff0ef          	jal	ra,a2e53e <secure_authenticate>
  a2e6f8:	b7c1                	j	a2e6b8 <uapi_upg_verify_file_head+0x78>
  a2e6fa:	4c88                	lw	a0,24(s1)
  a2e6fc:	08048613          	addi	a2,s1,128
  a2e700:	10048593          	addi	a1,s1,256
  a2e704:	ec7ff0ef          	jal	ra,a2e5ca <verify_fota_info>
  a2e708:	842a                	mv	s0,a0
  a2e70a:	c511                	beqz	a0,a2e716 <uapi_upg_verify_file_head+0xd6>
  a2e70c:	85aa                	mv	a1,a0
  a2e70e:	00a3 386c 051f      	l.li	a0,0xa3386c
  a2e714:	bf45                	j	a2e6c4 <uapi_upg_verify_file_head+0x84>
  a2e716:	8526                	mv	a0,s1
  a2e718:	ff9fe0ef          	jal	ra,a2d710 <upg_check_fota_information>
  a2e71c:	842a                	mv	s0,a0
  a2e71e:	c511                	beqz	a0,a2e72a <uapi_upg_verify_file_head+0xea>
  a2e720:	85aa                	mv	a1,a0
  a2e722:	00a3 389c 051f      	l.li	a0,0xa3389c
  a2e728:	bf71                	j	a2e6c4 <uapi_upg_verify_file_head+0x84>
  a2e72a:	00a0 5afc 079f      	l.li	a5,0xa05afc
  a2e730:	439c                	lw	a5,0(a5)
  a2e732:	d3d5                	beqz	a5,a2e6d6 <uapi_upg_verify_file_head+0x96>
  a2e734:	00a0 5b00 071f      	l.li	a4,0xa05b00
  a2e73a:	4310                	lw	a2,0(a4)
  a2e73c:	07000593          	li	a1,112
  a2e740:	15048513          	addi	a0,s1,336
  a2e744:	9782                	jalr	a5
  a2e746:	842a                	mv	s0,a0
  a2e748:	b779                	j	a2e6d6 <uapi_upg_verify_file_head+0x96>
  a2e74a:	8000 3040 041f      	l.li	s0,0x80003040
  a2e750:	b759                	j	a2e6d6 <uapi_upg_verify_file_head+0x96>
  a2e752:	8000 3063 041f      	l.li	s0,0x80003063
  a2e758:	bfbd                	j	a2e6d6 <uapi_upg_verify_file_head+0x96>

00a2e75a <uapi_upg_verify_file_image>:
  a2e75a:	8148                	push	{ra,s0-s2},-32
  a2e75c:	411c                	lw	a5,0(a0)
  a2e75e:	464f 5451 071f      	l.li	a4,0x464f5451
  a2e764:	00e78e63          	beq	a5,a4,a2e780 <uapi_upg_verify_file_image+0x26>
  a2e768:	85be                	mv	a1,a5
  a2e76a:	00a3 38d8 051f      	l.li	a0,0xa338d8
  a2e770:	a81fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e774:	450d                	li	a0,3
  a2e776:	b4fff0ef          	jal	ra,a2e2c4 <upg_set_temporary_result>
  a2e77a:	547d                	li	s0,-1
  a2e77c:	8522                	mv	a0,s0
  a2e77e:	8144                	popret	{ra,s0-s2},32
  a2e780:	86b2                	mv	a3,a2
  a2e782:	862e                	mv	a2,a1
  a2e784:	0a000593          	li	a1,160
  a2e788:	84aa                	mv	s1,a0
  a2e78a:	d47ff0ef          	jal	ra,a2e4d0 <upg_verify_hash>
  a2e78e:	842a                	mv	s0,a0
  a2e790:	c509                	beqz	a0,a2e79a <uapi_upg_verify_file_image+0x40>
  a2e792:	450d                	li	a0,3
  a2e794:	b31ff0ef          	jal	ra,a2e2c4 <upg_set_temporary_result>
  a2e798:	b7d5                	j	a2e77c <uapi_upg_verify_file_image+0x22>
  a2e79a:	44dc                	lw	a5,12(s1)
  a2e79c:	0034                	addi	a3,sp,8
  a2e79e:	0070                	addi	a2,sp,12
  a2e7a0:	07bd                	addi	a5,a5,15
  a2e7a2:	9bc1                	andi	a5,a5,-16
  a2e7a4:	4581                	li	a1,0
  a2e7a6:	8526                	mv	a0,s1
  a2e7a8:	c402                	sw	zero,8(sp)
  a2e7aa:	c63e                	sw	a5,12(sp)
  a2e7ac:	8ffff0ef          	jal	ra,a2e0aa <upg_get_pkg_image_data>
  a2e7b0:	842a                	mv	s0,a0
  a2e7b2:	e905                	bnez	a0,a2e7e2 <uapi_upg_verify_file_image+0x88>
  a2e7b4:	4522                	lw	a0,8(sp)
  a2e7b6:	e901                	bnez	a0,a2e7c6 <uapi_upg_verify_file_image+0x6c>
  a2e7b8:	40cc                	lw	a1,4(s1)
  a2e7ba:	00a3 3918 051f      	l.li	a0,0xa33918
  a2e7c0:	a31fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e7c4:	bf65                	j	a2e77c <uapi_upg_verify_file_image+0x22>
  a2e7c6:	45b2                	lw	a1,12(sp)
  a2e7c8:	02000693          	li	a3,32
  a2e7cc:	01048613          	addi	a2,s1,16
  a2e7d0:	d01ff0ef          	jal	ra,a2e4d0 <upg_verify_hash>
  a2e7d4:	892a                	mv	s2,a0
  a2e7d6:	d16d                	beqz	a0,a2e7b8 <uapi_upg_verify_file_image+0x5e>
  a2e7d8:	450d                	li	a0,3
  a2e7da:	aebff0ef          	jal	ra,a2e2c4 <upg_set_temporary_result>
  a2e7de:	844a                	mv	s0,s2
  a2e7e0:	bf71                	j	a2e77c <uapi_upg_verify_file_image+0x22>
  a2e7e2:	892a                	mv	s2,a0
  a2e7e4:	bfd5                	j	a2e7d8 <uapi_upg_verify_file_image+0x7e>

00a2e7e6 <uapi_upg_verify_file>:
  a2e7e6:	8158                	push	{ra,s0-s3},-48
  a2e7e8:	892a                	mv	s2,a0
  a2e7ea:	c402                	sw	zero,8(sp)
  a2e7ec:	c05ff0ef          	jal	ra,a2e3f0 <upg_is_inited>
  a2e7f0:	c161                	beqz	a0,a2e8b0 <uapi_upg_verify_file+0xca>
  a2e7f2:	854a                	mv	a0,s2
  a2e7f4:	e4dff0ef          	jal	ra,a2e640 <uapi_upg_verify_file_head>
  a2e7f8:	842a                	mv	s0,a0
  a2e7fa:	c511                	beqz	a0,a2e806 <uapi_upg_verify_file+0x20>
  a2e7fc:	4505                	li	a0,1
  a2e7fe:	ac7ff0ef          	jal	ra,a2e2c4 <upg_set_temporary_result>
  a2e802:	8522                	mv	a0,s0
  a2e804:	8154                	popret	{ra,s0-s3},48
  a2e806:	00a3 3720 051f      	l.li	a0,0xa33720
  a2e80c:	9e5fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e810:	002c                	addi	a1,sp,8
  a2e812:	854a                	mv	a0,s2
  a2e814:	835ff0ef          	jal	ra,a2e048 <upg_get_pkg_image_hash_table>
  a2e818:	842a                	mv	s0,a0
  a2e81a:	e119                	bnez	a0,a2e820 <uapi_upg_verify_file+0x3a>
  a2e81c:	4522                	lw	a0,8(sp)
  a2e81e:	e519                	bnez	a0,a2e82c <uapi_upg_verify_file+0x46>
  a2e820:	00a3 373c 051f      	l.li	a0,0xa3373c
  a2e826:	9cbfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e82a:	bfe1                	j	a2e802 <uapi_upg_verify_file+0x1c>
  a2e82c:	12492583          	lw	a1,292(s2)
  a2e830:	02000693          	li	a3,32
  a2e834:	12890613          	addi	a2,s2,296
  a2e838:	c99ff0ef          	jal	ra,a2e4d0 <upg_verify_hash>
  a2e83c:	842a                	mv	s0,a0
  a2e83e:	c901                	beqz	a0,a2e84e <uapi_upg_verify_file+0x68>
  a2e840:	4509                	li	a0,2
  a2e842:	a83ff0ef          	jal	ra,a2e2c4 <upg_set_temporary_result>
  a2e846:	4522                	lw	a0,8(sp)
  a2e848:	e42ff0ef          	jal	ra,a2de8a <upg_free>
  a2e84c:	bf5d                	j	a2e802 <uapi_upg_verify_file+0x1c>
  a2e84e:	00a3 3768 051f      	l.li	a0,0xa33768
  a2e854:	99dfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e858:	44a2                	lw	s1,8(sp)
  a2e85a:	c602                	sw	zero,12(sp)
  a2e85c:	4981                	li	s3,0
  a2e85e:	04b1                	addi	s1,s1,12
  a2e860:	14892783          	lw	a5,328(s2)
  a2e864:	00f9e463          	bltu	s3,a5,a2e86c <uapi_upg_verify_file+0x86>
  a2e868:	4401                	li	s0,0
  a2e86a:	a839                	j	a2e888 <uapi_upg_verify_file+0xa2>
  a2e86c:	006c                	addi	a1,sp,12
  a2e86e:	ff448513          	addi	a0,s1,-12
  a2e872:	80bff0ef          	jal	ra,a2e07c <upg_get_pkg_image_header>
  a2e876:	842a                	mv	s0,a0
  a2e878:	e119                	bnez	a0,a2e87e <uapi_upg_verify_file+0x98>
  a2e87a:	4532                	lw	a0,12(sp)
  a2e87c:	e911                	bnez	a0,a2e890 <uapi_upg_verify_file+0xaa>
  a2e87e:	00a3 3790 051f      	l.li	a0,0xa33790
  a2e884:	96dfd0ef          	jal	ra,a2c1f0 <print_str>
  a2e888:	4532                	lw	a0,12(sp)
  a2e88a:	e00ff0ef          	jal	ra,a2de8a <upg_free>
  a2e88e:	bf65                	j	a2e846 <uapi_upg_verify_file+0x60>
  a2e890:	85a6                	mv	a1,s1
  a2e892:	4685                	li	a3,1
  a2e894:	02000613          	li	a2,32
  a2e898:	ec3ff0ef          	jal	ra,a2e75a <uapi_upg_verify_file_image>
  a2e89c:	842a                	mv	s0,a0
  a2e89e:	02c48493          	addi	s1,s1,44
  a2e8a2:	f17d                	bnez	a0,a2e888 <uapi_upg_verify_file+0xa2>
  a2e8a4:	4532                	lw	a0,12(sp)
  a2e8a6:	0985                	addi	s3,s3,1
  a2e8a8:	de2ff0ef          	jal	ra,a2de8a <upg_free>
  a2e8ac:	c602                	sw	zero,12(sp)
  a2e8ae:	bf4d                	j	a2e860 <uapi_upg_verify_file+0x7a>
  a2e8b0:	8000 3040 041f      	l.li	s0,0x80003040
  a2e8b6:	b7b1                	j	a2e802 <uapi_upg_verify_file+0x1c>

00a2e8b8 <uapi_upg_reset_upgrade_flag>:
  a2e8b8:	8218                	push	{ra},-48
  a2e8ba:	c602                	sw	zero,12(sp)
  a2e8bc:	b35ff0ef          	jal	ra,a2e3f0 <upg_is_inited>
  a2e8c0:	c13d                	beqz	a0,a2e926 <uapi_upg_reset_upgrade_flag+0x6e>
  a2e8c2:	080c                	addi	a1,sp,16
  a2e8c4:	0068                	addi	a0,sp,12
  a2e8c6:	c47fe0ef          	jal	ra,a2d50c <upg_get_progress_status_start_addr>
  a2e8ca:	ed29                	bnez	a0,a2e924 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e8cc:	0028                	addi	a0,sp,8
  a2e8ce:	c21fe0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2e8d2:	e929                	bnez	a0,a2e924 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e8d4:	4522                	lw	a0,8(sp)
  a2e8d6:	0850                	addi	a2,sp,20
  a2e8d8:	4591                	li	a1,4
  a2e8da:	0521                	addi	a0,a0,8
  a2e8dc:	ca02                	sw	zero,20(sp)
  a2e8de:	cabfe0ef          	jal	ra,a2d588 <upg_flash_read>
  a2e8e2:	e129                	bnez	a0,a2e924 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e8e4:	45c2                	lw	a1,16(sp)
  a2e8e6:	4532                	lw	a0,12(sp)
  a2e8e8:	cabfe0ef          	jal	ra,a2d592 <upg_flash_erase>
  a2e8ec:	ed05                	bnez	a0,a2e924 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e8ee:	4522                	lw	a0,8(sp)
  a2e8f0:	4681                	li	a3,0
  a2e8f2:	0830                	addi	a2,sp,24
  a2e8f4:	4591                	li	a1,4
  a2e8f6:	0511                	addi	a0,a0,4
  a2e8f8:	cc02                	sw	zero,24(sp)
  a2e8fa:	d47fe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e8fe:	e11d                	bnez	a0,a2e924 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e900:	4522                	lw	a0,8(sp)
  a2e902:	55aa 55aa 079f      	l.li	a5,0x55aa55aa
  a2e908:	4681                	li	a3,0
  a2e90a:	0870                	addi	a2,sp,28
  a2e90c:	4591                	li	a1,4
  a2e90e:	ce3e                	sw	a5,28(sp)
  a2e910:	d31fe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e914:	e901                	bnez	a0,a2e924 <uapi_upg_reset_upgrade_flag+0x6c>
  a2e916:	4522                	lw	a0,8(sp)
  a2e918:	4681                	li	a3,0
  a2e91a:	0850                	addi	a2,sp,20
  a2e91c:	4591                	li	a1,4
  a2e91e:	0521                	addi	a0,a0,8
  a2e920:	d21fe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e924:	8214                	popret	{ra},48
  a2e926:	8000 3040 051f      	l.li	a0,0x80003040
  a2e92c:	bfe5                	j	a2e924 <uapi_upg_reset_upgrade_flag+0x6c>

00a2e92e <uapi_upg_request_upgrade>:
  a2e92e:	8148                	push	{ra,s0-s2},-32
  a2e930:	892a                	mv	s2,a0
  a2e932:	c002                	sw	zero,0(sp)
  a2e934:	abdff0ef          	jal	ra,a2e3f0 <upg_is_inited>
  a2e938:	0e050363          	beqz	a0,a2ea1e <uapi_upg_request_upgrade+0xf0>
  a2e93c:	850a                	mv	a0,sp
  a2e93e:	ee8ff0ef          	jal	ra,a2e026 <upg_get_package_header>
  a2e942:	842a                	mv	s0,a0
  a2e944:	e119                	bnez	a0,a2e94a <uapi_upg_request_upgrade+0x1c>
  a2e946:	4502                	lw	a0,0(sp)
  a2e948:	e901                	bnez	a0,a2e958 <uapi_upg_request_upgrade+0x2a>
  a2e94a:	00a3 3a0c 051f      	l.li	a0,0xa33a0c
  a2e950:	8a1fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e954:	8522                	mv	a0,s0
  a2e956:	8144                	popret	{ra,s0-s2},32
  a2e958:	e8fff0ef          	jal	ra,a2e7e6 <uapi_upg_verify_file>
  a2e95c:	842a                	mv	s0,a0
  a2e95e:	4502                	lw	a0,0(sp)
  a2e960:	c811                	beqz	s0,a2e974 <uapi_upg_request_upgrade+0x46>
  a2e962:	d28ff0ef          	jal	ra,a2de8a <upg_free>
  a2e966:	85a2                	mv	a1,s0
  a2e968:	00a3 3a30 051f      	l.li	a0,0xa33a30
  a2e96e:	883fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e972:	b7cd                	j	a2e954 <uapi_upg_request_upgrade+0x26>
  a2e974:	c602                	sw	zero,12(sp)
  a2e976:	14852483          	lw	s1,328(a0)
  a2e97a:	1504e6bb          	bltui	s1,21,a2e994 <uapi_upg_request_upgrade+0x66>
  a2e97e:	8000 3043 041f      	l.li	s0,0x80003043
  a2e984:	4502                	lw	a0,0(sp)
  a2e986:	d04ff0ef          	jal	ra,a2de8a <upg_free>
  a2e98a:	85a2                	mv	a1,s0
  a2e98c:	00a3 3a60 051f      	l.li	a0,0xa33a60
  a2e992:	bff1                	j	a2e96e <uapi_upg_request_upgrade+0x40>
  a2e994:	006c                	addi	a1,sp,12
  a2e996:	eb2ff0ef          	jal	ra,a2e048 <upg_get_pkg_image_hash_table>
  a2e99a:	842a                	mv	s0,a0
  a2e99c:	ed11                	bnez	a0,a2e9b8 <uapi_upg_request_upgrade+0x8a>
  a2e99e:	4532                	lw	a0,12(sp)
  a2e9a0:	cd01                	beqz	a0,a2e9b8 <uapi_upg_request_upgrade+0x8a>
  a2e9a2:	87aa                	mv	a5,a0
  a2e9a4:	2c9514db          	muliadd	s1,a0,s1,44
  a2e9a8:	cb9e 063c 071f      	l.li	a4,0xcb9e063c
  a2e9ae:	06979163          	bne	a5,s1,a2ea10 <uapi_upg_request_upgrade+0xe2>
  a2e9b2:	cd8ff0ef          	jal	ra,a2de8a <upg_free>
  a2e9b6:	a039                	j	a2e9c4 <uapi_upg_request_upgrade+0x96>
  a2e9b8:	00a3 373c 051f      	l.li	a0,0xa3373c
  a2e9be:	833fd0ef          	jal	ra,a2c1f0 <print_str>
  a2e9c2:	f069                	bnez	s0,a2e984 <uapi_upg_request_upgrade+0x56>
  a2e9c4:	4502                	lw	a0,0(sp)
  a2e9c6:	cc4ff0ef          	jal	ra,a2de8a <upg_free>
  a2e9ca:	0028                	addi	a0,sp,8
  a2e9cc:	c222                	sw	s0,4(sp)
  a2e9ce:	c402                	sw	zero,8(sp)
  a2e9d0:	b1ffe0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2e9d4:	842a                	mv	s0,a0
  a2e9d6:	e921                	bnez	a0,a2ea26 <uapi_upg_request_upgrade+0xf8>
  a2e9d8:	4522                	lw	a0,8(sp)
  a2e9da:	4681                	li	a3,0
  a2e9dc:	0050                	addi	a2,sp,4
  a2e9de:	4591                	li	a1,4
  a2e9e0:	0531                	addi	a0,a0,12
  a2e9e2:	c5ffe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2e9e6:	842a                	mv	s0,a0
  a2e9e8:	ed1d                	bnez	a0,a2ea26 <uapi_upg_request_upgrade+0xf8>
  a2e9ea:	4522                	lw	a0,8(sp)
  a2e9ec:	aa55 aa55 079f      	l.li	a5,0xaa55aa55
  a2e9f2:	4681                	li	a3,0
  a2e9f4:	0070                	addi	a2,sp,12
  a2e9f6:	4591                	li	a1,4
  a2e9f8:	06850513          	addi	a0,a0,104
  a2e9fc:	c63e                	sw	a5,12(sp)
  a2e9fe:	c43fe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2ea02:	842a                	mv	s0,a0
  a2ea04:	e10d                	bnez	a0,a2ea26 <uapi_upg_request_upgrade+0xf8>
  a2ea06:	f40907e3          	beqz	s2,a2e954 <uapi_upg_request_upgrade+0x26>
  a2ea0a:	b43fe0ef          	jal	ra,a2d54c <upg_reboot>
  a2ea0e:	b799                	j	a2e954 <uapi_upg_request_upgrade+0x26>
  a2ea10:	4394                	lw	a3,0(a5)
  a2ea12:	00e68363          	beq	a3,a4,a2ea18 <uapi_upg_request_upgrade+0xea>
  a2ea16:	0405                	addi	s0,s0,1
  a2ea18:	02c78793          	addi	a5,a5,44
  a2ea1c:	bf49                	j	a2e9ae <uapi_upg_request_upgrade+0x80>
  a2ea1e:	8000 3040 041f      	l.li	s0,0x80003040
  a2ea24:	bf05                	j	a2e954 <uapi_upg_request_upgrade+0x26>
  a2ea26:	85a2                	mv	a1,s0
  a2ea28:	00a3 3a9c 051f      	l.li	a0,0xa33a9c
  a2ea2e:	b781                	j	a2e96e <uapi_upg_request_upgrade+0x40>

00a2ea30 <upg_encry_and_write_pkt>:
  a2ea30:	8158                	push	{ra,s0-s3},-48
  a2ea32:	51f4                	lw	a3,100(a1)
  a2ea34:	c402                	sw	zero,8(sp)
  a2ea36:	c602                	sw	zero,12(sp)
  a2ea38:	3c78 96e1 071f      	l.li	a4,0x3c7896e1
  a2ea3e:	08e69563          	bne	a3,a4,a2eac8 <upg_encry_and_write_pkt+0x98>
  a2ea42:	892e                	mv	s2,a1
  a2ea44:	842a                	mv	s0,a0
  a2ea46:	85b2                	mv	a1,a2
  a2ea48:	0028                	addi	a0,sp,8
  a2ea4a:	e8ffe0ef          	jal	ra,a2d8d8 <upg_process_cryto_info>
  a2ea4e:	84aa                	mv	s1,a0
  a2ea50:	e905                	bnez	a0,a2ea80 <upg_encry_and_write_pkt+0x50>
  a2ea52:	4c5c                	lw	a5,28(s0)
  a2ea54:	00f7f993          	andi	s3,a5,15
  a2ea58:	9bc1                	andi	a5,a5,-16
  a2ea5a:	c63e                	sw	a5,12(sp)
  a2ea5c:	c3a1                	beqz	a5,a2ea9c <upg_encry_and_write_pkt+0x6c>
  a2ea5e:	4722                	lw	a4,8(sp)
  a2ea60:	4c08                	lw	a0,24(s0)
  a2ea62:	864a                	mv	a2,s2
  a2ea64:	40e785b3          	sub	a1,a5,a4
  a2ea68:	953a                	add	a0,a0,a4
  a2ea6a:	ec7fe0ef          	jal	ra,a2d930 <upg_encry_fota_pkt>
  a2ea6e:	892a                	mv	s2,a0
  a2ea70:	c911                	beqz	a0,a2ea84 <upg_encry_and_write_pkt+0x54>
  a2ea72:	85aa                	mv	a1,a0
  a2ea74:	00a3 34d8 051f      	l.li	a0,0xa334d8
  a2ea7a:	f76fd0ef          	jal	ra,a2c1f0 <print_str>
  a2ea7e:	84ca                	mv	s1,s2
  a2ea80:	8526                	mv	a0,s1
  a2ea82:	8154                	popret	{ra,s0-s3},48
  a2ea84:	4014                	lw	a3,0(s0)
  a2ea86:	4c0c                	lw	a1,24(s0)
  a2ea88:	4408                	lw	a0,8(s0)
  a2ea8a:	4701                	li	a4,0
  a2ea8c:	0070                	addi	a2,sp,12
  a2ea8e:	7aa000ef          	jal	ra,a2f238 <upg_write_new_image_data>
  a2ea92:	ed0d                	bnez	a0,a2eacc <upg_encry_and_write_pkt+0x9c>
  a2ea94:	441c                	lw	a5,8(s0)
  a2ea96:	4732                	lw	a4,12(sp)
  a2ea98:	97ba                	add	a5,a5,a4
  a2ea9a:	c41c                	sw	a5,8(s0)
  a2ea9c:	02098463          	beqz	s3,a2eac4 <upg_encry_and_write_pkt+0x94>
  a2eaa0:	4c08                	lw	a0,24(s0)
  a2eaa2:	4632                	lw	a2,12(sp)
  a2eaa4:	86ce                	mv	a3,s3
  a2eaa6:	6591                	lui	a1,0x4
  a2eaa8:	962a                	add	a2,a2,a0
  a2eaaa:	1d6020ef          	jal	ra,a30c80 <memmove_s>
  a2eaae:	c901                	beqz	a0,a2eabe <upg_encry_and_write_pkt+0x8e>
  a2eab0:	00a3 3acc 051f      	l.li	a0,0xa33acc
  a2eab6:	f3afd0ef          	jal	ra,a2c1f0 <print_str>
  a2eaba:	54fd                	li	s1,-1
  a2eabc:	b7d1                	j	a2ea80 <upg_encry_and_write_pkt+0x50>
  a2eabe:	01342e23          	sw	s3,28(s0)
  a2eac2:	bf7d                	j	a2ea80 <upg_encry_and_write_pkt+0x50>
  a2eac4:	00042e23          	sw	zero,28(s0)
  a2eac8:	4481                	li	s1,0
  a2eaca:	bf5d                	j	a2ea80 <upg_encry_and_write_pkt+0x50>
  a2eacc:	4485                	li	s1,1
  a2eace:	bf4d                	j	a2ea80 <upg_encry_and_write_pkt+0x50>

00a2ead0 <upg_lzma_alloc>:
  a2ead0:	8128                	push	{ra,s0},-32
  a2ead2:	852e                	mv	a0,a1
  a2ead4:	c62e                	sw	a1,12(sp)
  a2ead6:	b9aff0ef          	jal	ra,a2de70 <upg_malloc>
  a2eada:	842a                	mv	s0,a0
  a2eadc:	45b2                	lw	a1,12(sp)
  a2eade:	e511                	bnez	a0,a2eaea <upg_lzma_alloc+0x1a>
  a2eae0:	00a3 3afc 051f      	l.li	a0,0xa33afc
  a2eae6:	f0afd0ef          	jal	ra,a2c1f0 <print_str>
  a2eaea:	8522                	mv	a0,s0
  a2eaec:	8124                	popret	{ra,s0},32

00a2eaee <upg_lzma_free>:
  a2eaee:	c581                	beqz	a1,a2eaf6 <upg_lzma_free+0x8>
  a2eaf0:	852e                	mv	a0,a1
  a2eaf2:	b98ff06f          	j	a2de8a <upg_free>
  a2eaf6:	8082                	ret

00a2eaf8 <upg_lzma_init_buf>:
  a2eaf8:	8128                	push	{ra,s0},-32
  a2eafa:	842a                	mv	s0,a0
  a2eafc:	02052023          	sw	zero,32(a0)
  a2eb00:	00052e23          	sw	zero,28(a0)
  a2eb04:	6585                	lui	a1,0x1
  a2eb06:	0028                	addi	a0,sp,8
  a2eb08:	fc9ff0ef          	jal	ra,a2ead0 <upg_lzma_alloc>
  a2eb0c:	c848                	sw	a0,20(s0)
  a2eb0e:	cd11                	beqz	a0,a2eb2a <upg_lzma_init_buf+0x32>
  a2eb10:	6591                	lui	a1,0x4
  a2eb12:	0028                	addi	a0,sp,8
  a2eb14:	fbdff0ef          	jal	ra,a2ead0 <upg_lzma_alloc>
  a2eb18:	cc08                	sw	a0,24(s0)
  a2eb1a:	4781                	li	a5,0
  a2eb1c:	e911                	bnez	a0,a2eb30 <upg_lzma_init_buf+0x38>
  a2eb1e:	484c                	lw	a1,20(s0)
  a2eb20:	0028                	addi	a0,sp,8
  a2eb22:	fcdff0ef          	jal	ra,a2eaee <upg_lzma_free>
  a2eb26:	00042a23          	sw	zero,20(s0)
  a2eb2a:	800007b7          	lui	a5,0x80000
  a2eb2e:	0795                	addi	a5,a5,5 # 80000005 <_gp_+0x7f5cb53d>
  a2eb30:	853e                	mv	a0,a5
  a2eb32:	8124                	popret	{ra,s0},32

00a2eb34 <upg_lzma_init>:
  a2eb34:	8168                	push	{ra,s0-s4},-48
  a2eb36:	00a2 ead0 079f      	l.li	a5,0xa2ead0
  a2eb3c:	c43e                	sw	a5,8(sp)
  a2eb3e:	00a2 eaee 079f      	l.li	a5,0xa2eaee
  a2eb44:	00052823          	sw	zero,16(a0)
  a2eb48:	00052423          	sw	zero,8(a0)
  a2eb4c:	c63e                	sw	a5,12(sp)
  a2eb4e:	0506f3bb          	bgeui	a3,5,a2eb5c <upg_lzma_init+0x28>
  a2eb52:	8000 3042 041f      	l.li	s0,0x80003042
  a2eb58:	8522                	mv	a0,s0
  a2eb5a:	8164                	popret	{ra,s0-s4},48
  a2eb5c:	89b2                	mv	s3,a2
  a2eb5e:	8436                	mv	s0,a3
  a2eb60:	8a2e                	mv	s4,a1
  a2eb62:	0034                	addi	a3,sp,8
  a2eb64:	4615                	li	a2,5
  a2eb66:	85ce                	mv	a1,s3
  a2eb68:	84aa                	mv	s1,a0
  a2eb6a:	056020ef          	jal	ra,a30bc0 <LzmaDec_AllocateProbs>
  a2eb6e:	c939                	beqz	a0,a2ebc4 <upg_lzma_init+0x90>
  a2eb70:	842a                	mv	s0,a0
  a2eb72:	b7dd                	j	a2eb58 <upg_lzma_init+0x24>
  a2eb74:	00f98733          	add	a4,s3,a5
  a2eb78:	3358                	lbu	a4,5(a4)
  a2eb7a:	00379613          	slli	a2,a5,0x3
  a2eb7e:	0785                	addi	a5,a5,1
  a2eb80:	00c71733          	sll	a4,a4,a2
  a2eb84:	993a                	add	s2,s2,a4
  a2eb86:	fed7e7e3          	bltu	a5,a3,a2eb74 <upg_lzma_init+0x40>
  a2eb8a:	40c0                	lw	s0,4(s1)
  a2eb8c:	00897363          	bgeu	s2,s0,a2eb92 <upg_lzma_init+0x5e>
  a2eb90:	844a                	mv	s0,s2
  a2eb92:	d061                	beqz	s0,a2eb52 <upg_lzma_init+0x1e>
  a2eb94:	85a2                	mv	a1,s0
  a2eb96:	0028                	addi	a0,sp,8
  a2eb98:	f39ff0ef          	jal	ra,a2ead0 <upg_lzma_alloc>
  a2eb9c:	c888                	sw	a0,16(s1)
  a2eb9e:	cd19                	beqz	a0,a2ebbc <upg_lzma_init+0x88>
  a2eba0:	c8c0                	sw	s0,20(s1)
  a2eba2:	012a2823          	sw	s2,16(s4)
  a2eba6:	8552                	mv	a0,s4
  a2eba8:	f51ff0ef          	jal	ra,a2eaf8 <upg_lzma_init_buf>
  a2ebac:	842a                	mv	s0,a0
  a2ebae:	c105                	beqz	a0,a2ebce <upg_lzma_init+0x9a>
  a2ebb0:	488c                	lw	a1,16(s1)
  a2ebb2:	0028                	addi	a0,sp,8
  a2ebb4:	f3bff0ef          	jal	ra,a2eaee <upg_lzma_free>
  a2ebb8:	0004a823          	sw	zero,16(s1)
  a2ebbc:	80000437          	lui	s0,0x80000
  a2ebc0:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb53d>
  a2ebc2:	bf59                	j	a2eb58 <upg_lzma_init+0x24>
  a2ebc4:	4781                	li	a5,0
  a2ebc6:	4901                	li	s2,0
  a2ebc8:	ffb40693          	addi	a3,s0,-5
  a2ebcc:	bf6d                	j	a2eb86 <upg_lzma_init+0x52>
  a2ebce:	8526                	mv	a0,s1
  a2ebd0:	36b010ef          	jal	ra,a3073a <LzmaDec_Init>
  a2ebd4:	b751                	j	a2eb58 <upg_lzma_init+0x24>

00a2ebd6 <upg_lzma_deinit>:
  a2ebd6:	8138                	push	{ra,s0-s1},-32
  a2ebd8:	842e                	mv	s0,a1
  a2ebda:	490c                	lw	a1,16(a0)
  a2ebdc:	00a2 ead0 079f      	l.li	a5,0xa2ead0
  a2ebe2:	84aa                	mv	s1,a0
  a2ebe4:	c43e                	sw	a5,8(sp)
  a2ebe6:	0028                	addi	a0,sp,8
  a2ebe8:	00a2 eaee 079f      	l.li	a5,0xa2eaee
  a2ebee:	c63e                	sw	a5,12(sp)
  a2ebf0:	effff0ef          	jal	ra,a2eaee <upg_lzma_free>
  a2ebf4:	002c                	addi	a1,sp,8
  a2ebf6:	8526                	mv	a0,s1
  a2ebf8:	0004a823          	sw	zero,16(s1)
  a2ebfc:	719010ef          	jal	ra,a30b14 <LzmaDec_FreeProbs>
  a2ec00:	484c                	lw	a1,20(s0)
  a2ec02:	0028                	addi	a0,sp,8
  a2ec04:	eebff0ef          	jal	ra,a2eaee <upg_lzma_free>
  a2ec08:	4c0c                	lw	a1,24(s0)
  a2ec0a:	00042a23          	sw	zero,20(s0)
  a2ec0e:	0028                	addi	a0,sp,8
  a2ec10:	edfff0ef          	jal	ra,a2eaee <upg_lzma_free>
  a2ec14:	00042c23          	sw	zero,24(s0)
  a2ec18:	8134                	popret	{ra,s0-s1},32

00a2ec1a <upg_lzma_write_image>:
  a2ec1a:	8028                	push	{ra,s0},-16
  a2ec1c:	51f8                	lw	a4,100(a1)
  a2ec1e:	3c78 96e1 079f      	l.li	a5,0x3c7896e1
  a2ec24:	02f70863          	beq	a4,a5,a2ec54 <upg_lzma_write_image+0x3a>
  a2ec28:	4d5c                	lw	a5,28(a0)
  a2ec2a:	842a                	mv	s0,a0
  a2ec2c:	eb91                	bnez	a5,a2ec40 <upg_lzma_write_image+0x26>
  a2ec2e:	441c                	lw	a5,8(s0)
  a2ec30:	4c58                	lw	a4,28(s0)
  a2ec32:	4581                	li	a1,0
  a2ec34:	00042e23          	sw	zero,28(s0)
  a2ec38:	97ba                	add	a5,a5,a4
  a2ec3a:	c41c                	sw	a5,8(s0)
  a2ec3c:	852e                	mv	a0,a1
  a2ec3e:	8024                	popret	{ra,s0},16
  a2ec40:	4d0c                	lw	a1,24(a0)
  a2ec42:	4114                	lw	a3,0(a0)
  a2ec44:	01c50613          	addi	a2,a0,28
  a2ec48:	4508                	lw	a0,8(a0)
  a2ec4a:	4701                	li	a4,0
  a2ec4c:	23f5                	jal	ra,a2f238 <upg_write_new_image_data>
  a2ec4e:	4585                	li	a1,1
  a2ec50:	f575                	bnez	a0,a2ec3c <upg_lzma_write_image+0x22>
  a2ec52:	bff1                	j	a2ec2e <upg_lzma_write_image+0x14>
  a2ec54:	dddff0ef          	jal	ra,a2ea30 <upg_encry_and_write_pkt>
  a2ec58:	85aa                	mv	a1,a0
  a2ec5a:	d16d                	beqz	a0,a2ec3c <upg_lzma_write_image+0x22>
  a2ec5c:	00a3 3be4 051f      	l.li	a0,0xa33be4
  a2ec62:	d8efd0ef          	jal	ra,a2c1f0 <print_str>
  a2ec66:	55fd                	li	a1,-1
  a2ec68:	bfd1                	j	a2ec3c <upg_lzma_write_image+0x22>

00a2ec6a <upg_lzma_decode_to_midbuf>:
  a2ec6a:	81b8                	push	{ra,s0-s9},-64
  a2ec6c:	0205a983          	lw	s3,32(a1) # 4020 <ccause+0x305e>
  a2ec70:	8aaa                	mv	s5,a0
  a2ec72:	84ae                	mv	s1,a1
  a2ec74:	8b32                	mv	s6,a2
  a2ec76:	8bb6                	mv	s7,a3
  a2ec78:	000103a3          	sb	zero,7(sp)
  a2ec7c:	4901                	li	s2,0
  a2ec7e:	6a11                	lui	s4,0x4
  a2ec80:	4c0d                	li	s8,3
  a2ec82:	6c85                	lui	s9,0x1
  a2ec84:	01396463          	bltu	s2,s3,a2ec8c <upg_lzma_decode_to_midbuf+0x22>
  a2ec88:	4501                	li	a0,0
  a2ec8a:	a841                	j	a2ed1a <upg_lzma_decode_to_midbuf+0xb0>
  a2ec8c:	4ccc                	lw	a1,28(s1)
  a2ec8e:	412987b3          	sub	a5,s3,s2
  a2ec92:	4898                	lw	a4,16(s1)
  a2ec94:	c43e                	sw	a5,8(sp)
  a2ec96:	40ba07b3          	sub	a5,s4,a1
  a2ec9a:	c63e                	sw	a5,12(sp)
  a2ec9c:	4781                	li	a5,0
  a2ec9e:	01477463          	bgeu	a4,s4,a2eca6 <upg_lzma_decode_to_midbuf+0x3c>
  a2eca2:	c63a                	sw	a4,12(sp)
  a2eca4:	4785                	li	a5,1
  a2eca6:	4c88                	lw	a0,24(s1)
  a2eca8:	48d4                	lw	a3,20(s1)
  a2ecaa:	00710813          	addi	a6,sp,7
  a2ecae:	95aa                	add	a1,a1,a0
  a2ecb0:	0038                	addi	a4,sp,8
  a2ecb2:	96ca                	add	a3,a3,s2
  a2ecb4:	0070                	addi	a2,sp,12
  a2ecb6:	8556                	mv	a0,s5
  a2ecb8:	5c9010ef          	jal	ra,a30a80 <LzmaDec_DecodeToBuf>
  a2ecbc:	842a                	mv	s0,a0
  a2ecbe:	4532                	lw	a0,12(sp)
  a2ecc0:	e509                	bnez	a0,a2ecca <upg_lzma_decode_to_midbuf+0x60>
  a2ecc2:	00714783          	lbu	a5,7(sp)
  a2ecc6:	fd8781e3          	beq	a5,s8,a2ec88 <upg_lzma_decode_to_midbuf+0x1e>
  a2ecca:	e019                	bnez	s0,a2ecd0 <upg_lzma_decode_to_midbuf+0x66>
  a2eccc:	47a2                	lw	a5,8(sp)
  a2ecce:	eb89                	bnez	a5,a2ece0 <upg_lzma_decode_to_midbuf+0x76>
  a2ecd0:	85a2                	mv	a1,s0
  a2ecd2:	00a3 3b90 051f      	l.li	a0,0xa33b90
  a2ecd8:	d18fd0ef          	jal	ra,a2c1f0 <print_str>
  a2ecdc:	8522                	mv	a0,s0
  a2ecde:	a835                	j	a2ed1a <upg_lzma_decode_to_midbuf+0xb0>
  a2ece0:	993e                	add	s2,s2,a5
  a2ece2:	489c                	lw	a5,16(s1)
  a2ece4:	8f89                	sub	a5,a5,a0
  a2ece6:	c89c                	sw	a5,16(s1)
  a2ece8:	4cdc                	lw	a5,28(s1)
  a2ecea:	97aa                	add	a5,a5,a0
  a2ecec:	ccdc                	sw	a5,28(s1)
  a2ecee:	2321                	jal	ra,a2f1f6 <upg_calculate_and_notify_process>
  a2ecf0:	4cdc                	lw	a5,28(s1)
  a2ecf2:	40fa07b3          	sub	a5,s4,a5
  a2ecf6:	0197e663          	bltu	a5,s9,a2ed02 <upg_lzma_decode_to_midbuf+0x98>
  a2ecfa:	489c                	lw	a5,16(s1)
  a2ecfc:	c399                	beqz	a5,a2ed02 <upg_lzma_decode_to_midbuf+0x98>
  a2ecfe:	01299f63          	bne	s3,s2,a2ed1c <upg_lzma_decode_to_midbuf+0xb2>
  a2ed02:	865e                	mv	a2,s7
  a2ed04:	85da                	mv	a1,s6
  a2ed06:	8526                	mv	a0,s1
  a2ed08:	f13ff0ef          	jal	ra,a2ec1a <upg_lzma_write_image>
  a2ed0c:	c901                	beqz	a0,a2ed1c <upg_lzma_decode_to_midbuf+0xb2>
  a2ed0e:	00a3 3bc0 051f      	l.li	a0,0xa33bc0
  a2ed14:	cdcfd0ef          	jal	ra,a2c1f0 <print_str>
  a2ed18:	557d                	li	a0,-1
  a2ed1a:	81b4                	popret	{ra,s0-s9},64
  a2ed1c:	4722                	lw	a4,8(sp)
  a2ed1e:	489c                	lw	a5,16(s1)
  a2ed20:	e319                	bnez	a4,a2ed26 <upg_lzma_decode_to_midbuf+0xbc>
  a2ed22:	4732                	lw	a4,12(sp)
  a2ed24:	c319                	beqz	a4,a2ed2a <upg_lzma_decode_to_midbuf+0xc0>
  a2ed26:	dbdd                	beqz	a5,a2ecdc <upg_lzma_decode_to_midbuf+0x72>
  a2ed28:	bfb1                	j	a2ec84 <upg_lzma_decode_to_midbuf+0x1a>
  a2ed2a:	dbcd                	beqz	a5,a2ecdc <upg_lzma_decode_to_midbuf+0x72>
  a2ed2c:	00714403          	lbu	s0,7(sp)
  a2ed30:	147d                	addi	s0,s0,-1
  a2ed32:	00803433          	snez	s0,s0
  a2ed36:	b75d                	j	a2ecdc <upg_lzma_decode_to_midbuf+0x72>

00a2ed38 <upg_lzma_decode>:
  a2ed38:	8168                	push	{ra,s0-s4},-48
  a2ed3a:	4785                	li	a5,1
  a2ed3c:	89aa                	mv	s3,a0
  a2ed3e:	84ae                	mv	s1,a1
  a2ed40:	8932                	mv	s2,a2
  a2ed42:	00f105a3          	sb	a5,11(sp)
  a2ed46:	6a05                	lui	s4,0x1
  a2ed48:	44c0                	lw	s0,12(s1)
  a2ed4a:	c015                	beqz	s0,a2ed6e <upg_lzma_decode+0x36>
  a2ed4c:	008a7363          	bgeu	s4,s0,a2ed52 <upg_lzma_decode+0x1a>
  a2ed50:	6405                	lui	s0,0x1
  a2ed52:	48cc                	lw	a1,20(s1)
  a2ed54:	40c8                	lw	a0,4(s1)
  a2ed56:	0070                	addi	a2,sp,12
  a2ed58:	c622                	sw	s0,12(sp)
  a2ed5a:	a10ff0ef          	jal	ra,a2df6a <upg_read_fota_pkg_data>
  a2ed5e:	c911                	beqz	a0,a2ed72 <upg_lzma_decode+0x3a>
  a2ed60:	4405                	li	s0,1
  a2ed62:	85a2                	mv	a1,s0
  a2ed64:	00a3 3b2c 051f      	l.li	a0,0xa33b2c
  a2ed6a:	c86fd0ef          	jal	ra,a2c1f0 <print_str>
  a2ed6e:	8522                	mv	a0,s0
  a2ed70:	8164                	popret	{ra,s0-s4},48
  a2ed72:	45b2                	lw	a1,12(sp)
  a2ed74:	48c8                	lw	a0,20(s1)
  a2ed76:	864a                	mv	a2,s2
  a2ed78:	b79fe0ef          	jal	ra,a2d8f0 <upg_decry_fota_pkt>
  a2ed7c:	e51d                	bnez	a0,a2edaa <upg_lzma_decode+0x72>
  a2ed7e:	4732                	lw	a4,12(sp)
  a2ed80:	40dc                	lw	a5,4(s1)
  a2ed82:	00b10693          	addi	a3,sp,11
  a2ed86:	d098                	sw	a4,32(s1)
  a2ed88:	97ba                	add	a5,a5,a4
  a2ed8a:	c0dc                	sw	a5,4(s1)
  a2ed8c:	44dc                	lw	a5,12(s1)
  a2ed8e:	864a                	mv	a2,s2
  a2ed90:	85a6                	mv	a1,s1
  a2ed92:	8f99                	sub	a5,a5,a4
  a2ed94:	c4dc                	sw	a5,12(s1)
  a2ed96:	854e                	mv	a0,s3
  a2ed98:	ed3ff0ef          	jal	ra,a2ec6a <upg_lzma_decode_to_midbuf>
  a2ed9c:	842a                	mv	s0,a0
  a2ed9e:	c901                	beqz	a0,a2edae <upg_lzma_decode+0x76>
  a2eda0:	85aa                	mv	a1,a0
  a2eda2:	00a3 3b60 051f      	l.li	a0,0xa33b60
  a2eda8:	b7c9                	j	a2ed6a <upg_lzma_decode+0x32>
  a2edaa:	547d                	li	s0,-1
  a2edac:	bf5d                	j	a2ed62 <upg_lzma_decode+0x2a>
  a2edae:	fcafe0ef          	jal	ra,a2d578 <upg_watchdog_kick>
  a2edb2:	bf59                	j	a2ed48 <upg_lzma_decode+0x10>

00a2edb4 <upg_check_first_entry>:
  a2edb4:	8148                	push	{ra,s0-s2},-32
  a2edb6:	00a3 1efc 079f      	l.li	a5,0xa31efc
  a2edbc:	239a                	lhu	a4,0(a5)
  a2edbe:	23bc                	lbu	a5,2(a5)
  a2edc0:	892a                	mv	s2,a0
  a2edc2:	00e11623          	sh	a4,12(sp)
  a2edc6:	00f10723          	sb	a5,14(sp)
  a2edca:	01050493          	addi	s1,a0,16
  a2edce:	4401                	li	s0,0
  a2edd0:	00c92783          	lw	a5,12(s2)
  a2edd4:	00f46463          	bltu	s0,a5,a2eddc <upg_check_first_entry+0x28>
  a2edd8:	4505                	li	a0,1
  a2edda:	8144                	popret	{ra,s0-s2},32
  a2eddc:	8526                	mv	a0,s1
  a2edde:	460d                	li	a2,3
  a2ede0:	006c                	addi	a1,sp,12
  a2ede2:	f0df90ef          	jal	ra,a28cee <memcmp>
  a2ede6:	048d                	addi	s1,s1,3
  a2ede8:	e119                	bnez	a0,a2edee <upg_check_first_entry+0x3a>
  a2edea:	0405                	addi	s0,s0,1 # 1001 <ccause+0x3f>
  a2edec:	b7d5                	j	a2edd0 <upg_check_first_entry+0x1c>
  a2edee:	4501                	li	a0,0
  a2edf0:	b7ed                	j	a2edda <upg_check_first_entry+0x26>

00a2edf2 <uapi_upg_start>:
  a2edf2:	82d8                	push	{ra,s0-s11},-96
  a2edf4:	c602                	sw	zero,12(sp)
  a2edf6:	c802                	sw	zero,16(sp)
  a2edf8:	df8ff0ef          	jal	ra,a2e3f0 <upg_is_inited>
  a2edfc:	3e050063          	beqz	a0,a2f1dc <uapi_upg_start+0x3ea>
  a2ee00:	84aa                	mv	s1,a0
  a2ee02:	0068                	addi	a0,sp,12
  a2ee04:	8beff0ef          	jal	ra,a2dec2 <upg_alloc_and_get_upgrade_flag>
  a2ee08:	892a                	mv	s2,a0
  a2ee0a:	4501                	li	a0,0
  a2ee0c:	02091b63          	bnez	s2,a2ee42 <uapi_upg_start+0x50>
  a2ee10:	47b2                	lw	a5,12(sp)
  a2ee12:	cb85                	beqz	a5,a2ee42 <uapi_upg_start+0x50>
  a2ee14:	4394                	lw	a3,0(a5)
  a2ee16:	55aa 55aa 071f      	l.li	a4,0x55aa55aa
  a2ee1c:	00e69a63          	bne	a3,a4,a2ee30 <uapi_upg_start+0x3e>
  a2ee20:	57b4                	lw	a3,104(a5)
  a2ee22:	aa55 aa55 071f      	l.li	a4,0xaa55aa55
  a2ee28:	00e69463          	bne	a3,a4,a2ee30 <uapi_upg_start+0x3e>
  a2ee2c:	53fc                	lw	a5,100(a5)
  a2ee2e:	e795                	bnez	a5,a2ee5a <uapi_upg_start+0x68>
  a2ee30:	00a3 3c14 051f      	l.li	a0,0xa33c14
  a2ee36:	bbafd0ef          	jal	ra,a2c1f0 <print_str>
  a2ee3a:	4501                	li	a0,0
  a2ee3c:	8000 3047 091f      	l.li	s2,0x80003047
  a2ee42:	8626                	mv	a2,s1
  a2ee44:	85ca                	mv	a1,s2
  a2ee46:	ce8ff0ef          	jal	ra,a2e32e <upg_set_complete_flag>
  a2ee4a:	4532                	lw	a0,12(sp)
  a2ee4c:	83eff0ef          	jal	ra,a2de8a <upg_free>
  a2ee50:	4542                	lw	a0,16(sp)
  a2ee52:	838ff0ef          	jal	ra,a2de8a <upg_free>
  a2ee56:	854a                	mv	a0,s2
  a2ee58:	82d4                	popret	{ra,s0-s11},96
  a2ee5a:	0808                	addi	a0,sp,16
  a2ee5c:	9caff0ef          	jal	ra,a2e026 <upg_get_package_header>
  a2ee60:	892a                	mv	s2,a0
  a2ee62:	e119                	bnez	a0,a2ee68 <uapi_upg_start+0x76>
  a2ee64:	47c2                	lw	a5,16(sp)
  a2ee66:	eb81                	bnez	a5,a2ee76 <uapi_upg_start+0x84>
  a2ee68:	00a3 3a0c 051f      	l.li	a0,0xa33a0c
  a2ee6e:	b82fd0ef          	jal	ra,a2c1f0 <print_str>
  a2ee72:	4501                	li	a0,0
  a2ee74:	b7f9                	j	a2ee42 <uapi_upg_start+0x50>
  a2ee76:	4532                	lw	a0,12(sp)
  a2ee78:	f3dff0ef          	jal	ra,a2edb4 <upg_check_first_entry>
  a2ee7c:	842a                	mv	s0,a0
  a2ee7e:	ed05                	bnez	a0,a2eeb6 <uapi_upg_start+0xc4>
  a2ee80:	83aff0ef          	jal	ra,a2deba <upg_get_ctx>
  a2ee84:	49c2                	lw	s3,16(sp)
  a2ee86:	cc02                	sw	zero,24(sp)
  a2ee88:	00052e23          	sw	zero,28(a0)
  a2ee8c:	02052023          	sw	zero,32(a0)
  a2ee90:	842a                	mv	s0,a0
  a2ee92:	082c                	addi	a1,sp,24
  a2ee94:	854e                	mv	a0,s3
  a2ee96:	4b32                	lw	s6,12(sp)
  a2ee98:	9b0ff0ef          	jal	ra,a2e048 <upg_get_pkg_image_hash_table>
  a2ee9c:	892a                	mv	s2,a0
  a2ee9e:	c11d                	beqz	a0,a2eec4 <uapi_upg_start+0xd2>
  a2eea0:	00a3 373c 051f      	l.li	a0,0xa3373c
  a2eea6:	b4afd0ef          	jal	ra,a2c1f0 <print_str>
  a2eeaa:	04090563          	beqz	s2,a2eef4 <uapi_upg_start+0x102>
  a2eeae:	4505                	li	a0,1
  a2eeb0:	c14ff0ef          	jal	ra,a2e2c4 <upg_set_temporary_result>
  a2eeb4:	bf7d                	j	a2ee72 <uapi_upg_start+0x80>
  a2eeb6:	4542                	lw	a0,16(sp)
  a2eeb8:	92fff0ef          	jal	ra,a2e7e6 <uapi_upg_verify_file>
  a2eebc:	892a                	mv	s2,a0
  a2eebe:	d169                	beqz	a0,a2ee80 <uapi_upg_start+0x8e>
  a2eec0:	84a2                	mv	s1,s0
  a2eec2:	bf45                	j	a2ee72 <uapi_upg_start+0x80>
  a2eec4:	47e2                	lw	a5,24(sp)
  a2eec6:	dfe9                	beqz	a5,a2eea0 <uapi_upg_start+0xae>
  a2eec8:	1489aa83          	lw	s5,328(s3)
  a2eecc:	4a01                	li	s4,0
  a2eece:	4981                	li	s3,0
  a2eed0:	02c00b93          	li	s7,44
  a2eed4:	cb9e 063c 0c1f      	l.li	s8,0xcb9e063c
  a2eeda:	4c8d                	li	s9,3
  a2eedc:	4562                	lw	a0,24(sp)
  a2eede:	075a4863          	blt	s4,s5,a2ef4e <uapi_upg_start+0x15c>
  a2eee2:	fa9fe0ef          	jal	ra,a2de8a <upg_free>
  a2eee6:	5010                	lw	a2,32(s0)
  a2eee8:	4c4c                	lw	a1,28(s0)
  a2eeea:	00a3 3c34 051f      	l.li	a0,0xa33c34
  a2eef0:	b00fd0ef          	jal	ra,a2c1f0 <print_str>
  a2eef4:	44c2                	lw	s1,16(sp)
  a2eef6:	4432                	lw	s0,12(sp)
  a2eef8:	00a3 3c68 051f      	l.li	a0,0xa33c68
  a2eefe:	1484aa83          	lw	s5,328(s1)
  a2ef02:	ca02                	sw	zero,20(sp)
  a2ef04:	85d6                	mv	a1,s5
  a2ef06:	aeafd0ef          	jal	ra,a2c1f0 <print_str>
  a2ef0a:	444c                	lw	a1,12(s0)
  a2ef0c:	00a3 3c8c 051f      	l.li	a0,0xa33c8c
  a2ef12:	adefd0ef          	jal	ra,a2c1f0 <print_str>
  a2ef16:	445c                	lw	a5,12(s0)
  a2ef18:	00fa8663          	beq	s5,a5,a2ef24 <uapi_upg_start+0x132>
  a2ef1c:	fffa8713          	addi	a4,s5,-1
  a2ef20:	2ae79a63          	bne	a5,a4,a2f1d4 <uapi_upg_start+0x3e2>
  a2ef24:	4755                	li	a4,21
  a2ef26:	2ae7f763          	bgeu	a5,a4,a2f1d4 <uapi_upg_start+0x3e2>
  a2ef2a:	084c                	addi	a1,sp,20
  a2ef2c:	8526                	mv	a0,s1
  a2ef2e:	91aff0ef          	jal	ra,a2e048 <upg_get_pkg_image_hash_table>
  a2ef32:	892a                	mv	s2,a0
  a2ef34:	e119                	bnez	a0,a2ef3a <uapi_upg_start+0x148>
  a2ef36:	44d2                	lw	s1,20(sp)
  a2ef38:	eca5                	bnez	s1,a2efb0 <uapi_upg_start+0x1be>
  a2ef3a:	00a3 373c 051f      	l.li	a0,0xa3373c
  a2ef40:	ab0fd0ef          	jal	ra,a2c1f0 <print_str>
  a2ef44:	47c2                	lw	a5,16(sp)
  a2ef46:	4481                	li	s1,0
  a2ef48:	1487a503          	lw	a0,328(a5)
  a2ef4c:	bddd                	j	a2ee42 <uapi_upg_start+0x50>
  a2ef4e:	037a0d33          	mul	s10,s4,s7
  a2ef52:	956a                	add	a0,a0,s10
  a2ef54:	411c                	lw	a5,0(a0)
  a2ef56:	01879663          	bne	a5,s8,a2ef62 <uapi_upg_start+0x170>
  a2ef5a:	19fd                	addi	s3,s3,-1
  a2ef5c:	0a05                	addi	s4,s4,1 # 1001 <ccause+0x3f>
  a2ef5e:	0985                	addi	s3,s3,1
  a2ef60:	bfb5                	j	a2eedc <uapi_upg_start+0xea>
  a2ef62:	086c                	addi	a1,sp,28
  a2ef64:	ce02                	sw	zero,28(sp)
  a2ef66:	916ff0ef          	jal	ra,a2e07c <upg_get_pkg_image_header>
  a2ef6a:	892a                	mv	s2,a0
  a2ef6c:	e119                	bnez	a0,a2ef72 <uapi_upg_start+0x180>
  a2ef6e:	47f2                	lw	a5,28(sp)
  a2ef70:	eb91                	bnez	a5,a2ef84 <uapi_upg_start+0x192>
  a2ef72:	00a3 3790 051f      	l.li	a0,0xa33790
  a2ef78:	a78fd0ef          	jal	ra,a2c1f0 <print_str>
  a2ef7c:	4562                	lw	a0,24(sp)
  a2ef7e:	f0dfe0ef          	jal	ra,a2de8a <upg_free>
  a2ef82:	b725                	j	a2eeaa <uapi_upg_start+0xb8>
  a2ef84:	4bfc                	lw	a5,84(a5)
  a2ef86:	4c58                	lw	a4,28(s0)
  a2ef88:	85ce                	mv	a1,s3
  a2ef8a:	855a                	mv	a0,s6
  a2ef8c:	973e                	add	a4,a4,a5
  a2ef8e:	cc58                	sw	a4,28(s0)
  a2ef90:	47e2                	lw	a5,24(sp)
  a2ef92:	97ea                	add	a5,a5,s10
  a2ef94:	4390                	lw	a2,0(a5)
  a2ef96:	ab0ff0ef          	jal	ra,a2e246 <upg_get_image_update_status>
  a2ef9a:	01951763          	bne	a0,s9,a2efa8 <uapi_upg_start+0x1b6>
  a2ef9e:	4772                	lw	a4,28(sp)
  a2efa0:	501c                	lw	a5,32(s0)
  a2efa2:	4b78                	lw	a4,84(a4)
  a2efa4:	97ba                	add	a5,a5,a4
  a2efa6:	d01c                	sw	a5,32(s0)
  a2efa8:	4572                	lw	a0,28(sp)
  a2efaa:	ee1fe0ef          	jal	ra,a2de8a <upg_free>
  a2efae:	b77d                	j	a2ef5c <uapi_upg_start+0x16a>
  a2efb0:	cc02                	sw	zero,24(sp)
  a2efb2:	4981                	li	s3,0
  a2efb4:	4b01                	li	s6,0
  a2efb6:	cb9e 063c 0a1f      	l.li	s4,0xcb9e063c
  a2efbc:	80003bb7          	lui	s7,0x80003
  a2efc0:	00a34d37          	lui	s10,0xa34
  a2efc4:	00a34db7          	lui	s11,0xa34
  a2efc8:	055b5963          	bge	s6,s5,a2f01a <uapi_upg_start+0x228>
  a2efcc:	4088                	lw	a0,0(s1)
  a2efce:	01451363          	bne	a0,s4,a2efd4 <uapi_upg_start+0x1e2>
  a2efd2:	19fd                	addi	s3,s3,-1
  a2efd4:	cf4fe0ef          	jal	ra,a2d4c8 <upg_img_in_set>
  a2efd8:	cd19                	beqz	a0,a2eff6 <uapi_upg_start+0x204>
  a2efda:	4090                	lw	a2,0(s1)
  a2efdc:	85ce                	mv	a1,s3
  a2efde:	8522                	mv	a0,s0
  a2efe0:	a66ff0ef          	jal	ra,a2e246 <upg_get_image_update_status>
  a2efe4:	8c2a                	mv	s8,a0
  a2efe6:	030516bb          	bnei	a0,3,a2f000 <uapi_upg_start+0x20e>
  a2efea:	408c                	lw	a1,0(s1)
  a2efec:	00a3 3cb4 051f      	l.li	a0,0xa33cb4
  a2eff2:	9fefd0ef          	jal	ra,a2c1f0 <print_str>
  a2eff6:	0b05                	addi	s6,s6,1
  a2eff8:	0985                	addi	s3,s3,1
  a2effa:	02c48493          	addi	s1,s1,44
  a2effe:	b7e9                	j	a2efc8 <uapi_upg_start+0x1d6>
  a2f000:	082c                	addi	a1,sp,24
  a2f002:	8526                	mv	a0,s1
  a2f004:	878ff0ef          	jal	ra,a2e07c <upg_get_pkg_image_header>
  a2f008:	892a                	mv	s2,a0
  a2f00a:	e119                	bnez	a0,a2f010 <uapi_upg_start+0x21e>
  a2f00c:	47e2                	lw	a5,24(sp)
  a2f00e:	e795                	bnez	a5,a2f03a <uapi_upg_start+0x248>
  a2f010:	00a3 3ce4 051f      	l.li	a0,0xa33ce4
  a2f016:	9dafd0ef          	jal	ra,a2c1f0 <print_str>
  a2f01a:	4562                	lw	a0,24(sp)
  a2f01c:	c119                	beqz	a0,a2f022 <uapi_upg_start+0x230>
  a2f01e:	e6dfe0ef          	jal	ra,a2de8a <upg_free>
  a2f022:	00090863          	beqz	s2,a2f032 <uapi_upg_start+0x240>
  a2f026:	85ca                	mv	a1,s2
  a2f028:	00a3 3e9c 051f      	l.li	a0,0xa33e9c
  a2f02e:	9c2fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f032:	4552                	lw	a0,20(sp)
  a2f034:	e57fe0ef          	jal	ra,a2de8a <upg_free>
  a2f038:	b731                	j	a2ef44 <uapi_upg_start+0x152>
  a2f03a:	43dc                	lw	a5,4(a5)
  a2f03c:	13478163          	beq	a5,s4,a2f15e <uapi_upg_start+0x36c>
  a2f040:	4601                	li	a2,0
  a2f042:	85ce                	mv	a1,s3
  a2f044:	8522                	mv	a0,s0
  a2f046:	90eff0ef          	jal	ra,a2e154 <upg_set_firmware_update_status>
  a2f04a:	892a                	mv	s2,a0
  a2f04c:	c509                	beqz	a0,a2f056 <uapi_upg_start+0x264>
  a2f04e:	00a3 3d0c 051f      	l.li	a0,0xa33d0c
  a2f054:	b7c9                	j	a2f016 <uapi_upg_start+0x224>
  a2f056:	47e2                	lw	a5,24(sp)
  a2f058:	d38d0513          	addi	a0,s10,-712 # a33d38 <g_efuse_cfg+0x1310>
  a2f05c:	43cc                	lw	a1,4(a5)
  a2f05e:	992fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f062:	4962                	lw	s2,24(sp)
  a2f064:	040c1963          	bnez	s8,a2f0b6 <uapi_upg_start+0x2c4>
  a2f068:	a58ff0ef          	jal	ra,a2e2c0 <upg_flash_erase_metadata_pages>
  a2f06c:	8caa                	mv	s9,a0
  a2f06e:	c521                	beqz	a0,a2f0b6 <uapi_upg_start+0x2c4>
  a2f070:	00a3 3d64 051f      	l.li	a0,0xa33d64
  a2f076:	97afd0ef          	jal	ra,a2c1f0 <print_str>
  a2f07a:	4c05                	li	s8,1
  a2f07c:	85e2                	mv	a1,s8
  a2f07e:	df8d8513          	addi	a0,s11,-520 # a33df8 <g_efuse_cfg+0x13d0>
  a2f082:	96efd0ef          	jal	ra,a2c1f0 <print_str>
  a2f086:	8662                	mv	a2,s8
  a2f088:	85ce                	mv	a1,s3
  a2f08a:	8522                	mv	a0,s0
  a2f08c:	8c8ff0ef          	jal	ra,a2e154 <upg_set_firmware_update_status>
  a2f090:	892a                	mv	s2,a0
  a2f092:	000c8363          	beqz	s9,a2f098 <uapi_upg_start+0x2a6>
  a2f096:	8966                	mv	s2,s9
  a2f098:	85ca                	mv	a1,s2
  a2f09a:	00a3 3e18 051f      	l.li	a0,0xa33e18
  a2f0a0:	950fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f0a4:	f6091be3          	bnez	s2,a2f01a <uapi_upg_start+0x228>
  a2f0a8:	4562                	lw	a0,24(sp)
  a2f0aa:	de1fe0ef          	jal	ra,a2de8a <upg_free>
  a2f0ae:	cc02                	sw	zero,24(sp)
  a2f0b0:	cc8fe0ef          	jal	ra,a2d578 <upg_watchdog_kick>
  a2f0b4:	b789                	j	a2eff6 <uapi_upg_start+0x204>
  a2f0b6:	001c3693          	seqz	a3,s8
  a2f0ba:	02000613          	li	a2,32
  a2f0be:	00c48593          	addi	a1,s1,12
  a2f0c2:	854a                	mv	a0,s2
  a2f0c4:	e96ff0ef          	jal	ra,a2e75a <uapi_upg_verify_file_image>
  a2f0c8:	8caa                	mv	s9,a0
  a2f0ca:	4c05                	li	s8,1
  a2f0cc:	f945                	bnez	a0,a2f07c <uapi_upg_start+0x28a>
  a2f0ce:	00492683          	lw	a3,4(s2)
  a2f0d2:	cb9e1737          	lui	a4,0xcb9e1
  a2f0d6:	82670613          	addi	a2,a4,-2010 # cb9e0826 <_gp_+0xcafabd5e>
  a2f0da:	046b8c93          	addi	s9,s7,70 # 80003046 <_gp_+0x7f5ce57e>
  a2f0de:	f8c68fe3          	beq	a3,a2,a2f07c <uapi_upg_start+0x28a>
  a2f0e2:	83270713          	addi	a4,a4,-1998
  a2f0e6:	f8e68be3          	beq	a3,a4,a2f07c <uapi_upg_start+0x28a>
  a2f0ea:	06092583          	lw	a1,96(s2)
  a2f0ee:	00a3 3d94 051f      	l.li	a0,0xa33d94
  a2f0f4:	8fcfd0ef          	jal	ra,a2c1f0 <print_str>
  a2f0f8:	06092783          	lw	a5,96(s2)
  a2f0fc:	3c78 96e1 071f      	l.li	a4,0x3c7896e1
  a2f102:	02e79363          	bne	a5,a4,a2f128 <uapi_upg_start+0x336>
  a2f106:	00a3 3db8 051f      	l.li	a0,0xa33db8
  a2f10c:	8e4fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f110:	854a                	mv	a0,s2
  a2f112:	e5efe0ef          	jal	ra,a2d770 <upg_erase_whole_image>
  a2f116:	8caa                	mv	s9,a0
  a2f118:	f135                	bnez	a0,a2f07c <uapi_upg_start+0x28a>
  a2f11a:	854a                	mv	a0,s2
  a2f11c:	2add                	jal	ra,a2f312 <uapi_upg_compress_image_update>
  a2f11e:	00153c13          	seqz	s8,a0
  a2f122:	8caa                	mv	s9,a0
  a2f124:	0c05                	addi	s8,s8,1
  a2f126:	bf99                	j	a2f07c <uapi_upg_start+0x28a>
  a2f128:	4449 4646 071f      	l.li	a4,0x44494646
  a2f12e:	00e79a63          	bne	a5,a4,a2f142 <uapi_upg_start+0x350>
  a2f132:	00a3 3dd0 051f      	l.li	a0,0xa33dd0
  a2f138:	8b8fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f13c:	854a                	mv	a0,s2
  a2f13e:	2c3d                	jal	ra,a2f37c <uapi_upg_diff_image_update>
  a2f140:	bff9                	j	a2f11e <uapi_upg_start+0x32c>
  a2f142:	00a3 3de4 051f      	l.li	a0,0xa33de4
  a2f148:	8a8fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f14c:	854a                	mv	a0,s2
  a2f14e:	e22fe0ef          	jal	ra,a2d770 <upg_erase_whole_image>
  a2f152:	8caa                	mv	s9,a0
  a2f154:	f20514e3          	bnez	a0,a2f07c <uapi_upg_start+0x28a>
  a2f158:	854a                	mv	a0,s2
  a2f15a:	242d                	jal	ra,a2f384 <uapi_upg_full_image_update>
  a2f15c:	b7c9                	j	a2f11e <uapi_upg_start+0x32c>
  a2f15e:	00a347b7          	lui	a5,0xa34
  a2f162:	e4878513          	addi	a0,a5,-440 # a33e48 <g_efuse_cfg+0x1420>
  a2f166:	85d2                	mv	a1,s4
  a2f168:	888fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f16c:	47e2                	lw	a5,24(sp)
  a2f16e:	00a346b7          	lui	a3,0xa34
  a2f172:	c106a903          	lw	s2,-1008(a3) # a33c10 <g_efuse_cfg+0x11e8>
  a2f176:	43d8                	lw	a4,4(a5)
  a2f178:	05471663          	bne	a4,s4,a2f1c4 <uapi_upg_start+0x3d2>
  a2f17c:	4794                	lw	a3,8(a5)
  a2f17e:	40d8                	lw	a4,4(s1)
  a2f180:	0868                	addi	a0,sp,28
  a2f182:	c874                	sw	a3,84(s0)
  a2f184:	47dc                	lw	a5,12(a5)
  a2f186:	07bd                	addi	a5,a5,15
  a2f188:	9bc1                	andi	a5,a5,-16
  a2f18a:	cc3c                	sw	a5,88(s0)
  a2f18c:	01070793          	addi	a5,a4,16
  a2f190:	cc7c                	sw	a5,92(s0)
  a2f192:	02000793          	li	a5,32
  a2f196:	d03c                	sw	a5,96(s0)
  a2f198:	ce02                	sw	zero,28(sp)
  a2f19a:	b54fe0ef          	jal	ra,a2d4ee <upg_get_upgrade_flag_flash_start_addr>
  a2f19e:	892a                	mv	s2,a0
  a2f1a0:	e115                	bnez	a0,a2f1c4 <uapi_upg_start+0x3d2>
  a2f1a2:	4572                	lw	a0,28(sp)
  a2f1a4:	4681                	li	a3,0
  a2f1a6:	05440613          	addi	a2,s0,84
  a2f1aa:	45c1                	li	a1,16
  a2f1ac:	05450513          	addi	a0,a0,84
  a2f1b0:	c90fe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2f1b4:	892a                	mv	s2,a0
  a2f1b6:	e519                	bnez	a0,a2f1c4 <uapi_upg_start+0x3d2>
  a2f1b8:	4601                	li	a2,0
  a2f1ba:	85d2                	mv	a1,s4
  a2f1bc:	8522                	mv	a0,s0
  a2f1be:	f97fe0ef          	jal	ra,a2e154 <upg_set_firmware_update_status>
  a2f1c2:	892a                	mv	s2,a0
  a2f1c4:	00a347b7          	lui	a5,0xa34
  a2f1c8:	85ca                	mv	a1,s2
  a2f1ca:	e7078513          	addi	a0,a5,-400 # a33e70 <g_efuse_cfg+0x1448>
  a2f1ce:	822fd0ef          	jal	ra,a2c1f0 <print_str>
  a2f1d2:	bdd9                	j	a2f0a8 <uapi_upg_start+0x2b6>
  a2f1d4:	8000 3043 091f      	l.li	s2,0x80003043
  a2f1da:	b3ad                	j	a2ef44 <uapi_upg_start+0x152>
  a2f1dc:	4485                	li	s1,1
  a2f1de:	4501                	li	a0,0
  a2f1e0:	8000 3040 091f      	l.li	s2,0x80003040
  a2f1e6:	b9b1                	j	a2ee42 <uapi_upg_start+0x50>

00a2f1e8 <uapi_upg_register_progress_callback>:
  a2f1e8:	8028                	push	{ra,s0},-16
  a2f1ea:	842a                	mv	s0,a0
  a2f1ec:	ccffe0ef          	jal	ra,a2deba <upg_get_ctx>
  a2f1f0:	cd00                	sw	s0,24(a0)
  a2f1f2:	4501                	li	a0,0
  a2f1f4:	8024                	popret	{ra,s0},16

00a2f1f6 <upg_calculate_and_notify_process>:
  a2f1f6:	8038                	push	{ra,s0-s1},-16
  a2f1f8:	842a                	mv	s0,a0
  a2f1fa:	cc1fe0ef          	jal	ra,a2deba <upg_get_ctx>
  a2f1fe:	84aa                	mv	s1,a0
  a2f200:	cbbfe0ef          	jal	ra,a2deba <upg_get_ctx>
  a2f204:	4d1c                	lw	a5,24(a0)
  a2f206:	cb85                	beqz	a5,a2f236 <upg_calculate_and_notify_process+0x40>
  a2f208:	5088                	lw	a0,32(s1)
  a2f20a:	9522                	add	a0,a0,s0
  a2f20c:	4cc0                	lw	s0,28(s1)
  a2f20e:	d088                	sw	a0,32(s1)
  a2f210:	c419                	beqz	s0,a2f21e <upg_calculate_and_notify_process+0x28>
  a2f212:	06400793          	li	a5,100
  a2f216:	02f50533          	mul	a0,a0,a5
  a2f21a:	02855433          	divu	s0,a0,s0
  a2f21e:	00a0 5b04 049f      	l.li	s1,0xa05b04
  a2f224:	409c                	lw	a5,0(s1)
  a2f226:	00878863          	beq	a5,s0,a2f236 <upg_calculate_and_notify_process+0x40>
  a2f22a:	c91fe0ef          	jal	ra,a2deba <upg_get_ctx>
  a2f22e:	4d1c                	lw	a5,24(a0)
  a2f230:	8522                	mv	a0,s0
  a2f232:	9782                	jalr	a5
  a2f234:	c080                	sw	s0,0(s1)
  a2f236:	8034                	popret	{ra,s0-s1},16

00a2f238 <upg_write_new_image_data>:
  a2f238:	8248                	push	{ra,s0-s2},-48
  a2f23a:	ca02                	sw	zero,20(sp)
  a2f23c:	cc02                	sw	zero,24(sp)
  a2f23e:	ce02                	sw	zero,28(sp)
  a2f240:	4b87 a52d 079f      	l.li	a5,0x4b87a52d
  a2f246:	842a                	mv	s0,a0
  a2f248:	892e                	mv	s2,a1
  a2f24a:	84b2                	mv	s1,a2
  a2f24c:	02f69363          	bne	a3,a5,a2f272 <upg_write_new_image_data+0x3a>
  a2f250:	002007b7          	lui	a5,0x200
  a2f254:	cc3e                	sw	a5,24(sp)
  a2f256:	78000793          	li	a5,1920
  a2f25a:	ce3e                	sw	a5,28(sp)
  a2f25c:	01414783          	lbu	a5,20(sp)
  a2f260:	e38d                	bnez	a5,a2f282 <upg_write_new_image_data+0x4a>
  a2f262:	4562                	lw	a0,24(sp)
  a2f264:	408c                	lw	a1,0(s1)
  a2f266:	86ba                	mv	a3,a4
  a2f268:	864a                	mv	a2,s2
  a2f26a:	9522                	add	a0,a0,s0
  a2f26c:	bd4fe0ef          	jal	ra,a2d640 <upg_flash_write>
  a2f270:	a801                	j	a2f280 <upg_write_new_image_data+0x48>
  a2f272:	8536                	mv	a0,a3
  a2f274:	084c                	addi	a1,sp,20
  a2f276:	c63a                	sw	a4,12(sp)
  a2f278:	cadfe0ef          	jal	ra,a2df24 <upg_get_image_info>
  a2f27c:	4732                	lw	a4,12(sp)
  a2f27e:	dd79                	beqz	a0,a2f25c <upg_write_new_image_data+0x24>
  a2f280:	8244                	popret	{ra,s0-s2},48
  a2f282:	8000 3004 051f      	l.li	a0,0x80003004
  a2f288:	bfe5                	j	a2f280 <upg_write_new_image_data+0x48>

00a2f28a <uapi_upg_lzma_ota_image>:
  a2f28a:	8a58                	push	{ra,s0-s3},-192
  a2f28c:	842e                	mv	s0,a1
  a2f28e:	89b2                	mv	s3,a2
  a2f290:	4581                	li	a1,0
  a2f292:	02400613          	li	a2,36
  a2f296:	84aa                	mv	s1,a0
  a2f298:	0828                	addi	a0,sp,24
  a2f29a:	8936                	mv	s2,a3
  a2f29c:	c63a                	sw	a4,12(sp)
  a2f29e:	f06f90ef          	jal	ra,a289a4 <memset>
  a2f2a2:	8622                	mv	a2,s0
  a2f2a4:	86ce                	mv	a3,s3
  a2f2a6:	082c                	addi	a1,sp,24
  a2f2a8:	1868                	addi	a0,sp,60
  a2f2aa:	88bff0ef          	jal	ra,a2eb34 <upg_lzma_init>
  a2f2ae:	842a                	mv	s0,a0
  a2f2b0:	e915                	bnez	a0,a2f2e4 <uapi_upg_lzma_ota_image+0x5a>
  a2f2b2:	44d0                	lw	a2,12(s1)
  a2f2b4:	40dc                	lw	a5,4(s1)
  a2f2b6:	4732                	lw	a4,12(sp)
  a2f2b8:	41360633          	sub	a2,a2,s3
  a2f2bc:	d232                	sw	a2,36(sp)
  a2f2be:	5622                	lw	a2,40(sp)
  a2f2c0:	cc3e                	sw	a5,24(sp)
  a2f2c2:	ce3a                	sw	a4,28(sp)
  a2f2c4:	d002                	sw	zero,32(sp)
  a2f2c6:	02c97163          	bgeu	s2,a2,a2f2e8 <uapi_upg_lzma_ota_image+0x5e>
  a2f2ca:	85ca                	mv	a1,s2
  a2f2cc:	00a3 3ed4 051f      	l.li	a0,0xa33ed4
  a2f2d2:	f1ffc0ef          	jal	ra,a2c1f0 <print_str>
  a2f2d6:	082c                	addi	a1,sp,24
  a2f2d8:	1868                	addi	a0,sp,60
  a2f2da:	8fdff0ef          	jal	ra,a2ebd6 <upg_lzma_deinit>
  a2f2de:	8000 3051 041f      	l.li	s0,0x80003051
  a2f2e4:	8522                	mv	a0,s0
  a2f2e6:	8a54                	popret	{ra,s0-s3},192
  a2f2e8:	8626                	mv	a2,s1
  a2f2ea:	082c                	addi	a1,sp,24
  a2f2ec:	1868                	addi	a0,sp,60
  a2f2ee:	a4bff0ef          	jal	ra,a2ed38 <upg_lzma_decode>
  a2f2f2:	842a                	mv	s0,a0
  a2f2f4:	c911                	beqz	a0,a2f308 <uapi_upg_lzma_ota_image+0x7e>
  a2f2f6:	85aa                	mv	a1,a0
  a2f2f8:	00a3 3f1c 051f      	l.li	a0,0xa33f1c
  a2f2fe:	ef3fc0ef          	jal	ra,a2c1f0 <print_str>
  a2f302:	8000 3062 041f      	l.li	s0,0x80003062
  a2f308:	082c                	addi	a1,sp,24
  a2f30a:	1868                	addi	a0,sp,60
  a2f30c:	8cbff0ef          	jal	ra,a2ebd6 <upg_lzma_deinit>
  a2f310:	bfd1                	j	a2f2e4 <uapi_upg_lzma_ota_image+0x5a>

00a2f312 <uapi_upg_compress_image_update>:
  a2f312:	8258                	push	{ra,s0-s3},-64
  a2f314:	47c1                	li	a5,16
  a2f316:	0814                	addi	a3,sp,16
  a2f318:	0050                	addi	a2,sp,4
  a2f31a:	4581                	li	a1,0
  a2f31c:	84aa                	mv	s1,a0
  a2f31e:	00852903          	lw	s2,8(a0)
  a2f322:	c802                	sw	zero,16(sp)
  a2f324:	ca02                	sw	zero,20(sp)
  a2f326:	cc02                	sw	zero,24(sp)
  a2f328:	ce02                	sw	zero,28(sp)
  a2f32a:	c23e                	sw	a5,4(sp)
  a2f32c:	c402                	sw	zero,8(sp)
  a2f32e:	c602                	sw	zero,12(sp)
  a2f330:	de1fe0ef          	jal	ra,a2e110 <upg_copy_pkg_image_data>
  a2f334:	842a                	mv	s0,a0
  a2f336:	e129                	bnez	a0,a2f378 <uapi_upg_compress_image_update+0x66>
  a2f338:	8526                	mv	a0,s1
  a2f33a:	c60fe0ef          	jal	ra,a2d79a <upg_cryto_init>
  a2f33e:	842a                	mv	s0,a0
  a2f340:	ed05                	bnez	a0,a2f378 <uapi_upg_compress_image_update+0x66>
  a2f342:	4592                	lw	a1,4(sp)
  a2f344:	8626                	mv	a2,s1
  a2f346:	0808                	addi	a0,sp,16
  a2f348:	da8fe0ef          	jal	ra,a2d8f0 <upg_decry_fota_pkt>
  a2f34c:	842a                	mv	s0,a0
  a2f34e:	e115                	bnez	a0,a2f372 <uapi_upg_compress_image_update+0x60>
  a2f350:	40c8                	lw	a0,4(s1)
  a2f352:	0070                	addi	a2,sp,12
  a2f354:	002c                	addi	a1,sp,8
  a2f356:	4992                	lw	s3,4(sp)
  a2f358:	c85fe0ef          	jal	ra,a2dfdc <upg_get_partition_info>
  a2f35c:	842a                	mv	s0,a0
  a2f35e:	e911                	bnez	a0,a2f372 <uapi_upg_compress_image_update+0x60>
  a2f360:	46b2                	lw	a3,12(sp)
  a2f362:	01298733          	add	a4,s3,s2
  a2f366:	4641                	li	a2,16
  a2f368:	080c                	addi	a1,sp,16
  a2f36a:	8526                	mv	a0,s1
  a2f36c:	f1fff0ef          	jal	ra,a2f28a <uapi_upg_lzma_ota_image>
  a2f370:	842a                	mv	s0,a0
  a2f372:	8526                	mv	a0,s1
  a2f374:	d34fe0ef          	jal	ra,a2d8a8 <upg_cryto_deinit>
  a2f378:	8522                	mv	a0,s0
  a2f37a:	8254                	popret	{ra,s0-s3},64

00a2f37c <uapi_upg_diff_image_update>:
  a2f37c:	8000 3046 051f      	l.li	a0,0x80003046
  a2f382:	8082                	ret

00a2f384 <uapi_upg_full_image_update>:
  a2f384:	8188                	push	{ra,s0-s6},-48
  a2f386:	00852a83          	lw	s5,8(a0)
  a2f38a:	8a2a                	mv	s4,a0
  a2f38c:	4148                	lw	a0,4(a0)
  a2f38e:	0030                	addi	a2,sp,8
  a2f390:	004c                	addi	a1,sp,4
  a2f392:	c202                	sw	zero,4(sp)
  a2f394:	c402                	sw	zero,8(sp)
  a2f396:	c47fe0ef          	jal	ra,a2dfdc <upg_get_partition_info>
  a2f39a:	842a                	mv	s0,a0
  a2f39c:	e921                	bnez	a0,a2f3ec <uapi_upg_full_image_update+0x68>
  a2f39e:	00ca2703          	lw	a4,12(s4)
  a2f3a2:	47a2                	lw	a5,8(sp)
  a2f3a4:	06e7e963          	bltu	a5,a4,a2f416 <uapi_upg_full_image_update+0x92>
  a2f3a8:	6505                	lui	a0,0x1
  a2f3aa:	c602                	sw	zero,12(sp)
  a2f3ac:	ac5fe0ef          	jal	ra,a2de70 <upg_malloc>
  a2f3b0:	84aa                	mv	s1,a0
  a2f3b2:	c525                	beqz	a0,a2f41a <uapi_upg_full_image_update+0x96>
  a2f3b4:	4901                	li	s2,0
  a2f3b6:	6b05                	lui	s6,0x1
  a2f3b8:	00ca2783          	lw	a5,12(s4)
  a2f3bc:	00f96663          	bltu	s2,a5,a2f3c8 <uapi_upg_full_image_update+0x44>
  a2f3c0:	8526                	mv	a0,s1
  a2f3c2:	ac9fe0ef          	jal	ra,a2de8a <upg_free>
  a2f3c6:	a01d                	j	a2f3ec <uapi_upg_full_image_update+0x68>
  a2f3c8:	412787b3          	sub	a5,a5,s2
  a2f3cc:	00fb7363          	bgeu	s6,a5,a2f3d2 <uapi_upg_full_image_update+0x4e>
  a2f3d0:	6785                	lui	a5,0x1
  a2f3d2:	0070                	addi	a2,sp,12
  a2f3d4:	85a6                	mv	a1,s1
  a2f3d6:	01590533          	add	a0,s2,s5
  a2f3da:	c63e                	sw	a5,12(sp)
  a2f3dc:	b8ffe0ef          	jal	ra,a2df6a <upg_read_fota_pkg_data>
  a2f3e0:	89aa                	mv	s3,a0
  a2f3e2:	c519                	beqz	a0,a2f3f0 <uapi_upg_full_image_update+0x6c>
  a2f3e4:	8526                	mv	a0,s1
  a2f3e6:	aa5fe0ef          	jal	ra,a2de8a <upg_free>
  a2f3ea:	844e                	mv	s0,s3
  a2f3ec:	8522                	mv	a0,s0
  a2f3ee:	8184                	popret	{ra,s0-s6},48
  a2f3f0:	004a2683          	lw	a3,4(s4)
  a2f3f4:	4701                	li	a4,0
  a2f3f6:	0070                	addi	a2,sp,12
  a2f3f8:	85a6                	mv	a1,s1
  a2f3fa:	854a                	mv	a0,s2
  a2f3fc:	e3dff0ef          	jal	ra,a2f238 <upg_write_new_image_data>
  a2f400:	89aa                	mv	s3,a0
  a2f402:	f16d                	bnez	a0,a2f3e4 <uapi_upg_full_image_update+0x60>
  a2f404:	47b2                	lw	a5,12(sp)
  a2f406:	dff9                	beqz	a5,a2f3e4 <uapi_upg_full_image_update+0x60>
  a2f408:	993e                	add	s2,s2,a5
  a2f40a:	96efe0ef          	jal	ra,a2d578 <upg_watchdog_kick>
  a2f40e:	4532                	lw	a0,12(sp)
  a2f410:	de7ff0ef          	jal	ra,a2f1f6 <upg_calculate_and_notify_process>
  a2f414:	b755                	j	a2f3b8 <uapi_upg_full_image_update+0x34>
  a2f416:	547d                	li	s0,-1
  a2f418:	bfd1                	j	a2f3ec <uapi_upg_full_image_update+0x68>
  a2f41a:	80000437          	lui	s0,0x80000
  a2f41e:	0415                	addi	s0,s0,5 # 80000005 <_gp_+0x7f5cb53d>
  a2f420:	b7f1                	j	a2f3ec <uapi_upg_full_image_update+0x68>

00a2f422 <LzmaDec_TryDummy>:
  a2f422:	2138                	lbu	a4,2(a0)
  a2f424:	02852f83          	lw	t6,40(a0) # 1028 <ccause+0x66>
  a2f428:	5e7d                	li	t3,-1
  a2f42a:	00ee1e33          	sll	t3,t3,a4
  a2f42e:	04052e83          	lw	t4,64(a0)
  a2f432:	fffe4e13          	not	t3,t3
  a2f436:	00c52303          	lw	t1,12(a0)
  a2f43a:	01fe7e33          	and	t3,t3,t6
  a2f43e:	0e12                	slli	t3,t3,0x4
  a2f440:	02052803          	lw	a6,32(a0)
  a2f444:	01ce8f33          	add	t5,t4,t3
  a2f448:	03e30f1b          	addshf	t5,t1,t5,sll,1
  a2f44c:	86aa                	mv	a3,a0
  a2f44e:	515c                	lw	a5,36(a0)
  a2f450:	e00f0f13          	addi	t5,t5,-512
  a2f454:	01000537          	lui	a0,0x1000
  a2f458:	00062883          	lw	a7,0(a2)
  a2f45c:	000f5703          	lhu	a4,0(t5)
  a2f460:	00a87a63          	bgeu	a6,a0,a2f474 <LzmaDec_TryDummy+0x52>
  a2f464:	4501                	li	a0,0
  a2f466:	4115f963          	bgeu	a1,a7,a2f878 <LzmaDec_TryDummy+0x456>
  a2f46a:	2188                	lbu	a0,0(a1)
  a2f46c:	0822                	slli	a6,a6,0x8
  a2f46e:	0585                	addi	a1,a1,1
  a2f470:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f474:	00b85513          	srli	a0,a6,0xb
  a2f478:	02e50733          	mul	a4,a0,a4
  a2f47c:	12e7f963          	bgeu	a5,a4,a2f5ae <LzmaDec_TryDummy+0x18c>
  a2f480:	56c8                	lw	a0,44(a3)
  a2f482:	28030313          	addi	t1,t1,640
  a2f486:	e119                	bnez	a0,a2f48c <LzmaDec_TryDummy+0x6a>
  a2f488:	040f8863          	beqz	t6,a2f4d8 <LzmaDec_TryDummy+0xb6>
  a2f48c:	0016c803          	lbu	a6,1(a3)
  a2f490:	557d                	li	a0,-1
  a2f492:	0006c283          	lbu	t0,0(a3)
  a2f496:	01051533          	sll	a0,a0,a6
  a2f49a:	0186a803          	lw	a6,24(a3)
  a2f49e:	fff54513          	not	a0,a0
  a2f4a2:	01f57533          	and	a0,a0,t6
  a2f4a6:	00551533          	sll	a0,a0,t0
  a2f4aa:	0106af03          	lw	t5,16(a3)
  a2f4ae:	fff80e13          	addi	t3,a6,-1
  a2f4b2:	00081563          	bnez	a6,a2f4bc <LzmaDec_TryDummy+0x9a>
  a2f4b6:	0146ae03          	lw	t3,20(a3)
  a2f4ba:	1e7d                	addi	t3,t3,-1
  a2f4bc:	9e7a                	add	t3,t3,t5
  a2f4be:	000e4803          	lbu	a6,0(t3)
  a2f4c2:	4e21                	li	t3,8
  a2f4c4:	405e0e33          	sub	t3,t3,t0
  a2f4c8:	01c85833          	srl	a6,a6,t3
  a2f4cc:	9542                	add	a0,a0,a6
  a2f4ce:	60000813          	li	a6,1536
  a2f4d2:	03050533          	mul	a0,a0,a6
  a2f4d6:	932a                	add	t1,t1,a0
  a2f4d8:	071ef63b          	bgeui	t4,7,a2f530 <LzmaDec_TryDummy+0x10e>
  a2f4dc:	4685                	li	a3,1
  a2f4de:	01000e37          	lui	t3,0x1000
  a2f4e2:	0ff00813          	li	a6,255
  a2f4e6:	0686                	slli	a3,a3,0x1
  a2f4e8:	00d30533          	add	a0,t1,a3
  a2f4ec:	00055e83          	lhu	t4,0(a0) # 1000000 <_gp_+0x5cb538>
  a2f4f0:	01c77963          	bgeu	a4,t3,a2f502 <LzmaDec_TryDummy+0xe0>
  a2f4f4:	3915f163          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f4f8:	2188                	lbu	a0,0(a1)
  a2f4fa:	0722                	slli	a4,a4,0x8
  a2f4fc:	0585                	addi	a1,a1,1
  a2f4fe:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f502:	00b75513          	srli	a0,a4,0xb
  a2f506:	03d50533          	mul	a0,a0,t4
  a2f50a:	02a7e163          	bltu	a5,a0,a2f52c <LzmaDec_TryDummy+0x10a>
  a2f50e:	8f09                	sub	a4,a4,a0
  a2f510:	8f89                	sub	a5,a5,a0
  a2f512:	0685                	addi	a3,a3,1
  a2f514:	fcd879e3          	bgeu	a6,a3,a2f4e6 <LzmaDec_TryDummy+0xc4>
  a2f518:	4505                	li	a0,1
  a2f51a:	010007b7          	lui	a5,0x1000
  a2f51e:	00f77563          	bgeu	a4,a5,a2f528 <LzmaDec_TryDummy+0x106>
  a2f522:	3515fa63          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f526:	0585                	addi	a1,a1,1
  a2f528:	c20c                	sw	a1,0(a2)
  a2f52a:	8082                	ret
  a2f52c:	872a                	mv	a4,a0
  a2f52e:	b7dd                	j	a2f514 <LzmaDec_TryDummy+0xf2>
  a2f530:	0186ae83          	lw	t4,24(a3)
  a2f534:	0306ae03          	lw	t3,48(a3)
  a2f538:	4a88                	lw	a0,16(a3)
  a2f53a:	4801                	li	a6,0
  a2f53c:	41ce8f33          	sub	t5,t4,t3
  a2f540:	01cef463          	bgeu	t4,t3,a2f548 <LzmaDec_TryDummy+0x126>
  a2f544:	0146a803          	lw	a6,20(a3)
  a2f548:	01e506b3          	add	a3,a0,t5
  a2f54c:	96c2                	add	a3,a3,a6
  a2f54e:	0006ce03          	lbu	t3,0(a3)
  a2f552:	10000813          	li	a6,256
  a2f556:	4685                	li	a3,1
  a2f558:	01000fb7          	lui	t6,0x1000
  a2f55c:	0ff00f13          	li	t5,255
  a2f560:	0e06                	slli	t3,t3,0x1
  a2f562:	01c87eb3          	and	t4,a6,t3
  a2f566:	00d80533          	add	a0,a6,a3
  a2f56a:	9576                	add	a0,a0,t4
  a2f56c:	02a3051b          	addshf	a0,t1,a0,sll,1
  a2f570:	00055283          	lhu	t0,0(a0)
  a2f574:	01f77963          	bgeu	a4,t6,a2f586 <LzmaDec_TryDummy+0x164>
  a2f578:	2f15ff63          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f57c:	2188                	lbu	a0,0(a1)
  a2f57e:	0722                	slli	a4,a4,0x8
  a2f580:	0585                	addi	a1,a1,1
  a2f582:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f586:	00b75513          	srli	a0,a4,0xb
  a2f58a:	02550533          	mul	a0,a0,t0
  a2f58e:	0686                	slli	a3,a3,0x1
  a2f590:	00a7fa63          	bgeu	a5,a0,a2f5a4 <LzmaDec_TryDummy+0x182>
  a2f594:	fffe4713          	not	a4,t3
  a2f598:	00e87833          	and	a6,a6,a4
  a2f59c:	872a                	mv	a4,a0
  a2f59e:	fcdf71e3          	bgeu	t5,a3,a2f560 <LzmaDec_TryDummy+0x13e>
  a2f5a2:	bf9d                	j	a2f518 <LzmaDec_TryDummy+0xf6>
  a2f5a4:	8f09                	sub	a4,a4,a0
  a2f5a6:	8f89                	sub	a5,a5,a0
  a2f5a8:	0685                	addi	a3,a3,1
  a2f5aa:	8876                	mv	a6,t4
  a2f5ac:	bfcd                	j	a2f59e <LzmaDec_TryDummy+0x17c>
  a2f5ae:	0ec1                	addi	t4,t4,16
  a2f5b0:	40e80833          	sub	a6,a6,a4
  a2f5b4:	03d30e9b          	addshf	t4,t1,t4,sll,1
  a2f5b8:	010006b7          	lui	a3,0x1000
  a2f5bc:	8f99                	sub	a5,a5,a4
  a2f5be:	000ed703          	lhu	a4,0(t4)
  a2f5c2:	00d87a63          	bgeu	a6,a3,a2f5d6 <LzmaDec_TryDummy+0x1b4>
  a2f5c6:	4501                	li	a0,0
  a2f5c8:	2b15f863          	bgeu	a1,a7,a2f878 <LzmaDec_TryDummy+0x456>
  a2f5cc:	2194                	lbu	a3,0(a1)
  a2f5ce:	0822                	slli	a6,a6,0x8
  a2f5d0:	0585                	addi	a1,a1,1
  a2f5d2:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f5d6:	00b85693          	srli	a3,a6,0xb
  a2f5da:	02e686b3          	mul	a3,a3,a4
  a2f5de:	14d7f063          	bgeu	a5,a3,a2f71e <LzmaDec_TryDummy+0x2fc>
  a2f5e2:	a0030813          	addi	a6,t1,-1536
  a2f5e6:	4509                	li	a0,2
  a2f5e8:	4f81                	li	t6,0
  a2f5ea:	01000eb7          	lui	t4,0x1000
  a2f5ee:	00085703          	lhu	a4,0(a6)
  a2f5f2:	01d6fa63          	bgeu	a3,t4,a2f606 <LzmaDec_TryDummy+0x1e4>
  a2f5f6:	2915f063          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f5fa:	0005ce83          	lbu	t4,0(a1)
  a2f5fe:	06a2                	slli	a3,a3,0x8
  a2f600:	0585                	addi	a1,a1,1
  a2f602:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f606:	00b6de93          	srli	t4,a3,0xb
  a2f60a:	02ee8733          	mul	a4,t4,a4
  a2f60e:	1ce7fe63          	bgeu	a5,a4,a2f7ea <LzmaDec_TryDummy+0x3c8>
  a2f612:	03c8081b          	addshf	a6,a6,t3,sll,1
  a2f616:	4681                	li	a3,0
  a2f618:	4f21                	li	t5,8
  a2f61a:	4e05                	li	t3,1
  a2f61c:	010002b7          	lui	t0,0x1000
  a2f620:	0e06                	slli	t3,t3,0x1
  a2f622:	01c80eb3          	add	t4,a6,t3
  a2f626:	000ed383          	lhu	t2,0(t4) # 1000000 <_gp_+0x5cb538>
  a2f62a:	00577a63          	bgeu	a4,t0,a2f63e <LzmaDec_TryDummy+0x21c>
  a2f62e:	2515f463          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f632:	0005ce83          	lbu	t4,0(a1)
  a2f636:	0722                	slli	a4,a4,0x8
  a2f638:	0585                	addi	a1,a1,1
  a2f63a:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f63e:	00b75e93          	srli	t4,a4,0xb
  a2f642:	027e8eb3          	mul	t4,t4,t2
  a2f646:	1fd7e663          	bltu	a5,t4,a2f832 <LzmaDec_TryDummy+0x410>
  a2f64a:	41d70733          	sub	a4,a4,t4
  a2f64e:	41d787b3          	sub	a5,a5,t4
  a2f652:	0e05                	addi	t3,t3,1 # 1000001 <_gp_+0x5cb539>
  a2f654:	fdee66e3          	bltu	t3,t5,a2f620 <LzmaDec_TryDummy+0x1fe>
  a2f658:	04bff0bb          	bgeui	t6,4,a2f51a <LzmaDec_TryDummy+0xf8>
  a2f65c:	41e686b3          	sub	a3,a3,t5
  a2f660:	96f2                	add	a3,a3,t3
  a2f662:	20000e13          	li	t3,512
  a2f666:	0306f2bb          	bgeui	a3,3,a2f670 <LzmaDec_TryDummy+0x24e>
  a2f66a:	0685                	addi	a3,a3,1 # 1000001 <_gp_+0x5cb539>
  a2f66c:	00769e13          	slli	t3,a3,0x7
  a2f670:	4685                	li	a3,1
  a2f672:	01000f37          	lui	t5,0x1000
  a2f676:	03f00e93          	li	t4,63
  a2f67a:	0686                	slli	a3,a3,0x1
  a2f67c:	00d30833          	add	a6,t1,a3
  a2f680:	9872                	add	a6,a6,t3
  a2f682:	00085f83          	lhu	t6,0(a6)
  a2f686:	01e77a63          	bgeu	a4,t5,a2f69a <LzmaDec_TryDummy+0x278>
  a2f68a:	1f15f663          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f68e:	0005c803          	lbu	a6,0(a1)
  a2f692:	0722                	slli	a4,a4,0x8
  a2f694:	0585                	addi	a1,a1,1
  a2f696:	10f8279b          	orshf	a5,a6,a5,sll,8
  a2f69a:	00b75813          	srli	a6,a4,0xb
  a2f69e:	03f80833          	mul	a6,a6,t6
  a2f6a2:	1907ea63          	bltu	a5,a6,a2f836 <LzmaDec_TryDummy+0x414>
  a2f6a6:	41070733          	sub	a4,a4,a6
  a2f6aa:	410787b3          	sub	a5,a5,a6
  a2f6ae:	0685                	addi	a3,a3,1
  a2f6b0:	fcdef5e3          	bgeu	t4,a3,a2f67a <LzmaDec_TryDummy+0x258>
  a2f6b4:	fc068693          	addi	a3,a3,-64
  a2f6b8:	0496e8bb          	bltui	a3,4,a2f51a <LzmaDec_TryDummy+0xf8>
  a2f6bc:	0016d813          	srli	a6,a3,0x1
  a2f6c0:	0e56febb          	bgeui	a3,14,a2f83a <LzmaDec_TryDummy+0x418>
  a2f6c4:	8a85                	andi	a3,a3,1
  a2f6c6:	187d                	addi	a6,a6,-1
  a2f6c8:	0026e693          	ori	a3,a3,2
  a2f6cc:	80000e37          	lui	t3,0x80000
  a2f6d0:	010696b3          	sll	a3,a3,a6
  a2f6d4:	980e4e13          	xori	t3,t3,-1664
  a2f6d8:	96f2                	add	a3,a3,t3
  a2f6da:	02d3031b          	addshf	t1,t1,a3,sll,1
  a2f6de:	4e85                	li	t4,1
  a2f6e0:	4e05                	li	t3,1
  a2f6e2:	01000fb7          	lui	t6,0x1000
  a2f6e6:	03c3069b          	addshf	a3,t1,t3,sll,1
  a2f6ea:	0006df03          	lhu	t5,0(a3)
  a2f6ee:	01f77963          	bgeu	a4,t6,a2f700 <LzmaDec_TryDummy+0x2de>
  a2f6f2:	1915f263          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f6f6:	2194                	lbu	a3,0(a1)
  a2f6f8:	0722                	slli	a4,a4,0x8
  a2f6fa:	0585                	addi	a1,a1,1
  a2f6fc:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f700:	00b75693          	srli	a3,a4,0xb
  a2f704:	03e686b3          	mul	a3,a3,t5
  a2f708:	001e9f13          	slli	t5,t4,0x1
  a2f70c:	14d7ff63          	bgeu	a5,a3,a2f86a <LzmaDec_TryDummy+0x448>
  a2f710:	9e76                	add	t3,t3,t4
  a2f712:	8736                	mv	a4,a3
  a2f714:	187d                	addi	a6,a6,-1
  a2f716:	8efa                	mv	t4,t5
  a2f718:	fc0817e3          	bnez	a6,a2f6e6 <LzmaDec_TryDummy+0x2c4>
  a2f71c:	bbfd                	j	a2f51a <LzmaDec_TryDummy+0xf8>
  a2f71e:	40d80733          	sub	a4,a6,a3
  a2f722:	8f95                	sub	a5,a5,a3
  a2f724:	010006b7          	lui	a3,0x1000
  a2f728:	018ed803          	lhu	a6,24(t4)
  a2f72c:	00d77a63          	bgeu	a4,a3,a2f740 <LzmaDec_TryDummy+0x31e>
  a2f730:	4501                	li	a0,0
  a2f732:	1515f363          	bgeu	a1,a7,a2f878 <LzmaDec_TryDummy+0x456>
  a2f736:	2194                	lbu	a3,0(a1)
  a2f738:	0722                	slli	a4,a4,0x8
  a2f73a:	0585                	addi	a1,a1,1
  a2f73c:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f740:	00b75693          	srli	a3,a4,0xb
  a2f744:	030686b3          	mul	a3,a3,a6
  a2f748:	04d7f163          	bgeu	a5,a3,a2f78a <LzmaDec_TryDummy+0x368>
  a2f74c:	777d                	lui	a4,0xfffff
  a2f74e:	9f3a                	add	t5,t5,a4
  a2f750:	01000537          	lui	a0,0x1000
  a2f754:	600f5703          	lhu	a4,1536(t5) # 1000600 <_gp_+0x5cbb38>
  a2f758:	00a6fa63          	bgeu	a3,a0,a2f76c <LzmaDec_TryDummy+0x34a>
  a2f75c:	4501                	li	a0,0
  a2f75e:	1115fd63          	bgeu	a1,a7,a2f878 <LzmaDec_TryDummy+0x456>
  a2f762:	2188                	lbu	a0,0(a1)
  a2f764:	06a2                	slli	a3,a3,0x8
  a2f766:	0585                	addi	a1,a1,1
  a2f768:	10f5279b          	orshf	a5,a0,a5,sll,8
  a2f76c:	00b6d513          	srli	a0,a3,0xb
  a2f770:	02e50733          	mul	a4,a0,a4
  a2f774:	0ee7ef63          	bltu	a5,a4,a2f872 <LzmaDec_TryDummy+0x450>
  a2f778:	8e99                	sub	a3,a3,a4
  a2f77a:	8f99                	sub	a5,a5,a4
  a2f77c:	ffff f600 081f      	l.li	a6,0xfffff600
  a2f782:	981a                	add	a6,a6,t1
  a2f784:	450d                	li	a0,3
  a2f786:	4fb1                	li	t6,12
  a2f788:	b58d                	j	a2f5ea <LzmaDec_TryDummy+0x1c8>
  a2f78a:	8f15                	sub	a4,a4,a3
  a2f78c:	8f95                	sub	a5,a5,a3
  a2f78e:	010006b7          	lui	a3,0x1000
  a2f792:	030ed803          	lhu	a6,48(t4)
  a2f796:	00d77a63          	bgeu	a4,a3,a2f7aa <LzmaDec_TryDummy+0x388>
  a2f79a:	4501                	li	a0,0
  a2f79c:	0d15fe63          	bgeu	a1,a7,a2f878 <LzmaDec_TryDummy+0x456>
  a2f7a0:	2194                	lbu	a3,0(a1)
  a2f7a2:	0722                	slli	a4,a4,0x8
  a2f7a4:	0585                	addi	a1,a1,1
  a2f7a6:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f7aa:	00b75693          	srli	a3,a4,0xb
  a2f7ae:	030686b3          	mul	a3,a3,a6
  a2f7b2:	fcd7e5e3          	bltu	a5,a3,a2f77c <LzmaDec_TryDummy+0x35a>
  a2f7b6:	8f15                	sub	a4,a4,a3
  a2f7b8:	8f95                	sub	a5,a5,a3
  a2f7ba:	010006b7          	lui	a3,0x1000
  a2f7be:	048ed803          	lhu	a6,72(t4)
  a2f7c2:	00d77a63          	bgeu	a4,a3,a2f7d6 <LzmaDec_TryDummy+0x3b4>
  a2f7c6:	4501                	li	a0,0
  a2f7c8:	0b15f863          	bgeu	a1,a7,a2f878 <LzmaDec_TryDummy+0x456>
  a2f7cc:	2194                	lbu	a3,0(a1)
  a2f7ce:	0722                	slli	a4,a4,0x8
  a2f7d0:	0585                	addi	a1,a1,1
  a2f7d2:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f7d6:	00b75693          	srli	a3,a4,0xb
  a2f7da:	030686b3          	mul	a3,a3,a6
  a2f7de:	f8d7efe3          	bltu	a5,a3,a2f77c <LzmaDec_TryDummy+0x35a>
  a2f7e2:	8f95                	sub	a5,a5,a3
  a2f7e4:	40d706b3          	sub	a3,a4,a3
  a2f7e8:	bf51                	j	a2f77c <LzmaDec_TryDummy+0x35a>
  a2f7ea:	8e99                	sub	a3,a3,a4
  a2f7ec:	01000eb7          	lui	t4,0x1000
  a2f7f0:	8f99                	sub	a5,a5,a4
  a2f7f2:	01085703          	lhu	a4,16(a6)
  a2f7f6:	01d6fa63          	bgeu	a3,t4,a2f80a <LzmaDec_TryDummy+0x3e8>
  a2f7fa:	0715fe63          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f7fe:	0005ce83          	lbu	t4,0(a1)
  a2f802:	06a2                	slli	a3,a3,0x8
  a2f804:	0585                	addi	a1,a1,1
  a2f806:	10fea79b          	orshf	a5,t4,a5,sll,8
  a2f80a:	00b6de93          	srli	t4,a3,0xb
  a2f80e:	02ee8733          	mul	a4,t4,a4
  a2f812:	00e7f763          	bgeu	a5,a4,a2f820 <LzmaDec_TryDummy+0x3fe>
  a2f816:	0e21                	addi	t3,t3,8 # 80000008 <_gp_+0x7f5cb540>
  a2f818:	03c8081b          	addshf	a6,a6,t3,sll,1
  a2f81c:	46a1                	li	a3,8
  a2f81e:	bbed                	j	a2f618 <LzmaDec_TryDummy+0x1f6>
  a2f820:	8f99                	sub	a5,a5,a4
  a2f822:	20080813          	addi	a6,a6,512
  a2f826:	40e68733          	sub	a4,a3,a4
  a2f82a:	10000f13          	li	t5,256
  a2f82e:	46c1                	li	a3,16
  a2f830:	b3ed                	j	a2f61a <LzmaDec_TryDummy+0x1f8>
  a2f832:	8776                	mv	a4,t4
  a2f834:	b505                	j	a2f654 <LzmaDec_TryDummy+0x232>
  a2f836:	8742                	mv	a4,a6
  a2f838:	bda5                	j	a2f6b0 <LzmaDec_TryDummy+0x28e>
  a2f83a:	186d                	addi	a6,a6,-5
  a2f83c:	01000e37          	lui	t3,0x1000
  a2f840:	01c77963          	bgeu	a4,t3,a2f852 <LzmaDec_TryDummy+0x430>
  a2f844:	0315f963          	bgeu	a1,a7,a2f876 <LzmaDec_TryDummy+0x454>
  a2f848:	2194                	lbu	a3,0(a1)
  a2f84a:	0722                	slli	a4,a4,0x8
  a2f84c:	0585                	addi	a1,a1,1
  a2f84e:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f852:	8305                	srli	a4,a4,0x1
  a2f854:	40e786b3          	sub	a3,a5,a4
  a2f858:	82fd                	srli	a3,a3,0x1f
  a2f85a:	16fd                	addi	a3,a3,-1 # ffffff <_gp_+0x5cb537>
  a2f85c:	8ef9                	and	a3,a3,a4
  a2f85e:	187d                	addi	a6,a6,-1
  a2f860:	8f95                	sub	a5,a5,a3
  a2f862:	fc081fe3          	bnez	a6,a2f840 <LzmaDec_TryDummy+0x41e>
  a2f866:	4811                	li	a6,4
  a2f868:	bd9d                	j	a2f6de <LzmaDec_TryDummy+0x2bc>
  a2f86a:	8f15                	sub	a4,a4,a3
  a2f86c:	8f95                	sub	a5,a5,a3
  a2f86e:	9e7a                	add	t3,t3,t5
  a2f870:	b555                	j	a2f714 <LzmaDec_TryDummy+0x2f2>
  a2f872:	450d                	li	a0,3
  a2f874:	b15d                	j	a2f51a <LzmaDec_TryDummy+0xf8>
  a2f876:	4501                	li	a0,0
  a2f878:	8082                	ret

00a2f87a <LzmaDec_DecodeReal2>:
  a2f87a:	711d                	addi	sp,sp,-96
  a2f87c:	03010293          	addi	t0,sp,48
  a2f880:	7fe2960b          	stmia	{s0-s11},(t0)
  a2f884:	02c52d83          	lw	s11,44(a0) # 100002c <_gp_+0x5cb564>
  a2f888:	ce32                	sw	a2,28(sp)
  a2f88a:	8e2a                	mv	t3,a0
  a2f88c:	02852383          	lw	t2,40(a0)
  a2f890:	01852e83          	lw	t4,24(a0)
  a2f894:	000d9b63          	bnez	s11,a2f8aa <LzmaDec_DecodeReal2+0x30>
  a2f898:	415c                	lw	a5,4(a0)
  a2f89a:	41d58733          	sub	a4,a1,t4
  a2f89e:	407787b3          	sub	a5,a5,t2
  a2f8a2:	00e7f463          	bgeu	a5,a4,a2f8aa <LzmaDec_DecodeReal2+0x30>
  a2f8a6:	01d785b3          	add	a1,a5,t4
  a2f8aa:	000e4783          	lbu	a5,0(t3) # 1000000 <_gp_+0x5cb538>
  a2f8ae:	001e4703          	lbu	a4,1(t3)
  a2f8b2:	002e4603          	lbu	a2,2(t3)
  a2f8b6:	c63e                	sw	a5,12(sp)
  a2f8b8:	46b2                	lw	a3,12(sp)
  a2f8ba:	10000793          	li	a5,256
  a2f8be:	00e79733          	sll	a4,a5,a4
  a2f8c2:	00d7d7b3          	srl	a5,a5,a3
  a2f8c6:	56fd                	li	a3,-1
  a2f8c8:	00c696b3          	sll	a3,a3,a2
  a2f8cc:	fff6c693          	not	a3,a3
  a2f8d0:	cc36                	sw	a3,24(sp)
  a2f8d2:	800006b7          	lui	a3,0x80000
  a2f8d6:	00ce2f83          	lw	t6,12(t3)
  a2f8da:	f006c693          	xori	a3,a3,-256
  a2f8de:	d036                	sw	a3,32(sp)
  a2f8e0:	76fd                	lui	a3,0xfffff
  a2f8e2:	60068693          	addi	a3,a3,1536 # fffff600 <_gp_+0xff5cab38>
  a2f8e6:	014e2c83          	lw	s9,20(t3)
  a2f8ea:	40f707b3          	sub	a5,a4,a5
  a2f8ee:	c836                	sw	a3,16(sp)
  a2f8f0:	96fe                	add	a3,a3,t6
  a2f8f2:	ca3e                	sw	a5,20(sp)
  a2f8f4:	d236                	sw	a3,36(sp)
  a2f8f6:	040e2f03          	lw	t5,64(t3)
  a2f8fa:	a00f8693          	addi	a3,t6,-1536 # fffa00 <_gp_+0x5caf38>
  a2f8fe:	030e2283          	lw	t0,48(t3)
  a2f902:	034e2403          	lw	s0,52(t3)
  a2f906:	038e2983          	lw	s3,56(t3)
  a2f90a:	03ce2d03          	lw	s10,60(t3)
  a2f90e:	010e2a03          	lw	s4,16(t3)
  a2f912:	01ce2703          	lw	a4,28(t3)
  a2f916:	020e2903          	lw	s2,32(t3)
  a2f91a:	024e2783          	lw	a5,36(t3)
  a2f91e:	d436                	sw	a3,40(sp)
  a2f920:	fffc8693          	addi	a3,s9,-1 # fff <ccause+0x3d>
  a2f924:	4881                	li	a7,0
  a2f926:	01000637          	lui	a2,0x1000
  a2f92a:	0000 0800 081f      	l.li	a6,0x800
  a2f930:	d636                	sw	a3,44(sp)
  a2f932:	46e2                	lw	a3,24(sp)
  a2f934:	0076f533          	and	a0,a3,t2
  a2f938:	5682                	lw	a3,32(sp)
  a2f93a:	0512                	slli	a0,a0,0x4
  a2f93c:	01e504b3          	add	s1,a0,t5
  a2f940:	94b6                	add	s1,s1,a3
  a2f942:	0486                	slli	s1,s1,0x1
  a2f944:	009f8ab3          	add	s5,t6,s1
  a2f948:	000ad303          	lhu	t1,0(s5)
  a2f94c:	00c97763          	bgeu	s2,a2,a2f95a <LzmaDec_DecodeReal2+0xe0>
  a2f950:	2314                	lbu	a3,0(a4)
  a2f952:	0922                	slli	s2,s2,0x8
  a2f954:	0705                	addi	a4,a4,1 # fffff001 <_gp_+0xff5ca539>
  a2f956:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2f95a:	00b95693          	srli	a3,s2,0xb
  a2f95e:	026686b3          	mul	a3,a3,t1
  a2f962:	54d7fb63          	bgeu	a5,a3,a2feb8 <LzmaDec_DecodeReal2+0x63e>
  a2f966:	40680533          	sub	a0,a6,t1
  a2f96a:	4aa3031b          	addshf	t1,t1,a0,srl,5
  a2f96e:	006a9023          	sh	t1,0(s5)
  a2f972:	280f8513          	addi	a0,t6,640
  a2f976:	00039463          	bnez	t2,a2f97e <LzmaDec_DecodeReal2+0x104>
  a2f97a:	020d8563          	beqz	s11,a2f9a4 <LzmaDec_DecodeReal2+0x12a>
  a2f97e:	00839493          	slli	s1,t2,0x8
  a2f982:	fffe8313          	addi	t1,t4,-1 # ffffff <_gp_+0x5cb537>
  a2f986:	000e9363          	bnez	t4,a2f98c <LzmaDec_DecodeReal2+0x112>
  a2f98a:	5332                	lw	t1,44(sp)
  a2f98c:	9352                	add	t1,t1,s4
  a2f98e:	00034303          	lbu	t1,0(t1)
  a2f992:	9326                	add	t1,t1,s1
  a2f994:	44d2                	lw	s1,20(sp)
  a2f996:	00937333          	and	t1,t1,s1
  a2f99a:	44b2                	lw	s1,12(sp)
  a2f99c:	00931333          	sll	t1,t1,s1
  a2f9a0:	0665155b          	muliadd	a0,a0,t1,6
  a2f9a4:	0385                	addi	t2,t2,1
  a2f9a6:	431d                	li	t1,7
  a2f9a8:	246f7163          	bgeu	t5,t1,a2fbea <LzmaDec_DecodeReal2+0x370>
  a2f9ac:	448d                	li	s1,3
  a2f9ae:	837a                	mv	t1,t5
  a2f9b0:	01e4f363          	bgeu	s1,t5,a2f9b6 <LzmaDec_DecodeReal2+0x13c>
  a2f9b4:	430d                	li	t1,3
  a2f9b6:	406f0f33          	sub	t5,t5,t1
  a2f9ba:	00255303          	lhu	t1,2(a0)
  a2f9be:	00c6f763          	bgeu	a3,a2,a2f9cc <LzmaDec_DecodeReal2+0x152>
  a2f9c2:	2304                	lbu	s1,0(a4)
  a2f9c4:	06a2                	slli	a3,a3,0x8
  a2f9c6:	0705                	addi	a4,a4,1
  a2f9c8:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2f9cc:	00b6d493          	srli	s1,a3,0xb
  a2f9d0:	026484b3          	mul	s1,s1,t1
  a2f9d4:	1697ff63          	bgeu	a5,s1,a2fb52 <LzmaDec_DecodeReal2+0x2d8>
  a2f9d8:	406806b3          	sub	a3,a6,t1
  a2f9dc:	4ad3031b          	addshf	t1,t1,a3,srl,5
  a2f9e0:	00651123          	sh	t1,2(a0)
  a2f9e4:	4689                	li	a3,2
  a2f9e6:	0686                	slli	a3,a3,0x1
  a2f9e8:	00d50ab3          	add	s5,a0,a3
  a2f9ec:	000ad903          	lhu	s2,0(s5)
  a2f9f0:	00c4f863          	bgeu	s1,a2,a2fa00 <LzmaDec_DecodeReal2+0x186>
  a2f9f4:	00074303          	lbu	t1,0(a4)
  a2f9f8:	04a2                	slli	s1,s1,0x8
  a2f9fa:	0705                	addi	a4,a4,1
  a2f9fc:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fa00:	00b4d313          	srli	t1,s1,0xb
  a2fa04:	03230333          	mul	t1,t1,s2
  a2fa08:	1467fe63          	bgeu	a5,t1,a2fb64 <LzmaDec_DecodeReal2+0x2ea>
  a2fa0c:	412804b3          	sub	s1,a6,s2
  a2fa10:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2fa14:	012a9023          	sh	s2,0(s5)
  a2fa18:	0686                	slli	a3,a3,0x1
  a2fa1a:	00d50ab3          	add	s5,a0,a3
  a2fa1e:	000ad903          	lhu	s2,0(s5)
  a2fa22:	00c37763          	bgeu	t1,a2,a2fa30 <LzmaDec_DecodeReal2+0x1b6>
  a2fa26:	2304                	lbu	s1,0(a4)
  a2fa28:	0322                	slli	t1,t1,0x8
  a2fa2a:	0705                	addi	a4,a4,1
  a2fa2c:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fa30:	00b35493          	srli	s1,t1,0xb
  a2fa34:	032484b3          	mul	s1,s1,s2
  a2fa38:	1497f063          	bgeu	a5,s1,a2fb78 <LzmaDec_DecodeReal2+0x2fe>
  a2fa3c:	41280333          	sub	t1,a6,s2
  a2fa40:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2fa44:	012a9023          	sh	s2,0(s5)
  a2fa48:	0686                	slli	a3,a3,0x1
  a2fa4a:	00d50ab3          	add	s5,a0,a3
  a2fa4e:	000ad903          	lhu	s2,0(s5)
  a2fa52:	00c4f863          	bgeu	s1,a2,a2fa62 <LzmaDec_DecodeReal2+0x1e8>
  a2fa56:	00074303          	lbu	t1,0(a4)
  a2fa5a:	04a2                	slli	s1,s1,0x8
  a2fa5c:	0705                	addi	a4,a4,1
  a2fa5e:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fa62:	00b4d313          	srli	t1,s1,0xb
  a2fa66:	03230333          	mul	t1,t1,s2
  a2fa6a:	1267f063          	bgeu	a5,t1,a2fb8a <LzmaDec_DecodeReal2+0x310>
  a2fa6e:	412804b3          	sub	s1,a6,s2
  a2fa72:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2fa76:	012a9023          	sh	s2,0(s5)
  a2fa7a:	0686                	slli	a3,a3,0x1
  a2fa7c:	00d50ab3          	add	s5,a0,a3
  a2fa80:	000ad903          	lhu	s2,0(s5)
  a2fa84:	00c37763          	bgeu	t1,a2,a2fa92 <LzmaDec_DecodeReal2+0x218>
  a2fa88:	2304                	lbu	s1,0(a4)
  a2fa8a:	0322                	slli	t1,t1,0x8
  a2fa8c:	0705                	addi	a4,a4,1
  a2fa8e:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fa92:	00b35493          	srli	s1,t1,0xb
  a2fa96:	032484b3          	mul	s1,s1,s2
  a2fa9a:	1097f263          	bgeu	a5,s1,a2fb9e <LzmaDec_DecodeReal2+0x324>
  a2fa9e:	41280333          	sub	t1,a6,s2
  a2faa2:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2faa6:	012a9023          	sh	s2,0(s5)
  a2faaa:	0686                	slli	a3,a3,0x1
  a2faac:	00d50ab3          	add	s5,a0,a3
  a2fab0:	000ad903          	lhu	s2,0(s5)
  a2fab4:	00c4f863          	bgeu	s1,a2,a2fac4 <LzmaDec_DecodeReal2+0x24a>
  a2fab8:	00074303          	lbu	t1,0(a4)
  a2fabc:	04a2                	slli	s1,s1,0x8
  a2fabe:	0705                	addi	a4,a4,1
  a2fac0:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fac4:	00b4d313          	srli	t1,s1,0xb
  a2fac8:	03230333          	mul	t1,t1,s2
  a2facc:	0e67f263          	bgeu	a5,t1,a2fbb0 <LzmaDec_DecodeReal2+0x336>
  a2fad0:	412804b3          	sub	s1,a6,s2
  a2fad4:	4a99091b          	addshf	s2,s2,s1,srl,5
  a2fad8:	012a9023          	sh	s2,0(s5)
  a2fadc:	0686                	slli	a3,a3,0x1
  a2fade:	00d50ab3          	add	s5,a0,a3
  a2fae2:	000ad903          	lhu	s2,0(s5)
  a2fae6:	00c37763          	bgeu	t1,a2,a2faf4 <LzmaDec_DecodeReal2+0x27a>
  a2faea:	2304                	lbu	s1,0(a4)
  a2faec:	0322                	slli	t1,t1,0x8
  a2faee:	0705                	addi	a4,a4,1
  a2faf0:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2faf4:	00b35493          	srli	s1,t1,0xb
  a2faf8:	032484b3          	mul	s1,s1,s2
  a2fafc:	0c97f463          	bgeu	a5,s1,a2fbc4 <LzmaDec_DecodeReal2+0x34a>
  a2fb00:	41280333          	sub	t1,a6,s2
  a2fb04:	4a69091b          	addshf	s2,s2,t1,srl,5
  a2fb08:	012a9023          	sh	s2,0(s5)
  a2fb0c:	0686                	slli	a3,a3,0x1
  a2fb0e:	9536                	add	a0,a0,a3
  a2fb10:	00055a83          	lhu	s5,0(a0)
  a2fb14:	00c4f863          	bgeu	s1,a2,a2fb24 <LzmaDec_DecodeReal2+0x2aa>
  a2fb18:	00074303          	lbu	t1,0(a4)
  a2fb1c:	04a2                	slli	s1,s1,0x8
  a2fb1e:	0705                	addi	a4,a4,1
  a2fb20:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2fb24:	00b4d913          	srli	s2,s1,0xb
  a2fb28:	03590933          	mul	s2,s2,s5
  a2fb2c:	0b27f563          	bgeu	a5,s2,a2fbd6 <LzmaDec_DecodeReal2+0x35c>
  a2fb30:	41580333          	sub	t1,a6,s5
  a2fb34:	4a6a8a9b          	addshf	s5,s5,t1,srl,5
  a2fb38:	01551023          	sh	s5,0(a0)
  a2fb3c:	01da0533          	add	a0,s4,t4
  a2fb40:	a114                	sb	a3,0(a0)
  a2fb42:	0e85                	addi	t4,t4,1
  a2fb44:	30bef9e3          	bgeu	t4,a1,a30656 <LzmaDec_DecodeReal2+0xddc>
  a2fb48:	46f2                	lw	a3,28(sp)
  a2fb4a:	ded764e3          	bltu	a4,a3,a2f932 <LzmaDec_DecodeReal2+0xb8>
  a2fb4e:	3090006f          	j	a30656 <LzmaDec_DecodeReal2+0xddc>
  a2fb52:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2fb56:	8f85                	sub	a5,a5,s1
  a2fb58:	00651123          	sh	t1,2(a0)
  a2fb5c:	409684b3          	sub	s1,a3,s1
  a2fb60:	468d                	li	a3,3
  a2fb62:	b551                	j	a2f9e6 <LzmaDec_DecodeReal2+0x16c>
  a2fb64:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fb68:	406787b3          	sub	a5,a5,t1
  a2fb6c:	012a9023          	sh	s2,0(s5)
  a2fb70:	0685                	addi	a3,a3,1
  a2fb72:	40648333          	sub	t1,s1,t1
  a2fb76:	b54d                	j	a2fa18 <LzmaDec_DecodeReal2+0x19e>
  a2fb78:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fb7c:	8f85                	sub	a5,a5,s1
  a2fb7e:	012a9023          	sh	s2,0(s5)
  a2fb82:	0685                	addi	a3,a3,1
  a2fb84:	409304b3          	sub	s1,t1,s1
  a2fb88:	b5c1                	j	a2fa48 <LzmaDec_DecodeReal2+0x1ce>
  a2fb8a:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fb8e:	406787b3          	sub	a5,a5,t1
  a2fb92:	012a9023          	sh	s2,0(s5)
  a2fb96:	0685                	addi	a3,a3,1
  a2fb98:	40648333          	sub	t1,s1,t1
  a2fb9c:	bdf9                	j	a2fa7a <LzmaDec_DecodeReal2+0x200>
  a2fb9e:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fba2:	8f85                	sub	a5,a5,s1
  a2fba4:	012a9023          	sh	s2,0(s5)
  a2fba8:	0685                	addi	a3,a3,1
  a2fbaa:	409304b3          	sub	s1,t1,s1
  a2fbae:	bdf5                	j	a2faaa <LzmaDec_DecodeReal2+0x230>
  a2fbb0:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fbb4:	406787b3          	sub	a5,a5,t1
  a2fbb8:	012a9023          	sh	s2,0(s5)
  a2fbbc:	0685                	addi	a3,a3,1
  a2fbbe:	40648333          	sub	t1,s1,t1
  a2fbc2:	bf29                	j	a2fadc <LzmaDec_DecodeReal2+0x262>
  a2fbc4:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fbc8:	8f85                	sub	a5,a5,s1
  a2fbca:	012a9023          	sh	s2,0(s5)
  a2fbce:	0685                	addi	a3,a3,1
  a2fbd0:	409304b3          	sub	s1,t1,s1
  a2fbd4:	bf25                	j	a2fb0c <LzmaDec_DecodeReal2+0x292>
  a2fbd6:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a2fbda:	412787b3          	sub	a5,a5,s2
  a2fbde:	01551023          	sh	s5,0(a0)
  a2fbe2:	0685                	addi	a3,a3,1
  a2fbe4:	41248933          	sub	s2,s1,s2
  a2fbe8:	bf91                	j	a2fb3c <LzmaDec_DecodeReal2+0x2c2>
  a2fbea:	405e8333          	sub	t1,t4,t0
  a2fbee:	4481                	li	s1,0
  a2fbf0:	005ef363          	bgeu	t4,t0,a2fbf6 <LzmaDec_DecodeReal2+0x37c>
  a2fbf4:	84e6                	mv	s1,s9
  a2fbf6:	9352                	add	t1,t1,s4
  a2fbf8:	9326                	add	t1,t1,s1
  a2fbfa:	00034303          	lbu	t1,0(t1)
  a2fbfe:	4499                	li	s1,6
  a2fc00:	0a0f71bb          	bgeui	t5,10,a2fc06 <LzmaDec_DecodeReal2+0x38c>
  a2fc04:	448d                	li	s1,3
  a2fc06:	0306                	slli	t1,t1,0x1
  a2fc08:	10037b93          	andi	s7,t1,256
  a2fc0c:	101b8a93          	addi	s5,s7,257
  a2fc10:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fc14:	409f0f33          	sub	t5,t5,s1
  a2fc18:	000ad903          	lhu	s2,0(s5)
  a2fc1c:	00c6f763          	bgeu	a3,a2,a2fc2a <LzmaDec_DecodeReal2+0x3b0>
  a2fc20:	2304                	lbu	s1,0(a4)
  a2fc22:	06a2                	slli	a3,a3,0x8
  a2fc24:	0705                	addi	a4,a4,1
  a2fc26:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fc2a:	00b6d493          	srli	s1,a3,0xb
  a2fc2e:	032484b3          	mul	s1,s1,s2
  a2fc32:	1e97fa63          	bgeu	a5,s1,a2fe26 <LzmaDec_DecodeReal2+0x5ac>
  a2fc36:	412806b3          	sub	a3,a6,s2
  a2fc3a:	4ad9091b          	addshf	s2,s2,a3,srl,5
  a2fc3e:	fff34b93          	not	s7,t1
  a2fc42:	012a9023          	sh	s2,0(s5)
  a2fc46:	100bfb93          	andi	s7,s7,256
  a2fc4a:	4689                	li	a3,2
  a2fc4c:	0306                	slli	t1,t1,0x1
  a2fc4e:	01737c33          	and	s8,t1,s7
  a2fc52:	00db8ab3          	add	s5,s7,a3
  a2fc56:	9ae2                	add	s5,s5,s8
  a2fc58:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fc5c:	000adb03          	lhu	s6,0(s5)
  a2fc60:	00c4f863          	bgeu	s1,a2,a2fc70 <LzmaDec_DecodeReal2+0x3f6>
  a2fc64:	00074903          	lbu	s2,0(a4)
  a2fc68:	04a2                	slli	s1,s1,0x8
  a2fc6a:	0705                	addi	a4,a4,1
  a2fc6c:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fc70:	00b4d913          	srli	s2,s1,0xb
  a2fc74:	03690933          	mul	s2,s2,s6
  a2fc78:	0686                	slli	a3,a3,0x1
  a2fc7a:	1b27ff63          	bgeu	a5,s2,a2fe38 <LzmaDec_DecodeReal2+0x5be>
  a2fc7e:	416804b3          	sub	s1,a6,s6
  a2fc82:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fc86:	fff34c13          	not	s8,t1
  a2fc8a:	016a9023          	sh	s6,0(s5)
  a2fc8e:	017c7c33          	and	s8,s8,s7
  a2fc92:	0306                	slli	t1,t1,0x1
  a2fc94:	01837bb3          	and	s7,t1,s8
  a2fc98:	00dc0ab3          	add	s5,s8,a3
  a2fc9c:	9ade                	add	s5,s5,s7
  a2fc9e:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fca2:	000adb03          	lhu	s6,0(s5)
  a2fca6:	00c97763          	bgeu	s2,a2,a2fcb4 <LzmaDec_DecodeReal2+0x43a>
  a2fcaa:	2304                	lbu	s1,0(a4)
  a2fcac:	0922                	slli	s2,s2,0x8
  a2fcae:	0705                	addi	a4,a4,1
  a2fcb0:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fcb4:	00b95493          	srli	s1,s2,0xb
  a2fcb8:	036484b3          	mul	s1,s1,s6
  a2fcbc:	0686                	slli	a3,a3,0x1
  a2fcbe:	1897f763          	bgeu	a5,s1,a2fe4c <LzmaDec_DecodeReal2+0x5d2>
  a2fcc2:	41680933          	sub	s2,a6,s6
  a2fcc6:	4b2b0b1b          	addshf	s6,s6,s2,srl,5
  a2fcca:	fff34b93          	not	s7,t1
  a2fcce:	016a9023          	sh	s6,0(s5)
  a2fcd2:	018bfbb3          	and	s7,s7,s8
  a2fcd6:	0306                	slli	t1,t1,0x1
  a2fcd8:	01737c33          	and	s8,t1,s7
  a2fcdc:	00db8ab3          	add	s5,s7,a3
  a2fce0:	9ae2                	add	s5,s5,s8
  a2fce2:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fce6:	000adb03          	lhu	s6,0(s5)
  a2fcea:	00c4f863          	bgeu	s1,a2,a2fcfa <LzmaDec_DecodeReal2+0x480>
  a2fcee:	00074903          	lbu	s2,0(a4)
  a2fcf2:	04a2                	slli	s1,s1,0x8
  a2fcf4:	0705                	addi	a4,a4,1
  a2fcf6:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fcfa:	00b4d913          	srli	s2,s1,0xb
  a2fcfe:	03690933          	mul	s2,s2,s6
  a2fd02:	0686                	slli	a3,a3,0x1
  a2fd04:	1527fd63          	bgeu	a5,s2,a2fe5e <LzmaDec_DecodeReal2+0x5e4>
  a2fd08:	416804b3          	sub	s1,a6,s6
  a2fd0c:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fd10:	fff34c13          	not	s8,t1
  a2fd14:	016a9023          	sh	s6,0(s5)
  a2fd18:	017c7c33          	and	s8,s8,s7
  a2fd1c:	0306                	slli	t1,t1,0x1
  a2fd1e:	01837bb3          	and	s7,t1,s8
  a2fd22:	00dc0ab3          	add	s5,s8,a3
  a2fd26:	9ade                	add	s5,s5,s7
  a2fd28:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fd2c:	000adb03          	lhu	s6,0(s5)
  a2fd30:	00c97763          	bgeu	s2,a2,a2fd3e <LzmaDec_DecodeReal2+0x4c4>
  a2fd34:	2304                	lbu	s1,0(a4)
  a2fd36:	0922                	slli	s2,s2,0x8
  a2fd38:	0705                	addi	a4,a4,1
  a2fd3a:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fd3e:	00b95493          	srli	s1,s2,0xb
  a2fd42:	036484b3          	mul	s1,s1,s6
  a2fd46:	0686                	slli	a3,a3,0x1
  a2fd48:	1297f563          	bgeu	a5,s1,a2fe72 <LzmaDec_DecodeReal2+0x5f8>
  a2fd4c:	41680933          	sub	s2,a6,s6
  a2fd50:	4b2b0b1b          	addshf	s6,s6,s2,srl,5
  a2fd54:	fff34b93          	not	s7,t1
  a2fd58:	016a9023          	sh	s6,0(s5)
  a2fd5c:	018bfbb3          	and	s7,s7,s8
  a2fd60:	0306                	slli	t1,t1,0x1
  a2fd62:	01737c33          	and	s8,t1,s7
  a2fd66:	00db8ab3          	add	s5,s7,a3
  a2fd6a:	9ae2                	add	s5,s5,s8
  a2fd6c:	03550a9b          	addshf	s5,a0,s5,sll,1
  a2fd70:	000adb03          	lhu	s6,0(s5)
  a2fd74:	00c4f863          	bgeu	s1,a2,a2fd84 <LzmaDec_DecodeReal2+0x50a>
  a2fd78:	00074903          	lbu	s2,0(a4)
  a2fd7c:	04a2                	slli	s1,s1,0x8
  a2fd7e:	0705                	addi	a4,a4,1
  a2fd80:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fd84:	00b4d913          	srli	s2,s1,0xb
  a2fd88:	03690933          	mul	s2,s2,s6
  a2fd8c:	0686                	slli	a3,a3,0x1
  a2fd8e:	0f27fb63          	bgeu	a5,s2,a2fe84 <LzmaDec_DecodeReal2+0x60a>
  a2fd92:	416804b3          	sub	s1,a6,s6
  a2fd96:	4a9b0b1b          	addshf	s6,s6,s1,srl,5
  a2fd9a:	fff34c13          	not	s8,t1
  a2fd9e:	016a9023          	sh	s6,0(s5)
  a2fda2:	017c7c33          	and	s8,s8,s7
  a2fda6:	0306                	slli	t1,t1,0x1
  a2fda8:	01837ab3          	and	s5,t1,s8
  a2fdac:	00dc0b33          	add	s6,s8,a3
  a2fdb0:	9b56                	add	s6,s6,s5
  a2fdb2:	03650b1b          	addshf	s6,a0,s6,sll,1
  a2fdb6:	000b5b83          	lhu	s7,0(s6) # 1000 <ccause+0x3e>
  a2fdba:	00c97763          	bgeu	s2,a2,a2fdc8 <LzmaDec_DecodeReal2+0x54e>
  a2fdbe:	2304                	lbu	s1,0(a4)
  a2fdc0:	0922                	slli	s2,s2,0x8
  a2fdc2:	0705                	addi	a4,a4,1
  a2fdc4:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a2fdc8:	00b95493          	srli	s1,s2,0xb
  a2fdcc:	037484b3          	mul	s1,s1,s7
  a2fdd0:	0686                	slli	a3,a3,0x1
  a2fdd2:	0c97f363          	bgeu	a5,s1,a2fe98 <LzmaDec_DecodeReal2+0x61e>
  a2fdd6:	41780933          	sub	s2,a6,s7
  a2fdda:	4b2b8b9b          	addshf	s7,s7,s2,srl,5
  a2fdde:	fff34a93          	not	s5,t1
  a2fde2:	017b1023          	sh	s7,0(s6)
  a2fde6:	018afab3          	and	s5,s5,s8
  a2fdea:	026ac31b          	andshf	t1,s5,t1,sll,1
  a2fdee:	9ab6                	add	s5,s5,a3
  a2fdf0:	9356                	add	t1,t1,s5
  a2fdf2:	0265051b          	addshf	a0,a0,t1,sll,1
  a2fdf6:	00055303          	lhu	t1,0(a0)
  a2fdfa:	00c4f863          	bgeu	s1,a2,a2fe0a <LzmaDec_DecodeReal2+0x590>
  a2fdfe:	00074903          	lbu	s2,0(a4)
  a2fe02:	04a2                	slli	s1,s1,0x8
  a2fe04:	0705                	addi	a4,a4,1
  a2fe06:	10f9279b          	orshf	a5,s2,a5,sll,8
  a2fe0a:	00b4d913          	srli	s2,s1,0xb
  a2fe0e:	02690933          	mul	s2,s2,t1
  a2fe12:	0686                	slli	a3,a3,0x1
  a2fe14:	0927fb63          	bgeu	a5,s2,a2feaa <LzmaDec_DecodeReal2+0x630>
  a2fe18:	406804b3          	sub	s1,a6,t1
  a2fe1c:	4a93031b          	addshf	t1,t1,s1,srl,5
  a2fe20:	00651023          	sh	t1,0(a0)
  a2fe24:	bb21                	j	a2fb3c <LzmaDec_DecodeReal2+0x2c2>
  a2fe26:	4b29191b          	subshf	s2,s2,s2,srl,5
  a2fe2a:	8f85                	sub	a5,a5,s1
  a2fe2c:	012a9023          	sh	s2,0(s5)
  a2fe30:	409684b3          	sub	s1,a3,s1
  a2fe34:	468d                	li	a3,3
  a2fe36:	bd19                	j	a2fc4c <LzmaDec_DecodeReal2+0x3d2>
  a2fe38:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fe3c:	412787b3          	sub	a5,a5,s2
  a2fe40:	016a9023          	sh	s6,0(s5)
  a2fe44:	0685                	addi	a3,a3,1
  a2fe46:	41248933          	sub	s2,s1,s2
  a2fe4a:	b5a1                	j	a2fc92 <LzmaDec_DecodeReal2+0x418>
  a2fe4c:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fe50:	8f85                	sub	a5,a5,s1
  a2fe52:	016a9023          	sh	s6,0(s5)
  a2fe56:	0685                	addi	a3,a3,1
  a2fe58:	409904b3          	sub	s1,s2,s1
  a2fe5c:	bdad                	j	a2fcd6 <LzmaDec_DecodeReal2+0x45c>
  a2fe5e:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fe62:	412787b3          	sub	a5,a5,s2
  a2fe66:	016a9023          	sh	s6,0(s5)
  a2fe6a:	0685                	addi	a3,a3,1
  a2fe6c:	41248933          	sub	s2,s1,s2
  a2fe70:	b575                	j	a2fd1c <LzmaDec_DecodeReal2+0x4a2>
  a2fe72:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fe76:	8f85                	sub	a5,a5,s1
  a2fe78:	016a9023          	sh	s6,0(s5)
  a2fe7c:	0685                	addi	a3,a3,1
  a2fe7e:	409904b3          	sub	s1,s2,s1
  a2fe82:	bdf9                	j	a2fd60 <LzmaDec_DecodeReal2+0x4e6>
  a2fe84:	4b6b1b1b          	subshf	s6,s6,s6,srl,5
  a2fe88:	412787b3          	sub	a5,a5,s2
  a2fe8c:	016a9023          	sh	s6,0(s5)
  a2fe90:	0685                	addi	a3,a3,1
  a2fe92:	41248933          	sub	s2,s1,s2
  a2fe96:	bf01                	j	a2fda6 <LzmaDec_DecodeReal2+0x52c>
  a2fe98:	4b7b9b9b          	subshf	s7,s7,s7,srl,5
  a2fe9c:	8f85                	sub	a5,a5,s1
  a2fe9e:	017b1023          	sh	s7,0(s6)
  a2fea2:	0685                	addi	a3,a3,1
  a2fea4:	409904b3          	sub	s1,s2,s1
  a2fea8:	b789                	j	a2fdea <LzmaDec_DecodeReal2+0x570>
  a2feaa:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2feae:	412787b3          	sub	a5,a5,s2
  a2feb2:	00651023          	sh	t1,0(a0)
  a2feb6:	b335                	j	a2fbe2 <LzmaDec_DecodeReal2+0x368>
  a2feb8:	4a63131b          	subshf	t1,t1,t1,srl,5
  a2febc:	006a9023          	sh	t1,0(s5)
  a2fec0:	010f0313          	addi	t1,t5,16
  a2fec4:	0306                	slli	t1,t1,0x1
  a2fec6:	006f8b33          	add	s6,t6,t1
  a2feca:	40d90933          	sub	s2,s2,a3
  a2fece:	8f95                	sub	a5,a5,a3
  a2fed0:	000b5a83          	lhu	s5,0(s6)
  a2fed4:	00c97763          	bgeu	s2,a2,a2fee2 <LzmaDec_DecodeReal2+0x668>
  a2fed8:	2314                	lbu	a3,0(a4)
  a2feda:	0922                	slli	s2,s2,0x8
  a2fedc:	0705                	addi	a4,a4,1
  a2fede:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a2fee2:	00b95693          	srli	a3,s2,0xb
  a2fee6:	035686b3          	mul	a3,a3,s5
  a2feea:	12d7f363          	bgeu	a5,a3,a30010 <LzmaDec_DecodeReal2+0x796>
  a2feee:	415808b3          	sub	a7,a6,s5
  a2fef2:	5322                	lw	t1,40(sp)
  a2fef4:	4b1a8a9b          	addshf	s5,s5,a7,srl,5
  a2fef8:	015b1023          	sh	s5,0(s6)
  a2fefc:	0f31                	addi	t5,t5,12
  a2fefe:	00035483          	lhu	s1,0(t1)
  a2ff02:	00c6f863          	bgeu	a3,a2,a2ff12 <LzmaDec_DecodeReal2+0x698>
  a2ff06:	00074883          	lbu	a7,0(a4)
  a2ff0a:	06a2                	slli	a3,a3,0x8
  a2ff0c:	0705                	addi	a4,a4,1
  a2ff0e:	10f8a79b          	orshf	a5,a7,a5,sll,8
  a2ff12:	00b6d893          	srli	a7,a3,0xb
  a2ff16:	029888b3          	mul	a7,a7,s1
  a2ff1a:	2917f463          	bgeu	a5,a7,a301a2 <LzmaDec_DecodeReal2+0x928>
  a2ff1e:	409806b3          	sub	a3,a6,s1
  a2ff22:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a2ff26:	00931023          	sh	s1,0(t1)
  a2ff2a:	02a3051b          	addshf	a0,t1,a0,sll,1
  a2ff2e:	2136                	lhu	a3,2(a0)
  a2ff30:	00c8f863          	bgeu	a7,a2,a2ff40 <LzmaDec_DecodeReal2+0x6c6>
  a2ff34:	00074303          	lbu	t1,0(a4)
  a2ff38:	08a2                	slli	a7,a7,0x8
  a2ff3a:	0705                	addi	a4,a4,1
  a2ff3c:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2ff40:	00b8d493          	srli	s1,a7,0xb
  a2ff44:	02d484b3          	mul	s1,s1,a3
  a2ff48:	2297f263          	bgeu	a5,s1,a3016c <LzmaDec_DecodeReal2+0x8f2>
  a2ff4c:	40d808b3          	sub	a7,a6,a3
  a2ff50:	4b16869b          	addshf	a3,a3,a7,srl,5
  a2ff54:	a136                	sh	a3,2(a0)
  a2ff56:	4689                	li	a3,2
  a2ff58:	0686                	slli	a3,a3,0x1
  a2ff5a:	00d50933          	add	s2,a0,a3
  a2ff5e:	00095303          	lhu	t1,0(s2)
  a2ff62:	00c4f863          	bgeu	s1,a2,a2ff72 <LzmaDec_DecodeReal2+0x6f8>
  a2ff66:	00074883          	lbu	a7,0(a4)
  a2ff6a:	04a2                	slli	s1,s1,0x8
  a2ff6c:	0705                	addi	a4,a4,1
  a2ff6e:	10f8a79b          	orshf	a5,a7,a5,sll,8
  a2ff72:	00b4d893          	srli	a7,s1,0xb
  a2ff76:	026888b3          	mul	a7,a7,t1
  a2ff7a:	2117f163          	bgeu	a5,a7,a3017c <LzmaDec_DecodeReal2+0x902>
  a2ff7e:	406804b3          	sub	s1,a6,t1
  a2ff82:	4a93031b          	addshf	t1,t1,s1,srl,5
  a2ff86:	00691023          	sh	t1,0(s2)
  a2ff8a:	0686                	slli	a3,a3,0x1
  a2ff8c:	9536                	add	a0,a0,a3
  a2ff8e:	2106                	lhu	s1,0(a0)
  a2ff90:	00c8f863          	bgeu	a7,a2,a2ffa0 <LzmaDec_DecodeReal2+0x726>
  a2ff94:	00074303          	lbu	t1,0(a4)
  a2ff98:	08a2                	slli	a7,a7,0x8
  a2ff9a:	0705                	addi	a4,a4,1
  a2ff9c:	10f3279b          	orshf	a5,t1,a5,sll,8
  a2ffa0:	00b8d913          	srli	s2,a7,0xb
  a2ffa4:	02990933          	mul	s2,s2,s1
  a2ffa8:	1f27f463          	bgeu	a5,s2,a30190 <LzmaDec_DecodeReal2+0x916>
  a2ffac:	409808b3          	sub	a7,a6,s1
  a2ffb0:	4b14849b          	addshf	s1,s1,a7,srl,5
  a2ffb4:	a106                	sh	s1,0(a0)
  a2ffb6:	452d                	li	a0,11
  a2ffb8:	ff868893          	addi	a7,a3,-8
  a2ffbc:	35e56a63          	bltu	a0,t5,a30310 <LzmaDec_DecodeReal2+0xa96>
  a2ffc0:	41d586b3          	sub	a3,a1,t4
  a2ffc4:	0889                	addi	a7,a7,2
  a2ffc6:	68068863          	beqz	a3,a30656 <LzmaDec_DecodeReal2+0xddc>
  a2ffca:	8546                	mv	a0,a7
  a2ffcc:	0116f363          	bgeu	a3,a7,a2ffd2 <LzmaDec_DecodeReal2+0x758>
  a2ffd0:	8536                	mv	a0,a3
  a2ffd2:	405e8333          	sub	t1,t4,t0
  a2ffd6:	4681                	li	a3,0
  a2ffd8:	005ef363          	bgeu	t4,t0,a2ffde <LzmaDec_DecodeReal2+0x764>
  a2ffdc:	86e6                	mv	a3,s9
  a2ffde:	969a                	add	a3,a3,t1
  a2ffe0:	40dc8333          	sub	t1,s9,a3
  a2ffe4:	93aa                	add	t2,t2,a0
  a2ffe6:	40a888b3          	sub	a7,a7,a0
  a2ffea:	00ae84b3          	add	s1,t4,a0
  a2ffee:	72a36263          	bltu	t1,a0,a30712 <LzmaDec_DecodeReal2+0xe98>
  a2fff2:	01da0333          	add	t1,s4,t4
  a2fff6:	41d686b3          	sub	a3,a3,t4
  a2fffa:	951a                	add	a0,a0,t1
  a2fffc:	8ea6                	mv	t4,s1
  a2fffe:	00d304b3          	add	s1,t1,a3
  a30002:	2084                	lbu	s1,0(s1)
  a30004:	0305                	addi	t1,t1,1
  a30006:	fe930fa3          	sb	s1,-1(t1)
  a3000a:	fe651ae3          	bne	a0,t1,a2fffe <LzmaDec_DecodeReal2+0x784>
  a3000e:	be1d                	j	a2fb44 <LzmaDec_DecodeReal2+0x2ca>
  a30010:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a30014:	015b1023          	sh	s5,0(s6)
  a30018:	01830b13          	addi	s6,t1,24
  a3001c:	9b7e                	add	s6,s6,t6
  a3001e:	40d90933          	sub	s2,s2,a3
  a30022:	8f95                	sub	a5,a5,a3
  a30024:	000b5a83          	lhu	s5,0(s6)
  a30028:	00c97763          	bgeu	s2,a2,a30036 <LzmaDec_DecodeReal2+0x7bc>
  a3002c:	2314                	lbu	a3,0(a4)
  a3002e:	0922                	slli	s2,s2,0x8
  a30030:	0705                	addi	a4,a4,1
  a30032:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30036:	00b95693          	srli	a3,s2,0xb
  a3003a:	035686b3          	mul	a3,a3,s5
  a3003e:	08d7f763          	bgeu	a5,a3,a300cc <LzmaDec_DecodeReal2+0x852>
  a30042:	41580333          	sub	t1,a6,s5
  a30046:	4a6a8a9b          	addshf	s5,s5,t1,srl,5
  a3004a:	4342                	lw	t1,16(sp)
  a3004c:	015b1023          	sh	s5,0(s6)
  a30050:	949a                	add	s1,s1,t1
  a30052:	94fe                	add	s1,s1,t6
  a30054:	0004d303          	lhu	t1,0(s1)
  a30058:	00c6f863          	bgeu	a3,a2,a30068 <LzmaDec_DecodeReal2+0x7ee>
  a3005c:	00074903          	lbu	s2,0(a4)
  a30060:	06a2                	slli	a3,a3,0x8
  a30062:	0705                	addi	a4,a4,1
  a30064:	10f9279b          	orshf	a5,s2,a5,sll,8
  a30068:	00b6d913          	srli	s2,a3,0xb
  a3006c:	02690933          	mul	s2,s2,t1
  a30070:	0327fb63          	bgeu	a5,s2,a300a6 <LzmaDec_DecodeReal2+0x82c>
  a30074:	406806b3          	sub	a3,a6,t1
  a30078:	4ad3031b          	addshf	t1,t1,a3,srl,5
  a3007c:	00649023          	sh	t1,0(s1)
  a30080:	405e86b3          	sub	a3,t4,t0
  a30084:	4501                	li	a0,0
  a30086:	005ef363          	bgeu	t4,t0,a3008c <LzmaDec_DecodeReal2+0x812>
  a3008a:	8566                	mv	a0,s9
  a3008c:	96d2                	add	a3,a3,s4
  a3008e:	96aa                	add	a3,a3,a0
  a30090:	2288                	lbu	a0,0(a3)
  a30092:	01da06b3          	add	a3,s4,t4
  a30096:	0385                	addi	t2,t2,1
  a30098:	a288                	sb	a0,0(a3)
  a3009a:	0e85                	addi	t4,t4,1
  a3009c:	469d                	li	a3,7
  a3009e:	68df7b63          	bgeu	t5,a3,a30734 <LzmaDec_DecodeReal2+0xeba>
  a300a2:	4f25                	li	t5,9
  a300a4:	b445                	j	a2fb44 <LzmaDec_DecodeReal2+0x2ca>
  a300a6:	88a2                	mv	a7,s0
  a300a8:	4a63131b          	subshf	t1,t1,t1,srl,5
  a300ac:	8416                	mv	s0,t0
  a300ae:	412686b3          	sub	a3,a3,s2
  a300b2:	412787b3          	sub	a5,a5,s2
  a300b6:	00649023          	sh	t1,0(s1)
  a300ba:	82c6                	mv	t0,a7
  a300bc:	072f7b3b          	bgeui	t5,7,a30168 <LzmaDec_DecodeReal2+0x8ee>
  a300c0:	4f21                	li	t5,8
  a300c2:	8896                	mv	a7,t0
  a300c4:	5312                	lw	t1,36(sp)
  a300c6:	82a2                	mv	t0,s0
  a300c8:	8446                	mv	s0,a7
  a300ca:	bd15                	j	a2fefe <LzmaDec_DecodeReal2+0x684>
  a300cc:	4b5a9a9b          	subshf	s5,s5,s5,srl,5
  a300d0:	03030493          	addi	s1,t1,48
  a300d4:	015b1023          	sh	s5,0(s6)
  a300d8:	94fe                	add	s1,s1,t6
  a300da:	40d90933          	sub	s2,s2,a3
  a300de:	8f95                	sub	a5,a5,a3
  a300e0:	0004d883          	lhu	a7,0(s1)
  a300e4:	00c97763          	bgeu	s2,a2,a300f2 <LzmaDec_DecodeReal2+0x878>
  a300e8:	2314                	lbu	a3,0(a4)
  a300ea:	0922                	slli	s2,s2,0x8
  a300ec:	0705                	addi	a4,a4,1
  a300ee:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a300f2:	00b95693          	srli	a3,s2,0xb
  a300f6:	031686b3          	mul	a3,a3,a7
  a300fa:	00d7f963          	bgeu	a5,a3,a3010c <LzmaDec_DecodeReal2+0x892>
  a300fe:	41180333          	sub	t1,a6,a7
  a30102:	4a68889b          	addshf	a7,a7,t1,srl,5
  a30106:	01149023          	sh	a7,0(s1)
  a3010a:	bf4d                	j	a300bc <LzmaDec_DecodeReal2+0x842>
  a3010c:	4b18989b          	subshf	a7,a7,a7,srl,5
  a30110:	04830313          	addi	t1,t1,72
  a30114:	01149023          	sh	a7,0(s1)
  a30118:	937e                	add	t1,t1,t6
  a3011a:	40d90933          	sub	s2,s2,a3
  a3011e:	8f95                	sub	a5,a5,a3
  a30120:	00035883          	lhu	a7,0(t1)
  a30124:	00c97763          	bgeu	s2,a2,a30132 <LzmaDec_DecodeReal2+0x8b8>
  a30128:	2314                	lbu	a3,0(a4)
  a3012a:	0922                	slli	s2,s2,0x8
  a3012c:	0705                	addi	a4,a4,1
  a3012e:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30132:	00b95693          	srli	a3,s2,0xb
  a30136:	031686b3          	mul	a3,a3,a7
  a3013a:	00d7fc63          	bgeu	a5,a3,a30152 <LzmaDec_DecodeReal2+0x8d8>
  a3013e:	411804b3          	sub	s1,a6,a7
  a30142:	4a98889b          	addshf	a7,a7,s1,srl,5
  a30146:	01131023          	sh	a7,0(t1)
  a3014a:	88a2                	mv	a7,s0
  a3014c:	844e                	mv	s0,s3
  a3014e:	89c6                	mv	s3,a7
  a30150:	b7b5                	j	a300bc <LzmaDec_DecodeReal2+0x842>
  a30152:	4b18989b          	subshf	a7,a7,a7,srl,5
  a30156:	8f95                	sub	a5,a5,a3
  a30158:	01131023          	sh	a7,0(t1)
  a3015c:	40d906b3          	sub	a3,s2,a3
  a30160:	88a2                	mv	a7,s0
  a30162:	846a                	mv	s0,s10
  a30164:	8d4e                	mv	s10,s3
  a30166:	b7e5                	j	a3014e <LzmaDec_DecodeReal2+0x8d4>
  a30168:	4f2d                	li	t5,11
  a3016a:	bfa1                	j	a300c2 <LzmaDec_DecodeReal2+0x848>
  a3016c:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a30170:	8f85                	sub	a5,a5,s1
  a30172:	a136                	sh	a3,2(a0)
  a30174:	409884b3          	sub	s1,a7,s1
  a30178:	468d                	li	a3,3
  a3017a:	bbf9                	j	a2ff58 <LzmaDec_DecodeReal2+0x6de>
  a3017c:	4a63131b          	subshf	t1,t1,t1,srl,5
  a30180:	411787b3          	sub	a5,a5,a7
  a30184:	00691023          	sh	t1,0(s2)
  a30188:	0685                	addi	a3,a3,1
  a3018a:	411488b3          	sub	a7,s1,a7
  a3018e:	bbf5                	j	a2ff8a <LzmaDec_DecodeReal2+0x710>
  a30190:	4a94949b          	subshf	s1,s1,s1,srl,5
  a30194:	412787b3          	sub	a5,a5,s2
  a30198:	a106                	sh	s1,0(a0)
  a3019a:	0685                	addi	a3,a3,1
  a3019c:	41288933          	sub	s2,a7,s2
  a301a0:	bd19                	j	a2ffb6 <LzmaDec_DecodeReal2+0x73c>
  a301a2:	4a94949b          	subshf	s1,s1,s1,srl,5
  a301a6:	00931023          	sh	s1,0(t1)
  a301aa:	41168933          	sub	s2,a3,a7
  a301ae:	411787b3          	sub	a5,a5,a7
  a301b2:	01035483          	lhu	s1,16(t1)
  a301b6:	00c97763          	bgeu	s2,a2,a301c4 <LzmaDec_DecodeReal2+0x94a>
  a301ba:	2314                	lbu	a3,0(a4)
  a301bc:	0922                	slli	s2,s2,0x8
  a301be:	0705                	addi	a4,a4,1
  a301c0:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a301c4:	00b95893          	srli	a7,s2,0xb
  a301c8:	029888b3          	mul	a7,a7,s1
  a301cc:	0f17f263          	bgeu	a5,a7,a302b0 <LzmaDec_DecodeReal2+0xa36>
  a301d0:	409806b3          	sub	a3,a6,s1
  a301d4:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a301d8:	0521                	addi	a0,a0,8
  a301da:	00931823          	sh	s1,16(t1)
  a301de:	02a3031b          	addshf	t1,t1,a0,sll,1
  a301e2:	00235683          	lhu	a3,2(t1)
  a301e6:	00c8f763          	bgeu	a7,a2,a301f4 <LzmaDec_DecodeReal2+0x97a>
  a301ea:	2308                	lbu	a0,0(a4)
  a301ec:	08a2                	slli	a7,a7,0x8
  a301ee:	0705                	addi	a4,a4,1
  a301f0:	10f5279b          	orshf	a5,a0,a5,sll,8
  a301f4:	00b8d493          	srli	s1,a7,0xb
  a301f8:	02d484b3          	mul	s1,s1,a3
  a301fc:	0697fe63          	bgeu	a5,s1,a30278 <LzmaDec_DecodeReal2+0x9fe>
  a30200:	40d80533          	sub	a0,a6,a3
  a30204:	4aa6869b          	addshf	a3,a3,a0,srl,5
  a30208:	00d31123          	sh	a3,2(t1)
  a3020c:	4889                	li	a7,2
  a3020e:	0886                	slli	a7,a7,0x1
  a30210:	01130933          	add	s2,t1,a7
  a30214:	00095503          	lhu	a0,0(s2)
  a30218:	00c4f763          	bgeu	s1,a2,a30226 <LzmaDec_DecodeReal2+0x9ac>
  a3021c:	2314                	lbu	a3,0(a4)
  a3021e:	04a2                	slli	s1,s1,0x8
  a30220:	0705                	addi	a4,a4,1
  a30222:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30226:	00b4d693          	srli	a3,s1,0xb
  a3022a:	02a686b3          	mul	a3,a3,a0
  a3022e:	04d7fe63          	bgeu	a5,a3,a3028a <LzmaDec_DecodeReal2+0xa10>
  a30232:	40a804b3          	sub	s1,a6,a0
  a30236:	4a95051b          	addshf	a0,a0,s1,srl,5
  a3023a:	00a91023          	sh	a0,0(s2)
  a3023e:	0886                	slli	a7,a7,0x1
  a30240:	9346                	add	t1,t1,a7
  a30242:	00035483          	lhu	s1,0(t1)
  a30246:	00c6f763          	bgeu	a3,a2,a30254 <LzmaDec_DecodeReal2+0x9da>
  a3024a:	2308                	lbu	a0,0(a4)
  a3024c:	06a2                	slli	a3,a3,0x8
  a3024e:	0705                	addi	a4,a4,1
  a30250:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30254:	00b6d913          	srli	s2,a3,0xb
  a30258:	02990933          	mul	s2,s2,s1
  a3025c:	0527f063          	bgeu	a5,s2,a3029c <LzmaDec_DecodeReal2+0xa22>
  a30260:	409806b3          	sub	a3,a6,s1
  a30264:	4ad4849b          	addshf	s1,s1,a3,srl,5
  a30268:	00931023          	sh	s1,0(t1)
  a3026c:	46ad                	li	a3,11
  a3026e:	d5e6f9e3          	bgeu	a3,t5,a2ffc0 <LzmaDec_DecodeReal2+0x746>
  a30272:	20000313          	li	t1,512
  a30276:	a06d                	j	a30320 <LzmaDec_DecodeReal2+0xaa6>
  a30278:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a3027c:	8f85                	sub	a5,a5,s1
  a3027e:	00d31123          	sh	a3,2(t1)
  a30282:	409884b3          	sub	s1,a7,s1
  a30286:	488d                	li	a7,3
  a30288:	b759                	j	a3020e <LzmaDec_DecodeReal2+0x994>
  a3028a:	4aa5151b          	subshf	a0,a0,a0,srl,5
  a3028e:	8f95                	sub	a5,a5,a3
  a30290:	00a91023          	sh	a0,0(s2)
  a30294:	0885                	addi	a7,a7,1
  a30296:	40d486b3          	sub	a3,s1,a3
  a3029a:	b755                	j	a3023e <LzmaDec_DecodeReal2+0x9c4>
  a3029c:	4a94949b          	subshf	s1,s1,s1,srl,5
  a302a0:	412787b3          	sub	a5,a5,s2
  a302a4:	00931023          	sh	s1,0(t1)
  a302a8:	0885                	addi	a7,a7,1
  a302aa:	41268933          	sub	s2,a3,s2
  a302ae:	bf7d                	j	a3026c <LzmaDec_DecodeReal2+0x9f2>
  a302b0:	4a94949b          	subshf	s1,s1,s1,srl,5
  a302b4:	41190933          	sub	s2,s2,a7
  a302b8:	411787b3          	sub	a5,a5,a7
  a302bc:	00931823          	sh	s1,16(t1)
  a302c0:	4885                	li	a7,1
  a302c2:	0ff00a93          	li	s5,255
  a302c6:	0886                	slli	a7,a7,0x1
  a302c8:	20088493          	addi	s1,a7,512
  a302cc:	949a                	add	s1,s1,t1
  a302ce:	2096                	lhu	a3,0(s1)
  a302d0:	00c97763          	bgeu	s2,a2,a302de <LzmaDec_DecodeReal2+0xa64>
  a302d4:	2308                	lbu	a0,0(a4)
  a302d6:	0922                	slli	s2,s2,0x8
  a302d8:	0705                	addi	a4,a4,1
  a302da:	10f5279b          	orshf	a5,a0,a5,sll,8
  a302de:	00b95513          	srli	a0,s2,0xb
  a302e2:	02d50533          	mul	a0,a0,a3
  a302e6:	00a7fd63          	bgeu	a5,a0,a30300 <LzmaDec_DecodeReal2+0xa86>
  a302ea:	40d80933          	sub	s2,a6,a3
  a302ee:	4b26869b          	addshf	a3,a3,s2,srl,5
  a302f2:	a096                	sh	a3,0(s1)
  a302f4:	892a                	mv	s2,a0
  a302f6:	fd1af8e3          	bgeu	s5,a7,a302c6 <LzmaDec_DecodeReal2+0xa4c>
  a302fa:	f1088893          	addi	a7,a7,-240
  a302fe:	b7bd                	j	a3026c <LzmaDec_DecodeReal2+0x9f2>
  a30300:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a30304:	40a90933          	sub	s2,s2,a0
  a30308:	8f89                	sub	a5,a5,a0
  a3030a:	a096                	sh	a3,0(s1)
  a3030c:	0885                	addi	a7,a7,1
  a3030e:	b7e5                	j	a302f6 <LzmaDec_DecodeReal2+0xa7c>
  a30310:	450d                	li	a0,3
  a30312:	20000313          	li	t1,512
  a30316:	01156563          	bltu	a0,a7,a30320 <LzmaDec_DecodeReal2+0xaa6>
  a3031a:	16e5                	addi	a3,a3,-7
  a3031c:	00769313          	slli	t1,a3,0x7
  a30320:	937e                	add	t1,t1,t6
  a30322:	00235683          	lhu	a3,2(t1)
  a30326:	00c97763          	bgeu	s2,a2,a30334 <LzmaDec_DecodeReal2+0xaba>
  a3032a:	2308                	lbu	a0,0(a4)
  a3032c:	0922                	slli	s2,s2,0x8
  a3032e:	0705                	addi	a4,a4,1
  a30330:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30334:	00b95493          	srli	s1,s2,0xb
  a30338:	02d484b3          	mul	s1,s1,a3
  a3033c:	1897fc63          	bgeu	a5,s1,a304d4 <LzmaDec_DecodeReal2+0xc5a>
  a30340:	40d80533          	sub	a0,a6,a3
  a30344:	4aa6869b          	addshf	a3,a3,a0,srl,5
  a30348:	00d31123          	sh	a3,2(t1)
  a3034c:	4689                	li	a3,2
  a3034e:	0686                	slli	a3,a3,0x1
  a30350:	00d30ab3          	add	s5,t1,a3
  a30354:	000ad903          	lhu	s2,0(s5)
  a30358:	00c4f763          	bgeu	s1,a2,a30366 <LzmaDec_DecodeReal2+0xaec>
  a3035c:	2308                	lbu	a0,0(a4)
  a3035e:	04a2                	slli	s1,s1,0x8
  a30360:	0705                	addi	a4,a4,1
  a30362:	10f5279b          	orshf	a5,a0,a5,sll,8
  a30366:	00b4d513          	srli	a0,s1,0xb
  a3036a:	03250533          	mul	a0,a0,s2
  a3036e:	16a7fc63          	bgeu	a5,a0,a304e6 <LzmaDec_DecodeReal2+0xc6c>
  a30372:	412804b3          	sub	s1,a6,s2
  a30376:	4a99091b          	addshf	s2,s2,s1,srl,5
  a3037a:	012a9023          	sh	s2,0(s5)
  a3037e:	0686                	slli	a3,a3,0x1
  a30380:	00d30ab3          	add	s5,t1,a3
  a30384:	000ad903          	lhu	s2,0(s5)
  a30388:	00c57763          	bgeu	a0,a2,a30396 <LzmaDec_DecodeReal2+0xb1c>
  a3038c:	2304                	lbu	s1,0(a4)
  a3038e:	0522                	slli	a0,a0,0x8
  a30390:	0705                	addi	a4,a4,1
  a30392:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a30396:	00b55493          	srli	s1,a0,0xb
  a3039a:	032484b3          	mul	s1,s1,s2
  a3039e:	1497fd63          	bgeu	a5,s1,a304f8 <LzmaDec_DecodeReal2+0xc7e>
  a303a2:	41280533          	sub	a0,a6,s2
  a303a6:	4aa9091b          	addshf	s2,s2,a0,srl,5
  a303aa:	012a9023          	sh	s2,0(s5)
  a303ae:	0686                	slli	a3,a3,0x1
  a303b0:	00d30ab3          	add	s5,t1,a3
  a303b4:	000ad903          	lhu	s2,0(s5)
  a303b8:	00c4f763          	bgeu	s1,a2,a303c6 <LzmaDec_DecodeReal2+0xb4c>
  a303bc:	2308                	lbu	a0,0(a4)
  a303be:	04a2                	slli	s1,s1,0x8
  a303c0:	0705                	addi	a4,a4,1
  a303c2:	10f5279b          	orshf	a5,a0,a5,sll,8
  a303c6:	00b4d513          	srli	a0,s1,0xb
  a303ca:	03250533          	mul	a0,a0,s2
  a303ce:	12a7fe63          	bgeu	a5,a0,a3050a <LzmaDec_DecodeReal2+0xc90>
  a303d2:	412804b3          	sub	s1,a6,s2
  a303d6:	4a99091b          	addshf	s2,s2,s1,srl,5
  a303da:	012a9023          	sh	s2,0(s5)
  a303de:	0686                	slli	a3,a3,0x1
  a303e0:	00d30ab3          	add	s5,t1,a3
  a303e4:	000ad903          	lhu	s2,0(s5)
  a303e8:	00c57763          	bgeu	a0,a2,a303f6 <LzmaDec_DecodeReal2+0xb7c>
  a303ec:	2304                	lbu	s1,0(a4)
  a303ee:	0522                	slli	a0,a0,0x8
  a303f0:	0705                	addi	a4,a4,1
  a303f2:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a303f6:	00b55493          	srli	s1,a0,0xb
  a303fa:	032484b3          	mul	s1,s1,s2
  a303fe:	1097ff63          	bgeu	a5,s1,a3051c <LzmaDec_DecodeReal2+0xca2>
  a30402:	41280533          	sub	a0,a6,s2
  a30406:	4aa9091b          	addshf	s2,s2,a0,srl,5
  a3040a:	012a9023          	sh	s2,0(s5)
  a3040e:	0686                	slli	a3,a3,0x1
  a30410:	9336                	add	t1,t1,a3
  a30412:	00035503          	lhu	a0,0(t1)
  a30416:	00c4f863          	bgeu	s1,a2,a30426 <LzmaDec_DecodeReal2+0xbac>
  a3041a:	00074903          	lbu	s2,0(a4)
  a3041e:	04a2                	slli	s1,s1,0x8
  a30420:	0705                	addi	a4,a4,1
  a30422:	10f9279b          	orshf	a5,s2,a5,sll,8
  a30426:	00b4d913          	srli	s2,s1,0xb
  a3042a:	02a90933          	mul	s2,s2,a0
  a3042e:	1127f063          	bgeu	a5,s2,a3052e <LzmaDec_DecodeReal2+0xcb4>
  a30432:	40a804b3          	sub	s1,a6,a0
  a30436:	4a95051b          	addshf	a0,a0,s1,srl,5
  a3043a:	00a31023          	sh	a0,0(t1)
  a3043e:	fc068693          	addi	a3,a3,-64
  a30442:	450d                	li	a0,3
  a30444:	06d57563          	bgeu	a0,a3,a304ae <LzmaDec_DecodeReal2+0xc34>
  a30448:	0016f513          	andi	a0,a3,1
  a3044c:	44b5                	li	s1,13
  a3044e:	0016d313          	srli	t1,a3,0x1
  a30452:	00256513          	ori	a0,a0,2
  a30456:	10d4e063          	bltu	s1,a3,a30556 <LzmaDec_DecodeReal2+0xcdc>
  a3045a:	137d                	addi	t1,t1,-1
  a3045c:	00651533          	sll	a0,a0,t1
  a30460:	0505                	addi	a0,a0,1
  a30462:	4b85                	li	s7,1
  a30464:	76fd                	lui	a3,0xfffff
  a30466:	30068693          	addi	a3,a3,768 # fffff300 <_gp_+0xff5ca838>
  a3046a:	02a68b1b          	addshf	s6,a3,a0,sll,1
  a3046e:	9b7e                	add	s6,s6,t6
  a30470:	000b5483          	lhu	s1,0(s6)
  a30474:	00c97763          	bgeu	s2,a2,a30482 <LzmaDec_DecodeReal2+0xc08>
  a30478:	2314                	lbu	a3,0(a4)
  a3047a:	0922                	slli	s2,s2,0x8
  a3047c:	0705                	addi	a4,a4,1
  a3047e:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30482:	00b95a93          	srli	s5,s2,0xb
  a30486:	029a8ab3          	mul	s5,s5,s1
  a3048a:	001b9693          	slli	a3,s7,0x1
  a3048e:	0b57fa63          	bgeu	a5,s5,a30542 <LzmaDec_DecodeReal2+0xcc8>
  a30492:	40980933          	sub	s2,a6,s1
  a30496:	4b24849b          	addshf	s1,s1,s2,srl,5
  a3049a:	009b1023          	sh	s1,0(s6)
  a3049e:	955e                	add	a0,a0,s7
  a304a0:	8956                	mv	s2,s5
  a304a2:	137d                	addi	t1,t1,-1
  a304a4:	8bb6                	mv	s7,a3
  a304a6:	fa031fe3          	bnez	t1,a30464 <LzmaDec_DecodeReal2+0xbea>
  a304aa:	40d506b3          	sub	a3,a0,a3
  a304ae:	44c9                	li	s1,18
  a304b0:	00168513          	addi	a0,a3,1
  a304b4:	25e4e863          	bltu	s1,t5,a30704 <LzmaDec_DecodeReal2+0xe8a>
  a304b8:	4f1d                	li	t5,7
  a304ba:	831e                	mv	t1,t2
  a304bc:	000d8363          	beqz	s11,a304c2 <LzmaDec_DecodeReal2+0xc48>
  a304c0:	836e                	mv	t1,s11
  a304c2:	2466e363          	bltu	a3,t1,a30708 <LzmaDec_DecodeReal2+0xe8e>
  a304c6:	8d4e                	mv	s10,s3
  a304c8:	20288893          	addi	a7,a7,514
  a304cc:	89a2                	mv	s3,s0
  a304ce:	8416                	mv	s0,t0
  a304d0:	82aa                	mv	t0,a0
  a304d2:	a251                	j	a30656 <LzmaDec_DecodeReal2+0xddc>
  a304d4:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a304d8:	8f85                	sub	a5,a5,s1
  a304da:	00d31123          	sh	a3,2(t1)
  a304de:	409904b3          	sub	s1,s2,s1
  a304e2:	468d                	li	a3,3
  a304e4:	b5ad                	j	a3034e <LzmaDec_DecodeReal2+0xad4>
  a304e6:	4b29191b          	subshf	s2,s2,s2,srl,5
  a304ea:	8f89                	sub	a5,a5,a0
  a304ec:	012a9023          	sh	s2,0(s5)
  a304f0:	0685                	addi	a3,a3,1
  a304f2:	40a48533          	sub	a0,s1,a0
  a304f6:	b561                	j	a3037e <LzmaDec_DecodeReal2+0xb04>
  a304f8:	4b29191b          	subshf	s2,s2,s2,srl,5
  a304fc:	8f85                	sub	a5,a5,s1
  a304fe:	012a9023          	sh	s2,0(s5)
  a30502:	0685                	addi	a3,a3,1
  a30504:	409504b3          	sub	s1,a0,s1
  a30508:	b55d                	j	a303ae <LzmaDec_DecodeReal2+0xb34>
  a3050a:	4b29191b          	subshf	s2,s2,s2,srl,5
  a3050e:	8f89                	sub	a5,a5,a0
  a30510:	012a9023          	sh	s2,0(s5)
  a30514:	0685                	addi	a3,a3,1
  a30516:	40a48533          	sub	a0,s1,a0
  a3051a:	b5d1                	j	a303de <LzmaDec_DecodeReal2+0xb64>
  a3051c:	4b29191b          	subshf	s2,s2,s2,srl,5
  a30520:	8f85                	sub	a5,a5,s1
  a30522:	012a9023          	sh	s2,0(s5)
  a30526:	0685                	addi	a3,a3,1
  a30528:	409504b3          	sub	s1,a0,s1
  a3052c:	b5cd                	j	a3040e <LzmaDec_DecodeReal2+0xb94>
  a3052e:	4aa5151b          	subshf	a0,a0,a0,srl,5
  a30532:	412787b3          	sub	a5,a5,s2
  a30536:	00a31023          	sh	a0,0(t1)
  a3053a:	0685                	addi	a3,a3,1
  a3053c:	41248933          	sub	s2,s1,s2
  a30540:	bdfd                	j	a3043e <LzmaDec_DecodeReal2+0xbc4>
  a30542:	4a94949b          	subshf	s1,s1,s1,srl,5
  a30546:	41590933          	sub	s2,s2,s5
  a3054a:	415787b3          	sub	a5,a5,s5
  a3054e:	009b1023          	sh	s1,0(s6)
  a30552:	9536                	add	a0,a0,a3
  a30554:	b7b9                	j	a304a2 <LzmaDec_DecodeReal2+0xc28>
  a30556:	136d                	addi	t1,t1,-5
  a30558:	00c97763          	bgeu	s2,a2,a30566 <LzmaDec_DecodeReal2+0xcec>
  a3055c:	2314                	lbu	a3,0(a4)
  a3055e:	0922                	slli	s2,s2,0x8
  a30560:	0705                	addi	a4,a4,1
  a30562:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30566:	00195913          	srli	s2,s2,0x1
  a3056a:	412787b3          	sub	a5,a5,s2
  a3056e:	41f7d493          	srai	s1,a5,0x1f
  a30572:	02a4851b          	addshf	a0,s1,a0,sll,1
  a30576:	137d                	addi	t1,t1,-1
  a30578:	009974b3          	and	s1,s2,s1
  a3057c:	0505                	addi	a0,a0,1
  a3057e:	97a6                	add	a5,a5,s1
  a30580:	fc031ce3          	bnez	t1,a30558 <LzmaDec_DecodeReal2+0xcde>
  a30584:	0512                	slli	a0,a0,0x4
  a30586:	002fd683          	lhu	a3,2(t6)
  a3058a:	00c97863          	bgeu	s2,a2,a3059a <LzmaDec_DecodeReal2+0xd20>
  a3058e:	00074303          	lbu	t1,0(a4)
  a30592:	0922                	slli	s2,s2,0x8
  a30594:	0705                	addi	a4,a4,1
  a30596:	10f3279b          	orshf	a5,t1,a5,sll,8
  a3059a:	00b95493          	srli	s1,s2,0xb
  a3059e:	02d484b3          	mul	s1,s1,a3
  a305a2:	1097fc63          	bgeu	a5,s1,a306ba <LzmaDec_DecodeReal2+0xe40>
  a305a6:	40d80333          	sub	t1,a6,a3
  a305aa:	4a66869b          	addshf	a3,a3,t1,srl,5
  a305ae:	00df9123          	sh	a3,2(t6)
  a305b2:	4689                	li	a3,2
  a305b4:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a305b8:	000ad903          	lhu	s2,0(s5)
  a305bc:	00c4f863          	bgeu	s1,a2,a305cc <LzmaDec_DecodeReal2+0xd52>
  a305c0:	00074303          	lbu	t1,0(a4)
  a305c4:	04a2                	slli	s1,s1,0x8
  a305c6:	0705                	addi	a4,a4,1
  a305c8:	10f3279b          	orshf	a5,t1,a5,sll,8
  a305cc:	00b4d313          	srli	t1,s1,0xb
  a305d0:	03230333          	mul	t1,t1,s2
  a305d4:	0e67fc63          	bgeu	a5,t1,a306cc <LzmaDec_DecodeReal2+0xe52>
  a305d8:	412804b3          	sub	s1,a6,s2
  a305dc:	4a99091b          	addshf	s2,s2,s1,srl,5
  a305e0:	012a9023          	sh	s2,0(s5)
  a305e4:	0689                	addi	a3,a3,2
  a305e6:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a305ea:	000ad903          	lhu	s2,0(s5)
  a305ee:	00c37763          	bgeu	t1,a2,a305fc <LzmaDec_DecodeReal2+0xd82>
  a305f2:	2304                	lbu	s1,0(a4)
  a305f4:	0322                	slli	t1,t1,0x8
  a305f6:	0705                	addi	a4,a4,1
  a305f8:	10f4a79b          	orshf	a5,s1,a5,sll,8
  a305fc:	00b35493          	srli	s1,t1,0xb
  a30600:	032484b3          	mul	s1,s1,s2
  a30604:	0c97fe63          	bgeu	a5,s1,a306e0 <LzmaDec_DecodeReal2+0xe66>
  a30608:	41280333          	sub	t1,a6,s2
  a3060c:	4a69091b          	addshf	s2,s2,t1,srl,5
  a30610:	012a9023          	sh	s2,0(s5)
  a30614:	0691                	addi	a3,a3,4
  a30616:	02df8a9b          	addshf	s5,t6,a3,sll,1
  a3061a:	000ad303          	lhu	t1,0(s5)
  a3061e:	00c4f863          	bgeu	s1,a2,a3062e <LzmaDec_DecodeReal2+0xdb4>
  a30622:	00074903          	lbu	s2,0(a4)
  a30626:	04a2                	slli	s1,s1,0x8
  a30628:	0705                	addi	a4,a4,1
  a3062a:	10f9279b          	orshf	a5,s2,a5,sll,8
  a3062e:	00b4d913          	srli	s2,s1,0xb
  a30632:	02690933          	mul	s2,s2,t1
  a30636:	0b27fe63          	bgeu	a5,s2,a306f2 <LzmaDec_DecodeReal2+0xe78>
  a3063a:	406804b3          	sub	s1,a6,t1
  a3063e:	4a93031b          	addshf	t1,t1,s1,srl,5
  a30642:	006a9023          	sh	t1,0(s5)
  a30646:	16e1                	addi	a3,a3,-8
  a30648:	8ec9                	or	a3,a3,a0
  a3064a:	557d                	li	a0,-1
  a3064c:	e6a691e3          	bne	a3,a0,a304ae <LzmaDec_DecodeReal2+0xc34>
  a30650:	1f51                	addi	t5,t5,-12
  a30652:	11200893          	li	a7,274
  a30656:	010006b7          	lui	a3,0x1000
  a3065a:	00d97763          	bgeu	s2,a3,a30668 <LzmaDec_DecodeReal2+0xdee>
  a3065e:	2314                	lbu	a3,0(a4)
  a30660:	0922                	slli	s2,s2,0x8
  a30662:	0705                	addi	a4,a4,1
  a30664:	10f6a79b          	orshf	a5,a3,a5,sll,8
  a30668:	02fe2223          	sw	a5,36(t3)
  a3066c:	02ce2783          	lw	a5,44(t3)
  a30670:	2008b513          	sltiu	a0,a7,512
  a30674:	00ee2e23          	sw	a4,28(t3)
  a30678:	032e2023          	sw	s2,32(t3)
  a3067c:	051e2223          	sw	a7,68(t3)
  a30680:	01de2c23          	sw	t4,24(t3)
  a30684:	027e2423          	sw	t2,40(t3)
  a30688:	025e2823          	sw	t0,48(t3)
  a3068c:	028e2a23          	sw	s0,52(t3)
  a30690:	033e2c23          	sw	s3,56(t3)
  a30694:	03ae2e23          	sw	s10,60(t3)
  a30698:	05ee2023          	sw	t5,64(t3)
  a3069c:	00154513          	xori	a0,a0,1
  a306a0:	e799                	bnez	a5,a306ae <LzmaDec_DecodeReal2+0xe34>
  a306a2:	004e2783          	lw	a5,4(t3)
  a306a6:	00f3e463          	bltu	t2,a5,a306ae <LzmaDec_DecodeReal2+0xe34>
  a306aa:	02fe2623          	sw	a5,44(t3)
  a306ae:	03010293          	addi	t0,sp,48
  a306b2:	7fe2860b          	ldmia	{s0-s11},(t0)
  a306b6:	6125                	addi	sp,sp,96
  a306b8:	8082                	ret
  a306ba:	4ad6969b          	subshf	a3,a3,a3,srl,5
  a306be:	8f85                	sub	a5,a5,s1
  a306c0:	00df9123          	sh	a3,2(t6)
  a306c4:	409904b3          	sub	s1,s2,s1
  a306c8:	468d                	li	a3,3
  a306ca:	b5ed                	j	a305b4 <LzmaDec_DecodeReal2+0xd3a>
  a306cc:	4b29191b          	subshf	s2,s2,s2,srl,5
  a306d0:	406787b3          	sub	a5,a5,t1
  a306d4:	012a9023          	sh	s2,0(s5)
  a306d8:	0691                	addi	a3,a3,4 # 1000004 <_gp_+0x5cb53c>
  a306da:	40648333          	sub	t1,s1,t1
  a306de:	b721                	j	a305e6 <LzmaDec_DecodeReal2+0xd6c>
  a306e0:	4b29191b          	subshf	s2,s2,s2,srl,5
  a306e4:	8f85                	sub	a5,a5,s1
  a306e6:	012a9023          	sh	s2,0(s5)
  a306ea:	06a1                	addi	a3,a3,8
  a306ec:	409304b3          	sub	s1,t1,s1
  a306f0:	b71d                	j	a30616 <LzmaDec_DecodeReal2+0xd9c>
  a306f2:	4a63131b          	subshf	t1,t1,t1,srl,5
  a306f6:	412787b3          	sub	a5,a5,s2
  a306fa:	006a9023          	sh	t1,0(s5)
  a306fe:	41248933          	sub	s2,s1,s2
  a30702:	b799                	j	a30648 <LzmaDec_DecodeReal2+0xdce>
  a30704:	4f29                	li	t5,10
  a30706:	bb55                	j	a304ba <LzmaDec_DecodeReal2+0xc40>
  a30708:	8d4e                	mv	s10,s3
  a3070a:	89a2                	mv	s3,s0
  a3070c:	8416                	mv	s0,t0
  a3070e:	82aa                	mv	t0,a0
  a30710:	b845                	j	a2ffc0 <LzmaDec_DecodeReal2+0x746>
  a30712:	00da0533          	add	a0,s4,a3
  a30716:	00054303          	lbu	t1,0(a0)
  a3071a:	0e85                	addi	t4,t4,1
  a3071c:	01da0533          	add	a0,s4,t4
  a30720:	fe650fa3          	sb	t1,-1(a0)
  a30724:	0685                	addi	a3,a3,1
  a30726:	00dc9363          	bne	s9,a3,a3072c <LzmaDec_DecodeReal2+0xeb2>
  a3072a:	4681                	li	a3,0
  a3072c:	fe9e93e3          	bne	t4,s1,a30712 <LzmaDec_DecodeReal2+0xe98>
  a30730:	c14ff06f          	j	a2fb44 <LzmaDec_DecodeReal2+0x2ca>
  a30734:	4f2d                	li	t5,11
  a30736:	c0eff06f          	j	a2fb44 <LzmaDec_DecodeReal2+0x2ca>

00a3073a <LzmaDec_Init>:
  a3073a:	11400793          	li	a5,276
  a3073e:	00052c23          	sw	zero,24(a0)
  a30742:	04052623          	sw	zero,76(a0)
  a30746:	02052423          	sw	zero,40(a0)
  a3074a:	02052623          	sw	zero,44(a0)
  a3074e:	c17c                	sw	a5,68(a0)
  a30750:	8082                	ret

00a30752 <LzmaDec_DecodeToDic>:
  a30752:	82d8                	push	{ra,s0-s11},-96
  a30754:	0006a983          	lw	s3,0(a3)
  a30758:	0006a023          	sw	zero,0(a3)
  a3075c:	00078023          	sb	zero,0(a5) # 1000000 <_gp_+0x5cb538>
  a30760:	8dbe                	mv	s11,a5
  a30762:	417c                	lw	a5,68(a0)
  a30764:	8bba                	mv	s7,a4
  a30766:	11200713          	li	a4,274
  a3076a:	842a                	mv	s0,a0
  a3076c:	8b2e                	mv	s6,a1
  a3076e:	84b2                	mv	s1,a2
  a30770:	8936                	mv	s2,a3
  a30772:	08f77a63          	bgeu	a4,a5,a30806 <LzmaDec_DecodeToDic+0xb4>
  a30776:	11400713          	li	a4,276
  a3077a:	0af76663          	bltu	a4,a5,a30826 <LzmaDec_DecodeToDic+0xd4>
  a3077e:	4711                	li	a4,4
  a30780:	447c                	lw	a5,76(s0)
  a30782:	0c098963          	beqz	s3,a30854 <LzmaDec_DecodeToDic+0x102>
  a30786:	0af77763          	bgeu	a4,a5,a30834 <LzmaDec_DecodeToDic+0xe2>
  a3078a:	05044703          	lbu	a4,80(s0)
  a3078e:	e34d                	bnez	a4,a30830 <LzmaDec_DecodeToDic+0xde>
  a30790:	0537e1bb          	bltui	a5,5,a30856 <LzmaDec_DecodeToDic+0x104>
  a30794:	05244783          	lbu	a5,82(s0)
  a30798:	05144703          	lbu	a4,81(s0)
  a3079c:	07c2                	slli	a5,a5,0x10
  a3079e:	30e7a79b          	orshf	a5,a5,a4,sll,24
  a307a2:	05444703          	lbu	a4,84(s0)
  a307a6:	8fd9                	or	a5,a5,a4
  a307a8:	05344703          	lbu	a4,83(s0)
  a307ac:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a307b0:	5458                	lw	a4,44(s0)
  a307b2:	d05c                	sw	a5,36(s0)
  a307b4:	eb01                	bnez	a4,a307c4 <LzmaDec_DecodeToDic+0x72>
  a307b6:	5418                	lw	a4,40(s0)
  a307b8:	e711                	bnez	a4,a307c4 <LzmaDec_DecodeToDic+0x72>
  a307ba:	bfff fbff 071f      	l.li	a4,0xbffffbff
  a307c0:	06f76863          	bltu	a4,a5,a30830 <LzmaDec_DecodeToDic+0xde>
  a307c4:	4078                	lw	a4,68(s0)
  a307c6:	57fd                	li	a5,-1
  a307c8:	d01c                	sw	a5,32(s0)
  a307ca:	04042623          	sw	zero,76(s0)
  a307ce:	11300793          	li	a5,275
  a307d2:	02e7f863          	bgeu	a5,a4,a30802 <LzmaDec_DecodeToDic+0xb0>
  a307d6:	201c                	lbu	a5,0(s0)
  a307d8:	3018                	lbu	a4,1(s0)
  a307da:	4414                	lw	a3,8(s0)
  a307dc:	40000613          	li	a2,1024
  a307e0:	973e                	add	a4,a4,a5
  a307e2:	30000793          	li	a5,768
  a307e6:	00e797b3          	sll	a5,a5,a4
  a307ea:	7c078793          	addi	a5,a5,1984
  a307ee:	4701                	li	a4,0
  a307f0:	06f76563          	bltu	a4,a5,a3085a <LzmaDec_DecodeToDic+0x108>
  a307f4:	4785                	li	a5,1
  a307f6:	dc5c                	sw	a5,60(s0)
  a307f8:	dc1c                	sw	a5,56(s0)
  a307fa:	d85c                	sw	a5,52(s0)
  a307fc:	d81c                	sw	a5,48(s0)
  a307fe:	04042023          	sw	zero,64(s0)
  a30802:	04042223          	sw	zero,68(s0)
  a30806:	4c4d                	li	s8,19
  a30808:	5d7d                	li	s10,-1
  a3080a:	05040a93          	addi	s5,s0,80
  a3080e:	4074                	lw	a3,68(s0)
  a30810:	11200793          	li	a5,274
  a30814:	04f69b63          	bne	a3,a5,a3086a <LzmaDec_DecodeToDic+0x118>
  a30818:	505c                	lw	a5,36(s0)
  a3081a:	eb99                	bnez	a5,a30830 <LzmaDec_DecodeToDic+0xde>
  a3081c:	4785                	li	a5,1
  a3081e:	00fd8023          	sb	a5,0(s11)
  a30822:	4501                	li	a0,0
  a30824:	82d4                	popret	{ra,s0-s11},96
  a30826:	1ff00713          	li	a4,511
  a3082a:	452d                	li	a0,11
  a3082c:	fee78ce3          	beq	a5,a4,a30824 <LzmaDec_DecodeToDic+0xd2>
  a30830:	4505                	li	a0,1
  a30832:	bfcd                	j	a30824 <LzmaDec_DecodeToDic+0xd2>
  a30834:	00178693          	addi	a3,a5,1
  a30838:	c474                	sw	a3,76(s0)
  a3083a:	0485                	addi	s1,s1,1
  a3083c:	fff4c683          	lbu	a3,-1(s1)
  a30840:	97a2                	add	a5,a5,s0
  a30842:	19fd                	addi	s3,s3,-1
  a30844:	04d78823          	sb	a3,80(a5)
  a30848:	00092783          	lw	a5,0(s2)
  a3084c:	0785                	addi	a5,a5,1
  a3084e:	00f92023          	sw	a5,0(s2)
  a30852:	b73d                	j	a30780 <LzmaDec_DecodeToDic+0x2e>
  a30854:	fb9d                	bnez	a5,a3078a <LzmaDec_DecodeToDic+0x38>
  a30856:	478d                	li	a5,3
  a30858:	b7d9                	j	a3081e <LzmaDec_DecodeToDic+0xcc>
  a3085a:	a292                	sh	a2,0(a3)
  a3085c:	0705                	addi	a4,a4,1
  a3085e:	0689                	addi	a3,a3,2
  a30860:	bf41                	j	a307f0 <LzmaDec_DecodeToDic+0x9e>
  a30862:	409989b3          	sub	s3,s3,s1
  a30866:	84b6                	mv	s1,a3
  a30868:	b75d                	j	a3080e <LzmaDec_DecodeToDic+0xbc>
  a3086a:	c699                	beqz	a3,a30878 <LzmaDec_DecodeToDic+0x126>
  a3086c:	4c1c                	lw	a5,24(s0)
  a3086e:	40fb0733          	sub	a4,s6,a5
  a30872:	00d77d63          	bgeu	a4,a3,a3088c <LzmaDec_DecodeToDic+0x13a>
  a30876:	ef01                	bnez	a4,a3088e <LzmaDec_DecodeToDic+0x13c>
  a30878:	4c1c                	lw	a5,24(s0)
  a3087a:	0767e163          	bltu	a5,s6,a308dc <LzmaDec_DecodeToDic+0x18a>
  a3087e:	407c                	lw	a5,68(s0)
  a30880:	1a079a63          	bnez	a5,a30a34 <LzmaDec_DecodeToDic+0x2e2>
  a30884:	505c                	lw	a5,36(s0)
  a30886:	e7b9                	bnez	a5,a308d4 <LzmaDec_DecodeToDic+0x182>
  a30888:	4791                	li	a5,4
  a3088a:	bf51                	j	a3081e <LzmaDec_DecodeToDic+0xcc>
  a3088c:	8736                	mv	a4,a3
  a3088e:	544c                	lw	a1,44(s0)
  a30890:	5410                	lw	a2,40(s0)
  a30892:	e599                	bnez	a1,a308a0 <LzmaDec_DecodeToDic+0x14e>
  a30894:	404c                	lw	a1,4(s0)
  a30896:	40c58533          	sub	a0,a1,a2
  a3089a:	00a76363          	bltu	a4,a0,a308a0 <LzmaDec_DecodeToDic+0x14e>
  a3089e:	d44c                	sw	a1,44(s0)
  a308a0:	963a                	add	a2,a2,a4
  a308a2:	d410                	sw	a2,40(s0)
  a308a4:	580c                	lw	a1,48(s0)
  a308a6:	4810                	lw	a2,16(s0)
  a308a8:	01442803          	lw	a6,20(s0)
  a308ac:	8e99                	sub	a3,a3,a4
  a308ae:	c074                	sw	a3,68(s0)
  a308b0:	973e                	add	a4,a4,a5
  a308b2:	40b78533          	sub	a0,a5,a1
  a308b6:	4681                	li	a3,0
  a308b8:	00b7f363          	bgeu	a5,a1,a308be <LzmaDec_DecodeToDic+0x16c>
  a308bc:	86c2                	mv	a3,a6
  a308be:	96b2                	add	a3,a3,a2
  a308c0:	96aa                	add	a3,a3,a0
  a308c2:	2288                	lbu	a0,0(a3)
  a308c4:	00f606b3          	add	a3,a2,a5
  a308c8:	0785                	addi	a5,a5,1
  a308ca:	a288                	sb	a0,0(a3)
  a308cc:	fee793e3          	bne	a5,a4,a308b2 <LzmaDec_DecodeToDic+0x160>
  a308d0:	cc1c                	sw	a5,24(s0)
  a308d2:	b75d                	j	a30878 <LzmaDec_DecodeToDic+0x126>
  a308d4:	040b9863          	bnez	s7,a30924 <LzmaDec_DecodeToDic+0x1d2>
  a308d8:	4789                	li	a5,2
  a308da:	b791                	j	a3081e <LzmaDec_DecodeToDic+0xcc>
  a308dc:	4c81                	li	s9,0
  a308de:	4478                	lw	a4,76(s0)
  a308e0:	10071f63          	bnez	a4,a309fe <LzmaDec_DecodeToDic+0x2ac>
  a308e4:	013c7463          	bgeu	s8,s3,a308ec <LzmaDec_DecodeToDic+0x19a>
  a308e8:	0a0c8163          	beqz	s9,a3098a <LzmaDec_DecodeToDic+0x238>
  a308ec:	01348a33          	add	s4,s1,s3
  a308f0:	0870                	addi	a2,sp,28
  a308f2:	85a6                	mv	a1,s1
  a308f4:	8522                	mv	a0,s0
  a308f6:	ce52                	sw	s4,28(sp)
  a308f8:	b2bfe0ef          	jal	ra,a2f422 <LzmaDec_TryDummy>
  a308fc:	e515                	bnez	a0,a30928 <LzmaDec_DecodeToDic+0x1d6>
  a308fe:	1429f0bb          	bgeui	s3,20,a30980 <LzmaDec_DecodeToDic+0x22e>
  a30902:	00092783          	lw	a5,0(s2)
  a30906:	05040413          	addi	s0,s0,80
  a3090a:	97ce                	add	a5,a5,s3
  a3090c:	00f92023          	sw	a5,0(s2)
  a30910:	ff342e23          	sw	s3,-4(s0)
  a30914:	f49a01e3          	beq	s4,s1,a30856 <LzmaDec_DecodeToDic+0x104>
  a30918:	209c                	lbu	a5,0(s1)
  a3091a:	0405                	addi	s0,s0,1
  a3091c:	0485                	addi	s1,s1,1
  a3091e:	fef40fa3          	sb	a5,-1(s0)
  a30922:	bfcd                	j	a30914 <LzmaDec_DecodeToDic+0x1c2>
  a30924:	4c85                	li	s9,1
  a30926:	bf65                	j	a308de <LzmaDec_DecodeToDic+0x18c>
  a30928:	4a72                	lw	s4,28(sp)
  a3092a:	409a0a33          	sub	s4,s4,s1
  a3092e:	151a74bb          	bgeui	s4,21,a30980 <LzmaDec_DecodeToDic+0x22e>
  a30932:	020c8a63          	beqz	s9,a30966 <LzmaDec_DecodeToDic+0x214>
  a30936:	02050c3b          	beqi	a0,2,a30966 <LzmaDec_DecodeToDic+0x214>
  a3093a:	00092783          	lw	a5,0(s2)
  a3093e:	05040413          	addi	s0,s0,80
  a30942:	97d2                	add	a5,a5,s4
  a30944:	00f92023          	sw	a5,0(s2)
  a30948:	ff442e23          	sw	s4,-4(s0)
  a3094c:	9a26                	add	s4,s4,s1
  a3094e:	01449663          	bne	s1,s4,a3095a <LzmaDec_DecodeToDic+0x208>
  a30952:	4789                	li	a5,2
  a30954:	00fd8023          	sb	a5,0(s11)
  a30958:	bde1                	j	a30830 <LzmaDec_DecodeToDic+0xde>
  a3095a:	209c                	lbu	a5,0(s1)
  a3095c:	0405                	addi	s0,s0,1
  a3095e:	0485                	addi	s1,s1,1
  a30960:	fef40fa3          	sb	a5,-1(s0)
  a30964:	b7ed                	j	a3094e <LzmaDec_DecodeToDic+0x1fc>
  a30966:	8626                	mv	a2,s1
  a30968:	cc44                	sw	s1,28(s0)
  a3096a:	85da                	mv	a1,s6
  a3096c:	8522                	mv	a0,s0
  a3096e:	f0dfe0ef          	jal	ra,a2f87a <LzmaDec_DecodeReal2>
  a30972:	4c54                	lw	a3,28(s0)
  a30974:	409684b3          	sub	s1,a3,s1
  a30978:	01aa1e63          	bne	s4,s10,a30994 <LzmaDec_DecodeToDic+0x242>
  a3097c:	0099fe63          	bgeu	s3,s1,a30998 <LzmaDec_DecodeToDic+0x246>
  a30980:	1ff00793          	li	a5,511
  a30984:	c07c                	sw	a5,68(s0)
  a30986:	452d                	li	a0,11
  a30988:	bd71                	j	a30824 <LzmaDec_DecodeToDic+0xd2>
  a3098a:	fec98613          	addi	a2,s3,-20
  a3098e:	9626                	add	a2,a2,s1
  a30990:	5a7d                	li	s4,-1
  a30992:	bfd9                	j	a30968 <LzmaDec_DecodeToDic+0x216>
  a30994:	ff4496e3          	bne	s1,s4,a30980 <LzmaDec_DecodeToDic+0x22e>
  a30998:	00092783          	lw	a5,0(s2)
  a3099c:	97a6                	add	a5,a5,s1
  a3099e:	00f92023          	sw	a5,0(s2)
  a309a2:	ec0500e3          	beqz	a0,a30862 <LzmaDec_DecodeToDic+0x110>
  a309a6:	20000793          	li	a5,512
  a309aa:	c07c                	sw	a5,68(s0)
  a309ac:	b551                	j	a30830 <LzmaDec_DecodeToDic+0xde>
  a309ae:	0a05                	addi	s4,s4,1
  a309b0:	40ea06b3          	sub	a3,s4,a4
  a309b4:	96a6                	add	a3,a3,s1
  a309b6:	fff6c603          	lbu	a2,-1(a3)
  a309ba:	014406b3          	add	a3,s0,s4
  a309be:	04c687a3          	sb	a2,79(a3)
  a309c2:	40ea06b3          	sub	a3,s4,a4
  a309c6:	074c6a63          	bltu	s8,s4,a30a3a <LzmaDec_DecodeToDic+0x2e8>
  a309ca:	ff36e2e3          	bltu	a3,s3,a309ae <LzmaDec_DecodeToDic+0x25c>
  a309ce:	014a8733          	add	a4,s5,s4
  a309d2:	0870                	addi	a2,sp,28
  a309d4:	85d6                	mv	a1,s5
  a309d6:	8522                	mv	a0,s0
  a309d8:	c636                	sw	a3,12(sp)
  a309da:	ce3a                	sw	a4,28(sp)
  a309dc:	a47fe0ef          	jal	ra,a2f422 <LzmaDec_TryDummy>
  a309e0:	46b2                	lw	a3,12(sp)
  a309e2:	e105                	bnez	a0,a30a02 <LzmaDec_DecodeToDic+0x2b0>
  a309e4:	14ea773b          	bgeui	s4,20,a30980 <LzmaDec_DecodeToDic+0x22e>
  a309e8:	05442623          	sw	s4,76(s0)
  a309ec:	00092783          	lw	a5,0(s2)
  a309f0:	97b6                	add	a5,a5,a3
  a309f2:	00f92023          	sw	a5,0(s2)
  a309f6:	478d                	li	a5,3
  a309f8:	00fd8023          	sb	a5,0(s11)
  a309fc:	b525                	j	a30824 <LzmaDec_DecodeToDic+0xd2>
  a309fe:	8a3a                	mv	s4,a4
  a30a00:	b7c9                	j	a309c2 <LzmaDec_DecodeToDic+0x270>
  a30a02:	4a72                	lw	s4,28(sp)
  a30a04:	4474                	lw	a3,76(s0)
  a30a06:	415a0a33          	sub	s4,s4,s5
  a30a0a:	f6da6be3          	bltu	s4,a3,a30980 <LzmaDec_DecodeToDic+0x22e>
  a30a0e:	020c8963          	beqz	s9,a30a40 <LzmaDec_DecodeToDic+0x2ee>
  a30a12:	4709                	li	a4,2
  a30a14:	02e50663          	beq	a0,a4,a30a40 <LzmaDec_DecodeToDic+0x2ee>
  a30a18:	00092783          	lw	a5,0(s2)
  a30a1c:	97d2                	add	a5,a5,s4
  a30a1e:	8f95                	sub	a5,a5,a3
  a30a20:	00f92023          	sw	a5,0(s2)
  a30a24:	05442623          	sw	s4,76(s0)
  a30a28:	00ed8023          	sb	a4,0(s11)
  a30a2c:	b511                	j	a30830 <LzmaDec_DecodeToDic+0xde>
  a30a2e:	03478a63          	beq	a5,s4,a30a62 <LzmaDec_DecodeToDic+0x310>
  a30a32:	b7b9                	j	a30980 <LzmaDec_DecodeToDic+0x22e>
  a30a34:	ea0b82e3          	beqz	s7,a308d8 <LzmaDec_DecodeToDic+0x186>
  a30a38:	bf29                	j	a30952 <LzmaDec_DecodeToDic+0x200>
  a30a3a:	f80c9ae3          	bnez	s9,a309ce <LzmaDec_DecodeToDic+0x27c>
  a30a3e:	5a7d                	li	s4,-1
  a30a40:	01542e23          	sw	s5,28(s0)
  a30a44:	8656                	mv	a2,s5
  a30a46:	85da                	mv	a1,s6
  a30a48:	8522                	mv	a0,s0
  a30a4a:	e31fe0ef          	jal	ra,a2f87a <LzmaDec_DecodeReal2>
  a30a4e:	4c5c                	lw	a5,28(s0)
  a30a50:	4478                	lw	a4,76(s0)
  a30a52:	415787b3          	sub	a5,a5,s5
  a30a56:	fc0a5ce3          	bgez	s4,a30a2e <LzmaDec_DecodeToDic+0x2dc>
  a30a5a:	15c7f9bb          	bgeui	a5,21,a30980 <LzmaDec_DecodeToDic+0x22e>
  a30a5e:	f2e7e1e3          	bltu	a5,a4,a30980 <LzmaDec_DecodeToDic+0x22e>
  a30a62:	8f99                	sub	a5,a5,a4
  a30a64:	00092703          	lw	a4,0(s2)
  a30a68:	00f486b3          	add	a3,s1,a5
  a30a6c:	40f989b3          	sub	s3,s3,a5
  a30a70:	97ba                	add	a5,a5,a4
  a30a72:	00f92023          	sw	a5,0(s2)
  a30a76:	04042623          	sw	zero,76(s0)
  a30a7a:	de0506e3          	beqz	a0,a30866 <LzmaDec_DecodeToDic+0x114>
  a30a7e:	b725                	j	a309a6 <LzmaDec_DecodeToDic+0x254>

00a30a80 <LzmaDec_DecodeToBuf>:
  a30a80:	82c8                	push	{ra,s0-s10},-80
  a30a82:	00062903          	lw	s2,0(a2) # 1000000 <_gp_+0x5cb538>
  a30a86:	00072b03          	lw	s6,0(a4)
  a30a8a:	00062023          	sw	zero,0(a2)
  a30a8e:	842a                	mv	s0,a0
  a30a90:	8bae                	mv	s7,a1
  a30a92:	89b2                	mv	s3,a2
  a30a94:	8c36                	mv	s8,a3
  a30a96:	8a3a                	mv	s4,a4
  a30a98:	8d3e                	mv	s10,a5
  a30a9a:	00072023          	sw	zero,0(a4)
  a30a9e:	484c                	lw	a1,20(s0)
  a30aa0:	4c1c                	lw	a5,24(s0)
  a30aa2:	ce5a                	sw	s6,28(sp)
  a30aa4:	00b79463          	bne	a5,a1,a30aac <LzmaDec_DecodeToBuf+0x2c>
  a30aa8:	00042c23          	sw	zero,24(s0)
  a30aac:	01842a83          	lw	s5,24(s0)
  a30ab0:	4701                	li	a4,0
  a30ab2:	415587b3          	sub	a5,a1,s5
  a30ab6:	0127e563          	bltu	a5,s2,a30ac0 <LzmaDec_DecodeToBuf+0x40>
  a30aba:	015905b3          	add	a1,s2,s5
  a30abe:	876a                	mv	a4,s10
  a30ac0:	87c2                	mv	a5,a6
  a30ac2:	8662                	mv	a2,s8
  a30ac4:	0874                	addi	a3,sp,28
  a30ac6:	8522                	mv	a0,s0
  a30ac8:	c642                	sw	a6,12(sp)
  a30aca:	c89ff0ef          	jal	ra,a30752 <LzmaDec_DecodeToDic>
  a30ace:	4772                	lw	a4,28(sp)
  a30ad0:	000a2783          	lw	a5,0(s4)
  a30ad4:	8caa                	mv	s9,a0
  a30ad6:	855e                	mv	a0,s7
  a30ad8:	97ba                	add	a5,a5,a4
  a30ada:	00fa2023          	sw	a5,0(s4)
  a30ade:	4c04                	lw	s1,24(s0)
  a30ae0:	480c                	lw	a1,16(s0)
  a30ae2:	9c3a                	add	s8,s8,a4
  a30ae4:	415484b3          	sub	s1,s1,s5
  a30ae8:	8626                	mv	a2,s1
  a30aea:	95d6                	add	a1,a1,s5
  a30aec:	40eb0b33          	sub	s6,s6,a4
  a30af0:	f63f70ef          	jal	ra,a28a52 <memcpy>
  a30af4:	0009a783          	lw	a5,0(s3)
  a30af8:	9ba6                	add	s7,s7,s1
  a30afa:	40990933          	sub	s2,s2,s1
  a30afe:	97a6                	add	a5,a5,s1
  a30b00:	00f9a023          	sw	a5,0(s3)
  a30b04:	000c9663          	bnez	s9,a30b10 <LzmaDec_DecodeToBuf+0x90>
  a30b08:	c481                	beqz	s1,a30b10 <LzmaDec_DecodeToBuf+0x90>
  a30b0a:	4832                	lw	a6,12(sp)
  a30b0c:	f80919e3          	bnez	s2,a30a9e <LzmaDec_DecodeToBuf+0x1e>
  a30b10:	8566                	mv	a0,s9
  a30b12:	82c4                	popret	{ra,s0-s10},80

00a30b14 <LzmaDec_FreeProbs>:
  a30b14:	8028                	push	{ra,s0},-16
  a30b16:	842a                	mv	s0,a0
  a30b18:	41dc                	lw	a5,4(a1)
  a30b1a:	852e                	mv	a0,a1
  a30b1c:	440c                	lw	a1,8(s0)
  a30b1e:	9782                	jalr	a5
  a30b20:	00042423          	sw	zero,8(s0)
  a30b24:	8024                	popret	{ra,s0},16

00a30b26 <LzmaDec_AllocateProbs2.isra.2>:
  a30b26:	8048                	push	{ra,s0-s2},-16
  a30b28:	451c                	lw	a5,8(a0)
  a30b2a:	962e                	add	a2,a2,a1
  a30b2c:	30000493          	li	s1,768
  a30b30:	00c494b3          	sll	s1,s1,a2
  a30b34:	842a                	mv	s0,a0
  a30b36:	7c048493          	addi	s1,s1,1984
  a30b3a:	c789                	beqz	a5,a30b44 <LzmaDec_AllocateProbs2.isra.2+0x1e>
  a30b3c:	453c                	lw	a5,72(a0)
  a30b3e:	4501                	li	a0,0
  a30b40:	02f48863          	beq	s1,a5,a30b70 <LzmaDec_AllocateProbs2.isra.2+0x4a>
  a30b44:	85b6                	mv	a1,a3
  a30b46:	8522                	mv	a0,s0
  a30b48:	8936                	mv	s2,a3
  a30b4a:	fcbff0ef          	jal	ra,a30b14 <LzmaDec_FreeProbs>
  a30b4e:	00092783          	lw	a5,0(s2)
  a30b52:	00149593          	slli	a1,s1,0x1
  a30b56:	854a                	mv	a0,s2
  a30b58:	9782                	jalr	a5
  a30b5a:	87aa                	mv	a5,a0
  a30b5c:	c408                	sw	a0,8(s0)
  a30b5e:	4509                	li	a0,2
  a30b60:	cb81                	beqz	a5,a30b70 <LzmaDec_AllocateProbs2.isra.2+0x4a>
  a30b62:	0000 0d00 051f      	l.li	a0,0xd00
  a30b68:	97aa                	add	a5,a5,a0
  a30b6a:	c45c                	sw	a5,12(s0)
  a30b6c:	c424                	sw	s1,72(s0)
  a30b6e:	4501                	li	a0,0
  a30b70:	8044                	popret	{ra,s0-s2},16

00a30b72 <LzmaProps_Decode>:
  a30b72:	0506723b          	bgeui	a2,5,a30b7a <LzmaProps_Decode+0x8>
  a30b76:	4511                	li	a0,4
  a30b78:	8082                	ret
  a30b7a:	21b8                	lbu	a4,2(a1)
  a30b7c:	319c                	lbu	a5,1(a1)
  a30b7e:	10e7a79b          	orshf	a5,a5,a4,sll,8
  a30b82:	31b8                	lbu	a4,3(a1)
  a30b84:	20e7a79b          	orshf	a5,a5,a4,sll,16
  a30b88:	21d8                	lbu	a4,4(a1)
  a30b8a:	30e7a79b          	orshf	a5,a5,a4,sll,24
  a30b8e:	6705                	lui	a4,0x1
  a30b90:	00e7f363          	bgeu	a5,a4,a30b96 <LzmaProps_Decode+0x24>
  a30b94:	6785                	lui	a5,0x1
  a30b96:	c15c                	sw	a5,4(a0)
  a30b98:	219c                	lbu	a5,0(a1)
  a30b9a:	e1f7f73b          	bgeui	a5,225,a30b76 <LzmaProps_Decode+0x4>
  a30b9e:	46a5                	li	a3,9
  a30ba0:	02d7f733          	remu	a4,a5,a3
  a30ba4:	a118                	sb	a4,0(a0)
  a30ba6:	02d00713          	li	a4,45
  a30baa:	02e7d733          	divu	a4,a5,a4
  a30bae:	02d7d7b3          	divu	a5,a5,a3
  a30bb2:	a138                	sb	a4,2(a0)
  a30bb4:	4715                	li	a4,5
  a30bb6:	02e7f7b3          	remu	a5,a5,a4
  a30bba:	b11c                	sb	a5,1(a0)
  a30bbc:	4501                	li	a0,0
  a30bbe:	8082                	ret

00a30bc0 <LzmaDec_AllocateProbs>:
  a30bc0:	8228                	push	{ra,s0},-48
  a30bc2:	842a                	mv	s0,a0
  a30bc4:	0828                	addi	a0,sp,24
  a30bc6:	c636                	sw	a3,12(sp)
  a30bc8:	fabff0ef          	jal	ra,a30b72 <LzmaProps_Decode>
  a30bcc:	46b2                	lw	a3,12(sp)
  a30bce:	ed09                	bnez	a0,a30be8 <LzmaDec_AllocateProbs+0x28>
  a30bd0:	01914603          	lbu	a2,25(sp)
  a30bd4:	01814583          	lbu	a1,24(sp)
  a30bd8:	8522                	mv	a0,s0
  a30bda:	f4dff0ef          	jal	ra,a30b26 <LzmaDec_AllocateProbs2.isra.2>
  a30bde:	e509                	bnez	a0,a30be8 <LzmaDec_AllocateProbs+0x28>
  a30be0:	47e2                	lw	a5,24(sp)
  a30be2:	c01c                	sw	a5,0(s0)
  a30be4:	47f2                	lw	a5,28(sp)
  a30be6:	c05c                	sw	a5,4(s0)
  a30be8:	8224                	popret	{ra,s0},48

00a30bea <SecMemcpyError>:
  a30bea:	04b05b63          	blez	a1,a30c40 <SecMemcpyError+0x56>
  a30bee:	87aa                	mv	a5,a0
  a30bf0:	4859                	li	a6,22
  a30bf2:	c929                	beqz	a0,a30c44 <SecMemcpyError+0x5a>
  a30bf4:	8018                	push	{ra},-16
  a30bf6:	8732                	mv	a4,a2
  a30bf8:	862e                	mv	a2,a1
  a30bfa:	eb01                	bnez	a4,a30c0a <SecMemcpyError+0x20>
  a30bfc:	4581                	li	a1,0
  a30bfe:	da7f70ef          	jal	ra,a289a4 <memset>
  a30c02:	09600813          	li	a6,150
  a30c06:	8542                	mv	a0,a6
  a30c08:	8014                	popret	{ra},16
  a30c0a:	00d5f863          	bgeu	a1,a3,a30c1a <SecMemcpyError+0x30>
  a30c0e:	4581                	li	a1,0
  a30c10:	d95f70ef          	jal	ra,a289a4 <memset>
  a30c14:	0a200813          	li	a6,162
  a30c18:	b7fd                	j	a30c06 <SecMemcpyError+0x1c>
  a30c1a:	00a77663          	bgeu	a4,a0,a30c26 <SecMemcpyError+0x3c>
  a30c1e:	00d705b3          	add	a1,a4,a3
  a30c22:	00b56863          	bltu	a0,a1,a30c32 <SecMemcpyError+0x48>
  a30c26:	4801                	li	a6,0
  a30c28:	fce7ffe3          	bgeu	a5,a4,a30c06 <SecMemcpyError+0x1c>
  a30c2c:	96be                	add	a3,a3,a5
  a30c2e:	fcd77ce3          	bgeu	a4,a3,a30c06 <SecMemcpyError+0x1c>
  a30c32:	4581                	li	a1,0
  a30c34:	853e                	mv	a0,a5
  a30c36:	d6ff70ef          	jal	ra,a289a4 <memset>
  a30c3a:	0b600813          	li	a6,182
  a30c3e:	b7e1                	j	a30c06 <SecMemcpyError+0x1c>
  a30c40:	02200813          	li	a6,34
  a30c44:	8542                	mv	a0,a6
  a30c46:	8082                	ret

00a30c48 <memcpy_s>:
  a30c48:	02d5e363          	bltu	a1,a3,a30c6e <memcpy_s+0x26>
  a30c4c:	c10d                	beqz	a0,a30c6e <memcpy_s+0x26>
  a30c4e:	c205                	beqz	a2,a30c6e <memcpy_s+0x26>
  a30c50:	0005cf63          	bltz	a1,a30c6e <memcpy_s+0x26>
  a30c54:	ce89                	beqz	a3,a30c6e <memcpy_s+0x26>
  a30c56:	00a67663          	bgeu	a2,a0,a30c62 <memcpy_s+0x1a>
  a30c5a:	00d607b3          	add	a5,a2,a3
  a30c5e:	00f57a63          	bgeu	a0,a5,a30c72 <memcpy_s+0x2a>
  a30c62:	00c57663          	bgeu	a0,a2,a30c6e <memcpy_s+0x26>
  a30c66:	00d507b3          	add	a5,a0,a3
  a30c6a:	00f67463          	bgeu	a2,a5,a30c72 <memcpy_s+0x2a>
  a30c6e:	f7dff06f          	j	a30bea <SecMemcpyError>
  a30c72:	8018                	push	{ra},-16
  a30c74:	85b2                	mv	a1,a2
  a30c76:	8636                	mv	a2,a3
  a30c78:	ddbf70ef          	jal	ra,a28a52 <memcpy>
  a30c7c:	4501                	li	a0,0
  a30c7e:	8014                	popret	{ra},16

00a30c80 <memmove_s>:
  a30c80:	8028                	push	{ra,s0},-16
  a30c82:	02200413          	li	s0,34
  a30c86:	00b05c63          	blez	a1,a30c9e <memmove_s+0x1e>
  a30c8a:	4459                	li	s0,22
  a30c8c:	c909                	beqz	a0,a30c9e <memmove_s+0x1e>
  a30c8e:	87b2                	mv	a5,a2
  a30c90:	862e                	mv	a2,a1
  a30c92:	eb81                	bnez	a5,a30ca2 <memmove_s+0x22>
  a30c94:	4581                	li	a1,0
  a30c96:	d0ff70ef          	jal	ra,a289a4 <memset>
  a30c9a:	09600413          	li	s0,150
  a30c9e:	8522                	mv	a0,s0
  a30ca0:	8024                	popret	{ra,s0},16
  a30ca2:	00d5f863          	bgeu	a1,a3,a30cb2 <memmove_s+0x32>
  a30ca6:	4581                	li	a1,0
  a30ca8:	cfdf70ef          	jal	ra,a289a4 <memset>
  a30cac:	0a200413          	li	s0,162
  a30cb0:	b7fd                	j	a30c9e <memmove_s+0x1e>
  a30cb2:	4401                	li	s0,0
  a30cb4:	fef505e3          	beq	a0,a5,a30c9e <memmove_s+0x1e>
  a30cb8:	d2fd                	beqz	a3,a30c9e <memmove_s+0x1e>
  a30cba:	8636                	mv	a2,a3
  a30cbc:	85be                	mv	a1,a5
  a30cbe:	88cf80ef          	jal	ra,a28d4a <memmove>
  a30cc2:	bff1                	j	a30c9e <memmove_s+0x1e>

00a30cc4 <memset_s>:
  a30cc4:	87ae                	mv	a5,a1
  a30cc6:	0205c363          	bltz	a1,a30cec <memset_s+0x28>
  a30cca:	8028                	push	{ra,s0},-16
  a30ccc:	842a                	mv	s0,a0
  a30cce:	c911                	beqz	a0,a30ce2 <memset_s+0x1e>
  a30cd0:	85b2                	mv	a1,a2
  a30cd2:	8636                	mv	a2,a3
  a30cd4:	02d7e063          	bltu	a5,a3,a30cf4 <memset_s+0x30>
  a30cd8:	ccdf70ef          	jal	ra,a289a4 <memset>
  a30cdc:	4701                	li	a4,0
  a30cde:	853a                	mv	a0,a4
  a30ce0:	8024                	popret	{ra,s0},16
  a30ce2:	02200713          	li	a4,34
  a30ce6:	dde5                	beqz	a1,a30cde <memset_s+0x1a>
  a30ce8:	4759                	li	a4,22
  a30cea:	bfd5                	j	a30cde <memset_s+0x1a>
  a30cec:	02200713          	li	a4,34
  a30cf0:	853a                	mv	a0,a4
  a30cf2:	8082                	ret
  a30cf4:	02200713          	li	a4,34
  a30cf8:	d3fd                	beqz	a5,a30cde <memset_s+0x1a>
  a30cfa:	863e                	mv	a2,a5
  a30cfc:	ca9f70ef          	jal	ra,a289a4 <memset>
  a30d00:	0a200713          	li	a4,162
  a30d04:	bfe9                	j	a30cde <memset_s+0x1a>

00a30d06 <SecWriteMultiChar>:
  a30d06:	8732                	mv	a4,a2
  a30d08:	00e04663          	bgtz	a4,a30d14 <SecWriteMultiChar+0xe>
  a30d0c:	429c                	lw	a5,0(a3)
  a30d0e:	963e                	add	a2,a2,a5
  a30d10:	c290                	sw	a2,0(a3)
  a30d12:	8082                	ret
  a30d14:	411c                	lw	a5,0(a0)
  a30d16:	17fd                	addi	a5,a5,-1 # fff <ccause+0x3d>
  a30d18:	c11c                	sw	a5,0(a0)
  a30d1a:	0007d563          	bgez	a5,a30d24 <SecWriteMultiChar+0x1e>
  a30d1e:	57fd                	li	a5,-1
  a30d20:	c29c                	sw	a5,0(a3)
  a30d22:	8082                	ret
  a30d24:	415c                	lw	a5,4(a0)
  a30d26:	177d                	addi	a4,a4,-1 # fff <ccause+0x3d>
  a30d28:	a38c                	sb	a1,0(a5)
  a30d2a:	415c                	lw	a5,4(a0)
  a30d2c:	0785                	addi	a5,a5,1
  a30d2e:	c15c                	sw	a5,4(a0)
  a30d30:	bfe1                	j	a30d08 <SecWriteMultiChar+0x2>

00a30d32 <SecOutput>:
  a30d32:	9fd8                	push	{ra,s0-s11},-560
  a30d34:	00a34ab7          	lui	s5,0xa34
  a30d38:	f78a8793          	addi	a5,s5,-136 # a33f78 <g_itoaUpperDigits>
  a30d3c:	711d                	addi	sp,sp,-96
  a30d3e:	cc3e                	sw	a5,24(sp)
  a30d40:	00a34b37          	lui	s6,0xa34
  a30d44:	47a9                	li	a5,10
  a30d46:	8caa                	mv	s9,a0
  a30d48:	8432                	mv	s0,a2
  a30d4a:	ce02                	sw	zero,28(sp)
  a30d4c:	d002                	sw	zero,32(sp)
  a30d4e:	d202                	sw	zero,36(sp)
  a30d50:	d43e                	sw	a5,40(sp)
  a30d52:	d602                	sw	zero,44(sp)
  a30d54:	d802                	sw	zero,48(sp)
  a30d56:	da02                	sw	zero,52(sp)
  a30d58:	dc02                	sw	zero,56(sp)
  a30d5a:	de02                	sw	zero,60(sp)
  a30d5c:	c082                	sw	zero,64(sp)
  a30d5e:	c282                	sw	zero,68(sp)
  a30d60:	04011423          	sh	zero,72(sp)
  a30d64:	ca02                	sw	zero,20(sp)
  a30d66:	4701                	li	a4,0
  a30d68:	f78a8a93          	addi	s5,s5,-136
  a30d6c:	00a3 3f8c 0b9f      	l.li	s7,0xa33f8c
  a30d72:	f44b0b13          	addi	s6,s6,-188 # a33f44 <g_efuse_cfg+0x151c>
  a30d76:	00a3 4288 0c1f      	l.li	s8,0xa34288
  a30d7c:	00a3 3f64 091f      	l.li	s2,0xa33f64
  a30d82:	219c                	lbu	a5,0(a1)
  a30d84:	c781                	beqz	a5,a30d8c <SecOutput+0x5a>
  a30d86:	46d2                	lw	a3,20(sp)
  a30d88:	0006d963          	bgez	a3,a30d9a <SecOutput+0x68>
  a30d8c:	c319                	beqz	a4,a30d92 <SecOutput+0x60>
  a30d8e:	0737163b          	bnei	a4,7,a30e66 <SecOutput+0x134>
  a30d92:	4552                	lw	a0,20(sp)
  a30d94:	25010113          	addi	sp,sp,592
  a30d98:	80d4                	popret	{ra,s0-s11},64
  a30d9a:	00fb86b3          	add	a3,s7,a5
  a30d9e:	2294                	lbu	a3,0(a3)
  a30da0:	00158a13          	addi	s4,a1,1
  a30da4:	08dbd6db          	muliadd	a3,s7,a3,9
  a30da8:	96ba                	add	a3,a3,a4
  a30daa:	1006c983          	lbu	s3,256(a3)
  a30dae:	0829fe3b          	bgeui	s3,8,a30e66 <SecOutput+0x134>
  a30db2:	053b069b          	addshf	a3,s6,s3,sll,2
  a30db6:	4294                	lw	a3,0(a3)
  a30db8:	8682                	jr	a3
  a30dba:	000ca703          	lw	a4,0(s9)
  a30dbe:	177d                	addi	a4,a4,-1
  a30dc0:	00eca023          	sw	a4,0(s9)
  a30dc4:	02074063          	bltz	a4,a30de4 <SecOutput+0xb2>
  a30dc8:	004ca703          	lw	a4,4(s9)
  a30dcc:	a31c                	sb	a5,0(a4)
  a30dce:	004ca783          	lw	a5,4(s9)
  a30dd2:	0785                	addi	a5,a5,1
  a30dd4:	00fca223          	sw	a5,4(s9)
  a30dd8:	47d2                	lw	a5,20(sp)
  a30dda:	0785                	addi	a5,a5,1
  a30ddc:	ca3e                	sw	a5,20(sp)
  a30dde:	85d2                	mv	a1,s4
  a30de0:	874e                	mv	a4,s3
  a30de2:	b745                	j	a30d82 <SecOutput+0x50>
  a30de4:	57fd                	li	a5,-1
  a30de6:	bfdd                	j	a30ddc <SecOutput+0xaa>
  a30de8:	57fd                	li	a5,-1
  a30dea:	c282                	sw	zero,68(sp)
  a30dec:	d002                	sw	zero,32(sp)
  a30dee:	d602                	sw	zero,44(sp)
  a30df0:	d802                	sw	zero,48(sp)
  a30df2:	da3e                	sw	a5,52(sp)
  a30df4:	d202                	sw	zero,36(sp)
  a30df6:	dc02                	sw	zero,56(sp)
  a30df8:	de02                	sw	zero,60(sp)
  a30dfa:	b7d5                	j	a30dde <SecOutput+0xac>
  a30dfc:	02b00713          	li	a4,43
  a30e00:	02e78963          	beq	a5,a4,a30e32 <SecOutput+0x100>
  a30e04:	00f76a63          	bltu	a4,a5,a30e18 <SecOutput+0xe6>
  a30e08:	2007883b          	beqi	a5,32,a30e28 <SecOutput+0xf6>
  a30e0c:	23f794bb          	bnei	a5,35,a30dde <SecOutput+0xac>
  a30e10:	57b2                	lw	a5,44(sp)
  a30e12:	0807e793          	ori	a5,a5,128
  a30e16:	a821                	j	a30e2e <SecOutput+0xfc>
  a30e18:	2d0788bb          	beqi	a5,45,a30e3a <SecOutput+0x108>
  a30e1c:	30f790bb          	bnei	a5,48,a30dde <SecOutput+0xac>
  a30e20:	57b2                	lw	a5,44(sp)
  a30e22:	0087e793          	ori	a5,a5,8
  a30e26:	a021                	j	a30e2e <SecOutput+0xfc>
  a30e28:	57b2                	lw	a5,44(sp)
  a30e2a:	0027e793          	ori	a5,a5,2
  a30e2e:	d63e                	sw	a5,44(sp)
  a30e30:	b77d                	j	a30dde <SecOutput+0xac>
  a30e32:	57b2                	lw	a5,44(sp)
  a30e34:	0017e793          	ori	a5,a5,1
  a30e38:	bfdd                	j	a30e2e <SecOutput+0xfc>
  a30e3a:	57b2                	lw	a5,44(sp)
  a30e3c:	0047e793          	ori	a5,a5,4
  a30e40:	b7fd                	j	a30e2e <SecOutput+0xfc>
  a30e42:	2a0793bb          	bnei	a5,42,a30e50 <SecOutput+0x11e>
  a30e46:	4014                	lw	a3,0(s0)
  a30e48:	0411                	addi	s0,s0,4
  a30e4a:	d836                	sw	a3,48(sp)
  a30e4c:	4685                	li	a3,1
  a30e4e:	dc36                	sw	a3,56(sp)
  a30e50:	56e2                	lw	a3,56(sp)
  a30e52:	e695                	bnez	a3,a30e7e <SecOutput+0x14c>
  a30e54:	030701bb          	beqi	a4,3,a30e5a <SecOutput+0x128>
  a30e58:	d802                	sw	zero,48(sp)
  a30e5a:	56c2                	lw	a3,48(sp)
  a30e5c:	0147 ae14 071f      	l.li	a4,0x147ae14
  a30e62:	00d75463          	bge	a4,a3,a30e6a <SecOutput+0x138>
  a30e66:	557d                	li	a0,-1
  a30e68:	b735                	j	a30d94 <SecOutput+0x62>
  a30e6a:	00269713          	slli	a4,a3,0x2
  a30e6e:	fd078793          	addi	a5,a5,-48
  a30e72:	9736                	add	a4,a4,a3
  a30e74:	9f81                	uxtb	a5
  a30e76:	02e7879b          	addshf	a5,a5,a4,sll,1
  a30e7a:	d83e                	sw	a5,48(sp)
  a30e7c:	b78d                	j	a30dde <SecOutput+0xac>
  a30e7e:	57c2                	lw	a5,48(sp)
  a30e80:	0007d963          	bgez	a5,a30e92 <SecOutput+0x160>
  a30e84:	5732                	lw	a4,44(sp)
  a30e86:	40f007b3          	neg	a5,a5
  a30e8a:	d83e                	sw	a5,48(sp)
  a30e8c:	00476713          	ori	a4,a4,4
  a30e90:	d63a                	sw	a4,44(sp)
  a30e92:	5742                	lw	a4,48(sp)
  a30e94:	0ccc ccc8 079f      	l.li	a5,0xcccccc8
  a30e9a:	f4e7d2e3          	bge	a5,a4,a30dde <SecOutput+0xac>
  a30e9e:	b7e1                	j	a30e66 <SecOutput+0x134>
  a30ea0:	da02                	sw	zero,52(sp)
  a30ea2:	bf35                	j	a30dde <SecOutput+0xac>
  a30ea4:	2a0793bb          	bnei	a5,42,a30eb2 <SecOutput+0x180>
  a30ea8:	4018                	lw	a4,0(s0)
  a30eaa:	0411                	addi	s0,s0,4
  a30eac:	da3a                	sw	a4,52(sp)
  a30eae:	4705                	li	a4,1
  a30eb0:	de3a                	sw	a4,60(sp)
  a30eb2:	56f2                	lw	a3,60(sp)
  a30eb4:	5752                	lw	a4,52(sp)
  a30eb6:	e285                	bnez	a3,a30ed6 <SecOutput+0x1a4>
  a30eb8:	0147 ae14 069f      	l.li	a3,0x147ae14
  a30ebe:	fae6c4e3          	blt	a3,a4,a30e66 <SecOutput+0x134>
  a30ec2:	00271693          	slli	a3,a4,0x2
  a30ec6:	fd078793          	addi	a5,a5,-48
  a30eca:	9736                	add	a4,a4,a3
  a30ecc:	9f81                	uxtb	a5
  a30ece:	02e7879b          	addshf	a5,a5,a4,sll,1
  a30ed2:	da3e                	sw	a5,52(sp)
  a30ed4:	b729                	j	a30dde <SecOutput+0xac>
  a30ed6:	00075463          	bgez	a4,a30ede <SecOutput+0x1ac>
  a30eda:	57fd                	li	a5,-1
  a30edc:	da3e                	sw	a5,52(sp)
  a30ede:	5752                	lw	a4,52(sp)
  a30ee0:	bf55                	j	a30e94 <SecOutput+0x162>
  a30ee2:	06a00713          	li	a4,106
  a30ee6:	08e78763          	beq	a5,a4,a30f74 <SecOutput+0x242>
  a30eea:	04f76063          	bltu	a4,a5,a30f2a <SecOutput+0x1f8>
  a30eee:	04c00713          	li	a4,76
  a30ef2:	04e78663          	beq	a5,a4,a30f3e <SecOutput+0x20c>
  a30ef6:	00f76e63          	bltu	a4,a5,a30f12 <SecOutput+0x1e0>
  a30efa:	49b7993b          	bnei	a5,73,a30dde <SecOutput+0xac>
  a30efe:	319c                	lbu	a5,1(a1)
  a30f00:	36179fbb          	bnei	a5,54,a30f7e <SecOutput+0x24c>
  a30f04:	21bc                	lbu	a5,2(a1)
  a30f06:	34279d3b          	bnei	a5,52,a30fba <SecOutput+0x288>
  a30f0a:	00358a13          	addi	s4,a1,3
  a30f0e:	6721                	lui	a4,0x8
  a30f10:	a091                	j	a30f54 <SecOutput+0x222>
  a30f12:	5a078fbb          	beqi	a5,90,a30f50 <SecOutput+0x21e>
  a30f16:	68b7923b          	bnei	a5,104,a30dde <SecOutput+0xac>
  a30f1a:	3194                	lbu	a3,1(a1)
  a30f1c:	5732                	lw	a4,44(sp)
  a30f1e:	0af69763          	bne	a3,a5,a30fcc <SecOutput+0x29a>
  a30f22:	00258a13          	addi	s4,a1,2
  a30f26:	6789                	lui	a5,0x2
  a30f28:	a081                	j	a30f68 <SecOutput+0x236>
  a30f2a:	07400713          	li	a4,116
  a30f2e:	04e78663          	beq	a5,a4,a30f7a <SecOutput+0x248>
  a30f32:	00f76b63          	bltu	a4,a5,a30f48 <SecOutput+0x216>
  a30f36:	6c07893b          	beqi	a5,108,a30f5a <SecOutput+0x228>
  a30f3a:	71a7993b          	bnei	a5,113,a30dde <SecOutput+0xac>
  a30f3e:	57b2                	lw	a5,44(sp)
  a30f40:	0000 1400 071f      	l.li	a4,0x1400
  a30f46:	a801                	j	a30f56 <SecOutput+0x224>
  a30f48:	772782bb          	beqi	a5,119,a30fd2 <SecOutput+0x2a0>
  a30f4c:	7aa794bb          	bnei	a5,122,a30dde <SecOutput+0xac>
  a30f50:	00020737          	lui	a4,0x20
  a30f54:	57b2                	lw	a5,44(sp)
  a30f56:	8fd9                	or	a5,a5,a4
  a30f58:	bdd9                	j	a30e2e <SecOutput+0xfc>
  a30f5a:	3194                	lbu	a3,1(a1)
  a30f5c:	5732                	lw	a4,44(sp)
  a30f5e:	00f69763          	bne	a3,a5,a30f6c <SecOutput+0x23a>
  a30f62:	00258a13          	addi	s4,a1,2
  a30f66:	6785                	lui	a5,0x1
  a30f68:	8f5d                	or	a4,a4,a5
  a30f6a:	a019                	j	a30f70 <SecOutput+0x23e>
  a30f6c:	01076713          	ori	a4,a4,16
  a30f70:	d63a                	sw	a4,44(sp)
  a30f72:	b5b5                	j	a30dde <SecOutput+0xac>
  a30f74:	00040737          	lui	a4,0x40
  a30f78:	bff1                	j	a30f54 <SecOutput+0x222>
  a30f7a:	6741                	lui	a4,0x10
  a30f7c:	bfe1                	j	a30f54 <SecOutput+0x222>
  a30f7e:	3307963b          	bnei	a5,51,a30f96 <SecOutput+0x264>
  a30f82:	21bc                	lbu	a5,2(a1)
  a30f84:	32079dbb          	bnei	a5,50,a30fba <SecOutput+0x288>
  a30f88:	57b2                	lw	a5,44(sp)
  a30f8a:	7761                	lui	a4,0xffff8
  a30f8c:	177d                	addi	a4,a4,-1 # ffff7fff <_gp_+0xff5c3537>
  a30f8e:	00358a13          	addi	s4,a1,3
  a30f92:	8ff9                	and	a5,a5,a4
  a30f94:	bd69                	j	a30e2e <SecOutput+0xfc>
  a30f96:	f9c78713          	addi	a4,a5,-100 # f9c <__bss_size__+0x994>
  a30f9a:	0ff77693          	andi	a3,a4,255
  a30f9e:	1206f53b          	bgeui	a3,18,a30fb2 <SecOutput+0x280>
  a30fa2:	0002 0821 071f      	l.li	a4,0x20821
  a30fa8:	00d75733          	srl	a4,a4,a3
  a30fac:	8b05                	andi	a4,a4,1
  a30fae:	e20718e3          	bnez	a4,a30dde <SecOutput+0xac>
  a30fb2:	0df7f793          	andi	a5,a5,223
  a30fb6:	58878a3b          	beqi	a5,88,a30dde <SecOutput+0xac>
  a30fba:	000ca783          	lw	a5,0(s9)
  a30fbe:	17fd                	addi	a5,a5,-1
  a30fc0:	00fca023          	sw	a5,0(s9)
  a30fc4:	0007dc63          	bgez	a5,a30fdc <SecOutput+0x2aa>
  a30fc8:	57fd                	li	a5,-1
  a30fca:	a02d                	j	a30ff4 <SecOutput+0x2c2>
  a30fcc:	02076713          	ori	a4,a4,32
  a30fd0:	b745                	j	a30f70 <SecOutput+0x23e>
  a30fd2:	57b2                	lw	a5,44(sp)
  a30fd4:	0000 0800 071f      	l.li	a4,0x800
  a30fda:	bfb5                	j	a30f56 <SecOutput+0x224>
  a30fdc:	004ca783          	lw	a5,4(s9)
  a30fe0:	04900713          	li	a4,73
  a30fe4:	a398                	sb	a4,0(a5)
  a30fe6:	004ca783          	lw	a5,4(s9)
  a30fea:	0785                	addi	a5,a5,1
  a30fec:	00fca223          	sw	a5,4(s9)
  a30ff0:	47d2                	lw	a5,20(sp)
  a30ff2:	0785                	addi	a5,a5,1
  a30ff4:	ca3e                	sw	a5,20(sp)
  a30ff6:	4981                	li	s3,0
  a30ff8:	b3dd                	j	a30dde <SecOutput+0xac>
  a30ffa:	6847f23b          	bgeui	a5,104,a31102 <SecOutput+0x3d0>
  a30ffe:	06500713          	li	a4,101
  a31002:	e6e7f2e3          	bgeu	a5,a4,a30e66 <SecOutput+0x134>
  a31006:	05300713          	li	a4,83
  a3100a:	1ae78963          	beq	a5,a4,a311bc <SecOutput+0x48a>
  a3100e:	08f76f63          	bltu	a4,a5,a310ac <SecOutput+0x37a>
  a31012:	04300713          	li	a4,67
  a31016:	14e78f63          	beq	a5,a4,a31174 <SecOutput+0x442>
  a3101a:	00e7e663          	bltu	a5,a4,a31026 <SecOutput+0x2f4>
  a3101e:	fbb78793          	addi	a5,a5,-69
  a31022:	0397e13b          	bltui	a5,3,a30e66 <SecOutput+0x134>
  a31026:	5782                	lw	a5,32(sp)
  a31028:	5642                	lw	a2,48(sp)
  a3102a:	8e1d                	sub	a2,a2,a5
  a3102c:	4796                	lw	a5,68(sp)
  a3102e:	8e1d                	sub	a2,a2,a5
  a31030:	57b2                	lw	a5,44(sp)
  a31032:	c0b2                	sw	a2,64(sp)
  a31034:	8bb1                	andi	a5,a5,12
  a31036:	eb89                	bnez	a5,a31048 <SecOutput+0x316>
  a31038:	00c05863          	blez	a2,a31048 <SecOutput+0x316>
  a3103c:	0854                	addi	a3,sp,20
  a3103e:	02000593          	li	a1,32
  a31042:	8566                	mv	a0,s9
  a31044:	cc3ff0ef          	jal	ra,a30d06 <SecWriteMultiChar>
  a31048:	4696                	lw	a3,68(sp)
  a3104a:	00d05e63          	blez	a3,a31066 <SecOutput+0x334>
  a3104e:	083c                	addi	a5,sp,24
  a31050:	00f68633          	add	a2,a3,a5
  a31054:	000ca703          	lw	a4,0(s9)
  a31058:	177d                	addi	a4,a4,-1
  a3105a:	00eca023          	sw	a4,0(s9)
  a3105e:	4a075e63          	bgez	a4,a3151a <SecOutput+0x7e8>
  a31062:	57fd                	li	a5,-1
  a31064:	ca3e                	sw	a5,20(sp)
  a31066:	57b2                	lw	a5,44(sp)
  a31068:	8bb1                	andi	a5,a5,12
  a3106a:	080795bb          	bnei	a5,8,a31080 <SecOutput+0x34e>
  a3106e:	4606                	lw	a2,64(sp)
  a31070:	00c05863          	blez	a2,a31080 <SecOutput+0x34e>
  a31074:	0854                	addi	a3,sp,20
  a31076:	03000593          	li	a1,48
  a3107a:	8566                	mv	a0,s9
  a3107c:	c8bff0ef          	jal	ra,a30d06 <SecWriteMultiChar>
  a31080:	5792                	lw	a5,36(sp)
  a31082:	4a078c63          	beqz	a5,a3153a <SecOutput+0x808>
  a31086:	57fd                	li	a5,-1
  a31088:	ca3e                	sw	a5,20(sp)
  a3108a:	47d2                	lw	a5,20(sp)
  a3108c:	d407c9e3          	bltz	a5,a30dde <SecOutput+0xac>
  a31090:	57b2                	lw	a5,44(sp)
  a31092:	8b91                	andi	a5,a5,4
  a31094:	d40785e3          	beqz	a5,a30dde <SecOutput+0xac>
  a31098:	4606                	lw	a2,64(sp)
  a3109a:	d4c052e3          	blez	a2,a30dde <SecOutput+0xac>
  a3109e:	0854                	addi	a3,sp,20
  a310a0:	02000593          	li	a1,32
  a310a4:	8566                	mv	a0,s9
  a310a6:	c61ff0ef          	jal	ra,a30d06 <SecWriteMultiChar>
  a310aa:	bb15                	j	a30dde <SecOutput+0xac>
  a310ac:	06300713          	li	a4,99
  a310b0:	0ce78c63          	beq	a5,a4,a31188 <SecOutput+0x456>
  a310b4:	06f76163          	bltu	a4,a5,a31116 <SecOutput+0x3e4>
  a310b8:	58d79bbb          	bnei	a5,88,a31026 <SecOutput+0x2f4>
  a310bc:	4741                	li	a4,16
  a310be:	d43a                	sw	a4,40(sp)
  a310c0:	cc4a                	sw	s2,24(sp)
  a310c2:	5732                	lw	a4,44(sp)
  a310c4:	585785bb          	beqi	a5,88,a3121a <SecOutput+0x4e8>
  a310c8:	7057953b          	bnei	a5,112,a3121c <SecOutput+0x4ea>
  a310cc:	0000 4090 079f      	l.li	a5,0x4090
  a310d2:	8f5d                	or	a4,a4,a5
  a310d4:	4789                	li	a5,2
  a310d6:	c2be                	sw	a5,68(sp)
  a310d8:	77e1                	lui	a5,0xffff8
  a310da:	8307c793          	xori	a5,a5,-2000
  a310de:	da02                	sw	zero,52(sp)
  a310e0:	d63a                	sw	a4,44(sp)
  a310e2:	04f11423          	sh	a5,72(sp)
  a310e6:	57b2                	lw	a5,44(sp)
  a310e8:	6725                	lui	a4,0x9
  a310ea:	8f7d                	and	a4,a4,a5
  a310ec:	16070a63          	beqz	a4,a31260 <SecOutput+0x52e>
  a310f0:	041d                	addi	s0,s0,7
  a310f2:	ff847793          	andi	a5,s0,-8
  a310f6:	00878413          	addi	s0,a5,8 # ffff8008 <_gp_+0xff5c3540>
  a310fa:	4384                	lw	s1,0(a5)
  a310fc:	0047ad03          	lw	s10,4(a5)
  a31100:	a245                	j	a312a0 <SecOutput+0x56e>
  a31102:	07000713          	li	a4,112
  a31106:	fae78be3          	beq	a5,a4,a310bc <SecOutput+0x38a>
  a3110a:	02f76363          	bltu	a4,a5,a31130 <SecOutput+0x3fe>
  a3110e:	6907823b          	beqi	a5,105,a31116 <SecOutput+0x3e4>
  a31112:	6fc7953b          	bnei	a5,111,a31026 <SecOutput+0x2f4>
  a31116:	06900693          	li	a3,105
  a3111a:	5732                	lw	a4,44(sp)
  a3111c:	00d78663          	beq	a5,a3,a31128 <SecOutput+0x3f6>
  a31120:	10f6ed63          	bltu	a3,a5,a3123a <SecOutput+0x508>
  a31124:	64f790bb          	bnei	a5,100,a310e6 <SecOutput+0x3b4>
  a31128:	04076713          	ori	a4,a4,64
  a3112c:	d63a                	sw	a4,44(sp)
  a3112e:	aa11                	j	a31242 <SecOutput+0x510>
  a31130:	75f789bb          	beqi	a5,117,a31116 <SecOutput+0x3e4>
  a31134:	78e7823b          	beqi	a5,120,a310bc <SecOutput+0x38a>
  a31138:	73b79bbb          	bnei	a5,115,a31026 <SecOutput+0x2f4>
  a3113c:	57b2                	lw	a5,44(sp)
  a3113e:	4014                	lw	a3,0(s0)
  a31140:	00440493          	addi	s1,s0,4
  a31144:	ff77f713          	andi	a4,a5,-9
  a31148:	d63a                	sw	a4,44(sp)
  a3114a:	0000 0810 071f      	l.li	a4,0x810
  a31150:	8ff9                	and	a5,a5,a4
  a31152:	ce36                	sw	a3,28(sp)
  a31154:	5752                	lw	a4,52(sp)
  a31156:	ebd9                	bnez	a5,a311ec <SecOutput+0x4ba>
  a31158:	e689                	bnez	a3,a31162 <SecOutput+0x430>
  a3115a:	00a3 4290 079f      	l.li	a5,0xa34290
  a31160:	ce3e                	sw	a5,28(sp)
  a31162:	4572                	lw	a0,28(sp)
  a31164:	ff171bbb          	bnei	a4,-1,a311d2 <SecOutput+0x4a0>
  a31168:	ba5f70ef          	jal	ra,a28d0c <strlen>
  a3116c:	06055b63          	bgez	a0,a311e2 <SecOutput+0x4b0>
  a31170:	4501                	li	a0,0
  a31172:	a885                	j	a311e2 <SecOutput+0x4b0>
  a31174:	57b2                	lw	a5,44(sp)
  a31176:	6705                	lui	a4,0x1
  a31178:	83070693          	addi	a3,a4,-2000 # 830 <__bss_size__+0x228>
  a3117c:	8efd                	and	a3,a3,a5
  a3117e:	e689                	bnez	a3,a31188 <SecOutput+0x456>
  a31180:	80070713          	addi	a4,a4,-2048
  a31184:	8fd9                	or	a5,a5,a4
  a31186:	d63e                	sw	a5,44(sp)
  a31188:	57b2                	lw	a5,44(sp)
  a3118a:	4605                	li	a2,1
  a3118c:	d032                	sw	a2,32(sp)
  a3118e:	ff77f593          	andi	a1,a5,-9
  a31192:	d62e                	sw	a1,44(sp)
  a31194:	0000 0810 059f      	l.li	a1,0x810
  a3119a:	8fed                	and	a5,a5,a1
  a3119c:	00440713          	addi	a4,s0,4
  a311a0:	4014                	lw	a3,0(s0)
  a311a2:	c799                	beqz	a5,a311b0 <SecOutput+0x47e>
  a311a4:	00fc                	addi	a5,sp,76
  a311a6:	c6b6                	sw	a3,76(sp)
  a311a8:	ce3e                	sw	a5,28(sp)
  a311aa:	d232                	sw	a2,36(sp)
  a311ac:	843a                	mv	s0,a4
  a311ae:	bda5                	j	a31026 <SecOutput+0x2f4>
  a311b0:	00fc                	addi	a5,sp,76
  a311b2:	04d10623          	sb	a3,76(sp)
  a311b6:	ce3e                	sw	a5,28(sp)
  a311b8:	d202                	sw	zero,36(sp)
  a311ba:	bfcd                	j	a311ac <SecOutput+0x47a>
  a311bc:	57b2                	lw	a5,44(sp)
  a311be:	6705                	lui	a4,0x1
  a311c0:	83070693          	addi	a3,a4,-2000 # 830 <__bss_size__+0x228>
  a311c4:	8efd                	and	a3,a3,a5
  a311c6:	fabd                	bnez	a3,a3113c <SecOutput+0x40a>
  a311c8:	80070713          	addi	a4,a4,-2048
  a311cc:	8fd9                	or	a5,a5,a4
  a311ce:	d63e                	sw	a5,44(sp)
  a311d0:	b7b5                	j	a3113c <SecOutput+0x40a>
  a311d2:	972a                	add	a4,a4,a0
  a311d4:	87aa                	mv	a5,a0
  a311d6:	00e78463          	beq	a5,a4,a311de <SecOutput+0x4ac>
  a311da:	2394                	lbu	a3,0(a5)
  a311dc:	e691                	bnez	a3,a311e8 <SecOutput+0x4b6>
  a311de:	40a78533          	sub	a0,a5,a0
  a311e2:	d02a                	sw	a0,32(sp)
  a311e4:	8426                	mv	s0,s1
  a311e6:	b581                	j	a31026 <SecOutput+0x2f4>
  a311e8:	0785                	addi	a5,a5,1
  a311ea:	b7f5                	j	a311d6 <SecOutput+0x4a4>
  a311ec:	4785                	li	a5,1
  a311ee:	d23e                	sw	a5,36(sp)
  a311f0:	e689                	bnez	a3,a311fa <SecOutput+0x4c8>
  a311f2:	00a3 4298 079f      	l.li	a5,0xa34298
  a311f8:	ce3e                	sw	a5,28(sp)
  a311fa:	46f2                	lw	a3,28(sp)
  a311fc:	4781                	li	a5,0
  a311fe:	00e78463          	beq	a5,a4,a31206 <SecOutput+0x4d4>
  a31202:	4290                	lw	a2,0(a3)
  a31204:	ea01                	bnez	a2,a31214 <SecOutput+0x4e2>
  a31206:	20000737          	lui	a4,0x20000
  a3120a:	00e7e363          	bltu	a5,a4,a31210 <SecOutput+0x4de>
  a3120e:	4781                	li	a5,0
  a31210:	d03e                	sw	a5,32(sp)
  a31212:	bfc9                	j	a311e4 <SecOutput+0x4b2>
  a31214:	0785                	addi	a5,a5,1
  a31216:	0691                	addi	a3,a3,4
  a31218:	b7dd                	j	a311fe <SecOutput+0x4cc>
  a3121a:	cc56                	sw	s5,24(sp)
  a3121c:	08077713          	andi	a4,a4,128
  a31220:	ee070be3          	beqz	a4,a31116 <SecOutput+0x3e4>
  a31224:	03000713          	li	a4,48
  a31228:	04e10423          	sb	a4,72(sp)
  a3122c:	4762                	lw	a4,24(sp)
  a3122e:	2b18                	lbu	a4,16(a4)
  a31230:	04e104a3          	sb	a4,73(sp)
  a31234:	4709                	li	a4,2
  a31236:	c2ba                	sw	a4,68(sp)
  a31238:	bdf9                	j	a31116 <SecOutput+0x3e4>
  a3123a:	6f07843b          	beqi	a5,111,a3124a <SecOutput+0x518>
  a3123e:	75a79a3b          	bnei	a5,117,a310e6 <SecOutput+0x3b4>
  a31242:	47a9                	li	a5,10
  a31244:	d43e                	sw	a5,40(sp)
  a31246:	cc4a                	sw	s2,24(sp)
  a31248:	bd79                	j	a310e6 <SecOutput+0x3b4>
  a3124a:	47a1                	li	a5,8
  a3124c:	d43e                	sw	a5,40(sp)
  a3124e:	cc4a                	sw	s2,24(sp)
  a31250:	08077793          	andi	a5,a4,128
  a31254:	e80789e3          	beqz	a5,a310e6 <SecOutput+0x3b4>
  a31258:	20076713          	ori	a4,a4,512
  a3125c:	d63a                	sw	a4,44(sp)
  a3125e:	b561                	j	a310e6 <SecOutput+0x3b4>
  a31260:	0107f693          	andi	a3,a5,16
  a31264:	0407f713          	andi	a4,a5,64
  a31268:	c689                	beqz	a3,a31272 <SecOutput+0x540>
  a3126a:	4004                	lw	s1,0(s0)
  a3126c:	0411                	addi	s0,s0,4
  a3126e:	cb4d                	beqz	a4,a31320 <SecOutput+0x5ee>
  a31270:	a065                	j	a31318 <SecOutput+0x5e6>
  a31272:	01279693          	slli	a3,a5,0x12
  a31276:	0806d963          	bgez	a3,a31308 <SecOutput+0x5d6>
  a3127a:	4014                	lw	a3,0(s0)
  a3127c:	4d01                	li	s10,0
  a3127e:	0411                	addi	s0,s0,4
  a31280:	0ff6f493          	andi	s1,a3,255
  a31284:	cf11                	beqz	a4,a312a0 <SecOutput+0x56e>
  a31286:	06e2                	slli	a3,a3,0x18
  a31288:	86e1                	srai	a3,a3,0x18
  a3128a:	0006db63          	bgez	a3,a312a0 <SecOutput+0x56e>
  a3128e:	fff4c493          	not	s1,s1
  a31292:	9c81                	uxtb	s1
  a31294:	0485                	addi	s1,s1,1
  a31296:	1007e793          	ori	a5,a5,256
  a3129a:	41f4dd13          	srai	s10,s1,0x1f
  a3129e:	d63e                	sw	a5,44(sp)
  a312a0:	57b2                	lw	a5,44(sp)
  a312a2:	8da6                	mv	s11,s1
  a312a4:	876a                	mv	a4,s10
  a312a6:	0407f693          	andi	a3,a5,64
  a312aa:	ce89                	beqz	a3,a312c4 <SecOutput+0x592>
  a312ac:	000d5c63          	bgez	s10,a312c4 <SecOutput+0x592>
  a312b0:	40900db3          	neg	s11,s1
  a312b4:	01b036b3          	snez	a3,s11
  a312b8:	41a00733          	neg	a4,s10
  a312bc:	1007e793          	ori	a5,a5,256
  a312c0:	8f15                	sub	a4,a4,a3
  a312c2:	d63e                	sw	a5,44(sp)
  a312c4:	56b2                	lw	a3,44(sp)
  a312c6:	000497b7          	lui	a5,0x49
  a312ca:	8ff5                	and	a5,a5,a3
  a312cc:	e391                	bnez	a5,a312d0 <SecOutput+0x59e>
  a312ce:	4701                	li	a4,0
  a312d0:	24c10813          	addi	a6,sp,588
  a312d4:	ce42                	sw	a6,28(sp)
  a312d6:	00ede7b3          	or	a5,s11,a4
  a312da:	e3c1                	bnez	a5,a3135a <SecOutput+0x628>
  a312dc:	c282                	sw	zero,68(sp)
  a312de:	d002                	sw	zero,32(sp)
  a312e0:	5752                	lw	a4,52(sp)
  a312e2:	4685                	li	a3,1
  a312e4:	00074f63          	bltz	a4,a31302 <SecOutput+0x5d0>
  a312e8:	57b2                	lw	a5,44(sp)
  a312ea:	01179693          	slli	a3,a5,0x11
  a312ee:	0006c463          	bltz	a3,a312f6 <SecOutput+0x5c4>
  a312f2:	9bdd                	andi	a5,a5,-9
  a312f4:	d63e                	sw	a5,44(sp)
  a312f6:	20000793          	li	a5,512
  a312fa:	00e7d363          	bge	a5,a4,a31300 <SecOutput+0x5ce>
  a312fe:	da3e                	sw	a5,52(sp)
  a31300:	56d2                	lw	a3,52(sp)
  a31302:	03000613          	li	a2,48
  a31306:	aa69                	j	a314a0 <SecOutput+0x76e>
  a31308:	0207f693          	andi	a3,a5,32
  a3130c:	ce81                	beqz	a3,a31324 <SecOutput+0x5f2>
  a3130e:	4004                	lw	s1,0(s0)
  a31310:	0411                	addi	s0,s0,4
  a31312:	c711                	beqz	a4,a3131e <SecOutput+0x5ec>
  a31314:	04c2                	slli	s1,s1,0x10
  a31316:	84c1                	srai	s1,s1,0x10
  a31318:	41f4dd13          	srai	s10,s1,0x1f
  a3131c:	b751                	j	a312a0 <SecOutput+0x56e>
  a3131e:	9ca1                	uxth	s1
  a31320:	4d01                	li	s10,0
  a31322:	bfbd                	j	a312a0 <SecOutput+0x56e>
  a31324:	00f79693          	slli	a3,a5,0xf
  a31328:	0006d763          	bgez	a3,a31336 <SecOutput+0x604>
  a3132c:	4004                	lw	s1,0(s0)
  a3132e:	0411                	addi	s0,s0,4
  a31330:	41f4dd13          	srai	s10,s1,0x1f
  a31334:	b7b5                	j	a312a0 <SecOutput+0x56e>
  a31336:	00e79693          	slli	a3,a5,0xe
  a3133a:	0006db63          	bgez	a3,a31350 <SecOutput+0x61e>
  a3133e:	4004                	lw	s1,0(s0)
  a31340:	00440793          	addi	a5,s0,4
  a31344:	41f4dd13          	srai	s10,s1,0x1f
  a31348:	e311                	bnez	a4,a3134c <SecOutput+0x61a>
  a3134a:	4d01                	li	s10,0
  a3134c:	843e                	mv	s0,a5
  a3134e:	bf89                	j	a312a0 <SecOutput+0x56e>
  a31350:	00d79693          	slli	a3,a5,0xd
  a31354:	f006dbe3          	bgez	a3,a3126a <SecOutput+0x538>
  a31358:	bb61                	j	a310f0 <SecOutput+0x3be>
  a3135a:	57a2                	lw	a5,40(sp)
  a3135c:	ef49                	bnez	a4,a313f6 <SecOutput+0x6c4>
  a3135e:	0a1791bb          	bnei	a5,10,a313a4 <SecOutput+0x672>
  a31362:	46a9                	li	a3,10
  a31364:	4625                	li	a2,9
  a31366:	4772                	lw	a4,28(sp)
  a31368:	fff70793          	addi	a5,a4,-1 # 1fffffff <_gp_+0x1f5cb537>
  a3136c:	ce3e                	sw	a5,28(sp)
  a3136e:	02ddf7b3          	remu	a5,s11,a3
  a31372:	97ca                	add	a5,a5,s2
  a31374:	239c                	lbu	a5,0(a5)
  a31376:	fef70fa3          	sb	a5,-1(a4)
  a3137a:	002dd793          	srli	a5,s11,0x2
  a3137e:	43b7879b          	addshf	a5,a5,s11,srl,1
  a31382:	48f7879b          	addshf	a5,a5,a5,srl,4
  a31386:	50f7879b          	addshf	a5,a5,a5,srl,8
  a3138a:	60f7879b          	addshf	a5,a5,a5,srl,16
  a3138e:	838d                	srli	a5,a5,0x3
  a31390:	00279513          	slli	a0,a5,0x2
  a31394:	953e                	add	a0,a0,a5
  a31396:	02ad951b          	subshf	a0,s11,a0,sll,1
  a3139a:	04a67c63          	bgeu	a2,a0,a313f2 <SecOutput+0x6c0>
  a3139e:	0785                	addi	a5,a5,1 # 49001 <__heap_size+0x2ba09>
  a313a0:	8dbe                	mv	s11,a5
  a313a2:	b7d1                	j	a31366 <SecOutput+0x634>
  a313a4:	100789bb          	beqi	a5,16,a313ca <SecOutput+0x698>
  a313a8:	0817903b          	bnei	a5,8,a313e8 <SecOutput+0x6b6>
  a313ac:	4772                	lw	a4,28(sp)
  a313ae:	fff70793          	addi	a5,a4,-1
  a313b2:	ce3e                	sw	a5,28(sp)
  a313b4:	007df793          	andi	a5,s11,7
  a313b8:	97ca                	add	a5,a5,s2
  a313ba:	239c                	lbu	a5,0(a5)
  a313bc:	003ddd93          	srli	s11,s11,0x3
  a313c0:	fef70fa3          	sb	a5,-1(a4)
  a313c4:	fe0d94e3          	bnez	s11,a313ac <SecOutput+0x67a>
  a313c8:	a005                	j	a313e8 <SecOutput+0x6b6>
  a313ca:	4772                	lw	a4,28(sp)
  a313cc:	00fdf693          	andi	a3,s11,15
  a313d0:	004ddd93          	srli	s11,s11,0x4
  a313d4:	fff70793          	addi	a5,a4,-1
  a313d8:	ce3e                	sw	a5,28(sp)
  a313da:	47e2                	lw	a5,24(sp)
  a313dc:	97b6                	add	a5,a5,a3
  a313de:	239c                	lbu	a5,0(a5)
  a313e0:	fef70fa3          	sb	a5,-1(a4)
  a313e4:	fe0d93e3          	bnez	s11,a313ca <SecOutput+0x698>
  a313e8:	47f2                	lw	a5,28(sp)
  a313ea:	40f80833          	sub	a6,a6,a5
  a313ee:	d042                	sw	a6,32(sp)
  a313f0:	bdc5                	j	a312e0 <SecOutput+0x5ae>
  a313f2:	f7dd                	bnez	a5,a313a0 <SecOutput+0x66e>
  a313f4:	bfd5                	j	a313e8 <SecOutput+0x6b6>
  a313f6:	0a078cbb          	beqi	a5,10,a31428 <SecOutput+0x6f6>
  a313fa:	10178b3b          	beqi	a5,16,a31466 <SecOutput+0x734>
  a313fe:	08f79abb          	bnei	a5,8,a313e8 <SecOutput+0x6b6>
  a31402:	46f2                	lw	a3,28(sp)
  a31404:	fff68793          	addi	a5,a3,-1
  a31408:	ce3e                	sw	a5,28(sp)
  a3140a:	007df793          	andi	a5,s11,7
  a3140e:	97ca                	add	a5,a5,s2
  a31410:	239c                	lbu	a5,0(a5)
  a31412:	003ddd93          	srli	s11,s11,0x3
  a31416:	3aedad9b          	orshf	s11,s11,a4,sll,29
  a3141a:	830d                	srli	a4,a4,0x3
  a3141c:	fef68fa3          	sb	a5,-1(a3)
  a31420:	00ede7b3          	or	a5,s11,a4
  a31424:	fff9                	bnez	a5,a31402 <SecOutput+0x6d0>
  a31426:	b7c9                	j	a313e8 <SecOutput+0x6b6>
  a31428:	47f2                	lw	a5,28(sp)
  a3142a:	4629                	li	a2,10
  a3142c:	856e                	mv	a0,s11
  a3142e:	fff78693          	addi	a3,a5,-1
  a31432:	ce36                	sw	a3,28(sp)
  a31434:	85ba                	mv	a1,a4
  a31436:	4681                	li	a3,0
  a31438:	c642                	sw	a6,12(sp)
  a3143a:	c43e                	sw	a5,8(sp)
  a3143c:	c23a                	sw	a4,4(sp)
  a3143e:	962f70ef          	jal	ra,a285a0 <__umoddi3>
  a31442:	954a                	add	a0,a0,s2
  a31444:	2114                	lbu	a3,0(a0)
  a31446:	4712                	lw	a4,4(sp)
  a31448:	47a2                	lw	a5,8(sp)
  a3144a:	856e                	mv	a0,s11
  a3144c:	85ba                	mv	a1,a4
  a3144e:	fed78fa3          	sb	a3,-1(a5)
  a31452:	4629                	li	a2,10
  a31454:	4681                	li	a3,0
  a31456:	946f70ef          	jal	ra,a2859c <__udivdi3>
  a3145a:	872e                	mv	a4,a1
  a3145c:	8dc9                	or	a1,a1,a0
  a3145e:	8daa                	mv	s11,a0
  a31460:	4832                	lw	a6,12(sp)
  a31462:	f1f9                	bnez	a1,a31428 <SecOutput+0x6f6>
  a31464:	b751                	j	a313e8 <SecOutput+0x6b6>
  a31466:	46f2                	lw	a3,28(sp)
  a31468:	00fdf613          	andi	a2,s11,15
  a3146c:	004ddd93          	srli	s11,s11,0x4
  a31470:	fff68793          	addi	a5,a3,-1
  a31474:	ce3e                	sw	a5,28(sp)
  a31476:	47e2                	lw	a5,24(sp)
  a31478:	38edad9b          	orshf	s11,s11,a4,sll,28
  a3147c:	8311                	srli	a4,a4,0x4
  a3147e:	97b2                	add	a5,a5,a2
  a31480:	239c                	lbu	a5,0(a5)
  a31482:	fef68fa3          	sb	a5,-1(a3)
  a31486:	00ede7b3          	or	a5,s11,a4
  a3148a:	fff1                	bnez	a5,a31466 <SecOutput+0x734>
  a3148c:	bfb1                	j	a313e8 <SecOutput+0x6b6>
  a3148e:	47f2                	lw	a5,28(sp)
  a31490:	fff78713          	addi	a4,a5,-1
  a31494:	ce3a                	sw	a4,28(sp)
  a31496:	fec78fa3          	sb	a2,-1(a5)
  a3149a:	5782                	lw	a5,32(sp)
  a3149c:	0785                	addi	a5,a5,1
  a3149e:	d03e                	sw	a5,32(sp)
  a314a0:	5702                	lw	a4,32(sp)
  a314a2:	fed746e3          	blt	a4,a3,a3148e <SecOutput+0x75c>
  a314a6:	57b2                	lw	a5,44(sp)
  a314a8:	2007f793          	andi	a5,a5,512
  a314ac:	c385                	beqz	a5,a314cc <SecOutput+0x79a>
  a314ae:	47f2                	lw	a5,28(sp)
  a314b0:	c701                	beqz	a4,a314b8 <SecOutput+0x786>
  a314b2:	2398                	lbu	a4,0(a5)
  a314b4:	3007063b          	beqi	a4,48,a314cc <SecOutput+0x79a>
  a314b8:	fff78713          	addi	a4,a5,-1
  a314bc:	ce3a                	sw	a4,28(sp)
  a314be:	03000713          	li	a4,48
  a314c2:	fee78fa3          	sb	a4,-1(a5)
  a314c6:	5782                	lw	a5,32(sp)
  a314c8:	0785                	addi	a5,a5,1
  a314ca:	d03e                	sw	a5,32(sp)
  a314cc:	57b2                	lw	a5,44(sp)
  a314ce:	0407f713          	andi	a4,a5,64
  a314d2:	cb11                	beqz	a4,a314e6 <SecOutput+0x7b4>
  a314d4:	1007f713          	andi	a4,a5,256
  a314d8:	c70d                	beqz	a4,a31502 <SecOutput+0x7d0>
  a314da:	02d00713          	li	a4,45
  a314de:	04e10423          	sb	a4,72(sp)
  a314e2:	4705                	li	a4,1
  a314e4:	c2ba                	sw	a4,68(sp)
  a314e6:	01a4e4b3          	or	s1,s1,s10
  a314ea:	b2049ee3          	bnez	s1,a31026 <SecOutput+0x2f4>
  a314ee:	01179713          	slli	a4,a5,0x11
  a314f2:	b2075ae3          	bgez	a4,a31026 <SecOutput+0x2f4>
  a314f6:	4715                	li	a4,5
  a314f8:	9bdd                	andi	a5,a5,-9
  a314fa:	ce62                	sw	s8,28(sp)
  a314fc:	d03a                	sw	a4,32(sp)
  a314fe:	d63e                	sw	a5,44(sp)
  a31500:	b61d                	j	a31026 <SecOutput+0x2f4>
  a31502:	0017f713          	andi	a4,a5,1
  a31506:	c701                	beqz	a4,a3150e <SecOutput+0x7dc>
  a31508:	02b00713          	li	a4,43
  a3150c:	bfc9                	j	a314de <SecOutput+0x7ac>
  a3150e:	0027f713          	andi	a4,a5,2
  a31512:	db71                	beqz	a4,a314e6 <SecOutput+0x7b4>
  a31514:	02000713          	li	a4,32
  a31518:	b7d9                	j	a314de <SecOutput+0x7ac>
  a3151a:	004ca703          	lw	a4,4(s9)
  a3151e:	0307c583          	lbu	a1,48(a5)
  a31522:	0785                	addi	a5,a5,1
  a31524:	a30c                	sb	a1,0(a4)
  a31526:	004ca703          	lw	a4,4(s9)
  a3152a:	0705                	addi	a4,a4,1
  a3152c:	00eca223          	sw	a4,4(s9)
  a31530:	b2f612e3          	bne	a2,a5,a31054 <SecOutput+0x322>
  a31534:	47d2                	lw	a5,20(sp)
  a31536:	97b6                	add	a5,a5,a3
  a31538:	b635                	j	a31064 <SecOutput+0x332>
  a3153a:	45f2                	lw	a1,28(sp)
  a3153c:	5482                	lw	s1,32(sp)
  a3153e:	000ca703          	lw	a4,0(s9)
  a31542:	87ae                	mv	a5,a1
  a31544:	009586b3          	add	a3,a1,s1
  a31548:	06974963          	blt	a4,s1,a315ba <SecOutput+0x888>
  a3154c:	0c04ddbb          	bgei	s1,12,a31582 <SecOutput+0x850>
  a31550:	87ae                	mv	a5,a1
  a31552:	a819                	j	a31568 <SecOutput+0x836>
  a31554:	004ca703          	lw	a4,4(s9)
  a31558:	2394                	lbu	a3,0(a5)
  a3155a:	0785                	addi	a5,a5,1
  a3155c:	a314                	sb	a3,0(a4)
  a3155e:	004ca703          	lw	a4,4(s9)
  a31562:	0705                	addi	a4,a4,1
  a31564:	00eca223          	sw	a4,4(s9)
  a31568:	40b78733          	sub	a4,a5,a1
  a3156c:	fe9744e3          	blt	a4,s1,a31554 <SecOutput+0x822>
  a31570:	000ca783          	lw	a5,0(s9)
  a31574:	8f85                	sub	a5,a5,s1
  a31576:	00fca023          	sw	a5,0(s9)
  a3157a:	47d2                	lw	a5,20(sp)
  a3157c:	94be                	add	s1,s1,a5
  a3157e:	ca26                	sw	s1,20(sp)
  a31580:	b629                	j	a3108a <SecOutput+0x358>
  a31582:	004ca503          	lw	a0,4(s9)
  a31586:	8626                	mv	a2,s1
  a31588:	ccaf70ef          	jal	ra,a28a52 <memcpy>
  a3158c:	004ca783          	lw	a5,4(s9)
  a31590:	97a6                	add	a5,a5,s1
  a31592:	00fca223          	sw	a5,4(s9)
  a31596:	bfe9                	j	a31570 <SecOutput+0x83e>
  a31598:	000ca703          	lw	a4,0(s9)
  a3159c:	177d                	addi	a4,a4,-1
  a3159e:	00eca023          	sw	a4,0(s9)
  a315a2:	ae0742e3          	bltz	a4,a31086 <SecOutput+0x354>
  a315a6:	004ca703          	lw	a4,4(s9)
  a315aa:	2390                	lbu	a2,0(a5)
  a315ac:	0785                	addi	a5,a5,1
  a315ae:	a310                	sb	a2,0(a4)
  a315b0:	004ca703          	lw	a4,4(s9)
  a315b4:	0705                	addi	a4,a4,1
  a315b6:	00eca223          	sw	a4,4(s9)
  a315ba:	40f68733          	sub	a4,a3,a5
  a315be:	fce04de3          	bgtz	a4,a31598 <SecOutput+0x866>
  a315c2:	bf65                	j	a3157a <SecOutput+0x848>

00a315c4 <SecVsnprintfImpl>:
  a315c4:	8138                	push	{ra,s0-s1},-32
  a315c6:	84ae                	mv	s1,a1
  a315c8:	842a                	mv	s0,a0
  a315ca:	85b2                	mv	a1,a2
  a315cc:	c62a                	sw	a0,12(sp)
  a315ce:	8636                	mv	a2,a3
  a315d0:	0028                	addi	a0,sp,8
  a315d2:	c426                	sw	s1,8(sp)
  a315d4:	f5eff0ef          	jal	ra,a30d32 <SecOutput>
  a315d8:	00054b63          	bltz	a0,a315ee <SecVsnprintfImpl+0x2a>
  a315dc:	47a2                	lw	a5,8(sp)
  a315de:	17fd                	addi	a5,a5,-1
  a315e0:	c43e                	sw	a5,8(sp)
  a315e2:	0007c663          	bltz	a5,a315ee <SecVsnprintfImpl+0x2a>
  a315e6:	47b2                	lw	a5,12(sp)
  a315e8:	00078023          	sb	zero,0(a5)
  a315ec:	8134                	popret	{ra,s0-s1},32
  a315ee:	47a2                	lw	a5,8(sp)
  a315f0:	0007d763          	bgez	a5,a315fe <SecVsnprintfImpl+0x3a>
  a315f4:	9426                	add	s0,s0,s1
  a315f6:	fe040fa3          	sb	zero,-1(s0)
  a315fa:	5579                	li	a0,-2
  a315fc:	bfc5                	j	a315ec <SecVsnprintfImpl+0x28>
  a315fe:	00040023          	sb	zero,0(s0)
  a31602:	557d                	li	a0,-1
  a31604:	b7e5                	j	a315ec <SecVsnprintfImpl+0x28>

00a31606 <vsnprintf_s>:
  a31606:	8028                	push	{ra,s0},-16
  a31608:	8832                	mv	a6,a2
  a3160a:	842a                	mv	s0,a0
  a3160c:	87ae                	mv	a5,a1
  a3160e:	8636                	mv	a2,a3
  a31610:	ca8d                	beqz	a3,a31642 <vsnprintf_s+0x3c>
  a31612:	e119                	bnez	a0,a31618 <vsnprintf_s+0x12>
  a31614:	557d                	li	a0,-1
  a31616:	8024                	popret	{ra,s0},16
  a31618:	ddf5                	beqz	a1,a31614 <vsnprintf_s+0xe>
  a3161a:	fe05cde3          	bltz	a1,a31614 <vsnprintf_s+0xe>
  a3161e:	800008b7          	lui	a7,0x80000
  a31622:	ffe8c893          	xori	a7,a7,-2
  a31626:	0308e063          	bltu	a7,a6,a31646 <vsnprintf_s+0x40>
  a3162a:	86ba                	mv	a3,a4
  a3162c:	02b87263          	bgeu	a6,a1,a31650 <vsnprintf_s+0x4a>
  a31630:	00180593          	addi	a1,a6,1
  a31634:	f91ff0ef          	jal	ra,a315c4 <SecVsnprintfImpl>
  a31638:	fef5073b          	beqi	a0,-2,a31614 <vsnprintf_s+0xe>
  a3163c:	fc055de3          	bgez	a0,a31616 <vsnprintf_s+0x10>
  a31640:	a029                	j	a3164a <vsnprintf_s+0x44>
  a31642:	d969                	beqz	a0,a31614 <vsnprintf_s+0xe>
  a31644:	d9e1                	beqz	a1,a31614 <vsnprintf_s+0xe>
  a31646:	fc07c7e3          	bltz	a5,a31614 <vsnprintf_s+0xe>
  a3164a:	00040023          	sb	zero,0(s0)
  a3164e:	b7d9                	j	a31614 <vsnprintf_s+0xe>
  a31650:	f75ff0ef          	jal	ra,a315c4 <SecVsnprintfImpl>
  a31654:	b7e5                	j	a3163c <vsnprintf_s+0x36>
  a31656:	0000                	unimp
  a31658:	04f9                	addi	s1,s1,30
  a3165a:	0000                	unimp
  a3165c:	00000003          	lb	zero,0(zero) # 0 <__data_size__-0x1e8>
	...

00a31670 <excp_vect_table>:
  a31670:	d21c                	sw	a5,32(a2)
  a31672:	00a2                	slli	ra,ra,0x8
  a31674:	d232                	sw	a2,36(sp)
  a31676:	00a2                	slli	ra,ra,0x8
  a31678:	d248                	sw	a0,36(a2)
  a3167a:	00a2                	slli	ra,ra,0x8
  a3167c:	d2f8                	sw	a4,100(a3)
  a3167e:	00a2                	slli	ra,ra,0x8
  a31680:	d25e                	sw	s7,36(sp)
  a31682:	00a2                	slli	ra,ra,0x8
  a31684:	d274                	sw	a3,100(a2)
  a31686:	00a2                	slli	ra,ra,0x8
  a31688:	d28a                	sw	sp,100(sp)
  a3168a:	00a2                	slli	ra,ra,0x8
  a3168c:	d2a0                	sw	s0,96(a3)
  a3168e:	00a2                	slli	ra,ra,0x8
  a31690:	d2b6                	sw	a3,100(sp)
  a31692:	00a2                	slli	ra,ra,0x8
  a31694:	d2cc                	sw	a1,36(a3)
  a31696:	00a2                	slli	ra,ra,0x8
  a31698:	d206                	sw	ra,36(sp)
  a3169a:	00a2                	slli	ra,ra,0x8
  a3169c:	d2e2                	sw	s8,100(sp)
  a3169e:	00a2                	slli	ra,ra,0x8
  a316a0:	d30e                	sw	gp,164(sp)
  a316a2:	00a2                	slli	ra,ra,0x8
  a316a4:	d324                	sw	s1,96(a4)
  a316a6:	00a2                	slli	ra,ra,0x8
  a316a8:	d206                	sw	ra,36(sp)
  a316aa:	00a2                	slli	ra,ra,0x8
  a316ac:	d33a                	sw	a4,164(sp)
  a316ae:	00a2                	slli	ra,ra,0x8
  a316b0:	d350                	sw	a2,36(a4)
  a316b2:	00a2                	slli	ra,ra,0x8
  a316b4:	d366                	sw	s9,164(sp)
  a316b6:	00a2                	slli	ra,ra,0x8

00a316b8 <excp_vect_table_end>:
	...

00a316c0 <trap_entry>:
  a316c0:	7175                	addi	sp,sp,-144
  a316c2:	d06e                	sw	s11,32(sp)
  a316c4:	d26a                	sw	s10,36(sp)
  a316c6:	d466                	sw	s9,40(sp)
  a316c8:	d662                	sw	s8,44(sp)
  a316ca:	d85e                	sw	s7,48(sp)
  a316cc:	da5a                	sw	s6,52(sp)
  a316ce:	dc56                	sw	s5,56(sp)
  a316d0:	de52                	sw	s4,60(sp)
  a316d2:	c0ce                	sw	s3,64(sp)
  a316d4:	c2ca                	sw	s2,68(sp)
  a316d6:	c4a6                	sw	s1,72(sp)
  a316d8:	c6a2                	sw	s0,76(sp)
  a316da:	c8fe                	sw	t6,80(sp)
  a316dc:	cafa                	sw	t5,84(sp)
  a316de:	ccf6                	sw	t4,88(sp)
  a316e0:	cef2                	sw	t3,92(sp)
  a316e2:	d0c6                	sw	a7,96(sp)
  a316e4:	d2c2                	sw	a6,100(sp)
  a316e6:	d4be                	sw	a5,104(sp)
  a316e8:	d6ba                	sw	a4,108(sp)
  a316ea:	d8b6                	sw	a3,112(sp)
  a316ec:	dab2                	sw	a2,116(sp)
  a316ee:	dcae                	sw	a1,120(sp)
  a316f0:	deaa                	sw	a0,124(sp)
  a316f2:	c11e                	sw	t2,128(sp)
  a316f4:	c31a                	sw	t1,132(sp)
  a316f6:	c516                	sw	t0,136(sp)
  a316f8:	c706                	sw	ra,140(sp)
  a316fa:	fc202a73          	csrr	s4,0xfc2
  a316fe:	c052                	sw	s4,0(sp)
  a31700:	342029f3          	csrr	s3,mcause
  a31704:	c24e                	sw	s3,4(sp)
  a31706:	34302973          	csrr	s2,mtval
  a3170a:	c44a                	sw	s2,8(sp)
  a3170c:	c60e                	sw	gp,12(sp)
  a3170e:	300024f3          	csrr	s1,mstatus
  a31712:	c826                	sw	s1,16(sp)
  a31714:	34102473          	csrr	s0,mepc
  a31718:	ca22                	sw	s0,20(sp)
  a3171a:	cc12                	sw	tp,24(sp)
  a3171c:	ce0a                	sw	sp,28(sp)
  a3171e:	30047073          	csrci	mstatus,8
  a31722:	34011073          	csrw	mscratch,sp
  a31726:	fffd4117          	auipc	sp,0xfffd4
  a3172a:	dda10113          	addi	sp,sp,-550 # a05500 <g_flash_cmd_funcs>
  a3172e:	42a1                	li	t0,8
  a31730:	00599463          	bne	s3,t0,a31738 <trap_entry+0x78>
  a31734:	e1ff606f          	j	a28552 <handle_syscall>
  a31738:	00299293          	slli	t0,s3,0x2
  a3173c:	00000317          	auipc	t1,0x0
  a31740:	f3430313          	addi	t1,t1,-204 # a31670 <excp_vect_table>
  a31744:	00000397          	auipc	t2,0x0
  a31748:	f7438393          	addi	t2,t2,-140 # a316b8 <excp_vect_table_end>
  a3174c:	34002573          	csrr	a0,mscratch
  a31750:	929a                	add	t0,t0,t1
  a31752:	0472ff63          	bgeu	t0,t2,a317b0 <trap_entry+0xf0>
  a31756:	0002a283          	lw	t0,0(t0) # 1000000 <_gp_+0x5cb538>
  a3175a:	809fb0ef          	jal	ra,a2cf62 <do_hard_fault_handler>
  a3175e:	34002173          	csrr	sp,mscratch
  a31762:	6289                	lui	t0,0x2
  a31764:	80028293          	addi	t0,t0,-2048 # 1800 <ccause+0x83e>
  a31768:	3002a073          	csrs	mstatus,t0
  a3176c:	42d2                	lw	t0,20(sp)
  a3176e:	34129073          	csrw	mepc,t0
  a31772:	5d82                	lw	s11,32(sp)
  a31774:	5d12                	lw	s10,36(sp)
  a31776:	5ca2                	lw	s9,40(sp)
  a31778:	5c32                	lw	s8,44(sp)
  a3177a:	5bc2                	lw	s7,48(sp)
  a3177c:	5b52                	lw	s6,52(sp)
  a3177e:	5ae2                	lw	s5,56(sp)
  a31780:	5a72                	lw	s4,60(sp)
  a31782:	4986                	lw	s3,64(sp)
  a31784:	4916                	lw	s2,68(sp)
  a31786:	44a6                	lw	s1,72(sp)
  a31788:	4436                	lw	s0,76(sp)
  a3178a:	4fc6                	lw	t6,80(sp)
  a3178c:	4f56                	lw	t5,84(sp)
  a3178e:	4ee6                	lw	t4,88(sp)
  a31790:	4e76                	lw	t3,92(sp)
  a31792:	5886                	lw	a7,96(sp)
  a31794:	5816                	lw	a6,100(sp)
  a31796:	57a6                	lw	a5,104(sp)
  a31798:	5736                	lw	a4,108(sp)
  a3179a:	56c6                	lw	a3,112(sp)
  a3179c:	5656                	lw	a2,116(sp)
  a3179e:	55e6                	lw	a1,120(sp)
  a317a0:	5576                	lw	a0,124(sp)
  a317a2:	438a                	lw	t2,128(sp)
  a317a4:	431a                	lw	t1,132(sp)
  a317a6:	42aa                	lw	t0,136(sp)
  a317a8:	40ba                	lw	ra,140(sp)
  a317aa:	6149                	addi	sp,sp,144
  a317ac:	30200073          	mret
  a317b0:	a57fb06f          	j	a2d206 <do_trap_unknown>
	...

00a317bc <trap_vector>:
  a317bc:	f05ff06f          	j	a316c0 <trap_entry>
  a317c0:	bbdfb06f          	j	a2d37c <default_handler>
  a317c4:	bb9fb06f          	j	a2d37c <default_handler>
  a317c8:	bb5fb06f          	j	a2d37c <default_handler>
  a317cc:	bb1fb06f          	j	a2d37c <default_handler>
  a317d0:	badfb06f          	j	a2d37c <default_handler>
  a317d4:	ba9fb06f          	j	a2d37c <default_handler>
  a317d8:	ba5fb06f          	j	a2d37c <default_handler>
  a317dc:	ba1fb06f          	j	a2d37c <default_handler>
  a317e0:	b9dfb06f          	j	a2d37c <default_handler>
  a317e4:	b99fb06f          	j	a2d37c <default_handler>
  a317e8:	b95fb06f          	j	a2d37c <default_handler>
  a317ec:	1700006f          	j	a3195c <nmi_vector>
  a317f0:	b8dfb06f          	j	a2d37c <default_handler>
  a317f4:	b89fb06f          	j	a2d37c <default_handler>
  a317f8:	b85fb06f          	j	a2d37c <default_handler>
  a317fc:	b81fb06f          	j	a2d37c <default_handler>
  a31800:	b7dfb06f          	j	a2d37c <default_handler>
  a31804:	b79fb06f          	j	a2d37c <default_handler>
  a31808:	b75fb06f          	j	a2d37c <default_handler>
  a3180c:	b71fb06f          	j	a2d37c <default_handler>
  a31810:	b6dfb06f          	j	a2d37c <default_handler>
  a31814:	b69fb06f          	j	a2d37c <default_handler>
  a31818:	b65fb06f          	j	a2d37c <default_handler>
  a3181c:	b61fb06f          	j	a2d37c <default_handler>
  a31820:	b5dfb06f          	j	a2d37c <default_handler>
  a31824:	2000006f          	j	a31a24 <default_interrupt0_handler>
  a31828:	2a80006f          	j	a31ad0 <default_interrupt1_handler>
  a3182c:	3500006f          	j	a31b7c <default_interrupt2_handler>
  a31830:	3f80006f          	j	a31c28 <default_interrupt3_handler>
  a31834:	4a00006f          	j	a31cd4 <default_interrupt4_handler>
  a31838:	5480006f          	j	a31d80 <default_interrupt5_handler>
  a3183c:	5f00006f          	j	a31e2c <default_local_interrupt_handler>
  a31840:	5ec0006f          	j	a31e2c <default_local_interrupt_handler>
  a31844:	5e80006f          	j	a31e2c <default_local_interrupt_handler>
  a31848:	5e40006f          	j	a31e2c <default_local_interrupt_handler>
  a3184c:	5e00006f          	j	a31e2c <default_local_interrupt_handler>
  a31850:	5dc0006f          	j	a31e2c <default_local_interrupt_handler>
  a31854:	5d80006f          	j	a31e2c <default_local_interrupt_handler>
  a31858:	5d40006f          	j	a31e2c <default_local_interrupt_handler>
  a3185c:	5d00006f          	j	a31e2c <default_local_interrupt_handler>
  a31860:	5cc0006f          	j	a31e2c <default_local_interrupt_handler>
  a31864:	5c80006f          	j	a31e2c <default_local_interrupt_handler>
  a31868:	5c40006f          	j	a31e2c <default_local_interrupt_handler>
  a3186c:	5c00006f          	j	a31e2c <default_local_interrupt_handler>
  a31870:	5bc0006f          	j	a31e2c <default_local_interrupt_handler>
  a31874:	5b80006f          	j	a31e2c <default_local_interrupt_handler>
  a31878:	5b40006f          	j	a31e2c <default_local_interrupt_handler>
  a3187c:	5b00006f          	j	a31e2c <default_local_interrupt_handler>
  a31880:	5ac0006f          	j	a31e2c <default_local_interrupt_handler>
  a31884:	5a80006f          	j	a31e2c <default_local_interrupt_handler>
  a31888:	5a40006f          	j	a31e2c <default_local_interrupt_handler>
  a3188c:	5a00006f          	j	a31e2c <default_local_interrupt_handler>
  a31890:	59c0006f          	j	a31e2c <default_local_interrupt_handler>
  a31894:	5980006f          	j	a31e2c <default_local_interrupt_handler>
  a31898:	5940006f          	j	a31e2c <default_local_interrupt_handler>
  a3189c:	5900006f          	j	a31e2c <default_local_interrupt_handler>
  a318a0:	58c0006f          	j	a31e2c <default_local_interrupt_handler>
  a318a4:	5880006f          	j	a31e2c <default_local_interrupt_handler>
  a318a8:	5840006f          	j	a31e2c <default_local_interrupt_handler>
  a318ac:	5800006f          	j	a31e2c <default_local_interrupt_handler>
  a318b0:	57c0006f          	j	a31e2c <default_local_interrupt_handler>
  a318b4:	5780006f          	j	a31e2c <default_local_interrupt_handler>
  a318b8:	5740006f          	j	a31e2c <default_local_interrupt_handler>
  a318bc:	5700006f          	j	a31e2c <default_local_interrupt_handler>
  a318c0:	56c0006f          	j	a31e2c <default_local_interrupt_handler>
  a318c4:	5680006f          	j	a31e2c <default_local_interrupt_handler>
  a318c8:	5640006f          	j	a31e2c <default_local_interrupt_handler>
  a318cc:	5600006f          	j	a31e2c <default_local_interrupt_handler>
  a318d0:	55c0006f          	j	a31e2c <default_local_interrupt_handler>
  a318d4:	5580006f          	j	a31e2c <default_local_interrupt_handler>
  a318d8:	5540006f          	j	a31e2c <default_local_interrupt_handler>
  a318dc:	5500006f          	j	a31e2c <default_local_interrupt_handler>
  a318e0:	54c0006f          	j	a31e2c <default_local_interrupt_handler>
  a318e4:	5480006f          	j	a31e2c <default_local_interrupt_handler>
  a318e8:	5440006f          	j	a31e2c <default_local_interrupt_handler>
  a318ec:	5400006f          	j	a31e2c <default_local_interrupt_handler>
  a318f0:	53c0006f          	j	a31e2c <default_local_interrupt_handler>
  a318f4:	5380006f          	j	a31e2c <default_local_interrupt_handler>
  a318f8:	5340006f          	j	a31e2c <default_local_interrupt_handler>
  a318fc:	5300006f          	j	a31e2c <default_local_interrupt_handler>
  a31900:	52c0006f          	j	a31e2c <default_local_interrupt_handler>
  a31904:	5280006f          	j	a31e2c <default_local_interrupt_handler>
  a31908:	5240006f          	j	a31e2c <default_local_interrupt_handler>
  a3190c:	5200006f          	j	a31e2c <default_local_interrupt_handler>
  a31910:	51c0006f          	j	a31e2c <default_local_interrupt_handler>
  a31914:	5180006f          	j	a31e2c <default_local_interrupt_handler>
  a31918:	5140006f          	j	a31e2c <default_local_interrupt_handler>
  a3191c:	5100006f          	j	a31e2c <default_local_interrupt_handler>
  a31920:	50c0006f          	j	a31e2c <default_local_interrupt_handler>
  a31924:	5080006f          	j	a31e2c <default_local_interrupt_handler>
  a31928:	5040006f          	j	a31e2c <default_local_interrupt_handler>
  a3192c:	5000006f          	j	a31e2c <default_local_interrupt_handler>
  a31930:	4fc0006f          	j	a31e2c <default_local_interrupt_handler>
  a31934:	4f80006f          	j	a31e2c <default_local_interrupt_handler>
  a31938:	4f40006f          	j	a31e2c <default_local_interrupt_handler>
  a3193c:	4f00006f          	j	a31e2c <default_local_interrupt_handler>
  a31940:	4ec0006f          	j	a31e2c <default_local_interrupt_handler>
  a31944:	4e80006f          	j	a31e2c <default_local_interrupt_handler>
  a31948:	4e40006f          	j	a31e2c <default_local_interrupt_handler>
  a3194c:	4e00006f          	j	a31e2c <default_local_interrupt_handler>
  a31950:	4dc0006f          	j	a31e2c <default_local_interrupt_handler>
  a31954:	4d80006f          	j	a31e2c <default_local_interrupt_handler>
  a31958:	0000                	unimp
	...

00a3195c <nmi_vector>:
  a3195c:	30047073          	csrci	mstatus,8
  a31960:	7175                	addi	sp,sp,-144
  a31962:	d06e                	sw	s11,32(sp)
  a31964:	d26a                	sw	s10,36(sp)
  a31966:	d466                	sw	s9,40(sp)
  a31968:	d662                	sw	s8,44(sp)
  a3196a:	d85e                	sw	s7,48(sp)
  a3196c:	da5a                	sw	s6,52(sp)
  a3196e:	dc56                	sw	s5,56(sp)
  a31970:	de52                	sw	s4,60(sp)
  a31972:	c0ce                	sw	s3,64(sp)
  a31974:	c2ca                	sw	s2,68(sp)
  a31976:	c4a6                	sw	s1,72(sp)
  a31978:	c6a2                	sw	s0,76(sp)
  a3197a:	c8fe                	sw	t6,80(sp)
  a3197c:	cafa                	sw	t5,84(sp)
  a3197e:	ccf6                	sw	t4,88(sp)
  a31980:	cef2                	sw	t3,92(sp)
  a31982:	d0c6                	sw	a7,96(sp)
  a31984:	d2c2                	sw	a6,100(sp)
  a31986:	d4be                	sw	a5,104(sp)
  a31988:	d6ba                	sw	a4,108(sp)
  a3198a:	d8b6                	sw	a3,112(sp)
  a3198c:	dab2                	sw	a2,116(sp)
  a3198e:	dcae                	sw	a1,120(sp)
  a31990:	deaa                	sw	a0,124(sp)
  a31992:	c11e                	sw	t2,128(sp)
  a31994:	c31a                	sw	t1,132(sp)
  a31996:	c516                	sw	t0,136(sp)
  a31998:	c706                	sw	ra,140(sp)
  a3199a:	fc202a73          	csrr	s4,0xfc2
  a3199e:	c052                	sw	s4,0(sp)
  a319a0:	342029f3          	csrr	s3,mcause
  a319a4:	c24e                	sw	s3,4(sp)
  a319a6:	34302973          	csrr	s2,mtval
  a319aa:	c44a                	sw	s2,8(sp)
  a319ac:	c60e                	sw	gp,12(sp)
  a319ae:	300024f3          	csrr	s1,mstatus
  a319b2:	c826                	sw	s1,16(sp)
  a319b4:	34102473          	csrr	s0,mepc
  a319b8:	ca22                	sw	s0,20(sp)
  a319ba:	cc12                	sw	tp,24(sp)
  a319bc:	ce0a                	sw	sp,28(sp)
  a319be:	34011073          	csrw	mscratch,sp
  a319c2:	fffd3117          	auipc	sp,0xfffd3
  a319c6:	73e10113          	addi	sp,sp,1854 # a05100 <__irq_stack_top__>
  a319ca:	34002573          	csrr	a0,mscratch
  a319ce:	d94fb0ef          	jal	ra,a2cf62 <do_hard_fault_handler>
  a319d2:	34002173          	csrr	sp,mscratch
  a319d6:	6289                	lui	t0,0x2
  a319d8:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a319dc:	3002a073          	csrs	mstatus,t0
  a319e0:	42d2                	lw	t0,20(sp)
  a319e2:	34129073          	csrw	mepc,t0
  a319e6:	5d82                	lw	s11,32(sp)
  a319e8:	5d12                	lw	s10,36(sp)
  a319ea:	5ca2                	lw	s9,40(sp)
  a319ec:	5c32                	lw	s8,44(sp)
  a319ee:	5bc2                	lw	s7,48(sp)
  a319f0:	5b52                	lw	s6,52(sp)
  a319f2:	5ae2                	lw	s5,56(sp)
  a319f4:	5a72                	lw	s4,60(sp)
  a319f6:	4986                	lw	s3,64(sp)
  a319f8:	4916                	lw	s2,68(sp)
  a319fa:	44a6                	lw	s1,72(sp)
  a319fc:	4436                	lw	s0,76(sp)
  a319fe:	4fc6                	lw	t6,80(sp)
  a31a00:	4f56                	lw	t5,84(sp)
  a31a02:	4ee6                	lw	t4,88(sp)
  a31a04:	4e76                	lw	t3,92(sp)
  a31a06:	5886                	lw	a7,96(sp)
  a31a08:	5816                	lw	a6,100(sp)
  a31a0a:	57a6                	lw	a5,104(sp)
  a31a0c:	5736                	lw	a4,108(sp)
  a31a0e:	56c6                	lw	a3,112(sp)
  a31a10:	5656                	lw	a2,116(sp)
  a31a12:	55e6                	lw	a1,120(sp)
  a31a14:	5576                	lw	a0,124(sp)
  a31a16:	438a                	lw	t2,128(sp)
  a31a18:	431a                	lw	t1,132(sp)
  a31a1a:	42aa                	lw	t0,136(sp)
  a31a1c:	40ba                	lw	ra,140(sp)
  a31a1e:	6149                	addi	sp,sp,144
  a31a20:	30200073          	mret

00a31a24 <default_interrupt0_handler>:
  a31a24:	30047073          	csrci	mstatus,8
  a31a28:	7119                	addi	sp,sp,-128
  a31a2a:	c006                	sw	ra,0(sp)
  a31a2c:	c20a                	sw	sp,4(sp)
  a31a2e:	c40e                	sw	gp,8(sp)
  a31a30:	c612                	sw	tp,12(sp)
  a31a32:	c816                	sw	t0,16(sp)
  a31a34:	ca1a                	sw	t1,20(sp)
  a31a36:	cc1e                	sw	t2,24(sp)
  a31a38:	ce22                	sw	s0,28(sp)
  a31a3a:	d026                	sw	s1,32(sp)
  a31a3c:	d22a                	sw	a0,36(sp)
  a31a3e:	d42e                	sw	a1,40(sp)
  a31a40:	d632                	sw	a2,44(sp)
  a31a42:	d836                	sw	a3,48(sp)
  a31a44:	da3a                	sw	a4,52(sp)
  a31a46:	dc3e                	sw	a5,56(sp)
  a31a48:	de42                	sw	a6,60(sp)
  a31a4a:	c0c6                	sw	a7,64(sp)
  a31a4c:	c2ca                	sw	s2,68(sp)
  a31a4e:	c4ce                	sw	s3,72(sp)
  a31a50:	c6d2                	sw	s4,76(sp)
  a31a52:	c8d6                	sw	s5,80(sp)
  a31a54:	cada                	sw	s6,84(sp)
  a31a56:	ccde                	sw	s7,88(sp)
  a31a58:	cee2                	sw	s8,92(sp)
  a31a5a:	d0e6                	sw	s9,96(sp)
  a31a5c:	d2ea                	sw	s10,100(sp)
  a31a5e:	d4ee                	sw	s11,104(sp)
  a31a60:	d6f2                	sw	t3,108(sp)
  a31a62:	d8f6                	sw	t4,112(sp)
  a31a64:	dafa                	sw	t5,116(sp)
  a31a66:	dcfe                	sw	t6,120(sp)
  a31a68:	341022f3          	csrr	t0,mepc
  a31a6c:	de96                	sw	t0,124(sp)
  a31a6e:	34011073          	csrw	mscratch,sp
  a31a72:	fffd3117          	auipc	sp,0xfffd3
  a31a76:	68e10113          	addi	sp,sp,1678 # a05100 <__irq_stack_top__>
  a31a7a:	b02fb0ef          	jal	ra,a2cd7c <interrupt0_handler>
  a31a7e:	34002173          	csrr	sp,mscratch
  a31a82:	6289                	lui	t0,0x2
  a31a84:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31a88:	3002a073          	csrs	mstatus,t0
  a31a8c:	52f6                	lw	t0,124(sp)
  a31a8e:	34129073          	csrw	mepc,t0
  a31a92:	4082                	lw	ra,0(sp)
  a31a94:	42c2                	lw	t0,16(sp)
  a31a96:	4352                	lw	t1,20(sp)
  a31a98:	43e2                	lw	t2,24(sp)
  a31a9a:	4472                	lw	s0,28(sp)
  a31a9c:	5482                	lw	s1,32(sp)
  a31a9e:	5512                	lw	a0,36(sp)
  a31aa0:	55a2                	lw	a1,40(sp)
  a31aa2:	5632                	lw	a2,44(sp)
  a31aa4:	56c2                	lw	a3,48(sp)
  a31aa6:	5752                	lw	a4,52(sp)
  a31aa8:	57e2                	lw	a5,56(sp)
  a31aaa:	5872                	lw	a6,60(sp)
  a31aac:	4886                	lw	a7,64(sp)
  a31aae:	4916                	lw	s2,68(sp)
  a31ab0:	49a6                	lw	s3,72(sp)
  a31ab2:	4a36                	lw	s4,76(sp)
  a31ab4:	4ac6                	lw	s5,80(sp)
  a31ab6:	4b56                	lw	s6,84(sp)
  a31ab8:	4be6                	lw	s7,88(sp)
  a31aba:	4c76                	lw	s8,92(sp)
  a31abc:	5c86                	lw	s9,96(sp)
  a31abe:	5d16                	lw	s10,100(sp)
  a31ac0:	5da6                	lw	s11,104(sp)
  a31ac2:	5e36                	lw	t3,108(sp)
  a31ac4:	5ec6                	lw	t4,112(sp)
  a31ac6:	5f56                	lw	t5,116(sp)
  a31ac8:	5fe6                	lw	t6,120(sp)
  a31aca:	6109                	addi	sp,sp,128
  a31acc:	30200073          	mret

00a31ad0 <default_interrupt1_handler>:
  a31ad0:	30047073          	csrci	mstatus,8
  a31ad4:	7119                	addi	sp,sp,-128
  a31ad6:	c006                	sw	ra,0(sp)
  a31ad8:	c20a                	sw	sp,4(sp)
  a31ada:	c40e                	sw	gp,8(sp)
  a31adc:	c612                	sw	tp,12(sp)
  a31ade:	c816                	sw	t0,16(sp)
  a31ae0:	ca1a                	sw	t1,20(sp)
  a31ae2:	cc1e                	sw	t2,24(sp)
  a31ae4:	ce22                	sw	s0,28(sp)
  a31ae6:	d026                	sw	s1,32(sp)
  a31ae8:	d22a                	sw	a0,36(sp)
  a31aea:	d42e                	sw	a1,40(sp)
  a31aec:	d632                	sw	a2,44(sp)
  a31aee:	d836                	sw	a3,48(sp)
  a31af0:	da3a                	sw	a4,52(sp)
  a31af2:	dc3e                	sw	a5,56(sp)
  a31af4:	de42                	sw	a6,60(sp)
  a31af6:	c0c6                	sw	a7,64(sp)
  a31af8:	c2ca                	sw	s2,68(sp)
  a31afa:	c4ce                	sw	s3,72(sp)
  a31afc:	c6d2                	sw	s4,76(sp)
  a31afe:	c8d6                	sw	s5,80(sp)
  a31b00:	cada                	sw	s6,84(sp)
  a31b02:	ccde                	sw	s7,88(sp)
  a31b04:	cee2                	sw	s8,92(sp)
  a31b06:	d0e6                	sw	s9,96(sp)
  a31b08:	d2ea                	sw	s10,100(sp)
  a31b0a:	d4ee                	sw	s11,104(sp)
  a31b0c:	d6f2                	sw	t3,108(sp)
  a31b0e:	d8f6                	sw	t4,112(sp)
  a31b10:	dafa                	sw	t5,116(sp)
  a31b12:	dcfe                	sw	t6,120(sp)
  a31b14:	341022f3          	csrr	t0,mepc
  a31b18:	de96                	sw	t0,124(sp)
  a31b1a:	34011073          	csrw	mscratch,sp
  a31b1e:	fffd3117          	auipc	sp,0xfffd3
  a31b22:	5e210113          	addi	sp,sp,1506 # a05100 <__irq_stack_top__>
  a31b26:	a96fb0ef          	jal	ra,a2cdbc <interrupt1_handler>
  a31b2a:	34002173          	csrr	sp,mscratch
  a31b2e:	6289                	lui	t0,0x2
  a31b30:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31b34:	3002a073          	csrs	mstatus,t0
  a31b38:	52f6                	lw	t0,124(sp)
  a31b3a:	34129073          	csrw	mepc,t0
  a31b3e:	4082                	lw	ra,0(sp)
  a31b40:	42c2                	lw	t0,16(sp)
  a31b42:	4352                	lw	t1,20(sp)
  a31b44:	43e2                	lw	t2,24(sp)
  a31b46:	4472                	lw	s0,28(sp)
  a31b48:	5482                	lw	s1,32(sp)
  a31b4a:	5512                	lw	a0,36(sp)
  a31b4c:	55a2                	lw	a1,40(sp)
  a31b4e:	5632                	lw	a2,44(sp)
  a31b50:	56c2                	lw	a3,48(sp)
  a31b52:	5752                	lw	a4,52(sp)
  a31b54:	57e2                	lw	a5,56(sp)
  a31b56:	5872                	lw	a6,60(sp)
  a31b58:	4886                	lw	a7,64(sp)
  a31b5a:	4916                	lw	s2,68(sp)
  a31b5c:	49a6                	lw	s3,72(sp)
  a31b5e:	4a36                	lw	s4,76(sp)
  a31b60:	4ac6                	lw	s5,80(sp)
  a31b62:	4b56                	lw	s6,84(sp)
  a31b64:	4be6                	lw	s7,88(sp)
  a31b66:	4c76                	lw	s8,92(sp)
  a31b68:	5c86                	lw	s9,96(sp)
  a31b6a:	5d16                	lw	s10,100(sp)
  a31b6c:	5da6                	lw	s11,104(sp)
  a31b6e:	5e36                	lw	t3,108(sp)
  a31b70:	5ec6                	lw	t4,112(sp)
  a31b72:	5f56                	lw	t5,116(sp)
  a31b74:	5fe6                	lw	t6,120(sp)
  a31b76:	6109                	addi	sp,sp,128
  a31b78:	30200073          	mret

00a31b7c <default_interrupt2_handler>:
  a31b7c:	30047073          	csrci	mstatus,8
  a31b80:	7119                	addi	sp,sp,-128
  a31b82:	c006                	sw	ra,0(sp)
  a31b84:	c20a                	sw	sp,4(sp)
  a31b86:	c40e                	sw	gp,8(sp)
  a31b88:	c612                	sw	tp,12(sp)
  a31b8a:	c816                	sw	t0,16(sp)
  a31b8c:	ca1a                	sw	t1,20(sp)
  a31b8e:	cc1e                	sw	t2,24(sp)
  a31b90:	ce22                	sw	s0,28(sp)
  a31b92:	d026                	sw	s1,32(sp)
  a31b94:	d22a                	sw	a0,36(sp)
  a31b96:	d42e                	sw	a1,40(sp)
  a31b98:	d632                	sw	a2,44(sp)
  a31b9a:	d836                	sw	a3,48(sp)
  a31b9c:	da3a                	sw	a4,52(sp)
  a31b9e:	dc3e                	sw	a5,56(sp)
  a31ba0:	de42                	sw	a6,60(sp)
  a31ba2:	c0c6                	sw	a7,64(sp)
  a31ba4:	c2ca                	sw	s2,68(sp)
  a31ba6:	c4ce                	sw	s3,72(sp)
  a31ba8:	c6d2                	sw	s4,76(sp)
  a31baa:	c8d6                	sw	s5,80(sp)
  a31bac:	cada                	sw	s6,84(sp)
  a31bae:	ccde                	sw	s7,88(sp)
  a31bb0:	cee2                	sw	s8,92(sp)
  a31bb2:	d0e6                	sw	s9,96(sp)
  a31bb4:	d2ea                	sw	s10,100(sp)
  a31bb6:	d4ee                	sw	s11,104(sp)
  a31bb8:	d6f2                	sw	t3,108(sp)
  a31bba:	d8f6                	sw	t4,112(sp)
  a31bbc:	dafa                	sw	t5,116(sp)
  a31bbe:	dcfe                	sw	t6,120(sp)
  a31bc0:	341022f3          	csrr	t0,mepc
  a31bc4:	de96                	sw	t0,124(sp)
  a31bc6:	34011073          	csrw	mscratch,sp
  a31bca:	fffd3117          	auipc	sp,0xfffd3
  a31bce:	53610113          	addi	sp,sp,1334 # a05100 <__irq_stack_top__>
  a31bd2:	a2afb0ef          	jal	ra,a2cdfc <interrupt2_handler>
  a31bd6:	34002173          	csrr	sp,mscratch
  a31bda:	6289                	lui	t0,0x2
  a31bdc:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31be0:	3002a073          	csrs	mstatus,t0
  a31be4:	52f6                	lw	t0,124(sp)
  a31be6:	34129073          	csrw	mepc,t0
  a31bea:	4082                	lw	ra,0(sp)
  a31bec:	42c2                	lw	t0,16(sp)
  a31bee:	4352                	lw	t1,20(sp)
  a31bf0:	43e2                	lw	t2,24(sp)
  a31bf2:	4472                	lw	s0,28(sp)
  a31bf4:	5482                	lw	s1,32(sp)
  a31bf6:	5512                	lw	a0,36(sp)
  a31bf8:	55a2                	lw	a1,40(sp)
  a31bfa:	5632                	lw	a2,44(sp)
  a31bfc:	56c2                	lw	a3,48(sp)
  a31bfe:	5752                	lw	a4,52(sp)
  a31c00:	57e2                	lw	a5,56(sp)
  a31c02:	5872                	lw	a6,60(sp)
  a31c04:	4886                	lw	a7,64(sp)
  a31c06:	4916                	lw	s2,68(sp)
  a31c08:	49a6                	lw	s3,72(sp)
  a31c0a:	4a36                	lw	s4,76(sp)
  a31c0c:	4ac6                	lw	s5,80(sp)
  a31c0e:	4b56                	lw	s6,84(sp)
  a31c10:	4be6                	lw	s7,88(sp)
  a31c12:	4c76                	lw	s8,92(sp)
  a31c14:	5c86                	lw	s9,96(sp)
  a31c16:	5d16                	lw	s10,100(sp)
  a31c18:	5da6                	lw	s11,104(sp)
  a31c1a:	5e36                	lw	t3,108(sp)
  a31c1c:	5ec6                	lw	t4,112(sp)
  a31c1e:	5f56                	lw	t5,116(sp)
  a31c20:	5fe6                	lw	t6,120(sp)
  a31c22:	6109                	addi	sp,sp,128
  a31c24:	30200073          	mret

00a31c28 <default_interrupt3_handler>:
  a31c28:	30047073          	csrci	mstatus,8
  a31c2c:	7119                	addi	sp,sp,-128
  a31c2e:	c006                	sw	ra,0(sp)
  a31c30:	c20a                	sw	sp,4(sp)
  a31c32:	c40e                	sw	gp,8(sp)
  a31c34:	c612                	sw	tp,12(sp)
  a31c36:	c816                	sw	t0,16(sp)
  a31c38:	ca1a                	sw	t1,20(sp)
  a31c3a:	cc1e                	sw	t2,24(sp)
  a31c3c:	ce22                	sw	s0,28(sp)
  a31c3e:	d026                	sw	s1,32(sp)
  a31c40:	d22a                	sw	a0,36(sp)
  a31c42:	d42e                	sw	a1,40(sp)
  a31c44:	d632                	sw	a2,44(sp)
  a31c46:	d836                	sw	a3,48(sp)
  a31c48:	da3a                	sw	a4,52(sp)
  a31c4a:	dc3e                	sw	a5,56(sp)
  a31c4c:	de42                	sw	a6,60(sp)
  a31c4e:	c0c6                	sw	a7,64(sp)
  a31c50:	c2ca                	sw	s2,68(sp)
  a31c52:	c4ce                	sw	s3,72(sp)
  a31c54:	c6d2                	sw	s4,76(sp)
  a31c56:	c8d6                	sw	s5,80(sp)
  a31c58:	cada                	sw	s6,84(sp)
  a31c5a:	ccde                	sw	s7,88(sp)
  a31c5c:	cee2                	sw	s8,92(sp)
  a31c5e:	d0e6                	sw	s9,96(sp)
  a31c60:	d2ea                	sw	s10,100(sp)
  a31c62:	d4ee                	sw	s11,104(sp)
  a31c64:	d6f2                	sw	t3,108(sp)
  a31c66:	d8f6                	sw	t4,112(sp)
  a31c68:	dafa                	sw	t5,116(sp)
  a31c6a:	dcfe                	sw	t6,120(sp)
  a31c6c:	341022f3          	csrr	t0,mepc
  a31c70:	de96                	sw	t0,124(sp)
  a31c72:	34011073          	csrw	mscratch,sp
  a31c76:	fffd3117          	auipc	sp,0xfffd3
  a31c7a:	48a10113          	addi	sp,sp,1162 # a05100 <__irq_stack_top__>
  a31c7e:	9befb0ef          	jal	ra,a2ce3c <interrupt3_handler>
  a31c82:	34002173          	csrr	sp,mscratch
  a31c86:	6289                	lui	t0,0x2
  a31c88:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31c8c:	3002a073          	csrs	mstatus,t0
  a31c90:	52f6                	lw	t0,124(sp)
  a31c92:	34129073          	csrw	mepc,t0
  a31c96:	4082                	lw	ra,0(sp)
  a31c98:	42c2                	lw	t0,16(sp)
  a31c9a:	4352                	lw	t1,20(sp)
  a31c9c:	43e2                	lw	t2,24(sp)
  a31c9e:	4472                	lw	s0,28(sp)
  a31ca0:	5482                	lw	s1,32(sp)
  a31ca2:	5512                	lw	a0,36(sp)
  a31ca4:	55a2                	lw	a1,40(sp)
  a31ca6:	5632                	lw	a2,44(sp)
  a31ca8:	56c2                	lw	a3,48(sp)
  a31caa:	5752                	lw	a4,52(sp)
  a31cac:	57e2                	lw	a5,56(sp)
  a31cae:	5872                	lw	a6,60(sp)
  a31cb0:	4886                	lw	a7,64(sp)
  a31cb2:	4916                	lw	s2,68(sp)
  a31cb4:	49a6                	lw	s3,72(sp)
  a31cb6:	4a36                	lw	s4,76(sp)
  a31cb8:	4ac6                	lw	s5,80(sp)
  a31cba:	4b56                	lw	s6,84(sp)
  a31cbc:	4be6                	lw	s7,88(sp)
  a31cbe:	4c76                	lw	s8,92(sp)
  a31cc0:	5c86                	lw	s9,96(sp)
  a31cc2:	5d16                	lw	s10,100(sp)
  a31cc4:	5da6                	lw	s11,104(sp)
  a31cc6:	5e36                	lw	t3,108(sp)
  a31cc8:	5ec6                	lw	t4,112(sp)
  a31cca:	5f56                	lw	t5,116(sp)
  a31ccc:	5fe6                	lw	t6,120(sp)
  a31cce:	6109                	addi	sp,sp,128
  a31cd0:	30200073          	mret

00a31cd4 <default_interrupt4_handler>:
  a31cd4:	30047073          	csrci	mstatus,8
  a31cd8:	7119                	addi	sp,sp,-128
  a31cda:	c006                	sw	ra,0(sp)
  a31cdc:	c20a                	sw	sp,4(sp)
  a31cde:	c40e                	sw	gp,8(sp)
  a31ce0:	c612                	sw	tp,12(sp)
  a31ce2:	c816                	sw	t0,16(sp)
  a31ce4:	ca1a                	sw	t1,20(sp)
  a31ce6:	cc1e                	sw	t2,24(sp)
  a31ce8:	ce22                	sw	s0,28(sp)
  a31cea:	d026                	sw	s1,32(sp)
  a31cec:	d22a                	sw	a0,36(sp)
  a31cee:	d42e                	sw	a1,40(sp)
  a31cf0:	d632                	sw	a2,44(sp)
  a31cf2:	d836                	sw	a3,48(sp)
  a31cf4:	da3a                	sw	a4,52(sp)
  a31cf6:	dc3e                	sw	a5,56(sp)
  a31cf8:	de42                	sw	a6,60(sp)
  a31cfa:	c0c6                	sw	a7,64(sp)
  a31cfc:	c2ca                	sw	s2,68(sp)
  a31cfe:	c4ce                	sw	s3,72(sp)
  a31d00:	c6d2                	sw	s4,76(sp)
  a31d02:	c8d6                	sw	s5,80(sp)
  a31d04:	cada                	sw	s6,84(sp)
  a31d06:	ccde                	sw	s7,88(sp)
  a31d08:	cee2                	sw	s8,92(sp)
  a31d0a:	d0e6                	sw	s9,96(sp)
  a31d0c:	d2ea                	sw	s10,100(sp)
  a31d0e:	d4ee                	sw	s11,104(sp)
  a31d10:	d6f2                	sw	t3,108(sp)
  a31d12:	d8f6                	sw	t4,112(sp)
  a31d14:	dafa                	sw	t5,116(sp)
  a31d16:	dcfe                	sw	t6,120(sp)
  a31d18:	341022f3          	csrr	t0,mepc
  a31d1c:	de96                	sw	t0,124(sp)
  a31d1e:	34011073          	csrw	mscratch,sp
  a31d22:	fffd3117          	auipc	sp,0xfffd3
  a31d26:	3de10113          	addi	sp,sp,990 # a05100 <__irq_stack_top__>
  a31d2a:	952fb0ef          	jal	ra,a2ce7c <interrupt4_handler>
  a31d2e:	34002173          	csrr	sp,mscratch
  a31d32:	6289                	lui	t0,0x2
  a31d34:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31d38:	3002a073          	csrs	mstatus,t0
  a31d3c:	52f6                	lw	t0,124(sp)
  a31d3e:	34129073          	csrw	mepc,t0
  a31d42:	4082                	lw	ra,0(sp)
  a31d44:	42c2                	lw	t0,16(sp)
  a31d46:	4352                	lw	t1,20(sp)
  a31d48:	43e2                	lw	t2,24(sp)
  a31d4a:	4472                	lw	s0,28(sp)
  a31d4c:	5482                	lw	s1,32(sp)
  a31d4e:	5512                	lw	a0,36(sp)
  a31d50:	55a2                	lw	a1,40(sp)
  a31d52:	5632                	lw	a2,44(sp)
  a31d54:	56c2                	lw	a3,48(sp)
  a31d56:	5752                	lw	a4,52(sp)
  a31d58:	57e2                	lw	a5,56(sp)
  a31d5a:	5872                	lw	a6,60(sp)
  a31d5c:	4886                	lw	a7,64(sp)
  a31d5e:	4916                	lw	s2,68(sp)
  a31d60:	49a6                	lw	s3,72(sp)
  a31d62:	4a36                	lw	s4,76(sp)
  a31d64:	4ac6                	lw	s5,80(sp)
  a31d66:	4b56                	lw	s6,84(sp)
  a31d68:	4be6                	lw	s7,88(sp)
  a31d6a:	4c76                	lw	s8,92(sp)
  a31d6c:	5c86                	lw	s9,96(sp)
  a31d6e:	5d16                	lw	s10,100(sp)
  a31d70:	5da6                	lw	s11,104(sp)
  a31d72:	5e36                	lw	t3,108(sp)
  a31d74:	5ec6                	lw	t4,112(sp)
  a31d76:	5f56                	lw	t5,116(sp)
  a31d78:	5fe6                	lw	t6,120(sp)
  a31d7a:	6109                	addi	sp,sp,128
  a31d7c:	30200073          	mret

00a31d80 <default_interrupt5_handler>:
  a31d80:	30047073          	csrci	mstatus,8
  a31d84:	7119                	addi	sp,sp,-128
  a31d86:	c006                	sw	ra,0(sp)
  a31d88:	c20a                	sw	sp,4(sp)
  a31d8a:	c40e                	sw	gp,8(sp)
  a31d8c:	c612                	sw	tp,12(sp)
  a31d8e:	c816                	sw	t0,16(sp)
  a31d90:	ca1a                	sw	t1,20(sp)
  a31d92:	cc1e                	sw	t2,24(sp)
  a31d94:	ce22                	sw	s0,28(sp)
  a31d96:	d026                	sw	s1,32(sp)
  a31d98:	d22a                	sw	a0,36(sp)
  a31d9a:	d42e                	sw	a1,40(sp)
  a31d9c:	d632                	sw	a2,44(sp)
  a31d9e:	d836                	sw	a3,48(sp)
  a31da0:	da3a                	sw	a4,52(sp)
  a31da2:	dc3e                	sw	a5,56(sp)
  a31da4:	de42                	sw	a6,60(sp)
  a31da6:	c0c6                	sw	a7,64(sp)
  a31da8:	c2ca                	sw	s2,68(sp)
  a31daa:	c4ce                	sw	s3,72(sp)
  a31dac:	c6d2                	sw	s4,76(sp)
  a31dae:	c8d6                	sw	s5,80(sp)
  a31db0:	cada                	sw	s6,84(sp)
  a31db2:	ccde                	sw	s7,88(sp)
  a31db4:	cee2                	sw	s8,92(sp)
  a31db6:	d0e6                	sw	s9,96(sp)
  a31db8:	d2ea                	sw	s10,100(sp)
  a31dba:	d4ee                	sw	s11,104(sp)
  a31dbc:	d6f2                	sw	t3,108(sp)
  a31dbe:	d8f6                	sw	t4,112(sp)
  a31dc0:	dafa                	sw	t5,116(sp)
  a31dc2:	dcfe                	sw	t6,120(sp)
  a31dc4:	341022f3          	csrr	t0,mepc
  a31dc8:	de96                	sw	t0,124(sp)
  a31dca:	34011073          	csrw	mscratch,sp
  a31dce:	fffd3117          	auipc	sp,0xfffd3
  a31dd2:	33210113          	addi	sp,sp,818 # a05100 <__irq_stack_top__>
  a31dd6:	8e6fb0ef          	jal	ra,a2cebc <interrupt5_handler>
  a31dda:	34002173          	csrr	sp,mscratch
  a31dde:	6289                	lui	t0,0x2
  a31de0:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31de4:	3002a073          	csrs	mstatus,t0
  a31de8:	52f6                	lw	t0,124(sp)
  a31dea:	34129073          	csrw	mepc,t0
  a31dee:	4082                	lw	ra,0(sp)
  a31df0:	42c2                	lw	t0,16(sp)
  a31df2:	4352                	lw	t1,20(sp)
  a31df4:	43e2                	lw	t2,24(sp)
  a31df6:	4472                	lw	s0,28(sp)
  a31df8:	5482                	lw	s1,32(sp)
  a31dfa:	5512                	lw	a0,36(sp)
  a31dfc:	55a2                	lw	a1,40(sp)
  a31dfe:	5632                	lw	a2,44(sp)
  a31e00:	56c2                	lw	a3,48(sp)
  a31e02:	5752                	lw	a4,52(sp)
  a31e04:	57e2                	lw	a5,56(sp)
  a31e06:	5872                	lw	a6,60(sp)
  a31e08:	4886                	lw	a7,64(sp)
  a31e0a:	4916                	lw	s2,68(sp)
  a31e0c:	49a6                	lw	s3,72(sp)
  a31e0e:	4a36                	lw	s4,76(sp)
  a31e10:	4ac6                	lw	s5,80(sp)
  a31e12:	4b56                	lw	s6,84(sp)
  a31e14:	4be6                	lw	s7,88(sp)
  a31e16:	4c76                	lw	s8,92(sp)
  a31e18:	5c86                	lw	s9,96(sp)
  a31e1a:	5d16                	lw	s10,100(sp)
  a31e1c:	5da6                	lw	s11,104(sp)
  a31e1e:	5e36                	lw	t3,108(sp)
  a31e20:	5ec6                	lw	t4,112(sp)
  a31e22:	5f56                	lw	t5,116(sp)
  a31e24:	5fe6                	lw	t6,120(sp)
  a31e26:	6109                	addi	sp,sp,128
  a31e28:	30200073          	mret

00a31e2c <default_local_interrupt_handler>:
  a31e2c:	30047073          	csrci	mstatus,8
  a31e30:	7119                	addi	sp,sp,-128
  a31e32:	c006                	sw	ra,0(sp)
  a31e34:	c20a                	sw	sp,4(sp)
  a31e36:	c40e                	sw	gp,8(sp)
  a31e38:	c612                	sw	tp,12(sp)
  a31e3a:	c816                	sw	t0,16(sp)
  a31e3c:	ca1a                	sw	t1,20(sp)
  a31e3e:	cc1e                	sw	t2,24(sp)
  a31e40:	ce22                	sw	s0,28(sp)
  a31e42:	d026                	sw	s1,32(sp)
  a31e44:	d22a                	sw	a0,36(sp)
  a31e46:	d42e                	sw	a1,40(sp)
  a31e48:	d632                	sw	a2,44(sp)
  a31e4a:	d836                	sw	a3,48(sp)
  a31e4c:	da3a                	sw	a4,52(sp)
  a31e4e:	dc3e                	sw	a5,56(sp)
  a31e50:	de42                	sw	a6,60(sp)
  a31e52:	c0c6                	sw	a7,64(sp)
  a31e54:	c2ca                	sw	s2,68(sp)
  a31e56:	c4ce                	sw	s3,72(sp)
  a31e58:	c6d2                	sw	s4,76(sp)
  a31e5a:	c8d6                	sw	s5,80(sp)
  a31e5c:	cada                	sw	s6,84(sp)
  a31e5e:	ccde                	sw	s7,88(sp)
  a31e60:	cee2                	sw	s8,92(sp)
  a31e62:	d0e6                	sw	s9,96(sp)
  a31e64:	d2ea                	sw	s10,100(sp)
  a31e66:	d4ee                	sw	s11,104(sp)
  a31e68:	d6f2                	sw	t3,108(sp)
  a31e6a:	d8f6                	sw	t4,112(sp)
  a31e6c:	dafa                	sw	t5,116(sp)
  a31e6e:	dcfe                	sw	t6,120(sp)
  a31e70:	341022f3          	csrr	t0,mepc
  a31e74:	de96                	sw	t0,124(sp)
  a31e76:	34011073          	csrw	mscratch,sp
  a31e7a:	fffd3117          	auipc	sp,0xfffd3
  a31e7e:	28610113          	addi	sp,sp,646 # a05100 <__irq_stack_top__>
  a31e82:	87afb0ef          	jal	ra,a2cefc <local_interrupt_handler>
  a31e86:	34002173          	csrr	sp,mscratch
  a31e8a:	6289                	lui	t0,0x2
  a31e8c:	88028293          	addi	t0,t0,-1920 # 1880 <ccause+0x8be>
  a31e90:	3002a073          	csrs	mstatus,t0
  a31e94:	52f6                	lw	t0,124(sp)
  a31e96:	34129073          	csrw	mepc,t0
  a31e9a:	4082                	lw	ra,0(sp)
  a31e9c:	42c2                	lw	t0,16(sp)
  a31e9e:	4352                	lw	t1,20(sp)
  a31ea0:	43e2                	lw	t2,24(sp)
  a31ea2:	4472                	lw	s0,28(sp)
  a31ea4:	5482                	lw	s1,32(sp)
  a31ea6:	5512                	lw	a0,36(sp)
  a31ea8:	55a2                	lw	a1,40(sp)
  a31eaa:	5632                	lw	a2,44(sp)
  a31eac:	56c2                	lw	a3,48(sp)
  a31eae:	5752                	lw	a4,52(sp)
  a31eb0:	57e2                	lw	a5,56(sp)
  a31eb2:	5872                	lw	a6,60(sp)
  a31eb4:	4886                	lw	a7,64(sp)
  a31eb6:	4916                	lw	s2,68(sp)
  a31eb8:	49a6                	lw	s3,72(sp)
  a31eba:	4a36                	lw	s4,76(sp)
  a31ebc:	4ac6                	lw	s5,80(sp)
  a31ebe:	4b56                	lw	s6,84(sp)
  a31ec0:	4be6                	lw	s7,88(sp)
  a31ec2:	4c76                	lw	s8,92(sp)
  a31ec4:	5c86                	lw	s9,96(sp)
  a31ec6:	5d16                	lw	s10,100(sp)
  a31ec8:	5da6                	lw	s11,104(sp)
  a31eca:	5e36                	lw	t3,108(sp)
  a31ecc:	5ec6                	lw	t4,112(sp)
  a31ece:	5f56                	lw	t5,116(sp)
  a31ed0:	5fe6                	lw	t6,120(sp)
  a31ed2:	6109                	addi	sp,sp,128
  a31ed4:	30200073          	mret

00a31ed8 <global_interrupt_lock>:
  a31ed8:	30002573          	csrr	a0,mstatus
  a31edc:	42a1                	li	t0,8
  a31ede:	3002b073          	csrc	mstatus,t0
  a31ee2:	8082                	ret

00a31ee4 <global_interrupt_unlock>:
  a31ee4:	30002573          	csrr	a0,mstatus
  a31ee8:	42a1                	li	t0,8
  a31eea:	3002a073          	csrs	mstatus,t0
  a31eee:	8082                	ret

00a31ef0 <global_interrupt_restore>:
  a31ef0:	30051073          	csrw	mstatus,a0
  a31ef4:	8082                	ret
  a31ef6:	0000                	unimp
  a31ef8:	ffff                	.2byte	0xffff
  a31efa:	00ff                	.2byte	0xff
  a31efc:	ffff                	.2byte	0xffff
  a31efe:	00ff                	.2byte	0xff

00a31f00 <__clz_tab>:
  a31f00:	0100 0202 0303 0303 0404 0404 0404 0404     ................
  a31f10:	0505 0505 0505 0505 0505 0505 0505 0505     ................
  a31f20:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a31f30:	0606 0606 0606 0606 0606 0606 0606 0606     ................
  a31f40:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31f50:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31f60:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31f70:	0707 0707 0707 0707 0707 0707 0707 0707     ................
  a31f80:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31f90:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31fa0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31fb0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31fc0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31fd0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31fe0:	0808 0808 0808 0808 0808 0808 0808 0808     ................
  a31ff0:	0808 0808 0808 0808 0808 0808 0808 0808     ................

00a32000 <sfc_cfg>:
  a32000:	0104 0000 0000 0020 0000 0080 6c46 7361     ...... .....Flas
  a32010:	6268 6f6f 2074 6155 7472 4920 696e 2074     hboot Uart Init 
  a32020:	7553 6363 0021 0000 6c46 7361 6268 6f6f     Succ!...Flashboo
  a32030:	2074 614d 6c6c 636f 4920 696e 2074 7553     t Malloc Init Su
  a32040:	6363 0021 6c46 7361 2068 6e49 7469 4620     cc!.Flash Init F
  a32050:	6961 216c 7220 7465 3d20 0020 6c46 7361     ail! ret = .Flas
  a32060:	2068 6e49 7469 5320 6375 2163 0000 0000     h Init Succ!....
  a32070:	4653 2043 6966 2078 5253 7220 7465 3d20     SFC fix SR ret =
  a32080:	0000 0000 7773 6d20 646f 2c65 6c20 7665     ....sw mode, lev
  a32090:	6c65 735b 3a77 6863 7069 3a5d 0000 0000     el[sw:chip]:....
  a320a0:	7768 6d20 646f 2c65 6c20 7665 6c65 635b     hw mode, level[c
  a320b0:	6968 5d70 003a 0000 6175 6970 705f 7261     hip]:...uapi_par
  a320c0:	6974 6974 6e6f 675f 7465 695f 666e 206f     tition_get_info 
  a320d0:	6166 6c69 6465 0020 7075 5f67 6c66 7361     failed .upg_flas
  a320e0:	5f68 6572 6461 6620 6961 656c 2064 0000     h_read failed ..
  a320f0:	6f4e 6e20 6565 2064 6f74 7520 6770 6172     No need to upgra
  a32100:	6564 2e2e 002e 0000 656e 6465 7520 6770     de......need upg
  a32110:	6172 6564 0000 0000 2d2d 2d2d 2d2d 2d2d     rade....--------
  a32120:	2d2d 2d2d 2d2d 2d2d 2d2d 2d2d 2d2d 2d2d     ----------------
  a32130:	2d2d 0000 7075 7267 6461 2065 6166 6c69     --..upgrade fail
  a32140:	6465 202c 6572 6573 2074 6f6e 0077 0000     ed, reset now...
  a32150:	7075 7267 6461 2065 7573 6363 7365 2c73     upgrade success,
  a32160:	7220 7365 7465 6e20 776f 0000 6547 2074      reset now..Get 
  a32170:	7061 2070 6170 7472 7469 6f69 206e 6166     app partition fa
  a32180:	6c69 6465 0021 0000 6c66 7361 5f68 6e65     iled!...flash_en
  a32190:	7263 7079 2074 6964 6173 6c62 2e65 0000     crypt disable...
  a321a0:	6441 7264 6e20 746f 3220 3635 7962 6574     Addr not 256byte
  a321b0:	6120 696c 6e67 656d 746e 0020 6c66 7361      alignment .flas
  a321c0:	5f68 6e65 7263 7079 2074 6e65 6261 656c     h_encrypt enable
  a321d0:	002e 0000 6e45 7263 7079 2074 646f 6b72     ....Encrypt odrk
  a321e0:	2031 7265 3d72 0000 6e45 7263 7079 2074     1 err=..Encrypt 
  a321f0:	6166 6370 6520 7272 003d 0000 6e45 7263     fapc err=...Encr
  a32200:	7079 2074 7962 6170 7373 6520 7272 003d     ypt bypass err=.
  a32210:	6576 6972 7966 6120 7070 6820 6165 2064     verify app head 
  a32220:	6166 6c69 6465 2021 6572 3d74 0000 0000     failed! ret=....
  a32230:	6576 6972 7966 6120 7070 6220 646f 2079     verify app body 
  a32240:	6166 6c69 6465 2121 7220 7465 003d 0000     failed!! ret=...
  a32250:	6567 5f74 6b70 5f67 6568 6461 7265 6620     get_pkg_header f
  a32260:	6961 2c6c 7220 7465 3d20 0020 7075 5f67     ail, ret = .upg_
  a32270:	6576 6972 7966 6620 6961 2c6c 7220 7465     verify fail, ret
  a32280:	3d20 0020 6572 6573 2074 7075 7267 6461      = .reset upgrad
  a32290:	2065 6c66 6761 6620 6961 2c6c 7220 7465     e flag fail, ret
  a322a0:	003d 0000 6572 7571 7365 2074 7075 7267     =...request upgr
  a322b0:	6461 2065 6166 6c69 202c 6572 3d74 0000     ade fail, ret=..
  a322c0:	7254 2079 6f66 6174 6620 7869 6120 7070     Try fota fix app
  a322d0:	002e 0000 6c46 7361 6268 6f6f 2074 6162     ....Flashboot ba
  a322e0:	6b63 7075 7720 726f 696b 676e 0021 0000     ckup working!...
  a322f0:	6c46 7361 6268 6f6f 2074 6170 7472 7469     Flashboot partit
  a32300:	6f69 206e 6e69 6f66 6720 7465 6620 6961     ion info get fai
  a32310:	216c 0000 6552 6f63 6576 7972 6520 6172     l!..Recovery era
  a32320:	6573 6620 6961 656c 2164 2021 6572 2074     se failed!! ret 
  a32330:	203d 0000 6552 6f63 6576 7972 7720 6972     = ..Recovery wri
  a32340:	6574 6620 6961 656c 2164 2021 6572 2074     te failed!! ret 
  a32350:	203d 0000 6552 6f63 6576 7972 6f20 216b     = ..Recovery ok!
  a32360:	0000 0000 4556 0000 6964 5f65 6469 6520     ....VE..die_id e
  a32370:	7566 6573 725f 6165 5f64 7469 6d65 6620     fuse_read_item f
  a32380:	6961 216c 0000 0000 6964 2065 6469 6d20     ail!....die id m
  a32390:	6d65 6d63 2070 6166 6c69 0021 6d69 6761     emcmp fail!.imag
  a323a0:	2065 6469 6520 7272 726f 0021 6576 7372     e id error!.vers
  a323b0:	6f69 206e 6665 7375 5f65 6572 6461 695f     ion efuse_read_i
  a323c0:	6574 206d 6166 6c69 0021 0000 736d 6469     tem fail!...msid
  a323d0:	6320 6d6f 6170 6572 6620 6961 216c 0000      compare fail!..
  a323e0:	6665 7375 5f65 6572 6461 695f 6574 206d     efuse_read_item 
  a323f0:	6576 6972 7966 6520 616e 6c62 2065 6166     verify enable fa
  a32400:	6c69 0021 6576 7372 6f69 206e 6f63 706d     il!.version comp
  a32410:	7261 2065 6166 6c69 0021 0000               are fail!...

00a3241c <g_verify_table>:
  a3241c:	0000 0000 f01e 4bd2 0000 0000 0100 0000     .......K........
  a3242c:	f02d 4bd2 0000 0000 0002 0000 3c1e 4b1e     -..K.........<.K
  a3243c:	0003 0000 0102 0000 3c2d 4b1e 0003 0000     ........-<.K....
  a3244c:	0003 0000 871e 4b69 0003 0000 0103 0000     ......iK........
  a3245c:	872d 4b69 0003 0000 0004 0000 3c1e 4b1e     -.iK.........<.K
  a3246c:	0003 0000 0104 0000 3c2d 4b1e 0003 0000     ........-<.K....
  a3247c:	0005 0000 871e 4b69 0003 0000 0105 0000     ......iK........
  a3248c:	872d 4b69 0003 0000 0201 0000 a51e 4b87     -.iK...........K
  a3249c:	0004 0000 0301 0000 a52d 4b87 0004 0000     ........-..K....
  a324ac:	0006 0000 2d1e 4b0f 0002 0000 0106 0000     .....-.K........
  a324bc:	2d2d 4b0f 0002 0000 6573 7563 6572 615f     --.K....secure_a
  a324cc:	7475 6568 746e 6369 7461 2065 7264 5f76     uthenticate drv_
  a324dc:	6f72 5f6d 6963 6870 7265 735f 6168 3532     rom_cipher_sha25
  a324ec:	2036 6166 6c69 0021 6573 7563 6572 615f     6 fail!.secure_a
  a324fc:	7475 6568 746e 6369 7461 2065 7264 5f76     uthenticate drv_
  a3250c:	6f72 5f6d 6963 6870 7265 705f 656b 625f     rom_cipher_pke_b
  a3251c:	3270 3635 5f72 6576 6972 7966 6620 6961     p256r_verify fai
  a3252c:	216c 0000 6576 6972 7966 695f 616d 6567     l!..verify_image
  a3253c:	635f 646f 5f65 7261 6165 6420 7672 725f     _code_area drv_r
  a3254c:	6d6f 635f 7069 6568 5f72 6873 3261 3635     om_cipher_sha256
  a3255c:	0021 0000 6576 6972 7966 695f 616d 6567     !...verify_image
  a3256c:	635f 646f 5f65 7261 6165 6820 7361 2068     _code_area hash 
  a3257c:	656d 636d 706d 6620 6961 216c 0000 0000     memcmp fail!....
  a3258c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3259c:	5f65 7261 6165 6620 6961 216c 0000 0000     e_area fail!....
  a325ac:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a325bc:	615f 6572 2061 6573 7563 6572 7620 7265     _area secure ver
  a325cc:	6669 2079 6964 6173 6c62 2165 0000 0000     ify disable!....
  a325dc:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a325ec:	615f 6572 2061 6573 7563 6572 7620 7265     _area secure ver
  a325fc:	6669 2079 7265 6f72 2172 0000 6576 6972     ify error!..veri
  a3260c:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a3261c:	2061 6f72 746f 656b 5f79 7473 7461 7375     a rootkey_status
  a3262c:	6920 766e 6c61 6469 0021 0000 6576 6972      invalid!...veri
  a3263c:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a3264c:	2061 6d69 6761 2065 6469 6520 7272 726f     a image id error
  a3265c:	0021 0000 6576 6972 7966 695f 616d 6567     !...verify_image
  a3266c:	6b5f 7965 615f 6572 2061 6573 7563 6572     _key_area secure
  a3267c:	615f 7475 6568 746e 6369 7461 2165 0000     _authenticate!..
  a3268c:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a3269c:	615f 6572 2061 656b 2079 6576 7372 6f69     _area key versio
  a326ac:	206e 7265 6f72 2172 0000 0000 6576 6972     n error!....veri
  a326bc:	7966 695f 616d 6567 6b5f 7965 615f 6572     fy_image_key_are
  a326cc:	2061 736d 6469 6520 7272 726f 0021 0000     a msid error!...
  a326dc:	6576 6972 7966 695f 616d 6567 6b5f 7965     verify_image_key
  a326ec:	615f 6572 2061 6964 2065 6469 6520 7272     _area die id err
  a326fc:	726f 0021 6576 6972 7966 695f 616d 6567     or!.verify_image
  a3270c:	6b5f 7965 615f 6572 2061 6166 6c69 0021     _key_area fail!.
  a3271c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3272c:	5f65 6e69 6f66 7320 6365 7275 2065 6576     e_info secure ve
  a3273c:	6972 7966 6420 7369 6261 656c 0021 0000     rify disable!...
  a3274c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3275c:	5f65 6e69 6f66 7320 6365 7275 2065 6576     e_info secure ve
  a3276c:	6972 7966 6520 7272 726f 0021 6576 6972     rify error!.veri
  a3277c:	7966 695f 616d 6567 635f 646f 5f65 6e69     fy_image_code_in
  a3278c:	6f66 6920 616d 6567 6920 2064 7265 6f72     fo image id erro
  a3279c:	2172 0000 6576 6972 7966 695f 616d 6567     r!..verify_image
  a327ac:	635f 646f 5f65 6e69 6f66 7320 6365 7275     _code_info secur
  a327bc:	5f65 7561 6874 6e65 6974 6163 6574 0021     e_authenticate!.
  a327cc:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a327dc:	5f65 6e69 6f66 6b20 7965 7620 7265 6973     e_info key versi
  a327ec:	6e6f 6520 7272 726f 0021 0000 6576 6972     on error!...veri
  a327fc:	7966 695f 616d 6567 635f 646f 5f65 6e69     fy_image_code_in
  a3280c:	6f66 6d20 6973 2064 7265 6f72 2172 0000     fo msid error!..
  a3281c:	6576 6972 7966 695f 616d 6567 635f 646f     verify_image_cod
  a3282c:	5f65 6e69 6f66 6620 6961 216c 0000 0000     e_info fail!....

00a3283c <g_sha256_ival>:
  a3283c:	096a 67e6 67bb 85ae 6e3c 72f3 4fa5 3af5     j..g.g..<n.r.O.:
  a3284c:	0e51 7f52 059b 8c68 831f abd9 e05b 19cd     Q.R...h.....[...

00a3285c <g_sm3_ival>:
  a3285c:	8073 6f16 1449 b9b2 2417 d742 8ada 0006     s..oI....$B.....
  a3286c:	6fa9 bc30 3116 aa38 8de3 4dee fbb0 4e0e     .o0..18....M...N
  a3287c:	a5a4 00a2 a562 00a2 a632 00a2 a6c4 00a2     ....b...2.......
  a3288c:	a6de 00a2 b8fa 00a2 b8e4 00a2 b8dc 00a2     ................
  a3289c:	b8e4 00a2 b8e8 00a2 b8e4 00a2 b8f2 00a2     ................
  a328ac:	b8e4 00a2 b8e4 00a2 b8e4 00a2 b8e4 00a2     ................
  a328bc:	b8e4 00a2 b8e8 00a2 b8f2 00a2               ............

00a328c8 <CSWTCH.8>:
  a328c8:	1001 0020                                   .. .

00a328cc <g_hal_uart_ctrl_func_array>:
  a328cc:	b998 00a2 0000 0000 b92e 00a2 b920 00a2     ............ ...
  a328dc:	b912 00a2 b904 00a2 b904 00a2 b6d6 00a2     ................
  a328ec:	b6ec 00a2 b722 00a2 0000 0000 b800 00a2     ...."...........
  a328fc:	b7e0 00a2 0000 0000 0000 0000 0000 0000     ................
  a3290c:	0000 0000 b704 00a2 b678 00a2 b68a 00a2     ........x.......
  a3291c:	0000 0000                                   ....

00a32920 <g_uart_base_addrs>:
  a32920:	0000 4401 1000 4401 2000 4401               ...D...D. .D

00a3292c <g_default_erase_cmds>:
  a3292c:	c639 ffff 06c1 4000 0101 0400               9......@....

00a32938 <g_default_quad_enable>:
  a32938:	0002 0000 0000 0000                         ........

00a32940 <g_default_read_cmds>:
  a32940:	0019 0000                                   ....

00a32944 <g_default_write_cmds>:
  a32944:	0001 0000 0011 0000                         ........

00a3294c <g_flash_common_erase_cmds>:
  a3294c:	c639 ffff 06c1 4000 0291 2000 0101 0400     9......@... ....

00a3295c <g_flash_common_read_cmds>:
  a3295c:	0019 0000 4059 0000 49d9 0000 55d9 0000     ....Y@...I...U..
  a3296c:	6b59 0000 f759 0000                         Yk..Y...

00a32974 <g_flash_common_write_cmds>:
  a32974:	0001 0000 0011 0000 4000 0000 4000 0000     .........@...@..
  a32984:	2991 0000 4000 0000                         .)...@..

00a3298c <g_flash_gd_bus_enable>:
  a3298c:	0301 0005 0000 0301 0135 0001 0002 0000     ........5.......
  a3299c:	0000 0000                                   ....

00a329a0 <g_flash_spi_info_list>:
  a329a0:	40c8 0016 0000 0040 0004 0000 295c 00a3     .@....@.....\)..
  a329b0:	2974 00a3 294c 00a3 298c 00a3               t)..L)...)..

00a329bc <g_flash_spi_unknown_info>:
  a329bc:	ffff 00ff 0000 0008 0003 0000 2940 00a3     ............@)..
  a329cc:	2944 00a3 292c 00a3 2938 00a3 6f4e 6e20     D)..,)..8)..No n
  a329dc:	6565 2064 6f74 6620 7869 5320 2152 0a0d     eed to fix SR!..
  a329ec:	0000 0000 5253 6620 7869 6f20 216b 0a0d     ....SR fix ok!..
  a329fc:	0000 0000 5253 6425 305b 2578 5d78 6e20     ....SR%d[0x%x] n
  a32a0c:	6565 7364 6620 7869 6e69 2c67 6520 7078     eeds fixing, exp
  a32a1c:	6365 5b74 7830 7825 0d5d 000a               ect[0x%x]...

00a32a28 <g_efuse_cfg>:
  a32a28:	0000 0008 0003 0008 00a0 0003 0270 0020     ............p. .
  a32a38:	0003 0290 0008 0003 0298 0008 0003 02a0     ................
  a32a48:	0100 0003 03a0 0020 0003 03c0 0001 0003     ...... .........
  a32a58:	03e8 0008 0003 0630 0030 0003 0660 0030     ......0.0...`.0.
  a32a68:	0003 0690 0030 0003 06c0 0030 0003 06f0     ....0.....0.....
  a32a78:	0080 0003 02a0 0100 0003 046f 0001 0003     ..........o.....
  a32a88:	0460 000f 0003 0470 0010 0003 0770 0030     `.....p.....p.0.
  a32a98:	0003 0000 0020 0000 7830 0000 7075 6164     .... ...0x..upda
  a32aa8:	6574 725f 7365 7465 635f 756f 746e 0020     te_reset_count .
  a32ab8:	4f52 7c4d 6564 6166 6c75 5f74 6168 646e     ROM|default_hand
  a32ac8:	656c 2072 203a 6e69 6574 7272 7075 2074     ler : interrupt 
  a32ad8:	6469 5b78 6425 0a5d 0000 0000 4f52 7c4d     idx[%d].....ROM|
  a32ae8:	6f4f 7370 2d20 6820 7261 2064 6166 6c75     Oops - hard faul
  a32af8:	0d74 000a 4f52 7c4d 7865 6563 7470 6f69     t...ROM|exceptio
  a32b08:	3a6e 7825 0a0d 0000 4f52 7c4d 6f4f 7370     n:%x....ROM|Oops
  a32b18:	4e3a 494d 000a 0000 4f52 7c4d 6f4f 7370     :NMI....ROM|Oops
  a32b28:	2d20 6920 736e 206e 6170 6567 6620 7561      - insn page fau
  a32b38:	746c 0a0d 0000 0000 4f52 7c4d 6f4f 7370     lt......ROM|Oops
  a32b48:	2d20 6c20 616f 2064 6170 6567 6620 7561      - load page fau
  a32b58:	746c 0a0d 0000 0000 4f52 7c4d 6f4f 7370     lt......ROM|Oops
  a32b68:	2d20 6c20 636f 206b 7075 0a0d 0000 0000      - lock up......
  a32b78:	4f52 7c4d 6f4f 7370 2d20 7320 6f74 6572     ROM|Oops - store
  a32b88:	7020 6761 2065 6166 6c75 0d74 000a 0000      page fault.....
  a32b98:	4f52 7c4d 6f4f 7370 2d20 6520 7262 6165     ROM|Oops - ebrea
  a32ba8:	0d6b 000a 4f52 7c4d 6f4f 7370 2d20 6520     k...ROM|Oops - e
  a32bb8:	766e 7269 6e6f 656d 746e 6320 6c61 206c     nvironment call 
  a32bc8:	7266 6d6f 4d20 6d2d 646f 0d65 000a 0000     from M-mode.....
  a32bd8:	4f52 7c4d 6f4f 7370 2d20 6520 766e 7269     ROM|Oops - envir
  a32be8:	6e6f 656d 746e 6320 6c61 206c 7266 6d6f     onment call from
  a32bf8:	5320 6d2d 646f 0d65 000a 0000 4f52 7c4d      S-mode.....ROM|
  a32c08:	6f4f 7370 2d20 6520 766e 7269 6e6f 656d     Oops - environme
  a32c18:	746e 6320 6c61 206c 7266 6d6f 5520 6d2d     nt call from U-m
  a32c28:	646f 0d65 000a 0000 4f52 7c4d 6f4f 7370     ode.....ROM|Oops
  a32c38:	2d20 6920 736e 7274 6375 6974 6e6f 6120      - instruction a
  a32c48:	6363 7365 2073 6166 6c75 0d74 000a 0000     ccess fault.....
  a32c58:	4f52 7c4d 6f4f 7370 2d20 6920 6c6c 6765     ROM|Oops - illeg
  a32c68:	6c61 6920 736e 7274 6375 6974 6e6f 0a0d     al instruction..
  a32c78:	0000 0000 4f52 7c4d 6f4f 7370 2d20 6920     ....ROM|Oops - i
  a32c88:	736e 7274 6375 6974 6e6f 6120 6464 6572     nstruction addre
  a32c98:	7373 6d20 7369 6c61 6769 656e 0d64 000a     ss misaligned...
  a32ca8:	4f52 7c4d 6f4f 7370 2d20 6c20 616f 2064     ROM|Oops - load 
  a32cb8:	6361 6563 7373 6620 7561 746c 0a0d 0000     access fault....
  a32cc8:	4f52 7c4d 6f4f 7370 2d20 6c20 616f 2064     ROM|Oops - load 
  a32cd8:	6461 7264 7365 2073 696d 6173 696c 6e67     address misalign
  a32ce8:	6465 0a0d 0000 0000 4f52 7c4d 6f4f 7370     ed......ROM|Oops
  a32cf8:	2d20 7320 6f74 6572 2820 726f 4120 4f4d      - store (or AMO
  a32d08:	2029 6361 6563 7373 6620 7561 746c 0a0d     ) access fault..
  a32d18:	0000 0000 4f52 7c4d 6f4f 7370 2d20 7320     ....ROM|Oops - s
  a32d28:	6f74 6572 2820 726f 4120 4f4d 2029 6461     tore (or AMO) ad
  a32d38:	7264 7365 2073 696d 6173 696c 6e67 6465     dress misaligned
  a32d48:	0a0d 0000 4f52 7c4d 6f4f 7370 2d20 7520     ....ROM|Oops - u
  a32d58:	6b6e 6f6e 6e77 6520 6378 7065 6974 6e6f     nknown exception
  a32d68:	0a0d 0000 4f52 7c4d 2a2a 2a2a 2a2a 2a2a     ....ROM|********
  a32d78:	2a2a 2a2a 2a2a 7845 6563 7470 6f69 206e     ******Exception 
  a32d88:	6e49 6f66 6d72 7461 6f69 2a6e 2a2a 2a2a     Information*****
  a32d98:	2a2a 2a2a 2a2a 2a2a 202a 000a 4f52 7c4d     ********* ..ROM|
  a32da8:	7775 7845 5463 7079 2065 203d 7830 7825     uwExcType = 0x%x
  a32db8:	000a 0000 4f52 7c4d 656d 6370 2020 2020     ....ROM|mepc    
  a32dc8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32dd8:	736d 6174 7574 2073 2020 3d20 3020 2578     mstatus    = 0x%
  a32de8:	0a78 0000 4f52 7c4d 746d 6176 206c 2020     x...ROM|mtval   
  a32df8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e08:	636d 7561 6573 2020 2020 3d20 3020 2578     mcause     = 0x%
  a32e18:	0a78 0000 4f52 7c4d 6363 7561 6573 2020     x...ROM|ccause  
  a32e28:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e38:	6172 2020 2020 2020 2020 3d20 3020 2578     ra         = 0x%
  a32e48:	0a78 0000 4f52 7c4d 7073 2020 2020 2020     x...ROM|sp      
  a32e58:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e68:	7067 2020 2020 2020 2020 3d20 3020 2578     gp         = 0x%
  a32e78:	0a78 0000 4f52 7c4d 7074 2020 2020 2020     x...ROM|tp      
  a32e88:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32e98:	3074 2020 2020 2020 2020 3d20 3020 2578     t0         = 0x%
  a32ea8:	0a78 0000 4f52 7c4d 3174 2020 2020 2020     x...ROM|t1      
  a32eb8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32ec8:	3274 2020 2020 2020 2020 3d20 3020 2578     t2         = 0x%
  a32ed8:	0a78 0000 4f52 7c4d 3073 2020 2020 2020     x...ROM|s0      
  a32ee8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32ef8:	3173 2020 2020 2020 2020 3d20 3020 2578     s1         = 0x%
  a32f08:	0a78 0000 4f52 7c4d 3061 2020 2020 2020     x...ROM|a0      
  a32f18:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32f28:	3161 2020 2020 2020 2020 3d20 3020 2578     a1         = 0x%
  a32f38:	0a78 0000 4f52 7c4d 3261 2020 2020 2020     x...ROM|a2      
  a32f48:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32f58:	3361 2020 2020 2020 2020 3d20 3020 2578     a3         = 0x%
  a32f68:	0a78 0000 4f52 7c4d 3461 2020 2020 2020     x...ROM|a4      
  a32f78:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32f88:	3561 2020 2020 2020 2020 3d20 3020 2578     a5         = 0x%
  a32f98:	0a78 0000 4f52 7c4d 3661 2020 2020 2020     x...ROM|a6      
  a32fa8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32fb8:	3761 2020 2020 2020 2020 3d20 3020 2578     a7         = 0x%
  a32fc8:	0a78 0000 4f52 7c4d 3273 2020 2020 2020     x...ROM|s2      
  a32fd8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a32fe8:	3373 2020 2020 2020 2020 3d20 3020 2578     s3         = 0x%
  a32ff8:	0a78 0000 4f52 7c4d 3473 2020 2020 2020     x...ROM|s4      
  a33008:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a33018:	3573 2020 2020 2020 2020 3d20 3020 2578     s5         = 0x%
  a33028:	0a78 0000 4f52 7c4d 3673 2020 2020 2020     x...ROM|s6      
  a33038:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a33048:	3773 2020 2020 2020 2020 3d20 3020 2578     s7         = 0x%
  a33058:	0a78 0000 4f52 7c4d 3873 2020 2020 2020     x...ROM|s8      
  a33068:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a33078:	3973 2020 2020 2020 2020 3d20 3020 2578     s9         = 0x%
  a33088:	0a78 0000 4f52 7c4d 3173 2030 2020 2020     x...ROM|s10     
  a33098:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a330a8:	3173 2031 2020 2020 2020 3d20 3020 2578     s11        = 0x%
  a330b8:	0a78 0000 4f52 7c4d 3374 2020 2020 2020     x...ROM|t3      
  a330c8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a330d8:	3474 2020 2020 2020 2020 3d20 3020 2578     t4         = 0x%
  a330e8:	0a78 0000 4f52 7c4d 3574 2020 2020 2020     x...ROM|t5      
  a330f8:	2020 3d20 3020 2578 0a78 0000 4f52 7c4d        = 0x%x...ROM|
  a33108:	3674 2020 2020 2020 2020 3d20 3020 2578     t6         = 0x%
  a33118:	0a78 0000 4f52 7c4d 2a2a 2a2a 2a2a 2a2a     x...ROM|********
  a33128:	2a2a 2a2a 2a2a 7845 6563 7470 6f69 206e     ******Exception 
  a33138:	6e49 6f66 6d72 7461 6f69 206e 6e65 2a64     Information end*
  a33148:	2a2a 2a2a 2a2a 2a2a 2a2a 2a2a 202a 000a     ************* ..
  a33158:	4f52 7c4d 6d6e 5f69 6168 646e 656c 2072     ROM|nmi_handler 
  a33168:	203a 6e69 6574 7272 7075 2074 6469 5b78     : interrupt idx[
  a33178:	6425 0a5d 0000 0000 555b 4750 205d 6567     %d].....[UPG] ge
  a33188:	2074 736d 6469 6620 6961 2c6c 6572 3d74     t msid fail,ret=
  a33198:	7830 7825 0a0d 0000 555b 4750 205d 736d     0x%x....[UPG] ms
  a331a8:	6469 7720 6f72 676e 0d21 000a 6863 6365     id wrong!...chec
  a331b8:	5f6b 6576 6972 7966 655f 616e 6c62 2065     k_verify_enable 
  a331c8:	6665 7375 5f65 6572 6461 695f 6574 206d     efuse_read_item 
  a331d8:	6166 6c69 305b 2578 5d78 0021 6f72 746f     fail[0x%x]!.root
  a331e8:	656b 2079 6d69 6761 2065 6469 305b 2578     key image id[0x%
  a331f8:	5d78 6520 7272 726f 0021 0000 6576 6972     x] error!...veri
  a33208:	7966 725f 6f6f 6b74 7965 7520 6770 635f     fy_rootkey upg_c
  a33218:	6c61 5f63 6168 6873 645f 7269 6365 6c74     alc_hash_directl
  a33228:	2079 6166 6c69 305b 2578 5d78 0000 0000     y fail[0x%x]....
  a33238:	6576 6972 7966 725f 6f6f 6b74 7965 6520     verify_rootkey e
  a33248:	7566 6573 725f 6165 5f64 7469 6d65 6620     fuse_read_item f
  a33258:	6961 5b6c 7830 7825 005d 0000 6576 6972     ail[0x%x]...veri
  a33268:	7966 725f 6f6f 6b74 7965 6820 7361 2068     fy_rootkey hash 
  a33278:	656d 636d 706d 6620 6961 216c 0000 0000     memcmp fail!....
  a33288:	555b 4750 205d 7270 676f 6572 7373 6320     [UPG] progress c
  a33298:	6c61 626c 6361 206b 6572 6967 7473 6620     allback regist f
  a332a8:	6961 656c 0d64 000a 555b 4750 205d 7075     ailed...[UPG] up
  a332b8:	2067 6570 6372 6e65 2074 203a 0000 0000     g percent : ....
  a332c8:	0031 0000 2520 000d 555b 4750 205d 6e69     1... %..[UPG] in
  a332d8:	7469 6620 6961 656c 2164 0a0d 0000 0000     it failed!......
  a332e8:	555b 4750 205d 6e69 7469 4f20 214b 0000     [UPG] init OK!..
  a332f8:	555b 4750 205d 7075 5f67 6e69 7469 635f     [UPG] upg_init_c
  a33308:	7972 6f74 635f 6766 6d20 6d65 7063 5f79     ryto_cfg memcpy_
  a33318:	2073 6e65 7263 2079 6173 746c 6620 6961     s encry salt fai
  a33328:	2e6c 0d20 000a 0000 555b 4750 205d 7075     l. .....[UPG] up
  a33338:	5f67 6e69 7469 635f 7972 6f74 635f 6766     g_init_cryto_cfg
  a33348:	6d20 6d65 7063 5f79 2073 6564 7263 2079      memcpy_s decry 
  a33358:	6173 746c 6620 6961 2e6c 0d20 000a 0000     salt fail. .....
  a33368:	555b 4750 205d 7075 5f67 6e69 7469 635f     [UPG] upg_init_c
  a33378:	7972 6f74 635f 6766 6d20 6d65 7063 5f79     ryto_cfg memcpy_
  a33388:	2073 6e65 7263 2079 7669 6620 6961 2e6c     s encry iv fail.
  a33398:	0d20 000a 555b 4750 205d 7075 5f67 6e69      ...[UPG] upg_in
  a333a8:	7469 635f 7972 6f74 635f 6766 6d20 6d65     it_cryto_cfg mem
  a333b8:	7063 5f79 2073 6564 7263 2079 7669 6620     cpy_s decry iv f
  a333c8:	6961 2e6c 0d20 000a 555b 4750 205d 7264     ail. ...[UPG] dr
  a333d8:	5f76 6f72 5f6d 6963 6870 7265 735f 6d79     v_rom_cipher_sym
  a333e8:	5f63 6e69 7469 6620 6961 2c6c 7220 7465     c_init fail, ret
  a333f8:	3d20 3020 2578 2e78 0d20 000a 555b 4750      = 0x%x. ...[UPG
  a33408:	205d 7264 5f76 6f72 5f6d 6963 6870 7265     ] drv_rom_cipher
  a33418:	635f 6572 7461 5f65 656b 7379 6f6c 2074     _create_keyslot 
  a33428:	6e65 7263 2079 6166 6c69 6465 202c 6572     encry failed, re
  a33438:	2074 203d 7830 7825 202e 0a0d 0000 0000     t = 0x%x. ......
  a33448:	555b 4750 205d 7264 5f76 6f72 5f6d 6963     [UPG] drv_rom_ci
  a33458:	6870 7265 635f 6572 7461 5f65 656b 7379     pher_create_keys
  a33468:	6f6c 2074 6564 7263 2079 6166 6c69 6465     lot decry failed
  a33478:	202c 6572 2074 203d 7830 7825 202e 0a0d     , ret = 0x%x. ..
  a33488:	0000 0000 555b 4750 205d 7075 5f67 6564     ....[UPG] upg_de
  a33498:	7263 5f79 6f66 6174 705f 746b 643a 7672     cry_fota_pkt:drv
  a334a8:	725f 6d6f 635f 7069 6568 5f72 7973 636d     _rom_cipher_symc
  a334b8:	645f 6365 7972 7470 6620 6961 656c 2c64     _decrypt failed,
  a334c8:	7220 7465 3d20 3020 2578 2078 0a0d 0000      ret = 0x%x ....
  a334d8:	555b 4750 205d 7075 5f67 6e65 7263 5f79     [UPG] upg_encry_
  a334e8:	6f66 6174 705f 746b 643a 7672 725f 6d6f     fota_pkt:drv_rom
  a334f8:	635f 7069 6568 5f72 7973 636d 645f 6365     _cipher_symc_dec
  a33508:	7972 7470 6620 6961 656c 2c64 7220 7465     rypt failed, ret
  a33518:	3d20 3020 2578 2078 0a0d 0000 4f52 7c4d      = 0x%x ....ROM|
  a33528:	705b 6e61 6369 695d 3a64 6425 632c 646f     [panic]id:%d,cod
  a33538:	3a65 7830 7825 632c 6c61 3a6c 7830 7825     e:0x%x,call:0x%x
  a33548:	0000 0000 555b 4750 205d 7075 5f67 6567     ....[UPG] upg_ge
  a33558:	5f74 7075 7267 6461 5f65 6c66 6761 665f     t_upgrade_flag_f
  a33568:	616c 6873 735f 6174 7472 615f 6464 2072     lash_start_addr 
  a33578:	6166 6c69 0a0d 0000 555b 4750 205d 7075     fail....[UPG] up
  a33588:	5f67 6c61 6f6c 5f63 6e61 5f64 6567 5f74     g_alloc_and_get_
  a33598:	7075 7267 6461 5f65 6c66 6761 7520 6770     upgrade_flag upg
  a335a8:	6d5f 6c61 6f6c 2063 6166 6c69 0a0d 0000     _malloc fail....
  a335b8:	555b 4750 205d 7075 5f67 6c61 6f6c 5f63     [UPG] upg_alloc_
  a335c8:	6e61 5f64 6567 5f74 7075 7267 6461 5f65     and_get_upgrade_
  a335d8:	6c66 6761 7220 6165 2064 6c66 7361 2068     flag read flash 
  a335e8:	6166 6c69 0a0d 0000 555b 4750 205d 7075     fail....[UPG] up
  a335f8:	5f67 6c66 7361 5f68 6572 6461 6620 616c     g_flash_read fla
  a33608:	2067 6166 6c69 0a0d 0000 0000 555b 4750     g fail......[UPG
  a33618:	205d 7277 7469 2065 6f63 706d 656c 6574     ] write complete
  a33628:	203a 7830 7825 0a0d 0000 0000 555b 4750     : 0x%x......[UPG
  a33638:	205d 7075 5f67 6c66 7361 5f68 7277 7469     ] upg_flash_writ
  a33648:	2065 7075 7267 6461 7265 6620 616c 2067     e upgrader flag 
  a33658:	6166 6c69 202e 6572 2074 203d 7830 7825     fail. ret = 0x%x
  a33668:	0a0d 0000 555b 4750 205d 6572 7274 2079     ....[UPG] retry 
  a33678:	6974 656d 2073 6c61 206c 6166 6c69 6465     times all failed
  a33688:	0a0d 0000 555b 4750 205d 6168 6873 6f5f     ....[UPG] hash_o
  a33698:	6570 6172 6974 6e6f 203a 7264 5f76 6f72     peration: drv_ro
  a336a8:	5f6d 6963 6870 7265 685f 7361 2068 6166     m_cipher_hash fa
  a336b8:	6c69 7220 7465 765f 6c61 3d20 3020 2578     il ret_val = 0x%
  a336c8:	0d78 000a 555b 4750 205d 6163 636c 685f     x...[UPG] calc_h
  a336d8:	7361 2068 6166 6c69 7220 7465 3d20 3020     ash fail ret = 0
  a336e8:	2578 0d78 000a 0000 555b 4750 205d 6576     x%x.....[UPG] ve
  a336f8:	6972 7966 735f 6769 616e 7574 6572 6920     rify_signature i
  a33708:	2073 6166 6c69 202c 6572 2074 203d 7830     s fail, ret = 0x
  a33718:	7825 0a0d 0000 0000 555b 4750 205d 7075     %x......[UPG] up
  a33728:	2067 6576 6972 7966 6820 6165 2064 4b4f     g verify head OK
  a33738:	0a0d 0000 555b 4750 205d 7075 5f67 6567     ....[UPG] upg_ge
  a33748:	5f74 6b70 5f67 6d69 6761 5f65 6168 6873     t_pkg_image_hash
  a33758:	745f 6261 656c 6620 6961 0d6c 000a 0000     _table fail.....
  a33768:	555b 4750 205d 7075 5f67 6576 6972 7966     [UPG] upg_verify
  a33778:	685f 7361 2068 6d69 6761 2065 6174 6c62     _hash image tabl
  a33788:	2065 4b4f 0a0d 0000 555b 4750 205d 7075     e OK....[UPG] up
  a33798:	5f67 6567 5f74 6b70 5f67 6d69 6761 5f65     g_get_pkg_image_
  a337a8:	6568 6461 7265 6620 6961 0d6c 000a 0000     header fail.....
  a337b8:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a337c8:	203a 6d69 6761 2065 4449 6520 7272 726f     : image ID error
  a337d8:	0a0d 0000 555b 4750 205d 6576 6972 7966     ....[UPG] verify
  a337e8:	665f 746f 5f61 656b 5f79 7261 6165 2d20     _fota_key_area -
  a337f8:	203e 6576 6972 7966 5320 4148 3532 0d36     > verify SHA256.
  a33808:	000a 0000 555b 4750 205d 6576 6972 7966     ....[UPG] verify
  a33818:	665f 746f 5f61 656b 5f79 7261 6165 2d20     _fota_key_area -
  a33828:	203e 6576 6972 7966 7320 6769 656e 0d64     > verify signed.
  a33838:	000a 0000 555b 4750 205d 7075 2067 6576     ....[UPG] upg ve
  a33848:	6972 7966 203a 656b 2079 7261 6165 6520     rify: key area e
  a33858:	7272 726f 202e 6572 2074 203d 7830 7825     rror. ret = 0x%x
  a33868:	0a0d 0000 555b 4750 205d 7075 2067 6576     ....[UPG] upg ve
  a33878:	6972 7966 203a 6f66 6174 6920 666e 206f     rify: fota info 
  a33888:	7265 6f72 2e72 7220 7465 3d20 3020 2578     error. ret = 0x%
  a33898:	0d78 000a 555b 4750 205d 7075 2067 6576     x...[UPG] upg ve
  a338a8:	6972 7966 203a 7075 5f67 6863 6365 5f6b     rify: upg_check_
  a338b8:	6f66 6174 695f 666e 726f 616d 6974 6e6f     fota_information
  a338c8:	202e 6572 2074 203d 7830 7825 0a0d 0000     . ret = 0x%x....
  a338d8:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a338e8:	203a 6966 656c 6920 616d 6567 6320 6568     : file image che
  a338f8:	6b63 6520 7272 726f 202e 6568 6461 7265     ck error. header
  a33908:	6d5f 6761 6369 3d20 3020 2578 0d78 000a     _magic = 0x%x...
  a33918:	555b 4750 205d 7075 2067 6576 6972 7966     [UPG] upg verify
  a33928:	203a 6d69 6761 2065 6863 6365 206b 4b4f     : image check OK
  a33938:	202e 6d69 6761 5f65 6469 3d20 3020 2578     . image_id = 0x%
  a33948:	0d78 000a 555b 4750 205d 7075 5f67 6576     x...[UPG] upg_ve
  a33958:	6972 7966 685f 7361 3a68 6820 7361 5f68     rify_hash: hash_
  a33968:	706f 7265 7461 6f69 206e 6166 6c69 7220     operation fail r
  a33978:	7465 765f 6c61 3d20 3020 2578 0d78 000a     et_val = 0x%x...
  a33988:	555b 4750 205d 6576 6972 7966 665f 746f     [UPG] verify_fot
  a33998:	5f61 6e69 6f66 2d20 203e 6576 6972 7966     a_info -> verify
  a339a8:	5320 4148 3532 0d36 000a 0000 555b 4750      SHA256.....[UPG
  a339b8:	205d 6576 6972 7966 665f 746f 5f61 6e69     ] verify_fota_in
  a339c8:	6f66 2d20 203e 6576 6972 7966 7320 6769     fo -> verify sig
  a339d8:	656e 0d64 000a 0000 555b 4750 205d 7075     ned.....[UPG] up
  a339e8:	5f67 6576 6972 7966 685f 7361 3a68 6d20     g_verify_hash: m
  a339f8:	6d65 6d63 2070 6168 6873 6620 6961 2e6c     emcmp hash fail.
  a33a08:	0a0d 0000 555b 4750 205d 7075 5f67 6567     ....[UPG] upg_ge
  a33a18:	5f74 6170 6b63 6761 5f65 6568 6461 7265     t_package_header
  a33a28:	6620 6961 0d6c 000a 555b 4750 205d 6175      fail...[UPG] ua
  a33a38:	6970 755f 6770 765f 7265 6669 5f79 6966     pi_upg_verify_fi
  a33a48:	656c 6620 6961 2c6c 7220 7465 3d20 3020     le fail, ret = 0
  a33a58:	2578 0d78 000a 0000 555b 4750 205d 7075     x%x.....[UPG] up
  a33a68:	5f67 6567 5f74 6966 6d72 6177 6572 6e5f     g_get_firmware_n
  a33a78:	6d75 6562 5f72 6e69 705f 6361 616b 6567     umber_in_package
  a33a88:	6620 6961 2c6c 7220 7465 3d20 3020 2578      fail, ret = 0x%
  a33a98:	0d78 000a 555b 4750 205d 7075 5f67 7075     x...[UPG] upg_up
  a33aa8:	7267 6461 5f65 6572 7571 7365 2074 6166     grade_request fa
  a33ab8:	6c69 202e 6572 2074 203d 7830 7825 0a0d     il. ret = 0x%x..
  a33ac8:	0000 0000 555b 4750 205d 7075 5f67 6e65     ....[UPG] upg_en
  a33ad8:	7263 5f79 6f66 6174 705f 746b 6d3a 6d65     cry_fota_pkt:mem
  a33ae8:	6f6d 6576 735f 6620 6961 656c 2e64 0a0d     move_s failed...
  a33af8:	0000 0000 555b 4750 205d 7075 5f67 7a6c     ....[UPG] upg_lz
  a33b08:	616d 615f 6c6c 636f 6620 6961 656c 2164     ma_alloc failed!
  a33b18:	2121 7320 7a69 2065 203d 7830 7825 0a0d     !! size = 0x%x..
  a33b28:	0000 0000 555b 4750 205d 7075 5f67 7a6c     ....[UPG] upg_lz
  a33b38:	616d 725f 6165 5f64 6b70 5f74 6564 7263     ma_read_pkt_decr
  a33b48:	2079 6166 6c69 7220 7465 3d20 3020 2578     y fail ret = 0x%
  a33b58:	2e78 0a0d 0000 0000 555b 4750 205d 7075     x.......[UPG] up
  a33b68:	5f67 7a6c 616d 645f 6365 646f 5f65 6f74     g_lzma_decode_to
  a33b78:	625f 6675 6620 6961 206c 6572 2074 203d     _buf fail ret = 
  a33b88:	7830 7825 0d2e 000a 555b 4750 205d 7a6c     0x%x....[UPG] lz
  a33b98:	616d 6564 5f63 6564 6f63 6564 6f74 7562     madec_decodetobu
  a33ba8:	2066 6166 6c69 7220 7465 3d20 3020 2578     f fail ret = 0x%
  a33bb8:	2e78 0d20 000a 0000 555b 4750 205d 7075     x. .....[UPG] up
  a33bc8:	5f67 7a6c 616d 775f 6972 6574 695f 616d     g_lzma_write_ima
  a33bd8:	6567 6620 6961 2e6c 0a0d 0000 555b 4750     ge fail.....[UPG
  a33be8:	205d 7075 5f67 6e65 7263 5f79 6f66 6174     ] upg_encry_fota
  a33bf8:	705f 746b 6620 6961 206c 6572 2074 203d     _pkt fail ret = 
  a33c08:	7830 7825 0d20 000a 3044 8000 555b 4750     0x%x ...D0..[UPG
  a33c18:	205d 6f4e 2074 656e 6465 7420 206f 7075     ] Not need to up
  a33c28:	7267 6461 2e65 2e2e 0a0d 0000 555b 4750     grade.......[UPG
  a33c38:	205d 6170 6b63 6761 2065 6e69 6f66 7420     ] package info t
  a33c48:	746f 6c61 203d 7830 7825 202c 6966 696e     otal= 0x%x, fini
  a33c58:	6873 6465 3d20 3020 2578 0d78 000a 0000     shed = 0x%x.....
  a33c68:	555b 4750 205d 7075 6164 6574 6920 616d     [UPG] update ima
  a33c78:	6567 6e20 6d75 6562 2072 203d 7830 7825     ge number = 0x%x
  a33c88:	0a0d 0000 555b 4750 205d 7075 6164 6574     ....[UPG] update
  a33c98:	6620 7269 776d 7261 2065 756e 626d 7265      firmware number
  a33ca8:	3d20 3020 2578 0d78 000a 0000 555b 4750      = 0x%x.....[UPG
  a33cb8:	205d 6854 2065 6d69 6761 2065 6168 2073     ] The image has 
  a33cc8:	6966 696e 6873 6465 202e 6d69 6761 5f65     finished. image_
  a33cd8:	6469 3d20 3020 2578 0d78 000a 555b 4750     id = 0x%x...[UPG
  a33ce8:	205d 7075 5f67 6567 5f74 6b70 5f67 6d69     ] upg_get_pkg_im
  a33cf8:	6761 5f65 6568 6461 7265 6620 6961 2e6c     age_header fail.
  a33d08:	0a0d 0000 555b 4750 205d 7075 5f67 6573     ....[UPG] upg_se
  a33d18:	5f74 6966 6d72 6177 6572 755f 6470 7461     t_firmware_updat
  a33d28:	5f65 7473 7461 7375 6620 6961 0d6c 000a     e_status fail...
  a33d38:	555b 4750 205d 7473 7261 2074 6570 6672     [UPG] start perf
  a33d48:	726f 206d 7075 6164 6574 6920 616d 6567     orm update image
  a33d58:	3a20 3020 2578 0d78 000a 0000 555b 4750      : 0x%x.....[UPG
  a33d68:	205d 7075 5f67 6c66 7361 5f68 7265 7361     ] upg_flash_eras
  a33d78:	5f65 656d 6174 6164 6174 705f 6761 7365     e_metadata_pages
  a33d88:	6620 6961 2e6c 0a0d 0000 0000 555b 4750      fail.......[UPG
  a33d98:	205d 6d69 6761 2065 6564 6f63 706d 6572     ] image decompre
  a33da8:	7373 665f 616c 3a67 3020 2578 0d78 000a     ss_flag: 0x%x...
  a33db8:	555b 4750 205d 6564 6f63 706d 6572 7373     [UPG] decompress
  a33dc8:	7520 6770 0a0d 0000 555b 4750 205d 6964      upg....[UPG] di
  a33dd8:	6666 7520 6770 0a0d 0000 0000 555b 4750     ff upg......[UPG
  a33de8:	205d 7566 6c6c 7520 6770 0a0d 0000 0000     ] full upg......
  a33df8:	555b 4750 205d 7773 7469 6863 7320 6174     [UPG] switch sta
  a33e08:	7574 2073 203d 7830 7825 0a0d 0000 0000     tus = 0x%x......
  a33e18:	555b 4750 205d 6570 6672 726f 206d 7075     [UPG] perform up
  a33e28:	6164 6574 6920 616d 6567 6f20 6576 2e72     date image over.
  a33e38:	7220 7465 3d20 3020 2578 0d78 000a 0000      ret = 0x%x.....
  a33e48:	555b 4750 205d 7473 7261 2074 6570 6672     [UPG] start perf
  a33e58:	726f 206d 564e 6920 616d 6567 3a20 3020     orm NV image : 0
  a33e68:	2578 0d78 000a 0000 555b 4750 205d 6570     x%x.....[UPG] pe
  a33e78:	6672 726f 206d 564e 6920 616d 6567 6f20     rform NV image o
  a33e88:	6576 2e72 7220 7465 3d20 3020 2578 0d78     ver. ret = 0x%x.
  a33e98:	000a 0000 555b 4750 205d 7075 5f67 7270     ....[UPG] upg_pr
  a33ea8:	636f 7365 5f73 7075 6164 6574 695f 616d     ocess_update_ima
  a33eb8:	6567 745f 7361 736b 6620 6961 2c6c 7220     ge_tasks fail, r
  a33ec8:	7465 3d20 3020 2578 0d78 000a 555b 4750     et = 0x%x...[UPG
  a33ed8:	205d 7061 2070 6973 657a 6920 2073 6f6e     ] app size is no
  a33ee8:	2074 6e65 756f 6867 2021 7061 5f70 6973     t enough! app_si
  a33ef8:	657a 3d20 3020 2578 2c78 6420 6365 6d6f     ze = 0x%x, decom
  a33f08:	7270 7365 5f73 656c 206e 203d 7830 7825     press_len = 0x%x
  a33f18:	0a0d 0000 555b 4750 205d 7075 5f67 7a6c     ....[UPG] upg_lz
  a33f28:	616d 645f 6365 646f 2065 6166 6c69 7220     ma_decode fail r
  a33f38:	7465 3d20 3020 2578 0d78 000a 0dba 00a3     et = 0x%x.......
  a33f48:	0de8 00a3 0dfc 00a3 0e42 00a3 0ea0 00a3     ........B.......
  a33f58:	0ea4 00a3 0ee2 00a3 0ffa 00a3               ............

00a33f64 <g_itoaLowerDigits>:
  a33f64:	3130 3332 3534 3736 3938 6261 6463 6665     0123456789abcdef
  a33f74:	0078 0000                                   x...

00a33f78 <g_itoaUpperDigits>:
  a33f78:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
  a33f88:	0058 0000                                   X...

00a33f8c <stateTable.1749>:
	...
  a33fac:	0006 0600 0100 0000 0000 0603 0600 0002     ................
  a33fbc:	0504 0505 0505 0505 0505 0000 0000 0000     ................
  a33fcc:	0000 0800 0800 0808 0700 0000 0007 0007     ................
  a33fdc:	0000 0800 0000 0000 0008 0007 0000 0000     ................
  a33fec:	0000 0800 0808 0808 0807 0007 0007 0800     ................
  a33ffc:	0708 0800 0807 0700 0008 0007 0000 0000     ................
	...
  a3408c:	0800 0808 0808 0008 0100 0800 0808 0808     ................
  a3409c:	0001 0400 0404 0808 0008 0000 0303 0508     ................
  a340ac:	0808 0000 0200 0302 0505 0008 0000 0303     ................
  a340bc:	0503 0805 0000 0200 0202 0808 0008 0000     ................
  a340cc:	0606 0606 0606 0000 0700 0707 0707 0007     ................
  a340dc:	0000 0000                                   ....
