set bat_path=%~dp0

g++ -o %bat_path%\src\main.cpp -o main.exe

REM therealpickle-real: turns out "./" only works for bash
