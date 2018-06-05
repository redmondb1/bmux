set nocompatible
set noswapfile
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
" autocomplete, ctrl space to open
Bundle 'davidhalter/jedi-vim'
" Syntax check on write, apt-get pylint or flake8
Bundle 'scrooloose/syntastic'
Bundle 'sheerun/vim-polyglot'
Bundle 'hynek/vim-python-pep8-indent'
Bundle 'ldx/vim-indentfinder'
" :call VimuxRunCommand("pwd") and VimuxRunLastCommand() for tmux
Bundle 'vim-scripts/vimux'
" remove white space on save
Bundle 'gagoar/StripWhiteSpaces'
" :Fw show lines containing word under cursor
Bundle 'embear/vim-foldsearch'
" powerline replacement
"Bundle 'bling/vim-airline'
" shows what function you're in on status line, apt-get ctags
Bundle 'majutsushi/tagbar'
" shows git diff signs in gutter
Bundle 'airblade/vim-gitgutter'
" lots of git integration
Bundle 'tpope/vim-fugitive'
" darker color scheme
Bundle 'nanotech/jellybeans.vim'
" Show letters to move to quickly
"Plugin 'easymotion/vim-easymotion'
"Plugin 'Lokaltog/vim-easymotion.git'
Plugin 'justinmk/vim-sneak'
" Docker syntax highlighting
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
" Convert word to text and back automatically
Plugin 'vim-scripts/textutil.vim'
Plugin 'hashivim/vim-hashicorp-tools'
Plugin 'shime/vim-livedown'
Plugin 'maksimr/vim-jsbeautify'
call vundle#end()
filetype plugin indent on

syntax on
set laststatus=2
let g:syntastic_aggregate_error=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:terraform_fmt_on_save=1
let g:terraform_align=1

" should markdown preview get shown automatically upon opening markdown buffer
let g:livedown_autorun = 1
"
" should the browser window pop-up upon previewing
let g:livedown_open = 1
"
" the port on which Livedown server will run
let g:livedown_port = 1337
"
" the browser to use
let g:livedown_browser = "safari"

let g:gitgutter_realtime=1
set formatoptions+=t

set wrapmargin=0
set expandtab
set tabstop=4
set autoindent
set shiftwidth=4

nnoremap <s-s> :update<cr>
nnoremap <s-x> :wq<cr>

"replace 'f' with 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
"replace 't' with 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

au InsertEnter * hi Normal ctermbg=232 guibg=#1b1d1e
au InsertLeave * hi Normal ctermbg=234 guibg=#000000

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

