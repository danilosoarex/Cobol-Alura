       IDENTIFICATION DIVISION.
       PROGRAM-ID. RELAT.

       ENVIRONMENT    DIVISION.
       INPUT-OUTPUT   SECTION.
       FILE-CONTROL.
           SELECT ARQCRM ASSIGN TO "..\DADOS\ARQCRM.DAT"
           ORGANIZATION  IS  INDEXED 
           ACCESS MODE IS SEQUENTIAL
           FILE STATUS IS ARQCRM-FS
           RECORD KEY IS ARQCRM-CHAVE.

       DATA DIVISION.
       FILE SECTION.
       FD  ARQCRM.
       COPY  "#CRM". 

       WORKING-STORAGE     SECTION.
       COPY "#CRM-WRK2".
       01  ARQCRM-FS         PIC 9(02) VALUE ZEROS.

      *------------------- VARIAVEIS DE APOIO -------------------------* 
       01  WRK-SEGURATELA   PIC X(01) VALUE SPACES.
       01  WRK-TIPO-RELAT   PIC 9(01).
       01  WRK-LINHA        PIC 9(01) VALUE 1.
       01  WRK-TOTTIPO      PIC 9(03) VALUE 0.
       01  WRK-TOTLIDOS     PIC 9(03) VALUE 0.

       01 WRK-CABEC.
           05 FILLER                  PIC X(04) VALUE "ID".
           05 FILLER                  PIC X(01).
           05 FILLER                  PIC X(25) VALUE "NOME".
           05 FILLER                  PIC X(01).
           05 FILLER                  PIC X(30) VALUE "EMAIL".
           05 FILLER                  PIC X(01).
           05 FILLER                  PIC X(14) VALUE "TELEFONE".

       PROCEDURE DIVISION.
           PERFORM INICIAR.
           PERFORM PROCESSAR UNTIL ARQCRM-FS EQUAL 10.
           PERFORM FINALIZAR.
       
           GOBACK.

       INICIAR    SECTION.
           OPEN INPUT ARQCRM.
      *    DISPLAY "STATUS ABERTURA " ARQCRM-FS
           IF ARQCRM-FS NOT EQUAL ZEROS
              DISPLAY "ERRO NA ABERTURA "     LINE 01 COLUMN 01
              ACCEPT WRK-SEGURATELA           LINE 02 COLUMN 01
              GOBACK 
           END-IF.

           READ ARQCRM.
           DISPLAY "TIPO DE RELATORIO"     LINE WRK-LINHA COLUMN 01.
           DISPLAY "(0)Ativo / (1)Inativo" LINE WRK-LINHA + 1 COLUMN 01.
            ACCEPT WRK-TIPO-RELAT          LINE WRK-LINHA + 1 COLUMN 25.
           ADD 3 TO WRK-LINHA. 
           
           DISPLAY WRK-CABEC                 LINE WRK-LINHA COLUMN 01
           ADD 1 TO WRK-LINHA.



       PROCESSAR     SECTION.
      *--------- EXIBE REGISTRO DE ACORDO COM O TIPO SELECIONADO -------
           IF ARQCRM-STATUS EQUAL WRK-TIPO-RELAT
               MOVE ARQCRM-ID         TO WRK-ARQCRM-ID
               MOVE ARQCRM-NOME       TO WRK-ARQCRM-NOME
               MOVE ARQCRM-EMAIL      TO WRK-ARQCRM-EMAIL
               MOVE ARQCRM-TELEFONE   TO WRK-ARQCRM-TELEFONE
               DISPLAY WRK-ARQCRM-REGISTRO     LINE WRK-LINHA COLUMN 01
               ADD 1 TO WRK-LINHA
               ADD 1 TO WRK-TOTTIPO
           END-IF.
      *-----------------------------------------------------------------     

           READ ARQCRM.
           ADD 1 TO WRK-TOTLIDOS.

       FINALIZAR     SECTION.
           ADD 1 TO WRK-LINHA.
           IF WRK-TIPO-RELAT EQUAL 0
              DISPLAY "TOTAL DE ATIVOS     "   LINE WRK-LINHA COLUMN 01
           ELSE
              DISPLAY "TOTAL DE INATIVOS   " LINE WRK-LINHA COLUMN 01
           END-IF.   
           DISPLAY WRK-TOTTIPO                LINE WRK-LINHA COLUMN 25.
           ADD 1 TO WRK-LINHA
           DISPLAY "TOTAL DE REGISTROS "      LINE WRK-LINHA COLUMN 01.
           DISPLAY WRK-TOTLIDOS               LINE WRK-LINHA COLUMN 25.

           DISPLAY "VOLTANDO "                LINE 20 COLUMN 01.
           ACCEPT WRK-SEGURATELA              LINE 21 COLUMN 01.
           MOVE 1 TO WRK-LINHA.
           CLOSE ARQCRM.
