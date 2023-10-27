export ZSH=$HOME/.config/zsh

### ---- Aliases -------------------------------------
alias v="nvim"
alias vi="nvim"
alias vim="nvim"
alias ll="ls -al"

### ---- Env -------------------------------------
path+=("$HOME/.jdks/temurin-17.0.9/bin")
export PATH
export GIT_EDITOR=$VIM

### ---- history config -------------------------------------
HISTSIZE=10000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme
source $ZSH/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fpath=($ZSH/custom/plugins/zsh-completions/src $fpath)

### --- Spaceship Config -----------------------------------
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  exec_time     # Execution time
  line_sep      # Line break
  # vi_mode       # Vi-mode indicator
  # jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

### --- Binding -----------------------------------
bindkey '' autosuggest-accept
