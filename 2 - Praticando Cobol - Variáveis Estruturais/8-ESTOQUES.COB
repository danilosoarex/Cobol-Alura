      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 8-ESTOQUES.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 DEPOSITO1.
          05 PRODUTO-A             PIC 9(02).
          05 PRODUTO-B             PIC 9(02).
          05 PRODUTO-C             PIC 9(02).

       01 DEPOSITO2.
          05 PRODUTO-A             PIC 9(02).
          05 PRODUTO-B             PIC 9(02).
          05 PRODUTO-C             PIC 9(02).  

       01 TOTAL-A                  PIC 9(03).
       01 TOTAL-B                  PIC 9(03).
       01 TOTAL-C                  PIC 9(03).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           MOVE 10 TO PRODUTO-A OF DEPOSITO1
           MOVE 15 TO PRODUTO-B OF DEPOSITO1
           MOVE 20 TO PRODUTO-C OF DEPOSITO1
       
           MOVE 5  TO PRODUTO-A OF DEPOSITO2
           MOVE 10 TO PRODUTO-B OF DEPOSITO2
           MOVE 5  TO PRODUTO-C OF DEPOSITO2

           COMPUTE TOTAL-A = PRODUTO-A OF DEPOSITO1 + 
                             PRODUTO-A OF DEPOSITO2

           DISPLAY "TOTAL A: " TOTAL-A

           COMPUTE TOTAL-B = PRODUTO-B OF DEPOSITO1 + 
                             PRODUTO-B OF DEPOSITO2

           DISPLAY "TOTAL B: " TOTAL-B

           COMPUTE TOTAL-C = PRODUTO-C OF DEPOSITO1 + 
                             PRODUTO-C OF DEPOSITO2

           DISPLAY "TOTAL C: " TOTAL-C

           STOP RUN.
       END PROGRAM 8-ESTOQUES.