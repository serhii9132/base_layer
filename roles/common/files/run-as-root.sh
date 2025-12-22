function run-as-root {
  if [ "$UID" -ne 0 ]; then
    sudo "$@"
  else
    "$@"
  fi
}