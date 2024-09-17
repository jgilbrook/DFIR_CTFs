@echo off
setlocal enabledelayedexpansion

rem Base64-encoded flags
set "ENCODED_FLAG1=RkxBR3sxOTIuMTY4LjcwLjExfQ=="
set "ENCODED_FLAG2=RkxBR3szeGYxbF9kQG5nM3J9"

rem Decode Base64 to ASCII using PowerShell
for /F "delims=" %%A in ('powershell -command "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('%ENCODED_FLAG1%'))"') do set FLAG1=%%A
for /F "delims=" %%A in ('powershell -command "[System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String('%ENCODED_FLAG2%'))"') do set FLAG2=%%A

rem Ask user for their flag guess
set /p USER_FLAG="Enter the flag you believe is correct: "

rem Compare user input with decoded flags
if /I "!USER_FLAG!"=="!FLAG1!" (
    echo Flag is correct!
    goto end
) else if /I "!USER_FLAG!"=="!FLAG2!" (
    echo Flag is correct!
    goto end
) else (
    echo Incorrect flag. Try again.
    goto end
)

:end
rem Pause to keep the window open
pause
