# exa
# ディレクトリをツリー表示
alias tree='exa -T'
# 色付きlsコマンド
alias ls='exa --icons'
alias ll='ls -l'
alias la='ls -la'

# rust
source "$HOME/.cargo/env"

# go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# 保管機能を有効にして実行
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/settings/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# 色
export CLICOLOR=1
export TERM=xterm-256color

# Ruby
export PATH="$HOME/.rbenv/shims:$PATH"
alias beruby='bundle exec ruby'

# Java
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"

# Mariadb
export PATH="/usr/local/opt/mariadb@10.4/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Setup Compiler paths for readline and openssl
local READLINE_PATH=$(brew --prefix readline)
local OPENSSL_PATH=$(brew --prefix openssl@1.1)
export LDFLAGS="-L$READLINE_PATH/lib -L$OPENSSL_PATH/lib"
export CPPFLAGS="-I$READLINE_PATH/include -I$OPENSSL_PATH/include"
export PKG_CONFIG_PATH="$READLINE_PATH/lib/pkgconfig:$OPENSSL_PATH/lib/pkgconfig"

# Use the OpenSSL from Homebrew instead of ruby-build
# Note: the Homebrew version gets updated, the ruby-build version doesn't
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$OPENSSL_PATH"

# Place openssl@1.1 at the beginning of your PATH (preempt system libs)
export PATH=$OPENSSL_PATH/bin:$PATH

# Load rbenv
eval "$(rbenv init -)"

# コマンド実行結果の後に空行
add_newline() {
  if [[ -z $PS1_NEWLINE_LOGIN ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}

# Git
export PATH=/usr/local/bin/git:$PATH

autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'

# hook
precmd() { 
  add_newline
  vcs_info
}

# プロンプト
setopt PROMPT_SUBST
PROMPT='%B%F{11}%n@%m%f:%F{11}%~%f%b %F{cyan}$vcs_info_msg_0_%f
%# '

# Python
alias python=python3
alias prpython='poetry run python'
PYENV_ROOT="${HOME}/.pyenv"
PATH="${PYENV_ROOT}/bin:${PATH}"
if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init --path)"
    eval "$(pyenv init -)"
fi

# syntax highlight
source /Users/sasaokaseiya/settings/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# sed
alias sed='gsed'
