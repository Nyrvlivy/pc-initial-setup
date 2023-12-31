#!/bin/bash

sudo apt update
sudo apt upgrade

# Git
sudo apt install -y git

# Node.js
sudo apt install -y nodejs npm

# Python
sudo apt install -y python3 python3-pip

# Java
# sudo apt install -y default-jre default-jdk
sudo apt install -y openjdk-17-jdk

# Docker
sudo apt install -y docker.io
sudo usermod -aG docker $USER

# PostgreSQL
sudo apt install -y postgresql postgresql-contrib

# MySQL
sudo apt install -y mysql-server

# .NET Core
sudo apt install -y dotnet-sdk-3.1

# Cleanup
# sudo apt autoremove -y
# sudo apt clean

echo "Installation completed."