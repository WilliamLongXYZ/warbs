#!/bin/sh
pacman -S doas vim mpv git github-cli zathura yay monero monero-gui bitcoin-cli bitcoin-qt electrum base-devel pass brave-browser-beta newsboat ffmpeg qrencode
yay -S sc-im litecoin-qt litecoin-cli wownero-git wowlet-git zcash zecwallet zecwallet-lite electrum-cash electrum-dash task-spooler htop-vim-git

pushd /usr/src/
git clone https://github.com/lukesmithxyz/vul.git
git clone https://github.com/lukesmithxyz/grb.git
git clone https://github.com/lukesmithxyz/kjv.git
git clone https://github.com/williamlongxyz/st.git
git clone https://github.com/williamlongxyz/dmenu.git
git clone https://github.com/williamlongxyz/dwm.git
git clone https://github.com/williamlongxyz/surf.git

for dir in $(ls)
do
	cd $dir
	make clean install
	cd ../
done

