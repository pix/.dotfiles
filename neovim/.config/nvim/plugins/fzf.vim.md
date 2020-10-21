# A command-line fuzzy finder


## Instalation
```vim
Plug 'junegunn/fzf', { 'tag': '0.22.0' }
Plug 'junegunn/fzf.vim', { 'commit': '7bc8eccf5754551bc5f15aa755ec99e2834a0e78' }
```

## Configuration


- `\f`: Lists files
- `\b`: Lists buffers

```vim
nnoremap <Leader>f :Files<cr>
nnoremap <Leader>b :Buffers<cr>
```

Jump to the existing window if possible
```vim
let g:fzf_buffers_jump = 1
```

Ctrl-v Ctrl+v to open a buffer list
```vim
map <silent> <C-v><C-v> :<C-u>Buffers<cr>
map <silent> <C-v>v     :<C-u>Buffers<cr>

```

### Advanced ripgrep integration

In the default implementation of Rg, ripgrep process starts only once with the initial query (e.g. :Rg foo) and fzf filters the output of the process.

This is okay in most cases because fzf is quite performant even with millions of lines, but we can make fzf completely delegate its search responsibliity to ripgrep process by making it restart ripgrep whenever the query string is updated. In this scenario, fzf becomes a simple selector interface rather than a "fuzzy finder".

```vim
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --hidden --column --line-number --no-heading --color=always --smart-case -- %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
nnoremap <Leader>r :RG<cr>
```

Rg command with preview window: Shows hidden files
```vim
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --hidden --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)
```
