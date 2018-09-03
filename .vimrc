set termguicolors
set tabstop=2
set shiftwidth=2
set expandtab
set bs=2
set t_Co=256
set smartindent
set tabstop=4
set number
syntax on
colorscheme violet
set mouse=a
set list
set listchars=tab:--,trail:·,eol:¬

" <-- Plugin --> "

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'kien/ctrlp.vim'

call plug#end()

" <-- Map --> "
map <C-n> :NERDTreeToggle<CR>
map ,t :tabnew<CR>
map <F5> :w<CR>
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y
vnoremap <C-d> "+d
map <Space> <Plug>(easymotion-prefix)s

" <-- Plugin Setting --> "

let g:user_emmet_install_global = 0

let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '^'
let g:ycm_server_python_interpreter = '/usr/bin/python2'
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ' '
set ttimeoutlen=50
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
autocmd FileType html,css imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


let g:airline_theme='laederon'



