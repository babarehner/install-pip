#!/bin/bash

# This installs 2 versions of pip, one for python3.8 and one for Python 3.10
# Requires (1) any version of pip installed with sudo apt removed!!
# Requires (2) Update Alternatives run for Python 3.8 & Python 3.10
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.8 1
# sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 2
# sudo update-alternatives --config python3  # set default to python 3.8

# get latest updates/upgrades
sudo apt update && sudo apt upgrade -y

# may require user password if not previously entered

# install curl which downloads get=pip.py
sudo apt install curl -y

# Change to Downloads directory
cd ~/Downloads

# Download get-pip.py
curl -sSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# verify get-pip.py has been downloaded
ls

# have to add distutils file to for python in Ubuntu 20.04
sudo apt install python3.8-distutils -y
sudo apt install python3.10-distutils -y

# run get-pip.py
python3.8 get-pip.py
python3.10 get-pip.py

# since pip is installed in the users local directory
# add to .bashrc file
echo 'export PATH=~/.local/bin/:$PATH' >> ~/.bashrc

# load updated .bashrc file
source ~/.bashrc


echo "Open a new terminal to run pip3.n -V"
echo "In new treminal try: diff <(pip3.8 list) <(pip3.10 list) "
echo "You should see a difference between the two versions"
