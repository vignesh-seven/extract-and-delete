@echo off

set filepath=%1

for /F "delims=" %%i in (%filepath%) do set basename="%%~ni"


echo File given: %filepath%

"C:\Program Files\7-Zip\7z.exe" x %filepath% -o%basename%

if %ERRORLEVEL% NEQ 0 GOTO :ERRORMSG

del %filepath%

exit

:ERRORMSG

echo There was an error unpacking the file

pause