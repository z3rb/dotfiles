alias cat="bat"
alias ls='eza -ahlo --time-style="+%Y-%m-%d %H:%M"'
alias lstree='eza -ahloT --time-style="+%Y-%m-%d %H:%M"'
alias reload="source ~/.zshrc"

# Git
alias gbr="git branch -v"
alias glog="git log --decorate --graph --oneline"
alias glogs="git log --decorate --graph --oneline --stat"
alias gst="git status -s"

# Homebrew
alias brewtr="brew list | xargs brew deps --tree"
alias brewup="brew update && brew upgrade && brew cleanup"

# Terraform
alias tffmt="terraform fmt -recursive"
alias tfinit="terraform init"
alias tfls="terraform state list"
alias tfplan="terraform plan"
alias tfshow="terraform show -json"
alias tfval="terraform validate"
