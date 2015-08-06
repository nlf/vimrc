set nocompatible

" remap <leader> to ,
let mapleader=","

" pathogen for plugins
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" set colorscheme
colorscheme jellybeans
let g:lightline = {
    \ 'colorscheme': 'jellybeans',
    \ 'component': {
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
    \ },
    \ 'component_visible_condition': {
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ },
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ }
    \ }

" set default tab to 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" disable swap files
set noswapfile

" highlight the current line
set cursorline

" disable mode line since lightline takes care of it
set noshowmode

" use :w!! to write a file with sudo
cmap w!! w !sudo dd of=%

" disable bells
set visualbell t_vb=

" rescale windows when resizing the terminal
autocmd VimResized * :wincmd =
