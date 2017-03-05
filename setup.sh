#!/bin/bash

sudo echo "Got super cow power"
sudo sed -i 's/http:\/\/ports.ubuntu.com/https:\/\/mirrors.ustc.edu.cn\/ubuntu-ports/' /etc/apt/sources.list
sudo rm -rf /etc/resolv.conf
sudo resolvconf -u
sudo ln -s /run/resolvconf/resolv.conf /etc/resolv.conf
sudo resolvconf -u
sudo apt-get update
sudo apt-get upgrade

export LC_CTYPE=en_US.UTF-8
sudo update-locale LANG=en_US.UTF-8
sudo apt-get install zsh tmux byobu
byobu-enable

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
