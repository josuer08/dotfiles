# ~/.bashrc: executed by bash(1) for non-login shells.
# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac
#Import all of the subfiles for .bashrc

if [ -f ~/.config/bashrc/alias ];
then
    . ~/.config/bashrc/alias
fi

if [ -f ~/.config/bashrc/promts ];
then
    . ~/.config/bashrc/promts
fi

if [ -f ~/.config/bashrc/titles ];
then
    . ~/.config/bashrc/titles
fi

if [ -f ~/.config/bashrc/exports ];
then
    . ~/.config/bashrc/exports
fi

if [ -f ~/.config/bashrc/functions ];
then
    . ~/.config/bashrc/functions
fi



#########################################AUTOCOMPLETION#####################
# sources /etc/bash.bashrc).
if [ -f /usr/share/fzf/completion.bash ];
then
source /usr/share/fzf/completion.bash
fi

if [ -f /usr/share/fzf/completion.bash ];
then
source /usr/share/fzf/key-bindings.bash
fi
# autocomplete for sudo man and wich
complete -cf sudo man wich;
#For arch
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

###########################################################################

####################################HISTORY MANAGEMENT#####################
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth
# append to the history file, don't overwrite it
shopt -s histappend
# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=
HISTFILESIZE=
export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history'
###########################################################################



# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
# vi mode in the shell
set -o vi

#####adding the agent forwarding stuff
if [ -z "$SSH_AUTH_SOCK" ] ; then
    eval `ssh-agent` > /dev/null 2>&1;
    ssh-add > /dev/null 2>&1;

fi


source /usr/share/bash-completion/bash_completion
bind 'set show-all-if-ambiguous on';
bind 'TAB:menu-complete';
