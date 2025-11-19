@echo off

python -m venv .biotech

call .biotech\Scripts\activate

pip install --upgrade pip
pip install -r requirements.txt

python -m ipykernel install --user --name=biotech --display-name "Biotech"

jupyter lab
