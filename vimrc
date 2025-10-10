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
Plug 'itchyny/vim-cursorword'
Plug 'tpope/vim-surround'
call plug#end()

" use :w!! to save with sudo permissions
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

let g:airline#extensions#tabline#enabled = 1

" probar https://github.com/itchyny/lightline.vim como sustituto a airline y  https://github.com/itchyny/vim-gitbranch
