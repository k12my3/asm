



            ; LAB 2B: No. of positive and negative numbers in an array - Alt Program
            
                        
            
            
            ORG 00H
            
            MOV [5000H], 85H
            MOV [5001H], 0D2H
            MOV [5002H], 50H
            MOV [5003H], 32H
            MOV [5004H], 0A6H
            MOV [5006H], 79H
            MOV [5006H], 98H
            MOV [5007H], 0F7H
            
            MOV SI, 5000H
            MOV CL, 08H
            MOV BL, 00H
            MOV BH, 00H
            
        L1: MOV AL, [S1]
            RCR AL, 01H
            