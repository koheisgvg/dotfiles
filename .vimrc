set nocompatible
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'git://github.com/tpope/vim-markdown.git'
NeoBundle 'git://github.com/mattn/webapi-vim.git'
NeoBundle 'git://github.com/mattn/qiita-vim.git'
NeoBundle 'git://github.com/ndreynolds/vim-cakephp.git'
NeoBundle 'git://github.com/thinca/vim-quickrun.git'
NeoBundle 'git://github.com/AutoComplPop'
NeoBundle 'git://github.com/Shougo/vimproc'
NeoBundle 'git://github.com/Shougo/neocomplcache'
NeoBundle 'scrooloose/syntastic'

""for javascript
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'vim-scripts/jQuery'
NeoBundle 'teramako/jscomplete-vim'

NeoBundle 'git://github.com/tpope/vim-fugitive.git'
NeoBundle 'git://github.com/gregsexton/gitv.git'

filetype plugin indent on

NeoBundleCheck

"" OS enviroment set
let OSTYPE = system('uname')

" View
"" color
colorscheme solarized
set background=light

"" status line
set laststatus=2
set statusline=%{fugitive#statusline()}
set statusline+=\ %<%f\ %m%r%h%w

"" syntax
syntax on
filetype plugin indent on

set nu
"" 全角で表示が崩れるのを修正
set ambiwidth=double

" indent
if OSTYPE == "CYGWIN_NT-6.1\n"
    set expandtab
else
endif
set tabstop=4
set autoindent
set shiftwidth=4

set list
set listchars=tab:>\ ,trail:_

" backup
set backup
set backupdir=/tmp
set noswapfile

" encoding
set enc=utf-8
set fenc=utf-8

" screen bell
set t_vb=
set novisualbell"

"pare ()
let loaded_matchparen = 1

"----------------------------------------------------
" when crontab nobackup
"----------------------------------------------------
autocmd BufRead /tmp/crontab.* :set nobackup nowritebackup


set backspace=indent,eol,start
set dictionary=dictionary/php.dict


autocmd BufNewFile,BufRead *.ctp set filetype=php
autocmd BufRead,BufNewFile *.erb set filetype=eruby.html
autocmd BufRead,BufNewFile *.html set filetype=eruby.html



"----------------------------------------------------
" 挿入モードでのカーソル移動
"----------------------------------------------------

" keybind
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-d>  <Del>
imap <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>D')

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
" 英字キーボードの場合はって記述を入れたい
" ;でコマンド入力( ;と:を入れ替)
noremap ; :
noremap : ;

" complement
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>
inoremap ;; <C-O>$;<CR>


" ------------------------------------------------
"  vimfilerの設定
" ------------------------------------------------
nnoremap <silent> <Leader>fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>
