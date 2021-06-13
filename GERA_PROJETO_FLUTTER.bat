@ECHO OFF
TITLE CRIADOR DE PROJETOS FLUTTER

color 2

ECHO =================================
ECHO == CRIADOR DE PROJETOS FLUTTER ==
ECHO =================================

ECHO.

SET /P $OPTION=Deseja Criar Um Novo Projeto[s/n]:



if %$OPTION% equ s goto new
if %$OPTION% neq s goto close




:new

CLS

SET /P $pasta=Informe Onde Vai Salvar Projeto:

CLS

SET /P $PATHPROJECT=Informe o 'br.com.example':

CLS

SET /P $PROJECTNAME=Informe O Nome do Projeto:

CLS

cd %$pasta%

flutter create --org %$PATHPROJECT% %$PROJECTNAME%


:close

exit



