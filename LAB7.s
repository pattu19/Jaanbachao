ORG 0000H
	MOV R3,#05H
	MOV R0,#01H
	MOV R1,#02H
	
LABEL: MOV A,R0
	   MOV B,R1
	   INC R1
	   MUL AB
	   MOV R0,A
	   DJNZ R3,LABEL
	MOV R0,#30H
	MOV @R0,B
	INC R0
	MOV @R0,A
END  