      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PEDIDO.
      *-----------------------------------------------------------------
       ENVIRONMENT DIVISION.
      *-----------------------------------------------------------------
       CONFIGURATION  SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
      *-----------------------------------------------------------------
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 MASSA                            PIC X(12).
       01 MASSA-M                          PIC X(12).  

       01 TAMANHO                          PIC X(01).
       01 TAMANHO-M                        PIC X(01).
      *-----------------------------------------------------------------
       PROCEDURE DIVISION.
       
       PERFORM PEDIDOS

       PERFORM PROCESSA-PEDIDO
       
       STOP RUN.
             
       PEDIDOS         SECTION.
           DISPLAY 'Digite o tipo de massa: '.
           DISPLAY '(TRADICIONAL, INTEGRAL ou FININHA'.
            ACCEPT MASSA.
           MOVE FUNCTION UPPER-CASE(MASSA) TO MASSA-M.

           DISPLAY "Digite o tamanho (P, M ou G): "
            ACCEPT TAMANHO.
           MOVE FUNCTION UPPER-CASE(TAMANHO) TO TAMANHO-M.
       
       PROCESSA-PEDIDO SECTION.

           EVALUATE MASSA-M
               WHEN "TRADICIONAL"
               WHEN "INTEGRAL"
               WHEN "FININHA"
                    CONTINUE
               WHEN OTHER
                    PERFORM ERRO-PEDIDO
           END-EVALUATE.

           EVALUATE TAMANHO-M
               WHEN "P"
               WHEN "M"
               WHEN "G"
                    CONTINUE
               WHEN OTHER
                    PERFORM ERRO-PEDIDO
           END-EVALUATE.

           DISPLAY FUNCTION TRIM(MASSA-M TRAILING) '-' TAMANHO-M

           .

       ERRO-PEDIDO SECTION.
           DISPLAY "Pedido invalido."
           STOP RUN.
