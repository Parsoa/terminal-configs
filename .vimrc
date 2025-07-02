set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

set nocompatible
filetype off
syntax on

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set number

set hlsearch
set list
set listchars=tab:>-
set listchars+=eol:¬
set listchars+=space:·

set splitright
set splitbelow

colorscheme molokai

" Vundle config
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

set laststatus=2
set updatetime=1000

au BufNewFile,BufRead * if &syntax == '' | set syntax=sh | endif
