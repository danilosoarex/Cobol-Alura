      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 9-CADASTRO.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 CLIENTE.
          05 ENDERECO.
             10 RUA                PIC X(30).
             10 NUM                PIC 9(03).
             10 CEP                PIC 9(08).

      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           MOVE "AVENIDA CENTRAL" TO RUA OF ENDERECO OF CLIENTE.
           MOVE 145               TO NUM OF ENDERECO OF CLIENTE.
           MOVE 12345678          TO CEP OF ENDERECO OF CLIENTE.

           DISPLAY "RUA: "           RUA OF ENDERECO OF CLIENTE.
           DISPLAY "NUMERO: "        NUM OF ENDERECO OF CLIENTE.
           DISPLAY "CEP: "           CEP OF ENDERECO OF CLIENTE.

           STOP RUN.
       END PROGRAM 9-CADASTRO.