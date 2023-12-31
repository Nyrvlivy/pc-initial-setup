#!/bin/bash

# Links
echo "Follow these links for installation:"
echo "https://learn.microsoft.com/pt-br/windows/wsl/install"
echo "https://learn.microsoft.com/pt-br/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package"
echo "https://youtube.com/playlist?list=PLlAbYrWSYTiOpefWtd6uvwgKT1R-94Zfd&si=UJxZzH4RPSq9m4hb"

# Commands
# nano .zshrc
# source .zhsrc

# Install WSL (PowerShell)
wsl --install

# Install Zhs
sudo apt update && sudo apt install -y zsh

# Install Oh My Zhs
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="af-magic"/' ~/.zshrc

sed -i '/^plugins=(/ s/)$/ git zsh-syntax-highlighting zsh-autosuggestions)/' ~/.zshrc

cat <<EOL >> ~/.zshrc
# Alias para navegação rápida
alias dev="cd ~/Development"
alias cubos="cd ~/Development/CubosAcademy"
EOL

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh-autosuggestions

##### .zhsrc #####

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

cat <<EOL >> ~/.zshrc
# Alias para navegação rápida
alias dev="cd ~/Development"
alias cubos="cd ~/Development/CubosAcademy"

# Set name of the theme to load
ZSH_THEME="af-magic"

# Oh My Zsh initialization
source $ZSH/oh-my-zsh.sh

# List of plugins
plugins=(
  git
  ssh-agent
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Highlight style for arg0
ZSH_HIGHLIGHT_STYLES[arg0]=fg=227

# User-specific aliases and functions
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dev="cd ~/Development"
alias cubos="cd ~/Development/CubosAcademy""
EOL


