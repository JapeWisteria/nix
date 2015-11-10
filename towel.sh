#!/bin/bash
#: Title                 : towel
#: Date                  : November 3, 2015
#: Author                : Jeff Wyonch <jeff.wyonch@gmail.com>
#: Version               : 0.0.1
#: Description           : Basic wayfinding utility, printing
#                          useful info to the screen. Name
#                          inspired by Douglas Adams.
#: Options               : none

theDate=$(date "+%A, %B %d, %Y, %I:%I %p, %Z")
userName=$(whoami)
currentDirectory=$(pwd)
currentDirectorySize=$(du -sh)
totalFiles=$(find . -maxdepth 1 -type f | wc -l)

printf '\n##### DONT PANIC #####'
printf "\nToday is:            $theDate"
printf "\nwhoami:              $userName"
printf "\nHome directory:      $HOME"
printf "\nCurrent directory:   $currentDirectory"
printf "\n  Size:              $currentDirectorySize"
printf "\n  Files:             $totalFiles"
printf '\n##### DONT PANIC #####\n\n'
