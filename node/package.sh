#!/bin/sh
source $HOME/.dotfiles/log.sh

# -- Bower ---------------------------------------------------------------------
if which bower &> /dev/null; then
    msg_ok "bower"
else
    msg_run "bower" "sudo npm install -g bower"
    sudo npm install -g bower
fi

# -- DocPad --------------------------------------------------------------------
if which docpad &> /dev/null; then
    msg_ok "docpad"
else
    msg_run "docpad" "sudo npm install -g docpad"
    sudo npm install -g docpad
fi

# -- Grunt ---------------------------------------------------------------------
if which grunt &> /dev/null; then
    msg_ok "grunt"
else
    msg_run "grunt" "sudo npm install -g grunt-cli"
    sudo npm install -g grunt-cli
fi

# -- JSHint --------------------------------------------------------------------
if which jshint &> /dev/null; then
    msg_ok "jshint"
else
    msg_run "jshint" "sudo npm install -g jshint"
    sudo npm install -g jshint
fi

# -- Coffeescript --------------------------------------------------------------------
if which coffee &> /dev/null; then
    msg_ok "coffee-script"
else
    msg_run "coffee-script" "sudo npm install -g coffee-script"
    sudo npm install -g coffee-script
fi

# -- Coffeescript --------------------------------------------------------------------
if which uglifyjs &> /dev/null; then
    msg_ok "uglify-js"
else
    msg_run "uglify-js" "sudo npm install -g uglify-js"
    sudo npm install -g uglify-js
fi