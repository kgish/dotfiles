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
    xterm-color) color_prompt=yes;;
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
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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
# End of the original .bashrc file, what follows has been added by me 

# Settings
set -o vi
set visible-stats on
set show-all-if-ambiguous on
shopt -s checkwinsize

export HISTFILESIZE=20000
export HISTSIZE=10000
shopt -s histappend
# Combine multiline commands into one in historty
shopt -s cmdhist
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# Miscellaneous exports
export EDITOR=vim
export HOSTNAME=$HOSTNAME
export GREP_OPTIONS='--color=auto'

# Komodo IDE
export PERLDB_OPTS="RemotePort=127.0.0.1:9000"
export DBGP_IDEKEY="kgish"

# Prompt for screen shelltitle
case "$TERM" in
    screen)
        # Show running process in screen title
        export PS1='\[\033k\033\\\]'
        export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]$(prompt_w) \[\033[00m\]\[\033[m\]'$PS1'\$ '
        ;;
    *)
        export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]$(prompt_w) \[\033[00m\]\[\033[m\]\$ '
        ;;
esac

# export PROMPT_DIRTRIM=2

# Cleanup vim backup files older than 7 days.
#find $HOME/.vim/backup -name "*" -type f -mtime +7 -exec rm -f {} \;

# PATH : start -------------

# Perlbrew
if [ -f "$HOME/perl5/perlbrew/etc/bashrc" ]; then
    source "$HOME/perl5/perlbrew/etc/bashrc"
fi
if [ -d "$HOME/perl5/bin" ]; then
    export PATH=$HOME/perl5/bin:$PATH
fi

# PhpStorm => pstorm (/usr/local/bin)
if [ -d "/opt/phpstorm/bin" ]; then
    export PATH=$PATH:/opt/phpstorm/bin
fi

# RubyMine => mine (/usr/local/bin)
if [ -d "/opt/rubymine/bin" ]; then
    export PATH=$PATH:/opt/rubymine/bin
fi

# WebStorm => wstorm (/usr/local/bin)
if [ -d "/opt/webstorm/bin" ]; then
    export PATH=$PATH:/opt/webstorm/bin
fi

# Heroku Toolbelt
if [ -d "/usr/local/heroku/bin" ]; then
    export PATH=$PATH:/usr/local/heroku/bin
fi

# JAVA
if [ -d "/usr/lib/jvm/jdk1.7.0_45" ]; then
    export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_45
    export PATH=$PATH:$JAVA_HOME/bin
fi

# NVM - Node Version Manager
if [ -s "$HOME/.nvm/nvm.sh" ]; then
    source "$HOME/.nvm/nvm.sh"
fi

# Sencha extJS
if [ -d "/opt/sencha/cmd" ]; then
    export PATH="$PATH:/opt/sencha/cmd"
#    export SENCHA_CMD_3_0_0="/home/kiffin/sencha/Sencha/Cmd/5.0.0.160"
#    export PATH=/opt/sencha/sdk-tools:$PATH
#    export SENCHA_SDK_TOOLS_2_0_0_BETA3="/opt/sencha/sdk-tools"
fi

# RVM - Ruby Version Manager
if [ -d "$HOME/.rvm/bin" ]; then
    # Add RVM to PATH for scripting
    PATH=$HOME/.rvm/bin:$PATH
    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi

# PATH : finish -------------

# Trim working dir to 1/4 the screen width
function prompt_w () {
  local pwdmaxlen=$(($COLUMNS/4))
  local trunc_symbol="..."
  if [[ $PWD == $HOME* ]]; then
    newPWD="~${PWD#$HOME}" 
  else
    newPWD=${PWD}
  fi
  if [ ${#newPWD} -gt $pwdmaxlen ]; then
    local pwdoffset=$(( ${#newPWD} - $pwdmaxlen + 3 ))
    newPWD="${trunc_symbol}${newPWD:$pwdoffset:$pwdmaxlen}"
  fi
  echo $newPWD
}

# fawk 2 = awk '{print $2}'
function fawk {
    first="awk '{print "
    last="}'"
    cmd="${first}\$${1}${last}"
    eval $cmd
}

# Extract archives independent of type.
extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xvjf $1    ;;
            *.tar.gz)    tar xvzf $1    ;;
            *.bz2)       bunzip2 $1     ;;
            *.rar)       unrar x $1       ;;
            *.gz)        gunzip $1      ;;
            *.tar)       tar xvf $1     ;;
            *.tbz2)      tar xvjf $1    ;;
            *.tgz)       tar xvzf $1    ;;
            *.zip)       unzip $1       ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1        ;;
            *)           echo "don't know how to extract '$1'..." ;;
        esac
    else
        echo "'$1' is not a valid file!"
    fi
}

# Start screen automatically when logging in, put this at the
# end of .bashrc file.
if [ "$PS1" != "" -a "${STARTED_SCREEN:-x}" = x  -a "${SSH_TTY:-x}" != x ]
then
    STARTED_SCREEN=1 ; export STARTED_SCREEN
    [ -d $HOME/.screen-logs ] || mkdir -p $HOME/.screen-logs

    sleep 1
    screen -U -RR && exit 0

    echo "Screen failed! continuing with normal bash startup"
fi
