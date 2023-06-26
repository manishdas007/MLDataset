@echo off
for /R %%F in (*.us.txt) do (
    for %%A in ("%%F") do (
        set "filename=%%~nA"
        setlocal enabledelayedexpansion
        ren "%%F" "!filename:~0,-3!.csv"
        endlocal
    )
)
