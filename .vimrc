set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Colors
highlight LineNr ctermfg=DarkGrey " line numbers
highlight Normal ctermfg=grey ctermbg=234 " backgroud color

" set nohlsearch
set incsearch 

set number relativenumber
set nu rnu

" Turns on relative number in normal mode and absolute number in insert mode
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END

set ruler

set nowrap           " do not automatically wrap on load
set formatoptions-=t " do not automatically wrap text when typing

set ignorecase

set smartcase

set showmatch

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

syntax on
