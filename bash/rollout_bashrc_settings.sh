#!/bin/bash

<<COMMENT
    Idea is from @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/config.sh
COMMENT


function rsyncBashRC() {
  rsync -avh --no-perms \
    "$(dirname "${BASH_SOURCE}")/.vimrc" \
    $HOME/

}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  rsyncBashRC
else
  read -p "Put .bashrc in place. Are you sure? [Y/n] " -n 1
  echo ""
  if [[ ! $REPLY =~ ^[Nn]$ ]]; then
    rsyncBashRC
  fi
fi

unset rsyncBashRC
