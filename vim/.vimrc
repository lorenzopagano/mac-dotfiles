" =========================================================
" Vim configuration
" =========================================================

set nocompatible
filetype off


" =========================================================
" Basic settings
" =========================================================

set number
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set hidden
set mouse=a

syntax on
filetype plugin indent on


" =========================================================
" Install vim-plug if missing
" =========================================================

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


" =========================================================
" Plugins
" =========================================================

call plug#begin('~/.vim/plugged')

" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Navigation
Plug 'preservim/nerdtree'

" Editing helpers
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
Plug 'godlygeek/tabular'

" Utilities
Plug 'DataWraith/auto_mkdir'
Plug 'edkolev/tmuxline.vim'

" Fuzzy finder (uses system fzf)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Syntax
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'elixir-lang/vim-elixir'
Plug 'gabrielelana/vim-markdown'
Plug 'slim-template/vim-slim'
Plug 'othree/html5.vim'

" Themes
Plug 'chriskempson/base16-vim'
Plug 'noahfrederick/vim-noctu'
Plug 'apeacox/vim-distinguished'

call plug#end()


" =========================================================
" Theme
" =========================================================

set background=dark
silent! colorscheme base16-tomorrow


" =========================================================
" Airline
" =========================================================

let g:airline_theme='base16'


" =========================================================
" NERDTree
" =========================================================

nnoremap <C-n> :NERDTreeToggle<CR>


" =========================================================
" FZF shortcuts
" =========================================================

nnoremap <C-p> :Files<CR>
nnoremap <leader>rg :Rg<CR>


" =========================================================
" Better searching
" =========================================================

set ignorecase
set smartcase
set incsearch
set hlsearch

" =========================================================
" Local overrides (not versioned)
" =========================================================

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif