# Dotfiles

## TODO:
- Configure zsh to use vi bindings
- Alias long git commands

## Homebrew Utils
- fasd
- jq
- the_silver_searcher
- neovim
- pyenv
- macvim
- trash
- fswatch
- openssl
- git
- yarn


## Mac Tools
- nvm
- iTerm2

## Python Tools
- Pygments (the executable is called pygmentize)
- grip

## Javascript Tools
- yarn

## Prezto Plugins (Autocomplete)
- fasd
- yarn

## Misc Stuff
- [fira code](https://github.com/tonsky/FiraCode) (size 12)
- Set up solarized theme for iterm2
- Executables
  - `mkdir ~/bin; echo "export PATH=$PATH:~/bin" > .zshrc`
  - `ln -s ~/dotfiles/bin/nvim-cd-to-dir.py ~/bin`
  - `ln -s ~/dotfiles/bin/nvim-edit-in-host.py ~/bin`

## Configuration files
- Vimrc:
  - `ln -s ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim`
- Zshrc:
  - `echo "source ~/dotfiles/zsh/startup.sh" > .zshrc`
  - `echo "source ~/dotfiles/zsh/alias.sh" > .zshrc`
- Ag:
  - `ln -s ~/dotfiles/ag/ignore ~/.agignore'`
