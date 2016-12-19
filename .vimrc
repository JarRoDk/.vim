" Powerline for Ubuntu | pip install --user powerline-status
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Powerline for Centos | pip install --user powerline-status
set  rtp+=/usr/lib/python2.6/site-packages/powerline/bindings/vim/
set laststatus=2
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
execute pathogen#infect()
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'jshint.vim'
Plugin 'ctrlp.vim'
"Plugin 'nerdtree'
"Plugin 'nerdtree-ack'  
"Plugin 'FindInNERDTree' 
Plugin 'scrooloose/nerdtree.git'
Plugin 'nginx.vim'





" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax enable
set background=dark

" recomended from Syntatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" By default, Syntastic does not check for errors when a file is loaded into
" Vim
let g:syntastic_always_populate_loc_list = 1

let g:syntastic_auto_loc_list = 1

" By default, Syntastic does not check for errors when a file is loaded into Vim
let g:syntastic_check_on_open = 1

" By default, Syntastic checks for errors whenever you save the file.
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

map <F2> :NERDTreeToggle<CR>

" Add syntatic lang 
au BufNewFile,BufRead *.yaml set filetype=yaml.ansible
au BufNewFile,BufRead *.yml set filetype=yaml.ansible


" when we use ctrl + n we will see numers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>

:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

let NERDTreeShowHidden=1

map <C-h> :call WinMove('h')<cr>
map <C-j> :call WinMove('j')<cr>
map <C-k> :call WinMove('k')<cr>
map <C-l> :call WinMove('l')<cr>

" Window movement shortcuts
" move to the window in the direction shown, or create a new window
function! WinMove(key)
    let t:curwin = winnr()
    exec "wincmd ".a:key
    if (t:curwin == winnr())
        if (match(a:key,'[jk]'))
            wincmd v
        else
            wincmd s
        endif
        exec "wincmd ".a:key
    endif
endfunction

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start

" set a map leader for more key combos
let mapleader = ','

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'

set clipboard=unnamed

" faster redrawing
set ttyfast

" code folding settings
set foldmethod=syntax " fold based on indent
set foldnestmax=10 " deepest fold is 10 levels
set nofoldenable " don't fold by default
set foldlevel=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set magic " Set magic on, for regex

set showmatch " show matching braces
set mat=2 " how many tenths of a second to blink

set encoding=utf8

set autoindent " automatically set indent of new line
set smartindent

set laststatus=2 " show the satus line all the time

let g:ctrlp_map='<leader>t'
let g:ctrlp_dotfiles=1
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns
let g:ctrlp_custom_ignore = {
            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
            \ 'file': '\.exe$\|\.so$'
            \ }

" search the nearest ancestor that contains .git, .hg, .svn
let g:ctrlp_working_path_mode = 2

" Tab navigation like Firefox.
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap <C-Insert> :tabnew<CR>
nnoremap <C-Delete> :tabclose<CR>

nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>

:nnoremap <C-S-t> :tabnew<CR>
:inoremap <C-S-t> <Esc>:tabnew<CR>
:inoremap <C-S-w> <Esc>:tabclose<CR>

autocmd VimEnter * tab all
autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"'

