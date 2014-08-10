set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'elzr/vim-json'
Plugin 'Townk/vim-autoclose'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'kshenoy/vim-signature'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" disable autocomment insertion
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" switch syntax highlighting on, when the terminal has colors
syntax on

" use vim, not vi api
set nocompatible

" no backup files
set nobackup

" no write backup
set nowritebackup

" no swap file
set noswapfile

" command history
set history=100

" always show cursor
set ruler

" show underline
set cursorline

" show incomplete commands
set showcmd

" incremental searching
set incsearch

" highlight search
set hlsearch

" ignore case in search
set smartcase

" clear search buffer
:nnoremap § :nohlsearch<cr>

" make sure undo history is kept for files in buffer.
set hidden

" turn indentation on
filetype indent on

" enable filetype plugins
filetype plugin on

" disable folding because it is evil
set nofoldenable

" turn word wrap off
set nowrap

" scroll with more context
set scrolloff=10

" allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" convert tabs to spaces
set expandtab

" set tab size
set tabstop=2

" the number of spaces inserted for a tab
set shiftwidth=2

" turn on line numbers
set number

" highlight tailing whitespace
set list listchars=tab:\ \ ,trail:·

" get rid of the delay when pressing O (for example)
" http://stackoverflow.com/questions/2158516/vim-delay-before-o-opens-a-new-line
set timeout timeoutlen=1000 ttimeoutlen=100

" always show status bar
set laststatus=2

" set the status line to something useful
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" hide the toolbar
set guioptions-=T

" utf encoding
set encoding=utf-8

" autoload files that have changed outside of vim
set autoread

" open NerdTree if blank window
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Map Nerd tree to ctrl-n
map <C-n> :NERDTreeToggle<CR>

" Ignore for ctrlp
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'



let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


" Keybindings
inoremap <C-d> <Del>
