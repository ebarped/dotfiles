" ~/.vimrc
set number
set relativenumber
set background=light
set tabstop=4
set shiftwidth=4

" plugins section
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Raimondi/delimitMate'
call plug#end()