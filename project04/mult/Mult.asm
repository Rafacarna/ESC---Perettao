	@R1 // A = R1, M = R1
	D=M  //Ender do R0 Register = Y
	@R3  //A = R3 M = R3 
	M=D  //M = y  
	@R2 // A = R2 , M = R2
	M=0 // M = R2 = 0

	(LOOP)
	@R3 // A= R3,M=R3 R3=y
	D=M // D = R3 = y
	@END //A, M = END
	D;JLE //if D < 0, -> Y < 0 goto END
	@R3 // A = R3
	M = D-1 // D = y, M = r3 -> R3 = R3 - 1 -> Y = Y - 1
	@R0 // A = R0
	D = M // D = R0 -> D = x
	@R2
	M=D+M // R2 = X + R2
	@LOOP
	0;JMP
	(END)
	@END
	0;JMP
