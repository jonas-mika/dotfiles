" MY PERSONALISED VIM SETTINGS
"
" Author: Jonas-Mika Senghaas
" Github: jonas-mika

" Location: Copenhagen
" Last Modified: 17/03/2021

"------------PLUGINS--------------
call plug#begin('~/.vim/plugged')
    Plug 'jiangmiao/auto-pairs' 
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'mbbill/undotree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " Color Schemes
    Plug 'rakr/vim-one' " basic light/ dark colors
    Plug 'morhetz/gruvbox' " one of the most popular colors
    Plug 'phanviet/vim-monokai-pro' " standard sublime colors
call plug#end()

"--------------KEY REMAPPING---------------------
let mapleader=' '

" Remap Normal Mode 
inoremap <nowait> kj <Esc>
vnoremap <nowait> kj <Esc>

" Remap movement behavior with Leader Key
noremap <leader>l $
noremap <leader>j G
noremap <leader>k gg
noremap <leader>h ^
noremap <leader>ö A

" Add Functionality to delete newly written word
imap <S-b> <ESC>hdawa 

" Simple Remaps
nnoremap w b
nnoremap e w

" Toggle Undotree
nnoremap  <S-Tab> :UndotreeToggle<CR>

" Remap Switching between Tabs
nnoremap <S-k> :bnext<cr>
nnoremap <S-j> :bprevious<cr>

" Remap Opening Files in Vim
noremap <silent> <leader>o :tabe 

" Remap Quit
nnoremap <leader>q :q<cr>
" Remap Saving 
nnoremap <leader>s :w<cr>
" Remap Quit and Save
nnoremap <leader>sq :wq<cr>
" Add Semicolon to end of line and enter normal mode again
nnoremap <leader>v A;<Esc>

" Remap copy and pasting out of/ into vim
noremap <leader>y "+y
noremap <leader>p "+p

" Clear the search highlight
map <silent> <leader><esc> :silent nohlsearch<CR> :echo "Quitted Search"<CR>

" Switch Color Theme
noremap :box :color gruvbox<CR> :set background=dark<CR> :echo "SwitchedColor: Gruvbox"<CR>
noremap :one :color one<CR> :set background=light<CR> :echo "Switched Color: One"<CR> 
noremap :kai :color monokai_pro<CR> :set background=dark<CR> :echo "Switched Color: Monokai Pro"<CR> 


" NerdTree
map <leader><tab> :NERDTreeToggle<CR>

" coc config for auto-completion
let g:coc_global_extensions = ['coc-json', 'coc-snippets', 'coc-pyright', 'coc-java']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'


" --------BASIC SETTINGS-----------
"Stops Vim from making sounds
set noerrorbells 
set belloff=all

"Set Graphical Interface of Vim
colorscheme gruvbox 
set background=dark

highlight ColorColumn ctermbg=0 guibg=lightgrey

"Turn on syntax highlighting.
syntax on 

set smartindent 
set noswapfile
set nobackup
set undodir=/Users/jonassenghaas/.vim/undodir
set incsearch

"Faster update time
set updatetime=300
set hidden

" Give more space for displaying messages.
set cmdheight=2

" Show line numbers
" set relativenumber
set number

" Encoding
set encoding=utf-8

" SEARCH SETTINGS

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Display options
set showmode
set showcmd

" Fixes common backspace problems
set backspace=indent,eol,start

" Set compatibility to Vim only.
set nocompatible

" Helps force plug-ins to load correctly when it is turned back on below.
filetype off

" For plug-ins to load correctly.
filetype plugin indent on

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=79
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" 10 lines from top and bottom when scrolling
set scrolloff=10

" Status bar
set laststatus=2

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.


" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

set mouse=a
set title

" Display a confirmation dialog when closing an unsaved file.
set confirm 

" Enable Spellchecking
set spell

" Faster Rendering
set ttyfast

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

set guitablabel=\[%N\]\ %t\ %M 
