#!/bin/bash
source <(curl -s https://raw.githubusercontent.com/kainatquaderee/TERMUX-KLADE/main/Depends.sh)
echo KLADE FOR TERMUX
echo ......
sleep 1
echo ...........
sleep 1
echo .....................
sleep 1
echo ..................................
pkg install x11-repo
pkg update,
pkg install $depends;
echo "export PATH=~/.local/bin:$PATH" >> ~/.bashrc;
mkdir -p ~/.local/bin/
cat <(curl -s https://raw.githubusercontent.com/kainatquaderee/TERMUX-KLADE/main/startdesktop) > ~/.local/bin/startdesktop;
chmod +x ~/.local/bin/startdesktop; 
proot-distro install debian
proot-distro login --user root --shared-tmp debian;
