ORG 00H 
  MOV TMOD, #60H
  MOV TH1, #00H
  SETB P3.5
  MOV DPTR, #CODES
  CLR A
  SETB TR1
BACK: MOV A, TL1
      MOVC A, @A+DPTR
      MOV P0, A
      CLR P2.5

AGAIN: MOV A, #38H
       ACALL COMMAND
       ACALL DELAY
       MOV A, #0EH
       ACALL COMMAND
       ACALL DELAY
       MOV A, #01H
       ACALL COMMAND
       ACALL DELAY
       MOV A, #06H
       ACALL COMMAND
       ACALL DELAY
       MOV A, #84H
       ACALL COMMAND
       ACALL DELAY
       MOV A, TL1
       ADD A, #48D
       ACALL NEXT
       ACALL DELAY

       JNB TF1, BACK
       CLR TR1
       CLR TF1 
       SJMP AGAIN
       
COMMAND: MOV P1, A
         CLR P2.0
         CLR P2.1
         SETB P2.2
         ACALL DELAY
	 CLR P2.2
         RET

NEXT: MOV P1, A
      SETB P2.0
      CLR P2.1
      SETB P2.2
      ACALL DELAY
      CLR P2.2
      RET

DELAY: MOV R3, #5H
HERE2: MOV R4, #5H
HERE: DJNZ R4, HERE
      DJNZ R3, HERE2
      RET

CODES: DB 0C0H, 0F9H, 0A4H, 0B0H, 99H, 92H, 0F8H, 80H, 90H, 0
END 
       
  