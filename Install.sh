#!/bin/bash

echo "Welcome to the Dragon OS installer for the Ubuntu 18 Minimal ISO. The installer will automatically start in a moment."
sleep 5
echo "Using Dragon OS comes with no warrenty. Our source code can be viewed on https://github.com/jelle619/dragonos/."
echo "To agree and start the installation of Dragon OS, enter your password."
sleep 10


echo "Preparing your system..."
apt-get update -y
apt-get upgrade -y

echo "Installing Debian packages..."
apt-get install -y flatpak

echo "Removing unneeded packages..."
apt autoremove --purge -y snapd

echo "Setting up Flatpak repositories.."
flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org # Fedora
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo #Flathub
flatpak remote-add --if-not-exists winepak https://dl.winepak.org/repo/winepak.flatpakrepo # Winepak
