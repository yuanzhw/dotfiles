# ==========================================
# 1. Oh My Zsh 核心配置 (通用)
# ==========================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

# 加载插件列表
plugins=(
    git
    extract
    sudo
    pip
    command-not-found
    z
    web-search
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ==========================================
# 2. UI 与终端基础设置 (通用)
# ==========================================
export GPG_TTY=$(tty)
PROMPT="%{$fg[white]%}%n@%{$fg[green]%}%m%{$reset_color%} ${PROMPT}"
