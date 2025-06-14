#!/usr/bin/bash

for folder in $(echo */ | sed "s/,/ /g")
do
    echo "Removing $folder"
    stow --dotfiles -D $folder
done
