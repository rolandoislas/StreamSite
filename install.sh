#!/usr/bin/env bash
# Install script for streamsite

streamsite="/usr/local/bin/streamsite"
capture="/etc/streamsite/capture.js"

# Check root
if [ $UID -ne 0 ]; then
    echo "This script must be executed as root"
    exit 1
fi

function uninstall() {
    echo "Uninstalling"
    rm "$streamsite"
    rm "$capture"
    echo "Uninstalled"
    if [ "$1" == true ]; then
        exit 0
    fi
}

# Uninstall
if [ "$1" == "uninstall" ]; then
    uninstall true
fi

# Check if an old installation will be overwritten
if [ -f /usr/local/bin/streamsite ] || [ -f /etc/streamsite/capture.js ]; then
    read -p "Existing install found. Overwrite? [N]: " overwrite
    while true; do
        case $overwrite in
            [yY]* ) uninstall
                    echo "Installing"
                    break;;
            [nN]* ) echo "Not installing"
                    exit;;
            * ) echo "Unknown input"
                exit;;
        esac
    done
fi

# Install
cp ./capture.js "$capture"
cp ./streamsite "$streamsite"
echo "Installed"