#!/bin/bash
source <(curl -s https://raw.githubusercontent.com/kainatquaderee/TERMUX-KLADE/main/depends.sh)
echo KLADE FOR TERMUX
......
sleep 1
...........
sleep 1
.....................
sleep 1
..................................
pkg install $depends;
proot-distro install debian
proot-distro login --user root --shared-tmp debian;
apt update && apt upgrade 
apt install sudo;

groupadd storage;
groupadd wheel;
groupadd video;
useradd -m -g users -G wheel,audio,video,storage -s /bin/bash user;
echo "password for root";
passwd;
echo "password for user";
passwd user;
echo "user  ALL=(ALL:ALL) ALL" >> /etc/sudoers;
su user;
cd;
bash <(curl -s https://raw.githubusercontent.com/kainatquaderee/KLADE/main/install.sh);
