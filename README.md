# Dotfiles

## TODO:
- Configure zsh to use vi bindings

## Homebrew Utils
- fasd
- jq
- neovim
- pyenv
- pyenv-virtualenv
- trash
- fswatch
- git
- pgcli
- ripgrep
- zsh

## Other Utils
- nvm (website)
- iTerm2 (website)
- hammerspoon (website)
- cryptomator (website)
- keepassxc (website)
- docker (website)
- prezto (github)
- bear (mac app store)
- things3 (mac app store)
- snappy app (mac app store)
- duplicacy cli (Github)
- rclone (website)

## Python Tools
- Pygments (the executable is called pygmentize)
- neovim
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
  - `mkdir -p ~/.config/nvim && ln -s ~/dotfiles/vim/vimrc ~/.config/nvim/init.vim`
  - `mkdir -p ~/.config/nvim && ln -s ~/dotfiles/vim/coc-settings.json ~/.config/nvim/coc-settings.json`
- Zshrc:
  - `echo "source ~/dotfiles/zsh/startup.zsh" >> .zshrc`
  - `echo "source ~/dotfiles/zsh/alias.zsh" >> .zshrc`
  - `echo "source ~/dotfiles/zsh/_git" >> .zshrc`
- Hammerspoon
  - `mkdir -p ~/.hammerspoon && ln -s ~/dotfiles/hammerspoon.lua ~/.hammerspoon/init.lua`
