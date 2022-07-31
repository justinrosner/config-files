" Basic Vim config
" Uncomment the lines below for solarized (light theme)
"set background=light
"let g:solarized_termcolors=256
"colorscheme solarized
set background=dark
colorscheme gruvbox
set number relativenumber
syntax on
syntax enable
set showcmd
set showmatch
set encoding=UTF-8
set laststatus=2
set colorcolumn=80

" Disable annoying beeping
set noerrorbells
set belloff=all

" Tab settings
set expandtab
set shiftwidth=2
set tabstop=2
set smarttab
set autoindent
set smartindent
set softtabstop=2

" Show cursor line and column width
set cursorline

" Search settings
set ignorecase
set incsearch
set hlsearch
hi Search ctermbg=green

" Toggle NERDTree
nmap nt :NERDTreeToggle<CR>

" Indent guides enabled by default
"let g:indent_guides_enable_on_vim_startup = 1

" Autoload the Vim Plug manager
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Run PlugIntsall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" Add plugins
call plug#begin('~/.vim/plugged')
Plug 'tmsvg/pear-tree'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
call plug#end()
