# If not running interactively, don't do anything:
[ -z "$PS1" ] && return

#LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:'; export LS_COLORS
LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:su=37;41:sg=30;43:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.flac=01;35:*.mp3=01;35:*.mpc=01;35:*.ogg=01;35:*.wav=01;35:'; export LS_COLORS

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable color support of ls and also add handy aliases
if [ "$TERM" != "dumb" ]; then
#    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='ls --color=auto --format=vertical'
    #alias vdir='ls --color=auto --format=long'
fi

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

alias core='~/project/sparrow/src/airac/core/core'
#alias core='~pronto/project/sparrow/trunk/src/airac/core/core -prcn=3'
alias ncore='~/project/robot/analyzer/core/core -ala_test -proc_local -prune'
alias fcore='~/project/fairac/core/core -ala_test -proc_local -dom_local -prune -rss'
alias pcore='~/project/psparrow/src/airac/core/core -ala_test -proc_local -dom_local -rss -prune'
alias score='~/project/SAirac/SAirac/src/airac/main.native'
alias vis='~/project/psparrow/src/vis/visdump'
alias airac='cd ~/sparrow/src/airac'
alias fix='ssh namriv05@fix'
alias def='ssh def'
# for hangul encoding
#if [ 'ropas' = `hostname` ]; then
#	cp ~/.vimrc_euc ~/.vimrc
#	export LANG="ko_KR.EUC-KR"
#else if [ 'type' = `hostname` ]; then

#else
export LANG="ko_KR.UTF-8"

#fi
export EDG_BASE='/home/khheo/project/edg/release_4.0/'

export LD_LIBRARY_PATH=/usr/local/lib:.

export JAVAFINCH='/home/khheo/project/javafinch/javafinch.jar'
export JAVA_HOME='/usr/lib/jvm/java-6-sun/'
#export JAVA_HOME='/home/khheo/jdk1.5.0_22'
#export JAVA_HOME='/home/khheo/j2sdk1.4.2_19'
export CLASSPATH='.:/usr/lib/jvm/java-6-sun/lib/:/home/khheo/javalib/jdom/build/jdom.jar:/home/khheo/project/flowdroid/heros/slf4j-api2.jar'
#export CLASSPATH='.:/home/khheo/jdk1.5.0_22/jre/lib'
#export CLASSPATH='.:..:/home/khheo/j2sdk1.4.2_19/jre/lib:/home/khheo/j2sdk1.4.2_19/lib/tools.jar:/home/khheo/javalib/jdom/build/jdom.jar'
#for xerces
#export CLASSPATH='.:/home/khheo/j2sdk1.4.2_19/jre/lib:/home/khheo/j2sdk1.4.2_19/lib/tools.jar'
export OCAMLRUNPARAM='b'
#export OCAMLRUNPARAM='b, s=2G, l=1G, i=50M, o=80'
#export PATH=/home/khheo/j2sdk1.4.2_19/bin:/home/khheo/project/SAirac/SAirac/bin:/home/khheo/project/SAirac/SAirac/src/airacil/bin:/home/khheo/project/SAirac/SAirac/libs/cil/bin:$PATH
#export PATH="/home/khheo/local/bin:/home/khheo/project/SAirac/SAirac/bin:/home/khheo/project/SAirac/SAirac/src/airacil/bin:/home/khheo/project/SAirac/SAirac/libs/cil/bin:$PATH"
export PATH="/home/khheo/jre1.6.0_38/bin:/home/khheo/bin:/home/khheo/project/SAirac/SAirac/bin:/home/khheo/project/SAirac/SAirac/src/airacil/bin:/home/khheo/project/SAirac/SAirac/libs/cil/bin:$PATH"
# bash script loader
if [ -f ~/.bash_loader ]; then
	source ~/.bash_loader
fi
