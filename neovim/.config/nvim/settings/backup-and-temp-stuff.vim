" Swap files and backups are annoying but can save you a lot of trouble.
" Rather than spreading them all around your filesystem, isolate them to a
" single directory:
set backupdir=~/.cache/vim/tmp,~/.tmp,/var/tmp,/tmp
set directory=~/.cache/vim/tmp,~/.tmp/,/var/tmp,/tmp
set undodir=~/.cache/vim/tmp/undo,~/.tmp/undo/,/var/tmp/undo,/tmp/undo
set backup undofile

if !isdirectory("~/.cache/vim/tmp/undo")
    call mkdir($HOME."/.cache/vim/tmp/undo", "p", 0700)
endif

