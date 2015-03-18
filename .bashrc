eval "`dircolors -b`"

PS1='\
\[\033[32m\]\u\
\[\033[37m\]@\
\[\033[36m\]\h\
\[\033[37m\]:\
\[\033[35m\]\w\
\[\033[37m\][\t]\
\[\033[33m\]\$\
\[\033[0m\] \
'

PS1="$($HOME/bin/colorhash) $PS1"

# ls shortcuts
alias ls='ls --color'
alias grep='grep -n --color'
alias ll='ls -l'
alias lll='tree'
alias la='ls -lA'

# my bins
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Git checkout from origin and set upstream
gitco () { git checkout origin/$1 && git checkout -b $1 && git branch --set-upstream-to=origin/$1 $1; }

# What happened today ?
today() { egrep -h "$(date +"%m/%d|%b* %d")" /usr/share/calendar/*; }

# Screen prompt with '{SCR}' prefix
if [[ $STY == "" ]]; then
	PS1=$PS1
else
	PS1="\033[1m{SCR}\033[0m $PS1"
fi
