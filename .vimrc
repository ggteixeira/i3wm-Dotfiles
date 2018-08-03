"==== Meu VimRC ===="

set nocompatible              " be iMproved, required
filetype off                  " required

set number
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set textwidth=4
set expandtab
set autoindent
set fileformat=unix
syntax on                               " syntax highlight
set t_Co=256                                " set 256 colors
colorscheme industry  " set color scheme
set showmatch                               " shows matching part of bracket pairs (), [], {}
set enc=utf-8	                            " utf-8 by default
set hlsearch
set syntax=python
filetype plugin indent on
filetype plugin on
set smarttab


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" ==== plugin manager
Plugin 'VundleVim/Vundle.vim'

" ==== Autopair

Plugin 'jiangmiao/auto-pairs'

" ==== File Tree
Plugin 'scrooloose/nerdtree'

" ==== Syntax Helpers
" Plugin 'scrooloose/syntastic'

" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" ==== Color Schemes for Vim

Plugin 'gosukiwi/vim-atom-dark'
Plugin 'dylanaraps/wal.vim'

" ==== snippets

" ==== Status bar on bottom (Powerline/Airline)
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'powerline/powerline'

" let g:airline_solarized_bg='dark'
let g:airline_theme='wal'
let g:airline_powerline_fonts = 1 

" ==== lints

let g:pymode_lint=0

" ==== * ==== Python ==== * ==== * ====
Plugin 'klen/python-mode'

" Python-Syntax
Plugin 'vim-python/python-syntax'

let g:python_highlight_all = 1 
let g:python_highlight_string_formatting = 1
let g:Python3Syntax = 1


" All of your Plugins must be added before the following line
call vundle#end()            " required

" =====================================================
"" General settings
" =====================================================

"""""""""""" Start Powerline Settings """"""""""""""""

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme PaperColor              " set color scheme
    endif
endif

""""""""""" END of PowerLine Settings  """""""""""""""

"=====================================================
"" nerdtree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" # autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap <C-h> :NERDTreeToggle<CR>
map <C-\> :NERDTreeToggle<CR>

" Atalhos personalizados

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ==== Suporte ao VirtualEnv

py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

