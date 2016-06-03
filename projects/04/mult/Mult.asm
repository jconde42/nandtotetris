// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


(Start)
        @R0
        D=M
        @x
        M=D // x = RAM[0]


        @R1
        D=M
        @y
        M=D // y = RAM[1]


        @i
        M=0 // i = 0

        @R2
        M=0 // init RAM[2]

(LOOP)
        @y
        D=M
        @i
        D=D-M

        @END
        D;JEQ   // if i == y goto END

        @i
        M=M+1 // inc i

        @x
        D=M

        @R2
        M=M+D // RAM[2] = RAM[2] + RAM[0]

        @LOOP
        0;JMP

(END)
        @END
        0;JMP
