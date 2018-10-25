# .oh-my-zsh
Setup of my oh-my-zsh environment. You're supposed to have installed vim using the repo [.vim](https://github.com/ivanCanaveral/.vim) previously. If not, maybe you should ;). In other case, you must install some Nerd Font (and use it as your terminal's font), and git.

If you want to install this config, you can use the file `oh-my-zsh-setup..sh`. I find this file very useful. It executes the following instructions.

## Installing git and zsh

```bash
$ sudo apt-get install curl
$ sudo apt-get install zsh
$ sudo apt-get install dconf-cli
```

## Improving the boring gnome-terminal theme

This helps when you want to change themes without much effort.

```bash
$ wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh
```

After execute this line, you will be asked for the number of the coosed theme. For example (43) is cool.

## zsh by default
Probably, you'll need to to restart your computer to have this change working.

```bash
$ chsh -s $(which zsh)
```

This way, you avoid typing `exec zsh` every time you start a shell.

## Installing oh my zsh

```bash
$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Symlink the .zshrc

This file keeps the configuration for our oh-my-zsh. We want to have it in a repo, so in this case we will symlink `.zshrc` to `~/.oh-my-zsh/.oh-my-zsh/zshrc` file. This way, we can keep all the changes in this file tracked in the git repository.

## Some plugins

A lot of plugins are already installed. Others must be installed. For example, some of the following are useful and must be installed:

### zsh-autosuggestions

Autocomplete based on your command history

```bash
$ git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zs/plugins/zsh-autosuggestions
```

### zsh-sintax-highlighting

```bash
$ sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting
```

### A cool theme: powerlevel9k

```bash
$ git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

### Python venvs

In order to show venv things for python and other configurable things, add this to the .zshrc

```vim
# For showing venv things in POWERLEVEL9KLINES
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
```
