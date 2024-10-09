" ~/.vimrc
set number
set relativenumber
set background=light
set tabstop=4
set shiftwidth=4

" plugins section
call plug#begin()
Plug 'vim-airline/vim-airline' (https://github.com/itchyny/lightline.vim probarlo como sustituto a airline, y tb usar este https://github.com/itchyny/vim-gitbranch)
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Raimondi/delimitMate'
Plug 'itchyny/vim-cursorword'
Plug 'tpope/vim-surround'
call plug#end()