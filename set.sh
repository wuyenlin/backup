#!/usr/bin/bash
sudo apt update && sudo apt upgrade -y

# install important apps
sudo apt install git ssh tmux tmate vim xclip ranger neofetch python3 ranger xorg dmenu tar unrar apt-transport-https curl openssh-server openssh-client python3-venv python3-pip npm
snap install spotify nvim lsd vlc


# load configuration
echo "loading configuration and setting up rc files"
cp .bashrc ~/
cp .vimrc ~/

# setup theme
dconf load / < config.conf


# download and install brave
echo "Installing Brave browser"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


# download and install vscode
echo "Installing VS Code"
wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -O code.deb
sudo dpkg -i code.deb && rm code.deb


echo ""
echo "Done setup."
