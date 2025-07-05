# Tmux

For tmux, move the `.tmux.conf` and `.tmux.conf.local` files under `~` and load via `tmux source-file ~/.tmux.conf`.

# ZSH

For ZSH, `oh-my-zsh` and `antigen` (https://github.com/zsh-users/antigen) are required. Install these separately. 

```
curl -L git.io/antigen > antigen.zsh
mkdir .zsh
mv antigen.zsh ./.zsh
```

May need to install powerline fonts ()

```
git clone https://github.com/powerline/fonts.git --depth=1
```

# Vim

```
mkdir ~/.vim
mv .vimrc ~/.vim
```

Install (Vundle)[https://github.com/VundleVim/Vundle.vim]:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```
