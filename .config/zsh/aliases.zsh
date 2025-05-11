alias brewtree="brew list | xargs brew deps --tree"
alias brewup="brew update && brew upgrade && brew cleanup"
alias cat="bat"
alias log="git log --decorate --graph --oneline"
alias logstat="git log --decorate --graph --oneline --stat"
alias ls='eza -ahlo --time-style="+%Y-%m-%d %H:%M"'
alias lstree='eza -ahloT --time-style="+%Y-%m-%d %H:%M"'
alias reload="source ~/.zshrc"
alias tffmt="terraform fmt -recursive"
alias tfinit="terraform init"
alias tfls="terraform state list"
alias tfplan="terraform plan"
alias tfshow="terraform show -json"
alias tfval="terraform validate"
