      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. NOTA.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NOTA                           PIC 9(02).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
           DISPLAY 'Digite a nota (0 a 10):  '
            ACCEPT NOTA

           EVALUATE NOTA
               WHEN > 0 AND <= 3 
                    DISPLAY "INSATISFEITO"
               WHEN >= 4 AND <= 6
                    DISPLAY "NEUTRO"
               WHEN >= 7 AND <= 8
                    DISPLAY "SATISFEITO"
               WHEN >= 9 AND <= 10
                    DISPLAY "MUITO SATISFEITO"
               WHEN OTHER
                    DISPLAY "Nota inválida."
           END-EVALUATE.
           STOP RUN.
       END PROGRAM NOTA.
