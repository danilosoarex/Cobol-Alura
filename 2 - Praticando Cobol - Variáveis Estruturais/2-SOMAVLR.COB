      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 2-SOMAVLR.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-LOJA1                  PIC 9(04)V99.
       01 WS-LOJA2                  PIC 9(04)V99.
       01 WS-RES                    PIC ZZZZZ.99.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE 1023.45 TO WS-LOJA1.
           MOVE 807.55  TO WS-LOJA2.
           COMPUTE WS-RES = WS-LOJA1 + WS-LOJA2.
           DISPLAY 'TOTAL: ' WS-RES.
           STOP RUN.
       END PROGRAM 2-SOMAVLR.
