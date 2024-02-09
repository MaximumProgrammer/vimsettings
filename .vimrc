" (N)Vim Configuration File
" vim  : place in $HOME/.vimrc
" nvim : place in $HOME/.config/nvim/init.vim
" $ ln -s $HOME/.config/nvim/init.vim $HOME/.vimrc
" General settings
" https://learnvimscriptthehardway.stevelosh.com/
" ---------------------------------------------------------------------------
" drop vi support - kept for vim compatibility but not needed for nvim
" Probably not needed with Vim 8+
set nocompatible

" Search recursively downward from CWD; provides TAB completion for filenames
" e.g., `:find vim* <TAB>`
set path+=**

" number of lines at the beginning and end of files checked for file-specific vars
set modelines=0

" reload files changed outside of Vim not currently modified in Vim (needs below)
set autoread

" http://stackoverflow.com/questions/2490227/how-does-vims-autoread-work#20418591
au FocusGained,BufEnter * :silent! !

" Grep settings
set grepprg=grep\ -n\ $*

" use Unicode
set encoding=utf-8

" errors flash screen rather than emit beep
set visualbell

" make Backspace work like Delete
set backspace=indent,eol,start

" don't create `filename~` backups
set nobackup

" don't create temp files
set noswapfile

"no bells
set noerrorbells
set novisualbell

" line numbers and distances
"set relativenumber 
set number 

set shell=/bin/sh

" number of lines offset when jumping
set scrolloff=2

" Tab key enters 2 spaces
" To enter a TAB character when `expandtab` is in effect,
" CTRL-v-TAB
set expandtab tabstop=2 shiftwidth=2 softtabstop=2 

" Indent new line the same as the preceding line
set autoindent

" statusline indicates insert or normal mode
set showmode showcmd

" make scrolling and painting fast
" ttyfast kept for vim compatibility but not needed for nvim
set ttyfast lazyredraw

" highlight matching parens, braces, brackets, etc
set showmatch

" Moving withthe mouse
" set mouse=a

" http://vim.wikia.com/wiki/Searching
set hlsearch incsearch ignorecase smartcase

" As opposed to `wrap`
set nowrap

" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
set autochdir

" open new buffers without saving current modifications (buffer remains open)
set hidden

" http://stackoverflow.com/questions/9511253/how-to-effectively-use-vim-wildmenu
set wildmenu wildmode=list:longest,full

" StatusLine always visible, display full path
" http://learnvimscriptthehardway.stevelosh.com/chapters/17.html
set laststatus=2 statusline=%F

" Use system clipboard
" http://vim.wikia.com/wiki/Accessing_the_system_clipboard
" for linux
set clipboard=unnamedplus
" for macOS
set clipboard=unnamed

" Folding
" https://vim.fandom.com/wiki/Folding
" https://vim.fandom.com/wiki/All_folds_open_when_opening_a_file
" https://stackoverflow.com/questions/8316139/how-to-set-the-default-to-unfolded-when-you-open-a-file
set foldmethod=indent
set foldnestmax=1
set foldlevelstart=1

" netrw and vim-vinegar
let g:netrw_browse_split = 3

" Plugins, syntax, and colors
" ---------------------------------------------------------------------------
" vim-plug
" https://github.com/junegunn/vim-plug
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'" Make sure to use single quotes
" Install with `:PlugInstall`

" https://github.com/VundleVim/Vundle.vim
Plugin 'VundleVim/Vundle.vim'

" https://github.com/itchyny/lightline.vim
Plugin 'itchyny/lightline.vim'

"https://github.com/maximbaz/lightline-ale
Plugin 'maximbaz/lightline-ale'

" https://github.com/tpope/vim-commentary
Plugin 'tpope/vim-commentary'

" https://github.com/tpope/vim-vinegar
Plugin 'tpope/vim-vinegar'

" https://github.com/APZelos/blamer.nvim
Plugin 'APZelos/blamer.nvim'

" https://github.com/zivyangll/git-blame.vim
Plugin 'zivyangll/git-blame.vim'

" https://github.com/fenetikm/falcon/wiki/Installation
Plugin 'fenetikm/falcon'

" https://github.com/romainl/vim-qf
Plugin  'romainl/vim-qf'

" https://github.com/macguirerintoul/night_owl_light.vim
Plugin 'macguirerintoul/night_owl_light.vim'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
Plugin 'frazrepo/vim-rainbow'

Plugin 'tomasr/molokai'

" https://github.com/preservim/tagbar
Plugin 'preservim/tagbar'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plugin 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plugin 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plugin 'SirVer/ultisnips' | Plugin 'honza/vim-snippets'

" On-demand loading
Plugin 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plugin 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plugin 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
"
" Navigate in the Filesytem with vim
"Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons
Plugin 'scrooloose/nerdtree'                      " Project and file navigation
Plugin 'jistr/vim-nerdtree-tabs'                  " Improving NerdTree 

" Editorconfig with vim
Plugin 'editorconfig/editorconfig-vim'
" Initialize plugin system
"
" Colorscheme nightfox
" https://github.com/EdenEast/nightfox.nvim
Plugin 'EdenEast/nightfox.nvim' 

" Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
" https://github.com/sindrets/diffview.nvim

" Tabs for vim
" Tabs, as understood by any other editor.
" Plugin 'kyazdani42/nvim-web-devicons'
Plugin 'romgrk/barbar.nvim'

" Fast transitions on project files
Plugin 'kien/ctrlp.vim'            

" Float term window in vim
Plugin 'voldikss/vim-floaterm'

" Using tabs in your project
Plugin 'ervandew/supertab' 

" Lean & mean status/tabline for vim
" Plug 'vim-airline/vim-airline'                  

" Formatting your code just online
Plugin 'rhysd/vim-clang-format'                   

" Better synatax highlighting
Plugin 'octol/vim-cpp-enhanced-highlight'         
" Plugin 'bfrg/vim-cpp-modern'

" Powerline fonts plugin
Plugin 'Lokaltog/powerline'                       

" Pending tasks list
Plugin 'fisadev/FixedTaskList.vim'                

" Consoles as buffers
Plugin 'rosenfeld/conque-term'                    

" Parentheses, brackets, quotes, XML tags, and more
Plugin 'tpope/vim-surround'                       

" Open a file with the according name  
Plugin 'bogado/file-line'               

" Plugin for handling a tasklist
Plugin 'irrationalistic/vim-tasks'                

" Plugin for copying from selection like html browser
Plugin 'georgejdanforth/vim-clip'                 

" Plugin for having icons
"Plugin 'ryanoasis/vim-devicons'                   

"-------------------=== Python  ===-----------------------------
" Syntax checking plugin for Vim
Plugin 'scrooloose/syntastic'                     

" A static syntax and style checker for Python source code
Plugin 'nvie/vim-flake8'                          

" Pydiction allows you to Tab-complete Python code in Vim such as keywords
Plugin 'vim-scripts/Pydiction'                    

" Fixes a bug
Plugin 'vim-scripts/indentpython.vim'             

" Python code formatter
Plugin 'psf/black'                                 

" Awesome Python autocompletion with VIM
Plugin 'davidhalter/jedi-vim'                     

"-------------------=== C/C++ ===-------------------  
" Having clang completion in your code  
Plugin 'rip-rip/clang_complete'

" Togggling between c and h file
Plugin 'ericcurtin/CurtineIncSw.vim'              

" Linter for clang errros
Plugin 'w0rp/ale'                                 

" For switching between c and header fils
Plugin 'derekwyatt/vim-fswitch'                   

" This Vim plugin will pull C++ ptototypes into the implementation file 
Plugin 'derekwyatt/vim-protodef'                  
 
"-------------------=== Code Formatting ===-------------------
Plugin 'tmhedberg/SimpylFold'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

"-------------------=== Plugin for Git Integration ===-------------------
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'lambdalisue/nerdfont.vim'
Plugin 'lambdalisue/glyph-palette.vim'
"Plug 'lambdalisue/fern-renderer-nerdfont.vim'

"-------------------=== Completion Framework  ===-------------------   
if has('nvim')
   Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
   "Plug 'bbchung/Clamp'
else
   Plugin 'Shougo/deoplete.nvim'
   Plugin 'roxma/nvim-yarp'
   Plugin 'roxma/vim-hug-neovim-rpc'
endif
Plugin 'deoplete-plugins/deoplete-jedi'           " Using deoplete with vim

" Nord Color Scheme
Plugin 'arcticicestudio/nord-vim'
Plugin 'kamwitsta/nordisk'

"Start Up Screen"
Plugin 'mhinz/vim-startify'

" For switching between source and header files
Plugin 'vim-scripts/SwitchExt'

" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call vundle#end()

"" Light scheme
" colorscheme night_owl_light

" Dark scheme
colorscheme nord
set background=dark

" lightline config - add file 'absolutepath'
" Delete colorscheme line below if using Dark scheme

let g:lightline = {
      \ 'colorscheme': 'nordisk',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'absolutepath', 'filename', 'modified' ] ],
      \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
      \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex'] ] }
      \ ,
      \ 'component_function': {
      \   'gitbranch': 'FugitiveHead',
      \    'lineinfo': 'LightlineLineinfo' 
      \ },
      \ 'linter_warnings': 'warning',
      \ 'linter_errors': 'error', 
      \ 'linter_ok': 'custom#lightline#coc_diagnostic_ok',
      \ 'asyncrun_status': 'lightline#asyncrun#status' 
\ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"

"=====================================================
"" GIT Blamer
"=====================================================

let g:blamer_enabled = 0
" %a is the day of week, in case it's needed
let g:blamer_date_format = '%e %b %Y'
highlight Blamer guifg=darkorange
" nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>

"=====================================================
"" Telescope
"=====================================================

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"=====================================================
"" Barbar
"=====================================================

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" New tabs are opened next to the currently selected tab.
" Enable to insert them in buffer number order.
let bufferline.add_in_buffer_number_order = v:false

" Enable/disable animations
let bufferline.animation = v:true

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:false

" Enable/disable current/total tabpages indicator (top right corner)
let bufferline.tabpages = v:true

" Enable/disable close button
let bufferline.closable = v:true

" Enables/disable clickable tabs
"  - left-click: go to buffer
"  - middle-click: delete buffer
let bufferline.clickable = v:true

" Excludes buffers from the tabline
let bufferline.exclude_ft = ['javascript']
let bufferline.exclude_name = ['package.json']

" Enable/disable icons
" if set to 'buffer_number', will show buffer number in the tabline
" if set to 'numbers', will show buffer index in the tabline
" if set to 'both', will show buffer index and icons in the tabline
let bufferline.icons = v:false

" Sets the icon's highlight group.
" If false, will use nvim-web-devicons colors
let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = '▎'
let bufferline.icon_separator_inactive = '▎'
let bufferline.icon_close_tab = 'X'
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the end of the list.
" Default is to insert after current buffer.
let bufferline.insert_at_end = v:false

" Sets the maximum padding width with which to surround each tab.
let bufferline.maximum_padding = 4

" Sets the maximum buffer name length.
let bufferline.maximum_length = 30

" If set, the letters for each buffer in buffer-pick mode will be
" assigned based on their name. Otherwise or in case all letters are
" already assigned, the behavior is to assign letters in order of
" usability (see order below)
let bufferline.semantic_letters = v:true

" New buffer letters are assigned in this order. This order is
" optimal for the qwerty keyboard layout but might need adjustement
" for other layouts.
let bufferline.letters =
  \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" Sets the name of unnamed buffers. By default format is "[Buffer X]"
" where X is the buffer number. But only a static string is accepted here.
let bufferline.no_name_title = v:null
" settting undo file

"=====================================================
"" Vim Backup Files
"=====================================================
"
if has('nvim')
    set undodir=~/.vim/undodir/nvim
    set undofile
else
    set undodir=~/.vim/undodir
    set undofile
endif

set clipboard+=unnamed

set termguicolors

"=====================================================
"" ALE Linter
"=====================================================
" This belongs to the ALE Linter but should be on the beginning

set completeopt=menu,menuone,preview,noselect,noinsert

"=====================================================
"" Powerline Settings
"=====================================================

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8

if !has('gui_running')
  set t_Co=256
endif

set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme nord           " set color scheme
    endif
endif

"=====================================================
"" ALE Linter
"=====================================================
" This belongs to the ALE Linter but should be on the beginning

set completeopt=menu,menuone,preview,noselect,noinsert

"=====================================================
"" Powerline Settings
"=====================================================

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8

if !has('gui_running')
  set t_Co=256
endif

set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme nord            " set color scheme
    endif
endif

set noshowmode
set laststatus=2

"=====================================================
"" TaskManager
"=====================================================

map <F5> :call CurtineIncSw()<CR>

hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan

au filetype vimwiki silent! iunmap <buffer> <Tab>

let maplocalleader="\<space>"
let g:TasksMarkerBase = '☐'
let g:TasksMarkerInProgress = '»'
let g:TasksMarkerDone = '✔'
let g:TasksMarkerCancelled = '✘'
let g:TasksDateFormat = '%Y-%m-%d %H:%M'
let g:TasksAttributeMarker = '@'
let g:TasksArchiveSeparator = '＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿'

"=====================================================
"" PyMode settings
"=====================================================

" python executables for different plugins
let g:pymode_python='python'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_key='K'

" lints
let g:pymode_lint=0

autocmd BufWritePost *.py call flake8#Flake8()

let g:flake8_show_quickfix=0  " don't show
"let g:flake8_show_in_file=1

let g:flake8_error_marker='EE'     " set error marker to 'EE'
let g:flake8_warning_marker='WW'   " set warning marker to 'WW'

" autosave with black needs another python version
" autocmd BufWritePost *.py execute ':Black'

let g:pymode_virtualenv=1
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all
let g:pydiction_location = expand('~/.vim/bundle/Pydiction/complete-dict')
let g:pymode_folding=0
let g:pymode_indent=1
let g:pymode_run=1
let g:pymode_run_bind='<F6>'
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

"=====================================================
"" Syntastic Settings
"=====================================================

let g:syntastic_python_checkers = ['flake8']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_loc_list_height = 5
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_python_exec='python'

" syntatisc c++ settings
let g:syntastic_cpp_checkers = ['cpplint','cppclear']
let g:syntastic_c_checkers = ['cpplint','cppclear']
let g:syntastic_cpp_cpplint_exec = 'cpplint'

" The following two lines are optional. Configure it to your liking!
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" syntastic general settings
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'

"=====================================================
"" C++ Clang Completion
"=====================================================

let g:clang_use_library      = 1
let g:clang_auto_select      = 0
let g:clang_complete_auto    = 1
let g:clang_complete_copen   = 1
let g:clang_complete_macros  = 1
let g:clang_complete_patters = 1
set completeopt=menu,longest

" CentOS
let g:clang_library_path = '/opt/rh/llvm-toolset-11.0/root/usr/lib64/libclang.so.11'
" Ubuntu
"let g:clang_library_path = '/usr/lib/x86_64-linux-gnu/libclang-14.so.1'
let g:clang_auto_user_options='path, .clang_complete'
let g:clang_snippets_engine = 'clang_complete'

"=====================================================
"" Deoplate Clang Completion
"=====================================================

let g:deoplete#enable_at_startup = 1

call deoplete#custom#option('ignore_sources', {'_': ['around', 'buffer']})
call deoplete#custom#option("num_processes", 4)
call deoplete#custom#var('auto_complete_delay', 250)
call deoplete#custom#source('_', 'max_menu_width', 80)

set completeopt=menu,menuone
set completeopt+=noselect

"=====================================================
"" Deoplate Clang X
"=====================================================

call deoplete#custom#var('clangx', 'clang_binary', '/opt/rh/llvm-toolset-11.0/root/usr/bin/clang')
call deoplete#custom#var('clangx', 'default_c_options', '-std=c++17 -Wall -Wextra -Wshadow')
call deoplete#custom#var('clangx', 'default_cpp_options', '-std=c++17 -Wall -Wextra -Wshadow')

"=====================================================
"" Deoplate Python
"=====================================================

"Plz install pip3 install --user pynvim"

"sudo pip3 install pynvim"
"pip3 install --user jedi
let g:deoplete#enable_at_startup = 1

if has('pythonx')
    set pyxversion=3
endif

"=====================================================
"" Python PEP 8 stuff
"=====================================================

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

" CppCheck
" autocmd BufWritePre *.cpp,*.hpp,*.c,*.h !cppcheck %
"cppcheck --enable=all test.cpp

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

:hi Normal ctermfg=white ctermbg=black

"Rainbow colors"

"au FileType c,cpp,objc,objcpp call rainbow#load()

let g:rainbow_active = 1

"=====================================================
"" CTRL P
"=====================================================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"=====================================================
"" Vim Tabline
"=====================================================

nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)

let g:buffet_always_show_tabline =1
let g:buffet_powerline_separators=1
let g:buffet_separator=" "
let g:buffet_show_index=1

"=====================================================
"" Vim Clang Code Formattting
"=====================================================

let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11",
            \ "BreakBeforeBraces" : "Stroustrup"}

"=====================================================
"" ALE Linter
"=====================================================
"

      "\  'cpp': ['clang, gcc'], 'c': ['clang, gcc'],
      "\  'cpp': ['clang, clangtidy'], 'c': ['clang, clangtidy'], 
      " \  'cpp': ['cppcheck'], 'c': ['cppcheck'],  

let g:ale_fixers = {
                \ 'python': ['add_blank_lines_for_python_control_statements',
                \            'autopep8', 'isort', 'yapf', 'black'],
                \ 'cpp': ['clang-format', 'cppcheck']
                \}

let g:ale_c_cppcheck_executable = 'cppcheck'
let g:ale_c_cppcheck_options = ''
let g:ale_echo_cursor = 1
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_format = '%s'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_fixers = {}
let g:ale_keep_list_window_open = 0
let g:ale_lint_delay = '400'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'always'
let g:ale_linter_aliases = {}
let g:ale_linters = {'javascript': ['eslint'], 'vim': ['vint'],  'c': ['clang','cppcheck'], 'tex': [], 'bash': ['shellcheck'], 'cpp': ['clang','cppcheck'], 'text': [], 'python': ['flake8','pyline'], 'ruby': ['standardrb', 'rubocop'], 'css': []}
let g:ale_open_list = 0
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = '>>'
let g:ale_sign_offset = 1000000
let g:ale_sign_warning = '--'
let g:ale_statusline_format = ['%d error(s)', '%d warning(s)', 'OK']
let g:ale_warn_about_trailing_whitespace = 1


" Disable warnings about trailing whitespace for Python files.
let b:ale_warn_about_trailing_whitespace = 0

" https://github.com/dense-analysis/ale/issues/2507
let g:ale_list_window_size = 5


let opts = '-std=c++17 -Wall -Wextra -Wshadow -isystem /usr/include/c++/v1 -I/usr/include/c++/v1 -I/usr/local/include -I/usr/include -I/usr/include/x86_64-linux-gnu'
let g:ale_c_build_dir_names = ['build', 'bin','.','output_ninja*']                                         
let g:ale_c_parse_makefile = 1      
let g:ale_cpp_cc_options    = opts
let g:ale_cpp_gcc_options   = opts
let g:ale_cpp_clang_options = opts
let g:ale_c_cppcheck_executable = 'cppcheck'
let g:ale_c_cppcheck_options = '--enable=all --template=cppcheck1'
let g:ale_cpp_cppcheck_options = '--enable=all --template=cppcheck1'
let g:ale_c_gcc_executable = 'gcc'
let g:ale_c_gcc_options = '-std=c11 -Wall'
let g:ale_cache_executable_check_failures = v:null
let g:ale_change_sign_column_color = 0
let g:ale_command_wrapper = ''
let g:ale_completion_delay = v:null
let g:ale_completion_enabled = 0
let g:ale_completion_max_suggestions = v:null
let g:ale_echo_cursor = 1
let g:ale_echo_msg_info_str = 'Info'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_enabled = 1
let g:ale_fix_on_save = 0
let g:ale_fixers = {}
let g:ale_history_enabled = 1
let g:ale_history_log_output = 1
let g:ale_keep_list_window_open = 0
let g:ale_lint_delay = 150
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linter_aliases = {}
let g:ale_linters_explicit = 0
let g:ale_list_vertical = 0
let g:ale_list_window_size = 5
let g:ale_lsp_root = {}
let g:ale_max_buffer_history_size = 20
let g:ale_max_signs = -1
let g:ale_maximum_file_size = v:null
let g:ale_open_list = 0
let g:ale_pattern_options = v:null
let g:ale_pattern_options_enabled = v:null
let g:ale_set_balloons = 0
let g:ale_set_highlights = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
let g:ale_set_signs = 1
let g:ale_sign_column_always = 0
let g:ale_sign_info = 'ⓘ'
let g:ale_sign_offset = 1000000
let g:ale_sign_style_error = '✖'
let g:ale_sign_style_warning = '⚠'
let g:ale_statusline_format = v:null
let g:ale_type_map = {}
let g:ale_use_global_executables = v:null
let g:ale_virtualtext_cursor = 0
let g:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors 

    return l:counts.total == 0 ? 'OK' : printf(
        \   '%d⨉ %d⚠ ',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=%{LinterStatus()}

"=====================================================
"" Float Term 
"=====================================================

let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9

"=====================================================
"" Syntax Highlighting vim-cpp-enhanced-highlight
"=====================================================

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1


"=====================================================
"" Startify Header 
"=====================================================


let s:header = [
\ '            :h-                                  Nhy`                  ',
\ '           -mh.                           h.    `Ndho                  ',
\ '           hmh+                          oNm.   oNdhh                  ',
\ '          `Nmhd`                        /NNmd  /NNhhd                  ',
\ '          -NNhhy                      `hMNmmm`+NNdhhh                  ',
\ '          .NNmhhs              ```....`..-:/./mNdhhh+                  ',
\ '           mNNdhhh-     `.-::///+++////++//:--.`-/sd`                  ',
\ '           oNNNdhhdo..://++//++++++/+++//++///++/-.`                   ',
\ '       y.   `mNNNmhhhdy+/++++//+/////++//+++///++////-` `/oos:         ',
\ '  .    Nmy:  :NNNNmhhhhdy+/++/+++///:.....--:////+++///:.`:s+          ',
\ ' h-   dNmNmy oNNNNNdhhhhy:/+/+++/-         ---:/+++//++//.`            ',
\ ' hd+` -NNNy`./dNNNNNhhhh+-://///    -+oo:`  ::-:+////++///:`           ',
\ ' /Nmhs+oss-:++/dNNNmhho:--::///    /mmmmmo  ../-///++///////.          ',
\ '  oNNdhhhhhhhs//osso/:---:::///    /yyyyso  ..o+-//////////:/.         ',
\ '   /mNNNmdhhhh/://+///::://////     -:::- ..+sy+:////////::/:/.        ',
\ '     /hNNNdhhs--:/+++////++/////.      ..-/yhhs-/////////::/::/`       ',
\ '       .ooo+/-::::/+///////++++//-/ossyyhhhhs/:///////:::/::::/:       ',
\ '      -///:::::::////++///+++/////:/+ooo+/::///////.::://::---+`       ',
\ '      /////+//++++/////+////-..//////////::-:::--`.:///:---:::/:       ',
\ '      //+++//++++++////+++///::--                 .::::-------::       ',
\ '       :/++++///////////++++//////.                -:/:----::../-      ',
\ '       -/++++//++///+//////////////               .::::---:::-.+`      ',
\ '      `////////////////////////////:.            --::-----...-/        ',
\ '        -///://////////////////////::::-..      :-:-:-..-::.`.+`       ',
\ '         :/://///:///::://::://::::::/:::::::-:---::-.-....``/- -      ',
\ '           ::::://::://::::::::::::::----------..-:....`.../- -+oo/    ',
\ '            -/:::-:::::---://:-::-::::----::---.-.......`-/.      ``   ',
\ '           s-`::--:::------:////----:---.-:::...-.....`./:             ',
\ '         yMNy.`::-.--::..-dmmhhhs-..-.-.......`.....-/:`               ',
\ '         oMNNNh. `-::--...:NNNdhhh/.--.`..``.......:/-                 ',
\ '       :dy+:`      .-::-..NNNhhd+``..`...````.-::-`                    ',
\ '                        .-:mNdhh:.......--::::-`                       ',
\ '                           yNh/..------..`                             ',
\ '                                                                       ',
\]


let s:footer = [
      \ '  +-------------------------------------------+',
      \ '  |            ThinkVim ^_^                   |',
      \ '  |    Talk is cheap Show me the code         |',
      \ '  |                                           |',
      \ '  |                                           |',
      \ '  +-------------------------------------------+',
      \ ]

function! s:center(lines) abort
  let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
  let centered_lines = map(copy(a:lines),
        \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
  return centered_lines
endfunction

let g:startify_change_to_dir = 0

let g:startify_custom_header = s:center(s:header)
let g:startify_custom_footer = s:center(s:footer)

"augroup python_format
"    autocmd!
"    autocmd BufWritePost *.py silent !black %
"augroup end

"set autoread
"au FocusGained,BufEnter * :checktime

"=====================================================
"" Compile and Run from the Command Line
"=====================================================

nnoremap <silent> <buffer> <F9> :call <SID>compile_run_cpp()<CR>

function! s:compile_run_cpp() abort
  let src_path = expand('%:p')
  let src_noext = expand('%:p:r')
  " The building flags
  let _flag = '-Wall -Wextra -std=c++17 -O2'

  if executable('clang++')
    let prog = 'clang++'
  elseif executable('g++')
    let prog = 'g++'
  else
    echoerr 'No compiler found!'
  endif
  set splitbelow
  set splitright
  execute printf('term %s %s %s -o %s', prog, _flag, src_path, src_noext)
  execute 'resize ' . 5
  startinsert
endfunction

nnoremap <silent><buffer> <F7> :call <sid>Check()<cr>

function s:Check()
  set splitbelow
  set splitright
  let src_path = expand('%:p')
  execute printf('term cppcheck --enable=all --suppress=missingIncludeSystem %s',src_path)
  execute 'resize ' . 5
  startinsert
endfunction

set redrawtime=5000

set filetype=on
set syntax=on

" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1

let g:cpp_class_scope_highlight = 1

let g:cpp_member_variable_highlight = 1

let g:cpp_class_decl_highlight = 1

let g:cpp_posix_standard = 1

let g:cpp_experimental_simple_template_highlight = 1

let g:nord_uniform_status_lines = 1

let g:nord_bold_vertical_split_line = 1

let g:nord_cursor_line_number_background = 1

let g:nord_uniform_diff_background = 1

"=====================================================
"" Switch between Header and Source File
"=====================================================

map <F3> <ESC>:call SwitchExt()<CR>

"=====================================================
"" Shortkeys for Tabs
"=====================================================

map <leader>tn :tabnew<cr>
map <leader>t<leader> :tabnext
map <leader>tm :tabmove
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>



