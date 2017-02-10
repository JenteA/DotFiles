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

Plugin 'https://github.com/scrooloose/nerdtree.git'

Plugin 'https://github.com/majutsushi/tagbar'

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

"set title to window
set title

" number of spaces in tab when editing
set softtabstop=4

" set tabs to spaces
set expandtab

" show line numbers
set number

" highlight current line
set cursorline

" visual autocomplete for command menu + improvements
set wildmenu
set wildmode=list:longest
set wildignore+=.hg,.git,.svn " Version Controls"
set wildignore+=*.aux,*.out,*.toc "Latex Indermediate files"
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg "Binary Imgs"
set wildignore+=*.o,*.obj,*.exe,*.dll,*.manifest "Compiled Object files"
set wildignore+=*.spl "Compiled spelling world list"
set wildignore+=*.sw? "Vim swap files"
set wildignore+=*.DS_Store "OSX SHIT"
set wildignore+=*.luac "Lua byte code"
set wildignore+=migrations "Django migrations"
set wildignore+=*.pyc "Python Object codes"
set wildignore+=*.orig,*.rej "Merge resolution files"
" redraw only when we need to
set lazyredraw

" highlight matching parenthesis
set showmatch
 
" clever completion with : find command
set path+=**

" turn on omni completion
set omnifunc=syntaxcomplete#Complete

" turn on tagbar
nmap <F8> :TagbarToggle<CR>

" use SudoRead
:nnoremap <leader>sr :SudoRead<CR>

" use SudoWrite
:nnoremap <leader>sw :SudoWrite<CR>

" open nerdtree
map <C-n> :NERDTreeToggle<CR>

" Remap keysto change windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

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
