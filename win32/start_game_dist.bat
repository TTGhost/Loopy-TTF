@echo off

title Toontown

cd ..

set /P ttmUsername="Username: "
set /P ttmPassword="Password: "
set TTM_GAMESERVER=littletooncat.es.vc

set TTM_PLAYCOOKIE=%ttmUsername%:%ttmPassword%

echo ===============================
echo Starting Toontown...
echo Username: %ttmUsername%
echo Gameserver: %TTM_GAMESERVER%
echo ===============================

C:\Panda3D-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart
pause
