autoload -U colors && colors

# Set the prompt
PS1='[%(!.%n .)%1~]$ '

# Set History 
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Auto-complete
autoload -Uz compinit
compinit
comp_options+=(globdots) # include hidden files

