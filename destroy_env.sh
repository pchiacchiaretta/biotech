#!/usr/bin/env bash
set -e

echo "***************************************"
echo "  DISTRUZIONE COMPLETA DELL'AMBIENTE"
echo "***************************************"

# Se sei in un venv attivo, prova a disattivarlo
if type deactivate >/dev/null 2>&1; then
    echo "Disattivazione dell'ambiente virtuale attivo..."
    deactivate || true
fi

# Cancella la cartella .biotech
echo "Eliminazione della cartella .biotech..."
rm -rf .biotech

# Rimuove il kernel Jupyter
echo "Rimozione kernel Jupyter 'biotech'..."
if type jupyter >/dev/null 2>&1; then
    jupyter kernelspec uninstall -f biotech 2>/dev/null || echo "Kernel 'biotech' non trovato, continuo..."
else
    echo "Comando 'jupyter' non trovato, salto la rimozione del kernel."
fi

echo "Operazione completata!"
