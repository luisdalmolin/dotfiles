#!/bin/sh
source $HOME/.dotfiles/log.sh
sublime_dir=~/Library/Application\ Support/Sublime\ Text\ 3/Packages

# -- Subl ----------------------------------------------------------------------
if [ -f "/usr/local/bin/subl" ]; then
    msg_ok "subl alias"
else
    msg_run "subl" "ln -s '/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl' /usr/local/bin/subl"
    ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi

# -- Sublime User Settings ----------------------------------------------------------------------
if [ -d "$sublime_dir/User.backup" ]; then
    msg_ok "Sublime user configurations"
else
    mv "$sublime_dir/User" "$sublime_dir/User.backup"
    ln -s "$HOME/.dotfiles/sublime/User" "$sublime_dir"
fi