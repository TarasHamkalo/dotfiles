#!/usr/bin/bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/taras-hamkalo/Software/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/taras-hamkalo/Software/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/taras-hamkalo/Software/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/taras-hamkalo/Software/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

