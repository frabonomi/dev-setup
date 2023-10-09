# Dev setup

This is the repo I use to set up a new machine and get it ready for development.

## Prerequisites

Run this to make sure you're up to date and and you have XCode command line tools installed:

```bash
./osxprep.sh
```

###  Dotfiles

[TBD]

### Mac OSX defaults

Tweak the operating system with better defaults:

```bash
./osx.sh
```

Please note that you may need to log out and log back in for some changes to take effect.

### Homebrew

Install [Homebrew](https://docs.brew.sh/Installation):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

### Install cli tools

```bash
./brew.sh
```

### zsh

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

### oh-my-zsh

Install [oh-my-zsh](https://ohmyz.sh/):

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Install zsh-syntax-highlighting

Install a custom plugin for zsh to add syntax highlighting when typing in the shell following [these instructions](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh).

### Git

Install [Git](https://git-scm.com/download/mac):

```bash
brew install git
```

#### Set up Git SSH authentication with Github

1. Generate a new key ([reference](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)):
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
2. Copy the SSH public key to your clipboard ([reference](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account#adding-a-new-ssh-key-to-your-account))
   ```bash
   pbcopy < ~/.ssh/id_ed25519.pub
   ```
3. Create a new SSH key [on Github](https://github.com/settings/keys) and paste your public key

### Install apps

Install apps using:

```bash
./apps.sh
```

### Set up dock icons

```bash
./dock.sh
```

## Restore apps settings using Mackup

[TBD]

## Web development

### Install nvm and node

Use NVM (Node Version Manager) to be able to manage the installation of different Node versions on the same machine.

- [Install NVM](https://github.com/nvm-sh/nvm#install--update-script) using curl

  ```bash
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
  ```

  This will also add a snippet in `.zshrc` file to load NVM.

- [Install Node](https://github.com/nvm-sh/nvm#usage). Here we install the long term support version

  ```bash
  nvm install --lts
  ```

## References

- [macOS defaults](https://macos-defaults.com/)
