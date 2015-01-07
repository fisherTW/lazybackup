@echo off
cls
ECHO ===============================
ECHO         lazy file copier
ECHO         Fisher
ECHO                 2015/01
ECHO ===============================
echo.

echo "1.Local Backup (D:\->D:\)"
echo "2.Local Backup (D:\->C:\)"
echo.

set /p userinp="Choose a Task, 0 to Exit:"
set userinp=%userinp:~0,1%
if "%userinp%"=="0" goto end
if "%userinp%"=="1" goto dailybackup
if "%userinp%"=="2" goto dailybackup2

:dailybackup
xcopy D:\web D:\web_back /E/I/Y/F
IF ERRORLEVEL 1 goto error
goto end

:dailybackup2
xcopy D:\web C:\web_back /E/I/Y/F
IF ERRORLEVEL 1 goto error
goto end

:error
ECHO ERROR CODE = %ERRORLEVEL%

:end
echo bye bitch!
pause