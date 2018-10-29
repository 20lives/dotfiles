"no vi compabilty
set nocompatible


"vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
Plug 'easymotion/vim-easymotion'
Plug 'tomasr/molokai'
Plug 'chrisbra/SudoEdit.vim'
Plug 'posva/vim-vue'
Plug 'w0rp/ale'

" Initialize plugin system
call plug#end()

"use molokai theme for terminal
colorscheme molokai
set t_Co=256
"use airline theme
let g:airline_theme='molokai'

"syntax highlighting and indent by filetype
syntax on
filetype indent on
filetype plugin on

" highlight current line
set cursorline
" highlight current column
set cursorcolumn

"show airline
set laststatus=2

"buffers on airline
let g:airline#extensions#tabline#enabled = 1

"show lines number
set number relativenumber

"current line highlighed
set cul

"utf-8 support
set fileencoding=utf-8
set encoding=utf-8

"set tabs width
set tabstop=2 shiftwidth=2 expandtab

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

"sudo write commands
command -bang -nargs=? W SudoWrite<bang> <args>
command -bang -nargs=? E SudoRead<bang> <args>
command -bang Q qall<bang>

imap <f2> <c-o>:call ToggleHebrew()<cr>
map <f2> :call ToggleHebrew()<cr>

func! ToggleHebrew()
	if &rl
		set norl
		set keymap=
	else
		set rl
		set keymap=hebrew_dvorak
	end
endfunc
