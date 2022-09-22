"VIM setting for C/C++ and python"

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugin for installing plugins"
Plugin 'VundleVim/Vundle.vim'

"Plugin for filesystems"
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim' 

"Plugin for html suppor"
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'suan/vim-instant-markdown'
Plugin 'nelstrom/vim-markdown-preview'

"Plugin for syntax checking"
Plugin 'nvie/vim-flake8'
Plugin 'vim-scripts/Pydiction'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'"
Plugin 'psf/black' "

"Plugin for auto-completion stuff"
Plugin 'python-mode/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'jayli/vim-easycomplete'
Plugin 'SirVer/ultisnips'

"Plugin for linting C++"
Plugin 'w0rp/ale'

"Plugin for code formattting"
Plugin 'tmhedberg/SimpylFold'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

"Plugin for python code formattting" 
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'valloric/python-indent'
Plugin 'sheerun/vim-polyglot'

"Plugin for colours"
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'

"Plugin for switching C++ Header"
Plugin 'derekwyatt/vim-fswitch'
Plugin 'derekwyatt/vim-protodef'

"Other vim plugins"
Plugin 'bling/vim-airline'                  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
Plugin 'rosenfeld/conque-term'              " Consoles as buffers
Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
Plugin 'flazz/vim-colorschemes'             " Colorschemes
Plugin 'arcticicestudio/nord-vim'           " Nord vim 
Plugin 'ericcurtin/CurtineIncSw.vim'

"Plugin for searching in files"
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }

"Plugin for git"
Plugin 'airblade/vim-gitgutter'

"Plugin for using git interface"
Plugin 'tpope/vim-fugitive'

Plugin 'drewtempelmeyer/palenight.vim'

call vundle#end()

""""""""""" Default Values  """"""""""""""""

set number

syntax on

"colorscheme default
colorscheme nord

"------------Start Python PEP 8 stuff----------------
" Number of spaces that a pre-existing tab is equal to.
au BufRead,BufNewFile *py,*pyw,*.c,*.h set tabstop=4

"spaces for indents
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
au BufRead,BufNewFile *.py set softtabstop=4

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characterstpope/vim-fugitive
au BufRead,BufNewFile *.py,*.pyw, set textwidth=100

" Use UNIX (\n) line endings.
au BufNewFile *.py,*.pyw,*.c,*.h set fileformat=unix

" Set the default file encoding to UTF-8:
set encoding=utf-8

" For full syntax highlighting:
let python_highlight_all=1
syntax on

" Keep indentation level from previous line:
autocmd FileType python set autoindent

" make backspaces more powerfull
set backspace=indent,eol,start

let g:AutoPairsShortcutToggle = '<C-P>'

"Folding based on indentation:
""" autocmd FileType python set foldmethod=indent
"use space to open folds
nnoremap <space> za 
"----------Stop python PEP 8 stuff--------------

"js stuff"
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

""""""""""" Start Powerline Settings """"""""""""""""

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

if has("syntax")
  syntax on
endif

augroup autoformat_settings
	autocmd FileType bzl AutoFormatBuffer buildifier
	autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer git-clang-format
	autocmd FileType dart AutoFormatBuffer dartfmt
	autocmd FileType go AutoFormatBuffer gofmt
	autocmd FileType gn AutoFormatBuffer gn
	autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
	autocmd FileType java AutoFormatBuffer google-java-format
	autocmd FileType python AutoFormatBuffer yapf
	autocmd FileType python AutoFormatBuffer autopep8
	autocmd FileType rust AutoFormatBuffer rustfmt
	autocmd FileType vue AutoFormatBuffer prettier
augroup END

"Plugin for prediciton"
let g:pydiction_location = expand('~/.vim/bundle/Pydiction/complete-dict')

"Setting for ale linters C/C++ and Python"
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'ruby': ['standardrb', 'rubocop'],
      \   'javascript': ['eslint'],
      \   'cpp': ['clang'], 'c': ['clang'],
      \}

let g:ale_fix_on_save = 0

"let g:ale_completion_enabled = 1"

let g:ale_set_highlights = 1

let g:airline#extensions#ale#enabled = 1

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

let g:ale_list_window_size = 5

"set background=dark
colorscheme nord

let g:airline_theme = "nord"

map <F5> :call CurtineIncSw()<CR>

hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan

au filetype vimwiki silent! iunmap <buffer> <Tab>
