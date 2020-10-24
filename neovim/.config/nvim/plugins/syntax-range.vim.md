# Vim SyntaxRange

## Load Plugin
```vim
Plug 'inkarkat/vim-SyntaxRange'
```

## Configuration

- Load Jinja tags in tpl,j2,jinja

```vim
autocmd BufEnter *.tpl,*.j2,*.jinja call SyntaxRange#Include('{%', '%}', 'jinja')
autocmd BufEnter *.tpl,*.j2,*.jinja call SyntaxRange#Include('{{', '}}', 'jinja')
```

