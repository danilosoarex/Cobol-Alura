      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. VALIDA-CARACTERE.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 CARACTERE              PIC X(01).
       01 CODIGO-ASCII           PIC 9(03).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
           DISPLAY "Digite um caractere: "
           ACCEPT CARACTERE

           COMPUTE CODIGO-ASCII = FUNCTION ORD(CARACTERE)

           EVALUATE TRUE
               WHEN CODIGO-ASCII >= FUNCTION ORD('A') 
                    AND CODIGO-ASCII <= FUNCTION ORD('Z')
                   DISPLAY "Letra maiuscula"

               WHEN CODIGO-ASCII >= FUNCTION ORD('0') 
                    AND CODIGO-ASCII <= FUNCTION ORD('9')
                   DISPLAY "Numero"

               WHEN OTHER
                   DISPLAY "Outro simbolo"
           END-EVALUATE

           STOP RUN.
       
