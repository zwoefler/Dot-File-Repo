#!/bin/bash
<<COMMENT
    Inspired by @GrimLinks dotfile repo on GitHub: https://github.com/GrimLink/dotfiles/blob/master/vscode/extensions.sh
    @GrimLinks GitHub: https://github.com/GrimLink
COMMENT


function installExtensions(){
  VSCODE_EXTENSIONS=(
    ms-python.python
  )
  for i in "${VSCODE_EXTENSIONS[@]}"; do
    code --install-extension "$i"
  done
}

if ! command -v code &>/dev/null; then
  echo -e "The VSCode command is not installed \nPlease install it to run the setup for VSCode! \nThen re run this setup script or the vscode/setup script\n"
else
  installExtensions
fi

unset installExtensions
