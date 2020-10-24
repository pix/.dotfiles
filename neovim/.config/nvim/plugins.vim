if !isdirectory($HOME."/.cache/vim/plugins")
    call mkdir($HOME."/.cache/vim/plugins", "p", 0700)
endif


call plug#begin($HOME."/.cache/vim/plugins")

" Tree view
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'

let dir = globpath('~/.config/nvim/plugins/', '*.vim.md', 0, 1)
for item in dir
    execute literatevimrc#load(item)
endfor

runtime! plugins/*.vim

call plug#end()
