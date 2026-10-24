@echo off
chcp 65001 >nul
cd /d "%~dp0"
title Zentry IA - NAO FECHE ESTA JANELA
rem Modo codigo-fonte (sem instalador): precisa do Python 3.9+ (marque "Add Python to PATH")
set PY=python
where python >nul 2>&1 || set PY=py
%PY% --version || (echo Python nao encontrado. Instale em python.org e marque "Add Python to PATH". & pause & exit /b 1)
%PY% -m pip install tzdata >nul 2>&1
%PY% -m zentry setup --silent
echo.
echo Zentry IA iniciando. Mantenha esta janela ABERTA enquanto usar o painel.
%PY% -m zentry run --open
echo.
echo O Zentry parou. Se apareceu um erro acima, envie uma foto dele.
pause
