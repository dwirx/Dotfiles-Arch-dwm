#!/bin/bash

# Function to check if a command exists
command_exists() {
  command -v "$1" >/dev/null 2>&1
}



# Check if zsh-autosuggestions plugin for Oh My Zsh is installed
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  echo "Installing zsh-autosuggestions plugin for Oh My Zsh..."
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  echo "zsh-autosuggestions plugin installed successfully!"
else
  echo "zsh-autosuggestions plugin for Oh My Zsh is already installed. Skipping..."
fi

# Check if tmux plugin manager (tpm) is installed
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  echo "Installing tmux plugin manager (tpm)..."
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
  echo "tmux plugin manager (tpm) installed successfully!"
else
  echo "tmux plugin manager (tpm) is already installed. Skipping..."
fi

# Check if zsh-syntax-highlighting plugin for Oh My Zsh is installed
if [ ! -d "${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ]; then
  echo "Installing zsh-syntax-highlighting plugin for Oh My Zsh..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  echo "zsh-syntax-highlighting plugin installed successfully!"
else
  echo "zsh-syntax-highlighting plugin for Oh My Zsh is already installed. Skipping..."
fi

echo "Installation completed successfully!"

