    @R2         // initialize to store product
    M=0         // RAM[2] = 0

    @i          // declare index variable
    M=0         // i = 0

(LOOP)
    @R1
    D=M
        
    @i
    D=M-D

    @END
    D;JEQ
        
    @R0         // set data register to value in RAM[0]
    D=M        
    
    @R2         // perform first loop iteration
    M=M+D       // RAM[2] = RAM[2] + RAM[0]

    @i
    M=M+1

    @LOOP
    0;JMP      

(END)

    @END
    0;JMP
