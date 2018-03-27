# Dotfiles Repo

I frequently work on several computers at once and I want to be able to 
duplicate my normal working environment quickly on a new machine. I don't always
have many permissions on the machines that I work on, so I'd like to have a
tracking setup that doesn't require a lot of permissions.

## Barebones Setup

*These instruction are adapted from this much more detailed guide that I 
referenced when setting up my repo. That guide can be found [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).*

**Setting up a new system with existing dotfiles**

Clone this repo and setup a temporary alias:

```
git clone --bare git@github.com:zhangchuck/.dotfiles.git $HOME/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
```

If you have existing dotfiles, you'll need to manually delete (or backup) these 
files. Alternatively, you can try running this script:

```
mkdir -p .dotfiles-backup && \
dot checkout 2>&1 | grep -oP "\s*\K\.\w+" | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{}
```

Then, checkout and reset to the head of remote repository.

```
dot checkout
dot reset --hard
```

**Updating your dotfiles from the repo**

```
dot pull origin
```

**Setting up a new dotfiles repo**

```
git init --bare $HOME/.dotfiles
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dot config --local status.showUntrackedFiles no
```

Also, make sure you add the alias in line 2 to your existing alias file (or
.zshrc or .bashrc) and then restart your shell.


## Other References

- [dotfiles.github.io](https://dotfiles.github.io/)
