" Blink highlighted search results
" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.1)<cr>zzzv
nnoremap <silent> N   N:call HLNext(0.1)<cr>zzzv
function! HLNext (blinktime)
  highlight WhiteOnRed ctermbg=red ctermfg=white
  let [bufnum, lnum, col, off] = getpos('.')
  let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
  let target_pat = '\c\%#'.@/
  let ring = matchadd('WhiteOnRed', target_pat, 101)
  redraw
  exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
  call matchdelete(ring)
  redraw
endfunction
