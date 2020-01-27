#!/bin/bash
<<COMMENT
    Originally from @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/extensions.sh
    All credit belongs to GrimLink. GitHub: https://github.com/GrimLink
COMMENT


function installExtensions(){
  VSCODE_EXTENSIONS=(
    ms-python.python
  )
  for i in "${VSCODE_EXTENSIONS[@]}"; do
    code --install-extension "$i"
  done
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  installExtensions
else
  read -p "Install VSCode extensions. Are you sure? [Y/n] " -n 1
  echo ""
  if [[ ! $REPLY =~ ^[Nn]$ ]]; then
    if ! command -v code &>/dev/null; then
      echo -e "The VSCode command is not installed \nPlease install it to run the setup for VSCode! \nThen re run this setup script or the vscode/setup script\n"
    else
      installExtensions
    fi
  fi
fi


unset installExtensions
