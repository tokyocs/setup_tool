" File encoding
set fileencoding=utf-8
set fileencodings=ucs-boms,utf-8,euc-jp,cp932
set fileformats=unix,dos,mac
set ambiwidth=double

" tabs and indents
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4
set smarttab

" text search
set incsearch
set ignorecase
set smartcase
set hlsearch

" cursor
set whichwrap=b,s,h,l,<,>,[,],~
set number
set cursorline
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk
set backspace=indent,eol,start   "

" parenthesis
set showmatch

" command autofile
set wildmenu
set history=5000


set list
set title
set nf=alpha
inoremap <silent> jj <ESC>
syntax on
colorscheme default



au FileType python setlocal sw=4 ts=4 ss=2
au FileType html setlocal sw=2 ts=2 ss=2
au FileType css setlocal sw=2 ts=2 ss=2
au FileType yaml setlocal sw=2 ts=2 ss=2
au FileType typescript setlocal sw=2 ts=2 ss=2
au FileType json setlocal sw=2 ts=2 ss=2
au FileType javascript setlocal sw=2 ts=2 ss=2
au FileType markdown setlocal sw=2 ts=2 ss=2

""""""""""""""""""""""""""""""
" emmetの設定
" ZEN CODING
""""""""""""""""""""""""""""""


let g:jedi#rename_command = ""
let g:jedi#documentation_command = ";"
let g:user_emmet_mode = 'iv'
let g:user_emmet_complete_tag = 1
let g:user_emmet_expandabbr_key = '<c-e>'
let g:user_emmet_settings = {
    \ 'indentation': '    ',
    \ 'lang' : 'ja',
    \ 'html' : {
    \ 'filters' : 'html',
    \ },
    \ 'css' : {
    \   'filters' : 'fc',
    \ },
    \}


""""""""""""""""""""""""""""""
" syntasticの設定
" スペルチェッカー
""""""""""""""""""""""""""""""

let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_mode_map = {
    \ 'mode': 'active',
    \ 'active_filetypes': ['javascript','python','ruby','R'],
    \ 'passive_filetypes': ['html']
    \}
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_save = 1

""""""""""""""""""""""""""""""
" unite.vimの設定
" ファイル一覧の表示など
""""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" fugitive.vimの設定
" Gitを便利に使う
""""""""""""""""""""""""""""""
" grep検索の実行後にQuickFix Listを表示する
autocmd QuickFixCmdPost *grep* cwindow

" ステータス行に現在のgitブランチを表示する
set statusline+=%{fugitive#statusline()}

""""""""""""""""""""""""""""""
" vim-indent-guides.vimの設定
" インデントを見やすく
""""""""""""""""""""""""""""""

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_guide_size=1
let g:indent_guides_auto_colors=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd   ctermbg=13
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven  ctermbg=12

if has('vim_starting')
    set nocompatible
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'thinca/vim-quickrun'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'grep.vim'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'vim-scripts/AnsiEsc.vim'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'fatih/vim-go'
NeoBundle 'leafgarland/typescript-vim'
call neobundle#end()

filetype plugin indent on

NeoBundleCheck
