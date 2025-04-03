# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export TERM=xterm-256color

# Zellij uses the SHELL variable
export SHELL="zsh"

alias update="sudo pacman -Syyu"

# Path Variables
#oh my posh, etc...
path+=("/home/alex/.local/bin/")

export PATH
autoload -U compinit; compinit

plugins=(
   git 
   zsh-syntax-highlighting 
   zsh-autosuggestions
   you-should-use
)


# zsh-syntax-highlighting config:
# Declare the variable
typeset -A ZSH_HIGHLIGHT_STYLES

# color reserved-words
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=red'

ZSH_HIGHLIGHT_STYLES[path]='none'

ZSH_HIGHLIGHT_STYLES[function]='fg=blue'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=blue,bold'

ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=orange'

# To disable highlighting of globbing expressions
ZSH_HIGHLIGHT_STYLES[globbing]='none'
# To define styles for nested brackets up to level 4
ZSH_HIGHLIGHT_STYLES[bracket-level-1]='fg=blue,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-2]='fg=red,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-3]='fg=yellow,bold'
ZSH_HIGHLIGHT_STYLES[bracket-level-4]='fg=magenta,bold'

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='nvim' 
 fi

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle :compinstall filename '/home/alex/.zshrc'
setopt globdots # lets zsh "see" hidden files

autoload -Uz compinit
compinit
_comp_options+=(globdots)
# End of lines added by compinstall

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/custom.toml)"
# https://zellij.dev/documentation/installation
# Launch zellij on zsh startup
# eval "$(zellij setup --generate-auto-start zsh)"

# TODO: Implement a todo script for printing the strings 
#       in a "todo" variable (if any) as well as adding/removing 
#       items from the command-line. 

#       ex. 
#           ~ zshtodo add "this is a todo"
#           ~ zshtodo add "this is also a todo"
#       prints:
#         todo
#         ------------------------
#         1. this is a todo
#         2. this is also a todo
#         ------------------------
#       removing:
#         ~ zshtodo remove 1
#         prints:
#         -----------------------
#         1. this is also a todo
#         -----------------------
#         
# echo "TODO: install and configure nnn (n3) https://github.com/jarun/nnn"
