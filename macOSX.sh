/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install exa
brew install vim ctags tmux nvm
nvm install nodejs
npm i -g json nodemon

echo 'alias tb="nc termbin.com 9999"' >> ~/.bash_profile

echo 'alias ll="exa -l"'    >> ~/.bash_profile
echo 'alias l1="exa -1"'    >> ~/.bash_profile
echo 'alias llt="exa -T"'   >> ~/.bash_profile
echo 'alias lllt="exa -lT"' >> ~/.bash_profile
echo 'alias lla="exa -la"'  >> ~/.bash_profile
echo 'alias llh="exa -lh"'  >> ~/.bash_profile
