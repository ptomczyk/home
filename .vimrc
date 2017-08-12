execute pathogen#infect()
syntax on
filetype plugin indent on

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

" set autochdir
set hidden
set laststatus=2
set mouse+=a
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end

set colorcolumn=
set backspace=2

set tabstop=2
set shiftwidth=2
set expandtab

set suffixesadd=.js
set list listchars=tab:»·,trail:▒,eol:↲

highlight ColorColumn ctermbg=6
highlight ValidatorErrorSign ctermfg=235 ctermbg=1

autocmd! BufWritePost .vimrc source %
autocmd BufWrite * :call DeleteTrailingSpace()

func! DeleteTrailingSpace()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

"let g:validator_javascript_checkers = ['eslint']
