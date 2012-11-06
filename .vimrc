filetype off
 
set rtp+=~/.vim/vundle.git/
call vundle#rc()

Bundle 'Shougo/unite.vim.git'
Bundle 'Shougo/vimfiler.git'

set nu
syntax on
filetype plugin indent on

"----------------------------------------------------
" when crontab nobackup
"----------------------------------------------------
autocmd BufRead /tmp/crontab.* :set nobackup nowritebackup


set background=light
set nocompatible
set autoindent
set shiftwidth=4
set backup
set backupdir=/tmp
set enc=utf-8
set fenc=utf-8
set backspace=indent,eol,start
set dictionary=dictionary/php.dict
set ambiwidth=double
set tabstop=4
colorscheme solarized
let loaded_matchparen = 1
autocmd BufNewFile,BufRead *.ctp set filetype=php
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html
autocmd BufRead,BufNewFile *.html set filetype=eruby.html
"----------------------------------------------------
" 挿入モードでのカーソル移動
"----------------------------------------------------

imap <C-n> <Down>
imap <C-p> <Up>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-d>  <Del>
imap <C-k> <ESC>d$i

function! InsertTabWrapper()
        let col = col('.') - 1
        if !col || getline('.')[col - 1] !~ '\k'
                return "\<TAB>"
        else
                if pumvisible()
                        return "\<C-N>"
                else
                        return "\<C-N>\<C-P>"
                end
        endif
endfunction
" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}} Autocompletion using the TAB key
