set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Sirver/ultisnips'

Plugin 'honza/vim-snippets'

"Plugin 'https://github.com/Valloric/YouCompleteMe'

Plugin 'https://github.com/chrisbra/SudoEdit.vim'

Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" Set leader key to ;
let mapleader=";"

"set colorscheme
colorscheme molokai
let g:molokai_original = 1

"enable syntax highlighting
syntax enable

"number of visual spaces per TAB
set tabstop=4

" number of spaces in tab when editing
set softtabstop=4

" set tabs to spaces
set expandtab

" show line numbers
set number

" highlight current line
set cursorline

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to
set lazyredraw

" highlight matching parenthesis
set showmatch

" use SudoRead
:nnoremap <leader>sr :SudoRead<CR>

" use SudoWrite
:nnoremap <leader>sw :SudoWrite<CR>

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"Latex Settings
set grepprg=grep\ -nH\ $*
let g:tex_flavor = 'latex'
map <F10> :!pdflatex % <CR>

"set spell checking language and spellchecking
setlocal spelllang=nl
map <F2> :set spell<CR>
