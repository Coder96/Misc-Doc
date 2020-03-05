Uncomment 
#force_color_prompt=yes

Search for PS1 make 
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;30m\]\t \[\033[01;37m\]\u:\[\033[01;33m\]\[\033[01;32m\](\h)\[\033[00m\]:\[\033[01;96m\]$(pwd)\[\033[00m\]\$ '

Find alias ll='ls -alF'
CHANGE
alias ll='ls -lF'
ADD
alias lla='ls -alF'

At end add 

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
    [ -e "$HOME/.dir_colors" ] && DIR_COLORS="$HOME/.dir_colors"
    [ -e "$DIR_COLORS" ] || DIR_COLORS=""
    eval "`dircolors -b $DIR_COLORS`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi
