ORG 100h

.DATA
NUM_1 DW 0F213H
NUM_2 DW 41A8H

.CODE

MOV BX,3527
MOV CX,2968
AND BX,CX       ;final result -> BX

MOV AX, 0700h
MOV DS, AX
MOV CX, 2968
OR CX, [102h]   ;final result -> CX

MOV AH,68H
XOR AH,9CH      ;final result -> AX

MOV AX, 0025H  ;Sets AX to 25H  
MOV BX, 00A5H  ;Sets BX to A5H
CMP AX, BX     ;result -> flags CF, SF

MOV BL,6DH
SHR BL,1       ;shift 6D by 1 ->36

MOV CL, 1
MOV BL,-6DH
SAR BL,CL

MOV AX, NUM_1     ;Load numerator in AX  
DIV NUM_2         ;Q - AX, R - DX

MOV AL, 35
MOV BH, 15
MUL BH          ;prod - AX   

MOV AL, 10H     ;Sets AL to 10H
MOV BH, 75H     ;Sets BX to 23H
ADD AL, BH      ;Store the sum of AL and BX in AL
MOV CX, 0F21Ah  ;Set CX to 0F21Ah
ADD [0154H], CX ;Store sum of CX data and data at memory address DS:0154 into the same memory address
MOV AH, 9FH     ;Sets AH to 9FH
ADD AH,BH       ;Store sum of AH and BH into BH

MOV AX, 2506    ;Sets AX to 2506
MOV BX, 1647    ;Sets BX to 1647
SUB AX, BX      ;AX=AX-BX  
SUB [SI], AX    ;DS:SI=DS:SI-AX
RET             ;Stop the program