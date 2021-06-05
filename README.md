# Cloning
Don't clone the repo like you would normally. Instead, run
```
git clone --bare git@github.com:hnrklssn/dotfiles.git $HOME/.cfg
```
When interacting with the dotfiles repo, whenever you would use a `git` command, replace it with `conf`. This is aliased to a git command specifying which repo to use.

# Setup
 - Install fish
 - Run `fisher update`
 - Set fish as default shell in terminal (not in OS since it may break things that expect POSIX compliance)
 - In vim, run `:PluginInstall`
