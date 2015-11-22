#!/bin/bash
#: Title                 : towel
#: Date                  : November 18, 2015
#: Author                : Jeff Wyonch
#: Version               : 0.0.2
#: Description           : Basic wayfinding utility, printing
#                          useful info to the screen. Name
#                          inspired by Douglas Adams.
#: Options               : none

theDate=$(date "+%a, %b %d, %Y, %I:%I %p, %Z")
userName=$(whoami)
currentDirectory=$(pwd)
#currentDirectorySize=$(du -sh) #Apple go boom
totalFiles=$(find . -maxdepth 1 -type f | wc -l)
machine=$(uname -prs)

printf '\n---------- DONT PANIC ----------'
printf "\nToday is:  $theDate"
printf "\nwhoami:    $userName ($machine)"
printf "\n           $HOME"
printf "\nCurrent:   $currentDirectory"
#printf "\n  Size:   $currentDirectorySize" #Apple go boom
printf "\n  Files:   $totalFiles"
printf '\n---------- DONT PANIC ----------\n\n'
