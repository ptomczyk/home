execute pathogen#infect()
syntax on
filetype plugin indent on
"colorscheme darkblue

let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 20
let NERDTreeShowLineNumbers=1

map <C-n> :NERDTreeToggle<CR>
autocmd FileType nerdtree setlocal relativenumber

set hlsearch
highlight Search cterm=NONE ctermfg=black ctermbg=blue
set incsearch
set number
set relativenumber
set path=$PWD/**
set mouse=a

" set autochdir
set hidden
set laststatus=2

"set colorcolumn=100
set colorcolumn=
set backspace=2

set tabstop=4
set shiftwidth=4
set expandtab
set completeopt=longest,menuone

set suffixesadd=.js
set list listchars=tab:»·,trail:▒,eol:↲
"set list listchars=tab:»·,trail:▒,eol:↲,space:·

highlight ColorColumn ctermbg=6
highlight ValidatorErrorSign ctermfg=235 ctermbg=1

"highlight Normal ctermfg=7
"highlight NonText ctermfg=8
"highlight SpecialKey ctermfg=8

au BufNewFile,BufRead *.ejs set filetype=html

autocmd! BufWritePost .vimrc source %
autocmd BufWrite * :call DeleteTrailingSpace()

func! DeleteTrailingSpace()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

map <c-1> :call JsBeautify()<cr>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

"let g:validator_javascript_checkers = ['eslint']
