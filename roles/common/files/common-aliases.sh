function run-as-root {
  if [ "$UID" -ne 0 ]; then
    sudo "$@"
  else
    "$@"
  fi
}

alias shutdown='run-as-root shutdown now'
alias reboot='run-as-root shutdown -r now'

alias apt-install='run-as-root apt install --assume-yes'
alias apt-remove='run-as-root apt purge --autoremove --assume-yes'
alias apt-fix='run-as-root apt install --fix-broken'
alias apt-autoremove='run-as-root apt autoremove'
alias apt-update='run-as-root apt update'
alias clean_system='run-as-root apt-get autoremove && run-as-root apt-get clean && run-as-root apt-get autoclean'

alias ssh_start='run-as-root systemctl start ssh'
alias ssh_status='run-as-root systemctl status ssh'
alias ssh_restart='run-as-root systemctl restart ssh'
alias ssh_stop='run-as-root systemctl stop ssh'

if [ "$(command -v timeshift)" ]; then
    alias tdelsnap='run-as-root timeshift --delete'
    alias tlistsnap='run-as-root timeshift --list'
    alias trestore='run-as-root timeshift --restore'

    taddsnap(){
        if [[ -z "${1}" ]]; then
            echo "Add a description of the snapshot before creating it"
            return
        else
            run-as-root timeshift --create --comments "$1"
        fi
    }
fi

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