source ~/dotfiles/bundles.vim

syntax on

let mapleader = ","

if has("spell")
  " Toggle spell checking on and off
  nmap <silent> <leader>s :set spell!<CR>
  " Set region to US English
  set spelllang=en_us
endif

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  " map Silver Searcher
  silent! map <leader>a :Ag!<space>
  " search for word under cursor with Silver Searcher
  silent! map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"
endif

map <Leader>bb :!bundle install --without=production<CR>
nmap <Leader>bi :source ~/.vimrc<CR>:BundleInstall<cr>
nnoremap <leader>hm <Esc>:call ToggleHardMode()<CR>
" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>pb <ESC>:read !pastebin -r<SPACE>
map <Leader>so :sort %<CR>
map <Leader>vi :tabe ~/.vimrc<CR>
map <Leader>w <C-w>w
map <Leader>x :exec getline(".")<CR>

"vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \|
"  \ sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>
"vmap <Leader>bed "td?describe<CR>obed<tab><esc>"tpkdd/end<cr>o<esc>:nohl<cr>
"map <Leader>cc :!cucumber --drb %<CR>
map <Leader>cu :Tabularize /\|<CR>
"map <Leader>co ggVG"*y
"map <Leader>cc :Rjcollection client/
"map <Leader>cj :Rjspec client/
"map <Leader>cm :Rjmodel client/
"map <Leader>ct :Rtemplate client/
"map <Leader>cv :Rjview client/
"map <Leader>d odebugger<CR>puts 'debugger'<esc>:w<CR>
"map <Leader>ec :e ~/code/
"map <Leader>gac :Gcommit -m -a ""<LEFT>
"map <Leader>gc :Gcommit -m ""<LEFT>
"map <Leader>gs :Gstatus<CR>
"map <Leader>gw :!git add . && git commit -m 'WIP' && git push<CR>
"map <Leader>f :call OpenFactoryFile()<CR>
"map <Leader>fix :cnoremap % %<CR>
"map <Leader>fa :sp test/factories.rb<CR>
"map <Leader>i mmgg=G`m<CR>
"map <Leader>l oconsole.log 'debugging'<esc>:w<CR>
"map <Leader>m :Rmodel
"map <Leader>o :w<CR>:call RunCurrentLineInTest()<CR>
"map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
"map <Leader>ra :%s/
"map <Leader>rd :!bundle exec rspec % --format documentation<CR>
"map <Leader>rs :vsp <C-r>#<CR><C-w>w
"map <Leader>rt q:?!ruby<CR><cr>
"map <Leader>rw :%s/\s\+$//<CR>:w<cr>
"map <Leader>sc :sp db/schema.rb<CR>
"map <Leader>sg :sp<CR>:grep
"map <Leader>sj :call OpenJasmineSpecInBrowser()<CR>
"map <Leader>sm :RSmodel
"map <Leader>sp yss<p>
"map <Leader>sn :e ~/.vim/snippets/ruby.snippets<CR>
"map <Leader>sq j<c-v>}klllcs<esc>:wq<CR>
"map <Leader>ss ds)i <esc>:w<CR>
"map <Leader>st :!ruby -Itest % -n "//"<left><left>
"map <Leader>su :RSunittest
"map <Leader>sv :RSview
"map <Leader>t :w<CR>:call RunCurrentTest()<CR>
"map <Leader>y :!rspec --drb %<CR>
"map <Leader>u :Runittest<CR>
"map <Leader>vc :RVcontroller<CR>
"map <Leader>vf :RVfunctional<CR>
"map <Leader>vg :vsp<CR>:grep
"map <Leader>vu :RVunittest<CR>
"map <Leader>vm :RVmodel<CR>
"map <Leader>vv :RVview<CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
"map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
"map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
"map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

imap <C-l> :<Space>
 map <C-s> <esc>:w<CR>
imap <C-s> <esc>:w<CR>
 map <C-t> <esc>:tabnew<CR>
 map <C-x> <C-w>ci
 map <C-n> :cn<CR>
 map <C-p> :cp<CR>

"-----------------------------------------------------------------------------
" General
"-----------------------------------------------------------------------------
set autoindent          " always set autoindent on
set autoread            " read open files again when changed outside Vim
set autowrite
set autowrite           " write a modified buffer on each :next , ...
set background=dark     " can be light or dark
set backspace=indent,eol,start " allow backspacing over everything in insert
                               " mode
set backupdir =~/.vim/bkup
set browsedir=current   " which directory to use for the file browser
set complete+=k         " for keyword completion also scan the files given
                        " with the 'dictionary' option
set dictionary+=/usr/share/dict/words
set directory=~/.vim/swp " directory to place swap files in
set encoding=utf-8
set expandtab           " no real tabs please!
set exrc
" ----- folds start
set foldmethod=indent   " lines with equal indent form a fold.
set foldlevel=1
set foldnestmax=10
set nofoldenable        " open all folds by default

" ----- folds end
set gdefault            " assume the /g flag on :s substitutions to replace
                        " all matches in a line
set grepprg=grep
set hidden              " you can change buffers without saving
set history=100
set hlsearch
set ignorecase
set iskeyword+=:        " double colons are valid keyword parts, e.g.
                        " for Perl::Module
set incsearch           " use incremental search
set laststatus=2        " always show status line
set lazyredraw          " improve scrolling speed
set linespace=0
set linebreak
set list
" set listchars=precedes:<,extends:>,tab:▸\ ,eol:¬,trail:·
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_,extends:❯,precedes:❮
set matchpairs+=<:>
set mouse=a
set noesckeys           " remove delay when hitting esc
set nofoldenable        " ignore code folding
set nocompatible        " disable vi-compatability
set omnifunc=syntaxcomplete#Complete
set number
set printoptions=left:8pc,right:3pc
set relativenumber

set ruler
set scrolloff=0         " keep a 5 line padding when moving the cursor
set shiftround          " when at 3 spaces and I hit >>, go to 4, not 5.
set shiftwidth=4        " number of spaces to use for each step of indent
set showcmd             " display incomplete commands
set showmatch
set sidescroll=10
set smartcase
set smartindent
set softtabstop=4
set splitright          " open vertical splits on the right
set splitbelow          " open the horizontal split below
" ----- statusline start
set statusline=%t       " tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] " file format
set statusline+=%h      " help file flag
set statusline+=%m      " modified flag
set statusline+=%r      " read only flag
set statusline+=%y      " filetype
set statusline+=%=      " left/right separator
set statusline+=%c,     " cursor column
set statusline+=%l/%L   " cursor line/total lines
set statusline+=\ %P    " percent through file
" ----- statusline end
set synmaxcol=1200      "syntax coloring long lines very slow
set tabstop=4           " number of spaces that a <Tab> in the file counts for
set tags=./tags,tags,../tags,../../tags,../../../tags
" set timeout timeoutlen=500 ttimeoutlen=200 " remove delay hitting esc insert
set notimeout           " time out on key codes but not mappings
set ttimeout
set ttimeoutlen=100

set ttyfast             "improve scrolling speed
set ttyscroll=3

" ----- undo start
set undofile            " save undo's after file closes
set undodir=~/.vim/undo " where to save undo histories
set undolevels=1000     " how many undos
set undoreload=10000    " number of lines to save for undo
" ----- undo end
set visualbell          " visual bell instead of beeping
set visualbell t_vb=    " turn off visual bell, error flash
set whichwrap=b,s,<,>,[,]

" ----- wildignore start
set wildignore+=*.exe,*.dll,*.so,*.o,*.out,*.obj,.git,*.pyc,*.rbc,*.rbo,*.class,.svn,*.gem
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.jpeg,*.png,*.log
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/vendor/gems/*,*/vendor/cache/*,*/.bundle/*,*/.sass-cache/*,*/resources/*
set wildignore+=node_modules/*,bower_components/*
set wildignore+=*.tmp,*.swp,*~,._*,*.bak,*/tmp/*
set wildignore+=*.class,*.beam,.divshot,.idea,
" ----- wildignore end

set wildmenu            " Better? completion on command line
set wildmode=list:longest,full
set winminheight=0      " more usable for stacking windows
set wrap

"-----------------------------------------------------------------------------
" Globals
"-----------------------------------------------------------------------------
" To enable the saving and restoring of screen positions.
let g:screen_size_restore_pos = 1

" Arrow keys disabled, but not h,j,k,l
let g:HardMode_level = 'wannabe'

" vim-session plugin do not ask to save
let g:session_autosave = 'no'

command! Q q " Bind :Q to :q
command! Qall qall

" Disable Ex mode
map Q <Nop>

" Disable K looking stuff up
map K <Nop>

"inoremap <Tab> <C-P>

" Let's be reasonable, shall we?
nmap k gk
nmap j gj

"-----------------------------------------------------------------------------
" Color scheme
"-----------------------------------------------------------------------------
if has('gui_running')
  set background=dark
  colo grb256
  set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h10
  colorscheme molokai
else
  set t_Co=256
  set background=dark
  colo grb256
  colorscheme vividchalk
endif

" Highlight the status bar when in insert mode
if version >= 700
  au InsertEnter * hi StatusLine ctermfg=235 ctermbg=2
  au InsertLeave * hi StatusLine ctermbg=255 ctermfg=0
endif

"-----------------------------------------------------------------------------
" Auto command
"-----------------------------------------------------------------------------
if has("autocmd")
  " Enable file type detection
  filetype on

  augroup myfiletypes
    " Clear old autocmds in group
    autocmd!
    " autoindent with two spaces, always expand tabs
    autocmd FileType ruby,eruby,yaml setlocal path+=lib
  augroup END

  " augroup vimrcEx
  "   " Clear all autocmds for the current group
  "   autocmd!
  "
  "   " Some file types use real tabs
  "   au FileType {make,gitconfig} set noexpandtab sw=4
  "
  "   " Treat JSON files like JavaScript
  "   au BufNewFile,BufRead *.json setf javascript
  "
  "   " Make Python follow PEP8
  "   au FileType python set sts=4 ts=4 sw=4 tw=79
  "
  "   " Make sure all markdown files have the correct filetype
  "   au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown
  "
  "   " MultiMarkdown requires 4-space tabs
  "   au FileType markdown set sts=4 ts=4 sw=4
  " augroup END

  au BufWritePost .vimrc so $MYVIMRC

" When loading text files, wrap them and don't split up words.
  au BufNewFile,BufRead *.txt setlocal wrap linebreak colorcolumn=132
  au BufNewFile,BufRead *.txt setlocal formatoptions+=t
"  au BufNewFile,BufRead *.txt setlocal nolist " Don't display whitespace
  "
  " For all text files set 'textwidth' to 78 characters.
  au FileType text,vim setlocal textwidth=130
  au FileType text,vim setlocal colorcolumn=132

  " Racket stuff
  au BufReadPost *.rkt,*.rktl set filetype=scheme
  au Filetype lisp,scheme,art setlocal equalprg=scmindent.rkt
  au Filetype ruby,eruby setlocal ts=2 sw=2 sts=2 expandtab

" Miscellaneous
  au Filetype css setlocal ts=2 sw=2 sts=2 expandtab
  au Filetype vim setlocal ts=2 sw=2 sts=2 expandtab
  au FileType css set omnifunc=csscomplete#CompleteCSS

  " Template toolkit syntax
  au BufNewFile,BufRead *.tt2 setf tt2
  au BufNewFile,BufRead *.tt setf tt2html
  au BufNewFile,BufRead *.pod setf pod

  " Restore cursor to previous (col,row) position.
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
    \ exe "normal! g`\"" | endif
  "
  " Remove trailing whitespace on save for certain files.
  au BufWritePre * silent! call
    \ Preserve("%s/\\s\\+$//e")<CR>

  " If no files specified start NERDTree
  au vimenter * if !argc() | NERDTree | endif

  " Close vim if only window left open is a NERDTree
  au bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
    \ b:NERDTreeType == "primary") | q | endif

  " Format xml files
  au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

  " Perl files
  au Filetype perl setlocal ts=4 sw=4 sts=4 expandtab
  au Filetype perl setlocal formatoptions=qro
  au Filetype perl setlocal formatprg=perl\ -MText::Autoformat\ -e'autoformat'

  " Enable hardmode by default (disble arrow keys)
"  au VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

  " Markdown
  " Markdown is now included in vim, but by default .md is read as Modula-2
  " files.  This fixes that, because I don't ever edit Modula-2 files :)
  let g:markdown_fenced_languages=['ruby', 'javascript', 'elixir',
    \ 'clojure', 'sh', 'html', 'sass', 'scss', 'haml']
  autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
  autocmd FileType markdown set tw=132

endif

"-----------------------------------------------------------------------------
" Ctrl-P
"-----------------------------------------------------------------------------
"let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

hi def link CtrlPMatch CursorLine
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git\|node_modules\|bin\|\.hg\|\.svn\|build\|log\|resources\|coverage\|doc\|tmp\|public/assets\|vendor\|Android',
  \ 'file': '\.jpg$\|\.exe$\|\.so$\|tags$\|\.dll$'
  \ }
nnoremap <C-b> :CtrlPBuffer<cr>
" CtrlP Delete
"call ctrlp_bdelete#init()
" CtrlP Funky
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_multi_buffers = 1
" let g:ctrlp_match_window_bottom = 1    " Show at bottom of window
" let g:ctrlp_working_path_mode = 'ra'   " Our working path is our VCS project or the current directory
" let g:ctrlp_mru_files = 1              " Enable Most Recently Used files feature
" let g:ctrlp_jump_to_buffer = 2         " Jump to tab AND buffer if already open
" let g:ctrlp_open_new_file = 'v'        " open selections in vertical window
" let g:ctrlp_open_multiple_files = 'vr' " opens multiple selections in vertical splits to the right
" let g:ctrlp_arg_map = 0
" let g:ctrlp_dotfiles = 0               " do not show (.) dotfiles in match list
" let g:ctrlp_showhidden = 0             " do not show hidden files in match list
" let g:ctrlp_split_window = 0
" let g:ctrlp_max_height = 40            " restrict match list to a maxheight of 40
" let g:ctrlp_use_caching = 0            " don't cache, we want new list immediately each time
" let g:ctrlp_max_files = 0              " no restriction on results/file list
" let g:ctrlp_working_path_mode = ''
" let g:ctrlp_dont_split = 'NERD_tree_2' " don't split these buffers
" " let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
" " let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files --exclude-standard -co'] " if you want to use git for this rather than ag
" let g:ctrlp_prompt_mappings = {
"   \ 'AcceptSelection("e")': ['<c-e>', '<c-space>'],
"   \ 'AcceptSelection("h")': ['<c-x>', '<c-cr>', '<c-s>'],
"   \ 'AcceptSelection("t")': ['<c-t>'],
"   \ 'AcceptSelection("v")': ['<cr>'],
"   \ 'PrtSelectMove("j")':   ['<c-j>', '<down>', '<s-tab>'],
"   \ 'PrtSelectMove("k")':   ['<c-k>', '<up>', '<tab>'],
"   \ 'PrtHistory(-1)':       ['<c-n>'],
"   \ 'PrtHistory(1)':        ['<c-p>'],
"   \ 'ToggleFocus()':        ['<c-tab>'],
"   \}
"
"-----------------------------------------------------------------------------
" Syntastic syntax checking
"-----------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_error_symbol='✘'
let g:syntastic_warning_symbol='☢'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"-----------------------------------------------------------------------------
" Airline status tabline
"-----------------------------------------------------------------------------
"let g:airline_theme='luna'
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airline_symbols.whitespace = 'Ξ'

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.readonly = 'Ꞧ'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.paste = 'Ꝑ'

let g:airline_mode_map = {
  \ '__' : '-',
  \ 'n'  : 'N',
  \ 'i'  : 'I',
  \ 'R'  : 'REPLACE',
  \ 'c'  : 'CMD',
  \ 'v'  : 'VISUAL',
  \ 'V'  : 'V-LINE',
  \ '' : 'V-BLK',
  \ 's'  : 'S',
  \ 'S'  : 'S',
  \ '' : 'S',
  \ }

"-----------------------------------------------------------------------------
" Colorscheme switcher
"-----------------------------------------------------------------------------
" disable <F8>
let g:colorscheme_switcher_define_mappings = 0

"-----------------------------------------------------------------------------
" Hot keys
"-----------------------------------------------------------------------------
"noremap   <silent> <F2>         :write<CR>
"noremap   <silent> <F3>         :Explore<CR>
"noremap   <silent> <F4>         :execute ":ptag ".expand("<cword>")<CR>
"noremap   <silent> <F5>         :copen<CR>
"noremap   <silent> <F6>         :cclose<CR>
"noremap   <silent> <F7>         :cprevious<CR>
"noremap   <silent> <F8>         :cnext<CR>
"noremap            <F12>        :ls<CR>:edit #

"inoremap  <silent> <F2>    <C-C>:write<CR>
"inoremap  <silent> <F3>    <C-C>:Explore<CR>
"inoremap  <silent> <F4>    <C-C>:execute ":ptag ".expand("<cword>")<CR>
"inoremap  <silent> <F5>    <C-C>:copen<CR>
"inoremap  <silent> <F6>    <C-C>:cclose<CR>
"inoremap  <silent> <F7>    <C-C>:cprevious<CR>
"inoremap  <silent> <F8>    <C-C>:cnext<CR>
"inoremap           <F12>   <C-C>:ls<CR>:edit #

"noremap <F3> <esc>:previous<CR>
"noremap <F4> <esc>:next<CR>

"noremap <F5> <esc>:bprevious<CR>
"noremap <F6> <esc>:bnext<CR>

"noremap <F7> <esc>:cprevious<CR>
"noremap <F8> <esc>:cnext<CR>

"-----------------------------------------------------------------------------
" Tagbar
"-----------------------------------------------------------------------------
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
nnoremap <silent> <F9> :TagbarToggle<CR>

"-----------------------------------------------------------------------------
" Window navigation, see :help ctrl-w
"-----------------------------------------------------------------------------
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" To move between buffers and maximise the selected one
"map <C-J> <C-W>j<C-W>_
"map <C-K> <C-W>k<C-W>_

"-----------------------------------------------------------------------------
" Toggle highlighted search
"-----------------------------------------------------------------------------
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"-----------------------------------------------------------------------------
" Perl stuff
"-----------------------------------------------------------------------------
let perl_extended_vars=1 " highlight advanced perl vars inside of strings
let perl_include_pod=1 " syntax highlighting for POD files or POD segments

"map ,pc :!perl -c %<CR>
"map ,pR :!perl -t %<CR>
"map ,pd :!perl -d %<CR>

"map ,pt  <Esc>:!perltidy<CR>
"map ,ptv <Esc>:'<,>'!perltidy<CR>
"map ,t   <Esc>:!prove -vl %<CR>
"map ,T   <Esc>:!prove -vl % \| less<CR>

" Run current (.t) file through "Build test"
"map ,bt :!perl Build test verbose=1 --test_files=%<CR>

"-----------------------------------------------------------------------------
" Some useful tips
"-----------------------------------------------------------------------------
" Make pasting from external programs work properly
"nnoremap <F2> :set invpaste paste?<CR>
"imap <F2> <C-O><F2>
"set pastetoggle=<F2>
" Make it easy to update/reload vimrc
" nmap ,s :source $MYVIMRC<CR>
" nmap ,v :e $MYVIMRC<CR>
" Write current <file.ext> to fully highlighted <file.ext.html> version
" <ESC>:runtime! syntax/2html.vim

" Delete all ^M at line endings.
" :%s/\r$//
"
" Remove all empty lines in a file.
" :%s/^[\ \t]*\n//g

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let save_cursor = getpos(".")
  " let l = line(".")
  " let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call setpos('.', save_cursor)
  " call cursor(l, c)
endfunction

" Strip trailing white space
nmap <leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
nmap <leader>= :call Preserve("normal gg=G")<CR>

"-----------------------------------------------------------------------------
" Another tip: print all key mappings to file
"-----------------------------------------------------------------------------
" :redir > keymap.txt
" :silent map
" :silent map!
" :redir END

"-----------------------------------------------------------------------------
" More tips: jumping long distances
"-----------------------------------------------------------------------------
" fx  - jump to next character 'x'
" Fx  - jump to previous character 'x'
" nG  - jump to line n ("line 5, Go")
" C-o - jump backwards ("out")
" C-i - jump forwards ("in")
" L   - jump to bottom of screen ("low")
" M   - jump to middle of screen ("middle")
" H   - jump to top of screen ("high")
" zt  - put this line at the 't'op of the screen
" zb  - put this line at the 'b'ottom of the screen
" zz  - put this line at the middle of the screen
