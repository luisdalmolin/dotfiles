#!/bin/sh
source $HOME/.dotfiles/log.sh
font_dir=/Library/Fonts/SourceCodePro

if [ -d "$font_dir" ]; then
    msg_ok "Font Source Code Pro already installed"
else
    msg_run "Installing Source Code Pro font"
    
    sudo mkdir "$font_dir"

    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Black.otf" "$font_dir"
    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Black.ttf" "$font_dir"

    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Bold.otf" "$font_dir"
    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Bold.ttf" "$font_dir"

    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-ExtraLight.otf" "$font_dir"
    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-ExtraLight.ttf" "$font_dir"

    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Light.otf" "$font_dir"
    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Light.ttf" "$font_dir"

    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Regular.otf" "$font_dir"
    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Regular.ttf" "$font_dir"

    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Semibold.otf" "$font_dir"
    sudo cp "$HOME/.dotfiles/fonts/SourceCodePro-Semibold.ttf" "$font_dir"
fi