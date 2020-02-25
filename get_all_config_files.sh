#!/bin/bash

# Define all paths to dotfiles
declare -A DOTFILES_LOCATION

DOTFILES_LOCATION[vim]="${HOME}/.vimrc"
DOTFILES_LOCATION[bash]="${HOME}/.bashrc"
DOTFILES_LOCATION[vscode]="${HOME}/.config/Code/User/settings.json"
vs_code_extensions="code --list-extensions >> $(dirname "${BASH_SOURCE}")/vscode/vscode_extensions.txt"


# Try receiving Dotfiles path from the list of dotfiles from previous step
receive_dotfile_from_paths() {
    # Iterate over dict items
    for key in "${!DOTFILES_LOCATION[@]}"; do
        # print current item to receive dotfile
        if [[ -e ${DOTFILES_LOCATION[${key}]} ]]; then
            echo "Receiving Dotfile from ${key}"
            # copy item to dotfile repo folder
            rsync -avh --no-perms \
            "${DOTFILES_LOCATION[${key}]}" \
            "$(dirname "${BASH_SOURCE}")/${key}"
            echo ""
        elif [[ ! -e "${DOTFILES_LOCATION[$key]}" ]]; then
            # In case of failure, just go on.
            echo "The Config-file for ${DOTFILE_LOCATION[${key}]} could not be found"
            echo ""
        fi
    # Continue with next item
    done
}
# Overwrite Dotfile from path, into corresponding directory

receive_dotfile_from_paths
unset receive_dotfile_from_paths