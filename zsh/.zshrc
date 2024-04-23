# Mikko's zsh
export XDG_CONFIG_HOME="$HOME/.dotfiles"

unsetopt correct_all
setopt auto_cd

# ------------------------------ Prompt ----------------------------------------
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%b'

PROMPT=$'%F%B%F{%(#.blue.green)}%n%b%F{%(#.blue.green)}%B%F{reset} %(6~.%-1~/…/%4~.%5~)%b%F{%(#.blue.green)} %F{yellow}${vcs_info_msg_0_}%f'
PROMPT+=$'\n%B%(#.%F{red}#.%F{cyan})%b%F{reset}'
# RPROMPT='%D{%H:%M:%S}'

# ------------------------------ Autocompletion --------------------------------
autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' rehash true
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*' completer _expand _complete

# ------------------------------ Aliases ---------------------------------------
# Common
alias g='git'
alias c='clear'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias cp='cp -v'
alias rm='rm -I'
alias rmdir='rmdir -i'
alias mv='mv -iv'
alias vim='nvim'
alias ln='ln -sriv'

# Colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'

# ------------------------------ Plugins etc. ----------------------------------
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"   
