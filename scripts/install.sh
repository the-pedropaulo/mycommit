#!/bin/bash

INSTALL_DIR="$HOME/bin/myc"
SHELL_USED=$(basename "$SHELL")

git clone https://github.com/the-pedropaulo/mycommit.git "$INSTALL_DIR"

cd "$INSTALL_DIR"

python3 -m pip install -r requirements.txt

if [ "$SHELL_USED" = "bash" ]; then
  echo "alias myc='python3 ${INSTALL_DIR}/index.py'" >> ~/.bashrc
  source ~/.bashrc
fi

if [ "$SHELL_USED" = "zsh" ]; then
  echo "alias myc='python3 ${INSTALL_DIR}/index.py'" >> ~/.zshrc
  source ~/.zshrc
fi

echo "The installation is complete! You can now use the 'myc' command to run the script."