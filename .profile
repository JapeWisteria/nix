#
# aliases
#
alias lsa="ls -a" #list hidden, too
alias ll="ls -alh" #list all the things
alias ldir="ls -d */" #only show directories
alias lfile="ls -l | egrep -v '^d'" #only show files not dirs
alias c="clear" #clear the terminal
alias h="history 10" #last 10 commands
alias year="date +"%Y" | cal -y $1" #show all the months in current year
alias wego="curl wttr.in/toronto?0m" #get weather online
alias mybox="screenfetch" #run brew install screenfetch; sys info

# Pretty print the path https://github.com/thoughtbot/dotfiles/blob/master/aliases
alias path='echo $PATH | tr -s ":" "\n"'
