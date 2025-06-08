      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 5-SINALNUM.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-SALDO             PIC +Z(06).99.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           MOVE -1450.75 TO WS-SALDO

           DISPLAY "SALDO ATUAL: " WS-SALDO

           STOP RUN.
       END PROGRAM 5-SINALNUM.
