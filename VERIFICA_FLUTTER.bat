@ECHO OFF

ECHO ===================================
ECHO OPCOES PARA VERICACAO DO FLUTTER:
ECHO [1]PADRAO
ECHO [2]DETALHADA
ECHO ===================================

SET /P $TYPE=OPCAO DESEJADA:
CLS

IF %$TYPE% EQU 1 GOTO PD
IF %$TYPE% EQU 2 GOTO DT



:PD
ECHO VERIFICANDO.........
ECHO.
cmd/k flutter doctor
@ECHO OFF
GOTO BYE


:DT
ECHO VERIFICANDO.........
ECHO.
cmd/k flutter doctor -v
@ECHO OFF
GOTO BYE


:BYE

ECHO.
ECHO PRONTO!

@pause
