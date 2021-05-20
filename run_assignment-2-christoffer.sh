#!/usr/bin/env bash

VENVNAME=as2-cmk #Environment name

echo "Creating environment"
python -m venv $VENVNAME

# This makes sure that the bash script can be run from bash emulator on windows 
# Test if the folder bin in venvname exists
if [ -d "$VENVNAME/bin" ]

    then
        source $VENVNAME/bin/activate
        echo "Building venv for Linux/Mac ..."
    
    else
        source $VENVNAME/Scripts/activate
        echo "Building venv for Windows ..."
fi


# Upgrade pip
echo "Upgrading pip"
# I'm specifying that I'm using pip from python, since my pc have problems upgrading pip locally if I don't do it.
python -m pip install --upgrade pip

# Move to src folder
cd src

# Run script
echo "running script"
python assignment-2-christoffer.py $@

# Deavtivate environment
echo "deactivating and removing environment"
deactivate

# move back to parent dir
cd ..

# Remove virtual environment
rm -rf $VENVNAME

echo "Done! The csv-file is located in the folder 'output'"