" Maintained by Saahil Khemnani

" nnoremap binds keys in normal mode
" inoremap binds keys in insert mode


set tabstop=2				" This changes the tab to 2 spaces
set softtabstop=2		" This changes the tab to 2 spaces
set number					" Turns on line numbers
:syntax on					" Turns on syntax highlighting. very important!
set noswapfile			" Turns off swap files when you've edited the same file in 2 instances

" Remaps (Insert and Normal)

inoremap jk <Esc>		" This remaps Escape for easier access in insert mode
nnoremap <BS> x			" This remaps backspace to x for easier backspace in normal mode
vmap <C-c> :w !pbcopy

"" HTML Remaps (for autocomplete/more efficient programming)

inoremap div. <div></div>
inoremap h1. <h1></h1>
inoremap h1.style <h1 style=""></h1>
inoremap h2. <h2></h2>
inoremap h2.style <h2 style=""></h2>
inoremap h3. <h3></h3>
inoremap h3.style <h3 style=""></h3>
inoremap h4. <h4></h4>
inoremap h4.style <h4 style=""></h4>
inoremap p. <p>
inoremap href. <a href=""></a>

let &t_SI = "\e[6 q"			" This set of commands change cursor look between insert and normal mode
let &t_EI = "\e[2 q"

:colorscheme default			" This sets the colorscheme to default

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

