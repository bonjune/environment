set guifont=fixedsys:h9
set ch=2
set encoding=utf-8
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

if version >=500
    let c_comment_strings=1
    syntax on
    set hlsearch
    set mousehide

    highlight Normal          gui=NONE guibg=MidnightBlue  guifg=White
    highlight NonText         gui=NONE guibg=blue4
    highlight Comment         gui=NONE guibg=MidnightBlue  guifg=LightGreen
    highlight Constant        gui=NONE guibg=grey20        guifg=LightPink
    highlight Identifier      gui=NONE guibg=MidnightBlue  guifg=LightSkyBlue
    highlight Statement       gui=NONE guibg=MidnightBlue  guifg=LightCyan
    highlight PreProc         gui=NONE guibg=MidnightBlue  guifg=wheat
    highlight Type            gui=NONE guibg=MidnightBlue  guifg=gold
    highlight Special         gui=NONE guibg=grey20        guifg=RosyBrown
    highlight Ignore          gui=NONE guibg=MidnightBlue  guifg=magenta4
    highlight Error           gui=NONE guibg=Red           guifg=White
    highlight Todo            gui=NONE guibg=grey20        guifg=orange

endif

set fileencoding=korea
set bs=2
set mouse=nc

" for tab vs. space problems
set softtabstop=2
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:>.,eol:$
autocmd FileType make setlocal noexpandtab

set autoindent
set autowrite
set cindent
set nu
set nocompatible
set backspace=2
set bioskey
set cpoptions=cFs$
set helpheight=15
set infercase
set keywordprg=man\ -a
set laststatus=2
set notextmode
set ruler
set scrolloff=3

set shortmess=ao
set showbreak=+++\
set showmatch
set showmode
set sidescroll=8
set smartcase
set smarttab
set splitbelow
set nostartofline
set nowrap
set ttyscroll=5
"set whichwrap=<,>,[,]
set winheight=4
set cinoptions=:0,p0,t0,<1s
if &term =~ "xterm"
if has ("terminfo")
    set t_Co=8
    set t_Sf=p1%dm
    set t_Sb=p1%dm
else
    set t_Co=8
    set t_Sf=dm
    set t_Sb=dm
endif
endif
set bg=dark
