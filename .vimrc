"PHP補完
<span class="s1">execute</span> pathogen#infect<span class="s2">()</span>
syntax <span class="s4">on</span>
<span class="s1">filetype</span> plugin indent on
<span class="s1">set</span> wrapscan
<span class="s1">set</span> number
<span class="s1">set</span> <span class="s5">backspace</span>=start<span class="s1">,</span>indent<span class="s1">,</span>eol
<span class="s1">set</span> <span class="s5">t_Co</span>=256
<span class="s1">colorscheme</span> wombat256mod
<span class="s1">autocmd</span> <span class="s4">FileType</span> php <span class="s1">set</span> <span class="s5">omnifunc</span>=phpcomplete#CompletePHP

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
     
     " NERDTreeを設定                  
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
     
    " PHPの関数名の説明
    NeoBundle 'violetyk/neocomplete-php.vim'
    let g:neocomplete_php_locale = 'ja'

    call neobundle#end() 
     " Required:
     ""filetype plugin indent on
      
      
     "" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
      " 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
      NeoBundleCheck
       
       "-------------------------
       " End Neobundle Settings.
      "-------------------------
