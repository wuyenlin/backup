sudo apt update
sudo apt upgrade -y

sudo apt install git tmux tmate vim xclip ranger neofetch python3 ranger xorg dmenu tar unrar
snap install spotify nvim lsd vlc

sudo cp -r icons/* /usr/share/icons/
sudo cp -r themes/* /usr/share/themes/

dconf load / << config.conf
