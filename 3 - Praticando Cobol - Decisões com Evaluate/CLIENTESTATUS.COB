      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. CLIENTESTATUS.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 IDADE                           PIC 9(02) VALUE ZEROS.
       01 TEMPOCAD                        PIC 9(02) VALUE ZEROS.
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.

       PERFORM ENTRADA

       PERFORM PROCESSA

           STOP RUN.

       ENTRADA     SECTION.
           DISPLAY 'Digite a idade do cliente: '.
            ACCEPT IDADE.

           DISPLAY 'Digite o tempo de cadastro (em anos): '.
            ACCEPT TEMPOCAD.
       
       PROCESSA    SECTION.
           
           EVALUATE TRUE
               WHEN IDADE = 0 AND TEMPOCAD = 0
                    DISPLAY "Erro na consulta"
               WHEN IDADE < 25 AND TEMPOCAD <= 2
                    DISPLAY "Cliente novo"
               WHEN IDADE < 25 AND TEMPOCAD > 2
                    DISPLAY "Cliente em crescimento"
               WHEN IDADE >= 25 AND TEMPOCAD <= 2
                    DISPLAY "Cliente recente"
               WHEN IDADE >= 25 AND TEMPOCAD > 2
                    DISPLAY "Cliente fidelizado"
           END-EVALUATE.
