if command -v ruff > /dev/null 2>&1; then
  eval "$(starship init zsh)"
else
  autoload -Uz colors && colors
  PROMPT='%F{green}%n@%m%f:%F{blue}%~%f %# '
fi
