# Set the environment encoding
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Change directory on start up of new shell
cd ~/src

# Change ls to be more useful
alias ls="ls -lF"

# Change top to order by cpu usage
alias top="top -o cpu"

# rbenv junk
eval "$(rbenv init -)"

# Some PostgreSQL server stuff
# alias pgstart="sudo su postgres -c '/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb -l /opt/local/var/log/postgresql84/postgres.log start'"
# alias pgstop="sudo su postgres -c '/opt/local/lib/postgresql84/bin/pg_ctl -D /opt/local/var/db/postgresql84/defaultdb stop -m fast'"
# alias pgstatus="sudo su postgres -c '/opt/local/lib/postgresql84/bin/pg_ctl status -D /opt/local/var/db/postgresql84/defaultdb'"

# redis
alias start-redis="redis-server /usr/local/etc/redis.conf"

# Fix grep to ignore svn/git stuff
alias gr='grep --exclude="*\.[svn|git]*" --color=auto -rI'

# Awesome stuff with ps aux to make finding processes easier
alias pfind='ps aux | grep '

# Change the prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"
export PS1="\w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

# Rails testing stuff
alias test='ruby -I"./test"'
