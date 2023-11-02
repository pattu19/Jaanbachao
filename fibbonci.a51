ORG 0500H
    MOV R0, #30H    ; Initialize R0 to address 30H
    MOV @R0, #00H   ; Set the value at address 30H to 00H
    MOV R1, #31H    ; Initialize R1 to address 31H
    MOV @R1, #01H   ; Set the value at address 31H to 01H
    MOV R2, #09H    ; Set loop count to 9
    MOV A, #01H     ; Initialize A to 01H

BACK:   ADD A, @R0   ; Add value at address in R0 to A
        INC R0        ; Increment R0
        INC R1        ; Increment R1
        MOV @R1, A    ; Store the result in address pointed to by R1
        DJNZ R2, BACK ; Repeat loop until R2 becomes zero

HERE:   SJMP HERE     ; Infinite loop (halt)

END                ; End of the program