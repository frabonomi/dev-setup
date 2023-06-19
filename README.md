# Dotfiles

This is my collection of dotfiles to set up a new development machine.

## Dev setup

### Dotfiles

[TBD]

### Homebrew

Install [Homebrew](https://docs.brew.sh/Installation):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Install zsh

Install [zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH):

```bash
brew install zsh
```

and set it as your default shell:

On M1-based machines:
```bash
chsh -s /opt/homebrew/bin/zsh
```

On Intel-based machines:
```bash
chsh -s /usr/local/bin/zsh
```

### Install oh-my-zsh

Install [oh-my-zsh](https://ohmyz.sh/):

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Git

Install [Git](https://git-scm.com/download/mac):

```bash
brew install git
```

### Install apps

Install apps using:

```bash
./apps.sh
```
