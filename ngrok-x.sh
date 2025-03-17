#!/bin/bash

# Function to display animated text
animate_text() {
    text="$1"
    for ((i=0; i<${#text}; i++)); do
        echo -ne "${text:$i:1}"
        sleep 0.03
    done
    echo ""
}
# Blogger Login Page

animate_text "Opening Hydra Termux Website Click To Follow"
xdg-open https://hydratermux.blogspot.com

# Custom ASCII Logo
clear
echo -e "\e[1;36m"
echo "▒█▄░▒█ ▒█▀▀█ ▒█▀▀█ ▒█▀▀▀█ ▒█░▄▀ ░░ ▒█░▒█"
echo "▒█▒█▒█ ▒█░▄▄ ▒█▄▄▀ ▒█░░▒█ ▒█▀▄░ ▀▀ ▒█▀▀█"
echo "▒█░░▀█ ▒█▄▄█ ▒█░▒█ ▒█▄▄▄█ ▒█░▒█ ░░ ▒█░▒█"
echo -e "\e[0m"
animate_text "🚀 Ngrok Manager for Termux 🚀"
echo ""

# Function to install Ngrok
install_ngrok() {
    animate_text "🔄 Updating Termux packages..."
    pkg update -y && pkg upgrade -y

    animate_text "📦 Installing dependencies..."
    pkg install wget unzip libc libandroid-support -y

    animate_text "📥 Downloading the correct Ngrok version..."
    wget -O ngrok.zip https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-arm64.zip

    animate_text "📂 Extracting Ngrok..."
    unzip ngrok.zip && chmod +x ngrok
    mv ngrok $PREFIX/bin/
    rm -f ngrok.zip

    if [ ! -f "$HOME/.ngrok_authtoken" ]; then
        echo -e "\e[1;32m🔑 Enter your Ngrok auth token:\e[0m"
        read NGROK_TOKEN
        ngrok config add-authtoken "$NGROK_TOKEN"
        echo "$NGROK_TOKEN" > "$HOME/.ngrok_authtoken"
    else
        NGROK_TOKEN=$(cat "$HOME/.ngrok_authtoken")
        animate_text "✅ Ngrok auth token already set! [$NGROK_TOKEN]"
    fi

    echo -e "\n\e[1;34m✅ Ngrok installation complete! 🚀\e[0m"
    echo -e "Run \e[1;32m'ngrok http 8080'\e[0m to start a tunnel."
}

# Function to uninstall Ngrok
uninstall_ngrok() {
    animate_text "🗑️ Uninstalling Ngrok..."
    rm -f $PREFIX/bin/ngrok
    rm -f $HOME/.ngrok_authtoken
    animate_text "✅ Ngrok has been uninstalled successfully!"
}

# Function to run Ngrok
run_ngrok() {
    if ! command -v ngrok &> /dev/null; then
        echo -e "\e[1;31m❌ Ngrok is not installed! Please install it first.\e[0m"
        return
    fi

    read -p "Enter port to forward (default: 8080): " port
    port=${port:-8080}

    animate_text "🚀 Starting Ngrok on port $port..."
    ngrok http $port
}

# Main Menu
while true; do
    echo -e "\n\e[1;33mSelect an option:\e[0m"
    echo -e "\e[1;32m1. Install Ngrok\e[0m"
    echo -e "\e[1;31m2. Uninstall Ngrok\e[0m"
    echo -e "\e[1;34m3. Run Ngrok\e[0m"
    echo -e "\e[1;35m4. Exit\e[0m"
    
    read -p "Enter your choice: " choice
    
    case $choice in
        1) install_ngrok ;;
        2) uninstall_ngrok ;;
        3) run_ngrok ;;
        4) animate_text "👋 Exiting..."; exit ;;
        *) echo -e "\e[1;31m❌ Invalid option! Please choose again.\e[0m" ;;
    esac
done
