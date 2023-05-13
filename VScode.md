# VSCodeの設定，拡張機能のメモ
## 拡張機能
- Dracula Official
- Rainbow CSV
  - csvをフィールドごとに色分け
- Edit csv
  - エクセルみたいな見た目になる
- Material Icon Theme
  - アイコンかわいくなる
- Indent-rainbow
  - インデントを色分け
- Trailing Spaces
  - 無駄なスペースが赤色になる
- GitHub Copilot
  - コードの補完  Kiteみたいなやつ
- vscode-pdf
  - PDF viewer
- Python
- Ruby
- endwise
  - Rubyの`end`を自動で書いてくれる
- Jupyter
- Markdown All in One
- Markdown Preview Enhanced
- Remote - SSH
- XML Tools
  - XPathのテストなどができる

## 設定
```json
{
    "window.newWindowDimensions": "maximized",
    "files.autoSave": "afterDelay",
    "editor.fontFamily": "Fira Code",
    "editor.fontLigatures": true,
    "window.zoomLevel": 0.3,
    "workbench.colorTheme": "Dracula",
    "workbench.iconTheme": "material-icon-theme",
    "workbench.colorCustomizations": {
        "editor.lineHighlightBackground": "#404040"
    },
    "[ruby]": {
        "editor.tabSize": 2,
        "editor.insertSpaces": true
    },
    "[javascript]": {
        "editor.tabSize": 2,
        "editor.insertSpaces": true
    }
}
```
