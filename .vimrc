syntax on
set tabstop=4
set shiftwidth=4
set pastetoggle=<F3>
set ignorecase hlsearch
set history=400

" Color scheme
set t_Co=256
colorscheme Tomorrow-Night

"set listchars=tab:>-,trail:-
"hi SpecialKey ctermfg=3 guifg=gray
"set list


set wrap
set showmatch " Show matching braces

set ai " Auto indent
set si " Smart indent

au FileType python setlocal tabstop=4 expandtab " Python expand tabs to 4 spaces

set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c

" Set to auto read when a file is changed from the outside
set autoread


" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Detect blocks of PHP code
au BufNewFile,BufRead * if match(getline(1,2), "^<?") >= 0 | setf php | endif
