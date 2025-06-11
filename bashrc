#
# add to the bottom of /etc/bash.bashrc
#

#------------------------------------------------------------------------------------
force_color_prompt=yes

Clr_Black="$(echo -e "\033[00;30m")"
Clr_Red="$(echo -e "\033[00;31m")"
Clr_Green="$(echo -e "\033[00;32m")"
Clr_BrOr="$(echo -e "\033[00;33m")"
Clr_Blue="$(echo -e "\033[00;34m")"
Clr_Purple="$(echo -e "\033[00;35m")"
Clr_Cyan="$(echo -e "\033[00;36m")"
Clr_LiGray="$(echo -e "\033[00;37m")"

Clr_DGrey="$(echo -e "\033[01;30m")"
Clr_LRed="$(echo -e "\033[01;31m")"
Clr_LGreen="$(echo -e "\033[01;32m")"
Clr_Yellow="$(echo -e "\033[01;33m")"
Clr_LBlue="$(echo -e "\033[01;34m")"
Clr_LPurple="$(echo -e "\033[01;35m")"
Clr_LCyan="$(echo -e "\033[01;36m")"
Clr_White="$(echo -e "\033[01;37m")"

if [ $USER = 'root' ]; then
  PROMP_USER_COLOR=$Clr_LRed
else
  PROMP_USER_COLOR=$Clr_LBlue
fi

PS1='${debian_chroot:+($debian_chroot)}\[${Clr_LiGray}\]\t \[${PROMP_USER_COLOR}\]\u\[${Clr_White}\]:\[${Clr_LPurple}\]\h\[${Clr_White}\]:\[${Clr_LCyan}\]$(pwd)\[\033[00m\] \$ '

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias l='ls -CF --color=auto

alias grep='grep --color'

alias lwf='setterm -linewrap off'
alias lwn='setterm -linewrap on'

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
  [ -e "/etc/dir_colors" ] && DIR_COLORS="/etc/dir_colors"
  [ -e "$HOME/.dir_colors" ] && DIR_COLORS="$HOME/.dir_colors"
  [ -e "/etc/dir_colors" ] || DIR_COLORS="/etc/dir_colors"
  eval "`dircolors -b $DIR_COLORS`"
fi
