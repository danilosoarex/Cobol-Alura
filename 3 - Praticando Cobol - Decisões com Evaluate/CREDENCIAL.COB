      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. CREDENCIAL.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NIVEL                                PIC X(01).
       01 SETOR                                PIC X(01).
       01 CREDENCIAL                           PIC X(02).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
           DISPLAY 'NIVEL:  '
            ACCEPT NIVEL
           DISPLAY 'SETOR:  '
            ACCEPT SETOR

           STRING NIVEL 
                  SETOR 
             INTO CREDENCIAL 
           END-STRING.

           EVALUATE CREDENCIAL
               WHEN 'AX'
                    DISPLAY "ACESSO COMPLETO"
               WHEN 'BY'
                    DISPLAY "ACESSO PARCIAL"
               WHEN 'CZ'
                    DISPLAY "ACESSO RESTRITO"
               WHEN OTHER
                    DISPLAY "ACESSO NEGADO"
           END-EVALUATE.
           STOP RUN.
       END PROGRAM CREDENCIAL.
