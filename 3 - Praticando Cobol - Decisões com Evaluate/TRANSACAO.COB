      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. TRANSACAO.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ORIGEM                       PIC X(01).
       01 VALOR                        PIC 9(06).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.

       PERFORM ENTRADA

       PERFORM PROCESSA

           STOP RUN.

       ENTRADA     SECTION.
           DISPLAY 'Digite a origem da transacao (I/E): '.
            ACCEPT ORIGEM.
            MOVE FUNCTION UPPER-CASE(ORIGEM) TO ORIGEM

           DISPLAY 'Digite o valor da transacao: '.
            ACCEPT VALOR.
       
       PROCESSA    SECTION.
           
           EVALUATE TRUE
               WHEN ORIGEM = 'I' AND VALOR <= 1000
                    DISPLAY "Status: Segura"
               WHEN ORIGEM = 'I' AND VALOR > 1000
                    DISPLAY "Status: Revisar valor elevado"
               WHEN ORIGEM = 'E' AND VALOR <= 500
                    DISPLAY "Status: Segura com atencao"
               WHEN ORIGEM = 'E' AND VALOR > 500
                    DISPLAY "Status: Alerta de Seguranca"
               WHEN OTHER
                    DISPLAY "Transacao invalida"
           END-EVALUATE.
