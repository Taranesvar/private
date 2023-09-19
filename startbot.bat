@echo off
title HighriseBot
python -m pip show highrise-bot-sdk >nul 2>&1
if errorlevel 1 (
    echo Highrise SDK not found. Installing...
    python -m pip install highrise-bot-sdk
) else (
    echo Starting bot...
)
:loop
python main.py
echo Waiting for 5 seconds before restarting...
timeout /t 5 /nobreak >nul
goto loop
