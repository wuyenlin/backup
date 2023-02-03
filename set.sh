#!/usr/bin/bash
sudo apt update && sudo apt upgrade -y

# install important apps
sudo apt install git ssh tmux tmate vim xclip ranger neofetch python3 ranger xorg dmenu tar unrar apt-transport-https curl openssh-server openssh-client python3-venv python3-pip npm
snap install spotify nvim lsd vlc

# load configuration
echo "loading configuration and setting up rc files"
cp .bashrc ~/

echo ""
echo "Done setup."
