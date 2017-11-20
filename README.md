# Dotfiles Repo

I frequently work on several computers at once and I want to be able to 
duplicate my normal working environment quickly on a new machine. I don't always
have many permissions on the machines that I work on, so we'd like to have a
tracking setup that doesn't require a lot of permissions.

## Barebones Setup

**Setting up dotfiles on a new system**

```
git clone --bare git@github.com:zhangchuck/.dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME']
config checkout
```



*Details can be found iun the references section.*


## References

- [Guide to setting up barebones dotfile repo](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)
- [dotfiles.github.io](https://dotfiles.github.io/)
