# Files
alias v='vim'

# exa ls replacement, both macOS and arch GNU/Linux
alias ll="exa -l"
alias l1="exa -1"
alias llt="exa -T"
alias lllt="exa -lT"
alias lla="exa -la"
alias llh="exa -lh"

# Git
alias gi="git init"
alias gs="git status"
alias gd="git diff"
alias gdh="git diff HEAD"
alias gc="git clone $1 $2"
alias gcm="git commit -m "$1""
alias gaa="git add -A ."
alias gpo="git push origin $1"
alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gl1="git log --oneline"
alias grhh="git reset --hard HEAD"
alias gcp="git cherry-pick $1"

# npm
alias ni="npm install";
alias nis="npm i -S "
alias nid="npm i -D "
alias nig="npm i -g "
alias nr="npm run $1";
alias nrs="npm run start";
alias nrb="npm run build";
alias nrt="npm run test";
alias nrc="npm run commit";

# Clipboard
alias setclip='xclip -selection c'
alias getclip='xclip -selection clipboard -o'
