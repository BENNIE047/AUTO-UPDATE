#!/bin/bash
# Arch Linux update
if command -v apt == "/usr/bin/apt" > /dev/null; then
    echo "NOT AN ARCH LINUX DISTRO. not updating......"
else
    echo "Arch detected updating system!!!!!!!"
    sudo pacman -Syu --noconfirm > /dev/null
fi

# Debian update
if command -v pacman == "/usr/bin/pacman" > /dev/null; then
    echo "NOT A DEBIAN DISTRO. not updating......"
elif command -v apt == "/usr/bin/apt" > /dev/null; then
    echo "Debian detected updating system!!!!!!!"
    sudo apt update > /dev/null && sudo apt upgrade -y > /dev/null
fi

# Ubuntu update
if command -v pacman == "/usr/bin/pacman" > /dev/null; then
    echo "NOT AN UBUNTU DISTRO. not updating......"
elif command -v apt == "/usr/bin/apt" > /dev/null; then
    echo "Ubuntu detected updating system!!!!!!!"
    sudo apt update > /dev/null && sudo apt upgrade -y > /dev/null
fi

echo "✓ Update completed successfully!"
