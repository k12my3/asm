



            ;Sum of no. of +ve and -ve no.s in an array  - LAB 2A
            
            
            
            
            ORG 100H
            
            
            .DATA
            
            NUM1 DB 85H, 0D2H, 50H, 32H, 0A6H, 79H, 98H, 0F7H
            LEN EQU 08H
            
            
            .CODE
            MOV AX, @DATA
            MOV DS, AX
            LEA SI, NUM1
            MOV BX, 0000H
            MOV CL, LEN
            AGAIN: MOV AL, [SI]
            RCL AL, 01
            JNC PLUS
            INC BL
            JMP NXT
            PLUS: INC BH
            NXT: INC SI
            
            DEC CL
            JNE AGAIN
            
            HLT
            