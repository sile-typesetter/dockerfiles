#!/usr/bin/env bash
set -e -o pipefail

su docker -c 'yay --needed --noconfirm -S sile'

# pacman -Rns <sile build deps> + --clean
