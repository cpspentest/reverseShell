REM Create the batch file using echo and redirection '>'
@echo off
REM --- This script zips the 'tozip' folder with a password using 7-Zip ---
set ZIP_PATH="C:\Program Files\7-Zip\7z.exe" >> create_zip.cmd
set ARCHIVE_NAME="hacked.zip"
set SOURCE_DIR="MyFolder"
set PASSWORD="Strong"
echo Starting ZIP operation... 
REM Add the actual 7-Zip command line call
%ZIP_PATH% a -tzip %ARCHIVE_NAME% %SOURCE_DIR% "-p%PASSWORD%" -r
echo Operation finished.

:: Check if folder exists, then delete
if exist "%SOURCE_DIR%%" (
    rmdir /s /q "%SOURCE_DIR%"
    echo Folder "%SOURCE_DIR%" and all its contents have been deleted.
) else (
    echo Folder "%SOURCE_DIR%" does not exist.
)