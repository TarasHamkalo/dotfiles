export ZSH=$HOME/.config/zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

### ---- ALIASES -------------------------------------
alias source_mpi="source /etc/profile.d/modules.sh; module load mpi/openmpi-x86_64"

alias open="xdg-open"

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

alias cd="z"

alias pyshell="source $HOME/.conda.zshrc"

alias webshell="source $HOME/.web.zshrc"

### ---- ENV -------------------------------------
export GOPATH="$HOME/go"

export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.nvm/versions/node/v20.19.2/bin"
export PATH="$HOME/.local/bin:$PATH"

export EDITOR=nvim
export GIT_EDITOR=nvim

export CC=gcc
export LDLIBS="-lm"
export LDFLAGF="-std=c11 -Wall -Werror"

### ---- HISTORY CONFIG -------------------------------------
HISTSIZE=10000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS

### ---- PLUGINS & THEMES -----------------------------------
source $ZSH/custom/themes/powerlevel10k/powerlevel10k.zsh-theme
source $ZSH/custom/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source $ZSH/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
fpath=($ZSH/custom/plugins/zsh-completions/src $fpath)

### --- Binding -----------------------------------
bindkey -e

autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line

bindkey '' autosuggest-accept

### --- Functions -----------------------------------
function tdir() {
  tmux new-session -A -s "$(basename "$PWD")-$(printf %s "$PWD" | md5sum | cut -c1-6)"
}

function vf() {
  file=$(fzf --preview="bat --color=always {}") && [[ -n "$file" ]] && vim "$file"; 
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

### --- Init -----------------------------------
eval "$(zoxide init zsh)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
