      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. CODPRODUTO.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CODIGO                           PIC 9(003).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
           DISPLAY 'Digite o codigo do produto (100 a 999):  '
            ACCEPT CODIGO

           EVALUATE CODIGO
               WHEN > 100 AND < 200
                    DISPLAY "Categoria: Alimentacao"
               WHEN >= 200 AND <400
                    DISPLAY "Categoria: Higiene"
               WHEN >= 400 AND < 600
                    DISPLAY "Categoria: Limpeza"
               WHEN >= 600 AND < 800
                    DISPLAY "Categoria: Bebidas"
               WHEN >= 800 AND < 1000
                    DISPLAY "Categoria: Eletronicos"
               WHEN OTHER
                    DISPLAY "Codigo invalido."
           END-EVALUATE.
           STOP RUN.
