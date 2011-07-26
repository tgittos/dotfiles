# Set the environment encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Change directory on start up of new shell
cd ~/src

# Make MacPorts, PostgreSQL and TextMate available to shell
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/opt/local/lib/postgresql84/bin:/Users/timg/.bin:$PATH

# vim is my SVN editor
export SVN_EDITOR=vim

# Change ls to be more useful
alias ls="ls -lF"

# Change top to order by cpu usage
alias top="top -o cpu"

# RVM junk
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Loads RVM into a shell session.

# Some PostgreSQL server stuff
alias pgstart="sudo su postgres -c '/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb -l /opt/local/var/log/postgresql84/postgres.log start'"
alias pgstop="sudo su postgres -c '/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb stop -m fast'"
alias pgstatus="sudo su postgres -c '/opt/local/lib/postgresql84/bin/pg_ctl status -D /opt/local/var/db/postgresql84/defaultdb'"

# Now some memcached stuff
alias mcstart="memcached -d -m 24 -p 11211"
alias mcdebug="memcached -vv -m 24 -p 11211"
alias mcstop="killall memcached"
alias mcrestart="killall memcached && sleep 2 && memcached -d -m 24 -p 11211"

# Fix grep to ignore svn/git stuff
alias gr='grep --exclude="*\.[svn|git]*" --color=auto -rI'

# Awesome stuff with ps aux to make finding processes easier
alias pfind='ps aux | grep '

# Change the prompt
PS1="[\D{%D} \A] \W \$ "

# Hibernate instead of sleep
alias hibernateon="sudo pmset -a hibernatemode 5"
alias hibernateoff="sudo pmset -a hibernatemode 0"

# Rails testing stuff
alias test='ruby -I"./test"'

# VM management
alias vmon="VBoxManage startvm --type headless"
function vmoff() { VBoxManage controlvm "$@" savestate ;}
