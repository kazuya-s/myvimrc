# [NeoBundle](https://github.com/Shougo/neobundle.vim)

## プラグイン一覧
`:NeoBundleList`

## プラグイン追加
1. [vim-script](http://vim-scripts.org/vim/scripts.html)のファイルを追加する場合  
```vim
NeoBundle "rails.vim"
```

2. githubのリポジトリを追加する場合  
```vim
NeoBundle "tpope/vim-fugitive"
```

3. gitリポジトリを追加する場合  
```vim  
NeoBundle "git://git.wincent.com/command-t.git"
```

NeoBundleCheckがONになっているので、vim起動時にプラグインの追加が行われる。

手動で行う場合は `:NewBundleInstall(!)`

## プラグイン削除
.vimrcから不要なNeoBundle行を削除して `:NeoBundleClean(!)`