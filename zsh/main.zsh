DOTFILES_PATH=~/dotfiles/

source $DOTFILES_PATH/zsh/startup.zsh
source $DOTFILES_PATH/zsh/alias.zsh

PATH=$HOME/dotfiles/bin:$PATH

function vim() {
  if [ -z ${NVIM_LISTEN_ADDRESS+x} ]; then
    /Applications/MacVim.app/Contents/MacOS/Vim "$@"
  else
    nvim-edit-in-host.py "$@"
  fi
}

function nvim() {
  if [ -z ${NVIM_LISTEN_ADDRESS+x} ]; then
    command nvim "$@"
  else
    nvim-edit-in-host.py "$@"
  fi
}

# tabtab source for yarn package
# uninstall by removing these lines or running `tabtab uninstall yarn`
[[ -f /Users/kevin/.nvm/versions/node/v7.7.3/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.zsh ]] && . /Users/kevin/.nvm/versions/node/v7.7.3/lib/node_modules/yarn-completions/node_modules/tabtab/.completions/yarn.zsh