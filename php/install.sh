#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- PHP -----------------------------------------------------------------------
if which php &> /dev/null; then
    msg_ok "php"
else
    msg_run "php" "brew install php55"
    brew install php55
fi