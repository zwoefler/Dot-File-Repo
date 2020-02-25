#!/bin/bash

# Define all paths to dotfiles
declare -A DOTFILES_LOCATION

DOTFILES_LOCATION[vim]="${HOME}/.vimrc"
DOTFILES_LOCATION[bashrc]="${HOME}/.bashrc"
DOTFILES_LOCATION[vscode_settings]="$HOME/.config/Code/User/settings.json"
DOTFILES_LOCATION[vscode_extenstions]="code --list-extensions >> $(dirname "${BASH_SOURCE}")/vscode/vscode_extensions.txt"


# Try receiving Dotfiles path from the list of dotfiles from previous step
    # In case of failure, just go on.
# Overwrite Dotfile from path, into corresponding directory