"stdpath('data') . '/plugged'
call plug#begin()

Plug 'sirver/ultisnips'
Plug 'flazz/vim-colorschemes'
Plug 'chiendo97/intellij.vim'

call plug#end()

set background=light
colorscheme intellij
"let g:lightline.colorscheme='intellij'

" There's a bug somewhere between nvim and microsoft/terminal with somebody
" not properly setting the cursor so I always get a block cursor on nvim exit.
" As a workaround, set guicursor manually to ver/blinkon in all modes on nvim
" exit.
au VimLeave * set guicursor=a:ver1-blinkon1
