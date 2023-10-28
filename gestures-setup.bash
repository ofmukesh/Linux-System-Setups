#!/bin/bash

# Install required packages
echo "Installing required packages..."
sudo apt update
sudo apt install -y libinput-tools xdotool

# Add the libinput-gestures PPA
echo "Adding libinput-gestures PPA..."
sudo add-apt-repository ppa:iberianpig/ppa

# Update package list and install libinput-gestures
echo "Updating package list and installing libinput-gestures..."
sudo apt update
sudo apt install -y libinput-gestures

# Enable libinput-gestures on startup
echo "Enabling libinput-gestures on startup..."
libinput-gestures-setup autostart

# Add your user to the input group
echo "Adding your user to the input group..."
sudo gpasswd -a $USER input

# Restart the libinput-gestures service
echo "Restarting libinput-gestures service..."
libinput-gestures-setup restart

echo "Setup complete. You can now use touchpad gestures with the default configuration."
