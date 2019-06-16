if !exists('loaded_tcomment') & exists('loaded_tcomment_enhance')
  finish
endif

let loaded_tcomment_enhance = 1

let g:tcomment#blank_lines = 0

nmap <silent> <Leader>\ :call tcomment_enhance#toggle()<CR>
vmap <silent> <Leader>\ <ESC>:call tcomment_enhance#togglelines()<CR>
imap <silent> <Leader>\ <ESC>:call tcomment_enhance#toggle()<CR>a

