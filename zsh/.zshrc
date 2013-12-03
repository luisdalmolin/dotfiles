# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias editHosts="sudo vim /etc/hosts"
alias editVHosts="sudo vim /etc/apache2/extra/httpd-vhosts.conf"
alias artisan="php artisan --env=local"
alias deploy="git push origin master; git push deploy master"
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Public key copied'"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=./bin:./vendor/bin:/opt/local/bin:opt/local/sbin:/usr/bin:/usr/local/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:~/bin

# Export PHP
export PATH=$(brew --prefix josegonzalez/php/php55)/bin:$PATH

# MySQL
export ENVIRONMENT='dev'

# disable autocorrect
source $ZSH/oh-my-zsh.sh
unsetopt correct_all