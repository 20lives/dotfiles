"no vi compabilty
set nocompatible

"Vundle Plugins
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'easymotion/vim-easymotion'

call vundle#end()


"use molokai theme for terminal
set t_Co=256
colorscheme molokai
"use airline theme
let g:airline_theme='molokai'

"syntax highlighting and indent by filetype
syntax on
filetype indent on
filetype plugin on

"show airline
set laststatus=2

"buffers on airline
let g:airline#extensions#tabline#enabled = 1

"show lines number
	set relativenumber

"current line highlighed
set cul

"utf-8 support
set fileencoding=utf-8
set encoding=utf-8

"set tabs width
set ts=2 sts=2 sw=2 

"search case insesnitive
set ignorecase
"mark search results
set hlsearch
"new search on change
set incsearch
" replace all results in line by default
set gdefault

set autoindent

"make tabs and newlines visible
set list
set listchars=tab:▸\ 

"syntastic errors on airline
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_c_compiler_options = '-std=c99 -Wall -pedantic-errors -Werror -DNDEBUG'


"make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

"snippets location
let g:UltiSnipsSnippetDirectories=["~/.vim/bundle/vim-snippets/snippets"]

"ycm enable syntastic check
let g:ycm_show_diagnostics_ui = 0

"show hidden files in ctrlp
let g:ctrlp_show_hidden = 1

"line after 80 chars
set colorcolumn=80



