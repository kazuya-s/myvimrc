" ----------------------------------------
" NeoBundle プラグイン管理
" https://github.com/Shougo/neobundle.vim
" ----------------------------------------
set nocompatible               " Be iMproved
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

" (1) vim-script(http://vim-scripts.org/vim/scripts.html)のファイルを追加する場合
" 例：NeoBundle 'rails.vim'
NeoBundle 'JavaScript-syntax'

" (2) github の任意のリポジトリを追加する場合
" 例：Bundle 'tpope/vim-fugitive'
NeoBundle 'bling/vim-airline'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'Lokaltog/powerline-fontpatcher'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-rails'
NeoBundle 'scrooloose/nerdtree'

" (3) github以外のgitリポジトリを追加する場合
" 例：Bundle 'git://git.wincent.com/command-t.git'

call neobundle#end()

filetype on " プラグイン読み込んだらインデント戻す
filetype plugin indent on
filetype indent on

NeoBundleCheck

" ----------------------------------------
" 共通
" ----------------------------------------
set enc=utf-8
set fenc=utf-8
set backspace=indent,eol,start

" ----------------------------------------
" 表示
" ----------------------------------------
set number " 行番号表示
set showmode " モード表示
set title " 編集中のファイル名を表示
set ruler " ルーラーの表示
set showcmd " 入力中のコマンドをステータスに表示
set showmatch " マッチするカッコを表示
set laststatus=2 " ステータスラインを常に表示
syntax on

" ----------------------------------------
" 検索
" ----------------------------------------
set incsearch
set wrapscan " 検索が最期まで行ったら最初に戻る

" ----------------------------------------
" プログラミング
" ----------------------------------------
set smartindent " オートインデント
set tabstop=4

"
" lint
"
autocmd FileType javascript :compiler gjslint
autocmd QuickfixCmdPost make copen

" ----------------------------------------
" airline
" ----------------------------------------
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" ----------------------------------------
" NERDTree
" ----------------------------------------
let NERDTreeShowHidden=1
