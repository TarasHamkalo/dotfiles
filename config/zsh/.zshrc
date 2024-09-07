export ZSH=$HOME/.config/zsh

### ---- Aliases -------------------------------------
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

alias la="ls -A"
alias ls="ls --color=auto"
alias ll="ls -alF"
alias l="ls -CF"

alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

alias gpa="git add .; git commit -m "#"; git push;"
alias sapu="sudo apt update -y;  sudo apt upgrade -y; exit"
### ---- Env -------------------------------------
# export PATH="/home/taras/miniconda3/bin:$PATH"  # commented out by conda initialize
# export TERM=alacritty
export GIT_EDITOR=nvim
export CC=gcc
export LDLIBS="-lm"
export LDFLAGF="-std=c11 -Wall -Werror"

# export MANPAGER='nvim +Man!'
# export MANWIDTH=999

### ---- history config -------------------------------------
HISTSIZE=10000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

### ---- zsh options -------------------------------------
# setopt autocd

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme
source $ZSH/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/custom/plugins/zsh-completions/src $fpath)

### -- Apps setup
source $HOME/.cargo/env

### --- Spaceship Config -----------------------------------
SPACESHIP_PROMPT_ORDER=(
  # user          # Username section
  dir           # Current directory section
  # host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  # vi_mode       # Vi-mode indicator
  # jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# SPACESHIP_USER_SHOW=always
# SPACESHIP_PROMPT_SYMBOL=''
# SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
# SPACESHIP_CHAR_SUFFIX=" "
SPACESHIP_CONDA_SHOW=true

### --- Binding -----------------------------------
bindkey '' autosuggest-accept

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/taras/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/taras/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/taras/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/taras/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

