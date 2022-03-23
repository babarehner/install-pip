#!/bin/bash

# get latest updates/upgrades
sudo apt update && suduo apt upgrade -y

# may require user password if not previously entered

# install curl shich downloads pip
sudo apt install curl -y

# Change to Downloads directory
cd ~/Downloads

# Download get-pip.py
curl -sSL https://bootstrap.pypa.io/get-pip.py -o get-pip.py

# verify get-pip.py has been downloaded
ls

# have to add distutils file to for python3 in Ubuntu 20.04
sudo apt install python3-distutils -y

# run get-pip.py
python3 get-pip.py

# since pip is installed in the users local directory
# add to .bashrc file
echo 'export PATH=~/.local/bin/:$PATH' >> ~/.bashrc

# load updated .bashrc file
source ~/.bashrc

# pip -V below will not run until you open a new terminal!
# line left in so user could review what install-pip.sh did
pip -V

echo "Open a new terminal to run pip -V"
