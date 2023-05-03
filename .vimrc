set tabstop=2
set shiftwidth=2
set expandtab
set nu
set scrolloff=5
set autoindent
set cursorline
set foldmethod=syntax
set nofoldenable
set bg=dark
set spelllang=en_us
set hlsearch
set mouse=a

set showmatch
set autowrite
set autowriteall
if &compatible
  " `:set nocp` has many side effects. Therefore this should be done
    " only when 'compatible' is set.
  set nocompatible
endif

"#packadd minpac

"#call minpac#init()
"#call minpac#add('http://github.com/preservim/nerdtree')
"#call minpac#add('~/.vim/pack/minpac/start/vim-fugitive')
"add plugins...
"
call plug#begin()
Plug 'http://github.com/preservim/nerdtree'
Plug 'https://tpope.io/vim/fugitive.git'
Plug 'https://github.com/ycm-core/YouCompleteMe'
Plug 'https://github.com/vim-airline/vim-airline'

call plug#end()

"#short cut mapping for multi tab 
nnoremap <F3>  <C-W>w
inoremap <F3>  <C-O><C-W>w
nnoremap <F2>  <C-S-W>W
inoremap <F2>  <C-O><C-W>W
"let g:ycm_global_ycm_extra_conf = '~/.vim/pack/z/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_complete_in_comment=1
"#short cuts
nnoremap <C-n> :tabnew<CR>
nnoremap <C-q> :tabclose<CR>
nnoremap <C-up> :tabprevious<CR>
nnoremap <C-down> :tabnext<CR>

nnoremap <tab>1 :tabn 1 <cr>
nnoremap <tab>2 :tabn 2 <cr>
nnoremap <tab>3 :tabn 3 <cr>
nnoremap <tab>4 :tabn 4 <cr>
nnoremap <tab>5 :tabn 5 <cr>
nnoremap <tab>6 :tabn 6 <cr>



