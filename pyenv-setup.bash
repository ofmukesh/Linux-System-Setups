#!/bin/bash

# Install pyenv
curl https://pyenv.run | bash

# Add pyenv to the PATH and initialize pyenv
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# Source the updated .bashrc to apply the changes
source ~/.bashrc

# Install required development packages
sudo apt update
sudo apt install -y libbz2-dev libncurses5-dev libncursesw5-dev libffi-dev libreadline-dev libssl-dev zlib1g-dev libsqlite3-dev liblzma-dev

# Verify the installation
echo "pyenv is installed. Current version:"
pyenv --version

# You can install Python versions and set a global version here if needed
# Example:
# pyenv install 3.8.12
# pyenv global 3.8.12
