# Mikko's dotfiles

## Installation

1. Clone repo to new hidden directory

```bash
git clone git@github.com:mikkomattila/dotfiles.git ~/.dotfiles
```

2. Create symlinks

```bash
ln -s ~/.dotfiles/git/.gitconfig ~./gitconfig
ln -s ~/.dotfiles/zsh/.zshrc ~./zshrc
```

3. Nvim configuration location

```bash
export XDG_CONFIG_HOME="$HOME/.dotfiles"
```
