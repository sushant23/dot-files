execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable

set background=light
let g:solarized_termcolors=256
colorscheme solarized

nmap <silent> <C-N> :NERDTreeToggle<CR>

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {'callback' : 0}

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'	
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
call plug#end()

let NERDTreeShowHidden=1
nnoremap <F5> :<C-U>make %:r && ./%:r<CR>


set runtimepath^=~/.vim/bundle/ctrlp.vim

set number
set relativenumber             

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'
