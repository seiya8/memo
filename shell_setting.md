# シェルの色々
## シェル切り替え
シェルの一覧表示 (Ubuntu)
```bash
cat /etc/shells
```

```bash
chsh -s /bin/zsh
```
## zshの外部プラグイン
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): 薄く出てくる補完
- [zsh-autocomplete](https://github.com/zsh-users/zsh-autocomplete): 下に出てくる補完
- [zsh-syntax-highlightning](https://github.com/zsh-users/zsh-syntax-highlighting): syntax hilight
  - これらは`git clone`して`~/.zshrc`に`source /path/to/hoge.zsh`
- [exa](https://github.com/ogham/exa): かわいい`ls`
  - `sudo apt install exa` (Ubuntu) or `brew install exa` (Mac)
  - `~/.zshrc`にエイリアス`alias ls='exa --icons` `alias ll='ls -l'` `alias la='ls -la'` を書く。
## その他設定
- コマンド実行結果の後の空行
  - `~/.zshrc`に以下を記入
```bash
add_newline() {
  if [[ -z $PS1_NEWLINE_LOGIN ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}

precmd() {
  add_newline
}
```
- プロンプト
  - zsh-syntax-highlightningでコマンドが緑色になるので、被らない色が良い
  - 下は黄色。改行あり。
```bash
PROMPT='%B%F{11}%n@%m%f:%F{11}%~%f%b
%# '
```
