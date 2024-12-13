# README

My dotconfig files.

## Installation

This will create symlinks to the dotfiles in the home directory. Make sure to change the path to the dotfiles in the symlinks.sh file.

```bash
bash symlinks.sh
```

Copy the .zshrc file to the home directory.

Copy tpm plugin into the .tmux directory.

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

Copy the `tmux-sessionizer.sh` file in ~/.local/bin/scripts/. Modify the tmux.conf with the tmux-sessionizer to your own repositories.
