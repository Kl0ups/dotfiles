# If you want to separate your RC into multiple files
# source .zsh_aliases
# source .zsh_functions

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Path to the monitoring script executables
export PATH=$PATH:/home/yanis/.bin/

# Path to export Nvim version manager folder
export PATH=/home/yanis/.local/share/bob/nvim-bin:$PATH

export XDG_DATA_HOME=$HOME/.local/share

ZSH_THEME="junkfood"

eval "$(oh-my-posh init zsh --config ~/.poshthemes/mytheme.omp.json)"

plugins=(
      git
      alias-tips
  )

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

source ~/.config/kubectl_aliases

# Add all other config here
