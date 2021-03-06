"""""""VUNDLE START """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

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
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""" YOUNGHYUN INSTALLED PLUGINS START """"""""""""""""""""
Plugin 'bruno-/vim-man'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'tomasr/molokai'
Plugin 'vim-syntastic/syntastic'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""" YOUNGHYUN VIM CONFIG """"""""""""""""""""
set modifiable
set ignorecase
set hlsearch
set incsearch
set autoindent
set cindent
set smartindent
syntax enable
set t_Co=256
filetype indent on
set background=dark
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""" KEY MAP """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"map <F3> <ESC>:cN<CR>
"map <F4> <ESC>:cn<CR>
map <F6> <ESC>:gr '\<<C-R><C-W>\>' -R *<CR>
map <F7> <ESC>:gr '\<<C-R><C-W>\>' `find ./ -name "*.h"`<CR>
map <F8> <ESC>:gr '\<<C-R><C-W>\>' `find ./ -name "*.c"`<CR>
vmap <Tab> >gv 
vmap <S-Tab> <gv 
map <S-k> <ESC>:Man <C-R><C-W> <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""" AIRLINE CONFIG """"""""""""""""""""
let g:tern_map_keys=1
let g:airline_theme='papercolor'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""" COLORSCHEME """"""""""""""""""""
colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""" SYNTASTIC START""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{exists('g:loaded_syntastic_plugin')?SyntasticStatuslineFlag():''}
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""".vimrc per project """"""""""""""""""""
set exrc
set secure
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set tags+=tags,/home/younghyun/usr/esp/esp-idf/tags
