# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" -a -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
xterm-color)
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
    ;;
*)
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
    ;;
esac

# Comment in the above and uncomment this below for a color prompt
#PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD}\007"'
    ;;
*)
    ;;
esac

export CLICOLOR=1
export LSCOLORS='ExFxCxDxBxegedabagaced'
export SVN_EDITOR=vim

if [ 'type' = `hostname` ]; then
  alias vis='~/project/psparrow/src/vis/visdump'
  alias fix='ssh namriv05@fix'
  alias def='ssh def'
  alias ls='ls --color=auto'

  export EDG_BASE='/home/khheo/project/edg/release_4.0/'
  export LD_LIBRARY_PATH=/usr/local/lib:.

  export CLASSPATH='.:/usr/lib/jvm/java-6-sun/lib/:/home/khheo/javalib/jdom/build/jdom.jar'
  #export CLASSPATH='.:/home/khheo/jdk1.5.0_22/jre/lib'
  #export CLASSPATH='.:..:/home/khheo/j2sdk1.4.2_19/jre/lib:/home/khheo/j2sdk1.4.2_19/lib/tools.jar:/home/khheo/javalib/jdom/build/jdom.jar'
  #for xerces
  #export CLASSPATH='.:/home/khheo/j2sdk1.4.2_19/jre/lib:/home/khheo/j2sdk1.4.2_19/lib/tools.jar'
  export OCAMLRUNPARAM='b'
  #export OCAMLRUNPARAM='b, s=2G, l=1G, i=50M, o=80'
  #export PATH=/home/khheo/j2sdk1.4.2_19/bin:/home/khheo/project/SAirac/SAirac/bin:/home/khheo/project/SAirac/SAirac/src/airacil/bin:/home/khheo/project/SAirac/SAirac/libs/cil/bin:$PATH
  #export PATH="/home/khheo/local/bin:/home/khheo/project/SAirac/SAirac/bin:/home/khheo/project/SAirac/SAirac/src/airacil/bin:/home/khheo/project/SAirac/SAirac/libs/cil/bin:$PATH"
  export PATH="/home/khheo/jre1.6.0_38/bin:/home/khheo/bin:/home/khheo/project/SAirac/SAirac/bin:/home/khheo/project/SAirac/SAirac/src/airacil/bin:/home/khheo/project/SAirac/SAirac/libs/cil/bin:$PATH"
#else
fi

# bash script loader
if [ -f ~/.bash_loader ]; then
	source ~/.bash_loader
fi
