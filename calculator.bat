@echo off
title Calculator

:start
cls
echo   _____     __         __     __          
echo  / ___/__ _/ /_____ __/ /__ _/ /____  ____
echo / /__/ _ `/ / __/ // / / _ `/ __/ _ \/ __/
echo \___/\_,_/_/\__/\_,_/_/\_,_/\__/\___/_/   
echo.                                           
echo.                                         
echo.                         
echo.                                                                      
echo.
echo.
echo Choose an operation:
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division

set /p choice=Enter your choice:

set /p num1=Enter the first number:
set /p num2=Enter the second number:

if %choice% equ 1 goto addition
if %choice% equ 2 goto subtraction
if %choice% equ 3 goto multiplication
if %choice% equ 4 goto division

echo Invalid Choice
pause
goto start

:addition
set /a result=%num1% + %num2%
goto display_result

:subtraction
set /a result=%num1% - %num2%
goto display_result

:multiplication
set /a result=%num1% * %num2%
goto display_result

:division
if %num2% equ 0 (
    echo Error: you can't divide by zero
) else (
    set /a result=%num1% / %num2%
    goto display_result
)

:display_result
cls
echo Result: %result%
echo.
echo Press any key to try again...
pause >nul
goto start
