# dotfiles

This respository contains my dotfiles. These are my configuration for everything related to the command-line tools I’m using.

## Usage

I do not recommend that you use this repository as is. Copy/paste what you need into your own dotfiles.

### git

```
ln -s /path/to/dotfiles/git/gitconfig ~/.gitconfig
ln -s /path/to/dotfiles/git/gitconfig-work ~/.gitconfig-work
ln -s /path/to/dotfiles/git/gitignore ~/.gitignore
```

### nv

```
ln -s /path/to/dotfiles/nv/nv ~/.nv
```

### nvim

```
ln -s /path/to/dotfiles/nvim ~/.config/nvim
```

### tmux

```
ln -s /path/to/dotfiles/tmux/tmux.conf ~/.tmux.conf
```

### zsh

```
ln -s /path/to/dotfiles/zsh/zshrc ~/.zshrc
```

#### Requirements

- [asdf](https://asdf-vm.com/#/)
- [neovim](https://neovim.io/)
