#!/bin/bash

declare -a extensions=(
    "naumovs.color-highlight"
    "eamodio.gitlens"
    "ms-vscode.live-server"
    "ritwickdey.liveserver"
    "ms-vsliveshare.vsliveshare"
    "postman.postman-for-vscode"
    "esbenp.prettier-vscode"
    "pkief.material-icon-theme"
    "monokai.theme-monokai-pro-vscode"
    "github.copilot"
    "github.copilot-chat"
    "ecmel.vscode-html-css"
    "figma.figma-vscode-extension"
    "kokororin.vscode-phpfmt"
    "wallabyjs.quokka-vscode"
    "formulahendry.auto-close-tag"
    "formulahendry.auto-rename-tag"
    "ms-python.python"
    "njpwerner.autodocstring"
    "ms-python.autopep8"
    "ms-python.vscode-pylance"
    "miramac.vscode-exec-node"
)

for extension in "${extensions[@]}"; do
    code --install-extension "$extension"
done
