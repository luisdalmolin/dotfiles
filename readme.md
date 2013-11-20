# Luís Dalmolin Dotfiles

## How to install?

```sh
$ curl -L https://raw.github.com/luisdalmolin/dotfiles/master/bootstrap.sh | sh
```

This will clone this repository and symlink the appropriate files in `~/.dotfiles` to your home directory.

### PHP

After install PHP and the dependencies, you still need to link the correct PHP version to your webserver. If you are using Apache, edit the line `LoadModule php5_module libexec/apache2/libphp5.so` (or something like that), and change to `LoadModule php5_module /usr/local/Cellar/php55/5.5.6/libexec/apache2/libphp5.so`. 

You may change the PHP version in the replaced line.

### Softwares

To install the softwares, just run `curl -sS https://raw.github.com/luisdalmolin/dotfiles/master/softwares.sh | sh`. This softwares are included: 

* Google Chrome
* Google Chrome Canary
* Firefox
* Opera
* Sublime Text 3
* Filezilla
* Iterm2
* VirtualBox
* Alfred
* Dropbox
* Skype
* Mou
* U Torrent
* Evernote

### References

* [Holman Dotfiles](https://github.com/holman/dotfiles)
* [Zeno Rocha Dotfiles](https://github.com/zenorocha/dotfiles)

### License

[MIT License](http://luisdalmolin.mit-license.org/) © Luis Dalmolin