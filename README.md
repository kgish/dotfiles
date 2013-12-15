# Dot files

This is where I keep all my valuable dot files for safe keeping.

## Installation

    git clone git://github.com/kgish/dotfiles.git

## Symlinks

Once cloned you need to create the symlinks by doing the following:

    cd ~/dotfiles
    ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/bash_profile ~/.bash_profile
    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/ctags ~/.ctags
    ln -s ~/dotfiles/curlrc ~/.curlrc
    ln -s ~/dotfiles/gemrc ~/.gemrc
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/gitk ~/.gitk
    ln -s ~/dotfiles/global-gitignore ~/.gitignore
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/irbrc ~/.irbrc
    ln -s ~/dotfiles/profile ~/.profile
    ln -s ~/dotfiles/screenrc ~/.screenrc
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim ~/.vim

## Vundle

Now you will have setup the vim plugin [vundle][vundle] to get things going:

    $ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Then fire up vim (ignore error messages and hit enter) and run the following command:

    :BundleInstall<CR>

## Directories

The Vim backup and swap files are in `~/.vim/bkup` and `~/.vim/swp`, so make sure that these directories exist by running:

    mkdir -p ~/.vim/bkup
    mkdir -p ~/.vim/swp

## VIM

My preferences for Vim are stored in `dotfiles/vimrc` and `dotfiles/gvimrc` respectively. All plugins and scripts are stored in the `dotfiles/vim` directory.

## Command-T

In order to be able to use the [Command-T plugin][commandt], you must have a version of vim compiled with ruby support. For more information, please have a look at the [online instructions][instructions].

## Credits
Special thanks goes to Drew Neil whose inspirational stuff about VIM and his [famous dotfiles][dotfiles] have proven invaluable.

[dotfiles]: https://github.com/nelstrom/dotfiles
[vundle]: https://github.com/gmarik/vundle
[commandt]: https://github.com/wincent/Command-T
[instructions]: https://github.com/wincent/Command-T/blob/master/doc/command-t.txt 
