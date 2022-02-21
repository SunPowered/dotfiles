" TvB Vimrc File

set nocompatible	"use Vim defaults
let mapleader = ","	"Remap the leader to ','
let maplocalleader = "-" 

" FIXME: Find a nice color scheme  
colorscheme koehler

"  Automatically reload .vimrc when it is saved
au BufWritePost .vimrc so ~/.vimrc
" Map Ctrl+<direction> to the window operations
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-h> <C-w>h
" map <C-l> <C-w>l

" Retain visual during block indent/outdent
" vnoremap < <gv
" vnoremap > >gv

" Improve up/down movement of wrapped lines
" nnoremap j gj
" nnoremap k gk

" nnoremap gj j
" nnoremap gk k

" Insert mode bash escape"
" inoremap jk <Esc>
" inoremap kj <Esc>

" noremap <leader>d dd
" noremap <leader>c ddO

" Setup vim-plug package manager
"
" Autoinstall vim-plug if it doesnt exist
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Include all personal plugins here, vim-plug will keep them updated
call plug#begin()
" https://github.com/junegunn/vim-plug#example
" Note: You can set a custom plugin directory by passing it to the #begin()

Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
" Init plugin system
call plug#end()
" MiniBuffExplorer
" let g:miniBufExplMapWindowNavVim = 1
" let g:miniBufExplMapWindowNavArrows = 1
" let g:miniBufExplMapCTabSwitchBufs = 1
" let g:miniBufExplModSelTarget = 1
