#!/bin/bash

# Check if the user has root privileges
if [ "$EUID" -ne 0 ]; then
  echo "Please run this script with sudo or as the root user."
  exit 1
fi

# Update the package list
apt update

# Install Node.js and npm
apt install nodejs
apt install npm


# Check the installed versions
node -v
npm -v

echo "Node.js and npm have been installed."

# You can add additional setup steps here if needed.
