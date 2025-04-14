#!/bin/bash

# Exit on error
set -e

# Check if SSH key exists
if [ ! -f "/home/akiwu/.ssh/id_ed25519.pub" ]; then
    echo "Error: SSH key /home/akiwu/.ssh/id_ed25519.pub not found."
    exit 1
fi

# Clone the dotfiles repository
git clone git@github.com:wuminzhe/dotfiles.git /home/akiwu/dotfiles

# Create config directory if it doesn't exist
mkdir -p /home/akiwu/.config

# Stow the config files
stow -d /home/akiwu/dotfiles -t /home/akiwu/.config config

# Stow the tmux files
stow -d /home/akiwu/dotfiles -t /home/akiwu tmux

echo "Setup completed successfully!"