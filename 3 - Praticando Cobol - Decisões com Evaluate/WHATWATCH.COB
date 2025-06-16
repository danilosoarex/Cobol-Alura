      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. WHATWATCH.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 FAIXA                        PIC X(01).
       01 DIASEMANA                    PIC X(02).
       01 GENERO                       PIC X(01).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.

       PERFORM ENTRADA

       PERFORM PROCESSA

           STOP RUN.

       ENTRADA     SECTION.
           DISPLAY 'Digite a faixa horária'.
           DISPLAY 'M - MANHA'.
           DISPLAY 'T - TARDE'.
           DISPLAY 'N - NOITE'.
            ACCEPT FAIXA.

           DISPLAY 'Eh dia de semana'.
           DISPLAY 'S - SEMANA'.
           DISPLAY 'FS - FIM DE SEMANA'.
            ACCEPT DIASEMANA.

           DISPLAY 'QUAL SEU GENERO PREFEIRO?'
           DISPLAY 'N - NOTICIAS'
           DISPLAY 'E - ENTRETENIMENTO'
           DISPLAY 'F - FILMES'
            ACCEPT GENERO.
       
       PROCESSA    SECTION.
           
           EVALUATE TRUE
               WHEN FAIXA = 'N' AND DIASEMANA = 'S' AND GENERO = 'N'
                    DISPLAY "JORNAL"
               WHEN (FAIXA = 'T' AND DIASEMANA = 'FS' AND GENERO = 'E')
                 OR (FAIXA = 'N' AND DIASEMANA = 'S' AND GENERO = 'E')
                    DISPLAY "REALITY SHOW e NOVELA"
                    NEXT SENTENCE
               WHEN FAIXA = 'T' AND GENERO = 'F' 
                    DISPLAY "SESSÃO DA TARDE"
               WHEN FAIXA = 'M' AND DIASEMANA = 'FS' AND GENERO = 'E'
                    DISPLAY "DESENHO ANIMADO"
               WHEN OTHER
                    DISPLAY "PROGRAMACAO VARIADA"
           END-EVALUATE.        
