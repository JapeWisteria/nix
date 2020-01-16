#
# aliases
#
alias lsa="ls -a" #list hidden, too
alias ll="ls -alh" #list all the things
alias ldir="ls -d */" #only show directories
alias lfile="ls -l | egrep -v '^d'" #only show files not dirs
alias big="du -hs ." #total filesize of directory
alias c="clear" #clear the terminal
alias h="history 10" #last 10 commands
alias year="date +"%Y" | cal -y $1" #show all the months in current year
alias wego="curl wttr.in/toronto?0m" #get weather online
alias mybox="screenfetch" #run brew install screenfetch; sys info
alias list="find . -type f" #list all subdirs
# must have Visual Studio Code installed first!
alias write="open -a 'Visual Studio Code' $1"
# Pretty print the path https://github.com/thoughtbot/dotfiles/blob/master/aliases
alias path='echo $PATH | tr -s ":" "\n"'

#
# programs
#
alias towel="~/bin/towel.sh"
alias ver="~/bin/version.sh"
alias today="~/bin/today.sh"

#
#functions
#

# Open man page as PDF
# Usage: manpdf 'manpage'
function manpdf() {
 man -t "${1}" | open -f -a /Applications/Preview.app/
}


