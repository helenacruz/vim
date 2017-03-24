call plug#begin('~/.vim/bundle')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
call plug#end()


"Editor
set nocompatible
set number
set laststatus=2
set tabstop=4
set shiftwidth=4
set hlsearch
set expandtab
set smarttab
set nobackup
set noswapfile
set wildmenu
set encoding=utf-8
set fileencoding=utf-8
filetype plugin indent on

syntax enable
set bg=dark
color seattle

vnoremap cp "*y
nnoremap cv "*p
inoremap jk <esc>

let g:delimitMate_expand_cr=1

let g:airline_left_sep=''
let g:airline_right_sep=''

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_c_compiler_options='-Wall -pedantic'
let g:syntastic_cpp_compiler_options='-Wall -std=c++11'
