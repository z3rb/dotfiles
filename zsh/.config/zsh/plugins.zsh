# Plugins
[[ -f /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh ]] && \
  source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

[[ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]] && \
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ -f /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && \
  source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Completions
command -v ruff > /dev/null 2>&1 && eval "$(ruff generate-shell-completion zsh)"
command -v uv > /dev/null 2>&1 && eval "$(uv generate-shell-completion zsh)"
command -v zoxide > /dev/null 2>&1 &&eval "$(zoxide init zsh)"
