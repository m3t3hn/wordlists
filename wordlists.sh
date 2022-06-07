#!/bin/bash
cd $HOME
mkdir wordlists

read -p "Seclists? y/n " 
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e "Downloading SecLists"
    cd ~/wordlists
    git clone --depth 1 https://github.com/danielmiessler/SecLists.git
fi
read -p "Turkce Wordlist? y/n "
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo -e "Downloading Turkce wordlist"
    cd ~/wordlists
    wget --depth 1 https://raw.githubusercontent.com/utkusen/turkce-wordlist/master/wordlist.txt
fi
apt-get clean
echo -e "installation complete!"
