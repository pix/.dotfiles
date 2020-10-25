# UtilSnips and Completion Manager

Only if python3 is available
```vim
if has("python3")
```
./      

## Installation

```vim

Plug 'ncm2/ncm2'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'fgrsnau/ncm2-otherbuf'
Plug 'roxma/nvim-yarp'

Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Load NCM2 Completion
```

## Configuration

Enable NCM2
```vim
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect
```

```vim
inoremap <silent> <expr> <CR> pumvisible() ? ncm2_ultisnips#expand_or("", 'n') : "\<CR>"
```

:UltiSnipsEdit to split your window.

```vim
let g:UltiSnipsEditSplit="vertical"
let g:plugin_option = 1
```

```vim
endif
```
