# Vim SyntaxRange

## Load Plugin
```
Plug 'inkarkat/vim-SyntaxRange'
```

## Configuration

- Load Jinja tags in tpl,j2,jinja

```
autocmd BufEnter *.tpl,*.j2,*.jinja call SyntaxRange#Include('{%', '%}', 'jinja')
autocmd BufEnter *.tpl,*.j2,*.jinja call SyntaxRange#Include('{{', '}}', 'jinja')
```
