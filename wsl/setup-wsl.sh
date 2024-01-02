#!/bin/bash

# Links
echo "Follow these links for installation:"
echo "https://learn.microsoft.com/pt-br/windows/wsl/install"
echo "https://learn.microsoft.com/pt-br/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package"
echo "https://youtube.com/playlist?list=PLlAbYrWSYTiOpefWtd6uvwgKT1R-94Zfd&si=UJxZzH4RPSq9m4hb"

# Commands
# nano .zshrc
# source .zshrc

# Install WSL (PowerShell)
wsl --install

# Install Zhs
sudo apt update && sudo apt install -y zsh

# Install Oh My Zhs
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# SSH key
mkdir ~/.ssh

# zsh-syntax-highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# zsh-nvm plugin
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/custom/plugins/zsh-nvm

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
