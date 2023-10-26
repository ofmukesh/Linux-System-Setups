#!/bin/bash

# Check if the script is run with superuser privileges
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root. Please use sudo." 
   exit 1
fi

# Update the package repository
echo "Updating package repository..."
apt update

# Install prerequisites
echo "Installing prerequisites..."
apt install -y software-properties-common apt-transport-https wget

# Download and install the Microsoft GPG key
echo "Downloading and installing the Microsoft GPG key..."
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | apt-key add -

# Add the Visual Studio Code repository
echo "Adding the Visual Studio Code repository..."
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"

# Update the package repository again
echo "Updating package repository again..."
apt update

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
apt install -y code

# Check if the installation was successful
if [ $? -eq 0 ]; then
   echo "Visual Studio Code has been successfully installed."
else
   echo "An error occurred during the installation."
fi

# Exit the script
exit 0