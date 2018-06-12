@echo off
:: initialization
setlocal EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

:intro
call :colorEcho 0f "@@@@    @@@@          @@@@      @@          @@   @@@@@@@@@@@     @@@@@@@@@@    @@@@     @@@@      @@@@@@@@@@      @@@@@@@@@@   @@@@@@@@@@@@"
echo.
call :colorEcho 0f "@@@@    @@@@        @@@@ @@@@    @@        @@    @@@@@@@@@@@     @@@@@@@@@@    @@@@@    @@@@     @@@@@@@@@@@     @@@@@@@@@@@   @@@@@@@@@@@@"
echo.
call :colorEcho 0f "@@@@    @@@@       @@@@  @@@@     @@      @@     @@@@    @@@@    @@@@          @@@@@@   @@@@    @@@@            @@@@               @@@@"
echo.
call :colorEcho 0f "@@@@    @@@@      @@@@    @@@@     @@    @@      @@@@     @@@@   @@@@          @@@@@@@  @@@@    @@@@            @@@@               @@@@"
echo. 
call :colorEcho 0f "@@@@@@@@@@@@     @@@@      @@@@     @@  @@       @@@@     @@@@   @@@@@@@@@@    @@@@@@@@ @@@@    @@@@            @@@@               @@@@"
echo.   
call :colorEcho 0f "@@@@@@@@@@@@     @@@@@@@@@@@@@@@     @@@@        @@@@     @@@@   @@@@@@@@@@    @@@@ @@@@@@@@    @@@@            @@@@               @@@@"
echo.
call :colorEcho 0f "@@@@    @@@@    @@@@        @@@@     @@@@        @@@@     @@@@   @@@@          @@@@  @@@@@@@    @@@@            @@@@               @@@@"
echo.
call :colorEcho 0f "@@@@    @@@@    @@@@        @@@@     @@@@        @@@@    @@@@    @@@@          @@@@   @@@@@@    @@@@            @@@@               @@@@"
echo.
call :colorEcho 0f "@@@@    @@@@    @@@@        @@@@     @@@@        @@@@@@@@@@      @@@@@@@@@@    @@@@    @@@@@     @@@@@@@@@@@     @@@@@@@@@@@       @@@@"
echo.
call :colorEcho 0f "@@@@    @@@@    @@@@        @@@@     @@@@        @@@@@@@@@@      @@@@@@@@@@    @@@@     @@@@      @@@@@@@@@@      @@@@@@@@@@       @@@@"
pause >nul
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i