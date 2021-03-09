" Plug
  "stdpath('data') . '/plugged'
  call plug#begin()

  Plug 'sirver/ultisnips'
  Plug 'flazz/vim-colorschemes'
  Plug 'itchyny/lightline.vim'
  Plug 'chiendo97/intellij.vim'
  Plug 'vim-syntastic/syntastic'

  call plug#end()

" Powerline setup (NVIM doesn't support powerline)
  "python3 from powerline.vim import setup as powerline_setup
  "python3 powerline_setup()
  "python3 del powerline_setup

" Setup
  set number
  set relativenumber

" Colorscheme stuff
  set termguicolors " enable true color support
  set background=light
  colorscheme intellij
  "let g:lightline.colorscheme='intellij'

  set colorcolumn=100,120
  highlight ColorColumn ctermbg=8

" Indentation
  set autoindent
  set smartindent
  set expandtab
  set smarttab
  set shiftround
  set shiftwidth=2
  set tabstop=2

  set smartcase
  " syntax enable

  set foldmethod=indent
  set foldlevel=2

" Mouse
  set mouse=a
  set scrollopt+=hor

  set splitbelow
  set splitright

" There's a bug somewhere between nvim and microsoft/terminal with somebody
" not properly setting the cursor so I always get a block cursor on nvim exit.
" As a workaround, set guicursor manually to ver-blinkon in all modes on nvim
" exit.
au VimLeave * set guicursor=a:ver1-blinkon1

