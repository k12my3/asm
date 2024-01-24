
; 4/8/2021 : 16-bit : Largest no. finder (array)


            ORG 0100H
            
            MOV [2000H],0005H  ; count 
            MOV [3001H],0009H
            MOV [3003H],0008H 
            MOV [3005H],0007H
            MOV [3007H],0006H
            MOV [3009H],0005H       
             

            MOV SI, 2000H
            MOV BX, [SI]
            DEC BX
            
        L3: MOV CX, BX
            MOV SI, 3000H
            
        L2: MOV AX, [SI]
            CMP AX, [SI+2]
            JLE LOOP L1       ; JLE/JGE LOOP 1
            XCHG AX, [SI+2]
            MOV [SI], AX
     
        L1: ADD SI, 02H
            LOOP L2
            DEC BX
            JNZ LOOP L3
            
            
            HLT ;RET




