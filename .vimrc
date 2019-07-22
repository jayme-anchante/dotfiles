" numbering on the left
set number

" use system clipboard
set clipboard=unnamed

" specify how screen splits occur
set splitbelow
set splitright

" screen split navigations
" ^Ctrl + J move below
" ^Ctrl + K move above
" ^Ctrl + L move right
" ^Ctrl + H move left
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding (classes, functions)
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" PEP 8 indentation
au BufNewFile,BufRead *.py;
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" UTF-8
set encoding=utf-8

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

"" Declare the list of plugins.
" smart folding
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'plytophogy/vim-virtualenv'
Plug 'jnurmine/Zenburn'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'plasticboy/vim-markdown'
Plug 'chrisbra/csv.vim'
Plug 'ekalinin/Dockerfile.vim'
Plug 'elzr/vim-json'
Plug 'jpalardy/vim-slime'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" SimpylFold see docstring for folded code
let g:SimpylFold_docstring_preview=1

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" syntastic
let python_highlight_all=1
syntax on

" colorscheme
colorscheme zenburn

" Other configuration for web development
au BufNewFile,BufRead *.js, *.html, *.css;
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
