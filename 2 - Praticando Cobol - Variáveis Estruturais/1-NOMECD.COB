      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 1-NOMECD.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOME                  PIC X(30).
       01 WS-CODE                  PIC 9(04).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 'DANILO SOARES' TO WS-NOME
           MOVE 1023            TO WS-CODE
           DISPLAY 'NOME: ' WS-NOME
           DISPLAY 'CODIGO: ' WS-CODE
           STOP RUN.
       END PROGRAM 1-NOMECD.
