@echo off
echo.

echo Cleaning up existing redists...
rmdir redist /S /Q
echo.

cd app

echo Installing required tools...
echo.
call npm i electron-packager --save-dev
call npm i electron --save-dev

echo.
call electron-packager . LEd --platform=win32 --arch=ia32,x64  --overwrite --out=../redist

echo.
echo Done.
echo.
