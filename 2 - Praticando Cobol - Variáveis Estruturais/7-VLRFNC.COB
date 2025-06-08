      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 7-VLRFNC.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 VALOR-FATURA         PIC 9(5)V99.
       01 VALOR-FATURA-EDITADO PIC Z(05).99.

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           
           MOVE 00235.40 TO VALOR-FATURA.
           MOVE VALOR-FATURA TO VALOR-FATURA-EDITADO.

           DISPLAY "TOTAL DA FATURA: " VALOR-FATURA-EDITADO.

           STOP RUN.
       END PROGRAM 7-VLRFNC.