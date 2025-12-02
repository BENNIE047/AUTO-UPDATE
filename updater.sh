#!/bin/bash

# OS release file
osfile="/etc/os-release"

# Arch Linux update
if grep -q "Arch" "$osfile"; then
    echo "Arch Linux detected. Updating..."
    sudo pacman -Syu --noconfirm
fi

# Debian update
if grep -q "Debian" "$osfile"; then
    echo "Debian detected. Updating..."
    sudo apt update && sudo apt upgrade -y
fi

# Ubuntu update
if grep -q "Ubuntu" "$osfile"; then
    echo "Ubuntu detected. Updating..."
    sudo apt update && sudo apt upgrade -y
fi
