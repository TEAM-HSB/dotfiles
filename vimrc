" vim
"
" ==============================================================================
" basic setting
" ==============================================================================
" encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" syntax
syntax on

" tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
autocmd Filetype javascript,html,css setlocal ts=2 sw=2 sts=2

" indent
set autoindent
set cindent
set smartindent

" backspace
set backspace=indent,eol,start

" line number
set number

" ruler
set ruler

" cursorline
set cursorline
set cursorcolumn

" wrap, margin
set nowrap

" command history
set history=100

" wildmenu
set wildmenu
set wildmode=longest:full,full

" command
set showcmd

" search without wrap
set nowrapscan

" search
set hlsearch			" highlight matches
set incsearch			" show matches during search

" remember cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\ exe "normal! g'\"" |
\ endif

" xml folding
let g:xml_syntax_folding=1

" max tabs
set tabpagemax=100
