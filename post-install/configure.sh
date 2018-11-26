#!/bin/sh

# configure git
git config --global user.name "Brahim Hamdouni"
git config --global user.email "brahim@hamdouni.com"
git config --global push.default simple

# make docker usable withoud sudo
sudo usermod -aG docker $USER

# make terminology my default
sudo update-alternatives --quiet --set x-terminal-emulator /usr/bin/terminology

# make pcmanfm default file manager
sudo update-alternatives --quiet --remove-all x-file-manager 2>/dev/null
sudo update-alternatives --quiet --install /usr/bin/x-file-manager x-file-manager /usr/bin/pcmanfm 1000
sudo update-alternatives --quiet --set x-file-manager /usr/bin/pcmanfm
xdg-mime default Pcmanfm.desktop inode/directory

# make firefox my default
sudo update-alternatives --quiet --set x-www-browser /usr/bin/firefox
sudo update-alternatives --quiet --set gnome-www-browser /usr/bin/firefox
xdg-settings set default-web-browser firefox.desktop