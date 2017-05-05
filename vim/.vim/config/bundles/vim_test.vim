function! VagrantTransform(cmd) abort
  if empty(glob("Vagrantfile"))
    return a:cmd
  else
    return 'v '.shellescape(a:cmd)
  endif
endfunction

let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
let g:test#transformation = 'vagrant'
let test#strategy = 'neovim'
