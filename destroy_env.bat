@echo off
echo ***************************************
echo  DISTRUZIONE COMPLETA DELL'AMBIENTE
echo ***************************************

REM Disattiva venv se attivo
call .biotech\Scripts\deactivate 2>nul

REM Cancella la cartella .biotech
echo Eliminazione della cartella .biotech...
rmdir /s /q .biotech 2>nul

REM Rimuove il kernel Jupyter
echo Rimozione kernel Jupyter 'biotech'...
jupyter kernelspec uninstall -f biotech 2>nul

echo Operazione completata!
pause
