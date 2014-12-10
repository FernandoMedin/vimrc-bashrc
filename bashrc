# ~/.bashrc: executed by bash(1) for non-login shells.
[ -z "$PS1" ] && return

HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
HISTCONTROL=ignoreboth

shopt -s histappend

shopt -s checkwinsize

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
    else
    color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='\[\e[0;34m\]┌──[\[\e[0;32m\]\u\[\e[0;31m\]@\[\e[0;35m\]\h\[\e[0;34m\]]──\[\e[0;34m\][\[\e[0;32m\]\w\[\e[0;34m\]] \n└── \[\e[0;34m\]' 
else
    PS1='┌────[\u@\h]────────────────────────────────────────[\t]────┐ \n└───>[${PWD}] \$ '
fi
unset color_prompt force_color_prompt

alias l='ls -CF'
alias ls='ls -hF --color'    # add colors for filetype recognition
alias lx='ls -lXB'        # sort by extension
alias lk='ls -lSr'        # sort by size
alias la='ls -Al'        # show hidden files
alias lr='ls -lR'        # recursice ls
alias lt='ls -ltr'        # sort by date
alias lm='ls -al |more'        # pipe through 'more'
alias ll='ls -l'        # long listing
alias lsize='ls --sort=size -lhr' # list by size
alias lsd='ls -l | grep "^d"'   #list only directories
alias lalf='ls -alF'
alias acyl='cd ~/.icons/ACYL_Icon_Theme_0.9.3/ && bash AnyColorYouLike'
alias reboot='sudo shutdown -r now'
alias shutdown='sudo shutdown -h now'

alias h='history | grep $1'
alias rm='rm -i'
alias cp='cp -v -i'
alias mv='mv -i'
alias which='type -all'
alias cd..='cd ..'

mktar() { tar cvf  "${1%%/}.tar"     "${1%%/}/"; }
mktgz() { tar cvzf "${1%%/}.tar.gz"  "${1%%/}/"; }
mktbz() { tar cvjf "${1%%/}.tar.bz2" "${1%%/}/"; }

extract() {    
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar.bz2) tar xvjf "$1"   ;;
      *.tar.gz)  tar xvzf "$1"   ;;
      *.bz2)     bunzip2 "$1"    ;;
      *.rar)     unrar x "$1"    ;;
      *.gz)      gunzip "$1"     ;;
      *.tar)     tar xvf "$1"    ;;
      *.tbz2)    tar xvjf "$1"   ;;
      *.tgz)     tar xvzf "$1"   ;;
      *.zip)     unzip "$1"      ;;
      *.Z)       uncompress "$1" ;;
      *.7z)      7z x "$1"       ;;
      *)
      echo "'$1' Nao pode ser extraido."
      return 1
      ;;
    esac
  else
    echo "'$1' Nao eh um arquivo valido."
    return 1
  fi
  return 0
}



if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi


black='\e[0;30m'
blue='\e[0;34m'
green='\e[0;32m'
cyan='\e[0;36m'
red='\e[0;31m'
purple='\e[0;35m'
brown='\e[0;33m'
lightgray='\e[0;37m'
darkgray='\e[1;30m'
lightblue='\e[1;34m'
lightgreen='\e[1;32m'
lightcyan='\e[1;36m'
lightred='\e[1;31m'
lightpurple='\e[1;35m'
yellow='\e[1;33m'
white='\e[1;37m'
nc='\e[0m'

FGNAMES=('● ●' '● ●' '● ●' '● ●' '● ●' '● ●' '● ●' '● ●')
BGNAMES=('  ')

for b in $(seq 0 0); do
    if [ "$b" -gt 0 ]; then
      bg=$(($b+39))
    fi
    echo
    for f in $(seq 0 7); do
      echo -en "\033[${bg}m\033[$(($f+30))m ${FGNAMES[$f]} "
      echo -en "\033[${bg}m\033[1;$(($f+30))m ${FGNAMES[$f]} "
    done
  echo -e "\033[0m"  
echo
done
