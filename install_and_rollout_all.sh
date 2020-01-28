#!/bin/bash

RESET='\033[0m'
BOLD='\033[1m'
ITALIC='\033[3m'
GREEN='\033[1;32m'

# Go to dotfile
cd "$(dirname "${BASH_SOURCE}")"


# If it has the flag `--force` or `-f`.
# Then don't ask for each task

dir_names=`find * -not -path '*/\.*' -type d -printf "%f\n"`

echo -e "${BOLD}Starting to install all Config files for\n${RESET}$dir_names"


for dir in */; do
    (cd "$dir"
    for sh in `find . -type f -name "*.sh"`; do
        echo -e "${BOLD} Installing $sh ${RESET}"
        source "$sh";
    done;)
done
