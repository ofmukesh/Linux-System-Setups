#!/bin/bash

# Update package list and install curl
sudo apt update
sudo apt install curl

# Download and add the Brave browser GPG key
echo "Adding the Brave browser GPG key..."
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

# Add the Brave browser repository to sources.list
echo "Adding the Brave browser repository to sources.list..."
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# Update package list again to include the Brave repository
sudo apt update

# Install Brave browser
echo "Installing Brave browser..."
sudo apt install brave-browser

# Check if the installation was successful
if [ $? -eq 0 ]; then
  echo "Brave browser has been successfully installed."
else
  echo "An error occurred during the installation of Brave browser."
fi
