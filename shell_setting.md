# シェルの色々
## シェル切り替え
```bash
chsh -s /bin/zsh
```
## zshの外部プラグイン
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): 薄く出てくる補完
- [zsh-completions](https://github.com/zsh-users/zsh-completions): 下に出てくる補完
- [zsh-syntax-highlightning](https://github.com/zsh-users/zsh-syntax-highlighting): syntax hilight
  - これらは`git clone`して`~/.zshrc`に`source /path/to/hoge.zsh`
- [exa](https://github.com/ogham/exa): かわいい`ls`
  - `sudo apt install exa` (Ubuntu) or `brew install exa` (Mac)
  - `~/.zshrc`にエイリアス`alias ls='exa --icons` `alias ll='ls -l'` `alias la='ls -la'` を書く。
