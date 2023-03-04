# docker
alias dexec="docker exec -it yoom-app-1 /bin/bash"
alias dexecc="docker exec -it yoom-app-1 bash -c 'bundle exec rails c'"
alias daa="docker attach yoom-app-1"
alias dca="docker compose stop app"
alias dua="docker compose up app"
alias dcd='docker compose down'

# git
alias gs="git status"
alias gaa="git add -A"
alias gcm="git commit"
alias gr="git reset HEAD --hard"
alias gb="git branch"
alias gf='git fetch origin'
function gch (){
  local LOCAL_BRANCH=${1:-main}
  git checkout "${LOCAL_BRANCH}"
}

export BUNDLER_EDITOR='code'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(anyenv init -)"

source ~/.git-completion.bash
source ~/.git-prompt.sh
# rbenv
export PATH=~/.rbenv/bin:$PATH
eval "$(rbenv init -)"
