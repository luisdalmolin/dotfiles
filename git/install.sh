#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Config --------------------------------------------------------------------
if [[ -L "$HOME/.gitconfig" ]]; then
    msg_ok "gitconfig"
else
    msg_run "gitconfig" "ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig"
    ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
fi

# -- Global Ignore -------------------------------------------------------------
if [[ -L "$HOME/.gitignore" ]]; then
    msg_ok "gitignore"
else
    msg_run "gitignore" "ln -s $HOME/.dotfiles/git/.gitignore $HOME/.gitignore"
    ln -s $HOME/.dotfiles/git/.gitignore $HOME/.gitignore
fi