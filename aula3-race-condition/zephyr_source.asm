
build/zephyr/zephyr.elf:     file format elf32-littlearm


Disassembly of section rom_start:

00000000 <_vector_table>:
	IF_ENABLED(CONFIG_SYS_HEAP_SANITIZER_HOOKS, (heap_sanitizer_on_alloc(heap, mem, bytes)));
	return mem;
}

static bool inplace_realloc(struct sys_heap *heap, void *ptr, size_t bytes)
{
   0:	00 0a 00 20 85 11 00 00 25 63 00 00 71 11 00 00     ... ....%c..q...
	...
{
	size_t chunks = (bytes / CHUNK_UNIT) + (extra / CHUNK_UNIT);
	size_t oddments = ((bytes % CHUNK_UNIT) + (extra % CHUNK_UNIT) +
			   chunk_header_bytes(h) + CHUNK_UNIT - 1U) / CHUNK_UNIT;

	return (chunksz_t)min(chunks + oddments + CHUNK_TRAILER_SIZE, h->end_chunk);
  2c:	bd 11 00 00 00 00 00 00 00 00 00 00 51 13 00 00     ............Q...
__STATIC_FORCEINLINE void __enable_irq(void)
{
  #if defined __aarch64__
    __ASM volatile ("msr daifclr, #2" : : : "memory");
  #else
    __ASM volatile ("cpsie i" : : : "memory");
  3c:	09 1a 00 00                                         ....

00000040 <_irq_vector_table>:
	if (SYS_HEAP_HARDENING_FULL) {
		verify_chunk_canary(h, c, ptr);
	}
	if (SYS_HEAP_HARDENING_BASIC && !chunk_used(h, c)) {
		LOG_ERR("heap corruption (not in use?) at %p", ptr);
		k_panic();
  40:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
	}
	if (SYS_HEAP_HARDENING_BASIC &&
  50:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
	if (SYS_HEAP_HARDENING_EXTREME && !z_heap_full_check(h)) {
		LOG_ERR("heap validation failed");
		k_panic();
	}

	if (chunk_size(h, c) == chunks_need) {
  60:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
		return ((uint16_t *)cmem)[f];
  70:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
#endif

		return true;
	}

	return false;
  80:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
			((uint16_t *)cmem)[SIZE_AND_USED] |= 1U;
  90:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
	return c + chunk_size(h, c);
  a0:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...
		free_list_add(h, suffix);
  b0:	3d 14 00 00 3d 14 00 00 3d 14 00 00 3d 14 00 00     =...=...=...=...

000000c0 <_vector_end>:
	...

00000400 <__kinetis_flash_config>:
 400:	ff ff ff ff ff ff ff ff ff ff ff ff fe 3b ff ff     .............;..

Disassembly of section text:

00000410 <__udivsi3>:
     410:	2900      	cmp	r1, #0
     412:	d034      	beq.n	47e <.udivsi3_skip_div0_test+0x6a>

00000414 <.udivsi3_skip_div0_test>:
     414:	2301      	movs	r3, #1
     416:	2200      	movs	r2, #0
     418:	b410      	push	{r4}
     41a:	4288      	cmp	r0, r1
     41c:	d32c      	bcc.n	478 <.udivsi3_skip_div0_test+0x64>
     41e:	2401      	movs	r4, #1
     420:	0724      	lsls	r4, r4, #28
     422:	42a1      	cmp	r1, r4
     424:	d204      	bcs.n	430 <.udivsi3_skip_div0_test+0x1c>
     426:	4281      	cmp	r1, r0
     428:	d202      	bcs.n	430 <.udivsi3_skip_div0_test+0x1c>
     42a:	0109      	lsls	r1, r1, #4
     42c:	011b      	lsls	r3, r3, #4
     42e:	e7f8      	b.n	422 <.udivsi3_skip_div0_test+0xe>
     430:	00e4      	lsls	r4, r4, #3
     432:	42a1      	cmp	r1, r4
     434:	d204      	bcs.n	440 <.udivsi3_skip_div0_test+0x2c>
     436:	4281      	cmp	r1, r0
     438:	d202      	bcs.n	440 <.udivsi3_skip_div0_test+0x2c>
     43a:	0049      	lsls	r1, r1, #1
     43c:	005b      	lsls	r3, r3, #1
     43e:	e7f8      	b.n	432 <.udivsi3_skip_div0_test+0x1e>
     440:	4288      	cmp	r0, r1
     442:	d301      	bcc.n	448 <.udivsi3_skip_div0_test+0x34>
     444:	1a40      	subs	r0, r0, r1
     446:	431a      	orrs	r2, r3
     448:	084c      	lsrs	r4, r1, #1
     44a:	42a0      	cmp	r0, r4
     44c:	d302      	bcc.n	454 <.udivsi3_skip_div0_test+0x40>
     44e:	1b00      	subs	r0, r0, r4
     450:	085c      	lsrs	r4, r3, #1
     452:	4322      	orrs	r2, r4
     454:	088c      	lsrs	r4, r1, #2
     456:	42a0      	cmp	r0, r4
     458:	d302      	bcc.n	460 <.udivsi3_skip_div0_test+0x4c>
     45a:	1b00      	subs	r0, r0, r4
     45c:	089c      	lsrs	r4, r3, #2
     45e:	4322      	orrs	r2, r4
     460:	08cc      	lsrs	r4, r1, #3
     462:	42a0      	cmp	r0, r4
     464:	d302      	bcc.n	46c <.udivsi3_skip_div0_test+0x58>
     466:	1b00      	subs	r0, r0, r4
     468:	08dc      	lsrs	r4, r3, #3
     46a:	4322      	orrs	r2, r4
     46c:	2800      	cmp	r0, #0
     46e:	d003      	beq.n	478 <.udivsi3_skip_div0_test+0x64>
     470:	091b      	lsrs	r3, r3, #4
     472:	d001      	beq.n	478 <.udivsi3_skip_div0_test+0x64>
     474:	0909      	lsrs	r1, r1, #4
     476:	e7e3      	b.n	440 <.udivsi3_skip_div0_test+0x2c>
     478:	0010      	movs	r0, r2
     47a:	bc10      	pop	{r4}
     47c:	4770      	bx	lr
     47e:	b501      	push	{r0, lr}
     480:	2000      	movs	r0, #0
     482:	f000 f85f 	bl	544 <__aeabi_idiv0>
     486:	bd02      	pop	{r1, pc}

00000488 <__aeabi_uidivmod>:
     488:	2900      	cmp	r1, #0
     48a:	d0f8      	beq.n	47e <.udivsi3_skip_div0_test+0x6a>
     48c:	b503      	push	{r0, r1, lr}
     48e:	f7ff ffc1 	bl	414 <.udivsi3_skip_div0_test>
     492:	bc0e      	pop	{r1, r2, r3}
     494:	4342      	muls	r2, r0
     496:	1a89      	subs	r1, r1, r2
     498:	4718      	bx	r3
     49a:	46c0      	nop			@ (mov r8, r8)

0000049c <__divsi3>:
     49c:	2900      	cmp	r1, #0
     49e:	d041      	beq.n	524 <.divsi3_skip_div0_test+0x84>

000004a0 <.divsi3_skip_div0_test>:
     4a0:	b410      	push	{r4}
     4a2:	0004      	movs	r4, r0
     4a4:	404c      	eors	r4, r1
     4a6:	46a4      	mov	ip, r4
     4a8:	2301      	movs	r3, #1
     4aa:	2200      	movs	r2, #0
     4ac:	2900      	cmp	r1, #0
     4ae:	d500      	bpl.n	4b2 <.divsi3_skip_div0_test+0x12>
     4b0:	4249      	negs	r1, r1
     4b2:	2800      	cmp	r0, #0
     4b4:	d500      	bpl.n	4b8 <.divsi3_skip_div0_test+0x18>
     4b6:	4240      	negs	r0, r0
     4b8:	4288      	cmp	r0, r1
     4ba:	d32c      	bcc.n	516 <.divsi3_skip_div0_test+0x76>
     4bc:	2401      	movs	r4, #1
     4be:	0724      	lsls	r4, r4, #28
     4c0:	42a1      	cmp	r1, r4
     4c2:	d204      	bcs.n	4ce <.divsi3_skip_div0_test+0x2e>
     4c4:	4281      	cmp	r1, r0
     4c6:	d202      	bcs.n	4ce <.divsi3_skip_div0_test+0x2e>
     4c8:	0109      	lsls	r1, r1, #4
     4ca:	011b      	lsls	r3, r3, #4
     4cc:	e7f8      	b.n	4c0 <.divsi3_skip_div0_test+0x20>
     4ce:	00e4      	lsls	r4, r4, #3
     4d0:	42a1      	cmp	r1, r4
     4d2:	d204      	bcs.n	4de <.divsi3_skip_div0_test+0x3e>
     4d4:	4281      	cmp	r1, r0
     4d6:	d202      	bcs.n	4de <.divsi3_skip_div0_test+0x3e>
     4d8:	0049      	lsls	r1, r1, #1
     4da:	005b      	lsls	r3, r3, #1
     4dc:	e7f8      	b.n	4d0 <.divsi3_skip_div0_test+0x30>
     4de:	4288      	cmp	r0, r1
     4e0:	d301      	bcc.n	4e6 <.divsi3_skip_div0_test+0x46>
     4e2:	1a40      	subs	r0, r0, r1
     4e4:	431a      	orrs	r2, r3
     4e6:	084c      	lsrs	r4, r1, #1
     4e8:	42a0      	cmp	r0, r4
     4ea:	d302      	bcc.n	4f2 <.divsi3_skip_div0_test+0x52>
     4ec:	1b00      	subs	r0, r0, r4
     4ee:	085c      	lsrs	r4, r3, #1
     4f0:	4322      	orrs	r2, r4
     4f2:	088c      	lsrs	r4, r1, #2
     4f4:	42a0      	cmp	r0, r4
     4f6:	d302      	bcc.n	4fe <.divsi3_skip_div0_test+0x5e>
     4f8:	1b00      	subs	r0, r0, r4
     4fa:	089c      	lsrs	r4, r3, #2
     4fc:	4322      	orrs	r2, r4
     4fe:	08cc      	lsrs	r4, r1, #3
     500:	42a0      	cmp	r0, r4
     502:	d302      	bcc.n	50a <.divsi3_skip_div0_test+0x6a>
     504:	1b00      	subs	r0, r0, r4
     506:	08dc      	lsrs	r4, r3, #3
     508:	4322      	orrs	r2, r4
     50a:	2800      	cmp	r0, #0
     50c:	d003      	beq.n	516 <.divsi3_skip_div0_test+0x76>
     50e:	091b      	lsrs	r3, r3, #4
     510:	d001      	beq.n	516 <.divsi3_skip_div0_test+0x76>
     512:	0909      	lsrs	r1, r1, #4
     514:	e7e3      	b.n	4de <.divsi3_skip_div0_test+0x3e>
     516:	0010      	movs	r0, r2
     518:	4664      	mov	r4, ip
     51a:	2c00      	cmp	r4, #0
     51c:	d500      	bpl.n	520 <.divsi3_skip_div0_test+0x80>
     51e:	4240      	negs	r0, r0
     520:	bc10      	pop	{r4}
     522:	4770      	bx	lr
     524:	b501      	push	{r0, lr}
     526:	2000      	movs	r0, #0
     528:	f000 f80c 	bl	544 <__aeabi_idiv0>
     52c:	bd02      	pop	{r1, pc}
     52e:	46c0      	nop			@ (mov r8, r8)

00000530 <__aeabi_idivmod>:
     530:	2900      	cmp	r1, #0
     532:	d0f7      	beq.n	524 <.divsi3_skip_div0_test+0x84>
     534:	b503      	push	{r0, r1, lr}
     536:	f7ff ffb3 	bl	4a0 <.divsi3_skip_div0_test>
     53a:	bc0e      	pop	{r1, r2, r3}
     53c:	4342      	muls	r2, r0
     53e:	1a89      	subs	r1, r1, r2
     540:	4718      	bx	r3
     542:	46c0      	nop			@ (mov r8, r8)

00000544 <__aeabi_idiv0>:
     544:	4770      	bx	lr
     546:	46c0      	nop			@ (mov r8, r8)

00000548 <__clzsi2>:
     548:	211c      	movs	r1, #28
     54a:	2301      	movs	r3, #1
     54c:	041b      	lsls	r3, r3, #16
     54e:	4298      	cmp	r0, r3
     550:	d301      	bcc.n	556 <__clzsi2+0xe>
     552:	0c00      	lsrs	r0, r0, #16
     554:	3910      	subs	r1, #16
     556:	0a1b      	lsrs	r3, r3, #8
     558:	4298      	cmp	r0, r3
     55a:	d301      	bcc.n	560 <__clzsi2+0x18>
     55c:	0a00      	lsrs	r0, r0, #8
     55e:	3908      	subs	r1, #8
     560:	091b      	lsrs	r3, r3, #4
     562:	4298      	cmp	r0, r3
     564:	d301      	bcc.n	56a <__clzsi2+0x22>
     566:	0900      	lsrs	r0, r0, #4
     568:	3904      	subs	r1, #4
     56a:	a202      	add	r2, pc, #8	@ (adr r2, 574 <__clzsi2+0x2c>)
     56c:	5c10      	ldrb	r0, [r2, r0]
     56e:	1840      	adds	r0, r0, r1
     570:	4770      	bx	lr
     572:	46c0      	nop			@ (mov r8, r8)
     574:	02020304 	.word	0x02020304
     578:	01010101 	.word	0x01010101
	...

00000584 <__clzdi2>:
     584:	b510      	push	{r4, lr}
     586:	2900      	cmp	r1, #0
     588:	d103      	bne.n	592 <__clzdi2+0xe>
     58a:	f7ff ffdd 	bl	548 <__clzsi2>
     58e:	3020      	adds	r0, #32
     590:	e002      	b.n	598 <__clzdi2+0x14>
     592:	0008      	movs	r0, r1
     594:	f7ff ffd8 	bl	548 <__clzsi2>
     598:	bd10      	pop	{r4, pc}
     59a:	46c0      	nop			@ (mov r8, r8)

0000059c <__aeabi_uldivmod>:
     59c:	2b00      	cmp	r3, #0
     59e:	d111      	bne.n	5c4 <__aeabi_uldivmod+0x28>
     5a0:	2a00      	cmp	r2, #0
     5a2:	d10f      	bne.n	5c4 <__aeabi_uldivmod+0x28>
     5a4:	2900      	cmp	r1, #0
     5a6:	d100      	bne.n	5aa <__aeabi_uldivmod+0xe>
     5a8:	2800      	cmp	r0, #0
     5aa:	d002      	beq.n	5b2 <__aeabi_uldivmod+0x16>
     5ac:	2100      	movs	r1, #0
     5ae:	43c9      	mvns	r1, r1
     5b0:	0008      	movs	r0, r1
     5b2:	b407      	push	{r0, r1, r2}
     5b4:	4802      	ldr	r0, [pc, #8]	@ (5c0 <__aeabi_uldivmod+0x24>)
     5b6:	a102      	add	r1, pc, #8	@ (adr r1, 5c0 <__aeabi_uldivmod+0x24>)
     5b8:	1840      	adds	r0, r0, r1
     5ba:	9002      	str	r0, [sp, #8]
     5bc:	bd03      	pop	{r0, r1, pc}
     5be:	46c0      	nop			@ (mov r8, r8)
     5c0:	ffffff85 	.word	0xffffff85
     5c4:	b403      	push	{r0, r1}
     5c6:	4668      	mov	r0, sp
     5c8:	b501      	push	{r0, lr}
     5ca:	9802      	ldr	r0, [sp, #8]
     5cc:	f000 faf0 	bl	bb0 <__udivmoddi4>
     5d0:	9b01      	ldr	r3, [sp, #4]
     5d2:	469e      	mov	lr, r3
     5d4:	b002      	add	sp, #8
     5d6:	bc0c      	pop	{r2, r3}
     5d8:	4770      	bx	lr
     5da:	46c0      	nop			@ (mov r8, r8)

000005dc <__aeabi_ddiv>:
     5dc:	b5f0      	push	{r4, r5, r6, r7, lr}
     5de:	b089      	sub	sp, #36	@ 0x24
     5e0:	9200      	str	r2, [sp, #0]
     5e2:	9301      	str	r3, [sp, #4]
     5e4:	030d      	lsls	r5, r1, #12
     5e6:	004b      	lsls	r3, r1, #1
     5e8:	0fca      	lsrs	r2, r1, #31
     5ea:	0006      	movs	r6, r0
     5ec:	0004      	movs	r4, r0
     5ee:	0b2d      	lsrs	r5, r5, #12
     5f0:	0d5b      	lsrs	r3, r3, #21
     5f2:	9203      	str	r2, [sp, #12]
     5f4:	d045      	beq.n	682 <__aeabi_ddiv+0xa6>
     5f6:	4a64      	ldr	r2, [pc, #400]	@ (788 <__aeabi_ddiv+0x1ac>)
     5f8:	4293      	cmp	r3, r2
     5fa:	d06b      	beq.n	6d4 <__aeabi_ddiv+0xf8>
     5fc:	0f42      	lsrs	r2, r0, #29
     5fe:	00ed      	lsls	r5, r5, #3
     600:	4315      	orrs	r5, r2
     602:	2280      	movs	r2, #128	@ 0x80
     604:	0412      	lsls	r2, r2, #16
     606:	432a      	orrs	r2, r5
     608:	9202      	str	r2, [sp, #8]
     60a:	4a60      	ldr	r2, [pc, #384]	@ (78c <__aeabi_ddiv+0x1b0>)
     60c:	00c4      	lsls	r4, r0, #3
     60e:	189f      	adds	r7, r3, r2
     610:	2600      	movs	r6, #0
     612:	9b01      	ldr	r3, [sp, #4]
     614:	9a01      	ldr	r2, [sp, #4]
     616:	031d      	lsls	r5, r3, #12
     618:	0fd2      	lsrs	r2, r2, #31
     61a:	005b      	lsls	r3, r3, #1
     61c:	9800      	ldr	r0, [sp, #0]
     61e:	0b2d      	lsrs	r5, r5, #12
     620:	0d5b      	lsrs	r3, r3, #21
     622:	9206      	str	r2, [sp, #24]
     624:	d066      	beq.n	6f4 <__aeabi_ddiv+0x118>
     626:	4a58      	ldr	r2, [pc, #352]	@ (788 <__aeabi_ddiv+0x1ac>)
     628:	4293      	cmp	r3, r2
     62a:	d100      	bne.n	62e <__aeabi_ddiv+0x52>
     62c:	e089      	b.n	742 <__aeabi_ddiv+0x166>
     62e:	00ed      	lsls	r5, r5, #3
     630:	4956      	ldr	r1, [pc, #344]	@ (78c <__aeabi_ddiv+0x1b0>)
     632:	0f42      	lsrs	r2, r0, #29
     634:	432a      	orrs	r2, r5
     636:	2580      	movs	r5, #128	@ 0x80
     638:	185b      	adds	r3, r3, r1
     63a:	469c      	mov	ip, r3
     63c:	042d      	lsls	r5, r5, #16
     63e:	4315      	orrs	r5, r2
     640:	00c2      	lsls	r2, r0, #3
     642:	2100      	movs	r1, #0
     644:	9b06      	ldr	r3, [sp, #24]
     646:	9803      	ldr	r0, [sp, #12]
     648:	4058      	eors	r0, r3
     64a:	b2c3      	uxtb	r3, r0
     64c:	9305      	str	r3, [sp, #20]
     64e:	4663      	mov	r3, ip
     650:	00b0      	lsls	r0, r6, #2
     652:	4308      	orrs	r0, r1
     654:	1afb      	subs	r3, r7, r3
     656:	3801      	subs	r0, #1
     658:	9304      	str	r3, [sp, #16]
     65a:	280e      	cmp	r0, #14
     65c:	d900      	bls.n	660 <__aeabi_ddiv+0x84>
     65e:	e099      	b.n	794 <__aeabi_ddiv+0x1b8>
     660:	f000 fa62 	bl	b28 <__gnu_thumb1_case_uhi>
     664:	022d008e 	.word	0x022d008e
     668:	022d01d3 	.word	0x022d01d3
     66c:	022d021e 	.word	0x022d021e
     670:	008e01d3 	.word	0x008e01d3
     674:	021e008e 	.word	0x021e008e
     678:	007e01d3 	.word	0x007e01d3
     67c:	007e007e 	.word	0x007e007e
     680:	01c5      	.short	0x01c5
     682:	002b      	movs	r3, r5
     684:	4303      	orrs	r3, r0
     686:	9302      	str	r3, [sp, #8]
     688:	d02c      	beq.n	6e4 <__aeabi_ddiv+0x108>
     68a:	2d00      	cmp	r5, #0
     68c:	d015      	beq.n	6ba <__aeabi_ddiv+0xde>
     68e:	0028      	movs	r0, r5
     690:	f7ff ff5a 	bl	548 <__clzsi2>
     694:	0001      	movs	r1, r0
     696:	0003      	movs	r3, r0
     698:	390b      	subs	r1, #11
     69a:	221d      	movs	r2, #29
     69c:	1a52      	subs	r2, r2, r1
     69e:	0031      	movs	r1, r6
     6a0:	0018      	movs	r0, r3
     6a2:	40d1      	lsrs	r1, r2
     6a4:	3808      	subs	r0, #8
     6a6:	4085      	lsls	r5, r0
     6a8:	000a      	movs	r2, r1
     6aa:	432a      	orrs	r2, r5
     6ac:	0035      	movs	r5, r6
     6ae:	4085      	lsls	r5, r0
     6b0:	9202      	str	r2, [sp, #8]
     6b2:	4f37      	ldr	r7, [pc, #220]	@ (790 <__aeabi_ddiv+0x1b4>)
     6b4:	002c      	movs	r4, r5
     6b6:	1aff      	subs	r7, r7, r3
     6b8:	e7aa      	b.n	610 <__aeabi_ddiv+0x34>
     6ba:	f7ff ff45 	bl	548 <__clzsi2>
     6be:	0001      	movs	r1, r0
     6c0:	0003      	movs	r3, r0
     6c2:	3115      	adds	r1, #21
     6c4:	3320      	adds	r3, #32
     6c6:	291c      	cmp	r1, #28
     6c8:	dde7      	ble.n	69a <__aeabi_ddiv+0xbe>
     6ca:	0032      	movs	r2, r6
     6cc:	3808      	subs	r0, #8
     6ce:	4082      	lsls	r2, r0
     6d0:	9202      	str	r2, [sp, #8]
     6d2:	e7ee      	b.n	6b2 <__aeabi_ddiv+0xd6>
     6d4:	0002      	movs	r2, r0
     6d6:	432a      	orrs	r2, r5
     6d8:	9202      	str	r2, [sp, #8]
     6da:	d107      	bne.n	6ec <__aeabi_ddiv+0x110>
     6dc:	0014      	movs	r4, r2
     6de:	001f      	movs	r7, r3
     6e0:	2602      	movs	r6, #2
     6e2:	e796      	b.n	612 <__aeabi_ddiv+0x36>
     6e4:	9c02      	ldr	r4, [sp, #8]
     6e6:	2601      	movs	r6, #1
     6e8:	0027      	movs	r7, r4
     6ea:	e792      	b.n	612 <__aeabi_ddiv+0x36>
     6ec:	001f      	movs	r7, r3
     6ee:	2603      	movs	r6, #3
     6f0:	9502      	str	r5, [sp, #8]
     6f2:	e78e      	b.n	612 <__aeabi_ddiv+0x36>
     6f4:	9a00      	ldr	r2, [sp, #0]
     6f6:	432a      	orrs	r2, r5
     6f8:	d02a      	beq.n	750 <__aeabi_ddiv+0x174>
     6fa:	2d00      	cmp	r5, #0
     6fc:	d015      	beq.n	72a <__aeabi_ddiv+0x14e>
     6fe:	0028      	movs	r0, r5
     700:	f7ff ff22 	bl	548 <__clzsi2>
     704:	0001      	movs	r1, r0
     706:	0002      	movs	r2, r0
     708:	390b      	subs	r1, #11
     70a:	231d      	movs	r3, #29
     70c:	0010      	movs	r0, r2
     70e:	1a5b      	subs	r3, r3, r1
     710:	9900      	ldr	r1, [sp, #0]
     712:	3808      	subs	r0, #8
     714:	4085      	lsls	r5, r0
     716:	40d9      	lsrs	r1, r3
     718:	4329      	orrs	r1, r5
     71a:	9d00      	ldr	r5, [sp, #0]
     71c:	4085      	lsls	r5, r0
     71e:	4b1c      	ldr	r3, [pc, #112]	@ (790 <__aeabi_ddiv+0x1b4>)
     720:	1a9b      	subs	r3, r3, r2
     722:	469c      	mov	ip, r3
     724:	002a      	movs	r2, r5
     726:	000d      	movs	r5, r1
     728:	e78b      	b.n	642 <__aeabi_ddiv+0x66>
     72a:	f7ff ff0d 	bl	548 <__clzsi2>
     72e:	0001      	movs	r1, r0
     730:	0002      	movs	r2, r0
     732:	3115      	adds	r1, #21
     734:	3220      	adds	r2, #32
     736:	291c      	cmp	r1, #28
     738:	dde7      	ble.n	70a <__aeabi_ddiv+0x12e>
     73a:	9900      	ldr	r1, [sp, #0]
     73c:	3808      	subs	r0, #8
     73e:	4081      	lsls	r1, r0
     740:	e7ed      	b.n	71e <__aeabi_ddiv+0x142>
     742:	9a00      	ldr	r2, [sp, #0]
     744:	432a      	orrs	r2, r5
     746:	d107      	bne.n	758 <__aeabi_ddiv+0x17c>
     748:	0015      	movs	r5, r2
     74a:	469c      	mov	ip, r3
     74c:	2102      	movs	r1, #2
     74e:	e779      	b.n	644 <__aeabi_ddiv+0x68>
     750:	0015      	movs	r5, r2
     752:	4694      	mov	ip, r2
     754:	2101      	movs	r1, #1
     756:	e775      	b.n	644 <__aeabi_ddiv+0x68>
     758:	0002      	movs	r2, r0
     75a:	469c      	mov	ip, r3
     75c:	2103      	movs	r1, #3
     75e:	e771      	b.n	644 <__aeabi_ddiv+0x68>
     760:	0031      	movs	r1, r6
     762:	9b03      	ldr	r3, [sp, #12]
     764:	9305      	str	r3, [sp, #20]
     766:	2902      	cmp	r1, #2
     768:	d100      	bne.n	76c <__aeabi_ddiv+0x190>
     76a:	e1ac      	b.n	ac6 <CONFIG_ISR_STACK_SIZE+0x2c6>
     76c:	2903      	cmp	r1, #3
     76e:	d100      	bne.n	772 <__aeabi_ddiv+0x196>
     770:	e1a2      	b.n	ab8 <CONFIG_ISR_STACK_SIZE+0x2b8>
     772:	2901      	cmp	r1, #1
     774:	d000      	beq.n	778 <__aeabi_ddiv+0x19c>
     776:	e101      	b.n	97c <CONFIG_ISR_STACK_SIZE+0x17c>
     778:	2400      	movs	r4, #0
     77a:	0023      	movs	r3, r4
     77c:	0022      	movs	r2, r4
     77e:	e126      	b.n	9ce <CONFIG_ISR_STACK_SIZE+0x1ce>
     780:	2300      	movs	r3, #0
     782:	001c      	movs	r4, r3
     784:	4a00      	ldr	r2, [pc, #0]	@ (788 <__aeabi_ddiv+0x1ac>)
     786:	e122      	b.n	9ce <CONFIG_ISR_STACK_SIZE+0x1ce>
     788:	000007ff 	.word	0x000007ff
     78c:	fffffc01 	.word	0xfffffc01
     790:	fffffc0d 	.word	0xfffffc0d
     794:	9b02      	ldr	r3, [sp, #8]
     796:	429d      	cmp	r5, r3
     798:	d304      	bcc.n	7a4 <__aeabi_ddiv+0x1c8>
     79a:	d000      	beq.n	79e <__aeabi_ddiv+0x1c2>
     79c:	e122      	b.n	9e4 <CONFIG_ISR_STACK_SIZE+0x1e4>
     79e:	42a2      	cmp	r2, r4
     7a0:	d900      	bls.n	7a4 <__aeabi_ddiv+0x1c8>
     7a2:	e11f      	b.n	9e4 <CONFIG_ISR_STACK_SIZE+0x1e4>
     7a4:	9b02      	ldr	r3, [sp, #8]
     7a6:	07e6      	lsls	r6, r4, #31
     7a8:	07d9      	lsls	r1, r3, #31
     7aa:	0863      	lsrs	r3, r4, #1
     7ac:	4319      	orrs	r1, r3
     7ae:	000c      	movs	r4, r1
     7b0:	9b02      	ldr	r3, [sp, #8]
     7b2:	085b      	lsrs	r3, r3, #1
     7b4:	9302      	str	r3, [sp, #8]
     7b6:	0213      	lsls	r3, r2, #8
     7b8:	022d      	lsls	r5, r5, #8
     7ba:	0e17      	lsrs	r7, r2, #24
     7bc:	9300      	str	r3, [sp, #0]
     7be:	0c2b      	lsrs	r3, r5, #16
     7c0:	432f      	orrs	r7, r5
     7c2:	9306      	str	r3, [sp, #24]
     7c4:	9906      	ldr	r1, [sp, #24]
     7c6:	b2bb      	uxth	r3, r7
     7c8:	9802      	ldr	r0, [sp, #8]
     7ca:	9303      	str	r3, [sp, #12]
     7cc:	f7ff fe5c 	bl	488 <__aeabi_uidivmod>
     7d0:	b2bb      	uxth	r3, r7
     7d2:	4343      	muls	r3, r0
     7d4:	040a      	lsls	r2, r1, #16
     7d6:	0c21      	lsrs	r1, r4, #16
     7d8:	0005      	movs	r5, r0
     7da:	4311      	orrs	r1, r2
     7dc:	428b      	cmp	r3, r1
     7de:	d907      	bls.n	7f0 <__aeabi_ddiv+0x214>
     7e0:	19c9      	adds	r1, r1, r7
     7e2:	3d01      	subs	r5, #1
     7e4:	428f      	cmp	r7, r1
     7e6:	d803      	bhi.n	7f0 <__aeabi_ddiv+0x214>
     7e8:	428b      	cmp	r3, r1
     7ea:	d901      	bls.n	7f0 <__aeabi_ddiv+0x214>
     7ec:	1e85      	subs	r5, r0, #2
     7ee:	19c9      	adds	r1, r1, r7
     7f0:	1ac8      	subs	r0, r1, r3
     7f2:	9906      	ldr	r1, [sp, #24]
     7f4:	f7ff fe48 	bl	488 <__aeabi_uidivmod>
     7f8:	b2ba      	uxth	r2, r7
     7fa:	4342      	muls	r2, r0
     7fc:	0409      	lsls	r1, r1, #16
     7fe:	b2a4      	uxth	r4, r4
     800:	0003      	movs	r3, r0
     802:	430c      	orrs	r4, r1
     804:	42a2      	cmp	r2, r4
     806:	d907      	bls.n	818 <CONFIG_ISR_STACK_SIZE+0x18>
     808:	19e4      	adds	r4, r4, r7
     80a:	3b01      	subs	r3, #1
     80c:	42a7      	cmp	r7, r4
     80e:	d803      	bhi.n	818 <CONFIG_ISR_STACK_SIZE+0x18>
     810:	42a2      	cmp	r2, r4
     812:	d901      	bls.n	818 <CONFIG_ISR_STACK_SIZE+0x18>
     814:	1e83      	subs	r3, r0, #2
     816:	19e4      	adds	r4, r4, r7
     818:	042d      	lsls	r5, r5, #16
     81a:	431d      	orrs	r5, r3
     81c:	1aa4      	subs	r4, r4, r2
     81e:	9b00      	ldr	r3, [sp, #0]
     820:	9a00      	ldr	r2, [sp, #0]
     822:	0c1b      	lsrs	r3, r3, #16
     824:	0412      	lsls	r2, r2, #16
     826:	9303      	str	r3, [sp, #12]
     828:	0c12      	lsrs	r2, r2, #16
     82a:	b2ab      	uxth	r3, r5
     82c:	9207      	str	r2, [sp, #28]
     82e:	435a      	muls	r2, r3
     830:	9807      	ldr	r0, [sp, #28]
     832:	9202      	str	r2, [sp, #8]
     834:	9a03      	ldr	r2, [sp, #12]
     836:	0c29      	lsrs	r1, r5, #16
     838:	4348      	muls	r0, r1
     83a:	4353      	muls	r3, r2
     83c:	4351      	muls	r1, r2
     83e:	9a02      	ldr	r2, [sp, #8]
     840:	181b      	adds	r3, r3, r0
     842:	0c12      	lsrs	r2, r2, #16
     844:	4694      	mov	ip, r2
     846:	4463      	add	r3, ip
     848:	4298      	cmp	r0, r3
     84a:	d902      	bls.n	852 <CONFIG_ISR_STACK_SIZE+0x52>
     84c:	2280      	movs	r2, #128	@ 0x80
     84e:	0252      	lsls	r2, r2, #9
     850:	1889      	adds	r1, r1, r2
     852:	9a02      	ldr	r2, [sp, #8]
     854:	0c18      	lsrs	r0, r3, #16
     856:	0412      	lsls	r2, r2, #16
     858:	041b      	lsls	r3, r3, #16
     85a:	0c12      	lsrs	r2, r2, #16
     85c:	1840      	adds	r0, r0, r1
     85e:	189a      	adds	r2, r3, r2
     860:	4284      	cmp	r4, r0
     862:	d303      	bcc.n	86c <CONFIG_ISR_STACK_SIZE+0x6c>
     864:	9502      	str	r5, [sp, #8]
     866:	d11e      	bne.n	8a6 <CONFIG_ISR_STACK_SIZE+0xa6>
     868:	4296      	cmp	r6, r2
     86a:	d21c      	bcs.n	8a6 <CONFIG_ISR_STACK_SIZE+0xa6>
     86c:	1e6b      	subs	r3, r5, #1
     86e:	9302      	str	r3, [sp, #8]
     870:	9b00      	ldr	r3, [sp, #0]
     872:	18f6      	adds	r6, r6, r3
     874:	429e      	cmp	r6, r3
     876:	419b      	sbcs	r3, r3
     878:	425b      	negs	r3, r3
     87a:	19db      	adds	r3, r3, r7
     87c:	18e4      	adds	r4, r4, r3
     87e:	42a7      	cmp	r7, r4
     880:	d303      	bcc.n	88a <CONFIG_ISR_STACK_SIZE+0x8a>
     882:	d110      	bne.n	8a6 <CONFIG_ISR_STACK_SIZE+0xa6>
     884:	9b00      	ldr	r3, [sp, #0]
     886:	42b3      	cmp	r3, r6
     888:	d80d      	bhi.n	8a6 <CONFIG_ISR_STACK_SIZE+0xa6>
     88a:	42a0      	cmp	r0, r4
     88c:	d802      	bhi.n	894 <CONFIG_ISR_STACK_SIZE+0x94>
     88e:	d10a      	bne.n	8a6 <CONFIG_ISR_STACK_SIZE+0xa6>
     890:	42b2      	cmp	r2, r6
     892:	d908      	bls.n	8a6 <CONFIG_ISR_STACK_SIZE+0xa6>
     894:	1eab      	subs	r3, r5, #2
     896:	9302      	str	r3, [sp, #8]
     898:	9b00      	ldr	r3, [sp, #0]
     89a:	18f6      	adds	r6, r6, r3
     89c:	429e      	cmp	r6, r3
     89e:	419b      	sbcs	r3, r3
     8a0:	425b      	negs	r3, r3
     8a2:	19db      	adds	r3, r3, r7
     8a4:	18e4      	adds	r4, r4, r3
     8a6:	1ab5      	subs	r5, r6, r2
     8a8:	42ae      	cmp	r6, r5
     8aa:	41b6      	sbcs	r6, r6
     8ac:	1a20      	subs	r0, r4, r0
     8ae:	4276      	negs	r6, r6
     8b0:	1b80      	subs	r0, r0, r6
     8b2:	4287      	cmp	r7, r0
     8b4:	d100      	bne.n	8b8 <CONFIG_ISR_STACK_SIZE+0xb8>
     8b6:	e0ad      	b.n	a14 <CONFIG_ISR_STACK_SIZE+0x214>
     8b8:	9906      	ldr	r1, [sp, #24]
     8ba:	f7ff fde5 	bl	488 <__aeabi_uidivmod>
     8be:	b2bb      	uxth	r3, r7
     8c0:	4343      	muls	r3, r0
     8c2:	040a      	lsls	r2, r1, #16
     8c4:	0c29      	lsrs	r1, r5, #16
     8c6:	0004      	movs	r4, r0
     8c8:	4311      	orrs	r1, r2
     8ca:	428b      	cmp	r3, r1
     8cc:	d907      	bls.n	8de <CONFIG_ISR_STACK_SIZE+0xde>
     8ce:	19c9      	adds	r1, r1, r7
     8d0:	3c01      	subs	r4, #1
     8d2:	428f      	cmp	r7, r1
     8d4:	d803      	bhi.n	8de <CONFIG_ISR_STACK_SIZE+0xde>
     8d6:	428b      	cmp	r3, r1
     8d8:	d901      	bls.n	8de <CONFIG_ISR_STACK_SIZE+0xde>
     8da:	1e84      	subs	r4, r0, #2
     8dc:	19c9      	adds	r1, r1, r7
     8de:	1ac8      	subs	r0, r1, r3
     8e0:	9906      	ldr	r1, [sp, #24]
     8e2:	f7ff fdd1 	bl	488 <__aeabi_uidivmod>
     8e6:	b2bb      	uxth	r3, r7
     8e8:	4343      	muls	r3, r0
     8ea:	0409      	lsls	r1, r1, #16
     8ec:	b2ad      	uxth	r5, r5
     8ee:	0002      	movs	r2, r0
     8f0:	430d      	orrs	r5, r1
     8f2:	42ab      	cmp	r3, r5
     8f4:	d907      	bls.n	906 <CONFIG_ISR_STACK_SIZE+0x106>
     8f6:	19ed      	adds	r5, r5, r7
     8f8:	3a01      	subs	r2, #1
     8fa:	42af      	cmp	r7, r5
     8fc:	d803      	bhi.n	906 <CONFIG_ISR_STACK_SIZE+0x106>
     8fe:	42ab      	cmp	r3, r5
     900:	d901      	bls.n	906 <CONFIG_ISR_STACK_SIZE+0x106>
     902:	1e82      	subs	r2, r0, #2
     904:	19ed      	adds	r5, r5, r7
     906:	1aed      	subs	r5, r5, r3
     908:	0423      	lsls	r3, r4, #16
     90a:	9e03      	ldr	r6, [sp, #12]
     90c:	4313      	orrs	r3, r2
     90e:	9907      	ldr	r1, [sp, #28]
     910:	9807      	ldr	r0, [sp, #28]
     912:	0c1c      	lsrs	r4, r3, #16
     914:	b29a      	uxth	r2, r3
     916:	4351      	muls	r1, r2
     918:	4360      	muls	r0, r4
     91a:	4372      	muls	r2, r6
     91c:	4374      	muls	r4, r6
     91e:	1812      	adds	r2, r2, r0
     920:	0c0e      	lsrs	r6, r1, #16
     922:	18b2      	adds	r2, r6, r2
     924:	4290      	cmp	r0, r2
     926:	d902      	bls.n	92e <CONFIG_ISR_STACK_SIZE+0x12e>
     928:	2080      	movs	r0, #128	@ 0x80
     92a:	0240      	lsls	r0, r0, #9
     92c:	1824      	adds	r4, r4, r0
     92e:	0c10      	lsrs	r0, r2, #16
     930:	0409      	lsls	r1, r1, #16
     932:	0412      	lsls	r2, r2, #16
     934:	0c09      	lsrs	r1, r1, #16
     936:	1900      	adds	r0, r0, r4
     938:	1851      	adds	r1, r2, r1
     93a:	4285      	cmp	r5, r0
     93c:	d304      	bcc.n	948 <CONFIG_ISR_STACK_SIZE+0x148>
     93e:	001c      	movs	r4, r3
     940:	4285      	cmp	r5, r0
     942:	d119      	bne.n	978 <CONFIG_ISR_STACK_SIZE+0x178>
     944:	2900      	cmp	r1, #0
     946:	d019      	beq.n	97c <CONFIG_ISR_STACK_SIZE+0x17c>
     948:	197d      	adds	r5, r7, r5
     94a:	1e5c      	subs	r4, r3, #1
     94c:	42bd      	cmp	r5, r7
     94e:	d30e      	bcc.n	96e <CONFIG_ISR_STACK_SIZE+0x16e>
     950:	4285      	cmp	r5, r0
     952:	d303      	bcc.n	95c <CONFIG_ISR_STACK_SIZE+0x15c>
     954:	d110      	bne.n	978 <CONFIG_ISR_STACK_SIZE+0x178>
     956:	9a00      	ldr	r2, [sp, #0]
     958:	428a      	cmp	r2, r1
     95a:	d20a      	bcs.n	972 <CONFIG_ISR_STACK_SIZE+0x172>
     95c:	1e9c      	subs	r4, r3, #2
     95e:	9b00      	ldr	r3, [sp, #0]
     960:	005a      	lsls	r2, r3, #1
     962:	429a      	cmp	r2, r3
     964:	419b      	sbcs	r3, r3
     966:	425b      	negs	r3, r3
     968:	19db      	adds	r3, r3, r7
     96a:	18ed      	adds	r5, r5, r3
     96c:	9200      	str	r2, [sp, #0]
     96e:	4285      	cmp	r5, r0
     970:	d102      	bne.n	978 <CONFIG_ISR_STACK_SIZE+0x178>
     972:	9b00      	ldr	r3, [sp, #0]
     974:	4299      	cmp	r1, r3
     976:	d001      	beq.n	97c <CONFIG_ISR_STACK_SIZE+0x17c>
     978:	2301      	movs	r3, #1
     97a:	431c      	orrs	r4, r3
     97c:	9b04      	ldr	r3, [sp, #16]
     97e:	4a55      	ldr	r2, [pc, #340]	@ (ad4 <CONFIG_ISR_STACK_SIZE+0x2d4>)
     980:	189a      	adds	r2, r3, r2
     982:	2a00      	cmp	r2, #0
     984:	dd49      	ble.n	a1a <CONFIG_ISR_STACK_SIZE+0x21a>
     986:	0763      	lsls	r3, r4, #29
     988:	d00b      	beq.n	9a2 <CONFIG_ISR_STACK_SIZE+0x1a2>
     98a:	230f      	movs	r3, #15
     98c:	4023      	ands	r3, r4
     98e:	2b04      	cmp	r3, #4
     990:	d007      	beq.n	9a2 <CONFIG_ISR_STACK_SIZE+0x1a2>
     992:	1d23      	adds	r3, r4, #4
     994:	42a3      	cmp	r3, r4
     996:	41a4      	sbcs	r4, r4
     998:	9902      	ldr	r1, [sp, #8]
     99a:	4264      	negs	r4, r4
     99c:	1909      	adds	r1, r1, r4
     99e:	001c      	movs	r4, r3
     9a0:	9102      	str	r1, [sp, #8]
     9a2:	9b02      	ldr	r3, [sp, #8]
     9a4:	01db      	lsls	r3, r3, #7
     9a6:	d508      	bpl.n	9ba <CONFIG_ISR_STACK_SIZE+0x1ba>
     9a8:	4b4b      	ldr	r3, [pc, #300]	@ (ad8 <CONFIG_ISR_STACK_SIZE+0x2d8>)
     9aa:	9a02      	ldr	r2, [sp, #8]
     9ac:	401a      	ands	r2, r3
     9ae:	2380      	movs	r3, #128	@ 0x80
     9b0:	00db      	lsls	r3, r3, #3
     9b2:	469c      	mov	ip, r3
     9b4:	9202      	str	r2, [sp, #8]
     9b6:	9a04      	ldr	r2, [sp, #16]
     9b8:	4462      	add	r2, ip
     9ba:	4b48      	ldr	r3, [pc, #288]	@ (adc <CONFIG_ISR_STACK_SIZE+0x2dc>)
     9bc:	429a      	cmp	r2, r3
     9be:	dd00      	ble.n	9c2 <CONFIG_ISR_STACK_SIZE+0x1c2>
     9c0:	e081      	b.n	ac6 <CONFIG_ISR_STACK_SIZE+0x2c6>
     9c2:	9b02      	ldr	r3, [sp, #8]
     9c4:	08e4      	lsrs	r4, r4, #3
     9c6:	075b      	lsls	r3, r3, #29
     9c8:	431c      	orrs	r4, r3
     9ca:	9b02      	ldr	r3, [sp, #8]
     9cc:	08db      	lsrs	r3, r3, #3
     9ce:	031b      	lsls	r3, r3, #12
     9d0:	0512      	lsls	r2, r2, #20
     9d2:	0b1b      	lsrs	r3, r3, #12
     9d4:	4313      	orrs	r3, r2
     9d6:	9a05      	ldr	r2, [sp, #20]
     9d8:	0020      	movs	r0, r4
     9da:	07d2      	lsls	r2, r2, #31
     9dc:	4313      	orrs	r3, r2
     9de:	0019      	movs	r1, r3
     9e0:	b009      	add	sp, #36	@ 0x24
     9e2:	bdf0      	pop	{r4, r5, r6, r7, pc}
     9e4:	9b04      	ldr	r3, [sp, #16]
     9e6:	2600      	movs	r6, #0
     9e8:	3b01      	subs	r3, #1
     9ea:	9304      	str	r3, [sp, #16]
     9ec:	e6e3      	b.n	7b6 <__aeabi_ddiv+0x1da>
     9ee:	2380      	movs	r3, #128	@ 0x80
     9f0:	9902      	ldr	r1, [sp, #8]
     9f2:	031b      	lsls	r3, r3, #12
     9f4:	4219      	tst	r1, r3
     9f6:	d001      	beq.n	9fc <CONFIG_ISR_STACK_SIZE+0x1fc>
     9f8:	421d      	tst	r5, r3
     9fa:	d058      	beq.n	aae <CONFIG_ISR_STACK_SIZE+0x2ae>
     9fc:	2380      	movs	r3, #128	@ 0x80
     9fe:	9a02      	ldr	r2, [sp, #8]
     a00:	031b      	lsls	r3, r3, #12
     a02:	4313      	orrs	r3, r2
     a04:	9a03      	ldr	r2, [sp, #12]
     a06:	9205      	str	r2, [sp, #20]
     a08:	e6bc      	b.n	784 <__aeabi_ddiv+0x1a8>
     a0a:	9b06      	ldr	r3, [sp, #24]
     a0c:	0014      	movs	r4, r2
     a0e:	9305      	str	r3, [sp, #20]
     a10:	9502      	str	r5, [sp, #8]
     a12:	e6a8      	b.n	766 <__aeabi_ddiv+0x18a>
     a14:	2401      	movs	r4, #1
     a16:	4264      	negs	r4, r4
     a18:	e7b0      	b.n	97c <CONFIG_ISR_STACK_SIZE+0x17c>
     a1a:	2101      	movs	r1, #1
     a1c:	1a89      	subs	r1, r1, r2
     a1e:	2938      	cmp	r1, #56	@ 0x38
     a20:	dd00      	ble.n	a24 <CONFIG_ISR_STACK_SIZE+0x224>
     a22:	e6a9      	b.n	778 <__aeabi_ddiv+0x19c>
     a24:	291f      	cmp	r1, #31
     a26:	dc26      	bgt.n	a76 <CONFIG_ISR_STACK_SIZE+0x276>
     a28:	4a2d      	ldr	r2, [pc, #180]	@ (ae0 <CONFIG_ISR_STACK_SIZE+0x2e0>)
     a2a:	9b04      	ldr	r3, [sp, #16]
     a2c:	4694      	mov	ip, r2
     a2e:	4463      	add	r3, ip
     a30:	0020      	movs	r0, r4
     a32:	409c      	lsls	r4, r3
     a34:	9a02      	ldr	r2, [sp, #8]
     a36:	40c8      	lsrs	r0, r1
     a38:	409a      	lsls	r2, r3
     a3a:	0023      	movs	r3, r4
     a3c:	4302      	orrs	r2, r0
     a3e:	1e58      	subs	r0, r3, #1
     a40:	4183      	sbcs	r3, r0
     a42:	431a      	orrs	r2, r3
     a44:	9b02      	ldr	r3, [sp, #8]
     a46:	0014      	movs	r4, r2
     a48:	40cb      	lsrs	r3, r1
     a4a:	0762      	lsls	r2, r4, #29
     a4c:	d009      	beq.n	a62 <CONFIG_ISR_STACK_SIZE+0x262>
     a4e:	220f      	movs	r2, #15
     a50:	4022      	ands	r2, r4
     a52:	2a04      	cmp	r2, #4
     a54:	d005      	beq.n	a62 <CONFIG_ISR_STACK_SIZE+0x262>
     a56:	1d22      	adds	r2, r4, #4
     a58:	42a2      	cmp	r2, r4
     a5a:	41a4      	sbcs	r4, r4
     a5c:	4264      	negs	r4, r4
     a5e:	191b      	adds	r3, r3, r4
     a60:	0014      	movs	r4, r2
     a62:	2180      	movs	r1, #128	@ 0x80
     a64:	001a      	movs	r2, r3
     a66:	0409      	lsls	r1, r1, #16
     a68:	400a      	ands	r2, r1
     a6a:	420b      	tst	r3, r1
     a6c:	d12e      	bne.n	acc <CONFIG_ISR_STACK_SIZE+0x2cc>
     a6e:	08e1      	lsrs	r1, r4, #3
     a70:	075c      	lsls	r4, r3, #29
     a72:	430c      	orrs	r4, r1
     a74:	e7aa      	b.n	9cc <CONFIG_ISR_STACK_SIZE+0x1cc>
     a76:	231f      	movs	r3, #31
     a78:	425b      	negs	r3, r3
     a7a:	1a9b      	subs	r3, r3, r2
     a7c:	9a02      	ldr	r2, [sp, #8]
     a7e:	40da      	lsrs	r2, r3
     a80:	2300      	movs	r3, #0
     a82:	2920      	cmp	r1, #32
     a84:	d006      	beq.n	a94 <CONFIG_ISR_STACK_SIZE+0x294>
     a86:	4917      	ldr	r1, [pc, #92]	@ (ae4 <CONFIG_ISR_STACK_SIZE+0x2e4>)
     a88:	9b04      	ldr	r3, [sp, #16]
     a8a:	468c      	mov	ip, r1
     a8c:	9902      	ldr	r1, [sp, #8]
     a8e:	4463      	add	r3, ip
     a90:	4099      	lsls	r1, r3
     a92:	000b      	movs	r3, r1
     a94:	431c      	orrs	r4, r3
     a96:	1e63      	subs	r3, r4, #1
     a98:	419c      	sbcs	r4, r3
     a9a:	2300      	movs	r3, #0
     a9c:	4314      	orrs	r4, r2
     a9e:	e7d4      	b.n	a4a <CONFIG_ISR_STACK_SIZE+0x24a>
     aa0:	2300      	movs	r3, #0
     aa2:	001c      	movs	r4, r3
     aa4:	9303      	str	r3, [sp, #12]
     aa6:	2380      	movs	r3, #128	@ 0x80
     aa8:	031b      	lsls	r3, r3, #12
     aaa:	9302      	str	r3, [sp, #8]
     aac:	e7a6      	b.n	9fc <CONFIG_ISR_STACK_SIZE+0x1fc>
     aae:	9b06      	ldr	r3, [sp, #24]
     ab0:	0014      	movs	r4, r2
     ab2:	9303      	str	r3, [sp, #12]
     ab4:	9502      	str	r5, [sp, #8]
     ab6:	e7a1      	b.n	9fc <CONFIG_ISR_STACK_SIZE+0x1fc>
     ab8:	9b05      	ldr	r3, [sp, #20]
     aba:	9303      	str	r3, [sp, #12]
     abc:	e79e      	b.n	9fc <CONFIG_ISR_STACK_SIZE+0x1fc>
     abe:	2300      	movs	r3, #0
     ac0:	001c      	movs	r4, r3
     ac2:	001a      	movs	r2, r3
     ac4:	e783      	b.n	9ce <CONFIG_ISR_STACK_SIZE+0x1ce>
     ac6:	2400      	movs	r4, #0
     ac8:	0023      	movs	r3, r4
     aca:	e65b      	b.n	784 <__aeabi_ddiv+0x1a8>
     acc:	2300      	movs	r3, #0
     ace:	2201      	movs	r2, #1
     ad0:	001c      	movs	r4, r3
     ad2:	e77c      	b.n	9ce <CONFIG_ISR_STACK_SIZE+0x1ce>
     ad4:	000003ff 	.word	0x000003ff
     ad8:	feffffff 	.word	0xfeffffff
     adc:	000007fe 	.word	0x000007fe
     ae0:	0000041e 	.word	0x0000041e
     ae4:	0000043e 	.word	0x0000043e

00000ae8 <__aeabi_ui2d>:
     ae8:	b510      	push	{r4, lr}
     aea:	0003      	movs	r3, r0
     aec:	0004      	movs	r4, r0
     aee:	1e02      	subs	r2, r0, #0
     af0:	d00c      	beq.n	b0c <__aeabi_ui2d+0x24>
     af2:	f7ff fd29 	bl	548 <__clzsi2>
     af6:	4a0b      	ldr	r2, [pc, #44]	@ (b24 <__aeabi_ui2d+0x3c>)
     af8:	1a12      	subs	r2, r2, r0
     afa:	280a      	cmp	r0, #10
     afc:	dc0d      	bgt.n	b1a <__aeabi_ui2d+0x32>
     afe:	230b      	movs	r3, #11
     b00:	0021      	movs	r1, r4
     b02:	1a1b      	subs	r3, r3, r0
     b04:	40d9      	lsrs	r1, r3
     b06:	3015      	adds	r0, #21
     b08:	000b      	movs	r3, r1
     b0a:	4084      	lsls	r4, r0
     b0c:	031b      	lsls	r3, r3, #12
     b0e:	0b1b      	lsrs	r3, r3, #12
     b10:	0512      	lsls	r2, r2, #20
     b12:	431a      	orrs	r2, r3
     b14:	0020      	movs	r0, r4
     b16:	0011      	movs	r1, r2
     b18:	bd10      	pop	{r4, pc}
     b1a:	0023      	movs	r3, r4
     b1c:	380b      	subs	r0, #11
     b1e:	4083      	lsls	r3, r0
     b20:	2400      	movs	r4, #0
     b22:	e7f3      	b.n	b0c <__aeabi_ui2d+0x24>
     b24:	0000041e 	.word	0x0000041e

00000b28 <__gnu_thumb1_case_uhi>:
     b28:	b403      	push	{r0, r1}
     b2a:	4671      	mov	r1, lr
     b2c:	0849      	lsrs	r1, r1, #1
     b2e:	0040      	lsls	r0, r0, #1
     b30:	0049      	lsls	r1, r1, #1
     b32:	5a09      	ldrh	r1, [r1, r0]
     b34:	0049      	lsls	r1, r1, #1
     b36:	448e      	add	lr, r1
     b38:	bc03      	pop	{r0, r1}
     b3a:	4770      	bx	lr

00000b3c <__aeabi_llsr>:
     b3c:	40d0      	lsrs	r0, r2
     b3e:	000b      	movs	r3, r1
     b40:	40d1      	lsrs	r1, r2
     b42:	469c      	mov	ip, r3
     b44:	3a20      	subs	r2, #32
     b46:	40d3      	lsrs	r3, r2
     b48:	4318      	orrs	r0, r3
     b4a:	4252      	negs	r2, r2
     b4c:	4663      	mov	r3, ip
     b4e:	4093      	lsls	r3, r2
     b50:	4318      	orrs	r0, r3
     b52:	4770      	bx	lr

00000b54 <__aeabi_llsl>:
     b54:	4091      	lsls	r1, r2
     b56:	0003      	movs	r3, r0
     b58:	4090      	lsls	r0, r2
     b5a:	469c      	mov	ip, r3
     b5c:	3a20      	subs	r2, #32
     b5e:	4093      	lsls	r3, r2
     b60:	4319      	orrs	r1, r3
     b62:	4252      	negs	r2, r2
     b64:	4663      	mov	r3, ip
     b66:	40d3      	lsrs	r3, r2
     b68:	4319      	orrs	r1, r3
     b6a:	4770      	bx	lr

00000b6c <__aeabi_lmul>:
     b6c:	b5f7      	push	{r0, r1, r2, r4, r5, r6, r7, lr}
     b6e:	0c04      	lsrs	r4, r0, #16
     b70:	000d      	movs	r5, r1
     b72:	b291      	uxth	r1, r2
     b74:	000f      	movs	r7, r1
     b76:	4361      	muls	r1, r4
     b78:	468c      	mov	ip, r1
     b7a:	0006      	movs	r6, r0
     b7c:	9301      	str	r3, [sp, #4]
     b7e:	b283      	uxth	r3, r0
     b80:	0c10      	lsrs	r0, r2, #16
     b82:	435f      	muls	r7, r3
     b84:	4344      	muls	r4, r0
     b86:	4358      	muls	r0, r3
     b88:	0c3b      	lsrs	r3, r7, #16
     b8a:	4460      	add	r0, ip
     b8c:	181b      	adds	r3, r3, r0
     b8e:	4299      	cmp	r1, r3
     b90:	d902      	bls.n	b98 <__aeabi_lmul+0x2c>
     b92:	2180      	movs	r1, #128	@ 0x80
     b94:	0249      	lsls	r1, r1, #9
     b96:	1864      	adds	r4, r4, r1
     b98:	9901      	ldr	r1, [sp, #4]
     b9a:	4355      	muls	r5, r2
     b9c:	4371      	muls	r1, r6
     b9e:	0c18      	lsrs	r0, r3, #16
     ba0:	1904      	adds	r4, r0, r4
     ba2:	041b      	lsls	r3, r3, #16
     ba4:	b2bf      	uxth	r7, r7
     ba6:	1949      	adds	r1, r1, r5
     ba8:	19d8      	adds	r0, r3, r7
     baa:	1909      	adds	r1, r1, r4
     bac:	b003      	add	sp, #12
     bae:	bdf0      	pop	{r4, r5, r6, r7, pc}

00000bb0 <__udivmoddi4>:
     bb0:	b5f0      	push	{r4, r5, r6, r7, lr}
     bb2:	b087      	sub	sp, #28
     bb4:	0006      	movs	r6, r0
     bb6:	000f      	movs	r7, r1
     bb8:	9205      	str	r2, [sp, #20]
     bba:	9304      	str	r3, [sp, #16]
     bbc:	428b      	cmp	r3, r1
     bbe:	d900      	bls.n	bc2 <__udivmoddi4+0x12>
     bc0:	e066      	b.n	c90 <__udivmoddi4+0xe0>
     bc2:	d101      	bne.n	bc8 <__udivmoddi4+0x18>
     bc4:	4282      	cmp	r2, r0
     bc6:	d863      	bhi.n	c90 <__udivmoddi4+0xe0>
     bc8:	9904      	ldr	r1, [sp, #16]
     bca:	9805      	ldr	r0, [sp, #20]
     bcc:	f7ff fcda 	bl	584 <__clzdi2>
     bd0:	0039      	movs	r1, r7
     bd2:	9001      	str	r0, [sp, #4]
     bd4:	0030      	movs	r0, r6
     bd6:	f7ff fcd5 	bl	584 <__clzdi2>
     bda:	9b01      	ldr	r3, [sp, #4]
     bdc:	9904      	ldr	r1, [sp, #16]
     bde:	1a1b      	subs	r3, r3, r0
     be0:	001a      	movs	r2, r3
     be2:	9805      	ldr	r0, [sp, #20]
     be4:	9301      	str	r3, [sp, #4]
     be6:	f7ff ffb5 	bl	b54 <__aeabi_llsl>
     bea:	0004      	movs	r4, r0
     bec:	000d      	movs	r5, r1
     bee:	42b9      	cmp	r1, r7
     bf0:	d846      	bhi.n	c80 <__udivmoddi4+0xd0>
     bf2:	d101      	bne.n	bf8 <__udivmoddi4+0x48>
     bf4:	42b0      	cmp	r0, r6
     bf6:	d843      	bhi.n	c80 <__udivmoddi4+0xd0>
     bf8:	2001      	movs	r0, #1
     bfa:	2100      	movs	r1, #0
     bfc:	9a01      	ldr	r2, [sp, #4]
     bfe:	f7ff ffa9 	bl	b54 <__aeabi_llsl>
     c02:	1b36      	subs	r6, r6, r4
     c04:	41af      	sbcs	r7, r5
     c06:	9002      	str	r0, [sp, #8]
     c08:	9103      	str	r1, [sp, #12]
     c0a:	9b01      	ldr	r3, [sp, #4]
     c0c:	2b00      	cmp	r3, #0
     c0e:	d02e      	beq.n	c6e <__udivmoddi4+0xbe>
     c10:	07e9      	lsls	r1, r5, #31
     c12:	0862      	lsrs	r2, r4, #1
     c14:	430a      	orrs	r2, r1
     c16:	9901      	ldr	r1, [sp, #4]
     c18:	086b      	lsrs	r3, r5, #1
     c1a:	468c      	mov	ip, r1
     c1c:	2401      	movs	r4, #1
     c1e:	2500      	movs	r5, #0
     c20:	42bb      	cmp	r3, r7
     c22:	d832      	bhi.n	c8a <__udivmoddi4+0xda>
     c24:	d101      	bne.n	c2a <__udivmoddi4+0x7a>
     c26:	42b2      	cmp	r2, r6
     c28:	d82f      	bhi.n	c8a <__udivmoddi4+0xda>
     c2a:	0030      	movs	r0, r6
     c2c:	0039      	movs	r1, r7
     c2e:	1a80      	subs	r0, r0, r2
     c30:	4199      	sbcs	r1, r3
     c32:	1800      	adds	r0, r0, r0
     c34:	4149      	adcs	r1, r1
     c36:	1900      	adds	r0, r0, r4
     c38:	4169      	adcs	r1, r5
     c3a:	0006      	movs	r6, r0
     c3c:	000f      	movs	r7, r1
     c3e:	2101      	movs	r1, #1
     c40:	4249      	negs	r1, r1
     c42:	448c      	add	ip, r1
     c44:	4661      	mov	r1, ip
     c46:	2900      	cmp	r1, #0
     c48:	d1ea      	bne.n	c20 <__udivmoddi4+0x70>
     c4a:	9c02      	ldr	r4, [sp, #8]
     c4c:	9d03      	ldr	r5, [sp, #12]
     c4e:	0030      	movs	r0, r6
     c50:	0039      	movs	r1, r7
     c52:	9a01      	ldr	r2, [sp, #4]
     c54:	f7ff ff72 	bl	b3c <__aeabi_llsr>
     c58:	9a01      	ldr	r2, [sp, #4]
     c5a:	19a4      	adds	r4, r4, r6
     c5c:	417d      	adcs	r5, r7
     c5e:	0006      	movs	r6, r0
     c60:	000f      	movs	r7, r1
     c62:	f7ff ff77 	bl	b54 <__aeabi_llsl>
     c66:	1a24      	subs	r4, r4, r0
     c68:	418d      	sbcs	r5, r1
     c6a:	9402      	str	r4, [sp, #8]
     c6c:	9503      	str	r5, [sp, #12]
     c6e:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
     c70:	2b00      	cmp	r3, #0
     c72:	d001      	beq.n	c78 <__udivmoddi4+0xc8>
     c74:	601e      	str	r6, [r3, #0]
     c76:	605f      	str	r7, [r3, #4]
     c78:	9802      	ldr	r0, [sp, #8]
     c7a:	9903      	ldr	r1, [sp, #12]
     c7c:	b007      	add	sp, #28
     c7e:	bdf0      	pop	{r4, r5, r6, r7, pc}
     c80:	2200      	movs	r2, #0
     c82:	2300      	movs	r3, #0
     c84:	9202      	str	r2, [sp, #8]
     c86:	9303      	str	r3, [sp, #12]
     c88:	e7bf      	b.n	c0a <__udivmoddi4+0x5a>
     c8a:	19b6      	adds	r6, r6, r6
     c8c:	417f      	adcs	r7, r7
     c8e:	e7d6      	b.n	c3e <__udivmoddi4+0x8e>
     c90:	2300      	movs	r3, #0
     c92:	2400      	movs	r4, #0
     c94:	9302      	str	r3, [sp, #8]
     c96:	9403      	str	r4, [sp, #12]
     c98:	e7e9      	b.n	c6e <__udivmoddi4+0xbe>
	...

00000c9c <increment_shared_counter>:
#if USE_MUTEX
K_MUTEX_DEFINE(counter_mutex);
#endif

static void increment_shared_counter(void)
{
     c9c:	b570      	push	{r4, r5, r6, lr}
#if USE_MUTEX
	k_mutex_lock(&counter_mutex, K_FOREVER);
#endif

	/* 1. LER o valor atual do recurso compartilhado */
	uint32_t temp = shared_counter;
     c9e:	4d04      	ldr	r5, [pc, #16]	@ (cb0 <increment_shared_counter+0x14>)
     ca0:	682c      	ldr	r4, [r5, #0]
		(void) arch_syscall_invoke1(parm0.x, K_SYSCALL_K_BUSY_WAIT);
		return;
	}
#endif
	compiler_barrier();
	z_impl_k_busy_wait(usec_to_wait);
     ca2:	2032      	movs	r0, #50	@ 0x32
     ca4:	f005 fe55 	bl	6952 <z_impl_k_busy_wait>
	/* 2. "Processar" o valor - simula algum trabalho sobre o dado lido.
	 *    E exatamente aqui, entre o passo 1 e o passo 3, que outra
	 *    thread pode ser escalonada, ler o MESMO valor antigo e
	 *    tambem calcular temp + 1 a partir dele. */
	k_busy_wait(CRITICAL_SECTION_DELAY_US);
	temp = temp + 1;
     ca8:	3401      	adds	r4, #1

	/* 3. ESCREVER o valor de volta no recurso compartilhado.
	 *    Se outra thread fez o mesmo entre os passos 1 e 3, uma das
	 *    duas escritas sera perdida: o incremento "desaparece". */
	shared_counter = temp;
     caa:	602c      	str	r4, [r5, #0]

#if USE_MUTEX
	k_mutex_unlock(&counter_mutex);
#endif
}
     cac:	bd70      	pop	{r4, r5, r6, pc}
     cae:	46c0      	nop			@ (mov r8, r8)
     cb0:	1ffff478 	.word	0x1ffff478

00000cb4 <counter_thread>:

static void counter_thread(void *p1, void *p2, void *p3)
{
     cb4:	b570      	push	{r4, r5, r6, lr}
     cb6:	0005      	movs	r5, r0
	const char *name = (const char *)p1;

	ARG_UNUSED(p2);
	ARG_UNUSED(p3);

	for (int i = 0; i < NUM_INCREMENTS; i++) {
     cb8:	2400      	movs	r4, #0
     cba:	e002      	b.n	cc2 <counter_thread+0xe>
		increment_shared_counter();
     cbc:	f7ff ffee 	bl	c9c <increment_shared_counter>
	for (int i = 0; i < NUM_INCREMENTS; i++) {
     cc0:	3401      	adds	r4, #1
     cc2:	23fa      	movs	r3, #250	@ 0xfa
     cc4:	00db      	lsls	r3, r3, #3
     cc6:	429c      	cmp	r4, r3
     cc8:	dbf8      	blt.n	cbc <counter_thread+0x8>
	}

	printk("Thread %s terminou suas %d incrementacoes\n", name, NUM_INCREMENTS);
     cca:	22fa      	movs	r2, #250	@ 0xfa
     ccc:	4802      	ldr	r0, [pc, #8]	@ (cd8 <counter_thread+0x24>)
     cce:	00d2      	lsls	r2, r2, #3
     cd0:	0029      	movs	r1, r5
     cd2:	f005 faf8 	bl	62c6 <printk>
}
     cd6:	bd70      	pop	{r4, r5, r6, pc}
     cd8:	000072d0 	.word	0x000072d0

00000cdc <main>:

K_THREAD_DEFINE(thread_b, STACK_SIZE, counter_thread, "B", NULL, NULL,
		THREAD_PRIORITY, 0, 0);

void main(void)
{
     cdc:	b5d0      	push	{r4, r6, r7, lr}
	uint32_t expected = NUM_THREADS * NUM_INCREMENTS;

	printk("\n=== Demonstracao de Race Condition (Zephyr RTOS) ===\n");
     cde:	481e      	ldr	r0, [pc, #120]	@ (d58 <main+0x7c>)
     ce0:	f005 faf1 	bl	62c6 <printk>
	printk("Modo:............. %s\n",
     ce4:	491d      	ldr	r1, [pc, #116]	@ (d5c <main+0x80>)
     ce6:	481e      	ldr	r0, [pc, #120]	@ (d60 <main+0x84>)
     ce8:	f005 faed 	bl	62c6 <printk>
	       USE_MUTEX ? "SEGURO (secao critica protegida por mutex)"
			 : "INSEGURO (sem sincronizacao)");
	printk("Threads:........... %d\n", NUM_THREADS);
     cec:	481d      	ldr	r0, [pc, #116]	@ (d64 <main+0x88>)
     cee:	2102      	movs	r1, #2
     cf0:	f005 fae9 	bl	62c6 <printk>
	printk("Incrementos/thread: %d\n", NUM_INCREMENTS);
     cf4:	21fa      	movs	r1, #250	@ 0xfa
     cf6:	481c      	ldr	r0, [pc, #112]	@ (d68 <main+0x8c>)
     cf8:	00c9      	lsls	r1, r1, #3
     cfa:	f005 fae4 	bl	62c6 <printk>
	printk("Valor esperado:.... %u\n\n", expected);
     cfe:	24fa      	movs	r4, #250	@ 0xfa
     d00:	0124      	lsls	r4, r4, #4
     d02:	481a      	ldr	r0, [pc, #104]	@ (d6c <main+0x90>)
     d04:	0021      	movs	r1, r4
     d06:	f005 fade 	bl	62c6 <printk>

	/* Espera as duas threads terminarem antes de ler o resultado final */
	k_thread_join(thread_a, K_FOREVER);
     d0a:	2601      	movs	r6, #1
     d0c:	4276      	negs	r6, r6
     d0e:	17f7      	asrs	r7, r6, #31
	return z_impl_k_thread_join(thread, timeout);
     d10:	4817      	ldr	r0, [pc, #92]	@ (d70 <main+0x94>)
     d12:	0032      	movs	r2, r6
     d14:	003b      	movs	r3, r7
     d16:	f001 fc61 	bl	25dc <z_impl_k_thread_join>
     d1a:	4816      	ldr	r0, [pc, #88]	@ (d74 <main+0x98>)
     d1c:	0032      	movs	r2, r6
     d1e:	003b      	movs	r3, r7
     d20:	f001 fc5c 	bl	25dc <z_impl_k_thread_join>
	k_thread_join(thread_b, K_FOREVER);

	printk("\nValor final do contador: %u\n", shared_counter);
     d24:	4e14      	ldr	r6, [pc, #80]	@ (d78 <main+0x9c>)
     d26:	6831      	ldr	r1, [r6, #0]
     d28:	4814      	ldr	r0, [pc, #80]	@ (d7c <main+0xa0>)
     d2a:	f005 facc 	bl	62c6 <printk>
	printk("Valor esperado:          %u\n", expected);
     d2e:	4814      	ldr	r0, [pc, #80]	@ (d80 <main+0xa4>)
     d30:	0021      	movs	r1, r4
     d32:	f005 fac8 	bl	62c6 <printk>

	if (shared_counter == expected) {
     d36:	6833      	ldr	r3, [r6, #0]
     d38:	42a3      	cmp	r3, r4
     d3a:	d008      	beq.n	d4e <main+0x72>
		printk("RESULTADO: OK - nenhuma atualizacao perdida\n");
	} else {
		printk("RESULTADO: FALHA - %u atualizacao(oes) perdida(s) "
     d3c:	4b0e      	ldr	r3, [pc, #56]	@ (d78 <main+0x9c>)
     d3e:	681b      	ldr	r3, [r3, #0]
     d40:	21fa      	movs	r1, #250	@ 0xfa
     d42:	0109      	lsls	r1, r1, #4
     d44:	1ac9      	subs	r1, r1, r3
     d46:	480f      	ldr	r0, [pc, #60]	@ (d84 <main+0xa8>)
     d48:	f005 fabd 	bl	62c6 <printk>
		       "por race condition\n",
		       expected - shared_counter);
	}
}
     d4c:	bdd0      	pop	{r4, r6, r7, pc}
		printk("RESULTADO: OK - nenhuma atualizacao perdida\n");
     d4e:	480e      	ldr	r0, [pc, #56]	@ (d88 <main+0xac>)
     d50:	f005 fab9 	bl	62c6 <printk>
     d54:	e7fa      	b.n	d4c <main+0x70>
     d56:	46c0      	nop			@ (mov r8, r8)
     d58:	000072fc 	.word	0x000072fc
     d5c:	00007334 	.word	0x00007334
     d60:	00007354 	.word	0x00007354
     d64:	0000736c 	.word	0x0000736c
     d68:	00007384 	.word	0x00007384
     d6c:	0000739c 	.word	0x0000739c
     d70:	1ffff110 	.word	0x1ffff110
     d74:	1ffff050 	.word	0x1ffff050
     d78:	1ffff478 	.word	0x1ffff478
     d7c:	000073b8 	.word	0x000073b8
     d80:	000073d8 	.word	0x000073d8
     d84:	00007428 	.word	0x00007428
     d88:	000073f8 	.word	0x000073f8

00000d8c <boot_banner>:
#define BANNER_VERSION KERNEL_VERSION_STRING
#endif /* BUILD_VERSION */
#endif /* !BANNER_VERSION */

static int boot_banner(void)
{
     d8c:	b510      	push	{r4, lr}
	  */
	printk("\x1b[3J\x1b[2J\x1b[H");
#endif /* CONFIG_BOOT_CLEAR_SCREEN */

#ifdef CONFIG_BOOT_BANNER
	printk("*** " CONFIG_BOOT_BANNER_STRING " " BANNER_VERSION BANNER_POSTFIX " ***\n");
     d8e:	4802      	ldr	r0, [pc, #8]	@ (d98 <boot_banner+0xc>)
     d90:	f005 fa99 	bl	62c6 <printk>
#endif /* CONFIG_BOOT_BANNER */

	return 0;
}
     d94:	2000      	movs	r0, #0
     d96:	bd10      	pop	{r4, pc}
     d98:	00007490 	.word	0x00007490

00000d9c <char_out>:

	return c;
}

static int char_out(int c, void *ctx_p)
{
     d9c:	b510      	push	{r4, lr}
	ARG_UNUSED(ctx_p);
	return _char_out(c);
     d9e:	4b02      	ldr	r3, [pc, #8]	@ (da8 <char_out+0xc>)
     da0:	681b      	ldr	r3, [r3, #0]
     da2:	4798      	blx	r3
}
     da4:	bd10      	pop	{r4, pc}
     da6:	46c0      	nop			@ (mov r8, r8)
     da8:	1ffff008 	.word	0x1ffff008

00000dac <vprintk_core>:
 * Format straight to the platform's character output hook, through a
 * private unbuffered stream. Never stdout, never the logging subsystem,
 * so no shared buffer and no lock of our own.
 */
static void vprintk_core(const char *fmt, va_list ap)
{
     dac:	b570      	push	{r4, r5, r6, lr}
     dae:	b084      	sub	sp, #16
     db0:	0005      	movs	r5, r0
     db2:	000e      	movs	r6, r1
#ifdef CONFIG_PICOLIBC
	FILE console = FDEV_SETUP_STREAM((int(*)(char, FILE *))char_out,
     db4:	466c      	mov	r4, sp
     db6:	2210      	movs	r2, #16
     db8:	2100      	movs	r1, #0
     dba:	4668      	mov	r0, sp
     dbc:	f002 fb9e 	bl	34fc <memset>
     dc0:	2302      	movs	r3, #2
     dc2:	70a3      	strb	r3, [r4, #2]
     dc4:	4b04      	ldr	r3, [pc, #16]	@ (dd8 <vprintk_core+0x2c>)
     dc6:	9301      	str	r3, [sp, #4]
					 NULL, NULL, _FDEV_SETUP_WRITE);
	(void) vfprintf(&console, fmt, ap);
     dc8:	0032      	movs	r2, r6
     dca:	0029      	movs	r1, r5
     dcc:	4668      	mov	r0, sp
     dce:	f002 fdb7 	bl	3940 <__d_vfprintf>
#else
	cbvprintf(char_out, NULL, fmt, ap);
#endif
}
     dd2:	b004      	add	sp, #16
     dd4:	bd70      	pop	{r4, r5, r6, pc}
     dd6:	46c0      	nop			@ (mov r8, r8)
     dd8:	00000d9d 	.word	0x00000d9d

00000ddc <__printk_hook_install>:
	_char_out = fn;
     ddc:	4b01      	ldr	r3, [pc, #4]	@ (de4 <__printk_hook_install+0x8>)
     dde:	6018      	str	r0, [r3, #0]
}
     de0:	4770      	bx	lr
     de2:	46c0      	nop			@ (mov r8, r8)
     de4:	1ffff008 	.word	0x1ffff008

00000de8 <clock_init>:
/*******************************************************************************
 * Variables
 ******************************************************************************/

__weak void clock_init(void)
{
     de8:	b570      	push	{r4, r5, r6, lr}
     dea:	b086      	sub	sp, #24
   /*
    * Core clock: 48MHz
    * Bus clock: 24MHz
    */
	const mcg_pll_config_t pll0Config = {
     dec:	ae05      	add	r6, sp, #20
     dee:	2300      	movs	r3, #0
     df0:	7033      	strb	r3, [r6, #0]
     df2:	2201      	movs	r2, #1
     df4:	7072      	strb	r2, [r6, #1]
     df6:	70b3      	strb	r3, [r6, #2]
	.enableMode = 0U, .prdiv = CONFIG_MCG_PRDIV0, .vdiv = CONFIG_MCG_VDIV0,
	};
	const sim_clock_config_t simConfig = {
     df8:	ad03      	add	r5, sp, #12
     dfa:	4a18      	ldr	r2, [pc, #96]	@ (e5c <clock_init+0x74>)
     dfc:	002c      	movs	r4, r5
     dfe:	0013      	movs	r3, r2
     e00:	cb03      	ldmia	r3!, {r0, r1}
     e02:	c403      	stmia	r4!, {r0, r1}
		.er32kSrc = DT_PROP(DT_INST(0, nxp_kinetis_sim), er32k_select),
		.clkdiv1 = SIM_CLKDIV1_OUTDIV1(CLOCK_DIVIDER(core_clk)) |
			   SIM_CLKDIV1_OUTDIV4(CLOCK_DIVIDER(flash_clk)),
	};

	const osc_config_t oscConfig = {.freq = CONFIG_OSC_XTAL0_FREQ,
     e04:	a801      	add	r0, sp, #4
     e06:	0002      	movs	r2, r0
     e08:	cb12      	ldmia	r3!, {r1, r4}
     e0a:	c212      	stmia	r2!, {r1, r4}
 *
 * @param config Pointer to the configure structure.
 */
static inline void CLOCK_SetSimSafeDivs(void)
{
    SIM->CLKDIV1 = 0x10030000U;
     e0c:	4c14      	ldr	r4, [pc, #80]	@ (e60 <clock_init+0x78>)
     e0e:	4b15      	ldr	r3, [pc, #84]	@ (e64 <clock_init+0x7c>)
     e10:	4a15      	ldr	r2, [pc, #84]	@ (e68 <clock_init+0x80>)
     e12:	50e2      	str	r2, [r4, r3]
				.erclkDiv = 0U,
#endif
				} };

	CLOCK_SetSimSafeDivs();
	CLOCK_InitOsc0(&oscConfig);
     e14:	f000 fff0 	bl	1df8 <CLOCK_InitOsc0>
 *
 * @param freq The XTAL0/EXTAL0 input clock frequency in Hz.
 */
static inline void CLOCK_SetXtal0Freq(uint32_t freq)
{
    g_xtal0Freq = freq;
     e18:	4b14      	ldr	r3, [pc, #80]	@ (e6c <clock_init+0x84>)
     e1a:	4a15      	ldr	r2, [pc, #84]	@ (e70 <clock_init+0x88>)
     e1c:	601a      	str	r2, [r3, #0]

	/* Passing the XTAL0 frequency to clock driver. */
	CLOCK_SetXtal0Freq(CONFIG_OSC_XTAL0_FREQ);

	CLOCK_BootToPeeMode(kMCG_OscselOsc, kMCG_PllClkSelPll0, &pll0Config);
     e1e:	0032      	movs	r2, r6
     e20:	2100      	movs	r1, #0
     e22:	2000      	movs	r0, #0
     e24:	f001 f846 	bl	1eb4 <CLOCK_BootToPeeMode>

	CLOCK_SetInternalRefClkConfig(kMCG_IrclkEnable, kMCG_IrcSlow, 0);
     e28:	2200      	movs	r2, #0
     e2a:	2100      	movs	r1, #0
     e2c:	2002      	movs	r0, #2
     e2e:	f000 ff83 	bl	1d38 <CLOCK_SetInternalRefClkConfig>
	CLOCK_SetSimConfig(&simConfig);
     e32:	0028      	movs	r0, r5
     e34:	f000 fe94 	bl	1b60 <CLOCK_SetSimConfig>
    SIM->SOPT2 = ((SIM->SOPT2 & ~SIM_SOPT2_UART0SRC_MASK) | SIM_SOPT2_UART0SRC(src));
     e38:	4b0e      	ldr	r3, [pc, #56]	@ (e74 <clock_init+0x8c>)
     e3a:	58e1      	ldr	r1, [r4, r3]
     e3c:	4a0e      	ldr	r2, [pc, #56]	@ (e78 <clock_init+0x90>)
     e3e:	4011      	ands	r1, r2
     e40:	2280      	movs	r2, #128	@ 0x80
     e42:	04d2      	lsls	r2, r2, #19
     e44:	430a      	orrs	r2, r1
     e46:	50e2      	str	r2, [r4, r3]
    SIM->SOPT2 = ((SIM->SOPT2 & ~SIM_SOPT2_TPMSRC_MASK) | SIM_SOPT2_TPMSRC(src));
     e48:	58e1      	ldr	r1, [r4, r3]
     e4a:	4a0c      	ldr	r2, [pc, #48]	@ (e7c <clock_init+0x94>)
     e4c:	4011      	ands	r1, r2
     e4e:	2280      	movs	r2, #128	@ 0x80
     e50:	0452      	lsls	r2, r2, #17
     e52:	430a      	orrs	r2, r1
     e54:	50e2      	str	r2, [r4, r3]
#endif
#if CONFIG_USB_KINETIS || CONFIG_UDC_KINETIS
	CLOCK_EnableUsbfs0Clock(kCLOCK_UsbSrcPll0,
				DT_PROP(DT_PATH(cpus, cpu_0), clock_frequency));
#endif
}
     e56:	b006      	add	sp, #24
     e58:	bd70      	pop	{r4, r5, r6, pc}
     e5a:	46c0      	nop			@ (mov r8, r8)
     e5c:	00007030 	.word	0x00007030
     e60:	40047000 	.word	0x40047000
     e64:	00001044 	.word	0x00001044
     e68:	10030000 	.word	0x10030000
     e6c:	1ffff4e4 	.word	0x1ffff4e4
     e70:	007a1200 	.word	0x007a1200
     e74:	00001004 	.word	0x00001004
     e78:	f3ffffff 	.word	0xf3ffffff
     e7c:	fcffffff 	.word	0xfcffffff

00000e80 <z_thread_entry>:
 * This routine does not return, and is marked as such so the compiler won't
 * generate preamble code that is only used by functions that actually return.
 */
FUNC_NORETURN void z_thread_entry(k_thread_entry_t entry,
				 void *p1, void *p2, void *p3)
{
     e80:	b5f0      	push	{r4, r5, r6, r7, lr}
     e82:	46c6      	mov	lr, r8
     e84:	b500      	push	{lr}
     e86:	0004      	movs	r4, r0
     e88:	4688      	mov	r8, r1
     e8a:	0016      	movs	r6, r2
     e8c:	001f      	movs	r7, r3
	if (z_syscall_trap()) {
		return (k_tid_t) arch_syscall_invoke0(K_SYSCALL_K_SCHED_CURRENT_THREAD_QUERY);
	}
#endif
	compiler_barrier();
	return z_impl_k_sched_current_thread_query();
     e8e:	f001 fe8d 	bl	2bac <z_impl_k_sched_current_thread_query>
     e92:	0003      	movs	r3, r0
 * otherwise lead to reading invalid memory and cause faults during
 * unwinding or debugging.
 */
	ARCH_CFI_UNDEFINED_RETURN_ADDRESS();
#ifdef CONFIG_CURRENT_THREAD_USE_TLS
	z_tls_current = k_sched_current_thread_query();
     e94:	f000 fae2 	bl	145c <__aeabi_read_tp>
     e98:	4d05      	ldr	r5, [pc, #20]	@ (eb0 <z_thread_entry+0x30>)
     e9a:	502b      	str	r3, [r5, r0]

	sys_rand_get((uint8_t *)&stack_guard, sizeof(stack_guard));
	__stack_chk_guard = stack_guard;
	__stack_chk_guard <<= 8;
#endif	/* CONFIG_STACK_CANARIES_TLS */
	entry(p1, p2, p3);
     e9c:	003a      	movs	r2, r7
     e9e:	0031      	movs	r1, r6
     ea0:	4640      	mov	r0, r8
     ea2:	47a0      	blx	r4
#ifdef CONFIG_CURRENT_THREAD_USE_TLS

	/* Thread-local cache of current thread ID, set in z_thread_entry() */
	extern Z_THREAD_LOCAL k_tid_t z_tls_current;

	return z_tls_current;
     ea4:	f000 fada 	bl	145c <__aeabi_read_tp>
     ea8:	5828      	ldr	r0, [r5, r0]
		(void) arch_syscall_invoke1(parm0.x, K_SYSCALL_K_THREAD_ABORT);
		return;
	}
#endif
	compiler_barrier();
	z_impl_k_thread_abort(thread);
     eaa:	f000 fa35 	bl	1318 <z_impl_k_thread_abort>
	/*
	 * Compiler can't tell that k_thread_abort() won't return and issues a
	 * warning unless we tell it that control never gets this far.
	 */

	CODE_UNREACHABLE; /* LCOV_EXCL_LINE */
     eae:	46c0      	nop			@ (mov r8, r8)
     eb0:	00000008 	.word	0x00000008

00000eb4 <arch_bss_zero>:
 *
 * This routine clears the BSS region, so all bytes are 0.
 */
__boot_func
void arch_bss_zero(void)
{
     eb4:	b510      	push	{r4, lr}
	if (IS_ENABLED(CONFIG_SKIP_BSS_CLEAR)) {
		return;
	}

	arch_early_memset(__bss_start, 0, __bss_end - __bss_start);
     eb6:	4a03      	ldr	r2, [pc, #12]	@ (ec4 <arch_bss_zero+0x10>)
     eb8:	4803      	ldr	r0, [pc, #12]	@ (ec8 <arch_bss_zero+0x14>)
     eba:	1a12      	subs	r2, r2, r0
     ebc:	2100      	movs	r1, #0
     ebe:	f005 fa23 	bl	6308 <arch_early_memset>
#endif /* CONFIG_COVERAGE_GCOV */
#ifdef CONFIG_NOCACHE_MEMORY
	arch_early_memset(&_nocache_ram_start, 0,
			(uintptr_t) &_nocache_ram_end - (uintptr_t) &_nocache_ram_start);
#endif
}
     ec2:	bd10      	pop	{r4, pc}
     ec4:	1ffff500 	.word	0x1ffff500
     ec8:	1ffff050 	.word	0x1ffff050

00000ecc <arch_data_copy>:
 * @brief Copy the data section from ROM to RAM
 *
 * This routine copies the data section from ROM to RAM.
 */
void arch_data_copy(void)
{
     ecc:	b510      	push	{r4, lr}
	arch_early_memcpy(&__data_region_start, &__data_region_load_start,
		       __data_region_end - __data_region_start);
     ece:	4a06      	ldr	r2, [pc, #24]	@ (ee8 <arch_data_copy+0x1c>)
     ed0:	4806      	ldr	r0, [pc, #24]	@ (eec <arch_data_copy+0x20>)
     ed2:	1a12      	subs	r2, r2, r0
	arch_early_memcpy(&__data_region_start, &__data_region_load_start,
     ed4:	4906      	ldr	r1, [pc, #24]	@ (ef0 <arch_data_copy+0x24>)
     ed6:	f005 fa1b 	bl	6310 <arch_early_memcpy>
#ifdef CONFIG_ARCH_HAS_RAMFUNC_SUPPORT
	arch_early_memcpy(&__ramfunc_region_start, &__ramfunc_load_start,
		       __ramfunc_end - __ramfunc_region_start);
     eda:	4a06      	ldr	r2, [pc, #24]	@ (ef4 <arch_data_copy+0x28>)
     edc:	4806      	ldr	r0, [pc, #24]	@ (ef8 <arch_data_copy+0x2c>)
     ede:	1a12      	subs	r2, r2, r0
	arch_early_memcpy(&__ramfunc_region_start, &__ramfunc_load_start,
     ee0:	4906      	ldr	r1, [pc, #24]	@ (efc <arch_data_copy+0x30>)
     ee2:	f005 fa15 	bl	6310 <arch_early_memcpy>
#else
	arch_early_memcpy(&_app_smem_start, &_app_smem_rom_start,
		       _app_smem_end - _app_smem_start);
#endif /* CONFIG_REQUIRES_STACK_CANARIES */
#endif /* CONFIG_USERSPACE */
}
     ee6:	bd10      	pop	{r4, pc}
     ee8:	1ffff050 	.word	0x1ffff050
     eec:	1ffff000 	.word	0x1ffff000
     ef0:	00007e38 	.word	0x00007e38
     ef4:	1ffff000 	.word	0x1ffff000
     ef8:	1ffff000 	.word	0x1ffff000
     efc:	00007e38 	.word	0x00007e38

00000f00 <esf_dump>:

extern void z_arm_unwind_stack(const struct arch_esf *esf);

#ifdef CONFIG_EXCEPTION_DEBUG
static void esf_dump(const struct arch_esf *esf)
{
     f00:	b510      	push	{r4, lr}
     f02:	0004      	movs	r4, r0
	EXCEPTION_DUMP("r0/a1:  0x%08x  r1/a2:  0x%08x  r2/a3:  0x%08x",
     f04:	f005 f9da 	bl	62bc <printk_panic>
     f08:	6821      	ldr	r1, [r4, #0]
     f0a:	6862      	ldr	r2, [r4, #4]
     f0c:	68a3      	ldr	r3, [r4, #8]
     f0e:	480c      	ldr	r0, [pc, #48]	@ (f40 <esf_dump+0x40>)
     f10:	f005 f9d9 	bl	62c6 <printk>
		esf->basic.a1, esf->basic.a2, esf->basic.a3);
	EXCEPTION_DUMP("r3/a4:  0x%08x r12/ip:  0x%08x r14/lr:  0x%08x",
     f14:	f005 f9d2 	bl	62bc <printk_panic>
     f18:	68e1      	ldr	r1, [r4, #12]
     f1a:	6922      	ldr	r2, [r4, #16]
     f1c:	6963      	ldr	r3, [r4, #20]
     f1e:	4809      	ldr	r0, [pc, #36]	@ (f44 <esf_dump+0x44>)
     f20:	f005 f9d1 	bl	62c6 <printk>
		esf->basic.a4, esf->basic.ip, esf->basic.lr);
	EXCEPTION_DUMP(" xpsr:  0x%08x", esf->basic.xpsr);
     f24:	f005 f9ca 	bl	62bc <printk_panic>
     f28:	69e1      	ldr	r1, [r4, #28]
     f2a:	4807      	ldr	r0, [pc, #28]	@ (f48 <esf_dump+0x48>)
     f2c:	f005 f9cb 	bl	62c6 <printk>
	EXCEPTION_DUMP("%s: 0x%08x", "DFSR", esf->extra_info.dfsr);
	EXCEPTION_DUMP("%s: 0x%08x", "MMFAR", esf->extra_info.mmfar);
	EXCEPTION_DUMP("%s: 0x%08x", "BFAR", esf->extra_info.bfar);
#endif /* CONFIG_ARMV7_M_ARMV8_M_MAINLINE */
#endif /* CONFIG_EXTRA_EXCEPTION_INFO */
	EXCEPTION_DUMP("Faulting instruction address (r15/pc): 0x%08x",
     f30:	f005 f9c4 	bl	62bc <printk_panic>
     f34:	69a1      	ldr	r1, [r4, #24]
     f36:	4805      	ldr	r0, [pc, #20]	@ (f4c <esf_dump+0x4c>)
     f38:	f005 f9c5 	bl	62c6 <printk>
		esf->basic.pc);
}
     f3c:	bd10      	pop	{r4, pc}
     f3e:	46c0      	nop			@ (mov r8, r8)
     f40:	000074cc 	.word	0x000074cc
     f44:	000074fc 	.word	0x000074fc
     f48:	0000752c 	.word	0x0000752c
     f4c:	0000753c 	.word	0x0000753c

00000f50 <z_arm_fatal_error>:
#endif /* CONFIG_EXCEPTION_DEBUG */

void z_arm_fatal_error(unsigned int reason, const struct arch_esf *esf)
{
     f50:	b570      	push	{r4, r5, r6, lr}
     f52:	0005      	movs	r5, r0
     f54:	1e0c      	subs	r4, r1, #0
#ifdef CONFIG_EXCEPTION_DEBUG
	if (esf != NULL) {
     f56:	d002      	beq.n	f5e <z_arm_fatal_error+0xe>
		esf_dump(esf);
     f58:	0008      	movs	r0, r1
     f5a:	f7ff ffd1 	bl	f00 <esf_dump>
	}
#endif /* CONFIG_EXCEPTION_DEBUG */

	/* LOG the IRQn that was unhandled */
#if defined(CONFIG_CPU_CORTEX_M)
	if (reason == K_ERR_SPURIOUS_IRQ) {
     f5e:	2d01      	cmp	r5, #1
     f60:	d004      	beq.n	f6c <z_arm_fatal_error+0x1c>

#ifdef CONFIG_EXCEPTION_STACK_TRACE
	z_arm_unwind_stack(esf);
#endif /* CONFIG_EXCEPTION_STACK_TRACE */

	z_fatal_error(reason, esf);
     f62:	0021      	movs	r1, r4
     f64:	0028      	movs	r0, r5
     f66:	f001 f8e3 	bl	2130 <z_fatal_error>
}
     f6a:	bd70      	pop	{r4, r5, r6, pc}
 */
__STATIC_FORCEINLINE uint32_t __get_IPSR(void)
{
  uint32_t result;

  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
     f6c:	f3ef 8605 	mrs	r6, IPSR
		uint32_t irqn = __get_IPSR() - 16;
     f70:	3e10      	subs	r6, #16
		EXCEPTION_DUMP("Unhandled IRQn: %d", irqn);
     f72:	f005 f9a3 	bl	62bc <printk_panic>
     f76:	4802      	ldr	r0, [pc, #8]	@ (f80 <z_arm_fatal_error+0x30>)
     f78:	0031      	movs	r1, r6
     f7a:	f005 f9a4 	bl	62c6 <printk>
     f7e:	e7f0      	b.n	f62 <z_arm_fatal_error+0x12>
     f80:	0000756c 	.word	0x0000756c

00000f84 <z_SysNmiOnReset>:
_ASM_FILE_PROLOGUE

GTEXT(z_SysNmiOnReset)

SECTION_FUNC(TEXT, z_SysNmiOnReset)
    wfi
     f84:	bf30      	wfi
    b z_SysNmiOnReset
     f86:	e7fd      	b.n	f84 <z_SysNmiOnReset>

00000f88 <z_tls_copy>:
 * of TLS bss size after the data section.
 *
 * @param dest Pointer to destination
 */
static inline FUNC_NO_STACK_PROTECTOR void z_tls_copy(char *dest)
{
     f88:	b570      	push	{r4, r5, r6, lr}
     f8a:	0004      	movs	r4, r0

	memcpy(dest, __tdata_start, (size_t)(uintptr_t)__tdata_size);
	dest += (size_t)(uintptr_t)__tdata_size;
#else
	/* Copy initialized data (tdata) */
	memcpy(dest, __tdata_start, (size_t)(uintptr_t)__tdata_size);
     f8c:	4d05      	ldr	r5, [pc, #20]	@ (fa4 <z_tls_copy+0x1c>)
     f8e:	4906      	ldr	r1, [pc, #24]	@ (fa8 <z_tls_copy+0x20>)
     f90:	002a      	movs	r2, r5
     f92:	f002 f90f 	bl	31b4 <memcpy>
	dest += (size_t)(uintptr_t)__tdata_size;
     f96:	1960      	adds	r0, r4, r5
#endif
	/* Clear BSS data (tbss) */
	memset(dest, 0, (size_t)(uintptr_t)__tbss_size);
     f98:	4a04      	ldr	r2, [pc, #16]	@ (fac <z_tls_copy+0x24>)
     f9a:	2100      	movs	r1, #0
     f9c:	f002 faae 	bl	34fc <memset>
}
     fa0:	bd70      	pop	{r4, r5, r6, pc}
     fa2:	46c0      	nop			@ (mov r8, r8)
     fa4:	00000000 	.word	0x00000000
     fa8:	00007030 	.word	0x00007030
     fac:	00000004 	.word	0x00000004

00000fb0 <arch_tls_stack_setup>:
 */
K_APP_DMEM(z_libc_partition) uintptr_t z_arm_tls_ptr;
#endif

size_t arch_tls_stack_setup(struct k_thread *new_thread, char *stack_ptr)
{
     fb0:	b570      	push	{r4, r5, r6, lr}
     fb2:	0006      	movs	r6, r0
	size_t size = (size_t)(uintptr_t)__tdata_size + (size_t)(uintptr_t)__tbss_size;
     fb4:	4c06      	ldr	r4, [pc, #24]	@ (fd0 <arch_tls_stack_setup+0x20>)
     fb6:	4b07      	ldr	r3, [pc, #28]	@ (fd4 <arch_tls_stack_setup+0x24>)
     fb8:	18e4      	adds	r4, r4, r3

	/*
	 * Since we are populating things backwards,
	 * setup the TLS data/bss area first.
	 */
	stack_ptr -= z_tls_data_size();
     fba:	1b0d      	subs	r5, r1, r4
	z_tls_copy(stack_ptr);
     fbc:	0028      	movs	r0, r5
     fbe:	f7ff ffe3 	bl	f88 <z_tls_copy>

	size_t toolchain_tls_size = 0;
#ifndef __IAR_SYSTEMS_ICC__
	/* Skip two pointers due to toolchain */
	toolchain_tls_size = sizeof(uintptr_t) * 2;
	stack_ptr -= toolchain_tls_size;
     fc2:	3d08      	subs	r5, #8
#if defined(CONFIG_MULTITHREADING)
	/*
	 * Set thread TLS pointer which is used in
	 * context switch to point to TLS area.
	 */
	new_thread->tls = POINTER_TO_UINT(stack_ptr);
     fc4:	23a0      	movs	r3, #160	@ 0xa0
     fc6:	50f5      	str	r5, [r6, r3]
#else
	ARG_UNUSED(new_thread);
#endif /* CONFIG_MULTITHREADING */

	return (z_tls_data_size() + toolchain_tls_size);
     fc8:	0020      	movs	r0, r4
     fca:	3008      	adds	r0, #8
}
     fcc:	bd70      	pop	{r4, r5, r6, pc}
     fce:	46c0      	nop			@ (mov r8, r8)
     fd0:	00000000 	.word	0x00000000
     fd4:	00000004 	.word	0x00000004

00000fd8 <get_esf>:
 *
 * @return ESF pointer on success, otherwise return NULL
 */
static inline struct arch_esf *get_esf(uint32_t msp, uint32_t psp, uint32_t exc_return,
				       bool *nested_exc, struct fault_esf_context *context)
{
     fd8:	b570      	push	{r4, r5, r6, lr}
	bool alternative_state_exc = false;
	struct arch_esf *ptr_esf = NULL;

	*nested_exc = false;
     fda:	2400      	movs	r4, #0
     fdc:	701c      	strb	r4, [r3, #0]
	context->non_secure_esf = false;
     fde:	9d04      	ldr	r5, [sp, #16]
     fe0:	702c      	strb	r4, [r5, #0]

	if ((exc_return & EXC_RETURN_INDICATOR_PREFIX) != EXC_RETURN_INDICATOR_PREFIX) {
     fe2:	0e14      	lsrs	r4, r2, #24
     fe4:	0624      	lsls	r4, r4, #24
     fe6:	25ff      	movs	r5, #255	@ 0xff
     fe8:	062d      	lsls	r5, r5, #24
     fea:	42ac      	cmp	r4, r5
     fec:	d111      	bne.n	1012 <get_esf+0x3a>
	}
#else
	/* The processor has a single execution state.
	 * We verify that the Thread mode is using PSP.
	 */
	if ((exc_return & EXC_RETURN_MODE_THREAD) && (!(exc_return & EXC_RETURN_SPSEL_PROCESS))) {
     fee:	240c      	movs	r4, #12
     ff0:	4014      	ands	r4, r2
     ff2:	2c08      	cmp	r4, #8
     ff4:	d003      	beq.n	ffe <get_esf+0x26>
		return NULL;
	}
#endif /* CONFIG_ARM_SECURE_FIRMWARE */

	if (!alternative_state_exc) {
		if (exc_return & EXC_RETURN_MODE_THREAD) {
     ff6:	0712      	lsls	r2, r2, #28
     ff8:	d508      	bpl.n	100c <get_esf+0x34>
			/* Returning to thread mode */
			ptr_esf = (struct arch_esf *)psp;
     ffa:	0008      	movs	r0, r1
		}
#endif
	}

	return ptr_esf;
}
     ffc:	bd70      	pop	{r4, r5, r6, pc}
		PR_EXC("SPSEL in thread mode does not indicate PSP");
     ffe:	f005 f95d 	bl	62bc <printk_panic>
    1002:	4805      	ldr	r0, [pc, #20]	@ (1018 <get_esf+0x40>)
    1004:	f005 f95f 	bl	62c6 <printk>
		return NULL;
    1008:	2000      	movs	r0, #0
    100a:	e7f7      	b.n	ffc <get_esf+0x24>
			*nested_exc = true;
    100c:	2201      	movs	r2, #1
    100e:	701a      	strb	r2, [r3, #0]
    1010:	e7f4      	b.n	ffc <get_esf+0x24>
		return NULL;
    1012:	2000      	movs	r0, #0
    1014:	e7f2      	b.n	ffc <get_esf+0x24>
    1016:	46c0      	nop			@ (mov r8, r8)
    1018:	00007580 	.word	0x00007580

0000101c <hard_fault>:
{
    101c:	b570      	push	{r4, r5, r6, lr}
    101e:	0004      	movs	r4, r0
    1020:	000d      	movs	r5, r1
	PR_FAULT_INFO("***** HARD FAULT *****");
    1022:	f005 f94b 	bl	62bc <printk_panic>
    1026:	4819      	ldr	r0, [pc, #100]	@ (108c <hard_fault+0x70>)
    1028:	f005 f94d 	bl	62c6 <printk>
	if (z_arm_is_pc_valid((uintptr_t)esf->basic.pc) && z_arm_is_synchronous_svc(esf)) {
    102c:	69a3      	ldr	r3, [r4, #24]
	if ((((uintptr_t)&__text_region_start) <= pc) && (pc < ((uintptr_t)&__text_region_end))) {
    102e:	4a18      	ldr	r2, [pc, #96]	@ (1090 <hard_fault+0x74>)
    1030:	4293      	cmp	r3, r2
    1032:	d302      	bcc.n	103a <hard_fault+0x1e>
    1034:	4a17      	ldr	r2, [pc, #92]	@ (1094 <hard_fault+0x78>)
    1036:	4293      	cmp	r3, r2
    1038:	d307      	bcc.n	104a <hard_fault+0x2e>
	if ((((uintptr_t)&__ramfunc_start) <= pc) && (pc < ((uintptr_t)&__ramfunc_end))) {
    103a:	4a17      	ldr	r2, [pc, #92]	@ (1098 <hard_fault+0x7c>)
    103c:	4293      	cmp	r3, r2
    103e:	d31d      	bcc.n	107c <hard_fault+0x60>
    1040:	4a16      	ldr	r2, [pc, #88]	@ (109c <hard_fault+0x80>)
    1042:	4293      	cmp	r3, r2
    1044:	d301      	bcc.n	104a <hard_fault+0x2e>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
    1046:	2600      	movs	r6, #0
    1048:	e019      	b.n	107e <hard_fault+0x62>
	uint16_t fault_insn = *(ret_addr - 1);
    104a:	3b02      	subs	r3, #2
    104c:	881b      	ldrh	r3, [r3, #0]
	if (((fault_insn & 0xff00) == _SVC_OPCODE) &&
    104e:	22ff      	movs	r2, #255	@ 0xff
    1050:	0019      	movs	r1, r3
    1052:	4391      	bics	r1, r2
    1054:	22df      	movs	r2, #223	@ 0xdf
    1056:	0212      	lsls	r2, r2, #8
    1058:	4291      	cmp	r1, r2
    105a:	d001      	beq.n	1060 <hard_fault+0x44>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
    105c:	2600      	movs	r6, #0
    105e:	e00e      	b.n	107e <hard_fault+0x62>
	if (((fault_insn & 0xff00) == _SVC_OPCODE) &&
    1060:	22ff      	movs	r2, #255	@ 0xff
    1062:	4013      	ands	r3, r2
    1064:	2b02      	cmp	r3, #2
    1066:	d001      	beq.n	106c <hard_fault+0x50>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
    1068:	2600      	movs	r6, #0
    106a:	e008      	b.n	107e <hard_fault+0x62>
		PR_EXC("ARCH_EXCEPT with reason %x\n", esf->basic.r0);
    106c:	f005 f926 	bl	62bc <printk_panic>
    1070:	6821      	ldr	r1, [r4, #0]
    1072:	480b      	ldr	r0, [pc, #44]	@ (10a0 <hard_fault+0x84>)
    1074:	f005 f927 	bl	62c6 <printk>
		reason = esf->basic.r0;
    1078:	6826      	ldr	r6, [r4, #0]
    107a:	e000      	b.n	107e <hard_fault+0x62>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
    107c:	2600      	movs	r6, #0
	*recoverable = memory_fault_recoverable(esf, true);
    107e:	2101      	movs	r1, #1
    1080:	0020      	movs	r0, r4
    1082:	f005 f955 	bl	6330 <memory_fault_recoverable>
    1086:	7028      	strb	r0, [r5, #0]
}
    1088:	0030      	movs	r0, r6
    108a:	bd70      	pop	{r4, r5, r6, pc}
    108c:	000075ac 	.word	0x000075ac
    1090:	00000410 	.word	0x00000410
    1094:	00006c60 	.word	0x00006c60
    1098:	1ffff000 	.word	0x1ffff000
    109c:	1ffff000 	.word	0x1ffff000
    10a0:	000075c4 	.word	0x000075c4

000010a4 <reserved_exception>:
{
    10a4:	b510      	push	{r4, lr}
    10a6:	000c      	movs	r4, r1
	PR_FAULT_INFO("***** %s %d) *****",
    10a8:	f005 f908 	bl	62bc <printk_panic>
    10ac:	2c0f      	cmp	r4, #15
    10ae:	dc06      	bgt.n	10be <reserved_exception+0x1a>
    10b0:	4904      	ldr	r1, [pc, #16]	@ (10c4 <reserved_exception+0x20>)
    10b2:	0022      	movs	r2, r4
    10b4:	3a10      	subs	r2, #16
    10b6:	4804      	ldr	r0, [pc, #16]	@ (10c8 <reserved_exception+0x24>)
    10b8:	f005 f905 	bl	62c6 <printk>
}
    10bc:	bd10      	pop	{r4, pc}
	PR_FAULT_INFO("***** %s %d) *****",
    10be:	4903      	ldr	r1, [pc, #12]	@ (10cc <reserved_exception+0x28>)
    10c0:	e7f7      	b.n	10b2 <reserved_exception+0xe>
    10c2:	46c0      	nop			@ (mov r8, r8)
    10c4:	000075e4 	.word	0x000075e4
    10c8:	00007618 	.word	0x00007618
    10cc:	000075fc 	.word	0x000075fc

000010d0 <z_arm_fault>:
 * @param exc_return EXC_RETURN value present in LR after exception entry.
 * @param callee_regs Callee-saved registers (R4-R11, PSP)
 *
 */
void z_arm_fault(uint32_t msp, uint32_t psp, uint32_t exc_return, _callee_saved_t *callee_regs)
{
    10d0:	b570      	push	{r4, r5, r6, lr}
    10d2:	b08e      	sub	sp, #56	@ 0x38
	uint32_t reason = K_ERR_CPU_EXCEPTION;
	int fault = SCB->ICSR & SCB_ICSR_VECTACTIVE_Msk;
    10d4:	4b1f      	ldr	r3, [pc, #124]	@ (1154 <z_arm_fault+0x84>)
    10d6:	685b      	ldr	r3, [r3, #4]
    10d8:	05db      	lsls	r3, r3, #23
    10da:	0ddd      	lsrs	r5, r3, #23
    10dc:	b662      	cpsie	i
	arch_irq_unlock(0);

	/* Retrieve the Exception Stack Frame (ESF) to be supplied
	 * as argument to the remainder of the fault handling process.
	 */
	esf = get_esf(msp, psp, exc_return, &nested_exc, &context);
    10de:	ab0b      	add	r3, sp, #44	@ 0x2c
    10e0:	9300      	str	r3, [sp, #0]
    10e2:	2336      	movs	r3, #54	@ 0x36
    10e4:	446b      	add	r3, sp
    10e6:	f7ff ff77 	bl	fd8 <get_esf>
    10ea:	1e04      	subs	r4, r0, #0
	if (esf == NULL) {
    10ec:	d00d      	beq.n	110a <z_arm_fault+0x3a>
#endif /* CONFIG_ARM_SECURE_FIRMWARE */
#endif /* CONFIG_EXTRA_EXCEPTION_INFO && CONFIG_ARMV7_M_ARMV8_M_MAINLINE */

	z_arm_set_fault_sp(esf, exc_return);

	reason = fault_handle(esf, fault, &recoverable, context.non_secure_esf);
    10ee:	ab0b      	add	r3, sp, #44	@ 0x2c
    10f0:	781b      	ldrb	r3, [r3, #0]
    10f2:	2637      	movs	r6, #55	@ 0x37
    10f4:	446e      	add	r6, sp
    10f6:	0032      	movs	r2, r6
    10f8:	0029      	movs	r1, r5
    10fa:	f005 f91b 	bl	6334 <fault_handle>
    10fe:	0005      	movs	r5, r0
	if (recoverable) {
    1100:	7833      	ldrb	r3, [r6, #0]
    1102:	2b00      	cmp	r3, #0
    1104:	d00b      	beq.n	111e <z_arm_fault+0x4e>
	 */
	if ((exc_return & 0xf000000f) == 0xf000000d) {
		arm_m_exc_tail();
	}
#endif
}
    1106:	b00e      	add	sp, #56	@ 0x38
    1108:	bd70      	pop	{r4, r5, r6, pc}
		PR_FAULT_INFO("ESF could not be retrieved successfully. Shall never occur.");
    110a:	f005 f8d7 	bl	62bc <printk_panic>
    110e:	4812      	ldr	r0, [pc, #72]	@ (1158 <z_arm_fault+0x88>)
    1110:	f005 f8d9 	bl	62c6 <printk>
		z_arm_fatal_error(K_ERR_CPU_EXCEPTION, NULL);
    1114:	2100      	movs	r1, #0
    1116:	2000      	movs	r0, #0
    1118:	f7ff ff1a 	bl	f50 <z_arm_fatal_error>
		return;
    111c:	e7f3      	b.n	1106 <z_arm_fault+0x36>
	memcpy(&esf_copy, esf, sizeof(struct arch_esf));
    111e:	2220      	movs	r2, #32
    1120:	0021      	movs	r1, r4
    1122:	a803      	add	r0, sp, #12
    1124:	f002 f846 	bl	31b4 <memcpy>
	if (nested_exc) {
    1128:	2336      	movs	r3, #54	@ 0x36
    112a:	446b      	add	r3, sp
    112c:	781b      	ldrb	r3, [r3, #0]
    112e:	2b00      	cmp	r3, #0
    1130:	d006      	beq.n	1140 <z_arm_fault+0x70>
		if ((esf_copy.basic.xpsr & IPSR_ISR_Msk) == 0) {
    1132:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    1134:	05da      	lsls	r2, r3, #23
    1136:	d107      	bne.n	1148 <z_arm_fault+0x78>
			esf_copy.basic.xpsr |= IPSR_ISR_Msk;
    1138:	4a08      	ldr	r2, [pc, #32]	@ (115c <z_arm_fault+0x8c>)
    113a:	4313      	orrs	r3, r2
    113c:	930a      	str	r3, [sp, #40]	@ 0x28
    113e:	e003      	b.n	1148 <z_arm_fault+0x78>
		esf_copy.basic.xpsr &= ~(IPSR_ISR_Msk);
    1140:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    1142:	0a5b      	lsrs	r3, r3, #9
    1144:	025b      	lsls	r3, r3, #9
    1146:	930a      	str	r3, [sp, #40]	@ 0x28
	z_arm_fatal_error(reason, &esf_copy);
    1148:	a903      	add	r1, sp, #12
    114a:	0028      	movs	r0, r5
    114c:	f7ff ff00 	bl	f50 <z_arm_fatal_error>
    1150:	e7d9      	b.n	1106 <z_arm_fault+0x36>
    1152:	46c0      	nop			@ (mov r8, r8)
    1154:	e000ed00 	.word	0xe000ed00
    1158:	0000762c 	.word	0x0000762c
    115c:	000001ff 	.word	0x000001ff

00001160 <z_arm_fault_init>:
	SCB->CCR |= SCB_CCR_STKOFHFNMIGN_Msk;
#endif /* CONFIG_BUILTIN_STACK_GUARD */
#ifdef CONFIG_TRAP_UNALIGNED_ACCESS
	SCB->CCR |= SCB_CCR_UNALIGN_TRP_Msk;
#else
	SCB->CCR &= ~SCB_CCR_UNALIGN_TRP_Msk;
    1160:	4a02      	ldr	r2, [pc, #8]	@ (116c <z_arm_fault_init+0xc>)
    1162:	6953      	ldr	r3, [r2, #20]
    1164:	2108      	movs	r1, #8
    1166:	438b      	bics	r3, r1
    1168:	6153      	str	r3, [r2, #20]
#endif /* CONFIG_TRAP_UNALIGNED_ACCESS */
}
    116a:	4770      	bx	lr
    116c:	e000ed00 	.word	0xe000ed00

00001170 <z_arm_exc_spurious>:
#else
#error Unknown ARM architecture
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */
SECTION_SUBSEC_FUNC(TEXT,__fault,z_arm_exc_spurious)

	mrs r0, MSP
    1170:	f3ef 8008 	mrs	r0, MSP
	mrs r1, PSP
    1174:	f3ef 8109 	mrs	r1, PSP
	push {r0, lr}
    1178:	b501      	push	{r0, lr}
#elif defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	push {r4-r11}
#endif
	mov  r3, sp /* pointer to _callee_saved_t */
#endif /* CONFIG_EXTRA_EXCEPTION_INFO */
	mov r2, lr /* EXC_RETURN */
    117a:	4672      	mov	r2, lr
	bl z_arm_fault
    117c:	f7ff ffa8 	bl	10d0 <z_arm_fault>
	 * in this routine. Therefore, we can just reset
	 * the MSP to its value prior to entering the function
	 */
	add sp, #40
#endif
	pop {r0, pc}
    1180:	bd01      	pop	{r0, pc}
    1182:	46c0      	nop			@ (mov r8, r8)

00001184 <__start>:
     *
     * Since these scenarios cover most of the cases, we set MSP to
     * z_main_stack here.
     *
     */
    ldr r0, =z_main_stack + CONFIG_MAIN_STACK_SIZE
    1184:	480a      	ldr	r0, [pc, #40]	@ (11b0 <__start+0x2c>)
    msr msp, r0
    1186:	f380 8808 	msr	MSP, r0
    ldr r1, =z_sys_post_kernel
    strb r0, [r1]
#endif /* CONFIG_DEBUG_THREAD_INFO */

#if defined(CONFIG_SOC_RESET_HOOK)
    bl soc_reset_hook
    118a:	f005 f8b9 	bl	6300 <soc_reset_hook>
    bl z_arm_init_arch_hw_at_boot
#endif /* CONFIG_INIT_ARCH_HW_AT_BOOT */

    /* lock interrupts: will get unlocked when switch to main task */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    cpsid i
    118e:	b672      	cpsid	i

    /*
     * Set PSP and use it to boot without using MSP, so that it
     * gets set to z_interrupt_stacks during initialization.
     */
    ldr r0, =z_interrupt_stacks
    1190:	4808      	ldr	r0, [pc, #32]	@ (11b4 <__start+0x30>)
    ldr r1, =CONFIG_ISR_STACK_SIZE + MPU_GUARD_ALIGN_AND_SIZE
    1192:	4909      	ldr	r1, [pc, #36]	@ (11b8 <__start+0x34>)
    adds r0, r0, r1
    1194:	1840      	adds	r0, r0, r1
    msr PSP, r0
    1196:	f380 8809 	msr	PSP, r0
    mrs r0, CONTROL
    119a:	f3ef 8014 	mrs	r0, CONTROL
    movs r1, #(2 | CONTROL_ARM_PAC_MASK | CONTROL_ARM_BTI_MASK)
    119e:	2102      	movs	r1, #2
    orrs r0, r1 /* CONTROL_SPSEL_Msk */
    11a0:	4308      	orrs	r0, r1
    msr CONTROL, r0
    11a2:	f380 8814 	msr	CONTROL, r0
    /*
     * When changing the stack pointer, software must use an ISB instruction
     * immediately after the MSR instruction. This ensures that instructions
     * after the ISB instruction execute using the new stack pointer.
     */
    isb
    11a6:	f3bf 8f6f 	isb	sy
    /*
     * 'bl' jumps the furthest of the branch instructions that are
     * supported on all platforms. So it is used when jumping to z_prep_c
     * (even though we do not intend to return).
     */
    bl z_prep_c
    11aa:	f005 f8dd 	bl	6368 <z_prep_c>
    11ae:	0000      	.short	0x0000
    ldr r0, =z_main_stack + CONFIG_MAIN_STACK_SIZE
    11b0:	20000a00 	.word	0x20000a00
    ldr r0, =z_interrupt_stacks
    11b4:	1ffffd00 	.word	0x1ffffd00
    ldr r1, =CONFIG_ISR_STACK_SIZE + MPU_GUARD_ALIGN_AND_SIZE
    11b8:	00000800 	.word	0x00000800

000011bc <z_arm_svc>:
SECTION_FUNC(TEXT, z_arm_svc)
  /* Use EXC_RETURN state to find out if stack frame is on the
   * MSP or PSP
   */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
  movs r0, #_EXC_RETURN_SPSEL_Msk
    11bc:	2004      	movs	r0, #4
  mov r1, lr
    11be:	4671      	mov	r1, lr
  tst r1, r0
    11c0:	4201      	tst	r1, r0
  beq .L_stack_frame_msp
    11c2:	d002      	beq.n	11ca <z_arm_svc+0xe>
  mrs r0, PSP
    11c4:	f3ef 8009 	mrs	r0, PSP
  bne .L_stack_frame_endif
    11c8:	d101      	bne.n	11ce <z_arm_svc+0x12>
.L_stack_frame_msp:
  mrs r0, MSP
    11ca:	f3ef 8008 	mrs	r0, MSP
#endif


    /* Figure out what SVC call number was invoked */

    ldr r1, [r0, #24]   /* grab address of PC from stack frame */
    11ce:	6981      	ldr	r1, [r0, #24]
    /* SVC is a two-byte instruction, point to it and read the
     * SVC number (lower byte of SCV instruction)
     */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    subs r1, r1, #2
    11d0:	3902      	subs	r1, #2
    ldrb r1, [r1]
    11d2:	7809      	ldrb	r1, [r1, #0]
#endif
    bne .L_oops

#endif /* CONFIG_USERSPACE */

    cmp r1, #2
    11d4:	2902      	cmp	r1, #2
    beq .L_oops
    11d6:	d0ff      	beq.n	11d8 <z_arm_svc+0x1c>
#endif

#endif

.L_oops:
    push {r0, lr}
    11d8:	b501      	push	{r0, lr}
#else
#error Unknown ARM architecture
#endif
    mov  r1, sp /* pointer to _callee_saved_t */
#endif /* CONFIG_EXTRA_EXCEPTION_INFO */
    mov r2, lr /* EXC_RETURN */
    11da:	4672      	mov	r2, lr
    bl z_do_kernel_oops
    11dc:	f005 f89c 	bl	6318 <z_do_kernel_oops>

#ifdef CONFIG_USE_SWITCH
    bl arm_m_legacy_exit
#endif

    pop {r0, pc}
    11e0:	bd01      	pop	{r0, pc}
    11e2:	46c0      	nop			@ (mov r8, r8)

000011e4 <__NVIC_SetPriority>:
  \param [in]      IRQn  Interrupt number.
  \param [in]  priority  Priority to set.
  \note    The priority cannot be set for every processor exception.
 */
__STATIC_INLINE void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
    11e4:	b570      	push	{r4, r5, r6, lr}
  if ((int32_t)(IRQn) >= 0)
    11e6:	2800      	cmp	r0, #0
    11e8:	db11      	blt.n	120e <__NVIC_SetPriority+0x2a>
  {
    NVIC->IPR[_IP_IDX(IRQn)]  = ((uint32_t)(NVIC->IPR[_IP_IDX(IRQn)]  & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    11ea:	0883      	lsrs	r3, r0, #2
    11ec:	4d13      	ldr	r5, [pc, #76]	@ (123c <__NVIC_SetPriority+0x58>)
    11ee:	33c0      	adds	r3, #192	@ 0xc0
    11f0:	009b      	lsls	r3, r3, #2
    11f2:	595c      	ldr	r4, [r3, r5]
    11f4:	2203      	movs	r2, #3
    11f6:	4010      	ands	r0, r2
    11f8:	00c0      	lsls	r0, r0, #3
    11fa:	32fc      	adds	r2, #252	@ 0xfc
    11fc:	0016      	movs	r6, r2
    11fe:	4086      	lsls	r6, r0
    1200:	43b4      	bics	r4, r6
       (((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL) << _BIT_SHIFT(IRQn)));
    1202:	0189      	lsls	r1, r1, #6
    1204:	400a      	ands	r2, r1
    1206:	4082      	lsls	r2, r0
    NVIC->IPR[_IP_IDX(IRQn)]  = ((uint32_t)(NVIC->IPR[_IP_IDX(IRQn)]  & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    1208:	4322      	orrs	r2, r4
    120a:	515a      	str	r2, [r3, r5]
  else
  {
    SCB->SHPR[_SHP_IDX(IRQn)] = ((uint32_t)(SCB->SHPR[_SHP_IDX(IRQn)] & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
       (((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL) << _BIT_SHIFT(IRQn)));
  }
}
    120c:	bd70      	pop	{r4, r5, r6, pc}
    SCB->SHPR[_SHP_IDX(IRQn)] = ((uint32_t)(SCB->SHPR[_SHP_IDX(IRQn)] & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    120e:	230f      	movs	r3, #15
    1210:	4003      	ands	r3, r0
    1212:	3b08      	subs	r3, #8
    1214:	089b      	lsrs	r3, r3, #2
    1216:	3306      	adds	r3, #6
    1218:	009b      	lsls	r3, r3, #2
    121a:	4a09      	ldr	r2, [pc, #36]	@ (1240 <__NVIC_SetPriority+0x5c>)
    121c:	4694      	mov	ip, r2
    121e:	4463      	add	r3, ip
    1220:	685c      	ldr	r4, [r3, #4]
    1222:	2203      	movs	r2, #3
    1224:	4010      	ands	r0, r2
    1226:	00c0      	lsls	r0, r0, #3
    1228:	32fc      	adds	r2, #252	@ 0xfc
    122a:	0015      	movs	r5, r2
    122c:	4085      	lsls	r5, r0
    122e:	43ac      	bics	r4, r5
       (((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL) << _BIT_SHIFT(IRQn)));
    1230:	0189      	lsls	r1, r1, #6
    1232:	400a      	ands	r2, r1
    1234:	4082      	lsls	r2, r0
    SCB->SHPR[_SHP_IDX(IRQn)] = ((uint32_t)(SCB->SHPR[_SHP_IDX(IRQn)] & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    1236:	4322      	orrs	r2, r4
    1238:	605a      	str	r2, [r3, #4]
}
    123a:	e7e7      	b.n	120c <__NVIC_SetPriority+0x28>
    123c:	e000e100 	.word	0xe000e100
    1240:	e000ed00 	.word	0xe000ed00

00001244 <arm_irq_enable>:

#if !defined(CONFIG_ARM_CUSTOM_INTERRUPT_CONTROLLER)

void arm_irq_enable(unsigned int irq)
{
	NVIC_EnableIRQ((IRQn_Type)irq);
    1244:	b243      	sxtb	r3, r0
  if ((int32_t)(IRQn) >= 0)
    1246:	0600      	lsls	r0, r0, #24
    1248:	d405      	bmi.n	1256 <arm_irq_enable+0x12>
    NVIC->ISER[0U] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    124a:	221f      	movs	r2, #31
    124c:	401a      	ands	r2, r3
    124e:	2301      	movs	r3, #1
    1250:	4093      	lsls	r3, r2
    1252:	4a01      	ldr	r2, [pc, #4]	@ (1258 <arm_irq_enable+0x14>)
    1254:	6013      	str	r3, [r2, #0]
}
    1256:	4770      	bx	lr
    1258:	e000e100 	.word	0xe000e100

0000125c <relocate_vector_table>:
	/* Copy vector table to its location in SRAM */
	size_t vector_size = (size_t)_vector_end - (size_t)_vector_start;

	arch_early_memcpy(_sram_vector_start, _vector_start, vector_size);
#endif
	SCB->VTOR = VECTOR_ADDRESS & VTOR_MASK;
    125c:	4b04      	ldr	r3, [pc, #16]	@ (1270 <relocate_vector_table+0x14>)
    125e:	22ff      	movs	r2, #255	@ 0xff
    1260:	4393      	bics	r3, r2
    1262:	4a04      	ldr	r2, [pc, #16]	@ (1274 <relocate_vector_table+0x18>)
    1264:	6093      	str	r3, [r2, #8]
  __ASM volatile ("dsb 0xF":::"memory");
    1266:	f3bf 8f4f 	dsb	sy
  __ASM volatile ("isb 0xF":::"memory");
    126a:	f3bf 8f6f 	isb	sy
	barrier_dsync_fence_full();
	barrier_isync_fence_full();
}
    126e:	4770      	bx	lr
    1270:	00000000 	.word	0x00000000
    1274:	e000ed00 	.word	0xe000ed00

00001278 <arch_new_thread>:
 * addresses, we have to unset it manually before storing it in the 'pc' field
 * of the ESF.
 */
void arch_new_thread(struct k_thread *thread, k_thread_stack_t *stack, char *stack_ptr,
		     k_thread_entry_t entry, void *p1, void *p2, void *p3)
{
    1278:	b510      	push	{r4, lr}
#ifdef CONFIG_USE_SWITCH
	thread->switch_handle = arm_m_new_stack((char *)stack, stack_ptr - (char *)stack,
						entry_wrapper, entry, p1, p2, p3);
	thread->arch.iciit_pc = 0;
#else
	struct __basic_sf *iframe = Z_STACK_PTR_TO_FRAME(struct __basic_sf, stack_ptr);
    127a:	3a20      	subs	r2, #32
	if ((thread->base.user_options & K_USER) != 0) {
		setup_priv_stack(thread);
		iframe = Z_STACK_PTR_TO_FRAME(struct __basic_sf, thread->arch.priv_stack_end);
	}
#endif
	iframe->pc = (uint32_t)entry_wrapper;
    127c:	4909      	ldr	r1, [pc, #36]	@ (12a4 <arch_new_thread+0x2c>)
    127e:	6191      	str	r1, [r2, #24]

	/* force ARM mode by clearing LSB of address */
	iframe->pc &= 0xfffffffe;
    1280:	2401      	movs	r4, #1
    1282:	43a1      	bics	r1, r4
    1284:	6191      	str	r1, [r2, #24]
	iframe->a1 = (uint32_t)entry;
    1286:	6013      	str	r3, [r2, #0]
	iframe->a2 = (uint32_t)p1;
    1288:	9b02      	ldr	r3, [sp, #8]
    128a:	6053      	str	r3, [r2, #4]
	iframe->a3 = (uint32_t)p2;
    128c:	9b03      	ldr	r3, [sp, #12]
    128e:	6093      	str	r3, [r2, #8]
	iframe->a4 = (uint32_t)p3;
    1290:	9b04      	ldr	r3, [sp, #16]
    1292:	60d3      	str	r3, [r2, #12]

	iframe->xpsr = 0x01000000UL; /* clear all, thumb bit is 1, even if RO */
    1294:	2380      	movs	r3, #128	@ 0x80
    1296:	045b      	lsls	r3, r3, #17
    1298:	61d3      	str	r3, [r2, #28]

	thread->callee_saved.psp = (uint32_t)iframe;
    129a:	6602      	str	r2, [r0, #96]	@ 0x60
#endif

#ifndef CONFIG_USE_SWITCH
	thread->arch.basepri = 0;
    129c:	23b4      	movs	r3, #180	@ 0xb4
    129e:	2200      	movs	r2, #0
    12a0:	50c2      	str	r2, [r0, r3]
#endif
	/*
	 * initial values in all other registers/thread entries are
	 * irrelevant.
	 */
}
    12a2:	bd10      	pop	{r4, pc}
    12a4:	00000e81 	.word	0x00000e81

000012a8 <arch_switch_to_main_thread>:
#endif /* CONFIG_FPU */
}

void arch_switch_to_main_thread(struct k_thread *main_thread, char *stack_ptr,
				k_thread_entry_t _main)
{
    12a8:	b570      	push	{r4, r5, r6, lr}
    12aa:	000e      	movs	r6, r1
    12ac:	0015      	movs	r5, r2
	z_arm_prepare_switch_to_main();

	z_current_thread_set(main_thread);
    12ae:	4b0c      	ldr	r3, [pc, #48]	@ (12e0 <arch_switch_to_main_thread+0x38>)
    12b0:	6098      	str	r0, [r3, #8]
	 * thread for the first time, as the pointer is only set
	 * during context switching.
	 */
	extern uintptr_t z_arm_tls_ptr;

	z_arm_tls_ptr = main_thread->tls;
    12b2:	23a0      	movs	r3, #160	@ 0xa0
    12b4:	58c2      	ldr	r2, [r0, r3]
    12b6:	4b0b      	ldr	r3, [pc, #44]	@ (12e4 <arch_switch_to_main_thread+0x3c>)
    12b8:	601a      	str	r2, [r3, #0]
#endif

#ifdef CONFIG_INSTRUMENT_THREAD_SWITCHING
	z_thread_mark_switched_in();
    12ba:	f001 f96d 	bl	2598 <z_thread_mark_switched_in>
	 * with the thread entry process.
	 *
	 * When calling arch_irq_unlock_outlined, LR is lost which is fine since
	 * we do not intend to return after calling z_thread_entry.
	 */
	__asm__ volatile("mov   r4,  %0\n" /* force _main to be stored in a register */
    12be:	1c2c      	adds	r4, r5, #0
    12c0:	f386 8809 	msr	PSP, r6
    12c4:	2000      	movs	r0, #0
    12c6:	4b04      	ldr	r3, [pc, #16]	@ (12d8 <arch_switch_to_main_thread+0x30>)
    12c8:	4798      	blx	r3
    12ca:	1c20      	adds	r0, r4, #0
    12cc:	2100      	movs	r1, #0
    12ce:	2200      	movs	r2, #0
    12d0:	2300      	movs	r3, #0
    12d2:	4c02      	ldr	r4, [pc, #8]	@ (12dc <arch_switch_to_main_thread+0x34>)
    12d4:	4720      	bx	r4
    12d6:	0000      	.short	0x0000
    12d8:	00006385 	.word	0x00006385
    12dc:	00000e81 	.word	0x00000e81
#endif
			 :
			 : "r"(_main), "r"(stack_ptr)
			 : "r0", "r1", "r2", "r3", "r4", "ip", "lr", "memory");

	CODE_UNREACHABLE;
    12e0:	1ffff360 	.word	0x1ffff360
    12e4:	1ffff47c 	.word	0x1ffff47c

000012e8 <z_arm_cpu_idle_init>:
 * Only called by arch_kernel_init(). Sets SEVONPEND bit once for the system's
 * duration.
 */
void z_arm_cpu_idle_init(void)
{
	SCB->SCR = SCB_SCR_SEVONPEND_Msk;
    12e8:	4b01      	ldr	r3, [pc, #4]	@ (12f0 <z_arm_cpu_idle_init+0x8>)
    12ea:	2210      	movs	r2, #16
    12ec:	611a      	str	r2, [r3, #16]
}
    12ee:	4770      	bx	lr
    12f0:	e000ed00 	.word	0xe000ed00

000012f4 <z_arm_exc_exit>:
 *
 * See z_arm_int_exit().
 *
 */
Z_GENERIC_SECTION(.text._HandlerModeExit) void z_arm_exc_exit(void)
{
    12f4:	b510      	push	{r4, lr}
#ifdef CONFIG_PREEMPT_ENABLED
	if (_kernel.ready_q.cache != _kernel.cpus->current) {
    12f6:	4b06      	ldr	r3, [pc, #24]	@ (1310 <z_arm_exc_exit+0x1c>)
    12f8:	69da      	ldr	r2, [r3, #28]
    12fa:	689b      	ldr	r3, [r3, #8]
    12fc:	429a      	cmp	r2, r3
    12fe:	d003      	beq.n	1308 <z_arm_exc_exit+0x14>
		/* PENDSVSET is write-one-to-set and writing zero to the
		 * other ICSR bits has no effect, so a plain store is
		 * sufficient (and avoids a read-modify-write that could
		 * write back stale state bits).
		 */
		SCB->ICSR = SCB_ICSR_PENDSVSET_Msk;
    1300:	4b04      	ldr	r3, [pc, #16]	@ (1314 <z_arm_exc_exit+0x20>)
    1302:	2280      	movs	r2, #128	@ 0x80
    1304:	0552      	lsls	r2, r2, #21
    1306:	605a      	str	r2, [r3, #4]
	}
#endif /* CONFIG_PREEMPT_ENABLED */

#ifdef CONFIG_STACK_SENTINEL
	z_check_stack_sentinel();
    1308:	f001 f8c6 	bl	2498 <z_check_stack_sentinel>
#endif /* CONFIG_STACK_SENTINEL */
}
    130c:	bd10      	pop	{r4, pc}
    130e:	46c0      	nop			@ (mov r8, r8)
    1310:	1ffff360 	.word	0x1ffff360
    1314:	e000ed00 	.word	0xe000ed00

00001318 <z_impl_k_thread_abort>:
#include <zephyr/linker/sections.h>
#include <kswap.h>
#include <zephyr/sys/__assert.h>

void z_impl_k_thread_abort(k_tid_t thread)
{
    1318:	b510      	push	{r4, lr}
	SYS_PORT_TRACING_OBJ_FUNC_ENTER(k_thread, abort, thread);

	if (_current == thread) {
    131a:	4b0a      	ldr	r3, [pc, #40]	@ (1344 <z_impl_k_thread_abort+0x2c>)
    131c:	689b      	ldr	r3, [r3, #8]
    131e:	4283      	cmp	r3, r0
    1320:	d002      	beq.n	1328 <z_impl_k_thread_abort+0x10>
			 */
			SCB->SHCSR &= ~SCB_SHCSR_SVCALLPENDED_Msk;
		}
	}

	z_thread_abort(thread);
    1322:	f005 fba8 	bl	6a76 <z_thread_abort>

	SYS_PORT_TRACING_OBJ_FUNC_EXIT(k_thread, abort, thread);
}
    1326:	bd10      	pop	{r4, pc}
    1328:	f3ef 8305 	mrs	r3, IPSR
		if (arch_is_in_isr()) {
    132c:	2b00      	cmp	r3, #0
    132e:	d0f8      	beq.n	1322 <z_impl_k_thread_abort+0xa>
			SCB->ICSR = SCB_ICSR_PENDSVSET_Msk;
    1330:	4b05      	ldr	r3, [pc, #20]	@ (1348 <z_impl_k_thread_abort+0x30>)
    1332:	2280      	movs	r2, #128	@ 0x80
    1334:	0552      	lsls	r2, r2, #21
    1336:	605a      	str	r2, [r3, #4]
			SCB->SHCSR &= ~SCB_SHCSR_SVCALLPENDED_Msk;
    1338:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
    133a:	4904      	ldr	r1, [pc, #16]	@ (134c <z_impl_k_thread_abort+0x34>)
    133c:	400a      	ands	r2, r1
    133e:	625a      	str	r2, [r3, #36]	@ 0x24
    1340:	e7ef      	b.n	1322 <z_impl_k_thread_abort+0xa>
    1342:	46c0      	nop			@ (mov r8, r8)
    1344:	1ffff360 	.word	0x1ffff360
    1348:	e000ed00 	.word	0xe000ed00
    134c:	ffff7fff 	.word	0xffff7fff

00001350 <z_arm_pendsv>:

SECTION_FUNC(TEXT, z_arm_pendsv)

#ifdef CONFIG_INSTRUMENT_THREAD_SWITCHING
    /* Register the context switch */
    push {r0, lr}
    1350:	b501      	push	{r0, lr}
    bl z_thread_mark_switched_out
    1352:	f005 fb72 	bl	6a3a <z_thread_mark_switched_out>
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    pop {r0, r1}
    1356:	bc03      	pop	{r0, r1}
    mov lr, r1
    1358:	468e      	mov	lr, r1
    /* load _kernel into r1 and current k_thread into r2 */
#if defined(CONFIG_SLOW_FLASH_DATA)
    movw r1, #:lower16:_kernel
    movt r1, #:upper16:_kernel
#else
    ldr r1, =_kernel
    135a:	4919      	ldr	r1, [pc, #100]	@ (13c0 <z_arm_pendsv+0x70>)
#endif
    ldr r2, [r1, #_kernel_offset_to_current]
    135c:	688a      	ldr	r2, [r1, #8]
    /* Store LSB of LR (EXC_RETURN) to the thread's 'mode' word. */
    strb lr, [r2, #_thread_offset_to_mode_exc_return]
#endif

    /* addr of callee-saved regs in thread in r0 */
    ldr r0, =_thread_offset_to_callee_saved
    135e:	4819      	ldr	r0, [pc, #100]	@ (13c4 <z_arm_pendsv+0x74>)
    add r0, r2
    1360:	4410      	add	r0, r2

    /* save callee-saved + psp in thread */
    mrs ip, PSP
    1362:	f3ef 8c09 	mrs	ip, PSP

#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    /* Store current r4-r7 */
    stmea r0!, {r4-r7}
    1366:	c0f0      	stmia	r0!, {r4, r5, r6, r7}
    /* copy r8-r12 into r3-r7 */
    mov r3, r8
    1368:	4643      	mov	r3, r8
    mov r4, r9
    136a:	464c      	mov	r4, r9
    mov r5, r10
    136c:	4655      	mov	r5, sl
    mov r6, r11
    136e:	465e      	mov	r6, fp
    mov r7, ip
    1370:	4667      	mov	r7, ip
    /* store r8-12 */
    stmea r0!, {r3-r7}
    1372:	c0f8      	stmia	r0!, {r3, r4, r5, r6, r7}
#error Unknown ARM architecture
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */

    /* Protect the kernel state while we play with the thread lists */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    cpsid i
    1374:	b672      	cpsid	i
     */
#if defined(CONFIG_SLOW_FLASH_DATA)
    movw r7, #:lower16:_SCS_ICSR
    movt r7, #:upper16:_SCS_ICSR
#else
    ldr r7, =_SCS_ICSR
    1376:	4f14      	ldr	r7, [pc, #80]	@ (13c8 <z_arm_pendsv+0x78>)
#endif
    ldr r6, =_SCS_ICSR_UNPENDSV
    1378:	4e14      	ldr	r6, [pc, #80]	@ (13cc <z_arm_pendsv+0x7c>)

    /* _kernel is still in r1 */

    /* fetch the thread to run from the ready queue cache */
    ldr r2, [r1, #_kernel_offset_to_ready_q_cache]
    137a:	69ca      	ldr	r2, [r1, #28]

    str r2, [r1, #_kernel_offset_to_current]
    137c:	608a      	str	r2, [r1, #8]
     * since they were based on the previous kernel state and this
     * has been handled.
     */

    /* _SCS_ICSR is still in r7 and _SCS_ICSR_UNPENDSV in r6 */
    str r6, [r7, #0]
    137e:	603e      	str	r6, [r7, #0]

#if defined(CONFIG_THREAD_LOCAL_STORAGE)
    /* Grab the TLS pointer */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    ldr r4, =_thread_offset_to_tls
    1380:	4c13      	ldr	r4, [pc, #76]	@ (13d0 <z_arm_pendsv+0x80>)
    adds r4, r2, r4
    1382:	1914      	adds	r4, r2, r4
    ldr r0, [r4]
    1384:	6820      	ldr	r0, [r4, #0]

    /* For Cortex-M, store TLS pointer in a global variable,
     * as it lacks the process ID or thread ID register
     * to be used by toolchain to access thread data.
     */
    ldr r4, =z_arm_tls_ptr
    1386:	4c13      	ldr	r4, [pc, #76]	@ (13d4 <z_arm_pendsv+0x84>)
    str r0, [r4]
    1388:	6020      	str	r0, [r4, #0]
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE) && (_thread_offset_to_basepri > 124)
    /* Doing it this way since the offset to thread->arch.basepri can in
     * some configurations be larger than the maximum of 124 for ldr/str
     * immediate offsets.
     */
    ldr r4, =_thread_offset_to_basepri
    138a:	4c13      	ldr	r4, [pc, #76]	@ (13d8 <z_arm_pendsv+0x88>)
    adds r4, r2, r4
    138c:	1914      	adds	r4, r2, r4

    ldr r0, [r4]
    138e:	6820      	ldr	r0, [r4, #0]
    movs.n r3, #0
    1390:	2300      	movs	r3, #0
    str r3, [r4]
    1392:	6023      	str	r3, [r4, #0]
     * maps to PRIMASK.
     *
     * Only enable interrupts if value is 0, meaning interrupts
     * were enabled before irq_lock was called.
     */
    cmp r0, #0
    1394:	2800      	cmp	r0, #0
    bne .L_thread_irq_disabled
    1396:	d100      	bne.n	139a <z_arm_pendsv+0x4a>
    cpsie i
    1398:	b662      	cpsie	i
     */
    isb

#endif

    ldr r4, =_thread_offset_to_callee_saved
    139a:	4c0a      	ldr	r4, [pc, #40]	@ (13c4 <z_arm_pendsv+0x74>)
    adds r0, r2, r4
    139c:	1910      	adds	r0, r2, r4

    /* restore r4-r12 for new thread */
    /* first restore r8-r12 located after r4-r7 (4*4bytes) */
    adds r0, #16
    139e:	3010      	adds	r0, #16
    ldmia r0!, {r3-r7}
    13a0:	c8f8      	ldmia	r0!, {r3, r4, r5, r6, r7}
    /* move to correct registers */
    mov r8, r3
    13a2:	4698      	mov	r8, r3
    mov r9, r4
    13a4:	46a1      	mov	r9, r4
    mov r10, r5
    13a6:	46aa      	mov	sl, r5
    mov r11, r6
    13a8:	46b3      	mov	fp, r6
    mov ip, r7
    13aa:	46bc      	mov	ip, r7
    /* restore r4-r7, go back 9*4 bytes to the start of the stored block */
    subs r0, #36
    13ac:	3824      	subs	r0, #36	@ 0x24
    ldmia r0!, {r4-r7}
    13ae:	c8f0      	ldmia	r0!, {r4, r5, r6, r7}
    ldmia r0, {r4-r11, ip}
#else
#error Unknown ARM architecture
#endif /* CONFIG_ARMV6_M_ARMV8_M_BASELINE */

    msr PSP, ip
    13b0:	f38c 8809 	msr	PSP, ip
    pop {r2, lr}
#endif /* CONFIG_BUILTIN_STACK_GUARD */

#ifdef CONFIG_INSTRUMENT_THREAD_SWITCHING
    /* Register the context switch */
    push {r0, lr}
    13b4:	b501      	push	{r0, lr}
    bl z_thread_mark_switched_in
    13b6:	f001 f8ef 	bl	2598 <z_thread_mark_switched_in>
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
    pop {r0, r1}
    13ba:	bc03      	pop	{r0, r1}
    mov lr, r1
    13bc:	468e      	mov	lr, r1
#endif /* CONFIG_INSTRUMENT_THREAD_SWITCHING */

    /*
     * Cortex-M: return from PendSV exception
     */
    bx lr
    13be:	4770      	bx	lr
    ldr r1, =_kernel
    13c0:	1ffff360 	.word	0x1ffff360
    ldr r0, =_thread_offset_to_callee_saved
    13c4:	00000040 	.word	0x00000040
    ldr r7, =_SCS_ICSR
    13c8:	e000ed04 	.word	0xe000ed04
    ldr r6, =_SCS_ICSR_UNPENDSV
    13cc:	08000000 	.word	0x08000000
    ldr r4, =_thread_offset_to_tls
    13d0:	000000a0 	.word	0x000000a0
    ldr r4, =z_arm_tls_ptr
    13d4:	1ffff47c 	.word	0x1ffff47c
    ldr r4, =_thread_offset_to_basepri
    13d8:	000000b4 	.word	0x000000b4

000013dc <__NVIC_SetPriority>:
{
    13dc:	b570      	push	{r4, r5, r6, lr}
  if ((int32_t)(IRQn) >= 0)
    13de:	2800      	cmp	r0, #0
    13e0:	db11      	blt.n	1406 <__NVIC_SetPriority+0x2a>
    NVIC->IPR[_IP_IDX(IRQn)]  = ((uint32_t)(NVIC->IPR[_IP_IDX(IRQn)]  & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    13e2:	0883      	lsrs	r3, r0, #2
    13e4:	4d13      	ldr	r5, [pc, #76]	@ (1434 <__NVIC_SetPriority+0x58>)
    13e6:	33c0      	adds	r3, #192	@ 0xc0
    13e8:	009b      	lsls	r3, r3, #2
    13ea:	595c      	ldr	r4, [r3, r5]
    13ec:	2203      	movs	r2, #3
    13ee:	4010      	ands	r0, r2
    13f0:	00c0      	lsls	r0, r0, #3
    13f2:	32fc      	adds	r2, #252	@ 0xfc
    13f4:	0016      	movs	r6, r2
    13f6:	4086      	lsls	r6, r0
    13f8:	43b4      	bics	r4, r6
       (((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL) << _BIT_SHIFT(IRQn)));
    13fa:	0189      	lsls	r1, r1, #6
    13fc:	400a      	ands	r2, r1
    13fe:	4082      	lsls	r2, r0
    NVIC->IPR[_IP_IDX(IRQn)]  = ((uint32_t)(NVIC->IPR[_IP_IDX(IRQn)]  & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    1400:	4322      	orrs	r2, r4
    1402:	515a      	str	r2, [r3, r5]
}
    1404:	bd70      	pop	{r4, r5, r6, pc}
    SCB->SHPR[_SHP_IDX(IRQn)] = ((uint32_t)(SCB->SHPR[_SHP_IDX(IRQn)] & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    1406:	230f      	movs	r3, #15
    1408:	4003      	ands	r3, r0
    140a:	3b08      	subs	r3, #8
    140c:	089b      	lsrs	r3, r3, #2
    140e:	3306      	adds	r3, #6
    1410:	009b      	lsls	r3, r3, #2
    1412:	4a09      	ldr	r2, [pc, #36]	@ (1438 <__NVIC_SetPriority+0x5c>)
    1414:	4694      	mov	ip, r2
    1416:	4463      	add	r3, ip
    1418:	685c      	ldr	r4, [r3, #4]
    141a:	2203      	movs	r2, #3
    141c:	4010      	ands	r0, r2
    141e:	00c0      	lsls	r0, r0, #3
    1420:	32fc      	adds	r2, #252	@ 0xfc
    1422:	0015      	movs	r5, r2
    1424:	4085      	lsls	r5, r0
    1426:	43ac      	bics	r4, r5
       (((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL) << _BIT_SHIFT(IRQn)));
    1428:	0189      	lsls	r1, r1, #6
    142a:	400a      	ands	r2, r1
    142c:	4082      	lsls	r2, r0
    SCB->SHPR[_SHP_IDX(IRQn)] = ((uint32_t)(SCB->SHPR[_SHP_IDX(IRQn)] & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    142e:	4322      	orrs	r2, r4
    1430:	605a      	str	r2, [r3, #4]
}
    1432:	e7e7      	b.n	1404 <__NVIC_SetPriority+0x28>
    1434:	e000e100 	.word	0xe000e100
    1438:	e000ed00 	.word	0xe000ed00

0000143c <_isr_wrapper>:
 * z_arm_pendsv()) and pends the PendSV exception if so: the latter will
 * perform the context switch itself.
 *
 */
void _isr_wrapper(void)
{
    143c:	b510      	push	{r4, lr}
    143e:	f3ef 8205 	mrs	r2, IPSR
#endif
	/* _sw_isr_table does not map the core system exceptions,
	 * which take first 16 interrupt numbers, only the external
	 * interrupts.
	 */
	irq_number -= 16;
    1442:	3a10      	subs	r2, #16

#if defined(CONFIG_GEN_SW_ISR_TABLE_ARRAY)
	const struct _isr_table_entry *entry = &_sw_isr_table[irq_number];
	(entry->isr)(entry->arg);
    1444:	4b04      	ldr	r3, [pc, #16]	@ (1458 <_isr_wrapper+0x1c>)
    1446:	00d2      	lsls	r2, r2, #3
    1448:	58d0      	ldr	r0, [r2, r3]
    144a:	189b      	adds	r3, r3, r2
    144c:	685b      	ldr	r3, [r3, #4]
    144e:	4798      	blx	r3

#ifdef CONFIG_TRACING_ISR
	sys_trace_isr_exit();
#endif /* CONFIG_TRACING_ISR */

	z_arm_exc_exit();
    1450:	f7ff ff50 	bl	12f4 <z_arm_exc_exit>
}
    1454:	bd10      	pop	{r4, pc}
    1456:	46c0      	nop			@ (mov r8, r8)
    1458:	00006e5c 	.word	0x00006e5c

0000145c <__aeabi_read_tp>:
 *
 * This can only be guaranteed by either implementing a naked C function with
 * inline assembly, or plain assembly.
 */
SECTION_FUNC(TEXT, __aeabi_read_tp)
	ldr r0, =z_arm_tls_ptr
    145c:	4801      	ldr	r0, [pc, #4]	@ (1464 <__aeabi_read_tp+0x8>)
	ldr r0, [r0]
    145e:	6800      	ldr	r0, [r0, #0]
	bx lr
    1460:	4770      	bx	lr
    1462:	0000      	.short	0x0000
	ldr r0, =z_arm_tls_ptr
    1464:	1ffff47c 	.word	0x1ffff47c

00001468 <z_impl_zephyr_fputc>:
#include "picolibc-hooks.h"

static LIBC_DATA int (*_stdout_hook)(int);

int z_impl_zephyr_fputc(int a, FILE *out)
{
    1468:	b510      	push	{r4, lr}
	(*_stdout_hook)(a);
    146a:	4b02      	ldr	r3, [pc, #8]	@ (1474 <z_impl_zephyr_fputc+0xc>)
    146c:	681b      	ldr	r3, [r3, #0]
    146e:	4798      	blx	r3
	ARG_UNUSED(out);
	return 0;
}
    1470:	2000      	movs	r0, #0
    1472:	bd10      	pop	{r4, pc}
    1474:	1ffff480 	.word	0x1ffff480

00001478 <__stdout_hook_install>:
FILE *const stdout = &__stdout;
STDIO_ALIAS(stderr);

void __stdout_hook_install(int (*hook)(int c))
{
	_stdout_hook = hook;
    1478:	4b03      	ldr	r3, [pc, #12]	@ (1488 <__stdout_hook_install+0x10>)
    147a:	6018      	str	r0, [r3, #0]
	__stdout.flags |= _FDEV_SETUP_WRITE;
    147c:	4a03      	ldr	r2, [pc, #12]	@ (148c <__stdout_hook_install+0x14>)
    147e:	7893      	ldrb	r3, [r2, #2]
    1480:	2102      	movs	r1, #2
    1482:	430b      	orrs	r3, r1
    1484:	7093      	strb	r3, [r2, #2]
}
    1486:	4770      	bx	lr
    1488:	1ffff480 	.word	0x1ffff480
    148c:	1ffff00c 	.word	0x1ffff00c

00001490 <malloc_prepare>:
	return aligned_alloc(alignment, size);
}
#endif

static int malloc_prepare(void)
{
    1490:	b510      	push	{r4, lr}
			break;
		}
		heap_size >>= 1;
	}
#else
	heap_base = UINT_TO_POINTER(HEAP_BASE);
    1492:	4909      	ldr	r1, [pc, #36]	@ (14b8 <malloc_prepare+0x28>)
    1494:	2307      	movs	r3, #7
    1496:	4399      	bics	r1, r3
	heap_size = HEAP_SIZE;
    1498:	4b08      	ldr	r3, [pc, #32]	@ (14bc <malloc_prepare+0x2c>)
    149a:	18ca      	adds	r2, r1, r3
    149c:	2380      	movs	r3, #128	@ 0x80
    149e:	01db      	lsls	r3, r3, #7
    14a0:	429a      	cmp	r2, r3
    14a2:	d203      	bcs.n	14ac <malloc_prepare+0x1c>
    14a4:	4a06      	ldr	r2, [pc, #24]	@ (14c0 <malloc_prepare+0x30>)
    14a6:	1a52      	subs	r2, r2, r1
#endif

	if (heap_size < Z_HEAP_MIN_SIZE) {
    14a8:	2a2b      	cmp	r2, #43	@ 0x2b
    14aa:	d801      	bhi.n	14b0 <malloc_prepare+0x20>
	}

	sys_heap_init(&z_malloc_heap, heap_base, heap_size);

	return 0;
}
    14ac:	2000      	movs	r0, #0
    14ae:	bd10      	pop	{r4, pc}
	sys_heap_init(&z_malloc_heap, heap_base, heap_size);
    14b0:	4804      	ldr	r0, [pc, #16]	@ (14c4 <malloc_prepare+0x34>)
    14b2:	f004 feab 	bl	620c <sys_heap_init>
	return 0;
    14b6:	e7f9      	b.n	14ac <malloc_prepare+0x1c>
    14b8:	20000a07 	.word	0x20000a07
    14bc:	e0001000 	.word	0xe0001000
    14c0:	20003000 	.word	0x20003000
    14c4:	1ffff484 	.word	0x1ffff484

000014c8 <mcux_sim_on>:
	return 0;
}

static int mcux_sim_on(const struct device *dev,
		       clock_control_subsys_t sub_system)
{
    14c8:	b570      	push	{r4, r5, r6, lr}
	uint32_t clk = mcux_sim_subsys_id(sub_system);
	uint32_t gate_offset = KINETIS_SIM_CLOCK_DECODE_GATE_OFFSET(clk);
    14ca:	0ccd      	lsrs	r5, r1, #19
	uint32_t gate_bit = KINETIS_SIM_CLOCK_DECODE_GATE_BIT(clk);
    14cc:	0b8c      	lsrs	r4, r1, #14

	int ret;

	ARG_UNUSED(dev);

	ret = mcux_sim_validate_gate_offset(gate_offset);
    14ce:	0028      	movs	r0, r5
    14d0:	f004 ff8b 	bl	63ea <mcux_sim_validate_gate_offset>
	if (ret) {
    14d4:	2800      	cmp	r0, #0
    14d6:	d10b      	bne.n	14f0 <mcux_sim_on+0x28>
		return ret;
	}

	if (gate_offset == 0U) {
    14d8:	2d00      	cmp	r5, #0
    14da:	d009      	beq.n	14f0 <mcux_sim_on+0x28>
    uint32_t regAddr = SIM_BASE + CLK_GATE_ABSTRACT_REG_OFFSET((uint32_t)name);
    14dc:	4b05      	ldr	r3, [pc, #20]	@ (14f4 <mcux_sim_on+0x2c>)
    14de:	469c      	mov	ip, r3
    14e0:	4465      	add	r5, ip
    (*(volatile uint32_t *)regAddr) |= (1U << CLK_GATE_ABSTRACT_BITS_SHIFT((uint32_t)name));
    14e2:	682b      	ldr	r3, [r5, #0]
    14e4:	211f      	movs	r1, #31
    14e6:	4021      	ands	r1, r4
    14e8:	2201      	movs	r2, #1
    14ea:	408a      	lsls	r2, r1
    14ec:	4313      	orrs	r3, r2
    14ee:	602b      	str	r3, [r5, #0]
		return 0;
	}

	CLOCK_EnableClock((clock_ip_name_t)CLK_GATE_DEFINE(gate_offset, gate_bit));
	return 0;
}
    14f0:	bd70      	pop	{r4, r5, r6, pc}
    14f2:	46c0      	nop			@ (mov r8, r8)
    14f4:	40047000 	.word	0x40047000

000014f8 <mcux_sim_off>:

static int mcux_sim_off(const struct device *dev,
			clock_control_subsys_t sub_system)
{
    14f8:	b570      	push	{r4, r5, r6, lr}
	uint32_t clk = mcux_sim_subsys_id(sub_system);
	uint32_t gate_offset = KINETIS_SIM_CLOCK_DECODE_GATE_OFFSET(clk);
    14fa:	0ccd      	lsrs	r5, r1, #19
	uint32_t gate_bit = KINETIS_SIM_CLOCK_DECODE_GATE_BIT(clk);
    14fc:	0b8c      	lsrs	r4, r1, #14

	int ret;

	ARG_UNUSED(dev);

	ret = mcux_sim_validate_gate_offset(gate_offset);
    14fe:	0028      	movs	r0, r5
    1500:	f004 ff73 	bl	63ea <mcux_sim_validate_gate_offset>
	if (ret) {
    1504:	2800      	cmp	r0, #0
    1506:	d10b      	bne.n	1520 <mcux_sim_off+0x28>
		return ret;
	}

	if (gate_offset == 0U) {
    1508:	2d00      	cmp	r5, #0
    150a:	d009      	beq.n	1520 <mcux_sim_off+0x28>
    uint32_t regAddr = SIM_BASE + CLK_GATE_ABSTRACT_REG_OFFSET((uint32_t)name);
    150c:	4b05      	ldr	r3, [pc, #20]	@ (1524 <mcux_sim_off+0x2c>)
    150e:	469c      	mov	ip, r3
    1510:	4465      	add	r5, ip
    (*(volatile uint32_t *)regAddr) &= ~(1U << CLK_GATE_ABSTRACT_BITS_SHIFT((uint32_t)name));
    1512:	682b      	ldr	r3, [r5, #0]
    1514:	211f      	movs	r1, #31
    1516:	4021      	ands	r1, r4
    1518:	2201      	movs	r2, #1
    151a:	408a      	lsls	r2, r1
    151c:	4393      	bics	r3, r2
    151e:	602b      	str	r3, [r5, #0]
		return 0;
	}

	CLOCK_DisableClock((clock_ip_name_t)CLK_GATE_DEFINE(gate_offset, gate_bit));
	return 0;
}
    1520:	bd70      	pop	{r4, r5, r6, pc}
    1522:	46c0      	nop			@ (mov r8, r8)
    1524:	40047000 	.word	0x40047000

00001528 <console_out>:
 *
 * @return The character passed as input.
 */

static int console_out(int c)
{
    1528:	b510      	push	{r4, lr}
    152a:	0004      	movs	r4, r0
		 * function MUST return the byte output.
		 */
		return c;
	}

	if ('\n' == c) {
    152c:	280a      	cmp	r0, #10
    152e:	d006      	beq.n	153e <console_out+0x16>
		uart_poll_out(uart_console_dev, '\r');
	}
	uart_poll_out(uart_console_dev, c);
    1530:	b2e1      	uxtb	r1, r4
#endif
}

static inline void z_impl_uart_poll_out(const struct device *dev, unsigned char out_char)
{
	DEVICE_API_GET(uart, dev)->poll_out(dev, out_char);
    1532:	4806      	ldr	r0, [pc, #24]	@ (154c <console_out+0x24>)
    1534:	6883      	ldr	r3, [r0, #8]
    1536:	685b      	ldr	r3, [r3, #4]
    1538:	4798      	blx	r3
#else
	(void)pm_device_runtime_put(uart_console_dev);
#endif

	return c;
}
    153a:	0020      	movs	r0, r4
    153c:	bd10      	pop	{r4, pc}
    153e:	4803      	ldr	r0, [pc, #12]	@ (154c <console_out+0x24>)
    1540:	6883      	ldr	r3, [r0, #8]
    1542:	685b      	ldr	r3, [r3, #4]
    1544:	210d      	movs	r1, #13
    1546:	4798      	blx	r3
		return;
	}
#endif
	compiler_barrier();
	z_impl_uart_poll_out(dev, out_char);
}
    1548:	e7f2      	b.n	1530 <console_out+0x8>
    154a:	46c0      	nop			@ (mov r8, r8)
    154c:	00006db4 	.word	0x00006db4

00001550 <uart_console_hook_install>:
/**
 * @brief Install printk/stdout hook for UART console output
 */

static void uart_console_hook_install(void)
{
    1550:	b510      	push	{r4, lr}
#if defined(CONFIG_STDOUT_CONSOLE)
	__stdout_hook_install(console_out);
    1552:	4c04      	ldr	r4, [pc, #16]	@ (1564 <uart_console_hook_install+0x14>)
    1554:	0020      	movs	r0, r4
    1556:	f7ff ff8f 	bl	1478 <__stdout_hook_install>
#endif
#if defined(CONFIG_PRINTK)
	__printk_hook_install(console_out);
    155a:	0020      	movs	r0, r4
    155c:	f7ff fc3e 	bl	ddc <__printk_hook_install>
#endif
}
    1560:	bd10      	pop	{r4, pc}
    1562:	46c0      	nop			@ (mov r8, r8)
    1564:	00001529 	.word	0x00001529

00001568 <uart_console_init>:
 * @brief Initialize one UART as the console/debug port
 *
 * @return 0 if successful, otherwise failed.
 */
static int uart_console_init(void)
{
    1568:	b510      	push	{r4, lr}
		union { uintptr_t x; const struct device * val; } parm0 = { .val = dev };
		return (bool) arch_syscall_invoke1(parm0.x, K_SYSCALL_DEVICE_IS_READY);
	}
#endif
	compiler_barrier();
	return z_impl_device_is_ready(dev);
    156a:	4806      	ldr	r0, [pc, #24]	@ (1584 <uart_console_init+0x1c>)
    156c:	f005 fa1c 	bl	69a8 <z_impl_device_is_ready>
	if (!device_is_ready(uart_console_dev)) {
    1570:	2800      	cmp	r0, #0
    1572:	d003      	beq.n	157c <uart_console_init+0x14>
		return -ENODEV;
	}

	uart_console_hook_install();
    1574:	f7ff ffec 	bl	1550 <uart_console_hook_install>

	return 0;
    1578:	2000      	movs	r0, #0
}
    157a:	bd10      	pop	{r4, pc}
		return -ENODEV;
    157c:	2013      	movs	r0, #19
    157e:	4240      	negs	r0, r0
    1580:	e7fb      	b.n	157a <uart_console_init+0x12>
    1582:	46c0      	nop			@ (mov r8, r8)
    1584:	00006db4 	.word	0x00006db4

00001588 <gpio_mcux_port_configure>:

	return 0;
}
#else
static int gpio_mcux_port_configure(const struct device *dev, gpio_pin_t pin, gpio_flags_t flags)
{
    1588:	b530      	push	{r4, r5, lr}
	const struct gpio_mcux_config *config = dev->config;
    158a:	6843      	ldr	r3, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    158c:	685c      	ldr	r4, [r3, #4]
	PORT_Type *port_base = config->port_base;
    158e:	689d      	ldr	r5, [r3, #8]
	uint32_t mask = 0U;
	uint32_t pcr = 0U;

	/* Check for an invalid pin number */
	if (pin >= ARRAY_SIZE(port_base->PCR)) {
    1590:	291f      	cmp	r1, #31
    1592:	d856      	bhi.n	1642 <gpio_mcux_port_configure+0xba>
		return -EINVAL;
	}

	if (((flags & GPIO_INPUT) != 0) && ((flags & GPIO_OUTPUT) != 0)) {
    1594:	20c0      	movs	r0, #192	@ 0xc0
    1596:	0280      	lsls	r0, r0, #10
    1598:	0013      	movs	r3, r2
    159a:	4003      	ands	r3, r0
    159c:	4283      	cmp	r3, r0
    159e:	d053      	beq.n	1648 <gpio_mcux_port_configure+0xc0>
		return -ENOTSUP;
	}

	if ((flags & GPIO_SINGLE_ENDED) != 0) {
    15a0:	0790      	lsls	r0, r2, #30
    15a2:	d454      	bmi.n	164e <gpio_mcux_port_configure+0xc6>
	 *
	 * Start with the GPIO module and set up the pin direction register.
	 * 0 - pin is input, 1 - pin is output
	 */

	switch (flags & GPIO_DIR_MASK) {
    15a4:	2080      	movs	r0, #128	@ 0x80
    15a6:	0240      	lsls	r0, r0, #9
    15a8:	4283      	cmp	r3, r0
    15aa:	d008      	beq.n	15be <gpio_mcux_port_configure+0x36>
    15ac:	2080      	movs	r0, #128	@ 0x80
    15ae:	0280      	lsls	r0, r0, #10
    15b0:	4283      	cmp	r3, r0
    15b2:	d00a      	beq.n	15ca <gpio_mcux_port_configure+0x42>
    15b4:	2b00      	cmp	r3, #0
    15b6:	d01f      	beq.n	15f8 <gpio_mcux_port_configure+0x70>
    15b8:	2086      	movs	r0, #134	@ 0x86
    15ba:	4240      	negs	r0, r0
    15bc:	e03b      	b.n	1636 <gpio_mcux_port_configure+0xae>
	case GPIO_INPUT:
		gpio_base->PDDR &= ~BIT(pin);
    15be:	6963      	ldr	r3, [r4, #20]
    15c0:	2001      	movs	r0, #1
    15c2:	4088      	lsls	r0, r1
    15c4:	4383      	bics	r3, r0
    15c6:	6163      	str	r3, [r4, #20]
		break;
    15c8:	e009      	b.n	15de <gpio_mcux_port_configure+0x56>
	case GPIO_OUTPUT:
		if ((flags & GPIO_OUTPUT_INIT_HIGH) != 0) {
    15ca:	0313      	lsls	r3, r2, #12
    15cc:	d50e      	bpl.n	15ec <gpio_mcux_port_configure+0x64>
			gpio_base->PSOR = BIT(pin);
    15ce:	2301      	movs	r3, #1
    15d0:	408b      	lsls	r3, r1
    15d2:	6063      	str	r3, [r4, #4]
		} else if ((flags & GPIO_OUTPUT_INIT_LOW) != 0) {
			gpio_base->PCOR = BIT(pin);
		}
		gpio_base->PDDR |= BIT(pin);
    15d4:	6963      	ldr	r3, [r4, #20]
    15d6:	2001      	movs	r0, #1
    15d8:	4088      	lsls	r0, r1
    15da:	4303      	orrs	r3, r0
    15dc:	6163      	str	r3, [r4, #20]
	/* Now do the PORT module. Figure out the pullup/pulldown
	 * configuration, but don't write it to the PCR register yet.
	 */
	mask |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;

	if ((flags & GPIO_PULL_UP) != 0) {
    15de:	06d3      	lsls	r3, r2, #27
    15e0:	d416      	bmi.n	1610 <gpio_mcux_port_configure+0x88>
		/* Enable the pull and select the pullup resistor. */
		pcr |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;

	} else if ((flags & GPIO_PULL_DOWN) != 0) {
    15e2:	0693      	lsls	r3, r2, #26
    15e4:	d428      	bmi.n	1638 <gpio_mcux_port_configure+0xb0>
	pcr |= PORT_PCR_MUX(PORT_MUX_GPIO);
    15e6:	2080      	movs	r0, #128	@ 0x80
    15e8:	0040      	lsls	r0, r0, #1
    15ea:	e013      	b.n	1614 <gpio_mcux_port_configure+0x8c>
		} else if ((flags & GPIO_OUTPUT_INIT_LOW) != 0) {
    15ec:	0353      	lsls	r3, r2, #13
    15ee:	d5f1      	bpl.n	15d4 <gpio_mcux_port_configure+0x4c>
			gpio_base->PCOR = BIT(pin);
    15f0:	2301      	movs	r3, #1
    15f2:	408b      	lsls	r3, r1
    15f4:	60a3      	str	r3, [r4, #8]
    15f6:	e7ed      	b.n	15d4 <gpio_mcux_port_configure+0x4c>
		gpio_base->PDDR &= ~BIT(pin);
    15f8:	6963      	ldr	r3, [r4, #20]
    15fa:	2201      	movs	r2, #1
    15fc:	408a      	lsls	r2, r1
    15fe:	4393      	bics	r3, r2
    1600:	6163      	str	r3, [r4, #20]
		port_base->PCR[pin] &= ~mask;
    1602:	0089      	lsls	r1, r1, #2
    1604:	594b      	ldr	r3, [r1, r5]
    1606:	4a15      	ldr	r2, [pc, #84]	@ (165c <gpio_mcux_port_configure+0xd4>)
    1608:	4013      	ands	r3, r2
    160a:	514b      	str	r3, [r1, r5]
		return 0;
    160c:	2000      	movs	r0, #0
    160e:	e012      	b.n	1636 <gpio_mcux_port_configure+0xae>
		pcr |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
    1610:	2004      	movs	r0, #4
    1612:	30ff      	adds	r0, #255	@ 0xff
		pcr |= PORT_PCR_PE_MASK;
	}

#if defined(FSL_FEATURE_PORT_HAS_DRIVE_STRENGTH) && FSL_FEATURE_PORT_HAS_DRIVE_STRENGTH
	/* Determine the drive strength */
	switch (flags & KINETIS_GPIO_DS_MASK) {
    1614:	23c0      	movs	r3, #192	@ 0xc0
    1616:	00db      	lsls	r3, r3, #3
    1618:	0014      	movs	r4, r2
    161a:	401c      	ands	r4, r3
    161c:	421a      	tst	r2, r3
    161e:	d00e      	beq.n	163e <gpio_mcux_port_configure+0xb6>
    1620:	429c      	cmp	r4, r3
    1622:	d117      	bne.n	1654 <gpio_mcux_port_configure+0xcc>
		/* Default is low drive strength */
		mask |= PORT_PCR_DSE_MASK;
		break;
	case KINETIS_GPIO_DS_ALT:
		/* Alternate is high drive strength */
		pcr |= PORT_PCR_DSE_MASK;
    1624:	2340      	movs	r3, #64	@ 0x40
    1626:	4318      	orrs	r0, r3
	mask |= PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;
    1628:	4a0d      	ldr	r2, [pc, #52]	@ (1660 <gpio_mcux_port_configure+0xd8>)
		return -ENOTSUP;
	}
#endif /* defined(FSL_FEATURE_PORT_HAS_DRIVE_STRENGTH) && FSL_FEATURE_PORT_HAS_DRIVE_STRENGTH */

	/* Accessing by pin, we only need to write one PCR register. */
	port_base->PCR[pin] = (port_base->PCR[pin] & ~mask) | pcr;
    162a:	0089      	lsls	r1, r1, #2
    162c:	594b      	ldr	r3, [r1, r5]
    162e:	4393      	bics	r3, r2
    1630:	4303      	orrs	r3, r0
    1632:	514b      	str	r3, [r1, r5]

	return 0;
    1634:	2000      	movs	r0, #0
}
    1636:	bd30      	pop	{r4, r5, pc}
		pcr |= PORT_PCR_PE_MASK;
    1638:	2081      	movs	r0, #129	@ 0x81
    163a:	0040      	lsls	r0, r0, #1
    163c:	e7ea      	b.n	1614 <gpio_mcux_port_configure+0x8c>
	switch (flags & KINETIS_GPIO_DS_MASK) {
    163e:	4a09      	ldr	r2, [pc, #36]	@ (1664 <gpio_mcux_port_configure+0xdc>)
    1640:	e7f3      	b.n	162a <gpio_mcux_port_configure+0xa2>
		return -EINVAL;
    1642:	2016      	movs	r0, #22
    1644:	4240      	negs	r0, r0
    1646:	e7f6      	b.n	1636 <gpio_mcux_port_configure+0xae>
		return -ENOTSUP;
    1648:	2086      	movs	r0, #134	@ 0x86
    164a:	4240      	negs	r0, r0
    164c:	e7f3      	b.n	1636 <gpio_mcux_port_configure+0xae>
		return -ENOTSUP;
    164e:	2086      	movs	r0, #134	@ 0x86
    1650:	4240      	negs	r0, r0
    1652:	e7f0      	b.n	1636 <gpio_mcux_port_configure+0xae>
	switch (flags & KINETIS_GPIO_DS_MASK) {
    1654:	2086      	movs	r0, #134	@ 0x86
    1656:	4240      	negs	r0, r0
    1658:	e7ed      	b.n	1636 <gpio_mcux_port_configure+0xae>
    165a:	46c0      	nop			@ (mov r8, r8)
    165c:	fffff8ff 	.word	0xfffff8ff
    1660:	00000703 	.word	0x00000703
    1664:	00000743 	.word	0x00000743

00001668 <gpio_mcux_pin_interrupt_configure>:
}
#endif /* (GPIO_IRQ_CTRL == GPIO_IRQ_CTRL_BY_GPIO) */

static int gpio_mcux_pin_interrupt_configure(const struct device *dev, gpio_pin_t pin,
					     enum gpio_int_mode mode, enum gpio_int_trig trig)
{
    1668:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    166a:	000c      	movs	r4, r1
	const struct gpio_mcux_config *config = dev->config;
    166c:	6841      	ldr	r1, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    166e:	684f      	ldr	r7, [r1, #4]

#if (GPIO_IRQ_CTRL == GPIO_IRQ_CTRL_BY_PORT)
	PORT_Type *port_base = config->port_base;
    1670:	688d      	ldr	r5, [r1, #8]

	/* Check for an invalid pin number */
	if (pin >= ARRAY_SIZE(port_base->PCR)) {
    1672:	2c1f      	cmp	r4, #31
    1674:	d815      	bhi.n	16a2 <gpio_mcux_pin_interrupt_configure+0x3a>
		return -EINVAL;
	}
#endif /* (GPIO_IRQ_CTRL == GPIO_IRQ_CTRL_BY_PORT) */

	/* Check for an invalid pin configuration */
	if ((mode != GPIO_INT_MODE_DISABLED) && ((gpio_base->PDDR & BIT(pin)) != 0)) {
    1676:	2680      	movs	r6, #128	@ 0x80
    1678:	03b6      	lsls	r6, r6, #14
    167a:	42b2      	cmp	r2, r6
    167c:	d006      	beq.n	168c <gpio_mcux_pin_interrupt_configure+0x24>
    167e:	697e      	ldr	r6, [r7, #20]
    1680:	40e6      	lsrs	r6, r4
    1682:	07f6      	lsls	r6, r6, #31
    1684:	d410      	bmi.n	16a8 <gpio_mcux_pin_interrupt_configure+0x40>
		return -EINVAL;
	}

	/* Check if GPIO port supports interrupts */
	if ((mode != GPIO_INT_MODE_DISABLED) && ((config->flags & GPIO_INT_ENABLE) == 0U)) {
    1686:	68c9      	ldr	r1, [r1, #12]
    1688:	0249      	lsls	r1, r1, #9
    168a:	d510      	bpl.n	16ae <gpio_mcux_pin_interrupt_configure+0x46>
#if (GPIO_IRQ_CTRL == GPIO_IRQ_CTRL_BY_GPIO)
	uint32_t icr = get_gpio_icr_irqc_value_from_flags(dev, pin, mode, trig);

	gpio_base->ICR[pin] = (gpio_base->ICR[pin] & ~GPIO_ICR_IRQC_MASK) | icr;
#elif (GPIO_IRQ_CTRL == GPIO_IRQ_CTRL_BY_PORT)
	uint32_t pcr = get_port_pcr_irqc_value_from_flags(dev, pin, mode, trig);
    168c:	0021      	movs	r1, r4
    168e:	f004 ff67 	bl	6560 <get_port_pcr_irqc_value_from_flags>

	port_base->PCR[pin] = (port_base->PCR[pin] & ~PORT_PCR_IRQC_MASK) | pcr;
    1692:	00a4      	lsls	r4, r4, #2
    1694:	5963      	ldr	r3, [r4, r5]
    1696:	4a07      	ldr	r2, [pc, #28]	@ (16b4 <gpio_mcux_pin_interrupt_configure+0x4c>)
    1698:	4013      	ands	r3, r2
    169a:	4303      	orrs	r3, r0
    169c:	5163      	str	r3, [r4, r5]
#endif /* GPIO_IRQ_CTRL */

	return 0;
    169e:	2000      	movs	r0, #0
}
    16a0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		return -EINVAL;
    16a2:	2016      	movs	r0, #22
    16a4:	4240      	negs	r0, r0
    16a6:	e7fb      	b.n	16a0 <gpio_mcux_pin_interrupt_configure+0x38>
		return -EINVAL;
    16a8:	2016      	movs	r0, #22
    16aa:	4240      	negs	r0, r0
    16ac:	e7f8      	b.n	16a0 <gpio_mcux_pin_interrupt_configure+0x38>
		return -ENOTSUP;
    16ae:	2086      	movs	r0, #134	@ 0x86
    16b0:	4240      	negs	r0, r0
    16b2:	e7f5      	b.n	16a0 <gpio_mcux_pin_interrupt_configure+0x38>
    16b4:	fff0ffff 	.word	0xfff0ffff

000016b8 <pinctrl_mcux_init>:
		return -ENOTSUP;
	}
}

static int pinctrl_mcux_init(const struct device *dev)
{
    16b8:	b510      	push	{r4, lr}
    16ba:	0004      	movs	r4, r0
	const struct pinctrl_mcux_config *config = dev->config;
    16bc:	6843      	ldr	r3, [r0, #4]
	int err;

	if (!device_is_ready(config->clock_dev)) {
    16be:	6818      	ldr	r0, [r3, #0]
    16c0:	f005 f972 	bl	69a8 <z_impl_device_is_ready>
    16c4:	2800      	cmp	r0, #0
    16c6:	d00a      	beq.n	16de <pinctrl_mcux_init+0x26>
	 * any of them runs. Do it here rather than leaving it to TURN_ON: the
	 * block is powered at boot, but a device sitting in a power domain is
	 * only handed TURN_ON once something resumes the domain, which for a
	 * domain that only tracks SoC power states may be much later or never.
	 */
	err = pinctrl_mcux_clock_on(dev);
    16c8:	0020      	movs	r0, r4
    16ca:	f005 f889 	bl	67e0 <pinctrl_mcux_clock_on>
	if (err) {
    16ce:	2800      	cmp	r0, #0
    16d0:	d000      	beq.n	16d4 <pinctrl_mcux_init+0x1c>
		return err;
	}

	return pm_device_driver_init(dev, pinctrl_mcux_pm_action);
}
    16d2:	bd10      	pop	{r4, pc}
	return pm_device_driver_init(dev, pinctrl_mcux_pm_action);
    16d4:	4903      	ldr	r1, [pc, #12]	@ (16e4 <pinctrl_mcux_init+0x2c>)
    16d6:	0020      	movs	r0, r4
    16d8:	f005 f870 	bl	67bc <pm_device_driver_init>
    16dc:	e7f9      	b.n	16d2 <pinctrl_mcux_init+0x1a>
		return -ENODEV;
    16de:	2013      	movs	r0, #19
    16e0:	4240      	negs	r0, r0
    16e2:	e7f6      	b.n	16d2 <pinctrl_mcux_init+0x1a>
    16e4:	000067ff 	.word	0x000067ff

000016e8 <pinctrl_configure_pins>:
{
    16e8:	b5f0      	push	{r4, r5, r6, r7, lr}
	for (uint8_t i = 0; i < pin_cnt; i++) {
    16ea:	2400      	movs	r4, #0
    16ec:	e012      	b.n	1714 <pinctrl_configure_pins+0x2c>
		PORT_Type *base = ports[PORT(pins[i])];
    16ee:	00a3      	lsls	r3, r4, #2
    16f0:	581b      	ldr	r3, [r3, r0]
    16f2:	0f1d      	lsrs	r5, r3, #28
    16f4:	4a09      	ldr	r2, [pc, #36]	@ (171c <pinctrl_configure_pins+0x34>)
    16f6:	00ad      	lsls	r5, r5, #2
    16f8:	58ae      	ldr	r6, [r5, r2]
		uint8_t pin = PIN(pins[i]);
    16fa:	0d9a      	lsrs	r2, r3, #22
    16fc:	253f      	movs	r5, #63	@ 0x3f
    16fe:	402a      	ands	r2, r5
		uint16_t mux = PINCFG(pins[i]);
    1700:	4d07      	ldr	r5, [pc, #28]	@ (1720 <pinctrl_configure_pins+0x38>)
    1702:	402b      	ands	r3, r5
		base->PCR[pin] = (base->PCR[pin] & (~Z_PINCTRL_NXP_PORT_PCR_MASK)) | mux;
    1704:	0092      	lsls	r2, r2, #2
    1706:	5995      	ldr	r5, [r2, r6]
    1708:	4f06      	ldr	r7, [pc, #24]	@ (1724 <pinctrl_configure_pins+0x3c>)
    170a:	403d      	ands	r5, r7
    170c:	432b      	orrs	r3, r5
    170e:	5193      	str	r3, [r2, r6]
	for (uint8_t i = 0; i < pin_cnt; i++) {
    1710:	3401      	adds	r4, #1
    1712:	b2e4      	uxtb	r4, r4
    1714:	428c      	cmp	r4, r1
    1716:	d3ea      	bcc.n	16ee <pinctrl_configure_pins+0x6>
}
    1718:	2000      	movs	r0, #0
    171a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    171c:	00007954 	.word	0x00007954
    1720:	00000757 	.word	0x00000757
    1724:	fffff8a8 	.word	0xfffff8a8

00001728 <elapsed>:
 *     - and until the current call of the function is completed.
 * - the function is invoked with interrupts disabled.
 */
static uint32_t elapsed(uint32_t *val_out)
{
	uint32_t val1 = SysTick->VAL;	/* A */
    1728:	4b10      	ldr	r3, [pc, #64]	@ (176c <elapsed+0x44>)
    172a:	689a      	ldr	r2, [r3, #8]
	uint32_t ctrl = SysTick->CTRL;	/* B */
    172c:	6819      	ldr	r1, [r3, #0]
	uint32_t val2 = SysTick->VAL;	/* C */
    172e:	689b      	ldr	r3, [r3, #8]
	 * 4) After C we'll see it next time
	 *
	 * So the count in val2 is post-wrap and last_load needs to be
	 * added if and only if COUNTFLAG is set or val1 < val2.
	 */
	if (val_out != NULL) {
    1730:	2800      	cmp	r0, #0
    1732:	d000      	beq.n	1736 <elapsed+0xe>
		*val_out = val2;
    1734:	6003      	str	r3, [r0, #0]
	}

	if (val1 == 0) {
    1736:	2a00      	cmp	r2, #0
    1738:	d101      	bne.n	173e <elapsed+0x16>
		val1 = last_load;
    173a:	4a0d      	ldr	r2, [pc, #52]	@ (1770 <elapsed+0x48>)
    173c:	6812      	ldr	r2, [r2, #0]
	}
	if (val2 == 0) {
    173e:	2b00      	cmp	r3, #0
    1740:	d101      	bne.n	1746 <elapsed+0x1e>
		val2 = last_load;
    1742:	4b0b      	ldr	r3, [pc, #44]	@ (1770 <elapsed+0x48>)
    1744:	681b      	ldr	r3, [r3, #0]
	}

	if ((ctrl & SysTick_CTRL_COUNTFLAG_Msk)
    1746:	03c9      	lsls	r1, r1, #15
    1748:	d401      	bmi.n	174e <elapsed+0x26>
	    || (val1 < val2)) {
    174a:	429a      	cmp	r2, r3
    174c:	d207      	bcs.n	175e <elapsed+0x36>
		overflow_cyc += last_load;
    174e:	4909      	ldr	r1, [pc, #36]	@ (1774 <elapsed+0x4c>)
    1750:	680a      	ldr	r2, [r1, #0]
    1752:	4807      	ldr	r0, [pc, #28]	@ (1770 <elapsed+0x48>)
    1754:	6800      	ldr	r0, [r0, #0]
    1756:	1812      	adds	r2, r2, r0
    1758:	600a      	str	r2, [r1, #0]

		/* We know there was a wrap, but we might not have
		 * seen it in CTRL, so clear it. */
		(void)SysTick->CTRL;
    175a:	4a04      	ldr	r2, [pc, #16]	@ (176c <elapsed+0x44>)
    175c:	6812      	ldr	r2, [r2, #0]
	}

	return (last_load - val2) + overflow_cyc;
    175e:	4a04      	ldr	r2, [pc, #16]	@ (1770 <elapsed+0x48>)
    1760:	6810      	ldr	r0, [r2, #0]
    1762:	1ac0      	subs	r0, r0, r3
    1764:	4b03      	ldr	r3, [pc, #12]	@ (1774 <elapsed+0x4c>)
    1766:	681b      	ldr	r3, [r3, #0]
    1768:	18c0      	adds	r0, r0, r3
}
    176a:	4770      	bx	lr
    176c:	e000e010 	.word	0xe000e010
    1770:	1ffff4dc 	.word	0x1ffff4dc
    1774:	1ffff4d0 	.word	0x1ffff4d0

00001778 <timer_driver_set_reload>:
{
	return cycle_count + elapsed(NULL);
}

static void timer_driver_set_reload(uint32_t cycles)
{
    1778:	b530      	push	{r4, r5, lr}
    177a:	b083      	sub	sp, #12
    177c:	0004      	movs	r4, r0
	 * separately after elapsed() would leave the function-return cycles
	 * counted by neither, i.e. systematically lost drift. The core has
	 * already clamped 'cycles' to [MIN_DELAY, MAX_CYCLES].
	 */
	uint32_t val1;
	uint32_t pending = elapsed(&val1);
    177e:	a801      	add	r0, sp, #4
    1780:	f7ff ffd2 	bl	1728 <elapsed>
	uint32_t old_load = last_load;
    1784:	4a10      	ldr	r2, [pc, #64]	@ (17c8 <timer_driver_set_reload+0x50>)
    1786:	6815      	ldr	r5, [r2, #0]

	cycle_count += pending;
    1788:	4b10      	ldr	r3, [pc, #64]	@ (17cc <timer_driver_set_reload+0x54>)
    178a:	6819      	ldr	r1, [r3, #0]
    178c:	1840      	adds	r0, r0, r1
    178e:	6018      	str	r0, [r3, #0]
	overflow_cyc = 0U;
    1790:	4b0f      	ldr	r3, [pc, #60]	@ (17d0 <timer_driver_set_reload+0x58>)
    1792:	2100      	movs	r1, #0
    1794:	6019      	str	r1, [r3, #0]
	 * last_load (a software shadow) is HW-inert and safe to do before val2.
	 *
	 * COUNTFLAG is not checked here: the caller guarantees this runs faster
	 * than MIN_DELAY cycles, so a wrap cannot be missed.
	 */
	last_load = cycles;
    1796:	6014      	str	r4, [r2, #0]

	uint32_t val2 = SysTick->VAL;
    1798:	4b0e      	ldr	r3, [pc, #56]	@ (17d4 <timer_driver_set_reload+0x5c>)
    179a:	689a      	ldr	r2, [r3, #8]

	SysTick->LOAD = cycles - 1U;
    179c:	3c01      	subs	r4, #1
    179e:	605c      	str	r4, [r3, #4]
	SysTick->VAL = 0U;	/* resets counter, clears COUNTFLAG */
    17a0:	6099      	str	r1, [r3, #8]
	 * while writing the W1C bit.
	 */
#ifdef SCB_ICSR_STTNS_Msk
	SCB->ICSR = (SCB->ICSR & SCB_ICSR_STTNS_Msk) | SCB_ICSR_PENDSTCLR_Msk;
#else
	SCB->ICSR = SCB_ICSR_PENDSTCLR_Msk;
    17a2:	4b0d      	ldr	r3, [pc, #52]	@ (17d8 <timer_driver_set_reload+0x60>)
    17a4:	2180      	movs	r1, #128	@ 0x80
    17a6:	0489      	lsls	r1, r1, #18
    17a8:	6059      	str	r1, [r3, #4]
#endif

	if (val1 < val2) {
    17aa:	9b01      	ldr	r3, [sp, #4]
    17ac:	4293      	cmp	r3, r2
    17ae:	d206      	bcs.n	17be <timer_driver_set_reload+0x46>
		cycle_count += val1 + (old_load - val2);
    17b0:	1aad      	subs	r5, r5, r2
    17b2:	195b      	adds	r3, r3, r5
    17b4:	4a05      	ldr	r2, [pc, #20]	@ (17cc <timer_driver_set_reload+0x54>)
    17b6:	18c3      	adds	r3, r0, r3
    17b8:	6013      	str	r3, [r2, #0]
	} else {
		cycle_count += val1 - val2;
	}
}
    17ba:	b003      	add	sp, #12
    17bc:	bd30      	pop	{r4, r5, pc}
		cycle_count += val1 - val2;
    17be:	1a9b      	subs	r3, r3, r2
    17c0:	4a02      	ldr	r2, [pc, #8]	@ (17cc <timer_driver_set_reload+0x54>)
    17c2:	18c0      	adds	r0, r0, r3
    17c4:	6010      	str	r0, [r2, #0]
}
    17c6:	e7f8      	b.n	17ba <timer_driver_set_reload+0x42>
    17c8:	1ffff4dc 	.word	0x1ffff4dc
    17cc:	1ffff4d4 	.word	0x1ffff4d4
    17d0:	1ffff4d0 	.word	0x1ffff4d0
    17d4:	e000e010 	.word	0xe000e010
    17d8:	e000ed00 	.word	0xe000ed00

000017dc <timer_core_delta_ticks>:
}
#endif

/* Whole ticks elapsed since the last announce, from the current counter. */
static inline timer_core_ticks_t timer_core_delta_ticks(void)
{
    17dc:	b510      	push	{r4, lr}
	timer_core_cycles_t delta = timer_core_cycles_since(timer_core_last_cycle);
    17de:	4b07      	ldr	r3, [pc, #28]	@ (17fc <timer_core_delta_ticks+0x20>)
    17e0:	681c      	ldr	r4, [r3, #0]
	return cycle_count + elapsed(NULL);
    17e2:	2000      	movs	r0, #0
    17e4:	f7ff ffa0 	bl	1728 <elapsed>
    17e8:	4b05      	ldr	r3, [pc, #20]	@ (1800 <timer_core_delta_ticks+0x24>)
    17ea:	681b      	ldr	r3, [r3, #0]
    17ec:	18c0      	adds	r0, r0, r3
	return ((timer_core_cycles_t)timer_driver_cycle_get() - (timer_core_cycles_t)from) &
    17ee:	1b00      	subs	r0, r0, r4
	if (delta > (timer_core_cycles_t)(TIMER_CORE_COUNTER_MASK >> 1)) {
		return 0;
	}
#endif

	return delta / TIMER_CORE_CYC_PER_TICK;
    17f0:	2196      	movs	r1, #150	@ 0x96
    17f2:	0149      	lsls	r1, r1, #5
    17f4:	f7fe fe0c 	bl	410 <__udivsi3>
}
    17f8:	bd10      	pop	{r4, pc}
    17fa:	46c0      	nop			@ (mov r8, r8)
    17fc:	1ffff1d8 	.word	0x1ffff1d8
    1800:	1ffff4d4 	.word	0x1ffff4d4

00001804 <timer_core_arm>:

/* Program the timer for a tick-aligned deadline `ticks` out from the last
 * reported elapsed. Called with the system clock lock held.
 */
static void timer_core_arm(uint32_t ticks)
{
    1804:	b570      	push	{r4, r5, r6, lr}
#if defined(TIMER_CORE_BACKEND_RELOAD)
	uint64_t deadline_tick = timer_core_last_tick + timer_core_last_elapsed + ticks;
    1806:	4b25      	ldr	r3, [pc, #148]	@ (189c <timer_core_arm+0x98>)
    1808:	6819      	ldr	r1, [r3, #0]
    180a:	4c25      	ldr	r4, [pc, #148]	@ (18a0 <timer_core_arm+0x9c>)
    180c:	000a      	movs	r2, r1
    180e:	2300      	movs	r3, #0
    1810:	6865      	ldr	r5, [r4, #4]
    1812:	6824      	ldr	r4, [r4, #0]
    1814:	18a4      	adds	r4, r4, r2
    1816:	415d      	adcs	r5, r3
    1818:	0002      	movs	r2, r0
    181a:	2300      	movs	r3, #0
    181c:	18a4      	adds	r4, r4, r2
    181e:	415d      	adcs	r5, r3

	if (deadline_tick == timer_core_armed_deadline) {
    1820:	4b20      	ldr	r3, [pc, #128]	@ (18a4 <timer_core_arm+0xa0>)
    1822:	681a      	ldr	r2, [r3, #0]
    1824:	685b      	ldr	r3, [r3, #4]
    1826:	42a2      	cmp	r2, r4
    1828:	d00a      	beq.n	1840 <timer_core_arm+0x3c>
		return;
	}
	timer_core_armed_deadline = deadline_tick;
    182a:	4b1e      	ldr	r3, [pc, #120]	@ (18a4 <timer_core_arm+0xa0>)
    182c:	601c      	str	r4, [r3, #0]
    182e:	605d      	str	r5, [r3, #4]
	 * hence an announce that resets the baseline. The COMPARE path gets the same
	 * invariant from clamping its absolute deadline.
	 */
	timer_core_ticks_t span = TIMER_CORE_MAX_SPAN_TICKS;

	if ((ticks <= span) && (timer_core_last_elapsed <= (span - ticks))) {
    1830:	4b1d      	ldr	r3, [pc, #116]	@ (18a8 <timer_core_arm+0xa4>)
    1832:	4298      	cmp	r0, r3
    1834:	d807      	bhi.n	1846 <timer_core_arm+0x42>
    1836:	1a1b      	subs	r3, r3, r0
    1838:	4299      	cmp	r1, r3
    183a:	d81d      	bhi.n	1878 <timer_core_arm+0x74>
		span = timer_core_last_elapsed + ticks;
    183c:	1809      	adds	r1, r1, r0
    183e:	e003      	b.n	1848 <timer_core_arm+0x44>
	if (deadline_tick == timer_core_armed_deadline) {
    1840:	42ab      	cmp	r3, r5
    1842:	d1f2      	bne.n	182a <timer_core_arm+0x26>
    1844:	e029      	b.n	189a <timer_core_arm+0x96>
	timer_core_ticks_t span = TIMER_CORE_MAX_SPAN_TICKS;
    1846:	4918      	ldr	r1, [pc, #96]	@ (18a8 <timer_core_arm+0xa4>)
	}

	timer_core_cycles_t want = (timer_core_cycles_t)span * TIMER_CORE_CYC_PER_TICK;
    1848:	008b      	lsls	r3, r1, #2
    184a:	185b      	adds	r3, r3, r1
    184c:	011d      	lsls	r5, r3, #4
    184e:	1aed      	subs	r5, r5, r3
    1850:	01ad      	lsls	r5, r5, #6
	timer_core_cycles_t done = timer_core_cycles_since(timer_core_last_cycle);
    1852:	4b16      	ldr	r3, [pc, #88]	@ (18ac <timer_core_arm+0xa8>)
    1854:	681c      	ldr	r4, [r3, #0]
    1856:	2000      	movs	r0, #0
    1858:	f7ff ff66 	bl	1728 <elapsed>
    185c:	4b14      	ldr	r3, [pc, #80]	@ (18b0 <timer_core_arm+0xac>)
    185e:	681b      	ldr	r3, [r3, #0]
    1860:	18c0      	adds	r0, r0, r3
	return ((timer_core_cycles_t)timer_driver_cycle_get() - (timer_core_cycles_t)from) &
    1862:	1b03      	subs	r3, r0, r4
	 * Saturate rather than go signed: only the sign of want - done matters, and
	 * its magnitude when positive. A starved ISR, elapsed past the deadline,
	 * lands on the floor below whether the difference is zero or hugely
	 * negative, so zero stands in for every negative value.
	 */
	timer_core_cycles_t rel = (want > done) ? (want - done) : 0;
    1864:	429d      	cmp	r5, r3
    1866:	d909      	bls.n	187c <timer_core_arm+0x78>
    1868:	1a20      	subs	r0, r4, r0
    186a:	1940      	adds	r0, r0, r5

	/* Only where the alarm binds before the counter does; the span clamp
	 * above already holds `rel` inside the counter's reach, so this folds
	 * away for hardware whose alarm covers the whole span.
	 */
	if ((TIMER_CORE_MAX_ARM_CYCLES < TIMER_CORE_MAX_UNANNOUNCED_CYCLES) &&
    186c:	2380      	movs	r3, #128	@ 0x80
    186e:	045b      	lsls	r3, r3, #17
    1870:	4298      	cmp	r0, r3
    1872:	d304      	bcc.n	187e <timer_core_arm+0x7a>
	    (rel > TIMER_CORE_MAX_ARM_CYCLES)) {
		rel = TIMER_CORE_MAX_ARM_CYCLES;
    1874:	480f      	ldr	r0, [pc, #60]	@ (18b4 <timer_core_arm+0xb0>)
    1876:	e002      	b.n	187e <timer_core_arm+0x7a>
	timer_core_ticks_t span = TIMER_CORE_MAX_SPAN_TICKS;
    1878:	490b      	ldr	r1, [pc, #44]	@ (18a8 <timer_core_arm+0xa4>)
    187a:	e7e5      	b.n	1848 <timer_core_arm+0x44>
	timer_core_cycles_t rel = (want > done) ? (want - done) : 0;
    187c:	2000      	movs	r0, #0
	}

	if (rel < TIMER_CORE_ALARM_MIN_CYCLES) {
    187e:	4b0e      	ldr	r3, [pc, #56]	@ (18b8 <timer_core_arm+0xb4>)
    1880:	681b      	ldr	r3, [r3, #0]
    1882:	4283      	cmp	r3, r0
    1884:	d907      	bls.n	1896 <timer_core_arm+0x92>
		 * from a syscall-heavy thread) would push the fire point out
		 * forever and freeze announced time for the storm's duration.
		 * No incoming deadline can need to fire sooner than the floor
		 * anyway.
		 */
		if (timer_core_catchup) {
    1886:	4a0d      	ldr	r2, [pc, #52]	@ (18bc <timer_core_arm+0xb8>)
    1888:	7812      	ldrb	r2, [r2, #0]
    188a:	2a00      	cmp	r2, #0
    188c:	d105      	bne.n	189a <timer_core_arm+0x96>
			return;
		}
		timer_core_catchup = true;
    188e:	4a0b      	ldr	r2, [pc, #44]	@ (18bc <timer_core_arm+0xb8>)
    1890:	2101      	movs	r1, #1
    1892:	7011      	strb	r1, [r2, #0]
		rel = TIMER_CORE_ALARM_MIN_CYCLES;
    1894:	0018      	movs	r0, r3
	}
	timer_driver_set_reload(rel);
    1896:	f7ff ff6f 	bl	1778 <timer_driver_set_reload>
		deadline = timer_core_last_cycle + TIMER_CORE_MAX_ARM_CYCLES;
	}
	timer_core_set_compare(deadline);
#endif
#endif
}
    189a:	bd70      	pop	{r4, r5, r6, pc}
    189c:	1ffff4cc 	.word	0x1ffff4cc
    18a0:	1ffff1d0 	.word	0x1ffff1d0
    18a4:	1ffff000 	.word	0x1ffff000
    18a8:	0006d3a0 	.word	0x0006d3a0
    18ac:	1ffff1d8 	.word	0x1ffff1d8
    18b0:	1ffff4d4 	.word	0x1ffff4d4
    18b4:	00ffffff 	.word	0x00ffffff
    18b8:	1ffff4d8 	.word	0x1ffff4d8
    18bc:	1ffff4fc 	.word	0x1ffff4fc

000018c0 <timer_core_cycle_get>:
 * reconstructs from the baseline's low word, a single atomic load, so it stays
 * lock-free (see sys_clock_cycle_get_32()). Keeping the lock out of the 32-bit
 * getter matters because it is on the thread-usage timestamp hot path.
 */
static inline uint64_t timer_core_cycle_get(void)
{
    18c0:	b570      	push	{r4, r5, r6, lr}
 */
__STATIC_FORCEINLINE uint32_t __get_PRIMASK(void)
{
  uint32_t result;

  __ASM volatile ("MRS %0, primask" : "=r" (result) );
    18c2:	f3ef 8510 	mrs	r5, PRIMASK
__STATIC_FORCEINLINE void __disable_irq(void)
{
  #if defined __aarch64__
    __ASM volatile ("msr daifset, #2" : : : "memory");
  #else
    __ASM volatile ("cpsid i" : : : "memory");
    18c6:	b672      	cpsid	i
#if defined(TIMER_CORE_COUNTER_NONATOMIC) || TIMER_CORE_COUNTER_WIDTH < 64
	k_spinlock_key_t key = sys_clock_lock();
	uint64_t ret = timer_core_last_cycle + timer_core_cycles_since(timer_core_last_cycle);
    18c8:	4c08      	ldr	r4, [pc, #32]	@ (18ec <timer_core_cycle_get+0x2c>)
    18ca:	6826      	ldr	r6, [r4, #0]
    18cc:	2000      	movs	r0, #0
    18ce:	f7ff ff2b 	bl	1728 <elapsed>
    18d2:	4b07      	ldr	r3, [pc, #28]	@ (18f0 <timer_core_cycle_get+0x30>)
    18d4:	681b      	ldr	r3, [r3, #0]
    18d6:	18c3      	adds	r3, r0, r3
    18d8:	1b98      	subs	r0, r3, r6
    18da:	2100      	movs	r1, #0
    18dc:	6822      	ldr	r2, [r4, #0]
    18de:	6863      	ldr	r3, [r4, #4]
    18e0:	1880      	adds	r0, r0, r2
    18e2:	4159      	adcs	r1, r3
	 * *before* the next instruction (see Arm DAI0321A, section 4.7).
	 * The one spot that does need synchronous recognition of a pended
	 * exception, the Cortex-M arch_swap(), inserts its own ISB.
	 */
#if defined(CONFIG_ARMV6_M_ARMV8_M_BASELINE)
	if (key != 0U) {
    18e4:	2d00      	cmp	r5, #0
    18e6:	d100      	bne.n	18ea <timer_core_cycle_get+0x2a>
    __ASM volatile ("cpsie i" : : : "memory");
    18e8:	b662      	cpsie	i
	return ret;
#else
	/* A counter as wide as the count itself needs no extending. */
	return timer_driver_cycle_get();
#endif
}
    18ea:	bd70      	pop	{r4, r5, r6, pc}
    18ec:	1ffff1d8 	.word	0x1ffff1d8
    18f0:	1ffff4d4 	.word	0x1ffff4d4

000018f4 <timer_core_init>:
/* Seed the announce baseline from the current counter and arm the first tick.
 * The driver calls this from its init after connecting the IRQ (and, for a
 * runtime frequency, after setting TIMER_CORE_CYC_PER_TICK).
 */
static inline void timer_core_init(void)
{
    18f4:	b510      	push	{r4, lr}
    18f6:	2000      	movs	r0, #0
    18f8:	f7ff ff16 	bl	1728 <elapsed>
    18fc:	4b0c      	ldr	r3, [pc, #48]	@ (1930 <timer_core_init+0x3c>)
    18fe:	681b      	ldr	r3, [r3, #0]
    1900:	18c0      	adds	r0, r0, r3
		 "a tick is longer than the counter can span");
#endif
	/* The counter read is inside the counter's width, so the tick count it
	 * divides down to and the cycle count that multiplies back up both are too.
	 */
	timer_core_cycles_t seed = timer_driver_cycle_get() / TIMER_CORE_CYC_PER_TICK;
    1902:	2196      	movs	r1, #150	@ 0x96
    1904:	0149      	lsls	r1, r1, #5
    1906:	f7fe fd83 	bl	410 <__udivsi3>

	timer_core_last_tick = seed;
    190a:	4b0a      	ldr	r3, [pc, #40]	@ (1934 <timer_core_init+0x40>)
    190c:	6018      	str	r0, [r3, #0]
    190e:	2100      	movs	r1, #0
    1910:	6059      	str	r1, [r3, #4]
	timer_core_last_cycle = seed * TIMER_CORE_CYC_PER_TICK;
    1912:	0082      	lsls	r2, r0, #2
    1914:	1812      	adds	r2, r2, r0
    1916:	0113      	lsls	r3, r2, #4
    1918:	1a9b      	subs	r3, r3, r2
    191a:	019b      	lsls	r3, r3, #6
    191c:	4a06      	ldr	r2, [pc, #24]	@ (1938 <timer_core_init+0x44>)
    191e:	6013      	str	r3, [r2, #0]
    1920:	6051      	str	r1, [r2, #4]
	timer_core_last_elapsed = 0;
    1922:	4b06      	ldr	r3, [pc, #24]	@ (193c <timer_core_init+0x48>)
    1924:	6019      	str	r1, [r3, #0]
		 * value would stick as the permanent period.
		 */
		return;
	}
#endif
	timer_core_arm(1);
    1926:	2001      	movs	r0, #1
    1928:	f7ff ff6c 	bl	1804 <timer_core_arm>
}
    192c:	bd10      	pop	{r4, pc}
    192e:	46c0      	nop			@ (mov r8, r8)
    1930:	1ffff4d4 	.word	0x1ffff4d4
    1934:	1ffff1d0 	.word	0x1ffff1d0
    1938:	1ffff1d8 	.word	0x1ffff1d8
    193c:	1ffff4cc 	.word	0x1ffff4cc

00001940 <sys_clock_driver_init>:
{
	SysTick->CTRL &= ~SysTick_CTRL_ENABLE_Msk;
}

static int sys_clock_driver_init(void)
{
    1940:	b510      	push	{r4, lr}
    SCB->SHPR[_SHP_IDX(IRQn)] = ((uint32_t)(SCB->SHPR[_SHP_IDX(IRQn)] & ~(0xFFUL << _BIT_SHIFT(IRQn))) |
    1942:	4a0d      	ldr	r2, [pc, #52]	@ (1978 <sys_clock_driver_init+0x38>)
    1944:	6a13      	ldr	r3, [r2, #32]
    1946:	021b      	lsls	r3, r3, #8
    1948:	0a1b      	lsrs	r3, r3, #8
    194a:	6213      	str	r3, [r2, #32]

	NVIC_SetPriority(SysTick_IRQn, SYSTICK_IRQ_PRIO);
	min_delay = systick_min_delay();
    194c:	4b0b      	ldr	r3, [pc, #44]	@ (197c <sys_clock_driver_init+0x3c>)
    194e:	22f0      	movs	r2, #240	@ 0xf0
    1950:	0052      	lsls	r2, r2, #1
    1952:	601a      	str	r2, [r3, #0]
	last_load = TIMER_CORE_CYC_PER_TICK;
    1954:	4b0a      	ldr	r3, [pc, #40]	@ (1980 <sys_clock_driver_init+0x40>)
    1956:	2296      	movs	r2, #150	@ 0x96
    1958:	0152      	lsls	r2, r2, #5
    195a:	601a      	str	r2, [r3, #0]
	overflow_cyc = 0U;
    195c:	4b09      	ldr	r3, [pc, #36]	@ (1984 <sys_clock_driver_init+0x44>)
    195e:	2200      	movs	r2, #0
    1960:	601a      	str	r2, [r3, #0]
	SysTick->LOAD = last_load - 1;
    1962:	4b09      	ldr	r3, [pc, #36]	@ (1988 <sys_clock_driver_init+0x48>)
    1964:	4909      	ldr	r1, [pc, #36]	@ (198c <sys_clock_driver_init+0x4c>)
    1966:	6059      	str	r1, [r3, #4]
	SysTick->VAL = 0; /* resets timer to last_load */
    1968:	609a      	str	r2, [r3, #8]

	uint32_t ctrl_flags = SysTick_CTRL_ENABLE_Msk |
			      SysTick_CTRL_TICKINT_Msk |
			      SYSTICK_CTRL_CLKSOURCE_MSK_GET();

	SysTick->CTRL = ctrl_flags;
    196a:	3207      	adds	r2, #7
    196c:	601a      	str	r2, [r3, #0]

	timer_core_init();
    196e:	f7ff ffc1 	bl	18f4 <timer_core_init>

	return 0;
}
    1972:	2000      	movs	r0, #0
    1974:	bd10      	pop	{r4, pc}
    1976:	46c0      	nop			@ (mov r8, r8)
    1978:	e000ed00 	.word	0xe000ed00
    197c:	1ffff4d8 	.word	0x1ffff4d8
    1980:	1ffff4dc 	.word	0x1ffff4dc
    1984:	1ffff4d0 	.word	0x1ffff4d0
    1988:	e000e010 	.word	0xe000e010
    198c:	000012bf 	.word	0x000012bf

00001990 <timer_core_announce_from>:
{
    1990:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    1992:	0006      	movs	r6, r0
	timer_core_ticks_t dticks = timer_core_delta_ticks();
    1994:	f7ff ff22 	bl	17dc <timer_core_delta_ticks>
	timer_core_last_cycle += (timer_core_cycles_t)dticks * TIMER_CORE_CYC_PER_TICK;
    1998:	0083      	lsls	r3, r0, #2
    199a:	181b      	adds	r3, r3, r0
    199c:	011a      	lsls	r2, r3, #4
    199e:	1ad3      	subs	r3, r2, r3
    19a0:	019c      	lsls	r4, r3, #6
    19a2:	2100      	movs	r1, #0
    19a4:	2500      	movs	r5, #0
    19a6:	4f0f      	ldr	r7, [pc, #60]	@ (19e4 <timer_core_announce_from+0x54>)
    19a8:	683a      	ldr	r2, [r7, #0]
    19aa:	687b      	ldr	r3, [r7, #4]
    19ac:	1912      	adds	r2, r2, r4
    19ae:	416b      	adcs	r3, r5
    19b0:	603a      	str	r2, [r7, #0]
    19b2:	607b      	str	r3, [r7, #4]
	timer_core_last_tick += dticks;
    19b4:	4f0c      	ldr	r7, [pc, #48]	@ (19e8 <timer_core_announce_from+0x58>)
    19b6:	0002      	movs	r2, r0
    19b8:	2300      	movs	r3, #0
    19ba:	683c      	ldr	r4, [r7, #0]
    19bc:	687d      	ldr	r5, [r7, #4]
    19be:	1912      	adds	r2, r2, r4
    19c0:	416b      	adcs	r3, r5
    19c2:	603a      	str	r2, [r7, #0]
    19c4:	607b      	str	r3, [r7, #4]
	timer_core_last_elapsed = 0;
    19c6:	4b09      	ldr	r3, [pc, #36]	@ (19ec <timer_core_announce_from+0x5c>)
    19c8:	6019      	str	r1, [r3, #0]
	timer_core_armed_deadline = UINT64_MAX;
    19ca:	4b09      	ldr	r3, [pc, #36]	@ (19f0 <timer_core_announce_from+0x60>)
    19cc:	2401      	movs	r4, #1
    19ce:	4264      	negs	r4, r4
    19d0:	17e5      	asrs	r5, r4, #31
    19d2:	601c      	str	r4, [r3, #0]
    19d4:	605d      	str	r5, [r3, #4]
	timer_core_catchup = false;
    19d6:	4b07      	ldr	r3, [pc, #28]	@ (19f4 <timer_core_announce_from+0x64>)
    19d8:	7019      	strb	r1, [r3, #0]
	sys_clock_announce_locked(timer_core_ticks_clamp(dticks), key);
    19da:	0031      	movs	r1, r6
    19dc:	f001 fb46 	bl	306c <sys_clock_announce_locked>
}
    19e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    19e2:	46c0      	nop			@ (mov r8, r8)
    19e4:	1ffff1d8 	.word	0x1ffff1d8
    19e8:	1ffff1d0 	.word	0x1ffff1d0
    19ec:	1ffff4cc 	.word	0x1ffff4cc
    19f0:	1ffff000 	.word	0x1ffff000
    19f4:	1ffff4fc 	.word	0x1ffff4fc

000019f8 <sys_clock_elapsed>:
{
    19f8:	b510      	push	{r4, lr}
	timer_core_last_elapsed = timer_core_delta_ticks();
    19fa:	f7ff feef 	bl	17dc <timer_core_delta_ticks>
    19fe:	4b01      	ldr	r3, [pc, #4]	@ (1a04 <_image_ram_size+0x4>)
    1a00:	6018      	str	r0, [r3, #0]
}
    1a02:	bd10      	pop	{r4, pc}
    1a04:	1ffff4cc 	.word	0x1ffff4cc

00001a08 <sys_clock_isr>:
{
    1a08:	b510      	push	{r4, lr}
    1a0a:	f3ef 8410 	mrs	r4, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    1a0e:	b672      	cpsid	i
	elapsed(NULL);
    1a10:	2000      	movs	r0, #0
    1a12:	f7ff fe89 	bl	1728 <elapsed>
	cycle_count += overflow_cyc;
    1a16:	4a07      	ldr	r2, [pc, #28]	@ (1a34 <sys_clock_isr+0x2c>)
    1a18:	6810      	ldr	r0, [r2, #0]
    1a1a:	4907      	ldr	r1, [pc, #28]	@ (1a38 <sys_clock_isr+0x30>)
    1a1c:	680b      	ldr	r3, [r1, #0]
    1a1e:	181b      	adds	r3, r3, r0
    1a20:	600b      	str	r3, [r1, #0]
	overflow_cyc = 0;
    1a22:	2300      	movs	r3, #0
    1a24:	6013      	str	r3, [r2, #0]
	timer_core_announce_from(key);
    1a26:	0020      	movs	r0, r4
    1a28:	f7ff ffb2 	bl	1990 <timer_core_announce_from>
	z_arm_int_exit();
    1a2c:	f7ff fc62 	bl	12f4 <z_arm_exc_exit>
}
    1a30:	bd10      	pop	{r4, pc}
    1a32:	46c0      	nop			@ (mov r8, r8)
    1a34:	1ffff4d0 	.word	0x1ffff4d0
    1a38:	1ffff4d4 	.word	0x1ffff4d4

00001a3c <CLOCK_GetMcgExtClkFreq>:

static uint32_t CLOCK_GetMcgExtClkFreq(void)
{
    /* Please call CLOCK_SetXtal0Freq base on board setting before using OSC0 clock. */
    assert(g_xtal0Freq);
    return g_xtal0Freq;
    1a3c:	4b01      	ldr	r3, [pc, #4]	@ (1a44 <CLOCK_GetMcgExtClkFreq+0x8>)
    1a3e:	6818      	ldr	r0, [r3, #0]
}
    1a40:	4770      	bx	lr
    1a42:	46c0      	nop			@ (mov r8, r8)
    1a44:	1ffff4e4 	.word	0x1ffff4e4

00001a48 <CLOCK_GetFllExtRefClkFreq>:

static uint32_t CLOCK_GetFllExtRefClkFreq(void)
{
    1a48:	b510      	push	{r4, lr}
    /* FllExtRef = McgExtRef / FllExtRefDiv */
    uint8_t frdiv;
    uint8_t range;

    uint32_t freq = CLOCK_GetMcgExtClkFreq();
    1a4a:	f7ff fff7 	bl	1a3c <CLOCK_GetMcgExtClkFreq>

    if (!freq)
    1a4e:	2800      	cmp	r0, #0
    1a50:	d00f      	beq.n	1a72 <CLOCK_GetFllExtRefClkFreq+0x2a>
    {
        return freq;
    }

    frdiv = MCG_C1_FRDIV_VAL;
    1a52:	490f      	ldr	r1, [pc, #60]	@ (1a90 <CLOCK_GetFllExtRefClkFreq+0x48>)
    1a54:	780a      	ldrb	r2, [r1, #0]
    1a56:	08d2      	lsrs	r2, r2, #3
    1a58:	2307      	movs	r3, #7
    1a5a:	4013      	ands	r3, r2
    freq >>= frdiv;
    1a5c:	40d8      	lsrs	r0, r3

    range = MCG_C2_RANGE_VAL;
    1a5e:	784a      	ldrb	r2, [r1, #1]
    1a60:	0912      	lsrs	r2, r2, #4
    /*
       When should use divider 32, 64, 128, 256, 512, 1024, 1280, 1536.
       1. MCG_C7[OSCSEL] selects IRC48M.
       2. MCG_C7[OSCSEL] selects OSC0 and MCG_C2[RANGE] is not 0.
    */
    if (((0U != range)))
    1a62:	0792      	lsls	r2, r2, #30
    1a64:	d005      	beq.n	1a72 <CLOCK_GetFllExtRefClkFreq+0x2a>
    {
        switch (frdiv)
    1a66:	2b06      	cmp	r3, #6
    1a68:	d00c      	beq.n	1a84 <CLOCK_GetFllExtRefClkFreq+0x3c>
    1a6a:	d803      	bhi.n	1a74 <CLOCK_GetFllExtRefClkFreq+0x2c>
    1a6c:	2b05      	cmp	r3, #5
    1a6e:	d80d      	bhi.n	1a8c <CLOCK_GetFllExtRefClkFreq+0x44>
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                freq >>= 5u;
    1a70:	0940      	lsrs	r0, r0, #5
                break;
        }
    }

    return freq;
}
    1a72:	bd10      	pop	{r4, pc}
        switch (frdiv)
    1a74:	2b07      	cmp	r3, #7
    1a76:	d103      	bne.n	1a80 <CLOCK_GetFllExtRefClkFreq+0x38>
                freq /= 12u;
    1a78:	210c      	movs	r1, #12
    1a7a:	f7fe fcc9 	bl	410 <__udivsi3>
                break;
    1a7e:	e7f8      	b.n	1a72 <CLOCK_GetFllExtRefClkFreq+0x2a>
        switch (frdiv)
    1a80:	2000      	movs	r0, #0
    1a82:	e7f6      	b.n	1a72 <CLOCK_GetFllExtRefClkFreq+0x2a>
                freq /= 20u;
    1a84:	2114      	movs	r1, #20
    1a86:	f7fe fcc3 	bl	410 <__udivsi3>
                break;
    1a8a:	e7f2      	b.n	1a72 <CLOCK_GetFllExtRefClkFreq+0x2a>
        switch (frdiv)
    1a8c:	2000      	movs	r0, #0
    1a8e:	e7f0      	b.n	1a72 <CLOCK_GetFllExtRefClkFreq+0x2a>
    1a90:	40064000 	.word	0x40064000

00001a94 <CLOCK_GetInternalRefClkSelectFreq>:

static uint32_t CLOCK_GetInternalRefClkSelectFreq(void)
{
    if (kMCG_IrcSlow == MCG_S_IRCST_VAL)
    1a94:	4b07      	ldr	r3, [pc, #28]	@ (1ab4 <CLOCK_GetInternalRefClkSelectFreq+0x20>)
    1a96:	799b      	ldrb	r3, [r3, #6]
    1a98:	07db      	lsls	r3, r3, #31
    1a9a:	d402      	bmi.n	1aa2 <CLOCK_GetInternalRefClkSelectFreq+0xe>
    {
        /* Slow internal reference clock selected*/
        return s_slowIrcFreq;
    1a9c:	4b06      	ldr	r3, [pc, #24]	@ (1ab8 <CLOCK_GetInternalRefClkSelectFreq+0x24>)
    1a9e:	6818      	ldr	r0, [r3, #0]
    else
    {
        /* Fast internal reference clock selected*/
        return s_fastIrcFreq >> MCG_SC_FCRDIV_VAL;
    }
}
    1aa0:	4770      	bx	lr
        return s_fastIrcFreq >> MCG_SC_FCRDIV_VAL;
    1aa2:	4b04      	ldr	r3, [pc, #16]	@ (1ab4 <CLOCK_GetInternalRefClkSelectFreq+0x20>)
    1aa4:	7a1a      	ldrb	r2, [r3, #8]
    1aa6:	0852      	lsrs	r2, r2, #1
    1aa8:	2307      	movs	r3, #7
    1aaa:	4013      	ands	r3, r2
    1aac:	4a03      	ldr	r2, [pc, #12]	@ (1abc <CLOCK_GetInternalRefClkSelectFreq+0x28>)
    1aae:	6810      	ldr	r0, [r2, #0]
    1ab0:	40d8      	lsrs	r0, r3
    1ab2:	e7f5      	b.n	1aa0 <CLOCK_GetInternalRefClkSelectFreq+0xc>
    1ab4:	40064000 	.word	0x40064000
    1ab8:	1ffff020 	.word	0x1ffff020
    1abc:	1ffff01c 	.word	0x1ffff01c

00001ac0 <CLOCK_GetFllRefClkFreq>:

static uint32_t CLOCK_GetFllRefClkFreq(void)
{
    1ac0:	b510      	push	{r4, lr}
    /* If use external reference clock. */
    if (kMCG_FllSrcExternal == MCG_S_IREFST_VAL)
    1ac2:	4b05      	ldr	r3, [pc, #20]	@ (1ad8 <CLOCK_GetFllRefClkFreq+0x18>)
    1ac4:	799b      	ldrb	r3, [r3, #6]
    1ac6:	06db      	lsls	r3, r3, #27
    1ac8:	d502      	bpl.n	1ad0 <CLOCK_GetFllRefClkFreq+0x10>
        return CLOCK_GetFllExtRefClkFreq();
    }
    /* If use internal reference clock. */
    else
    {
        return s_slowIrcFreq;
    1aca:	4b04      	ldr	r3, [pc, #16]	@ (1adc <CLOCK_GetFllRefClkFreq+0x1c>)
    1acc:	6818      	ldr	r0, [r3, #0]
    }
}
    1ace:	bd10      	pop	{r4, pc}
        return CLOCK_GetFllExtRefClkFreq();
    1ad0:	f7ff ffba 	bl	1a48 <CLOCK_GetFllExtRefClkFreq>
    1ad4:	e7fb      	b.n	1ace <CLOCK_GetFllRefClkFreq+0xe>
    1ad6:	46c0      	nop			@ (mov r8, r8)
    1ad8:	40064000 	.word	0x40064000
    1adc:	1ffff020 	.word	0x1ffff020

00001ae0 <CLOCK_GetOscRangeFromFreq>:

static uint8_t CLOCK_GetOscRangeFromFreq(uint32_t freq)
{
    uint8_t range;

    if (freq <= 39063U)
    1ae0:	4b05      	ldr	r3, [pc, #20]	@ (1af8 <CLOCK_GetOscRangeFromFreq+0x18>)
    1ae2:	4298      	cmp	r0, r3
    1ae4:	d904      	bls.n	1af0 <CLOCK_GetOscRangeFromFreq+0x10>
    {
        range = 0U;
    }
    else if (freq <= 8000000U)
    1ae6:	4b05      	ldr	r3, [pc, #20]	@ (1afc <CLOCK_GetOscRangeFromFreq+0x1c>)
    1ae8:	4298      	cmp	r0, r3
    1aea:	d803      	bhi.n	1af4 <CLOCK_GetOscRangeFromFreq+0x14>
    {
        range = 1U;
    1aec:	2001      	movs	r0, #1
    1aee:	e000      	b.n	1af2 <CLOCK_GetOscRangeFromFreq+0x12>
        range = 0U;
    1af0:	2000      	movs	r0, #0
    {
        range = 2U;
    }

    return range;
}
    1af2:	4770      	bx	lr
        range = 2U;
    1af4:	2002      	movs	r0, #2
    1af6:	e7fc      	b.n	1af2 <CLOCK_GetOscRangeFromFreq+0x12>
    1af8:	00009897 	.word	0x00009897
    1afc:	007a1200 	.word	0x007a1200

00001b00 <CLOCK_GetOsc0ErClkFreq>:

uint32_t CLOCK_GetOsc0ErClkFreq(void)
{
    if (OSC0->CR & OSC_CR_ERCLKEN_MASK)
    1b00:	4b04      	ldr	r3, [pc, #16]	@ (1b14 <CLOCK_GetOsc0ErClkFreq+0x14>)
    1b02:	781b      	ldrb	r3, [r3, #0]
    1b04:	b25b      	sxtb	r3, r3
    1b06:	2b00      	cmp	r3, #0
    1b08:	db01      	blt.n	1b0e <CLOCK_GetOsc0ErClkFreq+0xe>
        assert(g_xtal0Freq);
        return g_xtal0Freq;
    }
    else
    {
        return 0U;
    1b0a:	2000      	movs	r0, #0
    }
}
    1b0c:	4770      	bx	lr
        return g_xtal0Freq;
    1b0e:	4b02      	ldr	r3, [pc, #8]	@ (1b18 <CLOCK_GetOsc0ErClkFreq+0x18>)
    1b10:	6818      	ldr	r0, [r3, #0]
    1b12:	e7fb      	b.n	1b0c <CLOCK_GetOsc0ErClkFreq+0xc>
    1b14:	40065000 	.word	0x40065000
    1b18:	1ffff4e4 	.word	0x1ffff4e4

00001b1c <CLOCK_GetEr32kClkFreq>:

uint32_t CLOCK_GetEr32kClkFreq(void)
{
    1b1c:	b510      	push	{r4, lr}
    uint32_t freq;

    switch (SIM_SOPT1_OSC32KSEL_VAL)
    1b1e:	4b0e      	ldr	r3, [pc, #56]	@ (1b58 <CLOCK_GetEr32kClkFreq+0x3c>)
    1b20:	681b      	ldr	r3, [r3, #0]
    1b22:	0c9b      	lsrs	r3, r3, #18
    1b24:	2403      	movs	r4, #3
    1b26:	401c      	ands	r4, r3
    1b28:	2c02      	cmp	r4, #2
    1b2a:	d00b      	beq.n	1b44 <CLOCK_GetEr32kClkFreq+0x28>
    1b2c:	2c03      	cmp	r4, #3
    1b2e:	d00c      	beq.n	1b4a <CLOCK_GetEr32kClkFreq+0x2e>
    1b30:	2c00      	cmp	r4, #0
    1b32:	d10e      	bne.n	1b52 <CLOCK_GetEr32kClkFreq+0x36>
    {
        case 0U: /* OSC 32k clock  */
            freq = (CLOCK_GetOsc0ErClkFreq() == 32768U) ? 32768U : 0U;
    1b34:	f7ff ffe4 	bl	1b00 <CLOCK_GetOsc0ErClkFreq>
    1b38:	2380      	movs	r3, #128	@ 0x80
    1b3a:	021b      	lsls	r3, r3, #8
    1b3c:	4298      	cmp	r0, r3
    1b3e:	d106      	bne.n	1b4e <CLOCK_GetEr32kClkFreq+0x32>
    1b40:	0004      	movs	r4, r0
    1b42:	e004      	b.n	1b4e <CLOCK_GetEr32kClkFreq+0x32>
            break;
        case 2U: /* RTC 32k clock  */
            /* Please call CLOCK_SetXtal32Freq base on board setting before using XTAL32K/RTC_CLKIN clock. */
            assert(g_xtal32Freq);
            freq = g_xtal32Freq;
    1b44:	4b05      	ldr	r3, [pc, #20]	@ (1b5c <CLOCK_GetEr32kClkFreq+0x40>)
    1b46:	681c      	ldr	r4, [r3, #0]
            break;
    1b48:	e001      	b.n	1b4e <CLOCK_GetEr32kClkFreq+0x32>
    switch (SIM_SOPT1_OSC32KSEL_VAL)
    1b4a:	24fa      	movs	r4, #250	@ 0xfa
    1b4c:	00a4      	lsls	r4, r4, #2
        default:
            freq = 0U;
            break;
    }
    return freq;
}
    1b4e:	0020      	movs	r0, r4
    1b50:	bd10      	pop	{r4, pc}
            freq = 0U;
    1b52:	2400      	movs	r4, #0
    return freq;
    1b54:	e7fb      	b.n	1b4e <CLOCK_GetEr32kClkFreq+0x32>
    1b56:	46c0      	nop			@ (mov r8, r8)
    1b58:	40047000 	.word	0x40047000
    1b5c:	1ffff4e0 	.word	0x1ffff4e0

00001b60 <CLOCK_SetSimConfig>:

    return freq;
}

void CLOCK_SetSimConfig(sim_clock_config_t const *config)
{
    1b60:	b530      	push	{r4, r5, lr}
    SIM->CLKDIV1 = config->clkdiv1;
    1b62:	6841      	ldr	r1, [r0, #4]
    1b64:	4b0c      	ldr	r3, [pc, #48]	@ (1b98 <CLOCK_SetSimConfig+0x38>)
    1b66:	4a0d      	ldr	r2, [pc, #52]	@ (1b9c <CLOCK_SetSimConfig+0x3c>)
    1b68:	5099      	str	r1, [r3, r2]
    CLOCK_SetPllFllSelClock(config->pllFllSel);
    1b6a:	7801      	ldrb	r1, [r0, #0]
    SIM->SOPT2 = ((SIM->SOPT2 & ~SIM_SOPT2_PLLFLLSEL_MASK) | SIM_SOPT2_PLLFLLSEL(src));
    1b6c:	4c0c      	ldr	r4, [pc, #48]	@ (1ba0 <CLOCK_SetSimConfig+0x40>)
    1b6e:	591a      	ldr	r2, [r3, r4]
    1b70:	4d0c      	ldr	r5, [pc, #48]	@ (1ba4 <CLOCK_SetSimConfig+0x44>)
    1b72:	402a      	ands	r2, r5
    1b74:	0409      	lsls	r1, r1, #16
    1b76:	2580      	movs	r5, #128	@ 0x80
    1b78:	026d      	lsls	r5, r5, #9
    1b7a:	4029      	ands	r1, r5
    1b7c:	430a      	orrs	r2, r1
    1b7e:	511a      	str	r2, [r3, r4]
    CLOCK_SetEr32kClock(config->er32kSrc);
    1b80:	7841      	ldrb	r1, [r0, #1]
    SIM->SOPT1 = ((SIM->SOPT1 & ~SIM_SOPT1_OSC32KSEL_MASK) | SIM_SOPT1_OSC32KSEL(src));
    1b82:	681a      	ldr	r2, [r3, #0]
    1b84:	4808      	ldr	r0, [pc, #32]	@ (1ba8 <CLOCK_SetSimConfig+0x48>)
    1b86:	4002      	ands	r2, r0
    1b88:	0489      	lsls	r1, r1, #18
    1b8a:	20c0      	movs	r0, #192	@ 0xc0
    1b8c:	0300      	lsls	r0, r0, #12
    1b8e:	4001      	ands	r1, r0
    1b90:	430a      	orrs	r2, r1
    1b92:	601a      	str	r2, [r3, #0]
}
    1b94:	bd30      	pop	{r4, r5, pc}
    1b96:	46c0      	nop			@ (mov r8, r8)
    1b98:	40047000 	.word	0x40047000
    1b9c:	00001044 	.word	0x00001044
    1ba0:	00001004 	.word	0x00001004
    1ba4:	fffeffff 	.word	0xfffeffff
    1ba8:	fff3ffff 	.word	0xfff3ffff

00001bac <CLOCK_GetFllFreq>:
    }
    return mcgoutclk;
}

uint32_t CLOCK_GetFllFreq(void)
{
    1bac:	b510      	push	{r4, lr}

    uint8_t drs, dmx32;
    uint32_t freq;

    /* If FLL is not enabled currently, then return 0U. */
    if ((MCG->C2 & MCG_C2_LP_MASK) || (MCG->S & MCG_S_PLLST_MASK))
    1bae:	4b0f      	ldr	r3, [pc, #60]	@ (1bec <CLOCK_GetFllFreq+0x40>)
    1bb0:	785b      	ldrb	r3, [r3, #1]
    1bb2:	079b      	lsls	r3, r3, #30
    1bb4:	d417      	bmi.n	1be6 <CLOCK_GetFllFreq+0x3a>
    1bb6:	4b0d      	ldr	r3, [pc, #52]	@ (1bec <CLOCK_GetFllFreq+0x40>)
    1bb8:	799b      	ldrb	r3, [r3, #6]
    1bba:	069b      	lsls	r3, r3, #26
    1bbc:	d501      	bpl.n	1bc2 <CLOCK_GetFllFreq+0x16>
    {
        return 0U;
    1bbe:	2000      	movs	r0, #0
    1bc0:	e012      	b.n	1be8 <CLOCK_GetFllFreq+0x3c>
    }

    /* Get FLL reference clock frequency. */
    freq = CLOCK_GetFllRefClkFreq();
    1bc2:	f7ff ff7d 	bl	1ac0 <CLOCK_GetFllRefClkFreq>
    if (!freq)
    1bc6:	2800      	cmp	r0, #0
    1bc8:	d00e      	beq.n	1be8 <CLOCK_GetFllFreq+0x3c>
    {
        return freq;
    }

    drs = MCG_C4_DRST_DRS_VAL;
    1bca:	4908      	ldr	r1, [pc, #32]	@ (1bec <CLOCK_GetFllFreq+0x40>)
    1bcc:	78ca      	ldrb	r2, [r1, #3]
    1bce:	0952      	lsrs	r2, r2, #5
    1bd0:	2303      	movs	r3, #3
    1bd2:	4013      	ands	r3, r2
    dmx32 = MCG_C4_DMX32_VAL;
    1bd4:	78c9      	ldrb	r1, [r1, #3]
    1bd6:	09c9      	lsrs	r1, r1, #7

    return freq * fllFactorTable[drs][dmx32];
    1bd8:	4a05      	ldr	r2, [pc, #20]	@ (1bf0 <CLOCK_GetFllFreq+0x44>)
    1bda:	005b      	lsls	r3, r3, #1
    1bdc:	185b      	adds	r3, r3, r1
    1bde:	005b      	lsls	r3, r3, #1
    1be0:	5a9b      	ldrh	r3, [r3, r2]
    1be2:	4358      	muls	r0, r3
    1be4:	e000      	b.n	1be8 <CLOCK_GetFllFreq+0x3c>
        return 0U;
    1be6:	2000      	movs	r0, #0
}
    1be8:	bd10      	pop	{r4, pc}
    1bea:	46c0      	nop			@ (mov r8, r8)
    1bec:	40064000 	.word	0x40064000
    1bf0:	000079d0 	.word	0x000079d0

00001bf4 <CLOCK_GetInternalRefClkFreq>:

uint32_t CLOCK_GetInternalRefClkFreq(void)
{
    1bf4:	b510      	push	{r4, lr}
    /* If MCGIRCLK is gated. */
    if (!(MCG->C1 & MCG_C1_IRCLKEN_MASK))
    1bf6:	4b04      	ldr	r3, [pc, #16]	@ (1c08 <CLOCK_GetInternalRefClkFreq+0x14>)
    1bf8:	781b      	ldrb	r3, [r3, #0]
    1bfa:	079b      	lsls	r3, r3, #30
    1bfc:	d401      	bmi.n	1c02 <CLOCK_GetInternalRefClkFreq+0xe>
    {
        return 0U;
    1bfe:	2000      	movs	r0, #0
    }

    return CLOCK_GetInternalRefClkSelectFreq();
}
    1c00:	bd10      	pop	{r4, pc}
    return CLOCK_GetInternalRefClkSelectFreq();
    1c02:	f7ff ff47 	bl	1a94 <CLOCK_GetInternalRefClkSelectFreq>
    1c06:	e7fb      	b.n	1c00 <CLOCK_GetInternalRefClkFreq+0xc>
    1c08:	40064000 	.word	0x40064000

00001c0c <CLOCK_GetPll0Freq>:
        return 0U;
    }
}

uint32_t CLOCK_GetPll0Freq(void)
{
    1c0c:	b570      	push	{r4, r5, r6, lr}
    uint32_t mcgpll0clk;

    /* If PLL0 is not enabled, return 0. */
    if (!(MCG->S & MCG_S_LOCK0_MASK))
    1c0e:	4b0a      	ldr	r3, [pc, #40]	@ (1c38 <CLOCK_GetPll0Freq+0x2c>)
    1c10:	799b      	ldrb	r3, [r3, #6]
    1c12:	065b      	lsls	r3, r3, #25
    1c14:	d50d      	bpl.n	1c32 <CLOCK_GetPll0Freq+0x26>
    {
        return 0U;
    }

    mcgpll0clk = CLOCK_GetPll0RefFreq();
    1c16:	f004 fe7a 	bl	690e <CLOCK_GetPll0RefFreq>
     * Please call CLOCK_SetXtal0Freq base on board setting before using OSC0 clock.
     * Please call CLOCK_SetXtal1Freq base on board setting before using OSC1 clock.
     */
    assert(mcgpll0clk);

    mcgpll0clk /= (FSL_FEATURE_MCG_PLL_PRDIV_BASE + MCG_C5_PRDIV0_VAL);
    1c1a:	4d07      	ldr	r5, [pc, #28]	@ (1c38 <CLOCK_GetPll0Freq+0x2c>)
    1c1c:	7929      	ldrb	r1, [r5, #4]
    1c1e:	241f      	movs	r4, #31
    1c20:	4021      	ands	r1, r4
    1c22:	3101      	adds	r1, #1
    1c24:	f7fe fbf4 	bl	410 <__udivsi3>
    mcgpll0clk *= (FSL_FEATURE_MCG_PLL_VDIV_BASE + MCG_C6_VDIV0_VAL);
    1c28:	796b      	ldrb	r3, [r5, #5]
    1c2a:	4023      	ands	r3, r4
    1c2c:	3318      	adds	r3, #24
    1c2e:	4358      	muls	r0, r3

    return mcgpll0clk;
}
    1c30:	bd70      	pop	{r4, r5, r6, pc}
        return 0U;
    1c32:	2000      	movs	r0, #0
    1c34:	e7fc      	b.n	1c30 <CLOCK_GetPll0Freq+0x24>
    1c36:	46c0      	nop			@ (mov r8, r8)
    1c38:	40064000 	.word	0x40064000

00001c3c <CLOCK_GetPllFllSelClkFreq>:
{
    1c3c:	b510      	push	{r4, lr}
    switch (SIM_SOPT2_PLLFLLSEL_VAL)
    1c3e:	4a0a      	ldr	r2, [pc, #40]	@ (1c68 <CLOCK_GetPllFllSelClkFreq+0x2c>)
    1c40:	4b0a      	ldr	r3, [pc, #40]	@ (1c6c <CLOCK_GetPllFllSelClkFreq+0x30>)
    1c42:	58d3      	ldr	r3, [r2, r3]
    1c44:	0c1b      	lsrs	r3, r3, #16
    1c46:	2201      	movs	r2, #1
    1c48:	0011      	movs	r1, r2
    1c4a:	4019      	ands	r1, r3
    1c4c:	421a      	tst	r2, r3
    1c4e:	d003      	beq.n	1c58 <CLOCK_GetPllFllSelClkFreq+0x1c>
    1c50:	2901      	cmp	r1, #1
    1c52:	d004      	beq.n	1c5e <CLOCK_GetPllFllSelClkFreq+0x22>
    1c54:	2000      	movs	r0, #0
    1c56:	e001      	b.n	1c5c <CLOCK_GetPllFllSelClkFreq+0x20>
            freq = CLOCK_GetFllFreq();
    1c58:	f7ff ffa8 	bl	1bac <CLOCK_GetFllFreq>
}
    1c5c:	bd10      	pop	{r4, pc}
            freq = CLOCK_GetPll0Freq();
    1c5e:	f7ff ffd5 	bl	1c0c <CLOCK_GetPll0Freq>
            freq >>= 1U;
    1c62:	0840      	lsrs	r0, r0, #1
    return freq;
    1c64:	e7fa      	b.n	1c5c <CLOCK_GetPllFllSelClkFreq+0x20>
    1c66:	46c0      	nop			@ (mov r8, r8)
    1c68:	40047000 	.word	0x40047000
    1c6c:	00001004 	.word	0x00001004

00001c70 <CLOCK_GetOutClkFreq>:
{
    1c70:	b510      	push	{r4, lr}
    uint32_t clkst = MCG_S_CLKST_VAL;
    1c72:	4b0f      	ldr	r3, [pc, #60]	@ (1cb0 <CLOCK_GetOutClkFreq+0x40>)
    1c74:	799a      	ldrb	r2, [r3, #6]
    1c76:	0892      	lsrs	r2, r2, #2
    1c78:	2303      	movs	r3, #3
    1c7a:	4013      	ands	r3, r2
    switch (clkst)
    1c7c:	2b02      	cmp	r3, #2
    1c7e:	d011      	beq.n	1ca4 <CLOCK_GetOutClkFreq+0x34>
    1c80:	d808      	bhi.n	1c94 <CLOCK_GetOutClkFreq+0x24>
    1c82:	2b00      	cmp	r3, #0
    1c84:	d00b      	beq.n	1c9e <CLOCK_GetOutClkFreq+0x2e>
    1c86:	2b01      	cmp	r3, #1
    1c88:	d102      	bne.n	1c90 <CLOCK_GetOutClkFreq+0x20>
            mcgoutclk = CLOCK_GetInternalRefClkSelectFreq();
    1c8a:	f7ff ff03 	bl	1a94 <CLOCK_GetInternalRefClkSelectFreq>
            break;
    1c8e:	e005      	b.n	1c9c <CLOCK_GetOutClkFreq+0x2c>
    switch (clkst)
    1c90:	2000      	movs	r0, #0
    1c92:	e003      	b.n	1c9c <CLOCK_GetOutClkFreq+0x2c>
    1c94:	2b03      	cmp	r3, #3
    1c96:	d108      	bne.n	1caa <CLOCK_GetOutClkFreq+0x3a>
            mcgoutclk = CLOCK_GetPll0Freq();
    1c98:	f7ff ffb8 	bl	1c0c <CLOCK_GetPll0Freq>
}
    1c9c:	bd10      	pop	{r4, pc}
            mcgoutclk = CLOCK_GetFllFreq();
    1c9e:	f7ff ff85 	bl	1bac <CLOCK_GetFllFreq>
            break;
    1ca2:	e7fb      	b.n	1c9c <CLOCK_GetOutClkFreq+0x2c>
            mcgoutclk = CLOCK_GetMcgExtClkFreq();
    1ca4:	f7ff feca 	bl	1a3c <CLOCK_GetMcgExtClkFreq>
            break;
    1ca8:	e7f8      	b.n	1c9c <CLOCK_GetOutClkFreq+0x2c>
    switch (clkst)
    1caa:	2000      	movs	r0, #0
    return mcgoutclk;
    1cac:	e7f6      	b.n	1c9c <CLOCK_GetOutClkFreq+0x2c>
    1cae:	46c0      	nop			@ (mov r8, r8)
    1cb0:	40064000 	.word	0x40064000

00001cb4 <CLOCK_GetFreq>:
{
    1cb4:	b570      	push	{r4, r5, r6, lr}
    switch (clockName)
    1cb6:	280d      	cmp	r0, #13
    1cb8:	d836      	bhi.n	1d28 <CLOCK_GetFreq+0x74>
    1cba:	0080      	lsls	r0, r0, #2
    1cbc:	4b1b      	ldr	r3, [pc, #108]	@ (1d2c <CLOCK_GetFreq+0x78>)
    1cbe:	581b      	ldr	r3, [r3, r0]
    1cc0:	469f      	mov	pc, r3
    1cc2:	20fa      	movs	r0, #250	@ 0xfa
    1cc4:	0080      	lsls	r0, r0, #2
    1cc6:	e008      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetOutClkFreq() / (SIM_CLKDIV1_OUTDIV1_VAL + 1);
    1cc8:	f7ff ffd2 	bl	1c70 <CLOCK_GetOutClkFreq>
    1ccc:	4a18      	ldr	r2, [pc, #96]	@ (1d30 <CLOCK_GetFreq+0x7c>)
    1cce:	4b19      	ldr	r3, [pc, #100]	@ (1d34 <CLOCK_GetFreq+0x80>)
    1cd0:	58d1      	ldr	r1, [r2, r3]
    1cd2:	0f09      	lsrs	r1, r1, #28
    1cd4:	3101      	adds	r1, #1
    1cd6:	f7fe fb9b 	bl	410 <__udivsi3>
}
    1cda:	bd70      	pop	{r4, r5, r6, pc}
            freq = CLOCK_GetOutClkFreq() / (SIM_CLKDIV1_OUTDIV1_VAL + 1);
    1cdc:	f7ff ffc8 	bl	1c70 <CLOCK_GetOutClkFreq>
    1ce0:	4d13      	ldr	r5, [pc, #76]	@ (1d30 <CLOCK_GetFreq+0x7c>)
    1ce2:	4c14      	ldr	r4, [pc, #80]	@ (1d34 <CLOCK_GetFreq+0x80>)
    1ce4:	5929      	ldr	r1, [r5, r4]
    1ce6:	0f09      	lsrs	r1, r1, #28
    1ce8:	3101      	adds	r1, #1
    1cea:	f7fe fb91 	bl	410 <__udivsi3>
            freq /= (SIM_CLKDIV1_OUTDIV4_VAL + 1);
    1cee:	592b      	ldr	r3, [r5, r4]
    1cf0:	0c1b      	lsrs	r3, r3, #16
    1cf2:	2107      	movs	r1, #7
    1cf4:	4019      	ands	r1, r3
    1cf6:	3101      	adds	r1, #1
    1cf8:	f7fe fb8a 	bl	410 <__udivsi3>
            break;
    1cfc:	e7ed      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetPllFllSelClkFreq();
    1cfe:	f7ff ff9d 	bl	1c3c <CLOCK_GetPllFllSelClkFreq>
            break;
    1d02:	e7ea      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetEr32kClkFreq();
    1d04:	f7ff ff0a 	bl	1b1c <CLOCK_GetEr32kClkFreq>
            break;
    1d08:	e7e7      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetFixedFreqClkFreq();
    1d0a:	f004 fe04 	bl	6916 <CLOCK_GetFixedFreqClkFreq>
            break;
    1d0e:	e7e4      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetInternalRefClkFreq();
    1d10:	f7ff ff70 	bl	1bf4 <CLOCK_GetInternalRefClkFreq>
            break;
    1d14:	e7e1      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetFllFreq();
    1d16:	f7ff ff49 	bl	1bac <CLOCK_GetFllFreq>
            break;
    1d1a:	e7de      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetPll0Freq();
    1d1c:	f7ff ff76 	bl	1c0c <CLOCK_GetPll0Freq>
            break;
    1d20:	e7db      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = CLOCK_GetOsc0ErClkFreq();
    1d22:	f7ff feed 	bl	1b00 <CLOCK_GetOsc0ErClkFreq>
            break;
    1d26:	e7d8      	b.n	1cda <CLOCK_GetFreq+0x26>
            freq = 0U;
    1d28:	2000      	movs	r0, #0
    return freq;
    1d2a:	e7d6      	b.n	1cda <CLOCK_GetFreq+0x26>
    1d2c:	00007998 	.word	0x00007998
    1d30:	40047000 	.word	0x40047000
    1d34:	00001044 	.word	0x00001044

00001d38 <CLOCK_SetInternalRefClkConfig>:

    return kStatus_Success;
}

status_t CLOCK_SetInternalRefClkConfig(uint8_t enableMode, mcg_irc_mode_t ircs, uint8_t fcrdiv)
{
    1d38:	b570      	push	{r4, r5, r6, lr}
    uint32_t mcgOutClkState = MCG_S_CLKST_VAL;
    1d3a:	4b20      	ldr	r3, [pc, #128]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1d3c:	799d      	ldrb	r5, [r3, #6]
    1d3e:	08ad      	lsrs	r5, r5, #2
    1d40:	2403      	movs	r4, #3
    1d42:	402c      	ands	r4, r5
    mcg_irc_mode_t curIrcs = (mcg_irc_mode_t)MCG_S_IRCST_VAL;
    1d44:	799d      	ldrb	r5, [r3, #6]
    1d46:	2601      	movs	r6, #1
    1d48:	402e      	ands	r6, r5
    uint8_t curFcrdiv = MCG_SC_FCRDIV_VAL;
    1d4a:	7a1d      	ldrb	r5, [r3, #8]
    1d4c:	086d      	lsrs	r5, r5, #1
    1d4e:	2307      	movs	r3, #7
    1d50:	402b      	ands	r3, r5
        }
    }
#endif

    /* If need to update the FCRDIV. */
    if (fcrdiv != curFcrdiv)
    1d52:	4293      	cmp	r3, r2
    1d54:	d019      	beq.n	1d8a <CLOCK_SetInternalRefClkConfig+0x52>
    {
        /* If fast IRC is in use currently, change to slow IRC. */
        if ((kMCG_IrcFast == curIrcs) && ((mcgOutClkState == kMCG_ClkOutStatInt) || (MCG->C1 & MCG_C1_IRCLKEN_MASK)))
    1d56:	2e00      	cmp	r6, #0
    1d58:	d00e      	beq.n	1d78 <CLOCK_SetInternalRefClkConfig+0x40>
    1d5a:	2c01      	cmp	r4, #1
    1d5c:	d003      	beq.n	1d66 <CLOCK_SetInternalRefClkConfig+0x2e>
    1d5e:	4b17      	ldr	r3, [pc, #92]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1d60:	781b      	ldrb	r3, [r3, #0]
    1d62:	079b      	lsls	r3, r3, #30
    1d64:	d508      	bpl.n	1d78 <CLOCK_SetInternalRefClkConfig+0x40>
        {
            MCG->C2 = ((MCG->C2 & ~MCG_C2_IRCS_MASK) | (MCG_C2_IRCS(kMCG_IrcSlow)));
    1d66:	4d15      	ldr	r5, [pc, #84]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1d68:	786b      	ldrb	r3, [r5, #1]
    1d6a:	2601      	movs	r6, #1
    1d6c:	43b3      	bics	r3, r6
    1d6e:	706b      	strb	r3, [r5, #1]
            while (MCG_S_IRCST_VAL != kMCG_IrcSlow)
    1d70:	4b12      	ldr	r3, [pc, #72]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1d72:	799b      	ldrb	r3, [r3, #6]
    1d74:	07db      	lsls	r3, r3, #31
    1d76:	d4fb      	bmi.n	1d70 <CLOCK_SetInternalRefClkConfig+0x38>
            {
            }
        }
        /* Update FCRDIV. */
        MCG->SC = (MCG->SC & ~(MCG_SC_FCRDIV_MASK | MCG_SC_ATMF_MASK | MCG_SC_LOCS0_MASK)) | MCG_SC_FCRDIV(fcrdiv);
    1d78:	4d10      	ldr	r5, [pc, #64]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1d7a:	7a2b      	ldrb	r3, [r5, #8]
    1d7c:	262f      	movs	r6, #47	@ 0x2f
    1d7e:	43b3      	bics	r3, r6
    1d80:	0052      	lsls	r2, r2, #1
    1d82:	3e21      	subs	r6, #33	@ 0x21
    1d84:	4032      	ands	r2, r6
    1d86:	4313      	orrs	r3, r2
    1d88:	722b      	strb	r3, [r5, #8]
    }

    /* Set internal reference clock selection. */
    MCG->C2 = (MCG->C2 & ~MCG_C2_IRCS_MASK) | (MCG_C2_IRCS(ircs));
    1d8a:	4a0c      	ldr	r2, [pc, #48]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1d8c:	7853      	ldrb	r3, [r2, #1]
    1d8e:	2501      	movs	r5, #1
    1d90:	43ab      	bics	r3, r5
    1d92:	400d      	ands	r5, r1
    1d94:	432b      	orrs	r3, r5
    1d96:	7053      	strb	r3, [r2, #1]
    MCG->C1 = (MCG->C1 & ~(MCG_C1_IRCLKEN_MASK | MCG_C1_IREFSTEN_MASK)) | (uint8_t)enableMode;
    1d98:	7813      	ldrb	r3, [r2, #0]
    1d9a:	2503      	movs	r5, #3
    1d9c:	43ab      	bics	r3, r5
    1d9e:	4303      	orrs	r3, r0
    1da0:	7013      	strb	r3, [r2, #0]

    /* If MCGIRCLK is used, need to wait for MCG_S_IRCST. */
    if ((mcgOutClkState == kMCG_ClkOutStatInt) || (enableMode & kMCG_IrclkEnable))
    1da2:	2c01      	cmp	r4, #1
    1da4:	d001      	beq.n	1daa <CLOCK_SetInternalRefClkConfig+0x72>
    1da6:	0780      	lsls	r0, r0, #30
    1da8:	d505      	bpl.n	1db6 <CLOCK_SetInternalRefClkConfig+0x7e>
    {
        while (MCG_S_IRCST_VAL != ircs)
    1daa:	4b04      	ldr	r3, [pc, #16]	@ (1dbc <CLOCK_SetInternalRefClkConfig+0x84>)
    1dac:	799b      	ldrb	r3, [r3, #6]
    1dae:	2201      	movs	r2, #1
    1db0:	4013      	ands	r3, r2
    1db2:	428b      	cmp	r3, r1
    1db4:	d1f9      	bne.n	1daa <CLOCK_SetInternalRefClkConfig+0x72>
        {
        }
    }

    return kStatus_Success;
}
    1db6:	2000      	movs	r0, #0
    1db8:	bd70      	pop	{r4, r5, r6, pc}
    1dba:	46c0      	nop			@ (mov r8, r8)
    1dbc:	40064000 	.word	0x40064000

00001dc0 <CLOCK_EnablePll0>:
        return 0U;
    }
}

void CLOCK_EnablePll0(mcg_pll_config_t const *config)
{
    1dc0:	b510      	push	{r4, lr}
    assert(config);

    uint8_t mcg_c5 = 0U;

    mcg_c5 |= MCG_C5_PRDIV0(config->prdiv);
    1dc2:	7843      	ldrb	r3, [r0, #1]
    1dc4:	211f      	movs	r1, #31
    1dc6:	400b      	ands	r3, r1
    MCG->C5 = mcg_c5; /* Disable the PLL first. */
    1dc8:	4a0a      	ldr	r2, [pc, #40]	@ (1df4 <CLOCK_EnablePll0+0x34>)
    1dca:	7113      	strb	r3, [r2, #4]

    MCG->C6 = (MCG->C6 & ~MCG_C6_VDIV0_MASK) | MCG_C6_VDIV0(config->vdiv);
    1dcc:	7953      	ldrb	r3, [r2, #5]
    1dce:	241f      	movs	r4, #31
    1dd0:	43a3      	bics	r3, r4
    1dd2:	7884      	ldrb	r4, [r0, #2]
    1dd4:	4021      	ands	r1, r4
    1dd6:	430b      	orrs	r3, r1
    1dd8:	7153      	strb	r3, [r2, #5]

    /* Set enable mode. */
    MCG->C5 |= ((uint32_t)kMCG_PllEnableIndependent | (uint32_t)config->enableMode);
    1dda:	7913      	ldrb	r3, [r2, #4]
    1ddc:	7801      	ldrb	r1, [r0, #0]
    1dde:	430b      	orrs	r3, r1
    1de0:	2140      	movs	r1, #64	@ 0x40
    1de2:	430b      	orrs	r3, r1
    1de4:	b2db      	uxtb	r3, r3
    1de6:	7113      	strb	r3, [r2, #4]

    /* Wait for PLL lock. */
    while (!(MCG->S & MCG_S_LOCK0_MASK))
    1de8:	4b02      	ldr	r3, [pc, #8]	@ (1df4 <CLOCK_EnablePll0+0x34>)
    1dea:	799b      	ldrb	r3, [r3, #6]
    1dec:	065b      	lsls	r3, r3, #25
    1dee:	d5fb      	bpl.n	1de8 <CLOCK_EnablePll0+0x28>
    {
    }
}
    1df0:	bd10      	pop	{r4, pc}
    1df2:	46c0      	nop			@ (mov r8, r8)
    1df4:	40064000 	.word	0x40064000

00001df8 <CLOCK_InitOsc0>:
        MCG->S = MCG_S_LOLS0_MASK;
    }
}

void CLOCK_InitOsc0(osc_config_t const *config)
{
    1df8:	b570      	push	{r4, r5, r6, lr}
    1dfa:	0004      	movs	r4, r0
    uint8_t range = CLOCK_GetOscRangeFromFreq(config->freq);
    1dfc:	6800      	ldr	r0, [r0, #0]
    1dfe:	f7ff fe6f 	bl	1ae0 <CLOCK_GetOscRangeFromFreq>

    OSC_SetCapLoad(OSC0, config->capLoad);
    1e02:	7923      	ldrb	r3, [r4, #4]
    uint8_t reg = base->CR;
    1e04:	4a12      	ldr	r2, [pc, #72]	@ (1e50 <CLOCK_InitOsc0+0x58>)
    1e06:	7811      	ldrb	r1, [r2, #0]
    reg &= ~(OSC_CR_SC2P_MASK | OSC_CR_SC4P_MASK | OSC_CR_SC8P_MASK | OSC_CR_SC16P_MASK);
    1e08:	250f      	movs	r5, #15
    1e0a:	43a9      	bics	r1, r5
    reg |= capLoad;
    1e0c:	430b      	orrs	r3, r1
    base->CR = reg;
    1e0e:	7013      	strb	r3, [r2, #0]
    uint8_t reg = base->CR;
    1e10:	7813      	ldrb	r3, [r2, #0]
    reg &= ~(OSC_CR_ERCLKEN_MASK | OSC_CR_EREFSTEN_MASK);
    1e12:	215f      	movs	r1, #95	@ 0x5f
    1e14:	400b      	ands	r3, r1
    reg |= config->enableMode;
    1e16:	79a1      	ldrb	r1, [r4, #6]
    1e18:	430b      	orrs	r3, r1
    base->CR = reg;
    1e1a:	7013      	strb	r3, [r2, #0]
    OSC_SetExtRefClkConfig(OSC0, &config->oscerConfig);

    MCG->C2 = ((MCG->C2 & ~OSC_MODE_MASK) | MCG_C2_RANGE(range) | (uint8_t)config->workMode);
    1e1c:	4a0d      	ldr	r2, [pc, #52]	@ (1e54 <CLOCK_InitOsc0+0x5c>)
    1e1e:	7853      	ldrb	r3, [r2, #1]
    1e20:	213c      	movs	r1, #60	@ 0x3c
    1e22:	438b      	bics	r3, r1
    1e24:	0100      	lsls	r0, r0, #4
    1e26:	390c      	subs	r1, #12
    1e28:	4008      	ands	r0, r1
    1e2a:	4303      	orrs	r3, r0
    1e2c:	7961      	ldrb	r1, [r4, #5]
    1e2e:	430b      	orrs	r3, r1
    1e30:	7053      	strb	r3, [r2, #1]

    if ((kOSC_ModeExt != config->workMode) && (OSC0->CR & OSC_CR_ERCLKEN_MASK))
    1e32:	7963      	ldrb	r3, [r4, #5]
    1e34:	2b00      	cmp	r3, #0
    1e36:	d004      	beq.n	1e42 <CLOCK_InitOsc0+0x4a>
    1e38:	4b05      	ldr	r3, [pc, #20]	@ (1e50 <CLOCK_InitOsc0+0x58>)
    1e3a:	781b      	ldrb	r3, [r3, #0]
    1e3c:	b25b      	sxtb	r3, r3
    1e3e:	2b00      	cmp	r3, #0
    1e40:	db00      	blt.n	1e44 <CLOCK_InitOsc0+0x4c>
        /* Wait for stable. */
        while (!(MCG->S & MCG_S_OSCINIT0_MASK))
        {
        }
    }
}
    1e42:	bd70      	pop	{r4, r5, r6, pc}
        while (!(MCG->S & MCG_S_OSCINIT0_MASK))
    1e44:	4b03      	ldr	r3, [pc, #12]	@ (1e54 <CLOCK_InitOsc0+0x5c>)
    1e46:	799b      	ldrb	r3, [r3, #6]
    1e48:	079b      	lsls	r3, r3, #30
    1e4a:	d5fb      	bpl.n	1e44 <CLOCK_InitOsc0+0x4c>
    1e4c:	e7f9      	b.n	1e42 <CLOCK_InitOsc0+0x4a>
    1e4e:	46c0      	nop			@ (mov r8, r8)
    1e50:	40065000 	.word	0x40065000
    1e54:	40064000 	.word	0x40064000

00001e58 <CLOCK_SetPbeMode>:

    return kStatus_Success;
}

status_t CLOCK_SetPbeMode(mcg_pll_clk_select_t pllcs, mcg_pll_config_t const *config)
{
    1e58:	b510      	push	{r4, lr}
    1e5a:	0008      	movs	r0, r1

    /*
       This function is designed to change MCG to PBE mode from PEE/BLPE/FBE,
       but with this workflow, the source mode could be all modes except PEI/PBI.
     */
    MCG->C2 &= ~MCG_C2_LP_MASK; /* Disable lowpower. */
    1e5c:	4a14      	ldr	r2, [pc, #80]	@ (1eb0 <CLOCK_SetPbeMode+0x58>)
    1e5e:	7853      	ldrb	r3, [r2, #1]
    1e60:	2102      	movs	r1, #2
    1e62:	438b      	bics	r3, r1
    1e64:	7053      	strb	r3, [r2, #1]

    /* Change to use external clock first. */
    MCG->C1 = ((MCG->C1 & ~(MCG_C1_CLKS_MASK | MCG_C1_IREFS_MASK)) | MCG_C1_CLKS(kMCG_ClkOutSrcExternal));
    1e66:	7811      	ldrb	r1, [r2, #0]
    1e68:	233b      	movs	r3, #59	@ 0x3b
    1e6a:	4019      	ands	r1, r3
    1e6c:	3bbb      	subs	r3, #187	@ 0xbb
    1e6e:	430b      	orrs	r3, r1
    1e70:	b2db      	uxtb	r3, r3
    1e72:	7013      	strb	r3, [r2, #0]

    /* Wait for CLKST clock status bits to show clock source is ext ref clk */
    while ((MCG->S & (MCG_S_IREFST_MASK | MCG_S_CLKST_MASK)) !=
    1e74:	4b0e      	ldr	r3, [pc, #56]	@ (1eb0 <CLOCK_SetPbeMode+0x58>)
    1e76:	799b      	ldrb	r3, [r3, #6]
    1e78:	221c      	movs	r2, #28
    1e7a:	4013      	ands	r3, r2
    1e7c:	2b08      	cmp	r3, #8
    1e7e:	d1f9      	bne.n	1e74 <CLOCK_SetPbeMode+0x1c>
           (MCG_S_IREFST(kMCG_FllSrcExternal) | MCG_S_CLKST(kMCG_ClkOutStatExt)))
    {
    }

    /* Disable PLL first, then configure PLL. */
    MCG->C6 &= ~MCG_C6_PLLS_MASK;
    1e80:	4a0b      	ldr	r2, [pc, #44]	@ (1eb0 <CLOCK_SetPbeMode+0x58>)
    1e82:	7953      	ldrb	r3, [r2, #5]
    1e84:	2140      	movs	r1, #64	@ 0x40
    1e86:	438b      	bics	r3, r1
    1e88:	7153      	strb	r3, [r2, #5]
    while (MCG->S & MCG_S_PLLST_MASK)
    1e8a:	4b09      	ldr	r3, [pc, #36]	@ (1eb0 <CLOCK_SetPbeMode+0x58>)
    1e8c:	799b      	ldrb	r3, [r3, #6]
    1e8e:	069b      	lsls	r3, r3, #26
    1e90:	d4fb      	bmi.n	1e8a <CLOCK_SetPbeMode+0x32>
    {
    }

    /* Configure the PLL. */
    {
        CLOCK_EnablePll0(config);
    1e92:	f7ff ff95 	bl	1dc0 <CLOCK_EnablePll0>
    }

    /* Change to PLL mode. */
    MCG->C6 |= MCG_C6_PLLS_MASK;
    1e96:	4a06      	ldr	r2, [pc, #24]	@ (1eb0 <CLOCK_SetPbeMode+0x58>)
    1e98:	7953      	ldrb	r3, [r2, #5]
    1e9a:	2140      	movs	r1, #64	@ 0x40
    1e9c:	430b      	orrs	r3, r1
    1e9e:	b2db      	uxtb	r3, r3
    1ea0:	7153      	strb	r3, [r2, #5]

    /* Wait for PLL mode changed. */
    while (!(MCG->S & MCG_S_PLLST_MASK))
    1ea2:	4b03      	ldr	r3, [pc, #12]	@ (1eb0 <CLOCK_SetPbeMode+0x58>)
    1ea4:	799b      	ldrb	r3, [r3, #6]
    1ea6:	069b      	lsls	r3, r3, #26
    1ea8:	d5fb      	bpl.n	1ea2 <CLOCK_SetPbeMode+0x4a>
    {
    }

    return kStatus_Success;
}
    1eaa:	2000      	movs	r0, #0
    1eac:	bd10      	pop	{r4, pc}
    1eae:	46c0      	nop			@ (mov r8, r8)
    1eb0:	40064000 	.word	0x40064000

00001eb4 <CLOCK_BootToPeeMode>:

    return kStatus_Success;
}

status_t CLOCK_BootToPeeMode(mcg_oscsel_t oscsel, mcg_pll_clk_select_t pllcs, mcg_pll_config_t const *config)
{
    1eb4:	b510      	push	{r4, lr}
    1eb6:	0008      	movs	r0, r1
    1eb8:	0011      	movs	r1, r2
    assert(config);

    CLOCK_SetExternalRefClkConfig(oscsel);

    CLOCK_SetPbeMode(pllcs, config);
    1eba:	f7ff ffcd 	bl	1e58 <CLOCK_SetPbeMode>

    /* Change to use PLL output clock. */
    MCG->C1 = (MCG->C1 & ~MCG_C1_CLKS_MASK) | MCG_C1_CLKS(kMCG_ClkOutSrcOut);
    1ebe:	4a06      	ldr	r2, [pc, #24]	@ (1ed8 <CLOCK_BootToPeeMode+0x24>)
    1ec0:	7813      	ldrb	r3, [r2, #0]
    1ec2:	213f      	movs	r1, #63	@ 0x3f
    1ec4:	400b      	ands	r3, r1
    1ec6:	7013      	strb	r3, [r2, #0]
    while (MCG_S_CLKST_VAL != kMCG_ClkOutStatPll)
    1ec8:	4b03      	ldr	r3, [pc, #12]	@ (1ed8 <CLOCK_BootToPeeMode+0x24>)
    1eca:	799b      	ldrb	r3, [r3, #6]
    1ecc:	220c      	movs	r2, #12
    1ece:	4013      	ands	r3, r2
    1ed0:	2b0c      	cmp	r3, #12
    1ed2:	d1f9      	bne.n	1ec8 <CLOCK_BootToPeeMode+0x14>
    {
    }

    return kStatus_Success;
}
    1ed4:	2000      	movs	r0, #0
    1ed6:	bd10      	pop	{r4, pc}
    1ed8:	40064000 	.word	0x40064000

00001edc <SystemInit>:
   ---------------------------------------------------------------------------- */

void SystemInit (void) {
#if (DISABLE_WDOG)
  /* SIM_COPC: COPT=0,COPCLKS=0,COPW=0 */
  SIM->COPC = (uint32_t)0x00u;
    1edc:	4a02      	ldr	r2, [pc, #8]	@ (1ee8 <SystemInit+0xc>)
    1ede:	2388      	movs	r3, #136	@ 0x88
    1ee0:	015b      	lsls	r3, r3, #5
    1ee2:	2100      	movs	r1, #0
    1ee4:	50d1      	str	r1, [r2, r3]
#endif /* (DISABLE_WDOG) */

}
    1ee6:	4770      	bx	lr
    1ee8:	40047000 	.word	0x40047000

00001eec <LPSCI_GetInstance>:
 *
 * param base LPSCI peripheral base address.
 * return LPSCI instance.
 */
uint32_t LPSCI_GetInstance(UART0_Type *base)
{
    1eec:	0003      	movs	r3, r0
    uint32_t instance;

    /* Find the instance index from base address mappings. */
    for (instance = 0; instance < ARRAY_SIZE(s_lpsciBases); instance++)
    1eee:	2000      	movs	r0, #0
    1ef0:	2800      	cmp	r0, #0
    1ef2:	d000      	beq.n	1ef6 <LPSCI_GetInstance+0xa>
    }

    assert(instance < ARRAY_SIZE(s_lpsciBases));

    return instance;
}
    1ef4:	4770      	bx	lr
        if (MSDK_REG_NONSECURE_ADDR(s_lpsciBases[instance]) == MSDK_REG_NONSECURE_ADDR(base))
    1ef6:	4a03      	ldr	r2, [pc, #12]	@ (1f04 <LPSCI_GetInstance+0x18>)
    1ef8:	405a      	eors	r2, r3
    1efa:	4903      	ldr	r1, [pc, #12]	@ (1f08 <LPSCI_GetInstance+0x1c>)
    1efc:	420a      	tst	r2, r1
    1efe:	d0f9      	beq.n	1ef4 <LPSCI_GetInstance+0x8>
    for (instance = 0; instance < ARRAY_SIZE(s_lpsciBases); instance++)
    1f00:	3001      	adds	r0, #1
    1f02:	e7f5      	b.n	1ef0 <LPSCI_GetInstance+0x4>
    1f04:	4006a000 	.word	0x4006a000
    1f08:	efffffff 	.word	0xefffffff

00001f0c <LPSCI_Init>:
 * param srcClock_Hz LPSCI clock source frequency in HZ.
 * retval kStatus_LPSCI_BaudrateNotSupport Baudrate is not support in current clock source.
 * retval kStatus_Success LPSCI initialize succeed
 */
status_t LPSCI_Init(UART0_Type *base, const lpsci_config_t *config, uint32_t srcClock_Hz)
{
    1f0c:	b5f0      	push	{r4, r5, r6, r7, lr}
    1f0e:	46de      	mov	lr, fp
    1f10:	4657      	mov	r7, sl
    1f12:	464e      	mov	r6, r9
    1f14:	4645      	mov	r5, r8
    1f16:	b5e0      	push	{r5, r6, r7, lr}
    1f18:	b083      	sub	sp, #12
    1f1a:	4682      	mov	sl, r0
    1f1c:	468b      	mov	fp, r1
    1f1e:	4690      	mov	r8, r2
     * The idea is to use the best OSR (over-sampling rate) possible
     * Note, OSR is typically hard-set to 16 in other LPSCI instantiations
     * loop to find the best OSR value possible, one that generates minimum baudDiff
     * iterate through the rest of the supported values of OSR */

    baudDiff = config->baudRate_Bps;
    1f20:	680f      	ldr	r7, [r1, #0]
    1f22:	46b9      	mov	r9, r7
    for (osrTemp = 4; osrTemp <= 32; osrTemp++)
    1f24:	2504      	movs	r5, #4
    uint32_t osr = 0;
    1f26:	2300      	movs	r3, #0
    1f28:	9300      	str	r3, [sp, #0]
    uint16_t sbr = 0;
    1f2a:	9301      	str	r3, [sp, #4]
    for (osrTemp = 4; osrTemp <= 32; osrTemp++)
    1f2c:	e000      	b.n	1f30 <LPSCI_Init+0x24>
    1f2e:	3501      	adds	r5, #1
    1f30:	2d20      	cmp	r5, #32
    1f32:	d81f      	bhi.n	1f74 <LPSCI_Init+0x68>
    {
        /* calculate the temporary sbr value   */
        sbrTemp = (srcClock_Hz / (config->baudRate_Bps * osrTemp));
    1f34:	0039      	movs	r1, r7
    1f36:	4369      	muls	r1, r5
    1f38:	4640      	mov	r0, r8
    1f3a:	f7fe fa69 	bl	410 <__udivsi3>
    1f3e:	b284      	uxth	r4, r0
        /* set sbrTemp to 1 if the sourceClockInHz can not satisfy the desired baud rate */
        if (sbrTemp == 0)
    1f40:	2c00      	cmp	r4, #0
    1f42:	d100      	bne.n	1f46 <LPSCI_Init+0x3a>
        {
            sbrTemp = 1;
    1f44:	3401      	adds	r4, #1
        }
        /* Calculate the baud rate based on the temporary OSR and SBR values */
        calculatedBaud = (srcClock_Hz / (osrTemp * sbrTemp));
    1f46:	0029      	movs	r1, r5
    1f48:	4361      	muls	r1, r4
    1f4a:	4640      	mov	r0, r8
    1f4c:	f7fe fa60 	bl	410 <__udivsi3>

        tempDiff = calculatedBaud - config->baudRate_Bps;
    1f50:	1bc6      	subs	r6, r0, r7

        /* Select the better value between srb and (sbr + 1) */
        if (tempDiff > (config->baudRate_Bps - (srcClock_Hz / (osrTemp * (sbrTemp + 1)))))
    1f52:	1c61      	adds	r1, r4, #1
    1f54:	4369      	muls	r1, r5
    1f56:	4640      	mov	r0, r8
    1f58:	f7fe fa5a 	bl	410 <__udivsi3>
    1f5c:	1a38      	subs	r0, r7, r0
    1f5e:	42b0      	cmp	r0, r6
    1f60:	d202      	bcs.n	1f68 <LPSCI_Init+0x5c>
        {
            tempDiff = config->baudRate_Bps - (srcClock_Hz / (osrTemp * (sbrTemp + 1)));
            sbrTemp++;
    1f62:	3401      	adds	r4, #1
    1f64:	b2a4      	uxth	r4, r4
            tempDiff = config->baudRate_Bps - (srcClock_Hz / (osrTemp * (sbrTemp + 1)));
    1f66:	0006      	movs	r6, r0
        }

        if (tempDiff <= baudDiff)
    1f68:	454e      	cmp	r6, r9
    1f6a:	d8e0      	bhi.n	1f2e <LPSCI_Init+0x22>
        {
            baudDiff = tempDiff;
    1f6c:	46b1      	mov	r9, r6
            osr      = osrTemp; /* update and store the best OSR value calculated*/
    1f6e:	9500      	str	r5, [sp, #0]
            sbr      = sbrTemp; /* update store the best SBR value calculated*/
    1f70:	9401      	str	r4, [sp, #4]
    1f72:	e7dc      	b.n	1f2e <LPSCI_Init+0x22>
        }
    }

    /* next, check to see if actual baud rate is within 3% of desired baud rate
     * based on the best calculate OSR value */
    if (baudDiff > ((config->baudRate_Bps / 100) * 3))
    1f74:	2164      	movs	r1, #100	@ 0x64
    1f76:	0038      	movs	r0, r7
    1f78:	f7fe fa4a 	bl	410 <__udivsi3>
    1f7c:	0043      	lsls	r3, r0, #1
    1f7e:	181b      	adds	r3, r3, r0
    1f80:	454b      	cmp	r3, r9
    1f82:	d367      	bcc.n	2054 <LPSCI_Init+0x148>
        return kStatus_LPSCI_BaudrateNotSupport;
    }

#if !(defined(FSL_SDK_DISABLE_DRIVER_CLOCK_CONTROL) && FSL_SDK_DISABLE_DRIVER_CLOCK_CONTROL)
    /* Enable LPSCI clock */
    CLOCK_EnableClock(s_lpsciClock[LPSCI_GetInstance(base)]);
    1f84:	4650      	mov	r0, sl
    1f86:	f7ff ffb1 	bl	1eec <LPSCI_GetInstance>
    (*(volatile uint32_t *)regAddr) |= (1U << CLK_GATE_ABSTRACT_BITS_SHIFT((uint32_t)name));
    1f8a:	4a33      	ldr	r2, [pc, #204]	@ (2058 <LPSCI_Init+0x14c>)
    1f8c:	6811      	ldr	r1, [r2, #0]
    1f8e:	2380      	movs	r3, #128	@ 0x80
    1f90:	00db      	lsls	r3, r3, #3
    1f92:	430b      	orrs	r3, r1
    1f94:	6013      	str	r3, [r2, #0]
#endif /* FSL_SDK_DISABLE_DRIVER_CLOCK_CONTROL */

    /* Disable TX RX before setting. */
    base->C2 &= ~(UART0_C2_TE_MASK | UART0_C2_RE_MASK);
    1f96:	4653      	mov	r3, sl
    1f98:	78db      	ldrb	r3, [r3, #3]
    1f9a:	220c      	movs	r2, #12
    1f9c:	4393      	bics	r3, r2
    1f9e:	4652      	mov	r2, sl
    1fa0:	70d3      	strb	r3, [r2, #3]

    /* Acceptable baud rate */
    /* Check if OSR is between 4x and 7x oversampling*/
    /* If so, then "BOTHEDGE" sampling must be turned on*/
    if ((osr > 3) && (osr < 8))
    1fa2:	9b00      	ldr	r3, [sp, #0]
    1fa4:	3b04      	subs	r3, #4
    1fa6:	2b03      	cmp	r3, #3
    1fa8:	d805      	bhi.n	1fb6 <LPSCI_Init+0xaa>
    {
        base->C5 |= UART0_C5_BOTHEDGE_MASK;
    1faa:	7ad3      	ldrb	r3, [r2, #11]
    1fac:	2202      	movs	r2, #2
    1fae:	4313      	orrs	r3, r2
    1fb0:	b2db      	uxtb	r3, r3
    1fb2:	4652      	mov	r2, sl
    1fb4:	72d3      	strb	r3, [r2, #11]
    }

    /* program the osr value (bit value is one less than actual value)*/
    base->C4 = ((base->C4 & ~UART0_C4_OSR_MASK) | (osr - 1));
    1fb6:	4653      	mov	r3, sl
    1fb8:	7a9a      	ldrb	r2, [r3, #10]
    1fba:	211f      	movs	r1, #31
    1fbc:	438a      	bics	r2, r1
    1fbe:	9b00      	ldr	r3, [sp, #0]
    1fc0:	3b01      	subs	r3, #1
    1fc2:	b2db      	uxtb	r3, r3
    1fc4:	4313      	orrs	r3, r2
    1fc6:	4652      	mov	r2, sl
    1fc8:	7293      	strb	r3, [r2, #10]

    /* program the sbr (divider) value obtained above*/
    base->BDH = ((base->C4 & ~UART0_BDH_SBR_MASK) | (uint8_t)(sbr >> 8));
    1fca:	7a93      	ldrb	r3, [r2, #10]
    1fcc:	438b      	bics	r3, r1
    1fce:	9901      	ldr	r1, [sp, #4]
    1fd0:	0a0a      	lsrs	r2, r1, #8
    1fd2:	b2d2      	uxtb	r2, r2
    1fd4:	4313      	orrs	r3, r2
    1fd6:	4652      	mov	r2, sl
    1fd8:	7013      	strb	r3, [r2, #0]
    base->BDL = (uint8_t)sbr;
    1fda:	b2cb      	uxtb	r3, r1
    1fdc:	7053      	strb	r3, [r2, #1]

    /* set parity mode and idle line type*/
    temp = base->C1 & ~(UART0_C1_PE_MASK | UART0_C1_PT_MASK | UART0_C1_M_MASK | UART0_C1_ILT_MASK);
    1fde:	7892      	ldrb	r2, [r2, #2]
    1fe0:	2317      	movs	r3, #23
    1fe2:	439a      	bics	r2, r3

    temp |= UART0_C1_ILT(config->idleLineType);
    1fe4:	465b      	mov	r3, fp
    1fe6:	799b      	ldrb	r3, [r3, #6]
    1fe8:	009b      	lsls	r3, r3, #2
    1fea:	2104      	movs	r1, #4
    1fec:	400b      	ands	r3, r1
    1fee:	4313      	orrs	r3, r2

    if (kLPSCI_ParityDisabled != config->parityMode)
    1ff0:	465a      	mov	r2, fp
    1ff2:	7912      	ldrb	r2, [r2, #4]
    1ff4:	2a00      	cmp	r2, #0
    1ff6:	d003      	beq.n	2000 <LPSCI_Init+0xf4>
    {
        temp |= (uint8_t)config->parityMode | UART0_C1_M_MASK;
    1ff8:	431a      	orrs	r2, r3
    1ffa:	2310      	movs	r3, #16
    1ffc:	4313      	orrs	r3, r2
    1ffe:	b2db      	uxtb	r3, r3
    }

    base->C1 = temp;
    2000:	4652      	mov	r2, sl
    2002:	7093      	strb	r3, [r2, #2]

#if defined(FSL_FEATURE_LPSCI_HAS_STOP_BIT_CONFIG_SUPPORT) && FSL_FEATURE_LPSCI_HAS_STOP_BIT_CONFIG_SUPPORT
    /* set stop bit per char */
    base->BDH &= ~UART0_BDH_SBNS_MASK;
    2004:	7813      	ldrb	r3, [r2, #0]
    2006:	2220      	movs	r2, #32
    2008:	4393      	bics	r3, r2
    200a:	4652      	mov	r2, sl
    200c:	7013      	strb	r3, [r2, #0]
    base->BDH |= UART0_BDH_SBNS((uint8_t)config->stopBitCount);
    200e:	7812      	ldrb	r2, [r2, #0]
    2010:	465b      	mov	r3, fp
    2012:	795b      	ldrb	r3, [r3, #5]
    2014:	015b      	lsls	r3, r3, #5
    2016:	2120      	movs	r1, #32
    2018:	400b      	ands	r3, r1
    201a:	4313      	orrs	r3, r2
    201c:	4652      	mov	r2, sl
    201e:	7013      	strb	r3, [r2, #0]
#endif

    /* Enable TX/RX base on configure structure. */
    temp = base->C2;
    2020:	78d3      	ldrb	r3, [r2, #3]
    2022:	b2db      	uxtb	r3, r3

    if (config->enableTx)
    2024:	465a      	mov	r2, fp
    2026:	79d2      	ldrb	r2, [r2, #7]
    2028:	2a00      	cmp	r2, #0
    202a:	d002      	beq.n	2032 <LPSCI_Init+0x126>
    {
        temp |= UART0_C2_TE_MASK;
    202c:	2208      	movs	r2, #8
    202e:	4313      	orrs	r3, r2
    2030:	b2db      	uxtb	r3, r3
    }

    if (config->enableRx)
    2032:	465a      	mov	r2, fp
    2034:	7a12      	ldrb	r2, [r2, #8]
    2036:	2a00      	cmp	r2, #0
    2038:	d002      	beq.n	2040 <LPSCI_Init+0x134>
    {
        temp |= UART0_C2_RE_MASK;
    203a:	2204      	movs	r2, #4
    203c:	4313      	orrs	r3, r2
    203e:	b2db      	uxtb	r3, r3
    }

    base->C2 = temp;
    2040:	4652      	mov	r2, sl
    2042:	70d3      	strb	r3, [r2, #3]

    return kStatus_Success;
    2044:	2000      	movs	r0, #0
}
    2046:	b003      	add	sp, #12
    2048:	bcf0      	pop	{r4, r5, r6, r7}
    204a:	46bb      	mov	fp, r7
    204c:	46b2      	mov	sl, r6
    204e:	46a9      	mov	r9, r5
    2050:	46a0      	mov	r8, r4
    2052:	bdf0      	pop	{r4, r5, r6, r7, pc}
        return kStatus_LPSCI_BaudrateNotSupport;
    2054:	4801      	ldr	r0, [pc, #4]	@ (205c <LPSCI_Init+0x150>)
    2056:	e7f6      	b.n	2046 <LPSCI_Init+0x13a>
    2058:	40048034 	.word	0x40048034
    205c:	000004b5 	.word	0x000004b5

00002060 <LPSCI_ClearStatusFlags>:
 * retval kStatus_LPSCI_FlagCannotClearManually  can't be cleared by this function but it is cleared
 * automatically by hardware.
 * retval kStatus_Success Status in the mask are cleared.
 */
status_t LPSCI_ClearStatusFlags(UART0_Type *base, uint32_t mask)
{
    2060:	b082      	sub	sp, #8
    volatile uint8_t dummy = 0;
    2062:	466b      	mov	r3, sp
    2064:	1dda      	adds	r2, r3, #7
    2066:	2300      	movs	r3, #0
    2068:	7013      	strb	r3, [r2, #0]
    status_t status;
    dummy++; /* For unused variable warning */
    206a:	7813      	ldrb	r3, [r2, #0]
    206c:	3301      	adds	r3, #1
    206e:	b2db      	uxtb	r3, r3
    2070:	7013      	strb	r3, [r2, #0]

#if defined(FSL_FEATURE_LPSCI_HAS_LIN_BREAK_DETECT) && FSL_FEATURE_LPSCI_HAS_LIN_BREAK_DETECT
    if (mask & kLPSCI_LinBreakFlag)
    2072:	040b      	lsls	r3, r1, #16
    2074:	d503      	bpl.n	207e <LPSCI_ClearStatusFlags+0x1e>
    {
        base->S2 = UART0_S2_LBKDIF_MASK;
    2076:	2380      	movs	r3, #128	@ 0x80
    2078:	7143      	strb	r3, [r0, #5]
        mask &= ~(uint32_t)kLPSCI_LinBreakFlag;
    207a:	4b0b      	ldr	r3, [pc, #44]	@ (20a8 <LPSCI_ClearStatusFlags+0x48>)
    207c:	4019      	ands	r1, r3
    }
#endif

    if (mask & kLPSCI_RxActiveEdgeFlag)
    207e:	044b      	lsls	r3, r1, #17
    2080:	d503      	bpl.n	208a <LPSCI_ClearStatusFlags+0x2a>
    {
        base->S2 = UART0_S2_RXEDGIF_MASK;
    2082:	2340      	movs	r3, #64	@ 0x40
    2084:	7143      	strb	r3, [r0, #5]
        mask &= ~(uint32_t)kLPSCI_RxActiveEdgeFlag;
    2086:	4b09      	ldr	r3, [pc, #36]	@ (20ac <LPSCI_ClearStatusFlags+0x4c>)
    2088:	4019      	ands	r1, r3
    }

    if ((mask & (kLPSCI_IdleLineFlag | kLPSCI_RxOverrunFlag | kLPSCI_NoiseErrorFlag | kLPSCI_FramingErrorFlag |
    208a:	06cb      	lsls	r3, r1, #27
    208c:	d004      	beq.n	2098 <LPSCI_ClearStatusFlags+0x38>
                 kLPSCI_ParityErrorFlag)))
    {
        base->S1 = (mask & (kLPSCI_IdleLineFlag | kLPSCI_RxOverrunFlag | kLPSCI_NoiseErrorFlag |
    208e:	231f      	movs	r3, #31
    2090:	400b      	ands	r3, r1
    2092:	7103      	strb	r3, [r0, #4]
                            kLPSCI_FramingErrorFlag | kLPSCI_ParityErrorFlag));
        mask &= ~(uint32_t)(kLPSCI_IdleLineFlag | kLPSCI_RxOverrunFlag | kLPSCI_NoiseErrorFlag |
    2094:	231f      	movs	r3, #31
    2096:	4399      	bics	r1, r3
                            kLPSCI_FramingErrorFlag | kLPSCI_ParityErrorFlag);
    }

    if (mask)
    2098:	2900      	cmp	r1, #0
    209a:	d102      	bne.n	20a2 <LPSCI_ClearStatusFlags+0x42>

        status = kStatus_LPSCI_FlagCannotClearManually;
    }
    else
    {
        status = kStatus_Success;
    209c:	2000      	movs	r0, #0
    }

    return status;
}
    209e:	b002      	add	sp, #8
    20a0:	4770      	bx	lr
        status = kStatus_LPSCI_FlagCannotClearManually;
    20a2:	4803      	ldr	r0, [pc, #12]	@ (20b0 <LPSCI_ClearStatusFlags+0x50>)
    20a4:	e7fb      	b.n	209e <LPSCI_ClearStatusFlags+0x3e>
    20a6:	46c0      	nop			@ (mov r8, r8)
    20a8:	ffff7fff 	.word	0xffff7fff
    20ac:	ffffbfff 	.word	0xffffbfff
    20b0:	000004b4 	.word	0x000004b4

000020b4 <reason_to_str>:
	return thread_name;
}

static const char *reason_to_str(unsigned int reason)
{
	switch (reason) {
    20b4:	2804      	cmp	r0, #4
    20b6:	d80b      	bhi.n	20d0 <reason_to_str+0x1c>
    20b8:	0080      	lsls	r0, r0, #2
    20ba:	4b07      	ldr	r3, [pc, #28]	@ (20d8 <reason_to_str+0x24>)
    20bc:	581b      	ldr	r3, [r3, r0]
    20be:	469f      	mov	pc, r3
    20c0:	4806      	ldr	r0, [pc, #24]	@ (20dc <reason_to_str+0x28>)
	case K_ERR_KERNEL_PANIC:
		return "Kernel panic";
	default:
		return "Unknown error";
	}
}
    20c2:	4770      	bx	lr
		return "Stack overflow";
    20c4:	4806      	ldr	r0, [pc, #24]	@ (20e0 <reason_to_str+0x2c>)
    20c6:	e7fc      	b.n	20c2 <reason_to_str+0xe>
		return "Kernel oops";
    20c8:	4806      	ldr	r0, [pc, #24]	@ (20e4 <reason_to_str+0x30>)
    20ca:	e7fa      	b.n	20c2 <reason_to_str+0xe>
		return "Kernel panic";
    20cc:	4806      	ldr	r0, [pc, #24]	@ (20e8 <reason_to_str+0x34>)
    20ce:	e7f8      	b.n	20c2 <reason_to_str+0xe>
		return "Unknown error";
    20d0:	4806      	ldr	r0, [pc, #24]	@ (20ec <reason_to_str+0x38>)
    20d2:	e7f6      	b.n	20c2 <reason_to_str+0xe>
		return "Unhandled interrupt";
    20d4:	4806      	ldr	r0, [pc, #24]	@ (20f0 <reason_to_str+0x3c>)
    20d6:	e7f4      	b.n	20c2 <reason_to_str+0xe>
    20d8:	000079e0 	.word	0x000079e0
    20dc:	00007748 	.word	0x00007748
    20e0:	0000776c 	.word	0x0000776c
    20e4:	0000777c 	.word	0x0000777c
    20e8:	00007788 	.word	0x00007788
    20ec:	00007798 	.word	0x00007798
    20f0:	00007758 	.word	0x00007758

000020f4 <thread_name_get>:
{
    20f4:	b510      	push	{r4, lr}
	const char *thread_name = (thread != NULL) ? k_thread_name_get(thread) : NULL;
    20f6:	2800      	cmp	r0, #0
    20f8:	d008      	beq.n	210c <thread_name_get+0x18>
    20fa:	f004 fc8e 	bl	6a1a <k_thread_name_get>
	if ((thread_name == NULL) || (thread_name[0] == '\0')) {
    20fe:	2800      	cmp	r0, #0
    2100:	d006      	beq.n	2110 <thread_name_get+0x1c>
    2102:	7803      	ldrb	r3, [r0, #0]
    2104:	2b00      	cmp	r3, #0
    2106:	d102      	bne.n	210e <thread_name_get+0x1a>
		thread_name = "unknown";
    2108:	4802      	ldr	r0, [pc, #8]	@ (2114 <thread_name_get+0x20>)
	return thread_name;
    210a:	e000      	b.n	210e <thread_name_get+0x1a>
		thread_name = "unknown";
    210c:	4801      	ldr	r0, [pc, #4]	@ (2114 <thread_name_get+0x20>)
}
    210e:	bd10      	pop	{r4, pc}
		thread_name = "unknown";
    2110:	4800      	ldr	r0, [pc, #0]	@ (2114 <thread_name_get+0x20>)
    2112:	e7fc      	b.n	210e <thread_name_get+0x1a>
    2114:	000077a8 	.word	0x000077a8

00002118 <k_sys_fatal_error_handler>:
{
    2118:	b510      	push	{r4, lr}
    211a:	0004      	movs	r4, r0
	EXCEPTION_DUMP("Halting system");
    211c:	f004 f8ce 	bl	62bc <printk_panic>
    2120:	4802      	ldr	r0, [pc, #8]	@ (212c <k_sys_fatal_error_handler+0x14>)
    2122:	f004 f8d0 	bl	62c6 <printk>
	arch_system_halt(reason);
    2126:	0020      	movs	r0, r4
    2128:	f004 fc47 	bl	69ba <arch_system_halt>
    212c:	000077b0 	.word	0x000077b0

00002130 <z_fatal_error>:
	arch_system_halt(reason);
}
/* LCOV_EXCL_STOP */

void z_fatal_error(unsigned int reason, const struct arch_esf *esf)
{
    2130:	b5f0      	push	{r4, r5, r6, r7, lr}
    2132:	46c6      	mov	lr, r8
    2134:	b500      	push	{lr}
    2136:	0004      	movs	r4, r0
    2138:	000d      	movs	r5, r1
    213a:	f3ef 8710 	mrs	r7, PRIMASK
    213e:	b672      	cpsid	i
	/* We can't allow this code to be preempted, but don't need to
	 * synchronize between CPUs, so an arch-layer lock is
	 * appropriate.
	 */
	unsigned int key = arch_irq_lock();
	struct k_thread *thread = IS_ENABLED(CONFIG_MULTITHREADING) ?
    2140:	4b19      	ldr	r3, [pc, #100]	@ (21a8 <z_fatal_error+0x78>)
    2142:	4698      	mov	r8, r3
    2144:	689e      	ldr	r6, [r3, #8]

	/* The printk lock is not trustworthy from here on: this context may
	 * have failed while holding it, or a CPU that is never coming back
	 * may own it. Give up on serialized output rather than on output.
	 */
	printk_panic();
    2146:	f004 f8b9 	bl	62bc <printk_panic>

	/* twister looks for the "ZEPHYR FATAL ERROR" string, don't
	 * change it without also updating twister
	 */
	EXCEPTION_DUMP(">>> ZEPHYR FATAL ERROR %d: %s on CPU %d", reason, reason_to_str(reason),
    214a:	f004 f8b7 	bl	62bc <printk_panic>
    214e:	0020      	movs	r0, r4
    2150:	f7ff ffb0 	bl	20b4 <reason_to_str>
    2154:	0002      	movs	r2, r0
    2156:	4643      	mov	r3, r8
    2158:	7c1b      	ldrb	r3, [r3, #16]
    215a:	4814      	ldr	r0, [pc, #80]	@ (21ac <z_fatal_error+0x7c>)
    215c:	0021      	movs	r1, r4
    215e:	f004 f8b2 	bl	62c6 <printk>
	 * an IRQ or exception was being handled, or thread context.
	 *
	 * See #17656
	 */
#if defined(CONFIG_ARCH_HAS_NESTED_EXCEPTION_DETECTION)
	if ((esf != NULL) && arch_is_in_nested_exception(esf)) {
    2162:	2d00      	cmp	r5, #0
    2164:	d002      	beq.n	216c <z_fatal_error+0x3c>
 * @return true if execution state was in handler mode, before
 *              the current exception occurred, otherwise false.
 */
static ALWAYS_INLINE bool arch_is_in_nested_exception(const struct arch_esf *esf)
{
	return (esf->basic.xpsr & IPSR_ISR_Msk) ? (true) : (false);
    2166:	69eb      	ldr	r3, [r5, #28]
    2168:	05db      	lsls	r3, r3, #23
    216a:	d117      	bne.n	219c <z_fatal_error+0x6c>
		EXCEPTION_DUMP("Fault during interrupt handling");
	}
#endif /* CONFIG_ARCH_HAS_NESTED_EXCEPTION_DETECTION */

	if (IS_ENABLED(CONFIG_MULTITHREADING)) {
		EXCEPTION_DUMP("Current thread: %p (%s)", thread, thread_name_get(thread));
    216c:	f004 f8a6 	bl	62bc <printk_panic>
    2170:	0030      	movs	r0, r6
    2172:	f7ff ffbf 	bl	20f4 <thread_name_get>
    2176:	0002      	movs	r2, r0
    2178:	4b0d      	ldr	r3, [pc, #52]	@ (21b0 <z_fatal_error+0x80>)
    217a:	0031      	movs	r1, r6
    217c:	0018      	movs	r0, r3
    217e:	f004 f8a2 	bl	62c6 <printk>
	key = arch_coredump_fatal_irq_lock(&coredump_irq_cookie);
#else
	coredump(reason, esf, thread);
#endif

	k_sys_fatal_error_handler(reason, esf);
    2182:	0029      	movs	r1, r5
    2184:	0020      	movs	r0, r4
    2186:	f7ff ffc7 	bl	2118 <k_sys_fatal_error_handler>
    218a:	2f00      	cmp	r7, #0
    218c:	d100      	bne.n	2190 <z_fatal_error+0x60>
    __ASM volatile ("cpsie i" : : : "memory");
    218e:	b662      	cpsie	i
    2190:	0030      	movs	r0, r6
    2192:	f7ff f8c1 	bl	1318 <z_impl_k_thread_abort>
	arch_irq_unlock(key);

	if (IS_ENABLED(CONFIG_MULTITHREADING)) {
		k_thread_abort(thread);
	}
}
    2196:	bc80      	pop	{r7}
    2198:	46b8      	mov	r8, r7
    219a:	bdf0      	pop	{r4, r5, r6, r7, pc}
		EXCEPTION_DUMP("Fault during interrupt handling");
    219c:	f004 f88e 	bl	62bc <printk_panic>
    21a0:	4804      	ldr	r0, [pc, #16]	@ (21b4 <z_fatal_error+0x84>)
    21a2:	f004 f890 	bl	62c6 <printk>
    21a6:	e7e1      	b.n	216c <z_fatal_error+0x3c>
    21a8:	1ffff360 	.word	0x1ffff360
    21ac:	000077c0 	.word	0x000077c0
    21b0:	00007810 	.word	0x00007810
    21b4:	000077ec 	.word	0x000077ec

000021b8 <init_idle_thread>:
} /* LCOV_EXCL_LINE ... because we just dumped final coverage data */

#if defined(CONFIG_MULTITHREADING)
__boot_func
static void init_idle_thread(int i)
{
    21b8:	b5f0      	push	{r4, r5, r6, r7, lr}
    21ba:	b087      	sub	sp, #28
    21bc:	0004      	movs	r4, r0
	struct k_thread *thread = &z_idle_threads[i];
    21be:	0045      	lsls	r5, r0, #1
    21c0:	182f      	adds	r7, r5, r0
    21c2:	01bf      	lsls	r7, r7, #6
    21c4:	4e10      	ldr	r6, [pc, #64]	@ (2208 <init_idle_thread+0x50>)
    21c6:	19bf      	adds	r7, r7, r6
	k_thread_stack_t *stack = z_idle_stacks[i];
    21c8:	0201      	lsls	r1, r0, #8
    21ca:	4b10      	ldr	r3, [pc, #64]	@ (220c <init_idle_thread+0x54>)
    21cc:	18c9      	adds	r1, r1, r3
#else
	char *tname = NULL;
#endif /* CONFIG_THREAD_NAME */

	z_setup_new_thread(thread, stack,
			  stack_size, idle, &_kernel.cpus[i],
    21ce:	00c0      	lsls	r0, r0, #3
    21d0:	1b00      	subs	r0, r0, r4
    21d2:	0080      	lsls	r0, r0, #2
    21d4:	4b0e      	ldr	r3, [pc, #56]	@ (2210 <init_idle_thread+0x58>)
    21d6:	18c0      	adds	r0, r0, r3
	z_setup_new_thread(thread, stack,
    21d8:	4b0e      	ldr	r3, [pc, #56]	@ (2214 <init_idle_thread+0x5c>)
    21da:	2280      	movs	r2, #128	@ 0x80
    21dc:	4694      	mov	ip, r2
    21de:	4a0e      	ldr	r2, [pc, #56]	@ (2218 <init_idle_thread+0x60>)
    21e0:	9205      	str	r2, [sp, #20]
    21e2:	2201      	movs	r2, #1
    21e4:	9204      	str	r2, [sp, #16]
    21e6:	320e      	adds	r2, #14
    21e8:	9203      	str	r2, [sp, #12]
    21ea:	2200      	movs	r2, #0
    21ec:	9202      	str	r2, [sp, #8]
    21ee:	9201      	str	r2, [sp, #4]
    21f0:	9000      	str	r0, [sp, #0]
    21f2:	4662      	mov	r2, ip
    21f4:	0052      	lsls	r2, r2, #1
    21f6:	0038      	movs	r0, r7
    21f8:	f000 f97e 	bl	24f8 <z_setup_new_thread>
	thread->base.thread_state |= _THREAD_SLEEPING;
}

static inline void z_mark_thread_as_not_sleeping(struct k_thread *thread)
{
	thread->base.thread_state &= ~_THREAD_SLEEPING;
    21fc:	7c3b      	ldrb	r3, [r7, #16]
    21fe:	2204      	movs	r2, #4
    2200:	4393      	bics	r3, r2
    2202:	743b      	strb	r3, [r7, #16]
	z_mark_thread_as_not_sleeping(thread);

#ifdef CONFIG_SMP
	thread->base.is_idle = 1U;
#endif /* CONFIG_SMP */
}
    2204:	b007      	add	sp, #28
    2206:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2208:	1ffff1e0 	.word	0x1ffff1e0
    220c:	20000500 	.word	0x20000500
    2210:	1ffff360 	.word	0x1ffff360
    2214:	000069c3 	.word	0x000069c3
    2218:	0000782c 	.word	0x0000782c

0000221c <z_sys_init_run_level>:
{
    221c:	b570      	push	{r4, r5, r6, lr}
    221e:	0005      	movs	r5, r0
	for (entry = levels[level]; entry < levels[level+1]; entry++) {
    2220:	4b0b      	ldr	r3, [pc, #44]	@ (2250 <z_sys_init_run_level+0x34>)
    2222:	0082      	lsls	r2, r0, #2
    2224:	58d4      	ldr	r4, [r2, r3]
    2226:	e002      	b.n	222e <z_sys_init_run_level+0x12>
			result = entry->init_fn();
    2228:	6823      	ldr	r3, [r4, #0]
    222a:	4798      	blx	r3
	for (entry = levels[level]; entry < levels[level+1]; entry++) {
    222c:	3408      	adds	r4, #8
    222e:	1c6b      	adds	r3, r5, #1
    2230:	4a07      	ldr	r2, [pc, #28]	@ (2250 <z_sys_init_run_level+0x34>)
    2232:	009b      	lsls	r3, r3, #2
    2234:	589b      	ldr	r3, [r3, r2]
    2236:	42a3      	cmp	r3, r4
    2238:	d908      	bls.n	224c <z_sys_init_run_level+0x30>
		const struct device *dev = entry->dev;
    223a:	6860      	ldr	r0, [r4, #4]
		if (dev != NULL) {
    223c:	2800      	cmp	r0, #0
    223e:	d0f3      	beq.n	2228 <z_sys_init_run_level+0xc>
			if ((dev->flags & DEVICE_FLAG_INIT_DEFERRED) == 0U) {
    2240:	7e03      	ldrb	r3, [r0, #24]
    2242:	07db      	lsls	r3, r3, #31
    2244:	d4f2      	bmi.n	222c <z_sys_init_run_level+0x10>
				result = do_device_init(dev);
    2246:	f004 fb94 	bl	6972 <do_device_init>
    224a:	e7ef      	b.n	222c <z_sys_init_run_level+0x10>
}
    224c:	bd70      	pop	{r4, r5, r6, pc}
    224e:	46c0      	nop			@ (mov r8, r8)
    2250:	000079f4 	.word	0x000079f4

00002254 <thread_schedule_new>:
{
    2254:	b510      	push	{r4, lr}
	if (K_TIMEOUT_EQ(delay, K_NO_WAIT)) {
    2256:	0019      	movs	r1, r3
    2258:	4311      	orrs	r1, r2
    225a:	d102      	bne.n	2262 <thread_schedule_new+0xe>
	z_impl_k_wakeup(thread);
    225c:	f004 fbf1 	bl	6a42 <z_impl_k_wakeup>
}
    2260:	bd10      	pop	{r4, pc}

extern void z_thread_timeout(struct _timeout *timeout);

static inline k_ticks_t z_add_thread_timeout(struct k_thread *thread, k_timeout_t ticks)
{
	return z_add_timeout(&thread->base.timeout, z_thread_timeout, ticks);
    2262:	4902      	ldr	r1, [pc, #8]	@ (226c <thread_schedule_new+0x18>)
    2264:	3018      	adds	r0, #24
    2266:	f000 fe3d 	bl	2ee4 <z_add_timeout>
    226a:	e7f9      	b.n	2260 <thread_schedule_new+0xc>
    226c:	00006bc9 	.word	0x00006bc9

00002270 <z_init_static_threads>:
{
    2270:	b530      	push	{r4, r5, lr}
    2272:	b087      	sub	sp, #28
	STRUCT_SECTION_FOREACH(_static_thread_data, thread_data) {
    2274:	4c15      	ldr	r4, [pc, #84]	@ (22cc <z_init_static_threads+0x5c>)
    2276:	e014      	b.n	22a2 <z_init_static_threads+0x32>
		z_setup_new_thread(
    2278:	68e3      	ldr	r3, [r4, #12]
    227a:	68a2      	ldr	r2, [r4, #8]
    227c:	6861      	ldr	r1, [r4, #4]
    227e:	6820      	ldr	r0, [r4, #0]
    2280:	6a65      	ldr	r5, [r4, #36]	@ 0x24
    2282:	9505      	str	r5, [sp, #20]
    2284:	6a25      	ldr	r5, [r4, #32]
    2286:	9504      	str	r5, [sp, #16]
    2288:	69e5      	ldr	r5, [r4, #28]
    228a:	9503      	str	r5, [sp, #12]
    228c:	69a5      	ldr	r5, [r4, #24]
    228e:	9502      	str	r5, [sp, #8]
    2290:	6965      	ldr	r5, [r4, #20]
    2292:	9501      	str	r5, [sp, #4]
    2294:	6925      	ldr	r5, [r4, #16]
    2296:	9500      	str	r5, [sp, #0]
    2298:	f000 f92e 	bl	24f8 <z_setup_new_thread>
		thread_data->init_thread->init_data = thread_data;
    229c:	6823      	ldr	r3, [r4, #0]
    229e:	665c      	str	r4, [r3, #100]	@ 0x64
	STRUCT_SECTION_FOREACH(_static_thread_data, thread_data) {
    22a0:	3430      	adds	r4, #48	@ 0x30
    22a2:	4b0b      	ldr	r3, [pc, #44]	@ (22d0 <z_init_static_threads+0x60>)
    22a4:	429c      	cmp	r4, r3
    22a6:	d3e7      	bcc.n	2278 <z_init_static_threads+0x8>
	k_sched_lock();
    22a8:	f000 fc5e 	bl	2b68 <k_sched_lock>
	STRUCT_SECTION_FOREACH(_static_thread_data, thread_data) {
    22ac:	4c07      	ldr	r4, [pc, #28]	@ (22cc <z_init_static_threads+0x5c>)
    22ae:	e005      	b.n	22bc <z_init_static_threads+0x4c>
		k_timeout_t init_delay = Z_THREAD_INIT_DELAY(thread_data);
    22b0:	6aa2      	ldr	r2, [r4, #40]	@ 0x28
    22b2:	6ae3      	ldr	r3, [r4, #44]	@ 0x2c
		thread_schedule_new(thread_data->init_thread, init_delay);
    22b4:	6820      	ldr	r0, [r4, #0]
    22b6:	f7ff ffcd 	bl	2254 <thread_schedule_new>
	STRUCT_SECTION_FOREACH(_static_thread_data, thread_data) {
    22ba:	3430      	adds	r4, #48	@ 0x30
    22bc:	4b04      	ldr	r3, [pc, #16]	@ (22d0 <z_init_static_threads+0x60>)
    22be:	429c      	cmp	r4, r3
    22c0:	d3f6      	bcc.n	22b0 <z_init_static_threads+0x40>
	k_sched_unlock();
    22c2:	f000 fc65 	bl	2b90 <k_sched_unlock>
}
    22c6:	b007      	add	sp, #28
    22c8:	bd30      	pop	{r4, r5, pc}
    22ca:	46c0      	nop			@ (mov r8, r8)
    22cc:	00006f60 	.word	0x00006f60
    22d0:	00006fc0 	.word	0x00006fc0

000022d4 <bg_thread_main>:
{
    22d4:	b510      	push	{r4, lr}
	z_sys_post_kernel = true;
    22d6:	4b0d      	ldr	r3, [pc, #52]	@ (230c <bg_thread_main+0x38>)
    22d8:	2201      	movs	r2, #1
    22da:	701a      	strb	r2, [r3, #0]
	STRUCT_SECTION_FOREACH(k_kernel_init_post_entry, entry) {
    22dc:	4c0c      	ldr	r4, [pc, #48]	@ (2310 <bg_thread_main+0x3c>)
    22de:	e001      	b.n	22e4 <bg_thread_main+0x10>
		entry->init_fn();
    22e0:	cc08      	ldmia	r4!, {r3}
    22e2:	4798      	blx	r3
	STRUCT_SECTION_FOREACH(k_kernel_init_post_entry, entry) {
    22e4:	4b0b      	ldr	r3, [pc, #44]	@ (2314 <bg_thread_main+0x40>)
    22e6:	429c      	cmp	r4, r3
    22e8:	d3fa      	bcc.n	22e0 <bg_thread_main+0xc>
	z_sys_init_run_level(INIT_LEVEL_POST_KERNEL);
    22ea:	2003      	movs	r0, #3
    22ec:	f7ff ff96 	bl	221c <z_sys_init_run_level>
	z_sys_init_run_level(INIT_LEVEL_APPLICATION);
    22f0:	2004      	movs	r0, #4
    22f2:	f7ff ff93 	bl	221c <z_sys_init_run_level>
	z_init_static_threads();
    22f6:	f7ff ffbb 	bl	2270 <z_init_static_threads>
	(void)main();
    22fa:	f7fe fcef 	bl	cdc <main>
 * Exceptions raised by this thread may be recoverable.
 * (This is the default tag for a thread.)
 */
static inline void z_thread_essential_clear(struct k_thread *thread)
{
	thread->base.user_options &= ~K_ESSENTIAL;
    22fe:	4a06      	ldr	r2, [pc, #24]	@ (2318 <bg_thread_main+0x44>)
    2300:	8993      	ldrh	r3, [r2, #12]
    2302:	2101      	movs	r1, #1
    2304:	438b      	bics	r3, r1
    2306:	8193      	strh	r3, [r2, #12]
} /* LCOV_EXCL_LINE ... because we just dumped final coverage data */
    2308:	bd10      	pop	{r4, pc}
    230a:	46c0      	nop			@ (mov r8, r8)
    230c:	1ffff4fd 	.word	0x1ffff4fd
    2310:	00006f5c 	.word	0x00006f5c
    2314:	00006f5c 	.word	0x00006f5c
    2318:	1ffff2a0 	.word	0x1ffff2a0

0000231c <switch_to_main_thread>:
	return stack_ptr;
}

__boot_func
static FUNC_NORETURN void switch_to_main_thread(char *stack_ptr)
{
    231c:	b510      	push	{r4, lr}
    231e:	0001      	movs	r1, r0
#ifdef CONFIG_ARCH_HAS_CUSTOM_SWAP_TO_MAIN
	arch_switch_to_main_thread(&z_main_thread, stack_ptr, bg_thread_main);
    2320:	4a02      	ldr	r2, [pc, #8]	@ (232c <switch_to_main_thread+0x10>)
    2322:	4b03      	ldr	r3, [pc, #12]	@ (2330 <switch_to_main_thread+0x14>)
    2324:	0018      	movs	r0, r3
    2326:	f7fe ffbf 	bl	12a8 <arch_switch_to_main_thread>
	 * current fake thread is not on a wait queue or ready queue, so it
	 * will never be rescheduled in.
	 */
	z_swap_unlocked();
#endif /* CONFIG_ARCH_HAS_CUSTOM_SWAP_TO_MAIN */
	CODE_UNREACHABLE; /* LCOV_EXCL_LINE */
    232a:	46c0      	nop			@ (mov r8, r8)
    232c:	000022d5 	.word	0x000022d5
    2330:	1ffff2a0 	.word	0x1ffff2a0

00002334 <z_init_cpu>:
{
    2334:	b570      	push	{r4, r5, r6, lr}
    2336:	0004      	movs	r4, r0
	init_idle_thread(id);
    2338:	f7ff ff3e 	bl	21b8 <init_idle_thread>
	_kernel.cpus[id].idle_thread = &z_idle_threads[id];
    233c:	0061      	lsls	r1, r4, #1
    233e:	1909      	adds	r1, r1, r4
    2340:	0189      	lsls	r1, r1, #6
    2342:	4b0d      	ldr	r3, [pc, #52]	@ (2378 <z_init_cpu+0x44>)
    2344:	18c9      	adds	r1, r1, r3
    2346:	4b0d      	ldr	r3, [pc, #52]	@ (237c <z_init_cpu+0x48>)
    2348:	00e0      	lsls	r0, r4, #3
    234a:	1b02      	subs	r2, r0, r4
    234c:	0092      	lsls	r2, r2, #2
    234e:	189a      	adds	r2, r3, r2
    2350:	60d1      	str	r1, [r2, #12]
	_kernel.cpus[id].id = id;
    2352:	7414      	strb	r4, [r2, #16]
		(K_KERNEL_STACK_BUFFER(z_interrupt_stacks[id]) +
    2354:	02e1      	lsls	r1, r4, #11
    2356:	4d0a      	ldr	r5, [pc, #40]	@ (2380 <z_init_cpu+0x4c>)
    2358:	1949      	adds	r1, r1, r5
    235a:	2580      	movs	r5, #128	@ 0x80
    235c:	012d      	lsls	r5, r5, #4
    235e:	46ac      	mov	ip, r5
    2360:	4461      	add	r1, ip
	_kernel.cpus[id].irq_stack =
    2362:	6051      	str	r1, [r2, #4]
	_kernel.cpus[id].usage = &_kernel.usage[id];
    2364:	0122      	lsls	r2, r4, #4
    2366:	3228      	adds	r2, #40	@ 0x28
    2368:	18d2      	adds	r2, r2, r3
    236a:	1b00      	subs	r0, r0, r4
    236c:	0080      	lsls	r0, r0, #2
    236e:	181b      	adds	r3, r3, r0
    2370:	619a      	str	r2, [r3, #24]
	_kernel.cpus[id].usage->track_usage =
    2372:	2301      	movs	r3, #1
    2374:	7213      	strb	r3, [r2, #8]
}
    2376:	bd70      	pop	{r4, r5, r6, pc}
    2378:	1ffff1e0 	.word	0x1ffff1e0
    237c:	1ffff360 	.word	0x1ffff360
    2380:	1ffffd00 	.word	0x1ffffd00

00002384 <prepare_multithreading>:
{
    2384:	b530      	push	{r4, r5, lr}
    2386:	b087      	sub	sp, #28
	z_sched_init();
    2388:	f000 fbe6 	bl	2b58 <z_sched_init>
	_kernel.ready_q.cache = &z_main_thread;
    238c:	4b10      	ldr	r3, [pc, #64]	@ (23d0 <prepare_multithreading+0x4c>)
    238e:	4c11      	ldr	r4, [pc, #68]	@ (23d4 <prepare_multithreading+0x50>)
    2390:	61dc      	str	r4, [r3, #28]
	stack_ptr = z_setup_new_thread(&z_main_thread, z_main_stack,
    2392:	4b11      	ldr	r3, [pc, #68]	@ (23d8 <prepare_multithreading+0x54>)
    2394:	2280      	movs	r2, #128	@ 0x80
    2396:	4911      	ldr	r1, [pc, #68]	@ (23dc <prepare_multithreading+0x58>)
    2398:	4811      	ldr	r0, [pc, #68]	@ (23e0 <prepare_multithreading+0x5c>)
    239a:	9005      	str	r0, [sp, #20]
    239c:	2001      	movs	r0, #1
    239e:	9004      	str	r0, [sp, #16]
    23a0:	2000      	movs	r0, #0
    23a2:	9003      	str	r0, [sp, #12]
    23a4:	9002      	str	r0, [sp, #8]
    23a6:	9001      	str	r0, [sp, #4]
    23a8:	9000      	str	r0, [sp, #0]
    23aa:	00d2      	lsls	r2, r2, #3
    23ac:	0020      	movs	r0, r4
    23ae:	f000 f8a3 	bl	24f8 <z_setup_new_thread>
    23b2:	0005      	movs	r5, r0
	thread->base.thread_state &= ~_THREAD_SLEEPING;
    23b4:	7c23      	ldrb	r3, [r4, #16]
    23b6:	2204      	movs	r2, #4
    23b8:	4393      	bics	r3, r2
    23ba:	7423      	strb	r3, [r4, #16]
	z_ready_thread(&z_main_thread);
    23bc:	0020      	movs	r0, r4
    23be:	f004 fb9d 	bl	6afc <z_ready_thread>
	z_init_cpu(0);
    23c2:	2000      	movs	r0, #0
    23c4:	f7ff ffb6 	bl	2334 <z_init_cpu>
}
    23c8:	0028      	movs	r0, r5
    23ca:	b007      	add	sp, #28
    23cc:	bd30      	pop	{r4, r5, pc}
    23ce:	46c0      	nop			@ (mov r8, r8)
    23d0:	1ffff360 	.word	0x1ffff360
    23d4:	1ffff2a0 	.word	0x1ffff2a0
    23d8:	000022d5 	.word	0x000022d5
    23dc:	20000600 	.word	0x20000600
    23e0:	00007834 	.word	0x00007834

000023e4 <z_cstart>:
 * @return Does not return
 */
__boot_func
FUNC_NO_STACK_PROTECTOR
FUNC_NORETURN void z_cstart(void)
{
    23e4:	b510      	push	{r4, lr}
	/* gcov hook needed to get the coverage report.*/
	gcov_static_init();

	/* initialize early init calls */
	z_sys_init_run_level(INIT_LEVEL_EARLY);
    23e6:	2000      	movs	r0, #0
    23e8:	f7ff ff18 	bl	221c <z_sys_init_run_level>
 * pointer) register, and switched to automatically when taking an exception.
 *
 */
static ALWAYS_INLINE void z_arm_interrupt_stack_setup(void)
{
	uint32_t msp = (uint32_t)(K_KERNEL_STACK_BUFFER(z_interrupt_stacks[0])) +
    23ec:	4b12      	ldr	r3, [pc, #72]	@ (2438 <z_cstart+0x54>)
  __ASM volatile ("MSR msp, %0" : : "r" (topOfMainStack) : );
    23ee:	f383 8808 	msr	MSP, r3
    23f2:	4912      	ldr	r1, [pc, #72]	@ (243c <z_cstart+0x58>)
    23f4:	6a0a      	ldr	r2, [r1, #32]
    23f6:	4b12      	ldr	r3, [pc, #72]	@ (2440 <z_cstart+0x5c>)
    23f8:	401a      	ands	r2, r3
    23fa:	23c0      	movs	r3, #192	@ 0xc0
    23fc:	041b      	lsls	r3, r3, #16
    23fe:	4313      	orrs	r3, r2
    2400:	620b      	str	r3, [r1, #32]

static ALWAYS_INLINE void arch_kernel_init(void)
{
	z_arm_interrupt_stack_setup();
	z_arm_exc_setup();
	z_arm_fault_init();
    2402:	f7fe fead 	bl	1160 <z_arm_fault_init>
	z_arm_cpu_idle_init();
    2406:	f7fe ff6f 	bl	12e8 <z_arm_cpu_idle_init>
	arch_kernel_init();

	LOG_CORE_INIT();

#if defined(CONFIG_MULTITHREADING)
	z_dummy_thread_init(&_thread_dummy);
    240a:	480e      	ldr	r0, [pc, #56]	@ (2444 <z_cstart+0x60>)
    240c:	f000 f8cc 	bl	25a8 <z_dummy_thread_init>
#endif /* CONFIG_MULTITHREADING */
	/* do any necessary initialization of static devices */
	z_device_state_init();

	soc_early_init_hook();
    2410:	f003 ff72 	bl	62f8 <soc_early_init_hook>
	/* Run kernel pre-init hooks before PRE_KERNEL device init, so those
	 * drivers may use the kernel objects initialized here. Entries are
	 * present only for subsystems that are linked in (pay-per-use); the
	 * walk references only the section bounds.
	 */
	STRUCT_SECTION_FOREACH(k_kernel_init_pre_entry, entry) {
    2414:	4c0c      	ldr	r4, [pc, #48]	@ (2448 <z_cstart+0x64>)
    2416:	e001      	b.n	241c <z_cstart+0x38>
		entry->init_fn();
    2418:	cc08      	ldmia	r4!, {r3}
    241a:	4798      	blx	r3
	STRUCT_SECTION_FOREACH(k_kernel_init_pre_entry, entry) {
    241c:	4b0b      	ldr	r3, [pc, #44]	@ (244c <z_cstart+0x68>)
    241e:	429c      	cmp	r4, r3
    2420:	d3fa      	bcc.n	2418 <z_cstart+0x34>
	}

	/* perform basic hardware initialization */
	z_sys_init_run_level(INIT_LEVEL_PRE_KERNEL_1);
    2422:	2001      	movs	r0, #1
    2424:	f7ff fefa 	bl	221c <z_sys_init_run_level>
#if defined(CONFIG_SMP)
	arch_smp_init();
#endif
	z_sys_init_run_level(INIT_LEVEL_PRE_KERNEL_2);
    2428:	2002      	movs	r0, #2
    242a:	f7ff fef7 	bl	221c <z_sys_init_run_level>
	timing_init();
	timing_start();
#endif /* CONFIG_TIMING_FUNCTIONS_NEED_AT_BOOT */

#ifdef CONFIG_MULTITHREADING
	switch_to_main_thread(prepare_multithreading());
    242e:	f7ff ffa9 	bl	2384 <prepare_multithreading>
    2432:	f7ff ff73 	bl	231c <switch_to_main_thread>
    2436:	46c0      	nop			@ (mov r8, r8)
    2438:	20000500 	.word	0x20000500
    243c:	e000ed00 	.word	0xe000ed00
    2440:	ff00ffff 	.word	0xff00ffff
    2444:	1ffff398 	.word	0x1ffff398
    2448:	00006f5c 	.word	0x00006f5c
    244c:	00006f5c 	.word	0x00006f5c

00002450 <setup_thread_stack>:
#endif /* CONFIG_THREAD_STACK_INFO */
}

static char *setup_thread_stack(struct k_thread *new_thread,
				k_thread_stack_t *stack, size_t stack_size)
{
    2450:	b570      	push	{r4, r5, r6, lr}
    2452:	b084      	sub	sp, #16
    2454:	0004      	movs	r4, r0
    2456:	000d      	movs	r5, r1
	struct stack_geometry geo = compute_stack_geometry(stack, stack_size);
    2458:	ae01      	add	r6, sp, #4
    245a:	0030      	movs	r0, r6
    245c:	f004 faba 	bl	69d4 <compute_stack_geometry>
	char *stack_ptr = map_thread_stack(new_thread, stack, &geo);
    2460:	0032      	movs	r2, r6
    2462:	0029      	movs	r1, r5
    2464:	0020      	movs	r0, r4
    2466:	f004 fabe 	bl	69e6 <map_thread_stack>
    246a:	0005      	movs	r5, r0
		" buf_size %zu stack_ptr=%p",
		stack, new_thread, geo.obj_size, (void *)geo.buf_start,
		geo.buf_size, (void *)stack_ptr);

	fill_init_stack(geo.buf_start, geo.buf_size);
	set_stack_sentinel(geo.buf_start);
    246c:	9b02      	ldr	r3, [sp, #8]
	*((uint32_t *)buf_start) = STACK_SENTINEL;
    246e:	4a09      	ldr	r2, [pc, #36]	@ (2494 <setup_thread_stack+0x44>)
    2470:	601a      	str	r2, [r3, #0]
	delta = reserve_stack_headroom(new_thread, stack_ptr, geo.buf_size);
    2472:	9a03      	ldr	r2, [sp, #12]
    2474:	0001      	movs	r1, r0
    2476:	0020      	movs	r0, r4
    2478:	f004 fac8 	bl	6a0c <reserve_stack_headroom>
	set_stack_info(new_thread, geo.buf_start, geo.buf_size, delta);
    247c:	9902      	ldr	r1, [sp, #8]
    247e:	9a03      	ldr	r2, [sp, #12]
	new_thread->stack_info.start = (uintptr_t)buf_start;
    2480:	2390      	movs	r3, #144	@ 0x90
    2482:	50e1      	str	r1, [r4, r3]
	new_thread->stack_info.size = buf_size;
    2484:	3304      	adds	r3, #4
    2486:	50e2      	str	r2, [r4, r3]
	new_thread->stack_info.delta = delta;
    2488:	3304      	adds	r3, #4
    248a:	50e0      	str	r0, [r4, r3]

	return stack_ptr - delta;
    248c:	1a28      	subs	r0, r5, r0
}
    248e:	b004      	add	sp, #16
    2490:	bd70      	pop	{r4, r5, r6, pc}
    2492:	46c0      	nop			@ (mov r8, r8)
    2494:	f0f0f0f0 	.word	0xf0f0f0f0

00002498 <z_check_stack_sentinel>:
	if ((_current->base.thread_state & _THREAD_DUMMY) != 0) {
    2498:	4b08      	ldr	r3, [pc, #32]	@ (24bc <z_check_stack_sentinel+0x24>)
    249a:	689a      	ldr	r2, [r3, #8]
    249c:	7c13      	ldrb	r3, [r2, #16]
    249e:	07db      	lsls	r3, r3, #31
    24a0:	d40a      	bmi.n	24b8 <z_check_stack_sentinel+0x20>
	stack = (uint32_t *)_current->stack_info.start;
    24a2:	2390      	movs	r3, #144	@ 0x90
    24a4:	58d3      	ldr	r3, [r2, r3]
	if (*stack != STACK_SENTINEL) {
    24a6:	6819      	ldr	r1, [r3, #0]
    24a8:	4a05      	ldr	r2, [pc, #20]	@ (24c0 <z_check_stack_sentinel+0x28>)
    24aa:	4291      	cmp	r1, r2
    24ac:	d004      	beq.n	24b8 <z_check_stack_sentinel+0x20>
		*stack = STACK_SENTINEL;
    24ae:	601a      	str	r2, [r3, #0]
    24b0:	b662      	cpsie	i
		z_except_reason(K_ERR_STACK_CHK_FAIL);
    24b2:	2302      	movs	r3, #2
    24b4:	1c18      	adds	r0, r3, #0
    24b6:	df02      	svc	2
}
    24b8:	4770      	bx	lr
    24ba:	46c0      	nop			@ (mov r8, r8)
    24bc:	1ffff360 	.word	0x1ffff360
    24c0:	f0f0f0f0 	.word	0xf0f0f0f0

000024c4 <z_swap_irqlock>:
{
	ARG_UNUSED(thread);
}

static inline int z_swap_irqlock(unsigned int key)
{
    24c4:	b510      	push	{r4, lr}
    24c6:	0004      	movs	r4, r0
	int ret;
	z_check_stack_sentinel();
    24c8:	f7ff ffe6 	bl	2498 <z_check_stack_sentinel>

#ifndef CONFIG_USE_SWITCH
static ALWAYS_INLINE int arch_swap(unsigned int key)
{
	/* store off key and return value */
	_current->arch.basepri = key;
    24cc:	4a08      	ldr	r2, [pc, #32]	@ (24f0 <z_swap_irqlock+0x2c>)
    24ce:	6891      	ldr	r1, [r2, #8]
    24d0:	23b4      	movs	r3, #180	@ 0xb4
    24d2:	50cc      	str	r4, [r1, r3]
	_current->arch.swap_return_value = -EAGAIN;
    24d4:	3304      	adds	r3, #4
    24d6:	200b      	movs	r0, #11
    24d8:	4240      	negs	r0, r0
    24da:	50c8      	str	r0, [r1, r3]
	/* Set the pending bit to make sure we will take a PendSV exception.
	 * PENDSVSET is write-one-to-set and writing zero to the other ICSR
	 * bits has no effect, so a plain store is sufficient (and avoids a
	 * read-modify-write that could write back stale state bits).
	 */
	SCB->ICSR = SCB_ICSR_PENDSVSET_Msk;
    24dc:	4905      	ldr	r1, [pc, #20]	@ (24f4 <z_swap_irqlock+0x30>)
    24de:	2080      	movs	r0, #128	@ 0x80
    24e0:	0540      	lsls	r0, r0, #21
    24e2:	6048      	str	r0, [r1, #4]
    24e4:	b662      	cpsie	i
  __ASM volatile ("isb 0xF":::"memory");
    24e6:	f3bf 8f6f 	isb	sy
	__ISB();

	/* Context switch is performed here. Returning implies the
	 * thread has been context-switched-in again.
	 */
	return _current->arch.swap_return_value;
    24ea:	6892      	ldr	r2, [r2, #8]
    24ec:	58d0      	ldr	r0, [r2, r3]
	z_assert_can_swap(key, NULL);
#endif /* CONFIG_SPIN_VALIDATE */

	ret = arch_swap(key);
	return ret;
}
    24ee:	bd10      	pop	{r4, pc}
    24f0:	1ffff360 	.word	0x1ffff360
    24f4:	e000ed00 	.word	0xe000ed00

000024f8 <z_setup_new_thread>:
char *z_setup_new_thread(struct k_thread *new_thread,
			 k_thread_stack_t *stack, size_t stack_size,
			 k_thread_entry_t entry,
			 void *p1, void *p2, void *p3,
			 int prio, uint32_t options, const char *name)
{
    24f8:	b5f0      	push	{r4, r5, r6, r7, lr}
    24fa:	46c6      	mov	lr, r8
    24fc:	b500      	push	{lr}
    24fe:	b084      	sub	sp, #16
    2500:	0004      	movs	r4, r0
    2502:	000f      	movs	r7, r1
    2504:	0015      	movs	r5, r2
    2506:	4698      	mov	r8, r3
	SYS_DLIST_FOR_EACH_CONTAINER_SAFE(&((wq)->waitq), thread_ptr, \
					  loop_ptr, base.qnode_dlist)

static inline void z_waitq_init(_wait_q_t *w)
{
	sys_dlist_init(&w->waitq);
    2508:	0003      	movs	r3, r0
    250a:	3368      	adds	r3, #104	@ 0x68
 * @param list the doubly-linked list
 */

static inline void sys_dlist_init(sys_dlist_t *list)
{
	list->head = (sys_dnode_t *)list;
    250c:	6683      	str	r3, [r0, #104]	@ 0x68
	list->tail = (sys_dnode_t *)list;
    250e:	66c3      	str	r3, [r0, #108]	@ 0x6c
	init_thread_userspace(new_thread, stack, options);

	z_waitq_init(&new_thread->join_queue);

	/* Initialize various struct k_thread members */
	z_init_thread_base(&new_thread->base, prio, _THREAD_SLEEPING, options);
    2510:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
    2512:	2204      	movs	r2, #4
    2514:	990d      	ldr	r1, [sp, #52]	@ 0x34
    2516:	f004 fa82 	bl	6a1e <z_init_thread_base>
	stack_ptr = setup_thread_stack(new_thread, stack, stack_size);
    251a:	002a      	movs	r2, r5
    251c:	0039      	movs	r1, r7
    251e:	0020      	movs	r0, r4
    2520:	f7ff ff96 	bl	2450 <setup_thread_stack>
    2524:	0005      	movs	r5, r0
 *
 * @param list A pointer on the list to initialize
 */
static inline void sys_slist_init(sys_slist_t *list)
{
	list->head = NULL;
    2526:	2600      	movs	r6, #0
    2528:	23a4      	movs	r3, #164	@ 0xa4
    252a:	50e6      	str	r6, [r4, r3]
	list->tail = NULL;
    252c:	0023      	movs	r3, r4
    252e:	33a4      	adds	r3, #164	@ 0xa4
    2530:	605e      	str	r6, [r3, #4]

#if Z_MUTEX_PI_ENABLED
	sys_slist_init(&new_thread->held_mutexes);
	new_thread->mutex_pended_on = NULL;
    2532:	23ac      	movs	r3, #172	@ 0xac
    2534:	50e6      	str	r6, [r4, r3]
	new_thread->orig_prio = new_thread->base.prio;
    2536:	220e      	movs	r2, #14
    2538:	56a2      	ldrsb	r2, [r4, r2]
    253a:	3304      	adds	r3, #4
    253c:	54e2      	strb	r2, [r4, r3]
#endif /* Z_MUTEX_PI_ENABLED */

	setup_shadow_stack(new_thread, stack);
	assert_thread_coherence(new_thread, stack);

	arch_new_thread(new_thread, stack, stack_ptr, entry, p1, p2, p3);
    253e:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
    2540:	9302      	str	r3, [sp, #8]
    2542:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
    2544:	9301      	str	r3, [sp, #4]
    2546:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    2548:	9300      	str	r3, [sp, #0]
    254a:	4643      	mov	r3, r8
    254c:	0002      	movs	r2, r0
    254e:	0039      	movs	r1, r7
    2550:	0020      	movs	r0, r4
    2552:	f7fe fe91 	bl	1278 <arch_new_thread>

	/* static threads overwrite it afterwards with real value */
	new_thread->init_data = NULL;
    2556:	6666      	str	r6, [r4, #100]	@ 0x64
	set_thread_name(thread, name);
    2558:	990f      	ldr	r1, [sp, #60]	@ 0x3c
    255a:	0020      	movs	r0, r4
    255c:	f004 fa46 	bl	69ec <set_thread_name>
	init_thread_name(new_thread, name);
	init_thread_cpu_mask(new_thread);

	/* _current may be NULL if the dummy thread is not used */
	if (IS_ENABLED(CONFIG_ARCH_HAS_CUSTOM_SWAP_TO_MAIN) &&
	    (_current == NULL)) {
    2560:	4b0c      	ldr	r3, [pc, #48]	@ (2594 <z_setup_new_thread+0x9c>)
    2562:	689b      	ldr	r3, [r3, #8]
	if (IS_ENABLED(CONFIG_ARCH_HAS_CUSTOM_SWAP_TO_MAIN) &&
    2564:	2b00      	cmp	r3, #0
    2566:	d010      	beq.n	258a <z_setup_new_thread+0x92>
		return stack_ptr;
	}

	init_thread_userspace_perms(new_thread, options);
	init_thread_deadline(new_thread);
	new_thread->resource_pool = _current->resource_pool;
    2568:	229c      	movs	r2, #156	@ 0x9c
    256a:	589b      	ldr	r3, [r3, r2]
    256c:	50a3      	str	r3, [r4, r2]
	thread->base.usage = (struct k_cycle_stats) {};
    256e:	0020      	movs	r0, r4
    2570:	3030      	adds	r0, #48	@ 0x30
    2572:	3a8c      	subs	r2, #140	@ 0x8c
    2574:	2100      	movs	r1, #0
    2576:	f000 ffc1 	bl	34fc <memset>
	thread->base.usage.track_usage = CONFIG_SCHED_THREAD_USAGE_AUTO_ENABLE;
    257a:	2338      	movs	r3, #56	@ 0x38
    257c:	2201      	movs	r2, #1
    257e:	54e2      	strb	r2, [r4, r3]
	init_thread_usage(new_thread);

	SYS_PORT_TRACING_OBJ_FUNC(k_thread, create, new_thread);

	return stack_ptr;
}
    2580:	0028      	movs	r0, r5
    2582:	b004      	add	sp, #16
    2584:	bc80      	pop	{r7}
    2586:	46b8      	mov	r8, r7
    2588:	bdf0      	pop	{r4, r5, r6, r7, pc}
		new_thread->resource_pool = NULL;
    258a:	339c      	adds	r3, #156	@ 0x9c
    258c:	2200      	movs	r2, #0
    258e:	50e2      	str	r2, [r4, r3]
		return stack_ptr;
    2590:	e7f6      	b.n	2580 <z_setup_new_thread+0x88>
    2592:	46c0      	nop			@ (mov r8, r8)
    2594:	1ffff360 	.word	0x1ffff360

00002598 <z_thread_mark_switched_in>:
#include <zephyr/syscalls/k_thread_timeout_expires_ticks_mrsh.c>
#endif /* CONFIG_USERSPACE */

#ifdef CONFIG_INSTRUMENT_THREAD_SWITCHING
void z_thread_mark_switched_in(void)
{
    2598:	b510      	push	{r4, lr}
#if defined(CONFIG_SCHED_THREAD_USAGE) && !defined(CONFIG_USE_SWITCH)
	z_sched_usage_start(_current);
    259a:	4b02      	ldr	r3, [pc, #8]	@ (25a4 <z_thread_mark_switched_in+0xc>)
    259c:	6898      	ldr	r0, [r3, #8]
    259e:	f000 fdb3 	bl	3108 <z_sched_usage_start>
#endif /* CONFIG_SCHED_THREAD_USAGE && !CONFIG_USE_SWITCH */

#ifdef CONFIG_TRACING
	SYS_PORT_TRACING_FUNC(k_thread, switched_in);
#endif /* CONFIG_TRACING */
}
    25a2:	bd10      	pop	{r4, pc}
    25a4:	1ffff360 	.word	0x1ffff360

000025a8 <z_dummy_thread_init>:

#endif /* CONFIG_THREAD_ABORT_NEED_CLEANUP */

void z_dummy_thread_init(struct k_thread *dummy_thread)
{
	dummy_thread->base.thread_state = _THREAD_DUMMY;
    25a8:	2301      	movs	r3, #1
    25aa:	7403      	strb	r3, [r0, #16]
#ifdef CONFIG_SCHED_CPU_MASK
	dummy_thread->base.cpu_mask = -1;
#endif /* CONFIG_SCHED_CPU_MASK */
	dummy_thread->base.user_options = K_ESSENTIAL;
    25ac:	8183      	strh	r3, [r0, #12]
	list->head = NULL;
    25ae:	2300      	movs	r3, #0
    25b0:	22a4      	movs	r2, #164	@ 0xa4
    25b2:	5083      	str	r3, [r0, r2]
	list->tail = NULL;
    25b4:	0002      	movs	r2, r0
    25b6:	32a4      	adds	r2, #164	@ 0xa4
    25b8:	6053      	str	r3, [r2, #4]
#if Z_MUTEX_PI_ENABLED
	sys_slist_init(&dummy_thread->held_mutexes);
	dummy_thread->mutex_pended_on = NULL;
    25ba:	22ac      	movs	r2, #172	@ 0xac
    25bc:	5083      	str	r3, [r0, r2]
	dummy_thread->orig_prio = dummy_thread->base.prio;
    25be:	210e      	movs	r1, #14
    25c0:	5641      	ldrsb	r1, [r0, r1]
    25c2:	3204      	adds	r2, #4
    25c4:	5481      	strb	r1, [r0, r2]
#endif /* Z_MUTEX_PI_ENABLED */
#ifdef CONFIG_THREAD_STACK_INFO
	dummy_thread->stack_info.start = 0U;
    25c6:	3a20      	subs	r2, #32
    25c8:	5083      	str	r3, [r0, r2]
	dummy_thread->stack_info.size = 0U;
    25ca:	3204      	adds	r2, #4
    25cc:	5083      	str	r3, [r0, r2]
	dummy_thread->mem_domain_info.mem_domain = &k_mem_domain_default;
#endif /* CONFIG_USERSPACE */
#if (K_HEAP_MEM_POOL_SIZE > 0)
	k_thread_system_pool_assign(dummy_thread);
#else
	dummy_thread->resource_pool = NULL;
    25ce:	3208      	adds	r2, #8
    25d0:	5083      	str	r3, [r0, r2]

#ifdef CONFIG_TIMESLICE_PER_THREAD
	dummy_thread->base.slice_ticks = 0;
#endif /* CONFIG_TIMESLICE_PER_THREAD */

	z_current_thread_set(dummy_thread);
    25d2:	4b01      	ldr	r3, [pc, #4]	@ (25d8 <z_dummy_thread_init+0x30>)
    25d4:	6098      	str	r0, [r3, #8]
}
    25d6:	4770      	bx	lr
    25d8:	1ffff360 	.word	0x1ffff360

000025dc <z_impl_k_thread_join>:
	SYS_PORT_TRACING_OBJ_FUNC_EXIT(k_thread, abort, thread);
}
#endif /* !CONFIG_ARCH_HAS_THREAD_ABORT */

int z_impl_k_thread_join(struct k_thread *thread, k_timeout_t timeout)
{
    25dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    25de:	0015      	movs	r5, r2
    25e0:	001c      	movs	r4, r3
  __ASM volatile ("MRS %0, primask" : "=r" (result) );
    25e2:	f3ef 8610 	mrs	r6, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    25e6:	b672      	cpsid	i

	/* Note that we need to use the underlying arch-specific lock
	 * implementation.  The "irq_lock()" API in SMP context is
	 * actually a wrapper for a global spinlock!
	 */
	k.key = arch_irq_lock();
    25e8:	0032      	movs	r2, r6
	return (thread->base.thread_state & _THREAD_DEAD) != 0U;
    25ea:	7c03      	ldrb	r3, [r0, #16]
	k_spinlock_key_t key = z_sched_spinlock_lock();
	int ret;

	SYS_PORT_TRACING_OBJ_FUNC_ENTER(k_thread, join, thread, timeout);

	if (z_is_thread_dead(thread)) {
    25ec:	071b      	lsls	r3, r3, #28
    25ee:	d425      	bmi.n	263c <z_impl_k_thread_join+0x60>
		z_sched_switch_spin(thread);
		ret = 0;
	} else if (K_TIMEOUT_EQ(timeout, K_NO_WAIT)) {
    25f0:	0023      	movs	r3, r4
    25f2:	432b      	orrs	r3, r5
    25f4:	d01c      	beq.n	2630 <z_impl_k_thread_join+0x54>
		ret = -EBUSY;
	} else if ((thread == _current) ||
    25f6:	4b14      	ldr	r3, [pc, #80]	@ (2648 <z_impl_k_thread_join+0x6c>)
    25f8:	689b      	ldr	r3, [r3, #8]
    25fa:	4283      	cmp	r3, r0
    25fc:	d01b      	beq.n	2636 <z_impl_k_thread_join+0x5a>
		   (thread->base.pended_on == &_current->join_queue)) {
    25fe:	6887      	ldr	r7, [r0, #8]
    2600:	0019      	movs	r1, r3
    2602:	3168      	adds	r1, #104	@ 0x68
	} else if ((thread == _current) ||
    2604:	428f      	cmp	r7, r1
    2606:	d102      	bne.n	260e <z_impl_k_thread_join+0x32>
		ret = -EDEADLK;
    2608:	202d      	movs	r0, #45	@ 0x2d
    260a:	4240      	negs	r0, r0
    260c:	e017      	b.n	263e <z_impl_k_thread_join+0x62>
	} else {
		__ASSERT(!arch_is_in_isr(), "cannot join in ISR");
		z_sched_add_to_waitq_locked(_current, &thread->join_queue);
    260e:	0001      	movs	r1, r0
    2610:	3168      	adds	r1, #104	@ 0x68
    2612:	0018      	movs	r0, r3
    2614:	f004 fa8a 	bl	6b2c <z_sched_add_to_waitq_locked>
		z_add_thread_timeout(_current, timeout);
    2618:	4b0b      	ldr	r3, [pc, #44]	@ (2648 <z_impl_k_thread_join+0x6c>)
    261a:	6898      	ldr	r0, [r3, #8]
    261c:	490b      	ldr	r1, [pc, #44]	@ (264c <z_impl_k_thread_join+0x70>)
    261e:	3018      	adds	r0, #24
    2620:	002a      	movs	r2, r5
    2622:	0023      	movs	r3, r4
    2624:	f000 fc5e 	bl	2ee4 <z_add_timeout>
 * handling.
 */
static ALWAYS_INLINE int z_swap(struct k_spinlock *lock, k_spinlock_key_t key)
{
	k_spin_release(lock);
	return z_swap_irqlock(key.key);
    2628:	0030      	movs	r0, r6
    262a:	f7ff ff4b 	bl	24c4 <z_swap_irqlock>

		SYS_PORT_TRACING_OBJ_FUNC_BLOCKING(k_thread, join, thread, timeout);
		ret = z_swap_locked(key);
		SYS_PORT_TRACING_OBJ_FUNC_EXIT(k_thread, join, thread, timeout, ret);

		return ret;
    262e:	e009      	b.n	2644 <z_impl_k_thread_join+0x68>
		ret = -EBUSY;
    2630:	2010      	movs	r0, #16
    2632:	4240      	negs	r0, r0
    2634:	e003      	b.n	263e <z_impl_k_thread_join+0x62>
		ret = -EDEADLK;
    2636:	202d      	movs	r0, #45	@ 0x2d
    2638:	4240      	negs	r0, r0
    263a:	e000      	b.n	263e <z_impl_k_thread_join+0x62>
		ret = 0;
    263c:	2000      	movs	r0, #0
    263e:	2a00      	cmp	r2, #0
    2640:	d100      	bne.n	2644 <z_impl_k_thread_join+0x68>
    __ASM volatile ("cpsie i" : : : "memory");
    2642:	b662      	cpsie	i

	SYS_PORT_TRACING_OBJ_FUNC_EXIT(k_thread, join, thread, timeout, ret);

	z_sched_spinlock_unlock(key);
	return ret;
}
    2644:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    2646:	46c0      	nop			@ (mov r8, r8)
    2648:	1ffff360 	.word	0x1ffff360
    264c:	00006bc9 	.word	0x00006bc9

00002650 <z_swap_irqlock>:
{
    2650:	b510      	push	{r4, lr}
    2652:	0004      	movs	r4, r0
	z_check_stack_sentinel();
    2654:	f7ff ff20 	bl	2498 <z_check_stack_sentinel>
	_current->arch.basepri = key;
    2658:	4a08      	ldr	r2, [pc, #32]	@ (267c <z_swap_irqlock+0x2c>)
    265a:	6891      	ldr	r1, [r2, #8]
    265c:	23b4      	movs	r3, #180	@ 0xb4
    265e:	50cc      	str	r4, [r1, r3]
	_current->arch.swap_return_value = -EAGAIN;
    2660:	3304      	adds	r3, #4
    2662:	200b      	movs	r0, #11
    2664:	4240      	negs	r0, r0
    2666:	50c8      	str	r0, [r1, r3]
	SCB->ICSR = SCB_ICSR_PENDSVSET_Msk;
    2668:	4905      	ldr	r1, [pc, #20]	@ (2680 <z_swap_irqlock+0x30>)
    266a:	2080      	movs	r0, #128	@ 0x80
    266c:	0540      	lsls	r0, r0, #21
    266e:	6048      	str	r0, [r1, #4]
    2670:	b662      	cpsie	i
  __ASM volatile ("isb 0xF":::"memory");
    2672:	f3bf 8f6f 	isb	sy
	return _current->arch.swap_return_value;
    2676:	6892      	ldr	r2, [r2, #8]
    2678:	58d0      	ldr	r0, [r2, r3]
}
    267a:	bd10      	pop	{r4, pc}
    267c:	1ffff360 	.word	0x1ffff360
    2680:	e000ed00 	.word	0xe000ed00

00002684 <move_current_to_end_of_prio_q>:
	return thread;
#endif /* CONFIG_SMP */
}

void move_current_to_end_of_prio_q(void)
{
    2684:	b510      	push	{r4, lr}
static ALWAYS_INLINE void z_priq_simple_yield(sys_dlist_t *pq)
{
#ifndef CONFIG_SMP
	sys_dnode_t *n;

	n = sys_dlist_peek_next_no_check(pq, &_current->base.qnode_dlist);
    2686:	4b21      	ldr	r3, [pc, #132]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    2688:	689a      	ldr	r2, [r3, #8]
 */

static inline sys_dnode_t *sys_dlist_peek_next_no_check(const sys_dlist_t *list,
							const sys_dnode_t *node)
{
	return (node == list->tail) ? NULL : node->next;
    268a:	6a5b      	ldr	r3, [r3, #36]	@ 0x24
    268c:	429a      	cmp	r2, r3
    268e:	d005      	beq.n	269c <move_current_to_end_of_prio_q+0x18>
    2690:	6813      	ldr	r3, [r2, #0]
 *
 * @param node the node to dequeue
 */
static inline void sys_dlist_dequeue(sys_dnode_t *node)
{
	sys_dnode_t *const prev = node->prev;
    2692:	6851      	ldr	r1, [r2, #4]
	sys_dnode_t *const next = node->next;
    2694:	6812      	ldr	r2, [r2, #0]

	prev->next = next;
    2696:	600a      	str	r2, [r1, #0]
	next->prev = prev;
    2698:	6051      	str	r1, [r2, #4]
}
    269a:	e006      	b.n	26aa <move_current_to_end_of_prio_q+0x26>
	return (node == list->tail) ? NULL : node->next;
    269c:	2300      	movs	r3, #0
    269e:	e7f8      	b.n	2692 <move_current_to_end_of_prio_q+0xe>
    26a0:	4a1a      	ldr	r2, [pc, #104]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    26a2:	6a52      	ldr	r2, [r2, #36]	@ 0x24
    26a4:	4293      	cmp	r3, r2
    26a6:	d013      	beq.n	26d0 <move_current_to_end_of_prio_q+0x4c>
    26a8:	681b      	ldr	r3, [r3, #0]
	 * As it is possible that the current thread was not at the head of
	 * the run queue, start searching from the present position for where
	 * to re-insert it.
	 */

	while (n != NULL) {
    26aa:	2b00      	cmp	r3, #0
    26ac:	d010      	beq.n	26d0 <move_current_to_end_of_prio_q+0x4c>
		t = CONTAINER_OF(n, struct k_thread, base.qnode_dlist);
		if (z_sched_prio_cmp(_current, t) > 0) {
    26ae:	4a17      	ldr	r2, [pc, #92]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    26b0:	6890      	ldr	r0, [r2, #8]
	int32_t b1 = thread_1->base.prio;
    26b2:	210e      	movs	r1, #14
    26b4:	5641      	ldrsb	r1, [r0, r1]
	int32_t b2 = thread_2->base.prio;
    26b6:	220e      	movs	r2, #14
    26b8:	569a      	ldrsb	r2, [r3, r2]
	if (b1 != b2) {
    26ba:	4291      	cmp	r1, r2
    26bc:	d0f0      	beq.n	26a0 <move_current_to_end_of_prio_q+0x1c>
		return b2 - b1;
    26be:	1a52      	subs	r2, r2, r1
		if (z_sched_prio_cmp(_current, t) > 0) {
    26c0:	2a00      	cmp	r2, #0
    26c2:	dded      	ble.n	26a0 <move_current_to_end_of_prio_q+0x1c>
	sys_dnode_t *const prev = successor->prev;
    26c4:	685a      	ldr	r2, [r3, #4]
	node->prev = prev;
    26c6:	6042      	str	r2, [r0, #4]
	node->next = successor;
    26c8:	6003      	str	r3, [r0, #0]
	prev->next = node;
    26ca:	6010      	str	r0, [r2, #0]
	successor->prev = node;
    26cc:	6058      	str	r0, [r3, #4]
			sys_dlist_insert(&t->base.qnode_dlist,
					 &_current->base.qnode_dlist);
			return;
    26ce:	e008      	b.n	26e2 <move_current_to_end_of_prio_q+0x5e>
		}
		n = sys_dlist_peek_next_no_check(pq, n);
	}

	sys_dlist_append(pq, &_current->base.qnode_dlist);
    26d0:	4b0e      	ldr	r3, [pc, #56]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    26d2:	689a      	ldr	r2, [r3, #8]
	sys_dnode_t *const tail = list->tail;
    26d4:	6a59      	ldr	r1, [r3, #36]	@ 0x24
	node->next = list;
    26d6:	0018      	movs	r0, r3
    26d8:	3020      	adds	r0, #32
    26da:	6010      	str	r0, [r2, #0]
	node->prev = tail;
    26dc:	6051      	str	r1, [r2, #4]
	tail->next = node;
    26de:	600a      	str	r2, [r1, #0]
	list->tail = node;
    26e0:	625a      	str	r2, [r3, #36]	@ 0x24
	return list->head == list;
    26e2:	4b0a      	ldr	r3, [pc, #40]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    26e4:	6a1c      	ldr	r4, [r3, #32]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    26e6:	3320      	adds	r3, #32
    26e8:	429c      	cmp	r4, r3
    26ea:	d00b      	beq.n	2704 <move_current_to_end_of_prio_q+0x80>
static ALWAYS_INLINE struct k_thread *z_priq_simple_best(sys_dlist_t *pq)
{
	struct k_thread *thread = NULL;
	sys_dnode_t *n = sys_dlist_peek_head(pq);

	if (n != NULL) {
    26ec:	2c00      	cmp	r4, #0
    26ee:	d009      	beq.n	2704 <move_current_to_end_of_prio_q+0x80>
#ifndef CONFIG_SMP
	struct k_thread *thread = next_up();

	if (should_preempt(thread, preempt_ok)) {
#ifdef CONFIG_TIMESLICING
		if (thread != _current) {
    26f0:	4b06      	ldr	r3, [pc, #24]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    26f2:	689b      	ldr	r3, [r3, #8]
    26f4:	429c      	cmp	r4, r3
    26f6:	d002      	beq.n	26fe <move_current_to_end_of_prio_q+0x7a>
			z_time_slice_reset(thread);
    26f8:	0020      	movs	r0, r4
    26fa:	f004 fa7f 	bl	6bfc <z_time_slice_reset>
		}
#endif /* CONFIG_TIMESLICING */
		update_metairq_preempt(thread);
		_kernel.ready_q.cache = thread;
    26fe:	4b03      	ldr	r3, [pc, #12]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    2700:	61dc      	str	r4, [r3, #28]
}
    2702:	bd10      	pop	{r4, pc}
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
    2704:	4b01      	ldr	r3, [pc, #4]	@ (270c <move_current_to_end_of_prio_q+0x88>)
    2706:	68dc      	ldr	r4, [r3, #12]
    2708:	e7f2      	b.n	26f0 <move_current_to_end_of_prio_q+0x6c>
    270a:	46c0      	nop			@ (mov r8, r8)
    270c:	1ffff360 	.word	0x1ffff360

00002710 <z_sched_ready_locked>:
	ARG_UNUSED(thread);
	return NULL;
}

static inline void ready_thread(struct k_thread *thread)
{
    2710:	b510      	push	{r4, lr}
	return (thread->base.thread_state & state) != 0U;
    2712:	7c02      	ldrb	r2, [r0, #16]
#endif /* CONFIG_KERNEL_COHERENCE */

	/* If thread is queued already, do not try and added it to the
	 * run queue again
	 */
	if (!z_is_thread_queued(thread) && z_is_thread_ready(thread)) {
    2714:	2310      	movs	r3, #16
    2716:	56c3      	ldrsb	r3, [r0, r3]
    2718:	2b00      	cmp	r3, #0
    271a:	db3e      	blt.n	279a <z_sched_ready_locked+0x8a>
    271c:	06d3      	lsls	r3, r2, #27
    271e:	d13c      	bne.n	279a <z_sched_ready_locked+0x8a>
	thread->base.thread_state |= _THREAD_QUEUED;
    2720:	2380      	movs	r3, #128	@ 0x80
    2722:	425b      	negs	r3, r3
    2724:	4313      	orrs	r3, r2
    2726:	7403      	strb	r3, [r0, #16]
	return list->head == list;
    2728:	4a25      	ldr	r2, [pc, #148]	@ (27c0 <z_sched_ready_locked+0xb0>)
    272a:	6a13      	ldr	r3, [r2, #32]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    272c:	3220      	adds	r2, #32
    272e:	4293      	cmp	r3, r2
    2730:	d03d      	beq.n	27ae <z_sched_ready_locked+0x9e>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
    2732:	2b00      	cmp	r3, #0
    2734:	d010      	beq.n	2758 <z_sched_ready_locked+0x48>
	int32_t b1 = thread_1->base.prio;
    2736:	210e      	movs	r1, #14
    2738:	5641      	ldrsb	r1, [r0, r1]
	int32_t b2 = thread_2->base.prio;
    273a:	220e      	movs	r2, #14
    273c:	569a      	ldrsb	r2, [r3, r2]
	if (b1 != b2) {
    273e:	4291      	cmp	r1, r2
    2740:	d002      	beq.n	2748 <z_sched_ready_locked+0x38>
		return b2 - b1;
    2742:	1a52      	subs	r2, r2, r1
		if (z_sched_prio_cmp(thread, t) > 0) {
    2744:	2a00      	cmp	r2, #0
    2746:	dc29      	bgt.n	279c <z_sched_ready_locked+0x8c>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
    2748:	0019      	movs	r1, r3
	return (node == list->tail) ? NULL : node->next;
    274a:	4a1d      	ldr	r2, [pc, #116]	@ (27c0 <z_sched_ready_locked+0xb0>)
    274c:	6a52      	ldr	r2, [r2, #36]	@ 0x24
    274e:	4293      	cmp	r3, r2
    2750:	d002      	beq.n	2758 <z_sched_ready_locked+0x48>
    2752:	681b      	ldr	r3, [r3, #0]
    2754:	2b00      	cmp	r3, #0
    2756:	d127      	bne.n	27a8 <z_sched_ready_locked+0x98>
	sys_dnode_t *const tail = list->tail;
    2758:	4b19      	ldr	r3, [pc, #100]	@ (27c0 <z_sched_ready_locked+0xb0>)
    275a:	6a5a      	ldr	r2, [r3, #36]	@ 0x24
	node->next = list;
    275c:	0019      	movs	r1, r3
    275e:	3120      	adds	r1, #32
    2760:	6001      	str	r1, [r0, #0]
	node->prev = tail;
    2762:	6042      	str	r2, [r0, #4]
	tail->next = node;
    2764:	6010      	str	r0, [r2, #0]
	list->tail = node;
    2766:	6258      	str	r0, [r3, #36]	@ 0x24
	return list->head == list;
    2768:	4b15      	ldr	r3, [pc, #84]	@ (27c0 <z_sched_ready_locked+0xb0>)
    276a:	6a1c      	ldr	r4, [r3, #32]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    276c:	3320      	adds	r3, #32
    276e:	429c      	cmp	r4, r3
    2770:	d01f      	beq.n	27b2 <z_sched_ready_locked+0xa2>
	if (n != NULL) {
    2772:	2c00      	cmp	r4, #0
    2774:	d01d      	beq.n	27b2 <z_sched_ready_locked+0xa2>
	}

	__ASSERT(_current != NULL, "");

	/* Or if we're pended/suspended/dummy (duh) */
	if (z_is_thread_prevented_from_running(_current)) {
    2776:	4b12      	ldr	r3, [pc, #72]	@ (27c0 <z_sched_ready_locked+0xb0>)
    2778:	689b      	ldr	r3, [r3, #8]
	uint8_t state = thread->base.thread_state;
    277a:	7c1a      	ldrb	r2, [r3, #16]
	if (z_is_thread_prevented_from_running(_current)) {
    277c:	06d2      	lsls	r2, r2, #27
    277e:	d105      	bne.n	278c <z_sched_ready_locked+0x7c>
	return thread->base.preempt <= _PREEMPT_THRESHOLD;
    2780:	89da      	ldrh	r2, [r3, #14]
	}

	/* Otherwise we have to be running a preemptible thread or
	 * switching to a metairq
	 */
	if (thread_is_preemptible(_current) || thread_is_metairq(thread)) {
    2782:	2a7f      	cmp	r2, #127	@ 0x7f
    2784:	d902      	bls.n	278c <z_sched_ready_locked+0x7c>
	return node->next != NULL;
    2786:	69a2      	ldr	r2, [r4, #24]
	/* Edge case on ARM where a thread can be pended out of an
	 * interrupt handler before the "synchronous" swap starts
	 * context switching.  Platforms with atomic swap can never
	 * hit this.
	 */
	if (IS_ENABLED(CONFIG_SWAP_NONATOMIC)
    2788:	2a00      	cmp	r2, #0
    278a:	d015      	beq.n	27b8 <z_sched_ready_locked+0xa8>
		if (thread != _current) {
    278c:	42a3      	cmp	r3, r4
    278e:	d002      	beq.n	2796 <z_sched_ready_locked+0x86>
			z_time_slice_reset(thread);
    2790:	0020      	movs	r0, r4
    2792:	f004 fa33 	bl	6bfc <z_time_slice_reset>
		_kernel.ready_q.cache = thread;
    2796:	4b0a      	ldr	r3, [pc, #40]	@ (27c0 <z_sched_ready_locked+0xb0>)
    2798:	61dc      	str	r4, [r3, #28]
		queue_thread(thread);
		update_cache(0);

		flag_ipi(ipi_mask_create(thread));
	}
}
    279a:	bd10      	pop	{r4, pc}
	sys_dnode_t *const prev = successor->prev;
    279c:	685a      	ldr	r2, [r3, #4]
	node->prev = prev;
    279e:	6042      	str	r2, [r0, #4]
	node->next = successor;
    27a0:	6003      	str	r3, [r0, #0]
	prev->next = node;
    27a2:	6010      	str	r0, [r2, #0]
	successor->prev = node;
    27a4:	6058      	str	r0, [r3, #4]
			return;
    27a6:	e7df      	b.n	2768 <z_sched_ready_locked+0x58>
	return (node != NULL) ? sys_dlist_peek_next_no_check(list, node) : NULL;
    27a8:	2900      	cmp	r1, #0
    27aa:	d1c2      	bne.n	2732 <z_sched_ready_locked+0x22>
    27ac:	e7d4      	b.n	2758 <z_sched_ready_locked+0x48>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
    27ae:	2300      	movs	r3, #0
    27b0:	e7bf      	b.n	2732 <z_sched_ready_locked+0x22>
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
    27b2:	4b03      	ldr	r3, [pc, #12]	@ (27c0 <z_sched_ready_locked+0xb0>)
    27b4:	68dc      	ldr	r4, [r3, #12]
    27b6:	e7de      	b.n	2776 <z_sched_ready_locked+0x66>
		_kernel.ready_q.cache = _current;
    27b8:	4a01      	ldr	r2, [pc, #4]	@ (27c0 <z_sched_ready_locked+0xb0>)
    27ba:	61d3      	str	r3, [r2, #28]
    27bc:	e7ed      	b.n	279a <z_sched_ready_locked+0x8a>
    27be:	46c0      	nop			@ (mov r8, r8)
    27c0:	1ffff360 	.word	0x1ffff360

000027c4 <thread_halt_spin>:
 * for ourselves being asynchronously halted first to prevent simple
 * deadlocks (but not complex ones involving cycles of 3+ threads!).
 * Acts to release the provided lock before returning.
 */
static void thread_halt_spin(struct k_thread *thread, k_spinlock_key_t key)
{
    27c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    27c6:	46ce      	mov	lr, r9
    27c8:	4647      	mov	r7, r8
    27ca:	b580      	push	{r7, lr}
    27cc:	0005      	movs	r5, r0
    27ce:	000c      	movs	r4, r1
	if (z_is_thread_halting(_current)) {
    27d0:	4b44      	ldr	r3, [pc, #272]	@ (28e4 <thread_halt_spin+0x120>)
    27d2:	689e      	ldr	r6, [r3, #8]
	return (thread->base.thread_state &
    27d4:	7c33      	ldrb	r3, [r6, #16]
    27d6:	2260      	movs	r2, #96	@ 0x60
    27d8:	421a      	tst	r2, r3
    27da:	d027      	beq.n	282c <thread_halt_spin+0x68>
		halt_thread(_current,
    27dc:	069a      	lsls	r2, r3, #26
    27de:	d529      	bpl.n	2834 <thread_halt_spin+0x70>
    27e0:	2708      	movs	r7, #8
	bool dummify = false;

	/* We hold the lock, and the thread is known not to be running
	 * anywhere.
	 */
	if ((thread->base.thread_state & new_state) == 0U) {
    27e2:	423b      	tst	r3, r7
    27e4:	d122      	bne.n	282c <thread_halt_spin+0x68>
		thread->base.thread_state |= new_state;
    27e6:	433b      	orrs	r3, r7
    27e8:	7433      	strb	r3, [r6, #16]
		if (z_is_thread_queued(thread)) {
    27ea:	b25a      	sxtb	r2, r3
    27ec:	2a00      	cmp	r2, #0
    27ee:	db23      	blt.n	2838 <thread_halt_spin+0x74>
			/* Clear idle CPU coverage before removing the thread from the run queue. */
			ipi_idle_thread_unreserve(thread);
			dequeue_thread(thread);
		}

		if (new_state == _THREAD_DEAD) {
    27f0:	2f08      	cmp	r7, #8
    27f2:	d02c      	beq.n	284e <thread_halt_spin+0x8a>
	bool dummify = false;
    27f4:	2300      	movs	r3, #0
    27f6:	4699      	mov	r9, r3
	return list->head == list;
    27f8:	4b3a      	ldr	r3, [pc, #232]	@ (28e4 <thread_halt_spin+0x120>)
    27fa:	6a1a      	ldr	r2, [r3, #32]
    27fc:	4690      	mov	r8, r2
	return sys_dlist_is_empty(list) ? NULL : list->head;
    27fe:	3320      	adds	r3, #32
    2800:	429a      	cmp	r2, r3
    2802:	d055      	beq.n	28b0 <thread_halt_spin+0xec>
	if (n != NULL) {
    2804:	2a00      	cmp	r2, #0
    2806:	d053      	beq.n	28b0 <thread_halt_spin+0xec>
		if (thread != _current) {
    2808:	4b36      	ldr	r3, [pc, #216]	@ (28e4 <thread_halt_spin+0x120>)
    280a:	689b      	ldr	r3, [r3, #8]
    280c:	4543      	cmp	r3, r8
    280e:	d002      	beq.n	2816 <thread_halt_spin+0x52>
			z_time_slice_reset(thread);
    2810:	4640      	mov	r0, r8
    2812:	f004 f9f3 	bl	6bfc <z_time_slice_reset>
		_kernel.ready_q.cache = thread;
    2816:	4b33      	ldr	r3, [pc, #204]	@ (28e4 <thread_halt_spin+0x120>)
    2818:	4642      	mov	r2, r8
    281a:	61da      	str	r2, [r3, #28]
#ifdef CONFIG_SMP
		unpend_all(&thread->halt_queue);
#endif /* CONFIG_SMP */
		update_cache(1);

		if (new_state == _THREAD_SUSPENDED) {
    281c:	2f10      	cmp	r7, #16
    281e:	d005      	beq.n	282c <thread_halt_spin+0x68>
			clear_halting(thread);
			return;
		}

		arch_coprocessors_disable(thread);
    2820:	0030      	movs	r0, r6
    2822:	f003 fdac 	bl	637e <arch_coprocessors_disable>
		 * handle for any threads spinning in join() (this can
		 * never be used, as our thread is flagged dead, but
		 * it must not be NULL otherwise join can deadlock).
		 * Use 1 as a clearly invalid but non-NULL value.
		 */
		if (dummify && !IS_ENABLED(CONFIG_ARCH_POSIX)) {
    2826:	464b      	mov	r3, r9
    2828:	2b00      	cmp	r3, #0
    282a:	d145      	bne.n	28b8 <thread_halt_spin+0xf4>
    282c:	2c00      	cmp	r4, #0
    282e:	d148      	bne.n	28c2 <thread_halt_spin+0xfe>
    __ASM volatile ("cpsie i" : : : "memory");
    2830:	b662      	cpsie	i
	while (z_is_thread_halting(thread)) {
    2832:	e046      	b.n	28c2 <thread_halt_spin+0xfe>
		halt_thread(_current,
    2834:	2710      	movs	r7, #16
    2836:	e7d4      	b.n	27e2 <thread_halt_spin+0x1e>
	thread->base.thread_state &= ~_THREAD_QUEUED;
    2838:	227f      	movs	r2, #127	@ 0x7f
    283a:	4013      	ands	r3, r2
    283c:	7433      	strb	r3, [r6, #16]
 * @param node the node to remove
 */

static inline void sys_dlist_remove(sys_dnode_t *node)
{
	sys_dnode_t *const prev = node->prev;
    283e:	6872      	ldr	r2, [r6, #4]
	sys_dnode_t *const next = node->next;
    2840:	6833      	ldr	r3, [r6, #0]

	prev->next = next;
    2842:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    2844:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    2846:	2300      	movs	r3, #0
    2848:	6033      	str	r3, [r6, #0]
	node->prev = NULL;
    284a:	6073      	str	r3, [r6, #4]
{
	z_mark_thread_as_not_queued(thread);
	if (should_queue_thread(thread)) {
		runq_remove(thread);
	}
}
    284c:	e7d0      	b.n	27f0 <thread_halt_spin+0x2c>
			if (thread->base.pended_on != NULL) {
    284e:	68b3      	ldr	r3, [r6, #8]
    2850:	2b00      	cmp	r3, #0
    2852:	d00f      	beq.n	2874 <thread_halt_spin+0xb0>
	sys_dnode_t *const prev = node->prev;
    2854:	6872      	ldr	r2, [r6, #4]
	sys_dnode_t *const next = node->next;
    2856:	6833      	ldr	r3, [r6, #0]
	prev->next = next;
    2858:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    285a:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    285c:	2300      	movs	r3, #0
    285e:	6033      	str	r3, [r6, #0]
	node->prev = NULL;
    2860:	6073      	str	r3, [r6, #4]
	thread->base.thread_state &= ~_THREAD_PENDING;
    2862:	7c32      	ldrb	r2, [r6, #16]
    2864:	2102      	movs	r1, #2
    2866:	438a      	bics	r2, r1
    2868:	7432      	strb	r2, [r6, #16]

static ALWAYS_INLINE void unpend_thread_no_timeout(struct k_thread *thread)
{
	_priq_wait_remove(&pended_on_thread(thread)->waitq, thread);
	z_mark_thread_as_not_pending(thread);
	thread->base.pended_on = NULL;
    286a:	60b3      	str	r3, [r6, #8]
}
    286c:	e002      	b.n	2874 <thread_halt_spin+0xb0>
    286e:	f3ef 8410 	mrs	r4, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    2872:	b672      	cpsid	i
}

static inline int z_try_abort_thread_timeout(struct k_thread *thread)
{
	return z_try_abort_timeout(&thread->base.timeout);
    2874:	0030      	movs	r0, r6
    2876:	3018      	adds	r0, #24
    2878:	f000 fbb0 	bl	2fdc <z_try_abort_timeout>
				while (z_try_abort_thread_timeout(thread) == -EAGAIN) {
    287c:	300b      	adds	r0, #11
    287e:	d103      	bne.n	2888 <thread_halt_spin+0xc4>
    2880:	2c00      	cmp	r4, #0
    2882:	d1f4      	bne.n	286e <thread_halt_spin+0xaa>
    __ASM volatile ("cpsie i" : : : "memory");
    2884:	b662      	cpsie	i
}
    2886:	e7f2      	b.n	286e <thread_halt_spin+0xaa>
			unpend_all(&thread->join_queue);
    2888:	0030      	movs	r0, r6
    288a:	3068      	adds	r0, #104	@ 0x68
    288c:	f004 f911 	bl	6ab2 <unpend_all>
			if (thread == _current && arch_is_in_isr()) {
    2890:	4b14      	ldr	r3, [pc, #80]	@ (28e4 <thread_halt_spin+0x120>)
    2892:	689b      	ldr	r3, [r3, #8]
    2894:	429e      	cmp	r6, r3
    2896:	d002      	beq.n	289e <thread_halt_spin+0xda>
	bool dummify = false;
    2898:	2300      	movs	r3, #0
    289a:	4699      	mov	r9, r3
    289c:	e7ac      	b.n	27f8 <thread_halt_spin+0x34>
  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
    289e:	f3ef 8305 	mrs	r3, IPSR
			if (thread == _current && arch_is_in_isr()) {
    28a2:	2b00      	cmp	r3, #0
    28a4:	d101      	bne.n	28aa <thread_halt_spin+0xe6>
	bool dummify = false;
    28a6:	4699      	mov	r9, r3
    28a8:	e7a6      	b.n	27f8 <thread_halt_spin+0x34>
				dummify = true;
    28aa:	2301      	movs	r3, #1
    28ac:	4699      	mov	r9, r3
    28ae:	e7a3      	b.n	27f8 <thread_halt_spin+0x34>
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
    28b0:	4b0c      	ldr	r3, [pc, #48]	@ (28e4 <thread_halt_spin+0x120>)
    28b2:	68db      	ldr	r3, [r3, #12]
    28b4:	4698      	mov	r8, r3
    28b6:	e7a7      	b.n	2808 <thread_halt_spin+0x44>
			if (thread->base.swap_data ==
			    (void *)&z_spinlock_abort_sentinel) {
				z_spin_validate_reset(true);
			}
#endif
			z_dummy_thread_init(&_thread_dummy);
    28b8:	480b      	ldr	r0, [pc, #44]	@ (28e8 <thread_halt_spin+0x124>)
    28ba:	f7ff fe75 	bl	25a8 <z_dummy_thread_init>
    28be:	e7b5      	b.n	282c <thread_halt_spin+0x68>
    __ASM volatile ("cpsie i" : : : "memory");
    28c0:	b662      	cpsie	i
	return (thread->base.thread_state &
    28c2:	7c2b      	ldrb	r3, [r5, #16]
	while (z_is_thread_halting(thread)) {
    28c4:	2260      	movs	r2, #96	@ 0x60
    28c6:	421a      	tst	r2, r3
    28c8:	d007      	beq.n	28da <thread_halt_spin+0x116>
  __ASM volatile ("MRS %0, primask" : "=r" (result) );
    28ca:	f3ef 8410 	mrs	r4, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    28ce:	b672      	cpsid	i
		arch_spin_relax(); /* Requires interrupts be masked */
    28d0:	f004 f87e 	bl	69d0 <arch_spin_relax>
    28d4:	2c00      	cmp	r4, #0
    28d6:	d0f3      	beq.n	28c0 <thread_halt_spin+0xfc>
    28d8:	e7f3      	b.n	28c2 <thread_halt_spin+0xfe>
}
    28da:	bcc0      	pop	{r6, r7}
    28dc:	46b9      	mov	r9, r7
    28de:	46b0      	mov	r8, r6
    28e0:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    28e2:	46c0      	nop			@ (mov r8, r8)
    28e4:	1ffff360 	.word	0x1ffff360
    28e8:	1ffff398 	.word	0x1ffff398

000028ec <z_sched_unready_locked>:
{
    28ec:	b510      	push	{r4, lr}
	return (thread->base.thread_state & state) != 0U;
    28ee:	7c02      	ldrb	r2, [r0, #16]
	if (z_is_thread_queued(thread)) {
    28f0:	2310      	movs	r3, #16
    28f2:	56c3      	ldrsb	r3, [r0, r3]
    28f4:	2b00      	cmp	r3, #0
    28f6:	db1a      	blt.n	292e <z_sched_unready_locked+0x42>
	update_cache(thread == _current);
    28f8:	4b15      	ldr	r3, [pc, #84]	@ (2950 <z_sched_unready_locked+0x64>)
    28fa:	689a      	ldr	r2, [r3, #8]
	return list->head == list;
    28fc:	6a1c      	ldr	r4, [r3, #32]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    28fe:	3320      	adds	r3, #32
    2900:	429c      	cmp	r4, r3
    2902:	d01f      	beq.n	2944 <z_sched_unready_locked+0x58>
    2904:	2c00      	cmp	r4, #0
    2906:	d01d      	beq.n	2944 <z_sched_unready_locked+0x58>
	if (preempt_ok != 0) {
    2908:	4282      	cmp	r2, r0
    290a:	d008      	beq.n	291e <z_sched_unready_locked+0x32>
	uint8_t state = thread->base.thread_state;
    290c:	7c13      	ldrb	r3, [r2, #16]
	if (z_is_thread_prevented_from_running(_current)) {
    290e:	06db      	lsls	r3, r3, #27
    2910:	d105      	bne.n	291e <z_sched_unready_locked+0x32>
	return thread->base.preempt <= _PREEMPT_THRESHOLD;
    2912:	89d3      	ldrh	r3, [r2, #14]
	if (thread_is_preemptible(_current) || thread_is_metairq(thread)) {
    2914:	2b7f      	cmp	r3, #127	@ 0x7f
    2916:	d902      	bls.n	291e <z_sched_unready_locked+0x32>
	return node->next != NULL;
    2918:	69a3      	ldr	r3, [r4, #24]
	if (IS_ENABLED(CONFIG_SWAP_NONATOMIC)
    291a:	2b00      	cmp	r3, #0
    291c:	d015      	beq.n	294a <z_sched_unready_locked+0x5e>
		if (thread != _current) {
    291e:	42a2      	cmp	r2, r4
    2920:	d002      	beq.n	2928 <z_sched_unready_locked+0x3c>
			z_time_slice_reset(thread);
    2922:	0020      	movs	r0, r4
    2924:	f004 f96a 	bl	6bfc <z_time_slice_reset>
		_kernel.ready_q.cache = thread;
    2928:	4b09      	ldr	r3, [pc, #36]	@ (2950 <z_sched_unready_locked+0x64>)
    292a:	61dc      	str	r4, [r3, #28]
}
    292c:	bd10      	pop	{r4, pc}
	thread->base.thread_state &= ~_THREAD_QUEUED;
    292e:	237f      	movs	r3, #127	@ 0x7f
    2930:	4013      	ands	r3, r2
    2932:	7403      	strb	r3, [r0, #16]
	sys_dnode_t *const prev = node->prev;
    2934:	6842      	ldr	r2, [r0, #4]
	sys_dnode_t *const next = node->next;
    2936:	6803      	ldr	r3, [r0, #0]
	prev->next = next;
    2938:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    293a:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    293c:	2300      	movs	r3, #0
    293e:	6003      	str	r3, [r0, #0]
	node->prev = NULL;
    2940:	6043      	str	r3, [r0, #4]
    2942:	e7d9      	b.n	28f8 <z_sched_unready_locked+0xc>
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
    2944:	4b02      	ldr	r3, [pc, #8]	@ (2950 <z_sched_unready_locked+0x64>)
    2946:	68dc      	ldr	r4, [r3, #12]
    2948:	e7de      	b.n	2908 <z_sched_unready_locked+0x1c>
		_kernel.ready_q.cache = _current;
    294a:	4b01      	ldr	r3, [pc, #4]	@ (2950 <z_sched_unready_locked+0x64>)
    294c:	61da      	str	r2, [r3, #28]
    294e:	e7ed      	b.n	292c <z_sched_unready_locked+0x40>
    2950:	1ffff360 	.word	0x1ffff360

00002954 <z_reschedule>:
{
    2954:	b510      	push	{r4, lr}
	return arch_irq_unlocked(key) && !arch_is_in_isr();
    2956:	2900      	cmp	r1, #0
    2958:	d10c      	bne.n	2974 <z_reschedule+0x20>
  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
    295a:	f3ef 8305 	mrs	r3, IPSR
    295e:	2b00      	cmp	r3, #0
    2960:	d108      	bne.n	2974 <z_reschedule+0x20>
	new_thread = _kernel.ready_q.cache;
    2962:	4b06      	ldr	r3, [pc, #24]	@ (297c <z_reschedule+0x28>)
    2964:	69da      	ldr	r2, [r3, #28]
	return new_thread != _current;
    2966:	689b      	ldr	r3, [r3, #8]
	if (resched(key.key) && need_swap()) {
    2968:	429a      	cmp	r2, r3
    296a:	d003      	beq.n	2974 <z_reschedule+0x20>
	return z_swap_irqlock(key.key);
    296c:	0008      	movs	r0, r1
    296e:	f7ff fe6f 	bl	2650 <z_swap_irqlock>
		z_swap(lock, key);
    2972:	e002      	b.n	297a <z_reschedule+0x26>
    2974:	2900      	cmp	r1, #0
    2976:	d100      	bne.n	297a <z_reschedule+0x26>
    __ASM volatile ("cpsie i" : : : "memory");
    2978:	b662      	cpsie	i
}
    297a:	bd10      	pop	{r4, pc}
    297c:	1ffff360 	.word	0x1ffff360

00002980 <z_reschedule_locked>:
{
    2980:	b510      	push	{r4, lr}
    2982:	0001      	movs	r1, r0
	return reschedule(&_sched_spinlock, key);
    2984:	4b02      	ldr	r3, [pc, #8]	@ (2990 <z_reschedule_locked+0x10>)
    2986:	0018      	movs	r0, r3
    2988:	f7ff ffe4 	bl	2954 <z_reschedule>
}
    298c:	bd10      	pop	{r4, pc}
    298e:	46c0      	nop			@ (mov r8, r8)
    2990:	1ffff4e8 	.word	0x1ffff4e8

00002994 <z_sched_lock_reschedule>:
{
    2994:	b570      	push	{r4, r5, r6, lr}
    2996:	0005      	movs	r5, r0
	return list->head == list;
    2998:	4b11      	ldr	r3, [pc, #68]	@ (29e0 <z_sched_lock_reschedule+0x4c>)
    299a:	6a1c      	ldr	r4, [r3, #32]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    299c:	3320      	adds	r3, #32
    299e:	429c      	cmp	r4, r3
    29a0:	d017      	beq.n	29d2 <z_sched_lock_reschedule+0x3e>
    29a2:	2c00      	cmp	r4, #0
    29a4:	d015      	beq.n	29d2 <z_sched_lock_reschedule+0x3e>
	if (z_is_thread_prevented_from_running(_current)) {
    29a6:	4b0e      	ldr	r3, [pc, #56]	@ (29e0 <z_sched_lock_reschedule+0x4c>)
    29a8:	689b      	ldr	r3, [r3, #8]
	uint8_t state = thread->base.thread_state;
    29aa:	7c1a      	ldrb	r2, [r3, #16]
	if (z_is_thread_prevented_from_running(_current)) {
    29ac:	06d2      	lsls	r2, r2, #27
    29ae:	d105      	bne.n	29bc <z_sched_lock_reschedule+0x28>
	return thread->base.preempt <= _PREEMPT_THRESHOLD;
    29b0:	89da      	ldrh	r2, [r3, #14]
	if (thread_is_preemptible(_current) || thread_is_metairq(thread)) {
    29b2:	2a7f      	cmp	r2, #127	@ 0x7f
    29b4:	d902      	bls.n	29bc <z_sched_lock_reschedule+0x28>
	return node->next != NULL;
    29b6:	69a2      	ldr	r2, [r4, #24]
	if (IS_ENABLED(CONFIG_SWAP_NONATOMIC)
    29b8:	2a00      	cmp	r2, #0
    29ba:	d00d      	beq.n	29d8 <z_sched_lock_reschedule+0x44>
		if (thread != _current) {
    29bc:	42a3      	cmp	r3, r4
    29be:	d002      	beq.n	29c6 <z_sched_lock_reschedule+0x32>
			z_time_slice_reset(thread);
    29c0:	0020      	movs	r0, r4
    29c2:	f004 f91b 	bl	6bfc <z_time_slice_reset>
		_kernel.ready_q.cache = thread;
    29c6:	4b06      	ldr	r3, [pc, #24]	@ (29e0 <z_sched_lock_reschedule+0x4c>)
    29c8:	61dc      	str	r4, [r3, #28]
	reschedule_locked(key);
    29ca:	0028      	movs	r0, r5
    29cc:	f7ff ffd8 	bl	2980 <z_reschedule_locked>
}
    29d0:	bd70      	pop	{r4, r5, r6, pc}
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
    29d2:	4b03      	ldr	r3, [pc, #12]	@ (29e0 <z_sched_lock_reschedule+0x4c>)
    29d4:	68dc      	ldr	r4, [r3, #12]
    29d6:	e7e6      	b.n	29a6 <z_sched_lock_reschedule+0x12>
		_kernel.ready_q.cache = _current;
    29d8:	4a01      	ldr	r2, [pc, #4]	@ (29e0 <z_sched_lock_reschedule+0x4c>)
    29da:	61d3      	str	r3, [r2, #28]
    29dc:	e7f5      	b.n	29ca <z_sched_lock_reschedule+0x36>
    29de:	46c0      	nop			@ (mov r8, r8)
    29e0:	1ffff360 	.word	0x1ffff360

000029e4 <z_thread_halt>:
{
    29e4:	b5f0      	push	{r4, r5, r6, r7, lr}
    29e6:	46c6      	mov	lr, r8
    29e8:	b500      	push	{lr}
    29ea:	0004      	movs	r4, r0
    29ec:	000d      	movs	r5, r1
    29ee:	0016      	movs	r6, r2
	_wait_q_t *wq = &thread->join_queue;
    29f0:	0007      	movs	r7, r0
    29f2:	3768      	adds	r7, #104	@ 0x68
	struct _cpu *cpu = thread_active_elsewhere(thread);
    29f4:	f004 f857 	bl	6aa6 <thread_active_elsewhere>
	if (cpu != NULL) {
    29f8:	2800      	cmp	r0, #0
    29fa:	d021      	beq.n	2a40 <z_thread_halt+0x5c>
		thread->base.thread_state |= (terminate ? _THREAD_ABORTING
    29fc:	7c23      	ldrb	r3, [r4, #16]
    29fe:	2e00      	cmp	r6, #0
    2a00:	d013      	beq.n	2a2a <z_thread_halt+0x46>
    2a02:	2220      	movs	r2, #32
    2a04:	4313      	orrs	r3, r2
    2a06:	7423      	strb	r3, [r4, #16]
    2a08:	f3ef 8305 	mrs	r3, IPSR
		if (arch_is_in_isr()) {
    2a0c:	2b00      	cmp	r3, #0
    2a0e:	d00e      	beq.n	2a2e <z_thread_halt+0x4a>
			thread_halt_spin(thread, key);
    2a10:	0029      	movs	r1, r5
    2a12:	0020      	movs	r0, r4
    2a14:	f7ff fed6 	bl	27c4 <thread_halt_spin>
    2a18:	0020      	movs	r0, r4
    2a1a:	3018      	adds	r0, #24
    2a1c:	f000 fade 	bl	2fdc <z_try_abort_timeout>
		while (z_try_abort_thread_timeout(thread) == -EAGAIN) {
    2a20:	300b      	adds	r0, #11
    2a22:	d0f9      	beq.n	2a18 <z_thread_halt+0x34>
}
    2a24:	bc80      	pop	{r7}
    2a26:	46b8      	mov	r8, r7
    2a28:	bdf0      	pop	{r4, r5, r6, r7, pc}
		thread->base.thread_state |= (terminate ? _THREAD_ABORTING
    2a2a:	2240      	movs	r2, #64	@ 0x40
    2a2c:	e7ea      	b.n	2a04 <z_thread_halt+0x20>
			add_to_waitq_locked(_current, wq);
    2a2e:	4b48      	ldr	r3, [pc, #288]	@ (2b50 <z_thread_halt+0x16c>)
    2a30:	6898      	ldr	r0, [r3, #8]
    2a32:	0039      	movs	r1, r7
    2a34:	f004 f87a 	bl	6b2c <z_sched_add_to_waitq_locked>
			z_swap_locked(key);
    2a38:	0028      	movs	r0, r5
    2a3a:	f004 f836 	bl	6aaa <z_swap_locked>
    2a3e:	e7eb      	b.n	2a18 <z_thread_halt+0x34>
		halt_thread(thread, terminate ? _THREAD_DEAD : _THREAD_SUSPENDED, &key);
    2a40:	2e00      	cmp	r6, #0
    2a42:	d02c      	beq.n	2a9e <z_thread_halt+0xba>
    2a44:	2608      	movs	r6, #8
	if ((thread->base.thread_state & new_state) == 0U) {
    2a46:	7c23      	ldrb	r3, [r4, #16]
    2a48:	4233      	tst	r3, r6
    2a4a:	d120      	bne.n	2a8e <z_thread_halt+0xaa>
		thread->base.thread_state |= new_state;
    2a4c:	4333      	orrs	r3, r6
    2a4e:	7423      	strb	r3, [r4, #16]
		if (z_is_thread_queued(thread)) {
    2a50:	b25a      	sxtb	r2, r3
    2a52:	2a00      	cmp	r2, #0
    2a54:	db25      	blt.n	2aa2 <z_thread_halt+0xbe>
		if (new_state == _THREAD_DEAD) {
    2a56:	2e08      	cmp	r6, #8
    2a58:	d02e      	beq.n	2ab8 <z_thread_halt+0xd4>
	bool dummify = false;
    2a5a:	2300      	movs	r3, #0
    2a5c:	4698      	mov	r8, r3
	return list->head == list;
    2a5e:	4b3c      	ldr	r3, [pc, #240]	@ (2b50 <z_thread_halt+0x16c>)
    2a60:	6a1f      	ldr	r7, [r3, #32]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2a62:	3320      	adds	r3, #32
    2a64:	429f      	cmp	r7, r3
    2a66:	d057      	beq.n	2b18 <z_thread_halt+0x134>
    2a68:	2f00      	cmp	r7, #0
    2a6a:	d055      	beq.n	2b18 <z_thread_halt+0x134>
		if (thread != _current) {
    2a6c:	4b38      	ldr	r3, [pc, #224]	@ (2b50 <z_thread_halt+0x16c>)
    2a6e:	689b      	ldr	r3, [r3, #8]
    2a70:	42bb      	cmp	r3, r7
    2a72:	d002      	beq.n	2a7a <z_thread_halt+0x96>
			z_time_slice_reset(thread);
    2a74:	0038      	movs	r0, r7
    2a76:	f004 f8c1 	bl	6bfc <z_time_slice_reset>
		_kernel.ready_q.cache = thread;
    2a7a:	4b35      	ldr	r3, [pc, #212]	@ (2b50 <z_thread_halt+0x16c>)
    2a7c:	61df      	str	r7, [r3, #28]
		if (new_state == _THREAD_SUSPENDED) {
    2a7e:	2e10      	cmp	r6, #16
    2a80:	d005      	beq.n	2a8e <z_thread_halt+0xaa>
		arch_coprocessors_disable(thread);
    2a82:	0020      	movs	r0, r4
    2a84:	f003 fc7b 	bl	637e <arch_coprocessors_disable>
		if (dummify && !IS_ENABLED(CONFIG_ARCH_POSIX)) {
    2a88:	4643      	mov	r3, r8
    2a8a:	2b00      	cmp	r3, #0
    2a8c:	d147      	bne.n	2b1e <z_thread_halt+0x13a>
		if ((thread == _current) && !arch_is_in_isr()) {
    2a8e:	4b30      	ldr	r3, [pc, #192]	@ (2b50 <z_thread_halt+0x16c>)
    2a90:	689b      	ldr	r3, [r3, #8]
    2a92:	42a3      	cmp	r3, r4
    2a94:	d047      	beq.n	2b26 <z_thread_halt+0x142>
    2a96:	2d00      	cmp	r5, #0
    2a98:	d1c4      	bne.n	2a24 <z_thread_halt+0x40>
    2a9a:	b662      	cpsie	i
}
    2a9c:	e7c2      	b.n	2a24 <z_thread_halt+0x40>
		halt_thread(thread, terminate ? _THREAD_DEAD : _THREAD_SUSPENDED, &key);
    2a9e:	2610      	movs	r6, #16
    2aa0:	e7d1      	b.n	2a46 <z_thread_halt+0x62>
	thread->base.thread_state &= ~_THREAD_QUEUED;
    2aa2:	227f      	movs	r2, #127	@ 0x7f
    2aa4:	4013      	ands	r3, r2
    2aa6:	7423      	strb	r3, [r4, #16]
	sys_dnode_t *const prev = node->prev;
    2aa8:	6862      	ldr	r2, [r4, #4]
	sys_dnode_t *const next = node->next;
    2aaa:	6823      	ldr	r3, [r4, #0]
	prev->next = next;
    2aac:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    2aae:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    2ab0:	2300      	movs	r3, #0
    2ab2:	6023      	str	r3, [r4, #0]
	node->prev = NULL;
    2ab4:	6063      	str	r3, [r4, #4]
    2ab6:	e7ce      	b.n	2a56 <z_thread_halt+0x72>
			if (thread->base.pended_on != NULL) {
    2ab8:	68a3      	ldr	r3, [r4, #8]
    2aba:	2b00      	cmp	r3, #0
    2abc:	d00f      	beq.n	2ade <z_thread_halt+0xfa>
	sys_dnode_t *const prev = node->prev;
    2abe:	6862      	ldr	r2, [r4, #4]
	sys_dnode_t *const next = node->next;
    2ac0:	6823      	ldr	r3, [r4, #0]
	prev->next = next;
    2ac2:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    2ac4:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    2ac6:	2300      	movs	r3, #0
    2ac8:	6023      	str	r3, [r4, #0]
	node->prev = NULL;
    2aca:	6063      	str	r3, [r4, #4]
	thread->base.thread_state &= ~_THREAD_PENDING;
    2acc:	7c22      	ldrb	r2, [r4, #16]
    2ace:	2102      	movs	r1, #2
    2ad0:	438a      	bics	r2, r1
    2ad2:	7422      	strb	r2, [r4, #16]
	thread->base.pended_on = NULL;
    2ad4:	60a3      	str	r3, [r4, #8]
}
    2ad6:	e002      	b.n	2ade <z_thread_halt+0xfa>
  __ASM volatile ("MRS %0, primask" : "=r" (result) );
    2ad8:	f3ef 8510 	mrs	r5, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    2adc:	b672      	cpsid	i
    2ade:	0020      	movs	r0, r4
    2ae0:	3018      	adds	r0, #24
    2ae2:	f000 fa7b 	bl	2fdc <z_try_abort_timeout>
				while (z_try_abort_thread_timeout(thread) == -EAGAIN) {
    2ae6:	300b      	adds	r0, #11
    2ae8:	d103      	bne.n	2af2 <z_thread_halt+0x10e>
    2aea:	2d00      	cmp	r5, #0
    2aec:	d1f4      	bne.n	2ad8 <z_thread_halt+0xf4>
    __ASM volatile ("cpsie i" : : : "memory");
    2aee:	b662      	cpsie	i
}
    2af0:	e7f2      	b.n	2ad8 <z_thread_halt+0xf4>
			unpend_all(&thread->join_queue);
    2af2:	0038      	movs	r0, r7
    2af4:	f003 ffdd 	bl	6ab2 <unpend_all>
			if (thread == _current && arch_is_in_isr()) {
    2af8:	4b15      	ldr	r3, [pc, #84]	@ (2b50 <z_thread_halt+0x16c>)
    2afa:	689b      	ldr	r3, [r3, #8]
    2afc:	429c      	cmp	r4, r3
    2afe:	d002      	beq.n	2b06 <z_thread_halt+0x122>
	bool dummify = false;
    2b00:	2300      	movs	r3, #0
    2b02:	4698      	mov	r8, r3
    2b04:	e7ab      	b.n	2a5e <z_thread_halt+0x7a>
  __ASM volatile ("MRS %0, ipsr" : "=r" (result) );
    2b06:	f3ef 8305 	mrs	r3, IPSR
			if (thread == _current && arch_is_in_isr()) {
    2b0a:	2b00      	cmp	r3, #0
    2b0c:	d101      	bne.n	2b12 <z_thread_halt+0x12e>
	bool dummify = false;
    2b0e:	4698      	mov	r8, r3
    2b10:	e7a5      	b.n	2a5e <z_thread_halt+0x7a>
				dummify = true;
    2b12:	2301      	movs	r3, #1
    2b14:	4698      	mov	r8, r3
    2b16:	e7a2      	b.n	2a5e <z_thread_halt+0x7a>
	return (thread != NULL) ? thread : _current_cpu->idle_thread;
    2b18:	4b0d      	ldr	r3, [pc, #52]	@ (2b50 <z_thread_halt+0x16c>)
    2b1a:	68df      	ldr	r7, [r3, #12]
    2b1c:	e7a6      	b.n	2a6c <z_thread_halt+0x88>
			z_dummy_thread_init(&_thread_dummy);
    2b1e:	480d      	ldr	r0, [pc, #52]	@ (2b54 <z_thread_halt+0x170>)
    2b20:	f7ff fd42 	bl	25a8 <z_dummy_thread_init>
    2b24:	e7b3      	b.n	2a8e <z_thread_halt+0xaa>
    2b26:	f3ef 8305 	mrs	r3, IPSR
		if ((thread == _current) && !arch_is_in_isr()) {
    2b2a:	2b00      	cmp	r3, #0
    2b2c:	d1b3      	bne.n	2a96 <z_thread_halt+0xb2>
	return (thread->base.user_options & K_ESSENTIAL) == K_ESSENTIAL;
    2b2e:	89a3      	ldrh	r3, [r4, #12]
			if (z_is_thread_essential(thread)) {
    2b30:	07db      	lsls	r3, r3, #31
    2b32:	d509      	bpl.n	2b48 <z_thread_halt+0x164>
    2b34:	2d00      	cmp	r5, #0
    2b36:	d100      	bne.n	2b3a <z_thread_halt+0x156>
    __ASM volatile ("cpsie i" : : : "memory");
    2b38:	b662      	cpsie	i
    2b3a:	b662      	cpsie	i
				k_panic();
    2b3c:	2304      	movs	r3, #4
    2b3e:	1c18      	adds	r0, r3, #0
    2b40:	df02      	svc	2
  __ASM volatile ("MRS %0, primask" : "=r" (result) );
    2b42:	f3ef 8510 	mrs	r5, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    2b46:	b672      	cpsid	i
			z_swap_locked(key);
    2b48:	0028      	movs	r0, r5
    2b4a:	f003 ffae 	bl	6aaa <z_swap_locked>
			__ASSERT(!terminate, "aborted _current back from dead");
    2b4e:	e769      	b.n	2a24 <z_thread_halt+0x40>
    2b50:	1ffff360 	.word	0x1ffff360
    2b54:	1ffff398 	.word	0x1ffff398

00002b58 <z_sched_init>:
	list->head = (sys_dnode_t *)list;
    2b58:	4b02      	ldr	r3, [pc, #8]	@ (2b64 <z_sched_init+0xc>)
    2b5a:	001a      	movs	r2, r3
    2b5c:	3220      	adds	r2, #32
    2b5e:	621a      	str	r2, [r3, #32]
	list->tail = (sys_dnode_t *)list;
    2b60:	625a      	str	r2, [r3, #36]	@ 0x24
		_priq_run_init(&_kernel.cpus[i].ready_q.runq);
	}
#else
	_priq_run_init(&_kernel.ready_q.runq);
#endif /* CONFIG_SCHED_CPU_MASK_PIN_ONLY */
}
    2b62:	4770      	bx	lr
    2b64:	1ffff360 	.word	0x1ffff360

00002b68 <k_sched_lock>:

void k_sched_lock(void)
{
	Z_SCHED_SPINLOCK {
    2b68:	2300      	movs	r3, #0
    2b6a:	f3ef 8110 	mrs	r1, PRIMASK
    2b6e:	b672      	cpsid	i
	}
#endif /* CONFIG_TICKET_SPINLOCKS */
#endif /* CONFIG_SMP */
	z_spinlock_validate_post(l);

	return k;
    2b70:	e000      	b.n	2b74 <k_sched_lock+0xc>
    2b72:	2301      	movs	r3, #1
    2b74:	2b00      	cmp	r3, #0
    2b76:	d108      	bne.n	2b8a <k_sched_lock+0x22>
		SYS_PORT_TRACING_FUNC(k_thread, sched_lock);

		__ASSERT(!arch_is_in_isr(), "");
		__ASSERT(_current->base.sched_locked != 1U, "");

		--_current->base.sched_locked;
    2b78:	4b04      	ldr	r3, [pc, #16]	@ (2b8c <k_sched_lock+0x24>)
    2b7a:	689a      	ldr	r2, [r3, #8]
    2b7c:	7bd3      	ldrb	r3, [r2, #15]
    2b7e:	3b01      	subs	r3, #1
    2b80:	73d3      	strb	r3, [r2, #15]
    2b82:	2900      	cmp	r1, #0
    2b84:	d1f5      	bne.n	2b72 <k_sched_lock+0xa>
    __ASM volatile ("cpsie i" : : : "memory");
    2b86:	b662      	cpsie	i
}
    2b88:	e7f3      	b.n	2b72 <k_sched_lock+0xa>

		compiler_barrier();
	}
}
    2b8a:	4770      	bx	lr
    2b8c:	1ffff360 	.word	0x1ffff360

00002b90 <k_sched_unlock>:

void k_sched_unlock(void)
{
    2b90:	b510      	push	{r4, lr}
    2b92:	f3ef 8010 	mrs	r0, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    2b96:	b672      	cpsid	i

	k_spinlock_key_t key = z_sched_spinlock_lock();

	__ASSERT(_current->base.sched_locked != 0U, "");
	__ASSERT(!arch_is_in_isr(), "");
	++_current->base.sched_locked;
    2b98:	4b03      	ldr	r3, [pc, #12]	@ (2ba8 <k_sched_unlock+0x18>)
    2b9a:	689a      	ldr	r2, [r3, #8]
    2b9c:	7bd3      	ldrb	r3, [r2, #15]
    2b9e:	3301      	adds	r3, #1
    2ba0:	73d3      	strb	r3, [r2, #15]
	z_sched_lock_reschedule(key);
    2ba2:	f7ff fef7 	bl	2994 <z_sched_lock_reschedule>
}
    2ba6:	bd10      	pop	{r4, pc}
    2ba8:	1ffff360 	.word	0x1ffff360

00002bac <z_impl_k_sched_current_thread_query>:
#include <zephyr/syscalls/k_reschedule_mrsh.c>
#endif /* CONFIG_USERSPACE */

k_tid_t z_impl_k_sched_current_thread_query(void)
{
	return _current;
    2bac:	4b01      	ldr	r3, [pc, #4]	@ (2bb4 <z_impl_k_sched_current_thread_query+0x8>)
    2bae:	6898      	ldr	r0, [r3, #8]
}
    2bb0:	4770      	bx	lr
    2bb2:	46c0      	nop			@ (mov r8, r8)
    2bb4:	1ffff360 	.word	0x1ffff360

00002bb8 <z_time_slice_size>:
#endif
	return ret;
}

static int z_time_slice_size(struct k_thread *thread)
{
    2bb8:	0003      	movs	r3, r0
	uint8_t state = thread->base.thread_state;
    2bba:	7c02      	ldrb	r2, [r0, #16]
	if (z_is_thread_prevented_from_running(thread) ||
    2bbc:	06d2      	lsls	r2, r2, #27
    2bbe:	d111      	bne.n	2be4 <z_time_slice_size+0x2c>
    2bc0:	4a0b      	ldr	r2, [pc, #44]	@ (2bf0 <z_time_slice_size+0x38>)
    2bc2:	4290      	cmp	r0, r2
    2bc4:	d010      	beq.n	2be8 <z_time_slice_size+0x30>
	int ret = slice_ticks;
    2bc6:	4a0b      	ldr	r2, [pc, #44]	@ (2bf4 <z_time_slice_size+0x3c>)
    2bc8:	6810      	ldr	r0, [r2, #0]
	    z_is_idle_thread_object(thread) ||
    2bca:	2800      	cmp	r0, #0
    2bcc:	d00b      	beq.n	2be6 <z_time_slice_size+0x2e>
	return thread->base.preempt <= _PREEMPT_THRESHOLD;
    2bce:	89da      	ldrh	r2, [r3, #14]
	if (thread->base.slice_ticks != 0) {
		return thread->base.slice_ticks;
	}
#endif

	if (thread_is_preemptible(thread) &&
    2bd0:	2a7f      	cmp	r2, #127	@ 0x7f
    2bd2:	d80b      	bhi.n	2bec <z_time_slice_size+0x34>
	    !z_is_prio_higher(thread->base.prio, slice_max_prio)) {
    2bd4:	220e      	movs	r2, #14
    2bd6:	569a      	ldrsb	r2, [r3, r2]
    2bd8:	4b07      	ldr	r3, [pc, #28]	@ (2bf8 <z_time_slice_size+0x40>)
    2bda:	681b      	ldr	r3, [r3, #0]
	if (thread_is_preemptible(thread) &&
    2bdc:	429a      	cmp	r2, r3
    2bde:	da02      	bge.n	2be6 <z_time_slice_size+0x2e>
		return slice_ticks;
	}

	return 0;
    2be0:	2000      	movs	r0, #0
    2be2:	e000      	b.n	2be6 <z_time_slice_size+0x2e>
		return 0;
    2be4:	2000      	movs	r0, #0
}
    2be6:	4770      	bx	lr
		return 0;
    2be8:	2000      	movs	r0, #0
    2bea:	e7fc      	b.n	2be6 <z_time_slice_size+0x2e>
	return 0;
    2bec:	2000      	movs	r0, #0
    2bee:	e7fa      	b.n	2be6 <z_time_slice_size+0x2e>
    2bf0:	1ffff1e0 	.word	0x1ffff1e0
    2bf4:	1ffff024 	.word	0x1ffff024
    2bf8:	1ffff4f0 	.word	0x1ffff4f0

00002bfc <slice_timeout>:

static void slice_timeout(struct _timeout *timeout)
{
    2bfc:	b510      	push	{r4, lr}
	int cpu = ARRAY_INDEX(slice_timeouts, timeout);
    2bfe:	4a0a      	ldr	r2, [pc, #40]	@ (2c28 <slice_timeout+0x2c>)
    2c00:	1a82      	subs	r2, r0, r2
    2c02:	10d2      	asrs	r2, r2, #3
    2c04:	0093      	lsls	r3, r2, #2
    2c06:	189b      	adds	r3, r3, r2
    2c08:	0119      	lsls	r1, r3, #4
    2c0a:	185b      	adds	r3, r3, r1
    2c0c:	0219      	lsls	r1, r3, #8
    2c0e:	185b      	adds	r3, r3, r1
    2c10:	0418      	lsls	r0, r3, #16
    2c12:	1818      	adds	r0, r3, r0
    2c14:	0040      	lsls	r0, r0, #1
    2c16:	1880      	adds	r0, r0, r2

	atomic_set(&slice_expired[cpu], 1);
    2c18:	0080      	lsls	r0, r0, #2
    2c1a:	4b04      	ldr	r3, [pc, #16]	@ (2c2c <slice_timeout+0x30>)
    2c1c:	18c0      	adds	r0, r0, r3
		union { uintptr_t x; atomic_val_t val; } parm1 = { .val = value };
		return (atomic_val_t) arch_syscall_invoke2(parm0.x, parm1.x, K_SYSCALL_ATOMIC_SET);
	}
#endif
	compiler_barrier();
	return z_impl_atomic_set(target, value);
    2c1e:	2101      	movs	r1, #1
    2c20:	f003 fb5f 	bl	62e2 <z_impl_atomic_set>
	 * for a different CPU.
	 */
	if (cpu != _current_cpu->id) {
		flag_ipi(IPI_CPU_MASK(cpu));
	}
}
    2c24:	bd10      	pop	{r4, pc}
    2c26:	46c0      	nop			@ (mov r8, r8)
    2c28:	1ffff458 	.word	0x1ffff458
    2c2c:	1ffff4ec 	.word	0x1ffff4ec

00002c30 <slice_reset>:

static void slice_reset(int slice_size)
{
    2c30:	b570      	push	{r4, r5, r6, lr}
    2c32:	0006      	movs	r6, r0
	int cpu = _current_cpu->id;
    2c34:	4b10      	ldr	r3, [pc, #64]	@ (2c78 <slice_reset+0x48>)
    2c36:	7c1c      	ldrb	r4, [r3, #16]

	/* Best-effort cancel: if the slice timeout is already in flight,
	 * its handler only flips slice_expired[cpu] (which we clear below)
	 * and possibly raises an IPI -- harmless either way.
	 */
	(void)z_try_abort_timeout(&slice_timeouts[cpu]);
    2c38:	0065      	lsls	r5, r4, #1
    2c3a:	192d      	adds	r5, r5, r4
    2c3c:	00ed      	lsls	r5, r5, #3
    2c3e:	4b0f      	ldr	r3, [pc, #60]	@ (2c7c <slice_reset+0x4c>)
    2c40:	18ed      	adds	r5, r5, r3
    2c42:	0028      	movs	r0, r5
    2c44:	f000 f9ca 	bl	2fdc <z_try_abort_timeout>
	if (slice_size != 0) {
    2c48:	2e00      	cmp	r6, #0
    2c4a:	d106      	bne.n	2c5a <slice_reset+0x2a>
		int delay = atomic_get(&slice_expired[cpu]) ? slice_size - 1 : slice_size;

		z_add_timeout(&slice_timeouts[cpu], slice_timeout,
			      K_TICKS(delay));
	}
	atomic_clear(&slice_expired[cpu]);
    2c4c:	00a0      	lsls	r0, r4, #2
    2c4e:	4b0c      	ldr	r3, [pc, #48]	@ (2c80 <slice_reset+0x50>)
    2c50:	18c0      	adds	r0, r0, r3
    2c52:	2100      	movs	r1, #0
    2c54:	f003 fb45 	bl	62e2 <z_impl_atomic_set>
}
    2c58:	bd70      	pop	{r4, r5, r6, pc}
		int delay = atomic_get(&slice_expired[cpu]) ? slice_size - 1 : slice_size;
    2c5a:	00a0      	lsls	r0, r4, #2
    2c5c:	4b08      	ldr	r3, [pc, #32]	@ (2c80 <slice_reset+0x50>)
    2c5e:	18c0      	adds	r0, r0, r3
    2c60:	f003 fb3d 	bl	62de <atomic_get>
    2c64:	2800      	cmp	r0, #0
    2c66:	d000      	beq.n	2c6a <slice_reset+0x3a>
    2c68:	3e01      	subs	r6, #1
			      K_TICKS(delay));
    2c6a:	17f3      	asrs	r3, r6, #31
		z_add_timeout(&slice_timeouts[cpu], slice_timeout,
    2c6c:	4905      	ldr	r1, [pc, #20]	@ (2c84 <slice_reset+0x54>)
    2c6e:	0032      	movs	r2, r6
    2c70:	0028      	movs	r0, r5
    2c72:	f000 f937 	bl	2ee4 <z_add_timeout>
    2c76:	e7e9      	b.n	2c4c <slice_reset+0x1c>
    2c78:	1ffff360 	.word	0x1ffff360
    2c7c:	1ffff458 	.word	0x1ffff458
    2c80:	1ffff4ec 	.word	0x1ffff4ec
    2c84:	00002bfd 	.word	0x00002bfd

00002c88 <z_time_slice>:
}
#endif

/* Called out of each timer and IPI interrupt */
void z_time_slice(void)
{
    2c88:	b570      	push	{r4, r5, r6, lr}
    2c8a:	f3ef 8410 	mrs	r4, PRIMASK
    2c8e:	b672      	cpsid	i
	    !atomic_get(&slice_expired[_current_cpu->id])) {
		return;
	}

	k_spinlock_key_t key = z_sched_spinlock_lock();
	struct k_thread *curr = _current;
    2c90:	4b17      	ldr	r3, [pc, #92]	@ (2cf0 <z_time_slice+0x68>)
    2c92:	689d      	ldr	r5, [r3, #8]

#ifdef CONFIG_SWAP_NONATOMIC
	if (pending_current == curr) {
    2c94:	4b17      	ldr	r3, [pc, #92]	@ (2cf4 <z_time_slice+0x6c>)
    2c96:	681b      	ldr	r3, [r3, #0]
    2c98:	42ab      	cmp	r3, r5
    2c9a:	d017      	beq.n	2ccc <z_time_slice+0x44>
		z_time_slice_reset(curr);
		z_sched_spinlock_unlock(key);
		return;
	}
	pending_current = NULL;
    2c9c:	4b15      	ldr	r3, [pc, #84]	@ (2cf4 <z_time_slice+0x6c>)
    2c9e:	2200      	movs	r2, #0
    2ca0:	601a      	str	r2, [r3, #0]
#endif

	int slice_size = 0;

	if (atomic_get(&slice_expired[_current_cpu->id])) {
    2ca2:	4b13      	ldr	r3, [pc, #76]	@ (2cf0 <z_time_slice+0x68>)
    2ca4:	7c18      	ldrb	r0, [r3, #16]
    2ca6:	0080      	lsls	r0, r0, #2
    2ca8:	4b13      	ldr	r3, [pc, #76]	@ (2cf8 <z_time_slice+0x70>)
    2caa:	18c0      	adds	r0, r0, r3
    2cac:	f003 fb17 	bl	62de <atomic_get>
    2cb0:	2800      	cmp	r0, #0
    2cb2:	d007      	beq.n	2cc4 <z_time_slice+0x3c>
		slice_size = z_time_slice_size(curr);
    2cb4:	0028      	movs	r0, r5
    2cb6:	f7ff ff7f 	bl	2bb8 <z_time_slice_size>
    2cba:	1e06      	subs	r6, r0, #0
	}

	if (slice_size != 0) {
    2cbc:	d002      	beq.n	2cc4 <z_time_slice+0x3c>
	uint8_t state = thread->base.thread_state;
    2cbe:	7c2b      	ldrb	r3, [r5, #16]
			 * cached size is stale; recompute before rearming.
			 */
			slice_size = z_time_slice_size(curr);
		}
#endif
		if (!z_is_thread_prevented_from_running(curr)) {
    2cc0:	06db      	lsls	r3, r3, #27
    2cc2:	d00a      	beq.n	2cda <z_time_slice+0x52>
    2cc4:	2c00      	cmp	r4, #0
    2cc6:	d100      	bne.n	2cca <z_time_slice+0x42>
    __ASM volatile ("cpsie i" : : : "memory");
    2cc8:	b662      	cpsie	i
			}
#endif
		}
	}
	z_sched_spinlock_unlock(key);
}
    2cca:	bd70      	pop	{r4, r5, r6, pc}
		z_time_slice_reset(curr);
    2ccc:	0028      	movs	r0, r5
    2cce:	f003 ff95 	bl	6bfc <z_time_slice_reset>
    2cd2:	2c00      	cmp	r4, #0
    2cd4:	d1f9      	bne.n	2cca <z_time_slice+0x42>
    2cd6:	b662      	cpsie	i
}
    2cd8:	e7f7      	b.n	2cca <z_time_slice+0x42>
			move_current_to_end_of_prio_q();
    2cda:	f7ff fcd3 	bl	2684 <move_current_to_end_of_prio_q>
			if (_kernel.ready_q.cache == curr) {
    2cde:	4b04      	ldr	r3, [pc, #16]	@ (2cf0 <z_time_slice+0x68>)
    2ce0:	69db      	ldr	r3, [r3, #28]
    2ce2:	42ab      	cmp	r3, r5
    2ce4:	d1ee      	bne.n	2cc4 <z_time_slice+0x3c>
				slice_reset(slice_size);
    2ce6:	0030      	movs	r0, r6
    2ce8:	f7ff ffa2 	bl	2c30 <slice_reset>
    2cec:	e7ea      	b.n	2cc4 <z_time_slice+0x3c>
    2cee:	46c0      	nop			@ (mov r8, r8)
    2cf0:	1ffff360 	.word	0x1ffff360
    2cf4:	1ffff4e8 	.word	0x1ffff4e8
    2cf8:	1ffff4ec 	.word	0x1ffff4ec

00002cfc <z_timeout_q_insert>:

/* Insert @to so that it expires @dticks ticks after curr_tick. Returns true
 * if @to is now the earliest pending timeout.
 */
static inline bool z_timeout_q_insert(struct _timeout *to, k_ticks_t dticks)
{
    2cfc:	b5f0      	push	{r4, r5, r6, r7, lr}
	struct _timeout *t;

	to->dticks = dticks;
    2cfe:	6082      	str	r2, [r0, #8]
    2d00:	60c3      	str	r3, [r0, #12]
	return list->head == list;
    2d02:	4a21      	ldr	r2, [pc, #132]	@ (2d88 <z_timeout_q_insert+0x8c>)
    2d04:	6813      	ldr	r3, [r2, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2d06:	4293      	cmp	r3, r2
    2d08:	d118      	bne.n	2d3c <z_timeout_q_insert+0x40>
    2d0a:	2300      	movs	r3, #0
    2d0c:	e016      	b.n	2d3c <z_timeout_q_insert+0x40>
	for (t = z_timeout_q_first(); t != NULL; t = z_timeout_q_next(t)) {
		if (t->dticks > to->dticks) {
    2d0e:	42a6      	cmp	r6, r4
    2d10:	d91d      	bls.n	2d4e <z_timeout_q_insert+0x52>
			t->dticks -= to->dticks;
    2d12:	1b36      	subs	r6, r6, r4
    2d14:	41af      	sbcs	r7, r5
    2d16:	609e      	str	r6, [r3, #8]
    2d18:	60df      	str	r7, [r3, #12]
	sys_dnode_t *const prev = successor->prev;
    2d1a:	685a      	ldr	r2, [r3, #4]
	node->prev = prev;
    2d1c:	6042      	str	r2, [r0, #4]
	node->next = successor;
    2d1e:	6003      	str	r3, [r0, #0]
	prev->next = node;
    2d20:	6010      	str	r0, [r2, #0]
	successor->prev = node;
    2d22:	6058      	str	r0, [r3, #4]
	return list->head == list;
    2d24:	4a18      	ldr	r2, [pc, #96]	@ (2d88 <z_timeout_q_insert+0x8c>)
    2d26:	6813      	ldr	r3, [r2, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2d28:	4293      	cmp	r3, r2
    2d2a:	d004      	beq.n	2d36 <z_timeout_q_insert+0x3a>
			sys_dlist_insert(&t->node, &to->node);
			return z_timeout_q_first() == to;
    2d2c:	1ac3      	subs	r3, r0, r3
    2d2e:	425a      	negs	r2, r3
    2d30:	4153      	adcs	r3, r2
    2d32:	b2d8      	uxtb	r0, r3
    2d34:	e024      	b.n	2d80 <z_timeout_q_insert+0x84>
    2d36:	2300      	movs	r3, #0
    2d38:	e7f8      	b.n	2d2c <z_timeout_q_insert+0x30>
	return (node == list->tail) ? NULL : node->next;
    2d3a:	2300      	movs	r3, #0
	for (t = z_timeout_q_first(); t != NULL; t = z_timeout_q_next(t)) {
    2d3c:	2b00      	cmp	r3, #0
    2d3e:	d012      	beq.n	2d66 <z_timeout_q_insert+0x6a>
		if (t->dticks > to->dticks) {
    2d40:	689e      	ldr	r6, [r3, #8]
    2d42:	68df      	ldr	r7, [r3, #12]
    2d44:	6884      	ldr	r4, [r0, #8]
    2d46:	68c5      	ldr	r5, [r0, #12]
    2d48:	42af      	cmp	r7, r5
    2d4a:	dce2      	bgt.n	2d12 <z_timeout_q_insert+0x16>
    2d4c:	d0df      	beq.n	2d0e <z_timeout_q_insert+0x12>
		}
		to->dticks -= t->dticks;
    2d4e:	1ba4      	subs	r4, r4, r6
    2d50:	41bd      	sbcs	r5, r7
    2d52:	6084      	str	r4, [r0, #8]
    2d54:	60c5      	str	r5, [r0, #12]
	return (node != NULL) ? sys_dlist_peek_next_no_check(list, node) : NULL;
    2d56:	2b00      	cmp	r3, #0
    2d58:	d0f0      	beq.n	2d3c <z_timeout_q_insert+0x40>
	return (node == list->tail) ? NULL : node->next;
    2d5a:	490b      	ldr	r1, [pc, #44]	@ (2d88 <z_timeout_q_insert+0x8c>)
    2d5c:	6849      	ldr	r1, [r1, #4]
    2d5e:	428b      	cmp	r3, r1
    2d60:	d0eb      	beq.n	2d3a <z_timeout_q_insert+0x3e>
    2d62:	681b      	ldr	r3, [r3, #0]
    2d64:	e7ea      	b.n	2d3c <z_timeout_q_insert+0x40>
	sys_dnode_t *const tail = list->tail;
    2d66:	4a08      	ldr	r2, [pc, #32]	@ (2d88 <z_timeout_q_insert+0x8c>)
    2d68:	6851      	ldr	r1, [r2, #4]
	node->next = list;
    2d6a:	6002      	str	r2, [r0, #0]
	node->prev = tail;
    2d6c:	6041      	str	r1, [r0, #4]
	tail->next = node;
    2d6e:	6008      	str	r0, [r1, #0]
	list->tail = node;
    2d70:	6050      	str	r0, [r2, #4]
	return list->head == list;
    2d72:	6811      	ldr	r1, [r2, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2d74:	4291      	cmp	r1, r2
    2d76:	d004      	beq.n	2d82 <z_timeout_q_insert+0x86>
	}

	sys_dlist_append(&timeout_list, &to->node);
	return z_timeout_q_first() == to;
    2d78:	1a40      	subs	r0, r0, r1
    2d7a:	4243      	negs	r3, r0
    2d7c:	4158      	adcs	r0, r3
    2d7e:	b2c0      	uxtb	r0, r0
}
    2d80:	bdf0      	pop	{r4, r5, r6, r7, pc}
    2d82:	0019      	movs	r1, r3
    2d84:	e7f8      	b.n	2d78 <z_timeout_q_insert+0x7c>
    2d86:	46c0      	nop			@ (mov r8, r8)
    2d88:	1ffff028 	.word	0x1ffff028

00002d8c <z_timeout_q_remove>:
/* Remove an arbitrary timeout from the queue, absorbing its delta into the
 * successor so the remaining deltas stay valid. Returns true if @to was the
 * earliest pending timeout. Used only by the abort path, never from announce.
 */
static inline bool z_timeout_q_remove(struct _timeout *to)
{
    2d8c:	b5f0      	push	{r4, r5, r6, r7, lr}
    2d8e:	0003      	movs	r3, r0
	return list->head == list;
    2d90:	4a11      	ldr	r2, [pc, #68]	@ (2dd8 <z_timeout_q_remove+0x4c>)
    2d92:	6810      	ldr	r0, [r2, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2d94:	4290      	cmp	r0, r2
    2d96:	d01c      	beq.n	2dd2 <z_timeout_q_remove+0x46>
	bool was_first = (z_timeout_q_first() == to);
    2d98:	1a18      	subs	r0, r3, r0
    2d9a:	4242      	negs	r2, r0
    2d9c:	4150      	adcs	r0, r2
    2d9e:	b2c0      	uxtb	r0, r0
	return (node != NULL) ? sys_dlist_peek_next_no_check(list, node) : NULL;
    2da0:	2b00      	cmp	r3, #0
    2da2:	d00e      	beq.n	2dc2 <z_timeout_q_remove+0x36>
	return (node == list->tail) ? NULL : node->next;
    2da4:	490c      	ldr	r1, [pc, #48]	@ (2dd8 <z_timeout_q_remove+0x4c>)
    2da6:	6849      	ldr	r1, [r1, #4]
    2da8:	4299      	cmp	r1, r3
    2daa:	d00a      	beq.n	2dc2 <z_timeout_q_remove+0x36>
    2dac:	681a      	ldr	r2, [r3, #0]
	struct _timeout *n = z_timeout_q_next(to);

	if (n != NULL) {
    2dae:	2a00      	cmp	r2, #0
    2db0:	d007      	beq.n	2dc2 <z_timeout_q_remove+0x36>
		n->dticks += to->dticks;
    2db2:	6894      	ldr	r4, [r2, #8]
    2db4:	68d5      	ldr	r5, [r2, #12]
    2db6:	689e      	ldr	r6, [r3, #8]
    2db8:	68df      	ldr	r7, [r3, #12]
    2dba:	19a4      	adds	r4, r4, r6
    2dbc:	417d      	adcs	r5, r7
    2dbe:	6094      	str	r4, [r2, #8]
    2dc0:	60d5      	str	r5, [r2, #12]
	sys_dnode_t *const prev = node->prev;
    2dc2:	6859      	ldr	r1, [r3, #4]
	sys_dnode_t *const next = node->next;
    2dc4:	681a      	ldr	r2, [r3, #0]
	prev->next = next;
    2dc6:	600a      	str	r2, [r1, #0]
	next->prev = prev;
    2dc8:	6051      	str	r1, [r2, #4]
	node->next = NULL;
    2dca:	2200      	movs	r2, #0
    2dcc:	601a      	str	r2, [r3, #0]
	node->prev = NULL;
    2dce:	605a      	str	r2, [r3, #4]
	}
	sys_dlist_remove(&to->node);

	return was_first;
}
    2dd0:	bdf0      	pop	{r4, r5, r6, r7, pc}
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2dd2:	2000      	movs	r0, #0
    2dd4:	e7e0      	b.n	2d98 <z_timeout_q_remove+0xc>
    2dd6:	46c0      	nop			@ (mov r8, r8)
    2dd8:	1ffff028 	.word	0x1ffff028

00002ddc <z_timeout_q_next_gap>:
	return list->head == list;
    2ddc:	4a0a      	ldr	r2, [pc, #40]	@ (2e08 <z_timeout_q_next_gap+0x2c>)
    2dde:	6813      	ldr	r3, [r2, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2de0:	4293      	cmp	r3, r2
    2de2:	d00c      	beq.n	2dfe <z_timeout_q_next_gap+0x22>
 */
static inline int32_t z_timeout_q_next_gap(void)
{
	struct _timeout *t = z_timeout_q_first();

	return (t == NULL) ? INT32_MAX : (int32_t)MIN((int64_t)t->dticks, INT32_MAX);
    2de4:	2b00      	cmp	r3, #0
    2de6:	d00c      	beq.n	2e02 <z_timeout_q_next_gap+0x26>
    2de8:	6898      	ldr	r0, [r3, #8]
    2dea:	68db      	ldr	r3, [r3, #12]
    2dec:	2b00      	cmp	r3, #0
    2dee:	dc04      	bgt.n	2dfa <z_timeout_q_next_gap+0x1e>
    2df0:	d000      	beq.n	2df4 <z_timeout_q_next_gap+0x18>
}
    2df2:	4770      	bx	lr
	return (t == NULL) ? INT32_MAX : (int32_t)MIN((int64_t)t->dticks, INT32_MAX);
    2df4:	4b05      	ldr	r3, [pc, #20]	@ (2e0c <z_timeout_q_next_gap+0x30>)
    2df6:	4298      	cmp	r0, r3
    2df8:	d9fb      	bls.n	2df2 <z_timeout_q_next_gap+0x16>
    2dfa:	4805      	ldr	r0, [pc, #20]	@ (2e10 <z_timeout_q_next_gap+0x34>)
    2dfc:	e7f9      	b.n	2df2 <z_timeout_q_next_gap+0x16>
    2dfe:	4804      	ldr	r0, [pc, #16]	@ (2e10 <z_timeout_q_next_gap+0x34>)
    2e00:	e7f7      	b.n	2df2 <z_timeout_q_next_gap+0x16>
    2e02:	4803      	ldr	r0, [pc, #12]	@ (2e10 <z_timeout_q_next_gap+0x34>)
    2e04:	e7f5      	b.n	2df2 <z_timeout_q_next_gap+0x16>
    2e06:	46c0      	nop			@ (mov r8, r8)
    2e08:	1ffff028 	.word	0x1ffff028
    2e0c:	7ffffffe 	.word	0x7ffffffe
    2e10:	7fffffff 	.word	0x7fffffff

00002e14 <z_timeout_q_advance>:
/* Advance backend state by @dt ticks. For the delta list this shifts the head
 * closer to expiry; a head whose gap is fully consumed reads dticks == 0 and
 * is then drained by z_timeout_q_pop_due(). The caller advances curr_tick.
 */
static inline void z_timeout_q_advance(int32_t dt)
{
    2e14:	b530      	push	{r4, r5, lr}
	return list->head == list;
    2e16:	4b07      	ldr	r3, [pc, #28]	@ (2e34 <z_timeout_q_advance+0x20>)
    2e18:	6819      	ldr	r1, [r3, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2e1a:	4299      	cmp	r1, r3
    2e1c:	d009      	beq.n	2e32 <z_timeout_q_advance+0x1e>
	struct _timeout *t = z_timeout_q_first();

	if (t != NULL) {
    2e1e:	2900      	cmp	r1, #0
    2e20:	d007      	beq.n	2e32 <z_timeout_q_advance+0x1e>
		t->dticks -= dt;
    2e22:	688a      	ldr	r2, [r1, #8]
    2e24:	68cb      	ldr	r3, [r1, #12]
    2e26:	0004      	movs	r4, r0
    2e28:	17c5      	asrs	r5, r0, #31
    2e2a:	1b12      	subs	r2, r2, r4
    2e2c:	41ab      	sbcs	r3, r5
    2e2e:	608a      	str	r2, [r1, #8]
    2e30:	60cb      	str	r3, [r1, #12]
	}
}
    2e32:	bd30      	pop	{r4, r5, pc}
    2e34:	1ffff028 	.word	0x1ffff028

00002e38 <z_timeout_q_pop_due>:
	return list->head == list;
    2e38:	4b0b      	ldr	r3, [pc, #44]	@ (2e68 <z_timeout_q_pop_due+0x30>)
    2e3a:	6818      	ldr	r0, [r3, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2e3c:	4298      	cmp	r0, r3
    2e3e:	d00e      	beq.n	2e5e <z_timeout_q_pop_due+0x26>
 */
static inline struct _timeout *z_timeout_q_pop_due(void)
{
	struct _timeout *t = z_timeout_q_first();

	if ((t == NULL) || (t->dticks != 0)) {
    2e40:	2800      	cmp	r0, #0
    2e42:	d00b      	beq.n	2e5c <z_timeout_q_pop_due+0x24>
    2e44:	6882      	ldr	r2, [r0, #8]
    2e46:	68c1      	ldr	r1, [r0, #12]
    2e48:	0013      	movs	r3, r2
    2e4a:	430b      	orrs	r3, r1
    2e4c:	d109      	bne.n	2e62 <z_timeout_q_pop_due+0x2a>
	sys_dnode_t *const prev = node->prev;
    2e4e:	6842      	ldr	r2, [r0, #4]
	sys_dnode_t *const next = node->next;
    2e50:	6803      	ldr	r3, [r0, #0]
	prev->next = next;
    2e52:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    2e54:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    2e56:	2300      	movs	r3, #0
    2e58:	6003      	str	r3, [r0, #0]
	node->prev = NULL;
    2e5a:	6043      	str	r3, [r0, #4]
	}

	sys_dlist_remove(&t->node);

	return t;
}
    2e5c:	4770      	bx	lr
		return NULL;
    2e5e:	2000      	movs	r0, #0
    2e60:	e7fc      	b.n	2e5c <z_timeout_q_pop_due+0x24>
    2e62:	2000      	movs	r0, #0
    2e64:	e7fa      	b.n	2e5c <z_timeout_q_pop_due+0x24>
    2e66:	46c0      	nop			@ (mov r8, r8)
    2e68:	1ffff028 	.word	0x1ffff028

00002e6c <next_timeout>:
	return list->head == list;
    2e6c:	4a14      	ldr	r2, [pc, #80]	@ (2ec0 <next_timeout+0x54>)
    2e6e:	6813      	ldr	r3, [r2, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    2e70:	4293      	cmp	r3, r2
    2e72:	d00f      	beq.n	2e94 <next_timeout+0x28>
	return (to == NULL) ? K_TICKS_FOREVER : to->dticks;
    2e74:	2b00      	cmp	r3, #0
    2e76:	d011      	beq.n	2e9c <next_timeout+0x30>
    2e78:	689a      	ldr	r2, [r3, #8]
    2e7a:	68db      	ldr	r3, [r3, #12]
	 * announce, so the gap between two announces must not exceed
	 * SYS_CLOCK_MAX_WAIT for the announced count to fit. The budget left
	 * from now on is SYS_CLOCK_MAX_WAIT - ticks_elapsed; if it is already
	 * spent ask for an announce right away.
	 */
	if (ticks_elapsed >= SYS_CLOCK_MAX_WAIT) {
    2e7c:	4911      	ldr	r1, [pc, #68]	@ (2ec4 <next_timeout+0x58>)
    2e7e:	4288      	cmp	r0, r1
    2e80:	d819      	bhi.n	2eb6 <next_timeout+0x4a>
	 * step: wait the capped budget and re-evaluate at the next announce.
	 * Testing next (which may be 64-bit) against the cap keeps the
	 * remaining arithmetic in 32 bits. The empty case still returns the
	 * budget so a driver keeps waking to maintain uptime.
	 */
	if (next == K_TICKS_FOREVER || next >= SYS_CLOCK_MAX_WAIT) {
    2e82:	1c51      	adds	r1, r2, #1
    2e84:	d00e      	beq.n	2ea4 <next_timeout+0x38>
    2e86:	2b00      	cmp	r3, #0
    2e88:	dc12      	bgt.n	2eb0 <next_timeout+0x44>
    2e8a:	d00e      	beq.n	2eaa <next_timeout+0x3e>
	}

	/* Otherwise wait until the timeout, relative to now (0 if due). */
	dticks = (uint32_t)next;

	return (dticks > ticks_elapsed) ? (dticks - ticks_elapsed) : 0;
    2e8c:	4290      	cmp	r0, r2
    2e8e:	d214      	bcs.n	2eba <next_timeout+0x4e>
    2e90:	1a10      	subs	r0, r2, r0
    2e92:	e011      	b.n	2eb8 <next_timeout+0x4c>
    2e94:	2201      	movs	r2, #1
    2e96:	4252      	negs	r2, r2
    2e98:	0013      	movs	r3, r2
    2e9a:	e7ef      	b.n	2e7c <next_timeout+0x10>
    2e9c:	2201      	movs	r2, #1
    2e9e:	4252      	negs	r2, r2
    2ea0:	0013      	movs	r3, r2
    2ea2:	e7eb      	b.n	2e7c <next_timeout+0x10>
	if (next == K_TICKS_FOREVER || next >= SYS_CLOCK_MAX_WAIT) {
    2ea4:	1c59      	adds	r1, r3, #1
    2ea6:	d1ee      	bne.n	2e86 <next_timeout+0x1a>
    2ea8:	e002      	b.n	2eb0 <next_timeout+0x44>
    2eaa:	4b06      	ldr	r3, [pc, #24]	@ (2ec4 <next_timeout+0x58>)
    2eac:	429a      	cmp	r2, r3
    2eae:	d9ed      	bls.n	2e8c <next_timeout+0x20>
		return SYS_CLOCK_MAX_WAIT - ticks_elapsed;
    2eb0:	4b05      	ldr	r3, [pc, #20]	@ (2ec8 <next_timeout+0x5c>)
    2eb2:	1a18      	subs	r0, r3, r0
    2eb4:	e000      	b.n	2eb8 <next_timeout+0x4c>
		return 0;
    2eb6:	2000      	movs	r0, #0
}
    2eb8:	4770      	bx	lr
	return (dticks > ticks_elapsed) ? (dticks - ticks_elapsed) : 0;
    2eba:	2000      	movs	r0, #0
    2ebc:	e7fc      	b.n	2eb8 <next_timeout+0x4c>
    2ebe:	46c0      	nop			@ (mov r8, r8)
    2ec0:	1ffff028 	.word	0x1ffff028
    2ec4:	7ffffffe 	.word	0x7ffffffe
    2ec8:	7fffffff 	.word	0x7fffffff

00002ecc <elapsed>:
{
    2ecc:	b510      	push	{r4, lr}
	return announcing_cpu == CPU_ID;
    2ece:	4b04      	ldr	r3, [pc, #16]	@ (2ee0 <elapsed+0x14>)
    2ed0:	681b      	ldr	r3, [r3, #0]
	if (this_cpu_announcing()) {
    2ed2:	2b00      	cmp	r3, #0
    2ed4:	d101      	bne.n	2eda <elapsed+0xe>
		return 0U;
    2ed6:	2000      	movs	r0, #0
}
    2ed8:	bd10      	pop	{r4, pc}
	return sys_clock_elapsed() +
    2eda:	f7fe fd8d 	bl	19f8 <sys_clock_elapsed>
    2ede:	e7fb      	b.n	2ed8 <elapsed+0xc>
    2ee0:	1ffff030 	.word	0x1ffff030

00002ee4 <z_add_timeout>:
		sys_clock_set_timeout(next_timeout(ticks_elapsed), false);
	}
}

k_ticks_t z_add_timeout(struct _timeout *to, _timeout_func_t fn, k_timeout_t timeout)
{
    2ee4:	b5f0      	push	{r4, r5, r6, r7, lr}
    2ee6:	46ce      	mov	lr, r9
    2ee8:	4647      	mov	r7, r8
    2eea:	b580      	push	{r7, lr}
    2eec:	b089      	sub	sp, #36	@ 0x24
    2eee:	4681      	mov	r9, r0
    2ef0:	0014      	movs	r4, r2
    2ef2:	001d      	movs	r5, r3
	k_ticks_t ticks = 0;

	if (K_TIMEOUT_EQ(timeout, K_FOREVER)) {
    2ef4:	1c62      	adds	r2, r4, #1
    2ef6:	d00b      	beq.n	2f10 <z_add_timeout+0x2c>
#ifdef CONFIG_KERNEL_COHERENCE
	__ASSERT_NO_MSG(sys_cache_is_mem_coherent(to));
#endif /* CONFIG_KERNEL_COHERENCE */

	__ASSERT(z_is_inactive_timeout(to), "");
	to->fn = fn;
    2ef8:	464b      	mov	r3, r9
    2efa:	6119      	str	r1, [r3, #16]

	K_SPINLOCK(&timeout_lock) {
    2efc:	2300      	movs	r3, #0
    2efe:	f3ef 8210 	mrs	r2, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    2f02:	b672      	cpsid	i
    2f04:	4690      	mov	r8, r2
	k_ticks_t ticks = 0;
    2f06:	2100      	movs	r1, #0
    2f08:	2200      	movs	r2, #0
    2f0a:	9100      	str	r1, [sp, #0]
    2f0c:	9201      	str	r2, [sp, #4]
    2f0e:	e03c      	b.n	2f8a <z_add_timeout+0xa6>
	if (K_TIMEOUT_EQ(timeout, K_FOREVER)) {
    2f10:	3301      	adds	r3, #1
    2f12:	d1f1      	bne.n	2ef8 <z_add_timeout+0x14>
		return 0;
    2f14:	2300      	movs	r3, #0
    2f16:	2400      	movs	r4, #0
    2f18:	9300      	str	r3, [sp, #0]
    2f1a:	9401      	str	r4, [sp, #4]
			sys_clock_set_timeout(next_timeout(ticks_elapsed), false);
		}
	}

	return ticks;
}
    2f1c:	9800      	ldr	r0, [sp, #0]
    2f1e:	9901      	ldr	r1, [sp, #4]
    2f20:	b009      	add	sp, #36	@ 0x24
    2f22:	bcc0      	pop	{r6, r7}
    2f24:	46b9      	mov	r9, r7
    2f26:	46b0      	mov	r8, r6
    2f28:	bdf0      	pop	{r4, r5, r6, r7, pc}
			ticks_elapsed = elapsed();
    2f2a:	f7ff ffcf 	bl	2ecc <elapsed>
    2f2e:	9007      	str	r0, [sp, #28]
			dticks = timeout.ticks + ticks_elapsed +
    2f30:	9004      	str	r0, [sp, #16]
    2f32:	2000      	movs	r0, #0
    2f34:	9005      	str	r0, [sp, #20]
    2f36:	9a04      	ldr	r2, [sp, #16]
    2f38:	9b05      	ldr	r3, [sp, #20]
    2f3a:	1912      	adds	r2, r2, r4
    2f3c:	416b      	adcs	r3, r5
	return announcing_cpu == CPU_ID;
    2f3e:	4925      	ldr	r1, [pc, #148]	@ (2fd4 <z_add_timeout+0xf0>)
    2f40:	6809      	ldr	r1, [r1, #0]
				 (this_cpu_announcing() ? 0 : 1);
    2f42:	000e      	movs	r6, r1
    2f44:	1e71      	subs	r1, r6, #1
    2f46:	418e      	sbcs	r6, r1
    2f48:	9602      	str	r6, [sp, #8]
    2f4a:	9003      	str	r0, [sp, #12]
			dticks = timeout.ticks + ticks_elapsed +
    2f4c:	9802      	ldr	r0, [sp, #8]
    2f4e:	9903      	ldr	r1, [sp, #12]
    2f50:	1812      	adds	r2, r2, r0
    2f52:	414b      	adcs	r3, r1
			ticks = curr_tick + dticks;
    2f54:	4920      	ldr	r1, [pc, #128]	@ (2fd8 <z_add_timeout+0xf4>)
    2f56:	680e      	ldr	r6, [r1, #0]
    2f58:	684f      	ldr	r7, [r1, #4]
    2f5a:	18b6      	adds	r6, r6, r2
    2f5c:	415f      	adcs	r7, r3
    2f5e:	9600      	str	r6, [sp, #0]
    2f60:	9701      	str	r7, [sp, #4]
			has_elapsed = true;
    2f62:	2601      	movs	r6, #1
    2f64:	e026      	b.n	2fb4 <z_add_timeout+0xd0>
			dticks = max(1, dticks);
    2f66:	2b00      	cmp	r3, #0
    2f68:	d101      	bne.n	2f6e <z_add_timeout+0x8a>
    2f6a:	2a00      	cmp	r2, #0
    2f6c:	d11f      	bne.n	2fae <z_add_timeout+0xca>
    2f6e:	2201      	movs	r2, #1
    2f70:	2300      	movs	r3, #0
    2f72:	e01c      	b.n	2fae <z_add_timeout+0xca>
			sys_clock_set_timeout(next_timeout(ticks_elapsed), false);
    2f74:	9807      	ldr	r0, [sp, #28]
    2f76:	f7ff ff79 	bl	2e6c <next_timeout>
    2f7a:	2100      	movs	r1, #0
    2f7c:	f003 fcbf 	bl	68fe <sys_clock_set_timeout>
    2f80:	4643      	mov	r3, r8
    2f82:	2b00      	cmp	r3, #0
    2f84:	d100      	bne.n	2f88 <z_add_timeout+0xa4>
    __ASM volatile ("cpsie i" : : : "memory");
    2f86:	b662      	cpsie	i
	K_SPINLOCK(&timeout_lock) {
    2f88:	2301      	movs	r3, #1
    2f8a:	2b00      	cmp	r3, #0
    2f8c:	d1c6      	bne.n	2f1c <z_add_timeout+0x38>
		if (Z_IS_TIMEOUT_RELATIVE(timeout)) {
    2f8e:	9400      	str	r4, [sp, #0]
    2f90:	9501      	str	r5, [sp, #4]
    2f92:	2d00      	cmp	r5, #0
    2f94:	dac9      	bge.n	2f2a <z_add_timeout+0x46>
			dticks = Z_TICK_ABS(timeout.ticks) - curr_tick;
    2f96:	4b10      	ldr	r3, [pc, #64]	@ (2fd8 <z_add_timeout+0xf4>)
    2f98:	6818      	ldr	r0, [r3, #0]
    2f9a:	6859      	ldr	r1, [r3, #4]
    2f9c:	1900      	adds	r0, r0, r4
    2f9e:	4169      	adcs	r1, r5
			dticks = max(1, dticks);
    2fa0:	2202      	movs	r2, #2
    2fa2:	4252      	negs	r2, r2
    2fa4:	17d3      	asrs	r3, r2, #31
    2fa6:	1a12      	subs	r2, r2, r0
    2fa8:	418b      	sbcs	r3, r1
    2faa:	2b00      	cmp	r3, #0
    2fac:	dddb      	ble.n	2f66 <z_add_timeout+0x82>
		bool has_elapsed = false;
    2fae:	2600      	movs	r6, #0
		uint32_t ticks_elapsed = 0;
    2fb0:	2100      	movs	r1, #0
    2fb2:	9107      	str	r1, [sp, #28]
		if (z_timeout_q_insert(to, dticks) && !any_cpu_announcing()) {
    2fb4:	4648      	mov	r0, r9
    2fb6:	f7ff fea1 	bl	2cfc <z_timeout_q_insert>
    2fba:	2800      	cmp	r0, #0
    2fbc:	d0e0      	beq.n	2f80 <z_add_timeout+0x9c>
	return announcing_cpu != -1;
    2fbe:	4b05      	ldr	r3, [pc, #20]	@ (2fd4 <z_add_timeout+0xf0>)
    2fc0:	681b      	ldr	r3, [r3, #0]
		if (z_timeout_q_insert(to, dticks) && !any_cpu_announcing()) {
    2fc2:	3301      	adds	r3, #1
    2fc4:	d1dc      	bne.n	2f80 <z_add_timeout+0x9c>
			if (!has_elapsed) {
    2fc6:	2e00      	cmp	r6, #0
    2fc8:	d1d4      	bne.n	2f74 <z_add_timeout+0x90>
				ticks_elapsed = elapsed();
    2fca:	f7ff ff7f 	bl	2ecc <elapsed>
    2fce:	9007      	str	r0, [sp, #28]
    2fd0:	e7d0      	b.n	2f74 <z_add_timeout+0x90>
    2fd2:	46c0      	nop			@ (mov r8, r8)
    2fd4:	1ffff030 	.word	0x1ffff030
    2fd8:	1ffff470 	.word	0x1ffff470

00002fdc <z_try_abort_timeout>:

int z_try_abort_timeout(struct _timeout *to)
{
    2fdc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    2fde:	0004      	movs	r4, r0
	int ret = -EINVAL;

	K_SPINLOCK(&timeout_lock) {
    2fe0:	2500      	movs	r5, #0
    2fe2:	f3ef 8710 	mrs	r7, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    2fe6:	b672      	cpsid	i
	int ret = -EINVAL;
    2fe8:	2016      	movs	r0, #22
    2fea:	4240      	negs	r0, r0
    2fec:	e00f      	b.n	300e <z_try_abort_timeout+0x32>
		if (!z_is_inactive_timeout(to)) {
			bool was_first = z_timeout_q_remove(to);

			ret = 0;
			if (was_first) {
				reprogram_next(elapsed());
    2fee:	f7ff ff6d 	bl	2ecc <elapsed>
    2ff2:	f003 fe09 	bl	6c08 <reprogram_next>
			ret = 0;
    2ff6:	0030      	movs	r0, r6
	return (struct _timeout *)((uintptr_t)inflight_timeout & ~INFLIGHT_SUPERSEDED_BIT);
    2ff8:	4b0e      	ldr	r3, [pc, #56]	@ (3034 <z_try_abort_timeout+0x58>)
    2ffa:	681b      	ldr	r3, [r3, #0]
    2ffc:	2201      	movs	r2, #1
    2ffe:	0019      	movs	r1, r3
    3000:	4391      	bics	r1, r2

		/* Record that the in-flight timeout has been aborted, so a
		 * handler that checks (z_timeout_inflight_superseded) can
		 * tell its dispatch was overtaken.
		 */
		if (inflight_ptr() == to) {
    3002:	428c      	cmp	r4, r1
    3004:	d00f      	beq.n	3026 <z_try_abort_timeout+0x4a>
    3006:	2f00      	cmp	r7, #0
    3008:	d100      	bne.n	300c <z_try_abort_timeout+0x30>
    __ASM volatile ("cpsie i" : : : "memory");
    300a:	b662      	cpsie	i
	K_SPINLOCK(&timeout_lock) {
    300c:	2501      	movs	r5, #1
    300e:	1e2e      	subs	r6, r5, #0
    3010:	d10e      	bne.n	3030 <z_try_abort_timeout+0x54>
	return node->next != NULL;
    3012:	6823      	ldr	r3, [r4, #0]
		if (!z_is_inactive_timeout(to)) {
    3014:	2b00      	cmp	r3, #0
    3016:	d0ef      	beq.n	2ff8 <z_try_abort_timeout+0x1c>
			bool was_first = z_timeout_q_remove(to);
    3018:	0020      	movs	r0, r4
    301a:	f7ff feb7 	bl	2d8c <z_timeout_q_remove>
			if (was_first) {
    301e:	2800      	cmp	r0, #0
    3020:	d1e5      	bne.n	2fee <z_try_abort_timeout+0x12>
			ret = 0;
    3022:	0028      	movs	r0, r5
    3024:	e7e8      	b.n	2ff8 <z_try_abort_timeout+0x1c>
	inflight_timeout = (struct _timeout *)((uintptr_t)inflight_timeout |
    3026:	2201      	movs	r2, #1
    3028:	4313      	orrs	r3, r2
    302a:	4a02      	ldr	r2, [pc, #8]	@ (3034 <z_try_abort_timeout+0x58>)
    302c:	6013      	str	r3, [r2, #0]
}
    302e:	e7ea      	b.n	3006 <z_try_abort_timeout+0x2a>
	if (IS_ENABLED(CONFIG_SMP) && ret == -EAGAIN) {
		arch_spin_relax();
	}

	return ret;
}
    3030:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
    3032:	46c0      	nop			@ (mov r8, r8)
    3034:	1ffff4f4 	.word	0x1ffff4f4

00003038 <z_timeout_inflight_superseded>:

bool z_timeout_inflight_superseded(const struct _timeout *to)
{
    3038:	b510      	push	{r4, lr}
    303a:	0004      	movs	r4, r0
	bool superseded = false;

	K_SPINLOCK(&timeout_lock) {
    303c:	2300      	movs	r3, #0
    303e:	f3ef 8110 	mrs	r1, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    3042:	b672      	cpsid	i
	bool superseded = false;
    3044:	2000      	movs	r0, #0
    3046:	e000      	b.n	304a <z_timeout_inflight_superseded+0x12>
	K_SPINLOCK(&timeout_lock) {
    3048:	2301      	movs	r3, #1
    304a:	2b00      	cmp	r3, #0
    304c:	d10b      	bne.n	3066 <z_timeout_inflight_superseded+0x2e>
		superseded = inflight_timeout ==
			     (struct _timeout *)((uintptr_t)to | INFLIGHT_SUPERSEDED_BIT);
    304e:	2301      	movs	r3, #1
    3050:	4323      	orrs	r3, r4
    3052:	4a05      	ldr	r2, [pc, #20]	@ (3068 <z_timeout_inflight_superseded+0x30>)
    3054:	6812      	ldr	r2, [r2, #0]
		superseded = inflight_timeout ==
    3056:	1a9b      	subs	r3, r3, r2
    3058:	425a      	negs	r2, r3
    305a:	4153      	adcs	r3, r2
    305c:	b2d8      	uxtb	r0, r3
    305e:	2900      	cmp	r1, #0
    3060:	d1f2      	bne.n	3048 <z_timeout_inflight_superseded+0x10>
    __ASM volatile ("cpsie i" : : : "memory");
    3062:	b662      	cpsie	i
}
    3064:	e7f0      	b.n	3048 <z_timeout_inflight_superseded+0x10>
	}

	return superseded;
}
    3066:	bd10      	pop	{r4, pc}
    3068:	1ffff4f4 	.word	0x1ffff4f4

0000306c <sys_clock_announce_locked>:
	}
	return ret;
}

void sys_clock_announce_locked(uint32_t ticks, k_spinlock_key_t key)
{
    306c:	b5f0      	push	{r4, r5, r6, r7, lr}
    306e:	46c6      	mov	lr, r8
    3070:	b500      	push	{lr}
    3072:	000e      	movs	r6, r1
		announce_remaining += ticks;
		k_spin_unlock(&timeout_lock, key);
		return;
	}

	announce_remaining = ticks;
    3074:	4b20      	ldr	r3, [pc, #128]	@ (30f8 <sys_clock_announce_locked+0x8c>)
    3076:	6018      	str	r0, [r3, #0]
	announcing_cpu = CPU_ID;
    3078:	4b20      	ldr	r3, [pc, #128]	@ (30fc <sys_clock_announce_locked+0x90>)
    307a:	2200      	movs	r2, #0
    307c:	601a      	str	r2, [r3, #0]
	 * It advances curr_tick / announce_remaining and fires handlers via
	 * the same inflight_timeout dance as below.
	 */
	key = z_timeout_q_announce(key);
#else
	while (announce_remaining > 0) {
    307e:	4b1e      	ldr	r3, [pc, #120]	@ (30f8 <sys_clock_announce_locked+0x8c>)
    3080:	681b      	ldr	r3, [r3, #0]
    3082:	4698      	mov	r8, r3
    3084:	2b00      	cmp	r3, #0
    3086:	d028      	beq.n	30da <sys_clock_announce_locked+0x6e>
		struct _timeout *t;
		int32_t dt = z_timeout_q_next_gap();
    3088:	f7ff fea8 	bl	2ddc <z_timeout_q_next_gap>
    308c:	0007      	movs	r7, r0

		if ((uint32_t)dt > announce_remaining) {
    308e:	4540      	cmp	r0, r8
    3090:	d900      	bls.n	3094 <sys_clock_announce_locked+0x28>
			/* Next event is past this announce window: advance the
			 * backend by the residual ticks without firing anything.
			 */
			dt = (int32_t)announce_remaining;
    3092:	4647      	mov	r7, r8
		 * announce_remaining reaching 0 mid-loop is harmless: same-tick
		 * handlers' z_add_timeout() still anchors via
		 * this_cpu_announcing(), and another CPU's announce still folds
		 * into ours via any_cpu_announcing() in the SMP early-return.
		 */
		z_timeout_q_advance(dt);
    3094:	0038      	movs	r0, r7
    3096:	f7ff febd 	bl	2e14 <z_timeout_q_advance>
		curr_tick += dt;
    309a:	4919      	ldr	r1, [pc, #100]	@ (3100 <sys_clock_announce_locked+0x94>)
    309c:	003c      	movs	r4, r7
    309e:	17fd      	asrs	r5, r7, #31
    30a0:	680a      	ldr	r2, [r1, #0]
    30a2:	684b      	ldr	r3, [r1, #4]
    30a4:	1912      	adds	r2, r2, r4
    30a6:	416b      	adcs	r3, r5
    30a8:	600a      	str	r2, [r1, #0]
    30aa:	604b      	str	r3, [r1, #4]
		announce_remaining -= dt;
    30ac:	4a12      	ldr	r2, [pc, #72]	@ (30f8 <sys_clock_announce_locked+0x8c>)
    30ae:	6813      	ldr	r3, [r2, #0]
    30b0:	1bdb      	subs	r3, r3, r7
    30b2:	6013      	str	r3, [r2, #0]

		/* Drain everything due at the new curr_tick. */
		while ((t = z_timeout_q_pop_due()) != NULL) {
    30b4:	e007      	b.n	30c6 <sys_clock_announce_locked+0x5a>
    __ASM volatile ("cpsie i" : : : "memory");
    30b6:	b662      	cpsie	i
			_timeout_func_t handler = t->fn;

			inflight_timeout = t;

			k_spin_unlock(&timeout_lock, key);
			handler(t);
    30b8:	4798      	blx	r3
    30ba:	f3ef 8610 	mrs	r6, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    30be:	b672      	cpsid	i
			key = k_spin_lock(&timeout_lock);
			inflight_timeout = NULL;
    30c0:	4b10      	ldr	r3, [pc, #64]	@ (3104 <sys_clock_announce_locked+0x98>)
    30c2:	2200      	movs	r2, #0
    30c4:	601a      	str	r2, [r3, #0]
		while ((t = z_timeout_q_pop_due()) != NULL) {
    30c6:	f7ff feb7 	bl	2e38 <z_timeout_q_pop_due>
    30ca:	2800      	cmp	r0, #0
    30cc:	d0d7      	beq.n	307e <sys_clock_announce_locked+0x12>
			_timeout_func_t handler = t->fn;
    30ce:	6903      	ldr	r3, [r0, #16]
			inflight_timeout = t;
    30d0:	4a0c      	ldr	r2, [pc, #48]	@ (3104 <sys_clock_announce_locked+0x98>)
    30d2:	6010      	str	r0, [r2, #0]
    30d4:	2e00      	cmp	r6, #0
    30d6:	d0ee      	beq.n	30b6 <sys_clock_announce_locked+0x4a>
    30d8:	e7ee      	b.n	30b8 <sys_clock_announce_locked+0x4c>
		}
	}
#endif /* _TIMEOUT_BACKEND_OWNS_ANNOUNCE */

	announcing_cpu = -1;
    30da:	4b08      	ldr	r3, [pc, #32]	@ (30fc <sys_clock_announce_locked+0x90>)
    30dc:	2201      	movs	r2, #1
    30de:	4252      	negs	r2, r2
    30e0:	601a      	str	r2, [r3, #0]

	reprogram_next(0);
    30e2:	2000      	movs	r0, #0
    30e4:	f003 fd90 	bl	6c08 <reprogram_next>
    30e8:	2e00      	cmp	r6, #0
    30ea:	d100      	bne.n	30ee <sys_clock_announce_locked+0x82>
    __ASM volatile ("cpsie i" : : : "memory");
    30ec:	b662      	cpsie	i

	k_spin_unlock(&timeout_lock, key);

#ifdef CONFIG_TIMESLICING
	z_time_slice();
    30ee:	f7ff fdcb 	bl	2c88 <z_time_slice>
#endif /* CONFIG_TIMESLICING */
}
    30f2:	bc80      	pop	{r7}
    30f4:	46b8      	mov	r8, r7
    30f6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    30f8:	1ffff4f8 	.word	0x1ffff4f8
    30fc:	1ffff030 	.word	0x1ffff030
    3100:	1ffff470 	.word	0x1ffff470
    3104:	1ffff4f4 	.word	0x1ffff4f4

00003108 <z_sched_usage_start>:
	}
#endif /* CONFIG_SCHED_THREAD_USAGE_ANALYSIS */
}

void z_sched_usage_start(struct k_thread *thread)
{
    3108:	b510      	push	{r4, lr}
	/* One write through a volatile pointer doesn't require
	 * synchronization as long as _usage() treats it as volatile
	 * (we can't race with _stop() by design).
	 */

	_current_cpu->usage0 = usage_now();
    310a:	f003 fda1 	bl	6c50 <usage_now>
    310e:	4b01      	ldr	r3, [pc, #4]	@ (3114 <z_sched_usage_start+0xc>)
    3110:	6158      	str	r0, [r3, #20]
#endif /* CONFIG_SCHED_THREAD_USAGE_ANALYSIS */
}
    3112:	bd10      	pop	{r4, pc}
    3114:	1ffff360 	.word	0x1ffff360

00003118 <z_sched_usage_stop>:

void z_sched_usage_stop(void)
{
    3118:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
	struct _cpu *cpu = _current_cpu;

	/* Only this CPU writes usage0, and callers keep local IRQs masked. */
	if (cpu->usage0 == 0U) {
    311a:	4b21      	ldr	r3, [pc, #132]	@ (31a0 <z_sched_usage_stop+0x88>)
    311c:	695b      	ldr	r3, [r3, #20]
    311e:	2b00      	cmp	r3, #0
    3120:	d00c      	beq.n	313c <z_sched_usage_stop+0x24>
    3122:	f3ef 8410 	mrs	r4, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    3126:	b672      	cpsid	i
		return;
	}

	k_spinlock_key_t k = k_spin_lock(&usage_lock);

	uint32_t u0 = cpu->usage0;
    3128:	4b1d      	ldr	r3, [pc, #116]	@ (31a0 <z_sched_usage_stop+0x88>)
    312a:	695d      	ldr	r5, [r3, #20]

	if (u0 != 0) {
    312c:	2d00      	cmp	r5, #0
    312e:	d106      	bne.n	313e <z_sched_usage_stop+0x26>
		}

		sched_cpu_update_usage(cpu, cycles);
	}

	cpu->usage0 = 0;
    3130:	4b1b      	ldr	r3, [pc, #108]	@ (31a0 <z_sched_usage_stop+0x88>)
    3132:	2200      	movs	r2, #0
    3134:	615a      	str	r2, [r3, #20]
    3136:	2c00      	cmp	r4, #0
    3138:	d100      	bne.n	313c <z_sched_usage_stop+0x24>
    __ASM volatile ("cpsie i" : : : "memory");
    313a:	b662      	cpsie	i
	k_spin_unlock(&usage_lock, k);
}
    313c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
		uint32_t cycles = usage_now() - u0;
    313e:	f003 fd87 	bl	6c50 <usage_now>
    3142:	1b46      	subs	r6, r0, r5
		printk("Nome: %s\n", _kernel.cpus[0].current->name);
    3144:	4f16      	ldr	r7, [pc, #88]	@ (31a0 <z_sched_usage_stop+0x88>)
    3146:	68b9      	ldr	r1, [r7, #8]
    3148:	3170      	adds	r1, #112	@ 0x70
    314a:	4816      	ldr	r0, [pc, #88]	@ (31a4 <z_sched_usage_stop+0x8c>)
    314c:	f003 f8bb 	bl	62c6 <printk>
		printk("Tempo do início: %.2f us\n", u0 / 48.0);
    3150:	0028      	movs	r0, r5
    3152:	f7fd fcc9 	bl	ae8 <__aeabi_ui2d>
    3156:	2200      	movs	r2, #0
    3158:	4b13      	ldr	r3, [pc, #76]	@ (31a8 <z_sched_usage_stop+0x90>)
    315a:	f7fd fa3f 	bl	5dc <__aeabi_ddiv>
    315e:	0002      	movs	r2, r0
    3160:	000b      	movs	r3, r1
    3162:	4812      	ldr	r0, [pc, #72]	@ (31ac <z_sched_usage_stop+0x94>)
    3164:	f003 f8af 	bl	62c6 <printk>
        printk("Tempo do fim: %.2f us\n", usage_now() / 48.0);
    3168:	f003 fd72 	bl	6c50 <usage_now>
    316c:	f7fd fcbc 	bl	ae8 <__aeabi_ui2d>
    3170:	2200      	movs	r2, #0
    3172:	4b0d      	ldr	r3, [pc, #52]	@ (31a8 <z_sched_usage_stop+0x90>)
    3174:	f7fd fa32 	bl	5dc <__aeabi_ddiv>
    3178:	0002      	movs	r2, r0
    317a:	000b      	movs	r3, r1
    317c:	480c      	ldr	r0, [pc, #48]	@ (31b0 <z_sched_usage_stop+0x98>)
    317e:	f003 f8a2 	bl	62c6 <printk>
		if (cpu->current->base.usage.track_usage) {
    3182:	68b8      	ldr	r0, [r7, #8]
    3184:	2338      	movs	r3, #56	@ 0x38
    3186:	5cc3      	ldrb	r3, [r0, r3]
    3188:	2b00      	cmp	r3, #0
    318a:	d104      	bne.n	3196 <z_sched_usage_stop+0x7e>
		sched_cpu_update_usage(cpu, cycles);
    318c:	4804      	ldr	r0, [pc, #16]	@ (31a0 <z_sched_usage_stop+0x88>)
    318e:	0031      	movs	r1, r6
    3190:	f003 fd41 	bl	6c16 <sched_cpu_update_usage>
    3194:	e7cc      	b.n	3130 <z_sched_usage_stop+0x18>
			sched_thread_update_usage(cpu->current, cycles);
    3196:	0031      	movs	r1, r6
    3198:	f003 fd50 	bl	6c3c <sched_thread_update_usage>
    319c:	e7f6      	b.n	318c <z_sched_usage_stop+0x74>
    319e:	46c0      	nop			@ (mov r8, r8)
    31a0:	1ffff360 	.word	0x1ffff360
    31a4:	0000783c 	.word	0x0000783c
    31a8:	40480000 	.word	0x40480000
    31ac:	00007848 	.word	0x00007848
    31b0:	00007864 	.word	0x00007864

000031b4 <memcpy>:
    31b4:	b5f0      	push	{r4, r5, r6, r7, lr}
    31b6:	4657      	mov	r7, sl
    31b8:	4645      	mov	r5, r8
    31ba:	46de      	mov	lr, fp
    31bc:	464e      	mov	r6, r9
    31be:	b5e0      	push	{r5, r6, r7, lr}
    31c0:	000d      	movs	r5, r1
    31c2:	0017      	movs	r7, r2
    31c4:	b087      	sub	sp, #28
    31c6:	2a0f      	cmp	r2, #15
    31c8:	d800      	bhi.n	31cc <memcpy+0x18>
    31ca:	e09b      	b.n	3304 <memcpy+0x150>
    31cc:	2203      	movs	r2, #3
    31ce:	0011      	movs	r1, r2
    31d0:	2307      	movs	r3, #7
    31d2:	4001      	ands	r1, r0
    31d4:	468c      	mov	ip, r1
    31d6:	1a5b      	subs	r3, r3, r1
    31d8:	2b05      	cmp	r3, #5
    31da:	d800      	bhi.n	31de <memcpy+0x2a>
    31dc:	e149      	b.n	3472 <memcpy+0x2be>
    31de:	0001      	movs	r1, r0
    31e0:	4329      	orrs	r1, r5
    31e2:	420a      	tst	r2, r1
    31e4:	d000      	beq.n	31e8 <memcpy+0x34>
    31e6:	e144      	b.n	3472 <memcpy+0x2be>
    31e8:	682a      	ldr	r2, [r5, #0]
    31ea:	6002      	str	r2, [r0, #0]
    31ec:	2b06      	cmp	r3, #6
    31ee:	d100      	bne.n	31f2 <memcpy+0x3e>
    31f0:	e0bd      	b.n	336e <memcpy+0x1ba>
    31f2:	686a      	ldr	r2, [r5, #4]
    31f4:	6042      	str	r2, [r0, #4]
    31f6:	2203      	movs	r2, #3
    31f8:	1c6c      	adds	r4, r5, #1
    31fa:	18e4      	adds	r4, r4, r3
    31fc:	469b      	mov	fp, r3
    31fe:	4663      	mov	r3, ip
    3200:	4692      	mov	sl, r2
    3202:	1fda      	subs	r2, r3, #7
    3204:	19d3      	adds	r3, r2, r7
    3206:	4657      	mov	r7, sl
    3208:	4483      	add	fp, r0
    320a:	4027      	ands	r7, r4
    320c:	4659      	mov	r1, fp
    320e:	46b9      	mov	r9, r7
    3210:	4657      	mov	r7, sl
    3212:	3101      	adds	r1, #1
    3214:	46a8      	mov	r8, r5
    3216:	9101      	str	r1, [sp, #4]
    3218:	0025      	movs	r5, r4
    321a:	1e5e      	subs	r6, r3, #1
    321c:	423c      	tst	r4, r7
    321e:	d000      	beq.n	3222 <memcpy+0x6e>
    3220:	e0ac      	b.n	337c <memcpy+0x1c8>
    3222:	2e0f      	cmp	r6, #15
    3224:	d800      	bhi.n	3228 <memcpy+0x74>
    3226:	e15c      	b.n	34e2 <memcpy+0x32e>
    3228:	3b11      	subs	r3, #17
    322a:	001a      	movs	r2, r3
    322c:	2b0f      	cmp	r3, #15
    322e:	d800      	bhi.n	3232 <memcpy+0x7e>
    3230:	e143      	b.n	34ba <memcpy+0x306>
    3232:	2108      	movs	r1, #8
    3234:	4663      	mov	r3, ip
    3236:	468a      	mov	sl, r1
    3238:	1ac3      	subs	r3, r0, r3
    323a:	4661      	mov	r1, ip
    323c:	449a      	add	sl, r3
    323e:	4643      	mov	r3, r8
    3240:	1a5b      	subs	r3, r3, r1
    3242:	4651      	mov	r1, sl
    3244:	3308      	adds	r3, #8
    3246:	4319      	orrs	r1, r3
    3248:	4689      	mov	r9, r1
    324a:	2107      	movs	r1, #7
    324c:	464f      	mov	r7, r9
    324e:	4039      	ands	r1, r7
    3250:	9103      	str	r1, [sp, #12]
    3252:	2707      	movs	r7, #7
    3254:	4649      	mov	r1, r9
    3256:	420f      	tst	r7, r1
    3258:	d000      	beq.n	325c <memcpy+0xa8>
    325a:	e12e      	b.n	34ba <memcpy+0x306>
    325c:	4645      	mov	r5, r8
    325e:	4661      	mov	r1, ip
    3260:	0912      	lsrs	r2, r2, #4
    3262:	9202      	str	r2, [sp, #8]
    3264:	3201      	adds	r2, #1
    3266:	4691      	mov	r9, r2
    3268:	465a      	mov	r2, fp
    326a:	4683      	mov	fp, r0
    326c:	1b49      	subs	r1, r1, r5
    326e:	468c      	mov	ip, r1
    3270:	1b41      	subs	r1, r0, r5
    3272:	4688      	mov	r8, r1
    3274:	9903      	ldr	r1, [sp, #12]
    3276:	9201      	str	r2, [sp, #4]
    3278:	9404      	str	r4, [sp, #16]
    327a:	9605      	str	r6, [sp, #20]
    327c:	4652      	mov	r2, sl
    327e:	689c      	ldr	r4, [r3, #8]
    3280:	68dd      	ldr	r5, [r3, #12]
    3282:	681e      	ldr	r6, [r3, #0]
    3284:	685f      	ldr	r7, [r3, #4]
    3286:	4640      	mov	r0, r8
    3288:	18d2      	adds	r2, r2, r3
    328a:	18c0      	adds	r0, r0, r3
    328c:	4462      	add	r2, ip
    328e:	3101      	adds	r1, #1
    3290:	6006      	str	r6, [r0, #0]
    3292:	6047      	str	r7, [r0, #4]
    3294:	3310      	adds	r3, #16
    3296:	6014      	str	r4, [r2, #0]
    3298:	6055      	str	r5, [r2, #4]
    329a:	4589      	cmp	r9, r1
    329c:	d8ee      	bhi.n	327c <memcpy+0xc8>
    329e:	9b01      	ldr	r3, [sp, #4]
    32a0:	4658      	mov	r0, fp
    32a2:	0019      	movs	r1, r3
    32a4:	9c04      	ldr	r4, [sp, #16]
    32a6:	9e05      	ldr	r6, [sp, #20]
    32a8:	3111      	adds	r1, #17
    32aa:	9b02      	ldr	r3, [sp, #8]
    32ac:	3410      	adds	r4, #16
    32ae:	011b      	lsls	r3, r3, #4
    32b0:	270f      	movs	r7, #15
    32b2:	18e5      	adds	r5, r4, r3
    32b4:	18c9      	adds	r1, r1, r3
    32b6:	230c      	movs	r3, #12
    32b8:	4037      	ands	r7, r6
    32ba:	4233      	tst	r3, r6
    32bc:	d023      	beq.n	3306 <memcpy+0x152>
    32be:	682b      	ldr	r3, [r5, #0]
    32c0:	1d0e      	adds	r6, r1, #4
    32c2:	600b      	str	r3, [r1, #0]
    32c4:	1f3a      	subs	r2, r7, #4
    32c6:	1d2b      	adds	r3, r5, #4
    32c8:	4698      	mov	r8, r3
    32ca:	46b4      	mov	ip, r6
    32cc:	2a03      	cmp	r2, #3
    32ce:	d908      	bls.n	32e2 <memcpy+0x12e>
    32d0:	4664      	mov	r4, ip
    32d2:	681b      	ldr	r3, [r3, #0]
    32d4:	6023      	str	r3, [r4, #0]
    32d6:	003b      	movs	r3, r7
    32d8:	3b08      	subs	r3, #8
    32da:	2b03      	cmp	r3, #3
    32dc:	d901      	bls.n	32e2 <memcpy+0x12e>
    32de:	68ab      	ldr	r3, [r5, #8]
    32e0:	608b      	str	r3, [r1, #8]
    32e2:	0893      	lsrs	r3, r2, #2
    32e4:	4642      	mov	r2, r8
    32e6:	009b      	lsls	r3, r3, #2
    32e8:	18d5      	adds	r5, r2, r3
    32ea:	18f1      	adds	r1, r6, r3
    32ec:	2303      	movs	r3, #3
    32ee:	401f      	ands	r7, r3
    32f0:	1e7a      	subs	r2, r7, #1
    32f2:	2f00      	cmp	r7, #0
    32f4:	d10a      	bne.n	330c <memcpy+0x158>
    32f6:	b007      	add	sp, #28
    32f8:	bcf0      	pop	{r4, r5, r6, r7}
    32fa:	46bb      	mov	fp, r7
    32fc:	46b2      	mov	sl, r6
    32fe:	46a9      	mov	r9, r5
    3300:	46a0      	mov	r8, r4
    3302:	bdf0      	pop	{r4, r5, r6, r7, pc}
    3304:	0001      	movs	r1, r0
    3306:	1e7a      	subs	r2, r7, #1
    3308:	2f00      	cmp	r7, #0
    330a:	d0f4      	beq.n	32f6 <memcpy+0x142>
    330c:	2a05      	cmp	r2, #5
    330e:	d800      	bhi.n	3312 <memcpy+0x15e>
    3310:	e0f2      	b.n	34f8 <memcpy+0x344>
    3312:	002b      	movs	r3, r5
    3314:	430b      	orrs	r3, r1
    3316:	079b      	lsls	r3, r3, #30
    3318:	d000      	beq.n	331c <memcpy+0x168>
    331a:	e0c7      	b.n	34ac <memcpy+0x2f8>
    331c:	682b      	ldr	r3, [r5, #0]
    331e:	600b      	str	r3, [r1, #0]
    3320:	08bb      	lsrs	r3, r7, #2
    3322:	2b01      	cmp	r3, #1
    3324:	d01a      	beq.n	335c <memcpy+0x1a8>
    3326:	686c      	ldr	r4, [r5, #4]
    3328:	604c      	str	r4, [r1, #4]
    332a:	2b03      	cmp	r3, #3
    332c:	d101      	bne.n	3332 <memcpy+0x17e>
    332e:	68ab      	ldr	r3, [r5, #8]
    3330:	608b      	str	r3, [r1, #8]
    3332:	2603      	movs	r6, #3
    3334:	003b      	movs	r3, r7
    3336:	43b3      	bics	r3, r6
    3338:	1ad2      	subs	r2, r2, r3
    333a:	18ec      	adds	r4, r5, r3
    333c:	18cb      	adds	r3, r1, r3
    333e:	423e      	tst	r6, r7
    3340:	d0d9      	beq.n	32f6 <memcpy+0x142>
    3342:	7821      	ldrb	r1, [r4, #0]
    3344:	7019      	strb	r1, [r3, #0]
    3346:	2a00      	cmp	r2, #0
    3348:	d0d5      	beq.n	32f6 <memcpy+0x142>
    334a:	7861      	ldrb	r1, [r4, #1]
    334c:	7059      	strb	r1, [r3, #1]
    334e:	2a01      	cmp	r2, #1
    3350:	d0d1      	beq.n	32f6 <memcpy+0x142>
    3352:	3402      	adds	r4, #2
    3354:	1c99      	adds	r1, r3, #2
    3356:	7822      	ldrb	r2, [r4, #0]
    3358:	700a      	strb	r2, [r1, #0]
    335a:	e7cc      	b.n	32f6 <memcpy+0x142>
    335c:	2f04      	cmp	r7, #4
    335e:	d0ca      	beq.n	32f6 <memcpy+0x142>
    3360:	792b      	ldrb	r3, [r5, #4]
    3362:	1dac      	adds	r4, r5, #6
    3364:	710b      	strb	r3, [r1, #4]
    3366:	796b      	ldrb	r3, [r5, #5]
    3368:	714b      	strb	r3, [r1, #5]
    336a:	3106      	adds	r1, #6
    336c:	e7f3      	b.n	3356 <memcpy+0x1a2>
    336e:	792a      	ldrb	r2, [r5, #4]
    3370:	7102      	strb	r2, [r0, #4]
    3372:	796a      	ldrb	r2, [r5, #5]
    3374:	7142      	strb	r2, [r0, #5]
    3376:	79aa      	ldrb	r2, [r5, #6]
    3378:	7182      	strb	r2, [r0, #6]
    337a:	e73c      	b.n	31f6 <memcpy+0x42>
    337c:	464b      	mov	r3, r9
    337e:	1a12      	subs	r2, r2, r0
    3380:	1ae5      	subs	r5, r4, r3
    3382:	3203      	adds	r2, #3
    3384:	18ac      	adds	r4, r5, r2
    3386:	2304      	movs	r3, #4
    3388:	464a      	mov	r2, r9
    338a:	1a9b      	subs	r3, r3, r2
    338c:	00db      	lsls	r3, r3, #3
    338e:	469c      	mov	ip, r3
    3390:	2308      	movs	r3, #8
    3392:	1a9b      	subs	r3, r3, r2
    3394:	00d2      	lsls	r2, r2, #3
    3396:	4692      	mov	sl, r2
    3398:	465a      	mov	r2, fp
    339a:	4698      	mov	r8, r3
    339c:	4683      	mov	fp, r0
    339e:	682b      	ldr	r3, [r5, #0]
    33a0:	4650      	mov	r0, sl
    33a2:	46aa      	mov	sl, r5
    33a4:	4665      	mov	r5, ip
    33a6:	46a4      	mov	ip, r4
    33a8:	9201      	str	r2, [sp, #4]
    33aa:	40c3      	lsrs	r3, r0
    33ac:	001a      	movs	r2, r3
    33ae:	4663      	mov	r3, ip
    33b0:	585b      	ldr	r3, [r3, r1]
    33b2:	000f      	movs	r7, r1
    33b4:	001c      	movs	r4, r3
    33b6:	40ac      	lsls	r4, r5
    33b8:	4322      	orrs	r2, r4
    33ba:	603a      	str	r2, [r7, #0]
    33bc:	0032      	movs	r2, r6
    33be:	3e04      	subs	r6, #4
    33c0:	3104      	adds	r1, #4
    33c2:	4546      	cmp	r6, r8
    33c4:	d2f1      	bcs.n	33aa <memcpy+0x1f6>
    33c6:	4655      	mov	r5, sl
    33c8:	9b01      	ldr	r3, [sp, #4]
    33ca:	4658      	mov	r0, fp
    33cc:	1aed      	subs	r5, r5, r3
    33ce:	464b      	mov	r3, r9
    33d0:	3507      	adds	r5, #7
    33d2:	19ed      	adds	r5, r5, r7
    33d4:	3b04      	subs	r3, #4
    33d6:	18ed      	adds	r5, r5, r3
    33d8:	3a05      	subs	r2, #5
    33da:	782b      	ldrb	r3, [r5, #0]
    33dc:	1c6c      	adds	r4, r5, #1
    33de:	700b      	strb	r3, [r1, #0]
    33e0:	1eb7      	subs	r7, r6, #2
    33e2:	1c4b      	adds	r3, r1, #1
    33e4:	2a00      	cmp	r2, #0
    33e6:	d100      	bne.n	33ea <memcpy+0x236>
    33e8:	e785      	b.n	32f6 <memcpy+0x142>
    33ea:	7822      	ldrb	r2, [r4, #0]
    33ec:	701a      	strb	r2, [r3, #0]
    33ee:	2f00      	cmp	r7, #0
    33f0:	d100      	bne.n	33f4 <memcpy+0x240>
    33f2:	e780      	b.n	32f6 <memcpy+0x142>
    33f4:	78ab      	ldrb	r3, [r5, #2]
    33f6:	708b      	strb	r3, [r1, #2]
    33f8:	2e03      	cmp	r6, #3
    33fa:	d100      	bne.n	33fe <memcpy+0x24a>
    33fc:	e77b      	b.n	32f6 <memcpy+0x142>
    33fe:	78eb      	ldrb	r3, [r5, #3]
    3400:	70cb      	strb	r3, [r1, #3]
    3402:	2e04      	cmp	r6, #4
    3404:	d100      	bne.n	3408 <memcpy+0x254>
    3406:	e776      	b.n	32f6 <memcpy+0x142>
    3408:	792b      	ldrb	r3, [r5, #4]
    340a:	710b      	strb	r3, [r1, #4]
    340c:	2e05      	cmp	r6, #5
    340e:	d100      	bne.n	3412 <memcpy+0x25e>
    3410:	e771      	b.n	32f6 <memcpy+0x142>
    3412:	796b      	ldrb	r3, [r5, #5]
    3414:	714b      	strb	r3, [r1, #5]
    3416:	2e06      	cmp	r6, #6
    3418:	d100      	bne.n	341c <memcpy+0x268>
    341a:	e76c      	b.n	32f6 <memcpy+0x142>
    341c:	79ab      	ldrb	r3, [r5, #6]
    341e:	718b      	strb	r3, [r1, #6]
    3420:	2e07      	cmp	r6, #7
    3422:	d100      	bne.n	3426 <memcpy+0x272>
    3424:	e767      	b.n	32f6 <memcpy+0x142>
    3426:	79eb      	ldrb	r3, [r5, #7]
    3428:	71cb      	strb	r3, [r1, #7]
    342a:	2e08      	cmp	r6, #8
    342c:	d100      	bne.n	3430 <memcpy+0x27c>
    342e:	e762      	b.n	32f6 <memcpy+0x142>
    3430:	7a2b      	ldrb	r3, [r5, #8]
    3432:	720b      	strb	r3, [r1, #8]
    3434:	2e09      	cmp	r6, #9
    3436:	d100      	bne.n	343a <memcpy+0x286>
    3438:	e75d      	b.n	32f6 <memcpy+0x142>
    343a:	7a6b      	ldrb	r3, [r5, #9]
    343c:	724b      	strb	r3, [r1, #9]
    343e:	2e0a      	cmp	r6, #10
    3440:	d100      	bne.n	3444 <memcpy+0x290>
    3442:	e758      	b.n	32f6 <memcpy+0x142>
    3444:	7aab      	ldrb	r3, [r5, #10]
    3446:	728b      	strb	r3, [r1, #10]
    3448:	2e0b      	cmp	r6, #11
    344a:	d100      	bne.n	344e <memcpy+0x29a>
    344c:	e753      	b.n	32f6 <memcpy+0x142>
    344e:	7aeb      	ldrb	r3, [r5, #11]
    3450:	72cb      	strb	r3, [r1, #11]
    3452:	2e0c      	cmp	r6, #12
    3454:	d100      	bne.n	3458 <memcpy+0x2a4>
    3456:	e74e      	b.n	32f6 <memcpy+0x142>
    3458:	7b2b      	ldrb	r3, [r5, #12]
    345a:	730b      	strb	r3, [r1, #12]
    345c:	2e0d      	cmp	r6, #13
    345e:	d100      	bne.n	3462 <memcpy+0x2ae>
    3460:	e749      	b.n	32f6 <memcpy+0x142>
    3462:	7b6b      	ldrb	r3, [r5, #13]
    3464:	734b      	strb	r3, [r1, #13]
    3466:	2e0e      	cmp	r6, #14
    3468:	d100      	bne.n	346c <memcpy+0x2b8>
    346a:	e744      	b.n	32f6 <memcpy+0x142>
    346c:	7bab      	ldrb	r3, [r5, #14]
    346e:	738b      	strb	r3, [r1, #14]
    3470:	e741      	b.n	32f6 <memcpy+0x142>
    3472:	782a      	ldrb	r2, [r5, #0]
    3474:	7002      	strb	r2, [r0, #0]
    3476:	786a      	ldrb	r2, [r5, #1]
    3478:	7042      	strb	r2, [r0, #1]
    347a:	78aa      	ldrb	r2, [r5, #2]
    347c:	7082      	strb	r2, [r0, #2]
    347e:	78ea      	ldrb	r2, [r5, #3]
    3480:	70c2      	strb	r2, [r0, #3]
    3482:	792a      	ldrb	r2, [r5, #4]
    3484:	7102      	strb	r2, [r0, #4]
    3486:	4662      	mov	r2, ip
    3488:	2a03      	cmp	r2, #3
    348a:	d100      	bne.n	348e <memcpy+0x2da>
    348c:	e6b3      	b.n	31f6 <memcpy+0x42>
    348e:	796a      	ldrb	r2, [r5, #5]
    3490:	7142      	strb	r2, [r0, #5]
    3492:	4662      	mov	r2, ip
    3494:	2a02      	cmp	r2, #2
    3496:	d100      	bne.n	349a <memcpy+0x2e6>
    3498:	e6ad      	b.n	31f6 <memcpy+0x42>
    349a:	79aa      	ldrb	r2, [r5, #6]
    349c:	7182      	strb	r2, [r0, #6]
    349e:	4662      	mov	r2, ip
    34a0:	2a01      	cmp	r2, #1
    34a2:	d100      	bne.n	34a6 <memcpy+0x2f2>
    34a4:	e6a7      	b.n	31f6 <memcpy+0x42>
    34a6:	79ea      	ldrb	r2, [r5, #7]
    34a8:	71c2      	strb	r2, [r0, #7]
    34aa:	e6a4      	b.n	31f6 <memcpy+0x42>
    34ac:	782b      	ldrb	r3, [r5, #0]
    34ae:	003e      	movs	r6, r7
    34b0:	700b      	strb	r3, [r1, #0]
    34b2:	3f02      	subs	r7, #2
    34b4:	1c6c      	adds	r4, r5, #1
    34b6:	1c4b      	adds	r3, r1, #1
    34b8:	e797      	b.n	33ea <memcpy+0x236>
    34ba:	4659      	mov	r1, fp
    34bc:	0913      	lsrs	r3, r2, #4
    34be:	3111      	adds	r1, #17
    34c0:	011a      	lsls	r2, r3, #4
    34c2:	9f01      	ldr	r7, [sp, #4]
    34c4:	9302      	str	r3, [sp, #8]
    34c6:	1852      	adds	r2, r2, r1
    34c8:	682b      	ldr	r3, [r5, #0]
    34ca:	603b      	str	r3, [r7, #0]
    34cc:	686b      	ldr	r3, [r5, #4]
    34ce:	607b      	str	r3, [r7, #4]
    34d0:	68ab      	ldr	r3, [r5, #8]
    34d2:	60bb      	str	r3, [r7, #8]
    34d4:	68eb      	ldr	r3, [r5, #12]
    34d6:	3510      	adds	r5, #16
    34d8:	60fb      	str	r3, [r7, #12]
    34da:	3710      	adds	r7, #16
    34dc:	4297      	cmp	r7, r2
    34de:	d1f3      	bne.n	34c8 <memcpy+0x314>
    34e0:	e6e3      	b.n	32aa <memcpy+0xf6>
    34e2:	1f5a      	subs	r2, r3, #5
    34e4:	0023      	movs	r3, r4
    34e6:	2405      	movs	r4, #5
    34e8:	445c      	add	r4, fp
    34ea:	0037      	movs	r7, r6
    34ec:	46a4      	mov	ip, r4
    34ee:	0026      	movs	r6, r4
    34f0:	cb10      	ldmia	r3!, {r4}
    34f2:	4698      	mov	r8, r3
    34f4:	600c      	str	r4, [r1, #0]
    34f6:	e6eb      	b.n	32d0 <memcpy+0x11c>
    34f8:	003e      	movs	r6, r7
    34fa:	e76e      	b.n	33da <memcpy+0x226>

000034fc <memset>:
    34fc:	b5f0      	push	{r4, r5, r6, r7, lr}
    34fe:	0783      	lsls	r3, r0, #30
    3500:	d053      	beq.n	35aa <memset+0xae>
    3502:	0005      	movs	r5, r0
    3504:	0004      	movs	r4, r0
    3506:	2703      	movs	r7, #3
    3508:	1886      	adds	r6, r0, r2
    350a:	e004      	b.n	3516 <memset+0x1a>
    350c:	7029      	strb	r1, [r5, #0]
    350e:	3501      	adds	r5, #1
    3510:	423b      	tst	r3, r7
    3512:	d004      	beq.n	351e <memset+0x22>
    3514:	001c      	movs	r4, r3
    3516:	1c63      	adds	r3, r4, #1
    3518:	42b4      	cmp	r4, r6
    351a:	d1f7      	bne.n	350c <memset+0x10>
    351c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    351e:	3a01      	subs	r2, #1
    3520:	1882      	adds	r2, r0, r2
    3522:	1b12      	subs	r2, r2, r4
    3524:	2a03      	cmp	r2, #3
    3526:	d934      	bls.n	3592 <memset+0x96>
    3528:	25ff      	movs	r5, #255	@ 0xff
    352a:	400d      	ands	r5, r1
    352c:	022c      	lsls	r4, r5, #8
    352e:	1964      	adds	r4, r4, r5
    3530:	0425      	lsls	r5, r4, #16
    3532:	1964      	adds	r4, r4, r5
    3534:	2a0f      	cmp	r2, #15
    3536:	d949      	bls.n	35cc <memset+0xd0>
    3538:	0016      	movs	r6, r2
    353a:	3e10      	subs	r6, #16
    353c:	2e1f      	cmp	r6, #31
    353e:	d936      	bls.n	35ae <memset+0xb2>
    3540:	075d      	lsls	r5, r3, #29
    3542:	d134      	bne.n	35ae <memset+0xb2>
    3544:	0935      	lsrs	r5, r6, #4
    3546:	46ac      	mov	ip, r5
    3548:	4667      	mov	r7, ip
    354a:	001d      	movs	r5, r3
    354c:	2600      	movs	r6, #0
    354e:	3701      	adds	r7, #1
    3550:	3601      	adds	r6, #1
    3552:	602c      	str	r4, [r5, #0]
    3554:	606c      	str	r4, [r5, #4]
    3556:	60ac      	str	r4, [r5, #8]
    3558:	60ec      	str	r4, [r5, #12]
    355a:	3510      	adds	r5, #16
    355c:	42be      	cmp	r6, r7
    355e:	d3f7      	bcc.n	3550 <memset+0x54>
    3560:	3310      	adds	r3, #16
    3562:	4665      	mov	r5, ip
    3564:	012e      	lsls	r6, r5, #4
    3566:	250f      	movs	r5, #15
    3568:	199b      	adds	r3, r3, r6
    356a:	260c      	movs	r6, #12
    356c:	4015      	ands	r5, r2
    356e:	4016      	ands	r6, r2
    3570:	002a      	movs	r2, r5
    3572:	2e00      	cmp	r6, #0
    3574:	d00d      	beq.n	3592 <memset+0x96>
    3576:	1f2a      	subs	r2, r5, #4
    3578:	601c      	str	r4, [r3, #0]
    357a:	2a03      	cmp	r2, #3
    357c:	d904      	bls.n	3588 <memset+0x8c>
    357e:	3a04      	subs	r2, #4
    3580:	605c      	str	r4, [r3, #4]
    3582:	2a03      	cmp	r2, #3
    3584:	d900      	bls.n	3588 <memset+0x8c>
    3586:	609c      	str	r4, [r3, #8]
    3588:	2203      	movs	r2, #3
    358a:	402a      	ands	r2, r5
    358c:	08ad      	lsrs	r5, r5, #2
    358e:	00ad      	lsls	r5, r5, #2
    3590:	18eb      	adds	r3, r5, r3
    3592:	1e54      	subs	r4, r2, #1
    3594:	2a00      	cmp	r2, #0
    3596:	d0c1      	beq.n	351c <memset+0x20>
    3598:	b2c9      	uxtb	r1, r1
    359a:	7019      	strb	r1, [r3, #0]
    359c:	2c00      	cmp	r4, #0
    359e:	d0bd      	beq.n	351c <memset+0x20>
    35a0:	7059      	strb	r1, [r3, #1]
    35a2:	2c01      	cmp	r4, #1
    35a4:	d0ba      	beq.n	351c <memset+0x20>
    35a6:	7099      	strb	r1, [r3, #2]
    35a8:	e7b8      	b.n	351c <memset+0x20>
    35aa:	0003      	movs	r3, r0
    35ac:	e7ba      	b.n	3524 <memset+0x28>
    35ae:	001d      	movs	r5, r3
    35b0:	0933      	lsrs	r3, r6, #4
    35b2:	011e      	lsls	r6, r3, #4
    35b4:	469c      	mov	ip, r3
    35b6:	002b      	movs	r3, r5
    35b8:	3310      	adds	r3, #16
    35ba:	199e      	adds	r6, r3, r6
    35bc:	602c      	str	r4, [r5, #0]
    35be:	606c      	str	r4, [r5, #4]
    35c0:	60ac      	str	r4, [r5, #8]
    35c2:	60ec      	str	r4, [r5, #12]
    35c4:	3510      	adds	r5, #16
    35c6:	42ae      	cmp	r6, r5
    35c8:	d1f8      	bne.n	35bc <memset+0xc0>
    35ca:	e7ca      	b.n	3562 <memset+0x66>
    35cc:	0015      	movs	r5, r2
    35ce:	e7d2      	b.n	3576 <memset+0x7a>

000035d0 <strncpy>:
    35d0:	b570      	push	{r4, r5, r6, lr}
    35d2:	0003      	movs	r3, r0
    35d4:	0006      	movs	r6, r0
    35d6:	0008      	movs	r0, r1
    35d8:	4330      	orrs	r0, r6
    35da:	0035      	movs	r5, r6
    35dc:	0780      	lsls	r0, r0, #30
    35de:	d110      	bne.n	3602 <strncpy+0x32>
    35e0:	2a03      	cmp	r2, #3
    35e2:	d90e      	bls.n	3602 <strncpy+0x32>
    35e4:	4c11      	ldr	r4, [pc, #68]	@ (362c <strncpy+0x5c>)
    35e6:	6808      	ldr	r0, [r1, #0]
    35e8:	001d      	movs	r5, r3
    35ea:	4b11      	ldr	r3, [pc, #68]	@ (3630 <strncpy+0x60>)
    35ec:	18c3      	adds	r3, r0, r3
    35ee:	4383      	bics	r3, r0
    35f0:	4223      	tst	r3, r4
    35f2:	d106      	bne.n	3602 <strncpy+0x32>
    35f4:	002b      	movs	r3, r5
    35f6:	3a04      	subs	r2, #4
    35f8:	3104      	adds	r1, #4
    35fa:	c301      	stmia	r3!, {r0}
    35fc:	2a03      	cmp	r2, #3
    35fe:	d8f2      	bhi.n	35e6 <strncpy+0x16>
    3600:	001d      	movs	r5, r3
    3602:	0028      	movs	r0, r5
    3604:	2300      	movs	r3, #0
    3606:	e006      	b.n	3616 <strncpy+0x46>
    3608:	5ccc      	ldrb	r4, [r1, r3]
    360a:	3a01      	subs	r2, #1
    360c:	54ec      	strb	r4, [r5, r3]
    360e:	3001      	adds	r0, #1
    3610:	3301      	adds	r3, #1
    3612:	2c00      	cmp	r4, #0
    3614:	d003      	beq.n	361e <strncpy+0x4e>
    3616:	2a00      	cmp	r2, #0
    3618:	d1f6      	bne.n	3608 <strncpy+0x38>
    361a:	0030      	movs	r0, r6
    361c:	bd70      	pop	{r4, r5, r6, pc}
    361e:	2a00      	cmp	r2, #0
    3620:	d0fb      	beq.n	361a <strncpy+0x4a>
    3622:	2100      	movs	r1, #0
    3624:	f7ff ff6a 	bl	34fc <memset>
    3628:	e7f7      	b.n	361a <strncpy+0x4a>
    362a:	46c0      	nop			@ (mov r8, r8)
    362c:	80808080 	.word	0x80808080
    3630:	fefefeff 	.word	0xfefefeff

00003634 <strnlen>:
    3634:	b510      	push	{r4, lr}
    3636:	0003      	movs	r3, r0
    3638:	1844      	adds	r4, r0, r1
    363a:	2900      	cmp	r1, #0
    363c:	d103      	bne.n	3646 <strnlen+0x12>
    363e:	e007      	b.n	3650 <strnlen+0x1c>
    3640:	3301      	adds	r3, #1
    3642:	42a3      	cmp	r3, r4
    3644:	d002      	beq.n	364c <strnlen+0x18>
    3646:	781a      	ldrb	r2, [r3, #0]
    3648:	2a00      	cmp	r2, #0
    364a:	d1f9      	bne.n	3640 <strnlen+0xc>
    364c:	1a18      	subs	r0, r3, r0
    364e:	bd10      	pop	{r4, pc}
    3650:	2000      	movs	r0, #0
    3652:	e7fc      	b.n	364e <strnlen+0x1a>

00003654 <__ultoa_invert>:
    3654:	b5f0      	push	{r4, r5, r6, r7, lr}
    3656:	000c      	movs	r4, r1
    3658:	2137      	movs	r1, #55	@ 0x37
    365a:	46c6      	mov	lr, r8
    365c:	1ac9      	subs	r1, r1, r3
    365e:	271f      	movs	r7, #31
    3660:	b2c9      	uxtb	r1, r1
    3662:	0005      	movs	r5, r0
    3664:	4688      	mov	r8, r1
    3666:	0016      	movs	r6, r2
    3668:	b500      	push	{lr}
    366a:	401f      	ands	r7, r3
    366c:	0028      	movs	r0, r5
    366e:	0021      	movs	r1, r4
    3670:	003a      	movs	r2, r7
    3672:	2300      	movs	r3, #0
    3674:	f7fc ff92 	bl	59c <__aeabi_uldivmod>
    3678:	b2d2      	uxtb	r2, r2
    367a:	46ac      	mov	ip, r5
    367c:	0023      	movs	r3, r4
    367e:	0005      	movs	r5, r0
    3680:	000c      	movs	r4, r1
    3682:	2a09      	cmp	r2, #9
    3684:	d901      	bls.n	368a <__ultoa_invert+0x36>
    3686:	4442      	add	r2, r8
    3688:	b2d2      	uxtb	r2, r2
    368a:	3230      	adds	r2, #48	@ 0x30
    368c:	7032      	strb	r2, [r6, #0]
    368e:	2200      	movs	r2, #0
    3690:	1c70      	adds	r0, r6, #1
    3692:	429a      	cmp	r2, r3
    3694:	d804      	bhi.n	36a0 <__ultoa_invert+0x4c>
    3696:	d001      	beq.n	369c <__ultoa_invert+0x48>
    3698:	0006      	movs	r6, r0
    369a:	e7e7      	b.n	366c <__ultoa_invert+0x18>
    369c:	4567      	cmp	r7, ip
    369e:	d9fb      	bls.n	3698 <__ultoa_invert+0x44>
    36a0:	bc80      	pop	{r7}
    36a2:	46b8      	mov	r8, r7
    36a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
    36a6:	46c0      	nop			@ (mov r8, r8)

000036a8 <skip_to_arg>:
    36a8:	b5f0      	push	{r4, r5, r6, r7, lr}
    36aa:	464e      	mov	r6, r9
    36ac:	46de      	mov	lr, fp
    36ae:	4657      	mov	r7, sl
    36b0:	4645      	mov	r5, r8
    36b2:	b5e0      	push	{r5, r6, r7, lr}
    36b4:	2601      	movs	r6, #1
    36b6:	b083      	sub	sp, #12
    36b8:	42b2      	cmp	r2, r6
    36ba:	dd09      	ble.n	36d0 <skip_to_arg+0x28>
    36bc:	0005      	movs	r5, r0
    36be:	002b      	movs	r3, r5
    36c0:	e001      	b.n	36c6 <skip_to_arg+0x1e>
    36c2:	2c25      	cmp	r4, #37	@ 0x25
    36c4:	d00b      	beq.n	36de <skip_to_arg+0x36>
    36c6:	001d      	movs	r5, r3
    36c8:	782c      	ldrb	r4, [r5, #0]
    36ca:	3301      	adds	r3, #1
    36cc:	2c00      	cmp	r4, #0
    36ce:	d1f8      	bne.n	36c2 <skip_to_arg+0x1a>
    36d0:	b003      	add	sp, #12
    36d2:	bcf0      	pop	{r4, r5, r6, r7}
    36d4:	46bb      	mov	fp, r7
    36d6:	46b2      	mov	sl, r6
    36d8:	46a9      	mov	r9, r5
    36da:	46a0      	mov	r8, r4
    36dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
    36de:	781b      	ldrb	r3, [r3, #0]
    36e0:	3502      	adds	r5, #2
    36e2:	2b25      	cmp	r3, #37	@ 0x25
    36e4:	d0eb      	beq.n	36be <skip_to_arg+0x16>
    36e6:	001f      	movs	r7, r3
    36e8:	3f20      	subs	r7, #32
    36ea:	46ab      	mov	fp, r5
    36ec:	2f10      	cmp	r7, #16
    36ee:	d865      	bhi.n	37bc <skip_to_arg+0x114>
    36f0:	4c90      	ldr	r4, [pc, #576]	@ (3934 <skip_to_arg+0x28c>)
    36f2:	40fc      	lsrs	r4, r7
    36f4:	0027      	movs	r7, r4
    36f6:	2400      	movs	r4, #0
    36f8:	46a0      	mov	r8, r4
    36fa:	46a4      	mov	ip, r4
    36fc:	9401      	str	r4, [sp, #4]
    36fe:	07ff      	lsls	r7, r7, #31
    3700:	d52e      	bpl.n	3760 <skip_to_arg+0xb8>
    3702:	4b8c      	ldr	r3, [pc, #560]	@ (3934 <skip_to_arg+0x28c>)
    3704:	469a      	mov	sl, r3
    3706:	2301      	movs	r3, #1
    3708:	469c      	mov	ip, r3
    370a:	e005      	b.n	3718 <skip_to_arg+0x70>
    370c:	4654      	mov	r4, sl
    370e:	40fc      	lsrs	r4, r7
    3710:	0027      	movs	r7, r4
    3712:	4664      	mov	r4, ip
    3714:	423c      	tst	r4, r7
    3716:	d073      	beq.n	3800 <skip_to_arg+0x158>
    3718:	2301      	movs	r3, #1
    371a:	4699      	mov	r9, r3
    371c:	002b      	movs	r3, r5
    371e:	781b      	ldrb	r3, [r3, #0]
    3720:	44cb      	add	fp, r9
    3722:	465d      	mov	r5, fp
    3724:	2b00      	cmp	r3, #0
    3726:	d100      	bne.n	372a <skip_to_arg+0x82>
    3728:	e0c9      	b.n	38be <skip_to_arg+0x216>
    372a:	001f      	movs	r7, r3
    372c:	3f20      	subs	r7, #32
    372e:	2f10      	cmp	r7, #16
    3730:	d9ec      	bls.n	370c <skip_to_arg+0x64>
    3732:	001f      	movs	r7, r3
    3734:	3f30      	subs	r7, #48	@ 0x30
    3736:	2f09      	cmp	r7, #9
    3738:	d902      	bls.n	3740 <skip_to_arg+0x98>
    373a:	2400      	movs	r4, #0
    373c:	46a4      	mov	ip, r4
    373e:	e016      	b.n	376e <skip_to_arg+0xc6>
    3740:	46ac      	mov	ip, r5
    3742:	4643      	mov	r3, r8
    3744:	009b      	lsls	r3, r3, #2
    3746:	4443      	add	r3, r8
    3748:	005b      	lsls	r3, r3, #1
    374a:	4698      	mov	r8, r3
    374c:	4663      	mov	r3, ip
    374e:	465d      	mov	r5, fp
    3750:	2420      	movs	r4, #32
    3752:	781b      	ldrb	r3, [r3, #0]
    3754:	3501      	adds	r5, #1
    3756:	46ab      	mov	fp, r5
    3758:	46a4      	mov	ip, r4
    375a:	44b8      	add	r8, r7
    375c:	2b00      	cmp	r3, #0
    375e:	d015      	beq.n	378c <skip_to_arg+0xe4>
    3760:	001f      	movs	r7, r3
    3762:	3f30      	subs	r7, #48	@ 0x30
    3764:	2f09      	cmp	r7, #9
    3766:	d9eb      	bls.n	3740 <skip_to_arg+0x98>
    3768:	2b24      	cmp	r3, #36	@ 0x24
    376a:	d100      	bne.n	376e <skip_to_arg+0xc6>
    376c:	e085      	b.n	387a <skip_to_arg+0x1d2>
    376e:	2704      	movs	r7, #4
    3770:	001c      	movs	r4, r3
    3772:	43bc      	bics	r4, r7
    3774:	2c2a      	cmp	r4, #42	@ 0x2a
    3776:	d100      	bne.n	377a <skip_to_arg+0xd2>
    3778:	e0a4      	b.n	38c4 <skip_to_arg+0x21c>
    377a:	001f      	movs	r7, r3
    377c:	3f4c      	subs	r7, #76	@ 0x4c
    377e:	2f2e      	cmp	r7, #46	@ 0x2e
    3780:	d803      	bhi.n	378a <skip_to_arg+0xe2>
    3782:	4c6d      	ldr	r4, [pc, #436]	@ (3938 <skip_to_arg+0x290>)
    3784:	00bf      	lsls	r7, r7, #2
    3786:	59e7      	ldr	r7, [r4, r7]
    3788:	46bf      	mov	pc, r7
    378a:	4664      	mov	r4, ip
    378c:	46a1      	mov	r9, r4
    378e:	9c01      	ldr	r4, [sp, #4]
    3790:	2c00      	cmp	r4, #0
    3792:	d09d      	beq.n	36d0 <skip_to_arg+0x28>
    3794:	42b4      	cmp	r4, r6
    3796:	d192      	bne.n	36be <skip_to_arg+0x16>
    3798:	2765      	movs	r7, #101	@ 0x65
    379a:	2520      	movs	r5, #32
    379c:	427f      	negs	r7, r7
    379e:	46bc      	mov	ip, r7
    37a0:	431d      	orrs	r5, r3
    37a2:	44ac      	add	ip, r5
    37a4:	4667      	mov	r7, ip
    37a6:	680c      	ldr	r4, [r1, #0]
    37a8:	2f02      	cmp	r7, #2
    37aa:	d900      	bls.n	37ae <skip_to_arg+0x106>
    37ac:	e0b0      	b.n	3910 <skip_to_arg+0x268>
    37ae:	1de3      	adds	r3, r4, #7
    37b0:	2407      	movs	r4, #7
    37b2:	43a3      	bics	r3, r4
    37b4:	3308      	adds	r3, #8
    37b6:	600b      	str	r3, [r1, #0]
    37b8:	3601      	adds	r6, #1
    37ba:	e77d      	b.n	36b8 <skip_to_arg+0x10>
    37bc:	2400      	movs	r4, #0
    37be:	46a0      	mov	r8, r4
    37c0:	9401      	str	r4, [sp, #4]
    37c2:	e7b6      	b.n	3732 <skip_to_arg+0x8a>
    37c4:	002b      	movs	r3, r5
    37c6:	46e1      	mov	r9, ip
    37c8:	2401      	movs	r4, #1
    37ca:	46a4      	mov	ip, r4
    37cc:	781b      	ldrb	r3, [r3, #0]
    37ce:	44e3      	add	fp, ip
    37d0:	465d      	mov	r5, fp
    37d2:	2b00      	cmp	r3, #0
    37d4:	d0db      	beq.n	378e <skip_to_arg+0xe6>
    37d6:	464c      	mov	r4, r9
    37d8:	2c1f      	cmp	r4, #31
    37da:	d956      	bls.n	388a <skip_to_arg+0x1e2>
    37dc:	2420      	movs	r4, #32
    37de:	46a4      	mov	ip, r4
    37e0:	464c      	mov	r4, r9
    37e2:	2c7f      	cmp	r4, #127	@ 0x7f
    37e4:	d9bc      	bls.n	3760 <skip_to_arg+0xb8>
    37e6:	244c      	movs	r4, #76	@ 0x4c
    37e8:	4264      	negs	r4, r4
    37ea:	46a4      	mov	ip, r4
    37ec:	449c      	add	ip, r3
    37ee:	4664      	mov	r4, ip
    37f0:	2c2e      	cmp	r4, #46	@ 0x2e
    37f2:	d8cc      	bhi.n	378e <skip_to_arg+0xe6>
    37f4:	00a4      	lsls	r4, r4, #2
    37f6:	46a4      	mov	ip, r4
    37f8:	4667      	mov	r7, ip
    37fa:	4c50      	ldr	r4, [pc, #320]	@ (393c <skip_to_arg+0x294>)
    37fc:	59e4      	ldr	r4, [r4, r7]
    37fe:	46a7      	mov	pc, r4
    3800:	001f      	movs	r7, r3
    3802:	3f30      	subs	r7, #48	@ 0x30
    3804:	2f09      	cmp	r7, #9
    3806:	d96e      	bls.n	38e6 <skip_to_arg+0x23e>
    3808:	2400      	movs	r4, #0
    380a:	46a4      	mov	ip, r4
    380c:	2b24      	cmp	r3, #36	@ 0x24
    380e:	d034      	beq.n	387a <skip_to_arg+0x1d2>
    3810:	46a1      	mov	r9, r4
    3812:	46a0      	mov	r8, r4
    3814:	3404      	adds	r4, #4
    3816:	46a4      	mov	ip, r4
    3818:	001c      	movs	r4, r3
    381a:	4667      	mov	r7, ip
    381c:	43bc      	bics	r4, r7
    381e:	2c2a      	cmp	r4, #42	@ 0x2a
    3820:	d1b5      	bne.n	378e <skip_to_arg+0xe6>
    3822:	465b      	mov	r3, fp
    3824:	e7d0      	b.n	37c8 <skip_to_arg+0x120>
    3826:	46da      	mov	sl, fp
    3828:	23a0      	movs	r3, #160	@ 0xa0
    382a:	009b      	lsls	r3, r3, #2
    382c:	464f      	mov	r7, r9
    382e:	431f      	orrs	r7, r3
    3830:	b2bb      	uxth	r3, r7
    3832:	4699      	mov	r9, r3
    3834:	2301      	movs	r3, #1
    3836:	469c      	mov	ip, r3
    3838:	4653      	mov	r3, sl
    383a:	781b      	ldrb	r3, [r3, #0]
    383c:	44e3      	add	fp, ip
    383e:	465d      	mov	r5, fp
    3840:	2b00      	cmp	r3, #0
    3842:	d1d0      	bne.n	37e6 <skip_to_arg+0x13e>
    3844:	e7a3      	b.n	378e <skip_to_arg+0xe6>
    3846:	464c      	mov	r4, r9
    3848:	46da      	mov	sl, fp
    384a:	05e3      	lsls	r3, r4, #23
    384c:	d504      	bpl.n	3858 <skip_to_arg+0x1b0>
    384e:	2380      	movs	r3, #128	@ 0x80
    3850:	009b      	lsls	r3, r3, #2
    3852:	431c      	orrs	r4, r3
    3854:	b2a3      	uxth	r3, r4
    3856:	4699      	mov	r9, r3
    3858:	2380      	movs	r3, #128	@ 0x80
    385a:	005b      	lsls	r3, r3, #1
    385c:	e7e6      	b.n	382c <skip_to_arg+0x184>
    385e:	464c      	mov	r4, r9
    3860:	46da      	mov	sl, fp
    3862:	0623      	lsls	r3, r4, #24
    3864:	d504      	bpl.n	3870 <skip_to_arg+0x1c8>
    3866:	2380      	movs	r3, #128	@ 0x80
    3868:	009b      	lsls	r3, r3, #2
    386a:	431c      	orrs	r4, r3
    386c:	b2a3      	uxth	r3, r4
    386e:	4699      	mov	r9, r3
    3870:	2380      	movs	r3, #128	@ 0x80
    3872:	e7db      	b.n	382c <skip_to_arg+0x184>
    3874:	46aa      	mov	sl, r5
    3876:	46e1      	mov	r9, ip
    3878:	e7d6      	b.n	3828 <skip_to_arg+0x180>
    387a:	9b01      	ldr	r3, [sp, #4]
    387c:	2b00      	cmp	r3, #0
    387e:	d02b      	beq.n	38d8 <skip_to_arg+0x230>
    3880:	4546      	cmp	r6, r8
    3882:	d124      	bne.n	38ce <skip_to_arg+0x226>
    3884:	680c      	ldr	r4, [r1, #0]
    3886:	1d23      	adds	r3, r4, #4
    3888:	e795      	b.n	37b6 <skip_to_arg+0x10e>
    388a:	2420      	movs	r4, #32
    388c:	4264      	negs	r4, r4
    388e:	46a4      	mov	ip, r4
    3890:	449c      	add	ip, r3
    3892:	4664      	mov	r4, ip
    3894:	2c10      	cmp	r4, #16
    3896:	d900      	bls.n	389a <skip_to_arg+0x1f2>
    3898:	e74b      	b.n	3732 <skip_to_arg+0x8a>
    389a:	4f26      	ldr	r7, [pc, #152]	@ (3934 <skip_to_arg+0x28c>)
    389c:	40e7      	lsrs	r7, r4
    389e:	07ff      	lsls	r7, r7, #31
    38a0:	d500      	bpl.n	38a4 <skip_to_arg+0x1fc>
    38a2:	e72e      	b.n	3702 <skip_to_arg+0x5a>
    38a4:	001f      	movs	r7, r3
    38a6:	3f30      	subs	r7, #48	@ 0x30
    38a8:	2f09      	cmp	r7, #9
    38aa:	d91c      	bls.n	38e6 <skip_to_arg+0x23e>
    38ac:	2400      	movs	r4, #0
    38ae:	46a4      	mov	ip, r4
    38b0:	2b24      	cmp	r3, #36	@ 0x24
    38b2:	d0e2      	beq.n	387a <skip_to_arg+0x1d2>
    38b4:	2704      	movs	r7, #4
    38b6:	001c      	movs	r4, r3
    38b8:	43bc      	bics	r4, r7
    38ba:	2c2a      	cmp	r4, #42	@ 0x2a
    38bc:	d01d      	beq.n	38fa <skip_to_arg+0x252>
    38be:	2400      	movs	r4, #0
    38c0:	46a1      	mov	r9, r4
    38c2:	e764      	b.n	378e <skip_to_arg+0xe6>
    38c4:	2400      	movs	r4, #0
    38c6:	002b      	movs	r3, r5
    38c8:	46a0      	mov	r8, r4
    38ca:	46e1      	mov	r9, ip
    38cc:	e77c      	b.n	37c8 <skip_to_arg+0x120>
    38ce:	2400      	movs	r4, #0
    38d0:	002b      	movs	r3, r5
    38d2:	46e1      	mov	r9, ip
    38d4:	46a0      	mov	r8, r4
    38d6:	e777      	b.n	37c8 <skip_to_arg+0x120>
    38d8:	4644      	mov	r4, r8
    38da:	9401      	str	r4, [sp, #4]
    38dc:	2400      	movs	r4, #0
    38de:	002b      	movs	r3, r5
    38e0:	46a0      	mov	r8, r4
    38e2:	46e1      	mov	r9, ip
    38e4:	e770      	b.n	37c8 <skip_to_arg+0x120>
    38e6:	46dc      	mov	ip, fp
    38e8:	2700      	movs	r7, #0
    38ea:	e72a      	b.n	3742 <skip_to_arg+0x9a>
    38ec:	46aa      	mov	sl, r5
    38ee:	46e1      	mov	r9, ip
    38f0:	e7b2      	b.n	3858 <skip_to_arg+0x1b0>
    38f2:	46aa      	mov	sl, r5
    38f4:	46e1      	mov	r9, ip
    38f6:	2380      	movs	r3, #128	@ 0x80
    38f8:	e798      	b.n	382c <skip_to_arg+0x184>
    38fa:	2301      	movs	r3, #1
    38fc:	469c      	mov	ip, r3
    38fe:	2400      	movs	r4, #0
    3900:	782b      	ldrb	r3, [r5, #0]
    3902:	44e3      	add	fp, ip
    3904:	46a0      	mov	r8, r4
    3906:	465d      	mov	r5, fp
    3908:	42a3      	cmp	r3, r4
    390a:	d1be      	bne.n	388a <skip_to_arg+0x1e2>
    390c:	4699      	mov	r9, r3
    390e:	e73e      	b.n	378e <skip_to_arg+0xe6>
    3910:	2d61      	cmp	r5, #97	@ 0x61
    3912:	d100      	bne.n	3916 <skip_to_arg+0x26e>
    3914:	e74b      	b.n	37ae <skip_to_arg+0x106>
    3916:	2b63      	cmp	r3, #99	@ 0x63
    3918:	d0b5      	beq.n	3886 <skip_to_arg+0x1de>
    391a:	2b73      	cmp	r3, #115	@ 0x73
    391c:	d0b3      	beq.n	3886 <skip_to_arg+0x1de>
    391e:	2580      	movs	r5, #128	@ 0x80
    3920:	464f      	mov	r7, r9
    3922:	1d23      	adds	r3, r4, #4
    3924:	403d      	ands	r5, r7
    3926:	d100      	bne.n	392a <skip_to_arg+0x282>
    3928:	e745      	b.n	37b6 <skip_to_arg+0x10e>
    392a:	464d      	mov	r5, r9
    392c:	05af      	lsls	r7, r5, #22
    392e:	d400      	bmi.n	3932 <skip_to_arg+0x28a>
    3930:	e741      	b.n	37b6 <skip_to_arg+0x10e>
    3932:	e73c      	b.n	37ae <skip_to_arg+0x106>
    3934:	00012889 	.word	0x00012889
    3938:	00007a0c 	.word	0x00007a0c
    393c:	00007ac8 	.word	0x00007ac8

00003940 <__d_vfprintf>:
    3940:	b5f0      	push	{r4, r5, r6, r7, lr}
    3942:	46de      	mov	lr, fp
    3944:	464e      	mov	r6, r9
    3946:	4657      	mov	r7, sl
    3948:	4645      	mov	r5, r8
    394a:	b5e0      	push	{r5, r6, r7, lr}
    394c:	6843      	ldr	r3, [r0, #4]
    394e:	b097      	sub	sp, #92	@ 0x5c
    3950:	9107      	str	r1, [sp, #28]
    3952:	9208      	str	r2, [sp, #32]
    3954:	4699      	mov	r9, r3
    3956:	7883      	ldrb	r3, [r0, #2]
    3958:	4683      	mov	fp, r0
    395a:	000c      	movs	r4, r1
    395c:	079b      	lsls	r3, r3, #30
    395e:	d401      	bmi.n	3964 <__d_vfprintf+0x24>
    3960:	f000 ff73 	bl	484a <__kernel_ram_size+0x89a>
    3964:	7808      	ldrb	r0, [r1, #0]
    3966:	2500      	movs	r5, #0
    3968:	920f      	str	r2, [sp, #60]	@ 0x3c
    396a:	1c4b      	adds	r3, r1, #1
    396c:	2800      	cmp	r0, #0
    396e:	d10c      	bne.n	398a <__d_vfprintf+0x4a>
    3970:	e158      	b.n	3c24 <__d_vfprintf+0x2e4>
    3972:	4659      	mov	r1, fp
    3974:	001c      	movs	r4, r3
    3976:	3501      	adds	r5, #1
    3978:	47c8      	blx	r9
    397a:	2800      	cmp	r0, #0
    397c:	da00      	bge.n	3980 <__d_vfprintf+0x40>
    397e:	e149      	b.n	3c14 <__d_vfprintf+0x2d4>
    3980:	7820      	ldrb	r0, [r4, #0]
    3982:	1c63      	adds	r3, r4, #1
    3984:	2800      	cmp	r0, #0
    3986:	d100      	bne.n	398a <__d_vfprintf+0x4a>
    3988:	e14c      	b.n	3c24 <__d_vfprintf+0x2e4>
    398a:	2825      	cmp	r0, #37	@ 0x25
    398c:	d1f1      	bne.n	3972 <__d_vfprintf+0x32>
    398e:	7866      	ldrb	r6, [r4, #1]
    3990:	1ca3      	adds	r3, r4, #2
    3992:	2e25      	cmp	r6, #37	@ 0x25
    3994:	d0ed      	beq.n	3972 <__d_vfprintf+0x32>
    3996:	4698      	mov	r8, r3
    3998:	2300      	movs	r3, #0
    399a:	9305      	str	r3, [sp, #20]
    399c:	9303      	str	r3, [sp, #12]
    399e:	9304      	str	r3, [sp, #16]
    39a0:	4bd0      	ldr	r3, [pc, #832]	@ (3ce4 <__d_vfprintf+0x3a4>)
    39a2:	4644      	mov	r4, r8
    39a4:	2700      	movs	r7, #0
    39a6:	469a      	mov	sl, r3
    39a8:	46a8      	mov	r8, r5
    39aa:	0025      	movs	r5, r4
    39ac:	2f1f      	cmp	r7, #31
    39ae:	d977      	bls.n	3aa0 <__d_vfprintf+0x160>
    39b0:	2f7f      	cmp	r7, #127	@ 0x7f
    39b2:	d908      	bls.n	39c6 <__d_vfprintf+0x86>
    39b4:	0033      	movs	r3, r6
    39b6:	3b4c      	subs	r3, #76	@ 0x4c
    39b8:	2b2e      	cmp	r3, #46	@ 0x2e
    39ba:	d900      	bls.n	39be <__d_vfprintf+0x7e>
    39bc:	e13a      	b.n	3c34 <__d_vfprintf+0x2f4>
    39be:	4652      	mov	r2, sl
    39c0:	009b      	lsls	r3, r3, #2
    39c2:	58d3      	ldr	r3, [r2, r3]
    39c4:	469f      	mov	pc, r3
    39c6:	0033      	movs	r3, r6
    39c8:	3b30      	subs	r3, #48	@ 0x30
    39ca:	2b09      	cmp	r3, #9
    39cc:	d84a      	bhi.n	3a64 <__d_vfprintf+0x124>
    39ce:	2240      	movs	r2, #64	@ 0x40
    39d0:	0021      	movs	r1, r4
    39d2:	423a      	tst	r2, r7
    39d4:	d02f      	beq.n	3a36 <__d_vfprintf+0xf6>
    39d6:	9803      	ldr	r0, [sp, #12]
    39d8:	780e      	ldrb	r6, [r1, #0]
    39da:	4684      	mov	ip, r0
    39dc:	0082      	lsls	r2, r0, #2
    39de:	4462      	add	r2, ip
    39e0:	0052      	lsls	r2, r2, #1
    39e2:	18d3      	adds	r3, r2, r3
    39e4:	1c65      	adds	r5, r4, #1
    39e6:	002c      	movs	r4, r5
    39e8:	9303      	str	r3, [sp, #12]
    39ea:	2e00      	cmp	r6, #0
    39ec:	d1eb      	bne.n	39c6 <__d_vfprintf+0x86>
    39ee:	4645      	mov	r5, r8
    39f0:	2345      	movs	r3, #69	@ 0x45
    39f2:	425b      	negs	r3, r3
    39f4:	469a      	mov	sl, r3
    39f6:	3365      	adds	r3, #101	@ 0x65
    39f8:	4698      	mov	r8, r3
    39fa:	e124      	b.n	3c46 <__d_vfprintf+0x306>
    39fc:	9b05      	ldr	r3, [sp, #20]
    39fe:	2b00      	cmp	r3, #0
    3a00:	d16a      	bne.n	3ad8 <__d_vfprintf+0x198>
    3a02:	2040      	movs	r0, #64	@ 0x40
    3a04:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    3a06:	cb04      	ldmia	r3!, {r2}
    3a08:	930f      	str	r3, [sp, #60]	@ 0x3c
    3a0a:	4238      	tst	r0, r7
    3a0c:	d000      	beq.n	3a10 <__d_vfprintf+0xd0>
    3a0e:	e20e      	b.n	3e2e <__d_vfprintf+0x4ee>
    3a10:	2a00      	cmp	r2, #0
    3a12:	da01      	bge.n	3a18 <__d_vfprintf+0xd8>
    3a14:	f000 fdaf 	bl	4576 <__kernel_ram_size+0x5c6>
    3a18:	2320      	movs	r3, #32
    3a1a:	782e      	ldrb	r6, [r5, #0]
    3a1c:	431f      	orrs	r7, r3
    3a1e:	3401      	adds	r4, #1
    3a20:	2e00      	cmp	r6, #0
    3a22:	d101      	bne.n	3a28 <__d_vfprintf+0xe8>
    3a24:	f000 ffd8 	bl	49d8 <__kernel_ram_size+0xa28>
    3a28:	0033      	movs	r3, r6
    3a2a:	3b30      	subs	r3, #48	@ 0x30
    3a2c:	2b09      	cmp	r3, #9
    3a2e:	d901      	bls.n	3a34 <__d_vfprintf+0xf4>
    3a30:	f000 fc7d 	bl	432e <__kernel_ram_size+0x37e>
    3a34:	9204      	str	r2, [sp, #16]
    3a36:	0020      	movs	r0, r4
    3a38:	2120      	movs	r1, #32
    3a3a:	9d04      	ldr	r5, [sp, #16]
    3a3c:	00aa      	lsls	r2, r5, #2
    3a3e:	1952      	adds	r2, r2, r5
    3a40:	0052      	lsls	r2, r2, #1
    3a42:	7806      	ldrb	r6, [r0, #0]
    3a44:	18d5      	adds	r5, r2, r3
    3a46:	430f      	orrs	r7, r1
    3a48:	1c62      	adds	r2, r4, #1
    3a4a:	0014      	movs	r4, r2
    3a4c:	b2bf      	uxth	r7, r7
    3a4e:	2e00      	cmp	r6, #0
    3a50:	d101      	bne.n	3a56 <__d_vfprintf+0x116>
    3a52:	f000 fe46 	bl	46e2 <__kernel_ram_size+0x732>
    3a56:	0033      	movs	r3, r6
    3a58:	3b30      	subs	r3, #48	@ 0x30
    3a5a:	2b09      	cmp	r3, #9
    3a5c:	d800      	bhi.n	3a60 <__d_vfprintf+0x120>
    3a5e:	e13e      	b.n	3cde <__d_vfprintf+0x39e>
    3a60:	9504      	str	r5, [sp, #16]
    3a62:	0015      	movs	r5, r2
    3a64:	2e2a      	cmp	r6, #42	@ 0x2a
    3a66:	d0c9      	beq.n	39fc <__d_vfprintf+0xbc>
    3a68:	2e2e      	cmp	r6, #46	@ 0x2e
    3a6a:	d100      	bne.n	3a6e <__d_vfprintf+0x12e>
    3a6c:	e162      	b.n	3d34 <__d_vfprintf+0x3f4>
    3a6e:	2e24      	cmp	r6, #36	@ 0x24
    3a70:	d01f      	beq.n	3ab2 <__d_vfprintf+0x172>
    3a72:	0033      	movs	r3, r6
    3a74:	3b4c      	subs	r3, #76	@ 0x4c
    3a76:	2b2e      	cmp	r3, #46	@ 0x2e
    3a78:	d900      	bls.n	3a7c <__d_vfprintf+0x13c>
    3a7a:	e0db      	b.n	3c34 <__d_vfprintf+0x2f4>
    3a7c:	4a9a      	ldr	r2, [pc, #616]	@ (3ce8 <__d_vfprintf+0x3a8>)
    3a7e:	009b      	lsls	r3, r3, #2
    3a80:	58d3      	ldr	r3, [r2, r3]
    3a82:	469f      	mov	pc, r3
    3a84:	782e      	ldrb	r6, [r5, #0]
    3a86:	2700      	movs	r7, #0
    3a88:	3401      	adds	r4, #1
    3a8a:	2e00      	cmp	r6, #0
    3a8c:	d101      	bne.n	3a92 <__d_vfprintf+0x152>
    3a8e:	f000 ffba 	bl	4a06 <__kernel_ram_size+0xa56>
    3a92:	2300      	movs	r3, #0
    3a94:	2200      	movs	r2, #0
    3a96:	0025      	movs	r5, r4
    3a98:	9303      	str	r3, [sp, #12]
    3a9a:	9b04      	ldr	r3, [sp, #16]
    3a9c:	9204      	str	r2, [sp, #16]
    3a9e:	9305      	str	r3, [sp, #20]
    3aa0:	2104      	movs	r1, #4
    3aa2:	4a92      	ldr	r2, [pc, #584]	@ (3cec <__d_vfprintf+0x3ac>)
    3aa4:	0033      	movs	r3, r6
    3aa6:	3b20      	subs	r3, #32
    3aa8:	2b10      	cmp	r3, #16
    3aaa:	d88c      	bhi.n	39c6 <__d_vfprintf+0x86>
    3aac:	009b      	lsls	r3, r3, #2
    3aae:	58d3      	ldr	r3, [r2, r3]
    3ab0:	469f      	mov	pc, r3
    3ab2:	9b05      	ldr	r3, [sp, #20]
    3ab4:	2b00      	cmp	r3, #0
    3ab6:	d0e5      	beq.n	3a84 <__d_vfprintf+0x144>
    3ab8:	9b08      	ldr	r3, [sp, #32]
    3aba:	930f      	str	r3, [sp, #60]	@ 0x3c
    3abc:	067b      	lsls	r3, r7, #25
    3abe:	d501      	bpl.n	3ac4 <__d_vfprintf+0x184>
    3ac0:	f000 fc49 	bl	4356 <__kernel_ram_size+0x3a6>
    3ac4:	9a04      	ldr	r2, [sp, #16]
    3ac6:	9807      	ldr	r0, [sp, #28]
    3ac8:	a90f      	add	r1, sp, #60	@ 0x3c
    3aca:	f7ff fded 	bl	36a8 <skip_to_arg>
    3ace:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    3ad0:	1d1a      	adds	r2, r3, #4
    3ad2:	681b      	ldr	r3, [r3, #0]
    3ad4:	920f      	str	r2, [sp, #60]	@ 0x3c
    3ad6:	9304      	str	r3, [sp, #16]
    3ad8:	782e      	ldrb	r6, [r5, #0]
    3ada:	3401      	adds	r4, #1
    3adc:	2e00      	cmp	r6, #0
    3ade:	d000      	beq.n	3ae2 <__d_vfprintf+0x1a2>
    3ae0:	e763      	b.n	39aa <__d_vfprintf+0x6a>
    3ae2:	e784      	b.n	39ee <__d_vfprintf+0xae>
    3ae4:	2302      	movs	r3, #2
    3ae6:	431f      	orrs	r7, r3
    3ae8:	782e      	ldrb	r6, [r5, #0]
    3aea:	430f      	orrs	r7, r1
    3aec:	b2bf      	uxth	r7, r7
    3aee:	3401      	adds	r4, #1
    3af0:	2e00      	cmp	r6, #0
    3af2:	d100      	bne.n	3af6 <__d_vfprintf+0x1b6>
    3af4:	e77b      	b.n	39ee <__d_vfprintf+0xae>
    3af6:	0025      	movs	r5, r4
    3af8:	e7d4      	b.n	3aa4 <__d_vfprintf+0x164>
    3afa:	2310      	movs	r3, #16
    3afc:	782e      	ldrb	r6, [r5, #0]
    3afe:	431f      	orrs	r7, r3
    3b00:	3401      	adds	r4, #1
    3b02:	2e00      	cmp	r6, #0
    3b04:	d1f7      	bne.n	3af6 <__d_vfprintf+0x1b6>
    3b06:	3b55      	subs	r3, #85	@ 0x55
    3b08:	469a      	mov	sl, r3
    3b0a:	3365      	adds	r3, #101	@ 0x65
    3b0c:	4645      	mov	r5, r8
    3b0e:	4698      	mov	r8, r3
    3b10:	e099      	b.n	3c46 <__d_vfprintf+0x306>
    3b12:	2301      	movs	r3, #1
    3b14:	782e      	ldrb	r6, [r5, #0]
    3b16:	431f      	orrs	r7, r3
    3b18:	3401      	adds	r4, #1
    3b1a:	2e00      	cmp	r6, #0
    3b1c:	d1eb      	bne.n	3af6 <__d_vfprintf+0x1b6>
    3b1e:	3b46      	subs	r3, #70	@ 0x46
    3b20:	469a      	mov	sl, r3
    3b22:	3365      	adds	r3, #101	@ 0x65
    3b24:	4645      	mov	r5, r8
    3b26:	4698      	mov	r8, r3
    3b28:	e08d      	b.n	3c46 <__d_vfprintf+0x306>
    3b2a:	2308      	movs	r3, #8
    3b2c:	782e      	ldrb	r6, [r5, #0]
    3b2e:	431f      	orrs	r7, r3
    3b30:	3401      	adds	r4, #1
    3b32:	2e00      	cmp	r6, #0
    3b34:	d1df      	bne.n	3af6 <__d_vfprintf+0x1b6>
    3b36:	3b4d      	subs	r3, #77	@ 0x4d
    3b38:	469a      	mov	sl, r3
    3b3a:	3365      	adds	r3, #101	@ 0x65
    3b3c:	4645      	mov	r5, r8
    3b3e:	4698      	mov	r8, r3
    3b40:	e081      	b.n	3c46 <__d_vfprintf+0x306>
    3b42:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    3b44:	063a      	lsls	r2, r7, #24
    3b46:	d401      	bmi.n	3b4c <__d_vfprintf+0x20c>
    3b48:	f000 fe03 	bl	4752 <__kernel_ram_size+0x7a2>
    3b4c:	05ba      	lsls	r2, r7, #22
    3b4e:	d401      	bmi.n	3b54 <__d_vfprintf+0x214>
    3b50:	f000 fe7f 	bl	4852 <__kernel_ram_size+0x8a2>
    3b54:	2207      	movs	r2, #7
    3b56:	3307      	adds	r3, #7
    3b58:	4393      	bics	r3, r2
    3b5a:	001a      	movs	r2, r3
    3b5c:	3208      	adds	r2, #8
    3b5e:	920f      	str	r2, [sp, #60]	@ 0x3c
    3b60:	681a      	ldr	r2, [r3, #0]
    3b62:	685b      	ldr	r3, [r3, #4]
    3b64:	920c      	str	r2, [sp, #48]	@ 0x30
    3b66:	930d      	str	r3, [sp, #52]	@ 0x34
    3b68:	2310      	movs	r3, #16
    3b6a:	003a      	movs	r2, r7
    3b6c:	439a      	bics	r2, r3
    3b6e:	4692      	mov	sl, r2
    3b70:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
    3b72:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
    3b74:	2b00      	cmp	r3, #0
    3b76:	da01      	bge.n	3b7c <__d_vfprintf+0x23c>
    3b78:	f000 fe04 	bl	4784 <__kernel_ram_size+0x7d4>
    3b7c:	0011      	movs	r1, r2
    3b7e:	4319      	orrs	r1, r3
    3b80:	d001      	beq.n	3b86 <__d_vfprintf+0x246>
    3b82:	f000 ff2f 	bl	49e4 <__kernel_ram_size+0xa34>
    3b86:	067b      	lsls	r3, r7, #25
    3b88:	d401      	bmi.n	3b8e <__d_vfprintf+0x24e>
    3b8a:	f000 fe38 	bl	47fe <__kernel_ram_size+0x84e>
    3b8e:	9b03      	ldr	r3, [sp, #12]
    3b90:	2b00      	cmp	r3, #0
    3b92:	d001      	beq.n	3b98 <__d_vfprintf+0x258>
    3b94:	f000 fe9d 	bl	48d2 <__kernel_ram_size+0x922>
    3b98:	2311      	movs	r3, #17
    3b9a:	439f      	bics	r7, r3
    3b9c:	2300      	movs	r3, #0
    3b9e:	46ba      	mov	sl, r7
    3ba0:	4698      	mov	r8, r3
    3ba2:	2200      	movs	r2, #0
    3ba4:	4651      	mov	r1, sl
    3ba6:	2308      	movs	r3, #8
    3ba8:	4650      	mov	r0, sl
    3baa:	400b      	ands	r3, r1
    3bac:	4950      	ldr	r1, [pc, #320]	@ (3cf0 <__d_vfprintf+0x3b0>)
    3bae:	4208      	tst	r0, r1
    3bb0:	d101      	bne.n	3bb6 <__d_vfprintf+0x276>
    3bb2:	f000 ff77 	bl	4aa4 <__kernel_ram_size+0xaf4>
    3bb6:	3201      	adds	r2, #1
    3bb8:	2b00      	cmp	r3, #0
    3bba:	d101      	bne.n	3bc0 <__d_vfprintf+0x280>
    3bbc:	f000 fe0f 	bl	47de <__kernel_ram_size+0x82e>
    3bc0:	9b04      	ldr	r3, [sp, #16]
    3bc2:	1a9b      	subs	r3, r3, r2
    3bc4:	9304      	str	r3, [sp, #16]
    3bc6:	4653      	mov	r3, sl
    3bc8:	200b      	movs	r0, #11
    3bca:	079b      	lsls	r3, r3, #30
    3bcc:	17db      	asrs	r3, r3, #31
    3bce:	4018      	ands	r0, r3
    3bd0:	4653      	mov	r3, sl
    3bd2:	3020      	adds	r0, #32
    3bd4:	055b      	lsls	r3, r3, #21
    3bd6:	d500      	bpl.n	3bda <__d_vfprintf+0x29a>
    3bd8:	202d      	movs	r0, #45	@ 0x2d
    3bda:	4659      	mov	r1, fp
    3bdc:	3501      	adds	r5, #1
    3bde:	47c8      	blx	r9
    3be0:	2800      	cmp	r0, #0
    3be2:	db17      	blt.n	3c14 <__d_vfprintf+0x2d4>
    3be4:	9b03      	ldr	r3, [sp, #12]
    3be6:	4543      	cmp	r3, r8
    3be8:	dc01      	bgt.n	3bee <__d_vfprintf+0x2ae>
    3bea:	f000 ff19 	bl	4a20 <__kernel_ram_size+0xa70>
    3bee:	9b03      	ldr	r3, [sp, #12]
    3bf0:	464f      	mov	r7, r9
    3bf2:	195e      	adds	r6, r3, r5
    3bf4:	4643      	mov	r3, r8
    3bf6:	46a1      	mov	r9, r4
    3bf8:	1af6      	subs	r6, r6, r3
    3bfa:	465c      	mov	r4, fp
    3bfc:	e003      	b.n	3c06 <__d_vfprintf+0x2c6>
    3bfe:	42b5      	cmp	r5, r6
    3c00:	d101      	bne.n	3c06 <__d_vfprintf+0x2c6>
    3c02:	f000 fc54 	bl	44ae <__kernel_ram_size+0x4fe>
    3c06:	0021      	movs	r1, r4
    3c08:	2030      	movs	r0, #48	@ 0x30
    3c0a:	3501      	adds	r5, #1
    3c0c:	47b8      	blx	r7
    3c0e:	2800      	cmp	r0, #0
    3c10:	daf5      	bge.n	3bfe <__d_vfprintf+0x2be>
    3c12:	46a3      	mov	fp, r4
    3c14:	465b      	mov	r3, fp
    3c16:	2204      	movs	r2, #4
    3c18:	789b      	ldrb	r3, [r3, #2]
    3c1a:	2501      	movs	r5, #1
    3c1c:	4313      	orrs	r3, r2
    3c1e:	465a      	mov	r2, fp
    3c20:	426d      	negs	r5, r5
    3c22:	7093      	strb	r3, [r2, #2]
    3c24:	0028      	movs	r0, r5
    3c26:	b017      	add	sp, #92	@ 0x5c
    3c28:	bcf0      	pop	{r4, r5, r6, r7}
    3c2a:	46bb      	mov	fp, r7
    3c2c:	46b2      	mov	sl, r6
    3c2e:	46a9      	mov	r9, r5
    3c30:	46a0      	mov	r8, r4
    3c32:	bdf0      	pop	{r4, r5, r6, r7, pc}
    3c34:	2320      	movs	r3, #32
    3c36:	4333      	orrs	r3, r6
    3c38:	002c      	movs	r4, r5
    3c3a:	4645      	mov	r5, r8
    3c3c:	4698      	mov	r8, r3
    3c3e:	2365      	movs	r3, #101	@ 0x65
    3c40:	425b      	negs	r3, r3
    3c42:	4443      	add	r3, r8
    3c44:	469a      	mov	sl, r3
    3c46:	9b05      	ldr	r3, [sp, #20]
    3c48:	2b00      	cmp	r3, #0
    3c4a:	d006      	beq.n	3c5a <__d_vfprintf+0x31a>
    3c4c:	001a      	movs	r2, r3
    3c4e:	9b08      	ldr	r3, [sp, #32]
    3c50:	9807      	ldr	r0, [sp, #28]
    3c52:	a90f      	add	r1, sp, #60	@ 0x3c
    3c54:	930f      	str	r3, [sp, #60]	@ 0x3c
    3c56:	f7ff fd27 	bl	36a8 <skip_to_arg>
    3c5a:	9b03      	ldr	r3, [sp, #12]
    3c5c:	2b00      	cmp	r3, #0
    3c5e:	db4b      	blt.n	3cf8 <__d_vfprintf+0x3b8>
    3c60:	4653      	mov	r3, sl
    3c62:	2b02      	cmp	r3, #2
    3c64:	d96a      	bls.n	3d3c <__d_vfprintf+0x3fc>
    3c66:	4643      	mov	r3, r8
    3c68:	2b61      	cmp	r3, #97	@ 0x61
    3c6a:	d100      	bne.n	3c6e <__d_vfprintf+0x32e>
    3c6c:	e0f1      	b.n	3e52 <__d_vfprintf+0x512>
    3c6e:	0033      	movs	r3, r6
    3c70:	3b63      	subs	r3, #99	@ 0x63
    3c72:	2b12      	cmp	r3, #18
    3c74:	d900      	bls.n	3c78 <__d_vfprintf+0x338>
    3c76:	e33d      	b.n	42f4 <__kernel_ram_size+0x344>
    3c78:	4a1e      	ldr	r2, [pc, #120]	@ (3cf4 <__d_vfprintf+0x3b4>)
    3c7a:	009b      	lsls	r3, r3, #2
    3c7c:	58d3      	ldr	r3, [r2, r3]
    3c7e:	469f      	mov	pc, r3
    3c80:	0022      	movs	r2, r4
    3c82:	23a0      	movs	r3, #160	@ 0xa0
    3c84:	7816      	ldrb	r6, [r2, #0]
    3c86:	009b      	lsls	r3, r3, #2
    3c88:	1c65      	adds	r5, r4, #1
    3c8a:	002c      	movs	r4, r5
    3c8c:	431f      	orrs	r7, r3
    3c8e:	2e00      	cmp	r6, #0
    3c90:	d000      	beq.n	3c94 <__d_vfprintf+0x354>
    3c92:	e68f      	b.n	39b4 <__d_vfprintf+0x74>
    3c94:	e6ab      	b.n	39ee <__d_vfprintf+0xae>
    3c96:	0023      	movs	r3, r4
    3c98:	05fa      	lsls	r2, r7, #23
    3c9a:	d502      	bpl.n	3ca2 <__d_vfprintf+0x362>
    3c9c:	2280      	movs	r2, #128	@ 0x80
    3c9e:	0092      	lsls	r2, r2, #2
    3ca0:	4317      	orrs	r7, r2
    3ca2:	2280      	movs	r2, #128	@ 0x80
    3ca4:	781e      	ldrb	r6, [r3, #0]
    3ca6:	0052      	lsls	r2, r2, #1
    3ca8:	1c65      	adds	r5, r4, #1
    3caa:	002c      	movs	r4, r5
    3cac:	4317      	orrs	r7, r2
    3cae:	2e00      	cmp	r6, #0
    3cb0:	d000      	beq.n	3cb4 <__d_vfprintf+0x374>
    3cb2:	e67f      	b.n	39b4 <__d_vfprintf+0x74>
    3cb4:	e69b      	b.n	39ee <__d_vfprintf+0xae>
    3cb6:	0022      	movs	r2, r4
    3cb8:	063b      	lsls	r3, r7, #24
    3cba:	d502      	bpl.n	3cc2 <__d_vfprintf+0x382>
    3cbc:	2380      	movs	r3, #128	@ 0x80
    3cbe:	009b      	lsls	r3, r3, #2
    3cc0:	431f      	orrs	r7, r3
    3cc2:	2380      	movs	r3, #128	@ 0x80
    3cc4:	7816      	ldrb	r6, [r2, #0]
    3cc6:	1c65      	adds	r5, r4, #1
    3cc8:	002c      	movs	r4, r5
    3cca:	431f      	orrs	r7, r3
    3ccc:	2e00      	cmp	r6, #0
    3cce:	d000      	beq.n	3cd2 <__d_vfprintf+0x392>
    3cd0:	e670      	b.n	39b4 <__d_vfprintf+0x74>
    3cd2:	3bc5      	subs	r3, #197	@ 0xc5
    3cd4:	469a      	mov	sl, r3
    3cd6:	3365      	adds	r3, #101	@ 0x65
    3cd8:	4645      	mov	r5, r8
    3cda:	4698      	mov	r8, r3
    3cdc:	e7b3      	b.n	3c46 <__d_vfprintf+0x306>
    3cde:	0020      	movs	r0, r4
    3ce0:	e6ac      	b.n	3a3c <__d_vfprintf+0xfc>
    3ce2:	46c0      	nop			@ (mov r8, r8)
    3ce4:	00007b84 	.word	0x00007b84
    3ce8:	00007c40 	.word	0x00007c40
    3cec:	00007cfc 	.word	0x00007cfc
    3cf0:	00000406 	.word	0x00000406
    3cf4:	00007d40 	.word	0x00007d40
    3cf8:	2340      	movs	r3, #64	@ 0x40
    3cfa:	439f      	bics	r7, r3
    3cfc:	4653      	mov	r3, sl
    3cfe:	2b02      	cmp	r3, #2
    3d00:	d872      	bhi.n	3de8 <__d_vfprintf+0x4a8>
    3d02:	2320      	movs	r3, #32
    3d04:	2207      	movs	r2, #7
    3d06:	43b3      	bics	r3, r6
    3d08:	469a      	mov	sl, r3
    3d0a:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    3d0c:	3307      	adds	r3, #7
    3d0e:	4393      	bics	r3, r2
    3d10:	001a      	movs	r2, r3
    3d12:	6818      	ldr	r0, [r3, #0]
    3d14:	6859      	ldr	r1, [r3, #4]
    3d16:	3208      	adds	r2, #8
    3d18:	920f      	str	r2, [sp, #60]	@ 0x3c
    3d1a:	4643      	mov	r3, r8
    3d1c:	2b65      	cmp	r3, #101	@ 0x65
    3d1e:	d100      	bne.n	3d22 <__d_vfprintf+0x3e2>
    3d20:	e295      	b.n	424e <__kernel_ram_size+0x29e>
    3d22:	2b66      	cmp	r3, #102	@ 0x66
    3d24:	d101      	bne.n	3d2a <__d_vfprintf+0x3ea>
    3d26:	f000 fc92 	bl	464e <__kernel_ram_size+0x69e>
    3d2a:	2206      	movs	r2, #6
    3d2c:	2306      	movs	r3, #6
    3d2e:	9705      	str	r7, [sp, #20]
    3d30:	9203      	str	r2, [sp, #12]
    3d32:	e021      	b.n	3d78 <__d_vfprintf+0x438>
    3d34:	067b      	lsls	r3, r7, #25
    3d36:	d563      	bpl.n	3e00 <__d_vfprintf+0x4c0>
    3d38:	4645      	mov	r5, r8
    3d3a:	e773      	b.n	3c24 <__d_vfprintf+0x2e4>
    3d3c:	2320      	movs	r3, #32
    3d3e:	2207      	movs	r2, #7
    3d40:	43b3      	bics	r3, r6
    3d42:	469a      	mov	sl, r3
    3d44:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    3d46:	3307      	adds	r3, #7
    3d48:	4393      	bics	r3, r2
    3d4a:	001a      	movs	r2, r3
    3d4c:	6818      	ldr	r0, [r3, #0]
    3d4e:	6859      	ldr	r1, [r3, #4]
    3d50:	3208      	adds	r2, #8
    3d52:	920f      	str	r2, [sp, #60]	@ 0x3c
    3d54:	067b      	lsls	r3, r7, #25
    3d56:	d5e0      	bpl.n	3d1a <__d_vfprintf+0x3da>
    3d58:	4643      	mov	r3, r8
    3d5a:	2b65      	cmp	r3, #101	@ 0x65
    3d5c:	d100      	bne.n	3d60 <__d_vfprintf+0x420>
    3d5e:	e269      	b.n	4234 <__kernel_ram_size+0x284>
    3d60:	2b66      	cmp	r3, #102	@ 0x66
    3d62:	d101      	bne.n	3d68 <__d_vfprintf+0x428>
    3d64:	f000 fc67 	bl	4636 <__kernel_ram_size+0x686>
    3d68:	466b      	mov	r3, sp
    3d6a:	7b1a      	ldrb	r2, [r3, #12]
    3d6c:	2a00      	cmp	r2, #0
    3d6e:	d001      	beq.n	3d74 <__d_vfprintf+0x434>
    3d70:	f000 feae 	bl	4ad0 <__kernel_ram_size+0xb20>
    3d74:	2301      	movs	r3, #1
    3d76:	9705      	str	r7, [sp, #20]
    3d78:	2765      	movs	r7, #101	@ 0x65
    3d7a:	2200      	movs	r2, #0
    3d7c:	2600      	movs	r6, #0
    3d7e:	970b      	str	r7, [sp, #44]	@ 0x2c
    3d80:	af10      	add	r7, sp, #64	@ 0x40
    3d82:	9601      	str	r6, [sp, #4]
    3d84:	9200      	str	r2, [sp, #0]
    3d86:	003a      	movs	r2, r7
    3d88:	9706      	str	r7, [sp, #24]
    3d8a:	f000 febb 	bl	4b04 <__dtoa_engine>
    3d8e:	b2c3      	uxtb	r3, r0
    3d90:	9309      	str	r3, [sp, #36]	@ 0x24
    3d92:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    3d94:	2602      	movs	r6, #2
    3d96:	4698      	mov	r8, r3
    3d98:	2302      	movs	r3, #2
    3d9a:	930a      	str	r3, [sp, #40]	@ 0x28
    3d9c:	4643      	mov	r3, r8
    3d9e:	3309      	adds	r3, #9
    3da0:	2b12      	cmp	r3, #18
    3da2:	d90c      	bls.n	3dbe <__d_vfprintf+0x47e>
    3da4:	335a      	adds	r3, #90	@ 0x5a
    3da6:	2bc6      	cmp	r3, #198	@ 0xc6
    3da8:	d800      	bhi.n	3dac <__d_vfprintf+0x46c>
    3daa:	e0e6      	b.n	3f7a <__d_vfprintf+0x63a>
    3dac:	4bc8      	ldr	r3, [pc, #800]	@ (40d0 <__kernel_ram_size+0x120>)
    3dae:	4ac9      	ldr	r2, [pc, #804]	@ (40d4 <__kernel_ram_size+0x124>)
    3db0:	4443      	add	r3, r8
    3db2:	4293      	cmp	r3, r2
    3db4:	d900      	bls.n	3db8 <__d_vfprintf+0x478>
    3db6:	e1e2      	b.n	417e <__kernel_ram_size+0x1ce>
    3db8:	2303      	movs	r3, #3
    3dba:	2603      	movs	r6, #3
    3dbc:	930a      	str	r3, [sp, #40]	@ 0x28
    3dbe:	2101      	movs	r1, #1
    3dc0:	270c      	movs	r7, #12
    3dc2:	0008      	movs	r0, r1
    3dc4:	9b06      	ldr	r3, [sp, #24]
    3dc6:	791b      	ldrb	r3, [r3, #4]
    3dc8:	4018      	ands	r0, r3
    3dca:	401f      	ands	r7, r3
    3dcc:	4219      	tst	r1, r3
    3dce:	d16a      	bne.n	3ea6 <__d_vfprintf+0x566>
    3dd0:	9a05      	ldr	r2, [sp, #20]
    3dd2:	0791      	lsls	r1, r2, #30
    3dd4:	d500      	bpl.n	3dd8 <__d_vfprintf+0x498>
    3dd6:	e08c      	b.n	3ef2 <__d_vfprintf+0x5b2>
    3dd8:	0751      	lsls	r1, r2, #29
    3dda:	d400      	bmi.n	3dde <__d_vfprintf+0x49e>
    3ddc:	e1d8      	b.n	4190 <__kernel_ram_size+0x1e0>
    3dde:	2f00      	cmp	r7, #0
    3de0:	d100      	bne.n	3de4 <__d_vfprintf+0x4a4>
    3de2:	e2b4      	b.n	434e <__kernel_ram_size+0x39e>
    3de4:	2020      	movs	r0, #32
    3de6:	e08a      	b.n	3efe <__d_vfprintf+0x5be>
    3de8:	4643      	mov	r3, r8
    3dea:	2b61      	cmp	r3, #97	@ 0x61
    3dec:	d100      	bne.n	3df0 <__d_vfprintf+0x4b0>
    3dee:	e177      	b.n	40e0 <__kernel_ram_size+0x130>
    3df0:	2300      	movs	r3, #0
    3df2:	9303      	str	r3, [sp, #12]
    3df4:	0033      	movs	r3, r6
    3df6:	3b63      	subs	r3, #99	@ 0x63
    3df8:	2b12      	cmp	r3, #18
    3dfa:	d800      	bhi.n	3dfe <__d_vfprintf+0x4be>
    3dfc:	e73c      	b.n	3c78 <__d_vfprintf+0x338>
    3dfe:	e279      	b.n	42f4 <__kernel_ram_size+0x344>
    3e00:	2340      	movs	r3, #64	@ 0x40
    3e02:	782e      	ldrb	r6, [r5, #0]
    3e04:	431f      	orrs	r7, r3
    3e06:	3401      	adds	r4, #1
    3e08:	0021      	movs	r1, r4
    3e0a:	b2bf      	uxth	r7, r7
    3e0c:	2e00      	cmp	r6, #0
    3e0e:	d100      	bne.n	3e12 <__d_vfprintf+0x4d2>
    3e10:	e5ed      	b.n	39ee <__d_vfprintf+0xae>
    3e12:	0033      	movs	r3, r6
    3e14:	3b30      	subs	r3, #48	@ 0x30
    3e16:	2b09      	cmp	r3, #9
    3e18:	d800      	bhi.n	3e1c <__d_vfprintf+0x4dc>
    3e1a:	e5dc      	b.n	39d6 <__d_vfprintf+0x96>
    3e1c:	0025      	movs	r5, r4
    3e1e:	e621      	b.n	3a64 <__d_vfprintf+0x124>
    3e20:	782e      	ldrb	r6, [r5, #0]
    3e22:	3401      	adds	r4, #1
    3e24:	2e00      	cmp	r6, #0
    3e26:	d100      	bne.n	3e2a <__d_vfprintf+0x4ea>
    3e28:	e5e1      	b.n	39ee <__d_vfprintf+0xae>
    3e2a:	0025      	movs	r5, r4
    3e2c:	e5c0      	b.n	39b0 <__d_vfprintf+0x70>
    3e2e:	782e      	ldrb	r6, [r5, #0]
    3e30:	3401      	adds	r4, #1
    3e32:	0021      	movs	r1, r4
    3e34:	2e00      	cmp	r6, #0
    3e36:	d101      	bne.n	3e3c <__d_vfprintf+0x4fc>
    3e38:	f000 fdd1 	bl	49de <__kernel_ram_size+0xa2e>
    3e3c:	0033      	movs	r3, r6
    3e3e:	3b30      	subs	r3, #48	@ 0x30
    3e40:	2b09      	cmp	r3, #9
    3e42:	d800      	bhi.n	3e46 <__d_vfprintf+0x506>
    3e44:	e207      	b.n	4256 <__kernel_ram_size+0x2a6>
    3e46:	0025      	movs	r5, r4
    3e48:	9203      	str	r2, [sp, #12]
    3e4a:	2e2a      	cmp	r6, #42	@ 0x2a
    3e4c:	d000      	beq.n	3e50 <__d_vfprintf+0x510>
    3e4e:	e60b      	b.n	3a68 <__d_vfprintf+0x128>
    3e50:	e5d8      	b.n	3a04 <__d_vfprintf+0xc4>
    3e52:	2207      	movs	r2, #7
    3e54:	3b41      	subs	r3, #65	@ 0x41
    3e56:	43b3      	bics	r3, r6
    3e58:	469a      	mov	sl, r3
    3e5a:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    3e5c:	3307      	adds	r3, #7
    3e5e:	4393      	bics	r3, r2
    3e60:	001a      	movs	r2, r3
    3e62:	6818      	ldr	r0, [r3, #0]
    3e64:	6859      	ldr	r1, [r3, #4]
    3e66:	23c0      	movs	r3, #192	@ 0xc0
    3e68:	015b      	lsls	r3, r3, #5
    3e6a:	3208      	adds	r2, #8
    3e6c:	433b      	orrs	r3, r7
    3e6e:	920f      	str	r2, [sp, #60]	@ 0x3c
    3e70:	9305      	str	r3, [sp, #20]
    3e72:	067f      	lsls	r7, r7, #25
    3e74:	d400      	bmi.n	3e78 <__d_vfprintf+0x538>
    3e76:	e143      	b.n	4100 <__kernel_ram_size+0x150>
    3e78:	4653      	mov	r3, sl
    3e7a:	9e03      	ldr	r6, [sp, #12]
    3e7c:	aa10      	add	r2, sp, #64	@ 0x40
    3e7e:	9300      	str	r3, [sp, #0]
    3e80:	0033      	movs	r3, r6
    3e82:	9206      	str	r2, [sp, #24]
    3e84:	f001 fe6e 	bl	5b64 <__dtox_engine>
    3e88:	3001      	adds	r0, #1
    3e8a:	b2c2      	uxtb	r2, r0
    3e8c:	9209      	str	r2, [sp, #36]	@ 0x24
    3e8e:	42b2      	cmp	r2, r6
    3e90:	db00      	blt.n	3e94 <__d_vfprintf+0x554>
    3e92:	e141      	b.n	4118 <__kernel_ram_size+0x168>
    3e94:	9b06      	ldr	r3, [sp, #24]
    3e96:	2601      	movs	r6, #1
    3e98:	681b      	ldr	r3, [r3, #0]
    3e9a:	4698      	mov	r8, r3
    3e9c:	2301      	movs	r3, #1
    3e9e:	930a      	str	r3, [sp, #40]	@ 0x28
    3ea0:	336f      	adds	r3, #111	@ 0x6f
    3ea2:	930b      	str	r3, [sp, #44]	@ 0x2c
    3ea4:	e77a      	b.n	3d9c <__d_vfprintf+0x45c>
    3ea6:	2f00      	cmp	r7, #0
    3ea8:	d128      	bne.n	3efc <__d_vfprintf+0x5bc>
    3eaa:	372d      	adds	r7, #45	@ 0x2d
    3eac:	23c0      	movs	r3, #192	@ 0xc0
    3eae:	9a05      	ldr	r2, [sp, #20]
    3eb0:	019b      	lsls	r3, r3, #6
    3eb2:	421a      	tst	r2, r3
    3eb4:	d100      	bne.n	3eb8 <__d_vfprintf+0x578>
    3eb6:	e133      	b.n	4120 <__kernel_ram_size+0x170>
    3eb8:	0013      	movs	r3, r2
    3eba:	049b      	lsls	r3, r3, #18
    3ebc:	d400      	bmi.n	3ec0 <__d_vfprintf+0x580>
    3ebe:	e0fd      	b.n	40bc <__kernel_ram_size+0x10c>
    3ec0:	4643      	mov	r3, r8
    3ec2:	43db      	mvns	r3, r3
    3ec4:	4642      	mov	r2, r8
    3ec6:	17db      	asrs	r3, r3, #31
    3ec8:	4013      	ands	r3, r2
    3eca:	3301      	adds	r3, #1
    3ecc:	2f00      	cmp	r7, #0
    3ece:	d158      	bne.n	3f82 <__d_vfprintf+0x642>
    3ed0:	9a03      	ldr	r2, [sp, #12]
    3ed2:	2a00      	cmp	r2, #0
    3ed4:	d100      	bne.n	3ed8 <__d_vfprintf+0x598>
    3ed6:	e17c      	b.n	41d2 <__kernel_ram_size+0x222>
    3ed8:	3201      	adds	r2, #1
    3eda:	18d3      	adds	r3, r2, r3
    3edc:	9a04      	ldr	r2, [sp, #16]
    3ede:	429a      	cmp	r2, r3
    3ee0:	dd00      	ble.n	3ee4 <__d_vfprintf+0x5a4>
    3ee2:	e22c      	b.n	433e <__kernel_ram_size+0x38e>
    3ee4:	9b05      	ldr	r3, [sp, #20]
    3ee6:	051b      	lsls	r3, r3, #20
    3ee8:	d400      	bmi.n	3eec <__d_vfprintf+0x5ac>
    3eea:	e31a      	b.n	4522 <__kernel_ram_size+0x572>
    3eec:	2300      	movs	r3, #0
    3eee:	9304      	str	r3, [sp, #16]
    3ef0:	e05e      	b.n	3fb0 <__kernel_ram_size>
    3ef2:	2f00      	cmp	r7, #0
    3ef4:	d000      	beq.n	3ef8 <__d_vfprintf+0x5b8>
    3ef6:	e146      	b.n	4186 <__kernel_ram_size+0x1d6>
    3ef8:	372b      	adds	r7, #43	@ 0x2b
    3efa:	e7d7      	b.n	3eac <__d_vfprintf+0x56c>
    3efc:	202d      	movs	r0, #45	@ 0x2d
    3efe:	9b04      	ldr	r3, [sp, #16]
    3f00:	2b04      	cmp	r3, #4
    3f02:	dc00      	bgt.n	3f06 <__d_vfprintf+0x5c6>
    3f04:	e141      	b.n	418a <__kernel_ram_size+0x1da>
    3f06:	3b04      	subs	r3, #4
    3f08:	9304      	str	r3, [sp, #16]
    3f0a:	9b05      	ldr	r3, [sp, #20]
    3f0c:	071b      	lsls	r3, r3, #28
    3f0e:	d400      	bmi.n	3f12 <__d_vfprintf+0x5d2>
    3f10:	e14a      	b.n	41a8 <__kernel_ram_size+0x1f8>
    3f12:	4659      	mov	r1, fp
    3f14:	3501      	adds	r5, #1
    3f16:	47c8      	blx	r9
    3f18:	2800      	cmp	r0, #0
    3f1a:	da00      	bge.n	3f1e <__d_vfprintf+0x5de>
    3f1c:	e67a      	b.n	3c14 <__d_vfprintf+0x2d4>
    3f1e:	9b06      	ldr	r3, [sp, #24]
    3f20:	791b      	ldrb	r3, [r3, #4]
    3f22:	071b      	lsls	r3, r3, #28
    3f24:	d400      	bmi.n	3f28 <__d_vfprintf+0x5e8>
    3f26:	e0d1      	b.n	40cc <__kernel_ram_size+0x11c>
    3f28:	4b6b      	ldr	r3, [pc, #428]	@ (40d8 <__kernel_ram_size+0x128>)
    3f2a:	002e      	movs	r6, r5
    3f2c:	46a0      	mov	r8, r4
    3f2e:	464f      	mov	r7, r9
    3f30:	4654      	mov	r4, sl
    3f32:	1b5d      	subs	r5, r3, r5
    3f34:	e007      	b.n	3f46 <__d_vfprintf+0x606>
    3f36:	1b00      	subs	r0, r0, r4
    3f38:	4659      	mov	r1, fp
    3f3a:	b2c0      	uxtb	r0, r0
    3f3c:	3601      	adds	r6, #1
    3f3e:	47b8      	blx	r7
    3f40:	2800      	cmp	r0, #0
    3f42:	da00      	bge.n	3f46 <__d_vfprintf+0x606>
    3f44:	e666      	b.n	3c14 <__d_vfprintf+0x2d4>
    3f46:	5da8      	ldrb	r0, [r5, r6]
    3f48:	2800      	cmp	r0, #0
    3f4a:	d1f4      	bne.n	3f36 <__d_vfprintf+0x5f6>
    3f4c:	46b9      	mov	r9, r7
    3f4e:	4644      	mov	r4, r8
    3f50:	9b04      	ldr	r3, [sp, #16]
    3f52:	0035      	movs	r5, r6
    3f54:	46a0      	mov	r8, r4
    3f56:	464f      	mov	r7, r9
    3f58:	465c      	mov	r4, fp
    3f5a:	199e      	adds	r6, r3, r6
    3f5c:	e006      	b.n	3f6c <__d_vfprintf+0x62c>
    3f5e:	0021      	movs	r1, r4
    3f60:	2020      	movs	r0, #32
    3f62:	3501      	adds	r5, #1
    3f64:	47b8      	blx	r7
    3f66:	2800      	cmp	r0, #0
    3f68:	da00      	bge.n	3f6c <__d_vfprintf+0x62c>
    3f6a:	e652      	b.n	3c12 <__d_vfprintf+0x2d2>
    3f6c:	1b73      	subs	r3, r6, r5
    3f6e:	2b00      	cmp	r3, #0
    3f70:	dcf5      	bgt.n	3f5e <__d_vfprintf+0x61e>
    3f72:	46a3      	mov	fp, r4
    3f74:	46b9      	mov	r9, r7
    3f76:	4644      	mov	r4, r8
    3f78:	e502      	b.n	3980 <__d_vfprintf+0x40>
    3f7a:	2302      	movs	r3, #2
    3f7c:	2602      	movs	r6, #2
    3f7e:	930a      	str	r3, [sp, #40]	@ 0x28
    3f80:	e71d      	b.n	3dbe <__d_vfprintf+0x47e>
    3f82:	9903      	ldr	r1, [sp, #12]
    3f84:	1c5a      	adds	r2, r3, #1
    3f86:	2900      	cmp	r1, #0
    3f88:	d100      	bne.n	3f8c <__d_vfprintf+0x64c>
    3f8a:	e12e      	b.n	41ea <__kernel_ram_size+0x23a>
    3f8c:	1c4b      	adds	r3, r1, #1
    3f8e:	189b      	adds	r3, r3, r2
    3f90:	9a04      	ldr	r2, [sp, #16]
    3f92:	429a      	cmp	r2, r3
    3f94:	dd00      	ble.n	3f98 <__d_vfprintf+0x658>
    3f96:	e131      	b.n	41fc <__kernel_ram_size+0x24c>
    3f98:	2300      	movs	r3, #0
    3f9a:	9304      	str	r3, [sp, #16]
    3f9c:	4659      	mov	r1, fp
    3f9e:	0038      	movs	r0, r7
    3fa0:	3501      	adds	r5, #1
    3fa2:	47c8      	blx	r9
    3fa4:	2800      	cmp	r0, #0
    3fa6:	da00      	bge.n	3faa <__d_vfprintf+0x66a>
    3fa8:	e634      	b.n	3c14 <__d_vfprintf+0x2d4>
    3faa:	9b05      	ldr	r3, [sp, #20]
    3fac:	051b      	lsls	r3, r3, #20
    3fae:	d50f      	bpl.n	3fd0 <__kernel_ram_size+0x20>
    3fb0:	4659      	mov	r1, fp
    3fb2:	2030      	movs	r0, #48	@ 0x30
    3fb4:	47c8      	blx	r9
    3fb6:	2800      	cmp	r0, #0
    3fb8:	da00      	bge.n	3fbc <__kernel_ram_size+0xc>
    3fba:	e62b      	b.n	3c14 <__d_vfprintf+0x2d4>
    3fbc:	2078      	movs	r0, #120	@ 0x78
    3fbe:	4653      	mov	r3, sl
    3fc0:	1ac0      	subs	r0, r0, r3
    3fc2:	4659      	mov	r1, fp
    3fc4:	b2c0      	uxtb	r0, r0
    3fc6:	3502      	adds	r5, #2
    3fc8:	47c8      	blx	r9
    3fca:	2800      	cmp	r0, #0
    3fcc:	da00      	bge.n	3fd0 <__kernel_ram_size+0x20>
    3fce:	e621      	b.n	3c14 <__d_vfprintf+0x2d4>
    3fd0:	9b05      	ldr	r3, [sp, #20]
    3fd2:	071b      	lsls	r3, r3, #28
    3fd4:	d400      	bmi.n	3fd8 <__kernel_ram_size+0x28>
    3fd6:	e141      	b.n	425c <__kernel_ram_size+0x2ac>
    3fd8:	9b05      	ldr	r3, [sp, #20]
    3fda:	049b      	lsls	r3, r3, #18
    3fdc:	d500      	bpl.n	3fe0 <__kernel_ram_size+0x30>
    3fde:	e15e      	b.n	429e <__kernel_ram_size+0x2ee>
    3fe0:	9b06      	ldr	r3, [sp, #24]
    3fe2:	4659      	mov	r1, fp
    3fe4:	7958      	ldrb	r0, [r3, #5]
    3fe6:	47c8      	blx	r9
    3fe8:	2800      	cmp	r0, #0
    3fea:	da00      	bge.n	3fee <__kernel_ram_size+0x3e>
    3fec:	e612      	b.n	3c14 <__d_vfprintf+0x2d4>
    3fee:	9b03      	ldr	r3, [sp, #12]
    3ff0:	2b00      	cmp	r3, #0
    3ff2:	dd00      	ble.n	3ff6 <__kernel_ram_size+0x46>
    3ff4:	e298      	b.n	4528 <__kernel_ram_size+0x578>
    3ff6:	9b05      	ldr	r3, [sp, #20]
    3ff8:	1c6e      	adds	r6, r5, #1
    3ffa:	06db      	lsls	r3, r3, #27
    3ffc:	d500      	bpl.n	4000 <__kernel_ram_size+0x50>
    3ffe:	e18c      	b.n	431a <__kernel_ram_size+0x36a>
    4000:	4652      	mov	r2, sl
    4002:	9b0b      	ldr	r3, [sp, #44]	@ 0x2c
    4004:	4659      	mov	r1, fp
    4006:	1a98      	subs	r0, r3, r2
    4008:	b2c0      	uxtb	r0, r0
    400a:	47c8      	blx	r9
    400c:	2800      	cmp	r0, #0
    400e:	da00      	bge.n	4012 <__kernel_ram_size+0x62>
    4010:	e600      	b.n	3c14 <__d_vfprintf+0x2d4>
    4012:	4643      	mov	r3, r8
    4014:	202b      	movs	r0, #43	@ 0x2b
    4016:	2b00      	cmp	r3, #0
    4018:	da02      	bge.n	4020 <__kernel_ram_size+0x70>
    401a:	425b      	negs	r3, r3
    401c:	4698      	mov	r8, r3
    401e:	3002      	adds	r0, #2
    4020:	4659      	mov	r1, fp
    4022:	47c8      	blx	r9
    4024:	2800      	cmp	r0, #0
    4026:	da00      	bge.n	402a <__kernel_ram_size+0x7a>
    4028:	e5f4      	b.n	3c14 <__d_vfprintf+0x2d4>
    402a:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    402c:	2b04      	cmp	r3, #4
    402e:	d00d      	beq.n	404c <__kernel_ram_size+0x9c>
    4030:	3602      	adds	r6, #2
    4032:	2b03      	cmp	r3, #3
    4034:	d01d      	beq.n	4072 <__kernel_ram_size+0xc2>
    4036:	2b01      	cmp	r3, #1
    4038:	d12c      	bne.n	4094 <__kernel_ram_size+0xe4>
    403a:	4640      	mov	r0, r8
    403c:	3030      	adds	r0, #48	@ 0x30
    403e:	4659      	mov	r1, fp
    4040:	b2c0      	uxtb	r0, r0
    4042:	3601      	adds	r6, #1
    4044:	47c8      	blx	r9
    4046:	2800      	cmp	r0, #0
    4048:	da82      	bge.n	3f50 <__d_vfprintf+0x610>
    404a:	e5e3      	b.n	3c14 <__d_vfprintf+0x2d4>
    404c:	21fa      	movs	r1, #250	@ 0xfa
    404e:	4640      	mov	r0, r8
    4050:	0089      	lsls	r1, r1, #2
    4052:	f7fc fa23 	bl	49c <__divsi3>
    4056:	3030      	adds	r0, #48	@ 0x30
    4058:	4659      	mov	r1, fp
    405a:	b2c0      	uxtb	r0, r0
    405c:	3603      	adds	r6, #3
    405e:	47c8      	blx	r9
    4060:	2800      	cmp	r0, #0
    4062:	da00      	bge.n	4066 <__kernel_ram_size+0xb6>
    4064:	e5d6      	b.n	3c14 <__d_vfprintf+0x2d4>
    4066:	21fa      	movs	r1, #250	@ 0xfa
    4068:	4640      	mov	r0, r8
    406a:	0089      	lsls	r1, r1, #2
    406c:	f7fc fa60 	bl	530 <__aeabi_idivmod>
    4070:	4688      	mov	r8, r1
    4072:	2164      	movs	r1, #100	@ 0x64
    4074:	4640      	mov	r0, r8
    4076:	f7fc fa11 	bl	49c <__divsi3>
    407a:	3030      	adds	r0, #48	@ 0x30
    407c:	4659      	mov	r1, fp
    407e:	b2c0      	uxtb	r0, r0
    4080:	3601      	adds	r6, #1
    4082:	47c8      	blx	r9
    4084:	2800      	cmp	r0, #0
    4086:	da00      	bge.n	408a <__kernel_ram_size+0xda>
    4088:	e5c4      	b.n	3c14 <__d_vfprintf+0x2d4>
    408a:	4640      	mov	r0, r8
    408c:	2164      	movs	r1, #100	@ 0x64
    408e:	f7fc fa4f 	bl	530 <__aeabi_idivmod>
    4092:	4688      	mov	r8, r1
    4094:	210a      	movs	r1, #10
    4096:	4640      	mov	r0, r8
    4098:	f7fc fa00 	bl	49c <__divsi3>
    409c:	3030      	adds	r0, #48	@ 0x30
    409e:	4659      	mov	r1, fp
    40a0:	b2c0      	uxtb	r0, r0
    40a2:	3601      	adds	r6, #1
    40a4:	47c8      	blx	r9
    40a6:	2800      	cmp	r0, #0
    40a8:	da00      	bge.n	40ac <__kernel_ram_size+0xfc>
    40aa:	e5b3      	b.n	3c14 <__d_vfprintf+0x2d4>
    40ac:	4640      	mov	r0, r8
    40ae:	210a      	movs	r1, #10
    40b0:	f7fc fa3e 	bl	530 <__aeabi_idivmod>
    40b4:	4688      	mov	r8, r1
    40b6:	e7c0      	b.n	403a <__kernel_ram_size+0x8a>
    40b8:	1e43      	subs	r3, r0, #1
    40ba:	9303      	str	r3, [sp, #12]
    40bc:	9b05      	ldr	r3, [sp, #20]
    40be:	051a      	lsls	r2, r3, #20
    40c0:	2302      	movs	r3, #2
    40c2:	17d2      	asrs	r2, r2, #31
    40c4:	4013      	ands	r3, r2
    40c6:	3303      	adds	r3, #3
    40c8:	199b      	adds	r3, r3, r6
    40ca:	e6ff      	b.n	3ecc <__d_vfprintf+0x58c>
    40cc:	4b03      	ldr	r3, [pc, #12]	@ (40dc <__kernel_ram_size+0x12c>)
    40ce:	e72c      	b.n	3f2a <__d_vfprintf+0x5ea>
    40d0:	000003e7 	.word	0x000003e7
    40d4:	000007ce 	.word	0x000007ce
    40d8:	00007880 	.word	0x00007880
    40dc:	0000787c 	.word	0x0000787c
    40e0:	2320      	movs	r3, #32
    40e2:	2207      	movs	r2, #7
    40e4:	43b3      	bics	r3, r6
    40e6:	469a      	mov	sl, r3
    40e8:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    40ea:	3307      	adds	r3, #7
    40ec:	4393      	bics	r3, r2
    40ee:	001a      	movs	r2, r3
    40f0:	6818      	ldr	r0, [r3, #0]
    40f2:	6859      	ldr	r1, [r3, #4]
    40f4:	23c0      	movs	r3, #192	@ 0xc0
    40f6:	015b      	lsls	r3, r3, #5
    40f8:	3208      	adds	r2, #8
    40fa:	433b      	orrs	r3, r7
    40fc:	920f      	str	r2, [sp, #60]	@ 0x3c
    40fe:	9305      	str	r3, [sp, #20]
    4100:	ab10      	add	r3, sp, #64	@ 0x40
    4102:	001a      	movs	r2, r3
    4104:	9306      	str	r3, [sp, #24]
    4106:	4653      	mov	r3, sl
    4108:	9300      	str	r3, [sp, #0]
    410a:	2301      	movs	r3, #1
    410c:	425b      	negs	r3, r3
    410e:	f001 fd29 	bl	5b64 <__dtox_engine>
    4112:	3001      	adds	r0, #1
    4114:	b2c3      	uxtb	r3, r0
    4116:	9309      	str	r3, [sp, #36]	@ 0x24
    4118:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    411a:	3b01      	subs	r3, #1
    411c:	9303      	str	r3, [sp, #12]
    411e:	e6b9      	b.n	3e94 <__d_vfprintf+0x554>
    4120:	9b03      	ldr	r3, [sp, #12]
    4122:	2001      	movs	r0, #1
    4124:	2b00      	cmp	r3, #0
    4126:	d000      	beq.n	412a <__kernel_ram_size+0x17a>
    4128:	e0ff      	b.n	432a <__kernel_ram_size+0x37a>
    412a:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    412c:	2b00      	cmp	r3, #0
    412e:	d101      	bne.n	4134 <__kernel_ram_size+0x184>
    4130:	f000 fc4c 	bl	49cc <__kernel_ram_size+0xa1c>
    4134:	4684      	mov	ip, r0
    4136:	9806      	ldr	r0, [sp, #24]
    4138:	e003      	b.n	4142 <__kernel_ram_size+0x192>
    413a:	b2da      	uxtb	r2, r3
    413c:	2a00      	cmp	r2, #0
    413e:	d100      	bne.n	4142 <__kernel_ram_size+0x192>
    4140:	e2a9      	b.n	4696 <__kernel_ram_size+0x6e6>
    4142:	001a      	movs	r2, r3
    4144:	1881      	adds	r1, r0, r2
    4146:	7909      	ldrb	r1, [r1, #4]
    4148:	3b01      	subs	r3, #1
    414a:	2930      	cmp	r1, #48	@ 0x30
    414c:	d0f5      	beq.n	413a <__kernel_ram_size+0x18a>
    414e:	4660      	mov	r0, ip
    4150:	b2d1      	uxtb	r1, r2
    4152:	9109      	str	r1, [sp, #36]	@ 0x24
    4154:	9303      	str	r3, [sp, #12]
    4156:	9b05      	ldr	r3, [sp, #20]
    4158:	06db      	lsls	r3, r3, #27
    415a:	d400      	bmi.n	415e <__kernel_ram_size+0x1ae>
    415c:	e279      	b.n	4652 <__kernel_ram_size+0x6a2>
    415e:	4643      	mov	r3, r8
    4160:	3304      	adds	r3, #4
    4162:	dba9      	blt.n	40b8 <__kernel_ram_size+0x108>
    4164:	4580      	cmp	r8, r0
    4166:	daa7      	bge.n	40b8 <__kernel_ram_size+0x108>
    4168:	2380      	movs	r3, #128	@ 0x80
    416a:	9a05      	ldr	r2, [sp, #20]
    416c:	019b      	lsls	r3, r3, #6
    416e:	4313      	orrs	r3, r2
    4170:	b29b      	uxth	r3, r3
    4172:	9305      	str	r3, [sp, #20]
    4174:	4643      	mov	r3, r8
    4176:	3301      	adds	r3, #1
    4178:	1ac3      	subs	r3, r0, r3
    417a:	9303      	str	r3, [sp, #12]
    417c:	e6a0      	b.n	3ec0 <__d_vfprintf+0x580>
    417e:	2304      	movs	r3, #4
    4180:	2604      	movs	r6, #4
    4182:	930a      	str	r3, [sp, #40]	@ 0x28
    4184:	e61b      	b.n	3dbe <__d_vfprintf+0x47e>
    4186:	202b      	movs	r0, #43	@ 0x2b
    4188:	e6b9      	b.n	3efe <__d_vfprintf+0x5be>
    418a:	2300      	movs	r3, #0
    418c:	9304      	str	r3, [sp, #16]
    418e:	e6c0      	b.n	3f12 <__d_vfprintf+0x5d2>
    4190:	2f00      	cmp	r7, #0
    4192:	d100      	bne.n	4196 <__kernel_ram_size+0x1e6>
    4194:	e68a      	b.n	3eac <__d_vfprintf+0x56c>
    4196:	9a04      	ldr	r2, [sp, #16]
    4198:	2a03      	cmp	r2, #3
    419a:	dd17      	ble.n	41cc <__kernel_ram_size+0x21c>
    419c:	3a03      	subs	r2, #3
    419e:	9204      	str	r2, [sp, #16]
    41a0:	9a05      	ldr	r2, [sp, #20]
    41a2:	0711      	lsls	r1, r2, #28
    41a4:	d500      	bpl.n	41a8 <__kernel_ram_size+0x1f8>
    41a6:	e6bc      	b.n	3f22 <__d_vfprintf+0x5e2>
    41a8:	9b04      	ldr	r3, [sp, #16]
    41aa:	464f      	mov	r7, r9
    41ac:	46a0      	mov	r8, r4
    41ae:	4681      	mov	r9, r0
    41b0:	465c      	mov	r4, fp
    41b2:	195e      	adds	r6, r3, r5
    41b4:	e002      	b.n	41bc <__kernel_ram_size+0x20c>
    41b6:	42b5      	cmp	r5, r6
    41b8:	d100      	bne.n	41bc <__kernel_ram_size+0x20c>
    41ba:	e2d7      	b.n	476c <__kernel_ram_size+0x7bc>
    41bc:	0021      	movs	r1, r4
    41be:	2020      	movs	r0, #32
    41c0:	3501      	adds	r5, #1
    41c2:	47b8      	blx	r7
    41c4:	2800      	cmp	r0, #0
    41c6:	daf6      	bge.n	41b6 <__kernel_ram_size+0x206>
    41c8:	46a3      	mov	fp, r4
    41ca:	e523      	b.n	3c14 <__d_vfprintf+0x2d4>
    41cc:	2200      	movs	r2, #0
    41ce:	9204      	str	r2, [sp, #16]
    41d0:	e6a7      	b.n	3f22 <__d_vfprintf+0x5e2>
    41d2:	9905      	ldr	r1, [sp, #20]
    41d4:	06ca      	lsls	r2, r1, #27
    41d6:	d400      	bmi.n	41da <__kernel_ram_size+0x22a>
    41d8:	e0d0      	b.n	437c <__kernel_ram_size+0x3cc>
    41da:	9a04      	ldr	r2, [sp, #16]
    41dc:	3301      	adds	r3, #1
    41de:	429a      	cmp	r2, r3
    41e0:	dd00      	ble.n	41e4 <__kernel_ram_size+0x234>
    41e2:	e0ac      	b.n	433e <__kernel_ram_size+0x38e>
    41e4:	2300      	movs	r3, #0
    41e6:	9304      	str	r3, [sp, #16]
    41e8:	e6df      	b.n	3faa <__d_vfprintf+0x66a>
    41ea:	9805      	ldr	r0, [sp, #20]
    41ec:	06c1      	lsls	r1, r0, #27
    41ee:	d400      	bmi.n	41f2 <__kernel_ram_size+0x242>
    41f0:	e0cf      	b.n	4392 <__kernel_ram_size+0x3e2>
    41f2:	9a04      	ldr	r2, [sp, #16]
    41f4:	3302      	adds	r3, #2
    41f6:	429a      	cmp	r2, r3
    41f8:	dc00      	bgt.n	41fc <__kernel_ram_size+0x24c>
    41fa:	e6cd      	b.n	3f98 <__d_vfprintf+0x658>
    41fc:	1ad3      	subs	r3, r2, r3
    41fe:	9304      	str	r3, [sp, #16]
    4200:	2309      	movs	r3, #9
    4202:	9a05      	ldr	r2, [sp, #20]
    4204:	4213      	tst	r3, r2
    4206:	d000      	beq.n	420a <__kernel_ram_size+0x25a>
    4208:	e6c8      	b.n	3f9c <__d_vfprintf+0x65c>
    420a:	9b04      	ldr	r3, [sp, #16]
    420c:	18ee      	adds	r6, r5, r3
    420e:	465b      	mov	r3, fp
    4210:	46bb      	mov	fp, r7
    4212:	0037      	movs	r7, r6
    4214:	464e      	mov	r6, r9
    4216:	46a1      	mov	r9, r4
    4218:	001c      	movs	r4, r3
    421a:	e003      	b.n	4224 <__kernel_ram_size+0x274>
    421c:	42bd      	cmp	r5, r7
    421e:	d101      	bne.n	4224 <__kernel_ram_size+0x274>
    4220:	f000 fc08 	bl	4a34 <__kernel_ram_size+0xa84>
    4224:	0021      	movs	r1, r4
    4226:	2020      	movs	r0, #32
    4228:	3501      	adds	r5, #1
    422a:	47b0      	blx	r6
    422c:	2800      	cmp	r0, #0
    422e:	daf5      	bge.n	421c <__kernel_ram_size+0x26c>
    4230:	46a3      	mov	fp, r4
    4232:	e4ef      	b.n	3c14 <__d_vfprintf+0x2d4>
    4234:	9b03      	ldr	r3, [sp, #12]
    4236:	1c5a      	adds	r2, r3, #1
    4238:	1c13      	adds	r3, r2, #0
    423a:	b2d2      	uxtb	r2, r2
    423c:	2a11      	cmp	r2, #17
    423e:	d900      	bls.n	4242 <__kernel_ram_size+0x292>
    4240:	e087      	b.n	4352 <__kernel_ram_size+0x3a2>
    4242:	b2db      	uxtb	r3, r3
    4244:	2280      	movs	r2, #128	@ 0x80
    4246:	0152      	lsls	r2, r2, #5
    4248:	433a      	orrs	r2, r7
    424a:	9205      	str	r2, [sp, #20]
    424c:	e594      	b.n	3d78 <__d_vfprintf+0x438>
    424e:	2206      	movs	r2, #6
    4250:	2307      	movs	r3, #7
    4252:	9203      	str	r2, [sp, #12]
    4254:	e7f6      	b.n	4244 <__kernel_ram_size+0x294>
    4256:	9203      	str	r2, [sp, #12]
    4258:	f7ff fbbd 	bl	39d6 <__d_vfprintf+0x96>
    425c:	9b04      	ldr	r3, [sp, #16]
    425e:	2b00      	cmp	r3, #0
    4260:	d100      	bne.n	4264 <__kernel_ram_size+0x2b4>
    4262:	e6b9      	b.n	3fd8 <__kernel_ram_size+0x28>
    4264:	9b04      	ldr	r3, [sp, #16]
    4266:	464f      	mov	r7, r9
    4268:	18ee      	adds	r6, r5, r3
    426a:	46a1      	mov	r9, r4
    426c:	0034      	movs	r4, r6
    426e:	465e      	mov	r6, fp
    4270:	e002      	b.n	4278 <__kernel_ram_size+0x2c8>
    4272:	42a5      	cmp	r5, r4
    4274:	d100      	bne.n	4278 <__kernel_ram_size+0x2c8>
    4276:	e151      	b.n	451c <__kernel_ram_size+0x56c>
    4278:	0031      	movs	r1, r6
    427a:	2030      	movs	r0, #48	@ 0x30
    427c:	3501      	adds	r5, #1
    427e:	47b8      	blx	r7
    4280:	2800      	cmp	r0, #0
    4282:	daf6      	bge.n	4272 <__kernel_ram_size+0x2c2>
    4284:	46b3      	mov	fp, r6
    4286:	e4c5      	b.n	3c14 <__d_vfprintf+0x2d4>
    4288:	9905      	ldr	r1, [sp, #20]
    428a:	9305      	str	r3, [sp, #20]
    428c:	2300      	movs	r3, #0
    428e:	9303      	str	r3, [sp, #12]
    4290:	9304      	str	r3, [sp, #16]
    4292:	050a      	lsls	r2, r1, #20
    4294:	d500      	bpl.n	4298 <__kernel_ram_size+0x2e8>
    4296:	e68b      	b.n	3fb0 <__kernel_ram_size>
    4298:	070a      	lsls	r2, r1, #28
    429a:	d400      	bmi.n	429e <__kernel_ram_size+0x2ee>
    429c:	e69c      	b.n	3fd8 <__kernel_ram_size+0x28>
    429e:	4643      	mov	r3, r8
    42a0:	43df      	mvns	r7, r3
    42a2:	17ff      	asrs	r7, r7, #31
    42a4:	401f      	ands	r7, r3
    42a6:	1bdb      	subs	r3, r3, r7
    42a8:	4698      	mov	r8, r3
    42aa:	9b03      	ldr	r3, [sp, #12]
    42ac:	9403      	str	r4, [sp, #12]
    42ae:	425b      	negs	r3, r3
    42b0:	469a      	mov	sl, r3
    42b2:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    42b4:	4644      	mov	r4, r8
    42b6:	4698      	mov	r8, r3
    42b8:	2030      	movs	r0, #48	@ 0x30
    42ba:	4544      	cmp	r4, r8
    42bc:	d202      	bcs.n	42c4 <__kernel_ram_size+0x314>
    42be:	9b06      	ldr	r3, [sp, #24]
    42c0:	191b      	adds	r3, r3, r4
    42c2:	7958      	ldrb	r0, [r3, #5]
    42c4:	3f01      	subs	r7, #1
    42c6:	1c6e      	adds	r6, r5, #1
    42c8:	45ba      	cmp	sl, r7
    42ca:	dd00      	ble.n	42ce <__kernel_ram_size+0x31e>
    42cc:	e20d      	b.n	46ea <__kernel_ram_size+0x73a>
    42ce:	4659      	mov	r1, fp
    42d0:	47c8      	blx	r9
    42d2:	3401      	adds	r4, #1
    42d4:	2800      	cmp	r0, #0
    42d6:	da00      	bge.n	42da <__kernel_ram_size+0x32a>
    42d8:	e49c      	b.n	3c14 <__d_vfprintf+0x2d4>
    42da:	1c7b      	adds	r3, r7, #1
    42dc:	d001      	beq.n	42e2 <__kernel_ram_size+0x332>
    42de:	0035      	movs	r5, r6
    42e0:	e7ea      	b.n	42b8 <__kernel_ram_size+0x308>
    42e2:	4659      	mov	r1, fp
    42e4:	202e      	movs	r0, #46	@ 0x2e
    42e6:	47c8      	blx	r9
    42e8:	2800      	cmp	r0, #0
    42ea:	da00      	bge.n	42ee <__kernel_ram_size+0x33e>
    42ec:	e492      	b.n	3c14 <__d_vfprintf+0x2d4>
    42ee:	1cae      	adds	r6, r5, #2
    42f0:	0035      	movs	r5, r6
    42f2:	e7e1      	b.n	42b8 <__kernel_ram_size+0x308>
    42f4:	4643      	mov	r3, r8
    42f6:	2b78      	cmp	r3, #120	@ 0x78
    42f8:	d100      	bne.n	42fc <__kernel_ram_size+0x34c>
    42fa:	e28c      	b.n	4816 <__kernel_ram_size+0x866>
    42fc:	4659      	mov	r1, fp
    42fe:	2025      	movs	r0, #37	@ 0x25
    4300:	47c8      	blx	r9
    4302:	2800      	cmp	r0, #0
    4304:	da00      	bge.n	4308 <__kernel_ram_size+0x358>
    4306:	e485      	b.n	3c14 <__d_vfprintf+0x2d4>
    4308:	4659      	mov	r1, fp
    430a:	b2f0      	uxtb	r0, r6
    430c:	47c8      	blx	r9
    430e:	2800      	cmp	r0, #0
    4310:	da00      	bge.n	4314 <__kernel_ram_size+0x364>
    4312:	e47f      	b.n	3c14 <__d_vfprintf+0x2d4>
    4314:	3502      	adds	r5, #2
    4316:	f7ff fb33 	bl	3980 <__d_vfprintf+0x40>
    431a:	4659      	mov	r1, fp
    431c:	202e      	movs	r0, #46	@ 0x2e
    431e:	1cae      	adds	r6, r5, #2
    4320:	47c8      	blx	r9
    4322:	2800      	cmp	r0, #0
    4324:	db00      	blt.n	4328 <__kernel_ram_size+0x378>
    4326:	e66b      	b.n	4000 <__kernel_ram_size+0x50>
    4328:	e474      	b.n	3c14 <__d_vfprintf+0x2d4>
    432a:	0018      	movs	r0, r3
    432c:	e6fd      	b.n	412a <__kernel_ram_size+0x17a>
    432e:	0025      	movs	r5, r4
    4330:	9204      	str	r2, [sp, #16]
    4332:	2e2a      	cmp	r6, #42	@ 0x2a
    4334:	d001      	beq.n	433a <__kernel_ram_size+0x38a>
    4336:	f7ff fb97 	bl	3a68 <__d_vfprintf+0x128>
    433a:	f7ff fb63 	bl	3a04 <__d_vfprintf+0xc4>
    433e:	1ad3      	subs	r3, r2, r3
    4340:	9304      	str	r3, [sp, #16]
    4342:	2309      	movs	r3, #9
    4344:	9a05      	ldr	r2, [sp, #20]
    4346:	4213      	tst	r3, r2
    4348:	d000      	beq.n	434c <__kernel_ram_size+0x39c>
    434a:	e62e      	b.n	3faa <__d_vfprintf+0x66a>
    434c:	e75d      	b.n	420a <__kernel_ram_size+0x25a>
    434e:	3720      	adds	r7, #32
    4350:	e5ac      	b.n	3eac <__d_vfprintf+0x56c>
    4352:	2311      	movs	r3, #17
    4354:	e775      	b.n	4242 <__kernel_ram_size+0x292>
    4356:	9a03      	ldr	r2, [sp, #12]
    4358:	9807      	ldr	r0, [sp, #28]
    435a:	a90f      	add	r1, sp, #60	@ 0x3c
    435c:	f7ff f9a4 	bl	36a8 <skip_to_arg>
    4360:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    4362:	3401      	adds	r4, #1
    4364:	1d1a      	adds	r2, r3, #4
    4366:	681b      	ldr	r3, [r3, #0]
    4368:	920f      	str	r2, [sp, #60]	@ 0x3c
    436a:	9303      	str	r3, [sp, #12]
    436c:	782e      	ldrb	r6, [r5, #0]
    436e:	2e00      	cmp	r6, #0
    4370:	d101      	bne.n	4376 <__kernel_ram_size+0x3c6>
    4372:	f7ff fb3c 	bl	39ee <__d_vfprintf+0xae>
    4376:	0025      	movs	r5, r4
    4378:	f7ff fb1a 	bl	39b0 <__d_vfprintf+0x70>
    437c:	9a04      	ldr	r2, [sp, #16]
    437e:	4293      	cmp	r3, r2
    4380:	db00      	blt.n	4384 <__kernel_ram_size+0x3d4>
    4382:	e220      	b.n	47c6 <__kernel_ram_size+0x816>
    4384:	1ad3      	subs	r3, r2, r3
    4386:	9304      	str	r3, [sp, #16]
    4388:	2309      	movs	r3, #9
    438a:	420b      	tst	r3, r1
    438c:	d000      	beq.n	4390 <__kernel_ram_size+0x3e0>
    438e:	e60c      	b.n	3faa <__d_vfprintf+0x66a>
    4390:	e73b      	b.n	420a <__kernel_ram_size+0x25a>
    4392:	9b04      	ldr	r3, [sp, #16]
    4394:	4293      	cmp	r3, r2
    4396:	dc00      	bgt.n	439a <__kernel_ram_size+0x3ea>
    4398:	e5fe      	b.n	3f98 <__d_vfprintf+0x658>
    439a:	1a9b      	subs	r3, r3, r2
    439c:	9304      	str	r3, [sp, #16]
    439e:	2309      	movs	r3, #9
    43a0:	4203      	tst	r3, r0
    43a2:	d000      	beq.n	43a6 <__kernel_ram_size+0x3f6>
    43a4:	e5fa      	b.n	3f9c <__d_vfprintf+0x65c>
    43a6:	e730      	b.n	420a <__kernel_ram_size+0x25a>
    43a8:	2310      	movs	r3, #16
    43aa:	439f      	bics	r7, r3
    43ac:	3b06      	subs	r3, #6
    43ae:	9a0f      	ldr	r2, [sp, #60]	@ 0x3c
    43b0:	0639      	lsls	r1, r7, #24
    43b2:	d400      	bmi.n	43b6 <__kernel_ram_size+0x406>
    43b4:	e081      	b.n	44ba <__kernel_ram_size+0x50a>
    43b6:	05b9      	lsls	r1, r7, #22
    43b8:	d400      	bmi.n	43bc <__kernel_ram_size+0x40c>
    43ba:	e172      	b.n	46a2 <__kernel_ram_size+0x6f2>
    43bc:	2107      	movs	r1, #7
    43be:	3207      	adds	r2, #7
    43c0:	438a      	bics	r2, r1
    43c2:	0011      	movs	r1, r2
    43c4:	3108      	adds	r1, #8
    43c6:	910f      	str	r1, [sp, #60]	@ 0x3c
    43c8:	ca03      	ldmia	r2!, {r0, r1}
    43ca:	2240      	movs	r2, #64	@ 0x40
    43cc:	403a      	ands	r2, r7
    43ce:	4692      	mov	sl, r2
    43d0:	0002      	movs	r2, r0
    43d2:	430a      	orrs	r2, r1
    43d4:	d000      	beq.n	43d8 <__kernel_ram_size+0x428>
    43d6:	e100      	b.n	45da <__kernel_ram_size+0x62a>
    43d8:	4652      	mov	r2, sl
    43da:	2a00      	cmp	r2, #0
    43dc:	d100      	bne.n	43e0 <__kernel_ram_size+0x430>
    43de:	e0e3      	b.n	45a8 <__kernel_ram_size+0x5f8>
    43e0:	9a03      	ldr	r2, [sp, #12]
    43e2:	2a00      	cmp	r2, #0
    43e4:	d000      	beq.n	43e8 <__kernel_ram_size+0x438>
    43e6:	e197      	b.n	4718 <__kernel_ram_size+0x768>
    43e8:	073b      	lsls	r3, r7, #28
    43ea:	d400      	bmi.n	43ee <__kernel_ram_size+0x43e>
    43ec:	e2b1      	b.n	4952 <__kernel_ram_size+0x9a2>
    43ee:	2300      	movs	r3, #0
    43f0:	002e      	movs	r6, r5
    43f2:	4698      	mov	r8, r3
    43f4:	ab10      	add	r3, sp, #64	@ 0x40
    43f6:	9306      	str	r3, [sp, #24]
    43f8:	4645      	mov	r5, r8
    43fa:	469c      	mov	ip, r3
    43fc:	3d01      	subs	r5, #1
    43fe:	ab0c      	add	r3, sp, #48	@ 0x30
    4400:	270f      	movs	r7, #15
    4402:	4465      	add	r5, ip
    4404:	469c      	mov	ip, r3
    4406:	46a0      	mov	r8, r4
    4408:	4467      	add	r7, ip
    440a:	464c      	mov	r4, r9
    440c:	e008      	b.n	4420 <__kernel_ram_size+0x470>
    440e:	7828      	ldrb	r0, [r5, #0]
    4410:	4659      	mov	r1, fp
    4412:	47a0      	blx	r4
    4414:	3601      	adds	r6, #1
    4416:	3d01      	subs	r5, #1
    4418:	2800      	cmp	r0, #0
    441a:	da01      	bge.n	4420 <__kernel_ram_size+0x470>
    441c:	f7ff fbfa 	bl	3c14 <__d_vfprintf+0x2d4>
    4420:	42af      	cmp	r7, r5
    4422:	d1f4      	bne.n	440e <__kernel_ram_size+0x45e>
    4424:	46a1      	mov	r9, r4
    4426:	4644      	mov	r4, r8
    4428:	e592      	b.n	3f50 <__d_vfprintf+0x610>
    442a:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    442c:	1d1a      	adds	r2, r3, #4
    442e:	920f      	str	r2, [sp, #60]	@ 0x3c
    4430:	681b      	ldr	r3, [r3, #0]
    4432:	4698      	mov	r8, r3
    4434:	2b00      	cmp	r3, #0
    4436:	d100      	bne.n	443a <__kernel_ram_size+0x48a>
    4438:	e1fc      	b.n	4834 <__kernel_ram_size+0x884>
    443a:	067b      	lsls	r3, r7, #25
    443c:	d402      	bmi.n	4444 <__kernel_ram_size+0x494>
    443e:	2301      	movs	r3, #1
    4440:	425b      	negs	r3, r3
    4442:	9303      	str	r3, [sp, #12]
    4444:	4640      	mov	r0, r8
    4446:	9903      	ldr	r1, [sp, #12]
    4448:	f7ff f8f4 	bl	3634 <strnlen>
    444c:	0006      	movs	r6, r0
    444e:	9b04      	ldr	r3, [sp, #16]
    4450:	469a      	mov	sl, r3
    4452:	073f      	lsls	r7, r7, #28
    4454:	d445      	bmi.n	44e2 <__kernel_ram_size+0x532>
    4456:	429e      	cmp	r6, r3
    4458:	d243      	bcs.n	44e2 <__kernel_ram_size+0x532>
    445a:	0022      	movs	r2, r4
    445c:	001f      	movs	r7, r3
    445e:	465b      	mov	r3, fp
    4460:	464c      	mov	r4, r9
    4462:	46ab      	mov	fp, r5
    4464:	4691      	mov	r9, r2
    4466:	001d      	movs	r5, r3
    4468:	e003      	b.n	4472 <__kernel_ram_size+0x4c2>
    446a:	1e7b      	subs	r3, r7, #1
    446c:	429e      	cmp	r6, r3
    446e:	d22e      	bcs.n	44ce <__kernel_ram_size+0x51e>
    4470:	001f      	movs	r7, r3
    4472:	0029      	movs	r1, r5
    4474:	2020      	movs	r0, #32
    4476:	47a0      	blx	r4
    4478:	2800      	cmp	r0, #0
    447a:	daf6      	bge.n	446a <__kernel_ram_size+0x4ba>
    447c:	46ab      	mov	fp, r5
    447e:	f7ff fbc9 	bl	3c14 <__d_vfprintf+0x2d4>
    4482:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    4484:	2601      	movs	r6, #1
    4486:	1d1a      	adds	r2, r3, #4
    4488:	681b      	ldr	r3, [r3, #0]
    448a:	920f      	str	r2, [sp, #60]	@ 0x3c
    448c:	aa10      	add	r2, sp, #64	@ 0x40
    448e:	4690      	mov	r8, r2
    4490:	7013      	strb	r3, [r2, #0]
    4492:	e7dc      	b.n	444e <__kernel_ram_size+0x49e>
    4494:	2310      	movs	r3, #16
    4496:	2678      	movs	r6, #120	@ 0x78
    4498:	431f      	orrs	r7, r3
    449a:	e788      	b.n	43ae <__kernel_ram_size+0x3fe>
    449c:	2308      	movs	r3, #8
    449e:	2600      	movs	r6, #0
    44a0:	e785      	b.n	43ae <__kernel_ram_size+0x3fe>
    44a2:	0023      	movs	r3, r4
    44a4:	f7ff fbfd 	bl	3ca2 <__d_vfprintf+0x362>
    44a8:	0022      	movs	r2, r4
    44aa:	f7ff fc0a 	bl	3cc2 <__d_vfprintf+0x382>
    44ae:	ab10      	add	r3, sp, #64	@ 0x40
    44b0:	46a3      	mov	fp, r4
    44b2:	9306      	str	r3, [sp, #24]
    44b4:	464c      	mov	r4, r9
    44b6:	46b9      	mov	r9, r7
    44b8:	e79e      	b.n	43f8 <__kernel_ram_size+0x448>
    44ba:	1d11      	adds	r1, r2, #4
    44bc:	6810      	ldr	r0, [r2, #0]
    44be:	910f      	str	r1, [sp, #60]	@ 0x3c
    44c0:	05fa      	lsls	r2, r7, #23
    44c2:	d56f      	bpl.n	45a4 <__kernel_ram_size+0x5f4>
    44c4:	05ba      	lsls	r2, r7, #22
    44c6:	d56c      	bpl.n	45a2 <__kernel_ram_size+0x5f2>
    44c8:	2100      	movs	r1, #0
    44ca:	b2c0      	uxtb	r0, r0
    44cc:	e77d      	b.n	43ca <__kernel_ram_size+0x41a>
    44ce:	0029      	movs	r1, r5
    44d0:	465d      	mov	r5, fp
    44d2:	464a      	mov	r2, r9
    44d4:	3501      	adds	r5, #1
    44d6:	4455      	add	r5, sl
    44d8:	46a1      	mov	r9, r4
    44da:	468b      	mov	fp, r1
    44dc:	0014      	movs	r4, r2
    44de:	469a      	mov	sl, r3
    44e0:	1bed      	subs	r5, r5, r7
    44e2:	43eb      	mvns	r3, r5
    44e4:	4498      	add	r8, r3
    44e6:	465b      	mov	r3, fp
    44e8:	1977      	adds	r7, r6, r5
    44ea:	46a3      	mov	fp, r4
    44ec:	464c      	mov	r4, r9
    44ee:	46b1      	mov	r9, r6
    44f0:	001e      	movs	r6, r3
    44f2:	e007      	b.n	4504 <__kernel_ram_size+0x554>
    44f4:	4643      	mov	r3, r8
    44f6:	3501      	adds	r5, #1
    44f8:	0031      	movs	r1, r6
    44fa:	5d58      	ldrb	r0, [r3, r5]
    44fc:	47a0      	blx	r4
    44fe:	2800      	cmp	r0, #0
    4500:	da00      	bge.n	4504 <__kernel_ram_size+0x554>
    4502:	e6bf      	b.n	4284 <__kernel_ram_size+0x2d4>
    4504:	42bd      	cmp	r5, r7
    4506:	d1f5      	bne.n	44f4 <__kernel_ram_size+0x544>
    4508:	0033      	movs	r3, r6
    450a:	464e      	mov	r6, r9
    450c:	46a1      	mov	r9, r4
    450e:	465c      	mov	r4, fp
    4510:	469b      	mov	fp, r3
    4512:	4653      	mov	r3, sl
    4514:	1b9b      	subs	r3, r3, r6
    4516:	9304      	str	r3, [sp, #16]
    4518:	002e      	movs	r6, r5
    451a:	e519      	b.n	3f50 <__d_vfprintf+0x610>
    451c:	464c      	mov	r4, r9
    451e:	46b3      	mov	fp, r6
    4520:	46b9      	mov	r9, r7
    4522:	2300      	movs	r3, #0
    4524:	9304      	str	r3, [sp, #16]
    4526:	e557      	b.n	3fd8 <__kernel_ram_size+0x28>
    4528:	4659      	mov	r1, fp
    452a:	202e      	movs	r0, #46	@ 0x2e
    452c:	47c8      	blx	r9
    452e:	2800      	cmp	r0, #0
    4530:	da01      	bge.n	4536 <__kernel_ram_size+0x586>
    4532:	f7ff fb6f 	bl	3c14 <__d_vfprintf+0x2d4>
    4536:	464f      	mov	r7, r9
    4538:	2601      	movs	r6, #1
    453a:	46a1      	mov	r9, r4
    453c:	465c      	mov	r4, fp
    453e:	46ab      	mov	fp, r5
    4540:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    4542:	0035      	movs	r5, r6
    4544:	2030      	movs	r0, #48	@ 0x30
    4546:	429e      	cmp	r6, r3
    4548:	da02      	bge.n	4550 <__kernel_ram_size+0x5a0>
    454a:	9b06      	ldr	r3, [sp, #24]
    454c:	199b      	adds	r3, r3, r6
    454e:	7958      	ldrb	r0, [r3, #5]
    4550:	0021      	movs	r1, r4
    4552:	47b8      	blx	r7
    4554:	2800      	cmp	r0, #0
    4556:	da01      	bge.n	455c <__kernel_ram_size+0x5ac>
    4558:	f7ff fb5b 	bl	3c12 <__d_vfprintf+0x2d2>
    455c:	9b03      	ldr	r3, [sp, #12]
    455e:	3601      	adds	r6, #1
    4560:	429e      	cmp	r6, r3
    4562:	dded      	ble.n	4540 <__kernel_ram_size+0x590>
    4564:	0023      	movs	r3, r4
    4566:	464c      	mov	r4, r9
    4568:	46b9      	mov	r9, r7
    456a:	002f      	movs	r7, r5
    456c:	465d      	mov	r5, fp
    456e:	3502      	adds	r5, #2
    4570:	469b      	mov	fp, r3
    4572:	19ee      	adds	r6, r5, r7
    4574:	e544      	b.n	4000 <__kernel_ram_size+0x50>
    4576:	4253      	negs	r3, r2
    4578:	9304      	str	r3, [sp, #16]
    457a:	2328      	movs	r3, #40	@ 0x28
    457c:	782e      	ldrb	r6, [r5, #0]
    457e:	431f      	orrs	r7, r3
    4580:	3401      	adds	r4, #1
    4582:	2e00      	cmp	r6, #0
    4584:	d100      	bne.n	4588 <__kernel_ram_size+0x5d8>
    4586:	e227      	b.n	49d8 <__kernel_ram_size+0xa28>
    4588:	0033      	movs	r3, r6
    458a:	3b30      	subs	r3, #48	@ 0x30
    458c:	2b09      	cmp	r3, #9
    458e:	d801      	bhi.n	4594 <__kernel_ram_size+0x5e4>
    4590:	f7ff fa51 	bl	3a36 <__d_vfprintf+0xf6>
    4594:	0025      	movs	r5, r4
    4596:	2e2a      	cmp	r6, #42	@ 0x2a
    4598:	d001      	beq.n	459e <__kernel_ram_size+0x5ee>
    459a:	f7ff fa65 	bl	3a68 <__d_vfprintf+0x128>
    459e:	f7ff fa31 	bl	3a04 <__d_vfprintf+0xc4>
    45a2:	b280      	uxth	r0, r0
    45a4:	2100      	movs	r1, #0
    45a6:	e710      	b.n	43ca <__kernel_ram_size+0x41a>
    45a8:	2216      	movs	r2, #22
    45aa:	2000      	movs	r0, #0
    45ac:	4397      	bics	r7, r2
    45ae:	2100      	movs	r1, #0
    45b0:	aa10      	add	r2, sp, #64	@ 0x40
    45b2:	46ba      	mov	sl, r7
    45b4:	9206      	str	r2, [sp, #24]
    45b6:	0017      	movs	r7, r2
    45b8:	f7ff f84c 	bl	3654 <__ultoa_invert>
    45bc:	1bc3      	subs	r3, r0, r7
    45be:	4698      	mov	r8, r3
    45c0:	2308      	movs	r3, #8
    45c2:	4652      	mov	r2, sl
    45c4:	4651      	mov	r1, sl
    45c6:	401a      	ands	r2, r3
    45c8:	420b      	tst	r3, r1
    45ca:	d100      	bne.n	45ce <__kernel_ram_size+0x61e>
    45cc:	e177      	b.n	48be <__kernel_ram_size+0x90e>
    45ce:	4642      	mov	r2, r8
    45d0:	9b04      	ldr	r3, [sp, #16]
    45d2:	1a9b      	subs	r3, r3, r2
    45d4:	9304      	str	r3, [sp, #16]
    45d6:	f7ff fb05 	bl	3be4 <__d_vfprintf+0x2a4>
    45da:	aa10      	add	r2, sp, #64	@ 0x40
    45dc:	4690      	mov	r8, r2
    45de:	9206      	str	r2, [sp, #24]
    45e0:	f7ff f838 	bl	3654 <__ultoa_invert>
    45e4:	4642      	mov	r2, r8
    45e6:	1a83      	subs	r3, r0, r2
    45e8:	4698      	mov	r8, r3
    45ea:	4653      	mov	r3, sl
    45ec:	2b00      	cmp	r3, #0
    45ee:	d100      	bne.n	45f2 <__kernel_ram_size+0x642>
    45f0:	e123      	b.n	483a <__kernel_ram_size+0x88a>
    45f2:	2307      	movs	r3, #7
    45f4:	003a      	movs	r2, r7
    45f6:	439a      	bics	r2, r3
    45f8:	4692      	mov	sl, r2
    45fa:	9a03      	ldr	r2, [sp, #12]
    45fc:	4590      	cmp	r8, r2
    45fe:	da00      	bge.n	4602 <__kernel_ram_size+0x652>
    4600:	e10d      	b.n	481e <__kernel_ram_size+0x86e>
    4602:	06fb      	lsls	r3, r7, #27
    4604:	d400      	bmi.n	4608 <__kernel_ram_size+0x658>
    4606:	e13d      	b.n	4884 <__kernel_ram_size+0x8d4>
    4608:	4652      	mov	r2, sl
    460a:	2308      	movs	r3, #8
    460c:	4013      	ands	r3, r2
    460e:	4642      	mov	r2, r8
    4610:	2e00      	cmp	r6, #0
    4612:	d14b      	bne.n	46ac <__kernel_ram_size+0x6fc>
    4614:	3201      	adds	r2, #1
    4616:	2b00      	cmp	r3, #0
    4618:	d100      	bne.n	461c <__kernel_ram_size+0x66c>
    461a:	e122      	b.n	4862 <__kernel_ram_size+0x8b2>
    461c:	9b04      	ldr	r3, [sp, #16]
    461e:	1a9b      	subs	r3, r3, r2
    4620:	9304      	str	r3, [sp, #16]
    4622:	4659      	mov	r1, fp
    4624:	2030      	movs	r0, #48	@ 0x30
    4626:	3501      	adds	r5, #1
    4628:	47c8      	blx	r9
    462a:	2800      	cmp	r0, #0
    462c:	db01      	blt.n	4632 <__kernel_ram_size+0x682>
    462e:	f7ff fad9 	bl	3be4 <__d_vfprintf+0x2a4>
    4632:	f7ff faef 	bl	3c14 <__d_vfprintf+0x2d4>
    4636:	9e03      	ldr	r6, [sp, #12]
    4638:	2380      	movs	r3, #128	@ 0x80
    463a:	019b      	lsls	r3, r3, #6
    463c:	433b      	orrs	r3, r7
    463e:	2766      	movs	r7, #102	@ 0x66
    4640:	9305      	str	r3, [sp, #20]
    4642:	2201      	movs	r2, #1
    4644:	2311      	movs	r3, #17
    4646:	9603      	str	r6, [sp, #12]
    4648:	970b      	str	r7, [sp, #44]	@ 0x2c
    464a:	f7ff fb99 	bl	3d80 <__d_vfprintf+0x440>
    464e:	2606      	movs	r6, #6
    4650:	e7f2      	b.n	4638 <__kernel_ram_size+0x688>
    4652:	4643      	mov	r3, r8
    4654:	3304      	adds	r3, #4
    4656:	da00      	bge.n	465a <__kernel_ram_size+0x6aa>
    4658:	e530      	b.n	40bc <__kernel_ram_size+0x10c>
    465a:	4580      	cmp	r8, r0
    465c:	db00      	blt.n	4660 <__kernel_ram_size+0x6b0>
    465e:	e52d      	b.n	40bc <__kernel_ram_size+0x10c>
    4660:	2380      	movs	r3, #128	@ 0x80
    4662:	9905      	ldr	r1, [sp, #20]
    4664:	019b      	lsls	r3, r3, #6
    4666:	430b      	orrs	r3, r1
    4668:	b29b      	uxth	r3, r3
    466a:	4590      	cmp	r8, r2
    466c:	da00      	bge.n	4670 <__kernel_ram_size+0x6c0>
    466e:	e215      	b.n	4a9c <__kernel_ram_size+0xaec>
    4670:	4642      	mov	r2, r8
    4672:	2f00      	cmp	r7, #0
    4674:	d100      	bne.n	4678 <__kernel_ram_size+0x6c8>
    4676:	e18b      	b.n	4990 <__kernel_ram_size+0x9e0>
    4678:	9804      	ldr	r0, [sp, #16]
    467a:	3202      	adds	r2, #2
    467c:	4290      	cmp	r0, r2
    467e:	dc00      	bgt.n	4682 <__kernel_ram_size+0x6d2>
    4680:	e1d2      	b.n	4a28 <__kernel_ram_size+0xa78>
    4682:	1a82      	subs	r2, r0, r2
    4684:	9204      	str	r2, [sp, #16]
    4686:	9305      	str	r3, [sp, #20]
    4688:	2209      	movs	r2, #9
    468a:	2300      	movs	r3, #0
    468c:	9303      	str	r3, [sp, #12]
    468e:	420a      	tst	r2, r1
    4690:	d000      	beq.n	4694 <__kernel_ram_size+0x6e4>
    4692:	e483      	b.n	3f9c <__d_vfprintf+0x65c>
    4694:	e5b9      	b.n	420a <__kernel_ram_size+0x25a>
    4696:	2301      	movs	r3, #1
    4698:	425b      	negs	r3, r3
    469a:	4660      	mov	r0, ip
    469c:	9209      	str	r2, [sp, #36]	@ 0x24
    469e:	9303      	str	r3, [sp, #12]
    46a0:	e559      	b.n	4156 <__kernel_ram_size+0x1a6>
    46a2:	1d11      	adds	r1, r2, #4
    46a4:	910f      	str	r1, [sp, #60]	@ 0x3c
    46a6:	6810      	ldr	r0, [r2, #0]
    46a8:	2100      	movs	r1, #0
    46aa:	e68e      	b.n	43ca <__kernel_ram_size+0x41a>
    46ac:	3202      	adds	r2, #2
    46ae:	2b00      	cmp	r3, #0
    46b0:	d100      	bne.n	46b4 <__kernel_ram_size+0x704>
    46b2:	e0f1      	b.n	4898 <__kernel_ram_size+0x8e8>
    46b4:	9b04      	ldr	r3, [sp, #16]
    46b6:	1a9b      	subs	r3, r3, r2
    46b8:	9304      	str	r3, [sp, #16]
    46ba:	4659      	mov	r1, fp
    46bc:	2030      	movs	r0, #48	@ 0x30
    46be:	47c8      	blx	r9
    46c0:	2800      	cmp	r0, #0
    46c2:	da01      	bge.n	46c8 <__kernel_ram_size+0x718>
    46c4:	f7ff faa6 	bl	3c14 <__d_vfprintf+0x2d4>
    46c8:	2e00      	cmp	r6, #0
    46ca:	d100      	bne.n	46ce <__kernel_ram_size+0x71e>
    46cc:	e0d7      	b.n	487e <__kernel_ram_size+0x8ce>
    46ce:	4659      	mov	r1, fp
    46d0:	b2f0      	uxtb	r0, r6
    46d2:	3502      	adds	r5, #2
    46d4:	47c8      	blx	r9
    46d6:	2800      	cmp	r0, #0
    46d8:	db01      	blt.n	46de <__kernel_ram_size+0x72e>
    46da:	f7ff fa83 	bl	3be4 <__d_vfprintf+0x2a4>
    46de:	f7ff fa99 	bl	3c14 <__d_vfprintf+0x2d4>
    46e2:	9504      	str	r5, [sp, #16]
    46e4:	4645      	mov	r5, r8
    46e6:	f7ff f983 	bl	39f0 <__d_vfprintf+0xb0>
    46ea:	4659      	mov	r1, fp
    46ec:	9c03      	ldr	r4, [sp, #12]
    46ee:	47c8      	blx	r9
    46f0:	2800      	cmp	r0, #0
    46f2:	da01      	bge.n	46f8 <__kernel_ram_size+0x748>
    46f4:	f7ff fa8e 	bl	3c14 <__d_vfprintf+0x2d4>
    46f8:	9b05      	ldr	r3, [sp, #20]
    46fa:	06db      	lsls	r3, r3, #27
    46fc:	d400      	bmi.n	4700 <__kernel_ram_size+0x750>
    46fe:	e427      	b.n	3f50 <__d_vfprintf+0x610>
    4700:	3701      	adds	r7, #1
    4702:	d000      	beq.n	4706 <__kernel_ram_size+0x756>
    4704:	e424      	b.n	3f50 <__d_vfprintf+0x610>
    4706:	4659      	mov	r1, fp
    4708:	202e      	movs	r0, #46	@ 0x2e
    470a:	1cae      	adds	r6, r5, #2
    470c:	47c8      	blx	r9
    470e:	2800      	cmp	r0, #0
    4710:	db00      	blt.n	4714 <__kernel_ram_size+0x764>
    4712:	e41d      	b.n	3f50 <__d_vfprintf+0x610>
    4714:	f7ff fa7e 	bl	3c14 <__d_vfprintf+0x2d4>
    4718:	aa10      	add	r2, sp, #64	@ 0x40
    471a:	4690      	mov	r8, r2
    471c:	2000      	movs	r0, #0
    471e:	2100      	movs	r1, #0
    4720:	9206      	str	r2, [sp, #24]
    4722:	f7fe ff97 	bl	3654 <__ultoa_invert>
    4726:	4642      	mov	r2, r8
    4728:	1a83      	subs	r3, r0, r2
    472a:	4698      	mov	r8, r3
    472c:	003a      	movs	r2, r7
    472e:	2317      	movs	r3, #23
    4730:	439a      	bics	r2, r3
    4732:	9b03      	ldr	r3, [sp, #12]
    4734:	4692      	mov	sl, r2
    4736:	4598      	cmp	r8, r3
    4738:	db00      	blt.n	473c <__kernel_ram_size+0x78c>
    473a:	e0a3      	b.n	4884 <__kernel_ram_size+0x8d4>
    473c:	2e00      	cmp	r6, #0
    473e:	d000      	beq.n	4742 <__kernel_ram_size+0x792>
    4740:	e18c      	b.n	4a5c <__kernel_ram_size+0xaac>
    4742:	073f      	lsls	r7, r7, #28
    4744:	d400      	bmi.n	4748 <__kernel_ram_size+0x798>
    4746:	e153      	b.n	49f0 <__kernel_ram_size+0xa40>
    4748:	9a04      	ldr	r2, [sp, #16]
    474a:	1ad3      	subs	r3, r2, r3
    474c:	9304      	str	r3, [sp, #16]
    474e:	f7ff fa4e 	bl	3bee <__d_vfprintf+0x2ae>
    4752:	1d1a      	adds	r2, r3, #4
    4754:	920f      	str	r2, [sp, #60]	@ 0x3c
    4756:	681b      	ldr	r3, [r3, #0]
    4758:	05fa      	lsls	r2, r7, #23
    475a:	d53b      	bpl.n	47d4 <__kernel_ram_size+0x824>
    475c:	05ba      	lsls	r2, r7, #22
    475e:	d538      	bpl.n	47d2 <__kernel_ram_size+0x822>
    4760:	b25b      	sxtb	r3, r3
    4762:	930c      	str	r3, [sp, #48]	@ 0x30
    4764:	17db      	asrs	r3, r3, #31
    4766:	930d      	str	r3, [sp, #52]	@ 0x34
    4768:	f7ff f9fe 	bl	3b68 <__d_vfprintf+0x228>
    476c:	4648      	mov	r0, r9
    476e:	2300      	movs	r3, #0
    4770:	46a3      	mov	fp, r4
    4772:	46b9      	mov	r9, r7
    4774:	4644      	mov	r4, r8
    4776:	9304      	str	r3, [sp, #16]
    4778:	2800      	cmp	r0, #0
    477a:	d001      	beq.n	4780 <__kernel_ram_size+0x7d0>
    477c:	f7ff fbc9 	bl	3f12 <__d_vfprintf+0x5d2>
    4780:	f7ff fbcd 	bl	3f1e <__d_vfprintf+0x5de>
    4784:	2100      	movs	r1, #0
    4786:	4250      	negs	r0, r2
    4788:	4199      	sbcs	r1, r3
    478a:	2380      	movs	r3, #128	@ 0x80
    478c:	4652      	mov	r2, sl
    478e:	00db      	lsls	r3, r3, #3
    4790:	4313      	orrs	r3, r2
    4792:	b29b      	uxth	r3, r3
    4794:	469a      	mov	sl, r3
    4796:	ab10      	add	r3, sp, #64	@ 0x40
    4798:	001f      	movs	r7, r3
    479a:	230a      	movs	r3, #10
    479c:	003a      	movs	r2, r7
    479e:	f7fe ff59 	bl	3654 <__ultoa_invert>
    47a2:	1bc3      	subs	r3, r0, r7
    47a4:	4698      	mov	r8, r3
    47a6:	4653      	mov	r3, sl
    47a8:	065b      	lsls	r3, r3, #25
    47aa:	d509      	bpl.n	47c0 <__kernel_ram_size+0x810>
    47ac:	2301      	movs	r3, #1
    47ae:	4652      	mov	r2, sl
    47b0:	439a      	bics	r2, r3
    47b2:	9b03      	ldr	r3, [sp, #12]
    47b4:	4692      	mov	sl, r2
    47b6:	001a      	movs	r2, r3
    47b8:	4543      	cmp	r3, r8
    47ba:	db01      	blt.n	47c0 <__kernel_ram_size+0x810>
    47bc:	f7ff f9f2 	bl	3ba4 <__d_vfprintf+0x264>
    47c0:	4642      	mov	r2, r8
    47c2:	f7ff f9ef 	bl	3ba4 <__d_vfprintf+0x264>
    47c6:	000b      	movs	r3, r1
    47c8:	051b      	lsls	r3, r3, #20
    47ca:	d501      	bpl.n	47d0 <__kernel_ram_size+0x820>
    47cc:	f7ff fb8e 	bl	3eec <__d_vfprintf+0x5ac>
    47d0:	e6a7      	b.n	4522 <__kernel_ram_size+0x572>
    47d2:	b21b      	sxth	r3, r3
    47d4:	930c      	str	r3, [sp, #48]	@ 0x30
    47d6:	17db      	asrs	r3, r3, #31
    47d8:	930d      	str	r3, [sp, #52]	@ 0x34
    47da:	f7ff f9c5 	bl	3b68 <__d_vfprintf+0x228>
    47de:	4653      	mov	r3, sl
    47e0:	07db      	lsls	r3, r3, #31
    47e2:	d400      	bmi.n	47e6 <__kernel_ram_size+0x836>
    47e4:	e080      	b.n	48e8 <__kernel_ram_size+0x938>
    47e6:	4640      	mov	r0, r8
    47e8:	9904      	ldr	r1, [sp, #16]
    47ea:	9003      	str	r0, [sp, #12]
    47ec:	1a8b      	subs	r3, r1, r2
    47ee:	428a      	cmp	r2, r1
    47f0:	da02      	bge.n	47f8 <__kernel_ram_size+0x848>
    47f2:	4443      	add	r3, r8
    47f4:	9303      	str	r3, [sp, #12]
    47f6:	2300      	movs	r3, #0
    47f8:	9304      	str	r3, [sp, #16]
    47fa:	f7ff f9e4 	bl	3bc6 <__d_vfprintf+0x286>
    47fe:	ab10      	add	r3, sp, #64	@ 0x40
    4800:	001f      	movs	r7, r3
    4802:	2000      	movs	r0, #0
    4804:	003a      	movs	r2, r7
    4806:	230a      	movs	r3, #10
    4808:	2100      	movs	r1, #0
    480a:	f7fe ff23 	bl	3654 <__ultoa_invert>
    480e:	1bc2      	subs	r2, r0, r7
    4810:	4690      	mov	r8, r2
    4812:	f7ff f9c7 	bl	3ba4 <__d_vfprintf+0x264>
    4816:	2210      	movs	r2, #16
    4818:	1b9b      	subs	r3, r3, r6
    481a:	4313      	orrs	r3, r2
    481c:	e5c7      	b.n	43ae <__kernel_ram_size+0x3fe>
    481e:	2e00      	cmp	r6, #0
    4820:	d000      	beq.n	4824 <__kernel_ram_size+0x874>
    4822:	e0a1      	b.n	4968 <__kernel_ram_size+0x9b8>
    4824:	073b      	lsls	r3, r7, #28
    4826:	d400      	bmi.n	482a <__kernel_ram_size+0x87a>
    4828:	e0df      	b.n	49ea <__kernel_ram_size+0xa3a>
    482a:	9b04      	ldr	r3, [sp, #16]
    482c:	1a9b      	subs	r3, r3, r2
    482e:	9304      	str	r3, [sp, #16]
    4830:	f7ff f9dd 	bl	3bee <__d_vfprintf+0x2ae>
    4834:	4bb1      	ldr	r3, [pc, #708]	@ (4afc <__kernel_ram_size+0xb4c>)
    4836:	4698      	mov	r8, r3
    4838:	e5ff      	b.n	443a <__kernel_ram_size+0x48a>
    483a:	003a      	movs	r2, r7
    483c:	3306      	adds	r3, #6
    483e:	439a      	bics	r2, r3
    4840:	4692      	mov	sl, r2
    4842:	06ff      	lsls	r7, r7, #27
    4844:	d500      	bpl.n	4848 <__kernel_ram_size+0x898>
    4846:	e6df      	b.n	4608 <__kernel_ram_size+0x658>
    4848:	e6ba      	b.n	45c0 <__kernel_ram_size+0x610>
    484a:	2501      	movs	r5, #1
    484c:	426d      	negs	r5, r5
    484e:	f7ff f9e9 	bl	3c24 <__d_vfprintf+0x2e4>
    4852:	1d1a      	adds	r2, r3, #4
    4854:	681b      	ldr	r3, [r3, #0]
    4856:	920f      	str	r2, [sp, #60]	@ 0x3c
    4858:	930c      	str	r3, [sp, #48]	@ 0x30
    485a:	17db      	asrs	r3, r3, #31
    485c:	930d      	str	r3, [sp, #52]	@ 0x34
    485e:	f7ff f983 	bl	3b68 <__d_vfprintf+0x228>
    4862:	4653      	mov	r3, sl
    4864:	07db      	lsls	r3, r3, #31
    4866:	d400      	bmi.n	486a <__kernel_ram_size+0x8ba>
    4868:	e0aa      	b.n	49c0 <__kernel_ram_size+0xa10>
    486a:	9904      	ldr	r1, [sp, #16]
    486c:	1a8b      	subs	r3, r1, r2
    486e:	428a      	cmp	r2, r1
    4870:	db00      	blt.n	4874 <__kernel_ram_size+0x8c4>
    4872:	e0a1      	b.n	49b8 <__kernel_ram_size+0xa08>
    4874:	4443      	add	r3, r8
    4876:	9303      	str	r3, [sp, #12]
    4878:	2300      	movs	r3, #0
    487a:	9304      	str	r3, [sp, #16]
    487c:	e71d      	b.n	46ba <__kernel_ram_size+0x70a>
    487e:	3501      	adds	r5, #1
    4880:	f7ff f9b0 	bl	3be4 <__d_vfprintf+0x2a4>
    4884:	073f      	lsls	r7, r7, #28
    4886:	d400      	bmi.n	488a <__kernel_ram_size+0x8da>
    4888:	e102      	b.n	4a90 <__kernel_ram_size+0xae0>
    488a:	4642      	mov	r2, r8
    488c:	9b04      	ldr	r3, [sp, #16]
    488e:	1a9b      	subs	r3, r3, r2
    4890:	9304      	str	r3, [sp, #16]
    4892:	002e      	movs	r6, r5
    4894:	9b06      	ldr	r3, [sp, #24]
    4896:	e5af      	b.n	43f8 <__kernel_ram_size+0x448>
    4898:	4653      	mov	r3, sl
    489a:	07db      	lsls	r3, r3, #31
    489c:	d400      	bmi.n	48a0 <__kernel_ram_size+0x8f0>
    489e:	e0ea      	b.n	4a76 <__kernel_ram_size+0xac6>
    48a0:	9904      	ldr	r1, [sp, #16]
    48a2:	1a8b      	subs	r3, r1, r2
    48a4:	428a      	cmp	r2, r1
    48a6:	db00      	blt.n	48aa <__kernel_ram_size+0x8fa>
    48a8:	e086      	b.n	49b8 <__kernel_ram_size+0xa08>
    48aa:	2210      	movs	r2, #16
    48ac:	4443      	add	r3, r8
    48ae:	9303      	str	r3, [sp, #12]
    48b0:	2300      	movs	r3, #0
    48b2:	9304      	str	r3, [sp, #16]
    48b4:	2a00      	cmp	r2, #0
    48b6:	d000      	beq.n	48ba <__kernel_ram_size+0x90a>
    48b8:	e6ff      	b.n	46ba <__kernel_ram_size+0x70a>
    48ba:	f7ff f993 	bl	3be4 <__d_vfprintf+0x2a4>
    48be:	4653      	mov	r3, sl
    48c0:	07db      	lsls	r3, r3, #31
    48c2:	d400      	bmi.n	48c6 <__kernel_ram_size+0x916>
    48c4:	e0de      	b.n	4a84 <__kernel_ram_size+0xad4>
    48c6:	4643      	mov	r3, r8
    48c8:	9904      	ldr	r1, [sp, #16]
    48ca:	1acb      	subs	r3, r1, r3
    48cc:	4588      	cmp	r8, r1
    48ce:	dbed      	blt.n	48ac <__kernel_ram_size+0x8fc>
    48d0:	e7de      	b.n	4890 <__kernel_ram_size+0x8e0>
    48d2:	ab10      	add	r3, sp, #64	@ 0x40
    48d4:	001f      	movs	r7, r3
    48d6:	2000      	movs	r0, #0
    48d8:	230a      	movs	r3, #10
    48da:	003a      	movs	r2, r7
    48dc:	2100      	movs	r1, #0
    48de:	f7fe feb9 	bl	3654 <__ultoa_invert>
    48e2:	1bc3      	subs	r3, r0, r7
    48e4:	4698      	mov	r8, r3
    48e6:	e761      	b.n	47ac <__kernel_ram_size+0x7fc>
    48e8:	9b04      	ldr	r3, [sp, #16]
    48ea:	429a      	cmp	r2, r3
    48ec:	db00      	blt.n	48f0 <__kernel_ram_size+0x940>
    48ee:	e0dc      	b.n	4aaa <__kernel_ram_size+0xafa>
    48f0:	465b      	mov	r3, fp
    48f2:	0017      	movs	r7, r2
    48f4:	9205      	str	r2, [sp, #20]
    48f6:	0022      	movs	r2, r4
    48f8:	46ab      	mov	fp, r5
    48fa:	464c      	mov	r4, r9
    48fc:	9606      	str	r6, [sp, #24]
    48fe:	001d      	movs	r5, r3
    4900:	4691      	mov	r9, r2
    4902:	9e04      	ldr	r6, [sp, #16]
    4904:	e003      	b.n	490e <__kernel_ram_size+0x95e>
    4906:	1c7b      	adds	r3, r7, #1
    4908:	42b3      	cmp	r3, r6
    490a:	da08      	bge.n	491e <__kernel_ram_size+0x96e>
    490c:	001f      	movs	r7, r3
    490e:	0029      	movs	r1, r5
    4910:	2020      	movs	r0, #32
    4912:	47a0      	blx	r4
    4914:	2800      	cmp	r0, #0
    4916:	daf6      	bge.n	4906 <__kernel_ram_size+0x956>
    4918:	46ab      	mov	fp, r5
    491a:	f7ff f97b 	bl	3c14 <__d_vfprintf+0x2d4>
    491e:	0028      	movs	r0, r5
    4920:	465d      	mov	r5, fp
    4922:	9a05      	ldr	r2, [sp, #20]
    4924:	3501      	adds	r5, #1
    4926:	1aad      	subs	r5, r5, r2
    4928:	9a04      	ldr	r2, [sp, #16]
    492a:	4649      	mov	r1, r9
    492c:	1ad3      	subs	r3, r2, r3
    492e:	9304      	str	r3, [sp, #16]
    4930:	4653      	mov	r3, sl
    4932:	46a1      	mov	r9, r4
    4934:	4683      	mov	fp, r0
    4936:	000c      	movs	r4, r1
    4938:	9e06      	ldr	r6, [sp, #24]
    493a:	19ed      	adds	r5, r5, r7
    493c:	06db      	lsls	r3, r3, #27
    493e:	d500      	bpl.n	4942 <__kernel_ram_size+0x992>
    4940:	e6bb      	b.n	46ba <__kernel_ram_size+0x70a>
    4942:	4652      	mov	r2, sl
    4944:	4b6e      	ldr	r3, [pc, #440]	@ (4b00 <__kernel_ram_size+0xb50>)
    4946:	421a      	tst	r2, r3
    4948:	d101      	bne.n	494e <__kernel_ram_size+0x99e>
    494a:	f7ff f94b 	bl	3be4 <__d_vfprintf+0x2a4>
    494e:	f7ff f93a 	bl	3bc6 <__d_vfprintf+0x286>
    4952:	9b04      	ldr	r3, [sp, #16]
    4954:	2b00      	cmp	r3, #0
    4956:	dc00      	bgt.n	495a <__kernel_ram_size+0x9aa>
    4958:	e09c      	b.n	4a94 <__kernel_ram_size+0xae4>
    495a:	2317      	movs	r3, #23
    495c:	439f      	bics	r7, r3
    495e:	2300      	movs	r3, #0
    4960:	46ba      	mov	sl, r7
    4962:	4698      	mov	r8, r3
    4964:	2200      	movs	r2, #0
    4966:	e7c3      	b.n	48f0 <__kernel_ram_size+0x940>
    4968:	06fb      	lsls	r3, r7, #27
    496a:	d576      	bpl.n	4a5a <__kernel_ram_size+0xaaa>
    496c:	3202      	adds	r2, #2
    496e:	073f      	lsls	r7, r7, #28
    4970:	d500      	bpl.n	4974 <__kernel_ram_size+0x9c4>
    4972:	e69f      	b.n	46b4 <__kernel_ram_size+0x704>
    4974:	9b04      	ldr	r3, [sp, #16]
    4976:	429a      	cmp	r2, r3
    4978:	dbba      	blt.n	48f0 <__kernel_ram_size+0x940>
    497a:	9b04      	ldr	r3, [sp, #16]
    497c:	4659      	mov	r1, fp
    497e:	1a9b      	subs	r3, r3, r2
    4980:	2030      	movs	r0, #48	@ 0x30
    4982:	9304      	str	r3, [sp, #16]
    4984:	47c8      	blx	r9
    4986:	2800      	cmp	r0, #0
    4988:	db00      	blt.n	498c <__kernel_ram_size+0x9dc>
    498a:	e6a0      	b.n	46ce <__kernel_ram_size+0x71e>
    498c:	f7ff f942 	bl	3c14 <__d_vfprintf+0x2d4>
    4990:	9904      	ldr	r1, [sp, #16]
    4992:	3201      	adds	r2, #1
    4994:	4291      	cmp	r1, r2
    4996:	dc00      	bgt.n	499a <__kernel_ram_size+0x9ea>
    4998:	e476      	b.n	4288 <__kernel_ram_size+0x2d8>
    499a:	1a8a      	subs	r2, r1, r2
    499c:	9204      	str	r2, [sp, #16]
    499e:	2209      	movs	r2, #9
    49a0:	9905      	ldr	r1, [sp, #20]
    49a2:	9305      	str	r3, [sp, #20]
    49a4:	420a      	tst	r2, r1
    49a6:	d050      	beq.n	4a4a <__kernel_ram_size+0xa9a>
    49a8:	050a      	lsls	r2, r1, #20
    49aa:	d452      	bmi.n	4a52 <__kernel_ram_size+0xaa2>
    49ac:	070a      	lsls	r2, r1, #28
    49ae:	d400      	bmi.n	49b2 <__kernel_ram_size+0xa02>
    49b0:	e08b      	b.n	4aca <__kernel_ram_size+0xb1a>
    49b2:	2300      	movs	r3, #0
    49b4:	9303      	str	r3, [sp, #12]
    49b6:	e472      	b.n	429e <__kernel_ram_size+0x2ee>
    49b8:	9304      	str	r3, [sp, #16]
    49ba:	4643      	mov	r3, r8
    49bc:	9303      	str	r3, [sp, #12]
    49be:	e67c      	b.n	46ba <__kernel_ram_size+0x70a>
    49c0:	9b04      	ldr	r3, [sp, #16]
    49c2:	429a      	cmp	r2, r3
    49c4:	db94      	blt.n	48f0 <__kernel_ram_size+0x940>
    49c6:	1a9b      	subs	r3, r3, r2
    49c8:	9304      	str	r3, [sp, #16]
    49ca:	e62a      	b.n	4622 <__kernel_ram_size+0x672>
    49cc:	2301      	movs	r3, #1
    49ce:	425b      	negs	r3, r3
    49d0:	2200      	movs	r2, #0
    49d2:	9303      	str	r3, [sp, #12]
    49d4:	f7ff fbbf 	bl	4156 <__kernel_ram_size+0x1a6>
    49d8:	4645      	mov	r5, r8
    49da:	2600      	movs	r6, #0
    49dc:	e48e      	b.n	42fc <__kernel_ram_size+0x34c>
    49de:	4645      	mov	r5, r8
    49e0:	2600      	movs	r6, #0
    49e2:	e48b      	b.n	42fc <__kernel_ram_size+0x34c>
    49e4:	980c      	ldr	r0, [sp, #48]	@ 0x30
    49e6:	990d      	ldr	r1, [sp, #52]	@ 0x34
    49e8:	e6d5      	b.n	4796 <__kernel_ram_size+0x7e6>
    49ea:	2317      	movs	r3, #23
    49ec:	439f      	bics	r7, r3
    49ee:	46ba      	mov	sl, r7
    49f0:	2600      	movs	r6, #0
    49f2:	9a03      	ldr	r2, [sp, #12]
    49f4:	9b04      	ldr	r3, [sp, #16]
    49f6:	429a      	cmp	r2, r3
    49f8:	da00      	bge.n	49fc <__kernel_ram_size+0xa4c>
    49fa:	e779      	b.n	48f0 <__kernel_ram_size+0x940>
    49fc:	9b04      	ldr	r3, [sp, #16]
    49fe:	1a9b      	subs	r3, r3, r2
    4a00:	9304      	str	r3, [sp, #16]
    4a02:	f7ff f8ef 	bl	3be4 <__d_vfprintf+0x2a4>
    4a06:	9b04      	ldr	r3, [sp, #16]
    4a08:	4645      	mov	r5, r8
    4a0a:	2b00      	cmp	r3, #0
    4a0c:	d100      	bne.n	4a10 <__kernel_ram_size+0xa60>
    4a0e:	e475      	b.n	42fc <__kernel_ram_size+0x34c>
    4a10:	9b08      	ldr	r3, [sp, #32]
    4a12:	9a04      	ldr	r2, [sp, #16]
    4a14:	9807      	ldr	r0, [sp, #28]
    4a16:	a90f      	add	r1, sp, #60	@ 0x3c
    4a18:	930f      	str	r3, [sp, #60]	@ 0x3c
    4a1a:	f7fe fe45 	bl	36a8 <skip_to_arg>
    4a1e:	e46d      	b.n	42fc <__kernel_ram_size+0x34c>
    4a20:	ab10      	add	r3, sp, #64	@ 0x40
    4a22:	002e      	movs	r6, r5
    4a24:	9306      	str	r3, [sp, #24]
    4a26:	e4e7      	b.n	43f8 <__kernel_ram_size+0x448>
    4a28:	9305      	str	r3, [sp, #20]
    4a2a:	2300      	movs	r3, #0
    4a2c:	9303      	str	r3, [sp, #12]
    4a2e:	9304      	str	r3, [sp, #16]
    4a30:	f7ff fab4 	bl	3f9c <__d_vfprintf+0x65c>
    4a34:	465f      	mov	r7, fp
    4a36:	46a3      	mov	fp, r4
    4a38:	464c      	mov	r4, r9
    4a3a:	46b1      	mov	r9, r6
    4a3c:	2f00      	cmp	r7, #0
    4a3e:	d001      	beq.n	4a44 <__kernel_ram_size+0xa94>
    4a40:	f7ff faaa 	bl	3f98 <__d_vfprintf+0x658>
    4a44:	9704      	str	r7, [sp, #16]
    4a46:	f7ff fab0 	bl	3faa <__d_vfprintf+0x66a>
    4a4a:	2300      	movs	r3, #0
    4a4c:	9303      	str	r3, [sp, #12]
    4a4e:	f7ff fbdc 	bl	420a <__kernel_ram_size+0x25a>
    4a52:	2300      	movs	r3, #0
    4a54:	9303      	str	r3, [sp, #12]
    4a56:	f7ff faab 	bl	3fb0 <__kernel_ram_size>
    4a5a:	9b03      	ldr	r3, [sp, #12]
    4a5c:	2108      	movs	r1, #8
    4a5e:	4652      	mov	r2, sl
    4a60:	4650      	mov	r0, sl
    4a62:	400a      	ands	r2, r1
    4a64:	4208      	tst	r0, r1
    4a66:	d024      	beq.n	4ab2 <__kernel_ram_size+0xb02>
    4a68:	9a04      	ldr	r2, [sp, #16]
    4a6a:	9903      	ldr	r1, [sp, #12]
    4a6c:	9303      	str	r3, [sp, #12]
    4a6e:	1a52      	subs	r2, r2, r1
    4a70:	9204      	str	r2, [sp, #16]
    4a72:	f7ff f8b7 	bl	3be4 <__d_vfprintf+0x2a4>
    4a76:	9b04      	ldr	r3, [sp, #16]
    4a78:	429a      	cmp	r2, r3
    4a7a:	da00      	bge.n	4a7e <__kernel_ram_size+0xace>
    4a7c:	e738      	b.n	48f0 <__kernel_ram_size+0x940>
    4a7e:	1a9b      	subs	r3, r3, r2
    4a80:	9304      	str	r3, [sp, #16]
    4a82:	e61a      	b.n	46ba <__kernel_ram_size+0x70a>
    4a84:	9b04      	ldr	r3, [sp, #16]
    4a86:	4642      	mov	r2, r8
    4a88:	4598      	cmp	r8, r3
    4a8a:	da00      	bge.n	4a8e <__kernel_ram_size+0xade>
    4a8c:	e730      	b.n	48f0 <__kernel_ram_size+0x940>
    4a8e:	e7b6      	b.n	49fe <__kernel_ram_size+0xa4e>
    4a90:	4642      	mov	r2, r8
    4a92:	e7af      	b.n	49f4 <__kernel_ram_size+0xa44>
    4a94:	2300      	movs	r3, #0
    4a96:	4698      	mov	r8, r3
    4a98:	f7ff f8a4 	bl	3be4 <__d_vfprintf+0x2a4>
    4a9c:	0010      	movs	r0, r2
    4a9e:	9305      	str	r3, [sp, #20]
    4aa0:	f7ff fb68 	bl	4174 <__kernel_ram_size+0x1c4>
    4aa4:	9b03      	ldr	r3, [sp, #12]
    4aa6:	9203      	str	r2, [sp, #12]
    4aa8:	e7d8      	b.n	4a5c <__kernel_ram_size+0xaac>
    4aaa:	1a9b      	subs	r3, r3, r2
    4aac:	9304      	str	r3, [sp, #16]
    4aae:	f7ff f88a 	bl	3bc6 <__d_vfprintf+0x286>
    4ab2:	4651      	mov	r1, sl
    4ab4:	07c9      	lsls	r1, r1, #31
    4ab6:	d513      	bpl.n	4ae0 <__kernel_ram_size+0xb30>
    4ab8:	9904      	ldr	r1, [sp, #16]
    4aba:	9803      	ldr	r0, [sp, #12]
    4abc:	1a0b      	subs	r3, r1, r0
    4abe:	4288      	cmp	r0, r1
    4ac0:	da00      	bge.n	4ac4 <__kernel_ram_size+0xb14>
    4ac2:	e6f3      	b.n	48ac <__kernel_ram_size+0x8fc>
    4ac4:	aa10      	add	r2, sp, #64	@ 0x40
    4ac6:	9206      	str	r2, [sp, #24]
    4ac8:	e6e2      	b.n	4890 <__kernel_ram_size+0x8e0>
    4aca:	9703      	str	r7, [sp, #12]
    4acc:	f7ff fbca 	bl	4264 <__kernel_ram_size+0x2b4>
    4ad0:	1c13      	adds	r3, r2, #0
    4ad2:	2a11      	cmp	r2, #17
    4ad4:	d900      	bls.n	4ad8 <__kernel_ram_size+0xb28>
    4ad6:	2311      	movs	r3, #17
    4ad8:	b2db      	uxtb	r3, r3
    4ada:	9705      	str	r7, [sp, #20]
    4adc:	f7ff f94c 	bl	3d78 <__d_vfprintf+0x438>
    4ae0:	9a03      	ldr	r2, [sp, #12]
    4ae2:	9904      	ldr	r1, [sp, #16]
    4ae4:	428a      	cmp	r2, r1
    4ae6:	da02      	bge.n	4aee <__kernel_ram_size+0xb3e>
    4ae8:	9a03      	ldr	r2, [sp, #12]
    4aea:	9303      	str	r3, [sp, #12]
    4aec:	e700      	b.n	48f0 <__kernel_ram_size+0x940>
    4aee:	000a      	movs	r2, r1
    4af0:	9903      	ldr	r1, [sp, #12]
    4af2:	9303      	str	r3, [sp, #12]
    4af4:	1a52      	subs	r2, r2, r1
    4af6:	9204      	str	r2, [sp, #16]
    4af8:	f7ff f874 	bl	3be4 <__d_vfprintf+0x2a4>
    4afc:	00007884 	.word	0x00007884
    4b00:	00000406 	.word	0x00000406

00004b04 <__dtoa_engine>:
    4b04:	b5f0      	push	{r4, r5, r6, r7, lr}
    4b06:	4657      	mov	r7, sl
    4b08:	46de      	mov	lr, fp
    4b0a:	464e      	mov	r6, r9
    4b0c:	4645      	mov	r5, r8
    4b0e:	b5e0      	push	{r5, r6, r7, lr}
    4b10:	b0ab      	sub	sp, #172	@ 0xac
    4b12:	9318      	str	r3, [sp, #96]	@ 0x60
    4b14:	ab34      	add	r3, sp, #208	@ 0xd0
    4b16:	781b      	ldrb	r3, [r3, #0]
    4b18:	9216      	str	r2, [sp, #88]	@ 0x58
    4b1a:	9319      	str	r3, [sp, #100]	@ 0x64
    4b1c:	030b      	lsls	r3, r1, #12
    4b1e:	0b1b      	lsrs	r3, r3, #12
    4b20:	9303      	str	r3, [sp, #12]
    4b22:	0d0b      	lsrs	r3, r1, #20
    4b24:	469a      	mov	sl, r3
    4b26:	055b      	lsls	r3, r3, #21
    4b28:	0d5a      	lsrs	r2, r3, #21
    4b2a:	4694      	mov	ip, r2
    4b2c:	0fca      	lsrs	r2, r1, #31
    4b2e:	9002      	str	r0, [sp, #8]
    4b30:	9217      	str	r2, [sp, #92]	@ 0x5c
    4b32:	2b00      	cmp	r3, #0
    4b34:	d000      	beq.n	4b38 <__dtoa_engine+0x34>
    4b36:	e131      	b.n	4d9c <__dtoa_engine+0x298>
    4b38:	9a02      	ldr	r2, [sp, #8]
    4b3a:	9b03      	ldr	r3, [sp, #12]
    4b3c:	0011      	movs	r1, r2
    4b3e:	4319      	orrs	r1, r3
    4b40:	1e0b      	subs	r3, r1, #0
    4b42:	d100      	bne.n	4b46 <__dtoa_engine+0x42>
    4b44:	e312      	b.n	516c <__dtoa_engine+0x668>
    4b46:	9902      	ldr	r1, [sp, #8]
    4b48:	9a03      	ldr	r2, [sp, #12]
    4b4a:	2301      	movs	r3, #1
    4b4c:	4018      	ands	r0, r3
    4b4e:	901b      	str	r0, [sp, #108]	@ 0x6c
    4b50:	0f8b      	lsrs	r3, r1, #30
    4b52:	0090      	lsls	r0, r2, #2
    4b54:	4318      	orrs	r0, r3
    4b56:	008b      	lsls	r3, r1, #2
    4b58:	9306      	str	r3, [sp, #24]
    4b5a:	2301      	movs	r3, #1
    4b5c:	469b      	mov	fp, r3
    4b5e:	9312      	str	r3, [sp, #72]	@ 0x48
    4b60:	4b97      	ldr	r3, [pc, #604]	@ (4dc0 <__dtoa_engine+0x2bc>)
    4b62:	9007      	str	r0, [sp, #28]
    4b64:	4699      	mov	r9, r3
    4b66:	4b97      	ldr	r3, [pc, #604]	@ (4dc4 <__dtoa_engine+0x2c0>)
    4b68:	4698      	mov	r8, r3
    4b6a:	2301      	movs	r3, #1
    4b6c:	001f      	movs	r7, r3
    4b6e:	4648      	mov	r0, r9
    4b70:	f000 fdd2 	bl	5718 <__log10Pow5>
    4b74:	465b      	mov	r3, fp
    4b76:	1ac3      	subs	r3, r0, r3
    4b78:	469b      	mov	fp, r3
    4b7a:	4643      	mov	r3, r8
    4b7c:	445b      	add	r3, fp
    4b7e:	465a      	mov	r2, fp
    4b80:	931a      	str	r3, [sp, #104]	@ 0x68
    4b82:	464b      	mov	r3, r9
    4b84:	1a9b      	subs	r3, r3, r2
    4b86:	0018      	movs	r0, r3
    4b88:	4699      	mov	r9, r3
    4b8a:	f000 fdcb 	bl	5724 <__pow5bits>
    4b8e:	465b      	mov	r3, fp
    4b90:	387d      	subs	r0, #125	@ 0x7d
    4b92:	1a1b      	subs	r3, r3, r0
    4b94:	469a      	mov	sl, r3
    4b96:	ab26      	add	r3, sp, #152	@ 0x98
    4b98:	0019      	movs	r1, r3
    4b9a:	4648      	mov	r0, r9
    4b9c:	4698      	mov	r8, r3
    4b9e:	f000 fe61 	bl	5864 <__double_computePow5>
    4ba2:	9b02      	ldr	r3, [sp, #8]
    4ba4:	9c03      	ldr	r4, [sp, #12]
    4ba6:	18db      	adds	r3, r3, r3
    4ba8:	4164      	adcs	r4, r4
    4baa:	0025      	movs	r5, r4
    4bac:	001c      	movs	r4, r3
    4bae:	9a26      	ldr	r2, [sp, #152]	@ 0x98
    4bb0:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    4bb2:	a922      	add	r1, sp, #136	@ 0x88
    4bb4:	0020      	movs	r0, r4
    4bb6:	9100      	str	r1, [sp, #0]
    4bb8:	0029      	movs	r1, r5
    4bba:	f000 ff69 	bl	5a90 <__umul128>
    4bbe:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
    4bc0:	9b29      	ldr	r3, [sp, #164]	@ 0xa4
    4bc2:	910b      	str	r1, [sp, #44]	@ 0x2c
    4bc4:	a924      	add	r1, sp, #144	@ 0x90
    4bc6:	900a      	str	r0, [sp, #40]	@ 0x28
    4bc8:	9100      	str	r1, [sp, #0]
    4bca:	0020      	movs	r0, r4
    4bcc:	0029      	movs	r1, r5
    4bce:	f000 ff5f 	bl	5a90 <__umul128>
    4bd2:	9a22      	ldr	r2, [sp, #136]	@ 0x88
    4bd4:	9b23      	ldr	r3, [sp, #140]	@ 0x8c
    4bd6:	1880      	adds	r0, r0, r2
    4bd8:	4159      	adcs	r1, r3
    4bda:	0004      	movs	r4, r0
    4bdc:	000d      	movs	r5, r1
    4bde:	2001      	movs	r0, #1
    4be0:	2100      	movs	r1, #0
    4be2:	9402      	str	r4, [sp, #8]
    4be4:	9503      	str	r5, [sp, #12]
    4be6:	42ab      	cmp	r3, r5
    4be8:	d804      	bhi.n	4bf4 <__dtoa_engine+0xf0>
    4bea:	d101      	bne.n	4bf0 <__dtoa_engine+0xec>
    4bec:	f000 fd40 	bl	5670 <__dtoa_engine+0xb6c>
    4bf0:	2000      	movs	r0, #0
    4bf2:	2100      	movs	r1, #0
    4bf4:	9a24      	ldr	r2, [sp, #144]	@ 0x90
    4bf6:	9b25      	ldr	r3, [sp, #148]	@ 0x94
    4bf8:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    4bfa:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
    4bfc:	1880      	adds	r0, r0, r2
    4bfe:	4159      	adcs	r1, r3
    4c00:	9a26      	ldr	r2, [sp, #152]	@ 0x98
    4c02:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    4c04:	1912      	adds	r2, r2, r4
    4c06:	416b      	adcs	r3, r5
    4c08:	9008      	str	r0, [sp, #32]
    4c0a:	9109      	str	r1, [sp, #36]	@ 0x24
    4c0c:	9024      	str	r0, [sp, #144]	@ 0x90
    4c0e:	9125      	str	r1, [sp, #148]	@ 0x94
    4c10:	2001      	movs	r0, #1
    4c12:	2100      	movs	r1, #0
    4c14:	429d      	cmp	r5, r3
    4c16:	d804      	bhi.n	4c22 <__dtoa_engine+0x11e>
    4c18:	d101      	bne.n	4c1e <__dtoa_engine+0x11a>
    4c1a:	f000 fd03 	bl	5624 <__dtoa_engine+0xb20>
    4c1e:	2000      	movs	r0, #0
    4c20:	2100      	movs	r1, #0
    4c22:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
    4c24:	9b29      	ldr	r3, [sp, #164]	@ 0xa4
    4c26:	9c02      	ldr	r4, [sp, #8]
    4c28:	9d03      	ldr	r5, [sp, #12]
    4c2a:	1912      	adds	r2, r2, r4
    4c2c:	416b      	adcs	r3, r5
    4c2e:	1880      	adds	r0, r0, r2
    4c30:	4159      	adcs	r1, r3
    4c32:	2341      	movs	r3, #65	@ 0x41
    4c34:	425b      	negs	r3, r3
    4c36:	4453      	add	r3, sl
    4c38:	4699      	mov	r9, r3
    4c3a:	2201      	movs	r2, #1
    4c3c:	2300      	movs	r3, #0
    4c3e:	428d      	cmp	r5, r1
    4c40:	d804      	bhi.n	4c4c <__dtoa_engine+0x148>
    4c42:	d101      	bne.n	4c48 <__dtoa_engine+0x144>
    4c44:	f000 fd0d 	bl	5662 <__dtoa_engine+0xb5e>
    4c48:	2200      	movs	r2, #0
    4c4a:	2300      	movs	r3, #0
    4c4c:	9c08      	ldr	r4, [sp, #32]
    4c4e:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4c50:	1912      	adds	r2, r2, r4
    4c52:	416b      	adcs	r3, r5
    4c54:	464c      	mov	r4, r9
    4c56:	9400      	str	r4, [sp, #0]
    4c58:	f000 ff5c 	bl	5b14 <__shiftright128>
    4c5c:	9b24      	ldr	r3, [sp, #144]	@ 0x90
    4c5e:	9c25      	ldr	r4, [sp, #148]	@ 0x94
    4c60:	930c      	str	r3, [sp, #48]	@ 0x30
    4c62:	940d      	str	r4, [sp, #52]	@ 0x34
    4c64:	9b26      	ldr	r3, [sp, #152]	@ 0x98
    4c66:	9004      	str	r0, [sp, #16]
    4c68:	9310      	str	r3, [sp, #64]	@ 0x40
    4c6a:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    4c6c:	9105      	str	r1, [sp, #20]
    4c6e:	930e      	str	r3, [sp, #56]	@ 0x38
    4c70:	9828      	ldr	r0, [sp, #160]	@ 0xa0
    4c72:	9929      	ldr	r1, [sp, #164]	@ 0xa4
    4c74:	2f01      	cmp	r7, #1
    4c76:	d100      	bne.n	4c7a <__dtoa_engine+0x176>
    4c78:	e292      	b.n	51a0 <__dtoa_engine+0x69c>
    4c7a:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    4c7c:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
    4c7e:	9e02      	ldr	r6, [sp, #8]
    4c80:	9f03      	ldr	r7, [sp, #12]
    4c82:	0022      	movs	r2, r4
    4c84:	002b      	movs	r3, r5
    4c86:	1912      	adds	r2, r2, r4
    4c88:	416b      	adcs	r3, r5
    4c8a:	469c      	mov	ip, r3
    4c8c:	9213      	str	r2, [sp, #76]	@ 0x4c
    4c8e:	003b      	movs	r3, r7
    4c90:	0032      	movs	r2, r6
    4c92:	1992      	adds	r2, r2, r6
    4c94:	417b      	adcs	r3, r7
    4c96:	9208      	str	r2, [sp, #32]
    4c98:	9309      	str	r3, [sp, #36]	@ 0x24
    4c9a:	2201      	movs	r2, #1
    4c9c:	2300      	movs	r3, #0
    4c9e:	4565      	cmp	r5, ip
    4ca0:	d804      	bhi.n	4cac <__dtoa_engine+0x1a8>
    4ca2:	d101      	bne.n	4ca8 <__dtoa_engine+0x1a4>
    4ca4:	f000 fc99 	bl	55da <__dtoa_engine+0xad6>
    4ca8:	2200      	movs	r2, #0
    4caa:	2300      	movs	r3, #0
    4cac:	9c08      	ldr	r4, [sp, #32]
    4cae:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4cb0:	18a4      	adds	r4, r4, r2
    4cb2:	415d      	adcs	r5, r3
    4cb4:	9408      	str	r4, [sp, #32]
    4cb6:	9509      	str	r5, [sp, #36]	@ 0x24
    4cb8:	9c0e      	ldr	r4, [sp, #56]	@ 0x38
    4cba:	2201      	movs	r2, #1
    4cbc:	2300      	movs	r3, #0
    4cbe:	4564      	cmp	r4, ip
    4cc0:	d804      	bhi.n	4ccc <__dtoa_engine+0x1c8>
    4cc2:	d101      	bne.n	4cc8 <__dtoa_engine+0x1c4>
    4cc4:	f000 fc81 	bl	55ca <__dtoa_engine+0xac6>
    4cc8:	2200      	movs	r2, #0
    4cca:	2300      	movs	r3, #0
    4ccc:	9c08      	ldr	r4, [sp, #32]
    4cce:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4cd0:	0026      	movs	r6, r4
    4cd2:	002f      	movs	r7, r5
    4cd4:	1ab6      	subs	r6, r6, r2
    4cd6:	419f      	sbcs	r7, r3
    4cd8:	0032      	movs	r2, r6
    4cda:	003b      	movs	r3, r7
    4cdc:	9e02      	ldr	r6, [sp, #8]
    4cde:	9f03      	ldr	r7, [sp, #12]
    4ce0:	1a12      	subs	r2, r2, r0
    4ce2:	418b      	sbcs	r3, r1
    4ce4:	980c      	ldr	r0, [sp, #48]	@ 0x30
    4ce6:	990d      	ldr	r1, [sp, #52]	@ 0x34
    4ce8:	1800      	adds	r0, r0, r0
    4cea:	4149      	adcs	r1, r1
    4cec:	920a      	str	r2, [sp, #40]	@ 0x28
    4cee:	930b      	str	r3, [sp, #44]	@ 0x2c
    4cf0:	900c      	str	r0, [sp, #48]	@ 0x30
    4cf2:	910d      	str	r1, [sp, #52]	@ 0x34
    4cf4:	2201      	movs	r2, #1
    4cf6:	2300      	movs	r3, #0
    4cf8:	42af      	cmp	r7, r5
    4cfa:	d804      	bhi.n	4d06 <__dtoa_engine+0x202>
    4cfc:	d101      	bne.n	4d02 <__dtoa_engine+0x1fe>
    4cfe:	f000 fc5c 	bl	55ba <__dtoa_engine+0xab6>
    4d02:	2200      	movs	r2, #0
    4d04:	2300      	movs	r3, #0
    4d06:	980c      	ldr	r0, [sp, #48]	@ 0x30
    4d08:	990d      	ldr	r1, [sp, #52]	@ 0x34
    4d0a:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
    4d0c:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
    4d0e:	9c08      	ldr	r4, [sp, #32]
    4d10:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4d12:	1880      	adds	r0, r0, r2
    4d14:	4159      	adcs	r1, r3
    4d16:	900c      	str	r0, [sp, #48]	@ 0x30
    4d18:	910d      	str	r1, [sp, #52]	@ 0x34
    4d1a:	2001      	movs	r0, #1
    4d1c:	2100      	movs	r1, #0
    4d1e:	42af      	cmp	r7, r5
    4d20:	d804      	bhi.n	4d2c <__dtoa_engine+0x228>
    4d22:	d101      	bne.n	4d28 <__dtoa_engine+0x224>
    4d24:	f000 fc41 	bl	55aa <__dtoa_engine+0xaa6>
    4d28:	2000      	movs	r0, #0
    4d2a:	2100      	movs	r1, #0
    4d2c:	9a0c      	ldr	r2, [sp, #48]	@ 0x30
    4d2e:	9b0d      	ldr	r3, [sp, #52]	@ 0x34
    4d30:	1a12      	subs	r2, r2, r0
    4d32:	418b      	sbcs	r3, r1
    4d34:	4651      	mov	r1, sl
    4d36:	3940      	subs	r1, #64	@ 0x40
    4d38:	9100      	str	r1, [sp, #0]
    4d3a:	980a      	ldr	r0, [sp, #40]	@ 0x28
    4d3c:	990b      	ldr	r1, [sp, #44]	@ 0x2c
    4d3e:	f000 fee9 	bl	5b14 <__shiftright128>
    4d42:	4682      	mov	sl, r0
    4d44:	9108      	str	r1, [sp, #32]
    4d46:	4649      	mov	r1, r9
    4d48:	9a24      	ldr	r2, [sp, #144]	@ 0x90
    4d4a:	9b25      	ldr	r3, [sp, #148]	@ 0x94
    4d4c:	9100      	str	r1, [sp, #0]
    4d4e:	9802      	ldr	r0, [sp, #8]
    4d50:	9903      	ldr	r1, [sp, #12]
    4d52:	f000 fedf 	bl	5b14 <__shiftright128>
    4d56:	465b      	mov	r3, fp
    4d58:	9014      	str	r0, [sp, #80]	@ 0x50
    4d5a:	9115      	str	r1, [sp, #84]	@ 0x54
    4d5c:	2b01      	cmp	r3, #1
    4d5e:	d800      	bhi.n	4d62 <__dtoa_engine+0x25e>
    4d60:	e390      	b.n	5484 <__dtoa_engine+0x980>
    4d62:	2b3e      	cmp	r3, #62	@ 0x3e
    4d64:	d900      	bls.n	4d68 <__dtoa_engine+0x264>
    4d66:	e14c      	b.n	5002 <__dtoa_engine+0x4fe>
    4d68:	465a      	mov	r2, fp
    4d6a:	3a20      	subs	r2, #32
    4d6c:	d501      	bpl.n	4d72 <__dtoa_engine+0x26e>
    4d6e:	f000 fc10 	bl	5592 <__dtoa_engine+0xa8e>
    4d72:	2301      	movs	r3, #1
    4d74:	425b      	negs	r3, r3
    4d76:	4093      	lsls	r3, r2
    4d78:	2201      	movs	r2, #1
    4d7a:	4659      	mov	r1, fp
    4d7c:	4252      	negs	r2, r2
    4d7e:	408a      	lsls	r2, r1
    4d80:	9806      	ldr	r0, [sp, #24]
    4d82:	9907      	ldr	r1, [sp, #28]
    4d84:	0004      	movs	r4, r0
    4d86:	4399      	bics	r1, r3
    4d88:	000b      	movs	r3, r1
    4d8a:	4394      	bics	r4, r2
    4d8c:	4323      	orrs	r3, r4
    4d8e:	425a      	negs	r2, r3
    4d90:	4153      	adcs	r3, r2
    4d92:	b2db      	uxtb	r3, r3
    4d94:	930c      	str	r3, [sp, #48]	@ 0x30
    4d96:	2300      	movs	r3, #0
    4d98:	9312      	str	r3, [sp, #72]	@ 0x48
    4d9a:	e135      	b.n	5008 <__dtoa_engine+0x504>
    4d9c:	4b0a      	ldr	r3, [pc, #40]	@ (4dc8 <__dtoa_engine+0x2c4>)
    4d9e:	459c      	cmp	ip, r3
    4da0:	d114      	bne.n	4dcc <__dtoa_engine+0x2c8>
    4da2:	9a02      	ldr	r2, [sp, #8]
    4da4:	9b03      	ldr	r3, [sp, #12]
    4da6:	0011      	movs	r1, r2
    4da8:	4319      	orrs	r1, r3
    4daa:	d100      	bne.n	4dae <__dtoa_engine+0x2aa>
    4dac:	e1ee      	b.n	518c <__dtoa_engine+0x688>
    4dae:	2308      	movs	r3, #8
    4db0:	9a17      	ldr	r2, [sp, #92]	@ 0x5c
    4db2:	431a      	orrs	r2, r3
    4db4:	0013      	movs	r3, r2
    4db6:	9a16      	ldr	r2, [sp, #88]	@ 0x58
    4db8:	2000      	movs	r0, #0
    4dba:	7113      	strb	r3, [r2, #4]
    4dbc:	e1df      	b.n	517e <__dtoa_engine+0x67a>
    4dbe:	46c0      	nop			@ (mov r8, r8)
    4dc0:	00000434 	.word	0x00000434
    4dc4:	fffffbcc 	.word	0xfffffbcc
    4dc8:	000007ff 	.word	0x000007ff
    4dcc:	2180      	movs	r1, #128	@ 0x80
    4dce:	9e02      	ldr	r6, [sp, #8]
    4dd0:	9f03      	ldr	r7, [sp, #12]
    4dd2:	4bd2      	ldr	r3, [pc, #840]	@ (511c <__dtoa_engine+0x618>)
    4dd4:	0349      	lsls	r1, r1, #13
    4dd6:	4463      	add	r3, ip
    4dd8:	4339      	orrs	r1, r7
    4dda:	4698      	mov	r8, r3
    4ddc:	000b      	movs	r3, r1
    4dde:	2101      	movs	r1, #1
    4de0:	0034      	movs	r4, r6
    4de2:	4001      	ands	r1, r0
    4de4:	911b      	str	r1, [sp, #108]	@ 0x6c
    4de6:	0fb0      	lsrs	r0, r6, #30
    4de8:	0099      	lsls	r1, r3, #2
    4dea:	4301      	orrs	r1, r0
    4dec:	9107      	str	r1, [sp, #28]
    4dee:	00b1      	lsls	r1, r6, #2
    4df0:	0032      	movs	r2, r6
    4df2:	9106      	str	r1, [sp, #24]
    4df4:	433c      	orrs	r4, r7
    4df6:	d000      	beq.n	4dfa <__dtoa_engine+0x2f6>
    4df8:	e1cd      	b.n	5196 <__dtoa_engine+0x692>
    4dfa:	4651      	mov	r1, sl
    4dfc:	48c8      	ldr	r0, [pc, #800]	@ (5120 <__dtoa_engine+0x61c>)
    4dfe:	4001      	ands	r1, r0
    4e00:	4248      	negs	r0, r1
    4e02:	4141      	adcs	r1, r0
    4e04:	b2c9      	uxtb	r1, r1
    4e06:	000f      	movs	r7, r1
    4e08:	9112      	str	r1, [sp, #72]	@ 0x48
    4e0a:	910c      	str	r1, [sp, #48]	@ 0x30
    4e0c:	0010      	movs	r0, r2
    4e0e:	0019      	movs	r1, r3
    4e10:	1880      	adds	r0, r0, r2
    4e12:	4159      	adcs	r1, r3
    4e14:	000d      	movs	r5, r1
    4e16:	4641      	mov	r1, r8
    4e18:	0004      	movs	r4, r0
    4e1a:	2900      	cmp	r1, #0
    4e1c:	da01      	bge.n	4e22 <__dtoa_engine+0x31e>
    4e1e:	f000 fc4d 	bl	56bc <__dtoa_engine+0xbb8>
    4e22:	4640      	mov	r0, r8
    4e24:	f000 fc6e 	bl	5704 <__log10Pow2>
    4e28:	4642      	mov	r2, r8
    4e2a:	2301      	movs	r3, #1
    4e2c:	2a03      	cmp	r2, #3
    4e2e:	dc00      	bgt.n	4e32 <__dtoa_engine+0x32e>
    4e30:	2300      	movs	r3, #0
    4e32:	1ac3      	subs	r3, r0, r3
    4e34:	0018      	movs	r0, r3
    4e36:	4699      	mov	r9, r3
    4e38:	931a      	str	r3, [sp, #104]	@ 0x68
    4e3a:	f000 fc73 	bl	5724 <__pow5bits>
    4e3e:	4642      	mov	r2, r8
    4e40:	307c      	adds	r0, #124	@ 0x7c
    4e42:	464b      	mov	r3, r9
    4e44:	4682      	mov	sl, r0
    4e46:	1a9b      	subs	r3, r3, r2
    4e48:	449a      	add	sl, r3
    4e4a:	ab26      	add	r3, sp, #152	@ 0x98
    4e4c:	0019      	movs	r1, r3
    4e4e:	4648      	mov	r0, r9
    4e50:	4698      	mov	r8, r3
    4e52:	f000 fd99 	bl	5988 <__double_computeInvPow5>
    4e56:	9a26      	ldr	r2, [sp, #152]	@ 0x98
    4e58:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    4e5a:	a922      	add	r1, sp, #136	@ 0x88
    4e5c:	9100      	str	r1, [sp, #0]
    4e5e:	0020      	movs	r0, r4
    4e60:	0029      	movs	r1, r5
    4e62:	f000 fe15 	bl	5a90 <__umul128>
    4e66:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
    4e68:	9b29      	ldr	r3, [sp, #164]	@ 0xa4
    4e6a:	9109      	str	r1, [sp, #36]	@ 0x24
    4e6c:	a924      	add	r1, sp, #144	@ 0x90
    4e6e:	9008      	str	r0, [sp, #32]
    4e70:	9100      	str	r1, [sp, #0]
    4e72:	0020      	movs	r0, r4
    4e74:	0029      	movs	r1, r5
    4e76:	f000 fe0b 	bl	5a90 <__umul128>
    4e7a:	9a22      	ldr	r2, [sp, #136]	@ 0x88
    4e7c:	9b23      	ldr	r3, [sp, #140]	@ 0x8c
    4e7e:	1880      	adds	r0, r0, r2
    4e80:	4159      	adcs	r1, r3
    4e82:	0005      	movs	r5, r0
    4e84:	000e      	movs	r6, r1
    4e86:	2001      	movs	r0, #1
    4e88:	2100      	movs	r1, #0
    4e8a:	9502      	str	r5, [sp, #8]
    4e8c:	9603      	str	r6, [sp, #12]
    4e8e:	42b3      	cmp	r3, r6
    4e90:	d803      	bhi.n	4e9a <__dtoa_engine+0x396>
    4e92:	d100      	bne.n	4e96 <__dtoa_engine+0x392>
    4e94:	e33d      	b.n	5512 <__dtoa_engine+0xa0e>
    4e96:	2000      	movs	r0, #0
    4e98:	2100      	movs	r1, #0
    4e9a:	9a24      	ldr	r2, [sp, #144]	@ 0x90
    4e9c:	9b25      	ldr	r3, [sp, #148]	@ 0x94
    4e9e:	9d08      	ldr	r5, [sp, #32]
    4ea0:	9e09      	ldr	r6, [sp, #36]	@ 0x24
    4ea2:	1880      	adds	r0, r0, r2
    4ea4:	4159      	adcs	r1, r3
    4ea6:	9a26      	ldr	r2, [sp, #152]	@ 0x98
    4ea8:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    4eaa:	900a      	str	r0, [sp, #40]	@ 0x28
    4eac:	910b      	str	r1, [sp, #44]	@ 0x2c
    4eae:	9024      	str	r0, [sp, #144]	@ 0x90
    4eb0:	9125      	str	r1, [sp, #148]	@ 0x94
    4eb2:	0028      	movs	r0, r5
    4eb4:	0031      	movs	r1, r6
    4eb6:	1812      	adds	r2, r2, r0
    4eb8:	414b      	adcs	r3, r1
    4eba:	2001      	movs	r0, #1
    4ebc:	2100      	movs	r1, #0
    4ebe:	429e      	cmp	r6, r3
    4ec0:	d803      	bhi.n	4eca <__dtoa_engine+0x3c6>
    4ec2:	d100      	bne.n	4ec6 <__dtoa_engine+0x3c2>
    4ec4:	e32a      	b.n	551c <__dtoa_engine+0xa18>
    4ec6:	2000      	movs	r0, #0
    4ec8:	2100      	movs	r1, #0
    4eca:	9a28      	ldr	r2, [sp, #160]	@ 0xa0
    4ecc:	9b29      	ldr	r3, [sp, #164]	@ 0xa4
    4ece:	9c02      	ldr	r4, [sp, #8]
    4ed0:	9d03      	ldr	r5, [sp, #12]
    4ed2:	1912      	adds	r2, r2, r4
    4ed4:	416b      	adcs	r3, r5
    4ed6:	1880      	adds	r0, r0, r2
    4ed8:	4159      	adcs	r1, r3
    4eda:	2341      	movs	r3, #65	@ 0x41
    4edc:	425b      	negs	r3, r3
    4ede:	4453      	add	r3, sl
    4ee0:	469b      	mov	fp, r3
    4ee2:	2201      	movs	r2, #1
    4ee4:	2300      	movs	r3, #0
    4ee6:	428d      	cmp	r5, r1
    4ee8:	d803      	bhi.n	4ef2 <__dtoa_engine+0x3ee>
    4eea:	d100      	bne.n	4eee <__dtoa_engine+0x3ea>
    4eec:	e31b      	b.n	5526 <__dtoa_engine+0xa22>
    4eee:	2200      	movs	r2, #0
    4ef0:	2300      	movs	r3, #0
    4ef2:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    4ef4:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
    4ef6:	1912      	adds	r2, r2, r4
    4ef8:	416b      	adcs	r3, r5
    4efa:	465c      	mov	r4, fp
    4efc:	9400      	str	r4, [sp, #0]
    4efe:	f000 fe09 	bl	5b14 <__shiftright128>
    4f02:	9b26      	ldr	r3, [sp, #152]	@ 0x98
    4f04:	9004      	str	r0, [sp, #16]
    4f06:	9312      	str	r3, [sp, #72]	@ 0x48
    4f08:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    4f0a:	9105      	str	r1, [sp, #20]
    4f0c:	930e      	str	r3, [sp, #56]	@ 0x38
    4f0e:	9b28      	ldr	r3, [sp, #160]	@ 0xa0
    4f10:	9c29      	ldr	r4, [sp, #164]	@ 0xa4
    4f12:	930a      	str	r3, [sp, #40]	@ 0x28
    4f14:	940b      	str	r4, [sp, #44]	@ 0x2c
    4f16:	9824      	ldr	r0, [sp, #144]	@ 0x90
    4f18:	9925      	ldr	r1, [sp, #148]	@ 0x94
    4f1a:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
    4f1c:	2b01      	cmp	r3, #1
    4f1e:	d100      	bne.n	4f22 <__dtoa_engine+0x41e>
    4f20:	e24a      	b.n	53b8 <__dtoa_engine+0x8b4>
    4f22:	9c08      	ldr	r4, [sp, #32]
    4f24:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4f26:	9e02      	ldr	r6, [sp, #8]
    4f28:	9f03      	ldr	r7, [sp, #12]
    4f2a:	0022      	movs	r2, r4
    4f2c:	002b      	movs	r3, r5
    4f2e:	1912      	adds	r2, r2, r4
    4f30:	416b      	adcs	r3, r5
    4f32:	469c      	mov	ip, r3
    4f34:	9213      	str	r2, [sp, #76]	@ 0x4c
    4f36:	003b      	movs	r3, r7
    4f38:	0032      	movs	r2, r6
    4f3a:	1992      	adds	r2, r2, r6
    4f3c:	417b      	adcs	r3, r7
    4f3e:	9210      	str	r2, [sp, #64]	@ 0x40
    4f40:	9311      	str	r3, [sp, #68]	@ 0x44
    4f42:	2201      	movs	r2, #1
    4f44:	2300      	movs	r3, #0
    4f46:	4565      	cmp	r5, ip
    4f48:	d803      	bhi.n	4f52 <__dtoa_engine+0x44e>
    4f4a:	d100      	bne.n	4f4e <__dtoa_engine+0x44a>
    4f4c:	e371      	b.n	5632 <__dtoa_engine+0xb2e>
    4f4e:	2200      	movs	r2, #0
    4f50:	2300      	movs	r3, #0
    4f52:	9c10      	ldr	r4, [sp, #64]	@ 0x40
    4f54:	9d11      	ldr	r5, [sp, #68]	@ 0x44
    4f56:	18a4      	adds	r4, r4, r2
    4f58:	415d      	adcs	r5, r3
    4f5a:	9408      	str	r4, [sp, #32]
    4f5c:	9509      	str	r5, [sp, #36]	@ 0x24
    4f5e:	9c0e      	ldr	r4, [sp, #56]	@ 0x38
    4f60:	2201      	movs	r2, #1
    4f62:	2300      	movs	r3, #0
    4f64:	4564      	cmp	r4, ip
    4f66:	d803      	bhi.n	4f70 <__dtoa_engine+0x46c>
    4f68:	d100      	bne.n	4f6c <__dtoa_engine+0x468>
    4f6a:	e374      	b.n	5656 <__dtoa_engine+0xb52>
    4f6c:	2200      	movs	r2, #0
    4f6e:	2300      	movs	r3, #0
    4f70:	9c08      	ldr	r4, [sp, #32]
    4f72:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4f74:	0026      	movs	r6, r4
    4f76:	002f      	movs	r7, r5
    4f78:	1ab6      	subs	r6, r6, r2
    4f7a:	419f      	sbcs	r7, r3
    4f7c:	0032      	movs	r2, r6
    4f7e:	003b      	movs	r3, r7
    4f80:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
    4f82:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
    4f84:	1800      	adds	r0, r0, r0
    4f86:	4149      	adcs	r1, r1
    4f88:	1b92      	subs	r2, r2, r6
    4f8a:	41bb      	sbcs	r3, r7
    4f8c:	9e02      	ldr	r6, [sp, #8]
    4f8e:	9f03      	ldr	r7, [sp, #12]
    4f90:	920a      	str	r2, [sp, #40]	@ 0x28
    4f92:	930b      	str	r3, [sp, #44]	@ 0x2c
    4f94:	900e      	str	r0, [sp, #56]	@ 0x38
    4f96:	910f      	str	r1, [sp, #60]	@ 0x3c
    4f98:	2201      	movs	r2, #1
    4f9a:	2300      	movs	r3, #0
    4f9c:	42af      	cmp	r7, r5
    4f9e:	d803      	bhi.n	4fa8 <__dtoa_engine+0x4a4>
    4fa0:	d100      	bne.n	4fa4 <__dtoa_engine+0x4a0>
    4fa2:	e352      	b.n	564a <__dtoa_engine+0xb46>
    4fa4:	2200      	movs	r2, #0
    4fa6:	2300      	movs	r3, #0
    4fa8:	980e      	ldr	r0, [sp, #56]	@ 0x38
    4faa:	990f      	ldr	r1, [sp, #60]	@ 0x3c
    4fac:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
    4fae:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
    4fb0:	9c08      	ldr	r4, [sp, #32]
    4fb2:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    4fb4:	1880      	adds	r0, r0, r2
    4fb6:	4159      	adcs	r1, r3
    4fb8:	900e      	str	r0, [sp, #56]	@ 0x38
    4fba:	910f      	str	r1, [sp, #60]	@ 0x3c
    4fbc:	2001      	movs	r0, #1
    4fbe:	2100      	movs	r1, #0
    4fc0:	42af      	cmp	r7, r5
    4fc2:	d803      	bhi.n	4fcc <__dtoa_engine+0x4c8>
    4fc4:	d100      	bne.n	4fc8 <__dtoa_engine+0x4c4>
    4fc6:	e33a      	b.n	563e <__dtoa_engine+0xb3a>
    4fc8:	2000      	movs	r0, #0
    4fca:	2100      	movs	r1, #0
    4fcc:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
    4fce:	9b0f      	ldr	r3, [sp, #60]	@ 0x3c
    4fd0:	1a12      	subs	r2, r2, r0
    4fd2:	418b      	sbcs	r3, r1
    4fd4:	4651      	mov	r1, sl
    4fd6:	3940      	subs	r1, #64	@ 0x40
    4fd8:	9100      	str	r1, [sp, #0]
    4fda:	980a      	ldr	r0, [sp, #40]	@ 0x28
    4fdc:	990b      	ldr	r1, [sp, #44]	@ 0x2c
    4fde:	f000 fd99 	bl	5b14 <__shiftright128>
    4fe2:	4682      	mov	sl, r0
    4fe4:	9108      	str	r1, [sp, #32]
    4fe6:	4659      	mov	r1, fp
    4fe8:	9a24      	ldr	r2, [sp, #144]	@ 0x90
    4fea:	9b25      	ldr	r3, [sp, #148]	@ 0x94
    4fec:	9100      	str	r1, [sp, #0]
    4fee:	9802      	ldr	r0, [sp, #8]
    4ff0:	9903      	ldr	r1, [sp, #12]
    4ff2:	f000 fd8f 	bl	5b14 <__shiftright128>
    4ff6:	464b      	mov	r3, r9
    4ff8:	9014      	str	r0, [sp, #80]	@ 0x50
    4ffa:	9115      	str	r1, [sp, #84]	@ 0x54
    4ffc:	2b15      	cmp	r3, #21
    4ffe:	d800      	bhi.n	5002 <__dtoa_engine+0x4fe>
    5000:	e20e      	b.n	5420 <__dtoa_engine+0x91c>
    5002:	2300      	movs	r3, #0
    5004:	930c      	str	r3, [sp, #48]	@ 0x30
    5006:	9312      	str	r3, [sp, #72]	@ 0x48
    5008:	9b18      	ldr	r3, [sp, #96]	@ 0x60
    500a:	9310      	str	r3, [sp, #64]	@ 0x40
    500c:	9b19      	ldr	r3, [sp, #100]	@ 0x64
    500e:	2b00      	cmp	r3, #0
    5010:	d029      	beq.n	5066 <__dtoa_engine+0x562>
    5012:	9b15      	ldr	r3, [sp, #84]	@ 0x54
    5014:	2b00      	cmp	r3, #0
    5016:	d100      	bne.n	501a <__dtoa_engine+0x516>
    5018:	e33b      	b.n	5692 <__dtoa_engine+0xb8e>
    501a:	9e14      	ldr	r6, [sp, #80]	@ 0x50
    501c:	9f15      	ldr	r7, [sp, #84]	@ 0x54
    501e:	2101      	movs	r1, #1
    5020:	220a      	movs	r2, #10
    5022:	2300      	movs	r3, #0
    5024:	000d      	movs	r5, r1
    5026:	0f94      	lsrs	r4, r2, #30
    5028:	0099      	lsls	r1, r3, #2
    502a:	4321      	orrs	r1, r4
    502c:	0090      	lsls	r0, r2, #2
    502e:	1812      	adds	r2, r2, r0
    5030:	414b      	adcs	r3, r1
    5032:	1892      	adds	r2, r2, r2
    5034:	415b      	adcs	r3, r3
    5036:	3501      	adds	r5, #1
    5038:	42bb      	cmp	r3, r7
    503a:	d802      	bhi.n	5042 <__dtoa_engine+0x53e>
    503c:	d1f3      	bne.n	5026 <__dtoa_engine+0x522>
    503e:	42b2      	cmp	r2, r6
    5040:	d9f1      	bls.n	5026 <__dtoa_engine+0x522>
    5042:	0029      	movs	r1, r5
    5044:	9614      	str	r6, [sp, #80]	@ 0x50
    5046:	9715      	str	r7, [sp, #84]	@ 0x54
    5048:	9b1a      	ldr	r3, [sp, #104]	@ 0x68
    504a:	9a35      	ldr	r2, [sp, #212]	@ 0xd4
    504c:	469c      	mov	ip, r3
    504e:	9b35      	ldr	r3, [sp, #212]	@ 0xd4
    5050:	4461      	add	r1, ip
    5052:	1852      	adds	r2, r2, r1
    5054:	0fdb      	lsrs	r3, r3, #31
    5056:	429a      	cmp	r2, r3
    5058:	da00      	bge.n	505c <__dtoa_engine+0x558>
    505a:	001a      	movs	r2, r3
    505c:	9b18      	ldr	r3, [sp, #96]	@ 0x60
    505e:	9210      	str	r2, [sp, #64]	@ 0x40
    5060:	429a      	cmp	r2, r3
    5062:	dd00      	ble.n	5066 <__dtoa_engine+0x562>
    5064:	9310      	str	r3, [sp, #64]	@ 0x40
    5066:	2300      	movs	r3, #0
    5068:	9e14      	ldr	r6, [sp, #80]	@ 0x50
    506a:	9f15      	ldr	r7, [sp, #84]	@ 0x54
    506c:	930a      	str	r3, [sp, #40]	@ 0x28
    506e:	930e      	str	r3, [sp, #56]	@ 0x38
    5070:	9313      	str	r3, [sp, #76]	@ 0x4c
    5072:	4653      	mov	r3, sl
    5074:	9306      	str	r3, [sp, #24]
    5076:	4643      	mov	r3, r8
    5078:	9302      	str	r3, [sp, #8]
    507a:	9b02      	ldr	r3, [sp, #8]
    507c:	4a29      	ldr	r2, [pc, #164]	@ (5124 <__dtoa_engine+0x620>)
    507e:	9300      	str	r3, [sp, #0]
    5080:	9804      	ldr	r0, [sp, #16]
    5082:	9905      	ldr	r1, [sp, #20]
    5084:	4b28      	ldr	r3, [pc, #160]	@ (5128 <__dtoa_engine+0x624>)
    5086:	f000 fd03 	bl	5a90 <__umul128>
    508a:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    508c:	9926      	ldr	r1, [sp, #152]	@ 0x98
    508e:	075a      	lsls	r2, r3, #29
    5090:	08c9      	lsrs	r1, r1, #3
    5092:	4311      	orrs	r1, r2
    5094:	08da      	lsrs	r2, r3, #3
    5096:	4693      	mov	fp, r2
    5098:	9b02      	ldr	r3, [sp, #8]
    509a:	4a22      	ldr	r2, [pc, #136]	@ (5124 <__dtoa_engine+0x620>)
    509c:	9300      	str	r3, [sp, #0]
    509e:	468a      	mov	sl, r1
    50a0:	4b21      	ldr	r3, [pc, #132]	@ (5128 <__dtoa_engine+0x624>)
    50a2:	9806      	ldr	r0, [sp, #24]
    50a4:	9908      	ldr	r1, [sp, #32]
    50a6:	f000 fcf3 	bl	5a90 <__umul128>
    50aa:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    50ac:	9926      	ldr	r1, [sp, #152]	@ 0x98
    50ae:	075a      	lsls	r2, r3, #29
    50b0:	08c9      	lsrs	r1, r1, #3
    50b2:	4311      	orrs	r1, r2
    50b4:	08db      	lsrs	r3, r3, #3
    50b6:	4689      	mov	r9, r1
    50b8:	4698      	mov	r8, r3
    50ba:	459b      	cmp	fp, r3
    50bc:	d81b      	bhi.n	50f6 <__dtoa_engine+0x5f2>
    50be:	d100      	bne.n	50c2 <__dtoa_engine+0x5be>
    50c0:	e098      	b.n	51f4 <__dtoa_engine+0x6f0>
    50c2:	2f00      	cmp	r7, #0
    50c4:	d100      	bne.n	50c8 <__dtoa_engine+0x5c4>
    50c6:	e09b      	b.n	5200 <__dtoa_engine+0x6fc>
    50c8:	220a      	movs	r2, #10
    50ca:	2300      	movs	r3, #0
    50cc:	2101      	movs	r1, #1
    50ce:	0f90      	lsrs	r0, r2, #30
    50d0:	009d      	lsls	r5, r3, #2
    50d2:	4305      	orrs	r5, r0
    50d4:	0094      	lsls	r4, r2, #2
    50d6:	1912      	adds	r2, r2, r4
    50d8:	416b      	adcs	r3, r5
    50da:	1892      	adds	r2, r2, r2
    50dc:	415b      	adcs	r3, r3
    50de:	3101      	adds	r1, #1
    50e0:	42bb      	cmp	r3, r7
    50e2:	d802      	bhi.n	50ea <__dtoa_engine+0x5e6>
    50e4:	d1f3      	bne.n	50ce <__dtoa_engine+0x5ca>
    50e6:	42b2      	cmp	r2, r6
    50e8:	d9f1      	bls.n	50ce <__dtoa_engine+0x5ca>
    50ea:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    50ec:	4299      	cmp	r1, r3
    50ee:	dc00      	bgt.n	50f2 <__dtoa_engine+0x5ee>
    50f0:	e093      	b.n	521a <__dtoa_engine+0x716>
    50f2:	2301      	movs	r3, #1
    50f4:	9313      	str	r3, [sp, #76]	@ 0x4c
    50f6:	9b02      	ldr	r3, [sp, #8]
    50f8:	0030      	movs	r0, r6
    50fa:	0039      	movs	r1, r7
    50fc:	4a09      	ldr	r2, [pc, #36]	@ (5124 <__dtoa_engine+0x620>)
    50fe:	9300      	str	r3, [sp, #0]
    5100:	4b09      	ldr	r3, [pc, #36]	@ (5128 <__dtoa_engine+0x624>)
    5102:	f000 fcc5 	bl	5a90 <__umul128>
    5106:	9927      	ldr	r1, [sp, #156]	@ 0x9c
    5108:	9a26      	ldr	r2, [sp, #152]	@ 0x98
    510a:	074b      	lsls	r3, r1, #29
    510c:	08d2      	lsrs	r2, r2, #3
    510e:	431a      	orrs	r2, r3
    5110:	464b      	mov	r3, r9
    5112:	009b      	lsls	r3, r3, #2
    5114:	9806      	ldr	r0, [sp, #24]
    5116:	444b      	add	r3, r9
    5118:	005b      	lsls	r3, r3, #1
    511a:	e007      	b.n	512c <__dtoa_engine+0x628>
    511c:	fffffbcb 	.word	0xfffffbcb
    5120:	000007fe 	.word	0x000007fe
    5124:	cccccccd 	.word	0xcccccccd
    5128:	cccccccc 	.word	0xcccccccc
    512c:	1a1b      	subs	r3, r3, r0
    512e:	4258      	negs	r0, r3
    5130:	4143      	adcs	r3, r0
    5132:	9812      	ldr	r0, [sp, #72]	@ 0x48
    5134:	08cf      	lsrs	r7, r1, #3
    5136:	4018      	ands	r0, r3
    5138:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    513a:	9012      	str	r0, [sp, #72]	@ 0x48
    513c:	4258      	negs	r0, r3
    513e:	4143      	adcs	r3, r0
    5140:	980c      	ldr	r0, [sp, #48]	@ 0x30
    5142:	4018      	ands	r0, r3
    5144:	0093      	lsls	r3, r2, #2
    5146:	189b      	adds	r3, r3, r2
    5148:	005b      	lsls	r3, r3, #1
    514a:	1af3      	subs	r3, r6, r3
    514c:	b2db      	uxtb	r3, r3
    514e:	930a      	str	r3, [sp, #40]	@ 0x28
    5150:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
    5152:	0016      	movs	r6, r2
    5154:	3301      	adds	r3, #1
    5156:	930e      	str	r3, [sp, #56]	@ 0x38
    5158:	464b      	mov	r3, r9
    515a:	9306      	str	r3, [sp, #24]
    515c:	4643      	mov	r3, r8
    515e:	9308      	str	r3, [sp, #32]
    5160:	4653      	mov	r3, sl
    5162:	9304      	str	r3, [sp, #16]
    5164:	465b      	mov	r3, fp
    5166:	900c      	str	r0, [sp, #48]	@ 0x30
    5168:	9305      	str	r3, [sp, #20]
    516a:	e786      	b.n	507a <__dtoa_engine+0x576>
    516c:	2230      	movs	r2, #48	@ 0x30
    516e:	9916      	ldr	r1, [sp, #88]	@ 0x58
    5170:	9817      	ldr	r0, [sp, #92]	@ 0x5c
    5172:	714a      	strb	r2, [r1, #5]
    5174:	2202      	movs	r2, #2
    5176:	4310      	orrs	r0, r2
    5178:	7108      	strb	r0, [r1, #4]
    517a:	2001      	movs	r0, #1
    517c:	600b      	str	r3, [r1, #0]
    517e:	b02b      	add	sp, #172	@ 0xac
    5180:	bcf0      	pop	{r4, r5, r6, r7}
    5182:	46bb      	mov	fp, r7
    5184:	46b2      	mov	sl, r6
    5186:	46a9      	mov	r9, r5
    5188:	46a0      	mov	r8, r4
    518a:	bdf0      	pop	{r4, r5, r6, r7, pc}
    518c:	2304      	movs	r3, #4
    518e:	9a17      	ldr	r2, [sp, #92]	@ 0x5c
    5190:	431a      	orrs	r2, r3
    5192:	0013      	movs	r3, r2
    5194:	e60f      	b.n	4db6 <__dtoa_engine+0x2b2>
    5196:	2101      	movs	r1, #1
    5198:	000f      	movs	r7, r1
    519a:	9112      	str	r1, [sp, #72]	@ 0x48
    519c:	910c      	str	r1, [sp, #48]	@ 0x30
    519e:	e635      	b.n	4e0c <__dtoa_engine+0x308>
    51a0:	9b02      	ldr	r3, [sp, #8]
    51a2:	9c03      	ldr	r4, [sp, #12]
    51a4:	1a1b      	subs	r3, r3, r0
    51a6:	418c      	sbcs	r4, r1
    51a8:	9e0e      	ldr	r6, [sp, #56]	@ 0x38
    51aa:	0018      	movs	r0, r3
    51ac:	0021      	movs	r1, r4
    51ae:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    51b0:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
    51b2:	2201      	movs	r2, #1
    51b4:	2300      	movs	r3, #0
    51b6:	42ae      	cmp	r6, r5
    51b8:	d803      	bhi.n	51c2 <__dtoa_engine+0x6be>
    51ba:	d100      	bne.n	51be <__dtoa_engine+0x6ba>
    51bc:	e28c      	b.n	56d8 <__dtoa_engine+0xbd4>
    51be:	2200      	movs	r2, #0
    51c0:	2300      	movs	r3, #0
    51c2:	9c02      	ldr	r4, [sp, #8]
    51c4:	9d03      	ldr	r5, [sp, #12]
    51c6:	1a80      	subs	r0, r0, r2
    51c8:	4199      	sbcs	r1, r3
    51ca:	2201      	movs	r2, #1
    51cc:	2300      	movs	r3, #0
    51ce:	42a9      	cmp	r1, r5
    51d0:	d803      	bhi.n	51da <__dtoa_engine+0x6d6>
    51d2:	d100      	bne.n	51d6 <__dtoa_engine+0x6d2>
    51d4:	e286      	b.n	56e4 <__dtoa_engine+0xbe0>
    51d6:	2200      	movs	r2, #0
    51d8:	2300      	movs	r3, #0
    51da:	9c0c      	ldr	r4, [sp, #48]	@ 0x30
    51dc:	9d0d      	ldr	r5, [sp, #52]	@ 0x34
    51de:	1aa4      	subs	r4, r4, r2
    51e0:	419d      	sbcs	r5, r3
    51e2:	0022      	movs	r2, r4
    51e4:	464c      	mov	r4, r9
    51e6:	002b      	movs	r3, r5
    51e8:	9400      	str	r4, [sp, #0]
    51ea:	f000 fc93 	bl	5b14 <__shiftright128>
    51ee:	4682      	mov	sl, r0
    51f0:	9108      	str	r1, [sp, #32]
    51f2:	e5a8      	b.n	4d46 <__dtoa_engine+0x242>
    51f4:	458a      	cmp	sl, r1
    51f6:	d900      	bls.n	51fa <__dtoa_engine+0x6f6>
    51f8:	e77d      	b.n	50f6 <__dtoa_engine+0x5f2>
    51fa:	2f00      	cmp	r7, #0
    51fc:	d000      	beq.n	5200 <__dtoa_engine+0x6fc>
    51fe:	e763      	b.n	50c8 <__dtoa_engine+0x5c4>
    5200:	2e09      	cmp	r6, #9
    5202:	d900      	bls.n	5206 <__dtoa_engine+0x702>
    5204:	e760      	b.n	50c8 <__dtoa_engine+0x5c4>
    5206:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    5208:	2b00      	cmp	r3, #0
    520a:	dc06      	bgt.n	521a <__dtoa_engine+0x716>
    520c:	d000      	beq.n	5210 <__dtoa_engine+0x70c>
    520e:	e770      	b.n	50f2 <__dtoa_engine+0x5ee>
    5210:	2e00      	cmp	r6, #0
    5212:	d002      	beq.n	521a <__dtoa_engine+0x716>
    5214:	3301      	adds	r3, #1
    5216:	9313      	str	r3, [sp, #76]	@ 0x4c
    5218:	e76d      	b.n	50f6 <__dtoa_engine+0x5f2>
    521a:	9b06      	ldr	r3, [sp, #24]
    521c:	9614      	str	r6, [sp, #80]	@ 0x50
    521e:	9715      	str	r7, [sp, #84]	@ 0x54
    5220:	469a      	mov	sl, r3
    5222:	9b02      	ldr	r3, [sp, #8]
    5224:	4698      	mov	r8, r3
    5226:	9b12      	ldr	r3, [sp, #72]	@ 0x48
    5228:	2b00      	cmp	r3, #0
    522a:	d049      	beq.n	52c0 <__dtoa_engine+0x7bc>
    522c:	9c04      	ldr	r4, [sp, #16]
    522e:	9d05      	ldr	r5, [sp, #20]
    5230:	9908      	ldr	r1, [sp, #32]
    5232:	e02f      	b.n	5294 <__dtoa_engine+0x790>
    5234:	4643      	mov	r3, r8
    5236:	0020      	movs	r0, r4
    5238:	0029      	movs	r1, r5
    523a:	4ac5      	ldr	r2, [pc, #788]	@ (5550 <__dtoa_engine+0xa4c>)
    523c:	9300      	str	r3, [sp, #0]
    523e:	4bc5      	ldr	r3, [pc, #788]	@ (5554 <__dtoa_engine+0xa50>)
    5240:	f000 fc26 	bl	5a90 <__umul128>
    5244:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    5246:	9926      	ldr	r1, [sp, #152]	@ 0x98
    5248:	075a      	lsls	r2, r3, #29
    524a:	08dd      	lsrs	r5, r3, #3
    524c:	4643      	mov	r3, r8
    524e:	08cc      	lsrs	r4, r1, #3
    5250:	0030      	movs	r0, r6
    5252:	0039      	movs	r1, r7
    5254:	9300      	str	r3, [sp, #0]
    5256:	4314      	orrs	r4, r2
    5258:	4bbe      	ldr	r3, [pc, #760]	@ (5554 <__dtoa_engine+0xa50>)
    525a:	4abd      	ldr	r2, [pc, #756]	@ (5550 <__dtoa_engine+0xa4c>)
    525c:	f000 fc18 	bl	5a90 <__umul128>
    5260:	9927      	ldr	r1, [sp, #156]	@ 0x9c
    5262:	9b26      	ldr	r3, [sp, #152]	@ 0x98
    5264:	074a      	lsls	r2, r1, #29
    5266:	08db      	lsrs	r3, r3, #3
    5268:	4313      	orrs	r3, r2
    526a:	9a0a      	ldr	r2, [sp, #40]	@ 0x28
    526c:	08cf      	lsrs	r7, r1, #3
    526e:	4250      	negs	r0, r2
    5270:	4142      	adcs	r2, r0
    5272:	980c      	ldr	r0, [sp, #48]	@ 0x30
    5274:	46ca      	mov	sl, r9
    5276:	4010      	ands	r0, r2
    5278:	009a      	lsls	r2, r3, #2
    527a:	18d2      	adds	r2, r2, r3
    527c:	0052      	lsls	r2, r2, #1
    527e:	1ab2      	subs	r2, r6, r2
    5280:	b2d2      	uxtb	r2, r2
    5282:	920a      	str	r2, [sp, #40]	@ 0x28
    5284:	9a0e      	ldr	r2, [sp, #56]	@ 0x38
    5286:	001e      	movs	r6, r3
    5288:	3201      	adds	r2, #1
    528a:	920e      	str	r2, [sp, #56]	@ 0x38
    528c:	465a      	mov	r2, fp
    528e:	0011      	movs	r1, r2
    5290:	900c      	str	r0, [sp, #48]	@ 0x30
    5292:	9208      	str	r2, [sp, #32]
    5294:	4643      	mov	r3, r8
    5296:	4aae      	ldr	r2, [pc, #696]	@ (5550 <__dtoa_engine+0xa4c>)
    5298:	9300      	str	r3, [sp, #0]
    529a:	4650      	mov	r0, sl
    529c:	4bad      	ldr	r3, [pc, #692]	@ (5554 <__dtoa_engine+0xa50>)
    529e:	f000 fbf7 	bl	5a90 <__umul128>
    52a2:	9b27      	ldr	r3, [sp, #156]	@ 0x9c
    52a4:	9926      	ldr	r1, [sp, #152]	@ 0x98
    52a6:	075a      	lsls	r2, r3, #29
    52a8:	08c9      	lsrs	r1, r1, #3
    52aa:	4311      	orrs	r1, r2
    52ac:	4689      	mov	r9, r1
    52ae:	08db      	lsrs	r3, r3, #3
    52b0:	469b      	mov	fp, r3
    52b2:	008b      	lsls	r3, r1, #2
    52b4:	444b      	add	r3, r9
    52b6:	005b      	lsls	r3, r3, #1
    52b8:	4553      	cmp	r3, sl
    52ba:	d0bb      	beq.n	5234 <__dtoa_engine+0x730>
    52bc:	9614      	str	r6, [sp, #80]	@ 0x50
    52be:	9715      	str	r7, [sp, #84]	@ 0x54
    52c0:	9b0e      	ldr	r3, [sp, #56]	@ 0x38
    52c2:	9c1a      	ldr	r4, [sp, #104]	@ 0x68
    52c4:	469c      	mov	ip, r3
    52c6:	9b0c      	ldr	r3, [sp, #48]	@ 0x30
    52c8:	4464      	add	r4, ip
    52ca:	2b00      	cmp	r3, #0
    52cc:	d003      	beq.n	52d6 <__dtoa_engine+0x7d2>
    52ce:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    52d0:	2b05      	cmp	r3, #5
    52d2:	d100      	bne.n	52d6 <__dtoa_engine+0x7d2>
    52d4:	e0e8      	b.n	54a8 <__dtoa_engine+0x9a4>
    52d6:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
    52d8:	2b00      	cmp	r3, #0
    52da:	d103      	bne.n	52e4 <__dtoa_engine+0x7e0>
    52dc:	9b14      	ldr	r3, [sp, #80]	@ 0x50
    52de:	4553      	cmp	r3, sl
    52e0:	d100      	bne.n	52e4 <__dtoa_engine+0x7e0>
    52e2:	e0f2      	b.n	54ca <__dtoa_engine+0x9c6>
    52e4:	9d14      	ldr	r5, [sp, #80]	@ 0x50
    52e6:	9e15      	ldr	r6, [sp, #84]	@ 0x54
    52e8:	2004      	movs	r0, #4
    52ea:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    52ec:	4298      	cmp	r0, r3
    52ee:	4180      	sbcs	r0, r0
    52f0:	4240      	negs	r0, r0
    52f2:	0002      	movs	r2, r0
    52f4:	2300      	movs	r3, #0
    52f6:	18ad      	adds	r5, r5, r2
    52f8:	415e      	adcs	r6, r3
    52fa:	9514      	str	r5, [sp, #80]	@ 0x50
    52fc:	9615      	str	r6, [sp, #84]	@ 0x54
    52fe:	2e00      	cmp	r6, #0
    5300:	d100      	bne.n	5304 <__dtoa_engine+0x800>
    5302:	e1bc      	b.n	567e <__dtoa_engine+0xb7a>
    5304:	9e14      	ldr	r6, [sp, #80]	@ 0x50
    5306:	9f15      	ldr	r7, [sp, #84]	@ 0x54
    5308:	220a      	movs	r2, #10
    530a:	2300      	movs	r3, #0
    530c:	2501      	movs	r5, #1
    530e:	4684      	mov	ip, r0
    5310:	46a0      	mov	r8, r4
    5312:	0f94      	lsrs	r4, r2, #30
    5314:	0099      	lsls	r1, r3, #2
    5316:	4321      	orrs	r1, r4
    5318:	0090      	lsls	r0, r2, #2
    531a:	1812      	adds	r2, r2, r0
    531c:	414b      	adcs	r3, r1
    531e:	1892      	adds	r2, r2, r2
    5320:	415b      	adcs	r3, r3
    5322:	3501      	adds	r5, #1
    5324:	42bb      	cmp	r3, r7
    5326:	d802      	bhi.n	532e <__dtoa_engine+0x82a>
    5328:	d1f3      	bne.n	5312 <__dtoa_engine+0x80e>
    532a:	42b2      	cmp	r2, r6
    532c:	d9f1      	bls.n	5312 <__dtoa_engine+0x80e>
    532e:	4660      	mov	r0, ip
    5330:	4644      	mov	r4, r8
    5332:	9614      	str	r6, [sp, #80]	@ 0x50
    5334:	9715      	str	r7, [sp, #84]	@ 0x54
    5336:	2800      	cmp	r0, #0
    5338:	d017      	beq.n	536a <__dtoa_engine+0x866>
    533a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    533c:	42ab      	cmp	r3, r5
    533e:	da14      	bge.n	536a <__dtoa_engine+0x866>
    5340:	9b19      	ldr	r3, [sp, #100]	@ 0x64
    5342:	2b00      	cmp	r3, #0
    5344:	d100      	bne.n	5348 <__dtoa_engine+0x844>
    5346:	e0d5      	b.n	54f4 <__dtoa_engine+0x9f0>
    5348:	9a35      	ldr	r2, [sp, #212]	@ 0xd4
    534a:	192b      	adds	r3, r5, r4
    534c:	4694      	mov	ip, r2
    534e:	4463      	add	r3, ip
    5350:	2b00      	cmp	r3, #0
    5352:	dc00      	bgt.n	5356 <__dtoa_engine+0x852>
    5354:	e11b      	b.n	558e <__dtoa_engine+0xa8a>
    5356:	001a      	movs	r2, r3
    5358:	9310      	str	r3, [sp, #64]	@ 0x40
    535a:	9b18      	ldr	r3, [sp, #96]	@ 0x60
    535c:	429a      	cmp	r2, r3
    535e:	dd00      	ble.n	5362 <__dtoa_engine+0x85e>
    5360:	e113      	b.n	558a <__dtoa_engine+0xa86>
    5362:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    5364:	42ab      	cmp	r3, r5
    5366:	da00      	bge.n	536a <__dtoa_engine+0x866>
    5368:	e0c4      	b.n	54f4 <__dtoa_engine+0x9f0>
    536a:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    536c:	42ab      	cmp	r3, r5
    536e:	dd00      	ble.n	5372 <__dtoa_engine+0x86e>
    5370:	002b      	movs	r3, r5
    5372:	b218      	sxth	r0, r3
    5374:	b223      	sxth	r3, r4
    5376:	181b      	adds	r3, r3, r0
    5378:	3b01      	subs	r3, #1
    537a:	4698      	mov	r8, r3
    537c:	2800      	cmp	r0, #0
    537e:	dd15      	ble.n	53ac <__dtoa_engine+0x8a8>
    5380:	9e14      	ldr	r6, [sp, #80]	@ 0x50
    5382:	9f15      	ldr	r7, [sp, #84]	@ 0x54
    5384:	9b16      	ldr	r3, [sp, #88]	@ 0x58
    5386:	4681      	mov	r9, r0
    5388:	469c      	mov	ip, r3
    538a:	1d04      	adds	r4, r0, #4
    538c:	4464      	add	r4, ip
    538e:	1d1d      	adds	r5, r3, #4
    5390:	0030      	movs	r0, r6
    5392:	0039      	movs	r1, r7
    5394:	220a      	movs	r2, #10
    5396:	2300      	movs	r3, #0
    5398:	f7fb f900 	bl	59c <__aeabi_uldivmod>
    539c:	3230      	adds	r2, #48	@ 0x30
    539e:	7022      	strb	r2, [r4, #0]
    53a0:	3c01      	subs	r4, #1
    53a2:	0006      	movs	r6, r0
    53a4:	000f      	movs	r7, r1
    53a6:	42ac      	cmp	r4, r5
    53a8:	d1f2      	bne.n	5390 <__dtoa_engine+0x88c>
    53aa:	4648      	mov	r0, r9
    53ac:	4642      	mov	r2, r8
    53ae:	9b16      	ldr	r3, [sp, #88]	@ 0x58
    53b0:	601a      	str	r2, [r3, #0]
    53b2:	9a17      	ldr	r2, [sp, #92]	@ 0x5c
    53b4:	711a      	strb	r2, [r3, #4]
    53b6:	e6e2      	b.n	517e <__dtoa_engine+0x67a>
    53b8:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
    53ba:	9e0b      	ldr	r6, [sp, #44]	@ 0x2c
    53bc:	9b02      	ldr	r3, [sp, #8]
    53be:	9c03      	ldr	r4, [sp, #12]
    53c0:	1b5b      	subs	r3, r3, r5
    53c2:	41b4      	sbcs	r4, r6
    53c4:	9e0e      	ldr	r6, [sp, #56]	@ 0x38
    53c6:	930a      	str	r3, [sp, #40]	@ 0x28
    53c8:	940b      	str	r4, [sp, #44]	@ 0x2c
    53ca:	9c08      	ldr	r4, [sp, #32]
    53cc:	9d09      	ldr	r5, [sp, #36]	@ 0x24
    53ce:	2201      	movs	r2, #1
    53d0:	2300      	movs	r3, #0
    53d2:	42ae      	cmp	r6, r5
    53d4:	d803      	bhi.n	53de <__dtoa_engine+0x8da>
    53d6:	d100      	bne.n	53da <__dtoa_engine+0x8d6>
    53d8:	e107      	b.n	55ea <__dtoa_engine+0xae6>
    53da:	2200      	movs	r2, #0
    53dc:	2300      	movs	r3, #0
    53de:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    53e0:	9d0b      	ldr	r5, [sp, #44]	@ 0x2c
    53e2:	9e02      	ldr	r6, [sp, #8]
    53e4:	9f03      	ldr	r7, [sp, #12]
    53e6:	1aa4      	subs	r4, r4, r2
    53e8:	419d      	sbcs	r5, r3
    53ea:	2201      	movs	r2, #1
    53ec:	2300      	movs	r3, #0
    53ee:	9208      	str	r2, [sp, #32]
    53f0:	9309      	str	r3, [sp, #36]	@ 0x24
    53f2:	42bd      	cmp	r5, r7
    53f4:	d805      	bhi.n	5402 <__dtoa_engine+0x8fe>
    53f6:	d100      	bne.n	53fa <__dtoa_engine+0x8f6>
    53f8:	e0fd      	b.n	55f6 <__dtoa_engine+0xaf2>
    53fa:	2200      	movs	r2, #0
    53fc:	2300      	movs	r3, #0
    53fe:	9208      	str	r2, [sp, #32]
    5400:	9309      	str	r3, [sp, #36]	@ 0x24
    5402:	9a08      	ldr	r2, [sp, #32]
    5404:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    5406:	1a80      	subs	r0, r0, r2
    5408:	4199      	sbcs	r1, r3
    540a:	000b      	movs	r3, r1
    540c:	4659      	mov	r1, fp
    540e:	0002      	movs	r2, r0
    5410:	9100      	str	r1, [sp, #0]
    5412:	0020      	movs	r0, r4
    5414:	0029      	movs	r1, r5
    5416:	f000 fb7d 	bl	5b14 <__shiftright128>
    541a:	4682      	mov	sl, r0
    541c:	9108      	str	r1, [sp, #32]
    541e:	e5e2      	b.n	4fe6 <__dtoa_engine+0x4e2>
    5420:	ab24      	add	r3, sp, #144	@ 0x90
    5422:	9c06      	ldr	r4, [sp, #24]
    5424:	9d07      	ldr	r5, [sp, #28]
    5426:	4a4a      	ldr	r2, [pc, #296]	@ (5550 <__dtoa_engine+0xa4c>)
    5428:	9300      	str	r3, [sp, #0]
    542a:	0020      	movs	r0, r4
    542c:	4b49      	ldr	r3, [pc, #292]	@ (5554 <__dtoa_engine+0xa50>)
    542e:	0029      	movs	r1, r5
    5430:	f000 fb2e 	bl	5a90 <__umul128>
    5434:	9b24      	ldr	r3, [sp, #144]	@ 0x90
    5436:	9a25      	ldr	r2, [sp, #148]	@ 0x94
    5438:	089b      	lsrs	r3, r3, #2
    543a:	0792      	lsls	r2, r2, #30
    543c:	4313      	orrs	r3, r2
    543e:	009a      	lsls	r2, r3, #2
    5440:	18d2      	adds	r2, r2, r3
    5442:	42a2      	cmp	r2, r4
    5444:	d100      	bne.n	5448 <__dtoa_engine+0x944>
    5446:	e12a      	b.n	569e <__dtoa_engine+0xb9a>
    5448:	9c1b      	ldr	r4, [sp, #108]	@ 0x6c
    544a:	2c00      	cmp	r4, #0
    544c:	d000      	beq.n	5450 <__dtoa_engine+0x94c>
    544e:	e083      	b.n	5558 <__dtoa_engine+0xa54>
    5450:	9806      	ldr	r0, [sp, #24]
    5452:	9907      	ldr	r1, [sp, #28]
    5454:	2201      	movs	r2, #1
    5456:	4252      	negs	r2, r2
    5458:	17d3      	asrs	r3, r2, #31
    545a:	1880      	adds	r0, r0, r2
    545c:	4159      	adcs	r1, r3
    545e:	0002      	movs	r2, r0
    5460:	000b      	movs	r3, r1
    5462:	2100      	movs	r1, #0
    5464:	980c      	ldr	r0, [sp, #48]	@ 0x30
    5466:	1a12      	subs	r2, r2, r0
    5468:	418b      	sbcs	r3, r1
    546a:	0010      	movs	r0, r2
    546c:	0019      	movs	r1, r3
    546e:	f000 f961 	bl	5734 <__pow5Factor>
    5472:	0023      	movs	r3, r4
    5474:	464a      	mov	r2, r9
    5476:	4290      	cmp	r0, r2
    5478:	4163      	adcs	r3, r4
    547a:	b2db      	uxtb	r3, r3
    547c:	9312      	str	r3, [sp, #72]	@ 0x48
    547e:	2300      	movs	r3, #0
    5480:	930c      	str	r3, [sp, #48]	@ 0x30
    5482:	e5c1      	b.n	5008 <__dtoa_engine+0x504>
    5484:	2301      	movs	r3, #1
    5486:	930c      	str	r3, [sp, #48]	@ 0x30
    5488:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
    548a:	2b00      	cmp	r3, #0
    548c:	d100      	bne.n	5490 <__dtoa_engine+0x98c>
    548e:	e5bb      	b.n	5008 <__dtoa_engine+0x504>
    5490:	9804      	ldr	r0, [sp, #16]
    5492:	9905      	ldr	r1, [sp, #20]
    5494:	2201      	movs	r2, #1
    5496:	4252      	negs	r2, r2
    5498:	17d3      	asrs	r3, r2, #31
    549a:	1880      	adds	r0, r0, r2
    549c:	4159      	adcs	r1, r3
    549e:	2300      	movs	r3, #0
    54a0:	9004      	str	r0, [sp, #16]
    54a2:	9105      	str	r1, [sp, #20]
    54a4:	9312      	str	r3, [sp, #72]	@ 0x48
    54a6:	e5af      	b.n	5008 <__dtoa_engine+0x504>
    54a8:	3b04      	subs	r3, #4
    54aa:	9914      	ldr	r1, [sp, #80]	@ 0x50
    54ac:	9a15      	ldr	r2, [sp, #84]	@ 0x54
    54ae:	420b      	tst	r3, r1
    54b0:	d143      	bne.n	553a <__dtoa_engine+0xa36>
    54b2:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
    54b4:	2b00      	cmp	r3, #0
    54b6:	d102      	bne.n	54be <__dtoa_engine+0x9ba>
    54b8:	4551      	cmp	r1, sl
    54ba:	d100      	bne.n	54be <__dtoa_engine+0x9ba>
    54bc:	e117      	b.n	56ee <__dtoa_engine+0xbea>
    54be:	9b15      	ldr	r3, [sp, #84]	@ 0x54
    54c0:	2b00      	cmp	r3, #0
    54c2:	d100      	bne.n	54c6 <__dtoa_engine+0x9c2>
    54c4:	e0a7      	b.n	5616 <__dtoa_engine+0xb12>
    54c6:	2000      	movs	r0, #0
    54c8:	e71c      	b.n	5304 <__dtoa_engine+0x800>
    54ca:	9b08      	ldr	r3, [sp, #32]
    54cc:	9a15      	ldr	r2, [sp, #84]	@ 0x54
    54ce:	429a      	cmp	r2, r3
    54d0:	d000      	beq.n	54d4 <__dtoa_engine+0x9d0>
    54d2:	e707      	b.n	52e4 <__dtoa_engine+0x7e0>
    54d4:	9b1b      	ldr	r3, [sp, #108]	@ 0x6c
    54d6:	2b00      	cmp	r3, #0
    54d8:	d02a      	beq.n	5530 <__dtoa_engine+0xa2c>
    54da:	9814      	ldr	r0, [sp, #80]	@ 0x50
    54dc:	9915      	ldr	r1, [sp, #84]	@ 0x54
    54de:	2201      	movs	r2, #1
    54e0:	2300      	movs	r3, #0
    54e2:	1880      	adds	r0, r0, r2
    54e4:	4159      	adcs	r1, r3
    54e6:	9014      	str	r0, [sp, #80]	@ 0x50
    54e8:	9115      	str	r1, [sp, #84]	@ 0x54
    54ea:	2900      	cmp	r1, #0
    54ec:	d100      	bne.n	54f0 <__dtoa_engine+0x9ec>
    54ee:	e087      	b.n	5600 <__dtoa_engine+0xafc>
    54f0:	2001      	movs	r0, #1
    54f2:	e707      	b.n	5304 <__dtoa_engine+0x800>
    54f4:	2005      	movs	r0, #5
    54f6:	9a14      	ldr	r2, [sp, #80]	@ 0x50
    54f8:	9b15      	ldr	r3, [sp, #84]	@ 0x54
    54fa:	2100      	movs	r1, #0
    54fc:	1880      	adds	r0, r0, r2
    54fe:	4159      	adcs	r1, r3
    5500:	220a      	movs	r2, #10
    5502:	2300      	movs	r3, #0
    5504:	f7fb f84a 	bl	59c <__aeabi_uldivmod>
    5508:	3401      	adds	r4, #1
    550a:	9014      	str	r0, [sp, #80]	@ 0x50
    550c:	9115      	str	r1, [sp, #84]	@ 0x54
    550e:	3d01      	subs	r5, #1
    5510:	e72b      	b.n	536a <__dtoa_engine+0x866>
    5512:	9c02      	ldr	r4, [sp, #8]
    5514:	42a2      	cmp	r2, r4
    5516:	d900      	bls.n	551a <__dtoa_engine+0xa16>
    5518:	e4bf      	b.n	4e9a <__dtoa_engine+0x396>
    551a:	e4bc      	b.n	4e96 <__dtoa_engine+0x392>
    551c:	9c08      	ldr	r4, [sp, #32]
    551e:	4294      	cmp	r4, r2
    5520:	d900      	bls.n	5524 <__dtoa_engine+0xa20>
    5522:	e4d2      	b.n	4eca <__dtoa_engine+0x3c6>
    5524:	e4cf      	b.n	4ec6 <__dtoa_engine+0x3c2>
    5526:	9c02      	ldr	r4, [sp, #8]
    5528:	4284      	cmp	r4, r0
    552a:	d900      	bls.n	552e <__dtoa_engine+0xa2a>
    552c:	e4e1      	b.n	4ef2 <__dtoa_engine+0x3ee>
    552e:	e4de      	b.n	4eee <__dtoa_engine+0x3ea>
    5530:	9b12      	ldr	r3, [sp, #72]	@ 0x48
    5532:	2b00      	cmp	r3, #0
    5534:	d000      	beq.n	5538 <__dtoa_engine+0xa34>
    5536:	e6d5      	b.n	52e4 <__dtoa_engine+0x7e0>
    5538:	e7cf      	b.n	54da <__dtoa_engine+0x9d6>
    553a:	9b13      	ldr	r3, [sp, #76]	@ 0x4c
    553c:	2b00      	cmp	r3, #0
    553e:	d1cc      	bne.n	54da <__dtoa_engine+0x9d6>
    5540:	9b14      	ldr	r3, [sp, #80]	@ 0x50
    5542:	4553      	cmp	r3, sl
    5544:	d1c9      	bne.n	54da <__dtoa_engine+0x9d6>
    5546:	9b08      	ldr	r3, [sp, #32]
    5548:	9a15      	ldr	r2, [sp, #84]	@ 0x54
    554a:	429a      	cmp	r2, r3
    554c:	d1c5      	bne.n	54da <__dtoa_engine+0x9d6>
    554e:	e7c1      	b.n	54d4 <__dtoa_engine+0x9d0>
    5550:	cccccccd 	.word	0xcccccccd
    5554:	cccccccc 	.word	0xcccccccc
    5558:	2002      	movs	r0, #2
    555a:	9b06      	ldr	r3, [sp, #24]
    555c:	9c07      	ldr	r4, [sp, #28]
    555e:	2100      	movs	r1, #0
    5560:	181b      	adds	r3, r3, r0
    5562:	414c      	adcs	r4, r1
    5564:	0018      	movs	r0, r3
    5566:	0021      	movs	r1, r4
    5568:	f000 f8e4 	bl	5734 <__pow5Factor>
    556c:	464b      	mov	r3, r9
    556e:	2100      	movs	r1, #0
    5570:	4298      	cmp	r0, r3
    5572:	4149      	adcs	r1, r1
    5574:	2300      	movs	r3, #0
    5576:	000a      	movs	r2, r1
    5578:	9804      	ldr	r0, [sp, #16]
    557a:	9905      	ldr	r1, [sp, #20]
    557c:	1a80      	subs	r0, r0, r2
    557e:	4199      	sbcs	r1, r3
    5580:	930c      	str	r3, [sp, #48]	@ 0x30
    5582:	9004      	str	r0, [sp, #16]
    5584:	9105      	str	r1, [sp, #20]
    5586:	9312      	str	r3, [sp, #72]	@ 0x48
    5588:	e53e      	b.n	5008 <__dtoa_engine+0x504>
    558a:	9310      	str	r3, [sp, #64]	@ 0x40
    558c:	e6e9      	b.n	5362 <__dtoa_engine+0x85e>
    558e:	2301      	movs	r3, #1
    5590:	e6e1      	b.n	5356 <__dtoa_engine+0x852>
    5592:	2220      	movs	r2, #32
    5594:	1ad2      	subs	r2, r2, r3
    5596:	2301      	movs	r3, #1
    5598:	425b      	negs	r3, r3
    559a:	0019      	movs	r1, r3
    559c:	40d1      	lsrs	r1, r2
    559e:	000a      	movs	r2, r1
    55a0:	4659      	mov	r1, fp
    55a2:	408b      	lsls	r3, r1
    55a4:	4313      	orrs	r3, r2
    55a6:	f7ff fbe7 	bl	4d78 <__dtoa_engine+0x274>
    55aa:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    55ac:	9a08      	ldr	r2, [sp, #32]
    55ae:	4293      	cmp	r3, r2
    55b0:	d901      	bls.n	55b6 <__dtoa_engine+0xab2>
    55b2:	f7ff fbbb 	bl	4d2c <__dtoa_engine+0x228>
    55b6:	f7ff fbb7 	bl	4d28 <__dtoa_engine+0x224>
    55ba:	9902      	ldr	r1, [sp, #8]
    55bc:	9808      	ldr	r0, [sp, #32]
    55be:	4281      	cmp	r1, r0
    55c0:	d901      	bls.n	55c6 <__dtoa_engine+0xac2>
    55c2:	f7ff fba0 	bl	4d06 <__dtoa_engine+0x202>
    55c6:	f7ff fb9c 	bl	4d02 <__dtoa_engine+0x1fe>
    55ca:	9c10      	ldr	r4, [sp, #64]	@ 0x40
    55cc:	9d13      	ldr	r5, [sp, #76]	@ 0x4c
    55ce:	42ac      	cmp	r4, r5
    55d0:	d901      	bls.n	55d6 <__dtoa_engine+0xad2>
    55d2:	f7ff fb7b 	bl	4ccc <__dtoa_engine+0x1c8>
    55d6:	f7ff fb77 	bl	4cc8 <__dtoa_engine+0x1c4>
    55da:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    55dc:	9d13      	ldr	r5, [sp, #76]	@ 0x4c
    55de:	42ac      	cmp	r4, r5
    55e0:	d901      	bls.n	55e6 <__dtoa_engine+0xae2>
    55e2:	f7ff fb63 	bl	4cac <__dtoa_engine+0x1a8>
    55e6:	f7ff fb5f 	bl	4ca8 <__dtoa_engine+0x1a4>
    55ea:	9c12      	ldr	r4, [sp, #72]	@ 0x48
    55ec:	9d08      	ldr	r5, [sp, #32]
    55ee:	42ac      	cmp	r4, r5
    55f0:	d900      	bls.n	55f4 <__dtoa_engine+0xaf0>
    55f2:	e6f4      	b.n	53de <__dtoa_engine+0x8da>
    55f4:	e6f1      	b.n	53da <__dtoa_engine+0x8d6>
    55f6:	9a02      	ldr	r2, [sp, #8]
    55f8:	4294      	cmp	r4, r2
    55fa:	d900      	bls.n	55fe <__dtoa_engine+0xafa>
    55fc:	e701      	b.n	5402 <__dtoa_engine+0x8fe>
    55fe:	e6fc      	b.n	53fa <__dtoa_engine+0x8f6>
    5600:	9b14      	ldr	r3, [sp, #80]	@ 0x50
    5602:	2b09      	cmp	r3, #9
    5604:	d900      	bls.n	5608 <__dtoa_engine+0xb04>
    5606:	e773      	b.n	54f0 <__dtoa_engine+0x9ec>
    5608:	9b10      	ldr	r3, [sp, #64]	@ 0x40
    560a:	2b00      	cmp	r3, #0
    560c:	dd54      	ble.n	56b8 <__dtoa_engine+0xbb4>
    560e:	b223      	sxth	r3, r4
    5610:	4698      	mov	r8, r3
    5612:	2001      	movs	r0, #1
    5614:	e6b4      	b.n	5380 <__dtoa_engine+0x87c>
    5616:	9b14      	ldr	r3, [sp, #80]	@ 0x50
    5618:	2501      	movs	r5, #1
    561a:	2b09      	cmp	r3, #9
    561c:	d800      	bhi.n	5620 <__dtoa_engine+0xb1c>
    561e:	e6a4      	b.n	536a <__dtoa_engine+0x866>
    5620:	2000      	movs	r0, #0
    5622:	e66f      	b.n	5304 <__dtoa_engine+0x800>
    5624:	9c0a      	ldr	r4, [sp, #40]	@ 0x28
    5626:	4294      	cmp	r4, r2
    5628:	d901      	bls.n	562e <__dtoa_engine+0xb2a>
    562a:	f7ff fafa 	bl	4c22 <__dtoa_engine+0x11e>
    562e:	f7ff faf6 	bl	4c1e <__dtoa_engine+0x11a>
    5632:	9c08      	ldr	r4, [sp, #32]
    5634:	9d13      	ldr	r5, [sp, #76]	@ 0x4c
    5636:	42ac      	cmp	r4, r5
    5638:	d900      	bls.n	563c <__dtoa_engine+0xb38>
    563a:	e48a      	b.n	4f52 <__dtoa_engine+0x44e>
    563c:	e487      	b.n	4f4e <__dtoa_engine+0x44a>
    563e:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    5640:	9a08      	ldr	r2, [sp, #32]
    5642:	4293      	cmp	r3, r2
    5644:	d900      	bls.n	5648 <__dtoa_engine+0xb44>
    5646:	e4c1      	b.n	4fcc <__dtoa_engine+0x4c8>
    5648:	e4be      	b.n	4fc8 <__dtoa_engine+0x4c4>
    564a:	9902      	ldr	r1, [sp, #8]
    564c:	9808      	ldr	r0, [sp, #32]
    564e:	4281      	cmp	r1, r0
    5650:	d900      	bls.n	5654 <__dtoa_engine+0xb50>
    5652:	e4a9      	b.n	4fa8 <__dtoa_engine+0x4a4>
    5654:	e4a6      	b.n	4fa4 <__dtoa_engine+0x4a0>
    5656:	9c12      	ldr	r4, [sp, #72]	@ 0x48
    5658:	9d13      	ldr	r5, [sp, #76]	@ 0x4c
    565a:	42ac      	cmp	r4, r5
    565c:	d900      	bls.n	5660 <__dtoa_engine+0xb5c>
    565e:	e487      	b.n	4f70 <__dtoa_engine+0x46c>
    5660:	e484      	b.n	4f6c <__dtoa_engine+0x468>
    5662:	9c02      	ldr	r4, [sp, #8]
    5664:	4284      	cmp	r4, r0
    5666:	d901      	bls.n	566c <__dtoa_engine+0xb68>
    5668:	f7ff faf0 	bl	4c4c <__dtoa_engine+0x148>
    566c:	f7ff faec 	bl	4c48 <__dtoa_engine+0x144>
    5670:	9c02      	ldr	r4, [sp, #8]
    5672:	42a2      	cmp	r2, r4
    5674:	d901      	bls.n	567a <__dtoa_engine+0xb76>
    5676:	f7ff fabd 	bl	4bf4 <__dtoa_engine+0xf0>
    567a:	f7ff fab9 	bl	4bf0 <__dtoa_engine+0xec>
    567e:	9b14      	ldr	r3, [sp, #80]	@ 0x50
    5680:	2b09      	cmp	r3, #9
    5682:	d900      	bls.n	5686 <__dtoa_engine+0xb82>
    5684:	e63e      	b.n	5304 <__dtoa_engine+0x800>
    5686:	9b0a      	ldr	r3, [sp, #40]	@ 0x28
    5688:	2501      	movs	r5, #1
    568a:	2b04      	cmp	r3, #4
    568c:	d800      	bhi.n	5690 <__dtoa_engine+0xb8c>
    568e:	e66c      	b.n	536a <__dtoa_engine+0x866>
    5690:	e7ba      	b.n	5608 <__dtoa_engine+0xb04>
    5692:	9b14      	ldr	r3, [sp, #80]	@ 0x50
    5694:	2b09      	cmp	r3, #9
    5696:	d900      	bls.n	569a <__dtoa_engine+0xb96>
    5698:	e4bf      	b.n	501a <__dtoa_engine+0x516>
    569a:	2101      	movs	r1, #1
    569c:	e4d4      	b.n	5048 <__dtoa_engine+0x544>
    569e:	9806      	ldr	r0, [sp, #24]
    56a0:	9907      	ldr	r1, [sp, #28]
    56a2:	f000 f847 	bl	5734 <__pow5Factor>
    56a6:	2300      	movs	r3, #0
    56a8:	464a      	mov	r2, r9
    56aa:	4290      	cmp	r0, r2
    56ac:	415b      	adcs	r3, r3
    56ae:	b2db      	uxtb	r3, r3
    56b0:	930c      	str	r3, [sp, #48]	@ 0x30
    56b2:	2300      	movs	r3, #0
    56b4:	9312      	str	r3, [sp, #72]	@ 0x48
    56b6:	e4a7      	b.n	5008 <__dtoa_engine+0x504>
    56b8:	2501      	movs	r5, #1
    56ba:	e641      	b.n	5340 <__dtoa_engine+0x83c>
    56bc:	4660      	mov	r0, ip
    56be:	4910      	ldr	r1, [pc, #64]	@ (5700 <__dtoa_engine+0xbfc>)
    56c0:	9202      	str	r2, [sp, #8]
    56c2:	9303      	str	r3, [sp, #12]
    56c4:	1a09      	subs	r1, r1, r0
    56c6:	4689      	mov	r9, r1
    56c8:	4641      	mov	r1, r8
    56ca:	3101      	adds	r1, #1
    56cc:	0008      	movs	r0, r1
    56ce:	1e41      	subs	r1, r0, #1
    56d0:	4188      	sbcs	r0, r1
    56d2:	4683      	mov	fp, r0
    56d4:	f7ff fa4b 	bl	4b6e <__dtoa_engine+0x6a>
    56d8:	9c10      	ldr	r4, [sp, #64]	@ 0x40
    56da:	9d0a      	ldr	r5, [sp, #40]	@ 0x28
    56dc:	42ac      	cmp	r4, r5
    56de:	d900      	bls.n	56e2 <__dtoa_engine+0xbde>
    56e0:	e56f      	b.n	51c2 <__dtoa_engine+0x6be>
    56e2:	e56c      	b.n	51be <__dtoa_engine+0x6ba>
    56e4:	9c02      	ldr	r4, [sp, #8]
    56e6:	42a0      	cmp	r0, r4
    56e8:	d900      	bls.n	56ec <__dtoa_engine+0xbe8>
    56ea:	e576      	b.n	51da <__dtoa_engine+0x6d6>
    56ec:	e573      	b.n	51d6 <__dtoa_engine+0x6d2>
    56ee:	9b08      	ldr	r3, [sp, #32]
    56f0:	9a15      	ldr	r2, [sp, #84]	@ 0x54
    56f2:	429a      	cmp	r2, r3
    56f4:	d000      	beq.n	56f8 <__dtoa_engine+0xbf4>
    56f6:	e6e2      	b.n	54be <__dtoa_engine+0x9ba>
    56f8:	2304      	movs	r3, #4
    56fa:	930a      	str	r3, [sp, #40]	@ 0x28
    56fc:	e6ea      	b.n	54d4 <__dtoa_engine+0x9d0>
    56fe:	46c0      	nop			@ (mov r8, r8)
    5700:	00000435 	.word	0x00000435

00005704 <__log10Pow2>:
    5704:	0103      	lsls	r3, r0, #4
    5706:	181b      	adds	r3, r3, r0
    5708:	00db      	lsls	r3, r3, #3
    570a:	181b      	adds	r3, r3, r0
    570c:	00da      	lsls	r2, r3, #3
    570e:	189b      	adds	r3, r3, r2
    5710:	019b      	lsls	r3, r3, #6
    5712:	1818      	adds	r0, r3, r0
    5714:	0c80      	lsrs	r0, r0, #18
    5716:	4770      	bx	lr

00005718 <__log10Pow5>:
    5718:	4b01      	ldr	r3, [pc, #4]	@ (5720 <__log10Pow5+0x8>)
    571a:	4358      	muls	r0, r3
    571c:	0d00      	lsrs	r0, r0, #20
    571e:	4770      	bx	lr
    5720:	000b2efb 	.word	0x000b2efb

00005724 <__pow5bits>:
    5724:	4b02      	ldr	r3, [pc, #8]	@ (5730 <__pow5bits+0xc>)
    5726:	4358      	muls	r0, r3
    5728:	0cc0      	lsrs	r0, r0, #19
    572a:	3001      	adds	r0, #1
    572c:	4770      	bx	lr
    572e:	46c0      	nop			@ (mov r8, r8)
    5730:	0012934f 	.word	0x0012934f

00005734 <__pow5Factor>:
    5734:	b5f0      	push	{r4, r5, r6, r7, lr}
    5736:	4647      	mov	r7, r8
    5738:	46ce      	mov	lr, r9
    573a:	b580      	push	{r7, lr}
    573c:	b08d      	sub	sp, #52	@ 0x34
    573e:	900a      	str	r0, [sp, #40]	@ 0x28
    5740:	910b      	str	r1, [sp, #44]	@ 0x2c
    5742:	9e0a      	ldr	r6, [sp, #40]	@ 0x28
    5744:	9f0b      	ldr	r7, [sp, #44]	@ 0x2c
    5746:	0871      	lsrs	r1, r6, #1
    5748:	07fb      	lsls	r3, r7, #31
    574a:	0030      	movs	r0, r6
    574c:	430b      	orrs	r3, r1
    574e:	0039      	movs	r1, r7
    5750:	07f2      	lsls	r2, r6, #31
    5752:	1812      	adds	r2, r2, r0
    5754:	414b      	adcs	r3, r1
    5756:	1892      	adds	r2, r2, r2
    5758:	415b      	adcs	r3, r3
    575a:	1a12      	subs	r2, r2, r0
    575c:	418b      	sbcs	r3, r1
    575e:	0f96      	lsrs	r6, r2, #30
    5760:	0099      	lsls	r1, r3, #2
    5762:	4331      	orrs	r1, r6
    5764:	0090      	lsls	r0, r2, #2
    5766:	1a80      	subs	r0, r0, r2
    5768:	4199      	sbcs	r1, r3
    576a:	0f06      	lsrs	r6, r0, #28
    576c:	010b      	lsls	r3, r1, #4
    576e:	4333      	orrs	r3, r6
    5770:	0102      	lsls	r2, r0, #4
    5772:	1880      	adds	r0, r0, r2
    5774:	4159      	adcs	r1, r3
    5776:	0e06      	lsrs	r6, r0, #24
    5778:	020b      	lsls	r3, r1, #8
    577a:	4333      	orrs	r3, r6
    577c:	0202      	lsls	r2, r0, #8
    577e:	1812      	adds	r2, r2, r0
    5780:	414b      	adcs	r3, r1
    5782:	0c16      	lsrs	r6, r2, #16
    5784:	0419      	lsls	r1, r3, #16
    5786:	4331      	orrs	r1, r6
    5788:	0410      	lsls	r0, r2, #16
    578a:	1880      	adds	r0, r0, r2
    578c:	4159      	adcs	r1, r3
    578e:	0f83      	lsrs	r3, r0, #30
    5790:	008f      	lsls	r7, r1, #2
    5792:	431f      	orrs	r7, r3
    5794:	0086      	lsls	r6, r0, #2
    5796:	980a      	ldr	r0, [sp, #40]	@ 0x28
    5798:	990b      	ldr	r1, [sp, #44]	@ 0x2c
    579a:	1836      	adds	r6, r6, r0
    579c:	414f      	adcs	r7, r1
    579e:	4b30      	ldr	r3, [pc, #192]	@ (5860 <__pow5Factor+0x12c>)
    57a0:	42bb      	cmp	r3, r7
    57a2:	d35a      	bcc.n	585a <__pow5Factor+0x126>
    57a4:	d057      	beq.n	5856 <__pow5Factor+0x122>
    57a6:	2000      	movs	r0, #0
    57a8:	4b2d      	ldr	r3, [pc, #180]	@ (5860 <__pow5Factor+0x12c>)
    57aa:	4681      	mov	r9, r0
    57ac:	4698      	mov	r8, r3
    57ae:	2301      	movs	r3, #1
    57b0:	07fa      	lsls	r2, r7, #31
    57b2:	469c      	mov	ip, r3
    57b4:	0873      	lsrs	r3, r6, #1
    57b6:	431a      	orrs	r2, r3
    57b8:	07f3      	lsls	r3, r6, #31
    57ba:	9201      	str	r2, [sp, #4]
    57bc:	9300      	str	r3, [sp, #0]
    57be:	9a00      	ldr	r2, [sp, #0]
    57c0:	9b01      	ldr	r3, [sp, #4]
    57c2:	1992      	adds	r2, r2, r6
    57c4:	417b      	adcs	r3, r7
    57c6:	1892      	adds	r2, r2, r2
    57c8:	415b      	adcs	r3, r3
    57ca:	1b92      	subs	r2, r2, r6
    57cc:	41bb      	sbcs	r3, r7
    57ce:	0f91      	lsrs	r1, r2, #30
    57d0:	44e1      	add	r9, ip
    57d2:	468c      	mov	ip, r1
    57d4:	4660      	mov	r0, ip
    57d6:	0099      	lsls	r1, r3, #2
    57d8:	4301      	orrs	r1, r0
    57da:	9103      	str	r1, [sp, #12]
    57dc:	0091      	lsls	r1, r2, #2
    57de:	9102      	str	r1, [sp, #8]
    57e0:	9802      	ldr	r0, [sp, #8]
    57e2:	9903      	ldr	r1, [sp, #12]
    57e4:	1a80      	subs	r0, r0, r2
    57e6:	4199      	sbcs	r1, r3
    57e8:	000b      	movs	r3, r1
    57ea:	0f01      	lsrs	r1, r0, #28
    57ec:	468c      	mov	ip, r1
    57ee:	0002      	movs	r2, r0
    57f0:	4660      	mov	r0, ip
    57f2:	0119      	lsls	r1, r3, #4
    57f4:	4301      	orrs	r1, r0
    57f6:	9105      	str	r1, [sp, #20]
    57f8:	0111      	lsls	r1, r2, #4
    57fa:	9104      	str	r1, [sp, #16]
    57fc:	9804      	ldr	r0, [sp, #16]
    57fe:	9905      	ldr	r1, [sp, #20]
    5800:	1812      	adds	r2, r2, r0
    5802:	414b      	adcs	r3, r1
    5804:	0e11      	lsrs	r1, r2, #24
    5806:	468c      	mov	ip, r1
    5808:	4660      	mov	r0, ip
    580a:	0219      	lsls	r1, r3, #8
    580c:	4301      	orrs	r1, r0
    580e:	9107      	str	r1, [sp, #28]
    5810:	0211      	lsls	r1, r2, #8
    5812:	9106      	str	r1, [sp, #24]
    5814:	9806      	ldr	r0, [sp, #24]
    5816:	9907      	ldr	r1, [sp, #28]
    5818:	1812      	adds	r2, r2, r0
    581a:	414b      	adcs	r3, r1
    581c:	0c11      	lsrs	r1, r2, #16
    581e:	468c      	mov	ip, r1
    5820:	4660      	mov	r0, ip
    5822:	0419      	lsls	r1, r3, #16
    5824:	4301      	orrs	r1, r0
    5826:	9109      	str	r1, [sp, #36]	@ 0x24
    5828:	0411      	lsls	r1, r2, #16
    582a:	9108      	str	r1, [sp, #32]
    582c:	9808      	ldr	r0, [sp, #32]
    582e:	9909      	ldr	r1, [sp, #36]	@ 0x24
    5830:	1812      	adds	r2, r2, r0
    5832:	414b      	adcs	r3, r1
    5834:	0f91      	lsrs	r1, r2, #30
    5836:	009d      	lsls	r5, r3, #2
    5838:	430d      	orrs	r5, r1
    583a:	0094      	lsls	r4, r2, #2
    583c:	1936      	adds	r6, r6, r4
    583e:	416f      	adcs	r7, r5
    5840:	45b8      	cmp	r8, r7
    5842:	d302      	bcc.n	584a <__pow5Factor+0x116>
    5844:	d1b3      	bne.n	57ae <__pow5Factor+0x7a>
    5846:	45b0      	cmp	r8, r6
    5848:	d2b1      	bcs.n	57ae <__pow5Factor+0x7a>
    584a:	4648      	mov	r0, r9
    584c:	b00d      	add	sp, #52	@ 0x34
    584e:	bcc0      	pop	{r6, r7}
    5850:	46b9      	mov	r9, r7
    5852:	46b0      	mov	r8, r6
    5854:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5856:	42b3      	cmp	r3, r6
    5858:	d2a5      	bcs.n	57a6 <__pow5Factor+0x72>
    585a:	2000      	movs	r0, #0
    585c:	e7f6      	b.n	584c <__pow5Factor+0x118>
    585e:	46c0      	nop			@ (mov r8, r8)
    5860:	33333333 	.word	0x33333333

00005864 <__double_computePow5>:
    5864:	b5f0      	push	{r4, r5, r6, r7, lr}
    5866:	46de      	mov	lr, fp
    5868:	4657      	mov	r7, sl
    586a:	464e      	mov	r6, r9
    586c:	4645      	mov	r5, r8
    586e:	b5e0      	push	{r5, r6, r7, lr}
    5870:	4689      	mov	r9, r1
    5872:	b089      	sub	sp, #36	@ 0x24
    5874:	211a      	movs	r1, #26
    5876:	4680      	mov	r8, r0
    5878:	f7fa fdca 	bl	410 <__udivsi3>
    587c:	4682      	mov	sl, r0
    587e:	211a      	movs	r1, #26
    5880:	4640      	mov	r0, r8
    5882:	f7fa fe01 	bl	488 <__aeabi_uidivmod>
    5886:	4653      	mov	r3, sl
    5888:	011a      	lsls	r2, r3, #4
    588a:	4693      	mov	fp, r2
    588c:	4b3b      	ldr	r3, [pc, #236]	@ (597c <__double_computePow5+0x118>)
    588e:	449b      	add	fp, r3
    5890:	2900      	cmp	r1, #0
    5892:	d112      	bne.n	58ba <__double_computePow5+0x56>
    5894:	4649      	mov	r1, r9
    5896:	465b      	mov	r3, fp
    5898:	681a      	ldr	r2, [r3, #0]
    589a:	685b      	ldr	r3, [r3, #4]
    589c:	600a      	str	r2, [r1, #0]
    589e:	604b      	str	r3, [r1, #4]
    58a0:	465b      	mov	r3, fp
    58a2:	6898      	ldr	r0, [r3, #8]
    58a4:	68d9      	ldr	r1, [r3, #12]
    58a6:	464b      	mov	r3, r9
    58a8:	6098      	str	r0, [r3, #8]
    58aa:	60d9      	str	r1, [r3, #12]
    58ac:	b009      	add	sp, #36	@ 0x24
    58ae:	bcf0      	pop	{r4, r5, r6, r7}
    58b0:	46bb      	mov	fp, r7
    58b2:	46b2      	mov	sl, r6
    58b4:	46a9      	mov	r9, r5
    58b6:	46a0      	mov	r8, r4
    58b8:	bdf0      	pop	{r4, r5, r6, r7, pc}
    58ba:	4b31      	ldr	r3, [pc, #196]	@ (5980 <__double_computePow5+0x11c>)
    58bc:	00c9      	lsls	r1, r1, #3
    58be:	185b      	adds	r3, r3, r1
    58c0:	681c      	ldr	r4, [r3, #0]
    58c2:	685d      	ldr	r5, [r3, #4]
    58c4:	465b      	mov	r3, fp
    58c6:	a904      	add	r1, sp, #16
    58c8:	689a      	ldr	r2, [r3, #8]
    58ca:	68db      	ldr	r3, [r3, #12]
    58cc:	0020      	movs	r0, r4
    58ce:	9100      	str	r1, [sp, #0]
    58d0:	0029      	movs	r1, r5
    58d2:	f000 f8dd 	bl	5a90 <__umul128>
    58d6:	465b      	mov	r3, fp
    58d8:	0006      	movs	r6, r0
    58da:	681a      	ldr	r2, [r3, #0]
    58dc:	685b      	ldr	r3, [r3, #4]
    58de:	000f      	movs	r7, r1
    58e0:	a906      	add	r1, sp, #24
    58e2:	0020      	movs	r0, r4
    58e4:	9100      	str	r1, [sp, #0]
    58e6:	0034      	movs	r4, r6
    58e8:	0029      	movs	r1, r5
    58ea:	003d      	movs	r5, r7
    58ec:	f000 f8d0 	bl	5a90 <__umul128>
    58f0:	9a06      	ldr	r2, [sp, #24]
    58f2:	9b07      	ldr	r3, [sp, #28]
    58f4:	18a4      	adds	r4, r4, r2
    58f6:	415d      	adcs	r5, r3
    58f8:	4683      	mov	fp, r0
    58fa:	9102      	str	r1, [sp, #8]
    58fc:	42ab      	cmp	r3, r5
    58fe:	d834      	bhi.n	596a <__double_computePow5+0x106>
    5900:	d031      	beq.n	5966 <__double_computePow5+0x102>
    5902:	4640      	mov	r0, r8
    5904:	f7ff ff0e 	bl	5724 <__pow5bits>
    5908:	4653      	mov	r3, sl
    590a:	0006      	movs	r6, r0
    590c:	201a      	movs	r0, #26
    590e:	4358      	muls	r0, r3
    5910:	f7ff ff08 	bl	5724 <__pow5bits>
    5914:	1a36      	subs	r6, r6, r0
    5916:	0022      	movs	r2, r4
    5918:	002b      	movs	r3, r5
    591a:	4658      	mov	r0, fp
    591c:	9902      	ldr	r1, [sp, #8]
    591e:	9600      	str	r6, [sp, #0]
    5920:	f000 f8f8 	bl	5b14 <__shiftright128>
    5924:	4643      	mov	r3, r8
    5926:	091b      	lsrs	r3, r3, #4
    5928:	009b      	lsls	r3, r3, #2
    592a:	469c      	mov	ip, r3
    592c:	4643      	mov	r3, r8
    592e:	9002      	str	r0, [sp, #8]
    5930:	9103      	str	r1, [sp, #12]
    5932:	271e      	movs	r7, #30
    5934:	4661      	mov	r1, ip
    5936:	4a13      	ldr	r2, [pc, #76]	@ (5984 <__double_computePow5+0x120>)
    5938:	005b      	lsls	r3, r3, #1
    593a:	403b      	ands	r3, r7
    593c:	588f      	ldr	r7, [r1, r2]
    593e:	2103      	movs	r1, #3
    5940:	40df      	lsrs	r7, r3
    5942:	4039      	ands	r1, r7
    5944:	000a      	movs	r2, r1
    5946:	9802      	ldr	r0, [sp, #8]
    5948:	9903      	ldr	r1, [sp, #12]
    594a:	2300      	movs	r3, #0
    594c:	1812      	adds	r2, r2, r0
    594e:	414b      	adcs	r3, r1
    5950:	4649      	mov	r1, r9
    5952:	0020      	movs	r0, r4
    5954:	600a      	str	r2, [r1, #0]
    5956:	604b      	str	r3, [r1, #4]
    5958:	9a04      	ldr	r2, [sp, #16]
    595a:	9b05      	ldr	r3, [sp, #20]
    595c:	0029      	movs	r1, r5
    595e:	9600      	str	r6, [sp, #0]
    5960:	f000 f8d8 	bl	5b14 <__shiftright128>
    5964:	e79f      	b.n	58a6 <__double_computePow5+0x42>
    5966:	42a2      	cmp	r2, r4
    5968:	d9cb      	bls.n	5902 <__double_computePow5+0x9e>
    596a:	9a04      	ldr	r2, [sp, #16]
    596c:	9b05      	ldr	r3, [sp, #20]
    596e:	2601      	movs	r6, #1
    5970:	2700      	movs	r7, #0
    5972:	1992      	adds	r2, r2, r6
    5974:	417b      	adcs	r3, r7
    5976:	9204      	str	r2, [sp, #16]
    5978:	9305      	str	r3, [sp, #20]
    597a:	e7c2      	b.n	5902 <__double_computePow5+0x9e>
    597c:	00007110 	.word	0x00007110
    5980:	00007040 	.word	0x00007040
    5984:	00007d8c 	.word	0x00007d8c

00005988 <__double_computeInvPow5>:
    5988:	b5f0      	push	{r4, r5, r6, r7, lr}
    598a:	46ce      	mov	lr, r9
    598c:	4647      	mov	r7, r8
    598e:	b580      	push	{r7, lr}
    5990:	0005      	movs	r5, r0
    5992:	000c      	movs	r4, r1
    5994:	b08b      	sub	sp, #44	@ 0x2c
    5996:	211a      	movs	r1, #26
    5998:	3019      	adds	r0, #25
    599a:	f7fa fd39 	bl	410 <__udivsi3>
    599e:	261a      	movs	r6, #26
    59a0:	4346      	muls	r6, r0
    59a2:	4f38      	ldr	r7, [pc, #224]	@ (5a84 <__double_computeInvPow5+0xfc>)
    59a4:	0100      	lsls	r0, r0, #4
    59a6:	1b72      	subs	r2, r6, r5
    59a8:	19c7      	adds	r7, r0, r7
    59aa:	42ae      	cmp	r6, r5
    59ac:	d10c      	bne.n	59c8 <__double_computeInvPow5+0x40>
    59ae:	683a      	ldr	r2, [r7, #0]
    59b0:	687b      	ldr	r3, [r7, #4]
    59b2:	6022      	str	r2, [r4, #0]
    59b4:	6063      	str	r3, [r4, #4]
    59b6:	68b8      	ldr	r0, [r7, #8]
    59b8:	68f9      	ldr	r1, [r7, #12]
    59ba:	60a0      	str	r0, [r4, #8]
    59bc:	60e1      	str	r1, [r4, #12]
    59be:	b00b      	add	sp, #44	@ 0x2c
    59c0:	bcc0      	pop	{r6, r7}
    59c2:	46b9      	mov	r9, r7
    59c4:	46b0      	mov	r8, r6
    59c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
    59c8:	4b2f      	ldr	r3, [pc, #188]	@ (5a88 <__double_computeInvPow5+0x100>)
    59ca:	00d2      	lsls	r2, r2, #3
    59cc:	189b      	adds	r3, r3, r2
    59ce:	681a      	ldr	r2, [r3, #0]
    59d0:	685b      	ldr	r3, [r3, #4]
    59d2:	a906      	add	r1, sp, #24
    59d4:	9202      	str	r2, [sp, #8]
    59d6:	9303      	str	r3, [sp, #12]
    59d8:	68ba      	ldr	r2, [r7, #8]
    59da:	68fb      	ldr	r3, [r7, #12]
    59dc:	9100      	str	r1, [sp, #0]
    59de:	9802      	ldr	r0, [sp, #8]
    59e0:	9903      	ldr	r1, [sp, #12]
    59e2:	f000 f855 	bl	5a90 <__umul128>
    59e6:	683a      	ldr	r2, [r7, #0]
    59e8:	687b      	ldr	r3, [r7, #4]
    59ea:	9004      	str	r0, [sp, #16]
    59ec:	9105      	str	r1, [sp, #20]
    59ee:	2001      	movs	r0, #1
    59f0:	4240      	negs	r0, r0
    59f2:	17c1      	asrs	r1, r0, #31
    59f4:	1812      	adds	r2, r2, r0
    59f6:	414b      	adcs	r3, r1
    59f8:	a908      	add	r1, sp, #32
    59fa:	9100      	str	r1, [sp, #0]
    59fc:	9802      	ldr	r0, [sp, #8]
    59fe:	9903      	ldr	r1, [sp, #12]
    5a00:	f000 f846 	bl	5a90 <__umul128>
    5a04:	9a08      	ldr	r2, [sp, #32]
    5a06:	9b09      	ldr	r3, [sp, #36]	@ 0x24
    5a08:	4681      	mov	r9, r0
    5a0a:	4688      	mov	r8, r1
    5a0c:	9804      	ldr	r0, [sp, #16]
    5a0e:	9905      	ldr	r1, [sp, #20]
    5a10:	1880      	adds	r0, r0, r2
    5a12:	4159      	adcs	r1, r3
    5a14:	9002      	str	r0, [sp, #8]
    5a16:	9103      	str	r1, [sp, #12]
    5a18:	428b      	cmp	r3, r1
    5a1a:	d829      	bhi.n	5a70 <__double_computeInvPow5+0xe8>
    5a1c:	d026      	beq.n	5a6c <__double_computeInvPow5+0xe4>
    5a1e:	0030      	movs	r0, r6
    5a20:	f7ff fe80 	bl	5724 <__pow5bits>
    5a24:	0006      	movs	r6, r0
    5a26:	0028      	movs	r0, r5
    5a28:	f7ff fe7c 	bl	5724 <__pow5bits>
    5a2c:	9a02      	ldr	r2, [sp, #8]
    5a2e:	9b03      	ldr	r3, [sp, #12]
    5a30:	1a36      	subs	r6, r6, r0
    5a32:	4641      	mov	r1, r8
    5a34:	4648      	mov	r0, r9
    5a36:	9600      	str	r6, [sp, #0]
    5a38:	f000 f86c 	bl	5b14 <__shiftright128>
    5a3c:	221e      	movs	r2, #30
    5a3e:	092f      	lsrs	r7, r5, #4
    5a40:	4b12      	ldr	r3, [pc, #72]	@ (5a8c <__double_computeInvPow5+0x104>)
    5a42:	00bf      	lsls	r7, r7, #2
    5a44:	58fb      	ldr	r3, [r7, r3]
    5a46:	006d      	lsls	r5, r5, #1
    5a48:	402a      	ands	r2, r5
    5a4a:	40d3      	lsrs	r3, r2
    5a4c:	2503      	movs	r5, #3
    5a4e:	401d      	ands	r5, r3
    5a50:	2300      	movs	r3, #0
    5a52:	1c6a      	adds	r2, r5, #1
    5a54:	1812      	adds	r2, r2, r0
    5a56:	414b      	adcs	r3, r1
    5a58:	9802      	ldr	r0, [sp, #8]
    5a5a:	9903      	ldr	r1, [sp, #12]
    5a5c:	6022      	str	r2, [r4, #0]
    5a5e:	6063      	str	r3, [r4, #4]
    5a60:	9a06      	ldr	r2, [sp, #24]
    5a62:	9b07      	ldr	r3, [sp, #28]
    5a64:	9600      	str	r6, [sp, #0]
    5a66:	f000 f855 	bl	5b14 <__shiftright128>
    5a6a:	e7a6      	b.n	59ba <__double_computeInvPow5+0x32>
    5a6c:	4282      	cmp	r2, r0
    5a6e:	d9d6      	bls.n	5a1e <__double_computeInvPow5+0x96>
    5a70:	9a06      	ldr	r2, [sp, #24]
    5a72:	9b07      	ldr	r3, [sp, #28]
    5a74:	2001      	movs	r0, #1
    5a76:	2100      	movs	r1, #0
    5a78:	1812      	adds	r2, r2, r0
    5a7a:	414b      	adcs	r3, r1
    5a7c:	9206      	str	r2, [sp, #24]
    5a7e:	9307      	str	r3, [sp, #28]
    5a80:	e7cd      	b.n	5a1e <__double_computeInvPow5+0x96>
    5a82:	46c0      	nop			@ (mov r8, r8)
    5a84:	000071e0 	.word	0x000071e0
    5a88:	00007040 	.word	0x00007040
    5a8c:	00007de0 	.word	0x00007de0

00005a90 <__umul128>:
    5a90:	b5f0      	push	{r4, r5, r6, r7, lr}
    5a92:	46d6      	mov	lr, sl
    5a94:	464f      	mov	r7, r9
    5a96:	4646      	mov	r6, r8
    5a98:	b5c0      	push	{r6, r7, lr}
    5a9a:	4688      	mov	r8, r1
    5a9c:	b082      	sub	sp, #8
    5a9e:	4699      	mov	r9, r3
    5aa0:	2100      	movs	r1, #0
    5aa2:	2300      	movs	r3, #0
    5aa4:	0006      	movs	r6, r0
    5aa6:	0017      	movs	r7, r2
    5aa8:	f7fb f860 	bl	b6c <__aeabi_lmul>
    5aac:	003a      	movs	r2, r7
    5aae:	4682      	mov	sl, r0
    5ab0:	000c      	movs	r4, r1
    5ab2:	2300      	movs	r3, #0
    5ab4:	4640      	mov	r0, r8
    5ab6:	2100      	movs	r1, #0
    5ab8:	f7fb f858 	bl	b6c <__aeabi_lmul>
    5abc:	2500      	movs	r5, #0
    5abe:	1824      	adds	r4, r4, r0
    5ac0:	414d      	adcs	r5, r1
    5ac2:	0032      	movs	r2, r6
    5ac4:	2300      	movs	r3, #0
    5ac6:	4648      	mov	r0, r9
    5ac8:	2100      	movs	r1, #0
    5aca:	f7fb f84f 	bl	b6c <__aeabi_lmul>
    5ace:	0026      	movs	r6, r4
    5ad0:	2700      	movs	r7, #0
    5ad2:	1980      	adds	r0, r0, r6
    5ad4:	4179      	adcs	r1, r7
    5ad6:	2700      	movs	r7, #0
    5ad8:	9000      	str	r0, [sp, #0]
    5ada:	9101      	str	r1, [sp, #4]
    5adc:	464a      	mov	r2, r9
    5ade:	2300      	movs	r3, #0
    5ae0:	4640      	mov	r0, r8
    5ae2:	2100      	movs	r1, #0
    5ae4:	f7fb f842 	bl	b6c <__aeabi_lmul>
    5ae8:	002a      	movs	r2, r5
    5aea:	003b      	movs	r3, r7
    5aec:	9e00      	ldr	r6, [sp, #0]
    5aee:	9f01      	ldr	r7, [sp, #4]
    5af0:	1812      	adds	r2, r2, r0
    5af2:	414b      	adcs	r3, r1
    5af4:	003c      	movs	r4, r7
    5af6:	2500      	movs	r5, #0
    5af8:	1912      	adds	r2, r2, r4
    5afa:	416b      	adcs	r3, r5
    5afc:	990a      	ldr	r1, [sp, #40]	@ 0x28
    5afe:	4650      	mov	r0, sl
    5b00:	600a      	str	r2, [r1, #0]
    5b02:	604b      	str	r3, [r1, #4]
    5b04:	0031      	movs	r1, r6
    5b06:	b002      	add	sp, #8
    5b08:	bce0      	pop	{r5, r6, r7}
    5b0a:	46ba      	mov	sl, r7
    5b0c:	46b1      	mov	r9, r6
    5b0e:	46a8      	mov	r8, r5
    5b10:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5b12:	46c0      	nop			@ (mov r8, r8)

00005b14 <__shiftright128>:
    5b14:	b5f0      	push	{r4, r5, r6, r7, lr}
    5b16:	2440      	movs	r4, #64	@ 0x40
    5b18:	9e05      	ldr	r6, [sp, #20]
    5b1a:	000d      	movs	r5, r1
    5b1c:	1ba4      	subs	r4, r4, r6
    5b1e:	0021      	movs	r1, r4
    5b20:	3920      	subs	r1, #32
    5b22:	d40c      	bmi.n	5b3e <__shiftright128+0x2a>
    5b24:	0013      	movs	r3, r2
    5b26:	408b      	lsls	r3, r1
    5b28:	0019      	movs	r1, r3
    5b2a:	0033      	movs	r3, r6
    5b2c:	40a2      	lsls	r2, r4
    5b2e:	3b20      	subs	r3, #32
    5b30:	d410      	bmi.n	5b54 <__shiftright128+0x40>
    5b32:	0028      	movs	r0, r5
    5b34:	40d8      	lsrs	r0, r3
    5b36:	40f5      	lsrs	r5, r6
    5b38:	4310      	orrs	r0, r2
    5b3a:	4329      	orrs	r1, r5
    5b3c:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5b3e:	2120      	movs	r1, #32
    5b40:	0017      	movs	r7, r2
    5b42:	40a3      	lsls	r3, r4
    5b44:	1b09      	subs	r1, r1, r4
    5b46:	40cf      	lsrs	r7, r1
    5b48:	0019      	movs	r1, r3
    5b4a:	0033      	movs	r3, r6
    5b4c:	40a2      	lsls	r2, r4
    5b4e:	4339      	orrs	r1, r7
    5b50:	3b20      	subs	r3, #32
    5b52:	d5ee      	bpl.n	5b32 <__shiftright128+0x1e>
    5b54:	2320      	movs	r3, #32
    5b56:	002c      	movs	r4, r5
    5b58:	1b9b      	subs	r3, r3, r6
    5b5a:	409c      	lsls	r4, r3
    5b5c:	40f0      	lsrs	r0, r6
    5b5e:	4320      	orrs	r0, r4
    5b60:	e7e9      	b.n	5b36 <__shiftright128+0x22>
    5b62:	46c0      	nop			@ (mov r8, r8)

00005b64 <__dtox_engine>:
    5b64:	b5f0      	push	{r4, r5, r6, r7, lr}
    5b66:	464e      	mov	r6, r9
    5b68:	4645      	mov	r5, r8
    5b6a:	46de      	mov	lr, fp
    5b6c:	4657      	mov	r7, sl
    5b6e:	4694      	mov	ip, r2
    5b70:	b5e0      	push	{r5, r6, r7, lr}
    5b72:	b085      	sub	sp, #20
    5b74:	4698      	mov	r8, r3
    5b76:	ab0e      	add	r3, sp, #56	@ 0x38
    5b78:	781b      	ldrb	r3, [r3, #0]
    5b7a:	0004      	movs	r4, r0
    5b7c:	4699      	mov	r9, r3
    5b7e:	4663      	mov	r3, ip
    5b80:	0fca      	lsrs	r2, r1, #31
    5b82:	711a      	strb	r2, [r3, #4]
    5b84:	004b      	lsls	r3, r1, #1
    5b86:	0309      	lsls	r1, r1, #12
    5b88:	0b09      	lsrs	r1, r1, #12
    5b8a:	0d5b      	lsrs	r3, r3, #21
    5b8c:	430c      	orrs	r4, r1
    5b8e:	d100      	bne.n	5b92 <__dtox_engine+0x2e>
    5b90:	e0ec      	b.n	5d6c <__dtox_engine+0x208>
    5b92:	4c74      	ldr	r4, [pc, #464]	@ (5d64 <__dtox_engine+0x200>)
    5b94:	42a3      	cmp	r3, r4
    5b96:	d100      	bne.n	5b9a <__dtox_engine+0x36>
    5b98:	e1e5      	b.n	5f66 <__dtox_engine+0x402>
    5b9a:	9000      	str	r0, [sp, #0]
    5b9c:	2b00      	cmp	r3, #0
    5b9e:	d000      	beq.n	5ba2 <__dtox_engine+0x3e>
    5ba0:	e2e1      	b.n	6166 <__dtox_engine+0x602>
    5ba2:	4b71      	ldr	r3, [pc, #452]	@ (5d68 <__dtox_engine+0x204>)
    5ba4:	9101      	str	r1, [sp, #4]
    5ba6:	4662      	mov	r2, ip
    5ba8:	6013      	str	r3, [r2, #0]
    5baa:	4643      	mov	r3, r8
    5bac:	2b00      	cmp	r3, #0
    5bae:	da00      	bge.n	5bb2 <__dtox_engine+0x4e>
    5bb0:	e2c8      	b.n	6144 <__dtox_engine+0x5e0>
    5bb2:	4643      	mov	r3, r8
    5bb4:	2b0c      	cmp	r3, #12
    5bb6:	dc00      	bgt.n	5bba <__dtox_engine+0x56>
    5bb8:	e0f1      	b.n	5d9e <__dtox_engine+0x23a>
    5bba:	9e00      	ldr	r6, [sp, #0]
    5bbc:	9f01      	ldr	r7, [sp, #4]
    5bbe:	210f      	movs	r1, #15
    5bc0:	000b      	movs	r3, r1
    5bc2:	0738      	lsls	r0, r7, #28
    5bc4:	0932      	lsrs	r2, r6, #4
    5bc6:	4033      	ands	r3, r6
    5bc8:	4302      	orrs	r2, r0
    5bca:	113d      	asrs	r5, r7, #4
    5bcc:	4231      	tst	r1, r6
    5bce:	d100      	bne.n	5bd2 <__dtox_engine+0x6e>
    5bd0:	e2c7      	b.n	6162 <__dtox_engine+0x5fe>
    5bd2:	2b09      	cmp	r3, #9
    5bd4:	dd02      	ble.n	5bdc <__dtox_engine+0x78>
    5bd6:	4649      	mov	r1, r9
    5bd8:	1a5b      	subs	r3, r3, r1
    5bda:	3327      	adds	r3, #39	@ 0x27
    5bdc:	3330      	adds	r3, #48	@ 0x30
    5bde:	4661      	mov	r1, ip
    5be0:	240f      	movs	r4, #15
    5be2:	0010      	movs	r0, r2
    5be4:	748b      	strb	r3, [r1, #18]
    5be6:	0729      	lsls	r1, r5, #28
    5be8:	0913      	lsrs	r3, r2, #4
    5bea:	430b      	orrs	r3, r1
    5bec:	4020      	ands	r0, r4
    5bee:	1129      	asrs	r1, r5, #4
    5bf0:	4222      	tst	r2, r4
    5bf2:	d100      	bne.n	5bf6 <__dtox_engine+0x92>
    5bf4:	e2a0      	b.n	6138 <__dtox_engine+0x5d4>
    5bf6:	220d      	movs	r2, #13
    5bf8:	4690      	mov	r8, r2
    5bfa:	2809      	cmp	r0, #9
    5bfc:	dd02      	ble.n	5c04 <__dtox_engine+0xa0>
    5bfe:	464a      	mov	r2, r9
    5c00:	1a80      	subs	r0, r0, r2
    5c02:	3027      	adds	r0, #39	@ 0x27
    5c04:	4662      	mov	r2, ip
    5c06:	3030      	adds	r0, #48	@ 0x30
    5c08:	7450      	strb	r0, [r2, #17]
    5c0a:	4642      	mov	r2, r8
    5c0c:	2a0c      	cmp	r2, #12
    5c0e:	da01      	bge.n	5c14 <__dtox_engine+0xb0>
    5c10:	220c      	movs	r2, #12
    5c12:	4690      	mov	r8, r2
    5c14:	240f      	movs	r4, #15
    5c16:	0018      	movs	r0, r3
    5c18:	070d      	lsls	r5, r1, #28
    5c1a:	091a      	lsrs	r2, r3, #4
    5c1c:	4020      	ands	r0, r4
    5c1e:	432a      	orrs	r2, r5
    5c20:	1109      	asrs	r1, r1, #4
    5c22:	4223      	tst	r3, r4
    5c24:	d000      	beq.n	5c28 <__dtox_engine+0xc4>
    5c26:	e1bb      	b.n	5fa0 <__dtox_engine+0x43c>
    5c28:	2330      	movs	r3, #48	@ 0x30
    5c2a:	4660      	mov	r0, ip
    5c2c:	0015      	movs	r5, r2
    5c2e:	7403      	strb	r3, [r0, #16]
    5c30:	200f      	movs	r0, #15
    5c32:	070b      	lsls	r3, r1, #28
    5c34:	0917      	lsrs	r7, r2, #4
    5c36:	431f      	orrs	r7, r3
    5c38:	4005      	ands	r5, r0
    5c3a:	110b      	asrs	r3, r1, #4
    5c3c:	4202      	tst	r2, r0
    5c3e:	d100      	bne.n	5c42 <__dtox_engine+0xde>
    5c40:	e2a0      	b.n	6184 <__dtox_engine+0x620>
    5c42:	4640      	mov	r0, r8
    5c44:	2d09      	cmp	r5, #9
    5c46:	dd02      	ble.n	5c4e <__dtox_engine+0xea>
    5c48:	464a      	mov	r2, r9
    5c4a:	1aad      	subs	r5, r5, r2
    5c4c:	3527      	adds	r5, #39	@ 0x27
    5c4e:	4662      	mov	r2, ip
    5c50:	3530      	adds	r5, #48	@ 0x30
    5c52:	73d5      	strb	r5, [r2, #15]
    5c54:	280a      	cmp	r0, #10
    5c56:	da00      	bge.n	5c5a <__dtox_engine+0xf6>
    5c58:	200a      	movs	r0, #10
    5c5a:	220f      	movs	r2, #15
    5c5c:	003c      	movs	r4, r7
    5c5e:	0719      	lsls	r1, r3, #28
    5c60:	093d      	lsrs	r5, r7, #4
    5c62:	4014      	ands	r4, r2
    5c64:	430d      	orrs	r5, r1
    5c66:	111b      	asrs	r3, r3, #4
    5c68:	4217      	tst	r7, r2
    5c6a:	d000      	beq.n	5c6e <__dtox_engine+0x10a>
    5c6c:	e1bb      	b.n	5fe6 <__dtox_engine+0x482>
    5c6e:	2230      	movs	r2, #48	@ 0x30
    5c70:	4661      	mov	r1, ip
    5c72:	002c      	movs	r4, r5
    5c74:	738a      	strb	r2, [r1, #14]
    5c76:	092f      	lsrs	r7, r5, #4
    5c78:	0719      	lsls	r1, r3, #28
    5c7a:	3a21      	subs	r2, #33	@ 0x21
    5c7c:	4014      	ands	r4, r2
    5c7e:	430f      	orrs	r7, r1
    5c80:	111b      	asrs	r3, r3, #4
    5c82:	4215      	tst	r5, r2
    5c84:	d000      	beq.n	5c88 <__dtox_engine+0x124>
    5c86:	e1c3      	b.n	6010 <__dtox_engine+0x4ac>
    5c88:	2230      	movs	r2, #48	@ 0x30
    5c8a:	4661      	mov	r1, ip
    5c8c:	003d      	movs	r5, r7
    5c8e:	734a      	strb	r2, [r1, #13]
    5c90:	093c      	lsrs	r4, r7, #4
    5c92:	0719      	lsls	r1, r3, #28
    5c94:	3a21      	subs	r2, #33	@ 0x21
    5c96:	4015      	ands	r5, r2
    5c98:	430c      	orrs	r4, r1
    5c9a:	111b      	asrs	r3, r3, #4
    5c9c:	4217      	tst	r7, r2
    5c9e:	d000      	beq.n	5ca2 <__dtox_engine+0x13e>
    5ca0:	e1cb      	b.n	603a <__dtox_engine+0x4d6>
    5ca2:	2230      	movs	r2, #48	@ 0x30
    5ca4:	4661      	mov	r1, ip
    5ca6:	0025      	movs	r5, r4
    5ca8:	730a      	strb	r2, [r1, #12]
    5caa:	0927      	lsrs	r7, r4, #4
    5cac:	0719      	lsls	r1, r3, #28
    5cae:	3a21      	subs	r2, #33	@ 0x21
    5cb0:	4015      	ands	r5, r2
    5cb2:	430f      	orrs	r7, r1
    5cb4:	111b      	asrs	r3, r3, #4
    5cb6:	4214      	tst	r4, r2
    5cb8:	d000      	beq.n	5cbc <__dtox_engine+0x158>
    5cba:	e1d3      	b.n	6064 <__dtox_engine+0x500>
    5cbc:	2230      	movs	r2, #48	@ 0x30
    5cbe:	4661      	mov	r1, ip
    5cc0:	72ca      	strb	r2, [r1, #11]
    5cc2:	3a21      	subs	r2, #33	@ 0x21
    5cc4:	0039      	movs	r1, r7
    5cc6:	4011      	ands	r1, r2
    5cc8:	468a      	mov	sl, r1
    5cca:	093d      	lsrs	r5, r7, #4
    5ccc:	0719      	lsls	r1, r3, #28
    5cce:	430d      	orrs	r5, r1
    5cd0:	111b      	asrs	r3, r3, #4
    5cd2:	4217      	tst	r7, r2
    5cd4:	d000      	beq.n	5cd8 <__dtox_engine+0x174>
    5cd6:	e1f7      	b.n	60c8 <__dtox_engine+0x564>
    5cd8:	2230      	movs	r2, #48	@ 0x30
    5cda:	4661      	mov	r1, ip
    5cdc:	728a      	strb	r2, [r1, #10]
    5cde:	210f      	movs	r1, #15
    5ce0:	002f      	movs	r7, r5
    5ce2:	071c      	lsls	r4, r3, #28
    5ce4:	092a      	lsrs	r2, r5, #4
    5ce6:	400f      	ands	r7, r1
    5ce8:	4322      	orrs	r2, r4
    5cea:	111b      	asrs	r3, r3, #4
    5cec:	420d      	tst	r5, r1
    5cee:	d000      	beq.n	5cf2 <__dtox_engine+0x18e>
    5cf0:	e1fb      	b.n	60ea <__dtox_engine+0x586>
    5cf2:	2130      	movs	r1, #48	@ 0x30
    5cf4:	4664      	mov	r4, ip
    5cf6:	7261      	strb	r1, [r4, #9]
    5cf8:	3921      	subs	r1, #33	@ 0x21
    5cfa:	0017      	movs	r7, r2
    5cfc:	071c      	lsls	r4, r3, #28
    5cfe:	0915      	lsrs	r5, r2, #4
    5d00:	4325      	orrs	r5, r4
    5d02:	46a8      	mov	r8, r5
    5d04:	400f      	ands	r7, r1
    5d06:	111b      	asrs	r3, r3, #4
    5d08:	420a      	tst	r2, r1
    5d0a:	d000      	beq.n	5d0e <__dtox_engine+0x1aa>
    5d0c:	e1ca      	b.n	60a4 <__dtox_engine+0x540>
    5d0e:	2230      	movs	r2, #48	@ 0x30
    5d10:	4661      	mov	r1, ip
    5d12:	720a      	strb	r2, [r1, #8]
    5d14:	3a21      	subs	r2, #33	@ 0x21
    5d16:	4644      	mov	r4, r8
    5d18:	4645      	mov	r5, r8
    5d1a:	0719      	lsls	r1, r3, #28
    5d1c:	0927      	lsrs	r7, r4, #4
    5d1e:	4015      	ands	r5, r2
    5d20:	430f      	orrs	r7, r1
    5d22:	111b      	asrs	r3, r3, #4
    5d24:	4214      	tst	r4, r2
    5d26:	d000      	beq.n	5d2a <__dtox_engine+0x1c6>
    5d28:	e1f9      	b.n	611e <__dtox_engine+0x5ba>
    5d2a:	2230      	movs	r2, #48	@ 0x30
    5d2c:	4661      	mov	r1, ip
    5d2e:	71ca      	strb	r2, [r1, #7]
    5d30:	240f      	movs	r4, #15
    5d32:	003a      	movs	r2, r7
    5d34:	0719      	lsls	r1, r3, #28
    5d36:	093b      	lsrs	r3, r7, #4
    5d38:	4022      	ands	r2, r4
    5d3a:	430b      	orrs	r3, r1
    5d3c:	4227      	tst	r7, r4
    5d3e:	d000      	beq.n	5d42 <__dtox_engine+0x1de>
    5d40:	e1e0      	b.n	6104 <__dtox_engine+0x5a0>
    5d42:	2230      	movs	r2, #48	@ 0x30
    5d44:	4661      	mov	r1, ip
    5d46:	718a      	strb	r2, [r1, #6]
    5d48:	2b00      	cmp	r3, #0
    5d4a:	d100      	bne.n	5d4e <__dtox_engine+0x1ea>
    5d4c:	e0fc      	b.n	5f48 <__dtox_engine+0x3e4>
    5d4e:	3330      	adds	r3, #48	@ 0x30
    5d50:	b2db      	uxtb	r3, r3
    5d52:	4662      	mov	r2, ip
    5d54:	7153      	strb	r3, [r2, #5]
    5d56:	b005      	add	sp, #20
    5d58:	bcf0      	pop	{r4, r5, r6, r7}
    5d5a:	46bb      	mov	fp, r7
    5d5c:	46b2      	mov	sl, r6
    5d5e:	46a9      	mov	r9, r5
    5d60:	46a0      	mov	r8, r4
    5d62:	bdf0      	pop	{r4, r5, r6, r7, pc}
    5d64:	000007ff 	.word	0x000007ff
    5d68:	fffffc02 	.word	0xfffffc02
    5d6c:	2b00      	cmp	r3, #0
    5d6e:	d100      	bne.n	5d72 <__dtox_engine+0x20e>
    5d70:	e0ec      	b.n	5f4c <__dtox_engine+0x3e8>
    5d72:	49d3      	ldr	r1, [pc, #844]	@ (60c0 <__dtox_engine+0x55c>)
    5d74:	428b      	cmp	r3, r1
    5d76:	d100      	bne.n	5d7a <__dtox_engine+0x216>
    5d78:	e187      	b.n	608a <__dtox_engine+0x526>
    5d7a:	4ad2      	ldr	r2, [pc, #840]	@ (60c4 <__dtox_engine+0x560>)
    5d7c:	4692      	mov	sl, r2
    5d7e:	4662      	mov	r2, ip
    5d80:	4453      	add	r3, sl
    5d82:	6013      	str	r3, [r2, #0]
    5d84:	4643      	mov	r3, r8
    5d86:	2b00      	cmp	r3, #0
    5d88:	da00      	bge.n	5d8c <__dtox_engine+0x228>
    5d8a:	e1f7      	b.n	617c <__dtox_engine+0x618>
    5d8c:	2480      	movs	r4, #128	@ 0x80
    5d8e:	2300      	movs	r3, #0
    5d90:	0364      	lsls	r4, r4, #13
    5d92:	9300      	str	r3, [sp, #0]
    5d94:	9401      	str	r4, [sp, #4]
    5d96:	4643      	mov	r3, r8
    5d98:	2b0c      	cmp	r3, #12
    5d9a:	dd00      	ble.n	5d9e <__dtox_engine+0x23a>
    5d9c:	e70d      	b.n	5bba <__dtox_engine+0x56>
    5d9e:	230d      	movs	r3, #13
    5da0:	4642      	mov	r2, r8
    5da2:	1a9b      	subs	r3, r3, r2
    5da4:	009b      	lsls	r3, r3, #2
    5da6:	0018      	movs	r0, r3
    5da8:	469a      	mov	sl, r3
    5daa:	1e59      	subs	r1, r3, #1
    5dac:	3821      	subs	r0, #33	@ 0x21
    5dae:	d500      	bpl.n	5db2 <__dtox_engine+0x24e>
    5db0:	e165      	b.n	607e <__dtox_engine+0x51a>
    5db2:	2601      	movs	r6, #1
    5db4:	4086      	lsls	r6, r0
    5db6:	0033      	movs	r3, r6
    5db8:	2001      	movs	r0, #1
    5dba:	4088      	lsls	r0, r1
    5dbc:	0019      	movs	r1, r3
    5dbe:	0002      	movs	r2, r0
    5dc0:	2601      	movs	r6, #1
    5dc2:	4276      	negs	r6, r6
    5dc4:	17f7      	asrs	r7, r6, #31
    5dc6:	1880      	adds	r0, r0, r2
    5dc8:	4159      	adcs	r1, r3
    5dca:	2500      	movs	r5, #0
    5dcc:	4244      	negs	r4, r0
    5dce:	418d      	sbcs	r5, r1
    5dd0:	1980      	adds	r0, r0, r6
    5dd2:	4179      	adcs	r1, r7
    5dd4:	9e00      	ldr	r6, [sp, #0]
    5dd6:	9f01      	ldr	r7, [sp, #4]
    5dd8:	9402      	str	r4, [sp, #8]
    5dda:	9503      	str	r5, [sp, #12]
    5ddc:	0004      	movs	r4, r0
    5dde:	000d      	movs	r5, r1
    5de0:	0030      	movs	r0, r6
    5de2:	0039      	movs	r1, r7
    5de4:	4020      	ands	r0, r4
    5de6:	4029      	ands	r1, r5
    5de8:	4299      	cmp	r1, r3
    5dea:	dc04      	bgt.n	5df6 <__dtox_engine+0x292>
    5dec:	d000      	beq.n	5df0 <__dtox_engine+0x28c>
    5dee:	e14f      	b.n	6090 <__dtox_engine+0x52c>
    5df0:	4290      	cmp	r0, r2
    5df2:	d800      	bhi.n	5df6 <__dtox_engine+0x292>
    5df4:	e14c      	b.n	6090 <__dtox_engine+0x52c>
    5df6:	9800      	ldr	r0, [sp, #0]
    5df8:	9901      	ldr	r1, [sp, #4]
    5dfa:	1880      	adds	r0, r0, r2
    5dfc:	4159      	adcs	r1, r3
    5dfe:	9000      	str	r0, [sp, #0]
    5e00:	9101      	str	r1, [sp, #4]
    5e02:	9b02      	ldr	r3, [sp, #8]
    5e04:	9c03      	ldr	r4, [sp, #12]
    5e06:	9800      	ldr	r0, [sp, #0]
    5e08:	9901      	ldr	r1, [sp, #4]
    5e0a:	001a      	movs	r2, r3
    5e0c:	0025      	movs	r5, r4
    5e0e:	4002      	ands	r2, r0
    5e10:	400d      	ands	r5, r1
    5e12:	072b      	lsls	r3, r5, #28
    5e14:	0914      	lsrs	r4, r2, #4
    5e16:	431c      	orrs	r4, r3
    5e18:	260f      	movs	r6, #15
    5e1a:	0020      	movs	r0, r4
    5e1c:	0629      	lsls	r1, r5, #24
    5e1e:	0a13      	lsrs	r3, r2, #8
    5e20:	430b      	orrs	r3, r1
    5e22:	4030      	ands	r0, r6
    5e24:	1229      	asrs	r1, r5, #8
    5e26:	4234      	tst	r4, r6
    5e28:	d000      	beq.n	5e2c <__dtox_engine+0x2c8>
    5e2a:	e6e6      	b.n	5bfa <__dtox_engine+0x96>
    5e2c:	4640      	mov	r0, r8
    5e2e:	280c      	cmp	r0, #12
    5e30:	d100      	bne.n	5e34 <__dtox_engine+0x2d0>
    5e32:	e183      	b.n	613c <__dtox_engine+0x5d8>
    5e34:	0018      	movs	r0, r3
    5e36:	0529      	lsls	r1, r5, #20
    5e38:	0b12      	lsrs	r2, r2, #12
    5e3a:	430a      	orrs	r2, r1
    5e3c:	4030      	ands	r0, r6
    5e3e:	1329      	asrs	r1, r5, #12
    5e40:	4233      	tst	r3, r6
    5e42:	d000      	beq.n	5e46 <__dtox_engine+0x2e2>
    5e44:	e0ac      	b.n	5fa0 <__dtox_engine+0x43c>
    5e46:	4643      	mov	r3, r8
    5e48:	2b0b      	cmp	r3, #11
    5e4a:	d100      	bne.n	5e4e <__dtox_engine+0x2ea>
    5e4c:	e6ec      	b.n	5c28 <__dtox_engine+0xc4>
    5e4e:	4640      	mov	r0, r8
    5e50:	260f      	movs	r6, #15
    5e52:	0015      	movs	r5, r2
    5e54:	070b      	lsls	r3, r1, #28
    5e56:	0917      	lsrs	r7, r2, #4
    5e58:	431f      	orrs	r7, r3
    5e5a:	110b      	asrs	r3, r1, #4
    5e5c:	4035      	ands	r5, r6
    5e5e:	9300      	str	r3, [sp, #0]
    5e60:	4232      	tst	r2, r6
    5e62:	d000      	beq.n	5e66 <__dtox_engine+0x302>
    5e64:	e6ee      	b.n	5c44 <__dtox_engine+0xe0>
    5e66:	280a      	cmp	r0, #10
    5e68:	d100      	bne.n	5e6c <__dtox_engine+0x308>
    5e6a:	e0af      	b.n	5fcc <__dtox_engine+0x468>
    5e6c:	003c      	movs	r4, r7
    5e6e:	060b      	lsls	r3, r1, #24
    5e70:	0a15      	lsrs	r5, r2, #8
    5e72:	431d      	orrs	r5, r3
    5e74:	120b      	asrs	r3, r1, #8
    5e76:	469b      	mov	fp, r3
    5e78:	4034      	ands	r4, r6
    5e7a:	4237      	tst	r7, r6
    5e7c:	d000      	beq.n	5e80 <__dtox_engine+0x31c>
    5e7e:	e0b2      	b.n	5fe6 <__dtox_engine+0x482>
    5e80:	2809      	cmp	r0, #9
    5e82:	d100      	bne.n	5e86 <__dtox_engine+0x322>
    5e84:	e6f3      	b.n	5c6e <__dtox_engine+0x10a>
    5e86:	002c      	movs	r4, r5
    5e88:	050b      	lsls	r3, r1, #20
    5e8a:	0b17      	lsrs	r7, r2, #12
    5e8c:	431f      	orrs	r7, r3
    5e8e:	4034      	ands	r4, r6
    5e90:	130b      	asrs	r3, r1, #12
    5e92:	4235      	tst	r5, r6
    5e94:	d000      	beq.n	5e98 <__dtox_engine+0x334>
    5e96:	e0bb      	b.n	6010 <__dtox_engine+0x4ac>
    5e98:	2808      	cmp	r0, #8
    5e9a:	d100      	bne.n	5e9e <__dtox_engine+0x33a>
    5e9c:	e6f4      	b.n	5c88 <__dtox_engine+0x124>
    5e9e:	003d      	movs	r5, r7
    5ea0:	040b      	lsls	r3, r1, #16
    5ea2:	0c14      	lsrs	r4, r2, #16
    5ea4:	431c      	orrs	r4, r3
    5ea6:	4035      	ands	r5, r6
    5ea8:	140b      	asrs	r3, r1, #16
    5eaa:	4237      	tst	r7, r6
    5eac:	d000      	beq.n	5eb0 <__dtox_engine+0x34c>
    5eae:	e0c4      	b.n	603a <__dtox_engine+0x4d6>
    5eb0:	2807      	cmp	r0, #7
    5eb2:	d100      	bne.n	5eb6 <__dtox_engine+0x352>
    5eb4:	e6f5      	b.n	5ca2 <__dtox_engine+0x13e>
    5eb6:	0025      	movs	r5, r4
    5eb8:	030b      	lsls	r3, r1, #12
    5eba:	0d17      	lsrs	r7, r2, #20
    5ebc:	431f      	orrs	r7, r3
    5ebe:	4035      	ands	r5, r6
    5ec0:	150b      	asrs	r3, r1, #20
    5ec2:	4234      	tst	r4, r6
    5ec4:	d000      	beq.n	5ec8 <__dtox_engine+0x364>
    5ec6:	e0cd      	b.n	6064 <__dtox_engine+0x500>
    5ec8:	2806      	cmp	r0, #6
    5eca:	d100      	bne.n	5ece <__dtox_engine+0x36a>
    5ecc:	e6f6      	b.n	5cbc <__dtox_engine+0x158>
    5ece:	260f      	movs	r6, #15
    5ed0:	003b      	movs	r3, r7
    5ed2:	4033      	ands	r3, r6
    5ed4:	469a      	mov	sl, r3
    5ed6:	0e15      	lsrs	r5, r2, #24
    5ed8:	020b      	lsls	r3, r1, #8
    5eda:	431d      	orrs	r5, r3
    5edc:	160b      	asrs	r3, r1, #24
    5ede:	4237      	tst	r7, r6
    5ee0:	d000      	beq.n	5ee4 <__dtox_engine+0x380>
    5ee2:	e0f1      	b.n	60c8 <__dtox_engine+0x564>
    5ee4:	2805      	cmp	r0, #5
    5ee6:	d100      	bne.n	5eea <__dtox_engine+0x386>
    5ee8:	e6f6      	b.n	5cd8 <__dtox_engine+0x174>
    5eea:	002f      	movs	r7, r5
    5eec:	010b      	lsls	r3, r1, #4
    5eee:	0f12      	lsrs	r2, r2, #28
    5ef0:	431a      	orrs	r2, r3
    5ef2:	4037      	ands	r7, r6
    5ef4:	170b      	asrs	r3, r1, #28
    5ef6:	4235      	tst	r5, r6
    5ef8:	d000      	beq.n	5efc <__dtox_engine+0x398>
    5efa:	e0f6      	b.n	60ea <__dtox_engine+0x586>
    5efc:	2804      	cmp	r0, #4
    5efe:	d100      	bne.n	5f02 <__dtox_engine+0x39e>
    5f00:	e6f7      	b.n	5cf2 <__dtox_engine+0x18e>
    5f02:	0017      	movs	r7, r2
    5f04:	4688      	mov	r8, r1
    5f06:	4037      	ands	r7, r6
    5f08:	17cb      	asrs	r3, r1, #31
    5f0a:	4232      	tst	r2, r6
    5f0c:	d000      	beq.n	5f10 <__dtox_engine+0x3ac>
    5f0e:	e0c9      	b.n	60a4 <__dtox_engine+0x540>
    5f10:	2803      	cmp	r0, #3
    5f12:	d100      	bne.n	5f16 <__dtox_engine+0x3b2>
    5f14:	e6fb      	b.n	5d0e <__dtox_engine+0x1aa>
    5f16:	000d      	movs	r5, r1
    5f18:	9f00      	ldr	r7, [sp, #0]
    5f1a:	4035      	ands	r5, r6
    5f1c:	4231      	tst	r1, r6
    5f1e:	d000      	beq.n	5f22 <__dtox_engine+0x3be>
    5f20:	e0fd      	b.n	611e <__dtox_engine+0x5ba>
    5f22:	2802      	cmp	r0, #2
    5f24:	d100      	bne.n	5f28 <__dtox_engine+0x3c4>
    5f26:	e700      	b.n	5d2a <__dtox_engine+0x1c6>
    5f28:	003a      	movs	r2, r7
    5f2a:	465b      	mov	r3, fp
    5f2c:	4032      	ands	r2, r6
    5f2e:	4237      	tst	r7, r6
    5f30:	d000      	beq.n	5f34 <__dtox_engine+0x3d0>
    5f32:	e0e7      	b.n	6104 <__dtox_engine+0x5a0>
    5f34:	2800      	cmp	r0, #0
    5f36:	d100      	bne.n	5f3a <__dtox_engine+0x3d6>
    5f38:	e706      	b.n	5d48 <__dtox_engine+0x1e4>
    5f3a:	2230      	movs	r2, #48	@ 0x30
    5f3c:	4661      	mov	r1, ip
    5f3e:	2001      	movs	r0, #1
    5f40:	718a      	strb	r2, [r1, #6]
    5f42:	2b00      	cmp	r3, #0
    5f44:	d000      	beq.n	5f48 <__dtox_engine+0x3e4>
    5f46:	e702      	b.n	5d4e <__dtox_engine+0x1ea>
    5f48:	2330      	movs	r3, #48	@ 0x30
    5f4a:	e702      	b.n	5d52 <__dtox_engine+0x1ee>
    5f4c:	4662      	mov	r2, ip
    5f4e:	6013      	str	r3, [r2, #0]
    5f50:	4643      	mov	r3, r8
    5f52:	2b00      	cmp	r3, #0
    5f54:	db0d      	blt.n	5f72 <__dtox_engine+0x40e>
    5f56:	2b0c      	cmp	r3, #12
    5f58:	dd00      	ble.n	5f5c <__dtox_engine+0x3f8>
    5f5a:	e100      	b.n	615e <__dtox_engine+0x5fa>
    5f5c:	2300      	movs	r3, #0
    5f5e:	2400      	movs	r4, #0
    5f60:	9300      	str	r3, [sp, #0]
    5f62:	9401      	str	r4, [sp, #4]
    5f64:	e71b      	b.n	5d9e <__dtox_engine+0x23a>
    5f66:	2308      	movs	r3, #8
    5f68:	431a      	orrs	r2, r3
    5f6a:	4663      	mov	r3, ip
    5f6c:	2000      	movs	r0, #0
    5f6e:	711a      	strb	r2, [r3, #4]
    5f70:	e6f1      	b.n	5d56 <__dtox_engine+0x1f2>
    5f72:	2200      	movs	r2, #0
    5f74:	2500      	movs	r5, #0
    5f76:	240f      	movs	r4, #15
    5f78:	0010      	movs	r0, r2
    5f7a:	0729      	lsls	r1, r5, #28
    5f7c:	0913      	lsrs	r3, r2, #4
    5f7e:	430b      	orrs	r3, r1
    5f80:	4020      	ands	r0, r4
    5f82:	1129      	asrs	r1, r5, #4
    5f84:	4222      	tst	r2, r4
    5f86:	d000      	beq.n	5f8a <__dtox_engine+0x426>
    5f88:	e0f5      	b.n	6176 <__dtox_engine+0x612>
    5f8a:	0018      	movs	r0, r3
    5f8c:	0629      	lsls	r1, r5, #24
    5f8e:	0a12      	lsrs	r2, r2, #8
    5f90:	430a      	orrs	r2, r1
    5f92:	4020      	ands	r0, r4
    5f94:	1229      	asrs	r1, r5, #8
    5f96:	4223      	tst	r3, r4
    5f98:	d100      	bne.n	5f9c <__dtox_engine+0x438>
    5f9a:	e759      	b.n	5e50 <__dtox_engine+0x2ec>
    5f9c:	2300      	movs	r3, #0
    5f9e:	4698      	mov	r8, r3
    5fa0:	2809      	cmp	r0, #9
    5fa2:	dd02      	ble.n	5faa <__dtox_engine+0x446>
    5fa4:	464b      	mov	r3, r9
    5fa6:	1ac0      	subs	r0, r0, r3
    5fa8:	3027      	adds	r0, #39	@ 0x27
    5faa:	4663      	mov	r3, ip
    5fac:	3030      	adds	r0, #48	@ 0x30
    5fae:	7418      	strb	r0, [r3, #16]
    5fb0:	4640      	mov	r0, r8
    5fb2:	280b      	cmp	r0, #11
    5fb4:	da00      	bge.n	5fb8 <__dtox_engine+0x454>
    5fb6:	200b      	movs	r0, #11
    5fb8:	240f      	movs	r4, #15
    5fba:	0015      	movs	r5, r2
    5fbc:	070b      	lsls	r3, r1, #28
    5fbe:	0917      	lsrs	r7, r2, #4
    5fc0:	431f      	orrs	r7, r3
    5fc2:	4025      	ands	r5, r4
    5fc4:	110b      	asrs	r3, r1, #4
    5fc6:	4222      	tst	r2, r4
    5fc8:	d000      	beq.n	5fcc <__dtox_engine+0x468>
    5fca:	e63b      	b.n	5c44 <__dtox_engine+0xe0>
    5fcc:	2230      	movs	r2, #48	@ 0x30
    5fce:	4661      	mov	r1, ip
    5fd0:	003c      	movs	r4, r7
    5fd2:	73ca      	strb	r2, [r1, #15]
    5fd4:	093d      	lsrs	r5, r7, #4
    5fd6:	0719      	lsls	r1, r3, #28
    5fd8:	3a21      	subs	r2, #33	@ 0x21
    5fda:	4014      	ands	r4, r2
    5fdc:	430d      	orrs	r5, r1
    5fde:	111b      	asrs	r3, r3, #4
    5fe0:	4217      	tst	r7, r2
    5fe2:	d100      	bne.n	5fe6 <__dtox_engine+0x482>
    5fe4:	e643      	b.n	5c6e <__dtox_engine+0x10a>
    5fe6:	2c09      	cmp	r4, #9
    5fe8:	dd02      	ble.n	5ff0 <__dtox_engine+0x48c>
    5fea:	464a      	mov	r2, r9
    5fec:	1aa4      	subs	r4, r4, r2
    5fee:	3427      	adds	r4, #39	@ 0x27
    5ff0:	4662      	mov	r2, ip
    5ff2:	3430      	adds	r4, #48	@ 0x30
    5ff4:	7394      	strb	r4, [r2, #14]
    5ff6:	2809      	cmp	r0, #9
    5ff8:	da00      	bge.n	5ffc <__dtox_engine+0x498>
    5ffa:	2009      	movs	r0, #9
    5ffc:	220f      	movs	r2, #15
    5ffe:	002c      	movs	r4, r5
    6000:	0719      	lsls	r1, r3, #28
    6002:	092f      	lsrs	r7, r5, #4
    6004:	4014      	ands	r4, r2
    6006:	430f      	orrs	r7, r1
    6008:	111b      	asrs	r3, r3, #4
    600a:	4215      	tst	r5, r2
    600c:	d100      	bne.n	6010 <__dtox_engine+0x4ac>
    600e:	e63b      	b.n	5c88 <__dtox_engine+0x124>
    6010:	2c09      	cmp	r4, #9
    6012:	dd02      	ble.n	601a <__dtox_engine+0x4b6>
    6014:	464a      	mov	r2, r9
    6016:	1aa4      	subs	r4, r4, r2
    6018:	3427      	adds	r4, #39	@ 0x27
    601a:	4662      	mov	r2, ip
    601c:	3430      	adds	r4, #48	@ 0x30
    601e:	7354      	strb	r4, [r2, #13]
    6020:	2808      	cmp	r0, #8
    6022:	da00      	bge.n	6026 <__dtox_engine+0x4c2>
    6024:	2008      	movs	r0, #8
    6026:	220f      	movs	r2, #15
    6028:	003d      	movs	r5, r7
    602a:	0719      	lsls	r1, r3, #28
    602c:	093c      	lsrs	r4, r7, #4
    602e:	4015      	ands	r5, r2
    6030:	430c      	orrs	r4, r1
    6032:	111b      	asrs	r3, r3, #4
    6034:	4217      	tst	r7, r2
    6036:	d100      	bne.n	603a <__dtox_engine+0x4d6>
    6038:	e633      	b.n	5ca2 <__dtox_engine+0x13e>
    603a:	2d09      	cmp	r5, #9
    603c:	dd02      	ble.n	6044 <__dtox_engine+0x4e0>
    603e:	464a      	mov	r2, r9
    6040:	1aad      	subs	r5, r5, r2
    6042:	3527      	adds	r5, #39	@ 0x27
    6044:	4662      	mov	r2, ip
    6046:	3530      	adds	r5, #48	@ 0x30
    6048:	7315      	strb	r5, [r2, #12]
    604a:	2807      	cmp	r0, #7
    604c:	da00      	bge.n	6050 <__dtox_engine+0x4ec>
    604e:	2007      	movs	r0, #7
    6050:	220f      	movs	r2, #15
    6052:	0025      	movs	r5, r4
    6054:	0719      	lsls	r1, r3, #28
    6056:	0927      	lsrs	r7, r4, #4
    6058:	4015      	ands	r5, r2
    605a:	430f      	orrs	r7, r1
    605c:	111b      	asrs	r3, r3, #4
    605e:	4214      	tst	r4, r2
    6060:	d100      	bne.n	6064 <__dtox_engine+0x500>
    6062:	e62b      	b.n	5cbc <__dtox_engine+0x158>
    6064:	2d09      	cmp	r5, #9
    6066:	dd02      	ble.n	606e <__dtox_engine+0x50a>
    6068:	464a      	mov	r2, r9
    606a:	1aad      	subs	r5, r5, r2
    606c:	3527      	adds	r5, #39	@ 0x27
    606e:	4662      	mov	r2, ip
    6070:	3530      	adds	r5, #48	@ 0x30
    6072:	72d5      	strb	r5, [r2, #11]
    6074:	2806      	cmp	r0, #6
    6076:	da00      	bge.n	607a <__dtox_engine+0x516>
    6078:	2006      	movs	r0, #6
    607a:	220f      	movs	r2, #15
    607c:	e622      	b.n	5cc4 <__dtox_engine+0x160>
    607e:	2020      	movs	r0, #32
    6080:	2601      	movs	r6, #1
    6082:	1a40      	subs	r0, r0, r1
    6084:	40c6      	lsrs	r6, r0
    6086:	0033      	movs	r3, r6
    6088:	e696      	b.n	5db8 <__dtox_engine+0x254>
    608a:	2304      	movs	r3, #4
    608c:	431a      	orrs	r2, r3
    608e:	e76c      	b.n	5f6a <__dtox_engine+0x406>
    6090:	4651      	mov	r1, sl
    6092:	3920      	subs	r1, #32
    6094:	d478      	bmi.n	6188 <__dtox_engine+0x624>
    6096:	9801      	ldr	r0, [sp, #4]
    6098:	4108      	asrs	r0, r1
    609a:	0001      	movs	r1, r0
    609c:	07c9      	lsls	r1, r1, #31
    609e:	d400      	bmi.n	60a2 <__dtox_engine+0x53e>
    60a0:	e6af      	b.n	5e02 <__dtox_engine+0x29e>
    60a2:	e6a8      	b.n	5df6 <__dtox_engine+0x292>
    60a4:	2f09      	cmp	r7, #9
    60a6:	dd02      	ble.n	60ae <__dtox_engine+0x54a>
    60a8:	464a      	mov	r2, r9
    60aa:	1abf      	subs	r7, r7, r2
    60ac:	3727      	adds	r7, #39	@ 0x27
    60ae:	4662      	mov	r2, ip
    60b0:	3730      	adds	r7, #48	@ 0x30
    60b2:	7217      	strb	r7, [r2, #8]
    60b4:	2803      	cmp	r0, #3
    60b6:	da00      	bge.n	60ba <__dtox_engine+0x556>
    60b8:	2003      	movs	r0, #3
    60ba:	220f      	movs	r2, #15
    60bc:	e62b      	b.n	5d16 <__dtox_engine+0x1b2>
    60be:	46c0      	nop			@ (mov r8, r8)
    60c0:	000007ff 	.word	0x000007ff
    60c4:	fffffc01 	.word	0xfffffc01
    60c8:	4652      	mov	r2, sl
    60ca:	2a09      	cmp	r2, #9
    60cc:	dd04      	ble.n	60d8 <__dtox_engine+0x574>
    60ce:	4649      	mov	r1, r9
    60d0:	1a52      	subs	r2, r2, r1
    60d2:	2127      	movs	r1, #39	@ 0x27
    60d4:	468a      	mov	sl, r1
    60d6:	4492      	add	sl, r2
    60d8:	4652      	mov	r2, sl
    60da:	4661      	mov	r1, ip
    60dc:	3230      	adds	r2, #48	@ 0x30
    60de:	728a      	strb	r2, [r1, #10]
    60e0:	2805      	cmp	r0, #5
    60e2:	db00      	blt.n	60e6 <__dtox_engine+0x582>
    60e4:	e5fb      	b.n	5cde <__dtox_engine+0x17a>
    60e6:	2005      	movs	r0, #5
    60e8:	e5f9      	b.n	5cde <__dtox_engine+0x17a>
    60ea:	2f09      	cmp	r7, #9
    60ec:	dd02      	ble.n	60f4 <__dtox_engine+0x590>
    60ee:	4649      	mov	r1, r9
    60f0:	1a7f      	subs	r7, r7, r1
    60f2:	3727      	adds	r7, #39	@ 0x27
    60f4:	4661      	mov	r1, ip
    60f6:	3730      	adds	r7, #48	@ 0x30
    60f8:	724f      	strb	r7, [r1, #9]
    60fa:	2804      	cmp	r0, #4
    60fc:	da00      	bge.n	6100 <__dtox_engine+0x59c>
    60fe:	2004      	movs	r0, #4
    6100:	210f      	movs	r1, #15
    6102:	e5fa      	b.n	5cfa <__dtox_engine+0x196>
    6104:	2a09      	cmp	r2, #9
    6106:	dd02      	ble.n	610e <__dtox_engine+0x5aa>
    6108:	4649      	mov	r1, r9
    610a:	1a52      	subs	r2, r2, r1
    610c:	3227      	adds	r2, #39	@ 0x27
    610e:	4661      	mov	r1, ip
    6110:	3230      	adds	r2, #48	@ 0x30
    6112:	718a      	strb	r2, [r1, #6]
    6114:	2800      	cmp	r0, #0
    6116:	dd00      	ble.n	611a <__dtox_engine+0x5b6>
    6118:	e616      	b.n	5d48 <__dtox_engine+0x1e4>
    611a:	2001      	movs	r0, #1
    611c:	e614      	b.n	5d48 <__dtox_engine+0x1e4>
    611e:	2d09      	cmp	r5, #9
    6120:	dd02      	ble.n	6128 <__dtox_engine+0x5c4>
    6122:	464a      	mov	r2, r9
    6124:	1aad      	subs	r5, r5, r2
    6126:	3527      	adds	r5, #39	@ 0x27
    6128:	4662      	mov	r2, ip
    612a:	3530      	adds	r5, #48	@ 0x30
    612c:	71d5      	strb	r5, [r2, #7]
    612e:	2802      	cmp	r0, #2
    6130:	db00      	blt.n	6134 <__dtox_engine+0x5d0>
    6132:	e5fd      	b.n	5d30 <__dtox_engine+0x1cc>
    6134:	2002      	movs	r0, #2
    6136:	e5fb      	b.n	5d30 <__dtox_engine+0x1cc>
    6138:	220d      	movs	r2, #13
    613a:	4690      	mov	r8, r2
    613c:	2230      	movs	r2, #48	@ 0x30
    613e:	4660      	mov	r0, ip
    6140:	7442      	strb	r2, [r0, #17]
    6142:	e567      	b.n	5c14 <__dtox_engine+0xb0>
    6144:	210f      	movs	r1, #15
    6146:	9e00      	ldr	r6, [sp, #0]
    6148:	9f01      	ldr	r7, [sp, #4]
    614a:	000b      	movs	r3, r1
    614c:	0738      	lsls	r0, r7, #28
    614e:	0932      	lsrs	r2, r6, #4
    6150:	4033      	ands	r3, r6
    6152:	4302      	orrs	r2, r0
    6154:	113d      	asrs	r5, r7, #4
    6156:	4231      	tst	r1, r6
    6158:	d000      	beq.n	615c <__dtox_engine+0x5f8>
    615a:	e53a      	b.n	5bd2 <__dtox_engine+0x6e>
    615c:	e70b      	b.n	5f76 <__dtox_engine+0x412>
    615e:	2200      	movs	r2, #0
    6160:	2500      	movs	r5, #0
    6162:	2330      	movs	r3, #48	@ 0x30
    6164:	e53b      	b.n	5bde <__dtox_engine+0x7a>
    6166:	2280      	movs	r2, #128	@ 0x80
    6168:	0352      	lsls	r2, r2, #13
    616a:	430a      	orrs	r2, r1
    616c:	9201      	str	r2, [sp, #4]
    616e:	4a0c      	ldr	r2, [pc, #48]	@ (61a0 <__dtox_engine+0x63c>)
    6170:	4692      	mov	sl, r2
    6172:	4453      	add	r3, sl
    6174:	e517      	b.n	5ba6 <__dtox_engine+0x42>
    6176:	2200      	movs	r2, #0
    6178:	4690      	mov	r8, r2
    617a:	e53e      	b.n	5bfa <__dtox_engine+0x96>
    617c:	2580      	movs	r5, #128	@ 0x80
    617e:	2200      	movs	r2, #0
    6180:	026d      	lsls	r5, r5, #9
    6182:	e6f8      	b.n	5f76 <__dtox_engine+0x412>
    6184:	4640      	mov	r0, r8
    6186:	e721      	b.n	5fcc <__dtox_engine+0x468>
    6188:	4650      	mov	r0, sl
    618a:	9c00      	ldr	r4, [sp, #0]
    618c:	9d01      	ldr	r5, [sp, #4]
    618e:	2120      	movs	r1, #32
    6190:	1a09      	subs	r1, r1, r0
    6192:	0028      	movs	r0, r5
    6194:	4088      	lsls	r0, r1
    6196:	0021      	movs	r1, r4
    6198:	4654      	mov	r4, sl
    619a:	40e1      	lsrs	r1, r4
    619c:	4301      	orrs	r1, r0
    619e:	e77d      	b.n	609c <__dtox_engine+0x538>
    61a0:	fffffc01 	.word	0xfffffc01

000061a4 <_OffsetAbsSyms>:

#include <gen_offset.h>

#include "offsets_aarch32.c"

GEN_ABS_SYM_END
    61a4:	4770      	bx	lr

000061a6 <free_list_add_bidx>:
{
    61a6:	b570      	push	{r4, r5, r6, lr}
	if (b->next == 0U) {
    61a8:	1d13      	adds	r3, r2, #4
    61aa:	009b      	lsls	r3, r3, #2
    61ac:	581c      	ldr	r4, [r3, r0]
    61ae:	2c00      	cmp	r4, #0
    61b0:	d10e      	bne.n	61d0 <free_list_add_bidx+0x2a>
		h->avail_buckets |= BIT(bidx);
    61b2:	68c3      	ldr	r3, [r0, #12]
    61b4:	3401      	adds	r4, #1
    61b6:	4094      	lsls	r4, r2
    61b8:	4323      	orrs	r3, r4
    61ba:	60c3      	str	r3, [r0, #12]
		b->next = c;
    61bc:	3204      	adds	r2, #4
    61be:	0092      	lsls	r2, r2, #2
    61c0:	5011      	str	r1, [r2, r0]
	void *cmem = &buf[c];
    61c2:	00cb      	lsls	r3, r1, #3
		((uint16_t *)cmem)[f] = val;
    61c4:	1d1a      	adds	r2, r3, #4
    61c6:	b289      	uxth	r1, r1
    61c8:	5281      	strh	r1, [r0, r2]
    61ca:	3306      	adds	r3, #6
    61cc:	52c1      	strh	r1, [r0, r3]
}
    61ce:	bd70      	pop	{r4, r5, r6, pc}
	void *cmem = &buf[c];
    61d0:	00e2      	lsls	r2, r4, #3
		return ((uint16_t *)cmem)[f];
    61d2:	3204      	adds	r2, #4
    61d4:	5a83      	ldrh	r3, [r0, r2]
	void *cmem = &buf[c];
    61d6:	00cd      	lsls	r5, r1, #3
		((uint16_t *)cmem)[f] = val;
    61d8:	1d2e      	adds	r6, r5, #4
    61da:	5383      	strh	r3, [r0, r6]
    61dc:	3506      	adds	r5, #6
    61de:	5344      	strh	r4, [r0, r5]
	void *cmem = &buf[c];
    61e0:	00db      	lsls	r3, r3, #3
		((uint16_t *)cmem)[f] = val;
    61e2:	3306      	adds	r3, #6
    61e4:	b289      	uxth	r1, r1
    61e6:	52c1      	strh	r1, [r0, r3]
    61e8:	5281      	strh	r1, [r0, r2]
    61ea:	e7f0      	b.n	61ce <free_list_add_bidx+0x28>

000061ec <free_list_add>:
{
    61ec:	b570      	push	{r4, r5, r6, lr}
    61ee:	0004      	movs	r4, r0
    61f0:	000d      	movs	r5, r1
	void *cmem = &buf[c];
    61f2:	00cb      	lsls	r3, r1, #3
		return ((uint16_t *)cmem)[f];
    61f4:	18c3      	adds	r3, r0, r3
    61f6:	8858      	ldrh	r0, [r3, #2]
	return chunk_field(h, c, SIZE_AND_USED) >> 1;
    61f8:	0840      	lsrs	r0, r0, #1
}

static inline int bucket_idx(struct z_heap *h, chunksz_t sz)
{
	unsigned int usable_sz = sz - min_chunk_size(h) + 1;
	return 31 - __builtin_clz(usable_sz);
    61fa:	f7fa f9a5 	bl	548 <__clzsi2>
    61fe:	221f      	movs	r2, #31
    6200:	1a12      	subs	r2, r2, r0
		free_list_add_bidx(h, c, bidx);
    6202:	0029      	movs	r1, r5
    6204:	0020      	movs	r0, r4
    6206:	f7ff ffce 	bl	61a6 <free_list_add_bidx>
}
    620a:	bd70      	pop	{r4, r5, r6, pc}

0000620c <sys_heap_init>:
	}
	return ptr2;
}

void sys_heap_init(struct sys_heap *heap, void *mem, size_t bytes)
{
    620c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
    620e:	46de      	mov	lr, fp
    6210:	4657      	mov	r7, sl
    6212:	464e      	mov	r6, r9
    6214:	4645      	mov	r5, r8
    6216:	b5e0      	push	{r5, r6, r7, lr}
	/* Reserve the end marker chunk's header */
	__ASSERT(bytes > heap_footer_bytes(bytes), "heap size is too small");
#ifdef CONFIG_SYS_HEAP_SANITIZER_HOOKS
	const size_t orig_bytes = bytes; /* preserve for heap_sanitizer_on_init */
#endif
	bytes -= heap_footer_bytes(bytes);
    6218:	3a04      	subs	r2, #4

	/* Round the start up, the end down */
	uintptr_t addr = ROUND_UP(mem, CHUNK_UNIT);
    621a:	1dcc      	adds	r4, r1, #7
    621c:	2307      	movs	r3, #7
    621e:	439c      	bics	r4, r3
	uintptr_t end = ROUND_DOWN((uint8_t *)mem + bytes, CHUNK_UNIT);
    6220:	1889      	adds	r1, r1, r2
    6222:	4399      	bics	r1, r3
	chunksz_t heap_sz = (end - addr) / CHUNK_UNIT;
    6224:	1b0e      	subs	r6, r1, r4
    6226:	08f7      	lsrs	r7, r6, #3

	CHECK(end > addr);
	__ASSERT(heap_sz > chunksz(sizeof(struct z_heap)), "heap size is too small");

	struct z_heap *h = (struct z_heap *)addr;
	heap->heap = h;
    6228:	6004      	str	r4, [r0, #0]
	h->end_chunk = heap_sz;
    622a:	60a7      	str	r7, [r4, #8]
	h->avail_buckets = 0;
    622c:	2300      	movs	r3, #0
    622e:	60e3      	str	r3, [r4, #12]
    6230:	0038      	movs	r0, r7
    6232:	f7fa f989 	bl	548 <__clzsi2>

#if CONFIG_SYS_HEAP_ARRAY_SIZE
	sys_heap_array_save(heap);
#endif

	int nb_buckets = bucket_idx(h, heap_sz) + 1;
    6236:	2520      	movs	r5, #32
    6238:	1a2d      	subs	r5, r5, r0
	chunksz_t chunk0_size = chunksz(sizeof(struct z_heap) +
    623a:	2324      	movs	r3, #36	@ 0x24
    623c:	1a1b      	subs	r3, r3, r0
				     nb_buckets * sizeof(struct z_heap_bucket)) +
    623e:	009b      	lsls	r3, r3, #2
	return (bytes + CHUNK_UNIT - 1U) / CHUNK_UNIT;
    6240:	3307      	adds	r3, #7
    6242:	469c      	mov	ip, r3
    6244:	08d9      	lsrs	r1, r3, #3
				CHUNK_TRAILER_SIZE;

	__ASSERT(chunk0_size + min_chunk_size(h) <= heap_sz, "heap size is too small");

	for (int i = 0; i < nb_buckets; i++) {
    6246:	2300      	movs	r3, #0
    6248:	e004      	b.n	6254 <sys_heap_init+0x48>
		h->buckets[i].next = 0;
    624a:	1d1a      	adds	r2, r3, #4
    624c:	0092      	lsls	r2, r2, #2
    624e:	2000      	movs	r0, #0
    6250:	5110      	str	r0, [r2, r4]
	for (int i = 0; i < nb_buckets; i++) {
    6252:	3301      	adds	r3, #1
    6254:	42ab      	cmp	r3, r5
    6256:	dbf8      	blt.n	624a <sys_heap_init+0x3e>
		((uint16_t *)cmem)[f] = val;
    6258:	b28d      	uxth	r5, r1
    625a:	006b      	lsls	r3, r5, #1
    625c:	b29b      	uxth	r3, r3
    625e:	8063      	strh	r3, [r4, #2]
    6260:	2200      	movs	r2, #0
    6262:	4692      	mov	sl, r2
    6264:	8022      	strh	r2, [r4, #0]
			((uint16_t *)cmem)[SIZE_AND_USED] |= 1U;
    6266:	2201      	movs	r2, #1
    6268:	4693      	mov	fp, r2
    626a:	465a      	mov	r2, fp
    626c:	4313      	orrs	r3, r2
    626e:	8063      	strh	r3, [r4, #2]
	if (SYS_HEAP_HARDENING_FULL) {
		set_chunk_canary(h, 0);
	}

	/* chunk containing the free heap */
	set_chunk_size(h, chunk0_size, heap_sz - chunk0_size);
    6270:	1a7f      	subs	r7, r7, r1
	void *cmem = &buf[c];
    6272:	2307      	movs	r3, #7
    6274:	4698      	mov	r8, r3
    6276:	4663      	mov	r3, ip
    6278:	4642      	mov	r2, r8
    627a:	4393      	bics	r3, r2
		((uint16_t *)cmem)[f] = val;
    627c:	1c9a      	adds	r2, r3, #2
    627e:	4694      	mov	ip, r2
    6280:	b2bf      	uxth	r7, r7
    6282:	007a      	lsls	r2, r7, #1
    6284:	4691      	mov	r9, r2
    6286:	4662      	mov	r2, ip
    6288:	4648      	mov	r0, r9
    628a:	52a0      	strh	r0, [r4, r2]
    628c:	52e5      	strh	r5, [r4, r3]
	void *cmem = &buf[c];
    628e:	4643      	mov	r3, r8
    6290:	439e      	bics	r6, r3
		((uint16_t *)cmem)[f] = val;
    6292:	1cb3      	adds	r3, r6, #2
    6294:	18e3      	adds	r3, r4, r3
    6296:	4652      	mov	r2, sl
    6298:	801a      	strh	r2, [r3, #0]
    629a:	19a6      	adds	r6, r4, r6
    629c:	8037      	strh	r7, [r6, #0]
			((uint16_t *)cmem)[SIZE_AND_USED] |= 1U;
    629e:	8870      	ldrh	r0, [r6, #2]
    62a0:	465a      	mov	r2, fp
    62a2:	4302      	orrs	r2, r0
    62a4:	8072      	strh	r2, [r6, #2]
	/* the end marker chunk */
	set_chunk_size(h, heap_sz, 0);
	set_left_chunk_size(h, heap_sz, heap_sz - chunk0_size);
	set_chunk_used(h, heap_sz, true);

	free_list_add(h, chunk0_size);
    62a6:	0020      	movs	r0, r4
    62a8:	f7ff ffa0 	bl	61ec <free_list_add>

#ifdef CONFIG_SYS_HEAP_SANITIZER_HOOKS
	heap_sanitizer_on_init(heap, mem, orig_bytes);
#endif
}
    62ac:	bcf0      	pop	{r4, r5, r6, r7}
    62ae:	46bb      	mov	fp, r7
    62b0:	46b2      	mov	sl, r6
    62b2:	46a9      	mov	r9, r5
    62b4:	46a0      	mov	r8, r4
    62b6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000062b8 <arch_printk_char_out>:
}
    62b8:	2000      	movs	r0, #0
    62ba:	4770      	bx	lr

000062bc <printk_panic>:
}
    62bc:	4770      	bx	lr

000062be <vprintk>:
	va_end(ap);
}
EXPORT_SYMBOL(printk_unlocked);

void vprintk(const char *fmt, va_list ap)
{
    62be:	b510      	push	{r4, lr}
			k_spin_unlock(&lock, key);
		} else {
			vprintk_core(fmt, ap);
		}
#else
		vprintk_core(fmt, ap);
    62c0:	f7fa fd74 	bl	dac <vprintk_core>
#endif
	}
}
    62c4:	bd10      	pop	{r4, pc}

000062c6 <printk>:
 * @param fmt formatted string to output
 */

#ifndef CONFIG_LOG_PRINTK_STATIC
void printk(const char *fmt, ...)
{
    62c6:	b40f      	push	{r0, r1, r2, r3}
    62c8:	b500      	push	{lr}
    62ca:	b083      	sub	sp, #12
    62cc:	a904      	add	r1, sp, #16
    62ce:	c901      	ldmia	r1!, {r0}
	va_list ap;

	va_start(ap, fmt);
    62d0:	9101      	str	r1, [sp, #4]

	vprintk(fmt, ap);
    62d2:	f7ff fff4 	bl	62be <vprintk>

	va_end(ap);
}
    62d6:	b003      	add	sp, #12
    62d8:	bc08      	pop	{r3}
    62da:	b004      	add	sp, #16
    62dc:	4718      	bx	r3

000062de <atomic_get>:
 *
 * @return The value read from <target>
 */
atomic_val_t atomic_get(const atomic_t *target)
{
	return *target;
    62de:	6800      	ldr	r0, [r0, #0]
}
    62e0:	4770      	bx	lr

000062e2 <z_impl_atomic_set>:
 * @param value the value to write
 *
 * @return The previous value from <target>
 */
atomic_val_t z_impl_atomic_set(atomic_t *target, atomic_val_t value)
{
    62e2:	0003      	movs	r3, r0
    62e4:	f3ef 8210 	mrs	r2, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    62e8:	b672      	cpsid	i
	k_spinlock_key_t key;
	atomic_val_t ret;

	key = k_spin_lock(&lock);

	ret = *target;
    62ea:	6800      	ldr	r0, [r0, #0]
	*target = value;
    62ec:	6019      	str	r1, [r3, #0]
    62ee:	2a00      	cmp	r2, #0
    62f0:	d100      	bne.n	62f4 <z_impl_atomic_set+0x12>
    __ASM volatile ("cpsie i" : : : "memory");
    62f2:	b662      	cpsie	i

	k_spin_unlock(&lock, key);

	return ret;
}
    62f4:	4770      	bx	lr

000062f6 <_ConfigAbsSyms>:
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_CHECK_INIT_PRIORITIES, 1);
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_WARN_DEPRECATED, 1);
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_TAINT, 1);
GEN_ABSOLUTE_SYM_KCONFIG(CONFIG_ENFORCE_ZEPHYR_STDINT, 1);

GEN_ABS_SYM_END
    62f6:	4770      	bx	lr

000062f8 <soc_early_init_hook>:

void soc_early_init_hook(void)
{
    62f8:	b510      	push	{r4, lr}
	/* Initialize system clock to 48 MHz */
	clock_init();
    62fa:	f7fa fd75 	bl	de8 <clock_init>
}
    62fe:	bd10      	pop	{r4, pc}

00006300 <soc_reset_hook>:

#ifdef CONFIG_SOC_RESET_HOOK

void soc_reset_hook(void)
{
    6300:	b510      	push	{r4, lr}
	SystemInit();
    6302:	f7fb fdeb 	bl	1edc <SystemInit>
}
    6306:	bd10      	pop	{r4, pc}

00006308 <arch_early_memset>:
{
    6308:	b510      	push	{r4, lr}
	(void) memset(dst, c, n);
    630a:	f7fd f8f7 	bl	34fc <memset>
}
    630e:	bd10      	pop	{r4, pc}

00006310 <arch_early_memcpy>:
{
    6310:	b510      	push	{r4, lr}
	(void) memcpy(dst, src, n);
    6312:	f7fc ff4f 	bl	31b4 <memcpy>
}
    6316:	bd10      	pop	{r4, pc}

00006318 <z_do_kernel_oops>:
 * @param esf exception frame
 * @param callee_regs Callee-saved registers (R4-R11)
 * @param exc_return EXC_RETURN value present in LR after exception entry.
 */
void z_do_kernel_oops(const struct arch_esf *esf, _callee_saved_t *callee_regs, uint32_t exc_return)
{
    6318:	b510      	push	{r4, lr}
    631a:	0001      	movs	r1, r0
#if !(defined(CONFIG_EXTRA_EXCEPTION_INFO) && defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE))
	ARG_UNUSED(callee_regs);
#endif
	/* Stacked R0 holds the exception reason. */
	unsigned int reason = esf->basic.r0;
    631c:	6800      	ldr	r0, [r0, #0]
	}

#endif /* CONFIG_USERSPACE */

#if !defined(CONFIG_EXTRA_EXCEPTION_INFO)
	z_arm_fatal_error(reason, esf);
    631e:	f7fa fe17 	bl	f50 <z_arm_fatal_error>
		.exc_return = exc_return,
	};

	z_arm_fatal_error(reason, &esf_copy);
#endif /* CONFIG_EXTRA_EXCEPTION_INFO */
}
    6322:	bd10      	pop	{r4, pc}

00006324 <z_arm_nmi>:
 * Simply call what is installed in 'static void(*handler)(void)'.
 *
 */

void z_arm_nmi(void)
{
    6324:	b510      	push	{r4, lr}
	handler();
    6326:	f7fa fe2d 	bl	f84 <z_SysNmiOnReset>
	z_arm_int_exit();
    632a:	f7fa ffe3 	bl	12f4 <z_arm_exc_exit>
}
    632e:	bd10      	pop	{r4, pc}

00006330 <memory_fault_recoverable>:
}
    6330:	2000      	movs	r0, #0
    6332:	4770      	bx	lr

00006334 <fault_handle>:
{
    6334:	b510      	push	{r4, lr}
    6336:	0014      	movs	r4, r2
	*recoverable = false;
    6338:	2200      	movs	r2, #0
    633a:	7022      	strb	r2, [r4, #0]
	switch (fault) {
    633c:	2903      	cmp	r1, #3
    633e:	d003      	beq.n	6348 <fault_handle+0x14>
		reserved_exception(esf, fault);
    6340:	f7fa feb0 	bl	10a4 <reserved_exception>
	uint32_t reason = K_ERR_CPU_EXCEPTION;
    6344:	2000      	movs	r0, #0
}
    6346:	bd10      	pop	{r4, pc}
		reason = hard_fault(esf, recoverable, non_secure_esf);
    6348:	001a      	movs	r2, r3
    634a:	0021      	movs	r1, r4
    634c:	f7fa fe66 	bl	101c <hard_fault>
		break;
    6350:	e7f9      	b.n	6346 <fault_handle+0x12>

00006352 <arm_irq_priority_set>:
 * The priority is verified if ASSERT_ON is enabled. The maximum number
 * of priority levels is a little complex, as there are some hardware
 * priority levels which are reserved.
 */
void arm_irq_priority_set(unsigned int irq, unsigned int prio, uint32_t flags)
{
    6352:	b510      	push	{r4, lr}
	 * reduced set of priorities, like Cortex-M0/M0+).
	 */
	__ASSERT(prio <= (BIT(NUM_IRQ_PRIO_BITS) - 1),
		 "invalid priority %d for %d irq! values must be less than %lu\n",
		 prio - _IRQ_PRIO_OFFSET, irq, BIT(NUM_IRQ_PRIO_BITS) - (_IRQ_PRIO_OFFSET));
	NVIC_SetPriority((IRQn_Type)irq, prio);
    6354:	b240      	sxtb	r0, r0
    6356:	f7fa ff45 	bl	11e4 <__NVIC_SetPriority>
}
    635a:	bd10      	pop	{r4, pc}

0000635c <z_irq_spurious>:
 * Installed in all _sw_isr_table slots at boot time. Throws an error if
 * called.
 *
 */
void z_irq_spurious(const void *unused)
{
    635c:	b510      	push	{r4, lr}
	ARG_UNUSED(unused);

	z_arm_fatal_error(K_ERR_SPURIOUS_IRQ, NULL);
    635e:	2100      	movs	r1, #0
    6360:	2001      	movs	r0, #1
    6362:	f7fa fdf5 	bl	f50 <z_arm_fatal_error>
}
    6366:	bd10      	pop	{r4, pc}

00006368 <z_prep_c>:
 *
 * This routine prepares for the execution of and runs C code.
 *
 */
FUNC_NORETURN void z_prep_c(void)
{
    6368:	b510      	push	{r4, lr}
	soc_prep_hook();

	relocate_vector_table();
    636a:	f7fa ff77 	bl	125c <relocate_vector_table>
#if defined(CONFIG_CPU_HAS_FPU)
	z_arm_floating_point_init();
#endif
	arch_bss_zero();
    636e:	f7fa fda1 	bl	eb4 <arch_bss_zero>
	arch_data_copy();
    6372:	f7fa fdab 	bl	ecc <arch_data_copy>
#if defined(CONFIG_ARM_CUSTOM_INTERRUPT_CONTROLLER)
	/* Invoke SoC-specific interrupt controller initialization */
	z_soc_irq_init();
#else
	z_arm_interrupt_init();
    6376:	f000 f810 	bl	639a <z_arm_interrupt_init>
#endif

#ifdef CONFIG_NULL_POINTER_EXCEPTION_DETECTION_DWT
	z_arm_debug_enable_null_pointer_detection();
#endif
	z_cstart();
    637a:	f7fc f833 	bl	23e4 <z_cstart>

0000637e <arch_coprocessors_disable>:
	return -ENOTSUP;
    637e:	2086      	movs	r0, #134	@ 0x86
}
    6380:	4240      	negs	r0, r0
    6382:	4770      	bx	lr

00006384 <arch_irq_unlock_outlined>:
    6384:	2800      	cmp	r0, #0
    6386:	d100      	bne.n	638a <arch_irq_unlock_outlined+0x6>
    6388:	b662      	cpsie	i
#if defined(CONFIG_ARMV7_M_ARMV8_M_MAINLINE)
	__enable_fault_irq(); /* alters FAULTMASK */
	__enable_irq();       /* alters PRIMASK */
#endif
	arch_irq_unlock(key);
}
    638a:	4770      	bx	lr

0000638c <arch_cpu_idle>:
  __ASM volatile ("dsb 0xF":::"memory");
    638c:	f3bf 8f4f 	dsb	sy
	 * set by the caller as part of interrupt locking if necessary
	 * (i.e. if the caller sets _kernel.idle).
	 */
#endif

	SLEEP_IF_ALLOWED(__WFI);
    6390:	bf30      	wfi
    __ASM volatile ("cpsie i" : : : "memory");
    6392:	b662      	cpsie	i
  __ASM volatile ("isb 0xF":::"memory");
    6394:	f3bf 8f6f 	isb	sy
#if defined(CONFIG_SYS_IDLE_HOOKS)
	sys_trace_idle_exit();
#endif
	__enable_irq();
	__ISB();
}
    6398:	4770      	bx	lr

0000639a <z_arm_interrupt_init>:
 * interrupt locking via BASEPRI works as expected.
 *
 */

void z_arm_interrupt_init(void)
{
    639a:	b510      	push	{r4, lr}
	int irq = 0;
    639c:	2400      	movs	r4, #0

/* CONFIG_2ND_LVL_ISR_TBL_OFFSET could be treated as total number of level1 interrupts */
#if defined(CONFIG_MULTI_LEVEL_INTERRUPTS) && defined(CONFIG_2ND_LVL_ISR_TBL_OFFSET)
	for (; irq < CONFIG_2ND_LVL_ISR_TBL_OFFSET; irq++) {
#else
	for (; irq < CONFIG_NUM_IRQS; irq++) {
    639e:	e004      	b.n	63aa <z_arm_interrupt_init+0x10>
#endif
		NVIC_SetPriority((IRQn_Type)irq, _IRQ_PRIO_OFFSET);
    63a0:	b260      	sxtb	r0, r4
    63a2:	2100      	movs	r1, #0
    63a4:	f7fb f81a 	bl	13dc <__NVIC_SetPriority>
	for (; irq < CONFIG_NUM_IRQS; irq++) {
    63a8:	3401      	adds	r4, #1
    63aa:	2c1f      	cmp	r4, #31
    63ac:	ddf8      	ble.n	63a0 <z_arm_interrupt_init+0x6>
	}
}
    63ae:	bd10      	pop	{r4, pc}

000063b0 <picolibc_put>:
{
    63b0:	b510      	push	{r4, lr}
		union { uintptr_t x; FILE * val; } parm1 = { .val = stream };
		return (int) arch_syscall_invoke2(parm0.x, parm1.x, K_SYSCALL_ZEPHYR_FPUTC);
	}
#endif
	compiler_barrier();
	return z_impl_zephyr_fputc(c, stream);
    63b2:	f7fb f859 	bl	1468 <z_impl_zephyr_fputc>
}
    63b6:	2000      	movs	r0, #0
    63b8:	bd10      	pop	{r4, pc}

000063ba <mcux_mcg_on>:

static int mcux_mcg_on(const struct device *dev,
		       clock_control_subsys_t sub_system)
{
	return 0;
}
    63ba:	2000      	movs	r0, #0
    63bc:	4770      	bx	lr

000063be <mcux_mcg_off>:

static int mcux_mcg_off(const struct device *dev,
			clock_control_subsys_t sub_system)
{
	return 0;
}
    63be:	2000      	movs	r0, #0
    63c0:	4770      	bx	lr

000063c2 <mcux_mcg_get_rate>:

static int mcux_mcg_get_rate(const struct device *dev,
			     clock_control_subsys_t sub_system,
			     uint32_t *rate)
{
    63c2:	b510      	push	{r4, lr}
    63c4:	0014      	movs	r4, r2
	clock_name_t clock_name;

	switch ((uint32_t) sub_system) {
    63c6:	2900      	cmp	r1, #0
    63c8:	d004      	beq.n	63d4 <mcux_mcg_get_rate+0x12>
    63ca:	2901      	cmp	r1, #1
    63cc:	d008      	beq.n	63e0 <mcux_mcg_get_rate+0x1e>
    63ce:	2016      	movs	r0, #22
    63d0:	4240      	negs	r0, r0
    63d2:	e004      	b.n	63de <mcux_mcg_get_rate+0x1c>
		LOG_ERR("Unsupported clock name");
		return -EINVAL;
		break;
	}

	*rate = CLOCK_GetFreq(clock_name);
    63d4:	2008      	movs	r0, #8
    63d6:	f7fb fc6d 	bl	1cb4 <CLOCK_GetFreq>
    63da:	6020      	str	r0, [r4, #0]
	return 0;
    63dc:	2000      	movs	r0, #0
}
    63de:	bd10      	pop	{r4, pc}
		*rate = CLOCK_GetOutClkFreq();
    63e0:	f7fb fc46 	bl	1c70 <CLOCK_GetOutClkFreq>
    63e4:	6020      	str	r0, [r4, #0]
		return 0;
    63e6:	2000      	movs	r0, #0
    63e8:	e7f9      	b.n	63de <mcux_mcg_get_rate+0x1c>

000063ea <mcux_sim_validate_gate_offset>:
	if (gate_offset == 0U) {
    63ea:	2800      	cmp	r0, #0
    63ec:	d007      	beq.n	63fe <mcux_sim_validate_gate_offset+0x14>
	if (((gate_offset & 0x3U) != 0U) ||
    63ee:	0783      	lsls	r3, r0, #30
    63f0:	d107      	bne.n	6402 <mcux_sim_validate_gate_offset+0x18>
    63f2:	2383      	movs	r3, #131	@ 0x83
    63f4:	015b      	lsls	r3, r3, #5
    63f6:	4298      	cmp	r0, r3
    63f8:	d206      	bcs.n	6408 <mcux_sim_validate_gate_offset+0x1e>
	return 0;
    63fa:	2000      	movs	r0, #0
}
    63fc:	4770      	bx	lr
		return 0;
    63fe:	2000      	movs	r0, #0
    6400:	e7fc      	b.n	63fc <mcux_sim_validate_gate_offset+0x12>
		return -EINVAL;
    6402:	2016      	movs	r0, #22
    6404:	4240      	negs	r0, r0
    6406:	e7f9      	b.n	63fc <mcux_sim_validate_gate_offset+0x12>
    6408:	2016      	movs	r0, #22
    640a:	4240      	negs	r0, r0
    640c:	e7f6      	b.n	63fc <mcux_sim_validate_gate_offset+0x12>

0000640e <mcux_sim_init>:
	SIM->CHIPCTL = (SIM->CHIPCTL & ~SIM_CHIPCTL_CLKOUTSEL_MASK)
		| SIM_CHIPCTL_CLKOUTSEL(NXP_KINETIS_SIM_CLKOUT_SOURCE);
#endif

	return 0;
}
    640e:	2000      	movs	r0, #0
    6410:	4770      	bx	lr

00006412 <mcux_sim_get_subsys_rate>:
{
    6412:	b510      	push	{r4, lr}
    6414:	0014      	movs	r4, r2
	uint32_t clock_name = KINETIS_SIM_CLOCK_DECODE_NAME(clk);
    6416:	0a49      	lsrs	r1, r1, #9
    6418:	201f      	movs	r0, #31
    641a:	4008      	ands	r0, r1
	if (clock_name == KINETIS_SIM_LPO_CLK) {
    641c:	2813      	cmp	r0, #19
    641e:	d005      	beq.n	642c <mcux_sim_get_subsys_rate+0x1a>
		*rate = CLOCK_GetFreq((clock_name_t)clock_name);
    6420:	b2c0      	uxtb	r0, r0
    6422:	f7fb fc47 	bl	1cb4 <CLOCK_GetFreq>
    6426:	6020      	str	r0, [r4, #0]
}
    6428:	2000      	movs	r0, #0
    642a:	bd10      	pop	{r4, pc}
		*rate = CLOCK_GetFreq(kCLOCK_LpoClk);
    642c:	3806      	subs	r0, #6
    642e:	f7fb fc41 	bl	1cb4 <CLOCK_GetFreq>
    6432:	6020      	str	r0, [r4, #0]
    6434:	e7f8      	b.n	6428 <mcux_sim_get_subsys_rate+0x16>

00006436 <sys_slist_remove>:
 */
static inline void sys_slist_remove(sys_slist_t *list,
				    sys_snode_t *prev_node,
				    sys_snode_t *node);

Z_GENLIST_REMOVE(slist, snode)
    6436:	2900      	cmp	r1, #0
    6438:	d007      	beq.n	644a <sys_slist_remove+0x14>
	return node->next;
    643a:	6813      	ldr	r3, [r2, #0]
	parent->next = child;
    643c:	600b      	str	r3, [r1, #0]
	return list->tail;
    643e:	6843      	ldr	r3, [r0, #4]
Z_GENLIST_REMOVE(slist, snode)
    6440:	429a      	cmp	r2, r3
    6442:	d009      	beq.n	6458 <sys_slist_remove+0x22>
	parent->next = child;
    6444:	2300      	movs	r3, #0
    6446:	6013      	str	r3, [r2, #0]
Z_GENLIST_REMOVE(slist, snode)
    6448:	4770      	bx	lr
	return node->next;
    644a:	6813      	ldr	r3, [r2, #0]
	list->head = node;
    644c:	6003      	str	r3, [r0, #0]
	return list->tail;
    644e:	6841      	ldr	r1, [r0, #4]
Z_GENLIST_REMOVE(slist, snode)
    6450:	428a      	cmp	r2, r1
    6452:	d1f7      	bne.n	6444 <sys_slist_remove+0xe>
	list->tail = node;
    6454:	6043      	str	r3, [r0, #4]
}
    6456:	e7f5      	b.n	6444 <sys_slist_remove+0xe>
	list->tail = node;
    6458:	6041      	str	r1, [r0, #4]
}
    645a:	e7f3      	b.n	6444 <sys_slist_remove+0xe>

0000645c <sys_slist_find_and_remove>:
static inline size_t sys_slist_len(const sys_slist_t *list);

Z_GENLIST_LEN(slist, snode)

/** @} */
Z_GENLIST_FIND_AND_REMOVE(slist, snode)
    645c:	b510      	push	{r4, lr}
    645e:	000a      	movs	r2, r1
	return list->head;
    6460:	6803      	ldr	r3, [r0, #0]
Z_GENLIST_FIND_AND_REMOVE(slist, snode)
    6462:	2100      	movs	r1, #0
    6464:	e001      	b.n	646a <sys_slist_find_and_remove+0xe>
    6466:	0019      	movs	r1, r3
    6468:	681b      	ldr	r3, [r3, #0]
    646a:	2b00      	cmp	r3, #0
    646c:	d005      	beq.n	647a <sys_slist_find_and_remove+0x1e>
    646e:	4293      	cmp	r3, r2
    6470:	d1f9      	bne.n	6466 <sys_slist_find_and_remove+0xa>
    6472:	f7ff ffe0 	bl	6436 <sys_slist_remove>
    6476:	2001      	movs	r0, #1
    6478:	e000      	b.n	647c <sys_slist_find_and_remove+0x20>
    647a:	2000      	movs	r0, #0
    647c:	bd10      	pop	{r4, pc}

0000647e <reset_line_deassert>:


extern int z_impl_reset_line_deassert(const struct device * dev, uint32_t id);

static inline int reset_line_deassert(const struct device * dev, uint32_t id)
{
    647e:	b510      	push	{r4, lr}
 */
__syscall int reset_line_deassert(const struct device *dev, uint32_t id);

static inline int z_impl_reset_line_deassert(const struct device *dev, uint32_t id)
{
	const struct reset_driver_api *api = DEVICE_API_GET(reset, dev);
    6480:	6883      	ldr	r3, [r0, #8]

	if (api->line_deassert == NULL) {
    6482:	689b      	ldr	r3, [r3, #8]
    6484:	2b00      	cmp	r3, #0
    6486:	d001      	beq.n	648c <reset_line_deassert+0xe>
		return -ENOSYS;
	}

	return api->line_deassert(dev, id);
    6488:	4798      	blx	r3
		return (int) arch_syscall_invoke2(parm0.x, parm1.x, K_SYSCALL_RESET_LINE_DEASSERT);
	}
#endif
	compiler_barrier();
	return z_impl_reset_line_deassert(dev, id);
}
    648a:	bd10      	pop	{r4, pc}
		return -ENOSYS;
    648c:	2058      	movs	r0, #88	@ 0x58
    648e:	4240      	negs	r0, r0
	return z_impl_reset_line_deassert(dev, id);
    6490:	e7fb      	b.n	648a <reset_line_deassert+0xc>

00006492 <gpio_manage_callback>:
 * @return 0 on success, negative errno otherwise.
 */
static inline int gpio_manage_callback(sys_slist_t *callbacks,
					struct gpio_callback *callback,
					bool set)
{
    6492:	b570      	push	{r4, r5, r6, lr}
    6494:	0004      	movs	r4, r0
    6496:	000d      	movs	r5, r1
    6498:	0016      	movs	r6, r2
	return list->head;
    649a:	6803      	ldr	r3, [r0, #0]
	__ASSERT(callback, "No callback!");
	__ASSERT(callback->handler, "No callback handler!");

	if (!sys_slist_is_empty(callbacks)) {
    649c:	2b00      	cmp	r3, #0
    649e:	d007      	beq.n	64b0 <gpio_manage_callback+0x1e>
		if (!sys_slist_find_and_remove(callbacks, &callback->node)) {
    64a0:	f7ff ffdc 	bl	645c <sys_slist_find_and_remove>
    64a4:	2800      	cmp	r0, #0
    64a6:	d110      	bne.n	64ca <gpio_manage_callback+0x38>
			if (!set) {
    64a8:	2e00      	cmp	r6, #0
    64aa:	d103      	bne.n	64b4 <gpio_manage_callback+0x22>
				return -EINVAL;
    64ac:	3816      	subs	r0, #22
    64ae:	e008      	b.n	64c2 <gpio_manage_callback+0x30>
			}
		}
	} else if (!set) {
    64b0:	2a00      	cmp	r2, #0
    64b2:	d007      	beq.n	64c4 <gpio_manage_callback+0x32>
    64b4:	6823      	ldr	r3, [r4, #0]
	parent->next = child;
    64b6:	602b      	str	r3, [r5, #0]
	list->head = node;
    64b8:	6025      	str	r5, [r4, #0]
	return list->tail;
    64ba:	6863      	ldr	r3, [r4, #4]
Z_GENLIST_PREPEND(slist, snode)
    64bc:	2b00      	cmp	r3, #0
    64be:	d008      	beq.n	64d2 <gpio_manage_callback+0x40>

	if (set) {
		sys_slist_prepend(callbacks, &callback->node);
	}

	return 0;
    64c0:	2000      	movs	r0, #0
}
    64c2:	bd70      	pop	{r4, r5, r6, pc}
		return -EINVAL;
    64c4:	2016      	movs	r0, #22
    64c6:	4240      	negs	r0, r0
    64c8:	e7fb      	b.n	64c2 <gpio_manage_callback+0x30>
	if (set) {
    64ca:	2e00      	cmp	r6, #0
    64cc:	d1f2      	bne.n	64b4 <gpio_manage_callback+0x22>
	return 0;
    64ce:	2000      	movs	r0, #0
    64d0:	e7f7      	b.n	64c2 <gpio_manage_callback+0x30>
	list->tail = node;
    64d2:	6065      	str	r5, [r4, #4]
    64d4:	2000      	movs	r0, #0
}
    64d6:	e7f4      	b.n	64c2 <gpio_manage_callback+0x30>

000064d8 <gpio_fire_callbacks>:
 * @param pins The actual pin mask that triggered the interrupt
 */
static inline void gpio_fire_callbacks(sys_slist_t *list,
					const struct device *port,
					uint32_t pins)
{
    64d8:	b570      	push	{r4, r5, r6, lr}
    64da:	000e      	movs	r6, r1
    64dc:	0015      	movs	r5, r2
	return list->head;
    64de:	6801      	ldr	r1, [r0, #0]
	struct gpio_callback *cb, *tmp;

	sys_port_trace_gpio_fire_callbacks_enter(list, port, pins);

	SYS_SLIST_FOR_EACH_CONTAINER_SAFE(list, cb, tmp, node) {
    64e0:	2900      	cmp	r1, #0
    64e2:	d006      	beq.n	64f2 <gpio_fire_callbacks+0x1a>
	return node->next;
    64e4:	680c      	ldr	r4, [r1, #0]
    64e6:	2c00      	cmp	r4, #0
    64e8:	d008      	beq.n	64fc <gpio_fire_callbacks+0x24>
Z_GENLIST_PEEK_NEXT(slist, snode)
    64ea:	2900      	cmp	r1, #0
    64ec:	d106      	bne.n	64fc <gpio_fire_callbacks+0x24>
    64ee:	000c      	movs	r4, r1
    64f0:	e004      	b.n	64fc <gpio_fire_callbacks+0x24>
    64f2:	000c      	movs	r4, r1
    64f4:	e002      	b.n	64fc <gpio_fire_callbacks+0x24>
    64f6:	0023      	movs	r3, r4
    64f8:	0021      	movs	r1, r4
    64fa:	001c      	movs	r4, r3
    64fc:	2900      	cmp	r1, #0
    64fe:	d010      	beq.n	6522 <gpio_fire_callbacks+0x4a>
		if (cb->pin_mask & pins) {
    6500:	688b      	ldr	r3, [r1, #8]
    6502:	002a      	movs	r2, r5
    6504:	401a      	ands	r2, r3
    6506:	421d      	tst	r5, r3
    6508:	d002      	beq.n	6510 <gpio_fire_callbacks+0x38>
			__ASSERT(cb->handler, "No callback handler!");

			cb->handler(port, cb, cb->pin_mask & pins);
    650a:	684b      	ldr	r3, [r1, #4]
    650c:	0030      	movs	r0, r6
    650e:	4798      	blx	r3
	SYS_SLIST_FOR_EACH_CONTAINER_SAFE(list, cb, tmp, node) {
    6510:	2c00      	cmp	r4, #0
    6512:	d0f0      	beq.n	64f6 <gpio_fire_callbacks+0x1e>
	return node->next;
    6514:	6823      	ldr	r3, [r4, #0]
    6516:	2b00      	cmp	r3, #0
    6518:	d0ee      	beq.n	64f8 <gpio_fire_callbacks+0x20>
Z_GENLIST_PEEK_NEXT(slist, snode)
    651a:	2c00      	cmp	r4, #0
    651c:	d1ec      	bne.n	64f8 <gpio_fire_callbacks+0x20>
    651e:	0023      	movs	r3, r4
    6520:	e7ea      	b.n	64f8 <gpio_fire_callbacks+0x20>
			sys_port_trace_gpio_fire_callback(port, cb);
		}
	}
}
    6522:	bd70      	pop	{r4, r5, r6, pc}

00006524 <gpio_mcux_port_get_raw>:
	const struct gpio_mcux_config *config = dev->config;
    6524:	6843      	ldr	r3, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    6526:	685b      	ldr	r3, [r3, #4]
	*value = gpio_base->PDIR;
    6528:	691b      	ldr	r3, [r3, #16]
    652a:	600b      	str	r3, [r1, #0]
}
    652c:	2000      	movs	r0, #0
    652e:	4770      	bx	lr

00006530 <gpio_mcux_port_set_masked_raw>:
	const struct gpio_mcux_config *config = dev->config;
    6530:	6843      	ldr	r3, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    6532:	685b      	ldr	r3, [r3, #4]
	gpio_base->PDOR = (gpio_base->PDOR & ~mask) | (mask & value);
    6534:	6818      	ldr	r0, [r3, #0]
    6536:	4042      	eors	r2, r0
    6538:	4011      	ands	r1, r2
    653a:	4041      	eors	r1, r0
    653c:	6019      	str	r1, [r3, #0]
}
    653e:	2000      	movs	r0, #0
    6540:	4770      	bx	lr

00006542 <gpio_mcux_port_set_bits_raw>:
	const struct gpio_mcux_config *config = dev->config;
    6542:	6843      	ldr	r3, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    6544:	685b      	ldr	r3, [r3, #4]
	gpio_base->PSOR = mask;
    6546:	6059      	str	r1, [r3, #4]
}
    6548:	2000      	movs	r0, #0
    654a:	4770      	bx	lr

0000654c <gpio_mcux_port_clear_bits_raw>:
	const struct gpio_mcux_config *config = dev->config;
    654c:	6843      	ldr	r3, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    654e:	685b      	ldr	r3, [r3, #4]
	gpio_base->PCOR = mask;
    6550:	6099      	str	r1, [r3, #8]
}
    6552:	2000      	movs	r0, #0
    6554:	4770      	bx	lr

00006556 <gpio_mcux_port_toggle_bits>:
	const struct gpio_mcux_config *config = dev->config;
    6556:	6843      	ldr	r3, [r0, #4]
	GPIO_Type *gpio_base = config->gpio_base;
    6558:	685b      	ldr	r3, [r3, #4]
	gpio_base->PTOR = mask;
    655a:	60d9      	str	r1, [r3, #12]
}
    655c:	2000      	movs	r0, #0
    655e:	4770      	bx	lr

00006560 <get_port_pcr_irqc_value_from_flags>:
	if (mode == GPIO_INT_MODE_DISABLED) {
    6560:	2180      	movs	r1, #128	@ 0x80
    6562:	0389      	lsls	r1, r1, #14
    6564:	428a      	cmp	r2, r1
    6566:	d019      	beq.n	659c <get_port_pcr_irqc_value_from_flags+0x3c>
		if (mode == GPIO_INT_MODE_LEVEL) {
    6568:	2180      	movs	r1, #128	@ 0x80
    656a:	03c9      	lsls	r1, r1, #15
    656c:	428a      	cmp	r2, r1
    656e:	d00d      	beq.n	658c <get_port_pcr_irqc_value_from_flags+0x2c>
			switch (trig) {
    6570:	2280      	movs	r2, #128	@ 0x80
    6572:	04d2      	lsls	r2, r2, #19
    6574:	4293      	cmp	r3, r2
    6576:	d014      	beq.n	65a2 <get_port_pcr_irqc_value_from_flags+0x42>
    6578:	22c0      	movs	r2, #192	@ 0xc0
    657a:	04d2      	lsls	r2, r2, #19
    657c:	4293      	cmp	r3, r2
    657e:	d012      	beq.n	65a6 <get_port_pcr_irqc_value_from_flags+0x46>
    6580:	2280      	movs	r2, #128	@ 0x80
    6582:	0492      	lsls	r2, r2, #18
    6584:	4293      	cmp	r3, r2
    6586:	d110      	bne.n	65aa <get_port_pcr_irqc_value_from_flags+0x4a>
    6588:	200a      	movs	r0, #10
    658a:	e008      	b.n	659e <get_port_pcr_irqc_value_from_flags+0x3e>
			if (trig == GPIO_INT_TRIG_LOW) {
    658c:	2280      	movs	r2, #128	@ 0x80
    658e:	0492      	lsls	r2, r2, #18
    6590:	4293      	cmp	r3, r2
    6592:	d001      	beq.n	6598 <get_port_pcr_irqc_value_from_flags+0x38>
				port_interrupt = kPORT_InterruptLogicOne;
    6594:	200c      	movs	r0, #12
    6596:	e002      	b.n	659e <get_port_pcr_irqc_value_from_flags+0x3e>
				port_interrupt = kPORT_InterruptLogicZero;
    6598:	2008      	movs	r0, #8
    659a:	e000      	b.n	659e <get_port_pcr_irqc_value_from_flags+0x3e>
		port_interrupt = kPORT_InterruptOrDMADisabled;
    659c:	2000      	movs	r0, #0
	return PORT_PCR_IRQC(port_interrupt);
    659e:	0400      	lsls	r0, r0, #16
}
    65a0:	4770      	bx	lr
				port_interrupt = kPORT_InterruptRisingEdge;
    65a2:	2009      	movs	r0, #9
    65a4:	e7fb      	b.n	659e <get_port_pcr_irqc_value_from_flags+0x3e>
				port_interrupt = kPORT_InterruptEitherEdge;
    65a6:	200b      	movs	r0, #11
    65a8:	e7f9      	b.n	659e <get_port_pcr_irqc_value_from_flags+0x3e>
			switch (trig) {
    65aa:	2016      	movs	r0, #22
    65ac:	4240      	negs	r0, r0
    65ae:	e7f7      	b.n	65a0 <get_port_pcr_irqc_value_from_flags+0x40>

000065b0 <gpio_mcux_manage_callback>:

static int gpio_mcux_manage_callback(const struct device *dev, struct gpio_callback *callback,
				     bool set)
{
    65b0:	b510      	push	{r4, lr}
	struct gpio_mcux_data *data = dev->data;
    65b2:	6900      	ldr	r0, [r0, #16]

	return gpio_manage_callback(&data->callbacks, callback, set);
    65b4:	3004      	adds	r0, #4
    65b6:	f7ff ff6c 	bl	6492 <gpio_manage_callback>
}
    65ba:	bd10      	pop	{r4, pc}

000065bc <gpio_mcux_port_isr>:

static void gpio_mcux_port_isr(const struct device *dev)
{
    65bc:	b510      	push	{r4, lr}
    65be:	0001      	movs	r1, r0
	const struct gpio_mcux_config *config = dev->config;
    65c0:	6843      	ldr	r3, [r0, #4]
	struct gpio_mcux_data *data = dev->data;
    65c2:	6900      	ldr	r0, [r0, #16]
	int_status = config->gpio_base->ISFR[0];

	/* Clear the gpio interrupts */
	config->gpio_base->ISFR[0] = int_status;
#elif (GPIO_IRQ_CTRL == GPIO_IRQ_CTRL_BY_PORT)
	int_status = config->port_base->ISFR;
    65c4:	689c      	ldr	r4, [r3, #8]
    65c6:	23a0      	movs	r3, #160	@ 0xa0
    65c8:	58e2      	ldr	r2, [r4, r3]

	/* Clear the port interrupts */
	config->port_base->ISFR = int_status;
    65ca:	50e2      	str	r2, [r4, r3]
#else
	int_status = 0U;
	ARG_UNUSED(config);
#endif /* GPIO_IRQ_CTRL */

	gpio_fire_callbacks(&data->callbacks, dev, int_status);
    65cc:	3004      	adds	r0, #4
    65ce:	f7ff ff83 	bl	64d8 <gpio_fire_callbacks>
}
    65d2:	bd10      	pop	{r4, pc}

000065d4 <gpio_mcux_port0_init>:
		IF_ENABLED(DT_INST_IRQ_HAS_IDX(n, 0),			\
			(GPIO_MCUX_IRQ_INIT(n);))                                         \
		return 0;                                                                          \
	}

DT_INST_FOREACH_STATUS_OKAY(GPIO_DEVICE_INIT_MCUX)
    65d4:	b510      	push	{r4, lr}
    65d6:	6844      	ldr	r4, [r0, #4]
    65d8:	6920      	ldr	r0, [r4, #16]
    65da:	2800      	cmp	r0, #0
    65dc:	d00c      	beq.n	65f8 <gpio_mcux_port0_init+0x24>
    65de:	f000 f9e3 	bl	69a8 <z_impl_device_is_ready>
    65e2:	2800      	cmp	r0, #0
    65e4:	d022      	beq.n	662c <gpio_mcux_port0_init+0x58>
    65e6:	6920      	ldr	r0, [r4, #16]
    65e8:	6961      	ldr	r1, [r4, #20]
 * @return 0 on success, negative errno on failure.
 */
static inline int clock_control_on(const struct device *dev,
				   clock_control_subsys_t sys)
{
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    65ea:	6883      	ldr	r3, [r0, #8]

	if (api->on == NULL) {
    65ec:	681b      	ldr	r3, [r3, #0]
    65ee:	2b00      	cmp	r3, #0
    65f0:	d019      	beq.n	6626 <gpio_mcux_port0_init+0x52>
		return -ENOSYS;
	}

	return api->on(dev, sys);
    65f2:	4798      	blx	r3
    65f4:	2800      	cmp	r0, #0
    65f6:	d115      	bne.n	6624 <gpio_mcux_port0_init+0x50>
    65f8:	69a0      	ldr	r0, [r4, #24]
    65fa:	2800      	cmp	r0, #0
    65fc:	d009      	beq.n	6612 <gpio_mcux_port0_init+0x3e>
    65fe:	f000 f9d3 	bl	69a8 <z_impl_device_is_ready>
    6602:	2800      	cmp	r0, #0
    6604:	d015      	beq.n	6632 <gpio_mcux_port0_init+0x5e>
 *
 * @return a value from reset_line_deassert()
 */
static inline int reset_line_deassert_dt(const struct reset_dt_spec *spec)
{
	return reset_line_deassert(spec->dev, spec->id);
    6606:	69a0      	ldr	r0, [r4, #24]
    6608:	69e1      	ldr	r1, [r4, #28]
    660a:	f7ff ff38 	bl	647e <reset_line_deassert>
    660e:	2800      	cmp	r0, #0
    6610:	d108      	bne.n	6624 <gpio_mcux_port0_init+0x50>
    6612:	2200      	movs	r2, #0
    6614:	2102      	movs	r1, #2
    6616:	201e      	movs	r0, #30
    6618:	f7ff fe9b 	bl	6352 <arm_irq_priority_set>
    661c:	201e      	movs	r0, #30
    661e:	f7fa fe11 	bl	1244 <arm_irq_enable>
    6622:	2000      	movs	r0, #0
    6624:	bd10      	pop	{r4, pc}
		return -ENOSYS;
    6626:	2058      	movs	r0, #88	@ 0x58
    6628:	4240      	negs	r0, r0
    662a:	e7fb      	b.n	6624 <gpio_mcux_port0_init+0x50>
    662c:	2013      	movs	r0, #19
    662e:	4240      	negs	r0, r0
    6630:	e7f8      	b.n	6624 <gpio_mcux_port0_init+0x50>
    6632:	2013      	movs	r0, #19
    6634:	4240      	negs	r0, r0
    6636:	e7f5      	b.n	6624 <gpio_mcux_port0_init+0x50>

00006638 <gpio_mcux_port1_init>:
    6638:	b510      	push	{r4, lr}
    663a:	6844      	ldr	r4, [r0, #4]
    663c:	6920      	ldr	r0, [r4, #16]
    663e:	2800      	cmp	r0, #0
    6640:	d00c      	beq.n	665c <gpio_mcux_port1_init+0x24>
    6642:	f000 f9b1 	bl	69a8 <z_impl_device_is_ready>
    6646:	2800      	cmp	r0, #0
    6648:	d017      	beq.n	667a <gpio_mcux_port1_init+0x42>
    664a:	6920      	ldr	r0, [r4, #16]
    664c:	6961      	ldr	r1, [r4, #20]
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    664e:	6883      	ldr	r3, [r0, #8]
	if (api->on == NULL) {
    6650:	681b      	ldr	r3, [r3, #0]
    6652:	2b00      	cmp	r3, #0
    6654:	d00e      	beq.n	6674 <gpio_mcux_port1_init+0x3c>
	return api->on(dev, sys);
    6656:	4798      	blx	r3
    6658:	2800      	cmp	r0, #0
    665a:	d10a      	bne.n	6672 <gpio_mcux_port1_init+0x3a>
    665c:	69a0      	ldr	r0, [r4, #24]
    665e:	2800      	cmp	r0, #0
    6660:	d00e      	beq.n	6680 <gpio_mcux_port1_init+0x48>
    6662:	f000 f9a1 	bl	69a8 <z_impl_device_is_ready>
    6666:	2800      	cmp	r0, #0
    6668:	d00c      	beq.n	6684 <gpio_mcux_port1_init+0x4c>
    666a:	69a0      	ldr	r0, [r4, #24]
    666c:	69e1      	ldr	r1, [r4, #28]
    666e:	f7ff ff06 	bl	647e <reset_line_deassert>
    6672:	bd10      	pop	{r4, pc}
		return -ENOSYS;
    6674:	2058      	movs	r0, #88	@ 0x58
    6676:	4240      	negs	r0, r0
    6678:	e7fb      	b.n	6672 <gpio_mcux_port1_init+0x3a>
    667a:	2013      	movs	r0, #19
    667c:	4240      	negs	r0, r0
    667e:	e7f8      	b.n	6672 <gpio_mcux_port1_init+0x3a>
    6680:	2000      	movs	r0, #0
    6682:	e7f6      	b.n	6672 <gpio_mcux_port1_init+0x3a>
    6684:	2013      	movs	r0, #19
    6686:	4240      	negs	r0, r0
    6688:	e7f3      	b.n	6672 <gpio_mcux_port1_init+0x3a>

0000668a <gpio_mcux_port2_init>:
    668a:	b510      	push	{r4, lr}
    668c:	6844      	ldr	r4, [r0, #4]
    668e:	6920      	ldr	r0, [r4, #16]
    6690:	2800      	cmp	r0, #0
    6692:	d00c      	beq.n	66ae <gpio_mcux_port2_init+0x24>
    6694:	f000 f988 	bl	69a8 <z_impl_device_is_ready>
    6698:	2800      	cmp	r0, #0
    669a:	d017      	beq.n	66cc <gpio_mcux_port2_init+0x42>
    669c:	6920      	ldr	r0, [r4, #16]
    669e:	6961      	ldr	r1, [r4, #20]
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    66a0:	6883      	ldr	r3, [r0, #8]
	if (api->on == NULL) {
    66a2:	681b      	ldr	r3, [r3, #0]
    66a4:	2b00      	cmp	r3, #0
    66a6:	d00e      	beq.n	66c6 <gpio_mcux_port2_init+0x3c>
	return api->on(dev, sys);
    66a8:	4798      	blx	r3
    66aa:	2800      	cmp	r0, #0
    66ac:	d10a      	bne.n	66c4 <gpio_mcux_port2_init+0x3a>
    66ae:	69a0      	ldr	r0, [r4, #24]
    66b0:	2800      	cmp	r0, #0
    66b2:	d00e      	beq.n	66d2 <gpio_mcux_port2_init+0x48>
    66b4:	f000 f978 	bl	69a8 <z_impl_device_is_ready>
    66b8:	2800      	cmp	r0, #0
    66ba:	d00c      	beq.n	66d6 <gpio_mcux_port2_init+0x4c>
    66bc:	69a0      	ldr	r0, [r4, #24]
    66be:	69e1      	ldr	r1, [r4, #28]
    66c0:	f7ff fedd 	bl	647e <reset_line_deassert>
    66c4:	bd10      	pop	{r4, pc}
		return -ENOSYS;
    66c6:	2058      	movs	r0, #88	@ 0x58
    66c8:	4240      	negs	r0, r0
    66ca:	e7fb      	b.n	66c4 <gpio_mcux_port2_init+0x3a>
    66cc:	2013      	movs	r0, #19
    66ce:	4240      	negs	r0, r0
    66d0:	e7f8      	b.n	66c4 <gpio_mcux_port2_init+0x3a>
    66d2:	2000      	movs	r0, #0
    66d4:	e7f6      	b.n	66c4 <gpio_mcux_port2_init+0x3a>
    66d6:	2013      	movs	r0, #19
    66d8:	4240      	negs	r0, r0
    66da:	e7f3      	b.n	66c4 <gpio_mcux_port2_init+0x3a>

000066dc <gpio_mcux_port3_init>:
    66dc:	b510      	push	{r4, lr}
    66de:	6844      	ldr	r4, [r0, #4]
    66e0:	6920      	ldr	r0, [r4, #16]
    66e2:	2800      	cmp	r0, #0
    66e4:	d00c      	beq.n	6700 <gpio_mcux_port3_init+0x24>
    66e6:	f000 f95f 	bl	69a8 <z_impl_device_is_ready>
    66ea:	2800      	cmp	r0, #0
    66ec:	d022      	beq.n	6734 <gpio_mcux_port3_init+0x58>
    66ee:	6920      	ldr	r0, [r4, #16]
    66f0:	6961      	ldr	r1, [r4, #20]
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    66f2:	6883      	ldr	r3, [r0, #8]
	if (api->on == NULL) {
    66f4:	681b      	ldr	r3, [r3, #0]
    66f6:	2b00      	cmp	r3, #0
    66f8:	d019      	beq.n	672e <gpio_mcux_port3_init+0x52>
	return api->on(dev, sys);
    66fa:	4798      	blx	r3
    66fc:	2800      	cmp	r0, #0
    66fe:	d115      	bne.n	672c <gpio_mcux_port3_init+0x50>
    6700:	69a0      	ldr	r0, [r4, #24]
    6702:	2800      	cmp	r0, #0
    6704:	d009      	beq.n	671a <gpio_mcux_port3_init+0x3e>
    6706:	f000 f94f 	bl	69a8 <z_impl_device_is_ready>
    670a:	2800      	cmp	r0, #0
    670c:	d015      	beq.n	673a <gpio_mcux_port3_init+0x5e>
    670e:	69a0      	ldr	r0, [r4, #24]
    6710:	69e1      	ldr	r1, [r4, #28]
    6712:	f7ff feb4 	bl	647e <reset_line_deassert>
    6716:	2800      	cmp	r0, #0
    6718:	d108      	bne.n	672c <gpio_mcux_port3_init+0x50>
    671a:	2200      	movs	r2, #0
    671c:	2102      	movs	r1, #2
    671e:	201f      	movs	r0, #31
    6720:	f7ff fe17 	bl	6352 <arm_irq_priority_set>
    6724:	201f      	movs	r0, #31
    6726:	f7fa fd8d 	bl	1244 <arm_irq_enable>
    672a:	2000      	movs	r0, #0
    672c:	bd10      	pop	{r4, pc}
		return -ENOSYS;
    672e:	2058      	movs	r0, #88	@ 0x58
    6730:	4240      	negs	r0, r0
    6732:	e7fb      	b.n	672c <gpio_mcux_port3_init+0x50>
    6734:	2013      	movs	r0, #19
    6736:	4240      	negs	r0, r0
    6738:	e7f8      	b.n	672c <gpio_mcux_port3_init+0x50>
    673a:	2013      	movs	r0, #19
    673c:	4240      	negs	r0, r0
    673e:	e7f5      	b.n	672c <gpio_mcux_port3_init+0x50>

00006740 <gpio_mcux_port4_init>:
    6740:	b510      	push	{r4, lr}
    6742:	6844      	ldr	r4, [r0, #4]
    6744:	6920      	ldr	r0, [r4, #16]
    6746:	2800      	cmp	r0, #0
    6748:	d00c      	beq.n	6764 <gpio_mcux_port4_init+0x24>
    674a:	f000 f92d 	bl	69a8 <z_impl_device_is_ready>
    674e:	2800      	cmp	r0, #0
    6750:	d017      	beq.n	6782 <gpio_mcux_port4_init+0x42>
    6752:	6920      	ldr	r0, [r4, #16]
    6754:	6961      	ldr	r1, [r4, #20]
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    6756:	6883      	ldr	r3, [r0, #8]
	if (api->on == NULL) {
    6758:	681b      	ldr	r3, [r3, #0]
    675a:	2b00      	cmp	r3, #0
    675c:	d00e      	beq.n	677c <gpio_mcux_port4_init+0x3c>
	return api->on(dev, sys);
    675e:	4798      	blx	r3
    6760:	2800      	cmp	r0, #0
    6762:	d10a      	bne.n	677a <gpio_mcux_port4_init+0x3a>
    6764:	69a0      	ldr	r0, [r4, #24]
    6766:	2800      	cmp	r0, #0
    6768:	d00e      	beq.n	6788 <gpio_mcux_port4_init+0x48>
    676a:	f000 f91d 	bl	69a8 <z_impl_device_is_ready>
    676e:	2800      	cmp	r0, #0
    6770:	d00c      	beq.n	678c <gpio_mcux_port4_init+0x4c>
    6772:	69a0      	ldr	r0, [r4, #24]
    6774:	69e1      	ldr	r1, [r4, #28]
    6776:	f7ff fe82 	bl	647e <reset_line_deassert>
    677a:	bd10      	pop	{r4, pc}
		return -ENOSYS;
    677c:	2058      	movs	r0, #88	@ 0x58
    677e:	4240      	negs	r0, r0
    6780:	e7fb      	b.n	677a <gpio_mcux_port4_init+0x3a>
    6782:	2013      	movs	r0, #19
    6784:	4240      	negs	r0, r0
    6786:	e7f8      	b.n	677a <gpio_mcux_port4_init+0x3a>
    6788:	2000      	movs	r0, #0
    678a:	e7f6      	b.n	677a <gpio_mcux_port4_init+0x3a>
    678c:	2013      	movs	r0, #19
    678e:	4240      	negs	r0, r0
    6790:	e7f3      	b.n	677a <gpio_mcux_port4_init+0x3a>

00006792 <pinctrl_lookup_state>:

#include <zephyr/drivers/pinctrl.h>

int pinctrl_lookup_state(const struct pinctrl_dev_config *config, uint8_t id,
			 const struct pinctrl_state **state)
{
    6792:	b530      	push	{r4, r5, lr}
	*state = &config->states[0];
    6794:	6803      	ldr	r3, [r0, #0]
    6796:	6013      	str	r3, [r2, #0]
	while (*state < &config->states[config->state_cnt]) {
    6798:	e001      	b.n	679e <pinctrl_lookup_state+0xc>
		if (id == (*state)->id) {
			return 0;
		}

		(*state)++;
    679a:	3308      	adds	r3, #8
    679c:	6013      	str	r3, [r2, #0]
	while (*state < &config->states[config->state_cnt]) {
    679e:	6813      	ldr	r3, [r2, #0]
    67a0:	6804      	ldr	r4, [r0, #0]
    67a2:	7905      	ldrb	r5, [r0, #4]
    67a4:	00ed      	lsls	r5, r5, #3
    67a6:	1964      	adds	r4, r4, r5
    67a8:	42a3      	cmp	r3, r4
    67aa:	d204      	bcs.n	67b6 <pinctrl_lookup_state+0x24>
		if (id == (*state)->id) {
    67ac:	795c      	ldrb	r4, [r3, #5]
    67ae:	428c      	cmp	r4, r1
    67b0:	d1f3      	bne.n	679a <pinctrl_lookup_state+0x8>
			return 0;
    67b2:	2000      	movs	r0, #0
    67b4:	e001      	b.n	67ba <pinctrl_lookup_state+0x28>
	}

	return -ENOENT;
    67b6:	2002      	movs	r0, #2
    67b8:	4240      	negs	r0, r0
}
    67ba:	bd30      	pop	{r4, r5, pc}

000067bc <pm_device_driver_init>:
	ARG_UNUSED(dev);
	return true;
}

static inline int pm_device_driver_init(const struct device *dev, pm_device_action_cb_t action_cb)
{
    67bc:	b570      	push	{r4, r5, r6, lr}
    67be:	0005      	movs	r5, r0
    67c0:	000c      	movs	r4, r1
	int rc;

	/* When power management is not enabled, all drivers should initialise to active state */
	rc = action_cb(dev, PM_DEVICE_ACTION_TURN_ON);
    67c2:	2103      	movs	r1, #3
    67c4:	47a0      	blx	r4
	if ((rc < 0) && (rc != -ENOTSUP)) {
    67c6:	2800      	cmp	r0, #0
    67c8:	db06      	blt.n	67d8 <pm_device_driver_init+0x1c>
		return rc;
	}

	rc = action_cb(dev, PM_DEVICE_ACTION_RESUME);
    67ca:	2101      	movs	r1, #1
    67cc:	0028      	movs	r0, r5
    67ce:	47a0      	blx	r4
	if (rc < 0) {
    67d0:	2800      	cmp	r0, #0
    67d2:	db00      	blt.n	67d6 <pm_device_driver_init+0x1a>
		return rc;
	}

	return 0;
    67d4:	2000      	movs	r0, #0
}
    67d6:	bd70      	pop	{r4, r5, r6, pc}
	if ((rc < 0) && (rc != -ENOTSUP)) {
    67d8:	0003      	movs	r3, r0
    67da:	3386      	adds	r3, #134	@ 0x86
    67dc:	d1fb      	bne.n	67d6 <pm_device_driver_init+0x1a>
    67de:	e7f4      	b.n	67ca <pm_device_driver_init+0xe>

000067e0 <pinctrl_mcux_clock_on>:
{
    67e0:	b510      	push	{r4, lr}
	const struct pinctrl_mcux_config *config = dev->config;
    67e2:	6843      	ldr	r3, [r0, #4]
	err = clock_control_on(config->clock_dev, config->clock_subsys);
    67e4:	6818      	ldr	r0, [r3, #0]
    67e6:	6859      	ldr	r1, [r3, #4]
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    67e8:	6883      	ldr	r3, [r0, #8]
	if (api->on == NULL) {
    67ea:	681b      	ldr	r3, [r3, #0]
    67ec:	2b00      	cmp	r3, #0
    67ee:	d003      	beq.n	67f8 <pinctrl_mcux_clock_on+0x18>
	return api->on(dev, sys);
    67f0:	4798      	blx	r3
	if (err) {
    67f2:	2800      	cmp	r0, #0
    67f4:	d100      	bne.n	67f8 <pinctrl_mcux_clock_on+0x18>
}
    67f6:	bd10      	pop	{r4, pc}
		return -EINVAL;
    67f8:	2016      	movs	r0, #22
    67fa:	4240      	negs	r0, r0
    67fc:	e7fb      	b.n	67f6 <pinctrl_mcux_clock_on+0x16>

000067fe <pinctrl_mcux_pm_action>:
{
    67fe:	b510      	push	{r4, lr}
	switch (action) {
    6800:	2902      	cmp	r1, #2
    6802:	d904      	bls.n	680e <pinctrl_mcux_pm_action+0x10>
    6804:	2903      	cmp	r1, #3
    6806:	d104      	bne.n	6812 <pinctrl_mcux_pm_action+0x14>
		return pinctrl_mcux_clock_on(dev);
    6808:	f7ff ffea 	bl	67e0 <pinctrl_mcux_clock_on>
    680c:	e000      	b.n	6810 <pinctrl_mcux_pm_action+0x12>
	switch (action) {
    680e:	2000      	movs	r0, #0
}
    6810:	bd10      	pop	{r4, pc}
		return -ENOTSUP;
    6812:	2086      	movs	r0, #134	@ 0x86
    6814:	4240      	negs	r0, r0
    6816:	e7fb      	b.n	6810 <pinctrl_mcux_pm_action+0x12>

00006818 <mcux_lpsci_poll_out>:

	return ret;
}

static void mcux_lpsci_poll_out(const struct device *dev, unsigned char c)
{
    6818:	b570      	push	{r4, r5, r6, lr}
    681a:	000d      	movs	r5, r1
	const struct mcux_lpsci_config *config = dev->config;
    681c:	6844      	ldr	r4, [r0, #4]

	while (!(LPSCI_GetStatusFlags(config->base)
    681e:	6820      	ldr	r0, [r4, #0]
    6820:	f000 f891 	bl	6946 <LPSCI_GetStatusFlags>
    6824:	0600      	lsls	r0, r0, #24
    6826:	d5fa      	bpl.n	681e <mcux_lpsci_poll_out+0x6>
		& kLPSCI_TxDataRegEmptyFlag)) {
	}

	LPSCI_WriteByte(config->base, c);
    6828:	6823      	ldr	r3, [r4, #0]
 * @param base LPSCI peripheral base address.
 * @param data Data write to TX register.
 */
static inline void LPSCI_WriteByte(UART0_Type *base, uint8_t data)
{
    base->D = data;
    682a:	71dd      	strb	r5, [r3, #7]
}
    682c:	bd70      	pop	{r4, r5, r6, pc}

0000682e <mcux_lpsci_poll_in>:
{
    682e:	b570      	push	{r4, r5, r6, lr}
    6830:	000c      	movs	r4, r1
	const struct mcux_lpsci_config *config = dev->config;
    6832:	6845      	ldr	r5, [r0, #4]
	uint32_t flags = LPSCI_GetStatusFlags(config->base);
    6834:	6828      	ldr	r0, [r5, #0]
    6836:	f000 f886 	bl	6946 <LPSCI_GetStatusFlags>
	if (flags & kLPSCI_RxDataRegFullFlag) {
    683a:	0680      	lsls	r0, r0, #26
    683c:	d504      	bpl.n	6848 <mcux_lpsci_poll_in+0x1a>
		*c = LPSCI_ReadByte(config->base);
    683e:	682b      	ldr	r3, [r5, #0]
 * @param base LPSCI peripheral base address.
 * @return Data read from RX data register.
 */
static inline uint8_t LPSCI_ReadByte(UART0_Type *base)
{
    return base->D;
    6840:	79db      	ldrb	r3, [r3, #7]
    6842:	7023      	strb	r3, [r4, #0]
		ret = 0;
    6844:	2000      	movs	r0, #0
}
    6846:	bd70      	pop	{r4, r5, r6, pc}
	int ret = -1;
    6848:	2001      	movs	r0, #1
    684a:	4240      	negs	r0, r0
	return ret;
    684c:	e7fb      	b.n	6846 <mcux_lpsci_poll_in+0x18>

0000684e <mcux_lpsci_err_check>:

static int mcux_lpsci_err_check(const struct device *dev)
{
    684e:	b570      	push	{r4, r5, r6, lr}
	const struct mcux_lpsci_config *config = dev->config;
    6850:	6845      	ldr	r5, [r0, #4]
	uint32_t flags = LPSCI_GetStatusFlags(config->base);
    6852:	6828      	ldr	r0, [r5, #0]
    6854:	f000 f877 	bl	6946 <LPSCI_GetStatusFlags>
	int err = 0;

	if (flags & kLPSCI_RxOverrunFlag) {
    6858:	0703      	lsls	r3, r0, #28
    685a:	d40e      	bmi.n	687a <mcux_lpsci_err_check+0x2c>
	int err = 0;
    685c:	2400      	movs	r4, #0
		err |= UART_ERROR_OVERRUN;
	}

	if (flags & kLPSCI_ParityErrorFlag) {
    685e:	07c3      	lsls	r3, r0, #31
    6860:	d501      	bpl.n	6866 <mcux_lpsci_err_check+0x18>
		err |= UART_ERROR_PARITY;
    6862:	2302      	movs	r3, #2
    6864:	431c      	orrs	r4, r3
	}

	if (flags & kLPSCI_FramingErrorFlag) {
    6866:	0780      	lsls	r0, r0, #30
    6868:	d501      	bpl.n	686e <mcux_lpsci_err_check+0x20>
		err |= UART_ERROR_FRAMING;
    686a:	2304      	movs	r3, #4
    686c:	431c      	orrs	r4, r3
	}

	LPSCI_ClearStatusFlags(config->base, kLPSCI_RxOverrunFlag |
    686e:	6828      	ldr	r0, [r5, #0]
    6870:	210b      	movs	r1, #11
    6872:	f7fb fbf5 	bl	2060 <LPSCI_ClearStatusFlags>
					      kLPSCI_ParityErrorFlag |
					      kLPSCI_FramingErrorFlag);

	return err;
}
    6876:	0020      	movs	r0, r4
    6878:	bd70      	pop	{r4, r5, r6, pc}
		err |= UART_ERROR_OVERRUN;
    687a:	2401      	movs	r4, #1
    687c:	e7ef      	b.n	685e <mcux_lpsci_err_check+0x10>

0000687e <pinctrl_apply_state>:
 * @retval -ENOENT If given state id does not exist.
 * @retval -errno Negative errno for other failures.
 */
static inline int pinctrl_apply_state(const struct pinctrl_dev_config *config,
				      uint8_t id)
{
    687e:	b500      	push	{lr}
    6880:	b083      	sub	sp, #12
	int ret;
	const struct pinctrl_state *state;

	ret = pinctrl_lookup_state(config, id, &state);
    6882:	aa01      	add	r2, sp, #4
    6884:	f7ff ff85 	bl	6792 <pinctrl_lookup_state>
	if (ret < 0) {
    6888:	2800      	cmp	r0, #0
    688a:	db05      	blt.n	6898 <pinctrl_apply_state+0x1a>
		return ret;
	}

	return pinctrl_apply_state_direct(config, state);
    688c:	9b01      	ldr	r3, [sp, #4]
	return pinctrl_configure_pins(state->pins, state->pin_cnt, reg);
    688e:	6818      	ldr	r0, [r3, #0]
    6890:	7919      	ldrb	r1, [r3, #4]
    6892:	2200      	movs	r2, #0
    6894:	f7fa ff28 	bl	16e8 <pinctrl_configure_pins>
}
    6898:	b003      	add	sp, #12
    689a:	bd00      	pop	{pc}

0000689c <mcux_lpsci_init>:
	}
}
#endif /* CONFIG_UART_INTERRUPT_DRIVEN */

static int mcux_lpsci_init(const struct device *dev)
{
    689c:	b570      	push	{r4, r5, r6, lr}
    689e:	b084      	sub	sp, #16
	const struct mcux_lpsci_config *config = dev->config;
    68a0:	6844      	ldr	r4, [r0, #4]
	lpsci_config_t uart_config;
	uint32_t clock_freq;
	int err;

	if (!device_is_ready(config->clock_dev)) {
    68a2:	6860      	ldr	r0, [r4, #4]
    68a4:	f000 f880 	bl	69a8 <z_impl_device_is_ready>
    68a8:	2800      	cmp	r0, #0
    68aa:	d023      	beq.n	68f4 <mcux_lpsci_init+0x58>
		return -ENODEV;
	}

	if (clock_control_get_rate(config->clock_dev, config->clock_subsys,
    68ac:	6860      	ldr	r0, [r4, #4]
    68ae:	68a1      	ldr	r1, [r4, #8]
 */
static inline int clock_control_get_rate(const struct device *dev,
					 clock_control_subsys_t sys,
					 uint32_t *rate)
{
	const struct clock_control_driver_api *api = DEVICE_API_GET(clock_control, dev);
    68b0:	6883      	ldr	r3, [r0, #8]

	if (api->get_rate == NULL) {
    68b2:	68db      	ldr	r3, [r3, #12]
    68b4:	2b00      	cmp	r3, #0
    68b6:	d01a      	beq.n	68ee <mcux_lpsci_init+0x52>
		return -ENOSYS;
	}

	return api->get_rate(dev, sys, rate);
    68b8:	466a      	mov	r2, sp
    68ba:	4798      	blx	r3
    68bc:	1e05      	subs	r5, r0, #0
    68be:	d116      	bne.n	68ee <mcux_lpsci_init+0x52>
				   &clock_freq)) {
		return -EINVAL;
	}

	LPSCI_GetDefaultConfig(&uart_config);
    68c0:	ae01      	add	r6, sp, #4
    68c2:	0030      	movs	r0, r6
    68c4:	f000 f835 	bl	6932 <LPSCI_GetDefaultConfig>
	uart_config.enableTx = true;
    68c8:	2301      	movs	r3, #1
    68ca:	71f3      	strb	r3, [r6, #7]
	uart_config.enableRx = true;
    68cc:	7233      	strb	r3, [r6, #8]
	uart_config.baudRate_Bps = config->baud_rate;
    68ce:	68e3      	ldr	r3, [r4, #12]
    68d0:	9301      	str	r3, [sp, #4]

	LPSCI_Init(config->base, &uart_config, clock_freq);
    68d2:	6820      	ldr	r0, [r4, #0]
    68d4:	9a00      	ldr	r2, [sp, #0]
    68d6:	0031      	movs	r1, r6
    68d8:	f7fb fb18 	bl	1f0c <LPSCI_Init>

	err = pinctrl_apply_state(config->pincfg, PINCTRL_STATE_DEFAULT);
    68dc:	6920      	ldr	r0, [r4, #16]
    68de:	2100      	movs	r1, #0
    68e0:	f7ff ffcd 	bl	687e <pinctrl_apply_state>
	if (err < 0) {
    68e4:	2800      	cmp	r0, #0
    68e6:	db08      	blt.n	68fa <mcux_lpsci_init+0x5e>
#ifdef CONFIG_UART_INTERRUPT_DRIVEN
	config->irq_config_func(dev);
#endif

	return 0;
}
    68e8:	0028      	movs	r0, r5
    68ea:	b004      	add	sp, #16
    68ec:	bd70      	pop	{r4, r5, r6, pc}
		return -EINVAL;
    68ee:	2516      	movs	r5, #22
    68f0:	426d      	negs	r5, r5
    68f2:	e7f9      	b.n	68e8 <mcux_lpsci_init+0x4c>
		return -ENODEV;
    68f4:	2513      	movs	r5, #19
    68f6:	426d      	negs	r5, r5
    68f8:	e7f6      	b.n	68e8 <mcux_lpsci_init+0x4c>
		return err;
    68fa:	0005      	movs	r5, r0
    68fc:	e7f4      	b.n	68e8 <mcux_lpsci_init+0x4c>

000068fe <sys_clock_set_timeout>:
{
    68fe:	b510      	push	{r4, lr}
	timer_core_arm(ticks);
    6900:	f7fa ff80 	bl	1804 <timer_core_arm>
}
    6904:	bd10      	pop	{r4, pc}

00006906 <sys_clock_cycle_get_32>:
{
    6906:	b510      	push	{r4, lr}
	return (uint32_t)timer_core_cycle_get();
    6908:	f7fa ffda 	bl	18c0 <timer_core_cycle_get>
}
    690c:	bd10      	pop	{r4, pc}

0000690e <CLOCK_GetPll0RefFreq>:
{
    690e:	b510      	push	{r4, lr}
    return CLOCK_GetMcgExtClkFreq();
    6910:	f7fb f894 	bl	1a3c <CLOCK_GetMcgExtClkFreq>
}
    6914:	bd10      	pop	{r4, pc}

00006916 <CLOCK_GetFixedFreqClkFreq>:
{
    6916:	b510      	push	{r4, lr}
    uint32_t freq = CLOCK_GetFllRefClkFreq();
    6918:	f7fb f8d2 	bl	1ac0 <CLOCK_GetFllRefClkFreq>
    691c:	1e04      	subs	r4, r0, #0
    if ((freq) && (freq <= (CLOCK_GetOutClkFreq() / 8U)))
    691e:	d102      	bne.n	6926 <CLOCK_GetFixedFreqClkFreq+0x10>
        return 0U;
    6920:	2400      	movs	r4, #0
}
    6922:	0020      	movs	r0, r4
    6924:	bd10      	pop	{r4, pc}
    if ((freq) && (freq <= (CLOCK_GetOutClkFreq() / 8U)))
    6926:	f7fb f9a3 	bl	1c70 <CLOCK_GetOutClkFreq>
    692a:	08c0      	lsrs	r0, r0, #3
    692c:	42a0      	cmp	r0, r4
    692e:	d2f8      	bcs.n	6922 <CLOCK_GetFixedFreqClkFreq+0xc>
    6930:	e7f6      	b.n	6920 <CLOCK_GetFixedFreqClkFreq+0xa>

00006932 <LPSCI_GetDefaultConfig>:
{
    6932:	b510      	push	{r4, lr}
    6934:	0004      	movs	r4, r0
    memset(config, 0, sizeof(*config));
    6936:	220c      	movs	r2, #12
    6938:	2100      	movs	r1, #0
    693a:	f7fc fddf 	bl	34fc <memset>
    config->baudRate_Bps = 115200U;
    693e:	23e1      	movs	r3, #225	@ 0xe1
    6940:	025b      	lsls	r3, r3, #9
    6942:	6023      	str	r3, [r4, #0]
}
    6944:	bd10      	pop	{r4, pc}

00006946 <LPSCI_GetStatusFlags>:
{
    6946:	0003      	movs	r3, r0
    status_flag = (uint32_t)base->S1;
    6948:	7900      	ldrb	r0, [r0, #4]
    status_flag |= ((uint32_t)(base->S2) << 8);
    694a:	795b      	ldrb	r3, [r3, #5]
    694c:	021b      	lsls	r3, r3, #8
    694e:	4318      	orrs	r0, r3
}
    6950:	4770      	bx	lr

00006952 <z_impl_k_busy_wait>:
	return (uint32_t)((num + denom - 1U) / denom);
}
#endif /* CONFIG_SYSTEM_CLOCK_HW_CYCLES_PER_SEC_RUNTIME_UPDATE */

void z_impl_k_busy_wait(uint32_t usec_to_wait)
{
    6952:	b570      	push	{r4, r5, r6, lr}
    6954:	1e06      	subs	r6, r0, #0
	SYS_PORT_TRACING_FUNC_ENTER(k_thread, busy_wait, usec_to_wait);
	if (usec_to_wait == 0U) {
    6956:	d100      	bne.n	695a <z_impl_k_busy_wait+0x8>
		arch_nop();
	}
#endif

	SYS_PORT_TRACING_FUNC_EXIT(k_thread, busy_wait, usec_to_wait);
}
    6958:	bd70      	pop	{r4, r5, r6, pc}
#ifndef _ASMLANGUAGE
extern uint32_t sys_clock_cycle_get_32(void);

static inline uint32_t arch_k_cycle_get_32(void)
{
	return sys_clock_cycle_get_32();
    695a:	f7ff ffd4 	bl	6906 <sys_clock_cycle_get_32>
    695e:	0005      	movs	r5, r0
	uint32_t cycles_to_wait = k_us_to_cyc_ceil32(usec_to_wait);
    6960:	0074      	lsls	r4, r6, #1
    6962:	19a4      	adds	r4, r4, r6
    6964:	0124      	lsls	r4, r4, #4
    6966:	f7ff ffce 	bl	6906 <sys_clock_cycle_get_32>
		if ((current_cycles - start_cycles) >= cycles_to_wait) {
    696a:	1b40      	subs	r0, r0, r5
    696c:	42a0      	cmp	r0, r4
    696e:	d3fa      	bcc.n	6966 <z_impl_k_busy_wait+0x14>
    6970:	e7f2      	b.n	6958 <z_impl_k_busy_wait+0x6>

00006972 <do_device_init>:
#include <zephyr/internal/syscall_handler.h>
#include <zephyr/toolchain.h>
#include <zephyr/pm/device_runtime.h>

int do_device_init(const struct device *dev)
{
    6972:	b510      	push	{r4, lr}
    6974:	0004      	movs	r4, r0
	int rc = 0;

	if (dev->ops.init != NULL) {
    6976:	6943      	ldr	r3, [r0, #20]
    6978:	2b00      	cmp	r3, #0
    697a:	d013      	beq.n	69a4 <do_device_init+0x32>
		rc = dev->ops.init(dev);
    697c:	4798      	blx	r3
		/* If initialization failed, record in dev->state->init_res
		 * the POSITIVE value of the resulting errno
		 */
		if (rc != 0) {
    697e:	2800      	cmp	r0, #0
    6980:	d003      	beq.n	698a <do_device_init+0x18>
			 * errno value maps to an uint8_t range as of now.
			 */
			__ASSERT(rc >= -UINT8_MAX && rc < 0, "device %s init: invalid error (%d)",
				 dev->name, rc);

			if (rc < 0) {
    6982:	db0d      	blt.n	69a0 <do_device_init+0x2e>
				rc = -rc;
			}
			/* handle error value overflow in production
			 * this is likely a bug in the device's init function. Signals it
			 */
			if (rc > UINT8_MAX) {
    6984:	28ff      	cmp	r0, #255	@ 0xff
    6986:	dd00      	ble.n	698a <do_device_init+0x18>
				rc = UINT8_MAX;
    6988:	20ff      	movs	r0, #255	@ 0xff

		/* Always record the result: a device that failed to initialize
		 * earlier must not keep that error once it initializes
		 * successfully.
		 */
		dev->state->init_res = rc;
    698a:	68e3      	ldr	r3, [r4, #12]
    698c:	7018      	strb	r0, [r3, #0]
	}

	if (rc == 0) {
    698e:	2800      	cmp	r0, #0
    6990:	d104      	bne.n	699c <do_device_init+0x2a>
		/* A failed init leaves the device uninitialized, so it can be
		 * retried by device_init() and nothing can be released by
		 * device_deinit().
		 */
		dev->state->initialized = true;
    6992:	68e2      	ldr	r2, [r4, #12]
    6994:	7853      	ldrb	r3, [r2, #1]
    6996:	2101      	movs	r1, #1
    6998:	430b      	orrs	r3, r1
    699a:	7053      	strb	r3, [r2, #1]
	}

	/* here, the value of rc is either 0 or +errno
	 * flip the sign to return a negative value on failure as expected
	 */
	return -rc;
    699c:	4240      	negs	r0, r0
}
    699e:	bd10      	pop	{r4, pc}
				rc = -rc;
    69a0:	4240      	negs	r0, r0
    69a2:	e7ef      	b.n	6984 <do_device_init+0x12>
	int rc = 0;
    69a4:	2000      	movs	r0, #0
    69a6:	e7f4      	b.n	6992 <do_device_init+0x20>

000069a8 <z_impl_device_is_ready>:
{
	/*
	 * if an invalid device pointer is passed as argument, this call
	 * reports the `device` as not ready for usage.
	 */
	if (dev == NULL) {
    69a8:	2800      	cmp	r0, #0
    69aa:	d004      	beq.n	69b6 <z_impl_device_is_ready+0xe>
		return false;
	}

	return dev->state->initialized;
    69ac:	68c3      	ldr	r3, [r0, #12]
    69ae:	7858      	ldrb	r0, [r3, #1]
    69b0:	07c0      	lsls	r0, r0, #31
    69b2:	0fc0      	lsrs	r0, r0, #31
}
    69b4:	4770      	bx	lr
		return false;
    69b6:	2000      	movs	r0, #0
    69b8:	e7fc      	b.n	69b4 <z_impl_device_is_ready+0xc>

000069ba <arch_system_halt>:
    69ba:	f3ef 8310 	mrs	r3, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    69be:	b672      	cpsid	i
	for (;;) {
    69c0:	e7fe      	b.n	69c0 <arch_system_halt+0x6>

000069c2 <idle>:
#include <wait_q.h>

LOG_MODULE_DECLARE(os, CONFIG_KERNEL_LOG_LEVEL);

void idle(void *unused1, void *unused2, void *unused3)
{
    69c2:	b510      	push	{r4, lr}
    69c4:	f3ef 8310 	mrs	r3, PRIMASK
    69c8:	b672      	cpsid	i
 * @note In some architectures, before returning, the function unmasks interrupts
 * unconditionally.
 */
static inline void k_cpu_idle(void)
{
	arch_cpu_idle();
    69ca:	f7ff fcdf 	bl	638c <arch_cpu_idle>
	ARG_UNUSED(unused2);
	ARG_UNUSED(unused3);

	__ASSERT_NO_MSG(_current->base.prio >= 0);

	while (true) {
    69ce:	e7f9      	b.n	69c4 <idle+0x2>

000069d0 <arch_spin_relax>:
	return sys_clock_cycle_get_64();
}

static ALWAYS_INLINE void arch_nop(void)
{
	__asm__ volatile("nop");
    69d0:	46c0      	nop			@ (mov r8, r8)
{
	__ASSERT(!arch_cpu_irqs_are_enabled(),
		 "this is meant to be called with IRQs disabled");

	arch_nop();
}
    69d2:	4770      	bx	lr

000069d4 <compute_stack_geometry>:
		geo.obj_size = K_KERNEL_STACK_LEN(stack_size);
    69d4:	3207      	adds	r2, #7
    69d6:	2307      	movs	r3, #7
    69d8:	439a      	bics	r2, r3
    69da:	3207      	adds	r2, #7
    69dc:	439a      	bics	r2, r3
    69de:	6002      	str	r2, [r0, #0]
		geo.buf_start = K_KERNEL_STACK_BUFFER(stack);
    69e0:	6041      	str	r1, [r0, #4]
		geo.buf_size = geo.obj_size - K_KERNEL_STACK_RESERVED;
    69e2:	6082      	str	r2, [r0, #8]
}
    69e4:	4770      	bx	lr

000069e6 <map_thread_stack>:
	stack_ptr = (char *)stack + geo->obj_size;
    69e6:	6810      	ldr	r0, [r2, #0]
    69e8:	1808      	adds	r0, r1, r0
}
    69ea:	4770      	bx	lr

000069ec <set_thread_name>:
{
    69ec:	b510      	push	{r4, lr}
    69ee:	0004      	movs	r4, r0
	if (str != NULL) {
    69f0:	2900      	cmp	r1, #0
    69f2:	d007      	beq.n	6a04 <set_thread_name+0x18>
		strncpy(thread->name, str, CONFIG_THREAD_MAX_NAME_LEN - 1);
    69f4:	3070      	adds	r0, #112	@ 0x70
    69f6:	221f      	movs	r2, #31
    69f8:	f7fc fdea 	bl	35d0 <strncpy>
		thread->name[CONFIG_THREAD_MAX_NAME_LEN - 1] = '\0';
    69fc:	238f      	movs	r3, #143	@ 0x8f
    69fe:	2200      	movs	r2, #0
    6a00:	54e2      	strb	r2, [r4, r3]
}
    6a02:	bd10      	pop	{r4, pc}
		thread->name[0] = '\0';
    6a04:	2370      	movs	r3, #112	@ 0x70
    6a06:	2200      	movs	r2, #0
    6a08:	54c2      	strb	r2, [r0, r3]
}
    6a0a:	e7fa      	b.n	6a02 <set_thread_name+0x16>

00006a0c <reserve_stack_headroom>:
{
    6a0c:	b510      	push	{r4, lr}
	delta += arch_tls_stack_setup(new_thread, stack_ptr);
    6a0e:	f7fa facf 	bl	fb0 <arch_tls_stack_setup>
	return ROUND_UP(delta, ARCH_STACK_PTR_ALIGN);
    6a12:	3007      	adds	r0, #7
    6a14:	2307      	movs	r3, #7
    6a16:	4398      	bics	r0, r3
}
    6a18:	bd10      	pop	{r4, pc}

00006a1a <k_thread_name_get>:
	return (const char *)thread->name;
    6a1a:	3070      	adds	r0, #112	@ 0x70
}
    6a1c:	4770      	bx	lr

00006a1e <z_init_thread_base>:
{
    6a1e:	b510      	push	{r4, lr}
	thread_base->pended_on = NULL;
    6a20:	2400      	movs	r4, #0
    6a22:	6084      	str	r4, [r0, #8]
	thread_base->user_options = (uint16_t)options;
    6a24:	8183      	strh	r3, [r0, #12]
	thread_base->thread_state = (uint8_t)initial_state;
    6a26:	7402      	strb	r2, [r0, #16]
	thread_base->prio = priority;
    6a28:	7381      	strb	r1, [r0, #14]
	thread_base->sched_locked = 0U;
    6a2a:	73c4      	strb	r4, [r0, #15]
	node->next = NULL;
    6a2c:	6184      	str	r4, [r0, #24]
	node->prev = NULL;
    6a2e:	61c4      	str	r4, [r0, #28]
	to->dticks = 0;
    6a30:	2200      	movs	r2, #0
    6a32:	2300      	movs	r3, #0
    6a34:	6202      	str	r2, [r0, #32]
    6a36:	6243      	str	r3, [r0, #36]	@ 0x24
}
    6a38:	bd10      	pop	{r4, pc}

00006a3a <z_thread_mark_switched_out>:
{
    6a3a:	b510      	push	{r4, lr}
	z_sched_usage_stop();
    6a3c:	f7fc fb6c 	bl	3118 <z_sched_usage_stop>
}
    6a40:	bd10      	pop	{r4, pc}

00006a42 <z_impl_k_wakeup>:
{
    6a42:	b570      	push	{r4, r5, r6, lr}
    6a44:	0004      	movs	r4, r0
    6a46:	f3ef 8510 	mrs	r5, PRIMASK
    6a4a:	b672      	cpsid	i
	return (thread->base.thread_state & _THREAD_SLEEPING) != 0U;
    6a4c:	7c03      	ldrb	r3, [r0, #16]
	if (z_is_thread_sleeping(thread)) {
    6a4e:	075b      	lsls	r3, r3, #29
    6a50:	d403      	bmi.n	6a5a <z_impl_k_wakeup+0x18>
    6a52:	2d00      	cmp	r5, #0
    6a54:	d100      	bne.n	6a58 <z_impl_k_wakeup+0x16>
    __ASM volatile ("cpsie i" : : : "memory");
    6a56:	b662      	cpsie	i
}
    6a58:	bd70      	pop	{r4, r5, r6, pc}
	return z_try_abort_timeout(&thread->base.timeout);
    6a5a:	3018      	adds	r0, #24
    6a5c:	f7fc fabe 	bl	2fdc <z_try_abort_timeout>
	thread->base.thread_state &= ~_THREAD_SLEEPING;
    6a60:	7c23      	ldrb	r3, [r4, #16]
    6a62:	2204      	movs	r2, #4
    6a64:	4393      	bics	r3, r2
    6a66:	7423      	strb	r3, [r4, #16]
		z_sched_ready_locked(thread);
    6a68:	0020      	movs	r0, r4
    6a6a:	f7fb fe51 	bl	2710 <z_sched_ready_locked>
		z_reschedule_locked(key);
    6a6e:	0028      	movs	r0, r5
    6a70:	f7fb ff86 	bl	2980 <z_reschedule_locked>
    6a74:	e7f0      	b.n	6a58 <z_impl_k_wakeup+0x16>

00006a76 <z_thread_abort>:
{
    6a76:	b510      	push	{r4, lr}
	return (thread->base.user_options & K_ESSENTIAL) == K_ESSENTIAL;
    6a78:	8984      	ldrh	r4, [r0, #12]
    6a7a:	2301      	movs	r3, #1
    6a7c:	401c      	ands	r4, r3
    6a7e:	f3ef 8110 	mrs	r1, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    6a82:	b672      	cpsid	i
	return (thread->base.thread_state & _THREAD_DEAD) != 0U;
    6a84:	7c03      	ldrb	r3, [r0, #16]
	if (z_is_thread_dead(thread)) {
    6a86:	071b      	lsls	r3, r3, #28
    6a88:	d503      	bpl.n	6a92 <z_thread_abort+0x1c>
    6a8a:	2900      	cmp	r1, #0
    6a8c:	d100      	bne.n	6a90 <z_thread_abort+0x1a>
    __ASM volatile ("cpsie i" : : : "memory");
    6a8e:	b662      	cpsie	i
}
    6a90:	bd10      	pop	{r4, pc}
	z_thread_halt(thread, key, true);
    6a92:	2201      	movs	r2, #1
    6a94:	f7fb ffa6 	bl	29e4 <z_thread_halt>
	if (essential) {
    6a98:	2c00      	cmp	r4, #0
    6a9a:	d0f9      	beq.n	6a90 <z_thread_abort+0x1a>
    6a9c:	b662      	cpsie	i
		k_panic();
    6a9e:	2304      	movs	r3, #4
    6aa0:	1c18      	adds	r0, r3, #0
    6aa2:	df02      	svc	2
    6aa4:	e7f4      	b.n	6a90 <z_thread_abort+0x1a>

00006aa6 <thread_active_elsewhere>:
}
    6aa6:	2000      	movs	r0, #0
    6aa8:	4770      	bx	lr

00006aaa <z_swap_locked>:

/**
 * @brief - Like z_swap() but it is known that the scheduler's spinlock is already held.
 */
static inline int z_swap_locked(k_spinlock_key_t key)
{
    6aaa:	b510      	push	{r4, lr}
	return z_swap_irqlock(key.key);
    6aac:	f7fb fdd0 	bl	2650 <z_swap_irqlock>
	return z_swap(&_sched_spinlock, key);
}
    6ab0:	bd10      	pop	{r4, pc}

00006ab2 <unpend_all>:
{
    6ab2:	b570      	push	{r4, r5, r6, lr}
    6ab4:	0005      	movs	r5, r0
}

static inline struct k_thread *z_waitq_head_locked(_wait_q_t *w)
{
	return (struct k_thread *)sys_dlist_peek_head(&w->waitq);
    6ab6:	0006      	movs	r6, r0
	return list->head == list;
    6ab8:	6804      	ldr	r4, [r0, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    6aba:	42a0      	cmp	r0, r4
    6abc:	d01b      	beq.n	6af6 <unpend_all+0x44>
	     thread != NULL;
    6abe:	2c00      	cmp	r4, #0
    6ac0:	d01b      	beq.n	6afa <unpend_all+0x48>
	sys_dnode_t *const prev = node->prev;
    6ac2:	6862      	ldr	r2, [r4, #4]
	sys_dnode_t *const next = node->next;
    6ac4:	6823      	ldr	r3, [r4, #0]
	prev->next = next;
    6ac6:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    6ac8:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    6aca:	2300      	movs	r3, #0
    6acc:	6023      	str	r3, [r4, #0]
	node->prev = NULL;
    6ace:	6063      	str	r3, [r4, #4]
	thread->base.thread_state &= ~_THREAD_PENDING;
    6ad0:	7c22      	ldrb	r2, [r4, #16]
    6ad2:	2102      	movs	r1, #2
    6ad4:	438a      	bics	r2, r1
    6ad6:	7422      	strb	r2, [r4, #16]
	thread->base.pended_on = NULL;
    6ad8:	60a3      	str	r3, [r4, #8]
	thread->arch.swap_return_value = value;
    6ada:	22b8      	movs	r2, #184	@ 0xb8
    6adc:	50a3      	str	r3, [r4, r2]
    6ade:	0020      	movs	r0, r4
    6ae0:	3018      	adds	r0, #24
    6ae2:	f7fc fa7b 	bl	2fdc <z_try_abort_timeout>
		ready_thread(thread);
    6ae6:	0020      	movs	r0, r4
    6ae8:	f7fb fe12 	bl	2710 <z_sched_ready_locked>
	return list->head == list;
    6aec:	682c      	ldr	r4, [r5, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    6aee:	42a6      	cmp	r6, r4
    6af0:	d1e5      	bne.n	6abe <unpend_all+0xc>
    6af2:	2400      	movs	r4, #0
    6af4:	e7e3      	b.n	6abe <unpend_all+0xc>
    6af6:	2400      	movs	r4, #0
    6af8:	e7e1      	b.n	6abe <unpend_all+0xc>
}
    6afa:	bd70      	pop	{r4, r5, r6, pc}

00006afc <z_ready_thread>:
{
    6afc:	b570      	push	{r4, r5, r6, lr}
    6afe:	0004      	movs	r4, r0
	Z_SCHED_SPINLOCK {
    6b00:	2300      	movs	r3, #0
    6b02:	f3ef 8510 	mrs	r5, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    6b06:	b672      	cpsid	i
    6b08:	e004      	b.n	6b14 <z_ready_thread+0x18>
			ready_thread(thread);
    6b0a:	0020      	movs	r0, r4
    6b0c:	f7fb fe00 	bl	2710 <z_sched_ready_locked>
    6b10:	e007      	b.n	6b22 <z_ready_thread+0x26>
	Z_SCHED_SPINLOCK {
    6b12:	2301      	movs	r3, #1
    6b14:	2b00      	cmp	r3, #0
    6b16:	d108      	bne.n	6b2a <z_ready_thread+0x2e>
		if (thread_active_elsewhere(thread) == NULL) {
    6b18:	0020      	movs	r0, r4
    6b1a:	f7ff ffc4 	bl	6aa6 <thread_active_elsewhere>
    6b1e:	2800      	cmp	r0, #0
    6b20:	d0f3      	beq.n	6b0a <z_ready_thread+0xe>
    6b22:	2d00      	cmp	r5, #0
    6b24:	d1f5      	bne.n	6b12 <z_ready_thread+0x16>
    __ASM volatile ("cpsie i" : : : "memory");
    6b26:	b662      	cpsie	i
}
    6b28:	e7f3      	b.n	6b12 <z_ready_thread+0x16>
}
    6b2a:	bd70      	pop	{r4, r5, r6, pc}

00006b2c <z_sched_add_to_waitq_locked>:
{
    6b2c:	b570      	push	{r4, r5, r6, lr}
    6b2e:	0004      	movs	r4, r0
    6b30:	000d      	movs	r5, r1
	unready_thread(thread);
    6b32:	f7fb fedb 	bl	28ec <z_sched_unready_locked>
	thread->base.thread_state |= _THREAD_PENDING;
    6b36:	7c23      	ldrb	r3, [r4, #16]
    6b38:	2202      	movs	r2, #2
    6b3a:	4313      	orrs	r3, r2
    6b3c:	7423      	strb	r3, [r4, #16]
	if (wait_q != NULL) {
    6b3e:	2d00      	cmp	r5, #0
    6b40:	d026      	beq.n	6b90 <z_sched_add_to_waitq_locked+0x64>
		thread->base.pended_on = wait_q;
    6b42:	60a5      	str	r5, [r4, #8]
	return list->head == list;
    6b44:	682b      	ldr	r3, [r5, #0]
	return sys_dlist_is_empty(list) ? NULL : list->head;
    6b46:	429d      	cmp	r5, r3
    6b48:	d108      	bne.n	6b5c <z_sched_add_to_waitq_locked+0x30>
	SYS_DLIST_FOR_EACH_CONTAINER(pq, t, base.qnode_dlist) {
    6b4a:	2300      	movs	r3, #0
    6b4c:	e006      	b.n	6b5c <z_sched_add_to_waitq_locked+0x30>
    6b4e:	0019      	movs	r1, r3
	return (node == list->tail) ? NULL : node->next;
    6b50:	686a      	ldr	r2, [r5, #4]
    6b52:	4293      	cmp	r3, r2
    6b54:	d017      	beq.n	6b86 <z_sched_add_to_waitq_locked+0x5a>
    6b56:	681b      	ldr	r3, [r3, #0]
    6b58:	2b00      	cmp	r3, #0
    6b5a:	d110      	bne.n	6b7e <z_sched_add_to_waitq_locked+0x52>
    6b5c:	2b00      	cmp	r3, #0
    6b5e:	d012      	beq.n	6b86 <z_sched_add_to_waitq_locked+0x5a>
	int32_t b1 = thread_1->base.prio;
    6b60:	210e      	movs	r1, #14
    6b62:	5661      	ldrsb	r1, [r4, r1]
	int32_t b2 = thread_2->base.prio;
    6b64:	220e      	movs	r2, #14
    6b66:	569a      	ldrsb	r2, [r3, r2]
	if (b1 != b2) {
    6b68:	4291      	cmp	r1, r2
    6b6a:	d0f0      	beq.n	6b4e <z_sched_add_to_waitq_locked+0x22>
		return b2 - b1;
    6b6c:	1a52      	subs	r2, r2, r1
		if (z_sched_prio_cmp(thread, t) > 0) {
    6b6e:	2a00      	cmp	r2, #0
    6b70:	dded      	ble.n	6b4e <z_sched_add_to_waitq_locked+0x22>
	sys_dnode_t *const prev = successor->prev;
    6b72:	685a      	ldr	r2, [r3, #4]
	node->prev = prev;
    6b74:	6062      	str	r2, [r4, #4]
	node->next = successor;
    6b76:	6023      	str	r3, [r4, #0]
	prev->next = node;
    6b78:	6014      	str	r4, [r2, #0]
	successor->prev = node;
    6b7a:	605c      	str	r4, [r3, #4]
			return;
    6b7c:	e008      	b.n	6b90 <z_sched_add_to_waitq_locked+0x64>
	return (node != NULL) ? sys_dlist_peek_next_no_check(list, node) : NULL;
    6b7e:	2900      	cmp	r1, #0
    6b80:	d1ec      	bne.n	6b5c <z_sched_add_to_waitq_locked+0x30>
    6b82:	000b      	movs	r3, r1
    6b84:	e7ea      	b.n	6b5c <z_sched_add_to_waitq_locked+0x30>
	sys_dnode_t *const tail = list->tail;
    6b86:	686b      	ldr	r3, [r5, #4]
	node->next = list;
    6b88:	6025      	str	r5, [r4, #0]
	node->prev = tail;
    6b8a:	6063      	str	r3, [r4, #4]
	tail->next = node;
    6b8c:	601c      	str	r4, [r3, #0]
	list->tail = node;
    6b8e:	606c      	str	r4, [r5, #4]
}
    6b90:	bd70      	pop	{r4, r5, r6, pc}

00006b92 <z_sched_wake_thread_locked>:
{
    6b92:	b510      	push	{r4, lr}
	bool killed = (thread->base.thread_state &
    6b94:	7c03      	ldrb	r3, [r0, #16]
	if (!killed) {
    6b96:	2228      	movs	r2, #40	@ 0x28
    6b98:	421a      	tst	r2, r3
    6b9a:	d114      	bne.n	6bc6 <z_sched_wake_thread_locked+0x34>
		if (thread->base.pended_on != NULL) {
    6b9c:	6883      	ldr	r3, [r0, #8]
    6b9e:	2b00      	cmp	r3, #0
    6ba0:	d00b      	beq.n	6bba <z_sched_wake_thread_locked+0x28>
	sys_dnode_t *const prev = node->prev;
    6ba2:	6842      	ldr	r2, [r0, #4]
	sys_dnode_t *const next = node->next;
    6ba4:	6803      	ldr	r3, [r0, #0]
	prev->next = next;
    6ba6:	6013      	str	r3, [r2, #0]
	next->prev = prev;
    6ba8:	605a      	str	r2, [r3, #4]
	node->next = NULL;
    6baa:	2300      	movs	r3, #0
    6bac:	6003      	str	r3, [r0, #0]
	node->prev = NULL;
    6bae:	6043      	str	r3, [r0, #4]
	thread->base.thread_state &= ~_THREAD_PENDING;
    6bb0:	7c02      	ldrb	r2, [r0, #16]
    6bb2:	2102      	movs	r1, #2
    6bb4:	438a      	bics	r2, r1
    6bb6:	7402      	strb	r2, [r0, #16]
    6bb8:	6083      	str	r3, [r0, #8]
	thread->base.thread_state &= ~_THREAD_SLEEPING;
    6bba:	7c03      	ldrb	r3, [r0, #16]
    6bbc:	2204      	movs	r2, #4
    6bbe:	4393      	bics	r3, r2
    6bc0:	7403      	strb	r3, [r0, #16]
		ready_thread(thread);
    6bc2:	f7fb fda5 	bl	2710 <z_sched_ready_locked>
}
    6bc6:	bd10      	pop	{r4, pc}

00006bc8 <z_thread_timeout>:
{
    6bc8:	b570      	push	{r4, r5, r6, lr}
    6bca:	0004      	movs	r4, r0
	struct k_thread *thread = CONTAINER_OF(timeout,
    6bcc:	0006      	movs	r6, r0
    6bce:	3e18      	subs	r6, #24
	Z_SCHED_SPINLOCK {
    6bd0:	2300      	movs	r3, #0
    6bd2:	f3ef 8510 	mrs	r5, PRIMASK
    __ASM volatile ("cpsid i" : : : "memory");
    6bd6:	b672      	cpsid	i
    6bd8:	e004      	b.n	6be4 <z_thread_timeout+0x1c>
			z_sched_wake_thread_locked(thread);
    6bda:	0030      	movs	r0, r6
    6bdc:	f7ff ffd9 	bl	6b92 <z_sched_wake_thread_locked>
    6be0:	e007      	b.n	6bf2 <z_thread_timeout+0x2a>
	Z_SCHED_SPINLOCK {
    6be2:	2301      	movs	r3, #1
    6be4:	2b00      	cmp	r3, #0
    6be6:	d108      	bne.n	6bfa <z_thread_timeout+0x32>
		if (!z_timeout_inflight_superseded(timeout)) {
    6be8:	0020      	movs	r0, r4
    6bea:	f7fc fa25 	bl	3038 <z_timeout_inflight_superseded>
    6bee:	2800      	cmp	r0, #0
    6bf0:	d0f3      	beq.n	6bda <z_thread_timeout+0x12>
    6bf2:	2d00      	cmp	r5, #0
    6bf4:	d1f5      	bne.n	6be2 <z_thread_timeout+0x1a>
    __ASM volatile ("cpsie i" : : : "memory");
    6bf6:	b662      	cpsie	i
}
    6bf8:	e7f3      	b.n	6be2 <z_thread_timeout+0x1a>
}
    6bfa:	bd70      	pop	{r4, r5, r6, pc}

00006bfc <z_time_slice_reset>:
{
    6bfc:	b510      	push	{r4, lr}
	slice_reset(z_time_slice_size(thread));
    6bfe:	f7fb ffdb 	bl	2bb8 <z_time_slice_size>
    6c02:	f7fc f815 	bl	2c30 <slice_reset>
}
    6c06:	bd10      	pop	{r4, pc}

00006c08 <reprogram_next>:
{
    6c08:	b510      	push	{r4, lr}
		sys_clock_set_timeout(next_timeout(ticks_elapsed), false);
    6c0a:	f7fc f92f 	bl	2e6c <next_timeout>
    6c0e:	2100      	movs	r1, #0
    6c10:	f7ff fe75 	bl	68fe <sys_clock_set_timeout>
}
    6c14:	bd10      	pop	{r4, pc}

00006c16 <sched_cpu_update_usage>:
{
    6c16:	b570      	push	{r4, r5, r6, lr}
    6c18:	000e      	movs	r6, r1
	if (!cpu->usage->track_usage) {
    6c1a:	6983      	ldr	r3, [r0, #24]
    6c1c:	7a1a      	ldrb	r2, [r3, #8]
    6c1e:	2a00      	cmp	r2, #0
    6c20:	d00b      	beq.n	6c3a <sched_cpu_update_usage+0x24>
	if (cpu->current != cpu->idle_thread) {
    6c22:	6881      	ldr	r1, [r0, #8]
    6c24:	68c2      	ldr	r2, [r0, #12]
    6c26:	4291      	cmp	r1, r2
    6c28:	d007      	beq.n	6c3a <sched_cpu_update_usage+0x24>
		cpu->usage->total += cycles;
    6c2a:	681c      	ldr	r4, [r3, #0]
    6c2c:	685d      	ldr	r5, [r3, #4]
    6c2e:	0030      	movs	r0, r6
    6c30:	2100      	movs	r1, #0
    6c32:	1900      	adds	r0, r0, r4
    6c34:	4169      	adcs	r1, r5
    6c36:	6018      	str	r0, [r3, #0]
    6c38:	6059      	str	r1, [r3, #4]
}
    6c3a:	bd70      	pop	{r4, r5, r6, pc}

00006c3c <sched_thread_update_usage>:
{
    6c3c:	b530      	push	{r4, r5, lr}
	thread->base.usage.total += cycles;
    6c3e:	6b04      	ldr	r4, [r0, #48]	@ 0x30
    6c40:	6b45      	ldr	r5, [r0, #52]	@ 0x34
    6c42:	000a      	movs	r2, r1
    6c44:	2300      	movs	r3, #0
    6c46:	1912      	adds	r2, r2, r4
    6c48:	416b      	adcs	r3, r5
    6c4a:	6302      	str	r2, [r0, #48]	@ 0x30
    6c4c:	6343      	str	r3, [r0, #52]	@ 0x34
}
    6c4e:	bd30      	pop	{r4, r5, pc}

00006c50 <usage_now>:
{
    6c50:	b510      	push	{r4, lr}
	return sys_clock_cycle_get_32();
    6c52:	f7ff fe58 	bl	6906 <sys_clock_cycle_get_32>
	return (now == 0) ? 1 : now;
    6c56:	2800      	cmp	r0, #0
    6c58:	d100      	bne.n	6c5c <usage_now+0xc>
    6c5a:	3001      	adds	r0, #1
}
    6c5c:	bd10      	pop	{r4, pc}
	...
