#!/bin/bash

<<COMMENT
    Originally from @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/config.sh
    All credit belongs to GrimLink. GitHub: https://github.com/GrimLink
COMMENT



function rsyncVSCodeConfig() {
  rsync -avh --no-perms \
    "$(dirname "${BASH_SOURCE}")/settings.json" \
    $HOME/.config/Code/User/

  echo -e "Make sure to reboot vscode"

}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  rsyncVSCodeConfig
else
  read -p "Update VSCode config files. Are you sure? [Y/n] " -n 1
  echo ""
  if [[ ! $REPLY =~ ^[Nn]$ ]]; then
    rsyncVSCodeConfig
  fi
fi

unset rsyncVSCodeConfig
