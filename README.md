# Dot files

This is where I keep all my valuable dot files for safe keeping.

## Installation

    git clone git://github.com/kgish/dotfiles.git

## Symlinks

Once cloned you need to create the symlinks by doing the following:

    cd ~/dotfiles
    mv ~/.profile ~/.profile.org
    mv ~/.bashrc ~/.bashrc.org
    mv ~/.bash_profile ~/.bash_profile.org
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

## VIM

My preferences for Vim are stored in `dotfiles/vimrc` and `dotfiles/gvimrc` respectively. All plugins and scripts are stored in the `dotfiles/vim` directory.

### Directories

The Vim backup and swap files are in `~/.vim/bkup` and `~/.vim/swp`, so make sure that these directories exist by running:

    mkdir -p ~/.vim/bkup
    mkdir -p ~/.vim/swp
    
### Vundle

Now you will have setup the vim plugin [vundle][vundle] to get things going:

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

Then fire up vim (ignore error messages and hit enter) and run the following command:

    :BundleInstall<CR>

### Command-T

In order to be able to use the [Command-T plugin][commandt], you must have a version of vim compiled with ruby support. 

First you need to find out if Vim has been compiled with ruby support, and if it has then which version of ruby was used, which is usually just the default version that comes with the system installation:

    vim --version | grep ruby

Assuming Vim was built using the default ruby 1.9.1:

    sudo apt-get install ruby1.9.1 ruby1.9.1-dev
    
Once ruby 1.9.1 has been installed, you can generate the makefile and build the plugin:

    cd ~/dotfiles/vim/bundle/Command-T/ruby/command-t
    ruby extconf.rb
    make

For more information, please have a look at the [online instructions][instructions].

### Silver Search plugin

The [Ag plugin][agvim] is the VIM front-end for [the silver searcher][silversearcher], which is basically ack on steroids. 

Depending on your environment, e.g. after a fresh Ubuntu install, you may first have to install the following components:

    sudo apt-get install automake libpcre3-dev liblzma-dev zlib1g-dev

Then the Ag plugin can be built and installed:

    git clone https://github.com/ggreer/the_silver_searcher
    cd the_silver_searcher
    ./build.sh
    sudo make install 
    
When you are all done you can delete the directory:

    cd ..
    rm -rf the_silver_searcher

## Credits
Special thanks goes to Drew Neil whose inspirational stuff about VIM and his [famous dotfiles][dotfiles] have proven invaluable.

[dotfiles]: https://github.com/nelstrom/dotfiles
[vundle]: https://github.com/gmarik/vundle
[commandt]: https://github.com/wincent/Command-T
[instructions]: https://github.com/wincent/Command-T/blob/master/doc/command-t.txt 
[agvim]: https://github.com/rking/ag.vim
[silversearcher]:  https://github.com/ggreer/the_silver_searcher

