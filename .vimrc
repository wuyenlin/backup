call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
call plug#end()


" Set compatibility to Vim only.
set nocompatible

" Turn on syntax highlighting.
syntax on

" For plug-ins to load correctly.
filetype plugin indent on


" Automatically wrap text that extends beyond the screen length.
set wrap

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Display options
" set showmode
set showcmd

" Display different types of white spaces.
set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
set listchars=tab:\|\ 
" set cursorcolumn
set cursorline

" Show line numbers
set number relativenumber

" Encoding
set encoding=utf-8

" Highlight matching search patterns
" set hlsearch
" Enable incremental search
" set incsearch
" Include matching uppercase words with lowercase search term
" set ignorecase
" Include only uppercase words with uppercase search term
" set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"
