#!/bin/bash
#: Title                 : Version
#: Date                  : May 29, 2017
#: Author                : Jeff Wyonch <jeff.wyonch@gmail.com>
#: Version               : 0.0.1
#: Description           : Pretty-print date on Mac Terminal
#: Options               : none

today=$(date "+%A, %B %d, %Y, %I:%M %p, %Z")
todayCal=$(cal | grep --before-context 6 --after-context 6 --color -e " $(date +%e)" -e "^$(date +%e)")

# Print all the things
printf '\n-------------------------'
printf "\n$today"
printf "\n\n$todayCal"
printf '\n-------------------------\n\n'
