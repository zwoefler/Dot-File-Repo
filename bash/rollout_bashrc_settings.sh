#!/bin/bash

<<COMMENT
    Idea is from @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/config.sh
COMMENT


function rsyncBashRC() {
  rsync -avh --no-perms \
    "$(dirname "${BASH_SOURCE}")/.vimrc" \
    $HOME/
}

rsyncBashRC
unset rsyncBashRC
