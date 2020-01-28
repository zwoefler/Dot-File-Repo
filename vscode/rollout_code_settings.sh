#!/bin/bash

<<COMMENT
    Inspired by @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/config.sh
    @GrimLinks GitHub: https://github.com/GrimLink
COMMENT



function rsyncVSCodeConfig() {
  rsync -avh --no-perms \
    "$(dirname "${BASH_SOURCE}")/settings.json" \
    $HOME/.config/Code/User/

  echo -e "Make sure to reboot vscode"

}

rsyncVSCodeConfig
unset rsyncVSCodeConfig
