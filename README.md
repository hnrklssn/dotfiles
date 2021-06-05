# Cloning
Don't clone the repo like you would normally. Instead, run
```
git clone --bare git@github.com:hnrklssn/dotfiles.git $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME submodule update --init
```
When interacting with the dotfiles repo, whenever you would use a `git` command, replace it with `conf`. This is aliased to a git command specifying which repo to use.

# Setup
 - Install fish (v3.0 or higher)
 - Run `fisher update`
 - Set fish as default shell in terminal (not in OS since it may break things that expect POSIX compliance)
 - In vim, run `:PluginInstall`
 - In tmux (v2.5 or higher), run `C-a I`
