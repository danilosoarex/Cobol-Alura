      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 10-CODEBAR.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 PRODUTO.
          05 CODIGO           PIC 9(06).
          05 FILLER           VALUE "|".
          05 LOTE             PIC 9(04).
          05 FILLER           VALUE "|".
          05 VALIDADE         PIC 9(08).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE 123456        TO CODIGO.
           MOVE 7890          TO LOTE.
           MOVE 20280419      TO VALIDADE.

           DISPLAY PRODUTO.

           STOP RUN.
       END PROGRAM 10-CODEBAR.