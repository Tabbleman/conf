# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
	PS1='${debian_chroot:$(debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\W\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)
alias ..="cd .."
alias ~="cd ~"
alias ins="sudo apt install -y "
#export PS1="${_RED}\t${_GREEN}:\W${_BOLD}$>> ${_RESET}"
alias sb="source ~/.bashrc"
alias del="rm -rf "
alias se="source venv/bin/activate" 
alias buildlib="mkdir build&&cd build&&cmake ..&&make -j && sudo make install"
alias update="sudo apt update "
alias gcl="git clone "
alias off="poweroff"
alias rbt="reboot"
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/extras/CUPTI/lib64

export TF_FORCE_GPU_ALLOW_GROWTH="true"




alias ds="cd ~/dataset"
alias cls="clear"

export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:~/projects/ORB_SLAM2/Examples/ROS
export CPLUS_INCLUDE_PATH=/usr/include/c++/7:
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/snap/core22/509/usr/lib/x86_64-linux-gnu/libssl.so.3

export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/z/projects/ORB_SLAM2/Examples/ROS

export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/z/projects/ORBSLAM2_with_pointcloud_map/orbslam2_modified/ORB_SLAM2_modified/Examples/ROS

alias conubuntu="ssh z@172.17.0.2"
alias startubuntu="sudo docker start csapp "
alias conkali="ssh z@172.17.0.3"

export OPENAI_API_KEY={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}

#screenfetch

mkcd(){
  mkdir -p "$1" && cd "$1"  
}


alias ytmusic="./Downloads/YouTube-Music-Desktop-App-1.13.0.AppImage "
alias vpn="./Desktop/Clash for Windows-0.20.12-x64-linux/cfw "
alias vpn="./Desktop/Clash\ for\ Windows-0.20.12-x64-linux/cfw "


todaytex(){
  touch LOG-$(date +%Y-%m-%d).tex
}

mkcur(){
  mkdir LOG-$(date +%Y-%m-%d)
}

#export http_proxy="http://127.0.0.1:7890"

#export https_proxy="https://127.0.0.1:7890"

alias conremote="ssh cheems@10.18.96.100"

alias conSrv="ssh -p 6000 lnm@121.4.58.157"
alias conMy="ssh -p 6000 z@121.4.58.157"

alias proxy="export http_proxy=\"127.0.0.1:7890\" && export https_proxy=\"127.0.0.1:7890\"" 
alias unproxy="unset http_proxy && unset https_proxy "
source ~/.vimrc
# make bash completion looks like zsh
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
bind 'set completion-ignore-case on'
source .vimrc
clear
alias sv='source ~/.vimrc'

cowthink zhh is so coool 


