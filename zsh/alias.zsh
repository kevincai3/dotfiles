alias ncd='~/bin/nvim-cd-to-dir.py'
alias dcp=docker-compose

alias jj='fasd_cd -i'
alias j='fasd_cd -i -1'
alias vim='nvim'

# Git stuff
alias gad='git add'
alias gbr='git branch --sort=-committerdate'
alias gbr!="git branch | grep \* | cut -d ' ' -f2 | pbcopy"
alias gco='git checkout'
alias gcm='git commit'
alias glg='git log'
alias gpl='git pull'
alias gps='git push'
alias grb='git rebase'
alias grs='git reset'
alias grs!='git reset HEAD^ --soft && git reset' # Reset to working directory for prev commit
alias gst='git status'
alias gsh='git stash'
alias gwip='git commit -m "WIP" -n'

alias trash='trash -F'

alias new_master='gco master && gpl && yarn && bundle'
alias rebase_master='git fetch origin master && git rebase origin master'

# Alias "with" arguments
function gdf() {
  if [[ $1 == "s" ]]; then
    git diff --staged
  else
    git diff $@
  fi
}

# Some repos have shared precommit hooks, making a git shim here allows working around them
function git () {
  if [[ $1 == "commit" ]]; then
    is-branch-wip
    if [[ $? != 0 ]]; then
      return 1
    fi
  fi
  command git $@
  if [[ $1 == "checkout" ]]; then
    is-branch-wip
  fi
}
