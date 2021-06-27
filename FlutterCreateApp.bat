@ECHO OFF

TITLE FLUTTER DEVELOPER TOOLS BY MIGUELHP

color 2

ECHO ===== FLUTTER DEVELOPER TOOLS BY MIGUELHP ======


ECHO.
ECHO =========================================
ECHO [1]GERAR PROJETO                        
ECHO [2]VERIFICACAO DE COMPONENTES PADRAO      
ECHO [3]VERIFICACAO DE COMPONENTES DETALHADA 
ECHO [4] SAIR                                
ECHO =========================================

SET /P $TYPE=OPCAO DESEJADA:


IF %$TYPE% EQU 1 GOTO NEW
IF %$TYPE% EQU 2 GOTO PAD
if %$TYPE% EQU 3 goto DET
if %$TYPE% EQU 4 goto CLOSE
if %TYPE%  NEQ 1 OR %TYPE%  NEQ 2 OR %TYPE%  NEQ 3 OR %TYPE%  NEQ 4  GOTO CLOSE




:NEW

CLS

SET /P $OPTION=Deseja Criar Um Novo Projeto[s/n]:

IF %$OPTION% EQU S OR %$OPTION% EQU s 
(
	GOTO GEN
) 
ELSE
( 
	GOTO CLOSE
)


:GEN

CLS

SET /P $pasta=Informe Onde Vai Salvar Projeto:

CLS

SET /P $PATHPROJECT=Informe o 'br.com.example':

CLS

SET /P $PROJECTNAME=Informe O Nome do Projeto:

CLS

cd %$pasta%

cmd/c flutter create --org %$PATHPROJECT% %$PROJECTNAME% 

cmd/c code %$pasta%/%$PROJECTNAME% 

goto CLOSE


:PAD
CLS
ECHO VERIFICANDO.........
ECHO.
cmd/k flutter doctor

ECHO PRONTO!

@PAUSE

Exit


:DET
CLS
ECHO VERIFICANDO.........
ECHO.
cmd/k flutter doctor -v


ECHO PRONTO!

@PAUSE

Exit



:CLOSE

exit



