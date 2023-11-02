ORG 0400H
        MOV R0, #5
        MOV A, R0
        ACALL FACT

FACT:   DEC R0
        CJNE R0, #01, REL
        SJMP STOP

REL:    MOV B, R0
        MUL AB
        ACALL FACT
        RET

STOP:   
END