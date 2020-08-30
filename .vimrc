set nocompatible              " required
filetype off                  " required
set number
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" theming/colours
Plugin 'crusoexia/vim-dracula'
Plugin 'hhff/spacegrayeighties.vim'
Plugin 'morhetz/gruvbox'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'chriskempson/base16-vim'
Plugin 'rakr/vim-one'

" functionality
Plugin 'raimondi/delimitmate'
Plugin 'valloric/youcompleteme'     | " autocomplete
Plugin 'tpope/vim-fugitive'     | " git functionality within vim

" user interface
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'itchyny/lightline.vim'     |" powerline bar alternative
Plugin 'preservim/nerdtree'     | " dir tree
Plugin 'xuyuanp/nerdtree-git-plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set colors
colorscheme one
set bg=dark

nnoremap <silent> <F2> :NERDTreeToggle /home/augustus/<CR>
let g:NERDTreeNodeDelimiter = "\u00a0"
syntax on
set backspace=indent,eol,start
map <C-n> :NERDTreeToggle<CR>
" close vim if only window open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

"split navigations
autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
" unbind ex mode
nnoremap Q <Nop>
" run python
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"air-line
let g:airline_powerline_fonts = 1
let g:airline_theme='one'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" hide status in cmdline
set noshowmode
"unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" [FUNCTIONALITY]

set expandtab
set softtabstop=4
set number
set relativenumber
set cursorline
set textwidth=80
"set wrap
set linebreak
"set ruler
set showmatch
set incsearch
set ignorecase
set smartcase
set noswapfile      | " turn off swapfile for vim
set autoread            | " file monitoring
set termguicolors       | " enable 256 color for schemes
" kitty line fix
:let &t_ut=''

hi Normal guibg=NONE
hi Normal ctermbg=NONE
