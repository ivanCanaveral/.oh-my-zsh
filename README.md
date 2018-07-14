# .oh-my-zsh
Setup of my oh-my-zsh environment

## Installing git and zsh

```
sudo apt-get install git
sudo apt-get install zsh
```

## zsh by default

```
chsh -s $(which zsh)
```

## Installing oh my zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## Installing powerline fonts

```
sudo apt install fonts-powerline
```

## Setting up theme in .zshrc

Open ~/.zshrc with vim and modify the following line:

```
ZSH_THEME="agnoster"
```

## Some plugins

A lot of plugins are already installed. Others must be installed. For example, some of the following are useful and must be installed:

### zsh-autosuggestions

Autocomplete based on your command history

```
git clone https://github.com/zsh-users/zsh-autosuggestions.git
```
* Clone this in the .oh-my-zsh/plugins folder ;)

### zsh-sintax-highlighting

```
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```
* Clone this in the .oh-my-zsh/plugins folder ;)

### Time to modify the .zshrc file again

Go to the line with the plugins and write something line

```
plugins=(
  git
  virtualenv
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
 )
```

#### git plugin detail

- Green: branch if no changes occurred
- Yellow with a circle icon: untracked files
- Yellow with a plus icon: files ready to be committed

### Another cool theme: powerlevel9k

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

Now, in the .zshrc
```
ZSH_THEME="powerlevel9k/powerlevel9k"
```

In order to show venv things for python and other configurable things, add this to the .zshrc
```
# For showing venv things in POWERLEVEL9KLINES
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
```

# If you are working in gnome-terminal in ubuntu, you're probably
# using boring colors. To improve this, try this:

```bash
exec bash #change to bash
sudo apt-get install dconf-cli
wget -O gogh https://git.io/vQgMr && chmod +x gogh && ./gogh && rm gogh
# the (43) Flat theme is cool
exec zsh
```
