alias shutdown='run-as-root shutdown now'
alias reboot='run-as-root shutdown -r now'

if [ "$(command -v nano)" ]; then
    export EDITOR=nano
fi  

alias clc='clear'
alias cls='clear'

alias qq='exit'

alias reload='source ${HOME}/.bashrc'

if [ -d ${HOME}/projects/ ]; then
    alias proj='cd ${HOME}/projects/'
fi

alias cd1='cd ..'
alias cd2='cd ..; cd ..'

alias dd='dd status=progress'
alias df='df --human-readable'
alias du='du --human-readable'
alias mkdir='mkdir --parents --verbose'
alias mv='mv --interactive --verbose'