      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 6-TRFCMP.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CLIENTE-ORIGEM.
          05 NOME                PIC X(20).
          05 IDADE               PIC 9(02).

       01 CLIENTE-DESTINO.
          05 NOME                PIC X(20).
          05 IDADE               PIC 9(02).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           MOVE "DANILO" TO NOME OF CLIENTE-ORIGEM.
           MOVE 28       TO IDADE OF CLIENTE-ORIGEM. 

           MOVE CORRESPONDING CLIENTE-ORIGEM TO CLIENTE-DESTINO.

           DISPLAY "DESTINO - Nome: " NOME OF CLIENTE-DESTINO.
           DISPLAY "DESTINO - Idade: " IDADE OF CLIENTE-DESTINO.

           STOP RUN.
       END PROGRAM 6-TRFCMP.