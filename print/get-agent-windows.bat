@echo off
setlocal

set IMAGE=juanchooo/pos:print-agent-latest

echo Pulling %IMAGE%...
docker pull %IMAGE%

for /f "delims=" %%i in ('docker create %IMAGE%') do set ID=%%i

echo Copying print-agent-windows.exe...
docker cp %ID%:/opt/bin-staging/print-agent-windows.exe .

docker rm %ID% >nul

echo Done -^> %CD%\print-agent-windows.exe
endlocal
