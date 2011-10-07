syntax on

set autoread " Set to auto read when a file is changes
set ai " Auto indent
set history=400
set ignorecase hlsearch
set pastetoggle=<F3>
set si " Smart indent
set softtabstop=4
set shiftwidth=4
set showmatch " Show matching braces
set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set t_Co=256
set tabstop=4
set wrap

" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Python expand tabs to 4 spaces
au FileType python setlocal tabstop=4 expandtab
au FileType php setlocal tabstop=4 expandtab

" Detect blocks of PHP code
au BufNewFile,BufRead * if match(getline(1,2), "^<?") >= 0 | setf php | endif

colorscheme Tomorrow-Night

" Highlight characters that go over the 80-character mark
highlight OverLength ctermbg=darkgrey ctermfg=darkgrey  guibg=#545454
match OverLength /\%121v.\+/
