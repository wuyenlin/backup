sudo apt update
sudo apt upgrade -y

# install important apps
sudo apt install git tmux tmate vim xclip ranger neofetch python3 ranger xorg dmenu tar unrar apt-transport-https curl
snap install spotify nvim lsd vlc

# add custom icons and themes
echo "copying icon and theme files"
sudo cp -r icons/* /usr/share/icons/
sudo cp -r themes/* /usr/share/themes/

# load configuration
echo "loading configuration and setting up rc files"
dconf load / << config.conf
cp .bashrc ~/
cp .vimrc ~/


# download vscode and brave pkg

sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


wget https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64 -O code.deb
sudo dpkg -i code.deb
