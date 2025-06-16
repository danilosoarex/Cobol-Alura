      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. CATEGORIA.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CATEGORIA                           PIC X(01).
       01 CAT-MAIUSCULA                       PIC X(01).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY 'Digite a letra da categoria:  ' 
            ACCEPT CATEGORIA

           MOVE FUNCTION UPPER-CASE(CATEGORIA) TO CAT-MAIUSCULA

           EVALUATE CAT-MAIUSCULA
               WHEN 'A' 
                    DISPLAY "Alimento"
               WHEN 'V'
                    DISPLAY "Vestuario"
               WHEN 'E'
                    DISPLAY "Eletronico"
               WHEN 'M'
                    DISPLAY "Movel"
               WHEN OTHER
                    DISPLAY "Categoria desconhecida"
           END-EVALUATE.
           STOP RUN.
       END PROGRAM CATEGORIA.
