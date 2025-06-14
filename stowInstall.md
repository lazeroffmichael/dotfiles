#!/usr/bin/bash

for folder in $(echo */ | sed "s/,/ /g")
do
    echo "Stowing $folder"
    stow --dotfiles -D $folder
    stow --dotfiles $folder
done
