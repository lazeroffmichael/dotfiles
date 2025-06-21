#!/bin/zsh

for folder in $(echo */ | sed "s/,/ /g")
do
    echo "Stowing $folder"
    stow --dotfiles -D $folder
    stow --dotfiles $folder
done

# Install tpm
if [ ! -d "$HOME/.config/tmux/plugins/tpm" ];  then
    echo "TMUX plugin directory does not exist"
    git clone https://github.com/tmux-plugins/tpm $HOME/.config/tmux/plugins/tpm
fi
