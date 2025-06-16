      *----------------------------------------------------------------*
       IDENTIFICATION DIVISION.
      *-----------------------------------------------------------------
       PROGRAM-ID. PEDIDO-IF.
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
          88 MASSA-TRADICIONAL             VALUE "TRADICIONAL". 
          88 MASSA-INTEGRAL                VALUE "INTEGRAL".
          88 MASSA-FININHA                 VALUE "FININHA".    
       

       01 TAMANHO                          PIC X(01) .
       01 TAMANHO-M                        PIC X(01).
          88 PEQUENA                       VALUE "P".
          88 MEDIA                         VALUE "M".
          88 GRANDE                        VALUE "G".
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

           IF (MASSA-TRADICIONAL OR MASSA-INTEGRAL OR MASSA-FININHA)
           AND (PEQUENA OR MEDIA OR GRANDE)
              DISPLAY FUNCTION TRIM(MASSA-M TRAILING) '-' TAMANHO-M
           ELSE
              DISPLAY "Pedido invalido"
           END-IF.
