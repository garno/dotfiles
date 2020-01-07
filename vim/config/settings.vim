" Syntax
syntax on

" Colorscheme
colorscheme deep-space

" FileType plugin
filetype on
filetype plugin indent on
filetype indent on

" Backups
set backup
set swapfile

set backupdir=$HOME/.vim-local/.vimbackup
set directory=$HOME/.vim-local/.vimswap

" General settings
let mapleader=","
set showcmd           " Display command
set showmode          " Display the current mode
set ignorecase        " Ignore case on search
set incsearch         " Searching while typing
set number            " Show lines number
set title             " Display filename in window title
set expandtab         " No more tabs, only whitespaces
set ts=2              " 2 spaces tab
set sw=2              " Non insert mode tab (>> and <<)
set noautoread        " Don't reload file if updated
set showmatch         " Show matching parantheses
set listchars=trail:⠿,nbsp:◊,tab:»»      " Add special chars
set list
set noerrorbells      " Don't beep on
set vb t_vb=          " error... Thank God !
set hidden            " Enable hidden buffers
set nowrap
set nofoldenable
set shell=zsh

" Encoding
set encoding=utf-8
set fileencoding=utf-8

" Status line
set statusline=%<%t\ %y\ %{&ff}
set statusline+=\ %{&modified?'\ [+]':'\ '}
set statusline+=%=\ col:%c%V\ line:%l\/%L\ %P
set laststatus=2
