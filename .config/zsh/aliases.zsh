alias brewtree="brew list | xargs brew deps --tree"
alias brewup="brew update && brew upgrade && brew cleanup"
alias cat="bat"
alias log="git log --decorate --graph --oneline"
alias logs="git log --decorate --graph --oneline --stat"
alias ls='eza -ahlo --time-style="+%Y-%m-%d %H:%M"'
alias lstree='eza -ahloT --time-style="+%Y-%m-%d %H:%M"'
alias reload="source ~/.zshrc"
