" Vundle stuff
set nocompatible               " be iMproved
"filetype off                   " required!
filetype on

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()


"Bundle 'edkolev/tmuxline.vim' DISABLED from LAST
Bundle "def-lkb/ocp-indent-vim"
autocmd FileType ocaml exec ":source " . g:opamshare . "/ocp-indent/vim/indent/ocaml.vim"

" File Navigation
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-quicktask'

" Editing
Plugin 'itchyny/calendar.vim'
Bundle 'Align'
"Bundle 'kana/vim-smartinput'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Plugin 'godlygeek/tabular'
Plugin 'gundo'
Plugin 'vim-scripts/a.vim'
Bundle 'justinmk/vim-sneak'
Plugin 'airblade/vim-gitgutter'
Plugin 'thinca/vim-quickrun'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tyru/open-browser.vim'
Plugin 'lervag/vimtex'
" File Specific
Bundle 'digitaltoad/vim-jade'
Bundle 'gregsexton/MatchTag'
Bundle 'juvenn/mustache.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'nelstrom/vim-textobj-rubyblock'
Bundle 'puppetlabs/puppet-syntax-vim'
Bundle 'skalnik/vim-vroom'
Bundle 'sudar/vim-arduino-syntax'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'ap/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'tpope/vim-haml'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'majutsushi/tagbar'
Plugin 'groenewege/vim-less'
Bundle "marijnh/tern_for_vim"
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'othree/html5.vim'
Plugin 'klen/python-mode'

" Looks
Plugin 'morhetz/gruvbox'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'skalnik/vim-irblack'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'altercation/vim-colors-solarize'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"Plugin 'tomasr/molokai'


" Misc
Bundle 'scratch.vim'
Bundle 'matthias-guenther/hammer.vim'
Bundle 'delimitMate.vim'
Bundle 'matchit.zip'
Bundle 'Vimball'
Bundle 'ScrollColors'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'tComment'
Bundle 'mru.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'rizzatti/dash.vim'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-obsession'

Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'tpope/vim-fugitive'
Plugin 'tmux-plugins/vim-tmux'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'gmarik/Vundle.vim'
Plugin 'carlobaldassi/ConqueTerm'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-sensible'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'mileszs/ack.vim'
Plugin 'christoomey/vim-tmux-navigator'
" Track the engine.
Plugin 'SirVer/ultisnips'
Bundle 'ervandew/supertab'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

call vundle#end()

filetype plugin indent on     " required!
" End Vundle Stuff

"source $HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
"set laststatus=2

" set colors
"set t_Co=256
let g:ackprg = 'ag --nogroup --nocolor --column'
" google calendar stuff
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" airline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_section=''
let g:airline_detect_paste=1 " Show PASTE if in paste mode
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

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
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"enable powerline from here down. Not source above.
"set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim/
"set laststatus=2

"Ocaml import 

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
let g:syntastic_ocaml_checkers = ['merlin']
"Ocaml import end


" Ag with Ack.vim search
let g:ackprg = 'ag --nogroup --nocolor --column'

" minibufexpl stuff
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1

"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Easy navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

let python_highlight_all = 1

set cursorline
set number
set magic
set autoindent

set showmatch
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set clipboard=unnamedplus

syntax on
"colorscheme slate
"let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
syntax enable
set background=dark
"colorscheme solarized
"let g:solarized_termcolors=256

autocmd Filetype c setlocal noexpandtab softtabstop=8 shiftwidth=8
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nnoremap <F5> :GundoToggle<CR>

"OCAML STUFF
au BufEnter *.ml setf ocaml
au BufEnter *.mli setf ocaml
au FileType ocaml call FT_ocaml()
function FT_ocaml()
    set textwidth=80
    set colorcolumn=80
    set shiftwidth=2
    set tabstop=2
    " ocp-indent with ocp-indent-vim
    let opamshare=system("opam config var share | tr -d '\n'")
    execute "autocmd FileType ocaml source".opamshare."/ocp-indent/vim/indent/ocaml.vim"
    filetype indent on
    filetype plugin indent on
endfunction

" Compatible with ranger 1.4.2 through 1.7.*
"
" Add ranger as a file chooser in vim
"
" If you add this code to the .vimrc, ranger can be started using the command
" ":RangerChooser" or the keybinding "<leader>r".  Once you select one or more
" files, press enter and ranger will quit again and vim will open the selected
" files.

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
     execute "set rtp+=" . g:opamshare . "/merlin/vim"

function! RangeChooser()
    let temp = tempname()
    " The option "--choosefiles" was added in ranger 1.5.1. Use the next line
    " with ranger 1.4.2 through 1.5.0 instead.
    "exec 'silent !ranger --choosefile=' . shellescape(temp)
    if has("gui_running")
        exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
    else
        exec 'silent !ranger --choosefiles=' . shellescape(temp)
    endif
    if !filereadable(temp)
        redraw!
        " Nothing to read.
        return
    endif
    let names = readfile(temp)
    if empty(names)
        redraw!
        " Nothing to open.
        return
    endif
    " Edit the first item.
    exec 'edit ' . fnameescape(names[0])
    " Add any remaning items to the arg list/buffer list.
    for name in names[1:]
        exec 'argadd ' . fnameescape(name)
    endfor
    redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <leader>r :<C-U>RangerChooser<CR>

"TURN OFF PARENTHESIS MATCHING
let loaded_delimitMate = 0
"TURN OFF PYTHON FOLDING
let g:pymode_folding = 0

"ENABLE MOUSE
set mouse=a

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
