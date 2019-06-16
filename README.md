# tcomment-enhance

A tcomment_vim's plugin to enhance toggle

## What does this plugin enhance for

tcomment use keymap `gc` and `gcc` to toggle one line and selected code,
but it will also add comment to empty line. tcomment provide a way to
prevent this happen:

```vimscript
let g:tcomment#blank_lines = 0
```

but it will make `gcc` gets wrong when the selected block code's first
line is empty, it will always be comment adding instead of toggle, so I write this plugin to fix this problem.

## Install

add this plugin next to tcomment_vim:

```vimscript
" Vundle
Plugin 'tomtom/tcomment_vim'
Plugin 'clark-t/tcomment-enhance'

" or vim-plug
Plug 'tomtom/tcomment_vim'
Plug 'clark-t/tcomment-enhance'
```

## Usage

Just enhance the performance of `gc` and `gcc`, so type it as usual.

