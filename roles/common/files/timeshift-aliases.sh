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