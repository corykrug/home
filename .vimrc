syntax on
set tabstop=4
set shiftwidth=4
set pastetoggle=<F3>
set ignorecase hlsearch
set history=400
set noai

set wrap
set showmatch " Show matching braces

set ai " Auto indent
set si " Smart indent

au FileType python setlocal tabstop=4 expandtab " Python expand tabs to 4 spaces

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

"Set to auto read when a file is changed from the outside
set autoread


" Wild set of hacks to properly set the hostname and currently open file in
" your screen window descriptions. Very brittle due to the vim "Thanks for
" flying Vim" bug. And yes, it is a bug.

let &titlestring = hostname() . " [vim: " . expand("%:t") . " ]"
if &term == "screen"
    set t_ts=^[k
    set t_fs=^[\
endif
autocmd VimEnter *
    \ if &term == "screen" || &term == "xterm" |
    \ set title |
    \ endif


"Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
