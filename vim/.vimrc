" BONFY Vimrc

" Global Environment

" Bug Fix

" https://github.com/vim/vim/issues/3117
" if !has('patch-8.1.201')
if has('python3')
    silent! python3 1
endif

" Environment {
    set nocompatible            " Must be first line
    set background=dark         " Assume a dark background
    filetype plugin indent on   " Automatically detect file types.
    syntax on                   " Syntax highlighting
    " set mouse=a                 " Automatically enable mouse usage
    " set mousehide               " Hide the mouse cursor while typing
    scriptencoding utf-8


    " Use bundles config {
        if filereadable(expand("~/.vimrc.bundles"))
            source ~/.vimrc.bundles
        endif
    " }

" }

" Vim UI {
    set backspace=indent,eol,start  " Backspace for dummies
    set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set list
    set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
" }

" Formatting {
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
" }

" vimrc文件修改之后自动加载
autocmd! bufwritepost .vimrc source %
