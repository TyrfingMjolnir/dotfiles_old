/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install exa
brew install vim ctags tmux nvm ack the_silver_searcher

echo 'alias tb="(exec 3<>/dev/tcp/termbin.com/9999; cat >&3; cat <&3; exec 3<&-)"' >> ~/.bash_profile

echo 'alias ll="exa -l"'    >> ~/.bash_profile
echo 'alias l1="exa -1"'    >> ~/.bash_profile
echo 'alias llt="exa -T"'   >> ~/.bash_profile
echo 'alias lllt="exa -lT"' >> ~/.bash_profile
echo 'alias lla="exa -la"'  >> ~/.bash_profile
echo 'alias llh="exa -lh"'  >> ~/.bash_profile

echo 'alias ldd="/usr/bin/otool -L "'  >> ~/.bash_profile
