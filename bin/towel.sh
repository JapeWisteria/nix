#!/bin/bash
#: Title                 : towel
#: Date                  : November 19, 2015
#: Author                : Jeff Wyonch <jeff.wyonch@gmail.com>
#: Version               : 0.0.3
#: Description           : Basic wayfinding utility, printing
#                          useful info to the screen. Name
#                          inspired by Douglas Adams.
#: Options               : none

theDate=$(date "+%A, %B %d, %Y, %I:%M %p, %Z")
userName=$(whoami)
currentDirectory=$(pwd)
#currentDirectorySize=$(du -sh)
totalFiles=$(find . -maxdepth 1 -type f | wc -l)
machine=$(uname -prs)
hostname=$(hostname)

printf '\n---------- DONT PANIC ----------'
printf "\nToday is:  $theDate"
printf "\n  whoami:  $userName ($machine)"
printf "\n  Host:    $hostname"
printf "\n           $HOME"
printf "\nCurrent:   $currentDirectory"
#printf "\n  Size:   $currentDirectorySize"
printf "\n  Files:   $totalFiles"
printf '\n---------- DONT PANIC ----------\n\n'
