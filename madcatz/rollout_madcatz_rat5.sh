#!/bin/bash

<<COMMENT
    Inspired by @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/config.sh
    @GrimLinks GitHub: https://github.com/GrimLink
COMMENT



function rsyncMadCatz5() {
  rsync -avh --no-perms \
    "$(dirname "${BASH_SOURCE}")/50-vmmouse.conf" \
    /etc/X11/xorg.conf.d/

  echo -e "Remember to logout and in again to apply the changes"

}

rsyncMadCatz5
unset rsyncMadCatz5

