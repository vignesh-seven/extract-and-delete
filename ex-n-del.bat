@echo off

set filepath=%1

@REM for /F "delims=" %%i in (%filepath%) do set dirname="%%~dpi" 
@REM for /F "delims=" %%i in (%filepath%) do set filename="%%~nxi"
for /F "delims=" %%i in (%filepath%) do set basename="%%~ni"

@REM echo %filepath%
@REM echo %dirname%
@REM echo %filename%
@REM echo %basename%

mkdir %basename%

echo File given: %filepath%

"C:\Program Files\7-Zip\7z.exe" x %filepath% -o%basename%

if %ERRORLEVEL% NEQ 0 GOTO :ERRORMSG

del %filepath%

exit

:ERRORMSG

echo There was an error unpacking the file

pause