#!/usr/bin/env bash
set -e -o pipefail

yay --noconfirm -Yccq
yes | pacman -Sccq
userdel -r -f docker
rm -rf /etc/sudoers.d
