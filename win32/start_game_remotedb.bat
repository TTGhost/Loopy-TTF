@echo off
cd ..

rem Read the contents of PPYTHON_PATH into %PPYTHON_PATH%:
set /P PPYTHON_PATH=<PPYTHON_PATH

rem Get the user input:
set /P ttmUsername="Username: "
set /P ttmPassword="Password: "

rem Export the environment variables:
set TTM_PLAYCOOKIE=%ttmUsername%:%ttmPassword%
set TTM_GAMESERVER=192.99.4.108

echo ===============================
echo Starting Toontown...
echo ppython: %PPYTHON_PATH%
echo Username: %ttmUsername%
echo Gameserver: %TTM_GAMESERVER%
echo ===============================

%PPYTHON_PATH% -m toontown.toonbase.ClientStart
pause
