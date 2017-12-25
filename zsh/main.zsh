PATH=$HOME/dotfiles/bin:$PATH
DOTFILES_PATH=~/dotfiles/

source $DOTFILES_PATH/zsh/alias.zsh

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
