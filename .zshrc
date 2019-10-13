export CLICOLOR=1
export SVN_EDITOR=vim
export GIT_EDITOR=vim
export PYTHONIOENCODING=UTF-8
export CC=clang
export CXX=clang++
export C_INCLUDE_PATH=$HOME/.local/include
export CPLUS_INCLUDE_PATH=$HOME/.local/include
export LD_LIBRARY_PATH="$HOME/.vim/plugged/YouCompleteMe/third_party/ycmd/third_party/clang/lib/:$LD_LIBRARY_PATH"

if [ `uname` = 'Linux' ]; then
  # enable color support of ls and also add handy aliases
  if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
  fi

  export LD_LIBRARY_PATH=".:$HOME/.local/bin:$HOME/usr/lib:/usr/local/lib:/usr/lib:/usr/local/lib64:/usr/lib64:/home/khheo/.linuxbrew/lib:/usr/lib/x86_64-linux-gnu/"
  export CLASSPATH='.:/usr/lib/jvm/java-6-sun/lib/:/home/khheo/javalib/jdom/build/jdom.jar'
  export OCAMLRUNPARAM='b' #'b, s=2G, l=1G, i=50M, o=80'
  export PATH="$HOME/usr/bin:/sbin:/usr/sbin:/usr/local/sbin:/usr/lib/jvm/java-8-oracle/bin/:$HOME/.linuxbrew/bin:$PATH"
  export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
else
  export LSCOLORS='ExFxCxDxBxegedabagaced'
  export PATH="$HOME/.gem/ruby/2.6.0/bin:$HOME/usr/bin/:/usr/local/opt/llvm/bin:$PATH"
fi

alias vi='vim'
alias sr='screen -D -r main'

eval `opam config env`
