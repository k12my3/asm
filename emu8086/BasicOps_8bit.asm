



            ; Basic Arithmetic Operations - 8 bit
            
            ORG 00H
            
            MOV AL, 05H
            MOV BL, 02H
            ADD AL, BL
            
            MOV [5000H], AL
            MOV AL, 05H
            MOV BL, 02H
            SUB AL, BL
            
            MOV [5001H], AL
            MOV AL, 05H
            MOV BL, 02H
            MUL BL
            
            MOV [5002H], AX
            MOV AL, 05H
            MOV BL, 02H
            DIV BL
            
            MOV [5004H], AX
            HLT