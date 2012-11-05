set nu
syntax on
filetype plugin indent on
set autoindent
autocmd BufNewFile,BufRead *.ctp set filetype=php
colorscheme solarized
let loaded_matchparen = 1
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-b> <Left>
imap <C-f> <Right>
imap <C-d> <Del>
imap <C-a>  <Home>
imap <C-e>  <End>
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
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
