#!/usr/bin/env bash
set -e -o pipefail

pacman --needed --noconfirm --asdeps -S go

useradd -m docker
echo "docker:" | chpasswd -e
mkdir -p /etc/sudoers.d
echo "docker ALL = NOPASSWD: ALL" > /etc/sudoers.d/99-docker

su docker -c 'cd; git clone https://aur.archlinux.org/yay.git; cd yay; makepkg -i --noconfirm --asdeps'

rm -rf /home/docker/yay
pacman --noconfirm -Rns go
