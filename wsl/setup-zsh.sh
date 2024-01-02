#!/bin/bash

# Links
echo "Follow these links for installation:"
echo "https://learn.microsoft.com/en-us/windows/wsl/install"
echo "https://learn.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package"
echo "https://youtube.com/playlist?list=PLlAbYrWSYTiOpefWtd6uvwgKT1R-94Zfd&si=UJxZzH4RPSq9m4hb"

# Commands
# nano .zshrc
# source .zshrc

# Install WSL (PowerShell)
if wsl --install; then
    echo "WSL installed successfully."
else
    echo "Failed to install WSL. Exiting."
    exit 1
fi

# Install Zsh
sudo apt update && sudo apt install -y zsh

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# SSH key
ssh_dir="$HOME/.ssh"
if [ ! -d "$ssh_dir" ]; then
    mkdir "$ssh_dir"
    echo "SSH directory created at $ssh_dir."
fi

# zsh-syntax-highlighting plugin
syntax_highlighting_dir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting"
if [ ! -d "$syntax_highlighting_dir" ]; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$syntax_highlighting_dir"
    echo "zsh-syntax-highlighting plugin installed."
fi

# zsh-autosuggestions plugin
autosuggestions_dir="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"
if [ ! -d "$autosuggestions_dir" ]; then
    git clone https://github.com/zsh-users/zsh-autosuggestions "$autosuggestions_dir"
    echo "zsh-autosuggestions plugin installed."
fi

# zsh-nvm plugin
nvm_dir="$HOME/.oh-my-zsh/custom/plugins/zsh-nvm"
if [ ! -d "$nvm_dir" ]; then
    git clone https://github.com/lukechilds/zsh-nvm "$nvm_dir"
    echo "zsh-nvm plugin installed."
fi

echo "Done. Go to the next step:"

### Tips: ###
# 1. Check if Hyper-V is enabled
# Navigate to "Windows features" and make sure to check the "Hyper-V" option

# 2. Use the following commands (Run as admin in PowerShell):
# wsl --install
# dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
# dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# wsl --set-default-version 2

# 3. Reinstall the plugins and verify file/folder paths
