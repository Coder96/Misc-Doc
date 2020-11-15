Change for root
force_color_prompt=yes

Search for PS1 make 
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;30m\]\t \[\033[01;37m\]\u:\[\033[01;33m\]\[\033[01;32m\](\h)\[\033[00m\]:\[\033[01;96m\]$(pwd)\[\033[00m\]\$ '

# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias lla='ls -la --color=auto'
alias l='ls -CF --color=auto'

At end add 

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    [ -e "$HOME/.dir_colors" ] && DIR_COLORS="$HOME/.dir_colors"
    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
    eval "`dircolors -b $DIR_COLORS`"
fi
