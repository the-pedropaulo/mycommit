#!/bin/bash

INSTALL_DIR="$HOME/bin/myc"
SHELL_USED=$(basename "$SHELL")

if [ "$SHELL_USED" == "bash" ]; then
  sed -i "/alias myc/d" ~/.bashrc
  source ~/.bashrc
fi

if [ "$SHELL_USED" == "zsh" ]; then
  sed -i "/alias myc/d" ~/.zshrc
  source ~/.zshrc
fi

if [ -d "$INSTALL_DIR" ]; then
  rm -rf "$INSTALL_DIR"
fi

echo "The uninstallation is complete. The 'myc' command its installation directory have been removed"