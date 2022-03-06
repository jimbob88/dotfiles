# My . files
This is a database of all the configuration files I use for my Gentoo + I3 system

# NeoVim
## Enable/Disable Spelling
```
set nospell
set spell
```

## COC Extensions
```
CocInstall coc-snippets
CocInstall coc-json
CocInstall coc-prettier
CocInstall coc-pyright
```

## Python
```
pip install flake8 [--user]
```

# Ubuntu Systems
You need a new version of neovim & nodejs (newer than the official repositories support as of 06/03/22)

You need an Ubuntu version `>=18.04`

### Install the latest neovim
[Source](https://github.com/neovim/neovim/wiki/Installing-Neovim#ubuntu)
```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
```

### Install the latest nodejs
[Source](https://github.com/nodesource/distributions/blob/master/README.md)
```
curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y nodejs
```
