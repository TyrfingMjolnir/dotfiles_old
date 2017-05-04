/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew cask install exa
brew install vim ctags tmux nvm
nvm install nodejs
npm i -g json nodemon

echo 'alias tb="nc termbin.com 9999"' >> ~/.bash_profile
