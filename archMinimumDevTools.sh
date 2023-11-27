sudo pacman -S adobe-source-code-pro-fonts ttf-inconsolata
sudo pacman -S eza tmux tidy neovim curl mpv ytd-dl
sudo pacman -S couchdb redis postgresql ack the_silver_searcher
sudo pacman -S firefox-developer-edition chromium
sudo pacman -S arch-install-scripts rust

## From AUR
waterfox

## From GIT
cd ~
curl -kLO https://raw.githubusercontent.com/TyrfingMjolnir/dotfiles/master/.tmux.conf
curl -kLO https://raw.githubusercontent.com/TyrfingMjolnir/dotfiles/master/.Xresources
curl -kLO https://raw.githubusercontent.com/TyrfingMjolnir/dotfiles/master/.vimrc
curl -kLO https://raw.githubusercontent.com/TyrfingMjolnir/dotfiles/master/.tidy.config

cd /opt/local/dev/
git clone https://github.com/tpope/vim-dadbod
### git clone https://aur.archlinux.org/packages/swift-bin/
git clone https://github.com/apple/swift
git clone https://github.com/apple/sourcekit-lsp
git clone https://github.com/apple/swift
https://github.com/ratatui-org/ratatui

