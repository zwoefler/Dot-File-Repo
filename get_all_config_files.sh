#!/bin/bash

declare -A DOTFILES_LOCATION

DOTFILES_LOCATION[vim]="${HOME}/.vimrc"
DOTFILES_LOCATION[bash]="${HOME}/.bashrc"
DOTFILES_LOCATION[vscode]="${HOME}/.config/Code/User/settings.json"
DOTFILES_LOCATION[xfce4]="${HOME}/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml"
vs_code_extensions="code --list-extensions >> $(dirname "${BASH_SOURCE}")/vscode/vscode_extensions.txt"


receive_dotfile_from_paths() {
    for key in "${!DOTFILES_LOCATION[@]}"; do
        if [[ -e ${DOTFILES_LOCATION[${key}]} ]]; then
            echo "Receiving Dotfile from ${key}"
            rsync -avh --no-perms \
            "${DOTFILES_LOCATION[${key}]}" \
            "$(dirname "${BASH_SOURCE}")/${key}"
            echo ""
        elif [[ ! -e "${DOTFILES_LOCATION[$key]}" ]]; then
            echo "The Config-file for ${DOTFILE_LOCATION[${key}]} could not be found"
            echo ""
        fi
    done
}

receive_dotfile_from_paths
unset receive_dotfile_from_paths
