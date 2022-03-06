:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set hidden


filetype plugin indent on
autocmd BufNewFile,BufRead *.rs set filetype=rust

call plug#begin()
Plug 'tpope/vim-sensible' " Good Starting Point. load FIRSt
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'airblade/vim-gitgutter' " GitGutter Installation
Plug 'vim-airline/vim-airline-themes' " Vim Airline Themes
"Plug 'valloric/youcompleteme' " Text Completion
Plug 'ap/vim-css-color' " Show Color of Hex Values as text
Plug 'kien/rainbow_parentheses.vim' " Rainbow Parentheses for better highlighting
Plug 'pacha/vem-tabline' " Tabline!
Plug 'dag/vim-fish' " As I use Fish!
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " Go Development
Plug 'dense-analysis/ale'
Plug 'rust-lang/rust.vim'
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
call plug#end()

set encoding=UTF-8

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

"set completeopt-=preview " For No Previews
" Autocomplete (Rust)
let g:ale_linters = {'rust': ['analyzer']}
let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:rbpt_max = 16

:colorscheme meta5 
let g:airline_theme='base16_pop'
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '҂'
let g:vem_tabline_show = 2
let g:vem_tabline_show_number = 'index'
nmap <F8> :TagbarToggle<CR>

au VimEnter * RainbowParenthesesToggle

let mapleader = " " " I still like to use space as my leader key
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l
nnoremap <leader>h <C-w>h
nnoremap <leader>l <C-w>l

nnoremap <leader>f :NERDTreeFocus<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

set signcolumn=number
let python_highlight_all=1


