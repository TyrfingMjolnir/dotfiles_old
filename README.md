# dotfiles
Some of my dotfiles, and some of yours, no warranty, it's all for inspirational purposes

## How to list the packages installed on your current system
```shell
pacman -Qqn > installed-repo-packages.lst
```
or list all packages that are not in base or base-devel and that are not a dependency
```shell
comm -23 <(pacman -Qqt | sort) <(pacman -Sqg base base-devel | sort) > installed-repo-packages.lst
```
or the shit you actually want
```shell
comm -23 <(pacman -Qqnet | sort) <(pacman -Sqg base base-devel | sort) > installed-repo-packages.lst
```

## How to install those same pacakges on a different machine.
```shell
pacman -S - < installed-repo-packages.lst
```


### How to do a boolean subtraction between lines of 2 files

Create a sorted list of the files you want to check ownership of:
```shell
$ find /etc /opt /usr | sort > all_files.txt
```
Create a sorted list of the files tracked by pacman (and remove the trailing slashes from directories):
```shell
$ pacman -Qlq | sed 's|/$||' | sort > owned_files.txt
```
Find lines in the first list that are not in the second:
```shell
$ comm -23 all_files.txt owned_files.txt
```

Syntax coloring for Swift in vim: https://github.com/ryanolsonx/vim-lsp-swift
