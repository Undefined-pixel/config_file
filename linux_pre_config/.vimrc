set number 
"set relativenumber
set autoindent
set mouse=a
" Turn syntax highlighting on.
syntax on
" Highlight cursor line underneath the cursor horizontally.
"set cursorline
" Highlight cursor line underneath the cursor vertically.
"set cursorcolumn
" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000 
:colorscheme habamax 

"change mapleader key to , "
let mapleader = ","

" set in häckchen "
nnoremap <leader>" ^i"<esc>$a"<esc>

"formating "
set autoindent
set smartindent
set expandtab  
set shiftwidth=4  
set tabstop=4  
set textwidth=80
set formatoptions+=t

set cindent  " for C/C++
if executable('clang-format')
set formatprg=clang-format
endif

augroup CppFormatting
autocmd!
autocmd FileType c,cpp setlocal autoindent smartindent cindent
if executable('clang-format')
autocmd FileType c,cpp setlocal formatprg=clang-format
endif
augroup END

autocmd BufWritePre *.c,*.cpp,*.h,*.hpp silent! undojoin | silent! %!clang-format

" replace"
nnoremap <Leader>s :%s///g<Left><Left>

" set in häckchen "
nnoremap <leader>" ^i"<esc>$a"<esc>

if has("mac")
"set clipboard=unnamed"
"vmap <C-c> y:call system('pbcopy', @0)<CR>"
"vmap <C-x> y:call system('pbcopy', @0)<CR>c"
"vmap <C-v> c<ESC>:let @0 = system('pbpaste')<CR>p"
"vmap <C-v> <ESC>:let @0 = system('pbpaste')<CR>"
set clipboard=unnamedplus
vmap <C-c> "+y
vmap <C-x> "+d
vmap <C-v> "+p
imap <C-v> <C-r>+
else
set clipboard=unnamedplus
vmap <C-c> "+y
vmap <C-x> "+d
vmap <C-v> c<ESC>"+p
imap <C-v> <ESC>"+p
endif

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
"for code"
nnoremap <C-f> <Nop>
inoremap <C-f> <Nop>
vnoremap <C-f> <Nop>


