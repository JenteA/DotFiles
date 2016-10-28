" load plugin manager
call plug#begin('~/.vim/plugged')

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

