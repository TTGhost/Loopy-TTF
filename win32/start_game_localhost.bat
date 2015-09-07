@echo off

title Toontown

cd ..

set /P ttmUsername="Username: "
set /P ttmPassword="Password: "
set TTM_PLAYCOOKIE=%ttmUsername%:%ttmPassword%
set TTM_GAMESERVER=127.0.0.1

echo Starting Toontown...

C:\Panda3D-1.9.0\python\ppython.exe -m toontown.toonbase.ClientStart

pause
