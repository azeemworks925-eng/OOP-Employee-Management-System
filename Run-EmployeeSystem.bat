@echo off
REM Employee Management System - double-click to compile and run (Windows).
cd /d "%~dp0"
title Employee Management System

where g++ >nul 2>nul
if errorlevel 1 (
    echo g++ was not found. Install a C++ compiler such as MinGW-w64 ^(for example through MSYS2^)
    echo and make sure g++ is on your PATH, then run this file again.
    pause
    exit /b 1
)

if not exist build mkdir build
echo Compiling src\EmployeeManagementSystem.cpp ...
g++ -std=c++17 -O2 src\EmployeeManagementSystem.cpp -o build\EmployeeManagementSystem.exe
if errorlevel 1 (
    echo.
    echo Compilation failed. See the errors above.
    pause
    exit /b 1
)

cls
build\EmployeeManagementSystem.exe
pause
