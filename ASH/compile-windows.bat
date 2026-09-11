set bat_path=%~dp0
start /d "" g++.exe -o %bat_path%\src\main.cpp -o %bat_path%\build\main.exe

REM therealpickle-real: turns out "./" only works for bash
