
execute pathogen#infect()
syntax on
filetype plugin indent on
syntax enable


syntax enable
set background=dark
set termguicolors
colorscheme material-theme

nmap <silent> <C-N> :NERDTreeToggle<CR>

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_latexmk = {'callback' : 0}

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'	
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-syntastic/syntastic'
call plug#end()

nnoremap <F5> :w <CR> :<C-U>make %:r && ./%:r<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

set number
set relativenumber             

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|build'

let g:jsx_ext_required = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
