LBB2_25:                                ##   in Loop: Header=BB2_21 Depth=1
	vmovupd	160(%rsi), %ymm2
	vmovsd	144(%rsi), %xmm3        ## xmm3 = mem[0],zero
	vsubpd	(%rsp), %ymm2, %ymm2    ## 32-byte Folded Reload
	vpermilpd	$1, %xmm2, %xmm4 ## xmm4 = xmm2[1,0]
	vmulsd	%xmm4, %xmm4, %xmm4
	vfmadd231sd	%xmm2, %xmm2, %xmm4
	vextractf128	$1, %ymm2, %xmm5
	vfmadd231sd	%xmm5, %xmm5, %xmm4
	vaddsd	%xmm0, %xmm4, %xmm6
	vdivsd	%xmm6, %xmm3, %xmm3
	vbroadcastsd	%xmm3, %ymm3
	vsqrtsd	%xmm4, %xmm4, %xmm4
	vmovddup	%xmm4, %xmm6    ## xmm6 = xmm4[0,0]
	vdivpd	%xmm6, %xmm2, %xmm2
	vdivsd	%xmm4, %xmm5, %xmm4
	vinsertf128	$1, %xmm4, %ymm2, %ymm2
	vfmadd231pd	%ymm2, %ymm3, %ymm8
