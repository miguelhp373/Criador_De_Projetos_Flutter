@ECHO OFF

TITLE FLUTTER DEVELOPER TOOLS BY MIGUELHP

color 2

ECHO ===== FLUTTER DEVELOPER TOOLS BY MIGUELHP ======


ECHO.
ECHO -----------------------------------------
ECHO [1]CREATE PROJECT FLUTTER                       
ECHO [2]VERIFICATION OF STANDARD COMPONENTS     
ECHO [3]DETAILED COMPONENT CHECK
ECHO [4]UPDATE FLUTTER
ECHO [5]REAL EMULATOR DEVICE
ECHO [6]EXIT                              
ECHO -----------------------------------------
ECHO.

SET /P $TYPE=OPTION SELECTED:


IF 	%$TYPE%	EQU 1 	GOTO NEW
IF 	%$TYPE% EQU 2 	GOTO PAD
if	%$TYPE% EQU 3 	GOTO DET
if	%$TYPE% EQU 4 	GOTO UPD
if	%$TYPE% EQU 5 	GOTO DEV
					GOTO CLOSE




:NEW

CLS

SET /P $OPTION=Create A New Project[yes/no]:

IF %$OPTION% EQU S OR %$OPTION% EQU yes
(
	GOTO GEN
) 
ELSE
( 
	GOTO CLOSE
)


:GEN

CLS

SET /P $pasta=Project Path:

CLS

SET /P $PATHPROJECT=Type the 'br.com.example':

CLS

SET /P $PROJECTNAME=Project Name:

CLS

cd %$pasta%

cmd/c flutter create --org %$PATHPROJECT% %$PROJECTNAME% 

//cmd/c code %$pasta%/%$PROJECTNAME% 

goto CLOSE


:PAD
CLS
ECHO CHECKING.........
ECHO.
cmd/k flutter doctor

ECHO DONE!

@PAUSE


:DET
CLS
ECHO CHECKING.........
ECHO.
cmd/k flutter doctor -v


ECHO DONE!

@PAUSE


:UPD
CLS
ECHO UPDATING.........
ECHO.
cmd/k flutter upgrade --force


ECHO DONE!

@PAUSE



:DEV
CLS

ECHO  -----------------------------------
ECHO  -   REAL EMULATOR DEVICE MENU     -
ECHO  -----------------------------------
ECHO.
ECHO -----------------------------------
ECHO [1]MY DEVICES
ECHO [2]CONNECT A NEW DEVICE
ECHO [3]EXIT
ECHO -----------------------------------
ECHO.

SET /P $TYPE2=OPTION SELECTED:

if	%$TYPE2% EQU 1 	GOTO MD
if	%$TYPE2% EQU 2 	GOTO CN
					GOTO CLOSE
					
					
	:MD
	
	CLS

	cd %userprofile%\AppData\Local\Android\Sdk\platform-tools

	adb devices

	@PAUSE

	GOTO CLOSE
	
	
	
	:CN
		
	CLS
	 

	ECHO TO CONNECT A NEW DEVICE, YOU MUST CONNECT YOUR ANDROID SMARTPHONE 
	ECHO TO YOUR COMPUTER THROUGH A USB CABLE:
	ECHO ---------------------------------------------------

	SET /P $COPTIONS=CONNECTED THE CABLE?, TYPE [yes] TO CONTINUE:

	IF %$COPTIONS% EQU yes GOTO	STARTCONNECTION
											EXIT
	 


	:STARTCONNECTION

	CLS

	ECHO DONE! NOW AND JUST WAIT, WE ARE SETTING UP FOR YOU.
	ECHO -----------------------------------------------------------

	cd %userprofile%\AppData\Local\Android\Sdk\platform-tools
	
	adb tcpip 5555


	@PAUSE

	CLS


	adb shell ip -f inet addr show wlan0


	ECHO ----------------------------------------------------------------------------------------------------------
	SET /P $userip= NOW YOU WILL ENTER THE IP FOUND ABOVE, EXAMPLE(inet '192.168.0.111'), SHOWN IN THE SECOND LINE:

	adb connect %$userip%:5555

	CLS

	adb devices


	ECHO DONE, DISCONNECT YOUR SMARTPHONE, NOW YOU CAN COMPILE YOUR APPS DIRECTLY ON YOUR PHONE.
	ECHO.
	ECHO ---------------------------------
	ECHO THANKS FOR USING, BY MIGUEL.HP :)

	@PAUSE	


:CLOSE

exit



