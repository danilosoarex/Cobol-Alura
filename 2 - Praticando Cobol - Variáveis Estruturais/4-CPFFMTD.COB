      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 4-CPFFMTD.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CPF-FMTD.
          05 PARTE1      PIC 9(03).
          05 FILLLER     VALUE '.'.
          05 PARTE2      PIC 9(03).
          05 FILLLER     VALUE '.'.
          05 PARTE3      PIC 9(03).
          05 FILLLER     VALUE '-'.
          05 PARTE4      PIC 9(02).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 123 TO PARTE1
           MOVE 456 TO PARTE2
           MOVE 789 TO PARTE3
           MOVE 01  TO PARTE4

           DISPLAY "CPF FORMATADO: " CPF-FMTD

           STOP RUN.
       END PROGRAM 4-CPFFMTD.
