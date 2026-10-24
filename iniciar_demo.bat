@echo off
rem Demonstração com dados fictícios. Usuário: demo   Senha: zentry-demo
python -m pip install tzdata >nul 2>&1
python -m zentry simulate --serve
pause
