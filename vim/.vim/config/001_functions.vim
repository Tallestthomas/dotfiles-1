function! RangerExplorer()
  exec "term ranger --choosefile=/tmp/vim_ranger_current_file " . expand("%:p:h")
  if filereadable('/tmp/vim_ranger_current_file')
    exec 'edit ' . system('cat /tmp/vim_ranger_current_file')
    call system('rm /tmp/vim_ranger_current_file')
  endif
  redraw!
endfunction

function! DirvishRename(new_name)
  execute '!mv ' . getline('.') . ' %'  . a:new_name
endfunction

function! ProfileStart()
  profile start /tmp/vim_profile.log
  profile func *
  profile file *
endfunction

function! ProfileStop()
  profile pause
  noautocmd qall!
endfunction
