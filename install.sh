#!/bin/bash
echo
bash logo
pkg install curl -y
pkg install wget -y
pkg install unzip -y
pkg install unzip -y
pkg install openssh -y
pkg install git -y
pkg install python -y    
pkg install php -y
pkg install tmux -y  
pkg install nodejs -y  
echo
echo
xdg-open https://youtube.com/@hydratermux?si=49ZNQBcLdjO_r7nC
echo
sleep 5
chmod +x ngrok-h.sh
bash ngrok.sh

