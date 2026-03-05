link() {
  local source=$1
  local target=$2
  mkdir -p $target
  stow -R -t $target $source
}

main() {
  link $1 $2
}

main $@
