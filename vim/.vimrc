set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Sirver/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'https://github.com/Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

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

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" use SudoRead
nnoremap <leader>sr :SudoRead

" use SudoWrite
nnoremap <leader>sw :SudoWrite

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
