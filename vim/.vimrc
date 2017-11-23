" ###########
" Basic Config
" ###########


" 开启语法高亮
syntax on
" 开启 ruler
set ruler
" ensure ftdetect et al work by including this after the bundle stuff
filetype plugin indent on
" 开启行
set rnu

" 检测文件类型
filetype on
" 针对不同的文件类型采用不同的缩进格式
filetype indent on
" 允许插件
filetype plugin on
" 启动自动补全
filetype plugin indent on

" 在状态栏显示正在输入的命令
set showcmd
" 左下角显示当前vim模式
set showmode

" ########
" Plugin
" ########

call plug#begin('~/.vim/plugged')

" install vim-go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" install ultisnips
Plug 'SirVer/ultisnips'

" install vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" install vim-fugitive
Plug 'tpope/vim-fugitive'

" install ctrlp
Plug 'kien/ctrlp.vim'

call plug#end()

" ############
" Plugin Config
" ############

" vim-airline

" airline {{{
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_left_sep = '▶'
    let g:airline_left_alt_sep = '❯'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '❮'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    " 是否打开tabline
    " let g:airline#extensions#tabline#enabled = 1
" }}}

" #################
" File Related
" #################

" vimrc文件修改之后自动加载
autocmd! bufwritepost .vimrc source %

" .md 

autocmd BufNewFile *.md exec ":call Setmd()"
function! Setmd()
    call setline(1,"date: ".strftime("%Y-%m-%d %T"))
    call append(line("."),"tags: ")
    call append(line(".")+1,"---")
    call append(line(".")+2,"")
endfunc

autocmd BufNewFile *.py,*cpp exec ":call SetTitle()"
function! SetTitle()
    if &filetype=='python'
        call setline(1, "#-*- encoding: UTF-8 -*-")
	call append(line("."), "")
	call append(line(".")+1, "# Author: bonfy")
	call append(line(".")+2, "# Email:  i@bonfy.im")
	call append(line(".")+3, "# Created Time: ".strftime("%Y-%m-%d %T"))
	call append(line(".")+4, "")
    endif
    if &filetype=='cpp'
	call setline(1, "/****")
	call append(line("."), "      > File Name: ".expand("%"))
        call append(line(".")+1, "      > Author: bonfy")
        call append(line(".")+2, "      > Mail: i@bonfy.im")
        call append(line(".")+3, "      > Created Time: ".strftime("%Y-%m-%d %T"))
	call append(line(".")+5, "****/")
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
endfunc
"新建文件后，自动定位到文件末尾
autocmd BufNewFile * normal G
