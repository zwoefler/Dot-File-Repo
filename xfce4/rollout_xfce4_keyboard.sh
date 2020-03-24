#!/bin/bash

<<COMMENT
    Inspired by @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/config.sh
    @GrimLinks GitHub: https://github.com/GrimLink
COMMENT



function rsyncXFCE4_Keyboard() {
  rsync -avh --no-perms \
    "$(dirname "${BASH_SOURCE}")/xfce4-keyboard-shortcuts.xml" \
    $HOME/.config/xfce4/xfconf/xfce-perchannel-xml/

  echo -e "Remember to logout and in again to apply the changes"

}

rsyncXFCE4_Keyboard
unset rsyncXFCE4_Keyboard
