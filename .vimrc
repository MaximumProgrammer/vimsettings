" Vim Settings for C/C++ and Python"

" https://alex.dzyoba.com/blog/vim-revamp/
" https://alpha2phi.medium.com/neovim-startup-screen-edd933ec8261
" https://jdhao.github.io/2020/04/19/nvim_cpp_and_c_completion/

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'               " let Vundle manage Vundle, required

    "-------------------=== Code/Project navigation ===-------------
    Plugin 'scrooloose/nerdtree'                " Project and file navigation
    Plugin 'majutsushi/tagbar'                  " Class/module browser
    Plugin 'kien/ctrlp.vim'                     " Fast transitions on project files
    Plugin 'jistr/vim-nerdtree-tabs'
   
    "-------------------=== Other ===-------------------------------
    Plugin 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim
    Plugin 'vim-airline/vim-airline-themes'     " Themes for airline
    Plugin 'Lokaltog/powerline'                 " Powerline fonts plugin
    Plugin 'fisadev/FixedTaskList.vim'          " Pending tasks list
    Plugin 'rosenfeld/conque-term'              " Consoles as buffers
    Plugin 'tpope/vim-surround'                 " Parentheses, brackets, quotes, XML tags, and more
    Plugin 'flazz/vim-colorschemes'             " Colorschemes
    Plugin 'ervandew/supertab'
    Plugin 'drewtempelmeyer/palenight.vim'
    Plugin 'bogado/file-line'
    Plugin 'irrationalistic/vim-tasks'
    Plugin 'rhysd/vim-clang-format'
    Plugin 'voldikss/vim-floaterm'             " float term window in vim
    Plugin 'octol/vim-cpp-enhanced-highlight'
    Plugin 'georgejdanforth/vim-clip'          " for copying from selection

    "-------------------=== Snippets support ===--------------------
    Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
    Plugin 'tomtom/tlib_vim'                    " dependencies #2
    Plugin 'honza/vim-snippets'                 " snippets repo

    "-------------------=== Languages support ===-------------------
    Plugin 'tpope/vim-commentary'               " Comment stuff out
    Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
    "Plugin 'Rykka/riv.vim'                      " ReStructuredText plugin
    "Plugin 'Valloric/YouCompleteMe'            " Autocomplete plugin
    Plugin 'arcticicestudio/nord-vim'           " Nord vim 
    Plugin 'ericcurtin/CurtineIncSw.vim'
    Plugin 'frazrepo/vim-rainbow'

    "-------------------=== HTML support ===-------------------
    Plugin 'jtratner/vim-flavored-markdown'
    Plugin 'suan/vim-instant-markdown'
    Plugin 'nelstrom/vim-markdown-preview'

    "-------------------=== Python  ===-----------------------------
    "Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
    Plugin 'scrooloose/syntastic'               " Syntax checking plugin for Vim
    Plugin 'nvie/vim-flake8'
    Plugin 'vim-scripts/Pydiction'
    Plugin 'vim-scripts/indentpython.vim'
    Plugin 'psf/black'
    Plugin 'davidhalter/jedi-vim'
    Plugin 'deoplete-plugins/deoplete-jedi'

    "-------------------=== Switching C++ Headers ===-------------------
    Plugin 'derekwyatt/vim-fswitch'
    Plugin 'derekwyatt/vim-protodef'

    "-------------------=== Searchin for Files ===-------------------
    Plugin 'junegunn/fzf.vim'
    Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }

    "-------------------=== C++ Linter ===-------------------
    Plugin 'w0rp/ale'

   "-------------------=== C++ Code Completion ===-------------------  
    Plugin 'rip-rip/clang_complete'

    "-------------------=== Code Formatting ===-------------------
    Plugin 'tmhedberg/SimpylFold'
    Plugin 'google/vim-maktaba'
    Plugin 'google/vim-codefmt'
    Plugin 'google/vim-glaive'

    "-------------------=== Vim Colors ===-------------------
    Plugin 'altercation/vim-colors-solarized'
    Plugin 'jnurmine/Zenburn'
    Plugin 'rakr/vim-one'
    Plugin 'itchyny/lightline.vim'

    
    Plugin 'pacha/vem-dark'
    
    "-------------------=== Plugin for Git Integration ===-------------------
    Plugin 'airblade/vim-gitgutter'
    Plugin 'tpope/vim-fugitive'
  
   "-------------------=== Completion Framework  ===-------------------   
    if has('nvim')
        Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
        "Plugin 'bbchung/Clamp'
    else
        Plugin 'Shougo/deoplete.nvim'
        Plugin 'roxma/nvim-yarp'
        Plugin 'roxma/vim-hug-neovim-rpc'
    endif

   "-------------------=== Vim Startup Screen  ===-------------------    
    Plugin 'mhinz/vim-startify'
   "Plugin 'goolord/alpha-nvim'

call vundle#end()

"=====================================================
"" General Settings
"=====================================================

filetype plugin indent on

syntax enable                               " syntax highlight

set t_Co=256                                " set 256 colors
colorscheme vem-dark                        " set color scheme

"set mouse=n
"set ttymouse=xterm2

set number                                  " show line numbers
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set noerrorbells                            " no bells
set novisualbell
set t_vb=

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

syntax enable
set tabstop=4
set expandtab
set number
filetype indent on
set autoindent
set nocompatible
filetype off

set background=dark " for the light version

hi Visual cterm=none ctermbg=darkgrey ctermfg=cyan

set guifont=Hack:h10:cANSI

set undodir=~/.vim/undodir                   " settting undo file
set undofile

set clipboard+=unnamed

set termguicolors

"=====================================================
"" Powerline Settings
"=====================================================

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set t_Co=256
set termencoding=utf-8

if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Source\ Code\ Pro\ for\ Powerline:h15
        colorscheme nord            " set color scheme
    endif
endif

"=====================================================
"" Auto Formatting Settings
"=====================================================

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  "autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer git clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  "autocmd FileType python AutoFormatBuffer yapf
  "Alternative:"
  "autocmd FileType python AutoFormatBuffer autopep8
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END

"=====================================================
"" Tabs / Buffers settings
"=====================================================

tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

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
"" AirLine settings
"=====================================================

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" adding space
let g:airline#extensions#tabline#left_sep = "\ue0b0"
let g:airline#extensions#tabline#left_alt_sep = "\ue0b1"
let g:airline#extensions#tabline#right_sep = "\ue0b1"
let g:airline#extensions#tabline#right_alt_sep = "\ue0b0"


" airline symbols
"https://vi.stackexchange.com/questions/3359/how-do-i-fix-the-status-bar-symbols-in-the-airline-plugin
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

"https://yyiki.org/wiki/Vim/Airline/
" Switch to your current theme
let g:airline_theme = 'wombat'
let g:airline_disable_statusline = 0
let g:airline_powerline_fonts=1
let g:bufferline_echo = 0 
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#enabled = 1

set fillchars+=stl:\ ,stlnc:\

" Always show tabs
set showtabline=1

" We don't need to see things like -- INSERT -- anymore
set noshowmode

"=====================================================
"" SnipMate settings
"=====================================================

let g:snippets_dir='~/.vim/vim-snippets/snippets'

"=====================================================
"" Riv.vim settings
"=====================================================

let g:riv_disable_folding=1
let g:riv_python_rst_hl=1

"=====================================================
"" SnipMate settings
"=====================================================

set completeopt-=preview                    " remove omnicompletion dropdown

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

let g:syntastic_python_checkers = ['flake8', 'pylint', 'mypy']
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
let g:syntastic_cpp_checkers = ['cpplint']
let g:syntastic_c_checkers = ['cpplint']
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
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

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

"Deoplate Code Completion"
"Plz install pip3 install --user pynvim"
"sudo pip3 install pynvim"
let g:deoplete#enable_at_startup = 1

if has('pythonx')
    set pyxversion=3
endif

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

let g:clang_format#detect_style_file=1
let g:clang_format#auto_format_on_insert_leave=1
let g:clang_format#auto_format=0
let g:clang_format#auto_formatexpr=1
let g:clang_format#enable_fallback_style=1

"=====================================================
"" ALE Linter
"=====================================================
"
let g:ale_linters = {
      \  'python': ['flake8', 'pylint'], 
      \  'vim': ['vint'],      
      \  'ruby': ['standardrb', 'rubocop'],
      \  'javascript': ['eslint'],
      "\  'cpp': ['clang, gcc'], 'c': ['clang, gcc'],
      "\  'cpp': ['clang, clangtidy'], 'c': ['clang, clangtidy'], 
      \  'cpp': ['clang'], 'c': ['clang'],  
\}

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


let g:ale_cpp_clangtidy_checks = []
let g:ale_cpp_clangtidy_executable = 'clang-tidy'
let g:ale_c_parse_compile_commands=1
let g:ale_cpp_clangtidy_extra_options = ''
let g:ale_cpp_clangtidy_options = ''
let g:ale_set_balloons=1
let g:ale_linters_explicit=1


let g:ale_fix_on_save = 0
let g:ale_completion_enabled = 1
let g:ale_set_highlights = 1

" Fix Python files with autopep8 and yapf.
let b:ale_fixers = ['autopep8', 'yapf']

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
let g:ale_c_cppcheck_options = '--enable=style'
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
let g:ale_lint_delay = 200
let g:ale_lint_on_enter = 1
let g:ale_lint_on_filetype_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linter_aliases = {}
let g:ale_linters_explicit = 0
let g:ale_list_vertical = 0
let g:ale_list_window_size = 10
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
let g:ale_sign_info = '⚠'
let g:ale_sign_style_error = '✖'
let g:ale_sign_style_warning = '⚠'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = v:null
let g:ale_type_map = {}
let g:ale_use_global_executables = v:null
let g:ale_virtualtext_cursor = 0
let g:ale_warn_about_trailing_blank_lines = 1
let g:ale_warn_about_trailing_whitespace = 1
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
set statusline=%{LinterStatus()}

"=====================================================
"" Deoplate Clang X
"=====================================================

call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')
call deoplete#custom#var('clangx', 'default_c_options', '-std=c++17 -Wall -Wextra -Wshadow')
call deoplete#custom#var('clangx', 'default_cpp_options', '-std=c++17 -Wall -Wextra -Wshadow')

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

"
"Clamp

"if has('nvim')
" let g:clamp_libclang_file = '/opt/rh/llvm-toolset-11.0/root/usr/lib64/libclang.so.11'
" let g:clamp_heuristic_compile_args = 1
"endif

"=====================================================
"" Compile and Run from the Command Line
"=====================================================

nnoremap <silent> <buffer> <F9> :call <SID>compile_run_cpp()<CR>

function! s:compile_run_cpp() abort
  let src_path = expand('%:p:~')
  let src_noext = expand('%:p:~:r')
  " The building flags
  let _flag = '-Wall -Wextra -std=c++17 -O2'

  if executable('clang++')
    let prog = 'clang++'
  elseif executable('g++')
    let prog = 'g++'
  else
    echoerr 'No compiler found!'
  endif
  call s:create_term_buf('h', 5)
  execute printf('term %s %s %s -o %s && %s', prog, _flag, src_path, src_noext, src_noext)
  startinsert
endfunction

function s:create_term_buf(_type, size) abort
  set splitbelow
  set splitright
  if a:_type ==# 'v'
    vnew
  else
    new
  endif
  execute 'resize ' . a:size
endfunction
