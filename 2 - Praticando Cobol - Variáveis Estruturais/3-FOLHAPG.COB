      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. 3-FOLHAPG.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-NOME                   PIC X(20).
       01 WS-DEPTM                  PIC X(03).
       01 WS-SALARIO                PIC Z(09).99.
       01 WS-IMPOSTO                PIC Z(09).99.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           MOVE "DANILO" TO WS-NOME
           MOVE "RH1"    TO WS-DEPTM
           MOVE 3200.50  TO WS-SALARIO
           MOVE 480.08   TO WS-IMPOSTO

           DISPLAY "FUNCIONÁRIO:  "    WS-NOME 
           DISPLAY "DEPARTAMENTO: "    WS-DEPTM
           DISPLAY "SALÁRIO: "         WS-SALARIO
           DISPLAY "IMPOSTO: "         WS-IMPOSTO

           STOP RUN.
       END PROGRAM 3-FOLHAPG.
