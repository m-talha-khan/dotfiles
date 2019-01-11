execute pathogen#infect()
syntax on
filetype plugin indent on

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=128 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

" Editing Behaviour
" -----------------
set showmode
set number
set ignorecase
set smartcase
set nowrap
set hlsearch
set incsearch
set scrolloff=4
set clipboard=unnamed
set autoread
"nnoremap <esc><esc> :noh<return>
autocmd InsertEnter * :let @/=""

" Disbale backup and and swap file 
" --------------------------------
set nobackup
set nowritebackup
set noswapfile
set nocompatible

"SuperTab
"________
let g:SuperTabDefaultCompletionType = "<c-X><c-o>"

" Python and Bash Run
nnoremap <F5> <Esc>:w<CR>:!clear;python %<CR>
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
imap <F6> <Esc>:w<CR>:!clear;bash %<CR>


" Nerd Tree bind Ctrl+<movement> keys to move around the window, instead of using Ctrl+w + <movement>
" _________________________________________________________________________________________
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <C-n> :NERDTreeToggle<CR>

"Nerd Tree
"---------
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Nerd Commenter
"_______________
nmap <C-_> 	<plug>NERDCommenterToggle
vmap <C-_> 	<plug>NERDCommenterToggle<CR>gv
inoremap <C-_> 	<C-o>:call NERDComment(0, 'toggle')<C-m>

"Jedi
"___
autocmd FileType python setlocal completeopt-=preview


"Neocomplete
"___________
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()


"colors scheme
"______________
colorscheme gotham256


"airline
"-------
let g:airline_theme='simple'
set background=dark
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#wordcount#enabled = 1
"let g:airline_left_sep=''
"let g:airline_right_sep=''

let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

