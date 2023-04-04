@echo off
echo.
echo Meta quest2 white horizontal line fix !CAN INCREASE LATENCY!
pause

:Auswahlmenu
cls
echo.
echo Auswahlmenue
echo ===========
echo.
echo [1]Add registry keymet
echo [2]Remove registry key
echo.

set asw=0
set /p asw="Bitte eine Auswahl treffen: "

if %asw%==1 goto Auswahl1
if %asw%==2 goto Auswahl2


:Auswahl1
reg add "HKEY_CURRENT_USER\SOFTWARE\Oculus\RemoteHeadset" /v "numSlices" /t REG_DWORD /d "1" /f
goto END

:Auswahl2
reg delete "HKEY_CURRENT_USER\SOFTWARE\Oculus\RemoteHeadset" /v "numSlices"
goto END

:END
cls
echo FINISHED