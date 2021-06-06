# Setup
 - Install fish (v3.0 or higher)
 - Enter fish
 - Clone this repo as described in [Cloning](#Cloning)
 - Run `fisher update`
 - Set fish as default shell in terminal (not in OS since it may break things that expect POSIX compliance)
 - In vim, run `:PluginInstall`
 - In tmux (v2.5 or higher), run `C-a I`

# Cloning
Don't clone the repo like you would normally. Instead, run
```
git clone --bare git@github.com:hnrklssn/dotfiles.git $HOME/.cfg
mkdir $HOME/.dotfiles-old
for f in (git --git-dir=$HOME/.cfg/ --work-tree=$HOME ls-files)
    if test -e $f
        cp --parents $f $HOME/.dotfiles-old/
    end
end
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f
git --git-dir=$HOME/.cfg/ --work-tree=$HOME submodule update --init
```
When interacting with the dotfiles repo, whenever you would use a `git` command, replace it with `conf`. This is aliased to a git command specifying which repo and work tree to use.
