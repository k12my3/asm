


                
            ;Basic Arithmetic Operations on 16-bit data
            
            
            
            
            ORG 00H
            
            MOV AX, 1234H
            MOV BX, 5678H
            ADD AX, BX
            MOV [5000H], AX
            
            MOV AX, 6375H
            MOV BX, 6005H
            SUB AX, BX
            MOV [5002H], AX
            
            MOV AX, 0502H
            MUL BX           ;BX -> Previously stored value (6005H)
            MOV [5004H], AX   ;remainder
            MOV [5008H], DX   ;quotient
            
            MOV AX, 0009H
            MOV DX, 0000H
            MOV BX, 0002H
            DIV BX
            
            HLT                   