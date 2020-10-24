# Neovim Extract

Extract puts and yanks to a list with normal, visual swapping,
and insert list/register/deoplete completion.

## Configuration

I like to save stuff:
```vim
let g:extract_maxCount = 25
```

Mappings for putting:
```vim
nmap p <Plug>(extract-put)
nmap P <Plug>(extract-Put)
vmap p <Plug>(extract-put)
vmap P <Plug>(extract-Put)
```

Mappings for cycling:
```vim
map <m-s> <Plug>(extract-sycle)
map <m-S> <Plug>(extract-Sycle)
map <c-s> <Plug>(extract-cycle)
```

Mappings for insert:
```vim
imap <m-v> <Plug>(extract-completeReg)
imap <c-v> <Plug>(extract-completeList)
imap <c-s> <Plug>(extract-cycle)
imap <m-s> <Plug>(extract-sycle)
imap <m-S> <Plug>(extract-Sycle)
```

Mappings for replace:
```vim
nmap <silent> s <Plug>(extract-replace-normal)
vmap <silent> s <Plug>(extract-replace-visual)
```

## Load the plugin

```vim
Plug 'cyansprite/Extract'
```
