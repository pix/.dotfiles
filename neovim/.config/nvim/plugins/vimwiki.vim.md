# VimWiki is a personal wiki for Vim

## Installation

```vim
Plug 'vimwiki/vimwiki'
```

## Configuration

```vim
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#folding#mode = 'syntax'
let g:pandoc#modules#enabled = ["folding"] " obviously add any other modules you require

"
let g:vimwiki_list = [{'path': '~/.wiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_folding='custom'
au FileType vimwiki set syntax=markdown.pandoc
let g:vimwiki_global_ext= 0
```
