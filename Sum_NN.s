ORG 0000h
MOV A, #01h
MOV R0, #30H
MOV @R0,A;
MOV B, #02h
MOV R1,#09h
loop:add A,B
inc B
INC R0;
MOV @R0,A;
djnz R1, loop
END