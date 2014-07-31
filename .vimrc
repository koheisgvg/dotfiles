set nocompatible
if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

""undo vim7.3+
NeoBundle 'git@github.com:sjl/gundo.vim.git'

NeoBundle 'git@github.com:vim-scripts/SearchComplete.git'
NeoBundle 'git@github.com:tpope/vim-markdown.git'
NeoBundle 'git@github.com:mattn/webapi-vim.git'
NeoBundle 'git@github.com:mattn/qiita-vim.git'
NeoBundle 'git@github.com:ndreynolds/vim-cakephp.git'
NeoBundle 'git@github.com:thinca/vim-quickrun.git'
NeoBundle 'git@github.com:vim-scripts/AutoComplPop.git'
NeoBundle 'git@github.com:Shougo/vimproc'
NeoBundle 'git@github.com:Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'git@github.com:scrooloose/syntastic.git'
NeoBundle 'git@github.com:vim-scripts/PDV--phpDocumentor-for-Vim.git'

""for behat
NeoBundle 'git@github.com:veloce/vim-behat.git'

""for javascript
NeoBundle 'git@github.com:jelera/vim-javascript-syntax.git'
NeoBundle 'git@github.com:vim-scripts/jQuery'
NeoBundle 'git@github.com:mattn/jscomplete-vim.git'

NeoBundle 'git@github.com:tpope/vim-fugitive.git'
NeoBundle 'git@github.com:gregsexton/gitv.git'

""for CSV
NeoBundle 'Align'

""for colorscheme
NeoBundle 'git@github.com:altercation/vim-colors-solarized.git'

filetype plugin indent on

NeoBundleCheck

"" OS enviroment set
let OSTYPE = system('uname')

" View
"" color
colorscheme solarized
set background=dark

"" mouse
set mouse=a

"" command complement
set wildmode=longest:full,full

"" cursorline
""set cursorline
""set cursorcolumn
""highlight clear CursorLine
""highlight CursorLine gui=underline ctermbg=0
augroup SorarizedColorAu
    autocmd!
    autocmd InsertEnter * highlight CursorLine gui=underline ctermbg=18
    autocmd InsertLeave * highlight CursorLine gui=underline ctermbg=0
augroup END

" 全角スペースの表示：ハイライト
highlight ZenkakuSpace
            \ cterm=underline ctermfg=blue ctermbg=gray
            \ gui=underline   guifg=blue   guibg=gray
match ZenkakuSpace /　/

" indent-guides.vim
if 'dark' == &background
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray ctermbg=0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236
else
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd guibg=gray ctermbg=0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=0
endif

"" status line
set stal=2
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
set expandtab
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

" Search
set hlsearch
set ic

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
map! <C-n> <Down>
map! <C-p> <Up>
map! <C-b> <Left>
map! <C-f> <Right>
map! <C-a>  <Home>
map! <C-e>  <End>
map! <C-d>  <Del>
map! <expr> <C-k> "\<C-g>u".(col('.') == col('$') ? '<C-o>gJ' : '<C-o>D')

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

""" neosnipet key-mappings.
""imap <tab>     <Plug>(neosnippet_expand_or_jump)
""smap <C-k>     <Plug>(neosnippet_expand_or_jump)
""xmap <C-k>     <Plug>(neosnippet_expand_target)
""
""" SuperTab like snippets behavior.
""imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
""\ "\<Plug>(neosnippet_expand_or_jump)"
""\: pumvisible() ? "\<C-n>" : "\<TAB>"
""smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
""\ "\<Plug>(neosnippet_expand_or_jump)"
""\: "\<TAB>"
""
""" For snippet_complete marker.
""if has('conceal')
""  set conceallevel=2 concealcursor=i
""endif
""
""let g:neosnippet#enable_snipmate_compatibility = 1
""let g:neosnippet#snippets_directory='~/.vim/snip'

" Remap the tab key to select action with InsertTabWrapper
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
" }}} Autocompletion using the TAB key
" 英字キーボードの場合はって記述を入れたい
" ;でコマンド入力( ;と:を入れ替)
noremap ; :
noremap : ;

"" complement
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

" command mode complement
set wildmenu

"" setting for php documenter
source ~/.vim/php-doc.vim 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 
