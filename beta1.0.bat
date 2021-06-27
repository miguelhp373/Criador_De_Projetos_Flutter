@ECHO OFF
TITLE FLUTTER DEVELOPER TOOLS BY MIGUELHP

color 2

ECHO ===== FLUTTER DEVELOPER TOOLS BY MIGUELHP ======


ECHO.

ECHO =======================================
ECHO [1]GERAR PROJETO
ECHO [2]VERIFICACAO DE COMPONENTES PADRAO
ECHO [3]VERIFICACAO DE COMPONENTES DETALHADA
ECHO [4] SAIR
ECHO ========================================

SET /P $TYPE=OPCAO DESEJADA:


IF %$TYPE% EQU 1 GOTO NEW
IF %$TYPE% EQU 2 GOTO PAD
if %$TYPE% EQU 3 goto DET
if %$TYPE% EQU 4 goto CLOSE
if %TYPE%  NEQ 1 || %TYPE%  NEQ 2 || %TYPE%  NEQ 3 || %TYPE%  NEQ 4




:NEW

CLS

SET /P $OPTION=Deseja Criar Um Novo Projeto[s/n]:

CLS

SET /P $pasta=Informe Onde Vai Salvar Projeto:

CLS

SET /P $PATHPROJECT=Informe o 'br.com.example':

CLS

SET /P $PROJECTNAME=Informe O Nome do Projeto:

CLS

cd %$pasta%

flutter create --org %$PATHPROJECT% %$PROJECTNAME%

ECHO PRONTO!

@PAUSE



:PAD
CLS
ECHO VERIFICANDO.........
ECHO.
cmd/k flutter doctor

ECHO PRONTO!

@PAUSE


:DET
CLS
ECHO VERIFICANDO.........
ECHO.
cmd/k flutter doctor -v


ECHO PRONTO!

@PAUSE



:CLOSE

exit



