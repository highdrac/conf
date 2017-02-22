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
alias la="ls -Fa --color"
alias ll="ls -Fl --color"
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
LS_COLORS='no=00;38;5;250:rs=0:di=01;38;5;198:ln=01;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:ex=01;38;5;82:*.cmd=00;38;5;82:*.exe=00;38;5;82:*.com=00;38;5;82:*.btm=00;38;5;82:*.bat=00;38;5;82:*.jpg=00;38;5;37:*.jpeg=00;38;5;37:*.png=00;38;5;37:*.gif=00;38;5;37:*.bmp=00;38;5;37:*.xbm=00;38;5;37:*.xpm=00;38;5;37:*.tif=00;38;5;37:*.tiff=00;38;5;37:*.pdf=00;38;5;98:*.odf=00;38;5;98:*.doc=00;38;5;98:*.ppt=00;38;5;98:*.pptx=00;38;5;98:*.db=00;38;5;98:*.aac=00;38;5;208:*.au=00;38;5;208:*.flac=00;38;5;208:*.mid=00;38;5;208:*.midi=00;38;5;208:*.mka=00;38;5;208:*.mp3=00;38;5;208:*.mpc=00;38;5;208:*.ogg=00;38;5;208:*.ra=00;38;5;208:*.wav=00;38;5;208:*.m4a=00;38;5;208:*.axa=00;38;5;208:*.oga=00;38;5;208:*.spx=00;38;5;208:*.xspf=00;38;5;208:*.mov=01;38;5;208:*.mpg=01;38;5;208:*.mpeg=01;38;5;208:*.3gp=01;38;5;208:*.m2v=01;38;5;208:*.mkv=01;38;5;208:*.ogm=01;38;5;208:*.mp4=01;38;5;208:*.m4v=01;38;5;208:*.mp4v=01;38;5;208:*.vob=01;38;5;208:*.qt=01;38;5;208:*.nuv=01;38;5;208:*.wmv=01;38;5;208:*.asf=01;38;5;208:*.rm=01;38;5;208:*.rmvb=01;38;5;208:*.flc=01;38;5;208:*.avi=01;38;5;208:*.fli=01;38;5;208:*.flv=01;38;5;208:*.gl=01;38;5;208:*.m2ts=01;38;5;208:*.divx=01;38;5;208:*.log=00;38;5;240:*.bak=00;38;5;240:*.aux=00;38;5;240:*.bbl=00;38;5;240:*.blg=00;38;5;240:*~=00;38;5;240:*#=00;38;5;240:*.part=00;38;5;240:*.incomplete=00;38;5;240:*.swp=00;38;5;240:*.tmp=00;38;5;240:*.temp=00;38;5;240:*.o=00;38;5;240:*.pyc=00;38;5;240:*.class=00;38;5;240:*.cache=00;38;5;240:';
export LS_COLORS

# 補完
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#eval $( dircolors -b $HOME/.LS_COLORS)

# tmux
if [ -z $TMUX ]; then
  if $(tmux has-session 2> /dev/null); then
    tmux a
  else
    tmux new-session \; splitw -h
  fi
fi
