#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- ZSH -----------------------------------------------------------------------
if which zsh &> /dev/null; then
    msg_ok "zsh"
else
    msg_run "zsh" "brew install zsh"
    brew install zsh
fi

# -- ZSH Config ----------------------------------------------------------------
if [[ -d "$HOME/.zshrc" || -L "$HOME/.zshrc" ]]; then
    msg_ok "zshrc"
else
    msg_run "zshrc" "ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc"
    ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc
fi

# -- Oh my ZSH -----------------------------------------------------------------
if [[ -d "$HOME/.oh-my-zsh" ]]; then
    msg_ok "oh-my-zsh"
else
    msg_run "oh-my-zsh" "git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh"
    git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh
fi

# -- .vimrc ----------------------------------------------------------------
if [[ -d "$HOME/.vimrc" || -L "$HOME/.vimrc" ]]; then
    msg_ok "vimrc"
else
    msg_run "vimrc" "ln -s $HOME/.dotfiles/zsh/.vimrc $HOME/.vimrc"
    ln -s $HOME/.dotfiles/zsh/.vimrc $HOME/.vimrc
fi