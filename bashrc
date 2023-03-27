#
# add to the bottom of /etc/bash.bashrc
#

#------------------------------------------------------------------------------------
force_color_prompt=yes

Search for PS1 make 
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;30m\]\t \[\033[01;37m\]\u:\[\033[01;33m\]\[\033[01;32m\](\[\033[01;35m\]\h\[\033[01;32m\])\[\033[00m\]:\[\033[01;96m\]$(pwd)\[\033[00m\]\$ '

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias l='ls -CF --color=auto'

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
  [ -e "/etc/dir_colors" ] && DIR_COLORS="/etc/dir_colors"
  [ -e "$HOME/.dir_colors" ] && DIR_COLORS="$HOME/.dir_colors"
  [ -e "/etc/dir_colors" ] || DIR_COLORS="/etc/dir_colors"
  eval "`dircolors -b $DIR_COLORS`"
fi
