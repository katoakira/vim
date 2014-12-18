"vi互換モードで動作させない
set nocompatible

"シンタックスハイライトをonにする
syntax enable on

"カーソルの位置表示を行う
set ruler

"エンコーディングをUTF-8にする
set encoding=utf-8

"Tabキーのインデント
set tabstop=4
set shiftwidth=4
set expandtab

""括弧自動補完
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

""背景半透明
highlight Normal ctermbg=none

""---------------------------
" Start Neobundle Settings.
""---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
 "Required:
 call neobundle#begin(expand('~/.vim/bundle/'))
 
 " neobundle自体をneobundleで管理
  NeoBundleFetch 'Shougo/neobundle.vim'
   
   " 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
   " Required:
   call neobundle#begin(expand('~/.vim/bundle/'))
    
    " neobundle自体をneobundleで管理
   NeoBundleFetch 'Shougo/neobundle.vim'
     
     " NERDTreeを設定                  <----- 追記
     NeoBundle 'scrooloose/nerdtree'   
     
     " 表示・入力補完
     NeoBundle 'Townk/vim-autoclose'
     NeoBundle 'mattn/emmet-vim'

     " ツール・ユーティリティ系
     NeoBundle 'thinca/vim-quickrun'
     NeoBundle 'grep.vim'
    
    "シンタックステェック系
    NeoBundle 'scrooloose/syntastic'
    let g:syntastic_javascript_checker = "jshint" "JavaScriptのSyntaxチェックはjshintで
    let g:syntastic_check_on_open = 0 "ファイルオープン時にはチェックをしない
    let g:syntastic_check_on_save = 1 "ファイル保存時にはチェックを実施
     
     call neobundle#end()
     
     " Required:
     ""filetype plugin indent on
      
      
     "" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
      " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
      NeoBundleCheck
       
       "-------------------------
       " End Neobundle Settings.
      "-------------------------
