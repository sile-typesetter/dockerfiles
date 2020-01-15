#!/usr/bin/env bash
set -e -o pipefail

/usr/local/bin/setup_yay.sh

case $1 in
    v*|latest) pkg=sile ;;
    master) pkg=sile-git ;;
    *) exit 1 ;;
esac

su docker -c "yay --needed --noconfirm -S $pkg"

/usr/local/bin/teardown_yay.sh
