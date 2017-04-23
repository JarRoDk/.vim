
"work without compatible in this way we will use all new way of vim 
set nocompatible

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
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree.git'
Plugin 'nginx.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

Plugin 'Tagbar'
" All of your Plugins must be added before the following line
call vundle#end()            " required


" Powerline for Ubuntu | pip install --user powerline-status
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

" Powerline for Centos | pip install --user powerline-status
set  rtp+=/usr/lib/python2.6/site-packages/powerline/bindings/vim/
set laststatus=2
let base16colorspace=256  " Access colors present in 256 colorspace"
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors"

set nocompatible              " be iMproved, required
filetype off                  " required

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

" don't pretend old good vi
set nocompatible 

" enable find files also in subfolders 

set path+=**

" Display all matching files when we tab complete 
" We can use ^x and then ^f to choice files in our repo by tab
" for example searching all .conf file we can use :find *.conf<tab>
set wildmenu

" enable netrw - stable vim neerdtree old feature, trying to check old embeded
" feature 
filetype plugin on

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


" when we will enter in insert mode number will show
function NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc
"this mapping is not neccesary ctrl+n is free in mapping during Ex-mode
"nnoremap <C-n> :call NumberToggle()<cr>

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
"function! WinMove(key)
"    let t:curwin = winnr()
"    exec "wincmd ".a:key
"    if (t:curwin == winnr())
"        if (match(a:key,'[jk]'))
"            wincmd v
"        else
"            wincmd s
"        endif
"        exec "wincmd ".a:key
"    endif
"endfunction

set nocompatible " not compatible with vi
set autoread " detect when a file is changed

" make backspace behave in a sane manner
set backspace=indent,eol,start


"use description below
let mapleader = ','

"set a map leader for more key combos for <Leader>maps for exampel 
":map <Leader>A oanother line <esc> 
":map <leader>A oanother line <esc> is also working with low litter you need
"to remember leader/Leader this same but A must be Uppercase, offcourse
"becasuse we set it
"mean:
",A 
"first liter is o like open insert mode in next line and insert another line
"and exit

" Tab control
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=2 " the visible width of tabs
set softtabstop=2 " edit as if the tabs are 4 characters wide
set shiftwidth=2 " number of spaces to use for indent and unindent
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


set showcmd " show cmd in right down 
set wrap " turn on wrapping 
set wrapmargin=8 " wrap line when coming within n characters from side
set linebreak " set soft wrapping
set showbreak="..."  "set soft elisis at breaking

"if we don't map ctrlp to ctrl+p it will be auto assigne to ctrl+p
"But for more clear situation i will set it
let g:ctrlp_map='<c-p>'

"show in search hiden files (.*)
let g:ctrlp_dotfiles=1

"*'g:ctrlp_working_path_mode'*
"When starting up, CtrlP sets its local working directory according to this
"variable: >
"  let g:ctrlp_working_path_mode = 'ra'
"<
"  c - the directory of the current file.
"  a - like "c", but only applies when the current working directory outside of
"      CtrlP isn't a direct ancestor of the directory of the current file.
"  r - the nearest ancestor that contains one of these directories or files:
"      .git .hg .svn .bzr _darcs
"  w - begin finding a root from the current working directory outside of CtrlP
"      instead of from the directory of the current file (default). Only applies
"      when "r" is also present.
"  0 or <empty> - disable this feature.
"
"Note #1: if "a" or "c" is included with "r", use the behavior of "a" or "c" (as
"a fallback) when a root can't be found.
"
"Note #2: you can use a |b:var| to set this option on a per buffer basis.
let g:ctrlp_working_path_mode = 'ra'

" CtrlP ignore patterns - ignor i don't know if i will use this custom ignore
"let g:ctrlp_custom_ignore = {
"            \ 'dir': '\.git$\|node_modules$\|\.hg$\|\.svn$',
"            \ 'file': '\.exe$\|\.so$'
"            \ }


" TEMPLATES 
" to run this you only enter in normal mode ,html and this html will be
" inserted and jjwwf>a will be between <body></body>

nnoremap ,html :-1read ~/.vim/templates/html.html<CR>jjwwf>a

" Tab navigation like Firefox.
nnoremap <S-Tab> :tabprevious<CR>
nnoremap <C-Tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
inoremap <C-Tab>   <Esc>:tabnext<CR>i
"inoremap <C-t>     <Esc>:tabnew<CR>

"nnoremap <C-Insert> :tabnew<CR>
"nnoremap <C-Delete> :tabclose<CR>

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

":nnoremap <C-S-t> :tabnew<CR>
":inoremap <C-S-t> <Esc>:tabnew<CR>
:inoremap <C-S-w> <Esc>:tabclose<CR>

autocmd VimEnter * tab all
"autocmd BufAdd * exe 'tablast | tabe "' . expand( "<afile") .'"' #error line
"( open two tabs at one tabcreate

nnoremap H gT
nnoremap L gt

set timeout timeoutlen=1000 ttimeoutlen=100
set <F13>=[27;5;9~
nnoremap <F13> gt
set <F14>=[27;6;9~
nnoremap <F14> gT

set showcmd
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set list


"add list choice scrooling by tab
set wildmenu
set wildmode=longest:full,full
"set wildmode=list:longest,full

" -------------------   ctags/tagbar SECTION ----------------------------------
" Based on https://z0mbix.io/2016/09/04/ctag-support-for-terraform/
" CtrlP
nnoremap <silent> <leader>o :CtrlP<CR>  
nnoremap <silent> <leader>t :CtrlPTag<cr>  
nnoremap <silent> <leader>b :CtrlPBuffer<cr>  
nnoremap <silent> <leader>l :CtrlPLine<cr>  
nnoremap <silent> <leader>b :TagbarToggle<CR>  
nnoremap <silent> ; :CtrlPBuffer<CR>

nnoremap <leader>f :ta<space>

"Auto open the TagBar when file is supported
"Firt bug when i use FileType not VimEnter like it is advices by tagbar it
"fail color coding and fail show tabar,
"https://github.com/majutsushi/tagbar/issues/60#issuecomment-4192010
"autocmd FileType * nested :call tagbar#autoopen(0) 
autocmd VimEnter * nested :call tagbar#autoopen(1)

let g:tagbar_compact = 1

let g:tagbar_type_ansible = {  
    \ 'ctagstype' : 'ansible',
    \ 'kinds' : [
    \ 't:tasks',
    \ 'h:hosts'
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_type_terraform = {  
    \ 'ctagstype' : 'terraform',
    \ 'kinds' : [
    \ 'r:resources',
    \ 'm:modules',
    \ 'o:outputs',
    \ 'v:variables',
    \ 'f:tfvars'
    \ ],
    \ 'sort' : 0
    \ }

let g:tagbar_type_make = {  
    \ 'kinds':[
    \ 'm:macros',
    \ 't:targets'
    \ ]
    \}

let g:tagbar_type_sh = {  
    \ 'kinds':[
    \ 'f:functions',
    \ 'c:constants'
    \ ]
    \}

let g:tagbar_type_markdown = {  
    \ 'ctagstype' : 'markdown',
    \ 'kinds' : [
    \ 'h:Heading_L1',
    \ 'i:Heading_L2',
    \ 'k:Heading_L3'
    \ ]
    \ }
" ctags/tagbar SECTION ----------------------------------
"
