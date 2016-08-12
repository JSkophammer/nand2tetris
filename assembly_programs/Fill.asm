// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.
// n = 256 * 32
// (for i in 0..<n) SCREEN + i = -1
// while true:
//     if KBD != 0:
//         screen_black()
//
//
//
//        
// Put your code here.

    @8192
    D=A

    @n        
    M=D

(LOOP)
    @KBD
    D=M    

    @BLACK
    D;JGT

    @WHITE
    D;JEQ

    @LOOP
    0;JMP
    
(BLACK)
   // @SCREEN
   // D=M

   // @LOOP
   // D;JEQ    

    @i
    M=0

 (LOOPB)
    @i
    D=M

    @SCREEN
    A=D+A
    M=-1

    @i
    M=M+1
    D=M

    @n
    D=M-D

    @LOOP
    D;JEQ

    @LOOPB
    0;JMP

(WHITE)
    @SCREEN
    D=M

    @LOOP
    D;JEQ    

    @i
    M=0
    
  (LOOPW)
    @i
    D=M

    @SCREEN
    A=D+A
    M=0

    @i
    M=M+1
    D=M

    @n
    D=M-D

    @LOOP
    D;JEQ

    @LOOPW
    0;JMP   
