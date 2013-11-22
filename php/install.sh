#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- PHP -----------------------------------------------------------------------
if which php &> /dev/null; then
    msg_ok "php"
else
    msg_run "php" "brew install php55"
    brew install php55

    msg_run "php" "brew link php55"
    brew link php55

    # -- PHP MCrypt
    msg_run "php" "brew install php55-mcrypt"
    brew install php55-mcrypt

    # -- PHP XDebug
    msg_run "php" "brew install php55-xdebug"
    brew install php55-xdebug
fi

# -- Composer -----------------------------------------------------------------------
if which composer &> /dev/null; then
    msg_ok "composer"
else
    msg_run "composer" "curl -sS https://getcomposer.org/installer | php"
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi