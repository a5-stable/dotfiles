# rbenv
export PATH=~/.rbenv/bin:$PATH
eval "$(rbenv init -)"

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
eval "$(anyenv init -)"
