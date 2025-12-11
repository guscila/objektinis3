@echo off
if not exist build mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
cmake --build . --config Release
if exist .\v3.0.exe (.\v3.0.exe %*) else (.\Release\v3.0.exe %*)
pause
