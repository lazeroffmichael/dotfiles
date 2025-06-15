#!/usr/bin/bash

for folder in $(echo */ | sed "s/,/ /g")
do
    echo "Removing $folder"
    stow --dotfiles -D $folder
done

if [ -d "./tmux/dot-config/tmux/plugins" ];  then
    echo "Removing TMUX plugins directory"
    rm -rf ./tmux/dot-config/tmux/plugins
fi
