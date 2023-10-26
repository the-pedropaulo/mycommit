#!/bin/bash

# Set the full path to the installation directory
INSTALL_DIR="$HOME/bin/myc"
SHELL_USED=$(basename "$SHELL")

echo "oi"
# Clone the repository from GitHub
git clone https://github.com/the-pedropaulo/mycommit.git "$INSTALL_DIR"

# Change directory to the installation directory
cd "$INSTALL_DIR"

# Install the required libraries using pip
python3 -m pip install -r requirements.txt

# Create an alias for the MyCommit script
if [ "$SHELL_USED" = "bash" ]; then
  echo "alias myc='python3 ${INSTALL_DIR}/index.py'" >> ~/.bashrc
  source ~/.bashrc
fi

if [ "$SHELL_USED" = "zsh" ]; then
  echo "alias myc='python3 ${INSTALL_DIR}/index.py'" >> ~/.zshrc
  source ~/.zshrc
fi

echo "The installation is complete! You can now use the 'myc' command to run the script."