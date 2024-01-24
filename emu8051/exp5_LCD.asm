

	; Display text - LCD

	ORG 0H

      MOV A,#38H
      ACALL CMD
      ACALL DELAY
      MOV A,#0EH
      ACALL CMD
      ACALL DELAY
 AGAIN:     MOV A,#01H
      ACALL CMD
      ACALL DELAY
      MOV A,#06H
      ACALL CMD
      ACALL DELAY
      MOV A,#82H
      ACALL CMD
      ACALL DELAY
      MOV A,#'H'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'I'
      ACALL DUMP
      ACALL DELAY
      MOV A,#' '
      ACALL DUMP
      ACALL DELAY
      MOV A,#'D'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'E'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'A'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'R'
      ACALL DUMP
      ACALL DELAY
      MOV A,#' '
      ACALL DUMP
      ACALL DELAY
      MOV A,#'C'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'S'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'E'
      ACALL DUMP
      ACALL DELAY
      MOV A,#' '
      ACALL DUMP
      ACALL DELAY
      MOV A,#0C4H
      ACALL CMD
      ACALL DELAY
      MOV A,#'I'
      ACALL DUMP
      ACALL DELAY
      MOV A,#' '
      ACALL DUMP
      ACALL DELAY
      MOV A,#'A'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'M'
      ACALL DUMP
      ACALL DELAY
      MOV A,#' '
      ACALL DUMP
      ACALL DELAY
      MOV A,#'L'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'C'
      ACALL DUMP
      ACALL DELAY
      MOV A,#'D'
      ACALL DUMP
      ACALL DELAY
      LJMP AGAIN
  
  CMD:  MOV P1,A
      CLR P2.0
      CLR P2.1
      SETB P2.2
      ACALL DELAY
      CLR P2.2
      RET
      
  DUMP:  MOV P1,A
      SETB P2.0
      CLR P2.1
      SETB P2.2
      ACALL DELAY
      CLR P2.2
      RET
      
  DELAY:  MOV R3,#5
  LOOP2:  MOV R4,#5
  LOOP1:  DJNZ R4,LOOP1
      DJNZ R3,LOOP2
      RET
  END