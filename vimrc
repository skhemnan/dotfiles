" Maintained by Saahil Khemnani

" nnoremap binds keys in normal mode
" inoremap binds keys in insert mode

" Call for plugins
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()


set tabstop=2				" This changes the tab to 2 spaces
set softtabstop=2		" This changes the tab to 2 spaces
set number					" Turns on line numbers
:syntax on					" Turns on syntax highlighting. very important!
set noswapfile			" Turns off swap files when you've edited the same file in 2 instances
" set wrap
" set linebreak
set backspace=indent,eol,start " Sets backspace to work on insert mode
set number relativenumber
set splitbelow splitright
let g:airline_theme='codedark'

" Remaps (Insert and Normal)

inoremap jk <Esc>		" This remaps Escape for easier access in insert mode
nnoremap <BS> x			" This remaps backspace to x for easier backspace in normal mode
vmap <C-c> :w !pbcopy " This remaps ctrl+C to pbcopy (universal clipboard)

" Tab navigation
noremap <C-p> gt 
noremap <C-o> gT 

" Pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <C-T> :tabnew<CR> 
nnoremap <C-E> :term<CR> 
nnoremap <C-Q> :q!<CR>
nnoremap <C-W> :w<CR>


let &t_SI = "\e[6 q"			" This set of commands change cursor look between insert and normal mode
let &t_EI = "\e[2 q"

let g:user_emmet_leader_key = '<C-s>'

:colorscheme codedark " This sets the colorscheme

autocmd BufNewFile *.html ks|call HTMLHeader()|'y		" This will apped the HTMLHeader function to any new html file

set mouse=a

fun HTMLHeader()
		call append(0, "<!DOCTYPE html>")
		call append(1, "<html lang='en'>")
		call append(2, "	<head>")
		call append(3, "		<meta charset='utf-8'>")
		call append(4, "		<meta http-equiv='X-UA-Compatible' content='IE=edge'>")
		call append(5, "		<meta name='viewport' content='width=device-width, initial-scale=1'>")
		call append(6, "		<title></title>")
		call append(7, "		<link rel='stylesheet' href='style/solid.css'>")
		call append(8, "	</head>")
		call append(9, "	<body>")
		call append(10, "	</body>")
		call append(11, "</html>")
endfun

" Format XML
com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"


