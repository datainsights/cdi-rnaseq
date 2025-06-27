# Deactivate current venv
deactivate

# Delete old venv folder
rm -rf venv

# Recreate it with clean Python 3.12
python3 -m venv venv

# Activate it
source venv/bin/activate

# Upgrade pip and install ipykernel
pip install --upgrade pip
pip install ipykernel