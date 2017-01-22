# Reset
Color_Off='\e[0m'       # Text Reset

# Regular Colors
Black='\e[0;30m'        # Nero
Red='\e[0;31m'          # Rosso
Green='\e[0;32m'        # Verde
Yellow='\e[0;33m'       # Giallo
Blue='\e[0;34m'         # Blu
Purple='\e[0;35m'       # Viola
Cyan='\e[0;36m'         # Ciano
White='\e[0;37m'        # Bianco

# Bold
BBlack='\e[1;30m'       # Nero
BRed='\e[1;31m'         # Rosso
BGreen='\e[1;32m'       # Verde
BYellow='\e[1;33m'      # Giallo
BBlue='\e[1;34m'        # Blu
BPurple='\e[1;35m'      # Viola
BCyan='\e[1;36m'        # Ciano
BWhite='\e[1;37m'       # Bianco

# Underline
UBlack='\e[4;30m'       # Nero
URed='\e[4;31m'         # Rosso
UGreen='\e[4;32m'       # Verde
UYellow='\e[4;33m'      # Giallo
UBlue='\e[4;34m'        # Blu
UPurple='\e[4;35m'      # Viola
UCyan='\e[4;36m'        # Ciano
UWhite='\e[4;37m'       # Bianco

# Background
On_Black='\e[40m'       # Nero
On_Red='\e[41m'         # Rosso
On_Green='\e[42m'       # Verde
On_Yellow='\e[43m'      # Giallo
On_Blue='\e[44m'        # Blu
On_Purple='\e[45m'      # Purple
On_Cyan='\e[46m'        # Ciano
On_White='\e[47m'       # Bianco

# High Intensty
IBlack='\e[0;90m'       # Nero
IRed='\e[0;91m'         # Rosso
IGreen='\e[0;92m'       # Verde
IYellow='\e[0;93m'      # Giallo
IBlue='\e[0;94m'        # Blu
IPurple='\e[0;95m'      # Viola
ICyan='\e[0;96m'        # Ciano
IWhite='\e[0;97m'       # Bianco

# Bold High Intensty
BIBlack='\e[1;90m'      # Nero
BIRed='\e[1;91m'        # Rosso
BIGreen='\e[1;92m'      # Verde
BIYellow='\e[1;93m'     # Giallo
BIBlue='\e[1;94m'       # Blu
BIPurple='\e[1;95m'     # Viola
BICyan='\e[1;96m'       # Ciano
BIWhite='\e[1;97m'      # Bianco

# High Intensty backgrounds
On_IBlack='\e[0;100m'   # Nero
On_IRed='\e[0;101m'     # Rosso
On_IGreen='\e[0;102m'   # Verde
On_IYellow='\e[0;103m'  # Giallo
On_IBlue='\e[0;104m'    # Blu
On_IPurple='\e[10;95m'  # Viola
On_ICyan='\e[0;106m'    # Ciano
On_IWhite='\e[0;107m'   # Bianco


#PYTHONPATH='${PYTHONPATH}:/home/snow/redis-stable/src'



# Check for an interactive session
[ -z "$PS1" ] && return

export EDITOR=vim
complete -cf sudo

HISTSIZE=
HISTFILESIZE=
HISTCONTROL=erasedups



alias ls='ls --color=auto'
PS2='\[\033[01;34m\]----\[\033[00m\]'
#PS1='\[\033[01;32m\]\u\[\033[01;37m\]::\[\033[01;34m\]\h \[\033[01;34m\]\[\033[01;34m\]\w \[\033[01;34m\]\[\033[01;32m\]\[\033[00m\]'
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\] \[\e[1;37m\]'
PS1="\[$BIWhite\]\u\[$BGreen\]::\[$Cyan\]\h\[$BIGreen\] \w \[$Green\]"
export LC_ALL=
export LC_COLLATE="C"
export LANG=it_IT.UTF-8
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
alias py='python -i -c "from user import *"'
alias terminator='terminator -l servers && terminator && terminator'
alias ino='cd /home/snow/sketchbook/'
alias vim='vim -p'
alias gf='git diff'
alias sgf='git diff > diff.py && vim diff.py'
alias fthaggua='~/.fthaggua/fthaggua'
alias fthagguatest='~/.fthaggua/cli/fthaggua'
alias lqqq='psql -U foo -h 127.0.0.1 foo'
#alias lqqq_vpn='psql -U foo -h localhost -p 6432 wbrw_vpn'
#alias lqqq_dbfen='psql -U foo -h localhost -p 6432 wbrw_dbfen'
#alias tqqq='psql -U foo -h 127.0.0.1 tracks'
#alias tqqq_vpn='psql -U foo -h 127.0.0.1 tracks


# comandi modificati
alias diff='colordiff'              # richiede il pacchetto colordiff
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias ping='ping -c 5'
alias nowlan='gksu nm-applet &'
alias ..='cd ..'
alias gstatus='git status | grep -v "LC" | grep -v "pk" | grep -v "languagesw" | grep -v "jsgz" | grep -v "cssgz" |grep -v "locale"| grep modified '
alias 11='cd /home/snow/personalgit/ && clear && git status'
alias mellowd='cd /home/snow/mellowd.deploy/ && clear && git status'
alias 22='cd /home/snow/Documenti/fatture/WuBook/'
alias 33='cd /home/snow/exercism/python/ && clear'
alias 44='cd /home/snow/gitolite/wubook/src && clear && git status'
alias pdsearch='.. && cd /home/snow/gitolite/wubook/src/zak && Grep pdb | grep -v "propdb" | grep -v "itcopdb" | grep -v "pdb.save" | grep -v "pdb=" | grep -v "updbo"'
alias ovpn='.. && cd /home/snow/ovpn/ && sudo openvpn --config vpnclient.conf'
alias redis='.. && cd /home/snow/redis-3.0.1/ && src/redis-server redis.conf'
#alias wbgw='make -f Makefile gw'
alias xrst='cd /home/snow/gitolite/zak/wubook/wubook/src && make -f Makefile xr'

#alias 55='cd /home/snow/gitolite/zak/zak && clear'
#alias 55='cd /home/snow/gitolite/zak/wubook/wubook/src && clear'
#alias 99='evilvte && firefox && xchat && thunderbird'
alias mongdod='sudo mongod -port 27017'

#l@() {
  #VAL=$1;
  #echo $VAL
  #if [ $VAL = '0' ]; then
    #$VAL = '10'
  #fi
  #xbacklight -set $VAL
#}

Grep() {
  git grep "$1" . | grep -v svn | grep -v inari | grep --color "$1"
}

hgrep() {
  find $home_dir -depth ! -name ".*" | grep -v "\.\/\." | xargs grep "$1" | grep -v svn | grep -v inari | grep --color "$1" 
}
cerca() {
  find . -type f | grep --color "$1"
}
svngrep() {
  git grep "$1" . | grep -v svn | grep -v inari | grep --color "$1"
}
sgrep() {
  grep -r $1 . | grep -v ".svn" | grep -v 'symbols.py' | grep -v 'symbols' | grep -v 'wubookm/' | grep -v '#' | grep -v "inari" | grep --color $1
}
mypych() {
  find . -type f | grep ".py" | grep -v ".pyc" | grep -v ".svn" | grep -v "ookm/hbland.py" | grep -v "ookm/hbase.py" | grep -v "ookm/hlodg.py" | grep -v "ookm/hbooks.py" | grep -v "ookm/hmanage.py" | grep -v "ookm/hsupport.py" | grep -v "ookm/hwoodoo.py" | grep -v "ookm/hwym.py" | grep -v "ookm/hlodg.py" 
}

gitfetchbranch() {
 git fetch origin
 git checkout --track origin/$1
}

gitnewbranch() {
 git checkout -b $1
 git push -u origin $1
 #git branch --set-upstream-to=origin/$1 $1
}

#grepandreplace(){
  #XXX grep and replace passing arguments
  #grep "$1" | xargs sed -i "s/$1/$2/g"
#}

gitdelbranch() {
 git branch -D $1
 git push origin :$1
}

restore_mongo_coll() {
  if [ $# -eq 0 ]
    then
      echo '!!!Please pass collection as argument!!!'
      return
  fi
	mongorestore --host localhost:27017 -d zak --directoryperdb --collection properties 'opt/mongodumpzak/zak/'$1'.bson'
}

gitpush() {
  if [ -z $1 ]
  then
    echo "Please, specify a good comment for your commit"
  else
    git pull
    git commit -a -m "$*"
    git push
  fi
} 


wbsrv() {
  #!/bin/bash
  WBREPOS='/home/snow/gitolite/wubook/src'
  cd ${WBREPOS} && ./wbsrv $@
}

# nuovi comandi
alias syspull='cd /home/snow/gitolite/sys/sys/ && clear && git pull'
alias mongolo='sudo mongod --dbpath /home/snow/mongodb --profile=1 --slowms=1 --setParameter failIndexKeyTooLong=false'
alias mongol1='sudo mongod --dbpath /home/snow/mongodb --profile=1 --slowms=1 --repair'
alias qqq='psql -h 192.168.1.253 foo foo'
alias da='date "+%A, %B %d, %Y [%T]"'
alias clshit='55 && rm zak/.*.sw? && rm src/html/.*.sw? && rm src/js/_build_/.*.sw? && rm src/css/.*.sw?'
alias du1='du --max-depth=1'
alias hist='history | grep $1'      # richiede un argomento
alias openports='netstat --all --numeric --programs --inet --inet6'
alias pg='ps -Af | grep $1'         # richiede un argomento (nota: /usr/bin/pg viene installato dal pacchetto util-linux package; forse sarebbe meglio usare un altro alias)



# elevazione dei privilegi
if [ $UID -ne 0 ]; then
    alias sudo='sudo '
    alias scat='sudo cat'
    alias svim='sudo vim'
    alias updatedb='sudo updatedb'
    alias root='sudo su'
    alias reboot='sudo reboot'
    alias halt='sudo halt -p'
    alias update='sudo pacman -Syu'
fi

. /etc/bash_completion
export PATH=$HOME/bin:$PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

