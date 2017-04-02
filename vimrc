set tabstop=2
set softtabstop=2
set expandtab
set incsearch
set hlsearch
inoremap jk <esc>
inoremap psvdm public static void main (String[] args)
inoremap sysout System.out.println();
inoremap pC public class
inoremap pS public String
inoremap pI public int
:set omnifunc=htmlcomplete0CompleteTags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd BufNewFile,BufReadPost *.md set filetype=markdown 
:set number
set showmatch
set title
set nobackup
set noswapfile
set mouse=a
:colorscheme default
syntax on
set autoindent
set smartindent
autocmd BufNewFile *.html ks|call HTMLHeader()|'y
inoremap <Ctrl-Alt-c> :w !pbcopy
inoremap { {<CR>}<Esc>ko

fun HTMLHeader() 
    call append(0, "<!DOCTYPE html>")
    call append(1, "<html lang='en'>")
    call append(2, "  <head>")
    call append(3, "    <meta charset='utf-8'>")
    call append(4, "    <meta http-equiv='X-UA-Compatible' content='IE=edge'>")
    call append(5, "    <meta name='viewport' content='width=device-width, initial-scale=1'>")
    call append(6, "    <title></title>")
    call append(7, "    <link rel='stylesheet' href='style/solid.css'>")
    call append(8, "  </head>")
    call append(9, "  <body>")
    call append(10, " </body>")
    call append(11, "</html>")
endfun
set guifont=Roboto\ Mono:h14
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:user_emmet_leader_key='<C-A>'

if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
