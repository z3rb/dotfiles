backup() {
  echo "> Backing up file $1..."
  cp "$1" "$1.bak"
}

brewtree() {
  echo "> Creating formula dependency tree..."
  for formula in ${(f)"$(brew leaves | sort)"}; do
    printf "\n=== %s ===\n" "$formula"
    brew deps --tree "$formula"
  done | bat --language=txt
}

brewup() {
  echo "> Performing brew maintenance..."
  brew update &&
  brew upgrade &&
  brew cleanup
}

extract() {
  echo "> Extracting archive $1..."
  case "$1" in
    *.tar.gz|*.tgz) tar -xzf "$1" ;;
    *.tar.bz2|*.tbz2) tar -xjf "$1" ;;
    *.tar.xz|.txz) tar -xJf "$1" ;;
    *.zip) unzip "$1" ;;
    *gz) unzip "$1" ;;
    *) echo "> Unsupported archive: $1" ;;
  esac
}

groot() {
  echo "> Jumping to repository root..."
  cd "$(git rev-parse --show-toplevel)"
}

gundo() {
  echo "> Undoing last commit..."
  git reset --soft HEAD~1
}

mkcd() {
  echo "> Jumping to new directory $1..."
  mkdir -p "$1" && cd "$1"
}

pathshow() {
  echo "> Showing paths..."
  print -l ${(s/:/)PATH}
}

reload() {
  echo "> Reloading shell configuration..."
  source "$HOME/.zshrc"
}

zipit() {
  echo "> Creating archive $1..."
  local archive="$1"
  shift

  if [[ -z "$archive" || "$#" -eq 0 ]]; then
    echo "> Usage: zipit <archive-name.zip> <file-or-dir> [more files...]"
    return 1
  fi

  case "$archive" in
    *.zip) ;;
    *) archive = "${archive}.zip" ;;
  esac

  zip -r "$archive" "$@" -x '*.DS_Store' -x '__MACOSX/*'
}
