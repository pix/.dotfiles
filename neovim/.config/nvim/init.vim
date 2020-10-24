"
" neovim config
"

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype off
filetype on
filetype plugin on
filetype indent on

set nocompatible
set nofoldenable

" The current buffer can be put to the background without writing to disk;
" When a background buffer becomes current again, marks and undo-history are
" remembered.
set hidden

" By default, Vim only remembers the last 20 commands and search patterns
" entered. It’s nice to boost this up:
set history=1000

" By default, pressing <TAB> in command mode will choose the first possible
" completion with no indication of how many others there might be. The
" following configuration lets you see what your other options are:
set wildmenu

" To have the completion behave similarly to a shell, i.e. complete only up to
" the point of ambiguity (while still showing you what your options are), also
" add the following:
set wildmode=list:longest

" These two options, when set together, will make /-style searches
" case-sensitive only if there is a capital letter in the search expression.
" *-style searches continue to be consistently case-sensitive.
set ignorecase
set smartcase

" A running gvim will always have a window title, but when vim is run within
" an xterm, by default it inherits the terminal’s current title.
set title

" When the cursor is moved outside the viewport of the current window, the
" buffer is scrolled by a single line. Setting the option below will start the
" scrolling three lines before the border, keeping more context around where
" you’re working.
set scrolloff=3

" Intuitive backspacing in insert mode
set backspace=indent,eol,start

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

" The “Press ENTER or type command to continue” prompt is jarring and usually
" unnecessary. You can shorten command-line text and other info tokens with,
set shortmess=atI

" I Never, ever used background=light
set background=dark

" Automatically read a file again if it has been modified outside vim
" and not in the current session
set autoread

" Formatting, TextMate-style
nnoremap Q gqip

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" php
let php_htmlInStrings = 1 " use html syntax in strings
"" shell scripting
let highlight_function_name = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clickodrome binds
map  <C-s> :w!<CR>
imap <C-s> <Esc>:w!<CR>a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reselect visual block after indent/outdent
" http://vimbits.com/bits/20
vnoremap < <gv
vnoremap > >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Clear current search highlight
nnoremap <esc> :noh<return><esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" In zsh: bindkey "^F" edit-command-line, just colorize the tmp file
autocmd BufReadPost /tmp/zshecl* set filetype=zsh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set autoindent smartindent
set expandtab

function! Push_if_new(list, value) abort
  if !exists(a:list)
    exec "let " . a:list . " = ['" . a:value . "']"
  else
    call add (a:list, a:value)
  endif
  return a:list
endfunction

if &bg == "dark"
    hi HintHL cterm=bold ctermfg=white ctermbg=black guifg=blue3 guibg=white
else
    hi HintHL cterm=bold ctermfg=black ctermbg=white guifg=white guibg=blue3
endif

runtime plugins.vim
" Blink highlighted search results
runtime settings/hl-next.vim
runtime settings/backup-and-temp-stuff.vim

colorscheme janah
