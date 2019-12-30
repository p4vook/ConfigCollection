packloadall
silent! helptags ALL

set backspace=indent,eol,start
set nocompatible
set bs=2
set ruler
set background=dark

colorscheme gruvbox

set wildmenu
set showcmd

set scrolloff=8
set number

filetype plugin on
syntax on

set t_Co=256

set autoindent
set cindent
set smartindent
set shiftwidth=4
set tabstop=4
set smarttab
set expandtab

iab ture true
iab flase false
iab mian main
iab iosteam iostream
iab inlcude include
iab uisgn using
iab nmaespace namespace
iab namepsace namespace
iab itn int
iab amin main

set hlsearch
set incsearch

set showmatch
set mat=0
set laststatus=2
set nowrap
set history=10000

let g:clang_format#command = 'clang-format'
let g:clang_format#style_options = {
            \ "BasedOnStyle": "Google",
            \ "UseTab" : "Never",
            \ "IndentWidth" : 4,
            \ "ColumnLimit" : 100,
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \}

