# ターミナルエミュレータ
## Mac
- [iTerm2](https://iterm2.com/index.html)をダウンロード。
- Hotkey
  - Preferencesの`Keys` -> `Hotkey` -> `Create a Dedicated Hotkey Window...`
  - `Double-Tap Key`で`^`選択
  - `General` -> `Startup` -> `Only Restore Hotkey Window`
  - `Profiles` -> `Hotkey Window` -> `Window` の`Transparency`で透明度設定(15くらい)。`Style`を`Maximized`に。
- Font
  - `Profiles` -> `Hotkey Window` -> `Text` -> `Font` をFiraCode Nerd Fontに
- ショートカットで起動
  - Automator.appのファイル -> 新規 -> クイックアクション。`アプリケーションを起動`をドラッグ&ドロップしてアプリを選択。⌘Sで名前(iTerm起動)など付けて保存。
  - Macのシステム環境設定 -> キーボード -> ショートカット -> サービス から作ったクイックアクションを探し、ショートカット(`^T`)設定。
- スクロールバック
  - `Profiles` -> `Hotkey Window` -> `Terminal` -> `Unlimited scrollback`をチェック  
## Ubuntu
- `sudo apt-get install guake`でGuakeインストール。`F12`でiTerm2のHotkeyみたいなことができる。
  - `F12`はChromeのDeveloper Toolとかぶっているので、Guake Preferencesの`Keyboard shortcuts` -> `General` -> `Toggle Guake visibility`から他のキーに変更
- スクロールバック
  - Guake Preferencesの`Scrolling`から`Infinite scrolling`をチェック
