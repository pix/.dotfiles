if !isdirectory($HOME."/.cache/vim/plugins")
    call mkdir($HOME."/.cache/vim/plugins", "p", 0700)
endif


call plug#begin($HOME."/.cache/vim/plugins")
" Tree view
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'Shougo/unite.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'lambdalisue/suda.vim'
Plug 'dylanaraps/wal.vim'

call plug#end()
