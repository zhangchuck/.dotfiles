# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
source $HOME/.aliases

# added by travis gem
[ -f /home/cyzhang/.travis/travis.sh ] && source /home/cyzhang/.travis/travis.sh
