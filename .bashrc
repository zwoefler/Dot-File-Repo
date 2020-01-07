# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
export PROMPT_COMMAND='history -a'
#Search backwards in history with CTRL + S
stty -ixon

#===TELEKOM PROXYS===
#export http_proxy=http://172.22.236.11:3128
#export https_proxy=${http_proxy}
#export ftp_proxy=${http_proxy}
#export rsync_proxy=${http_proxy}
#export HTTP_PROXY=${http_proxy}
#export HTTPS_PROXY=${http_proxy}
#export no_proxy="mz216srv013.mds.t-mobile.net,localhost,127.0.0.1,127.0.0.0/8,::1,10.0.0.0/8,192.168.0.0/16,172.16.0.0/12,.mds.t-mobile.net,.bn.detemobil.de"
#eval "$(chef shell-init bash)"
#===TELEKOM PROXYS===




# Path to the bash it configuration
export BASH_IT="/home/zwoelfer/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='bobby'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Load Bash It
#source $BASH_IT/bash_it.sh

source /usr/share/git-core/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_SHOWUNTRACKEDFILES=true
export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \W$(__git_ps1 "\[\033[01;31m\] (%s)\[\033[01;34m\]") \$\[\033[00m\] '
