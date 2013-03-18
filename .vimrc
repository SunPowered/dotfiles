" TvB Vimrc File

filetype off
set nocompatible	"use Vim defaults
call pathogen#infect()
syntax enable
filetype plugin indent on

let mapleader = ","	"Remap the leader to ','
let maplocalleader = "-" 

colorscheme kolor

"  Automatically reload .vimrc when it is saved
au BufWritePost .vimrc so ~/.vimrc

set ls=2		"always show status line
set number		"show line numbers
set title		"show title in console
set ruler		"show the cursor position always

set tabstop=4		"number of spaces in tab character
set shiftwidth=4	"number of spaces to indent
set scrolloff=3		"keep lines while scrolling

set showcmd		"show incomplete commands
set hlsearch		"highlight search results
set incsearch		"incremental searching

set nobackup		"do not keep a backup file
set ttyfast		"smoother changes
set noswapfile	"Disable swap files

" Map Ctrl+<direction> to the window operations
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Make Y behave as other capitals
map Y y$

" Retain visual during block indent/outdent
vnoremap < <gv
vnoremap > >gv

" Improve up/down movement of wrapped lines
nnoremap j gj
nnoremap k gk

nnoremap gj j
nnoremap gk k

" Insert mode bash escape"
inoremap jk <Esc>
inoremap kj <Esc>


noremap <leader>d dd
noremap <leader>c ddO

" SuperTab completion

" Python specific
autocmd FileType python set foldmethod=indent	"Folding python blocks through indentation"
autocmd FileType python set foldlevel=99	"Go up to 99 levels deep"
autocmd FileType python map <leader>td <Plug>TaskList
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python let g:SuperTabDefaultCompletionType = "context"

py << EOF
import os.path
import sys
import vim
if "VIRTUAL_ENV" in os.environ:
	project_base_dir = os.environ["VIRTUAL_ENV"]
	sys.path.insert(0, project_base_dir)
	activate_this = os.path.join(project_base_dir, "bin/activate_this.py")
	execfile(activate_this, dict(__file__=activate_this))
EOF
" NERDTree
" cd ~/.vim/bundle
" git clone https://github.com/scrooloose/nerdtree.git
map <leader>n :NERDTreeToggle<CR>
hi Directory ctermfg=red

" MiniBuffExplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
