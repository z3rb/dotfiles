source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

[[ -f ~/dotfiles/.config/zsh/aliases.zsh ]] && source ~/dotfiles/.config/zsh/aliases.zsh
[[ -f ~/dotfiles/.config/zsh/functions.zsh ]] && source ~/dotfiles/.config/zsh/functions.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
