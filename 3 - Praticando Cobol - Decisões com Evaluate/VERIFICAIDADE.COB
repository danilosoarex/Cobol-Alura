      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. VERIFICAIDADE.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-IDADE                           PIC 9(02).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY 'Digite sua idade: '      LINE 01 COLUMN 01 
            ACCEPT WRK-IDADE                 LINE 01 COLUMN 20 

           EVALUATE WRK-IDADE
               WHEN < 12 
                    DISPLAY "Criança"        LINE 02 COLUMN 01
               WHEN >= 12 AND < 18
                    DISPLAY "Adolescente"    LINE 02 COLUMN 01 
               WHEN >= 18 AND < 60
                    DISPLAY "Adulto"         LINE 02 COLUMN 01
               WHEN >= 60
                    DISPLAY "Idoso"          LINE 02 COLUMN 01
               WHEN OTHER
                    DISPLAY "Idade não informada." LINE 02 COLUMN 01
           END-EVALUATE.
           STOP RUN.
       END PROGRAM VERIFICAIDADE.
