# nvim
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# pyenv
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# rbenv
eval "$(rbenv init -)"
