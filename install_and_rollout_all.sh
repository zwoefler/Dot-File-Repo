#!/bin/bash

RESET='\033[0m'
BOLD='\033[1m'
ITALIC='\033[3m'
GREEN='\033[1;32m'

# Go to dotfile
cd "$(dirname "${BASH_SOURCE}")"


# If it has the flag `--force` or `-f`.
# Then don't ask for each task

for dir in */; do
    (cd "$dir"
    for sh in `find . -type f -name "*.sh"`; do
        echo "$sh";
    done;)
done



# echo "${GREEN}Setting up shell${RESET}"
# source shell/setup.sh
# read -p "Use zsh as shell? [Y/n] " -n 1
# echo ""
# if [[ ! $REPLY =~ ^[Nn]$ ]]; then
#   source zsh/setup.sh
# else
#   source bash/setup.sh
# fi


# echo "${GREEN}Setting up git & ssh${RESET}"
# source git/setup.sh
# source git/ssh.sh


# echo "${GREEN}Installing apps${RESET}"
# source vscode/extensions.sh
# source vscode/config.sh




