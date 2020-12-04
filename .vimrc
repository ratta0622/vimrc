"文字コードをUTF-8に設定
set fenc=utf-8


" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable


" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
" 改行時に自動でインデント
set autoindent

" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

"---------------------------------Dein.vim----------------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.vim/dein')
  call dein#begin('$HOME/.vim/dein')

  call dein#add('$HOME/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Plugin
  call dein#add('easymotion/vim-easymotion')
  call dein#add('scrooloose/nerdtree')
  call dein#add('junegunn/vim-easy-align')
  call dein#add('yuttie/comfortable-motion.vim')
  call dein#add('simeji/winresizer')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-commentary')

  " Colorscheme
  call dein#add('raphamorim/lucario')
  call dein#add('tomasr/molokai')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"---------------------------------------------------------------------------


colorscheme lucario


" bracket 
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>


" set ; as <LEADER>
let mapleader = ";"


"--------NERDTree-------------------------------------------------------
" start NERDTree by Ctrl+e
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"-----------------------------------------------------------------------

"------vim-easy-align---------------------------------------------------
" vipga=
xmap ga <Plug>(EasyAlign)
" gaip=
nmap ga <Plug>(EasyAlign)
"-----------------------------------------------------------------------

"---------vim-easymotion------------------------------------------------
" move to line over windows
map <Leader><Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader><Leader>l <Plug>(easymotion-overwin-line)
"-----------------------------------------------------------------------

"------------------comfortable-motion.vim-------------------------------
"up   <Ctrl+u> <Ctrl+b>
"down <Ctrl+d> <Ctrl+f>
let g:comfortable_motion_interval = 2000.0/60
let g:comfortable_motion_friction = 70.0
let g:comfortable_motion_air_drag = 2.0
"-----------------------------------------------------------------------

"-----------------------winresizer--------------------------------------
let g:winresizer_start_key = '<C-K>'
"-----------------------------------------------------------------------

"-------------------------vim-airline-----------------------------------
"vim-airline-themes
let g:airline_theme = 'lucius'
"-----------------------------------------------------------------------

"---------------------------vim-surround--------------------------------
"d:delete c:change s:surround i:innner
"e.g)
" di( -> delete characters in ()
" cs'( -> change '' to ()
"-----------------------------------------------------------------------

"--------------------------vim-commentary-------------------------------
"gcc: comment out current line
"gc4: comment out 4 lines under current line
"gc(in visual mode): comment out designated line
"-----------------------------------------------------------------------