LBB2_27:                                ##   in Loop: Header=BB2_23 Depth=1
	movapd	144(%rsi), %xmm2
	movapd	160(%rsi), %xmm3
	movsd	128(%rsi), %xmm4        ## xmm4 = mem[0],zero
	subpd	48(%rsp), %xmm3         ## 16-byte Folded Reload
	subpd	64(%rsp), %xmm2         ## 16-byte Folded Reload
	movapd	%xmm2, %xmm5
	mulsd	%xmm5, %xmm5
	movapd	%xmm2, %xmm6
	shufpd	$1, %xmm6, %xmm6        ## xmm6 = xmm6[1,0]
	mulsd	%xmm6, %xmm6
	movapd	%xmm3, %xmm7
	mulsd	%xmm7, %xmm7
	addsd	%xmm5, %xmm7
	addsd	%xmm6, %xmm7
	xorps	%xmm5, %xmm5
	sqrtsd	%xmm7, %xmm5
	addsd	%xmm10, %xmm7
	divsd	%xmm7, %xmm4
	movddup	%xmm4, %xmm6            ## xmm6 = xmm4[0,0]
	movddup	%xmm5, %xmm7            ## xmm7 = xmm5[0,0]
	divsd	%xmm5, %xmm3
	divpd	%xmm7, %xmm2
	mulpd	%xmm6, %xmm2
	mulpd	%xmm4, %xmm3
LBB2_28:                                ##   in Loop: Header=BB2_23 Depth=1
	addpd	%xmm3, %xmm0
	addpd	%xmm2, %xmm1
