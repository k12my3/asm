
; 4/8/2021 : 8-bit : Find the largest and the smallest number in an array


            ORG 100H

            MOV SI, 2000H
            MOV BL, [SI]
            DEC BL
            MOV CL, BL
            MOV SI, 3000H
            
    LOOP2: MOV AL, [SI]
            CMP AL, [SI+1]
            JLE LOOP1              ;or JGE      for lowest on left
            XCHG AL, [SI+1]
            MOV [SI], AL
     
    LOOP1: INC SI
            LOOP LOOP2
            
            
            HLT




