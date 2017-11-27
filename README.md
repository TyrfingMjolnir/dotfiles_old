# dotfiles
Some of my dotfiles, and some of yours, no warranty, it's all for inspirational purposes

## How to list the packages installed on your current system
```shell
pacman -Qqn > installed-repo-packages.lst
```

## How to install those same pacakges on a different machine.
```shell
pacman -S - < installed-repo-packages.lst
```
