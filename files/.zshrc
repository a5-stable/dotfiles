# Docker aliases

alias dexec="docker exec -it XXX /bin/bash"
alias dexecc="docker exec -it XXX bash -c 'bundle exec rails c'"
alias daa="docker attach XXX"
alias dca="docker compose stop app"
alias dua="docker compose up app"
alias dcd="docker compose down"
alias flutter="fvm flutter"

# Git aliases
alias gs="git status"
alias gaa="git add -A"
alias gcm="git commit"
alias gr="git reset HEAD --hard"
alias gb="git branch"
alias gf="git fetch origin"

function gch() {
  local LOCAL_BRANCH=${1:-main}
  git checkout "${LOCAL_BRANCH}"
}

# Set default editor for Bundler
export BUNDLER_EDITOR='code'

# NVM setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load NVM bash_completion
eval "$(anyenv init -)"

# rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Git completion and prompt
source ~/.git-completion.bash
source ~/.git-prompt.sh


# brewのインストール
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/a5/.zprofile
# eval "$(/opt/homebrew/bin/brew shellenv)"

# rbenvのインストール
## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/a5/.dart-cli-completion/zsh-config.zsh ]] && . /Users/a5/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

