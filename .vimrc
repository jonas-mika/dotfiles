" MY PERSONALISED VIM SETTINGS
"
" Author: Jonas-Mika Senghaas
" Github: jonas-mika

" Location: Copenhagen
" Last Modified: 17/03/2021

"------------PLUGINS--------------
call plug#begin('~/.vim/plugged')
    Plug 'vifm/vifm.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'mbbill/undotree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ap/vim-css-color'

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

" Delete newly written word
inoremap <C-b> <Esc>dvbi
 
" Remap Ctrl-Key-N for iterating over autosuggestions
" inoremap <S-j> <Down>
" inoremap <S-k> <Up>

" Simple Remaps of cursor movement
nnoremap w b
nnoremap e w

" Dealing with Buffers
nnoremap <silent> <leader>o :tabe 
nnoremap <silent> <leader>c :bw<CR> 
nnoremap <S-l> :bnext<cr>
nnoremap <S-h> :bprevious<cr>

" Save and Quit Vim
nnoremap <leader>q :q<cr>
nnoremap <leader>s :w<cr>
nnoremap <leader>sq :wq<cr>

" Add Semicolon to end of line and enter normal mode again
nnoremap <leader>v A;<Esc>

" Moving Lines up and down
vnoremap <S-n> :m '>+1<cr>gv
vnoremap <S-m> :m '<-2<cr>gv

" Remap copy and pasting out of/ into vim
noremap <leader>y "+y
noremap <leader>p "+p

" Clear the search highlight
map <silent> <leader><esc> :silent nohlsearch<CR> :echo "Quitted Search"<CR>

" Vifm Bindings
nnoremap <leader>fm :Vifm<CR>
nnoremap <leader>fs :VsplitVifm<CR>
nnoremap <leader>fh :HsplitVifm<CR>

" Nerdtree Bindings
nnoremap  <S-Tab> :UndotreeToggle<CR>

" NerdTree
map <leader><tab> :NERDTreeToggle<CR>

" Switch Color Theme
noremap :box :color gruvbox<CR> :set background=dark<CR> :echo "SwitchedColor: Gruvbox"<CR>
noremap :one :color one<CR> :set background=light<CR> :echo "Switched Color: One"<CR> 
noremap :kai :color monokai_pro<CR> :set background=dark<CR> :echo "Switched Color: Monokai Pro"<CR> 

" Coc Configs
let g:coc_global_extensions = ['coc-json', 'coc-snippets', 'coc-pyright', 'coc-java', 'coc-prettier', 'coc-emmet']

" Airline Configs
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Opening .config files
command Vimconfig :tabe /Users/jonassenghaas/.vimrc<CR>
command Zshconfig :tabe /Users/jonassenghaas/.zshrc<CR>


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
set nohlsearch

"Faster update time
set updatetime=300
set hidden

" Give more space for displaying messages.
set cmdheight=2

" Show line numbers
set relativenumber
set number
set signcolumn=yes

" Encoding
set encoding=utf-8

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

" Disable Dots for Whitespaces
set nolist

" Automatically save and load folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview"

set guitablabel=\[%N\]\ %t\ %M 
