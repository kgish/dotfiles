set nocompatible            " Be iMproved
filetype off                " Required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" Let vundle be the bundle manager
" Required!
Bundle 'gmarik/vundle'

" My bundles
Bundle 'scrooloose/nerdtree'
Bundle 'flazz/vim-colorschemes'
Bundle 'yegappan/mru'
Bundle 'ervandew/supertab'
Bundle 'tomtom/tcomment_vim'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/gem-browse'
Bundle 'tpope/vim-cucumber'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-perl/vim-perl'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wincent/Command-T'
Bundle 'tsaleh/vim-matchit'
Bundle 'wlangstroth/vim-racket'
Bundle 'wikitopian/hardmode'
Bundle 'pangloss/vim-javascript.git'

" Textobj-rubyblock depends on vim-textobj-user
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'

" Snipmate depends on tlib_vim and vim-addon-mw-utils
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
