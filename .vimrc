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
set nowrap
set expandtab
set showtabline=2

nmap <C-H> :tabprevious<CR>
nmap <C-L> :tabnext<CR>

let mapleader = ","
let g:CommandTMaxFiles=25000
let g:CommandTAcceptSelectionTabMap="<CR>"

" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" Detect file changes
au FileChangedShell * echo "Warning: File changed on disk"

" Detect blocks of PHP code
au BufNewFile,BufRead * if match(getline(1,2), "^<?") >= 0 | setf php | endif

" Python expand tabs to 4 spaces
au FileType python setlocal tabstop=4 expandtab
au FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab

colorscheme Tomorrow-Night

" Highlight characters that go over the 80-character mark
highlight OverLength ctermbg=darkgrey ctermfg=darkgrey  guibg=#545454
match OverLength /\%121v.\+/

" Hightlight extra whitespace
highlight ExtraWhitespace ctermbg=darkgreen
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
