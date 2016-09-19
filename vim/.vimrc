""" for install NeoBundle """
" mkdir -p ~.vim/bundle
" git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
"""----------------------""""

set nocompatible "vi非互換モード
set backspace=2
"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Townk/vim-autoclose'

" auto compeletion
NeoBundle 'Shougo/neocomplete.vim'
let g:neocomplete#enable_at_startup = 1 

" Color themes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/twilight'
NeoBundle 'vim-scripts/twilight256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'djjcast/mirodark'
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'oguzbilgic/sexy-railscasts-theme'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'morhetz/gruvbox'
" Indent
NeoBundle 'Yggdroot/indentLine'
" for Haskell
NeoBundle 'raichoo/haskell-vim'
"NeoBundle 'dag/vim2hs'
" MarkDown
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
" verliog
NeoBundle 'scrooloose/syntastic'



call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------

" 表示系
"#######################
set number "行番号表示
set showmode "モード表示
set title "編集中のファイル名を表示
set ruler "ルーラーの表示
set showcmd "入力中のコマンドをステータスに表示する
set showmatch "括弧入力時の対応する括弧を表示
set laststatus=2 "ステータスラインを常に表示
set showmatch "対応する括弧を表示する"
" Indent Line
 let g:indentLine_color_term = 111
 let g:indentLine_color_gui = '#708090'
 let g:indentLine_char = '|' "use ¦, ┆ or │ 
" let g:indentLine_char = 
"set list listchars=tab:\¦\ 
"let g:indentLine_enabled = 1
let g:indentLine_faster = 1
nmap <silent><Leader>i :<C-u>IndentLinesToggle<CR>
" Color settings
let g:solarized_termcolors=256
"set t_Co=16
set background=dark
"初期設定
syntax enable
"colorscheme jellybeans
colorscheme hybrid

"#######################
" プログラミングヘルプ系
"#######################
set smartindent "オートインデント
" tab関連
set expandtab "タブの代わりに空白文字挿入
set ts=2 sw=2 sts=2 "タブは半角4文字分のスペース
" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
"" ファイルタイプでインデント幅を変える
augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.py setlocal tabstop=4 softtabstop=4 shiftwidth=4
  autocmd BufNewFile,BufRead *.rb setlocal tabstop=2 softtabstop=2 shiftwidth=2
augroup END

"#######################
" 検索系
"#######################
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set noincsearch "検索文字列入力時に順次対象文字列にヒットさせない
set nohlsearch "検索結果文字列の非ハイライト表示

"######################
"その他
"######################
set clipboard=unnamed
set hidden "編集中でも他のファイルを表示"
"######################
" for Haskell
" ####################
" Indents
let g:haskell_indent_if = 3
let g:haskell_indent_case = 2
let g:haskell_indent_let = 4
let g:haskell_indent_where = 6
let g:haskell_indent_do = 3
let g:haskell_indent_in = 1
let g:haskell_enable_arrowsyntax = 1

let g:ycm_semantic_triggers = {'haskell' : ['.']}
let g:necoghc_enable_detailed_browse = 1
"####################
" file type
"####################
au BufRead,BufNewFile *.md set filetype=markdown

" 分割した設定ファイルをすべて読み込む
set runtimepath+=~/.vim/
runtime! rc/*.vim
