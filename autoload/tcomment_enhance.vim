
function! tcomment_vim#toggle()
  let startlen = len(getline('.'))
  execute "normal gcc\<ESC>\<ESC>"
  let endlen = len(getline('.'))
  if endlen > startlen
    execute "normal! ll"
  else
    execute "normal! hh"
  endif
endfunction

function! tcomment_vim#togglelines()
  silent execute "normal! \<ESC>`>"
  let endLineNumber = line('.')
  silent execute "normal! `<"
  let startLineNumber = line('.')

  while startLineNumber != endLineNumber && len(getline('.')) == 0
    let startLineNumber = startLineNumber + 1
    silent execute "normal! \<Down>"
  endwhile
  silent execute "normal! v`>"
  silent execute "normal gc"
  silent execute "normal! `<v`>"
endfunction

