# プロンプト系

# LANG
export LANG=ja_JP.UTF-8

# 色設定
autoload colors
colors
export TERM=xterm-256color

# カレントディレクトリを右側に表示
RPROMPT="%{$fg[green]%}%/%{$reset_color%}"

# コマンド実行後は右プロンプトを消す
setopt transient_rprompt

# # 以降をコメントとして扱う
setopt interactive_comments

# ビープを無効にする
setopt no_beep
setopt no_hist_beep
setopt no_list_beep

# 補完系
autoload -Uz compinit
compinit

# 2個以上接続選択肢があった場合プロンプトによる選択を行う
zstyle ':completion:*default' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完候補のメニュー選択で、矢印キーの代わりにhjklで移動出来るようにする。
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
# 補完候補を一覧で表示する
setopt auto_list

# 補完キー連打で候補順に自動で補完する
setopt auto_menu

# = 以降も補完する（例：--option=value）
setopt magic_equal_subst

# alias補完
setopt complete_aliases


# 履歴系

# 履歴サイズ
HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

# コマンド履歴に実行時間も記録する
setopt extended_history

# 履歴中の重複行をすべて削除する
setopt hist_ignore_all_dups

# 直前と重複するコマンドを記録しない
setopt hist_ignore_dups

# コマンド中の余分なスペースは削除して履歴に記録する
setopt hist_reduce_blanks

# 履歴と重複するコマンドを記録しない
setopt hist_save_no_dups

# 履歴をすぐに追加する（通常はシェル終了時）
setopt inc_append_history

# Zsh間で履歴を共有する
setopt share_history


# cd自動補完
setopt auto_cd

# ディレクトリスタック
setopt auto_pushd

# ディレクトリスタックと重複したディレクトリをスタックに追加しない
setopt pushd_ignore_dups

# ディレクトリ移動時にls -al
function chpwd() { ls -l }


# バックグラウンド処理の状態変化をすぐに通知する
setopt notify

# 終了ステータスが0以外の場合にステータスを表示する
setopt print_exit_value

# 8bit文字を有効にする
setopt print_eight_bit

# VCS情報の表示を有効にする
setopt prompt_subst

# rm * の前に確認をとる
setopt rm_star_wait


# alias
alias la="ls -GFa"
alias ll="ls -GFl"
alias du="du -h"
alias df="df -h"

alias gaa="git add --all"
alias gcm="git commit"
alias gcl="git clone"
alias gft="git fetch"
alias gmg="git merge"
alias gps="git push"
alias grm="git rm -r"
alias gsa="git submodule add"

# ^D でシェルを終了しない
setopt ignore_eof


# 色設定

# ls
export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

# 補完
zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'


# tmux
if [ -z $TMUX ]; then
  if $(tmux has-session 2> /dev/null); then
    tmux a
  else
    tmux new-session \; splitw -h
  fi
fi
