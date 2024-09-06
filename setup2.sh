#!/bin/bash
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
su  user -- bash <(curl -s https://raw.githubusercontent.com/kainatquaderee/KLADE/main/install.sh)
