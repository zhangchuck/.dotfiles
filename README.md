# Dotfiles Repo

I frequently work on several computers at once and I want to be able to 
duplicate my normal working environment quickly on a new machine. I don't always
have many permissions on the machines that I work on, so I'd like to have a
tracking setup that doesn't require a lot of permissions.

## Barebones Setup

**Setting up a new system with existing dotfiles**

```
git clone --bare git@github.com:zhangchuck/.dotfiles.git $HOME/.dotfiles &&\
alias dot='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME' && \
mkdir -p .dotfiles-backup && \
dot checkout 2>&1 | grep -oP "M\s*\K\.\w+" | awk {'print $1'} | \
xargs -I{} mv {} .dotfiles-backup/{} && \
dot checkout && \
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

*The guide I followed gives more detail and can be found [here](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).*

## References

- [Guide to setting up barebones dotfile repo](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
- [dotfiles.github.io](https://dotfiles.github.io/)
