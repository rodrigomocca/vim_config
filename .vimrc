"To enable file type detection"
filetype on
augroup Python_Javascript
	"the command below execute the script for the specific filetype
	autocmd FileType typescript source ~/.vim/filetypes/typescript.vim
	"the command below execute the script for the specific filetype
	autocmd FileType python source ~/.vim/filetypes/python.vim
augroup END

set path=.\**
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set wildmenu
set wildmode=list:longest,full
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
call plug#begin('~/.vim/plugged')

 " Themes
 Plug 'morhetz/gruvbox'
 Plug 'scrooloose/nerdtree'
 Plug 'neoclide/coc.nvim'
 Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
 Plug 'jiangmiao/auto-pairs'
 Plug 'tpope/vim-commentary'
 " IDE
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"
let mapleader=" "
let NERDTreeQuitOnOpen=1
let mapleader=" "
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :wq<CR>
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>z :FZF<CR>
nmap <Leader>t :tabnew<CR>:FZF<CR>
nmap <C-t> :tabNext<CR>
nmap <C-x> :tabclose<CR>


