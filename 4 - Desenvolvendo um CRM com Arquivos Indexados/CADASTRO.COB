       IDENTIFICATION DIVISION.
       PROGRAM-ID. CADASTRO.

       ENVIRONMENT    DIVISION.
       INPUT-OUTPUT   SECTION.
       FILE-CONTROL.
           SELECT ARQCRM ASSIGN TO "..\DADOS\ARQCRM.DAT"
           ORGANIZATION  IS  INDEXED 
           ACCESS MODE IS RANDOM
           FILE STATUS IS ARQCRM-FS
           RECORD KEY IS ARQCRM-CHAVE.

       DATA DIVISION.
       FILE SECTION.
       FD  ARQCRM.
       COPY  "#CRM". 

       WORKING-STORAGE     SECTION.
       COPY "#CRM-WRK".

       01  ARQCRM-FS         PIC 9(02) VALUE ZEROS.

      *------------------- VARIAVEIS DE APOIO -------------------------* 
       01  WRK-SEGURATELA   PIC X(01) VALUE SPACES.

       PROCEDURE DIVISION.
           PERFORM INICIAR.
           PERFORM PROCESSAR.
           PERFORM FINALIZAR.
       
           GOBACK.

       INICIAR    SECTION.
           OPEN I-O ARQCRM.
      *    DISPLAY "STATUS ABERTURA " ARQCRM-FS
           IF ARQCRM-FS NOT EQUAL ZEROS
              DISPLAY "ERRO NA ABERTURA "  LINE 01 COLUMN 01
              ACCEPT WRK-SEGURATELA        LINE 02 COLUMN 01
              GOBACK 
           END-IF.

       PROCESSAR     SECTION.
           DISPLAY "CADASTRO "               LINE 01 COLUMN 01.
           DISPLAY "----------"              LINE 02 COLUMN 01.

           DISPLAY "ID DO CLIENTE  "         LINE 03 COLUMN 01.
              ACCEPT WRK-ARQCRM-ID           LINE 03 COLUMN 25.

           DISPLAY "NOME DO CLIENTE"         LINE 04 COLUMN 01.
              ACCEPT WRK-ARQCRM-NOME         LINE 04 COLUMN 25.

           DISPLAY "EMAIL DO CLIENTE"        LINE 05 COLUMN 01.
              ACCEPT WRK-ARQCRM-EMAIL        LINE 05 COLUMN 25.              

           DISPLAY "TELEFONE DO CLIENTE"     LINE 06 COLUMN 01.
              ACCEPT WRK-ARQCRM-TELEFONE     LINE 06 COLUMN 25.              
              
           MOVE WRK-ARQCRM-REGISTRO TO ARQCRM-REGISTRO

           WRITE ARQCRM-REGISTRO.

           EVALUATE ARQCRM-FS
               WHEN 00
                   DISPLAY "REGISTRO GRAVADO"     LINE 20 COLUMN 01
               WHEN 22
                   DISPLAY "REGISTRO JA EXISTE"   LINE 20 COLUMN 01
               WHEN OTHER
                   DISPLAY "ERRO "                LINE 20 COLUMN 01
                   DISPLAY ARQCRM-FS
           END-EVALUATE.

               ACCEPT WRK-SEGURATELA              LINE 21 COLUMN 01.

       FINALIZAR     SECTION.
           CLOSE ARQCRM.
