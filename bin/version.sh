#!/bin/bash
#: Title                 : Version
#: Date                  : May 25, 2017
#: Author                : Jeff Wyonch <jeff.wyonch@gmail.com>
#: Version               : 0.0.1
#: Description           : Print all the versions.
#: Options               : none

# List langs alphebetically.

# Git
if hash git 2>/dev/null; then
    vgit=$(git --version 2>&1 | grep "git version" | awk '{print $3}')
else
    vgit='Git is not installed.'
fi

# Java
if hash java 2>/dev/null; then
    vjava=$(java -version 2>&1 | grep "java version" | awk '{ print substr($3, 2, length($3)-2); }')
else
    vjava='Java is not installed.'
fi

# Perl
if hash perl 2>/dev/null; then
    vperl=$(perl -e 'print substr($^V, 1)')
else
    vperl='Perl is not installed.'
fi

# Python
if hash python 2>/dev/null; then
    vpython=`python -c 'import sys; print(".".join(map(str, sys.version_info[:3])))'`
else
    vpython='Python is not installed.'
fi

# Ruby
if hash ruby 2>/dev/null; then
    vruby=$(ruby -e 'print "#{ RUBY_VERSION }p#{ RUBY_PATCHLEVEL }"')
else
    vruby='Ruby is not installed.'
fi

# Mythical language for testing
if hash mylang 2>/dev/null; then
    vmylang='MyLang is installed.'
else
    vmylang='MyLang is not installed.'
fi

# Print all the things
printf -- "------- Installed Langs -------"
printf "\nGit    :  $vgit"
printf "\nJava   :  $vjava"
printf "\nPerl   :  $vperl"
printf "\nPython :  $vpython"
printf "\nRuby   :  $vruby"
#printf "\nMYLANG   :  $vmylang"
printf '\n-------------------------------\n\n'