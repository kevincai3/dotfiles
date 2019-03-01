alias ncd='~/bin/nvim-cd-to-dir.py'
alias dcp=docker-compose

alias jj='fasd_cd -i'
alias j='fasd_cd -i -1'
alias vim='nvim'

# Git stuff
alias gad='git add'
alias gbr='git branch'
alias gbr!="git branch | grep \* | cut -d ' ' -f2 | pbcopy"
alias gco='git checkout'
alias gcm='git commit'
alias gdf='git diff'
alias glg='git log'
alias gpl='git pull'
alias gps='git push'
alias grb='git rebase'
alias grs='git reset'
alias grs!='git reset HEAD^ --soft && git reset' # Reset to working directory for prev commit
alias gst='git status'
alias gsh='git stash'
