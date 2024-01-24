

    ;14/9/2021 : To develop an ALP to accept the external input and toggle LED

    ORG 0000H
    LJMP MAIN

    ORG 0003H
    CPL P1.0
    ACALL DELAY
    RETI

    ORG 0013H
    CPL P1.1
    ACALL DELAY
    RETI

    MAIN:
    MOV IE, #85H

    AGAIN:

    MOV P2, #00H

    MOV A, #01H
    MOV P2, A
    ACALL DELAY

    MOV A, #03H
    MOV P2, A
    ACALL DELAY

    MOV A, #07H
    MOV P2, A
    ACALL DELAY

    MOV A, #0FH
    MOV P2, A
    ACALL DELAY
    SJMP AGAIN

    DELAY:  MOV R3,#5

    LOOP2:  MOV R4,#5

    LOOP1:
    DJNZ R4,LOOP1
    DJNZ R3,LOOP2
    RET

    END